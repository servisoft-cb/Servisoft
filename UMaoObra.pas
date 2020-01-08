unit UMaoObra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, ComCtrls, JvLookup,
  Grids, DBGrids, JvDBCtrl, DB, JvToolEdit, JvCombobox, UDm1, rsDBUtils;

type
  TfMaoObra = class(TForm)
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
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    JvDBGrid1: TJvDBGrid;
    Label3: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    JvComboBox1: TJvComboBox;
    Edit1: TEdit;
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
    procedure JvComboBox1Enter(Sender: TObject);
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
  fMaoObra: TfMaoObra;

implementation

uses UDmCons;

{$R *.dfm}

procedure TfMaoObra.Consulta;
begin
  DmCons.qMaoObra.Refresh;
  Fdm1.tMaoObra.Close;
end;

procedure TfMaoObra.Habilita;
begin
  Panel1.Enabled  := not Panel1.Enabled;
  Panel3.Enabled  := not Panel3.Enabled;
  BitBtn1.Enabled := not BitBtn1.Enabled;
  BitBtn2.Enabled := not BitBtn2.Enabled;
  BitBtn3.Enabled := not BitBtn3.Enabled;
  BitBtn4.Enabled := not BitBtn4.Enabled;
  BitBtn5.Enabled := not BitBtn5.Enabled;
end;

procedure TfMaoObra.Atualiza;
begin
  if Fdm1.tMaoObra.State in [dsInactive,dsBrowse] then
    begin
      Fdm1.tMaoObra.Close;
      if BitBtn1.Tag = 1 then
        Fdm1.MaoObra.ParamByName('Codigo').AsInteger := 0
      else
        Fdm1.MaoObra.ParamByName('Codigo').AsInteger := DmCons.qMaoObraID.AsInteger;
      Fdm1.tMaoObra.Open;
    end;
end;

procedure TfMaoObra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfMaoObra.BitBtn1Click(Sender: TObject);
begin
  BitBtn1.Tag := 1;
  Habilita;
  Atualiza;
  PageControl1.ActivePage := TabSheet2;
  Fdm1.tMaoObra.Insert;
  DBEdit1.SetFocus;
  BitBtn1.Tag := 0;
end;

procedure TfMaoObra.BitBtn2Click(Sender: TObject);
begin
  Atualiza;
  PageControl1.ActivePage := TabSheet2;
  Fdm1.tMaoObra.Edit;
  Habilita;
  DBEdit1.SetFocus;
end;

procedure TfMaoObra.BitBtn3Click(Sender: TObject);
begin
  Fdm1.tMaoObra.Cancel;
  Habilita;
end;

procedure TfMaoObra.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
    begin
      Atualiza;
      Fdm1.tMaoObra.Delete;
      Fdm1.tMaoObra.ApplyUpdates(0);
      Consulta;
    end;
end;

procedure TfMaoObra.BitBtn5Click(Sender: TObject);
begin
  if (DBEdit1.Text <> '') then
    begin
      if Fdm1.tMaoObra.State in [dsInsert] then
        Fdm1.tMaoObraID.AsInteger := Fdm1.Incrementa('ID','MAOOBRA');
      Fdm1.tMaoObra.Post;
      Fdm1.tMaoObra.ApplyUpdates(0);
      Habilita;
      Consulta;
      BitBtn1.SetFocus;
    end
  else
    ShowMessage('Nome não pode ser vazio!');
end;

procedure TfMaoObra.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);

  DmCons.qMaoObra.Open;
  PageControl1.ActivePage := TabSheet1;
end;

procedure TfMaoObra.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Fdm1.tMaoObra.Close;
  DmCons.qMaoObra.Close;
end;

procedure TfMaoObra.JvDBGrid1DblClick(Sender: TObject);
begin
  Atualiza;
  PageControl1.ActivePage := TabSheet2;
end;

procedure TfMaoObra.Edit1Change(Sender: TObject);
begin
  DmCons.qMaoObra.Close;
  DmCons.MaoObra.SQL.Clear;
  DmCons.MaoObra.SQL.Add('SELECT * FROM MAOOBRA');
  case JvComboBox1.ItemIndex of
    0 : DmCons.MaoObra.SQL.Add('WHERE NOME LIKE ''%' + Edit1.Text + '%''');
    1 : DmCons.MaoObra.SQL.Add('WHERE DTREAJUSTE LIKE ''%' + Edit1.Text + '%''');
  end;
  DmCons.MaoObra.SQL.Add('ORDER BY NOME');
  DmCons.qMaoObra.Open;
end;


procedure TfMaoObra.JvComboBox1Enter(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TfMaoObra.JvDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
begin
  DmCons.qMaoObra.IndexFieldNames := Column.FieldName;
  Column.Color := clInfoBK;
  for i := 0 to JvDBGrid1.Columns.Count - 1 do
    if not (JvDBGrid1.Columns.Items[I] = Column) then
      JvDBGrid1.Columns.Items[I].Color := clWhite;
end;

procedure TfMaoObra.TabSheet2Show(Sender: TObject);
begin
  Atualiza;
end;

procedure TfMaoObra.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
