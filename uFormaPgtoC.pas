unit uFormaPgtoC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, JvDBCtrl, UCBase,
  UDm1, rsDBUtils;

type
  TfFormaPgtoC = class(TForm)
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
  fFormaPgtoC: TfFormaPgtoC;

implementation

uses uFormaPgto, UMenu;

{$R *.dfm}

procedure TfFormaPgtoC.BitBtn1Click(Sender: TObject);
begin
  if not Fdm1.tFormaPgto.Active then
    Fdm1.tFormaPgto.Open;
  fFormaPgto := TfFormaPgto.Create(Self);

  fFormaPgto.Dm1 := Fdm1;

  Fdm1.tFormaPgto.Insert;
  fFormaPgto.ShowModal;
  fFormaPgto.Free;
end;

procedure TfFormaPgtoC.JvDBGrid1DblClick(Sender: TObject);
begin
  if not Fdm1.tFormaPgto.IsEmpty then
  begin
    fFormaPgto := TfFormaPgto.Create(Self);

    fFormaPgto.Dm1 := Fdm1;

    Fdm1.tFormaPgto.Edit;
    fFormaPgto.ShowModal;
    fFormaPgto.Free;
  end;
end;

procedure TfFormaPgtoC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F3) then
  begin
    Fdm1.tFormaPgto.Close;
    if Edit1.Text = '[Digite o nome e pressione F3 para localizar]' then
      Edit1.Clear;
    Fdm1.FormaPgto.CommandText := 'SELECT * FROM FORMAPGTO WHERE UPPER(DESCRICAO) LIKE UPPER(''%' + Edit1.Text + '%'')';
    Fdm1.tFormaPgto.Open;
    if Edit1.Text = '' then
      Edit1.Text := '[Digite o nome e pressione F3 para localizar]';
    Fdm1.tFormaPgto.IndexFieldNames := 'DESCRICAO';
  end;
end;

procedure TfFormaPgtoC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fdm1.tFormaPgto.Close;
  Fdm1.FormaPgto.CommandText := 'SELECT * FROM FORMAPGTO';
end;

procedure TfFormaPgtoC.BitBtn2Click(Sender: TObject);
begin
  if not Fdm1.tFormaPgto.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbOk,mbNo],0) = mrOk then
    begin
      Fdm1.tFormaPgto.Delete;
      Fdm1.tFormaPgto.ApplyUpdates(0);
    end;
end;

procedure TfFormaPgtoC.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

procedure TfFormaPgtoC.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
