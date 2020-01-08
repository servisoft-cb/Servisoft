object fPrevPessoa: TfPrevPessoa
  Left = 464
  Top = 243
  Width = 408
  Height = 193
  Caption = 'Relat'#243'rio de Pessoas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label41: TLabel
    Left = 10
    Top = 16
    Width = 64
    Height = 13
    Cursor = crHandPoint
    Alignment = taRightJustify
    Caption = 'Centro Custo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 38
    Top = 40
    Width = 36
    Height = 13
    Cursor = crHandPoint
    Alignment = taRightJustify
    Caption = 'Cidade:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object JvDBLookupCombo8: TJvDBLookupCombo
    Left = 78
    Top = 8
    Width = 315
    Height = 21
    DropDownCount = 8
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = Dm1.dsCentroCusto
    TabOrder = 0
  end
  object JvDBLookupCombo1: TJvDBLookupCombo
    Left = 78
    Top = 32
    Width = 315
    Height = 21
    DropDownCount = 8
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = Dm1.dsCidade
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 6
    Top = 60
    Width = 388
    Height = 57
    Caption = 'Tipo'
    TabOrder = 2
    object CheckBox1: TCheckBox
      Left = 16
      Top = 15
      Width = 65
      Height = 17
      Caption = 'Cliente'
      TabOrder = 0
    end
    object CheckBox2: TCheckBox
      Left = 120
      Top = 15
      Width = 105
      Height = 17
      Caption = 'Transportadora'
      TabOrder = 1
    end
    object CheckBox3: TCheckBox
      Left = 16
      Top = 35
      Width = 105
      Height = 17
      Caption = 'Fornecedor'
      TabOrder = 2
    end
    object CheckBox4: TCheckBox
      Left = 120
      Top = 35
      Width = 105
      Height = 17
      Caption = 'Vendedor'
      TabOrder = 3
    end
    object CheckBox5: TCheckBox
      Left = 232
      Top = 35
      Width = 105
      Height = 17
      Caption = 'Funcion'#225'rio'
      TabOrder = 4
    end
  end
  object BitBtn1: TBitBtn
    Left = 120
    Top = 128
    Width = 81
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 203
    Top = 128
    Width = 81
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object Pessoa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT PESSOA.*, CIDADE.NOME NOMECIDADE, CENTROCUSTO.NOME NOMECE' +
        'NTROCUSTO'
      'FROM PESSOA'
      'LEFT JOIN CIDADE'
      ' ON (PESSOA.CIDADE = CIDADE.ID)'
      'LEFT JOIN CENTROCUSTO'
      ' ON (PESSOA.CODCENTROCUSTO = CENTROCUSTO.ID)'
      ' '
      ''
      ' ')
    SQLConnection = Dm1.Conexao
    Left = 184
    Top = 16
  end
  object PessoaP: TDataSetProvider
    DataSet = Pessoa
    Left = 208
    Top = 16
  end
  object qPessoa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PessoaP'
    Left = 232
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
    object qPessoaNOMECIDADE: TStringField
      FieldName = 'NOMECIDADE'
      Size = 30
    end
    object qPessoaNOMECENTROCUSTO: TStringField
      FieldName = 'NOMECENTROCUSTO'
      Size = 30
    end
  end
  object qsPessoa: TDataSource
    DataSet = qPessoa
    Left = 256
    Top = 16
  end
end
