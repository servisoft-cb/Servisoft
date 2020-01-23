unit uPessoa_Sistema;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, DBCtrls, Buttons, Mask,
  db, ExtCtrls, UDm1, rsDBUtils, JvToolEdit, JvDBCtrl, JvDBComb, 
  NxCollection, Grids, DBGrids, SMDBGrid, JvLookup;

type
  TfPessoa_Sistema = class(TForm)
    NxPanel1: TNxPanel;
    Label1: TLabel;
    btnConfirmar: TNxButton;
    btnExcluir: TNxButton;
    SMDBGrid1: TSMDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    btnAlterar: TNxButton;
    btnCancelar: TNxButton;
    JvDBLookupCombo3: TJvDBLookupCombo;
    JvDateEdit1: TJvDateEdit;
    JvDateEdit2: TJvDateEdit;
    procedure FormShow(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure prc_Limpa_Campos;

  public
    { Public declarations }
    fDm1: TDm1;
    vID_Pessoa : Integer;
  end;

var
  fPessoa_Sistema: TfPessoa_Sistema;

implementation

uses uIntegracao;

{$R *.dfm}

procedure TfPessoa_Sistema.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  fDm1.cdsSistema.Close;
  fDm1.cdsSistema.Open;
  fDm1.cdsPessoa_Sistema.Close;
  fDm1.sdsPessoa_Sistema.ParamByName('ID_PESSOA').AsInteger := vID_Pessoa;
  fDm1.cdsPessoa_Sistema.Open;
end;

procedure TfPessoa_Sistema.btnConfirmarClick(Sender: TObject);
begin
  if trim(JvDBLookupCombo3.Text) = '' then
  begin
    MessageDlg('*** Sistema não informado!', mtError, [mbOk], 0);
    JvDBLookupCombo3.SetFocus;
    exit;
  end;
  if (fDm1.cdsPessoa_Sistema.Locate('ID_SISTEMA',JvDBLookupCombo3.KeyValue,([LocaseInsensitive]))) then
    fDm1.cdsPessoa_Sistema.Edit
  else
  begin
    fDm1.cdsPessoa_Sistema.Insert;
    fDm1.cdsPessoa_SistemaID_PESSOA.AsInteger  := vID_Pessoa;
    fDm1.cdsPessoa_SistemaID_SISTEMA.AsInteger := JvDBLookupCombo3.KeyValue;
  end;
  if JvDateEdit1.Date > 10 then
    fDm1.cdsPessoa_SistemaDTINICIO.AsDateTime := JvDateEdit1.Date
  else
    fDm1.cdsPessoa_SistemaDTINICIO.Clear;
  if JvDateEdit2.Date > 10 then
    fDm1.cdsPessoa_SistemaDTFINAL.AsDateTime := JvDateEdit2.Date
  else
    fDm1.cdsPessoa_SistemaDTFINAL.Clear;
  fDm1.cdsPessoa_Sistema.Post;
  fDm1.cdsPessoa_Sistema.ApplyUpdates(0);

  uIntegracao.Prc_Gravar_Pessoa_Sistema(vID_Pessoa,JvDBLookupCombo3.KeyValue,JvDateEdit1.Date,JvDateEdit2.Date);

  prc_Limpa_Campos;
  JvDBLookupCombo3.SetFocus;
end;

procedure TfPessoa_Sistema.btnExcluirClick(Sender: TObject);
var
  vIDAux : Integer;
begin
  if fDm1.cdsPessoa_Sistema.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir o sistema: ' + fDm1.cdsPessoa_SistemaclNomeSistema.AsString,mtconfirmation,[mbOk,mbNo],0) = mrOk then
  begin
    vIDAux := fDm1.cdsPessoa_SistemaID_SISTEMA.AsInteger;
    fDm1.cdsPessoa_Sistema.Delete;
    fDm1.cdsPessoa_Sistema.ApplyUpdates(0);

    Prc_Excluir_Pessoa_Sistema(vID_Pessoa,vIDAux);
  end;
end;

procedure TfPessoa_Sistema.btnCancelarClick(Sender: TObject);
begin
  prc_Limpa_Campos;
  JvDBLookupCombo3.SetFocus;
end;

procedure TfPessoa_Sistema.prc_Limpa_Campos;
begin
  JvDBLookupCombo3.ClearValue;
  JvDateEdit1.Clear;
  JvDateEdit2.Clear;
  JvDBLookupCombo3.ReadOnly := False;
end;

procedure TfPessoa_Sistema.btnAlterarClick(Sender: TObject);
begin
  if fDm1.cdsPessoa_Sistema.IsEmpty then
    exit;
  JvDBLookupCombo3.KeyValue := fDm1.cdsPessoa_SistemaID_SISTEMA.AsInteger;
  JvDBLookupCombo3.ReadOnly := True;
  if JvDateEdit1.Date > 10 then
    JvDateEdit1.Date := fDm1.cdsPessoa_SistemaDTINICIO.AsDateTime;
  if JvDateEdit2.Date > 10 then
    JvDateEdit2.Date := fDm1.cdsPessoa_SistemaDTFINAL.AsDateTime;
  JvDateEdit1.SetFocus;
end;

procedure TfPessoa_Sistema.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

end.
