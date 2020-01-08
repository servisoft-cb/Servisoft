unit UNatOperacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, ComCtrls, JvLookup,
  Grids, DBGrids, JvDBCtrl, DB, JvCombobox, UCBase, UDm1, rsDBUtils;

type
  TfNatOperacao = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    DBRadioGroup1: TDBRadioGroup;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBEdit2: TDBEdit;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Label4: TLabel;
    Label2: TLabel;
    JvDBGrid1: TJvDBGrid;
    JvComboBox1: TJvComboBox;
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
  fNatOperacao: TfNatOperacao;

implementation

uses UDmCons, UMenu;

{$R *.dfm}

procedure TfNatOperacao.Consulta;
begin
  DmCons.qNatOperacao.Refresh;
  Fdm1.tNatOperacao.Close;
end;

procedure TfNatOperacao.Habilita;
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

procedure TfNatOperacao.Atualiza;
begin
  if Fdm1.tNatOperacao.State in [dsInactive,dsBrowse] then
    begin
      Fdm1.tNatOperacao.Close;
      if BitBtn1.Tag = 1 then
        Fdm1.NatOperacao.ParamByName('Codigo').AsInteger := 0
      else
        Fdm1.NatOperacao.ParamByName('Codigo').AsInteger := DmCons.qNatOperacaoID.AsInteger;
      Fdm1.tNatOperacao.Open;
    end;
end;

procedure TfNatOperacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfNatOperacao.BitBtn1Click(Sender: TObject);
begin
  BitBtn1.Tag := 1;
  Habilita;
  Atualiza;
  Fdm1.tNatOperacao.Insert;
  PageControl1.ActivePage := TabSheet2;
  DBEdit1.SetFocus;
  BitBtn1.Tag := 0;
end;

procedure TfNatOperacao.BitBtn2Click(Sender: TObject);
begin
  Atualiza;
  PageControl1.ActivePage := TabSheet2;
  Fdm1.tNatOperacao.Edit;
  Habilita;
  DBEdit1.SetFocus;
end;

procedure TfNatOperacao.BitBtn3Click(Sender: TObject);
begin
  Fdm1.tNatOperacao.Cancel;
  Habilita;
  PageControl1.ActivePage := TabSheet1;
end;

procedure TfNatOperacao.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
    begin
      Atualiza;
      Fdm1.tNatOperacao.Delete;
      Fdm1.tNatOperacao.ApplyUpdates(0);
      Consulta;
      PageControl1.ActivePage := TabSheet1;
    end;
end;

procedure TfNatOperacao.BitBtn5Click(Sender: TObject);
begin
  if (DBEdit1.Text <> '') and (DBEdit2.Text <> '') then
    begin
      if (DmCons.qNatOperacao.Locate('CODIGO',DBEdit2.Text,([LocaseInsensitive]))) and (Fdm1.tNatOperacao.State in [dsInsert]) then
        begin
          ShowMessage('Já existe uma Natureza de Operação cadastrada com o código ' + DBEdit2.Text + ' não podendo ser cadastrada outra!');
          DBEdit2.SetFocus;
        end
      else
        begin
          if Fdm1.tNatOperacao.State in [dsInsert] then
            Fdm1.tNatOperacaoID.AsInteger := Fdm1.Incrementa('ID','NATOPERACAO');
          Fdm1.tNatOperacao.Post;
          Fdm1.tNatOperacao.ApplyUpdates(0);
          Habilita;
          Consulta;
          BitBtn1.SetFocus;
          PageControl1.ActivePage := TabSheet1;
        end
    end
  else
    ShowMessage('Nome e Código não podem ser vazio!');
end;

procedure TfNatOperacao.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);

  DmCons.qNatOperacao.Open;
  PageControl1.ActivePage := TabSheet1;
end;

procedure TfNatOperacao.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Fdm1.TNatOperacao.Close;
  DmCons.qNatOperacao.Close;
end;

procedure TfNatOperacao.JvDBGrid1DblClick(Sender: TObject);
begin
  Atualiza;
  PageControl1.ActivePage := TabSheet2;
end;

procedure TfNatOperacao.Edit1Change(Sender: TObject);
begin
  DmCons.qNatOperacao.Close;
  DmCons.NatOperacao.SQL.Clear;
  DmCons.NatOperacao.SQL.Add('SELECT * FROM NATOPERACAO');
  case JvComboBox1.ItemIndex of
    0 : DmCons.NatOperacao.SQL.Add('WHERE NOME LIKE ''%' + Edit1.Text + '%''');
    1 : DmCons.NatOperacao.SQL.Add('WHERE CODIGO LIKE ''%' + Edit1.Text + '%''');
  end;
  DmCons.NatOperacao.SQL.Add('ORDER BY NOME');
  DmCons.qNatOperacao.Open;
end;

procedure TfNatOperacao.JvComboBox1Enter(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TfNatOperacao.JvDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
begin
  DmCons.qNatOperacao.IndexFieldNames := Column.FieldName;
  Column.Color := clInfoBK;
  for i := 0 to JvDBGrid1.Columns.Count - 1 do
    if not (JvDBGrid1.Columns.Items[I] = Column) then
      JvDBGrid1.Columns.Items[I].Color := clWhite;
end;

procedure TfNatOperacao.TabSheet2Show(Sender: TObject);
begin
  Atualiza;
end;

procedure TfNatOperacao.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
