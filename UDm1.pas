unit UDm1;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, FMTBcd, DBClient, Provider, RLFilters, RLDraftFilter, RLPreviewForm, Dialogs,
  RLXLSFilter, RLPDFFilter, RLHTMLFilter, RLRichFilter, RLMetaFile, ADODB, MidasLib, IdCoder, IdCoder3to4, IdCoderMIME,
  IdBaseComponent;

type
  TDm1 = class(TDataModule)
    Conexao: TSQLConnection;
    Pessoa: TSQLDataSet;
    PessoaP: TDataSetProvider;
    tPessoa: TClientDataSet;
    dsPessoa: TDataSource;
    qInc: TSQLQuery;
    tPessoaID: TIntegerField;
    tPessoaNOME: TStringField;
    tPessoaPESSOA: TStringField;
    tPessoaDOCUMENTO: TStringField;
    tPessoaENDERECO: TStringField;
    tPessoaBAIRRO: TStringField;
    tPessoaCEP: TStringField;
    tPessoaESTADO: TStringField;
    tPessoaFONE: TStringField;
    tPessoaFAX: TStringField;
    tPessoaINSCESTADUAL: TStringField;
    tPessoaIDENTIDADE: TStringField;
    tPessoaESTCIVIL: TStringField;
    tPessoaPROFISSAO: TStringField;
    tPessoaNACIONALIDADE: TStringField;
    tPessoaDTCADASTRO: TDateField;
    tPessoaOBSERVACAO: TBlobField;
    tPessoaFORNECEDOR: TStringField;
    tPessoaCLIENTE: TStringField;
    tPessoaVENDEDOR: TStringField;
    tPessoaREFPESSOAL1: TStringField;
    tPessoaREFPESSOAL2: TStringField;
    tPessoaREFPESSOALEND1: TStringField;
    tPessoaREFPESSOALEND2: TStringField;
    tPessoaREFPESSOALFONE1: TStringField;
    tPessoaREFPESSOALFONE2: TStringField;
    tPessoaREFCOMERCIAL1: TStringField;
    tPessoaREFCOMERCIAL2: TStringField;
    tPessoaREFCOMERCIALEND1: TStringField;
    tPessoaREFCOMERCIALEND2: TStringField;
    tPessoaREFCOMERCIALFONE1: TStringField;
    tPessoaREFCOMERCIALFONE2: TStringField;
    Pais: TSQLDataSet;
    PaisP: TDataSetProvider;
    tPais: TClientDataSet;
    dsPais: TDataSource;
    tPaisID: TIntegerField;
    tPaisNOME: TStringField;
    Cidade: TSQLDataSet;
    CidadeP: TDataSetProvider;
    tCidade: TClientDataSet;
    dsCidade: TDataSource;
    tCidadeID: TIntegerField;
    tCidadeNOME: TStringField;
    tCidadeUF: TStringField;
    tCidadeCODPAIS: TIntegerField;
    tCidadePERISSQN: TFloatField;
    Grupo: TSQLDataSet;
    GrupoP: TDataSetProvider;
    tGrupo: TClientDataSet;
    dsGrupo: TDataSource;
    tGrupoID: TIntegerField;
    tGrupoNOME: TStringField;
    SitTributaria: TSQLDataSet;
    SitTributariaP: TDataSetProvider;
    tSitTributaria: TClientDataSet;
    dsSitTributaria: TDataSource;
    tSitTributariaID: TIntegerField;
    tSitTributariaDESCRICAO: TBlobField;
    tSitTributariaPERCENTUAL: TFloatField;
    tSitTributariaCODSITTRIB: TStringField;
    ClasFiscal: TSQLDataSet;
    ClasFiscalP: TDataSetProvider;
    tClasFiscal: TClientDataSet;
    dsClasFiscal: TDataSource;
    tClasFiscalCODCLASFISCAL: TStringField;
    tClasFiscalCODREDUZIDO: TStringField;
    tClasFiscalDESCRICAO: TBlobField;
    NatOperacao: TSQLDataSet;
    NatOperacaoP: TDataSetProvider;
    tNatOperacao: TClientDataSet;
    dsNatOperacao: TDataSource;
    tNatOperacaoID: TIntegerField;
    tNatOperacaoNOME: TStringField;
    tNatOperacaoES: TStringField;
    tNatOperacaoCALCIPI: TStringField;
    tNatOperacaoCALCICMS: TStringField;
    tNatOperacaoGERADUPL: TStringField;
    tNatOperacaoLEI: TBlobField;
    tNatOperacaoCODIGO: TStringField;
    tPessoaCIDADE: TIntegerField;
    Produto: TSQLDataSet;
    ProdutoP: TDataSetProvider;
    tProduto: TClientDataSet;
    dsProduto: TDataSource;
    tProdutoID: TIntegerField;
    tProdutoUNIDADE: TStringField;
    tProdutoCODGRUPO: TIntegerField;
    tProdutoALIQICMS: TFloatField;
    tProdutoALIQIPI: TFloatField;
    tProdutoCODFORNECEDOR: TIntegerField;
    tProdutoINATIVO: TStringField;
    tProdutoPOSSUITAMANHO: TStringField;
    tProdutoOPCAOPRECO: TStringField;
    tProdutoDTCADASTRO: TDateField;
    tProdutoCODSITTRIB: TIntegerField;
    tProdutoPRECOCUSTO: TFloatField;
    tProdutoPERCMINIMO: TFloatField;
    tProdutoPRECOMINIMO: TFloatField;
    tProdutoPERCVENDA: TFloatField;
    tProdutoDTREAJUSTE: TDateField;
    tProdutoCODBARRA: TStringField;
    tProdutoESTMINIMO: TFloatField;
    tProdutoOBS: TBlobField;
    ProdutoTam: TSQLDataSet;
    ProdutoTamP: TDataSetProvider;
    tProdutoTam: TClientDataSet;
    dsProdutoTam: TDataSource;
    tProdutoTamCODPRODUTO: TIntegerField;
    tProdutoTamTAMANHO: TStringField;
    tProdutoTamPRECOCUSTO: TFloatField;
    tProdutoTamPRECOMINIMO: TFloatField;
    tProdutoTamPRECOVENDA: TFloatField;
    tProdutoTamCODBARRA: TStringField;
    tProdutoTamESTMINIMO: TFloatField;
    CondPgto: TSQLDataSet;
    CondPgtoP: TDataSetProvider;
    tCondPgto: TClientDataSet;
    tCondPgtoID: TIntegerField;
    tCondPgtoNOME: TStringField;
    tCondPgtoPRAZOVISTA: TStringField;
    tCondPgtoPERCCUSTO: TFloatField;
    tCondPgtoENTRADA: TStringField;
    tCondPgtoPERCJUROS: TFloatField;
    dsCondPgto: TDataSource;
    CondPgtoIt: TSQLDataSet;
    CondPgtoItP: TDataSetProvider;
    tCondPgtoIt: TClientDataSet;
    tCondPgtoItCODCONDPGTO: TIntegerField;
    tCondPgtoItITEM: TIntegerField;
    tCondPgtoItQTDDIAS: TIntegerField;
    dsCondPgtoIt: TDataSource;
    PromocaoIt: TSQLDataSet;
    PromocaoItP: TDataSetProvider;
    tPromocaoIt: TClientDataSet;
    dsPromocaoIt: TDataSource;
    PromocaoItNUMMOVIMENTO: TIntegerField;
    PromocaoItITEM: TIntegerField;
    PromocaoItCODPRODUTO: TIntegerField;
    PromocaoItTAMANHO: TStringField;
    PromocaoItPERCVENDA: TFloatField;
    PromocaoItPRECOVENDA: TFloatField;
    PromocaoItNOME: TStringField;
    tPromocaoItNUMMOVIMENTO: TIntegerField;
    tPromocaoItITEM: TIntegerField;
    tPromocaoItCODPRODUTO: TIntegerField;
    tPromocaoItTAMANHO: TStringField;
    tPromocaoItPERCVENDA: TFloatField;
    tPromocaoItPRECOVENDA: TFloatField;
    tPromocaoItNOME: TStringField;
    Parametro: TSQLDataSet;
    ParametroP: TDataSetProvider;
    tParametro: TClientDataSet;
    tParametroPERCMINIMO: TFloatField;
    tParametroPERCVENDA: TFloatField;
    tParametroCODPAIS: TIntegerField;
    dsParametro: TDataSource;
    tPessoaFANTASIA: TStringField;
    tProdutoATUALIZAPRECO: TStringField;
    NotaEntrada: TSQLDataSet;
    NotaEntradaP: TDataSetProvider;
    tNotaEntrada: TClientDataSet;
    dsNotaEntrada: TDataSource;
    NotaEntradaIt: TSQLDataSet;
    NotaEntradaItP: TDataSetProvider;
    tNotaEntradaIt: TClientDataSet;
    dsNotaEntradaIt: TDataSource;
    NotaEntradaParc: TSQLDataSet;
    NotaEntradaParcP: TDataSetProvider;
    tNotaEntradaParc: TClientDataSet;
    dsNotaEntradaParc: TDataSource;
    NotaEntradaMObra: TSQLDataSet;
    NotaEntradaMObraP: TDataSetProvider;
    tNotaEntradaMObra: TClientDataSet;
    dsNotaEntradaMObra: TDataSource;
    NotaEntradaNUMNOTA: TIntegerField;
    NotaEntradaCODFORNECEDOR: TIntegerField;
    NotaEntradaSERIE: TStringField;
    NotaEntradaINFCONDPGTO: TStringField;
    NotaEntradaCODNATOPER: TIntegerField;
    NotaEntradaDTEMISSAO: TDateField;
    NotaEntradaDTENTRADA: TDateField;
    NotaEntradaICMSIPI: TStringField;
    NotaEntradaVLRTOTAL: TFloatField;
    NotaEntradaBASEICMS: TFloatField;
    NotaEntradaVLRICMS: TFloatField;
    NotaEntradaVLRIPI: TFloatField;
    NotaEntradaBASEIPI: TFloatField;
    NotaEntradaVLROUTRASDESP: TFloatField;
    NotaEntradaNRODUPLICATA: TIntegerField;
    NotaEntradaNOME: TStringField;
    tNotaEntradaNUMNOTA: TIntegerField;
    tNotaEntradaCODFORNECEDOR: TIntegerField;
    tNotaEntradaSERIE: TStringField;
    tNotaEntradaINFCONDPGTO: TStringField;
    tNotaEntradaCODNATOPER: TIntegerField;
    tNotaEntradaDTEMISSAO: TDateField;
    tNotaEntradaDTENTRADA: TDateField;
    tNotaEntradaICMSIPI: TStringField;
    tNotaEntradaVLRTOTAL: TFloatField;
    tNotaEntradaBASEICMS: TFloatField;
    tNotaEntradaVLRICMS: TFloatField;
    tNotaEntradaVLRIPI: TFloatField;
    tNotaEntradaBASEIPI: TFloatField;
    tNotaEntradaVLROUTRASDESP: TFloatField;
    tNotaEntradaNRODUPLICATA: TIntegerField;
    tNotaEntradaNOME: TStringField;
    NotaEntradaItNUMNOTA: TIntegerField;
    NotaEntradaItCODFORNECEDOR: TIntegerField;
    NotaEntradaItITEM: TIntegerField;
    NotaEntradaItCODPRODUTO: TIntegerField;
    NotaEntradaItTAMANHO: TStringField;
    NotaEntradaItQTD: TFloatField;
    NotaEntradaItVLRUNITARIO: TFloatField;
    NotaEntradaItVLRTOTAL: TFloatField;
    NotaEntradaItALIQICMS: TFloatField;
    NotaEntradaItALIQIPI: TFloatField;
    NotaEntradaItPERCDESC: TFloatField;
    NotaEntradaItVLRDESC: TFloatField;
    NotaEntradaItVLRIPI: TFloatField;
    NotaEntradaItBASEIPI: TFloatField;
    NotaEntradaItBASEICMS: TFloatField;
    NotaEntradaItVLRICMS: TFloatField;
    NotaEntradaItCODSITTRIB: TIntegerField;
    NotaEntradaItUNIDADE: TStringField;
    NotaEntradaItNUMOC: TIntegerField;
    NotaEntradaItITEMOC: TIntegerField;
    NotaEntradaItQTD2: TFloatField;
    NotaEntradaItNUMMOVEST: TIntegerField;
    NotaEntradaItNOME: TStringField;
    tNotaEntradaItNUMNOTA: TIntegerField;
    tNotaEntradaItCODFORNECEDOR: TIntegerField;
    tNotaEntradaItITEM: TIntegerField;
    tNotaEntradaItCODPRODUTO: TIntegerField;
    tNotaEntradaItTAMANHO: TStringField;
    tNotaEntradaItQTD: TFloatField;
    tNotaEntradaItVLRUNITARIO: TFloatField;
    tNotaEntradaItVLRTOTAL: TFloatField;
    tNotaEntradaItALIQICMS: TFloatField;
    tNotaEntradaItALIQIPI: TFloatField;
    tNotaEntradaItPERCDESC: TFloatField;
    tNotaEntradaItVLRDESC: TFloatField;
    tNotaEntradaItVLRIPI: TFloatField;
    tNotaEntradaItBASEIPI: TFloatField;
    tNotaEntradaItBASEICMS: TFloatField;
    tNotaEntradaItVLRICMS: TFloatField;
    tNotaEntradaItCODSITTRIB: TIntegerField;
    tNotaEntradaItUNIDADE: TStringField;
    tNotaEntradaItNUMOC: TIntegerField;
    tNotaEntradaItITEMOC: TIntegerField;
    tNotaEntradaItQTD2: TFloatField;
    tNotaEntradaItNUMMOVEST: TIntegerField;
    tNotaEntradaItNOME: TStringField;
    tNotaEntradaParcNUMNOTA: TIntegerField;
    tNotaEntradaParcCODFORNECEDOR: TIntegerField;
    tNotaEntradaParcITEM: TIntegerField;
    tNotaEntradaParcNUMDUPLICATA: TIntegerField;
    tNotaEntradaParcDTVENCIMENTO: TDateField;
    tNotaEntradaParcVLRVENCIMENTO: TFloatField;
    tNotaEntradaParcCODBANCO: TIntegerField;
    NotaEntradaMObraNUMNOTA: TIntegerField;
    NotaEntradaMObraCODFORNECEDOR: TIntegerField;
    NotaEntradaMObraITEM: TIntegerField;
    NotaEntradaMObraCODNATOPER: TIntegerField;
    NotaEntradaMObraCODMOBRA: TIntegerField;
    NotaEntradaMObraQTD: TFloatField;
    NotaEntradaMObraALIQISSQN: TFloatField;
    NotaEntradaMObraALIQINSS: TFloatField;
    NotaEntradaMObraALIQIRF: TFloatField;
    NotaEntradaMObraVLRUNITARIO: TFloatField;
    NotaEntradaMObraVLRTOTAL: TFloatField;
    NotaEntradaMObraVLRISSQN: TFloatField;
    NotaEntradaMObraCODFISCALNATOPER: TStringField;
    tNotaEntradaMObraNUMNOTA: TIntegerField;
    tNotaEntradaMObraCODFORNECEDOR: TIntegerField;
    tNotaEntradaMObraITEM: TIntegerField;
    tNotaEntradaMObraCODNATOPER: TIntegerField;
    tNotaEntradaMObraCODMOBRA: TIntegerField;
    tNotaEntradaMObraQTD: TFloatField;
    tNotaEntradaMObraALIQISSQN: TFloatField;
    tNotaEntradaMObraALIQINSS: TFloatField;
    tNotaEntradaMObraALIQIRF: TFloatField;
    tNotaEntradaMObraVLRUNITARIO: TFloatField;
    tNotaEntradaMObraVLRTOTAL: TFloatField;
    tNotaEntradaMObraVLRISSQN: TFloatField;
    tNotaEntradaMObraCODFISCALNATOPER: TStringField;
    TipoCobranca: TSQLDataSet;
    TipoCobrancaP: TDataSetProvider;
    tTipoCobranca: TClientDataSet;
    dsTipoCobranca: TDataSource;
    tTipoCobrancaID: TIntegerField;
    tTipoCobrancaNOME: TStringField;
    UF: TSQLDataSet;
    UFP: TDataSetProvider;
    tUF: TClientDataSet;
    dsUF: TDataSource;
    tUFUF: TStringField;
    tUFALIQICMS: TFloatField;
    MaoObra: TSQLDataSet;
    MaoObraP: TDataSetProvider;
    tMaoObra: TClientDataSet;
    dsMaoObra: TDataSource;
    tMaoObraID: TIntegerField;
    tMaoObraNOME: TStringField;
    tMaoObraVALOR: TFloatField;
    tMaoObraDTREAJUSTE: TDateField;
    tProdutoTamDTREAJUST: TDateField;
    Empresa: TSQLDataSet;
    EmpresaP: TDataSetProvider;
    tEmpresa: TClientDataSet;
    dsEmpresa: TDataSource;
    tEmpresaNOME: TStringField;
    tEmpresaFANTASIA: TStringField;
    tEmpresaENDERECO: TStringField;
    tEmpresaBAIRRO: TStringField;
    tEmpresaCEP: TStringField;
    tEmpresaCODCIDADE: TIntegerField;
    tEmpresaUF: TStringField;
    tEmpresaDDD: TStringField;
    tEmpresaFONE: TStringField;
    tEmpresaFAX: TStringField;
    tEmpresaDOCUMENTO: TStringField;
    tEmpresaINSCREST: TStringField;
    tEmpresaCODACESSO: TIntegerField;
    tEmpresaAUTORIZACAO: TStringField;
    tEmpresaDATA: TDateField;
    NotaEntradaParcNUMNOTA: TIntegerField;
    NotaEntradaParcCODFORNECEDOR: TIntegerField;
    NotaEntradaParcITEM: TIntegerField;
    NotaEntradaParcNUMDUPLICATA: TIntegerField;
    NotaEntradaParcDTVENCIMENTO: TDateField;
    NotaEntradaParcVLRVENCIMENTO: TFloatField;
    NotaEntradaParcCODBANCO: TIntegerField;
    NotaEntradaParcNUMCPAGAR: TIntegerField;
    NotaEntradaParcNOMEBANCO: TStringField;
    tNotaEntradaParcNUMCPAGAR: TIntegerField;
    tNotaEntradaParcNOMEBANCO: TStringField;
    NotaEntradaMObraNOMEMOBRA: TStringField;
    tNotaEntradaMObraNOMEMOBRA: TStringField;
    Banco: TSQLDataSet;
    BancoP: TDataSetProvider;
    tBanco: TClientDataSet;
    dsBanco: TDataSource;
    tBancoID: TIntegerField;
    tBancoNOME: TStringField;
    tBancoSALDO: TFloatField;
    tBancoTIPOBANCO: TStringField;
    tBancoBANCO: TStringField;
    tBancoAGENCIA: TStringField;
    NotaEntradaVLRTOTALMOBRAS: TFloatField;
    NotaEntradaVLRTOTALITENS: TFloatField;
    NotaEntradaSOMAPRODDUPL: TStringField;
    NotaEntradaSOMAMOBRADUPL: TStringField;
    NotaEntradaCODNATOPERMOBRA: TStringField;
    tNotaEntradaVLRTOTALMOBRAS: TFloatField;
    tNotaEntradaVLRTOTALITENS: TFloatField;
    tNotaEntradaSOMAPRODDUPL: TStringField;
    tNotaEntradaSOMAMOBRADUPL: TStringField;
    tNotaEntradaCODNATOPERMOBRA: TStringField;
    NotaEntradaItBAIXAESTOQUE: TStringField;
    tNotaEntradaItBAIXAESTOQUE: TStringField;
    tProdutoCLASFISCAL: TStringField;
    tCondPgtoPERCDESCONTO: TFloatField;
    tPessoaTRANSPORTADORA: TStringField;
    tPessoaPERCCOMISSAO: TFloatField;
    tPessoaTIPOCOMISSAO: TStringField;
    EstoqueMov: TSQLDataSet;
    EstoqueMovP: TDataSetProvider;
    tEstoqueMov: TClientDataSet;
    dsEstoqueMov: TDataSource;
    tEstoqueMovNUMMOV: TIntegerField;
    tEstoqueMovCODPRODUTO: TIntegerField;
    tEstoqueMovTAMANHO: TStringField;
    tEstoqueMovDTMOV: TDateField;
    tEstoqueMovES: TStringField;
    tEstoqueMovTIPOMOV: TStringField;
    tEstoqueMovNUMDOCTO: TIntegerField;
    tEstoqueMovCODPESSOA: TIntegerField;
    tEstoqueMovPRECOCUSTO: TFloatField;
    tEstoqueMovPRECOVC: TFloatField;
    tEstoqueMovQTD: TFloatField;
    tEstoqueMovPERCICMS: TFloatField;
    tEstoqueMovPERCIPI: TFloatField;
    tEstoqueMovUNIDADE: TStringField;
    tEstoqueMovVLRDESCONTO: TFloatField;
    tEstoqueMovVLRADICIONAL: TFloatField;
    tParametroQTDDIASPROTESTO: TIntegerField;
    CReceberParc: TSQLDataSet;
    CReceberParcP: TDataSetProvider;
    tCReceberParc: TClientDataSet;
    dsCReceberParc: TDataSource;
    tCReceberParcNUMCRECEBER: TIntegerField;
    tCReceberParcPARCELA: TStringField;
    tCReceberParcVLRVENCIMENTO: TFloatField;
    tCReceberParcDTVENCIMENTO: TDateField;
    tCReceberParcQUITADO: TStringField;
    tCReceberParcJUROSCALC: TFloatField;
    tCReceberParcDTPAGTO: TDateField;
    tCReceberParcCODCLIENTE: TIntegerField;
    tCReceberParcNUMNOTA: TIntegerField;
    tCReceberParcVLRDESCONTO: TFloatField;
    tCReceberParcVLRPAGTO: TFloatField;
    tCReceberParcVLRRESTANTE: TFloatField;
    tCReceberParcCODVENDEDOR: TIntegerField;
    tCReceberParcPERCCOMISSAO: TFloatField;
    tCReceberParcAGENCIA: TStringField;
    tCReceberParcTITPORTADOR: TStringField;
    tCReceberParcCODTIPOCOBRANCA: TIntegerField;
    tCReceberParcVLRDESPESA: TFloatField;
    tCReceberParcCODBANCO: TIntegerField;
    tCReceberParcPGCARTORIO: TStringField;
    tCReceberParcTITPROTESTADO: TStringField;
    tCReceberParcQTDDIASPROT: TIntegerField;
    tCReceberParcDTMOVIMENTO: TDateField;
    tCReceberParcDIASATRASO: TIntegerField;
    tCReceberParcJUROSPAGOS: TFloatField;
    tCReceberParcCANCELADO: TStringField;
    tCReceberParcTIPODOC: TStringField;
    tCReceberParcVLRDEVOLUCAO: TFloatField;
    CPagarParc: TSQLDataSet;
    CPagarParcP: TDataSetProvider;
    tCPagarParc: TClientDataSet;
    dsCPagarParc: TDataSource;
    tCPagarParcPARCELA: TStringField;
    tCPagarParcNUMDUPLICATA: TIntegerField;
    tCPagarParcVLRVENCIMENTO: TFloatField;
    tCPagarParcDTVENCIMENTO: TDateField;
    tCPagarParcQUITADO: TStringField;
    tCPagarParcVLRJUROS: TFloatField;
    tCPagarParcDTPAGTO: TDateField;
    tCPagarParcCODFORNECEDOR: TIntegerField;
    tCPagarParcNUMNOTA: TIntegerField;
    tCPagarParcVLRDESCONTO: TFloatField;
    tCPagarParcVLRPAGTO: TFloatField;
    tCPagarParcVLRRESTANTE: TFloatField;
    tCPagarParcCODTIPOCOBRANCA: TIntegerField;
    tCPagarParcVLRDESPESA: TFloatField;
    tCPagarParcCODBANCO: TIntegerField;
    tCPagarParcPGCARTORIO: TStringField;
    tCPagarParcTITPROTESTADO: TStringField;
    tCPagarParcQTDDIASPROT: TIntegerField;
    tCPagarParcDTMOVIMENTO: TDateField;
    tCPagarParcDIASATRASO: TIntegerField;
    tCPagarParcJUROSPAGOS: TFloatField;
    tCPagarParcCANCELADO: TStringField;
    tCPagarParcTIPODOC: TStringField;
    tCPagarParcVLRDEVOLUCAO: TFloatField;
    tCPagarParcDTRECTO: TDateField;
    tProdutoTIPO: TStringField;
    CPagarHist: TSQLDataSet;
    CPagarHistP: TDataSetProvider;
    tCPagarHist: TClientDataSet;
    dsCPagarHist: TDataSource;
    tCPagarHistNUMCPAGAR: TIntegerField;
    tCPagarHistPARCELA: TStringField;
    tCPagarHistITEM: TIntegerField;
    tCPagarHistHISTORICO: TStringField;
    tCPagarHistDTHISTORICO: TDateField;
    tCPagarHistDTULTPGTO: TDateField;
    tCPagarHistVLRULTPGTO: TFloatField;
    tCPagarHistVLRULTJUROSPAGO: TFloatField;
    tCPagarHistVLRULTDESCONTO: TFloatField;
    tCPagarHistVLRULTDESPESA: TFloatField;
    tCPagarHistTIPOHIST: TStringField;
    tCPagarHistNUMMOVFINANC: TIntegerField;
    tCPagarHistNUMMOVJUROS: TIntegerField;
    tCPagarHistVLRULTDEVOLUCAO: TFloatField;
    MovFinanceiro: TSQLDataSet;
    MovFinanceiroP: TDataSetProvider;
    tMovFinanceiro: TClientDataSet;
    dsMovFinanceiro: TDataSource;
    tCPagarParcNUMCPAGAR: TIntegerField;
    CPagarParcNUMCPAGAR: TIntegerField;
    CPagarParcPARCELA: TStringField;
    CPagarParcNUMDUPLICATA: TIntegerField;
    CPagarParcVLRVENCIMENTO: TFloatField;
    CPagarParcDTVENCIMENTO: TDateField;
    CPagarParcQUITADO: TStringField;
    CPagarParcVLRJUROS: TFloatField;
    CPagarParcDTPAGTO: TDateField;
    CPagarParcCODFORNECEDOR: TIntegerField;
    CPagarParcNUMNOTA: TIntegerField;
    CPagarParcVLRDESCONTO: TFloatField;
    CPagarParcVLRPAGTO: TFloatField;
    CPagarParcVLRRESTANTE: TFloatField;
    CPagarParcCODTIPOCOBRANCA: TIntegerField;
    CPagarParcVLRDESPESA: TFloatField;
    CPagarParcCODBANCO: TIntegerField;
    CPagarParcPGCARTORIO: TStringField;
    CPagarParcTITPROTESTADO: TStringField;
    CPagarParcQTDDIASPROT: TIntegerField;
    CPagarParcDTMOVIMENTO: TDateField;
    CPagarParcDIASATRASO: TIntegerField;
    CPagarParcJUROSPAGOS: TFloatField;
    CPagarParcCANCELADO: TStringField;
    CPagarParcTIPODOC: TStringField;
    CPagarParcVLRDEVOLUCAO: TFloatField;
    CPagarParcDTRECTO: TDateField;
    CPagarParcNOME: TStringField;
    tCPagarParcNOME: TStringField;
    tMovFinanceiroNUMMOVTO: TIntegerField;
    tMovFinanceiroCODBANCO: TIntegerField;
    tMovFinanceiroDTMOVIMENTO: TDateField;
    tMovFinanceiroVLRENTRADA: TFloatField;
    tMovFinanceiroVLRSAIDA: TFloatField;
    tMovFinanceiroHISTORICO: TStringField;
    tMovFinanceiroTIPOMOV: TStringField;
    tBancoEMPCLI: TStringField;
    CReceberHist: TSQLDataSet;
    CReceberHistP: TDataSetProvider;
    tCReceberHist: TClientDataSet;
    dsCReceberHist: TDataSource;
    tCReceberHistNUMCRECEBER: TIntegerField;
    tCReceberHistPARCELA: TStringField;
    tCReceberHistITEM: TIntegerField;
    tCReceberHistHISTORICO: TStringField;
    tCReceberHistDTHISTORICO: TDateField;
    tCReceberHistDTULTPGTO: TDateField;
    tCReceberHistVLRULTPGTO: TFloatField;
    tCReceberHistVLRULTJUROSPAGO: TFloatField;
    tCReceberHistVLRULTDESCONTO: TFloatField;
    tCReceberHistVLRULTDESPESA: TFloatField;
    tCReceberHistTIPOHIST: TStringField;
    tCReceberHistNUMMOVFINANC: TIntegerField;
    tCReceberHistNUMMOVJUROS: TIntegerField;
    tCReceberHistVLRULTDEVOLUCAO: TFloatField;
    tCReceberHistNUMEXTCOMISSAO: TIntegerField;
    tCondPgtoFIXARDIA: TStringField;
    tCondPgtoQTDPARCELAS: TIntegerField;
    CPagarParcCODCONDPGTO: TIntegerField;
    tCPagarParcCODCONDPGTO: TIntegerField;
    tCReceberParcCODCONDPGTO: TIntegerField;
    tCReceberParcNOMECLIENTE: TStringField;
    CReceberParcNUMCRECEBER: TIntegerField;
    CReceberParcPARCELA: TStringField;
    CReceberParcVLRVENCIMENTO: TFloatField;
    CReceberParcDTVENCIMENTO: TDateField;
    CReceberParcQUITADO: TStringField;
    CReceberParcJUROSCALC: TFloatField;
    CReceberParcDTPAGTO: TDateField;
    CReceberParcCODCLIENTE: TIntegerField;
    CReceberParcNUMNOTA: TIntegerField;
    CReceberParcVLRDESCONTO: TFloatField;
    CReceberParcVLRPAGTO: TFloatField;
    CReceberParcVLRRESTANTE: TFloatField;
    CReceberParcCODVENDEDOR: TIntegerField;
    CReceberParcPERCCOMISSAO: TFloatField;
    CReceberParcAGENCIA: TStringField;
    CReceberParcTITPORTADOR: TStringField;
    CReceberParcCODTIPOCOBRANCA: TIntegerField;
    CReceberParcVLRDESPESA: TFloatField;
    CReceberParcCODBANCO: TIntegerField;
    CReceberParcPGCARTORIO: TStringField;
    CReceberParcTITPROTESTADO: TStringField;
    CReceberParcQTDDIASPROT: TIntegerField;
    CReceberParcDTMOVIMENTO: TDateField;
    CReceberParcDIASATRASO: TIntegerField;
    CReceberParcJUROSPAGOS: TFloatField;
    CReceberParcCANCELADO: TStringField;
    CReceberParcTIPODOC: TStringField;
    CReceberParcVLRDEVOLUCAO: TFloatField;
    CReceberParcCODCONDPGTO: TIntegerField;
    CReceberParcNOMECLIENTE: TStringField;
    CReceberParcDTDEVOLUCAO: TDateField;
    tCReceberParcDTDEVOLUCAO: TDateField;
    CPagarParcDTDEVOLUCAO: TDateField;
    tCPagarParcDTDEVOLUCAO: TDateField;
    tCPagarHistCODFORNECEDOR: TIntegerField;
    tCPagarHistNUMDUPLICATA: TIntegerField;
    tCReceberHistCODCLIENTE: TIntegerField;
    tCReceberHistNUMNOTA: TIntegerField;
    tParametroECF: TIntegerField;
    tParametroCOM: TStringField;
    SitTribCF: TSQLDataSet;
    SitTribCFP: TDataSetProvider;
    tSitTribCF: TClientDataSet;
    dsSitTribCF: TDataSource;
    tSitTribCFECF: TIntegerField;
    tSitTribCFCODIGO: TIntegerField;
    tSitTribCFCOMANDO: TStringField;
    tSitTribCFDESCRICAO: TStringField;
    tProdutoCODSITTRIBCF: TIntegerField;
    NotaEntradaItCODNATOPER: TIntegerField;
    tNotaEntradaItCODNATOPER: TIntegerField;
    tPessoaSTATUS: TStringField;
    tPessoaDTCONTRATOINI: TDateField;
    tPessoaDTCONTRATOFIM: TDateField;
    tPessoaCONTRATODEVOLVIDO: TDateField;
    tPessoaCOBENDERECO: TStringField;
    tPessoaCOBNUMERO: TIntegerField;
    tPessoaCOBCOMPLEMENTO: TStringField;
    tPessoaCOBBAIRRO: TStringField;
    tPessoaCOBCIDADE: TIntegerField;
    tPessoaCOBUF: TStringField;
    tPessoaCOBCONTATO: TStringField;
    tPessoaENDNUMERO: TIntegerField;
    tPessoaENDCOMPLEMENTO: TStringField;
    tPessoaIDUSUARIO: TIntegerField;
    tPessoaCODBANCO: TIntegerField;
    tPessoaAGENCIA: TStringField;
    tPessoaNUMCONTACORRENTE: TStringField;
    Pedido: TSQLDataSet;
    PedidoP: TDataSetProvider;
    tPedido: TClientDataSet;
    dsPedido: TDataSource;
    PedidoIt: TSQLDataSet;
    PedidoItP: TDataSetProvider;
    tPedidoIt: TClientDataSet;
    dsPedidoIt: TDataSource;
    tPedidoNUMLACTO: TIntegerField;
    tPedidoTIPO: TStringField;
    tPedidoNUMORCAMENTO: TIntegerField;
    tPedidoNUMPEDIDO: TIntegerField;
    tPedidoCODCLIENTE: TIntegerField;
    tPedidoDTPEDIDO: TDateField;
    tPedidoDTPREVENTREGA: TDateField;
    tPedidoCODNATOPER: TIntegerField;
    tPedidoCODCONDPGTO: TIntegerField;
    tPedidoINFCONDPGTO: TStringField;
    tPedidoCODVENDEDOR: TIntegerField;
    tPedidoDTENTREGA: TDateField;
    tPedidoCANCELADO: TStringField;
    tPedidoMOTIVOCANC: TStringField;
    tPedidoNUMORCAMENTOCOP: TIntegerField;
    tPedidoNUMPEDCOP: TIntegerField;
    tPedidoQTDDIASVALIDADE: TIntegerField;
    PedidoItNUMLACTO: TIntegerField;
    PedidoItITEM: TIntegerField;
    PedidoItCODPRODUTO: TIntegerField;
    PedidoItTAMANHO: TStringField;
    PedidoItNUMNOTA: TIntegerField;
    PedidoItNUMCUPOM: TIntegerField;
    PedidoItPRODUTO: TStringField;
    tPedidoItNUMLACTO: TIntegerField;
    tPedidoItITEM: TIntegerField;
    tPedidoItCODPRODUTO: TIntegerField;
    tPedidoItTAMANHO: TStringField;
    tPedidoItNUMNOTA: TIntegerField;
    tPedidoItNUMCUPOM: TIntegerField;
    tPedidoItPRODUTO: TStringField;
    PedidoItUNIDADE: TStringField;
    PedidoItCODSITTRIB: TIntegerField;
    tPedidoItUNIDADE: TStringField;
    tPedidoItCODSITTRIB: TIntegerField;
    tPessoaDIAPAGAMENTO: TIntegerField;
    Telefone: TSQLDataSet;
    TelefoneP: TDataSetProvider;
    tTelefone: TClientDataSet;
    dsTelefone: TDataSource;
    tEmpresaSERVICO: TStringField;
    tTelefoneCODPESSOA: TIntegerField;
    tTelefoneITEM: TIntegerField;
    tTelefoneTELEFONE: TStringField;
    tTelefoneCONTATO: TStringField;
    tTelefoneSETOR: TStringField;
    tTelefoneEMAIL: TStringField;
    tTelefoneRAMAL: TIntegerField;
    tPedidoItSELECIONADO: TStringField;
    tPedidoSELECIONADO: TStringField;
    tPessoaLOGIN: TStringField;
    tPessoaSENHA: TStringField;
    tPessoaCODVENDEDOR: TIntegerField;
    tProdutoLOTEECONOMICO: TIntegerField;
    tPessoaFORMAPGTO: TIntegerField;
    tPedidoCOPIADO: TStringField;
    PedidoItCOPIADO: TStringField;
    PedidoItSELECIONADO: TStringField;
    tPedidoItCOPIADO: TStringField;
    PedidoItNUMLANCORCCOP: TIntegerField;
    tPedidoItNUMLANCORCCOP: TIntegerField;
    OS: TSQLDataSet;
    pOS: TDataSetProvider;
    tOS: TClientDataSet;
    dsOS: TDataSource;
    OSID: TIntegerField;
    OSIDCLIENTE: TIntegerField;
    OSDATA: TDateField;
    OSDATAPREVISAO: TDateField;
    OSDATAENTREGA: TDateField;
    OSSTATUS: TStringField;
    OSVALOR: TIntegerField;
    OSEQUIPAMENTO: TIntegerField;
    OSPROBLEMARELATADO: TMemoField;
    OSPROBLEMADETECTADO: TMemoField;
    OSSERIAL: TStringField;
    OSNOME: TStringField;
    tOSID: TIntegerField;
    tOSIDCLIENTE: TIntegerField;
    tOSDATA: TDateField;
    tOSDATAPREVISAO: TDateField;
    tOSDATAENTREGA: TDateField;
    tOSSTATUS: TStringField;
    tOSVALOR: TIntegerField;
    tOSEQUIPAMENTO: TIntegerField;
    tOSPROBLEMARELATADO: TMemoField;
    tOSPROBLEMADETECTADO: TMemoField;
    tOSSERIAL: TStringField;
    tOSNOME: TStringField;
    tEmpresaCIDADE: TStringField;
    tPessoaEMAIL: TStringField;
    tPessoaHOMEPAGE: TStringField;
    tPessoaSELECIONADO: TStringField;
    EmpresaNOME: TStringField;
    EmpresaFANTASIA: TStringField;
    EmpresaENDERECO: TStringField;
    EmpresaBAIRRO: TStringField;
    EmpresaCEP: TStringField;
    EmpresaCODCIDADE: TIntegerField;
    EmpresaUF: TStringField;
    EmpresaDDD: TStringField;
    EmpresaFONE: TStringField;
    EmpresaFAX: TStringField;
    EmpresaDOCUMENTO: TStringField;
    EmpresaINSCREST: TStringField;
    EmpresaCODACESSO: TIntegerField;
    EmpresaAUTORIZACAO: TStringField;
    EmpresaDATA: TDateField;
    EmpresaSERVICO: TStringField;
    EmpresaCIDADE: TStringField;
    Juros: TSQLDataSet;
    JurosP: TDataSetProvider;
    tJuros: TClientDataSet;
    dsJuros: TDataSource;
    tJurosANO: TIntegerField;
    tJurosMES: TIntegerField;
    tJurosJURO: TFloatField;
    tCReceberHistCODBANCO: TIntegerField;
    tEstoqueMovQTD2: TFloatField;
    DctoEstoque: TSQLDataSet;
    DctoEstoqueP: TDataSetProvider;
    tDctoEstoque: TClientDataSet;
    dsDctoEstoque: TDataSource;
    tDctoEstoqueNUMDOCTO: TIntegerField;
    tDctoEstoqueDTMOV: TDateField;
    tDctoEstoqueES: TStringField;
    tDctoEstoqueVLRTOTAL: TFloatField;
    DctoEstoqueIt: TSQLDataSet;
    DctoEstoqueItP: TDataSetProvider;
    tDctoEstoqueIt: TClientDataSet;
    dsDctoEstoqueIt: TDataSource;
    tDctoEstoqueItNUMDOCTO: TIntegerField;
    tDctoEstoqueItCODPRODUTO: TIntegerField;
    tDctoEstoqueItTAMANHO: TStringField;
    tDctoEstoqueItUM: TStringField;
    tDctoEstoqueItQTD: TFloatField;
    tDctoEstoqueItPRECO: TFloatField;
    tDctoEstoqueItPRECOTOTAL: TFloatField;
    tDctoEstoqueItNUMMOVEST: TIntegerField;
    DctoEstoqueItNUMDOCTO: TIntegerField;
    DctoEstoqueItCODPRODUTO: TIntegerField;
    DctoEstoqueItTAMANHO: TStringField;
    DctoEstoqueItUM: TStringField;
    DctoEstoqueItQTD: TFloatField;
    DctoEstoqueItPRECO: TFloatField;
    DctoEstoqueItPRECOTOTAL: TFloatField;
    DctoEstoqueItNUMMOVEST: TIntegerField;
    DctoEstoqueItNOMEPRODUTO: TStringField;
    tDctoEstoqueItNOMEPRODUTO: TStringField;
    tDctoEstoqueMOTIVO: TStringField;
    Niveis: TSQLDataSet;
    pNiveis: TDataSetProvider;
    tNiveis: TClientDataSet;
    dsNiveis: TDataSource;
    Ususario: TSQLDataSet;
    pUsuario: TDataSetProvider;
    tUsuario: TClientDataSet;
    dsUsuario: TDataSource;
    tUsuarioID: TIntegerField;
    tUsuarioNOME: TStringField;
    tUsuarioLOGIN: TStringField;
    tUsuarioSENHA: TStringField;
    tUsuarioEMAIL: TStringField;
    tUsuarioFONE: TStringField;
    tUsuarioEMPRESA: TStringField;
    tUsuarioESTADO: TStringField;
    tUsuarioCIDADE: TStringField;
    tUsuarioENDERECO: TStringField;
    tUsuarioCEP: TStringField;
    tUsuarioPROFISSAO: TStringField;
    tUsuarioNIVEL: TIntegerField;
    tNiveisNUMCUPOM: TIntegerField;
    tNiveisDTEMISSAO: TDateField;
    tNiveisHREMISSAO: TTimeField;
    tNiveisCODCLIENTE: TIntegerField;
    tNiveisTIPOPAGTO: TStringField;
    tNiveisCODCONDPGTO: TIntegerField;
    tNiveisCODVENDEDOR: TIntegerField;
    tNiveisBASEICMS: TFloatField;
    tNiveisVLRICMS: TFloatField;
    tNiveisVLRPRODUTOS: TFloatField;
    tNiveisVLRDESCONTO: TFloatField;
    tNiveisVLRACRESCIMO: TFloatField;
    tNiveisVLRTOTAL: TFloatField;
    tNiveisCANCELADO: TStringField;
    tNiveisPERCCOMISSAO: TFloatField;
    tNiveisVLRTROCO: TFloatField;
    tNiveisNUMMOVFINANCEIRO: TIntegerField;
    DctoEstoqueItITEM: TIntegerField;
    tDctoEstoqueItITEM: TIntegerField;
    ProdutoFoto: TSQLDataSet;
    ProdutoFotoP: TDataSetProvider;
    tProdutoFoto: TClientDataSet;
    dsProdutoFoto: TDataSource;
    tProdutoFotoCODPRODUTO: TIntegerField;
    tProdutoFotoITEM: TIntegerField;
    tProdutoFotoNOME: TStringField;
    tProdutoFotoCAMINHO: TStringField;
    EmpresaLOGOEMPRESA: TStringField;
    tEmpresaLOGOEMPRESA: TStringField;
    tPessoaCONJUGE: TStringField;
    tPessoaDTNASCIMENTO: TDateField;
    tPessoaCEL: TStringField;
    tPedidoPEDIDOCLIENTE: TIntegerField;
    ExtComissao: TSQLDataSet;
    ExtComissaoP: TDataSetProvider;
    tExtComissao: TClientDataSet;
    dsExtComissao: TDataSource;
    tPedidoOBSERVACAO: TBlobField;
    tPedidoSITUACAO: TStringField;
    tCPagarHistCODBANCO: TIntegerField;
    tPessoaPLANOSAUDE_ID: TIntegerField;
    PlanoSaude: TSQLDataSet;
    pPlanoSaude: TDataSetProvider;
    tPlanoSaude: TClientDataSet;
    dsPlanoSaude: TDataSource;
    tPlanoSaudeID: TIntegerField;
    tPlanoSaudeNOME: TStringField;
    tPlanoSaudeFONE: TStringField;
    Servico: TSQLDataSet;
    pServico: TDataSetProvider;
    tServico: TClientDataSet;
    dsServico: TDataSource;
    tServicoID: TIntegerField;
    tServicoNOME: TStringField;
    FormaPgto: TSQLDataSet;
    pFormaPgto: TDataSetProvider;
    tFormaPgto: TClientDataSet;
    dsFormaPgto: TDataSource;
    tFormaPgtoID: TIntegerField;
    tFormaPgtoDESCRICAO: TStringField;
    tPessoaCOBCEP: TStringField;
    InstrCobranca: TSQLDataSet;
    pInstrCobranca: TDataSetProvider;
    tInstrCobranca: TClientDataSet;
    dsInstrCobranca: TDataSource;
    tInstrCobrancaID: TIntegerField;
    tInstrCobrancaDESCRICAO: TStringField;
    tParametroLINHASBOLETO: TIntegerField;
    tPessoaVLRPGTO: TFloatField;
    tParametroLINHASPULOBOLETO: TIntegerField;
    PessoaServico: TSQLDataSet;
    pPessoaServico: TDataSetProvider;
    tPessoaServico: TClientDataSet;
    dsPessoaServico: TDataSource;
    tPessoaServicoPESSOA_ID: TIntegerField;
    tPessoaServicoSERVICO_ID: TIntegerField;
    tPessoaServicoDATAINI: TDateField;
    tPessoaServicoDATAFIM: TDateField;
    tPessoaServicoNOME: TStringField;
    PessoaServicoPESSOA_ID: TIntegerField;
    PessoaServicoSERVICO_ID: TIntegerField;
    PessoaServicoDATAINI: TDateField;
    PessoaServicoDATAFIM: TDateField;
    PessoaServicoNOME: TStringField;
    tServicoVALORHORA: TStringField;
    tServicoDESLOCAMENTO: TStringField;
    tPedidoNOME: TStringField;
    PedidoNUMLACTO: TIntegerField;
    PedidoTIPO: TStringField;
    PedidoNUMORCAMENTO: TIntegerField;
    PedidoNUMPEDIDO: TIntegerField;
    PedidoCODCLIENTE: TIntegerField;
    PedidoDTPEDIDO: TDateField;
    PedidoDTPREVENTREGA: TDateField;
    PedidoCODNATOPER: TIntegerField;
    PedidoCODCONDPGTO: TIntegerField;
    PedidoINFCONDPGTO: TStringField;
    PedidoCODVENDEDOR: TIntegerField;
    PedidoDTENTREGA: TDateField;
    PedidoCANCELADO: TStringField;
    PedidoMOTIVOCANC: TStringField;
    PedidoNUMORCAMENTOCOP: TIntegerField;
    PedidoNUMPEDCOP: TIntegerField;
    PedidoQTDDIASVALIDADE: TIntegerField;
    PedidoCOPIADO: TStringField;
    PedidoSELECIONADO: TStringField;
    PedidoPEDIDOCLIENTE: TIntegerField;
    PedidoOBSERVACAO: TMemoField;
    PedidoNOME: TStringField;
    tProdutoNOME: TStringField;
    PedidoSITUACAO: TStringField;
    PedidoServico: TSQLDataSet;
    pPedidoServico: TDataSetProvider;
    tPedidoServico: TClientDataSet;
    dsPedidoServico: TDataSource;
    tPedidoServicoPEDIDO_ID: TIntegerField;
    tPedidoServicoDATAINI: TDateField;
    tPedidoServicoDATAFIM: TDateField;
    tPedidoServicoHRINI: TTimeField;
    tPedidoServicoHRFIM: TTimeField;
    tPedidoServicoEFETIVO: TSmallintField;
    tPedidoServicoDURACAO: TSmallintField;
    tPedidoServicoRONDASDIA: TIntegerField;
    tPedidoServicoVALORMES: TFMTBCDField;
    tPedidoServicoVALORSERVICO: TFMTBCDField;
    tServicoPERMANENTE: TStringField;
    tServicoAVULSO: TStringField;
    PedidoServicoPermanente: TSQLDataSet;
    pPedidoServicoPermanente: TDataSetProvider;
    tPedidoServicoPermanente: TClientDataSet;
    dsPedidoServicoPermanente: TDataSource;
    tPedidoServicoPermanentePEDIDO_ID: TIntegerField;
    tPedidoServicoPermanenteITEM: TIntegerField;
    tPedidoServicoPermanenteSERVICO_ID: TIntegerField;
    tPedidoServicoPermanenteQTD: TIntegerField;
    tPedidoServicoPermanenteSEG_HR_INI: TTimeField;
    tPedidoServicoPermanenteSEG_HR_FIM: TTimeField;
    tPedidoServicoPermanenteTER_HR_INI: TTimeField;
    tPedidoServicoPermanenteTER_HR_FIM: TTimeField;
    tPedidoServicoPermanenteQUA_HR_INI: TTimeField;
    tPedidoServicoPermanenteQUA_HR_FIM: TTimeField;
    tPedidoServicoPermanenteQUI_HR_INI: TTimeField;
    tPedidoServicoPermanenteQUI_HR_FIM: TTimeField;
    tPedidoServicoPermanenteSEX_HR_INI: TTimeField;
    tPedidoServicoPermanenteSEX_HR_FIM: TTimeField;
    tPedidoServicoPermanenteSAB_HR_INI: TTimeField;
    tPedidoServicoPermanenteSAB_HR_FIM: TTimeField;
    tPedidoServicoPermanenteDOM_HR_INI: TTimeField;
    tPedidoServicoPermanenteDOM_HR_FIM: TTimeField;
    tPedidoServicoPermanenteVLR: TFMTBCDField;
    PedidoSERVICO2: TStringField;
    tPedidoSERVICO2: TStringField;
    PedidoCONDPGTO: TStringField;
    tPedidoCONDPGTO: TStringField;
    tPedidoServicoPermanenteSERVICO: TStringField;
    PedidoServicoPermanentePEDIDO_ID: TIntegerField;
    PedidoServicoPermanenteITEM: TIntegerField;
    PedidoServicoPermanenteSERVICO_ID: TIntegerField;
    PedidoServicoPermanenteQTD: TIntegerField;
    PedidoServicoPermanenteSEG_HR_INI: TTimeField;
    PedidoServicoPermanenteSEG_HR_FIM: TTimeField;
    PedidoServicoPermanenteTER_HR_INI: TTimeField;
    PedidoServicoPermanenteTER_HR_FIM: TTimeField;
    PedidoServicoPermanenteQUA_HR_INI: TTimeField;
    PedidoServicoPermanenteQUA_HR_FIM: TTimeField;
    PedidoServicoPermanenteQUI_HR_INI: TTimeField;
    PedidoServicoPermanenteQUI_HR_FIM: TTimeField;
    PedidoServicoPermanenteSEX_HR_INI: TTimeField;
    PedidoServicoPermanenteSEX_HR_FIM: TTimeField;
    PedidoServicoPermanenteSAB_HR_INI: TTimeField;
    PedidoServicoPermanenteSAB_HR_FIM: TTimeField;
    PedidoServicoPermanenteDOM_HR_INI: TTimeField;
    PedidoServicoPermanenteDOM_HR_FIM: TTimeField;
    PedidoServicoPermanenteVLR: TFMTBCDField;
    PedidoServicoPermanenteSERVICO: TStringField;
    tPedidoclTipo: TStringField;
    PedidoCLIENTE_NOME: TStringField;
    PedidoCLIENTE_FONE: TStringField;
    tPedidoCLIENTE_NOME: TStringField;
    tPedidoCLIENTE_FONE: TStringField;
    PedidoVLRMO: TFMTBCDField;
    tPedidoVLRMO: TFMTBCDField;
    tProdutoVLRMO: TFMTBCDField;
    PedidoItVLRMO: TFMTBCDField;
    tPedidoItVLRMO: TFMTBCDField;
    CriaCampos: TSQLQuery;
    EmpresaFONE2: TStringField;
    EmpresaFONE3: TStringField;
    tEmpresaFONE2: TStringField;
    tEmpresaFONE3: TStringField;
    PedidoLUCRO: TFMTBCDField;
    PedidoIMPOSTO: TFMTBCDField;
    tPedidoLUCRO: TFMTBCDField;
    tPedidoIMPOSTO: TFMTBCDField;
    PedidoServicoPermanenteESCALA_ID: TIntegerField;
    tPedidoServicoPermanenteESCALA_ID: TIntegerField;
    tParametroCUSTOKM: TFMTBCDField;
    tParametroVLRHOMEMHR: TFMTBCDField;
    tParametroIMPOSTO_NF: TFMTBCDField;
    tPedidoServicoSERVICOAVULSO_ID: TIntegerField;
    PedidoMELHOR_VCTO: TStringField;
    PedidoFORMA_PGTO_ID: TIntegerField;
    tPedidoMELHOR_VCTO: TStringField;
    tPedidoFORMA_PGTO_ID: TIntegerField;
    PedidoFORMA_PGTO: TStringField;
    tPedidoFORMA_PGTO: TStringField;
    Clausula: TSQLDataSet;
    pClausula: TDataSetProvider;
    tClausula: TClientDataSet;
    dsClausula: TDataSource;
    tClausulaID: TIntegerField;
    tClausulaNOME: TStringField;
    tClausulaDESCRICAO: TMemoField;
    Pedido_Clausula: TSQLDataSet;
    pPedido_Clausula: TDataSetProvider;
    tPedido_Clausula: TClientDataSet;
    dsPedido_Clausula: TDataSource;
    tPedido_ClausulaPEDIDO_ID: TIntegerField;
    tPedido_ClausulaCLAUSULA_ID: TIntegerField;
    Pedido_ClausulaPEDIDO_ID: TIntegerField;
    Pedido_ClausulaCLAUSULA_ID: TIntegerField;
    Pedido_ClausulaNOME: TStringField;
    tPedido_ClausulaNOME: TStringField;
    Pedido_ClausulaDESCRICAO: TMemoField;
    tPedido_ClausulaDESCRICAO: TMemoField;
    PedidoENDERECO: TStringField;
    PedidoCIDADE_ID: TIntegerField;
    tPedidoENDERECO: TStringField;
    tPedidoCIDADE_ID: TIntegerField;
    PedidoENDERECO_NUM: TStringField;
    PedidoENDERECO_COMPL: TStringField;
    tPedidoENDERECO_NUM: TStringField;
    tPedidoENDERECO_COMPL: TStringField;
    PedidoItQTD: TFMTBCDField;
    PedidoItVLRUNITARIO: TFMTBCDField;
    PedidoItVLRTOTAL: TFMTBCDField;
    PedidoItPERCDESCONTO: TFMTBCDField;
    PedidoItVLRDESCONTO: TFMTBCDField;
    tPedidoItQTD: TFMTBCDField;
    tPedidoItVLRUNITARIO: TFMTBCDField;
    tPedidoItVLRTOTAL: TFMTBCDField;
    tPedidoItPERCDESCONTO: TFMTBCDField;
    tPedidoItVLRDESCONTO: TFMTBCDField;
    tProdutoPRECOVENDA: TFMTBCDField;
    PedidoPERCDESCONTO: TFMTBCDField;
    PedidoVLRDESCONTO: TFMTBCDField;
    PedidoPERCCOMISSAO: TFMTBCDField;
    PedidoVLRTOTAL: TFMTBCDField;
    tPedidoPERCDESCONTO: TFMTBCDField;
    tPedidoVLRDESCONTO: TFMTBCDField;
    tPedidoPERCCOMISSAO: TFMTBCDField;
    tPedidoVLRTOTAL: TFMTBCDField;
    PedidoServicoPermanenteHORAS: TFMTBCDField;
    tPedidoServicoPermanenteHORAS: TFMTBCDField;
    BcoItau: TSQLDataSet;
    BcoItauP: TDataSetProvider;
    tBcoItau: TClientDataSet;
    dsBcoItau: TDataSource;
    MovAvulso: TSQLDataSet;
    MovAvulsoP: TDataSetProvider;
    tMovAvulso: TClientDataSet;
    dsMovAvulso: TDataSource;
    MovAvulsoItens: TSQLDataSet;
    MovAvulsoItensP: TDataSetProvider;
    tMovAvulsoItens: TClientDataSet;
    dsMovAvulsoItens: TDataSource;
    MovAvulsoParc: TSQLDataSet;
    MovAvulsoParcP: TDataSetProvider;
    tMovAvulsoParc: TClientDataSet;
    dsMovAvulsoParc: TDataSource;
    tMovAvulsoCODIGO: TIntegerField;
    tMovAvulsoCODCLIENTE: TIntegerField;
    tMovAvulsoVLRTOTAL: TFMTBCDField;
    tMovAvulsoItensCODIGO: TIntegerField;
    tMovAvulsoItensITENS: TIntegerField;
    tMovAvulsoItensDESCRICAO: TStringField;
    tMovAvulsoItensVLRUNIT: TFMTBCDField;
    tMovAvulsoItensQTD: TFloatField;
    tMovAvulsoItensTIPO: TStringField;
    tMovAvulsoParcCODIGO: TIntegerField;
    tMovAvulsoParcPARCELA: TIntegerField;
    tMovAvulsoParcNUMCRECEBER: TIntegerField;
    tMovAvulsoParcDTVENC: TDateField;
    tMovAvulsoParcVALOR: TFMTBCDField;
    tMovAvulsoItensVLRTOTAL: TFMTBCDField;
    tMovAvulsoVLRTOTALITENS: TFMTBCDField;
    tMovAvulsoCONDPGTO: TIntegerField;
    tMovAvulsoDTEMISSAO: TDateField;
    PessoaServicoVALOR: TFMTBCDField;
    tPessoaServicoVALOR: TFMTBCDField;
    tBancoNUMCONTA: TStringField;
    tBancoDIGCONTA: TStringField;
    tBcoItauCODCEDENTE: TStringField;
    tBcoItauCARTEIRA: TStringField;
    tBcoItauACEITE: TStringField;
    tBcoItauINSTRUCAO: TStringField;
    tBcoItauDIASPROTESTO: TIntegerField;
    tBcoItauCAMINHO: TStringField;
    tBcoItauNOME: TStringField;
    tBcoItauEXTENSAO: TStringField;
    tBcoItauVLRDESCONTO: TFMTBCDField;
    tBcoItauVLRJUROSPORDIA: TFMTBCDField;
    tBcoItauCODCONTA: TIntegerField;
    tBcoItauNUMCARTEIRA: TStringField;
    tBcoItauESPECIEDOC: TStringField;
    tBcoItauINSTRCOBRANCA1: TStringField;
    tBcoItauINSTRCOBRANCA2: TStringField;
    tBcoItauAGENCIA: TStringField;
    tBcoItauNUMCONTA: TStringField;
    tBcoItauDIGCONTA: TStringField;
    CReceberParcCOBRANCAEMITIDA: TStringField;
    tCReceberParcCOBRANCAEMITIDA: TStringField;
    BcoItauCODCEDENTE: TStringField;
    BcoItauCARTEIRA: TStringField;
    BcoItauACEITE: TStringField;
    BcoItauINSTRUCAO: TStringField;
    BcoItauDIASPROTESTO: TIntegerField;
    BcoItauCAMINHO: TStringField;
    BcoItauNOME: TStringField;
    BcoItauEXTENSAO: TStringField;
    BcoItauVLRDESCONTO: TFMTBCDField;
    BcoItauVLRJUROSPORDIA: TFMTBCDField;
    BcoItauCODCONTA: TIntegerField;
    BcoItauNUMCARTEIRA: TStringField;
    BcoItauESPECIEDOC: TStringField;
    BcoItauINSTRCOBRANCA1: TStringField;
    BcoItauINSTRCOBRANCA2: TStringField;
    BcoItauAGENCIA: TStringField;
    BcoItauNUMCONTA: TStringField;
    BcoItauDIGCONTA: TStringField;
    CReceberParcNUMCARTEIRA: TStringField;
    CReceberParcNOSSONUMERO: TStringField;
    tCReceberParcNUMCARTEIRA: TStringField;
    tCReceberParcNOSSONUMERO: TStringField;
    tPessoaNUMCARTEIRA: TStringField;
    BcoItauSEQNOSSONUMERO: TIntegerField;
    tBcoItauSEQNOSSONUMERO: TIntegerField;
    BcoItauDTLIMITEDESCONTO: TDateField;
    tBcoItauDTLIMITEDESCONTO: TDateField;
    PessoaID: TIntegerField;
    PessoaNOME: TStringField;
    PessoaFANTASIA: TStringField;
    PessoaPESSOA: TStringField;
    PessoaDOCUMENTO: TStringField;
    PessoaENDERECO: TStringField;
    PessoaBAIRRO: TStringField;
    PessoaCEP: TStringField;
    PessoaESTADO: TStringField;
    PessoaFONE: TStringField;
    PessoaFAX: TStringField;
    PessoaINSCESTADUAL: TStringField;
    PessoaIDENTIDADE: TStringField;
    PessoaESTCIVIL: TStringField;
    PessoaPROFISSAO: TStringField;
    PessoaNACIONALIDADE: TStringField;
    PessoaDTCADASTRO: TDateField;
    PessoaOBSERVACAO: TMemoField;
    PessoaFORNECEDOR: TStringField;
    PessoaCLIENTE: TStringField;
    PessoaVENDEDOR: TStringField;
    PessoaREFPESSOAL1: TStringField;
    PessoaREFPESSOAL2: TStringField;
    PessoaREFPESSOALEND1: TStringField;
    PessoaREFPESSOALEND2: TStringField;
    PessoaREFPESSOALFONE1: TStringField;
    PessoaREFPESSOALFONE2: TStringField;
    PessoaREFCOMERCIAL1: TStringField;
    PessoaREFCOMERCIAL2: TStringField;
    PessoaREFCOMERCIALEND1: TStringField;
    PessoaREFCOMERCIALEND2: TStringField;
    PessoaREFCOMERCIALFONE1: TStringField;
    PessoaREFCOMERCIALFONE2: TStringField;
    PessoaCIDADE: TIntegerField;
    PessoaTRANSPORTADORA: TStringField;
    PessoaPERCCOMISSAO: TFloatField;
    PessoaTIPOCOMISSAO: TStringField;
    PessoaSTATUS: TStringField;
    PessoaDTCONTRATOINI: TDateField;
    PessoaDTCONTRATOFIM: TDateField;
    PessoaCONTRATODEVOLVIDO: TDateField;
    PessoaCOBENDERECO: TStringField;
    PessoaCOBNUMERO: TIntegerField;
    PessoaCOBCOMPLEMENTO: TStringField;
    PessoaCOBBAIRRO: TStringField;
    PessoaCOBCIDADE: TIntegerField;
    PessoaCOBUF: TStringField;
    PessoaCOBCONTATO: TStringField;
    PessoaENDNUMERO: TIntegerField;
    PessoaENDCOMPLEMENTO: TStringField;
    PessoaIDUSUARIO: TIntegerField;
    PessoaCODBANCO: TIntegerField;
    PessoaAGENCIA: TStringField;
    PessoaNUMCONTACORRENTE: TStringField;
    PessoaLOGIN: TStringField;
    PessoaSENHA: TStringField;
    PessoaDIAPAGAMENTO: TIntegerField;
    PessoaCODVENDEDOR: TIntegerField;
    PessoaFORMAPGTO: TIntegerField;
    PessoaEMAIL: TStringField;
    PessoaHOMEPAGE: TStringField;
    PessoaSELECIONADO: TStringField;
    PessoaCONJUGE: TStringField;
    PessoaDTNASCIMENTO: TDateField;
    PessoaCEL: TStringField;
    PessoaPLANOSAUDE_ID: TIntegerField;
    PessoaCOBCEP: TStringField;
    PessoaVLRPGTO: TFloatField;
    PessoaNUMCARTEIRA: TStringField;
    PessoaFUNCIONARIO: TStringField;
    tPessoaFUNCIONARIO: TStringField;
    CentroCusto: TSQLDataSet;
    CentroCustoP: TDataSetProvider;
    tCentroCusto: TClientDataSet;
    dsCentroCusto: TDataSource;
    tCentroCustoID: TIntegerField;
    tCentroCustoNOME: TStringField;
    PessoaCODCENTROCUSTO: TIntegerField;
    tPessoaCODCENTROCUSTO: TIntegerField;
    tParametroTITULO1: TStringField;
    tParametroTITULO2: TStringField;
    tParametroCABECALHO1: TBlobField;
    tParametroCABECALHO2: TBlobField;
    tMovFinanceiroCODCENTROCUSTO: TIntegerField;
    CReceberParcIMPRIMIR: TStringField;
    CReceberParcCODCENTROCUSTO: TIntegerField;
    tCReceberParcIMPRIMIR: TStringField;
    tCReceberParcCODCENTROCUSTO: TIntegerField;
    CPagarParcCODCENTROCUSTO: TIntegerField;
    tCPagarParcCODCENTROCUSTO: TIntegerField;
    tMovFinanceiroTIPOPESSOA: TStringField;
    PrevCentroCusto: TSQLDataSet;
    PrevCentroCustoP: TDataSetProvider;
    tPrevCentroCusto: TClientDataSet;
    tPrevCentroCustoCODCENTROCUSTO: TIntegerField;
    tPrevCentroCustoANO: TIntegerField;
    tPrevCentroCustoMES: TIntegerField;
    tPrevCentroCustoVALOR: TFloatField;
    dsPrevCentroCusto: TDataSource;
    tTipoCobrancaTIPO: TIntegerField;
    tTipoCobrancaclTipo: TStringField;
    PessoaCODTIPOCOBRANCA: TIntegerField;
    tPessoaCODTIPOCOBRANCA: TIntegerField;
    qPessoa: TADOQuery;
    EmpresaLOGOEMPRESA2: TStringField;
    tEmpresaLOGOEMPRESA2: TStringField;
    tMovFinanceiroNOMEPESSOA: TStringField;
    tPedidoServicoSERVICO_ID: TIntegerField;
    tPedidoServicoSERVICOPERM_ID: TIntegerField;
    tPedidoServicoQTD: TFloatField;
    tPedidoServicoITEM: TIntegerField;
    PedidoPROBLEMAS: TMemoField;
    PedidoSOLUCOES: TMemoField;
    tPedidoPROBLEMAS: TMemoField;
    tPedidoSOLUCOES: TMemoField;
    PedidoServicoPEDIDO_ID: TIntegerField;
    PedidoServicoITEM: TIntegerField;
    PedidoServicoSERVICO_ID: TIntegerField;
    PedidoServicoDATAINI: TDateField;
    PedidoServicoDATAFIM: TDateField;
    PedidoServicoHRINI: TTimeField;
    PedidoServicoHRFIM: TTimeField;
    PedidoServicoEFETIVO: TSmallintField;
    PedidoServicoDURACAO: TSmallintField;
    PedidoServicoRONDASDIA: TIntegerField;
    PedidoServicoVALORMES: TFMTBCDField;
    PedidoServicoVALORSERVICO: TFMTBCDField;
    PedidoServicoSERVICOAVULSO_ID: TIntegerField;
    PedidoServicoSERVICOPERM_ID: TIntegerField;
    PedidoServicoQTD: TFloatField;
    PedidoServicoSERVICO: TStringField;
    tPedidoServicoSERVICO: TStringField;
    PedidoVLRLUCRO: TFMTBCDField;
    tPedidoVLRLUCRO: TFMTBCDField;
    CReceberParcOBS: TBlobField;
    tCReceberParcOBS: TBlobField;
    PessoaTIPOSALARIO: TStringField;
    PessoaVALORSALARIO: TFloatField;
    tPessoaTIPOSALARIO: TStringField;
    tPessoaVALORSALARIO: TFloatField;
    tParametroPERCFOLHA: TFMTBCDField;
    tParametroPERCLUCRO: TFMTBCDField;
    PedidoVLRFOLHA: TFMTBCDField;
    tPedidoVLRFOLHA: TFMTBCDField;
    PedidoVLRSUGERIDO: TFMTBCDField;
    tPedidoVLRSUGERIDO: TFMTBCDField;
    PessoaRG: TStringField;
    tPessoaRG: TStringField;
    EmpresaSTRETCH: TStringField;
    tEmpresaSTRETCH: TStringField;
    tExtComissaoNUMMOV: TIntegerField;
    tExtComissaoCODVENDEDOR: TIntegerField;
    tExtComissaoDTREFERENCIA: TDateField;
    tExtComissaoNUMNOTA: TIntegerField;
    tExtComissaoPARCELA: TStringField;
    tExtComissaoCODCLIENTE: TIntegerField;
    tExtComissaoFUNCAO: TStringField;
    tExtComissaoVLRBASE: TFloatField;
    tExtComissaoPERCENTUAL: TFloatField;
    tExtComissaoVLRCOMISSAO: TFloatField;
    tExtComissaoTIPO: TStringField;
    ExtComissaoNUMMOV: TIntegerField;
    ExtComissaoCODVENDEDOR: TIntegerField;
    ExtComissaoDTREFERENCIA: TDateField;
    ExtComissaoNUMNOTA: TIntegerField;
    ExtComissaoPARCELA: TStringField;
    ExtComissaoCODCLIENTE: TIntegerField;
    ExtComissaoFUNCAO: TStringField;
    ExtComissaoVLRBASE: TFloatField;
    ExtComissaoPERCENTUAL: TFloatField;
    ExtComissaoVLRCOMISSAO: TFloatField;
    ExtComissaoTIPO: TStringField;
    PessoaDT_LIBERADO: TStringField;
    tPessoaDT_LIBERADO: TStringField;
    PessoaCIDADE_NOME: TStringField;
    tPessoaCIDADE_NOME: TStringField;
    PessoaNOME_CENTROCUSTO: TStringField;
    tPessoaNOME_CENTROCUSTO: TStringField;
    dsmPessoa: TDataSource;
    sdsPessoaHist: TSQLDataSet;
    cdsPessoaHist: TClientDataSet;
    dsPessoaHist: TDataSource;
    sdsPessoaHistID: TIntegerField;
    sdsPessoaHistPESSOA_ID: TIntegerField;
    sdsPessoaHistDATA: TDateField;
    sdsPessoaHistHISTORICO: TStringField;
    sdsPessoaHistDATA_AGENDA: TDateField;
    tPessoasdsPessoaHist: TDataSetField;
    cdsPessoaHistID: TIntegerField;
    cdsPessoaHistPESSOA_ID: TIntegerField;
    cdsPessoaHistDATA: TDateField;
    cdsPessoaHistHISTORICO: TStringField;
    cdsPessoaHistDATA_AGENDA: TDateField;
    PessoaPESSOA_ID: TIntegerField;
    sdsPessoaChave: TSQLDataSet;
    cdsPessoaChave: TClientDataSet;
    dsPessoaChave: TDataSource;
    sdsPessoaChaveID: TIntegerField;
    sdsPessoaChavePESSOA_ID: TIntegerField;
    tPessoasdsPessoaChave: TDataSetField;
    cdsPessoaChaveID: TIntegerField;
    cdsPessoaChavePESSOA_ID: TIntegerField;
    cdsPessoaChaveclTipo: TStringField;
    tPessoaPESSOA_ID: TIntegerField;
    sdsPessoaChaveCHAVE: TStringField;
    cdsPessoaChaveCHAVE: TStringField;
    sdsPessoaChaveTIPO: TStringField;
    cdsPessoaChaveTIPO: TStringField;
    PessoaVERSAO_EXE: TStringField;
    tPessoaVERSAO_EXE: TStringField;
    TelefoneCODPESSOA: TIntegerField;
    TelefoneITEM: TIntegerField;
    TelefoneTELEFONE: TStringField;
    TelefoneCONTATO: TStringField;
    TelefoneSETOR: TStringField;
    TelefoneEMAIL: TStringField;
    TelefoneRAMAL: TIntegerField;
    TelefoneANIVERSARIO: TDateField;
    tTelefoneANIVERSARIO: TDateField;
    tPessoaclDtLiberacao: TStringField;
    Decoder1: TIdDecoderMIME;
    sdsPessoaModulos: TSQLDataSet;
    cdsPessoaModulos: TClientDataSet;
    dsPessoaModulos: TDataSource;
    tPessoasdsPessoaModulos: TDataSetField;
    sdsModulo: TSQLDataSet;
    dspModulo: TDataSetProvider;
    cdsModulo: TClientDataSet;
    dsModulo: TDataSource;
    sdsModuloID: TIntegerField;
    sdsModuloNOME: TStringField;
    sdsModuloTIPO: TStringField;
    cdsModuloID: TIntegerField;
    cdsModuloNOME: TStringField;
    cdsModuloTIPO: TStringField;
    sdsPessoaModulosID: TIntegerField;
    sdsPessoaModulosMODULO_ID: TIntegerField;
    sdsPessoaModulosLIBERADO: TStringField;
    sdsPessoaModulosMODULO_NOME: TStringField;
    cdsPessoaModulosID: TIntegerField;
    cdsPessoaModulosMODULO_ID: TIntegerField;
    cdsPessoaModulosLIBERADO: TStringField;
    cdsPessoaModulosMODULO_NOME: TStringField;
    ExtComissaoOBS: TStringField;
    tExtComissaoOBS: TStringField;
    PessoaCODVENDEDOR_COB: TIntegerField;
    PessoaNOME_VENDEDOR: TStringField;
    PessoaNOME_VENDEDOR_COB: TStringField;
    tPessoaCODVENDEDOR_COB: TIntegerField;
    tPessoaNOME_VENDEDOR: TStringField;
    tPessoaNOME_VENDEDOR_COB: TStringField;
    sdsUCTabUsers: TSQLDataSet;
    dspUCTabUsers: TDataSetProvider;
    cdsUCTabUsers: TClientDataSet;
    dsUCTabUsers: TDataSource;
    cdsUCTabUsersUCLOGIN: TStringField;
    sdsPessoaHistUSUARIO_RESP: TStringField;
    sdsPessoaHistCONCLUIDO: TStringField;
    cdsPessoaHistUSUARIO_RESP: TStringField;
    cdsPessoaHistCONCLUIDO: TStringField;
    sdsEmpPrincipal: TSQLDataSet;
    dspEmpPrincipal: TDataSetProvider;
    cdsEmpPrincipal: TClientDataSet;
    cdsEmpPrincipalID: TIntegerField;
    cdsEmpPrincipalNOME: TStringField;
    cdsEmpPrincipalFANTASIA: TStringField;
    dsEmpPrincipal: TDataSource;
    PessoaEMPRESA_PRINCIPAL: TStringField;
    PessoaID_EMPRESA_PRINCIPAL: TIntegerField;
    tPessoaEMPRESA_PRINCIPAL: TStringField;
    tPessoaID_EMPRESA_PRINCIPAL: TIntegerField;
    PessoaNOME_PRINCIPAL: TStringField;
    tPessoaNOME_PRINCIPAL: TStringField;
    sdsSistema: TSQLDataSet;
    dspSistema: TDataSetProvider;
    cdsSistema: TClientDataSet;
    dsSistema: TDataSource;
    sdsSistemaID: TIntegerField;
    sdsSistemaNOME: TStringField;
    sdsSistemaOBS: TStringField;
    cdsSistemaID: TIntegerField;
    cdsSistemaNOME: TStringField;
    cdsSistemaOBS: TStringField;
    procedure tPessoaNewRecord(DataSet: TDataSet);
    procedure tProdutoNewRecord(DataSet: TDataSet);
    procedure tCondPgtoNewRecord(DataSet: TDataSet);
    procedure tCidadeNewRecord(DataSet: TDataSet);
    procedure tNatOperacaoNewRecord(DataSet: TDataSet);
    procedure tNotaEntradaNewRecord(DataSet: TDataSet);
    procedure tNotaEntradaItNewRecord(DataSet: TDataSet);
    procedure tNotaEntradaParcNewRecord(DataSet: TDataSet);
    procedure tNotaEntradaMObraNewRecord(DataSet: TDataSet);
    procedure tBancoNewRecord(DataSet: TDataSet);
    procedure tCondPgtoItNewRecord(DataSet: TDataSet);
    procedure tProdutoTamNewRecord(DataSet: TDataSet);
    procedure tMovFinanceiroNewRecord(DataSet: TDataSet);
    procedure tCPagarParcNewRecord(DataSet: TDataSet);
    procedure tCPagarHistNewRecord(DataSet: TDataSet);
    procedure tCReceberHistNewRecord(DataSet: TDataSet);
    procedure tPedidoNewRecord(DataSet: TDataSet);
    procedure ConexaoBeforeConnect(Sender: TObject);
    procedure tPedidoItNewRecord(DataSet: TDataSet);
    procedure tProdutoFotoAfterScroll(DataSet: TDataSet);
    procedure tCReceberParcNewRecord(DataSet: TDataSet);
    procedure tPedidoCalcFields(DataSet: TDataSet);
    procedure tMovAvulsoItensNewRecord(DataSet: TDataSet);
    procedure tMovAvulsoParcNewRecord(DataSet: TDataSet);
    procedure tMovAvulsoNewRecord(DataSet: TDataSet);
    procedure PessoaPUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure tPrevCentroCustoNewRecord(DataSet: TDataSet);
    procedure tTipoCobrancaCalcFields(DataSet: TDataSet);
    procedure tTipoCobrancaNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure tCursoAfterInsert(DataSet: TDataSet);
    procedure tCursoBeforePost(DataSet: TDataSet);
    procedure tPessoa_CursoBeforePost(DataSet: TDataSet);
    procedure tPessoa_CursoAfterInsert(DataSet: TDataSet);
    procedure cdsPessoaChaveCalcFields(DataSet: TDataSet);
    procedure tPessoaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    vItemExtra : Integer;
    function OriginalCommandTextPREVCENTROCUSTO: String;
    function OriginalCommandTextCurso: String;

  public
    { Public declarations }
    ctPessoa : String;
    function Incrementa(Campo, Tabela : String): Integer;
    function MontaBoletoItau(tipo, nDoc, carteira, DigNossoNum: String; data: TDateTime; valor: Currency): String;
    function ProximaSequencia(NomeTabela: String): Integer;

    procedure Gravar(id: Integer);

    procedure MontaSQL_PREVCENTROCUSTO(CodCentroCusto, Ano : Integer);
    procedure MontaSQL_CURSO(Busca, ColunaOrdenada : String);

    //procedure Gravar_Curso;
    //procedure Excluir_Curso;

  end;

