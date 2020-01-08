unit uCentroCustoC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, JvDBCtrl, UCBase,
  UDm1, rsDBUtils;

type
  TfCentroCustoC = class(TForm)
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
  fCentroCustoC: TfCentroCustoC;

implementation

uses uCentroCusto, UMenu;

{$R *.dfm}

procedure TfCentroCustoC.BitBtn1Click(Sender: TObject);
begin
  if not Fdm1.tCentroCusto.Active then
    Fdm1.tCentroCusto.Open;
  fCentroCusto := TfCentroCusto.Create(Self);

  fCentroCusto.Dm1 := Fdm1;

  Fdm1.tCentroCusto.Insert;
  fCentroCusto.ShowModal;
  fCentroCusto.Free;
end;

procedure TfCentroCustoC.JvDBGrid1DblClick(Sender: TObject);
begin
  if not Fdm1.tCentroCusto.IsEmpty then
  begin
    fCentroCusto := TfCentroCusto.Create(Self);

    fCentroCusto.Dm1 := Fdm1;

    Fdm1.tCentroCusto.Edit;
    fCentroCusto.ShowModal;
    fCentroCusto.Free;
  end;
end;

procedure TfCentroCustoC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F3) then
  begin
    Fdm1.tCentroCusto.Close;
    if Edit1.Text = '[Digite o nome e pressione F3 para localizar]' then
      Edit1.Clear;
    Fdm1.CentroCusto.CommandText := 'SELECT * FROM CENTROCUSTO WHERE UPPER(NOME) LIKE UPPER(''%' + Edit1.Text + '%'')';
    Fdm1.tCentroCusto.Open;
    if Edit1.Text = '' then
      Edit1.Text := '[Digite o nome e pressione F3 para localizar]';
    Fdm1.tCentroCusto.IndexFieldNames := 'NOME';
  end;
end;

procedure TfCentroCustoC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fdm1.tCentroCusto.Close;
  Fdm1.tPrevCentroCusto.Close;
  Fdm1.CentroCusto.CommandText := 'SELECT * FROM CENTROCUSTO';
end;

procedure TfCentroCustoC.BitBtn2Click(Sender: TObject);
begin
  if not Fdm1.tCentroCusto.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbOk,mbNo],0) = mrOk then
    begin
      Fdm1.MontaSQL_PREVCENTROCUSTO(Fdm1.tCentroCustoID.AsInteger,0);
      Fdm1.tPrevCentroCusto.First;
      while not Fdm1.tPrevCentroCusto.Eof do
        Fdm1.tPrevCentroCusto.Delete;
      Fdm1.tCentroCusto.Delete;
      Fdm1.tCentroCusto.ApplyUpdates(0);
      Fdm1.tPrevCentroCusto.ApplyUpdates(0);
    end;
end;

procedure TfCentroCustoC.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

procedure TfCentroCustoC.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
