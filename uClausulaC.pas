unit uClausulaC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, JvDBCtrl, UCBase,
  UDm1, rsDBUtils;

type
  TfClausulaC = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    JvDBGrid1: TJvDBGrid;
    Panel2: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    UCControls1: TUCControls;
    procedure BitBtn1Click(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    Fdm1: TDm1;
  public
    { Public declarations }
  end;

var
  fClausulaC: TfClausulaC;

implementation

uses uClausula, UMenu;

{$R *.dfm}

procedure TfClausulaC.BitBtn1Click(Sender: TObject);
begin
  if not Fdm1.tClausula.Active then
    Fdm1.tClausula.Open;
  fClausula := TfClausula.Create(Self);

  fClausula.Dm1 := Fdm1;

  Fdm1.tClausula.Insert;
  fClausula.ShowModal;
  fClausula.Free;
end;

procedure TfClausulaC.JvDBGrid1DblClick(Sender: TObject);
begin
  if not Fdm1.tClausula.IsEmpty then
  begin
    fClausula := TfClausula.Create(Self);

    fClausula.Dm1 := Fdm1;
    
    Fdm1.tClausula.Edit;
    fClausula.ShowModal;
    fClausula.Free;
  end;
end;

procedure TfClausulaC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F3) then
  begin
    Fdm1.tClausula.Close;
    if Edit1.Text = '[Digite o nome e pressione F3 para localizar]' then
      Edit1.Clear;
    Fdm1.Clausula.CommandText := 'SELECT * FROM CLAUSULA WHERE UPPER(NOME) LIKE UPPER(''%' + Edit1.Text + '%'')';
    Fdm1.tClausula.Open;
    if Edit1.Text = '' then
      Edit1.Text := '[Digite o nome e pressione F3 para localizar]';
    Fdm1.tClausula.IndexFieldNames := 'NOME';
  end;
end;

procedure TfClausulaC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fdm1.tClausula.Close;
  Fdm1.Clausula.CommandText := 'SELECT * FROM Clausula';
end;

procedure TfClausulaC.BitBtn2Click(Sender: TObject);
begin
  if not Fdm1.tClausula.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbOk,mbNo],0) = mrOk then
    begin
      Fdm1.tClausula.Delete;
      Fdm1.tClausula.ApplyUpdates(0);
    end;
end;

procedure TfClausulaC.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

procedure TfClausulaC.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
