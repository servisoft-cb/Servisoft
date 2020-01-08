object fPrevBoleto2: TfPrevBoleto2
  Left = 340
  Top = 122
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Emiss'#227'o dos boletos do Ita'#250
  ClientHeight = 507
  ClientWidth = 788
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
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 75
    Height = 13
    Caption = 'Dt.Vecto.Inicial:'
  end
  object Label2: TLabel
    Left = 240
    Top = 16
    Width = 70
    Height = 13
    Caption = 'Dt.Vecto.Final:'
  end
  object Label3: TLabel
    Left = 64
    Top = 40
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object Label4: TLabel
    Left = 21
    Top = 62
    Width = 78
    Height = 13
    Caption = 'Tipo de Carteira:'
  end
  object Bevel1: TBevel
    Left = 0
    Top = 82
    Width = 786
    Height = 2
    Shape = bsTopLine
  end
  object JvDateEdit1: TJvDateEdit
    Left = 101
    Top = 8
    Width = 95
    Height = 21
    ButtonFlat = False
    NumGlyphs = 2
    TabOrder = 0
  end
  object JvDateEdit2: TJvDateEdit
    Left = 312
    Top = 8
    Width = 95
    Height = 21
    ButtonFlat = False
    NumGlyphs = 2
    TabOrder = 1
  end
  object JvDBLookupCombo1: TJvDBLookupCombo
    Left = 101
    Top = 32
    Width = 327
    Height = 21
    DropDownCount = 8
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = DmCons.qsPessoa
    TabOrder = 2
  end
  object JvDBComboBox1: TJvDBComboBox
    Left = 101
    Top = 55
    Width = 326
    Height = 21
    Style = csDropDownList
    DataField = 'NUMCARTEIRA'
    DataSource = Dm1.dsBcoItau
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      '112  ESCRITURAL ELETR'#212'NICA - simples / contratual'
      '109  DIRETA ELETR'#212'NICA SEM EMISS'#195'O - SIMPLES'
      '175  SEM REGISTRO SEM EMISS'#195'O')
    TabOrder = 3
    Values.Strings = (
      '112'
      '109'
      '175')
  end
  object BitBtn1: TBitBtn
    Left = 512
    Top = 3
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 512
    Top = 28
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 5
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 512
    Top = 53
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 6
    OnClick = BitBtn3Click
  end
  object SMDBGrid1: TSMDBGrid
    Left = 1
    Top = 96
    Width = 783
    Height = 409
    DataSource = dsParcelas
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoBooleanAsCheckBox, eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    OnChangeSelection = SMDBGrid1ChangeSelection
    WidthOfIndicator = 23
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 25
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'NOMECLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Cliente'
        Width = 212
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMNOTA'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Nota'
        Width = 46
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMCARTEIRA'
        Title.Alignment = taCenter
        Title.Caption = 'CARTEIRA'
        Width = 62
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NOSSONUMERO'
        Title.Alignment = taCenter
        Title.Caption = 'Nosso N'#250'mero'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMCRECEBER'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Movimento'
        Width = 57
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PARCELA'
        Title.Alignment = taCenter
        Title.Caption = 'Parcela'
        Width = 45
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTVENCIMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Vencimento'
        Width = 73
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLRRESTANTE'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Duplicata'
        Width = 72
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTMOVIMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Emiss'#227'o'
        Width = 65
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TIPODOC'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo Doc.'
        Width = 34
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DOCUMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'CNPJ/CPF '
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INSCESTADUAL'
        Title.Alignment = taCenter
        Title.Caption = 'Insc.Estadual'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Title.Alignment = taCenter
        Title.Caption = 'Endere'#231'o'
        Width = 198
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDNUMERO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' End.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Title.Alignment = taCenter
        Title.Caption = 'Bairro'
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Title.Alignment = taCenter
        Title.Caption = 'Cep'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECIDADE'
        Title.Alignment = taCenter
        Title.Caption = 'Cidade'
        Width = 164
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTADO'
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Width = 36
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COBENDERECO'
        Title.Alignment = taCenter
        Title.Caption = 'End. Cobran'#231'a'
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COBNUMERO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' End.Cob.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COBBAIRRO'
        Title.Alignment = taCenter
        Title.Caption = 'Bairro Cobran'#231'a'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COBUF'
        Title.Alignment = taCenter
        Title.Caption = 'UF Cobran'#231'a'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECIDADECOB'
        Title.Alignment = taCenter
        Title.Caption = 'Cidade Cobran'#231'a'
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COBCEP'
        Title.Alignment = taCenter
        Title.Caption = 'Cep Cob'
        Visible = True
      end>
  end
  object RzBitBtn1: TRzBitBtn
    Left = 688
    Top = 45
    Height = 33
    Caption = 'Selecionar todos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = RzBitBtn1Click
  end
  object Parcelas: TSQLDataSet
    CommandText = 
      'SELECT A.NUMCRECEBER, A.PARCELA, A.DTVENCIMENTO, A.CODCLIENTE, A' +
      '.NUMNOTA, A.VLRRESTANTE, A.CODTIPOCOBRANCA, A.CODBANCO, A.DTMOVI' +
      'MENTO, A.TIPODOC, B.NOME NOMECLIENTE, B.DOCUMENTO, B.ENDERECO, B' +
      '.BAIRRO, B.CEP, B.ESTADO, B.INSCESTADUAL, B.COBENDERECO, B.COBNU' +
      'MERO, B.COBBAIRRO, B.COBUF, B.ENDNUMERO, C.NOME NOMECIDADE, D.NO' +
      'ME NOMECIDADECOB, B.COBCEP, A.COBRANCAEMITIDA, B.PESSOA, A.NUMCA' +
      'RTEIRA, A.NOSSONUMERO, A.IMPRIMIR'#13#10'FROM CRECEBERPARC A'#13#10'INNER JO' +
      'IN PESSOA B'#13#10'ON (A.CODCLIENTE = B.ID)'#13#10'FULL JOIN CIDADE C'#13#10'ON (B' +
      '.CIDADE = C.ID)'#13#10'FULL JOIN CIDADE D'#13#10'ON (B.COBCIDADE = C.ID)'#13#10'WH' +
      'ERE (A.VLRRESTANTE > 0) '#13#10'ORDER BY B.NOME, A.DTVENCIMENTO'#13#10#13#10'  '#13 +
      #10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 88
    Top = 353
    object ParcelasNUMCRECEBER: TIntegerField
      FieldName = 'NUMCRECEBER'
    end
    object ParcelasPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 3
    end
    object ParcelasDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object ParcelasCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object ParcelasNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object ParcelasVLRRESTANTE: TFloatField
      FieldName = 'VLRRESTANTE'
    end
    object ParcelasCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object ParcelasCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
    object ParcelasDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object ParcelasTIPODOC: TStringField
      FieldName = 'TIPODOC'
      Size = 2
    end
    object ParcelasNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 40
    end
    object ParcelasDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      ProviderFlags = []
      Size = 18
    end
    object ParcelasENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = []
      Size = 40
    end
    object ParcelasBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = []
      Size = 25
    end
    object ParcelasCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = []
      Size = 9
    end
    object ParcelasESTADO: TStringField
      FieldName = 'ESTADO'
      ProviderFlags = []
      Size = 2
    end
    object ParcelasINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = []
      Size = 15
    end
    object ParcelasCOBENDERECO: TStringField
      FieldName = 'COBENDERECO'
      ProviderFlags = []
      Size = 40
    end
    object ParcelasCOBNUMERO: TIntegerField
      FieldName = 'COBNUMERO'
      ProviderFlags = []
    end
    object ParcelasCOBBAIRRO: TStringField
      FieldName = 'COBBAIRRO'
      ProviderFlags = []
      Size = 30
    end
    object ParcelasCOBUF: TStringField
      FieldName = 'COBUF'
      ProviderFlags = []
      Size = 2
    end
    object ParcelasENDNUMERO: TIntegerField
      FieldName = 'ENDNUMERO'
      ProviderFlags = []
    end
    object ParcelasNOMECIDADE: TStringField
      FieldName = 'NOMECIDADE'
      ProviderFlags = []
      Size = 30
    end
    object ParcelasNOMECIDADECOB: TStringField
      FieldName = 'NOMECIDADECOB'
      ProviderFlags = []
      Size = 30
    end
    object ParcelasCOBCEP: TStringField
      FieldName = 'COBCEP'
      ProviderFlags = []
      Size = 10
    end
    object ParcelasCOBRANCAEMITIDA: TStringField
      FieldName = 'COBRANCAEMITIDA'
      FixedChar = True
      Size = 1
    end
    object ParcelasPESSOA: TStringField
      FieldName = 'PESSOA'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object ParcelasNUMCARTEIRA: TStringField
      FieldName = 'NUMCARTEIRA'
      Size = 3
    end
    object ParcelasNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 15
    end
    object ParcelasIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      FixedChar = True
      Size = 1
    end
  end
  object pParcelas: TDataSetProvider
    DataSet = Parcelas
    Left = 104
    Top = 353
  end
  object tParcelas: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NUMCRECEBER'
        DataType = ftInteger
      end
      item
        Name = 'PARCELA'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'DTVENCIMENTO'
        DataType = ftDate
      end
      item
        Name = 'CODCLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'NUMNOTA'
        DataType = ftInteger
      end
      item
        Name = 'VLRRESTANTE'
        DataType = ftFloat
      end
      item
        Name = 'CODTIPOCOBRANCA'
        DataType = ftInteger
      end
      item
        Name = 'CODBANCO'
        DataType = ftInteger
      end
      item
        Name = 'DTMOVIMENTO'
        DataType = ftDate
      end
      item
        Name = 'TIPODOC'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'NOMECLIENTE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DOCUMENTO'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'ESTADO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'INSCESTADUAL'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'COBENDERECO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'COBNUMERO'
        DataType = ftInteger
      end
      item
        Name = 'COBBAIRRO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'COBUF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ENDNUMERO'
        DataType = ftInteger
      end
      item
        Name = 'NOMECIDADE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NOMECIDADECOB'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'COBCEP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'COBRANCAEMITIDA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PESSOA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NUMCARTEIRA'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'NOSSONUMERO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'IMPRIMIR'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'pParcelas'
    StoreDefs = True
    Left = 120
    Top = 353
    object tParcelasNUMCRECEBER: TIntegerField
      FieldName = 'NUMCRECEBER'
    end
    object tParcelasPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 3
    end
    object tParcelasDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object tParcelasCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object tParcelasNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object tParcelasVLRRESTANTE: TFloatField
      FieldName = 'VLRRESTANTE'
      DisplayFormat = '###,###,##0.00'
    end
    object tParcelasCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object tParcelasCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
    object tParcelasDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object tParcelasTIPODOC: TStringField
      FieldName = 'TIPODOC'
      Size = 2
    end
    object tParcelasNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 40
    end
    object tParcelasDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      ProviderFlags = []
      Size = 18
    end
    object tParcelasENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = []
      Size = 40
    end
    object tParcelasBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = []
      Size = 25
    end
    object tParcelasCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = []
      Size = 9
    end
    object tParcelasESTADO: TStringField
      FieldName = 'ESTADO'
      ProviderFlags = []
      Size = 2
    end
    object tParcelasINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = []
      Size = 15
    end
    object tParcelasCOBENDERECO: TStringField
      FieldName = 'COBENDERECO'
      ProviderFlags = []
      Size = 40
    end
    object tParcelasCOBNUMERO: TIntegerField
      FieldName = 'COBNUMERO'
      ProviderFlags = []
    end
    object tParcelasCOBBAIRRO: TStringField
      FieldName = 'COBBAIRRO'
      ProviderFlags = []
      Size = 30
    end
    object tParcelasCOBUF: TStringField
      FieldName = 'COBUF'
      ProviderFlags = []
      Size = 2
    end
    object tParcelasENDNUMERO: TIntegerField
      FieldName = 'ENDNUMERO'
      ProviderFlags = []
    end
    object tParcelasNOMECIDADE: TStringField
      FieldName = 'NOMECIDADE'
      ProviderFlags = []
      Size = 30
    end
    object tParcelasNOMECIDADECOB: TStringField
      FieldName = 'NOMECIDADECOB'
      ProviderFlags = []
      Size = 30
    end
    object tParcelasCOBCEP: TStringField
      FieldName = 'COBCEP'
      ProviderFlags = []
      Size = 10
    end
    object tParcelasCOBRANCAEMITIDA: TStringField
      FieldName = 'COBRANCAEMITIDA'
      FixedChar = True
      Size = 1
    end
    object tParcelasPESSOA: TStringField
      FieldName = 'PESSOA'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object tParcelasNUMCARTEIRA: TStringField
      FieldName = 'NUMCARTEIRA'
      Size = 3
    end
    object tParcelasNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 15
    end
    object tParcelasIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      FixedChar = True
      Size = 1
    end
  end
  object dsParcelas: TDataSource
    DataSet = tParcelas
    Left = 135
    Top = 353
  end
end
