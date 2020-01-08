unit uVersaoC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ExtCtrls,
  DBGrids, JvDBCtrl, UCBase, rsDBUtils, Grids, uDmVersao, JvLookup;

type
  TfVersaoC = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    JvDBGrid1: TJvDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    UCControls1: TUCControls;
    JvDBLookupCombo1: TJvDBLookupCombo;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    fDmVersao: TDmVersao;
    ctVersao: String;
  public
    { Public declarations }
  end;

var
  fVersaoC: TfVersaoC;

implementation

uses uVersao;

{$R *.dfm}

procedure TfVersaoC.BitBtn1Click(Sender: TObject);
begin
  if not fDmVersao.cdsVersao.Active then
    fDmVersao.cdsVersao.Open;

  fVersao := TfVersao.Create(Self);

  fVersao.fDmVersao := fDmVersao;

  fDmVersao.cdsVersao.Insert;
  fVersao.ShowModal;
  fVersao.Free;
end;

procedure TfVersaoC.JvDBGrid1DblClick(Sender: TObject);
begin
  if not fDmVersao.cdsVersao.IsEmpty then
  begin
    fVersao := TfVersao.Create(Self);

    fVersao.fDmVersao := fDmVersao;

    fDmVersao.cdsVersao.Edit;
    fVersao.ShowModal;
    fVersao.Free;
  end;
end;

procedure TfVersaoC.BitBtn2Click(Sender: TObject);
begin
  if not fDmVersao.cdsVersao.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbOk,mbNo],0) = mrOk then
    begin
      fDmVersao.cdsVersao.Delete;
      fDmVersao.cdsVersao.ApplyUpdates(0);
    end;
end;

procedure TfVersaoC.FormCreate(Sender: TObject);
begin
  fDmVersao := TDmVersao.Create(Self);
  oDBUtils.SetDataSourceProperties(Self,fDmVersao);
  ctVersao := fDmVersao.sdsVersao.CommandText;
  fDmVersao.cdsPrograma.Open;
end;

procedure TfVersaoC.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDmVersao);
end;

procedure TfVersaoC.BitBtn3Click(Sender: TObject);
begin
  fDmVersao.cdsVersao.Close;
  fDmVersao.sdsVersao.CommandText := ctVersao;
  if JvDBLookupCombo1.KeyValue > 0 then
    fDmVersao.sdsVersao.CommandText := ctVersao + ' AND PROGRAMA_ID = ' + JvDBLookupCombo1.Value;
  fDmVersao.cdsVersao.Open;
end;

end.
