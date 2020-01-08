unit UArqRetornoItau;

interface

uses

  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ALed, ExtCtrls, FMTBcd, DB, SqlExpr, DBClient, Grids, DBGrids, SMDBGrid, StdCtrls,
  Mask, JvToolEdit, dbxpress, UDM1, rsDBUtils;


type
  TfArqRetornoItau = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ALed1: TALed;
    Label8: TLabel;
    ALed2: TALed;
    Label2: TLabel;
    ALed3: TALed;
    Label3: TLabel;
    dsmArquivo: TDataSource;
    Label4: TLabel;
    ALed4: TALed;
    ALed5: TALed;
    Label6: TLabel;
    SMDBGrid1: TSMDBGrid;
    qCReceberParc: TSQLQuery;
    qCReceberParcNUMCRECEBER: TIntegerField;
    qCReceberParcPARCELA: TStringField;
    qCReceberParcVLRVENCIMENTO: TFloatField;
    qCReceberParcDTVENCIMENTO: TDateField;
    qCReceberParcQUITADO: TStringField;
    qCReceberParcJUROSCALC: TFloatField;
    qCReceberParcDTPAGTO: TDateField;
    qCReceberParcCODCLIENTE: TIntegerField;
    qCReceberParcNUMNOTA: TIntegerField;
    qCReceberParcVLRDESCONTO: TFloatField;
    qCReceberParcVLRPAGTO: TFloatField;
    qCReceberParcVLRRESTANTE: TFloatField;
    qCReceberParcCODVENDEDOR: TIntegerField;
    qCReceberParcPERCCOMISSAO: TFloatField;
    qCReceberParcAGENCIA: TStringField;
    qCReceberParcTITPORTADOR: TStringField;
    qCReceberParcCODTIPOCOBRANCA: TIntegerField;
    qCReceberParcVLRDESPESA: TFloatField;
    qCReceberParcCODBANCO: TIntegerField;
    qCReceberParcPGCARTORIO: TStringField;
    qCReceberParcTITPROTESTADO: TStringField;
    qCReceberParcQTDDIASPROT: TIntegerField;
    qCReceberParcDTMOVIMENTO: TDateField;
    qCReceberParcDIASATRASO: TIntegerField;
    qCReceberParcJUROSPAGOS: TFloatField;
    qCReceberParcCANCELADO: TStringField;
    qCReceberParcTIPODOC: TStringField;
    qCReceberParcVLRDEVOLUCAO: TFloatField;
    qCReceberParcCODCONDPGTO: TIntegerField;
    qCReceberParcDTDEVOLUCAO: TDateField;
    qCReceberParcCOBRANCAEMITIDA: TStringField;
    JvFilenameEdit1: TJvFilenameEdit;
    mArquivo: TClientDataSet;
    mArquivoNumTitEmpresa: TStringField;
    mArquivoNumTitBanco: TStringField;
    mArquivoCodCarteira: TStringField;
    mArquivoCodOcorrenciaRet: TStringField;
    mArquivoNomeOcorrenciaRet: TStringField;
    mArquivoDtOcorrencia: TStringField;
    mArquivoNumNota: TStringField;
    mArquivoDtVenc: TStringField;
    mArquivoVlrTitulo: TFloatField;
    mArquivoEspecieDoc: TStringField;
    mArquivoVlrDespesaCobranca: TFloatField;
    mArquivoVlrIOF: TFloatField;
    mArquivoVlrAbatimento: TFloatField;
    mArquivoVlrDesconto: TFloatField;
    mArquivoVlrPago: TFloatField;
    mArquivoVlrJurosPagos: TFloatField;
    mArquivoDtLiquidacao: TStringField;
    mArquivoInstrCancelada: TStringField;
    mArquivoNomeCliente: TStringField;
    mArquivoErros: TStringField;
    mArquivoCodLiquidacao: TStringField;
    mArquivoDescLiquidacao: TStringField;
    mArquivoAtualizado: TStringField;
    mArquivoTipo: TStringField;
    mArquivoCodCliente: TIntegerField;
    mArquivoParcela: TStringField;
    mArquivoDescErro2: TStringField;
    mArquivoDescErro1: TStringField;
    mArquivoDescErro3: TStringField;
    mArquivoDescErro4: TStringField;
    mArquivoNumCReceber: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    Fdm1: Tdm1;
    vNumMov, vNumMovJuros : Integer;
    vHistorico : String;
    vFilial : Integer;
    vMotivo : String;
    procedure Grava_NumBanco;
    procedure Grava_Historico;
    procedure Grava_MovFinanceiro(Tipo : String);
    //procedure Grava_Liquidacao;
    //procedure Grava_Historico(Tipo, Historico : String); //E- Entrada  L- Liquidação  P-Protestado
//    procedure Pagamento;
//    procedure Grava_Protesto;
    procedure Grava_Vencimento;
    procedure Motivo_Rejeicao(Codigo  : String);
    procedure Motivo_Ocorrencia28(Codigo : String);
  public
    { Public declarations }
  end;

var
  fArqRetornoItau: TfArqRetornoItau;

implementation

uses UDMCons;

{$R *.DFM}

