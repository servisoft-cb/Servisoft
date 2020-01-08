unit UBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, ComCtrls, JvLookup,
  Grids, DBGrids, JvDBCtrl, DB, JvToolEdit, JvCombobox, UCBase, UDm1, rsDBUtils;

type
  TfBanco = class(TForm)
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
    Label1: TLabel;
    Label2: TLabel;
    JvDBGrid1: TJvDBGrid;
    JvComboBox1: TJvComboBox;
    Edit1: TEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    UCControls1: TUCControls;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
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
  fBanco: TfBanco;

implementation

uses UDmCons, UMenu;

{$R *.dfm}

procedure TfBanco.Consulta;
begin
  DmCons.qBanco.Refresh;
  Fdm1.tBanco.Close;
end;

procedure TfBanco.Habilita;
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

procedure TfBanco.Atualiza;
begin
  if Fdm1.tBanco.State in [dsInactive,dsBrowse] then
    begin
      Fdm1.tBanco.Close;
      if BitBtn1.Tag = 1 then
        Fdm1.Banco.ParamByName('Codigo').AsInteger := 0
      else
        Fdm1.Banco.ParamByName('Codigo').AsInteger := DmCons.qBancoID.AsInteger;
      Fdm1.tBanco.Open;
    end;
end;

procedure TfBanco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfBanco.BitBtn1Click(Sender: TObject);
begin
  BitBtn1.Tag := 1;
  Habilita;
  Atualiza;
  PageControl1.ActivePage := TabSheet2;
  DBEdit1.Enabled := True;
  Fdm1.tBanco.Insert;
  DBEdit1.SetFocus;
  BitBtn1.Tag := 0;
end;

procedure TfBanco.BitBtn2Click(Sender: TObject);
begin
  Atualiza;
  PageControl1.ActivePage := TabSheet2;
  Fdm1.tBanco.Edit;
  Habilita;
  if Fdm1.tBancoID.AsInteger = 1 then
    DBEdit1.Enabled := False
  else
    begin
      DBEdit1.Enabled := True;
      DBEdit1.SetFocus;
    end;
end;

procedure TfBanco.BitBtn3Click(Sender: TObject);
begin
  Fdm1.tBanco.Cancel;
  Habilita;
  PageControl1.ActivePage := TabSheet1;
end;

procedure TfBanco.BitBtn4Click(Sender: TObject);
begin
  if Fdm1.tBancoID.AsInteger > 1 then
    begin
      if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
        begin
          Atualiza;
          Fdm1.tBanco.Delete;
          Fdm1.tBanco.ApplyUpdates(0);
          Consulta;
          PageControl1.ActivePage := TabSheet1;
        end;
    end
  else
    ShowMessage('Conta Caixa não pode ser excluida!');
end;

procedure TfBanco.BitBtn5Click(Sender: TObject);
begin
  if (DBEdit1.Text <> '') then
    begin
      if Fdm1.tBanco.State in [dsInsert] then
        Fdm1.tBancoID.AsInteger := Fdm1.Incrementa('ID','BANCO');
      Fdm1.tBanco.Post;
      Fdm1.tBanco.ApplyUpdates(0);
      Habilita;
      Consulta;
      BitBtn1.SetFocus;
      PageControl1.ActivePage := TabSheet1;
    end
  else
    ShowMessage('Nome não pode ser vazio!');
end;

procedure TfBanco.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);

  DmCons.qBanco.Open;
  PageControl1.ActivePage := TabSheet1;
end;

procedure TfBanco.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Fdm1.tBanco.Close;
  DmCons.qBanco.Close;
end;

procedure TfBanco.JvDBGrid1DblClick(Sender: TObject);
begin
  Atualiza;
  PageControl1.ActivePage := TabSheet2;
end;

procedure TfBanco.Edit1Change(Sender: TObject);
begin
  DmCons.qBanco.Close;
  DmCons.Banco.SQL.Clear;
  DmCons.Banco.SQL.Add('SELECT * FROM BANCO');
  case JvComboBox1.ItemIndex of
    0 : DmCons.Banco.SQL.Add('WHERE NOME LIKE ''%' + Edit1.Text + '%''');
    1 : DmCons.Banco.SQL.Add('WHERE BANCO LIKE ''%' + Edit1.Text + '%''');
    2 : DmCons.Banco.SQL.Add('WHERE AGENCIA LIKE ''%' + Edit1.Text + '%''');
  end;
  DmCons.Banco.SQL.Add('ORDER BY NOME');
  DmCons.qBanco.Open;
end;


procedure TfBanco.JvComboBox1Enter(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TfBanco.JvDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
begin
  DmCons.qBanco.IndexFieldNames := Column.FieldName;
  Column.Color := clInfoBK;
  for i := 0 to JvDBGrid1.Columns.Count - 1 do
    if not (JvDBGrid1.Columns.Items[I] = Column) then
      JvDBGrid1.Columns.Items[I].Color := clWhite;
end;

procedure TfBanco.TabSheet2Show(Sender: TObject);
begin
  Atualiza;
end;

procedure TfBanco.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
