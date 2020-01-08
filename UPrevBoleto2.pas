unit UPrevBoleto2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvToolEdit, JvLookup, JvDBComb, Buttons,
  ExtCtrls, Grids, DBGrids, SMDBGrid, FMTBcd, DB, SqlExpr, DBClient,
  Provider, RzButton, UDm1, rsDBUtils;

type
  TfPrevBoleto2 = class(TForm)
    Label1: TLabel;
    JvDateEdit1: TJvDateEdit;
    Label2: TLabel;
    JvDateEdit2: TJvDateEdit;
    Label3: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label4: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    Parcelas: TSQLDataSet;
    pParcelas: TDataSetProvider;
    tParcelas: TClientDataSet;
    dsParcelas: TDataSource;
    RzBitBtn1: TRzBitBtn;
    ParcelasNUMCRECEBER: TIntegerField;
    ParcelasPARCELA: TStringField;
    ParcelasDTVENCIMENTO: TDateField;
    ParcelasCODCLIENTE: TIntegerField;
    ParcelasNUMNOTA: TIntegerField;
    ParcelasVLRRESTANTE: TFloatField;
    ParcelasCODTIPOCOBRANCA: TIntegerField;
    ParcelasCODBANCO: TIntegerField;
    ParcelasDTMOVIMENTO: TDateField;
    ParcelasTIPODOC: TStringField;
    ParcelasNOMECLIENTE: TStringField;
    ParcelasDOCUMENTO: TStringField;
    ParcelasENDERECO: TStringField;
    ParcelasBAIRRO: TStringField;
    ParcelasCEP: TStringField;
    ParcelasESTADO: TStringField;
    ParcelasINSCESTADUAL: TStringField;
    ParcelasCOBENDERECO: TStringField;
    ParcelasCOBNUMERO: TIntegerField;
    ParcelasCOBBAIRRO: TStringField;
    ParcelasCOBUF: TStringField;
    ParcelasENDNUMERO: TIntegerField;
    ParcelasNOMECIDADE: TStringField;
    ParcelasNOMECIDADECOB: TStringField;
    ParcelasCOBCEP: TStringField;
    ParcelasCOBRANCAEMITIDA: TStringField;
    ParcelasPESSOA: TStringField;
    ParcelasNUMCARTEIRA: TStringField;
    ParcelasNOSSONUMERO: TStringField;
    ParcelasIMPRIMIR: TStringField;
    tParcelasNUMCRECEBER: TIntegerField;
    tParcelasPARCELA: TStringField;
    tParcelasDTVENCIMENTO: TDateField;
    tParcelasCODCLIENTE: TIntegerField;
    tParcelasNUMNOTA: TIntegerField;
    tParcelasVLRRESTANTE: TFloatField;
    tParcelasCODTIPOCOBRANCA: TIntegerField;
    tParcelasCODBANCO: TIntegerField;
    tParcelasDTMOVIMENTO: TDateField;
    tParcelasTIPODOC: TStringField;
    tParcelasNOMECLIENTE: TStringField;
    tParcelasDOCUMENTO: TStringField;
    tParcelasENDERECO: TStringField;
    tParcelasBAIRRO: TStringField;
    tParcelasCEP: TStringField;
    tParcelasESTADO: TStringField;
    tParcelasINSCESTADUAL: TStringField;
    tParcelasCOBENDERECO: TStringField;
    tParcelasCOBNUMERO: TIntegerField;
    tParcelasCOBBAIRRO: TStringField;
    tParcelasCOBUF: TStringField;
    tParcelasENDNUMERO: TIntegerField;
    tParcelasNOMECIDADE: TStringField;
    tParcelasNOMECIDADECOB: TStringField;
    tParcelasCOBCEP: TStringField;
    tParcelasCOBRANCAEMITIDA: TStringField;
    tParcelasPESSOA: TStringField;
    tParcelasNUMCARTEIRA: TStringField;
    tParcelasNOSSONUMERO: TStringField;
    tParcelasIMPRIMIR: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SMDBGrid1ChangeSelection(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    Fdm1: TDm1;

    procedure Monta_SQL;
  public
    { Public declarations }
  end;

var
  fPrevBoleto2: TfPrevBoleto2;

implementation

uses UDmCons, uRelBoletoItau;

{$R *.dfm}

procedure TfPrevBoleto2.Monta_SQL;
begin
  tParcelas.Close;
  Parcelas.CommandText := 'select A.NUMCRECEBER, A.PARCELA, A.DTVENCIMENTO, A.CODCLIENTE, A.NUMNOTA, A.VLRRESTANTE, A.CODTIPOCOBRANCA, ' +
                          ' A.CODBANCO, A.DTMOVIMENTO, A.TIPODOC, B.NOME NOMECLIENTE, B.DOCUMENTO, B.ENDERECO, B.BAIRRO, B.CEP, B.ESTADO, ' +
                          ' B.INSCESTADUAL, B.COBENDERECO, B.COBNUMERO, B.COBBAIRRO, B.COBUF, B.ENDNUMERO, C.NOME NOMECIDADE, D.NOME NOMECIDADECOB, ' +
                          ' B.COBCEP, A.COBRANCAEMITIDA, B.PESSOA, A.NUMCARTEIRA, A.NOSSONUMERO, A.IMPRIMIR ' +
                          'from CRECEBERPARC A ' +
                          'INNER JOIN PESSOA B ' +
                          'ON (A.CODCLIENTE = B.ID) ' +
                          'FULL JOIN CIDADE C ' +
                          'ON (B.CIDADE = C.ID) ' +
                          'FULL JOIN CIDADE D ' +
                          'ON (B.COBCIDADE = C.ID) ' +
                          'WHERE (A.VLRRESTANTE > 0) ';
  if JvDBLookupCombo1.Text <> '' then
    Parcelas.CommandText := Parcelas.CommandText + '  AND (A.CODCLIENTE = ' + JvDBLookupCombo1.Value + ')';
  if (JvDateEdit1.Date > 1) and (JvDateEdit2.Date > 1) then
    Parcelas.CommandText := Parcelas.CommandText + '  AND (A.DTVENCIMENTO BETWEEN ''' + FormatDateTime('MM/DD/YYYY',JvDateEdit1.Date) + ''' AND ''' + FormatDateTime('MM/DD/YYYY',JvDateEdit2.Date) +''' ) ';
  if JvDBComboBox1.Text <> '' then
    begin
      Parcelas.CommandText := Parcelas.CommandText + '  AND (A.NUMCARTEIRA = ''' + JvDBComboBox1.Values.Strings[JvDBComboBox1.ItemIndex] + ''')';
    end;
  Parcelas.CommandText := Parcelas.CommandText + ' ORDER BY B.NOME, A.DTVENCIMENTO';
  tParcelas.Open;

end;

procedure TfPrevBoleto2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DmCons.qPessoa.Close;
  Fdm1.tBcoItau.Close;
  Fdm1.tEmpresa.Close;
  Action := Cafree;
end;

procedure TfPrevBoleto2.FormShow(Sender: TObject);
begin
  DmCons.qPessoa.Open;
  Fdm1.tBcoItau.Open;
  Fdm1.tEmpresa.Open;
end;

procedure TfPrevBoleto2.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevBoleto2.BitBtn1Click(Sender: TObject);
begin
  Monta_SQL;
end;

procedure TfPrevBoleto2.RzBitBtn1Click(Sender: TObject);
begin
  if tParcelas.Active then
    begin
      tParcelas.First;
      while not tParcelas.Eof do
        begin
          SMDBGrid1.SelectedRows.CurrentRowSelected := not(SMDBGrid1.SelectedRows.CurrentRowSelected);
          tParcelas.Edit;
          if SMDBGrid1.SelectedRows.CurrentRowSelected then
            tParcelasIMPRIMIR.AsString := 'S'
          else
            tParcelasIMPRIMIR.AsString := 'N';
          tParcelas.Next;
        end;
    end;
end;

procedure TfPrevBoleto2.BitBtn2Click(Sender: TObject);
begin

  {SMDBGrid1.SelectedRows.Count;
  if not fPrevBoleto2.SMDBGrid1.SelectedRows.CurrentRowSelected  then
    PrintIt := False;}

  fRelBoletoItau := TfRelBoletoItau.Create(self);

  fRelBoletoItau.Dm1 := fdm1;

  fRelBoletoItau.RLReport1.Preview;
  fRelBoletoItau.RLReport1.Free;
  FreeAndNil(fRelBoletoItau);
end;

procedure TfPrevBoleto2.SMDBGrid1ChangeSelection(Sender: TObject);
begin
  if tParcelas.Active then
    begin
      tParcelas.Edit;
      if SMDBGrid1.SelectedRows.CurrentRowSelected then
        tParcelasIMPRIMIR.AsString := 'S'
      else
        tParcelasIMPRIMIR.AsString := 'N';
      tParcelas.Post;
    end;
end;

procedure TfPrevBoleto2.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

procedure TfPrevBoleto2.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