procedure TfArqRetornoItau.Grava_MovFinanceiro(Tipo : String);
begin
  Fdm1.tMovFinanceiro.Close;
  Fdm1.MovFinanceiro.Params[0].AsInteger := 0;
  Fdm1.tMovFinanceiro.Open;

  Fdm1.tMovFinanceiro.Insert;
  Fdm1.tMovFinanceiroNUMMOVTO.AsInteger := Fdm1.Incrementa('NUMMOVTO','MOVFINANCEIRO');
  Fdm1.tMovFinanceiroCODBANCO.AsInteger := Fdm1.tCReceberParcCODBANCO.AsInteger;
  Fdm1.tMovFinanceiroTIPOMOV.AsString   := 'REC';
  Fdm1.tMovFinanceiroDTMOVIMENTO.AsDateTime := Fdm1.tCReceberParcDTPAGTO.AsDateTime;
  if Tipo = 'D' then
    begin
      Fdm1.tMovFinanceiroVLRENTRADA.AsFloat   := Fdm1.tCReceberParcVLRPAGTO.AsFloat;
      Fdm1.tMovFinanceiroHISTORICO.AsString := 'Recto. Dupl. ' + Fdm1.tCReceberHistNUMCRECEBER.AsString + ' parcela ' + Fdm1.tCReceberHistPARCELA.AsString + ' de ' + Fdm1.tCReceberParcNOMECLIENTE.AsString;
    end
  else
  if Tipo = 'J' then
    begin
      Fdm1.tMovFinanceiroVLRENTRADA.AsFloat   := Fdm1.tCReceberParcVLRPAGTO.AsFloat;
      Fdm1.tMovFinanceiroHISTORICO.AsString := 'Recto. Juros da Dupl. ' + Fdm1.tCReceberHistNUMCRECEBER.AsString + ' parcela ' + Fdm1.tCReceberHistPARCELA.AsString + ' de ' + Fdm1.tCReceberParcNOMECLIENTE.AsString;
    end;
  if DmCons.qCliente.Locate('ID',Fdm1.tCReceberParcCODCLIENTE.AsInteger,([LocaseInsensitive])) then
    Fdm1.tMovFinanceiroTIPOPESSOA.AsString := DmCons.qClientePESSOA.AsString;
  Fdm1.tMovFinanceiro.Post;
  Fdm1.tMovFinanceiro.ApplyUpdates(0);
end;

procedure TfArqRetornoItau.Grava_Historico;
var
  vAux : Integer;
begin
  Fdm1.tCReceberHist.Close;
  Fdm1.CReceberHist.Params[0].AsInteger := mArquivoNumCReceber.AsInteger;
  Fdm1.CReceberHist.Params[1].AsString  := mArquivoParcela.AsString;
  Fdm1.tCReceberHist.Open;
  Fdm1.tCReceberHist.Last;
  vAux := Fdm1.tCReceberHistITEM.AsInteger + 1;

  Fdm1.tCReceberHist.Insert;
  Fdm1.tCReceberHistNUMCRECEBER.AsInteger   := mArquivoNumCReceber.AsInteger;
  Fdm1.tCReceberHistPARCELA.AsString        := mArquivoParcela.AsString;
  Fdm1.tCReceberHistITEM.AsInteger          := vAux;
  Fdm1.tCReceberHistDTHISTORICO.AsDateTime  := Date;
  Fdm1.tCReceberHistCODBANCO.AsInteger      := Fdm1.tCReceberParcCODBANCO.AsInteger;
  if (mArquivoCodOcorrenciaRet.AsString = '06') or (mArquivoCodOcorrenciaRet.AsString = '08')
  or (mArquivoCodOcorrenciaRet.AsString = '09') or (mArquivoCodOcorrenciaRet.AsString = '10') then
    begin
      Fdm1.tCReceberHistDTULTPGTO.AsDateTime    := Fdm1.tCReceberParcDTPAGTO.AsDateTime;
      if mArquivoVlrPago.AsFloat > 0 then
        Fdm1.tCReceberHistVLRULTPGTO.AsFloat      := mArquivoVlrPago.AsFloat
      else
        Fdm1.tCReceberHistVLRULTPGTO.AsFloat := mArquivoVlrTitulo.AsFloat;
      Fdm1.tCReceberHistVLRULTJUROSPAGO.AsFloat := mArquivoVlrJurosPagos.AsFloat;
      Fdm1.tCReceberHistVLRULTDESCONTO.AsFloat  := mArquivoVlrDesconto.AsFloat;
      Fdm1.tCReceberHistVLRULTDESPESA.AsFloat   := mArquivoVlrDesconto.AsFloat;
      Fdm1.tCReceberHistTIPOHIST.AsString       := 'P';
      if StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcVLRRESTANTE.AsFloat)) > 0 then
        Fdm1.tCReceberHistHISTORICO.AsString  := 'PAGAMENTO PARCIAL - Sistema Itaú'
      else
        Fdm1.tCReceberHistHISTORICO.AsString  := 'PAGAMENTO TOTAL - Sistema Itaú';
      Grava_MovFinanceiro('D');
      Fdm1.tCReceberHistNUMMOVFINANC.AsInteger := Fdm1.tMovFinanceiroNUMMOVTO.AsInteger;
      if mArquivoVlrJurosPagos.AsFloat > 0 then
        begin
          Grava_MovFinanceiro('J');
          Fdm1.tCReceberHistNUMMOVJUROS.AsInteger  := Fdm1.tMovFinanceiroNUMMOVTO.AsInteger;
        end;
    end
  else
  if mArquivoCodOcorrenciaRet.AsString = '23' then
    Fdm1.tCReceberHistHISTORICO.AsString  := 'PROTESTO ENVIADO A CARTÓRIO/TARIFA';
  Fdm1.tCReceberHist.Post;
  Fdm1.tCReceberHist.ApplyUpdates(0);
