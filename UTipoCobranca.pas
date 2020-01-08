unit UTipoCobranca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, ComCtrls, JvLookup,
  Grids, DBGrids, JvDBCtrl, DB, UCBase, JvDBComb, UDm1, rsDBUtils;

type
  TfTipoCobranca = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    Label2: TLabel;
    JvDBGrid1: TJvDBGrid;
    Edit1: TEdit;
    UCControls1: TUCControls;
    JvDBComboBox1: TJvDBComboBox;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure TabSheet2Show(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    Fdm1: TDm1;
    procedure Habilita;
    procedure Atualiza;
    procedure Consulta;
  public
    { Public declarations }
  end;

var
  fTipoCobranca: TfTipoCobranca;

implementation

uses UDmCons, UMenu;

{$R *.dfm}

procedure TfTipoCobranca.Consulta;
begin
  DmCons.qTipoCobranca.Refresh;
  Fdm1.tTipoCobranca.Close;
end;

procedure TfTipoCobranca.Habilita;
begin
  Panel1.Enabled  := not Panel1.Enabled;
  Panel3.Enabled  := not Panel3.Enabled;
  BitBtn1.Enabled := not BitBtn1.Enabled;
  BitBtn2.Enabled := not BitBtn2.Enabled;
  BitBtn3.Enabled := not BitBtn3.Enabled;
  BitBtn4.Enabled := not BitBtn4.Enabled;
  BitBtn5.Enabled := not BitBtn5.Enabled;
  TabSheet1.TabVisible := not TabSheet1.TabVisible;
end;

procedure TfTipoCobranca.Atualiza;
begin
  if Fdm1.tTipoCobranca.State in [dsInactive,dsBrowse] then
    begin
      Fdm1.tTipoCobranca.Close;
      if BitBtn1.Tag = 1 then
        Fdm1.TipoCobranca.ParamByName('Codigo').AsInteger := 0
      else
        Fdm1.TipoCobranca.ParamByName('Codigo').AsInteger := DmCons.qTipoCobrancaID.AsInteger;
      Fdm1.tTipoCobranca.Open;
    end;
end;

procedure TfTipoCobranca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfTipoCobranca.BitBtn1Click(Sender: TObject);
begin
  BitBtn1.Tag := 1;
  Habilita;
  Atualiza;
  PageControl1.ActivePage := TabSheet2;
  Fdm1.tTipoCobranca.Insert;
  DBEdit1.SetFocus;
  BitBtn1.Tag := 0;
end;

procedure TfTipoCobranca.BitBtn2Click(Sender: TObject);
begin
  Atualiza;
  PageControl1.ActivePage := TabSheet2;
  Fdm1.tTipoCobranca.Edit;
  Habilita;
  DBEdit1.SetFocus;
end;

procedure TfTipoCobranca.BitBtn3Click(Sender: TObject);
begin
  Fdm1.tTipoCobranca.Cancel;
  Habilita;
  PageControl1.ActivePage := TabSheet1;
end;

procedure TfTipoCobranca.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
    begin
      Atualiza;
      Fdm1.tTipoCobranca.Delete;
      Fdm1.tTipoCobranca.ApplyUpdates(0);
      Consulta;
      PageControl1.ActivePage := TabSheet1;
    end;
end;

procedure TfTipoCobranca.BitBtn5Click(Sender: TObject);
begin
  if DBEdit1.Text <> '' then
    begin
      if Fdm1.tTipoCobranca.State in [dsInsert] then
        Fdm1.tTipoCobrancaID.AsInteger := Fdm1.Incrementa('ID','TIPOCOBRANCA');
      Fdm1.tTipoCobranca.Post;
      Fdm1.tTipoCobranca.ApplyUpdates(0);
      Habilita;
      Consulta;
      BitBtn1.SetFocus;
      PageControl1.ActivePage := TabSheet1;
    end
  else
    ShowMessage('Nome não pode ser vazio!');
end;

procedure TfTipoCobranca.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);

  PageControl1.ActivePage := TabSheet1;
  DmCons.qTipoCobranca.Open;
end;

procedure TfTipoCobranca.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Fdm1.tTipoCobranca.Close;
  DmCons.qTipoCobranca.Close;
end;

procedure TfTipoCobranca.JvDBGrid1DblClick(Sender: TObject);
begin
  Atualiza;
  PageControl1.ActivePage := TabSheet2;
end;

procedure TfTipoCobranca.Edit1Change(Sender: TObject);
begin
  DmCons.qTipoCobranca.Close;
  DmCons.TipoCobranca.SQL.Clear;
  DmCons.TipoCobranca.SQL.Add('SELECT * FROM TIPOCOBRANCA');
  if Edit1.Text <> '' then
    DmCons.TipoCobranca.SQL.Add('WHERE NOME LIKE ''%' + Edit1.Text + '%''');
  DmCons.TipoCobranca.SQL.Add('Order by NOME');
  DmCons.qTipoCobranca.Open;
end;

procedure TfTipoCobranca.JvDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
begin
  DmCons.qTipoCobranca.IndexFieldNames := Column.FieldName;
  Column.Color := clInfoBK;
  for i := 0 to JvDBGrid1.Columns.Count - 1 do
    if not (JvDBGrid1.Columns.Items[I] = Column) then
      JvDBGrid1.Columns.Items[I].Color := clWhite;
end;

procedure TfTipoCobranca.TabSheet2Show(Sender: TObject);
begin
  Atualiza;
end;

procedure TfTipoCobranca.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
