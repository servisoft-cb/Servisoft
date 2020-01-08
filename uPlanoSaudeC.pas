unit uPlanoSaudeC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, JvDBCtrl, UCBase,
  UDm1, rsDBUtils;

type
  TfPlanoSaudeC = class(TForm)
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
  fPlanoSaudeC: TfPlanoSaudeC;

implementation

uses uPlanoSaude, UMenu;

{$R *.dfm}

procedure TfPlanoSaudeC.BitBtn1Click(Sender: TObject);
begin
  if not Fdm1.tPlanoSaude.Active then
    Fdm1.tPlanoSaude.Open;
  fPlanoSaude := TfPlanoSaude.Create(Self);

  fPlanoSaude.Dm1 := Fdm1;

  Fdm1.tPlanoSaude.Insert;
  fPlanoSaude.ShowModal;
  fPlanoSaude.Free;
end;

procedure TfPlanoSaudeC.JvDBGrid1DblClick(Sender: TObject);
begin
  if not Fdm1.tPlanoSaude.IsEmpty then
  begin
    fPlanoSaude := TfPlanoSaude.Create(Self);

    fPlanoSaude.Dm1 := Fdm1;
    
    Fdm1.tPlanoSaude.Edit;
    fPlanoSaude.ShowModal;
    fPlanoSaude.Free;
  end;
end;

procedure TfPlanoSaudeC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F3) then
  begin
    Fdm1.tPlanoSaude.Close;
    if Edit1.Text = '[Digite o nome e pressione F3 para localizar]' then
      Edit1.Clear;
    Fdm1.PlanoSaude.CommandText := 'SELECT * FROM PLANOSAUDE WHERE UPPER(NOME) LIKE UPPER(''%' + Edit1.Text + '%'')';
    Fdm1.tPlanoSaude.Open;
    if Edit1.Text = '' then
      Edit1.Text := '[Digite o nome e pressione F3 para localizar]';
    Fdm1.tPlanoSaude.IndexFieldNames := 'NOME';
  end;
end;

procedure TfPlanoSaudeC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fdm1.tPlanoSaude.Close;
  Fdm1.PlanoSaude.CommandText := 'SELECT * FROM PLANOSAUDE';
end;

procedure TfPlanoSaudeC.BitBtn2Click(Sender: TObject);
begin
  if not Fdm1.tPlanoSaude.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbOk,mbNo],0) = mrOk then
    begin
      Fdm1.tPlanoSaude.Delete;
      Fdm1.tPlanoSaude.ApplyUpdates(0);
    end;
end;

procedure TfPlanoSaudeC.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

procedure TfPlanoSaudeC.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
