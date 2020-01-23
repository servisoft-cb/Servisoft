unit uPessoa_Usuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, DBCtrls, Buttons, Mask,
  db, ExtCtrls, UDm1, rsDBUtils, JvToolEdit, JvDBCtrl, JvDBComb, RxLookup,
  NxCollection, Grids, DBGrids, SMDBGrid;

type
  TfPessoa_Usuario = class(TForm)
    NxPanel1: TNxPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    btnConfirmar: TNxButton;
    btnExcluir: TNxButton;
    SMDBGrid1: TSMDBGrid;
    procedure FormShow(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    fDm1: TDm1;
    vID_Pessoa : Integer;
  end;

var
  fPessoa_Usuario: TfPessoa_Usuario;

implementation

uses uIntegracao;

{$R *.dfm}

procedure TfPessoa_Usuario.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  fDm1.cdsPessoa_Usuario.Close;
  fDm1.sdsPessoa_Usuario.ParamByName('ID_PESSOA').AsInteger := vID_Pessoa;
  fDm1.cdsPessoa_Usuario.Open;
end;

procedure TfPessoa_Usuario.btnConfirmarClick(Sender: TObject);
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Usuário não informado!', mtError, [mbOk], 0);
    RxDBLookupCombo1.SetFocus;
    exit;
  end;
  if (fDm1.cdsPessoa_Usuario.Locate('ID_USUARIO',RxDBLookupCombo1.KeyValue,([LocaseInsensitive]))) then
  begin
    MessageDlg('*** Usuário já informado!', mtInformation, [mbOk], 0);
    RxDBLookupCombo1.SetFocus;
    exit;
  end;

  fDm1.cdsPessoa_Usuario.Insert;
  fDm1.cdsPessoa_UsuarioID_PESSOA.AsInteger  := vID_Pessoa;
  fDm1.cdsPessoa_UsuarioID_USUARIO.AsInteger := RxDBLookupCombo1.KeyValue;
  fDm1.cdsPessoa_Usuario.Post;
  fDm1.cdsPessoa_Usuario.ApplyUpdates(0);

  uIntegracao.Prc_Gravar_Pessoa_Usuario(vID_Pessoa,RxDBLookupCombo1.KeyValue);

  RxDBLookupCombo1.ClearValue;
  RxDBLookupCombo1.SetFocus;
end;

procedure TfPessoa_Usuario.btnExcluirClick(Sender: TObject);
var
  vIDAux : Integer;
begin
  if fDm1.cdsPessoa_Usuario.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir o usuário: ' + fDm1.cdsPessoa_UsuarioclUsuario.AsString,mtconfirmation,[mbOk,mbNo],0) = mrOk then
  begin
    vIDAux := fDm1.cdsPessoa_UsuarioID_USUARIO.AsInteger; 
    fDm1.cdsPessoa_Usuario.Delete;
    fDm1.cdsPessoa_Usuario.ApplyUpdates(0);
    
    Prc_Excluir_Pessoa_Usuario(vID_Pessoa,vIDAux);
  end;
end;

procedure TfPessoa_Usuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

end.
