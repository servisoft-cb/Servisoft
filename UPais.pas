unit UPais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, ComCtrls, JvLookup,
  Grids, DBGrids, JvDBCtrl, DB, UCBase, UDm1, rsDBUtils;

type
  TfPais = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel3: TPanel;
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
    { Private declarations }
    Fdm1: TDm1;
    procedure Habilita;
    procedure Atualiza;
    procedure Consulta;
  public
    { Public declarations }
  end;

var
  fPais: TfPais;

implementation

uses UDmCons, UMenu;

{$R *.dfm}

procedure TfPais.Consulta;
begin
  DmCons.qPais.Refresh;
  Fdm1.tPais.Close;
end;

procedure TfPais.Habilita;
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

procedure TfPais.Atualiza;
begin
  if Fdm1.tPais.State in [dsInactive,dsBrowse] then
    begin
      Fdm1.tPais.Close;
      if BitBtn1.Tag = 1 then
        Fdm1.Pais.ParamByName('Codigo').AsInteger := 0
      else
        Fdm1.Pais.ParamByName('Codigo').AsInteger := DmCons.qPaisID.AsInteger;
      Fdm1.tPais.Open;
    end;
end;

procedure TfPais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfPais.BitBtn1Click(Sender: TObject);
begin
  BitBtn1.Tag := 1;
  Habilita;
  Atualiza;
  PageControl1.ActivePage := TabSheet2;
  Fdm1.tPais.Insert;
  DBEdit1.SetFocus;
  BitBtn1.Tag := 0;
end;

procedure TfPais.BitBtn2Click(Sender: TObject);
begin
  Atualiza;
  PageControl1.ActivePage := TabSheet2;
  Fdm1.tPais.Edit;
  Habilita;
  DBEdit1.SetFocus;
end;

procedure TfPais.BitBtn3Click(Sender: TObject);
begin
  Fdm1.tPais.Cancel;
  Habilita;
  PageControl1.ActivePage := TabSheet1;
end;

procedure TfPais.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
    begin
      Atualiza;
      Fdm1.tPais.Delete;
      Fdm1.tPais.ApplyUpdates(0);
      Consulta;
      PageControl1.ActivePage := TabSheet1;
    end;
end;

procedure TfPais.BitBtn5Click(Sender: TObject);
begin
  if DBEdit1.Text <> '' then
    begin
      if Fdm1.tPais.State in [dsInsert] then
        Fdm1.tPaisID.AsInteger := Fdm1.Incrementa('ID','PAIS');
      Fdm1.tPais.Post;
      Fdm1.tPais.ApplyUpdates(0);
      Habilita;
      Consulta;
      BitBtn1.SetFocus;
      PageControl1.ActivePage := TabSheet1;
    end
  else
    ShowMessage('Nome não pode ser vazio!');
end;

procedure TfPais.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);

  DmCons.qPais.Open;
  PageControl1.ActivePage := TabSheet1;
end;

procedure TfPais.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Fdm1.tPais.Close;
  DmCons.qPais.Close;
end;

procedure TfPais.JvDBGrid1DblClick(Sender: TObject);
begin
  Atualiza;
  PageControl1.ActivePage := TabSheet2;
end;

procedure TfPais.Edit1Change(Sender: TObject);
begin
  DmCons.qPais.Close;
  DmCons.Pais.SQL.Clear;
  DmCons.Pais.SQL.Add('SELECT * FROM PAIS');
  if Edit1.Text <> '' then
    DmCons.Pais.SQL.Add('WHERE NOME LIKE ''%' + Edit1.Text + '%''');
  DmCons.Pais.SQL.Add('ORDER BY NOME');
  DmCons.qPais.Open;
end;

procedure TfPais.JvDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
begin
  DmCons.qPais.IndexFieldNames := Column.FieldName;
  Column.Color := clInfoBK;
  for i := 0 to JvDBGrid1.Columns.Count - 1 do
    if not (JvDBGrid1.Columns.Items[I] = Column) then
      JvDBGrid1.Columns.Items[I].Color := clWhite;
end;

procedure TfPais.TabSheet2Show(Sender: TObject);
begin
  Atualiza;
end;

procedure TfPais.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
