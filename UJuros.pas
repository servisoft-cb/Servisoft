unit UJuros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, ComCtrls, JvLookup,
  Grids, DBGrids, JvDBCtrl, DB, JvCombobox, UCBase, UDm1, rsDBUtils;

type
  TfJuros = class(TForm)
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
    Label4: TLabel;
    Label2: TLabel;
    JvDBGrid1: TJvDBGrid;
    Edit1: TEdit;
    JvComboBox1: TJvComboBox;
    DBEdit3: TDBEdit;
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
    { Private declarations }
    Fdm1: TDm1;

    procedure Habilita;
    procedure Atualiza;
    procedure Consulta;
  public
    { Public declarations }
  end;

var
  fJuros: TfJuros;

implementation

uses UDmCons, UMenu;

{$R *.dfm}

procedure TfJuros.Consulta;
begin
  DmCons.qJuros.Refresh;
  Fdm1.tJuros.Close;
end;

procedure TfJuros.Habilita;
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

procedure TfJuros.Atualiza;
begin
  if Fdm1.tJuros.State in [dsInactive,dsBrowse] then
    begin
      Fdm1.tJuros.Close;
      if BitBtn1.Tag = 1 then
        begin
          Fdm1.Juros.ParamByName('Ano').AsInteger := 0;
          Fdm1.Juros.ParamByName('Mes').AsInteger := 0;
        end
      else
        begin
          Fdm1.Juros.ParamByName('Ano').AsInteger := DmCons.qJurosANO.AsInteger;
          Fdm1.Juros.ParamByName('Mes').AsInteger := DmCons.qJurosMES.AsInteger;
        end;
      Fdm1.tJuros.Open;
    end;
end;

procedure TfJuros.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfJuros.BitBtn1Click(Sender: TObject);
begin
  BitBtn1.Tag := 1;
  Habilita;
  Atualiza;
  PageControl1.ActivePage := TabSheet2;
  Fdm1.tJuros.Insert;
  DBEdit1.Enabled := True;
  DBEdit1.SetFocus;
  BitBtn1.Tag := 0;
end;

procedure TfJuros.BitBtn2Click(Sender: TObject);
begin
  Atualiza;
  PageControl1.ActivePage := TabSheet2;
  Fdm1.tJuros.Edit;
  Habilita;
  DBEdit1.Enabled := False;
  DBEdit2.SetFocus;
end;

procedure TfJuros.BitBtn3Click(Sender: TObject);
begin
  Fdm1.tJuros.Cancel;
  Habilita;
  PageControl1.ActivePage := TabSheet1;
end;

procedure TfJuros.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
    begin
      Atualiza;
      Fdm1.tJuros.Delete;
      Fdm1.tJuros.ApplyUpdates(0);
      Consulta;
      PageControl1.ActivePage := TabSheet1;
    end;
end;

procedure TfJuros.BitBtn5Click(Sender: TObject);
begin
  if (DBEdit1.Text <> '') and (DBEdit2.Text <> '') then
    begin
      if (DmCons.qJuros.Locate('ANO;MES',VarArrayOf([Fdm1.tJurosANO.AsInteger,Fdm1.tJurosMES.AsInteger]),[locaseinsensitive]))  and (Fdm1.tJuros.State in [dsInsert]) then
        begin
          ShowMessage('Já existe este Ano/Mes cadastrado!');
          DBEdit1.SetFocus;
        end
      else
        begin
          Fdm1.tJuros.Post;
          Fdm1.tJuros.ApplyUpdates(0);
          Habilita;
          Consulta;
          BitBtn1.SetFocus;
          PageControl1.ActivePage := TabSheet1;
        end;
    end
  else
    ShowMessage('Ano/Mês não podem ser vazio!');
end;

procedure TfJuros.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);

  PageControl1.ActivePage := TabSheet1;
  DmCons.qJuros.Open;
end;

procedure TfJuros.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Fdm1.tJuros.Close;
  DmCons.qJuros.Close;
end;

procedure TfJuros.JvDBGrid1DblClick(Sender: TObject);
begin
  Atualiza;
  PageControl1.ActivePage := TabSheet2;
end;

procedure TfJuros.Edit1Change(Sender: TObject);
begin
  DmCons.Juros.Close;
  DmCons.Juros.SQL.Clear;
  DmCons.Juros.SQL.Add('SELECT * FROM JUROS');
  case JvComboBox1.ItemIndex of
    0 : DmCons.Juros.SQL.Add('WHERE ANO ''%' + Edit1.Text + '%''');
  end;
  DmCons.Juros.SQL.Add('ORDER BY ANO,MES');
  DmCons.qJuros.Open;
end;

procedure TfJuros.ComboBox1Enter(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TfJuros.JvComboBox1Enter(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TfJuros.JvDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
begin
  DmCons.qJuros.IndexFieldNames := Column.FieldName;
  Column.Color := clInfoBK;
  for i := 0 to JvDBGrid1.Columns.Count - 1 do
    if not (JvDBGrid1.Columns.Items[I] = Column) then
      JvDBGrid1.Columns.Items[I].Color := clWhite;
end;

procedure TfJuros.TabSheet2Show(Sender: TObject);
begin
  Atualiza;
end;

procedure TfJuros.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