var
  DM1: TDM1;
  vTabSheet: String;
  vAltera: String; //I= Inserir Item     A= Alterar Item    C=Consultar Item
  usu: Integer;
  TD: TTransactionDesc;

implementation

uses UDmCons, UProduto, SendMailOptions;

{$R *.dfm}

function TDM1.ProximaSequencia(NomeTabela: String): Integer;
var
  sds: TSQLDataSet;
  iSeq: Integer;
  ID: TTransactionDesc;
begin
  sds := TSQLDataSet.Create(nil);
  try

    ID.TransactionID := 999;
    ID.IsolationLevel := xilREADCOMMITTED;

    Conexao.StartTransaction(ID);
    try

      sds.SQLConnection := Conexao;
      sds.NoMetadata := True;
      sds.GetMetadata := False;
      sds.CommandText := 'SELECT SEQUENCIA FROM SEQUENCIA WHERE NOMETABELA = :NOMETABELA';
      sds.ParamByName('NOMETABELA').AsString := NomeTabela;
      sds.Open;

      iSeq := sds.FieldByName('SEQUENCIA').AsInteger+1;

      if iSeq = 1 then
        Conexao.ExecuteDirect('INSERT INTO SEQUENCIA(NOMETABELA,SEQUENCIA) VALUES( ''' + NomeTabela + ''' , ''' + IntToStr(iSeq) + ''' ) ')
      else
        Conexao.ExecuteDirect('UPDATE SEQUENCIA SET SEQUENCIA = ''' + IntToStr(iSeq) + '''WHERE NOMETABELA = ''' + NomeTabela+'''');

      Conexao.Commit(ID);

      Result := iSeq;

    except
      Conexao.Rollback(ID);
      raise;
    end;

  finally
    FreeAndNil(sds);
  end;   
end;

function TDM1.OriginalCommandTextCurso: String;
begin
  Result := 'SELECT * ' +
            'FROM CURSO ' +
            'WHERE 0=0 ';
end;

{procedure TDM1.Gravar_Curso;
begin
  if tCurso.State in[dsInsert, dsEdit] then
    tCurso.Post;
  if tCurso.ChangeCount > 0 then
    tCurso.ApplyUpdates(0);
end;}

{procedure TDM1.Excluir_Curso;
begin
  tCurso.Delete;
  if tCurso.ChangeCount > 0 then
    tCurso.ApplyUpdates(0);
end;}

procedure TDM1.MontaSQL_CURSO(Busca, ColunaOrdenada : String);
begin
  {tCurso.Close;
  Curso.CommandText := OriginalCommandTextCurso;
  if Busca = '[DIGITE A BUSCA E PRESSIONE <ENTER>]' then
    Busca := '';
  if Busca <> '' then
    Curso.CommandText := Curso.CommandText + ' AND ('+ ColunaOrdenada + ' LIKE ''%' + Busca + '%'')';
  tCurso.Open;}
end;

procedure TDM1.MontaSQL_PREVCENTROCUSTO(CodCentroCusto, Ano : Integer);
begin
  tPrevCentroCusto.Close;
  PrevCentroCusto.CommandText := OriginalCommandTextPREVCENTROCUSTO;
  if CodCentroCusto > 0 then
    PrevCentroCusto.CommandText := PrevCentroCusto.CommandText + ' AND (PREVCENTROCUSTO.CODCENTROCUSTO = ' + IntToStr(CodCentroCusto) + ')';
  if Ano > 0 then
    PrevCentroCusto.CommandText := PrevCentroCusto.CommandText + ' AND (PREVCENTROCUSTO.ANO = ' + IntToStr(Ano) + ')';
  tPrevCentroCusto.Open;
end;

function TDM1.OriginalCommandTextPREVCENTROCUSTO: String;
begin
  Result := 'SELECT * ' +
            'FROM PREVCENTROCUSTO ' +
            'WHERE (0=0) ';
end;


function TDM1.MontaBoletoItau(tipo, nDoc, Carteira, DigNossoNum: String; data: TDateTime; valor: Currency): String;
var
  fatVcto, vlr, vCodBarra, vLinha, dv: String;
  i : Byte;
  vAux, vAux2, vSoma : Integer;
  vCampo1, vCampo2, vCampo3, vCampo4, vCampo5 : String;
//Função para calcular o digito verificador no módulo 11
function CalculaDigMod11(Campo: String): String;
var
  i : Byte;
begin
  vSoma := 0;
  vAux  := 1;
  for i := length(campo) Downto 1 do
    begin
      inc(vAux);
      if vAux > 9 then
        vAux := 2;
      vSoma := vSoma + (StrToInt(Copy(vCodBarra,i,1)) * vAux);
    end;
  vAux  := vSoma div 11;
  vAux2 := vAux * 11;
  vAux  := vSoma - vAux2;
  vAux := 11 - vAux;
  CalculaDigMod11 := IntToStr(vAux);
end;
//Função para calcular o digito verificador no módulo 10
function CalculaDigMod10(Campo: String): String;
var
  i : Byte;
  v: String;
begin
  v   := '2';
  vSoma := 0;
  for i := length(campo) downto 1 do
  begin
    dv := IntToStr(StrToInt(Copy(campo,i,1)) * StrToInt(v));
    if StrToInt(dv) >= 10 then
      dv := IntToStr(StrToInt(copy(dv,1,1)) + StrToInt(copy(dv,2,1)));
    vSoma := vSoma + StrToInt(dv);
    if v = '2' then
      v := '1'
    else
      v := '2';
  end;
  //dv := IntToStr(vSoma + 9);
  //dv := IntToStr(StrToInt(dv) div 10);
  dv := IntToStr(vSoma div 10);
  dv := IntToStr(StrToInt(dv) * 10);
  vSoma := vSoma - StrToInt(dv);
  if vSoma = 10 then
    vSoma := 0
  else
    vSoma := 10 - vSoma;
  CalculaDigMod10 := IntToStr(vSoma);
end;

begin
  fatVcto := FormatFloat('0',data - StrToDate('07/10/1997'));
  vlr   := FormatFloat('0',valor * 100);
  for i := 1 to 10 - Length(vlr) do
    vlr := '0' + vlr;

  //vCalc := '7489' + ;

  vCodBarra := '341'; //01 a 03 Identificação do banco
  vCodBarra := vCodBarra + '9'; //04 a 04 Código da moeda
  vCodBarra := vCodBarra + fatVcto; //06 a 09
  vCodBarra := vCodBarra + vlr;   //10 a 19
  vCodBarra := vCodBarra + carteira; //20 a 22 Tipo de carteira
  vCodBarra := vCodBarra + nDoc; //23 a 30 Nosso número
  vCodBarra := vCodBarra + DigNossoNum; //31 a 31 DAC [Agência /Conta/Carteira/Nosso Número
  vCodBarra := vCodBarra + Copy(tBcoItauAGENCIA.AsString,1,4); //32 a 35 Agência
  vCodBarra := vCodBarra + Copy(tBcoItauNUMCONTA.AsString,1,5); //36 a 40 Número da conta
  vCodBarra := vCodBarra + tBcoItauDIGCONTA.AsString; //41 a 41 Digito da conta
  vCodBarra := vCodBarra + '000'; //42 a 44 Zero

  {//Cálcula o digito verificar do campo livre calculado (posição 44 do código de barras)
  //Calculo este digito verificar pegando as 42 posições do código de barras até o momento
  vAux := StrToInt(CalculaDigMod11(vCodBarra));
  if (vAux > 9) or (vAux = 1) then
    vAux := 0;
  vCodBarra := vCodBarra + IntToStr(vAux); //44 a 44 DV do campo livre calculado por módulo 11}

  //Cálcula o digito verificador geral (posição 5 do código de barras)
  vAux := StrToInt(CalculaDigMod11(vCodBarra));
  if (vAux > 9) or (vAux = 0) then
    vAux := 1;
  vCodBarra := copy(vCodBarra,1,4) + IntToStr(vAux) + copy(vCodBarra,5,39);

  //Código de barras
  if tipo = 'B' then //B = código Barra
    result := vCodBarra
  else
  //Linha digitável
  if tipo = 'L' then //L = Linha digitável
  begin
    vCampo1 := '3419' + carteira + copy(nDoc,1,2);
    vCampo1 := vCampo1 + CalculaDigMod10(vCampo1);
    vCampo2 := copy(nDoc,3,6) + DigNossoNum + copy(tBcoItauAGENCIA.AsString,1,3);
    vCampo2 := vCampo2 + CalculaDigMod10(vCampo2);
    vCampo3 := copy(tBcoItauAGENCIA.AsString,4,1) + Copy(tBcoItauNUMCONTA.AsString,1,5) + tBcoItauDIGCONTA.AsString + '000';
    vCampo3 := vCampo3 + CalculaDigMod10(vCampo3);
    vCampo4 := copy(vCodBarra,5,1);
    vCampo5 := FormatFloat('0000',StrToFloat(fatVcto)) + vlr;

    vLinha := copy(vCampo1,1,5) + '.' + copy(vCampo1,6,5) + ' ';
    vLinha := vLinha + copy(vCampo2,1,5) + '.' + copy(vCampo2,6,6) + ' ';
    vLinha := vLinha + copy(vCampo3,1,5) + '.' + copy(vCampo3,6,6) + ' ' + vCampo4 + ' ' + vCampo5;

    result := vLinha;
  end;
end;

function TDm1.Incrementa(Campo, Tabela : String): Integer;
begin
  qInc.Close;
  qInc.SQL.Clear;
	qInc.SQL.Add('Select Max(' + Campo + ') UltCodigo  From ' + Tabela);
  qInc.Open;
	Incrementa := qInc.FieldByName('UltCodigo').AsInteger + 1;
end;

procedure TDm1.tPessoaNewRecord(DataSet: TDataSet);
begin
  tPessoaPESSOA.AsString         := 'F';
  tPessoaVENDEDOR.AsString       := '0';
  tPessoaCLIENTE.AsString        := '0';
  tPessoaFORNECEDOR.AsString     := '0';
  tPessoaTRANSPORTADORA.AsString := '0';
  tPessoaFUNCIONARIO.AsString    := '0';
  tPessoaTIPOCOMISSAO.AsString   := 'N';
  tPessoaSTATUS.AsString         := '1';
  tPessoaDTCADASTRO.AsDateTime   := Date;
end;

procedure TDm1.tProdutoNewRecord(DataSet: TDataSet);
begin
  tProdutoPOSSUITAMANHO.AsString := 'N';
  tProdutoINATIVO.AsString       := 'N';
  tProdutoOPCAOPRECO.AsString    := 'U';
  tProdutoATUALIZAPRECO.AsString := 'N';
  tProdutoDTCADASTRO.AsDateTime  := Now;
  tProdutoDTREAJUSTE.AsDateTime  := Now;
end;

procedure TDm1.tCondPgtoNewRecord(DataSet: TDataSet);
begin
  tCondPgtoPRAZOVISTA.AsString := 'P';
  tCondPgtoENTRADA.AsString    := 'N';
  tCondPgtoFIXARDIA.AsString   := 'N';
end;

procedure TDm1.tCidadeNewRecord(DataSet: TDataSet);
begin
  tParametro.Open;
  tCidadeCODPAIS.AsInteger := tParametroCODPAIS.AsInteger;
end;

procedure TDm1.tNatOperacaoNewRecord(DataSet: TDataSet);
begin
  tNatOperacaoCALCICMS.AsString := 'N';
  tNatOperacaoCALCIPI.AsString  := 'N';
  tNatOperacaoGERADUPL.AsString := 'N';
  tNatOperacaoES.AsString       := 'S';
end;

procedure TDm1.tNotaEntradaNewRecord(DataSet: TDataSet);
begin
  tNotaEntradaINFCONDPGTO.AsString   := 'S';
  tNotaEntradaICMSIPI.AsString       := 'N';
  tNotaEntradaSOMAPRODDUPL.AsString  := 'S';
  tNotaEntradaSOMAMOBRADUPL.AsString := 'S';
  tNotaEntradaBASEICMS.AsFloat       := 0;
  tNotaEntradaVLRICMS.AsFloat        := 0;
  tNotaEntradaBASEIPI.AsFloat        := 0;
  tNotaEntradaVLRIPI.AsFloat         := 0;
  tNotaEntradaVLRTOTAL.AsFloat       := 0;
  tNotaEntradaVLRTOTALMOBRAS.AsFloat := 0;
  tNotaEntradaVLRTOTALITENS.AsFloat  := 0;
end;

procedure TDm1.tNotaEntradaItNewRecord(DataSet: TDataSet);
begin
  tNotaEntradaItNUMNOTA.AsInteger       := tNotaEntradaNUMNOTA.AsInteger;
  tNotaEntradaItCODFORNECEDOR.AsInteger := tNotaEntradaCODFORNECEDOR.AsInteger;
  tNotaEntradaItBAIXAESTOQUE.AsString   := 'S';
end;

procedure TDm1.tNotaEntradaParcNewRecord(DataSet: TDataSet);
begin
  tNotaEntradaParcNUMNOTA.AsInteger       := tNotaEntradaNUMNOTA.AsInteger;
  tNotaEntradaParcCODFORNECEDOR.AsInteger := tNotaEntradaCODFORNECEDOR.AsInteger;
end;

procedure TDm1.tNotaEntradaMObraNewRecord(DataSet: TDataSet);
begin
  tNotaEntradaMObraNUMNOTA.AsInteger       := tNotaEntradaNUMNOTA.AsInteger;
  tNotaEntradaMObraCODFORNECEDOR.AsInteger := tNotaEntradaCODFORNECEDOR.AsInteger;
end;

procedure TDm1.tBancoNewRecord(DataSet: TDataSet);
begin
  tBancoTIPOBANCO.AsString := 'C';
end;

procedure TDm1.tCondPgtoItNewRecord(DataSet: TDataSet);
begin
  tCondPgtoItCODCONDPGTO.AsInteger := tCondPgtoID.AsInteger;
end;

procedure TDm1.tProdutoTamNewRecord(DataSet: TDataSet);
begin
  tProdutoTamCODPRODUTO.AsInteger := tProdutoID.AsInteger; 
end;

procedure TDm1.tMovFinanceiroNewRecord(DataSet: TDataSet);
begin
  tMovFinanceiroVLRENTRADA.AsFloat  := 0;
  tMovFinanceiroVLRSAIDA.AsFloat    := 0;
  tMovFinanceiroTIPOPESSOA.AsString := '';
end;

procedure TDm1.tCPagarParcNewRecord(DataSet: TDataSet);
begin
  tCPagarParcQUITADO.AsString       := 'N';
  tCPagarParcVLRJUROS.AsFloat       := 0;
  tCPagarParcVLRDESCONTO.AsFloat    := 0;
  tCPagarParcVLRPAGTO.AsFloat       := 0;
  tCPagarParcVLRRESTANTE.AsFloat    := 0;
  tCPagarParcVLRDESPESA.AsFloat     := 0;
  tCPagarParcPGCARTORIO.AsString    := 'N';
  tCPagarParcTITPROTESTADO.AsString := 'N';
  tCPagarParcQTDDIASPROT.AsInteger  := 0;
  tCPagarParcDIASATRASO.AsInteger   := 0;
  tCPagarParcJUROSPAGOS.AsFloat     := 0;
  tCPagarParcCANCELADO.AsString     := 'N';
  tCPagarParcVLRDEVOLUCAO.AsFloat   := 0;
end;

procedure TDm1.tCPagarHistNewRecord(DataSet: TDataSet);
begin
  tCPagarHistNUMDUPLICATA.AsInteger  := tCPagarParcNUMDUPLICATA.AsInteger;
  tCPagarHistCODFORNECEDOR.AsInteger := tCPagarParcCODFORNECEDOR.AsInteger;
end;

procedure TDm1.tCReceberHistNewRecord(DataSet: TDataSet);
begin
  tCReceberHistCODCLIENTE.AsInteger := tCReceberParcCODCLIENTE.AsInteger;
  tCReceberHistNUMNOTA.AsInteger    := tCReceberParcNUMNOTA.AsInteger;
end;

procedure TDm1.tPedidoNewRecord(DataSet: TDataSet);
begin
  tPedidoDTPEDIDO.AsDateTime  := Date;
  tPedidoCOPIADO.AsString     := 'N';
  tPedidoSELECIONADO.AsString := 'S';
  tPedidoSITUACAO.AsString    := '1';
  tPedidoTIPO.AsString        := '1';
  tPedidoQTDDIASVALIDADE.AsInteger := 10;
end;

procedure TDm1.ConexaoBeforeConnect(Sender: TObject);
begin
  Conexao.LoadParamsFromIniFile('./dbxconnections.ini')
end;

procedure TDm1.tPedidoItNewRecord(DataSet: TDataSet);
begin
  tPedidoItCOPIADO.AsString     := 'N';
  tPedidoItSELECIONADO.AsString := 'N';
end;

procedure TDm1.tProdutoFotoAfterScroll(DataSet: TDataSet);
begin
  if tProdutoFotoCAMINHO.AsString <> '' then
    fProduto.Image1.Picture.LoadFromFile(tProdutoFotoCAMINHO.AsString);
end;

procedure TDm1.tCReceberParcNewRecord(DataSet: TDataSet);
begin
  tCReceberParcQUITADO.AsString   := 'N';
  tCReceberParcCANCELADO.AsString := 'N';
end;

procedure TDm1.tPedidoCalcFields(DataSet: TDataSet);
begin
  if not tPedidoTIPO.IsNull then
  case tPedidoTIPO.AsInteger of
    1: tPedidoclTipo.AsString := 'Instalação';
    2: tPedidoclTipo.AsString := 'Serviço avulso (evento)';
    3: tPedidoclTipo.AsString := 'Serviço permanente';
    4: tPedidoclTipo.AsString := 'Odem de serviço';
    5: tPedidoclTipo.AsString := 'Reclamação';
  end;
end;

procedure TDm1.Gravar(id: Integer);
begin
  TD.TransactionID  := Id;
  TD.IsolationLevel := xilREADCOMMITTED;
  Conexao.StartTransaction(TD);
end; 

procedure TDm1.tMovAvulsoItensNewRecord(DataSet: TDataSet);
begin
  tMovAvulsoItensCODIGO.Value := tMovAvulsoCODIGO.Value;
end;

procedure TDm1.tMovAvulsoParcNewRecord(DataSet: TDataSet);
begin
  tMovAvulsoParcCODIGO.Value := tMovAvulsoCODIGO.Value;
end;

procedure TDm1.tMovAvulsoNewRecord(DataSet: TDataSet);
begin
  tMovAvulsoDTEMISSAO.Value := Date;
end;

procedure TDm1.PessoaPUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  raise Exception.Create(E.Message);
end;

procedure TDm1.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TDm1.tPrevCentroCustoNewRecord(DataSet: TDataSet);
begin
  tPrevCentroCustoVALOR.AsFloat := 0;
end;

procedure TDm1.tTipoCobrancaCalcFields(DataSet: TDataSet);
begin
  case tTipoCobrancaTIPO.AsInteger of
    0 : tTipoCobrancaclTipo.AsString := 'Boleto';
    1 : tTipoCobrancaclTipo.AsString := 'Recibo';
  end;
end;

procedure TDm1.tTipoCobrancaNewRecord(DataSet: TDataSet);
begin
  tTipoCobrancaTIPO.AsInteger := 1;
end;

procedure TDm1.DataModuleCreate(Sender: TObject);
begin
  ctPessoa := Pessoa.CommandText;
  tEmpresa.Open;
  tPessoa.Close;
  cdsUCTabUsers.Open;
end;

procedure TDm1.tCursoAfterInsert(DataSet: TDataSet);
begin
  //tCursoID.AsInteger := ProximaSequencia('CIDADE');
end;

procedure TDm1.tCursoBeforePost(DataSet: TDataSet);
begin
  //if tCursoNOME.AsString = '' then
  //  raise exception.Create('É obrigatório informar o nome!');
end;

procedure TDm1.tPessoa_CursoBeforePost(DataSet: TDataSet);
begin
 {if tPessoa_CursoDTINICIO.AsDateTime < 1 then
   tPessoa_CursoDTINICIO.Clear;
 if tPessoa_CursoDTFINAL.AsDateTime < 1 then
   tPessoa_CursoDTFINAL.Clear;}
end;

procedure TDm1.tPessoa_CursoAfterInsert(DataSet: TDataSet);
begin
  //tPessoa_CursoPESSOA_ID.AsInteger := tPessoaID.AsInteger;
end;

procedure TDm1.cdsPessoaChaveCalcFields(DataSet: TDataSet);
begin
  if not cdsPessoaChaveTIPO.IsNull then
  begin
    if cdsPessoaChaveTIPO.AsString = 'F1' then
      cdsPessoaChaveclTipo.AsString := 'NFe 1.0'
    else
    if cdsPessoaChaveTIPO.AsString = 'F2' then
      cdsPessoaChaveclTipo.AsString := 'NFe 2.0'
    else
    if cdsPessoaChaveTIPO.AsString = 'F3' then
      cdsPessoaChaveclTipo.AsString := 'NFe 2.1'
    else
    if cdsPessoaChaveTIPO.AsString = 'S1' then
      cdsPessoaChaveclTipo.AsString := 'NFSe 1';
  end;
end;

procedure TDm1.tPessoaCalcFields(DataSet: TDataSet);
var
  vData: String;
begin
  if not(tPessoaDT_LIBERADO.IsNull) and (trim(tPessoaDT_LIBERADO.AsString) <> '') then
  begin
    try
      vData := Decoder1.DecodeString(tPessoaDT_LIBERADO.AsString);
      tPessoaclDtLiberacao.AsString := Decoder1.DecodeString(tPessoaDT_LIBERADO.AsString);
    except
    end;
  end;
end;

end.