end;

procedure TfArqRetornoItau.Motivo_Ocorrencia28(Codigo : String);
begin
  if Codigo = '03' then
    vMotivo := 'Tarifa de sustação'
  else
  if Codigo = '04' then
    vMotivo := 'Tarifa de protesto'
  else
  if Codigo = '08' then
    vMotivo := 'Tarifa de custas de protesto'
  else
  if Codigo = 'A9' then
    vMotivo := 'Tarifa de manutenção de título vencido'
  else
  if Codigo = 'B1' then
    vMotivo := 'Tarifa de baixa da carteira'
  else
  if Codigo = 'B2' then
    vMotivo := 'Tarifa de rateio dos custos de impressão completa de bloquetos'
  else
  if Codigo = 'B3' then
    vMotivo := 'Tarifa de registro de entrada do título'
  else
  if Codigo = 'F5' then
    vMotivo := 'Tarifa de entrada na rede SICREDI'
  else
  if Codigo = 'E1' then
    vMotivo := 'Tarifa de rateio impressão completa posta não';
end;

procedure TfArqRetornoItau.Motivo_Rejeicao(Codigo : String);
var
  i, i2 : Integer;
  vDescricao : String;
begin
  i  := 1;
  i2 := 0;
  while i <= Length(Codigo) do
    begin
      if mArquivoCodOcorrenciaRet.AsString = '03' then
        begin
          inc(i2);
          case StrToInt(Copy(Codigo,i,2)) of
            03 : mArquivo.FieldByName('DescErro'+IntToStr(i2)).AsString := 'NÃO FOI POSSÍVEL ATRIBUIR A AGÊNCIA  PELO CEP OU CEP INVÁLIDO';
            04 : mArquivo.FieldByName('DescErro'+IntToStr(i2)).AsString := 'SIGLA DO ESTADO INVÁLIDA';
            05 : mArquivo.FieldByName('DescErro'+IntToStr(i2)).AsString := 'PRAZO DA OPERAÇÃO MENOR QUE PRAZO MÍNIMO OU MAIOR QUE O MÁXIMO';
            07 : mArquivo.FieldByName('DescErro'+IntToStr(i2)).AsString := 'VALOR DO TÍTULO MAIOR QUE 10.000.000,00';
            08 : mArquivo.FieldByName('DescErro'+IntToStr(i2)).AsString := 'NÃO INFORMADO OU DESLOCADO';
            09 : mArquivo.FieldByName('DescErro'+IntToStr(i2)).AsString := 'AGÊNCIA ENCERRADA';
            10 : mArquivo.FieldByName('DescErro'+IntToStr(i2)).AsString := 'NÃO INFORMADO OU DESLOCADO';
            11 : mArquivo.FieldByName('DescErro'+IntToStr(i2)).AsString := 'CEP NÃO NUMÉRICO';
            12 : mArquivo.FieldByName('DescErro'+IntToStr(i2)).AsString := 'NOME NÃO INFORMADO OU DESLOCADO (BANCOS CORRESPONDENTES)';
            13 : mArquivo.FieldByName('DescErro'+IntToStr(i2)).AsString := 'CEP INCOMPATÍVEL COM A SIGLA DO ESTADO';
            14 : mArquivo.FieldByName('DescErro'+IntToStr(i2)).AsString := 'NOSSO NÚMERO JÁ REGISTRADO NO CADASTRO DO BANCO OU FORA DA FAIXA';
            15 : mArquivo.FieldByName('DescErro'+IntToStr(i2)).AsString := 'NOSSO NÚMERO EM DUPLICIDADE NO MESMO MOVIMENTO';
            18 : mArquivo.FieldByName('DescErro'+IntToStr(i2)).AsString := 'DATA DE ENTRADA INVÁLIDA PARA OPERAR COM ESTA CARTEIRA';
            19 : mArquivo.FieldByName('DescErro'+IntToStr(i2)).AsString := 'OCORRÊNCIA INVÁLIDA';
            21 : mArquivo.FieldByName('DescErro'+IntToStr(i2)).AsString := 'CARTEIRA NÃO ACEITA DEPOSITÁRIA CORRESPONDENTE';
            22 : mArquivo.FieldByName('DescErro'+IntToStr(i2)).AsString := 'CARTEIRA NÃO PERMITIDA (NECESSÁRIO CADASTRAR FAIXA LIVRE)';
            27 : mArquivo.FieldByName('DescErro'+IntToStr(i2)).AsString := 'CGC DO CEDENTE INAPTO';
            29 : mArquivo.FieldByName('DescErro'+IntToStr(i2)).AsString := 'CATEGORIA DA CONTA INVÁLIDA ';
            35 : mArquivo.FieldByName('DescErro'+IntToStr(i2)).AsString := 'IOF MAIOR QUE 5%';
            36 : mArquivo.FieldByName('DescErro'+IntToStr(i2)).AsString := 'QUANTIDADE DE MOEDA INCOMPATÍVEL COM VALOR DO TÍTULO';
            37 : mArquivo.FieldByName('DescErro'+IntToStr(i2)).AsString := 'NÃO NUMÉRICO OU IGUAL A ZEROS';
            42 : mArquivo.FieldByName('DescErro'+IntToStr(i2)).AsString := 'NOSSO NÚMERO FORA DE FAIXA';
            52 : mArquivo.FieldByName('DescErro'+IntToStr(i2)).AsString := 'EMPRESA NÃO ACEITA BANCO CORRESPONDENTE';
            53 : mArquivo.FieldByName('DescErro'+IntToStr(i2)).AsString := 'EMPRESA NÃO ACEITA BANCO CORRESPONDENTE  - COBRANÇA MENSAGEM';
            54 : mArquivo.FieldByName('DescErro'+IntToStr(i2)).AsString := 'BANCO CORRESPONDENTE - TÍTULO COM VENCIMENTO INFERIOR A 15 DIAS';
          end;
          i := i + 2;
        end
      else
      if mArquivoCodOcorrenciaRet.AsString = '17' then  //Nota 20 tabela 2
        begin

        end
      else
      if mArquivoCodOcorrenciaRet.AsString = '16' then  //Nota 20 tabela 3
        begin

        end
      else
      if mArquivoCodOcorrenciaRet.AsString = '15' then  //Nota 20 tabela 4
        begin

        end
      else
      if mArquivoCodOcorrenciaRet.AsString = '18' then  //Nota 20 tabela 5
        begin

        end
      else
      if mArquivoCodOcorrenciaRet.AsString = '25' then  //Nota 20 tabela 6
        begin
          inc(i2);
          case StrToInt(Copy(Codigo,i,4)) of
           0 :;
          end;
          i := i + 4;
        end
      else
      if mArquivoCodOcorrenciaRet.AsString = '24' then  //Nota 20 tabela 7
        begin
          inc(i2);
          case StrToInt(Copy(Codigo,i,4)) of
           0 :;
          end;
          i := i + 4;
        end
      else
      if mArquivoCodOcorrenciaRet.AsString = '57' then  //Nota 20 tabela 8
        begin
          inc(i2);
          case StrToInt(Copy(Codigo,i,4)) of
           0 :;
          end;
          i := i + 4;
        end;
    end;
