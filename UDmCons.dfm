object DmCons: TDmCons
  OldCreateOrder = False
  Left = 281
  Top = 108
  Height = 420
  Width = 812
  object Pessoa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT PESSOA.*, CIDADE.NOME NOMECIDADE'
      'FROM PESSOA'
      'LEFT JOIN CIDADE ON'
      '(CIDADE.ID = PESSOA.CIDADE)')
    SQLConnection = Dm1.Conexao
    Left = 8
    Top = 16
  end
  object PessoaP: TDataSetProvider
    DataSet = Pessoa
    Left = 24
    Top = 16
  end
  object qPessoa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PessoaP'
    Left = 40
    Top = 16
    object qPessoaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qPessoaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 40
    end
    object qPessoaPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object qPessoaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 18
    end
    object qPessoaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object qPessoaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 25
    end
    object qPessoaCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qPessoaESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object qPessoaFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object qPessoaFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object qPessoaINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 15
    end
    object qPessoaIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
      Size = 10
    end
    object qPessoaESTCIVIL: TStringField
      FieldName = 'ESTCIVIL'
      Size = 12
    end
    object qPessoaPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 25
    end
    object qPessoaNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
    end
    object qPessoaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object qPessoaOBSERVACAO: TBlobField
      FieldName = 'OBSERVACAO'
      Size = 1
    end
    object qPessoaFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      FixedChar = True
      Size = 1
    end
    object qPessoaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      FixedChar = True
      Size = 1
    end
    object qPessoaVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object qPessoaREFPESSOAL1: TStringField
      FieldName = 'REFPESSOAL1'
      Size = 40
    end
    object qPessoaREFPESSOAL2: TStringField
      FieldName = 'REFPESSOAL2'
      Size = 40
    end
    object qPessoaREFPESSOALEND1: TStringField
      FieldName = 'REFPESSOALEND1'
      Size = 40
    end
    object qPessoaREFPESSOALEND2: TStringField
      FieldName = 'REFPESSOALEND2'
      Size = 40
    end
    object qPessoaREFPESSOALFONE1: TStringField
      FieldName = 'REFPESSOALFONE1'
      Size = 15
    end
    object qPessoaREFPESSOALFONE2: TStringField
      FieldName = 'REFPESSOALFONE2'
      Size = 15
    end
    object qPessoaREFCOMERCIAL1: TStringField
      FieldName = 'REFCOMERCIAL1'
      Size = 40
    end
    object qPessoaREFCOMERCIAL2: TStringField
      FieldName = 'REFCOMERCIAL2'
      Size = 40
    end
    object qPessoaREFCOMERCIALEND1: TStringField
      FieldName = 'REFCOMERCIALEND1'
      Size = 40
    end
    object qPessoaREFCOMERCIALEND2: TStringField
      FieldName = 'REFCOMERCIALEND2'
      Size = 40
    end
    object qPessoaREFCOMERCIALFONE1: TStringField
      FieldName = 'REFCOMERCIALFONE1'
      Size = 15
    end
    object qPessoaREFCOMERCIALFONE2: TStringField
      FieldName = 'REFCOMERCIALFONE2'
      Size = 15
    end
    object qPessoaCIDADE: TIntegerField
      FieldName = 'CIDADE'
    end
    object qPessoaTRANSPORTADORA: TStringField
      FieldName = 'TRANSPORTADORA'
      FixedChar = True
      Size = 1
    end
    object qPessoaPERCCOMISSAO: TFloatField
      FieldName = 'PERCCOMISSAO'
    end
    object qPessoaTIPOCOMISSAO: TStringField
      FieldName = 'TIPOCOMISSAO'
      FixedChar = True
      Size = 1
    end
    object qPessoaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object qPessoaDTCONTRATOINI: TDateField
      FieldName = 'DTCONTRATOINI'
    end
    object qPessoaDTCONTRATOFIM: TDateField
      FieldName = 'DTCONTRATOFIM'
    end
    object qPessoaCONTRATODEVOLVIDO: TDateField
      FieldName = 'CONTRATODEVOLVIDO'
    end
    object qPessoaCOBENDERECO: TStringField
      FieldName = 'COBENDERECO'
      Size = 40
    end
    object qPessoaCOBNUMERO: TIntegerField
      FieldName = 'COBNUMERO'
    end
    object qPessoaCOBCOMPLEMENTO: TStringField
      FieldName = 'COBCOMPLEMENTO'
      Size = 10
    end
    object qPessoaCOBBAIRRO: TStringField
      FieldName = 'COBBAIRRO'
      Size = 30
    end
    object qPessoaCOBCIDADE: TIntegerField
      FieldName = 'COBCIDADE'
    end
    object qPessoaCOBUF: TStringField
      FieldName = 'COBUF'
      Size = 2
    end
    object qPessoaCOBCONTATO: TStringField
      FieldName = 'COBCONTATO'
      Size = 30
    end
    object qPessoaENDNUMERO: TIntegerField
      FieldName = 'ENDNUMERO'
    end
    object qPessoaENDCOMPLEMENTO: TStringField
      FieldName = 'ENDCOMPLEMENTO'
      Size = 15
    end
    object qPessoaIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
    end
    object qPessoaCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
    object qPessoaAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 5
    end
    object qPessoaNUMCONTACORRENTE: TStringField
      FieldName = 'NUMCONTACORRENTE'
      Size = 15
    end
    object qPessoaLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 10
    end
    object qPessoaSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object qPessoaDIAPAGAMENTO: TIntegerField
      FieldName = 'DIAPAGAMENTO'
    end
    object qPessoaCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object qPessoaFORMAPGTO: TIntegerField
      FieldName = 'FORMAPGTO'
    end
    object qPessoaNOMECIDADE: TStringField
      FieldName = 'NOMECIDADE'
      Size = 30
    end
    object qPessoaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qPessoaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 50
    end
    object qPessoaSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object qPessoaCONJUGE: TStringField
      FieldName = 'CONJUGE'
      Size = 40
    end
    object qPessoaDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
    end
    object qPessoaCEL: TStringField
      FieldName = 'CEL'
      Size = 15
    end
  end
  object qsPessoa: TDataSource
    DataSet = qPessoa
    Left = 56
    Top = 16
  end
  object Pais: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PAIS'
      '')
    SQLConnection = Dm1.Conexao
    Left = 96
    Top = 16
  end
  object PaisP: TDataSetProvider
    DataSet = Pais
    Left = 112
    Top = 16
  end
  object qPais: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PaisP'
    Left = 128
    Top = 16
    object qPaisID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qPaisNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object qsPais: TDataSource
    DataSet = qPais
    Left = 144
    Top = 16
  end
  object Cidade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT CIDADE.*, PAIS.NOME PAIS'
      'FROM CIDADE'
      'LEFT JOIN PAIS ON'
      '(CIDADE.CODPAIS = PAIS.ID)'
      'ORDER BY CIDADE.NOME')
    SQLConnection = Dm1.Conexao
    Left = 180
    Top = 16
  end
  object CidadeP: TDataSetProvider
    DataSet = Cidade
    Left = 196
    Top = 16
  end
  object qCidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CidadeP'
    Left = 212
    Top = 16
    object qCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object qCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qCidadeCODPAIS: TIntegerField
      FieldName = 'CODPAIS'
    end
    object qCidadePERISSQN: TFloatField
      FieldName = 'PERISSQN'
    end
    object qCidadePAIS: TStringField
      FieldName = 'PAIS'
      Size = 30
    end
  end
  object qsCidade: TDataSource
    DataSet = qCidade
    Left = 228
    Top = 16
  end
  object Grupo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM GRUPO'
      '')
    SQLConnection = Dm1.Conexao
    Left = 267
    Top = 16
  end
  object GrupoP: TDataSetProvider
    DataSet = Grupo
    Left = 283
    Top = 16
  end
  object qGrupo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'GrupoP'
    Left = 299
    Top = 16
    object qGrupoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qGrupoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object qsGrupo: TDataSource
    DataSet = qGrupo
    Left = 315
    Top = 16
  end
  object SitTributaria: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM SITTRIBUTARIA'
      '')
    SQLConnection = Dm1.Conexao
    Left = 352
    Top = 16
  end
  object SitTributariaP: TDataSetProvider
    DataSet = SitTributaria
    Left = 368
    Top = 16
  end
  object qSitTributaria: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SitTributariaP'
    Left = 384
    Top = 16
    object qSitTributariaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qSitTributariaCODSITTRIB: TStringField
      FieldName = 'CODSITTRIB'
      Size = 3
    end
    object qSitTributariaDESCRICAO: TBlobField
      FieldName = 'DESCRICAO'
      Size = 1
    end
    object qSitTributariaPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
      DisplayFormat = '0.00'
    end
  end
  object qsSitTributaria: TDataSource
    DataSet = qSitTributaria
    Left = 400
    Top = 16
  end
  object ClasFiscal: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM CLASFISCAL'
      '')
    SQLConnection = Dm1.Conexao
    Left = 439
    Top = 16
  end
  object ClasFiscalP: TDataSetProvider
    DataSet = ClasFiscal
    Left = 455
    Top = 16
  end
  object qClasFiscal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ClasFiscalP'
    Left = 471
    Top = 16
    object qClasFiscalCODCLASFISCAL: TStringField
      FieldName = 'CODCLASFISCAL'
      Required = True
      Size = 12
    end
    object qClasFiscalCODREDUZIDO: TStringField
      FieldName = 'CODREDUZIDO'
      Size = 3
    end
    object qClasFiscalDESCRICAO: TBlobField
      FieldName = 'DESCRICAO'
      Size = 1
    end
  end
  object qsClasFiscal: TDataSource
    DataSet = qClasFiscal
    Left = 487
    Top = 16
  end
  object NatOperacao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM NATOPERACAO'
      '')
    SQLConnection = Dm1.Conexao
    Left = 526
    Top = 16
  end
  object NatOperacaoP: TDataSetProvider
    DataSet = NatOperacao
    Left = 542
    Top = 16
  end
  object qNatOperacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'NatOperacaoP'
    Left = 558
    Top = 16
    object qNatOperacaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qNatOperacaoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object qNatOperacaoES: TStringField
      FieldName = 'ES'
      FixedChar = True
      Size = 1
    end
    object qNatOperacaoCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 4
    end
    object qNatOperacaoCALCIPI: TStringField
      FieldName = 'CALCIPI'
      FixedChar = True
      Size = 1
    end
    object qNatOperacaoCALCICMS: TStringField
      FieldName = 'CALCICMS'
      FixedChar = True
      Size = 1
    end
    object qNatOperacaoGERADUPL: TStringField
      FieldName = 'GERADUPL'
      FixedChar = True
      Size = 1
    end
    object qNatOperacaoLEI: TBlobField
      FieldName = 'LEI'
      Size = 1
    end
  end
  object qsNatOperacao: TDataSource
    DataSet = qNatOperacao
    Left = 574
    Top = 16
  end
  object Produto: TSQLQuery
    AfterClose = qCPagarParcCalcFields
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PRODUTO'
      'ORDER BY NOME')
    SQLConnection = Dm1.Conexao
    Left = 8
    Top = 64
  end
  object ProdutoP: TDataSetProvider
    DataSet = Produto
    Left = 24
    Top = 64
  end
  object qProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProdutoP'
    Left = 40
    Top = 64
    object qProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object qProdutoCODGRUPO: TIntegerField
      FieldName = 'CODGRUPO'
    end
    object qProdutoALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
    end
    object qProdutoALIQIPI: TFloatField
      FieldName = 'ALIQIPI'
    end
    object qProdutoCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object qProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object qProdutoPOSSUITAMANHO: TStringField
      FieldName = 'POSSUITAMANHO'
      FixedChar = True
      Size = 1
    end
    object qProdutoOPCAOPRECO: TStringField
      FieldName = 'OPCAOPRECO'
      FixedChar = True
      Size = 1
    end
    object qProdutoDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object qProdutoCODSITTRIB: TIntegerField
      FieldName = 'CODSITTRIB'
    end
    object qProdutoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
      DisplayFormat = '0.00'
    end
    object qProdutoPERCMINIMO: TFloatField
      FieldName = 'PERCMINIMO'
    end
    object qProdutoPRECOMINIMO: TFloatField
      FieldName = 'PRECOMINIMO'
    end
    object qProdutoDTREAJUSTE: TDateField
      FieldName = 'DTREAJUSTE'
    end
    object qProdutoCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qProdutoESTMINIMO: TFloatField
      FieldName = 'ESTMINIMO'
    end
    object qProdutoOBS: TBlobField
      FieldName = 'OBS'
      Size = 1
    end
    object qProdutoATUALIZAPRECO: TStringField
      FieldName = 'ATUALIZAPRECO'
      FixedChar = True
      Size = 1
    end
    object qProdutoCLASFISCAL: TStringField
      FieldName = 'CLASFISCAL'
      Size = 12
    end
    object qProdutoPRECOVENDA: TFMTBCDField
      FieldName = 'PRECOVENDA'
      Precision = 15
      Size = 2
    end
  end
  object qsProduto: TDataSource
    DataSet = qProduto
    Left = 56
    Top = 64
  end
  object CondPgto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM CONDPGTO')
    SQLConnection = Dm1.Conexao
    Left = 94
    Top = 112
  end
  object CondPgtoP: TDataSetProvider
    DataSet = CondPgto
    Left = 110
    Top = 113
  end
  object qCondPgto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CondPgtoP'
    Left = 126
    Top = 112
    object qCondPgtoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCondPgtoNOME: TStringField
      FieldName = 'NOME'
    end
    object qCondPgtoPRAZOVISTA: TStringField
      FieldName = 'PRAZOVISTA'
      FixedChar = True
      Size = 1
    end
    object qCondPgtoPERCCUSTO: TFloatField
      FieldName = 'PERCCUSTO'
    end
    object qCondPgtoENTRADA: TStringField
      FieldName = 'ENTRADA'
      FixedChar = True
      Size = 1
    end
    object qCondPgtoPERCJUROS: TFloatField
      FieldName = 'PERCJUROS'
    end
    object qCondPgtoPERCDESCONTO: TFloatField
      FieldName = 'PERCDESCONTO'
      DisplayFormat = '0.00'
    end
    object qCondPgtoFIXARDIA: TStringField
      FieldName = 'FIXARDIA'
      FixedChar = True
      Size = 1
    end
    object qCondPgtoQTDPARCELAS: TIntegerField
      FieldName = 'QTDPARCELAS'
    end
  end
  object qsCondPgto: TDataSource
    DataSet = qCondPgto
    Left = 142
    Top = 112
  end
  object ProdutoTam: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM PRODUTOTAM'
      'WHERE CODPRODUTO = :Codigo'
      'ORDER BY TAMANHO'
      '')
    SQLConnection = Dm1.Conexao
    Left = 262
    Top = 64
  end
  object ProdutoTamP: TDataSetProvider
    DataSet = ProdutoTam
    Left = 278
    Top = 64
  end
  object qProdutoTam: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProdutoTamP'
    Left = 294
    Top = 64
    object qProdutoTamCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object qProdutoTamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 3
    end
    object qProdutoTamPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
      DisplayFormat = '0.00'
    end
    object qProdutoTamPRECOMINIMO: TFloatField
      FieldName = 'PRECOMINIMO'
      DisplayFormat = '0.00'
    end
    object qProdutoTamPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
      DisplayFormat = '0.00'
    end
    object qProdutoTamCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qProdutoTamESTMINIMO: TFloatField
      FieldName = 'ESTMINIMO'
    end
    object qProdutoTamDTREAJUST: TDateField
      FieldName = 'DTREAJUST'
    end
  end
  object qsProdutoTam: TDataSource
    DataSet = qProdutoTam
    Left = 310
    Top = 64
  end
  object NotaEntrada: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'Select NOTAENTRADA.*, PESSOA.NOME, NATOPERACAO.NOME NOMENATOPER,' +
        ' NATOPERACAO.CODIGO CODFISCALNATOPER'
      'from NOTAENTRADA'
      'inner join PESSOA on'
      '(PESSOA.ID = NOTAENTRADA.CODFORNECEDOR)'
      'inner join NATOPERACAO on'
      '(NATOPERACAO.ID = NOTAENTRADA.CODNATOPER)')
    SQLConnection = Dm1.Conexao
    Left = 176
    Top = 64
    object NotaEntradaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
      Required = True
    end
    object NotaEntradaCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object NotaEntradaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object NotaEntradaINFCONDPGTO: TStringField
      FieldName = 'INFCONDPGTO'
      FixedChar = True
      Size = 1
    end
    object NotaEntradaCODNATOPER: TIntegerField
      FieldName = 'CODNATOPER'
    end
    object NotaEntradaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object NotaEntradaDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object NotaEntradaICMSIPI: TStringField
      FieldName = 'ICMSIPI'
      FixedChar = True
      Size = 1
    end
    object NotaEntradaVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
    end
    object NotaEntradaBASEICMS: TFloatField
      FieldName = 'BASEICMS'
    end
    object NotaEntradaVLRICMS: TFloatField
      FieldName = 'VLRICMS'
    end
    object NotaEntradaVLRIPI: TFloatField
      FieldName = 'VLRIPI'
    end
    object NotaEntradaBASEIPI: TFloatField
      FieldName = 'BASEIPI'
    end
    object NotaEntradaVLROUTRASDESP: TFloatField
      FieldName = 'VLROUTRASDESP'
    end
    object NotaEntradaNRODUPLICATA: TIntegerField
      FieldName = 'NRODUPLICATA'
    end
    object NotaEntradaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object NotaEntradaNOMENATOPER: TStringField
      FieldName = 'NOMENATOPER'
      Size = 50
    end
    object NotaEntradaCODFISCALNATOPER: TStringField
      FieldName = 'CODFISCALNATOPER'
      Size = 4
    end
  end
  object NotaEntradaP: TDataSetProvider
    DataSet = NotaEntrada
    Left = 192
    Top = 64
  end
  object qNotaEntrada: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'NotaEntradaP'
    Left = 208
    Top = 64
    object qNotaEntradaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
      Required = True
    end
    object qNotaEntradaCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object qNotaEntradaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object qNotaEntradaINFCONDPGTO: TStringField
      FieldName = 'INFCONDPGTO'
      FixedChar = True
      Size = 1
    end
    object qNotaEntradaCODNATOPER: TIntegerField
      FieldName = 'CODNATOPER'
    end
    object qNotaEntradaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object qNotaEntradaDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object qNotaEntradaICMSIPI: TStringField
      FieldName = 'ICMSIPI'
      FixedChar = True
      Size = 1
    end
    object qNotaEntradaVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
    end
    object qNotaEntradaBASEICMS: TFloatField
      FieldName = 'BASEICMS'
    end
    object qNotaEntradaVLRICMS: TFloatField
      FieldName = 'VLRICMS'
    end
    object qNotaEntradaVLRIPI: TFloatField
      FieldName = 'VLRIPI'
    end
    object qNotaEntradaBASEIPI: TFloatField
      FieldName = 'BASEIPI'
    end
    object qNotaEntradaVLROUTRASDESP: TFloatField
      FieldName = 'VLROUTRASDESP'
    end
    object qNotaEntradaNRODUPLICATA: TIntegerField
      FieldName = 'NRODUPLICATA'
    end
    object qNotaEntradaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qNotaEntradaNOMENATOPER: TStringField
      FieldName = 'NOMENATOPER'
      Size = 50
    end
    object qNotaEntradaCODFISCALNATOPER: TStringField
      FieldName = 'CODFISCALNATOPER'
      Size = 4
    end
  end
  object qsNotaEntrada: TDataSource
    DataSet = qNotaEntrada
    Left = 224
    Top = 64
  end
  object TipoCobranca: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM TIPOCOBRANCA'
      '')
    SQLConnection = Dm1.Conexao
    Left = 347
    Top = 64
  end
  object TipoCobrancaP: TDataSetProvider
    DataSet = TipoCobranca
    Constraints = False
    Left = 363
    Top = 64
  end
  object qTipoCobranca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TipoCobrancaP'
    Left = 379
    Top = 64
    object qTipoCobrancaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qTipoCobrancaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object qTipoCobrancaTIPO: TIntegerField
      FieldName = 'TIPO'
    end
  end
  object qsTipoCobranca: TDataSource
    DataSet = qTipoCobranca
    Left = 395
    Top = 64
  end
  object UF: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM UF')
    SQLConnection = Dm1.Conexao
    Left = 432
    Top = 64
  end
  object UFP: TDataSetProvider
    DataSet = UF
    Left = 448
    Top = 64
  end
  object qUF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UFP'
    Left = 464
    Top = 64
    object qUFUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
    object qUFALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
      DisplayFormat = '0.00'
    end
  end
  object qsUF: TDataSource
    DataSet = qUF
    Left = 480
    Top = 64
  end
  object MaoObra: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ID, NOME, PRECOVENDA'
      'FROM PRODUTO'
      'WHERE TIPO = '#39'S'#39
      'ORDER BY NOME')
    SQLConnection = Dm1.Conexao
    Left = 527
    Top = 64
  end
  object MaoObraP: TDataSetProvider
    DataSet = MaoObra
    Left = 543
    Top = 64
  end
  object qMaoObra: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MaoObraP'
    Left = 559
    Top = 64
    object qMaoObraID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qMaoObraNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qMaoObraPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
      DisplayFormat = '0.00'
    end
  end
  object qsMaoObra: TDataSource
    DataSet = qMaoObra
    Left = 575
    Top = 64
  end
  object Banco: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM BANCO')
    SQLConnection = Dm1.Conexao
    Left = 8
    Top = 112
  end
  object BancoP: TDataSetProvider
    DataSet = Banco
    Left = 24
    Top = 112
  end
  object qBanco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BancoP'
    Left = 40
    Top = 112
    object qBancoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qBancoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qBancoSALDO: TFloatField
      FieldName = 'SALDO'
      DisplayFormat = '###,###,##0.00'
    end
    object qBancoTIPOBANCO: TStringField
      FieldName = 'TIPOBANCO'
      FixedChar = True
      Size = 1
    end
    object qBancoBANCO: TStringField
      FieldName = 'BANCO'
      Size = 4
    end
    object qBancoEMPCLI: TStringField
      FieldName = 'EMPCLI'
      FixedChar = True
      Size = 1
    end
    object qBancoNUMCONTA: TStringField
      FieldName = 'NUMCONTA'
      Size = 10
    end
    object qBancoDIGCONTA: TStringField
      FieldName = 'DIGCONTA'
      FixedChar = True
      Size = 1
    end
    object qBancoAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 6
    end
  end
  object qsBanco: TDataSource
    DataSet = qBanco
    Left = 56
    Top = 112
  end
  object CPagarParc: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'Select CPAGARPARC.*, BANCO.NOME NOMEBANCO, BANCO.TIPOBANCO, PESS' +
        'OA.NOME NOMEFORNECEDOR, CENTROCUSTO.NOME NOMECENTROCUSTO'
      'from CPAGARPARC'
      'left join BANCO on'
      '(BANCO.ID = CPAGARPARC.CODBANCO)'
      'left join PESSOA on'
      '(PESSOA.ID = CPAGARPARC.CODFORNECEDOR)'
      'left join CENTROCUSTO on'
      '(CENTROCUSTO.ID = CPAGARPARC.CODCENTROCUSTO)'
      'order by CPAGARPARC.DTVENCIMENTO'
      '')
    SQLConnection = Dm1.Conexao
    Left = 440
    Top = 112
  end
  object CPagarParcP: TDataSetProvider
    DataSet = CPagarParc
    Left = 456
    Top = 112
  end
  object qCPagarParc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CPagarParcP'
    OnCalcFields = qCPagarParcCalcFields
    Left = 472
    Top = 112
    object qCPagarParcNUMCPAGAR: TIntegerField
      FieldName = 'NUMCPAGAR'
      Required = True
    end
    object qCPagarParcPARCELA: TStringField
      FieldName = 'PARCELA'
      Required = True
      Size = 3
    end
    object qCPagarParcNUMDUPLICATA: TIntegerField
      FieldName = 'NUMDUPLICATA'
    end
    object qCPagarParcVLRVENCIMENTO: TFloatField
      FieldName = 'VLRVENCIMENTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qCPagarParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object qCPagarParcQUITADO: TStringField
      FieldName = 'QUITADO'
      FixedChar = True
      Size = 1
    end
    object qCPagarParcVLRJUROS: TFloatField
      FieldName = 'VLRJUROS'
      DisplayFormat = '###,###,##0.00'
    end
    object qCPagarParcDTPAGTO: TDateField
      FieldName = 'DTPAGTO'
    end
    object qCPagarParcCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object qCPagarParcNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object qCPagarParcVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qCPagarParcVLRPAGTO: TFloatField
      FieldName = 'VLRPAGTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qCPagarParcVLRRESTANTE: TFloatField
      FieldName = 'VLRRESTANTE'
      DisplayFormat = '###,###,##0.00'
    end
    object qCPagarParcCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object qCPagarParcVLRDESPESA: TFloatField
      FieldName = 'VLRDESPESA'
      DisplayFormat = '###,###,##0.00'
    end
    object qCPagarParcCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
    object qCPagarParcPGCARTORIO: TStringField
      FieldName = 'PGCARTORIO'
      FixedChar = True
      Size = 1
    end
    object qCPagarParcTITPROTESTADO: TStringField
      FieldName = 'TITPROTESTADO'
      FixedChar = True
      Size = 1
    end
    object qCPagarParcQTDDIASPROT: TIntegerField
      FieldName = 'QTDDIASPROT'
    end
    object qCPagarParcDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object qCPagarParcDIASATRASO: TIntegerField
      FieldName = 'DIASATRASO'
    end
    object qCPagarParcJUROSPAGOS: TFloatField
      FieldName = 'JUROSPAGOS'
      DisplayFormat = '###,###,##0.00'
    end
    object qCPagarParcCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object qCPagarParcTIPODOC: TStringField
      FieldName = 'TIPODOC'
      Size = 2
    end
    object qCPagarParcVLRDEVOLUCAO: TFloatField
      FieldName = 'VLRDEVOLUCAO'
      DisplayFormat = '###,###,##0.00'
    end
    object qCPagarParcDTRECTO: TDateField
      FieldName = 'DTRECTO'
    end
    object qCPagarParcNOMEBANCO: TStringField
      FieldName = 'NOMEBANCO'
      Size = 40
    end
    object qCPagarParcTIPOBANCO: TStringField
      FieldName = 'TIPOBANCO'
      FixedChar = True
      Size = 1
    end
    object qCPagarParcNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Size = 40
    end
    object qCPagarParcclDiasAtraso: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'clDiasAtraso'
      Calculated = True
    end
    object qCPagarParcCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
    end
    object qCPagarParcDTDEVOLUCAO: TDateField
      FieldName = 'DTDEVOLUCAO'
    end
    object qCPagarParcCODCENTROCUSTO: TIntegerField
      FieldName = 'CODCENTROCUSTO'
    end
    object qCPagarParcNOMECENTROCUSTO: TStringField
      FieldName = 'NOMECENTROCUSTO'
      Size = 30
    end
  end
  object qsCPagarParc: TDataSource
    DataSet = qCPagarParc
    Left = 488
    Top = 112
  end
  object MovFinanceiro: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'Select MOVFINANCEIRO.*, BANCO.NOME, CENTROCUSTO.NOME NOMECENTROC' +
        'USTO'
      'from MOVFINANCEIRO'
      'Left join BANCO on'
      '(BANCO.ID = MOVFINANCEIRO.CODBANCO)'
      'Left join CENTROCUSTO on'
      '(CENTROCUSTO.ID = MOVFINANCEIRO.CODCENTROCUSTO)')
    SQLConnection = Dm1.Conexao
    Left = 8
    Top = 160
  end
  object MovFinanceiroP: TDataSetProvider
    DataSet = MovFinanceiro
    Left = 24
    Top = 160
  end
  object qMovFinanceiro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MovFinanceiroP'
    Left = 40
    Top = 160
    object qMovFinanceiroCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
      Required = True
    end
    object qMovFinanceiroNUMMOVTO: TIntegerField
      FieldName = 'NUMMOVTO'
      Required = True
    end
    object qMovFinanceiroDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object qMovFinanceiroVLRENTRADA: TFloatField
      FieldName = 'VLRENTRADA'
      DisplayFormat = '###,###,##0.00'
    end
    object qMovFinanceiroVLRSAIDA: TFloatField
      FieldName = 'VLRSAIDA'
      DisplayFormat = '###,###,##0.00'
    end
    object qMovFinanceiroHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 100
    end
    object qMovFinanceiroNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 40
    end
    object qMovFinanceiroTIPOMOV: TStringField
      FieldName = 'TIPOMOV'
      Size = 3
    end
    object qMovFinanceiroCODCENTROCUSTO: TIntegerField
      FieldName = 'CODCENTROCUSTO'
    end
    object qMovFinanceiroNOMECENTROCUSTO: TStringField
      FieldName = 'NOMECENTROCUSTO'
      Size = 30
    end
    object qMovFinanceiroTIPOPESSOA: TStringField
      FieldName = 'TIPOPESSOA'
      FixedChar = True
      Size = 1
    end
  end
  object qsMovFinanceiro: TDataSource
    DataSet = qMovFinanceiro
    Left = 56
    Top = 160
  end
  object Recto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select RECTO.*, BANCO.NOME, BANCO.TIPOBANCO'
      'from RECTO'
      'Left join BANCO on'
      '(BANCO.ID = RECTO.CODBANCO)')
    SQLConnection = Dm1.Conexao
    Left = 96
    Top = 160
  end
  object RectoP: TDataSetProvider
    DataSet = Recto
    Left = 112
    Top = 160
  end
  object qRecto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'RectoP'
    Left = 128
    Top = 160
    object qRectoNUMLACTO: TIntegerField
      FieldName = 'NUMLACTO'
      Required = True
    end
    object qRectoCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
    object qRectoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object qRectoVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qRectoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qRectoTIPOBANCO: TStringField
      FieldName = 'TIPOBANCO'
      FixedChar = True
      Size = 1
    end
  end
  object qsRecto: TDataSource
    DataSet = qRecto
    Left = 144
    Top = 160
  end
  object CReceberParc: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select CRECEBERPARC.*, BANCO.NOME NOMEBANCO,'
      ' BANCO.TIPOBANCO, PESSOA.NOME NOMECLIENTE,'
      ' PESSOA.ENDERECO ENDCLIENTE, A.NOME CIDADECLIENTE,'
      
        ' PESSOA.BAIRRO, PESSOA.CEP, CENTROCUSTO.NOME NOMECENTROCUSTO, VE' +
        'ND.NOME NOMEVENDEDOR'
      'from CRECEBERPARC'
      'left join BANCO on'
      '(BANCO.ID = CRECEBERPARC.CODBANCO)'
      'left join PESSOA on'
      '(PESSOA.ID = CRECEBERPARC.CODCLIENTE)'
      'LEFT JOIN CIDADE A'
      'ON (PESSOA.CIDADE = A.ID)'
      'left join CENTROCUSTO on'
      '(CENTROCUSTO.ID = CRECEBERPARC.CODCENTROCUSTO)'
      'left join PESSOA VEND on'
      '(VEND.ID = CRECEBERPARC.CODVENDEDOR)'
      ''
      'order by CRECEBERPARC.DTVENCIMENTO'
      ' '
      ' ')
    SQLConnection = Dm1.Conexao
    Left = 528
    Top = 112
  end
  object CReceberParcP: TDataSetProvider
    DataSet = CReceberParc
    Left = 544
    Top = 112
  end
  object qCReceberParc: TClientDataSet
    Aggregates = <>
    PacketRecords = 16
    Params = <>
    ProviderName = 'CReceberParcP'
    OnCalcFields = qCReceberParcCalcFields
    Left = 560
    Top = 112
    object qCReceberParcNUMCRECEBER: TIntegerField
      FieldName = 'NUMCRECEBER'
      Required = True
    end
    object qCReceberParcPARCELA: TStringField
      FieldName = 'PARCELA'
      Required = True
      Size = 3
    end
    object qCReceberParcVLRVENCIMENTO: TFloatField
      FieldName = 'VLRVENCIMENTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object qCReceberParcQUITADO: TStringField
      FieldName = 'QUITADO'
      FixedChar = True
      Size = 1
    end
    object qCReceberParcJUROSCALC: TFloatField
      FieldName = 'JUROSCALC'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberParcDTPAGTO: TDateField
      FieldName = 'DTPAGTO'
    end
    object qCReceberParcCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object qCReceberParcNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object qCReceberParcVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberParcVLRPAGTO: TFloatField
      FieldName = 'VLRPAGTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberParcVLRRESTANTE: TFloatField
      FieldName = 'VLRRESTANTE'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberParcCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object qCReceberParcPERCCOMISSAO: TFloatField
      FieldName = 'PERCCOMISSAO'
    end
    object qCReceberParcAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 6
    end
    object qCReceberParcTITPORTADOR: TStringField
      FieldName = 'TITPORTADOR'
    end
    object qCReceberParcCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object qCReceberParcVLRDESPESA: TFloatField
      FieldName = 'VLRDESPESA'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberParcCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
    object qCReceberParcPGCARTORIO: TStringField
      FieldName = 'PGCARTORIO'
      FixedChar = True
      Size = 1
    end
    object qCReceberParcTITPROTESTADO: TStringField
      FieldName = 'TITPROTESTADO'
      FixedChar = True
      Size = 1
    end
    object qCReceberParcQTDDIASPROT: TIntegerField
      FieldName = 'QTDDIASPROT'
    end
    object qCReceberParcDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object qCReceberParcDIASATRASO: TIntegerField
      FieldName = 'DIASATRASO'
    end
    object qCReceberParcJUROSPAGOS: TFloatField
      FieldName = 'JUROSPAGOS'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberParcCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object qCReceberParcTIPODOC: TStringField
      FieldName = 'TIPODOC'
      Size = 2
    end
    object qCReceberParcVLRDEVOLUCAO: TFloatField
      FieldName = 'VLRDEVOLUCAO'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberParcNOMEBANCO: TStringField
      FieldName = 'NOMEBANCO'
      Size = 40
    end
    object qCReceberParcTIPOBANCO: TStringField
      FieldName = 'TIPOBANCO'
      FixedChar = True
      Size = 1
    end
    object qCReceberParcNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 40
    end
    object qCReceberParcclDiasAtraso: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'clDiasAtraso'
      Calculated = True
    end
    object qCReceberParcCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
    end
    object qCReceberParcDTDEVOLUCAO: TDateField
      FieldName = 'DTDEVOLUCAO'
    end
    object qCReceberParcENDCLIENTE: TStringField
      FieldName = 'ENDCLIENTE'
      Size = 40
    end
    object qCReceberParcCIDADECLIENTE: TStringField
      FieldName = 'CIDADECLIENTE'
      Size = 30
    end
    object qCReceberParcBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 25
    end
    object qCReceberParcCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qCReceberParcCOBRANCAEMITIDA: TStringField
      FieldName = 'COBRANCAEMITIDA'
      FixedChar = True
      Size = 1
    end
    object qCReceberParcNUMCARTEIRA: TStringField
      FieldName = 'NUMCARTEIRA'
      Size = 3
    end
    object qCReceberParcNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 15
    end
    object qCReceberParcIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      FixedChar = True
      Size = 1
    end
    object qCReceberParcCODCENTROCUSTO: TIntegerField
      FieldName = 'CODCENTROCUSTO'
    end
    object qCReceberParcNOMECENTROCUSTO: TStringField
      FieldName = 'NOMECENTROCUSTO'
      Size = 30
    end
    object qCReceberParcNOMEVENDEDOR: TStringField
      FieldName = 'NOMEVENDEDOR'
      Size = 40
    end
  end
  object qsCReceberParc: TDataSource
    DataSet = qCReceberParc
    Left = 576
    Top = 112
  end
  object Vendedor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PESSOA'
      'WHERE VENDEDOR = '#39'1'#39
      'ORDER BY NOME')
    SQLConnection = Dm1.Conexao
    Left = 612
    Top = 64
  end
  object VendedorP: TDataSetProvider
    DataSet = Vendedor
    Left = 632
    Top = 64
  end
  object qVendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VendedorP'
    Left = 652
    Top = 64
    object qVendedorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qVendedorNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qVendedorFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 40
    end
    object qVendedorPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object qVendedorDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 18
    end
    object qVendedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object qVendedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 25
    end
    object qVendedorCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qVendedorESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object qVendedorFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object qVendedorFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object qVendedorINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 15
    end
    object qVendedorIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
      Size = 10
    end
    object qVendedorESTCIVIL: TStringField
      FieldName = 'ESTCIVIL'
      Size = 12
    end
    object qVendedorPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 25
    end
    object qVendedorNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
    end
    object qVendedorDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object qVendedorOBSERVACAO: TBlobField
      FieldName = 'OBSERVACAO'
      Size = 1
    end
    object qVendedorFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      FixedChar = True
      Size = 1
    end
    object qVendedorCLIENTE: TStringField
      FieldName = 'CLIENTE'
      FixedChar = True
      Size = 1
    end
    object qVendedorVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object qVendedorREFPESSOAL1: TStringField
      FieldName = 'REFPESSOAL1'
      Size = 40
    end
    object qVendedorREFPESSOAL2: TStringField
      FieldName = 'REFPESSOAL2'
      Size = 40
    end
    object qVendedorREFPESSOALEND1: TStringField
      FieldName = 'REFPESSOALEND1'
      Size = 40
    end
    object qVendedorREFPESSOALEND2: TStringField
      FieldName = 'REFPESSOALEND2'
      Size = 40
    end
    object qVendedorREFPESSOALFONE1: TStringField
      FieldName = 'REFPESSOALFONE1'
      Size = 15
    end
    object qVendedorREFPESSOALFONE2: TStringField
      FieldName = 'REFPESSOALFONE2'
      Size = 15
    end
    object qVendedorREFCOMERCIAL1: TStringField
      FieldName = 'REFCOMERCIAL1'
      Size = 40
    end
    object qVendedorREFCOMERCIAL2: TStringField
      FieldName = 'REFCOMERCIAL2'
      Size = 40
    end
    object qVendedorREFCOMERCIALEND1: TStringField
      FieldName = 'REFCOMERCIALEND1'
      Size = 40
    end
    object qVendedorREFCOMERCIALEND2: TStringField
      FieldName = 'REFCOMERCIALEND2'
      Size = 40
    end
    object qVendedorREFCOMERCIALFONE1: TStringField
      FieldName = 'REFCOMERCIALFONE1'
      Size = 15
    end
    object qVendedorREFCOMERCIALFONE2: TStringField
      FieldName = 'REFCOMERCIALFONE2'
      Size = 15
    end
    object qVendedorCIDADE: TIntegerField
      FieldName = 'CIDADE'
    end
    object qVendedorTRANSPORTADORA: TStringField
      FieldName = 'TRANSPORTADORA'
      FixedChar = True
      Size = 1
    end
    object qVendedorPERCCOMISSAO: TFloatField
      FieldName = 'PERCCOMISSAO'
    end
    object qVendedorTIPOCOMISSAO: TStringField
      FieldName = 'TIPOCOMISSAO'
      FixedChar = True
      Size = 1
    end
  end
  object qsVendedor: TDataSource
    DataSet = qVendedor
    Left = 668
    Top = 64
  end
  object Cliente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ID, NOME, EMAIL, PESSOA'
      'FROM PESSOA'
      'WHERE CLIENTE = '#39'1'#39
      'ORDER BY NOME')
    SQLConnection = Dm1.Conexao
    Left = 620
    Top = 111
  end
  object ClienteP: TDataSetProvider
    DataSet = Cliente
    Left = 636
    Top = 111
  end
  object qCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ClienteP'
    Left = 652
    Top = 111
    object qClienteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qClientePESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
  end
  object qsCliente: TDataSource
    DataSet = qCliente
    Left = 668
    Top = 111
  end
  object Fornecedor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ID, NOME, PESSOA'
      'FROM PESSOA'
      'WHERE (FORNECEDOR = '#39'1'#39') or (FUNCIONARIO = '#39'1'#39')'
      'ORDER BY NOME')
    SQLConnection = Dm1.Conexao
    Left = 612
    Top = 16
  end
  object FornecedorP: TDataSetProvider
    DataSet = Fornecedor
    Left = 628
    Top = 16
  end
  object qFornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FornecedorP'
    Left = 644
    Top = 16
    object qFornecedorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qFornecedorNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qFornecedorPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
  end
  object qsFornecedor: TDataSource
    DataSet = qFornecedor
    Left = 660
    Top = 16
  end
  object Pedido: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Tipo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'Select PEDIDO.*, PESSOA.NOME NOMECLIENTE,  NATOPERACAO.CODIGO CO' +
        'DFISCALNATOPER,  CONDPGTO.NOME NOMECONDPGTO'
      'from PEDIDO'
      'inner join PESSOA on'
      '(PESSOA.ID = PEDIDO.CODCLIENTE)'
      'inner join NATOPERACAO on'
      '(NATOPERACAO.ID = PEDIDO.CODNATOPER)'
      'inner join CONDPGTO on'
      '(CONDPGTO.ID = PEDIDO.CODCONDPGTO)'
      'where PEDIDO.TIPO = :Tipo')
    SQLConnection = Dm1.Conexao
    Left = 184
    Top = 160
  end
  object PedidoP: TDataSetProvider
    DataSet = Pedido
    Left = 200
    Top = 161
  end
  object qPedido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PedidoP'
    Left = 216
    Top = 160
    object qPedidoNUMLACTO: TIntegerField
      FieldName = 'NUMLACTO'
      Required = True
    end
    object qPedidoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qPedidoNUMORCAMENTO: TIntegerField
      FieldName = 'NUMORCAMENTO'
    end
    object qPedidoNUMPEDIDO: TIntegerField
      FieldName = 'NUMPEDIDO'
    end
    object qPedidoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object qPedidoDTPEDIDO: TDateField
      FieldName = 'DTPEDIDO'
    end
    object qPedidoDTPREVENTREGA: TDateField
      FieldName = 'DTPREVENTREGA'
    end
    object qPedidoCODNATOPER: TIntegerField
      FieldName = 'CODNATOPER'
    end
    object qPedidoCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
    end
    object qPedidoINFCONDPGTO: TStringField
      FieldName = 'INFCONDPGTO'
      FixedChar = True
      Size = 1
    end
    object qPedidoPERCDESCONTO: TFloatField
      FieldName = 'PERCDESCONTO'
      DisplayFormat = '0.00'
    end
    object qPedidoVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qPedidoCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object qPedidoPERCCOMISSAO: TFloatField
      FieldName = 'PERCCOMISSAO'
      DisplayFormat = '0.00'
    end
    object qPedidoVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qPedidoDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object qPedidoCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object qPedidoMOTIVOCANC: TStringField
      FieldName = 'MOTIVOCANC'
      FixedChar = True
      Size = 1
    end
    object qPedidoNUMORCAMENTOCOP: TIntegerField
      FieldName = 'NUMORCAMENTOCOP'
    end
    object qPedidoNUMPEDCOP: TIntegerField
      FieldName = 'NUMPEDCOP'
    end
    object qPedidoQTDDIASVALIDADE: TIntegerField
      FieldName = 'QTDDIASVALIDADE'
    end
    object qPedidoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 40
    end
    object qPedidoCODFISCALNATOPER: TStringField
      FieldName = 'CODFISCALNATOPER'
      Size = 4
    end
    object qPedidoNOMECONDPGTO: TStringField
      FieldName = 'NOMECONDPGTO'
    end
    object qPedidoCOPIADO: TStringField
      FieldName = 'COPIADO'
      FixedChar = True
      Size = 1
    end
    object qPedidoSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object qPedidoPEDIDOCLIENTE: TIntegerField
      FieldName = 'PEDIDOCLIENTE'
    end
    object qPedidoOBSERVACAO: TBlobField
      FieldName = 'OBSERVACAO'
      Size = 1
    end
    object qPedidoNOMECLIENTE_1: TStringField
      FieldName = 'NOMECLIENTE_1'
      Size = 40
    end
  end
  object qsPedido: TDataSource
    DataSet = qPedido
    Left = 232
    Top = 160
  end
  object qsPedidoImp: TDataSource
    DataSet = qPedidoImp
    Left = 316
    Top = 161
  end
  object qPedidoImp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PedidoImpP'
    Left = 300
    Top = 161
    object qPedidoImpNUMPEDIDO: TIntegerField
      FieldName = 'NUMPEDIDO'
    end
    object qPedidoImpDTPEDIDO: TDateField
      FieldName = 'DTPEDIDO'
    end
    object qPedidoImpVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
      DisplayFormat = '0.00'
    end
    object qPedidoImpPERCDESCONTO: TFloatField
      FieldName = 'PERCDESCONTO'
      DisplayFormat = '0.00'
    end
    object qPedidoImpVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
      DisplayFormat = '0.00'
    end
    object qPedidoImpCONDPGTO: TStringField
      FieldName = 'CONDPGTO'
    end
    object qPedidoImpENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object qPedidoImpDTPREVENTREGA: TDateField
      FieldName = 'DTPREVENTREGA'
    end
    object qPedidoImpDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 18
    end
    object qPedidoImpINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 15
    end
    object qPedidoImpBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 25
    end
    object qPedidoImpCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qPedidoImpESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object qPedidoImpFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object qPedidoImpFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object qPedidoImpCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object qPedidoImpNUMLACTO: TIntegerField
      FieldName = 'NUMLACTO'
      Required = True
    end
    object qPedidoImpNUMORCAMENTO: TIntegerField
      FieldName = 'NUMORCAMENTO'
    end
    object qPedidoImpCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 40
    end
    object qPedidoImpVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 40
    end
    object qPedidoImpPEDIDOCLIENTE: TIntegerField
      FieldName = 'PEDIDOCLIENTE'
    end
    object qPedidoImpOBSERVACAO: TBlobField
      FieldName = 'OBSERVACAO'
      Size = 1
    end
  end
  object PedidoImpP: TDataSetProvider
    DataSet = PedidoImp
    Left = 285
    Top = 161
  end
  object PedidoImp: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'C1'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select Pedido.NumPedido, Pedido.DtPrevEntrega,Pedido.DtPedido, P' +
        'edido.NumLacto,'
      
        'Pedido.VlrDesconto, Pedido.PercDesconto, Pedido.vlrtotal, Pedido' +
        '.NumOrcamento,'
      
        'CondPgto.nome CondPgto, A.nome Cliente, A.endereco, Pedido.Pedid' +
        'oCliente, Pedido.Observacao,'
      'A.documento, A.inscestadual, A.bairro, B.Nome Vendedor,'
      'A.cep, A.estado, A.fone, A.fax, Cidade.Nome Cidade'
      'from pedido'
      'Left Join CondPgto on'
      '(Pedido.codcondpgto = CondPgto.id)'
      'Inner Join pessoa A on'
      '(Pedido.codcliente = A.id)'
      'Left Join pessoa B on'
      '(Pedido.codVendedor = B.id)'
      'Inner Join cidade on'
      '(A.cidade = cidade.id)'
      'WHERE (Pedido.NumPedido = :C1) and (Pedido.Tipo = '#39'P'#39')')
    SQLConnection = Dm1.Conexao
    Left = 270
    Top = 161
  end
  object Juros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM JUROS'
      '')
    SQLConnection = Dm1.Conexao
    Left = 180
    Top = 112
  end
  object JurosP: TDataSetProvider
    DataSet = Juros
    Left = 196
    Top = 112
  end
  object qJuros: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'JurosP'
    Left = 213
    Top = 112
    object qJurosANO: TIntegerField
      FieldName = 'ANO'
      Required = True
    end
    object qJurosMES: TIntegerField
      FieldName = 'MES'
      Required = True
    end
    object qJurosJURO: TFloatField
      FieldName = 'JURO'
      DisplayFormat = '0.000'
    end
  end
  object qsJuros: TDataSource
    DataSet = qJuros
    Left = 228
    Top = 112
  end
  object qsDctoEstoque: TDataSource
    DataSet = qDctoEstoque
    Left = 399
    Top = 161
  end
  object qDctoEstoque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DctoEstoqueP'
    Left = 383
    Top = 161
    object qDctoEstoqueNUMDOCTO: TIntegerField
      FieldName = 'NUMDOCTO'
      Required = True
    end
    object qDctoEstoqueDTMOV: TDateField
      FieldName = 'DTMOV'
    end
    object qDctoEstoqueES: TStringField
      FieldName = 'ES'
      FixedChar = True
      Size = 1
    end
    object qDctoEstoqueMOTIVO: TStringField
      FieldName = 'MOTIVO'
    end
    object qDctoEstoqueVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object DctoEstoqueP: TDataSetProvider
    DataSet = DctoEstoque
    Left = 368
    Top = 161
  end
  object DctoEstoque: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * '
      'from DOCESTOQUE')
    SQLConnection = Dm1.Conexao
    Left = 353
    Top = 161
  end
  object qsPlanoSaude: TDataSource
    DataSet = qPlanoSaude
    Left = 487
    Top = 161
  end
  object qPlanoSaude: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pPlanoSaude'
    Left = 471
    Top = 161
    object qPlanoSaudeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qPlanoSaudeNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object pPlanoSaude: TDataSetProvider
    DataSet = PlanoSaude
    Left = 456
    Top = 161
  end
  object PlanoSaude: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ID, NOME FROM PLANOSAUDE'
      'ORDER BY NOME')
    SQLConnection = Dm1.Conexao
    Left = 441
    Top = 161
  end
  object qsMovAvulso: TDataSource
    DataSet = qMovAvulso
    Left = 567
    Top = 161
  end
  object qMovAvulso: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MovAvulsoP'
    Left = 551
    Top = 161
    object qMovAvulsoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qMovAvulsoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object qMovAvulsoVLRTOTAL: TFMTBCDField
      FieldName = 'VLRTOTAL'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object qMovAvulsoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 40
    end
    object qMovAvulsoVLRTOTALITENS: TFMTBCDField
      FieldName = 'VLRTOTALITENS'
      Precision = 15
      Size = 2
    end
    object qMovAvulsoCONDPGTO: TIntegerField
      FieldName = 'CONDPGTO'
    end
    object qMovAvulsoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
  end
  object MovAvulsoP: TDataSetProvider
    DataSet = MovAvulso
    Left = 536
    Top = 161
  end
  object MovAvulso: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MOVAVULSO.*, PESSOA.NOME NOMECLIENTE'
      'FROM MOVAVULSO '
      'INNER JOIN PESSOA ON'
      'MOVAVULSO.CODCLIENTE = PESSOA.ID'
      'ORDER BY NOME')
    SQLConnection = Dm1.Conexao
    Left = 521
    Top = 161
  end
  object CentroCusto: TSQLQuery
    NoMetaData = False
    GetMetadata = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM CENTROCUSTO'
      'ORDER BY NOME')
    SQLConnection = Dm1.Conexao
    Left = 368
    Top = 224
  end
  object CentroCustoP: TDataSetProvider
    DataSet = CentroCusto
    Left = 392
    Top = 224
  end
  object qCentroCusto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CentroCustoP'
    Left = 416
    Top = 224
    object qCentroCustoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCentroCustoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object qsCentroCusto: TDataSource
    DataSet = qCentroCusto
    Left = 440
    Top = 224
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 584
    Top = 224
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 616
    Top = 224
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 648
    Top = 224
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 680
    Top = 224
  end
  object RLPreviewSetup1: TRLPreviewSetup
    Left = 544
    Top = 224
  end
  object RLDraftFilter1: TRLDraftFilter
    Left = 512
    Top = 224
  end
  object Modulo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM MODULO'
      '')
    SQLConnection = Dm1.Conexao
    Left = 268
    Top = 112
  end
  object pModulo: TDataSetProvider
    DataSet = Modulo
    Left = 284
    Top = 112
  end
  object qModulo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pModulo'
    Left = 301
    Top = 112
    object qModuloID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qModuloNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qModuloTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 10
    end
  end
  object dsModulo: TDataSource
    DataSet = qModulo
    Left = 316
    Top = 112
  end
  object sdsPessoaHist: TSQLDataSet
    CommandText = 
      'SELECT PH.*, P.NOME'#13#10'FROM PESSOA_HIST PH'#13#10'INNER JOIN PESSOA P ON' +
      ' (PH.PESSOA_ID = P.ID)'#13#10'WHERE CONCLUIDO = '#39'N'#39#13#10'AND (USUARIO_RESP' +
      ' IS NULL OR USUARIO_RESP = :U1)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'U1'
        ParamType = ptInput
      end>
    SQLConnection = Dm1.Conexao
    Left = 16
    Top = 224
  end
  object dspPessoaHist: TDataSetProvider
    DataSet = sdsPessoaHist
    Left = 32
    Top = 224
  end
  object cdsPessoaHist: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoaHist'
    Left = 48
    Top = 224
    object cdsPessoaHistID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPessoaHistPESSOA_ID: TIntegerField
      FieldName = 'PESSOA_ID'
    end
    object cdsPessoaHistDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsPessoaHistHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 200
    end
    object cdsPessoaHistDATA_AGENDA: TDateField
      FieldName = 'DATA_AGENDA'
    end
    object cdsPessoaHistNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsPessoaHistUSUARIO_RESP: TStringField
      FieldName = 'USUARIO_RESP'
    end
    object cdsPessoaHistCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
  end
  object dsPessoaHist: TDataSource
    DataSet = cdsPessoaHist
    Left = 64
    Top = 224
  end
end
