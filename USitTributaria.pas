unit USitTributaria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, ComCtrls, JvLookup,
  Grids, DBGrids, JvDBCtrl, DB, UCBase, UDm1, rsDBUtils;

type
  TfSitTributaria = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    JvDBGrid1: TJvDBGrid;
    Edit1: TEdit;
    UCControls1: TUCControls;
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
    Fdm1: Tdm1;
    { Private declarations }
    procedure Habilita;
    procedure Atualiza;
    procedure Consulta;
  public
    { Public declarations }
//    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fSitTributaria: TfSitTributaria;

implementation

uses UDmCons, UMenu;

{$R *.dfm}

procedure TfSitTributaria.Consulta;
begin
  DmCons.qSitTributaria.Refresh;
  Fdm1.tSitTributaria.Close;
end;

procedure TfSitTributaria.Habilita;
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

procedure TfSitTributaria.Atualiza;
begin
  if Fdm1.tSitTributaria.State in [dsInactive,dsBrowse] then
    begin
      Fdm1.tSitTributaria.Close;
      if BitBtn1.Tag = 1 then
        Fdm1.SitTributaria.ParamByName('Codigo').AsInteger := 0
      else
        Fdm1.SitTributaria.ParamByName('Codigo').AsInteger := DmCons.qSitTributariaID.AsInteger;
      Fdm1.tSitTributaria.Open;
    end;
end;

procedure TfSitTributaria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfSitTributaria.BitBtn1Click(Sender: TObject);
begin
  BitBtn1.Tag := 1;
  Habilita;
  Atualiza;
  PageControl1.ActivePage := TabSheet2;
  Fdm1.tSitTributaria.Insert;
  DBEdit1.SetFocus;
  BitBtn1.Tag := 0;
end;

procedure TfSitTributaria.BitBtn2Click(Sender: TObject);
begin
  Atualiza;
  PageControl1.ActivePage := TabSheet2;
  Fdm1.tSitTributaria.Edit;
  Habilita;
  DBEdit1.SetFocus;
end;

procedure TfSitTributaria.BitBtn3Click(Sender: TObject);
begin
  Fdm1.tSitTributaria.Cancel;
  Habilita;
  PageControl1.ActivePage := TabSheet1;
end;

procedure TfSitTributaria.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
    begin
      Atualiza;
      Fdm1.tSitTributaria.Delete;
      Fdm1.tSitTributaria.ApplyUpdates(0);
      Consulta;
      PageControl1.ActivePage := TabSheet1;
    end;
end;

procedure TfSitTributaria.BitBtn5Click(Sender: TObject);
begin
  if (DBEdit1.Text <> '') and (DBEdit2.Text <> '') then
    begin
      if Fdm1.tSitTributaria.State in [dsInsert] then
        Fdm1.tSitTributariaID.AsInteger := Fdm1.Incrementa('ID','SITTRIBUTARIA');
      Fdm1.tSitTributaria.Post;
      Fdm1.tSitTributaria.ApplyUpdates(0);
      Habilita;
      Consulta;
      BitBtn1.SetFocus;
      PageControl1.ActivePage := TabSheet1;
    end
  else
    ShowMessage('Código e percentual não podem ser vazio!');
end;

procedure TfSitTributaria.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  DmCons.qSitTributaria.Open;

  PageControl1.ActivePage := TabSheet1;
end;

procedure TfSitTributaria.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Fdm1.tSitTributaria.Close;
  DmCons.qSitTributaria.Close;
end;

procedure TfSitTributaria.JvDBGrid1DblClick(Sender: TObject);
begin
  Atualiza;
  PageControl1.ActivePage := TabSheet2;
end;

procedure TfSitTributaria.Edit1Change(Sender: TObject);
begin
  DmCons.qSitTributaria.Close;
  DmCons.SitTributaria.SQL.Clear;
  DmCons.SitTributaria.SQL.Add('SELECT * FROM SITTRIBUTARIA');
  if Edit1.Text <> '' then
    DmCons.SitTributaria.SQL.Add('WHERE CODSITTRIB LIKE ''%' + Edit1.Text + '%''');
  DmCons.SitTributaria.SQL.Add('ORDER BY CODSITTRIB');
  DmCons.QSitTributaria.Open;
end;


procedure TfSitTributaria.JvDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
begin
  DmCons.qSitTributaria.IndexFieldNames := Column.FieldName;
  Column.Color := clInfoBK;
  for i := 0 to JvDBGrid1.Columns.Count - 1 do
    if not (JvDBGrid1.Columns.Items[I] = Column) then
      JvDBGrid1.Columns.Items[I].Color := clWhite;
end;

procedure TfSitTributaria.TabSheet2Show(Sender: TObject);
begin
  Atualiza;
end;

procedure TfSitTributaria.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
