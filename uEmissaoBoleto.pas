unit uEmissaoBoleto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, Provider, DBClient, Grids, DBGrids,
  JvDBCtrl, StdCtrls, Mask, JvToolEdit, Buttons, JvLookup, ComCtrls,
  DBTables, JvDBComb;

type
  TfEmissaoBoleto = class(TForm)
    qCReceberParc: TClientDataSet;
    qCReceberParcNUMCRECEBER: TIntegerField;
    qCReceberParcPARCELA: TStringField;
    qCReceberParcVLRVENCIMENTO: TFloatField;
    qCReceberParcDTVENCIMENTO: TDateField;
    qCReceberParcQUITADO: TStringField;
    qCReceberParcCODCLIENTE: TIntegerField;
    qCReceberParcNUMNOTA: TIntegerField;
    qCReceberParcVLRDESCONTO: TFloatField;
    qCReceberParcVLRRESTANTE: TFloatField;
    qCReceberParcAGENCIA: TStringField;
    qCReceberParcTITPORTADOR: TStringField;
    qCReceberParcCODTIPOCOBRANCA: TIntegerField;
    qCReceberParcVLRDESPESA: TFloatField;
    qCReceberParcCODBANCO: TIntegerField;
    qCReceberParcCANCELADO: TStringField;
    qCReceberParcFANTASIA: TStringField;
    qCReceberParcCOBRANCAEMITIDA: TStringField;
    qCReceberParcNOME: TStringField;
    qCReceberParcDOCUMENTO: TStringField;
    prCReceberParc: TDataSetProvider;
    dsCREceberParc: TDataSource;
    CReceberParc: TSQLQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    JvDBGrid1: TJvDBGrid;
    JvDateEdit1: TJvDateEdit;
    JvDateEdit2: TJvDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label3: TLabel;
    Edit1: TEdit;
    JvDBLookupCombo2: TJvDBLookupCombo;
    Label26: TLabel;
    Query1: TQuery;
    Label4: TLabel;
    JvDateEdit3: TJvDateEdit;
    StatusBar1: TStatusBar;
    JvDBComboBox2: TJvDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEmissaoBoleto: TfEmissaoBoleto;

implementation

uses UDm1, UDmCons;

{$R *.dfm}

procedure TfEmissaoBoleto.FormCreate(Sender: TObject);
begin
  dmcons.qBanco.Open;
  qCReceberParc.Open;
end;

procedure TfEmissaoBoleto.BitBtn1Click(Sender: TObject);
function Filtro: String;
begin
  if qCReceberParc.Filter <> '' then
    Filtro := qCReceberParc.Filter + ' and ';
end;
begin
  qCReceberParc.Filter   := '';
  qCReceberParc.Filtered := False;
  if JvDateEdit1.Text <> '  /  /    ' then
    qCReceberParc.Filter   := Filtro + 'DTVENCIMENTO >= '''+ JvDateEdit1.Text +'''';
  if JvDateEdit2.Text <> '  /  /    ' then
    qCReceberParc.Filter   := Filtro + 'DTVENCIMENTO <= '''+ JvDateEdit2.Text +'''';
  qCReceberParc.Filtered := True;
end;

procedure TfEmissaoBoleto.BitBtn2Click(Sender: TObject);
begin
  if JvDBGrid1.SelectedRows.Count = 0 then
    JvDBGrid1.SelectAll
  else
    JvDBGrid1.UnselectAll;
end;

procedure TfEmissaoBoleto.BitBtn3Click(Sender: TObject);
var
  i: Integer;
begin
  Query1.SQL.Text := 'CREATE TABLE AUX (CLIENTE VARCHAR(), CNPJ, VALOR, VENCIMENTO)';
  if JvDBGrid1.SelectedRows.Count > 0 then
    for i := 0 to JvDBGrid1.SelectedRows.Count - 1 do
      begin
        JvDBGrid1.DataSource.DataSet.GotoBookmark(Pointer(JvDBGrid1.SelectedRows.Items[i])); //posiciona o registro na marca selecionada

      end;
end;

end.
