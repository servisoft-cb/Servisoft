unit UProdutoHist;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, DBVGrids, Grids,
  DBGrids, JvDBCtrl, ExtCtrls, JvLookup, StdCtrls, Buttons, Mask,
  JvToolEdit, JvCurrEdit, JvxCtrls;

type
  TfProdutoHist = class(TForm)
    Panel1: TPanel;
    JvDBGrid1: TJvDBGrid;
    HistProd: TSQLQuery;
    HistProdP: TDataSetProvider;
    qHistProd: TClientDataSet;
    qsHistProd: TDataSource;
    qHistProdNUMMOV: TIntegerField;
    qHistProdCODPRODUTO: TIntegerField;
    qHistProdTAMANHO: TStringField;
    qHistProdDTMOV: TDateField;
    qHistProdES: TStringField;
    qHistProdTIPOMOV: TStringField;
    qHistProdNUMDOCTO: TIntegerField;
    qHistProdCODPESSOA: TIntegerField;
    qHistProdPRECOCUSTO: TFloatField;
    qHistProdPRECOVC: TFloatField;
    qHistProdQTD: TFloatField;
    qHistProdPERCICMS: TFloatField;
    qHistProdPERCIPI: TFloatField;
    qHistProdUNIDADE: TStringField;
    qHistProdVLRDESCONTO: TFloatField;
    qHistProdVLRADICIONAL: TFloatField;
    Label1: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label2: TLabel;
    JvDBLookupCombo2: TJvDBLookupCombo;
    JvDateEdit1: TJvDateEdit;
    JvDateEdit2: TJvDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    Tamanho: TSQLQuery;
    TamanhoP: TDataSetProvider;
    qTamanho: TClientDataSet;
    dsTamanho: TDataSource;
    qTamanhoCODPRODUTO: TIntegerField;
    qTamanhoTAMANHO: TStringField;
    qTamanhoPRECOCUSTO: TFloatField;
    qTamanhoPRECOMINIMO: TFloatField;
    qTamanhoPRECOVENDA: TFloatField;
    qTamanhoCODBARRA: TStringField;
    qTamanhoESTMINIMO: TFloatField;
    qTamanhoDTREAJUST: TDateField;
    qHistProdNOME: TStringField;
    Entrada: TSQLQuery;
    EntradaP: TDataSetProvider;
    qEntrada: TClientDataSet;
    qEntradaES: TStringField;
    qEntradaQTD: TFloatField;
    qsEntrada: TDataSource;
    Panel2: TPanel;
    Label5: TLabel;
    JvxCurrencyEdit1: TJvxCurrencyEdit;
    Label7: TLabel;
    JvxCurrencyEdit3: TJvxCurrencyEdit;
    JvxCurrencyEdit4: TJvxCurrencyEdit;
    Label8: TLabel;
    JvxSpeedButton1: TJvxSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure JvDBLookupCombo1Exit(Sender: TObject);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure JvxSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fProdutoHist: TfProdutoHist;

implementation

uses UDm1, UDmCons, UEstoqueRel;

{$R *.dfm}

procedure TfProdutoHist.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DmCons.qProduto.Close;
  qHistProd.Close;
  qTamanho.Close;
  Action := Cafree;
end;

procedure TfProdutoHist.FormShow(Sender: TObject);
begin
//  DmCons.qProduto.Open;
end;