end;

{procedure TfArqRetornoItau.Grava_Protesto;
begin
  Fdm1.tCReceberParc.Edit;
  Fdm1.tCReceberParcTitProtestado.AsBoolean := True;
  Fdm1.tCReceberParc.Post;

  Grava_Historico('P','TITULO PROTESTADO');
  Fdm1.tCReceberParcHist.Post;

  mArquivo.Edit;
  mArquivoAtualizado.AsBoolean := True;
  mArquivo.Post;
end;}

procedure TfArqRetornoItau.Grava_Vencimento;
begin
{  Fdm1.tCReceberParc.Edit;
  vHistorico := 'DT.VECTO. ALTERADA DE ' + Fdm1.tCReceberParcDtVencCReceber.AsString + '  PARA ' + mArquivoDtVecto.AsString;
  Fdm1.tCReceberParcDtVencCReceber.AsDateTime := mArquivoDtVecto.AsDateTime;
  Fdm1.tCReceberParc.Post;

  Grava_Historico('V',vHistorico);
  Fdm1.tCReceberParcHist.Post;

  mArquivo.Edit;
  mArquivoAtualizado.AsBoolean := True;
  mArquivo.Post;}
end;

{procedure TfArqRetornoItau.Grava_Historico(Tipo, Historico : String);
begin
  DM2.tCReceberParcHist2.Refresh;
  DM2.tCReceberParcHist2.Last;
  Fdm1.tCReceberParcHist.Insert;
  Fdm1.tCReceberParcHistNumCReceber.AsInteger   := Fdm1.tCReceberParcNumCReceber.AsInteger;
  Fdm1.tCReceberParcHistParcCReceber.AsInteger  := Fdm1.tCReceberParcParcCReceber.AsInteger;
  Fdm1.tCReceberParcHistItem.AsInteger          := DM2.tCReceberParcHist2Item.AsInteger + 1;
  Fdm1.tCReceberParcHistDtHistorico.AsDateTime  := Date;
  Fdm1.tCReceberParcHistCodHistorico.AsCurrency := 0;
  Fdm1.tCReceberParcHistHistorico.AsString      := Historico;
  if Tipo = 'L' then
    begin
      Fdm1.tCReceberParcHistDtUltPgto.AsDateTime      := mArquivoDtOcorrencia.AsDateTime;
      Fdm1.tCReceberParcHistVlrUltPgto.AsCurrency     := mArquivoVlrPago.AsFloat;
      Fdm1.tCReceberParcHistVlrUltJuros.AsFloat       := mArquivoVlrJurosPago.AsFloat;
      Fdm1.tCReceberParcHistVlrUltDescontos.AsFloat   := mArquivoVlrDesconto.AsFloat;
      Fdm1.tCReceberParcHistVlrUltDespesas.AsFloat    := 0;
      Fdm1.tCReceberParcHistVlrUltAbatimentos.AsFloat := mArquivoVlrAbatimento.AsFloat;
      Fdm1.tCReceberParcHistJurosPagos.AsFloat        := mArquivoVlrJurosPago.AsFloat;
      Fdm1.tCReceberParcHistPgto.AsBoolean            := True;
      Fdm1.tCReceberParcHistNumMov.AsInteger          := vNumMov;
      Fdm1.tCReceberParcHistNumMovJuros.AsInteger     := vNumMovJuros;
      Fdm1.tCReceberParcHistJurosCalc.AsFloat         := mArquivoVlrJurosPago.AsFloat;
    end
  else
    Fdm1.tCReceberParcHistPgto.AsBoolean              := False;
end;}

