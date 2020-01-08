unit uModulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, Mask, DBCtrls,
  ExtCtrls, ComCtrls, Grids, DBGrids, DB, UCBase, UDm1, rsDBUtils, JvDBCtrl;

type
  TfModulo = class(TForm)
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
    //property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fModulo: TfModulo;

implementation

uses UDmCons, UMenu;

{$R *.dfm}

procedure TfModulo.Consulta;
begin
  DmCons.qModulo.Refresh;
  Fdm1.cdsModulo.Close;
end;

procedure TfModulo.Habilita;
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

procedure TfModulo.Atualiza;
begin
  if Fdm1.cdsModulo.State in [dsInactive,dsBrowse] then
  begin
    Fdm1.cdsModulo.Close;
    if BitBtn1.Tag = 1 then
      Fdm1.sdsModulo.ParamByName('ID').AsInteger := 0
    else
      Fdm1.sdsModulo.ParamByName('ID').AsInteger := DmCons.qModuloID.AsInteger;
    Fdm1.cdsModulo.Open;
  end;
end;

procedure TfModulo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfModulo.BitBtn1Click(Sender: TObject);
begin
  BitBtn1.Tag := 1;
  Habilita;
  Atualiza;
  PageControl1.ActivePage := TabSheet2;
  Fdm1.cdsModulo.Insert;
  DBEdit1.SetFocus;
  BitBtn1.Tag := 0;
end;

procedure TfModulo.BitBtn2Click(Sender: TObject);
begin
  Atualiza;
  PageControl1.ActivePage := TabSheet2;
  Fdm1.cdsModulo.Edit;
  Habilita;
  DBEdit1.SetFocus;
end;

procedure TfModulo.BitBtn3Click(Sender: TObject);
begin
  Fdm1.cdsModulo.Cancel;
  Habilita;
  PageControl1.ActivePage := TabSheet1;
end;

procedure TfModulo.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
  begin
    Atualiza;
    Fdm1.cdsModulo.Delete;
    Fdm1.cdsModulo.ApplyUpdates(0);
    Consulta;
    PageControl1.ActivePage := TabSheet1;
  end;
end;

procedure TfModulo.BitBtn5Click(Sender: TObject);
begin
  if DBEdit1.Text = '' then
  begin
    ShowMessage('Nome não pode ser vazio!');
    Exit;
  end;
  if Fdm1.cdsModulo.State in [dsInsert] then
    Fdm1.cdsModuloID.AsInteger := Fdm1.Incrementa('ID','MODULO');
  Fdm1.cdsModulo.Post;
  Fdm1.cdsModulo.ApplyUpdates(0);
  Habilita;
  Consulta;
  BitBtn1.SetFocus;
  PageControl1.ActivePage := TabSheet1;
end;

procedure TfModulo.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  DmCons.qModulo.Open;

  PageControl1.ActivePage := TabSheet1;
end;

procedure TfModulo.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Fdm1.cdsModulo.Close;
  DmCons.qModulo.Close;
end;

procedure TfModulo.JvDBGrid1DblClick(Sender: TObject);
begin
  Atualiza;
  PageControl1.ActivePage := TabSheet2;
end;

procedure TfModulo.Edit1Change(Sender: TObject);
begin
  DmCons.qModulo.Close;
  DmCons.Modulo.SQL.Clear;
  DmCons.Modulo.SQL.Add('SELECT * FROM MODULO');
  if Edit1.Text <> '' then
    DmCons.Modulo.SQL.Add('WHERE NOME LIKE ''%' + Edit1.Text + '%''');
  DmCons.Modulo.SQL.Add('ORDER BY NOME');
  DmCons.qModulo.Open;
end;

procedure TfModulo.JvDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
begin
  DmCons.qModulo.IndexFieldNames := Column.FieldName;
  Column.Color := clInfoBK;
  for i := 0 to JvDBGrid1.Columns.Count - 1 do
    if not (JvDBGrid1.Columns.Items[I] = Column) then
      JvDBGrid1.Columns.Items[I].Color := clWhite;
end;

procedure TfModulo.TabSheet2Show(Sender: TObject);
begin
  Atualiza;
end;

procedure TfModulo.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
