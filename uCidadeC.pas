unit uCidadeC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ExtCtrls,
  Grids, DBGrids, JvDBCtrl, UCBase, UDm1, rsDBUtils;

type
  TfCidadeC = class(TForm)
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
  fCidadeC: TfCidadeC;

implementation

uses uCidade, UMenu;

{$R *.dfm}

procedure TfCidadeC.BitBtn1Click(Sender: TObject);
begin
  if not Fdm1.tCidade.Active then
    Fdm1.tCidade.Open;

  fCidade := TfCidade.Create(Self);

  fCidade.dm1 := Fdm1;

  Fdm1.tCidade.Insert;
  fCidade.ShowModal;
  fCidade.Free;
end;

procedure TfCidadeC.JvDBGrid1DblClick(Sender: TObject);
begin
  if not Fdm1.tCidade.IsEmpty then
  begin
    fCidade := TfCidade.Create(Self);

    fCidade.dm1 := Fdm1;

    Fdm1.tCidade.Edit;
    fCidade.ShowModal;
    fCidade.Free;
  end;
end;

procedure TfCidadeC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F3) then
  begin
    Fdm1.tCidade.Close;
    if Edit1.Text = '[Digite o nome e pressione F3 para localizar]' then
      Edit1.Clear;
    Fdm1.Cidade.CommandText := 'SELECT * FROM CIDADE WHERE UPPER(NOME) LIKE UPPER(''%' + Edit1.Text + '%'')';
    Fdm1.tCidade.Open;
    if Edit1.Text = '' then
      Edit1.Text := '[Digite o nome e pressione F3 para localizar]';
    Fdm1.tCidade.IndexFieldNames := 'NOME';
  end;
end;

procedure TfCidadeC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fdm1.tCidade.Close;
  Fdm1.Cidade.CommandText := 'SELECT * FROM CIDADE';
end;

procedure TfCidadeC.BitBtn2Click(Sender: TObject);
begin
  if not Fdm1.tCidade.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbOk,mbNo],0) = mrOk then
    begin
      Fdm1.tCidade.Delete;
      Fdm1.tCidade.ApplyUpdates(0);
    end;
end;

procedure TfCidadeC.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

procedure TfCidadeC.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