procedure TfArqRetornoItau.Grava_NumBanco;
begin
  {Fdm1.tCReceberParc.Edit;
  Fdm1.tCReceberParcNumTitBanco.AsString := mArquivoNumTitBanco.AsString;
  Fdm1.tCReceberParc.Post;

  Grava_Historico('E','ENTRADA CONFIRMADA');
  Fdm1.tCReceberParcHist.Post;

  mArquivo.Edit;
  mArquivoAtualizado.AsBoolean := True;
  mArquivo.Post;}
end;

procedure TfArqRetornoItau.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfArqRetornoItau.BitBtn2Click(Sender: TObject);
begin
  mArquivo.EmptyDataSet;
end;

procedure TfArqRetornoItau.BitBtn1Click(Sender: TObject);
var
  Txt : TextFile;
  Entrada, Arquivo, Texto1 : String;
  i : Integer;
  vFlag : Boolean;
  vContinuar : Boolean;
begin
  if jvFileNameEdit1.Text <> '' then
    begin
      try
        vContinuar := True;
        mArquivo.EmptyDataSet;
        Arquivo := JvFilenameEdit1.FileName;
        AssignFile(Txt,Arquivo);
        Reset(Txt);
        while not Eof(Txt) do
          begin
            ReadLn(Txt,Entrada);
            if (Copy(Entrada,2,1) = '2') and (Copy(Entrada,3,7) = 'RETORNO') then
              begin
                if Fdm1.tBcoItauNUMCONTA.AsString <> Copy(Entrada,33,5) then
                  begin
                    vContinuar := False;
                    ShowMessage('Nº da conta diferente ' + Copy(Entrada,33,5));
                  end;
              end;
            if vContinuar then
              begin
                if Copy(Entrada,1,1) = '1' then
                  begin
                    mArquivo.Insert;
                    mArquivoAtualizado.AsString := 'N';
                    mArquivoNumTitBanco.AsString      := Copy(Entrada,86,8) + Copy(Entrada,94,1);
                    mArquivoCodOcorrenciaRet.AsString := Copy(Entrada,109,2);
                    Case mArquivoCodOcorrenciaRet.AsInteger of
                      2 : mArquivoNomeOcorrenciaRet.AsString := 'ENTRADA CONFIRMADA';
                      3 : mArquivoNomeOcorrenciaRet.AsString := 'ENTRADA REJEITADA';
                      4 : mArquivoNomeOcorrenciaRet.AsString := 'ALTERAÇÃO DE DADOS - NOVA ENTRADA';
                      5 : mArquivoNomeOcorrenciaRet.AsString := 'ALTERAÇÃO DE DADOS - BAIXA';
                      6 : mArquivoNomeOcorrenciaRet.AsString := 'LIQUIDAÇÃO NORMAL';
                      8 : mArquivoNomeOcorrenciaRet.AsString := 'LIQUIDAÇÃO CARTÓRIO';
                      9 : mArquivoNomeOcorrenciaRet.AsString := 'BAIXA SIMPLES';
                     10 : mArquivoNomeOcorrenciaRet.AsString := 'BAIXA POR TER SIDO LIQUIDADO';
                     11 : mArquivoNomeOcorrenciaRet.AsString := 'EM SER (SÓ NO RETORNO MENSAL)';
                     12 : mArquivoNomeOcorrenciaRet.AsString := 'ABATIMENTO CONCEDIDO';
                     13 : mArquivoNomeOcorrenciaRet.AsString := 'ABATIMENTO CANCELADO';
                     14 : mArquivoNomeOcorrenciaRet.AsString := 'VENCIMENTO ALTERADO';
                     15 : mArquivoNomeOcorrenciaRet.AsString := 'BAIXAS REJEITADAS';
                     16 : mArquivoNomeOcorrenciaRet.AsString := 'INSTRUÇÕES REJEITADAS';
                     17 : mArquivoNomeOcorrenciaRet.AsString := 'ALTERAÇÃO DE DADOS REJEITADOS ';
                     18 : mArquivoNomeOcorrenciaRet.AsString := 'COBRANÇA CONTRATUAL - ABATIMENTO E BAIXA BLOQUEADOS';
                     19 : mArquivoNomeOcorrenciaRet.AsString := 'CONFIRMA RECEBIMENTO DE INSTRUÇÃO DE PROTESTO';
                     20 : mArquivoNomeOcorrenciaRet.AsString := 'CONFIRMA RECEBIMENTO DE INSTRUÇÃO DE SUSTAÇÃO DE PROTESTO /TARIFA';
                     21 : mArquivoNomeOcorrenciaRet.AsString := 'CONFIRMA RECEBIMENTO DE INSTRUÇÃO DE NÃO PROTESTAR';
                     23 : mArquivoNomeOcorrenciaRet.AsString := 'PROTESTO ENVIADO A CARTÓRIO/TARIFA';
                     24 : mArquivoNomeOcorrenciaRet.AsString := 'INSTRUÇÃO DE PROTESTO REJEITADA / SUSTADA / PENDENTE';
                     25 : mArquivoNomeOcorrenciaRet.AsString := 'ALEGAÇÕES DO SACADO';
                     26 : mArquivoNomeOcorrenciaRet.AsString := 'TARIFA DE AVISO DE COBRANÇA';
                     27 : mArquivoNomeOcorrenciaRet.AsString := 'TARIFA DE EXTRATO POSIÇÃO';
                     28 : mArquivoNomeOcorrenciaRet.AsString := 'TARIFA DE RELAÇÃO DAS LIQUIDAÇÕES';
                     29 : mArquivoNomeOcorrenciaRet.AsString := 'TARIFA DE MANUTENÇÃO DE TÍTULOS VENCIDOS';
                     30 : mArquivoNomeOcorrenciaRet.AsString := 'DÉBITO MENSAL DE TARIFAS (PARA ENTRADAS E BAIXAS)';
                     32 : mArquivoNomeOcorrenciaRet.AsString := 'BAIXA POR TER SIDO PROTESTADO';
                     33 : mArquivoNomeOcorrenciaRet.AsString := 'CUSTAS DE PROTESTO';
                     34 : mArquivoNomeOcorrenciaRet.AsString := 'CUSTAS DE SUSTAÇÃO';
                     35 : mArquivoNomeOcorrenciaRet.AsString := 'CUSTAS DE CARTÓRIO DISTRIBUIDOR';
                     36 : mArquivoNomeOcorrenciaRet.AsString := 'CUSTAS DE EDITAL';
                     37 : mArquivoNomeOcorrenciaRet.AsString := 'TARIFA DE EMISSÃO DE BLOQUETO/TARIFA DE ENVIO DE DUPLICATA';
                     38 : mArquivoNomeOcorrenciaRet.AsString := 'TARIFA DE INSTRUÇÃO';
                     39 : mArquivoNomeOcorrenciaRet.AsString := 'TARIFA DE OCORRÊNCIAS';
                     40 : mArquivoNomeOcorrenciaRet.AsString := 'TARIFA MENSAL DE EMISSÃO DE BLOQUETO/TARIFA MENSAL DE ENVIO DE DUPLICATA';
                     41 : mArquivoNomeOcorrenciaRet.AsString := 'DÉBITO MENSAL DE TARIFAS - EXTRATO DE POSIÇÃO (B4EP/B4OX)';
                     42 : mArquivoNomeOcorrenciaRet.AsString := 'DÉBITO MENSAL DE TARIFAS - OUTRAS INSTRUÇÕES';
                     43 : mArquivoNomeOcorrenciaRet.AsString := 'DÉBITO MENSAL DE TARIFAS - MANUTENÇÃO DE TÍTULOS VENCIDOS';
                     44 : mArquivoNomeOcorrenciaRet.AsString := 'DÉBITO MENSAL DE TARIFAS - OUTRAS OCORRÊNCIAS';
                     45 : mArquivoNomeOcorrenciaRet.AsString := 'DÉBITO MENSAL DE TARIFAS - PROTESTO';
                     46 : mArquivoNomeOcorrenciaRet.AsString := 'DÉBITO MENSAL DE TARIFAS - SUSTAÇÃO DE PROTESTO';
                     47 : mArquivoNomeOcorrenciaRet.AsString := 'BAIXA COM TRANSFERÊNCIA PARA DESCONTO';
                     48 : mArquivoNomeOcorrenciaRet.AsString := 'CUSTAS DE SUSTAÇÃO JUDICIAL';
                     51 : mArquivoNomeOcorrenciaRet.AsString := 'TARIFA MENSAL REF A ENTRADAS BANCOS CORRESPONDENTES NA CARTEIRA';
                     52 : mArquivoNomeOcorrenciaRet.AsString := 'TARIFA MENSAL BAIXAS NA CARTEIRA';
                     53 : mArquivoNomeOcorrenciaRet.AsString := 'TARIFA MENSAL BAIXAS EM BANCOS CORRESPONDENTES NA CARTEIRA';
                     54 : mArquivoNomeOcorrenciaRet.AsString := 'TARIFA MENSAL  DE LIQUIDAÇÕES NA CARTEIRA';
                     55 : mArquivoNomeOcorrenciaRet.AsString := 'TARIFA MENSAL DE LIQUIDAÇÕES EM BANCOS CORRESPONDENTES NA CARTEIRA';
                     56 : mArquivoNomeOcorrenciaRet.AsString := 'CUSTAS DE IRREGULARIDADE';
                     57 : mArquivoNomeOcorrenciaRet.AsString := 'INSTRUÇÃO CANCELADA';
                    end;
                    mArquivoErros.AsString := Copy(Entrada,378,8);
                    vMotivo := '';
                    Motivo_Rejeicao(Trim(Copy(Entrada,378,8)));
                    mArquivoDtOcorrencia.AsString       := Copy(Entrada,111,2) + '/' + Copy(Entrada,113,2) + '/' + '20' + Copy(Entrada,115,2);
                    mArquivoNumNota.AsString            := Copy(Entrada,117,10);
                    mArquivoNumTitEmpresa.AsString      := Copy(Entrada,38,25);
                    mArquivoDtVenc.AsString            := Copy(Entrada,147,2) + '/' + Copy(Entrada,149,2) + '/' + '20' + Copy(Entrada,151,2);
                    mArquivoVlrTitulo.AsString          := Copy(Entrada,153,11) + ',' + Copy(Entrada,164,2);

                    if Trim(Copy(Entrada,174,2)) <> '' then
                      begin
                        case StrToInt(Copy(Entrada,174,2)) of
                          01 : mArquivoEspecieDoc.AsString := Copy(Entrada,174,2) + '-' + 'DUPLICATA MERCANTIL';
                          02 : mArquivoEspecieDoc.AsString := Copy(Entrada,174,2) + '-' + 'NOTA PROMISSÓRIA';
                          03 : mArquivoEspecieDoc.AsString := Copy(Entrada,174,2) + '-' + 'NOTA DE SEGURO';
                          04 : mArquivoEspecieDoc.AsString := Copy(Entrada,174,2) + '-' + 'MENSALIDADE ESCOLAR';
                          05 : mArquivoEspecieDoc.AsString := Copy(Entrada,174,2) + '-' + 'RECIBO';
                          06 : mArquivoEspecieDoc.AsString := Copy(Entrada,174,2) + '-' + 'CONTRATO';
                          07 : mArquivoEspecieDoc.AsString := Copy(Entrada,174,2) + '-' + 'COSSEGUROS';
                          08 : mArquivoEspecieDoc.AsString := Copy(Entrada,174,2) + '-' + 'DUPLICATA DE SERVIÇO';
                          09 : mArquivoEspecieDoc.AsString := Copy(Entrada,174,2) + '-' + 'LETRA DE CÂMBIO';
                          13 : mArquivoEspecieDoc.AsString := Copy(Entrada,174,2) + '-' + 'NOTA DE DÉBITOS';
                          99 : mArquivoEspecieDoc.AsString := Copy(Entrada,174,2) + '-' + 'DIVERSOS';
                        end;
                      end;
                    mArquivoVlrDespesaCobranca.AsString  := Copy(Entrada,176,11) + ',' + Copy(Entrada,187,2);
                    mArquivoVlrAbatimento.AsString       := Copy(Entrada,228,11) + ',' + Copy(Entrada,239,2);
                    mArquivoVlrDesconto.AsString         := Copy(Entrada,241,11) + ',' + Copy(Entrada,252,2);
                    mArquivoVlrPago.AsString             := Copy(Entrada,254,11) + ',' + Copy(Entrada,265,2);
                    mArquivoVlrJurosPagos.AsString        := Copy(Entrada,267,11) + ',' + Copy(Entrada,278,2);
                    if (Copy(Entrada,296,2) = '  ') or (Copy(Entrada,296,2) = '') then
                      mArquivoDtLiquidacao.AsString := ''
                    else
                      mArquivoDtLiquidacao.AsString := Copy(Entrada,296,2) + '/' + Copy(Entrada,298,2) + '/' + '20' + Copy(Entrada,300,2);
                    vFlag := False;
                    texto1 := Trim(Copy(mArquivoNumTitEmpresa.AsString,8,Length(mArquivoNumTitEmpresa.AsString)));
                    for i := 1 to Length(texto1) do
                      begin
                        if (Copy(texto1,i,1) = '/') then
                          vFlag := True
                        else
                          begin
                            case vFlag of
                              True  : mArquivoParcela.AsString := mArquivoParcela.AsString + copy(texto1,i,1);
                              False : mArquivoNumNota.AsString := mArquivoNumNota.AsString + copy(texto1,i,1);
                            end;
                          end;
                      end;
                    mArquivoTipo.AsString := Copy(Entrada,38,1);
                    //********************
                    if mArquivoNumNota.AsString <> '' then
                      begin
                        qCReceberParc.Close;
                        qCReceberParc.SQL.Clear;
                        qCReceberParc.SQL.Add('SELECT *');
                        qCReceberParc.SQL.Add('FROM CRECEBERPARC');
                        qCReceberParc.SQL.Add('WHERE codcliente = :CodCliente');
                        qCReceberParc.SQL.Add(' AND Parcela = :Parcela');
                        if mArquivoTipo.AsString = 'A' then
                          qCReceberParc.SQL.Add(' AND NumCReceber = :NumNota')
                        else
                          qCReceberParc.SQL.Add(' AND NumNota = :NumNota');
                        qCReceberParc.ParamByName('CodCliente').AsString := Copy(Entrada,39,5);
                        qCReceberParc.ParamByName('Parcela').AsString    := mArquivoParcela.AsString;
                        qCReceberParc.ParamByName('NumNota').AsString    := mArquivoNumNota.AsString;
                        qCReceberParc.Open;
                        if not qCReceberParc.IsEmpty then
                          begin
                            mArquivoNumCReceber.AsInteger := qCReceberParcNumCReceber.AsInteger;
                            mArquivoCodCliente.AsInteger := qCReceberParcCODCLIENTE.AsInteger;
                            mArquivoNomeCliente.AsString := Copy(Entrada,325,30);
                          end
                        else
                          begin
                            mArquivoCodCliente.AsInteger := 0;
                            mArquivoNomeCliente.AsString := '...NÃO ACHOU TÍTULO, verificar...';
                          end;
                      end;
                    mArquivo.Post;
                  end;
              end;
        end;
        CloseFile(Txt);
      except
      end;
    end
  else
    begin
      ShowMessage('Você deve informar um arquivo p/ gerar a busca!');
      JvFilenameEdit1.SetFocus;
    end;
