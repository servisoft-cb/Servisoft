unit UConsCentroCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvEdit, JvTypedEdit, JvLookup, RzTabs, Grids, DBGrids,
  SMDBGrid, Buttons, FMTBcd, DB, SqlExpr, Provider, DBClient, ComCtrls;

type
  TfConsCentroCusto = class(TForm)
    Label1: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label3: TLabel;
    JvIntegerEdit1: TJvIntegerEdit;
    JvIntegerEdit2: TJvIntegerEdit;
    Label2: TLabel;
    Label4: TLabel;
    JvIntegerEdit3: TJvIntegerEdit;
    JvIntegerEdit4: TJvIntegerEdit;
    Label5: TLabel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    BitBtn1: TBitBtn;
    ConsCentroCusto: TSQLDataSet;
    ConsCentroCustoP: TDataSetProvider;
    mConsCentroCusto: TClientDataSet;
    mConsCentroCustoID: TIntegerField;
    mConsCentroCustoNOME: TStringField;
    mConsCentroCustoANO: TIntegerField;
    mConsCentroCustoMES: TIntegerField;
    mConsCentroCustoVALOR: TFloatField;
    mAuxiliar: TClientDataSet;
    dsmAuxiliar: TDataSource;
    mAuxiliarCodCentroCusto: TIntegerField;
    mAuxiliarNomeCentroCusto: TStringField;
    mAuxiliarAno: TIntegerField;
    mAuxiliarMes: TIntegerField;
    mAuxiliarVlrPrevisao: TFloatField;
    mAuxiliarVlrCPagar: TFloatField;
    CPagar: TSQLDataSet;
    CPagarP: TDataSetProvider;
    mCPagar: TClientDataSet;
    mCPagarDTVENCIMENTO: TDateField;
    mCPagarVLRVENCIMENTO: TFloatField;
    mCPagarVLRPAGTO: TFloatField;
    mCPagarVLRRESTANTE: TFloatField;
    mCPagarCODCENTROCUSTO: TIntegerField;
    ProgressBar1: TProgressBar;
    mAuxiliarVlrDiferenca: TFloatField;
    BitBtn2: TBitBtn;
    mTotal: TClientDataSet;
    msTotal: TDataSource;
    mTotalCentroCusto: TIntegerField;
    mTotalTotalPrevisao: TFloatField;
    mTotalTotalInformado: TFloatField;
    mTotalTotalDiferenca: TFloatField;
    mTotalNomeCentroCusto: TStringField;
    mAuxiliarVlrCReceber: TFloatField;
    mCReceber: TClientDataSet;
    CReceberP: TDataSetProvider;
    CReceber: TSQLDataSet;
    mCReceberDTVENCIMENTO: TDateField;
    mCReceberVLRVENCIMENTO: TFloatField;
    mCReceberVLRPAGTO: TFloatField;
    mCReceberVLRRESTANTE: TFloatField;
    mCReceberCODCENTROCUSTO: TIntegerField;
    MovFinanceiro: TSQLDataSet;
    MovFinanceiroP: TDataSetProvider;
    mMovFinanceiro: TClientDataSet;
    mMovFinanceiroDTMOVIMENTO: TDateField;
    mMovFinanceiroVLRENTRADA: TFloatField;
    mMovFinanceiroVLRSAIDA: TFloatField;
    mMovFinanceiroCODCENTROCUSTO: TIntegerField;
    mTotalTotalEntrada: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mAuxiliarNewRecord(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_SQLConsulta;
    procedure Monta_SQLCPagar;
    procedure Gera_mAuxiliar;
    procedure Monta_SQLCReceber;
    procedure Monta_SQLMovimento;
  public
    { Public declarations }
  end;

var
  fConsCentroCusto: TfConsCentroCusto;

implementation

uses UDmCons, URelConsCCusto;

{$R *.dfm}

procedure TfConsCentroCusto.Gera_mAuxiliar;
var
  ano, mes, dia : word;
begin
  SMDBGrid1.DataSource := nil;
  mAuxiliar.EmptyDataSet;
  mTotal.EmptyDataSet;
  ProgressBar1.Max      := mConsCentroCusto.RecordCount + mCPagar.RecordCount;
  ProgressBar1.Position := 0;
  mConsCentroCusto.First;
  while not mConsCentroCusto.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      if mAuxiliar.Locate('CodCentroCusto;Ano;Mes',VarArrayOf([mConsCentroCustoID.AsInteger,mConsCentroCustoANO.AsInteger,mConsCentroCustoMES.AsInteger]),[locaseinsensitive]) then
        mAuxiliar.edit
      else
        begin
          mAuxiliar.Insert;
          mAuxiliarCodCentroCusto.AsInteger := mConsCentroCustoID.AsInteger;
          mAuxiliarAno.AsInteger            := mConsCentroCustoANO.AsInteger;
          mAuxiliarMes.AsInteger            := mConsCentroCustoMES.AsInteger;
          mAuxiliarNomeCentroCusto.AsString := mConsCentroCustoNOME.AsString;
        end;
      mAuxiliarVlrPrevisao.AsFloat := StrToFloat(FormatFloat('0.00',mAuxiliarVlrPrevisao.AsFloat + mConsCentroCustoVALOR.AsFloat));
      mAuxiliar.Post;
      mConsCentroCusto.Next;
    end;

  mCPagar.First;
  while not mCPagar.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      DecodeDate(mCPagarDTVENCIMENTO.AsDateTime,ano,mes,dia);
      if mAuxiliar.Locate('CodCentroCusto;Ano;Mes',VarArrayOf([mCPagarCODCENTROCUSTO.AsInteger,ano,mes]),[locaseinsensitive]) then
        mAuxiliar.edit
      else
        begin
          mAuxiliar.Insert;
          mAuxiliarCodCentroCusto.AsInteger := mCPagarCODCENTROCUSTO.AsInteger;
          mAuxiliarAno.AsInteger            := ano;
          mAuxiliarMes.AsInteger            := mes;
          if JvDBLookupCombo1.Text <> '' then
            mAuxiliarNomeCentroCusto.AsString := JvDBLookupCombo1.Text
          else
          if DmCons.qCentroCusto.Locate('ID',mCPagarCODCENTROCUSTO.AsInteger,([LocaseInsensitive])) then
            mAuxiliarNomeCentroCusto.AsString := DmCons.qCentroCustoNOME.AsString;
        end;
      mAuxiliarVlrCPagar.AsFloat    := StrToFloat(FormatFloat('0.00',mAuxiliarVlrCPagar.AsFloat + mCPagarVLRVENCIMENTO.AsFloat));
      mAuxiliarVlrDiferenca.AsFloat := StrToFloat(FormatFloat('0.00',mAuxiliarVlrPrevisao.AsFloat - mAuxiliarVlrCPagar.AsFloat));
      mAuxiliar.Post;
      mCPagar.Next;
    end;

  mCReceber.First;
  while not mCReceber.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      DecodeDate(mCReceberDTVENCIMENTO.AsDateTime,ano,mes,dia);
      if mAuxiliar.Locate('CodCentroCusto;Ano;Mes',VarArrayOf([mCReceberCODCENTROCUSTO.AsInteger,ano,mes]),[locaseinsensitive]) then
        mAuxiliar.edit
      else
        begin
          mAuxiliar.Insert;
          mAuxiliarCodCentroCusto.AsInteger := mCReceberCODCENTROCUSTO.AsInteger;
          mAuxiliarAno.AsInteger            := ano;
          mAuxiliarMes.AsInteger            := mes;
          if JvDBLookupCombo1.Text <> '' then
            mAuxiliarNomeCentroCusto.AsString := JvDBLookupCombo1.Text
          else
          if DmCons.qCentroCusto.Locate('ID',mCReceberCODCENTROCUSTO.AsInteger,([LocaseInsensitive])) then
            mAuxiliarNomeCentroCusto.AsString := DmCons.qCentroCustoNOME.AsString;
        end;
      mAuxiliarVlrCReceber.AsFloat    := StrToFloat(FormatFloat('0.00',mAuxiliarVlrCReceber.AsFloat + mCReceberVLRVENCIMENTO.AsFloat));
      mAuxiliarVlrDiferenca.AsFloat := StrToFloat(FormatFloat('0.00',(mAuxiliarVlrPrevisao.AsFloat + mAuxiliarVlrCReceber.AsFloat) - mAuxiliarVlrCPagar.AsFloat));
      mAuxiliar.Post;
      mCReceber.Next;
    end;

  mMovFinanceiro.First;
  while not mMovFinanceiro.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      DecodeDate(mMovFinanceiroDTMOVIMENTO.AsDateTime,ano,mes,dia);
      if mAuxiliar.Locate('CodCentroCusto;Ano;Mes',VarArrayOf([mMovFinanceiroCODCENTROCUSTO.AsInteger,ano,mes]),[locaseinsensitive]) then
        mAuxiliar.edit
      else
        begin
          mAuxiliar.Insert;
          mAuxiliarCodCentroCusto.AsInteger := mMovFinanceiroCODCENTROCUSTO.AsInteger;
          mAuxiliarAno.AsInteger            := ano;
          mAuxiliarMes.AsInteger            := mes;
          if JvDBLookupCombo1.Text <> '' then
            mAuxiliarNomeCentroCusto.AsString := JvDBLookupCombo1.Text
          else
          if DmCons.qCentroCusto.Locate('ID',mMovFinanceiroCODCENTROCUSTO.AsInteger,([LocaseInsensitive])) then
            mAuxiliarNomeCentroCusto.AsString := DmCons.qCentroCustoNOME.AsString;
        end;
      if mMovFinanceiroVLRENTRADA.AsFloat > 0 then
        mAuxiliarVlrCReceber.AsFloat    := StrToFloat(FormatFloat('0.00',mAuxiliarVlrCReceber.AsFloat + mMovFinanceiroVLRENTRADA.AsFloat))
      else
      if mMovFinanceiroVLRSAIDA.AsFloat > 0 then
        mAuxiliarVlrCPagar.AsFloat    := StrToFloat(FormatFloat('0.00',mAuxiliarVlrCPagar.AsFloat + mMovFinanceiroVLRSAIDA.AsFloat));
      mAuxiliarVlrDiferenca.AsFloat := StrToFloat(FormatFloat('0.00',(mAuxiliarVlrPrevisao.AsFloat + mAuxiliarVlrCReceber.AsFloat) - mAuxiliarVlrCPagar.AsFloat));
      mAuxiliar.Post;
      mMovFinanceiro.Next;
    end;

  SMDBGrid1.DataSource := dsmAuxiliar;
end;

procedure TfConsCentroCusto.Monta_SQLCPagar;
begin
  mCPagar.Close;
  CPagar.CommandText := 'SELECT A.DTVENCIMENTO, A.VLRVENCIMENTO, A.VLRPAGTO, A.VLRRESTANTE, A.CODCENTROCUSTO ' +
                        'FROM CPAGARPARC A ' +
                        'WHERE (A.CODCENTROCUSTO > 0) ';
  if JvDBLookupCombo1.Text <> '' then
    CPagar.CommandText := CPagar.CommandText + ' AND (A.CODCENTROCUSTO = ' + IntToStr(JvDBLookupCombo1.KeyValue) + ') ';
  if JvIntegerEdit1.Value > 0 then
    begin
      CPagar.CommandText := CPagar.CommandText + ' AND (EXTRACT(YEAR FROM A.DTVENCIMENTO) >= ' + JvIntegerEdit1.Text + ') ';
      if JvIntegerEdit2.Value > 0 then
        CPagar.CommandText := CPagar.CommandText + ' AND (EXTRACT(MONTH FROM A.DTVENCIMENTO) >= ' + JvIntegerEdit2.Text + ') ';
    end;
  if JvIntegerEdit3.Value > 0 then
    begin
      CPagar.CommandText := CPagar.CommandText + ' AND (EXTRACT(YEAR FROM A.DTVENCIMENTO) <= ' + JvIntegerEdit3.Text + ') ';
      if JvIntegerEdit4.Value > 0 then
        CPagar.CommandText := CPagar.CommandText + ' AND (EXTRACT(MONTH FROM A.DTVENCIMENTO) <= ' + JvIntegerEdit4.Text + ') ';
    end;
  mCPagar.Open;
end;


procedure TfConsCentroCusto.Monta_SQLCReceber;
begin
  mCReceber.Close;
  CReceber.CommandText := 'SELECT A.DTVENCIMENTO, A.VLRVENCIMENTO, A.VLRPAGTO, A.VLRRESTANTE, A.CODCENTROCUSTO ' +
                        'FROM CRECEBERPARC A ' +
                        'WHERE (A.CODCENTROCUSTO > 0) ';
  if JvDBLookupCombo1.Text <> '' then
    CReceber.CommandText := CReceber.CommandText + ' AND (A.CODCENTROCUSTO = ' + IntToStr(JvDBLookupCombo1.KeyValue) + ') ';
  if JvIntegerEdit1.Value > 0 then
    begin
      CReceber.CommandText := CReceber.CommandText + ' AND (EXTRACT(YEAR FROM A.DTVENCIMENTO) >= ' + JvIntegerEdit1.Text + ') ';
      if JvIntegerEdit2.Value > 0 then
        CReceber.CommandText := CReceber.CommandText + ' AND (EXTRACT(MONTH FROM A.DTVENCIMENTO) >= ' + JvIntegerEdit2.Text + ') ';
    end;
  if JvIntegerEdit3.Value > 0 then
    begin
      CReceber.CommandText := CReceber.CommandText + ' AND (EXTRACT(YEAR FROM A.DTVENCIMENTO) <= ' + JvIntegerEdit3.Text + ') ';
      if JvIntegerEdit4.Value > 0 then
        CReceber.CommandText := CReceber.CommandText + ' AND (EXTRACT(MONTH FROM A.DTVENCIMENTO) <= ' + JvIntegerEdit4.Text + ') ';
    end;
  mCReceber.Open;
end;


procedure TfConsCentroCusto.Monta_SQLMovimento;
begin
  mMovFinanceiro.Close;
  MovFinanceiro.CommandText := 'SELECT A.DTMOVIMENTO,  A.VLRENTRADA,  A.VLRSAIDA,   A.CODCENTROCUSTO ' +
                               'FROM MOVFINANCEIRO A ' +
                               'WHERE TIPOMOV = ''MOV''';

  if JvDBLookupCombo1.Text <> '' then
    MovFinanceiro.CommandText := MovFinanceiro.CommandText + ' AND (A.CODCENTROCUSTO = ' + IntToStr(JvDBLookupCombo1.KeyValue) + ') ';
  if JvIntegerEdit1.Value > 0 then
    begin
      MovFinanceiro.CommandText := MovFinanceiro.CommandText + ' AND (EXTRACT(YEAR FROM A.DTMOVIMENTO) >= ' + JvIntegerEdit1.Text + ') ';
      if JvIntegerEdit2.Value > 0 then
        MovFinanceiro.CommandText := MovFinanceiro.CommandText + ' AND (EXTRACT(MONTH FROM A.DTMOVIMENTO) >= ' + JvIntegerEdit2.Text + ') ';
    end;
  if JvIntegerEdit3.Value > 0 then
    begin
      MovFinanceiro.CommandText := MovFinanceiro.CommandText + ' AND (EXTRACT(YEAR FROM A.DTMOVIMENTO) <= ' + JvIntegerEdit3.Text + ') ';
      if JvIntegerEdit4.Value > 0 then
        MovFinanceiro.CommandText := MovFinanceiro.CommandText + ' AND (EXTRACT(MONTH FROM A.DTMOVIMENTO) <= ' + JvIntegerEdit4.Text + ') ';
    end;
  mMovFinanceiro.Open;
end;

procedure TfConsCentroCusto.Monta_SQLConsulta;
begin
  mConsCentroCusto.Close;
  ConsCentroCusto.CommandText := 'SELECT A.*, B.ANO, B.MES, B.VALOR ' +
                                 'FROM CENTROCUSTO A ' +
                                 'LEFT JOIN PREVCENTROCUSTO B ' +
                                 '  ON  (B.CODCENTROCUSTO = A.ID) ' +
                                 'WHERE (0=0)';
  if JvDBLookupCombo1.Text <> '' then
    ConsCentroCusto.CommandText := ConsCentroCusto.CommandText + ' AND (A.ID = ' + IntToStr(JvDBLookupCombo1.KeyValue) + ') ';
  if JvIntegerEdit1.Value > 0 then
    begin
      ConsCentroCusto.CommandText := ConsCentroCusto.CommandText + ' AND (B.ANO >= ' + JvIntegerEdit1.Text + ') ';
      if JvIntegerEdit2.Value > 0 then
        ConsCentroCusto.CommandText := ConsCentroCusto.CommandText + ' AND (B.MES >= ' + JvIntegerEdit2.Text + ') ';
    end;
  if JvIntegerEdit3.Value > 0 then
    begin
      ConsCentroCusto.CommandText := ConsCentroCusto.CommandText + ' AND (B.ANO <= ' + JvIntegerEdit3.Text + ') ';
      if JvIntegerEdit4.Value > 0 then
        ConsCentroCusto.CommandText := ConsCentroCusto.CommandText + ' AND (B.MES <= ' + JvIntegerEdit4.Text + ') ';
    end;
  mConsCentroCusto.Open;
end;

procedure TfConsCentroCusto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DmCons.qCentroCusto.Close;
  mConsCentroCusto.Close;
  mCPagar.Close;
  Action := Cafree;
end;

procedure TfConsCentroCusto.mAuxiliarNewRecord(DataSet: TDataSet);
begin
  mAuxiliarVlrCPagar.AsFloat     := 0;
  mAuxiliarVlrPrevisao.AsFloat   := 0;
  mAuxiliarVlrDiferenca.AsFloat  := 0;
end;

procedure TfConsCentroCusto.BitBtn1Click(Sender: TObject);
begin
  if (JvIntegerEdit2.Value > 0) and (JvIntegerEdit1.Value = 0) then
    JvIntegerEdit2.Value := 0;
  if (JvIntegerEdit4.Value > 0) and (JvIntegerEdit3.Value = 0) then
    JvIntegerEdit4.Value := 0;
  Monta_SQLConsulta;
  Monta_SQLCPagar;
  Monta_SQLCReceber;
  Monta_SQLMovimento;
  Gera_mAuxiliar;
end;

procedure TfConsCentroCusto.FormShow(Sender: TObject);
begin
  DmCons.qCentroCusto.Open;
end;

procedure TfConsCentroCusto.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if StrToFloat(FormatFloat('0.00',mAuxiliarVlrDiferenca.AsFloat)) < 0 then
    begin
      Background  := clRed;
      AFont.Color := clWhite;
    end;
end;

procedure TfConsCentroCusto.BitBtn2Click(Sender: TObject);
var
  CentroCusto : Integer;
begin
  mTotal.EmptyDataSet;
  SMDBGrid1.EnableScroll;
  mAuxiliar.First;
  CentroCusto := 0;
  while not mAuxiliar.Eof do
    begin
      if CentroCusto <> mAuxiliarCodCentroCusto.AsInteger then
        mTotal.Insert
      else
        mTotal.Edit;
      mTotalCentroCusto.AsInteger := mAuxiliarCodCentroCusto.AsInteger;
      mTotalNomeCentroCusto.AsString := mAuxiliarNomeCentroCusto.AsString;
      mTotalTotalDiferenca.AsFloat := mTotalTotalDiferenca.AsFloat + mAuxiliarVlrDiferenca.AsFloat;
      mTotalTotalInformado.AsFloat := mTotalTotalInformado.AsFloat + mAuxiliarVlrCPagar.AsFloat;
      mTotalTotalPrevisao.AsFloat  := mTotalTotalPrevisao.AsFloat  + mAuxiliarVlrPrevisao.AsFloat;
      mTotalTotalEntrada.AsFloat   := mTotalTotalEntrada.AsFloat + mAuxiliarVlrCReceber.AsFloat;
      mTotal.Post;
      CentroCusto := mAuxiliarCodCentroCusto.AsInteger;
      mAuxiliar.Next;
    end;
  SMDBGrid1.DisableScroll;
  mAuxiliar.MasterSource := msTotal;
  mAuxiliar.IndexFieldNames := 'NomeCentroCusto;Ano;Mes';
  mAuxiliar.MasterFields := 'NomeCentroCusto';
  fRelConsCCusto := TfRelConsCCusto.Create(Self);
  fRelConsCCusto.RLReport1.Preview;
  fRelConsCCusto.RLReport1.Free;
  mAuxiliar.MasterSource := nil;
  mAuxiliar.MasterFields := '';
  mAuxiliar.IndexFieldNames := 'NomeCentroCusto;Ano;Mes';
end;

end.
