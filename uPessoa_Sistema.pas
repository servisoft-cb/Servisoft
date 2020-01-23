unit uPessoa_Sistema;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, DBCtrls, Buttons, Mask,
  db, ExtCtrls, UDm1, rsDBUtils, JvToolEdit, JvDBCtrl, JvDBComb, RxLookup,
  NxCollection, Grids, DBGrids, SMDBGrid, ToolEdit;

type
  TfPessoa_Sistema = class(TForm)
    NxPanel1: TNxPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    btnConfirmar: TNxButton;
    btnExcluir: TNxButton;
    SMDBGrid1: TSMDBGrid;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    Label3: TLabel;
    DateEdit2: TDateEdit;
    btnAlterar: TNxButton;
    btnCancelar: TNxButton;
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
  fDm1.cdsPessoa_Sistema.Close;
  fDm1.sdsPessoa_Sistema.ParamByName('ID_PESSOA').AsInteger := vID_Pessoa;
  fDm1.cdsPessoa_Sistema.Open;
end;

procedure TfPessoa_Sistema.btnConfirmarClick(Sender: TObject);
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Sistema não informado!', mtError, [mbOk], 0);
    RxDBLookupCombo1.SetFocus;
    exit;
  end;
  if (fDm1.cdsPessoa_Sistema.Locate('ID_SISTEMA',RxDBLookupCombo1.KeyValue,([LocaseInsensitive]))) then
    fDm1.cdsPessoa_Sistema.Edit
  else
  begin
    fDm1.cdsPessoa_Sistema.Insert;
    fDm1.cdsPessoa_SistemaID_PESSOA.AsInteger  := vID_Pessoa;
    fDm1.cdsPessoa_SistemaID_SISTEMA.AsInteger := RxDBLookupCombo1.KeyValue;
  end;
  if DateEdit1.Date > 10 then
    fDm1.cdsPessoa_SistemaDTINICIO.AsDateTime := DateEdit1.Date
  else
    fDm1.cdsPessoa_SistemaDTINICIO.Clear;
  if DateEdit2.Date > 10 then
    fDm1.cdsPessoa_SistemaDTFINAL.AsDateTime := DateEdit2.Date
  else
    fDm1.cdsPessoa_SistemaDTFINAL.Clear;
  fDm1.cdsPessoa_Sistema.Post;
  fDm1.cdsPessoa_Sistema.ApplyUpdates(0);

  uIntegracao.Prc_Gravar_Pessoa_Sistema(vID_Pessoa,RxDBLookupCombo1.KeyValue,DateEdit1.Date,DateEdit2.Date);

  prc_Limpa_Campos;
  RxDBLookupCombo1.SetFocus;
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
  RxDBLookupCombo1.SetFocus;
end;

procedure TfPessoa_Sistema.prc_Limpa_Campos;
begin
  RxDBLookupCombo1.ClearValue;
  DateEdit1.Clear;
  DateEdit2.Clear;
  RxDBLookupCombo1.ReadOnly := False;
end;

procedure TfPessoa_Sistema.btnAlterarClick(Sender: TObject);
begin
  if fDm1.cdsPessoa_Sistema.IsEmpty then
    exit;
  RxDBLookupCombo1.KeyValue := fDm1.cdsPessoa_SistemaID_SISTEMA.AsInteger;
  RxDBLookupCombo1.ReadOnly := True;
  if DateEdit1.Date > 10 then
    DateEdit1.Date := fDm1.cdsPessoa_SistemaDTINICIO.AsDateTime;
  if DateEdit2.Date > 10 then
    DateEdit2.Date := fDm1.cdsPessoa_SistemaDTFINAL.AsDateTime;
  DateEdit1.SetFocus;
end;

procedure TfPessoa_Sistema.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

end.
