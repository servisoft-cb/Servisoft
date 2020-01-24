unit uSistema;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, DBCtrls, Buttons, Mask,
  db, ExtCtrls, UDm1, rsDBUtils, JvToolEdit, JvDBCtrl, JvDBComb, 
  NxCollection, Grids, DBGrids, SMDBGrid, JvLookup, JvCurrEdit;

type
  TfSistema = class(TForm)
    NxPanel1: TNxPanel;
    Label1: TLabel;
    btnConfirmar: TNxButton;
    btnExcluir: TNxButton;
    SMDBGrid1: TSMDBGrid;
    Edit1: TEdit;
    Label2: TLabel;
    JvxCurrencyEdit1: TJvxCurrencyEdit;
    Label3: TLabel;
    btnAlterar: TNxButton;
    btnCancelar: TNxButton;
    Memo1: TMemo;
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
  fSistema: TfSistema;

implementation

uses uIntegracao;

{$R *.dfm}

procedure TfSistema.FormShow(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self,fDm1);
  oDBUtils.OpenTables(True,Self);

  fDm1.cdsSistema.Close;
  fDm1.cdsSistema.Open;
end;

procedure TfSistema.btnConfirmarClick(Sender: TObject);
var
  vMSG : String;
  vIDAux : Integer;
begin
  vMSG := '';
  if trim(Edit1.Text) = '' then
    vMSG := vMSG + #13 + '*** Nome não foi informado!';
  if trim(vMSG) <> '' then
  begin
    MessageDlg(vMSG, mtError, [mbOk], 0);
    Edit1.SetFocus;
    exit;
  end;

  if (fDm1.cdsSistema.Locate('ID',JvxCurrencyEdit1.AsInteger,([LocaseInsensitive]))) then
  begin
    fDm1.cdsSistema.Edit;
    vIDAux := fDm1.cdsSistemaID.AsInteger;
  end
  else
  begin
    fDm1.qMaxSistema.Close;
    fDm1.qMaxSistema.Open;
    vIDAux := fDm1.qMaxSistemaID.AsInteger + 1;

    fDm1.cdsSistema.Insert;
    fDm1.cdsSistemaID.AsInteger := vIDAux;
  end;
  fDm1.cdsSistemaNOME.AsString := Edit1.Text;
  fDm1.cdsSistemaOBS.AsString  := Memo1.Lines.Text; 
  fDm1.cdsSistema.Post;
  fDm1.cdsSistema.ApplyUpdates(0);

  uIntegracao.Prc_Gravar_Sistema(vIDAux,Edit1.Text,Memo1.Lines.Text);

  prc_Limpa_Campos;
end;

procedure TfSistema.btnExcluirClick(Sender: TObject);
var
  vIDAux : Integer;
begin
  if fDm1.cdsSistema.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir o usuário: ' + fDm1.cdsUsuarioNOME.AsString,mtconfirmation,[mbOk,mbNo],0) = mrOk then
  begin
    vIDAux := fDm1.cdsSistemaID.AsInteger; 
    fDm1.cdsSistema.Delete;
    fDm1.cdsSistema.ApplyUpdates(0);
    
    Prc_Excluir_Sistema(vIDAux);
  end;
end;

procedure TfSistema.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(fDm1);
  Action := Cafree;
end;

procedure TfSistema.prc_Limpa_Campos;
begin
  Edit1.Clear;
  Memo1.Lines.Clear;
  JvxCurrencyEdit1.Clear;
end;

procedure TfSistema.btnCancelarClick(Sender: TObject);
begin
  prc_Limpa_Campos;
  Edit1.SetFocus;
end;

procedure TfSistema.btnAlterarClick(Sender: TObject);
begin
  if fDm1.cdsSistema.IsEmpty then
    exit;
  JvxCurrencyEdit1.AsInteger := fDm1.cdsSistemaID.AsInteger;
  Edit1.Text       := fDm1.cdsSistemaNOME.AsString;
  Memo1.Lines.Text := fDm1.cdsSistemaOBS.AsString;
end;

end.