end;

procedure TfArqRetornoItau.BitBtn3Click(Sender: TObject);
var
  TD : TTransactionDesc;
begin
     try
    TD.TransactionID  := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    Fdm1.Conexao.StartTransaction(TD);
    mArquivo.First;
    while not mArquivo.Eof do
      begin
        if mArquivoNumNota.AsString <> '' then
          begin
            Fdm1.tCReceberParc.Close;
            Fdm1.CReceberParc.Params[0].AsInteger := mArquivoNumCReceber.AsInteger;
            Fdm1.CReceberParc.Params[1].AsString  := mArquivoParcela.AsString;
            Fdm1.tCReceberParc.Open;
            Fdm1.tCReceberParc.Edit;

            Fdm1.tCReceberParcCODBANCO.AsInteger  := Fdm1.tBcoItauCODCONTA.AsInteger;
            Fdm1.tCReceberParcVLRDESPESA.AsFloat  := mArquivoVlrDespesaCobranca.AsFloat;
            Fdm1.tCReceberParcVLRDESCONTO.AsFloat := mArquivoVlrDesconto.AsFloat;
            if (mArquivoCodOcorrenciaRet.AsString = '06') or (mArquivoCodOcorrenciaRet.AsString = '08')
            or (mArquivoCodOcorrenciaRet.AsString = '09') or (mArquivoCodOcorrenciaRet.AsString = '10') then
              begin
                if mArquivoVlrPago.AsFloat > 0 then
                  begin
                    Fdm1.tCReceberParcVLRRESTANTE.AsFloat := Fdm1.tCReceberParcVLRRESTANTE.AsFloat - mArquivoVlrPago.AsFloat;
                    Fdm1.tCReceberParcVLRPAGTO.AsFloat    := mArquivoVlrPago.AsFloat;
                  end
                else
                  begin
                    Fdm1.tCReceberParcVLRRESTANTE.AsFloat := Fdm1.tCReceberParcVLRRESTANTE.AsFloat - mArquivoVlrTitulo.AsFloat;
                    Fdm1.tCReceberParcVLRPAGTO.AsFloat    := mArquivoVlrTitulo.AsFloat;
                  end;
                if (mArquivoDtLiquidacao.AsString <> '') and (mArquivoDtLiquidacao.AsString <> '  /  /    ') then
                  Fdm1.tCReceberParcDTPAGTO.AsDateTime  := mArquivoDtLiquidacao.AsDateTime
                else
                  Fdm1.tCReceberParcDTPAGTO.AsDateTime  := mArquivoDtOcorrencia.AsDateTime;
                Fdm1.tCReceberParcJUROSPAGOS.AsFloat  := mArquivoVlrJurosPagos.AsFloat;
                if StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcVLRRESTANTE.AsFloat)) > 0 then
                  Fdm1.tCReceberParcQUITADO.AsString := 'N'
                else
                  Fdm1.tCReceberParcQUITADO.AsString := 'S';
                if Fdm1.tCReceberParcDTPAGTO.AsDateTime > Fdm1.tCReceberParcDTVENCIMENTO.AsDateTime then
                  Fdm1.tCReceberParcDIASATRASO.AsFloat := Fdm1.tCReceberParcDTPAGTO.AsDateTime - Fdm1.tCReceberParcDTVENCIMENTO.AsDateTime;
              end;
            Grava_Historico;
            Fdm1.tCReceberParc.Post;
            Fdm1.tCReceberParc.ApplyUpdates(0);
          end;
        mArquivo.Next;
      end;
    Fdm1.Conexao.Commit(TD);
  except
    on E:Exception do
      begin
        Fdm1.Conexao.Rollback(TD);
        ShowMessage('Erro ao tentar gravar o registro : ' + E.Message);
      end;
  end;

  if MessageDlg('Atualizar o contas a receber?',mtconfirmation,[mbok,mbno],0)=mrok then
    begin
      mArquivo.First;
      while not mArquivo.Eof do
        begin
          if mArquivoCodCliente.AsInteger > 0 then
            begin
            //  Abre_CReceber;
            end;
          mArquivo.Next;
        end;
    end;
end;

procedure TfArqRetornoItau.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
{  if (mArquivoAtualizado.AsBoolean) and (mArquivoCodOcorrenciaRet.AsInteger = 2) then
    begin
      Background  := clAqua;
      AFont.Color := clBlack;
    end
  else
  if (mArquivoAtualizado.AsBoolean) and ((mArquivoCodOcorrenciaRet.AsInteger = 6) or
     (mArquivoCodOcorrenciaRet.AsInteger = 7) or (mArquivoCodOcorrenciaRet.AsInteger = 15)) then
    begin
      Background  := clTeal;
      AFont.Color := clBlack;
    end
  else
  if (mArquivoAtualizado.AsBoolean) and (mArquivoCodOcorrenciaRet.AsInteger = 19) then
    begin
      Background  := clRed;
      AFont.Color := clBlack;
    end
  else
  if mArquivoCodOcorrenciaRet.AsInteger = 3 then
    begin
      Background  := clYellow;
      AFont.Color := clBlack;
    end
  else
  if mArquivoCodOcorrenciaRet.AsInteger = 14 then
    begin
      Background  := clMaroon;
      AFont.Color := clYellow;
    end;}
end;

end.
