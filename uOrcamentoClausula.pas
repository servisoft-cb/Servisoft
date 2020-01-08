unit uOrcamentoClausula;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, JvLookup, ComCtrls, rsDBUtils,
  uDM1;

type
  TfOrcamentoClausula = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    DBRichEdit1: TDBRichEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Label1Click(Sender: TObject);
    procedure JvDBLookupCombo1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    Fdm1: Tdm1;
    { Private declarations }
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fOrcamentoClausula: TfOrcamentoClausula;

implementation

uses uClausula;

{$R *.dfm}

procedure TfOrcamentoClausula.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tPedido_Clausula.Cancel;
  Close;
end;

procedure TfOrcamentoClausula.BitBtn1Click(Sender: TObject);
begin
  if Fdm1.tPedido_ClausulaCLAUSULA_ID.IsNull then
  begin
    ShowMessage('Cláusula deve ser preenchida!');
    Exit;
  end;
  Fdm1.tPedido_ClausulaNOME.AsString := JvDBLookupCombo1.Text;
  Fdm1.tPedido_Clausula.Post;
  Close;
end;

procedure TfOrcamentoClausula.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.tPedido_Clausula.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn1.Click;
              if Fdm1.tPedido_Clausula.State in [dsBrowse] then
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
end;

procedure TfOrcamentoClausula.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fdm1.tClausula.Close;
end;

procedure TfOrcamentoClausula.Label1Click(Sender: TObject);
begin
  if not Fdm1.tClausula.Active then
    Fdm1.tClausula.Open;
  fClausula := TfClausula.Create(Self);
  Fdm1.tClausula.Insert;
  fClausula.ShowModal;
  fClausula.Free;
end;

procedure TfOrcamentoClausula.JvDBLookupCombo1Change(Sender: TObject);
begin
  Fdm1.tPedido_ClausulaDESCRICAO.AsString := Fdm1.tClausulaDESCRICAO.AsString;
end;

procedure TfOrcamentoClausula.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  Fdm1.tClausula.Open;  
end;

end.
