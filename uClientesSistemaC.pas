unit uClientesSistemaC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, Grids,
  DBGrids, JvDBCtrl, UCBase, rsDBUtils, JvLookup, uDm1, SMDBGrid, DB, ComObj;

type
  TfClientesSistemaC = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    UCControls1: TUCControls;
    JvDBLookupCombo1: TJvDBLookupCombo;
    btnConsultar: TBitBtn;
    Label2: TLabel;
    JvDBLookupCombo2: TJvDBLookupCombo;
    SMDBGrid1: TSMDBGrid;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
//    fdmCons: TDmCons;
    fDm1: TDm1;
    procedure prcGridPExcel(vDados: TDataSource);
  public
    { Public declarations }
  end;

var
  fClientesSistemaC: TfClientesSistemaC;

implementation

uses uDmCons, UMenu, uUtilPadrao;

{$R *.dfm}

procedure TfClientesSistemaC.FormCreate(Sender: TObject);
begin
  fDm1    := TDm1.Create(Self);
//  fDmCons := TdmCons.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
//  oDBUtils.SetDataSourceProperties(Self, fDmCons);
 fDm1.cdsSistema.Open;
 DmCons.qVendedor.Open;
end;

procedure TfClientesSistemaC.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

procedure TfClientesSistemaC.btnConsultarClick(Sender: TObject);
begin
  DmCons.cdsSistemaCliente.Close;
  DmCons.sqsSistemaCliente.SQL.Text := DmCons.ctPessoaSistema;
  if JvDBLookupCombo1.Text <> '' then
    DmCons.sqsSistemaCliente.SQL.Text := DmCons.sqsSistemaCliente.SQL.Text + ' and s.id = ' + JvDBLookupCombo1.Value;
  if JvDBLookupCombo2.Text <> '' then
    DmCons.sqsSistemaCliente.SQL.Text := DmCons.sqsSistemaCliente.SQL.Text + ' and v.id = ' + JvDBLookupCombo2.Value;
  DmCons.sqsSistemaCliente.SQL.Text := DmCons.sqsSistemaCliente.SQL.Text + ' order by s.nome, v.nome';
  DmCons.cdsSistemaCliente.Open;

  Label3.Caption := 'Encontrados ' + IntToStr(DmCons.cdsSistemaCliente.RecordCount) + ' registros!';
end;

procedure TfClientesSistemaC.BitBtn1Click(Sender: TObject);   
begin
  prcGridPExcel(SMDBGrid1.DataSource);
end;

procedure TfClientesSistemaC.prcGridPExcel(vDados: TDataSource);
var
  planilha: variant;
  vTexto: string;
begin
  Screen.Cursor := crHourGlass;
  vDados.DataSet.First;

  planilha := CreateOleObject('Excel.Application');
  planilha.WorkBooks.add(1);
  planilha.caption := 'Exportando dados do tela para o Excel';
  planilha.visible := true;

  prc_Preencher_Excel2(planilha, vDados, SMDBGrid1);

  planilha.columns.Autofit;
  vTexto := ExtractFilePath(Application.ExeName);

  vTexto := vTexto + Name + '_Sistemas';

  Planilha.ActiveWorkBook.SaveAs(vTexto);
  Screen.Cursor := crDefault;
end;

procedure TfClientesSistemaC.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: string;
begin
  ColunaOrdenada := Column.FieldName;
  DmCons.cdsSistemaCliente.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfClientesSistemaC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DmCons.cdsSistemaCliente.Close;
  Action := caFree;
end;

end.
