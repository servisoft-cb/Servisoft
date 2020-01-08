unit uCentroCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, JvLookup, JvEdit,
  JvTypedEdit, JvToolEdit, JvCurrEdit, Grids, DBGrids, SMDBGrid, UDm1, rsDBUtils;

type
  TfCentroCusto = class(TForm)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    BitBtn3: TBitBtn;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    JvxCurrencyEdit10: TJvxCurrencyEdit;
    BitBtn4: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    BitBtn5: TBitBtn;
    JvIntegerEdit1: TJvIntegerEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    Fdm1: Tdm1;
    { Private declarations }
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fCentroCusto: TfCentroCusto;

implementation

uses UDmCons;

{$R *.dfm}

procedure TfCentroCusto.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tCentroCusto.Cancel;
  Close;
end;

procedure TfCentroCusto.BitBtn1Click(Sender: TObject);
begin
  if Fdm1.tCentroCustoNOME.IsNull then
  begin
    ShowMessage('Nome deve ser preenchido!');
    Exit;
  end;
  if Fdm1.tCentroCusto.State in [dsInsert] then
    Fdm1.tCentroCustoID.AsInteger := Fdm1.Incrementa('ID','CentroCusto');
  Fdm1.tCentroCusto.Post;
  Fdm1.tCentroCusto.ApplyUpdates(0);
  if Fdm1.tPrevCentroCusto.ChangeCount > 0 then
    Fdm1.tPrevCentroCusto.ApplyUpdates(0);
  Close;
end;

procedure TfCentroCusto.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.tCentroCusto.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn1.Click;
              if Fdm1.tCentroCusto.State in [dsBrowse] then
                CanClose := True;
             end;
      mrNo: begin
              BitBtn2.Click;
              CanClose := true;
            end;
    end;
  end
  else
    CanClose := True;
  if CanClose then
    Fdm1.tPrevCentroCusto.Close;
end;

procedure TfCentroCusto.BitBtn4Click(Sender: TObject);
var
  vAux : Real;
  vTotal : Real;
  vMes : Integer;
begin
  if (JvxCurrencyEdit10.Value > 0) and (JvIntegerEdit1.Value > 0) then
    begin
      Fdm1.MontaSQL_PREVCENTROCUSTO(Fdm1.tCentroCustoID.AsInteger,JvIntegerEdit1.Value);
      if MessageDlg('Dividir o valor entre os meses do ano ' + JvIntegerEdit1.Text + ' ?',mtconfirmation,[mbOk,mbNo],0) = mrOk then
        begin
          vAux   := StrToFloat(FormatFloat('0.00',JvxCurrencyEdit10.Value / 12));
          vTotal := StrToFloat(FormatFloat('0.00',vAux * 11));
          vTotal := StrToFloat(FormatFloat('0.00',JvxCurrencyEdit10.Value - vTotal));
          for vMes := 1 to 12 do
            begin
              if (Fdm1.tPrevCentroCusto.Locate('Mes',vMes,([LocaseInsensitive]))) then
                Fdm1.tPrevCentroCusto.Edit
              else
                begin
                  Fdm1.tPrevCentroCusto.Insert;
                  Fdm1.tPrevCentroCustoCODCENTROCUSTO.AsInteger := Fdm1.tCentroCustoID.AsInteger;
                  Fdm1.tPrevCentroCustoANO.AsInteger            := JvIntegerEdit1.Value;
                  Fdm1.tPrevCentroCustoMES.AsInteger            := vMes;
                end;
              if vMes = 12 then
                Fdm1.tPrevCentroCustoVALOR.AsFloat := StrToFloat(FormatFloat('0.00',vTotal))
              else
                Fdm1.tPrevCentroCustoVALOR.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
              Fdm1.tPrevCentroCusto.Post;
            end;
        end;
    end;
end;

procedure TfCentroCusto.BitBtn5Click(Sender: TObject);
begin
  if JvIntegerEdit1.Value > 0 then
    begin
      Fdm1.MontaSQL_PREVCENTROCUSTO(Fdm1.tCentroCustoID.AsInteger,JvIntegerEdit1.Value);
      if MessageDlg('Excluir os meses do ano ' + JvIntegerEdit1.Text + ' ?',mtconfirmation,[mbOk,mbNo],0) = mrOk then
        begin
          Fdm1.tPrevCentroCusto.First;
          while not Fdm1.tPrevCentroCusto.Eof do
            Fdm1.tPrevCentroCusto.Delete;
            Fdm1.tPrevCentroCusto.ApplyUpdates(0);
        end;
    end;
end;

procedure TfCentroCusto.BitBtn3Click(Sender: TObject);
begin
  Fdm1.MontaSQL_PREVCENTROCUSTO(Fdm1.tCentroCustoID.AsInteger,JvIntegerEdit1.Value);
end;

procedure TfCentroCusto.FormCreate(Sender: TObject);
var
  ano, mes, dia : Word;
begin
  DecodeDate(Date,ano,mes,dia);
  JvIntegerEdit1.Value := ano;
end;

procedure TfCentroCusto.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  BitBtn3Click(Sender);
end;

end.
