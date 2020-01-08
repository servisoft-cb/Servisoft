unit UUF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, ComCtrls, JvLookup,
  Grids, DBGrids, JvDBCtrl, DB, JvCombobox, UCBase, UDm1, rsDBUtils;

type
  TfUF = class(TForm)
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
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    JvDBGrid1: TJvDBGrid;
    Edit1: TEdit;
    Label3: TLabel;
    UCControls1: TUCControls;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    Fdm1: TDm1;
    procedure Habilita;
  public
    { Public declarations }
  end;

var
  fUF: TfUF;

implementation

uses UDmCons, UMenu;

{$R *.dfm}

procedure TfUF.Habilita;
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

procedure TfUF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfUF.BitBtn1Click(Sender: TObject);
begin
  if not Fdm1.tUF.Active then
    Fdm1.tUF.Open;
  BitBtn1.Tag := 1;
  Habilita;
  PageControl1.ActivePage := TabSheet2;
  Fdm1.tUF.Insert;
  DBEdit1.Enabled := True;
  DBEdit1.SetFocus;
  BitBtn1.Tag := 0;
end;

procedure TfUF.BitBtn2Click(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet2;
  Fdm1.tUF.Edit;
  Habilita;
  DBEdit1.Enabled := False;
  DBEdit2.SetFocus;
end;

procedure TfUF.BitBtn3Click(Sender: TObject);
begin
  Fdm1.tUF.Cancel;
  Habilita;
  PageControl1.ActivePage := TabSheet1;
end;

procedure TfUF.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
    begin
      Fdm1.tUF.Delete;
      Fdm1.tUF.ApplyUpdates(0);
      PageControl1.ActivePage := TabSheet1;
    end;
end;

procedure TfUF.BitBtn5Click(Sender: TObject);
begin
  if (DBEdit1.Text <> '') and (DBEdit2.Text <> '') then
    begin
      if not DmCons.qUF.Active then
        DmCons.qUF.Open; 
      if (DmCons.qUF.Locate('UF',DBEdit1.Text,([LocaseInsensitive]))) and (Fdm1.tUF.State in [dsInsert]) then
        begin
          ShowMessage('UF já cadastrada!');
          DBEdit1.SetFocus;
        end
      else
        begin
          Fdm1.tUF.Post;
          Fdm1.tUF.ApplyUpdates(0);
          Habilita;
          BitBtn1.SetFocus;
          PageControl1.ActivePage := TabSheet1;
        end;
    end
  else
    ShowMessage('UF não podem ser vazio!');
end;

procedure TfUF.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  PageControl1.ActivePage := TabSheet1;
end;

procedure TfUF.JvDBGrid1DblClick(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet2;
end;

procedure TfUF.ComboBox1Enter(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TfUF.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F3) then
  begin
    Fdm1.tUF.Close;
    if Edit1.Text = '[Digite o nome e pressione F3 para localizar]' then
      Edit1.Clear;
    Fdm1.Uf.CommandText := 'SELECT * FROM UF WHERE UPPER(UF) LIKE UPPER(''%' + Edit1.Text + '%'')';
    Fdm1.tUf.Open;
    if Edit1.Text = '' then
      Edit1.Text := '[Digite o nome e pressione F3 para localizar]';
    Fdm1.tUF.IndexFieldNames := 'UF';
  end;
end;

procedure TfUF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.tUf.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn5.Click;
              if Fdm1.tUf.State in [dsBrowse] then
                CanClose := True;
             end;
      mrNo: begin
              BitBtn3.Click;
              CanClose := true;
            end;
    end;
  end
  else
    CanClose := True;
end;

procedure TfUF.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
