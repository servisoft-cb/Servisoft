unit uServicoC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, JvDBCtrl, UCBase,
  UDm1, rsDBUtils;

type
  TfServicoC = class(TForm)
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
  fServicoC: TfServicoC;

implementation

uses uServico, UMenu;

{$R *.dfm}

procedure TfServicoC.BitBtn1Click(Sender: TObject);
begin
  if not Fdm1.tServico.Active then
    Fdm1.tServico.Open;
  fServico := TfServico.Create(Self);

  fServico.Dm1 := Fdm1;

  Fdm1.tServico.Insert;
  Fdm1.tServicoDESLOCAMENTO.AsString := '0';
  Fdm1.tServicoVALORHORA.AsString    := '0';
  Fdm1.tServicoAVULSO.AsString       := '0';
  Fdm1.tServicoPERMANENTE.AsString   := '0';
  fServico.ShowModal;
  fServico.Free;
end;

procedure TfServicoC.JvDBGrid1DblClick(Sender: TObject);
begin
  if not Fdm1.tServico.IsEmpty then
  begin
    fServico := TfServico.Create(Self);

    fServico.Dm1 := Fdm1;

    Fdm1.tServico.Edit;
    fServico.ShowModal;
    fServico.Free;
  end;
end;

procedure TfServicoC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F3) then
  begin
    Fdm1.tServico.Close;
    if Edit1.Text = '[Digite o nome e pressione F3 para localizar]' then
      Edit1.Clear;
    Fdm1.Servico.CommandText := 'SELECT * FROM SERVICO WHERE UPPER(NOME) LIKE UPPER(''%' + Edit1.Text + '%'')';
    Fdm1.tServico.Open;
    if Edit1.Text = '' then
      Edit1.Text := '[Digite o nome e pressione F3 para localizar]';
    Fdm1.tServico.IndexFieldNames := 'NOME';
  end;
end;

procedure TfServicoC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fdm1.tServico.Close;
  Fdm1.Servico.CommandText := 'SELECT * FROM SERVICO';
end;

procedure TfServicoC.BitBtn2Click(Sender: TObject);
begin
  if not Fdm1.tServico.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbOk,mbNo],0) = mrOk then
    begin
      Fdm1.tServico.Delete;
      Fdm1.tServico.ApplyUpdates(0);
    end;
end;

procedure TfServicoC.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

procedure TfServicoC.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
