unit UUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvDBCtrl, ExtCtrls, ComCtrls, StdCtrls, Buttons,
  JvLookup, DBCtrls, Mask, DB, VerificaCGC, VerificaCPF, FMTBcd, SqlExpr,
  Menus, JvxCtrls, JvCombobox, JvToolEdit, JvDBComb, DBXpress, JvEdit,
  JvGroupBox, UDm1, rsDBUtils;

type
  TfUsuario = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    JvDBGrid1: TJvDBGrid;
    Panel2: TPanel;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    JvDBLookupCombo3: TJvDBLookupCombo;
    UpDown1: TUpDown;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    Fdm1: TDm1;

    procedure Habilita;
  public
    { Public declarations }
  end;

var
  fUsuario: TfUsuario;

implementation

uses UDmCons, UCidade;

{$R *.dfm}

procedure TfUsuario.Habilita;
begin
  Panel3.Enabled  := not Panel3.Enabled;
  BitBtn1.Enabled := not BitBtn1.Enabled;
  BitBtn2.Enabled := not BitBtn2.Enabled;
  BitBtn3.Enabled := not BitBtn3.Enabled;
  BitBtn4.Enabled := not BitBtn4.Enabled;
  BitBtn5.Enabled := not BitBtn5.Enabled;
  TabSheet1.TabVisible := not TabSheet1.TabVisible;
end;

procedure TfUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmCons.qCidade.Close;
  Fdm1.tUsuario.Close;
  Action := caFree;
end;

procedure TfUsuario.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);

  PageControl1.ActivePage := TabSheet1;
  Fdm1.tUsuario.Open;
  DmCons.qCidade.Open;
end;

procedure TfUsuario.BitBtn1Click(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet2;
  Habilita;
  DBEdit2.SetFocus;
  Fdm1.tUsuario.Insert;
end;

procedure TfUsuario.BitBtn5Click(Sender: TObject);
begin
  if DBEdit2.Text = '' then
  begin
    ShowMessage('Nome deve ser preenchido!');
    DBEdit2.SetFocus;
    Exit;
  end;
  if DBEdit3.Text = '' then
  begin
    ShowMessage('Usuário deve ser preenchido!');
    DBEdit3.SetFocus;
    Exit;
  end;
  if DBEdit4.Text = '' then
  begin
    ShowMessage('Senha deve ser preenchida!');
    DBEdit4.SetFocus;
    Exit;
  end;
  if DBEdit13.Text = '' then
  begin
    ShowMessage('Nível deve ser preenchido!');
    DBEdit13.SetFocus;
    Exit;
  end;
  if Fdm1.tUsuario.State in [dsInsert] then
    Fdm1.tUsuarioID.AsInteger := Fdm1.Incrementa('ID','USUARIO');
  Fdm1.tUsuario.Post;
  Fdm1.tUsuario.ApplyUpdates(0);
  PageControl1.ActivePage := TabSheet1;
  Habilita;
end;

procedure TfUsuario.BitBtn3Click(Sender: TObject);
begin
  Fdm1.tUsuario.Cancel;
  Habilita;
  PageControl1.ActivePage := TabSheet1;
end;

procedure TfUsuario.Label10Click(Sender: TObject);
begin
  DmCons.qCidade.Close;
  fCidade := TfCidade.Create(Self);

  fCidade.Dm1 := Fdm1;
  
  fCidade.ShowModal;
  DmCons.qCidade.Open;
end;

procedure TfUsuario.BitBtn2Click(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet2;
  Habilita;
  DBEdit2.SetFocus;
  Fdm1.tUsuario.Edit;
end;

procedure TfUsuario.JvDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
begin
  Fdm1.tUsuario.IndexFieldNames := Column.FieldName;
  Column.Color := clInfoBK;
  for i := 0 to JvDBGrid1.Columns.Count - 1 do
    if not (JvDBGrid1.Columns.Items[I] = Column) then
      JvDBGrid1.Columns.Items[I].Color := clWhite;
end;

procedure TfUsuario.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
  begin
    Fdm1.tUsuario.Delete;
    Fdm1.tUsuario.ApplyUpdates(0);
  end;
end;

procedure TfUsuario.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
