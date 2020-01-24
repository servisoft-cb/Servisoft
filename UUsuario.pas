unit uUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, DBCtrls, Buttons, Mask,
  db, ExtCtrls, UDm1, rsDBUtils, JvToolEdit, JvDBCtrl, JvDBComb, 
  NxCollection, Grids, DBGrids, SMDBGrid, JvLookup, JvCurrEdit, IdCoder,
  IdCoder3to4, IdCoderMIME, IdBaseComponent;

type
  TfUsuario = class(TForm)
    NxPanel1: TNxPanel;
    Label1: TLabel;
    btnConfirmar: TNxButton;
    btnExcluir: TNxButton;
    SMDBGrid1: TSMDBGrid;
    Edit1: TEdit;
    Label2: TLabel;
    JvxCurrencyEdit1: TJvxCurrencyEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    btnAlterar: TNxButton;
    btnCancelar: TNxButton;
    Encoder1: TIdEncoderMIME;
    Decoder1: TIdDecoderMIME;
    procedure FormShow(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
    fDm1: TDm1;
    procedure prc_Limpa_Campos;

  public
    { Public declarations }
  end;

var
  fUsuario: TfUsuario;

implementation

uses uIntegracao;

{$R *.dfm}

procedure TfUsuario.FormShow(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self,fDm1);
  oDBUtils.OpenTables(True,Self);
  fDm1.cdsUsuario.Close;
  fDm1.cdsUsuario.Open;
end;

procedure TfUsuario.btnConfirmarClick(Sender: TObject);
var
  vMSG : String;
  vIDAux : Integer;
begin
  vMSG := '';
  if trim(Edit1.Text) = '' then
    vMSG := vMSG + #13 + '*** Nome não foi informado!';
  if trim(Edit2.Text) = '' then
    vMSG := vMSG + #13 + '*** Login não foi informado!';
  if trim(Edit3.Text) = '' then
    vMSG := vMSG + #13 + '*** Senha não foi informada!';
  if trim(vMSG) <> '' then
  begin
    MessageDlg(vMSG, mtError, [mbOk], 0);
    Edit1.SetFocus;
    exit;
  end;

  if (fDm1.cdsUsuario.Locate('ID',JvxCurrencyEdit1.AsInteger,([LocaseInsensitive]))) then
  begin
    fDm1.cdsUsuario.Edit;
    vIDAux := fDm1.cdsUsuarioID.AsInteger;
  end
  else
  begin
    fDm1.qMaxUsuario.Close;
    fDm1.qMaxUsuario.Open;
    vIDAux := fDm1.qMaxUsuarioID.AsInteger + 1;

    fDm1.cdsUsuario.Insert;
    fDm1.cdsUsuarioID.AsInteger   := vIDAux;
  end;
  fDm1.cdsUsuarioSENHA.AsString := Encoder1.EncodeString(Edit3.Text);
  fDm1.cdsUsuarioNOME.AsString  := Edit1.Text;
  fDm1.cdsUsuarioLOGIN.AsString := Edit2.Text;

  fDm1.cdsUsuario.Post;
  fDm1.cdsUsuario.ApplyUpdates(0);

  uIntegracao.Prc_Gravar_Usuario(vIDAux,Edit1.Text,Edit2.Text,Edit3.Text);

  prc_Limpa_Campos;
end;

procedure TfUsuario.btnExcluirClick(Sender: TObject);
var
  vIDAux : Integer;
begin
  if fDm1.cdsUsuario.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir o usuário: ' + fDm1.cdsUsuarioNOME.AsString,mtconfirmation,[mbOk,mbNo],0) = mrOk then
  begin
    vIDAux := fDm1.cdsUsuarioID.AsInteger; 
    fDm1.cdsUsuario.Delete;
    fDm1.cdsUsuario.ApplyUpdates(0);
    
    Prc_Excluir_Usuario(vIDAux);
  end;
end;

procedure TfUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(fDm1);
  Action := Cafree;
end;

procedure TfUsuario.prc_Limpa_Campos;
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  JvxCurrencyEdit1.Clear;
  Edit3.ReadOnly := False;
end;

procedure TfUsuario.btnCancelarClick(Sender: TObject);
begin
  prc_Limpa_Campos;
  Edit1.SetFocus;
end;

procedure TfUsuario.btnAlterarClick(Sender: TObject);
begin
  if fDm1.cdsUsuario.IsEmpty then
    exit;
  JvxCurrencyEdit1.AsInteger := fDm1.cdsUsuarioID.AsInteger;
  Edit1.Text := fDm1.cdsUsuarioNOME.AsString;
  Edit2.Text := fDm1.cdsUsuarioLOGIN.AsString;
  //Edit3.Text := Decoder1.DecodeString(fDm1.cdsUsuarioSENHA.AsString);
  if trim(fDm1.cdsUsuarioSENHA.AsString) <> '' then
    Edit3.Text := Decoder1.DecodeString(fDm1.cdsUsuarioSENHA.AsString)
  else
    Edit3.Clear;
  Edit3.SetFocus;
end;

end.
