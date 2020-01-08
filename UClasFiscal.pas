unit UClasFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, ComCtrls, JvLookup,
  Grids, DBGrids, JvDBCtrl, DB, JvCombobox, UCBase, UDm1, rsDBUtils;

type
  TfClasFiscal = class(TForm)
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
    Label1: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    Label2: TLabel;
    JvDBGrid1: TJvDBGrid;
    Edit1: TEdit;
    JvComboBox1: TJvComboBox;
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
    procedure ComboBox1Enter(Sender: TObject);
    procedure JvComboBox1Enter(Sender: TObject);
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
   // property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fClasFiscal: TfClasFiscal;

implementation

uses UDmCons, UMenu;

{$R *.dfm}

procedure TfClasFiscal.Consulta;
begin
  DmCons.qClasFiscal.Refresh;
  Fdm1.tClasFiscal.Close;
end;

procedure TfClasFiscal.Habilita;
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

procedure TfClasFiscal.Atualiza;
begin
  if Fdm1.tClasFiscal.State in [dsInactive,dsBrowse] then
    begin
      Fdm1.tClasFiscal.Close;
      if BitBtn1.Tag = 1 then
        Fdm1.ClasFiscal.ParamByName('Codigo').AsString := ''
      else
        Fdm1.ClasFiscal.ParamByName('Codigo').AsString := DmCons.qClasFiscalCODCLASFISCAL.AsString;
      Fdm1.tClasFiscal.Open;
    end;
end;

procedure TfClasFiscal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfClasFiscal.BitBtn1Click(Sender: TObject);
begin
  BitBtn1.Tag := 1;
  Habilita;
  Atualiza;
  PageControl1.ActivePage := TabSheet2;
  Fdm1.tClasFiscal.Insert;
  DBEdit1.Enabled := True;
  DBEdit1.SetFocus;
  BitBtn1.Tag := 0;
end;

procedure TfClasFiscal.BitBtn2Click(Sender: TObject);
begin
  Atualiza;
  PageControl1.ActivePage := TabSheet2;
  Fdm1.tClasFiscal.Edit;
  Habilita;
  DBEdit1.Enabled := False;
  DBEdit2.SetFocus;
end;

procedure TfClasFiscal.BitBtn3Click(Sender: TObject);
begin
  Fdm1.tClasFiscal.Cancel;
  Habilita;
  PageControl1.ActivePage := TabSheet1;
end;

procedure TfClasFiscal.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
    begin
      Atualiza;
      Fdm1.tClasFiscal.Delete;
      Fdm1.tClasFiscal.ApplyUpdates(0);
      Consulta;
      PageControl1.ActivePage := TabSheet1;
    end;
end;

procedure TfClasFiscal.BitBtn5Click(Sender: TObject);
begin
  if (DBEdit1.Text <> '') and (DBEdit2.Text <> '') then
    begin
      if (DmCons.qClasFiscal.Locate('CODCLASFISCAL',DBEdit1.Text,([LocaseInsensitive]))) and (Fdm1.tClasFiscal.State in [dsInsert]) then
        begin
          ShowMessage('Já existe uma Classificação Fiscal cadastrada com o código ' + DBEdit1.Text + ' não podendo ser cadastrada outra!');
          DBEdit1.SetFocus;
        end
      else
      if (DmCons.qClasFiscal.Locate('CODREDUZIDO',DBEdit2.Text,([LocaseInsensitive]))) and (Fdm1.tClasFiscal.State in [dsInsert]) then
        begin
          ShowMessage('Já existe um Classificação Fiscal cadastrada com o código reduzido ' + DBEdit2.Text + ' não podendo ser cadastrada outra!');
          DBEdit2.SetFocus;
        end
      else
        begin
          Fdm1.tClasFiscal.Post;
          Fdm1.tClasFiscal.ApplyUpdates(0);
          Habilita;
          Consulta;
          BitBtn1.SetFocus;
          PageControl1.ActivePage := TabSheet1;
        end;
    end
  else
    ShowMessage('Classificação Fiscal e Código não podem ser vazio!');
end;

procedure TfClasFiscal.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);

  DmCons.qClasFiscal.Open;

  PageControl1.ActivePage := TabSheet1;
end;

procedure TfClasFiscal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Fdm1.tClasFiscal.Close;
  DmCons.qClasFiscal.Close;
end;

procedure TfClasFiscal.JvDBGrid1DblClick(Sender: TObject);
begin
  Atualiza;
  PageControl1.ActivePage := TabSheet2;
end;

procedure TfClasFiscal.Edit1Change(Sender: TObject);
begin
  DmCons.qClasFiscal.Close;
  DmCons.ClasFiscal.SQL.Clear;
  DmCons.ClasFiscal.SQL.Add('SELECT * FROM CLASFISCAL');
  case JvComboBox1.ItemIndex of
    0 : DmCons.ClasFiscal.SQL.Add('WHERE CODCLASFISCAL LIKE ''%' + Edit1.Text + '%''');
    1 : DmCons.ClasFiscal.SQL.Add('WHERE CODREDUZIDO LIKE ''%' + Edit1.Text + '%''');
  end;
  DmCons.ClasFiscal.SQL.Add('ORDER BY CODCLASFISCAL');
  DmCons.qClasFiscal.Open;
end;

procedure TfClasFiscal.ComboBox1Enter(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TfClasFiscal.JvComboBox1Enter(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TfClasFiscal.JvDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
begin
  DmCons.qClasFiscal.IndexFieldNames := Column.FieldName;
  Column.Color := clInfoBK;
  for i := 0 to JvDBGrid1.Columns.Count - 1 do
    if not (JvDBGrid1.Columns.Items[I] = Column) then
      JvDBGrid1.Columns.Items[I].Color := clWhite;
end;

procedure TfClasFiscal.TabSheet2Show(Sender: TObject);
begin
  Atualiza;
end;

procedure TfClasFiscal.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
