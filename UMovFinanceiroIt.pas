unit UMovFinanceiroIt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvLookup, StdCtrls, Mask, DBCtrls, JvToolEdit, JvDBCtrl, Buttons, DB,
  JvDBComb, UDm1, rsDBUtils;

type
  TfMovFinanceiroIt = class(TForm)
    Label1: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    JvDBDateEdit3: TJvDBDateEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    BitBtn5: TBitBtn;
    Label7: TLabel;
    JvDBLookupCombo2: TJvDBLookupCombo;
    Label8: TLabel;
    JvDBComboBox2: TJvDBComboBox;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    Fdm1: Tdm1;
    { Private declarations }
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fMovFinanceiroIt: TfMovFinanceiroIt;

implementation

uses UMovFinanceiro, UDmCons, URelRecibo3;

{$R *.dfm}

procedure TfMovFinanceiroIt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fdm1.tMovFinanceiro.Close;
  Action := Cafree;
end;

procedure TfMovFinanceiroIt.BitBtn5Click(Sender: TObject);
begin
  if (Fdm1.tMovFinanceiroCODBANCO.AsInteger > 0) and (Fdm1.tMovFinanceiroDTMOVIMENTO.AsDateTime > 1) and
     (Fdm1.tMovFinanceiroTIPOPESSOA.AsString <> '') then
    begin
      if Fdm1.tMovFinanceiro.State = dsInsert then
        Fdm1.tMovFinanceiroNUMMOVTO.AsInteger := Fdm1.Incrementa('NUMMOVTO','MOVFINANCEIRO');
      Fdm1.tMovFinanceiroTIPOMOV.AsString := 'MOV';
      Fdm1.tMovFinanceiro.Post;
      Fdm1.tMovFinanceiro.ApplyUpdates(0);
      if MessageDlg('Deseja imprimir o recibo?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
        begin
          fRelRecibo3 := TfRelRecibo3.Create(Self);

          fRelRecibo3.Dm1 := Fdm1;

          fRelRecibo3.RLReport1.Preview;
          FreeAndNil(fRelRecibo3);
        end;
      Close;
    end
  else
    begin
      ShowMessage('Falta informar <Banco>, <Dt.Movimento> ou <Tipo Pessoa>');
      JvDBLookupCombo1.SetFocus;
    end;
end;

procedure TfMovFinanceiroIt.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);

  if vAlteraMov = 'I' then
    begin
      Fdm1.tMovFinanceiro.Insert;
      Fdm1.tMovFinanceiroDTMOVIMENTO.AsDateTime := Date;
    end
  else
    Fdm1.tMovFinanceiro.Edit;
end;

end.
