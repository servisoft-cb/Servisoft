object fGeraMovMensal: TfGeraMovMensal
  Left = 189
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gera Movimento mensal'
  ClientHeight = 181
  ClientWidth = 421
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 19
    Top = 12
    Width = 54
    Height = 13
    Alignment = taRightJustify
    Caption = 'M'#234's Venc.:'
  end
  object Label4: TLabel
    Left = 54
    Top = 37
    Width = 19
    Height = 13
    Caption = 'Dia:'
  end
  object Label3: TLabel
    Left = 51
    Top = 60
    Width = 22
    Height = 13
    Caption = 'Ano:'
  end
  object Label7: TLabel
    Left = 2
    Top = 84
    Width = 68
    Height = 13
    Caption = 'Data Emiss'#227'o:'
  end
  object Label1: TLabel
    Left = 2
    Top = 160
    Width = 44
    Height = 13
    Caption = 'Gerando:'
  end
  object ComboBox1: TComboBox
    Left = 75
    Top = 4
    Width = 136
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Items.Strings = (
      'JANEIRO'
      'FEVEREIRO'
      'MAR'#199'O'
      'ABRIL'
      'MAIO'
      'JUNHO'
      'JULHO'
      'AGOSTO'
      'SETEMBRO'
      'OUTUBRO'
      'NOVEMBRO'
      'DEZEMBRO')
  end
  object JvIntegerEdit1: TJvIntegerEdit
    Left = 75
    Top = 29
    Width = 52
    Height = 21
    Alignment = taRightJustify
    ReadOnly = False
    TabOrder = 1
    Value = 0
    MaxValue = 0
    MinValue = 0
    HasMaxValue = False
    HasMinValue = False
  end
  object JvYearEdit1: TJvYearEdit
    Left = 75
    Top = 52
    Width = 50
    Height = 21
    Alignment = taRightJustify
    ReadOnly = False
    TabOrder = 2
    Value = 2007
    MaxValue = 9999
    MinValue = 0
    HasMaxValue = True
    HasMinValue = True
    WindowsillYear = 71
  end
  object JvDateEdit1: TJvDateEdit
    Left = 75
    Top = 76
    Width = 95
    Height = 21
    ButtonFlat = False
    NumGlyphs = 2
    TabOrder = 3
  end
  object Panel1: TPanel
    Left = 66
    Top = 107
    Width = 291
    Height = 42
    TabOrder = 4
    object BitBtn1: TBitBtn
      Left = 7
      Top = 8
      Width = 138
      Height = 25
      Caption = 'Gerar Mov.Financeiro'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 146
      Top = 8
      Width = 138
      Height = 25
      Caption = 'Recibos'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object ProgressBar1: TProgressBar
    Left = 50
    Top = 159
    Width = 351
    Height = 16
    TabOrder = 5
  end
  object Pessoa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'F1'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM PESSOA'
      'WHERE (DIAPAGAMENTO = :F1)  AND (CLIENTE = '#39'1'#39') '
      '      AND (STATUS = '#39'1'#39') AND (VLRPGTO > 0)'
      '          ')
    SQLConnection = Dm1.Conexao
    Left = 336
    Top = 56
  end
  object PessoaP: TDataSetProvider
    DataSet = Pessoa
    Left = 352
    Top = 56
  end
  object qPessoa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PessoaP'
    Left = 368
    Top = 56
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
    object qPessoaOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
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
    object qPessoaPLANOSAUDE_ID: TIntegerField
      FieldName = 'PLANOSAUDE_ID'
    end
    object qPessoaCOBCEP: TStringField
      FieldName = 'COBCEP'
      Size = 10
    end
    object qPessoaVLRPGTO: TFloatField
      FieldName = 'VLRPGTO'
    end
    object qPessoaNUMCARTEIRA: TStringField
      FieldName = 'NUMCARTEIRA'
      Size = 3
    end
    object qPessoaFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      FixedChar = True
      Size = 1
    end
    object qPessoaCODCENTROCUSTO: TIntegerField
      FieldName = 'CODCENTROCUSTO'
    end
    object qPessoaCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
  end
  object dsPessoa: TDataSource
    DataSet = qPessoa
    Left = 384
    Top = 56
  end
  object CReceberParc: TSQLDataSet
    CommandText = 
      'select * '#13#10'from CRECEBERPARC'#13#10'where CODCLIENTE = :C1 AND DTVENCI' +
      'MENTO = :D1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'C1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'D1'
        ParamType = ptInput
      end>
    SQLConnection = Dm1.Conexao
    Left = 256
    Top = 48
  end
  object CReceberParcP: TDataSetProvider
    DataSet = CReceberParc
    Left = 272
    Top = 48
  end
  object tCReceberParc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CReceberParcP'
    Left = 288
    Top = 48
    object tCReceberParcNUMCRECEBER: TIntegerField
      FieldName = 'NUMCRECEBER'
      Required = True
    end
    object tCReceberParcPARCELA: TStringField
      FieldName = 'PARCELA'
      Required = True
      Size = 3
    end
    object tCReceberParcVLRVENCIMENTO: TFloatField
      FieldName = 'VLRVENCIMENTO'
    end
    object tCReceberParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object tCReceberParcQUITADO: TStringField
      FieldName = 'QUITADO'
      FixedChar = True
      Size = 1
    end
    object tCReceberParcJUROSCALC: TFloatField
      FieldName = 'JUROSCALC'
    end
    object tCReceberParcDTPAGTO: TDateField
      FieldName = 'DTPAGTO'
    end
    object tCReceberParcCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object tCReceberParcNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object tCReceberParcVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
    end
    object tCReceberParcVLRPAGTO: TFloatField
      FieldName = 'VLRPAGTO'
    end
    object tCReceberParcVLRRESTANTE: TFloatField
      FieldName = 'VLRRESTANTE'
    end
    object tCReceberParcCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object tCReceberParcPERCCOMISSAO: TFloatField
      FieldName = 'PERCCOMISSAO'
    end
    object tCReceberParcAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 6
    end
    object tCReceberParcTITPORTADOR: TStringField
      FieldName = 'TITPORTADOR'
    end
    object tCReceberParcCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object tCReceberParcVLRDESPESA: TFloatField
      FieldName = 'VLRDESPESA'
    end
    object tCReceberParcCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
    object tCReceberParcPGCARTORIO: TStringField
      FieldName = 'PGCARTORIO'
      FixedChar = True
      Size = 1
    end
    object tCReceberParcTITPROTESTADO: TStringField
      FieldName = 'TITPROTESTADO'
      FixedChar = True
      Size = 1
    end
    object tCReceberParcQTDDIASPROT: TIntegerField
      FieldName = 'QTDDIASPROT'
    end
    object tCReceberParcDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object tCReceberParcDIASATRASO: TIntegerField
      FieldName = 'DIASATRASO'
    end
    object tCReceberParcJUROSPAGOS: TFloatField
      FieldName = 'JUROSPAGOS'
    end
    object tCReceberParcCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object tCReceberParcTIPODOC: TStringField
      FieldName = 'TIPODOC'
      Size = 2
    end
    object tCReceberParcVLRDEVOLUCAO: TFloatField
      FieldName = 'VLRDEVOLUCAO'
    end
    object tCReceberParcCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
    end
    object tCReceberParcDTDEVOLUCAO: TDateField
      FieldName = 'DTDEVOLUCAO'
    end
    object tCReceberParcCOBRANCAEMITIDA: TStringField
      FieldName = 'COBRANCAEMITIDA'
      FixedChar = True
      Size = 1
    end
    object tCReceberParcNUMCARTEIRA: TStringField
      FieldName = 'NUMCARTEIRA'
      Size = 3
    end
    object tCReceberParcNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 15
    end
    object tCReceberParcIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      FixedChar = True
      Size = 1
    end
    object tCReceberParcCODCENTROCUSTO: TIntegerField
      FieldName = 'CODCENTROCUSTO'
    end
  end
  object MovAvulsoParc: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Mes'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Ano'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODCLIENTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT SUM(MOVAVULSOPARC.VALOR) VALOR, MOVAVULSOPARC.DTVENC'
      'FROM MOVAVULSO'
      'INNER JOIN "MOVAVULSOPARC"'
      '  ON (MOVAVULSOPARC.CODIGO = MOVAVULSO.CODIGO)'
      'WHERE (EXTRACT(MONTH FROM DTVENC) = :Mes)'
      '  AND (EXTRACT(YEAR FROM DTVENC) = :Ano)'
      '  AND (CODCLIENTE = :CODCLIENTE)'
      'GROUP BY MOVAVULSOPARC.DTVENC'
      '')
    SQLConnection = Dm1.Conexao
    Left = 336
    Top = 96
  end
  object MovAvulsoParcP: TDataSetProvider
    DataSet = MovAvulsoParc
    Left = 352
    Top = 96
  end
  object qMovAvulsoParc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MovAvulsoParcP'
    Left = 368
    Top = 96
    object qMovAvulsoParcVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object qMovAvulsoParcDTVENC: TDateField
      FieldName = 'DTVENC'
    end
  end
  object MovAvulsoItens: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Mes'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Ano'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODCLIENTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT DISTINCT MOVAVULSOITENS.DESCRICAO'
      'FROM MOVAVULSO'
      'INNER JOIN "MOVAVULSOPARC"'
      '  ON (MOVAVULSOPARC.CODIGO = MOVAVULSO.CODIGO)'
      'INNER JOIN "MOVAVULSOITENS"'
      '  ON (MOVAVULSOITENS.CODIGO = MOVAVULSO.CODIGO)'
      'WHERE (EXTRACT(MONTH FROM DTVENC) = :Mes)'
      '  AND (EXTRACT(YEAR FROM DTVENC) = :Ano)'
      '  AND (CODCLIENTE = :CODCLIENTE)'
      ''
      ' ')
    SQLConnection = Dm1.Conexao
    Left = 336
    Top = 128
  end
  object MovAvulsoItensP: TDataSetProvider
    DataSet = MovAvulsoItens
    Left = 352
    Top = 128
  end
  object qMovAvulsoItens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MovAvulsoItensP'
    Left = 368
    Top = 128
    object qMovAvulsoItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
  end
  object ServicoExtra: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PESSOA_ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT VALOR, PESSOA_ID, ID, DESCRICAO'
      'FROM PESSOA_SERVICOEXTRA'
      'WHERE (PESSOA_ID = :PESSOA_ID) AND'
      '      (GERADO = '#39'N'#39')'
      ''
      ''
      ' ')
    SQLConnection = Dm1.Conexao
    Left = 344
    Top = 8
  end
  object ServicoExtraP: TDataSetProvider
    DataSet = ServicoExtra
    Left = 360
    Top = 8
  end
  object qServicoExtra: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ServicoExtraP'
    Left = 376
    Top = 8
    object qServicoExtraPESSOA_ID: TIntegerField
      FieldName = 'PESSOA_ID'
      Required = True
    end
    object qServicoExtraID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qServicoExtraDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object qServicoExtraVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
  end
end