procedure TfProdutoHist.BitBtn1Click(Sender: TObject);
begin
  JvxCurrencyEdit1.Value := 0;
  JvxCurrencyEdit3.Value := 0;
  JvxCurrencyEdit4.Value := 0;
  if JvDBLookupCombo1.Text <> '' then
    begin
      qHistProd.Close;
      HistProd.SQL.Clear;
      HistProd.SQL.Add('SELECT ESTOQUEMOV.*, PRODUTO.NOME FROM ESTOQUEMOV');
      HistProd.SQL.Add('INNER JOIN PRODUTO ON (ESTOQUEMOV.CODPRODUTO = PRODUTO.ID)');
      HistProd.SQL.Add('WHERE ESTOQUEMOV.CODPRODUTO = :C1');
      HistProd.ParamByName('C1').AsInteger := JvDBLookupCombo1.KeyValue;
      if JvDBLookupCombo2.Text <> '' then
        begin
          HistProd.SQL.Add(' and ESTOQUEMOV.TAMANHO = :T1');
          HistProd.ParamByName('T1').AsString := JvDBLookupCombo2.KeyValue;
        end;
      if (JvDateEdit1.Text <> '  /  /    ') then
        begin
          HistProd.SQL.Add(' and ESTOQUEMOV.DTMOV >= :D1');
          HistProd.ParamByName('D1').AsDate := JvDateEdit1.Date;
        end;
      if (JvDateEdit2.Text <> '  /  /    ') then
        begin
          HistProd.SQL.Add(' and ESTOQUEMOV.DTMOV <= :D2');
          HistProd.ParamByName('D2').AsDate := JvDateEdit2.Date;
        end;
      HistProd.SQL.Add('ORDER BY ESTOQUEMOV.DTMOV');
      qHistProd.Open;
// Soma as entradas e saidas //

      qEntrada.Close;
      Entrada.SQL.Clear;
      Entrada.SQL.Add('SELECT ES, SUM(QTD) QTD FROM ESTOQUEMOV');
      Entrada.SQL.Add('WHERE ESTOQUEMOV.CODPRODUTO = :C1');
      Entrada.ParamByName('C1').AsInteger := JvDBLookupCombo1.KeyValue;
      if JvDBLookupCombo2.Text <> '' then
        begin
          Entrada.SQL.Add(' and ESTOQUEMOV.TAMANHO = :T1');
          Entrada.ParamByName('T1').AsString := JvDBLookupCombo2.KeyValue;
        end;
      if (JvDateEdit1.Text <> '  /  /    ') then
        begin
          Entrada.SQL.Add(' and ESTOQUEMOV.DTMOV >= :D1');
          Entrada.ParamByName('D1').AsDate := JvDateEdit1.Date;
        end;
      if (JvDateEdit2.Text <> '  /  /    ') then
        begin
          Entrada.SQL.Add(' and ESTOQUEMOV.DTMOV <= :D2');
          Entrada.ParamByName('D2').AsDate := JvDateEdit2.Date;
        end;
      Entrada.SQL.Add('GROUP BY ES');
      qEntrada.Open;
      qEntrada.First;
      while not qEntrada.Eof do
        begin
          if qEntradaES.AsString = 'E' then
            JvxCurrencyEdit1.Value := qEntradaQTD.AsFloat
          else
            JvxCurrencyEdit3.Value := qEntradaQTD.AsFloat;
          qEntrada.Next;
        end;
      JvxCurrencyEdit4.Value := JvxCurrencyEdit1.Value - JvxCurrencyEdit3.Value;
    end
  else
    begin
      ShowMessage('Deve haver um produto selecionado!');
      JvDBLookupCombo1.SetFocus;
    end;
end;

procedure TfProdutoHist.JvDBLookupCombo1Exit(Sender: TObject);
begin
  if JvDBLookupCombo1.Text <> '' then
    begin
      qTamanho.Close;
      Tamanho.Params[0].AsInteger := JvDBLookupCombo1.KeyValue;
      qTamanho.Open;
    end;
end;

procedure TfProdutoHist.JvDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
begin
  qHistProd.IndexFieldNames := Column.FieldName;
  Column.Color := clInfoBK;
  for i := 0 to JvDBGrid1.Columns.Count - 1 do
    if not (JvDBGrid1.Columns.Items[I] = Column) then
      JvDBGrid1.Columns.Items[I].Color := clWhite;
end;

procedure TfProdutoHist.JvxSpeedButton1Click(Sender: TObject);
begin
  if qHistProd.RecordCount > 0 then
    begin
      fEstoqueRel := TfEstoqueRel.Create(Self);
      fEstoqueRel.RLReport2.Preview;
      fEstoqueRel.RLReport2.Free;
    end
  else
    ShowMessage('Não há registros para serem impressos!');
end;

end.
