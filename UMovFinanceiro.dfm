object fMovFinanceiro: TfMovFinanceiro
  Left = 3
  Top = 26
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Movimento Financeiro'
  ClientHeight = 523
  ClientWidth = 786
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 6
    Width = 80
    Height = 16
    Caption = 'Caixa/Banco:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 416
    Top = 5
    Width = 69
    Height = 16
    Caption = 'Data Inicial:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 585
    Top = 5
    Width = 64
    Height = 16
    Caption = 'Data Final:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 8
    Top = 28
    Width = 79
    Height = 16
    Caption = 'Centro Custo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 435
    Top = 28
    Width = 50
    Height = 16
    Caption = 'Pessoa:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object JvDBLookupCombo1: TJvDBLookupCombo
    Left = 88
    Top = 1
    Width = 321
    Height = 21
    DropDownCount = 8
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = DmCons.qsBanco
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 469
    Top = 54
    Width = 92
    Height = 32
    Caption = 'Consulta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn1Click
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000CE0E0000C40E00000000000000000000008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000000000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080000000000000000000008080008080
      0080800080800080800080800080800080800080800080800080800080800000
      0000000000000000808000808000808000808000808000808000808000808000
      8080008080008080008080000000000000000000008080008080008080008080
      0080800080800080800080800080800080800080800080800000000000000000
      0000808000808000808000808000808000808080808000000000000000000080
      8080008080000000000000000000008080008080008080008080008080008080
      0000008080808080808080808080808080800000000000000000000080800080
      80008080008080008080008080000000808080C0C0C0FFFFFFC0C0C0FFFFFFC0
      C0C0808080000000008080008080008080008080008080008080808080808080
      C0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C08080808080800080800080
      80008080008080008080000000808080FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0
      C0C0FFFFFF808080000000008080008080008080008080008080000000808080
      C0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C08080800000000080800080
      80008080008080008080000000808080FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0
      C0C0FFFFFF808080000000008080008080008080008080008080808080808080
      C0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C08080808080800080800080
      80008080008080008080008080000000808080C0C0C0FFFFFFC0C0C0FFFFFFC0
      C0C0808080000000008080008080008080008080008080008080008080008080
      0000008080808080808080808080808080800000000080800080800080800080
      8000808000808000808000808000808000808080808000000000000000000080
      8080008080008080008080008080008080008080008080008080}
  end
  object JvDateEdit1: TJvDateEdit
    Left = 488
    Top = 0
    Width = 95
    Height = 21
    ButtonFlat = False
    NumGlyphs = 2
    TabOrder = 1
  end
  object JvDateEdit2: TJvDateEdit
    Left = 655
    Top = 0
    Width = 95
    Height = 21
    ButtonFlat = False
    NumGlyphs = 2
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 475
    Width = 786
    Height = 48
    Align = alBottom
    Enabled = False
    TabOrder = 8
    object Label4: TLabel
      Left = 35
      Top = 10
      Width = 75
      Height = 13
      Caption = 'Saldo Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 256
      Top = 10
      Width = 106
      Height = 13
      Caption = 'Total de Entradas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 266
      Top = 32
      Width = 96
      Height = 13
      Caption = 'Total de Sa'#237'das:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 527
      Top = 10
      Width = 104
      Height = 13
      Caption = 'Saldo do Per'#237'odo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 488
      Top = 32
      Width = 143
      Height = 13
      Caption = 'Saldo (Inicial + Per'#237'odo):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object JvxCurrencyEdit5: TJvxCurrencyEdit
      Left = 116
      Top = 3
      Width = 93
      Height = 21
      AutoSize = False
      Color = clInfoBk
      DisplayFormat = '0.00'
      TabOrder = 0
    end
    object JvxCurrencyEdit1: TJvxCurrencyEdit
      Left = 363
      Top = 2
      Width = 103
      Height = 21
      AutoSize = False
      Color = clInfoBk
      DisplayFormat = '0.00'
      TabOrder = 1
    end
    object JvxCurrencyEdit2: TJvxCurrencyEdit
      Left = 363
      Top = 24
      Width = 103
      Height = 21
      AutoSize = False
      Color = clInfoBk
      DisplayFormat = '0.00'
      TabOrder = 2
    end
    object JvxCurrencyEdit3: TJvxCurrencyEdit
      Left = 632
      Top = 2
      Width = 103
      Height = 21
      AutoSize = False
      Color = clInfoBk
      DisplayFormat = '0.00'
      TabOrder = 3
    end
    object JvxCurrencyEdit4: TJvxCurrencyEdit
      Left = 632
      Top = 24
      Width = 103
      Height = 21
      AutoSize = False
      Color = clInfoBk
      DisplayFormat = '0.00'
      TabOrder = 4
    end
  end
  object BitBtn2: TBitBtn
    Left = 561
    Top = 54
    Width = 92
    Height = 32
    Caption = 'Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn2Click
    Glyph.Data = {
      0E030000424D0E030000000000003600000028000000110000000E0000000100
      180000000000D802000000000000000000000000000000000000BFBFBFBFBFBF
      BFBFBF0000000000000000000000000000000000000000000000000000000000
      00000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BFBFBFBFBF
      BF00BFBFBF000000000000000000000000000000000000000000000000000000
      000000000000000000000000BFBFBF000000BFBFBF00BFBFBF000000BFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBF00FFFF00FFFF00FFFFBFBFBFBFBFBF000000
      000000000000BFBFBF00BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBF7F7F7F7F7F7F7F7F7FBFBFBFBFBFBF000000BFBFBF000000BFBFBF00BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000BFBFBFBFBFBF00000000BFBFBF000000BFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BF
      BFBF00000000BFBFBFBFBFBF0000000000000000000000000000000000000000
      00000000000000000000BFBFBF000000BFBFBF00000000000000BFBFBFBFBFBF
      BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00BFBFBF000000BFBFBF00000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF
      000000000000000000000000000000FFFFFF000000000000000000000000BFBF
      BF00BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF000000FFFFFF000000000000000000000000000000FFFFFF000000
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF00BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000000000000000
      0000000000000000000000BFBFBFBFBFBF00}
  end
  object StaticText1: TStaticText
    Left = 6
    Top = 456
    Width = 215
    Height = 18
    Cursor = crHandPoint
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '<Insert> Incluir item'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 9
    OnClick = StaticText1Click
  end
  object StaticText2: TStaticText
    Left = 222
    Top = 456
    Width = 215
    Height = 18
    Cursor = crHandPoint
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '<Delete> Exclui o item '
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 10
    OnClick = StaticText2Click
  end
  object StaticText3: TStaticText
    Left = 438
    Top = 456
    Width = 339
    Height = 18
    Cursor = crHandPoint
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '<Enter> Altera o item '
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 11
    OnClick = StaticText3Click
  end
  object BitBtn3: TBitBtn
    Left = 673
    Top = 54
    Width = 92
    Height = 32
    Caption = 'Fluxo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtn3Click
    Layout = blGlyphTop
  end
  object RadioGroup1: TRadioGroup
    Left = 9
    Top = 43
    Width = 438
    Height = 45
    Caption = ' Op'#245'es '
    Columns = 4
    ItemIndex = 6
    Items.Strings = (
      'C.Receber'
      'C.Pagar'
      'Outras Entradas'
      'Outras Sa'#237'das'
      'Todas Entradas'
      'Todas Sa'#237'das'
      'Ambos')
    TabOrder = 4
  end
  object JvDBLookupCombo2: TJvDBLookupCombo
    Left = 88
    Top = 23
    Width = 321
    Height = 21
    DropDownCount = 8
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = DmCons.qsCentroCusto
    TabOrder = 3
  end
  object ComboBox1: TComboBox
    Left = 488
    Top = 24
    Width = 156
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 2
    TabOrder = 12
    Text = 'Ambas'
    Items.Strings = (
      'F'#237'sica'
      'Jur'#237'dica'
      'Ambas')
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 88
    Width = 785
    Height = 365
    DataSource = DmCons.qsMovFinanceiro
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyDown = SMDBGrid1KeyDown
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 10
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTMOVIMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Movimento'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRENTRADA'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Entrada'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRSAIDA'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Sa'#237'da'
        Width = 63
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NOMECENTROCUSTO'
        Title.Alignment = taCenter
        Title.Caption = 'Centro de Custo'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPOPESSOA'
        Title.Alignment = taCenter
        Title.Caption = 'F'#237'sica / Jur'#237'dica'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HISTORICO'
        Title.Alignment = taCenter
        Title.Caption = 'Hist'#243'rico'
        Width = 594
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPOMOV'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo Mov'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODBANCO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Banco / Caixa'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMMOVTO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Movimento'
        Visible = True
      end>
  end
  object SaldoAnt: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select Sum(VlrEntrada) VlrEntrada, Sum(VlrSaida) VlrSaida'
      'from MOVFINANCEIRO')
    SQLConnection = Dm1.Conexao
    Left = 520
    Top = 200
  end
  object SaldoAntP: TDataSetProvider
    DataSet = SaldoAnt
    Left = 536
    Top = 200
  end
  object qSaldoAnt: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SaldoAntP'
    Left = 552
    Top = 200
    object qSaldoAntVLRENTRADA: TFloatField
      FieldName = 'VLRENTRADA'
      DisplayFormat = '###,###,##0.00'
    end
    object qSaldoAntVLRSAIDA: TFloatField
      FieldName = 'VLRSAIDA'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object SaldoPeriodo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select Sum(VlrEntrada) VlrEntrada, Sum(VlrSaida) VlrSaida'
      'from MOVFINANCEIRO')
    SQLConnection = Dm1.Conexao
    Left = 520
    Top = 240
  end
  object SaldoPeriodoP: TDataSetProvider
    DataSet = SaldoPeriodo
    Left = 536
    Top = 240
  end
  object qSaldoPeriodo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SaldoPeriodoP'
    Left = 552
    Top = 240
    object qSaldoPeriodoVLRENTRADA: TFloatField
      FieldName = 'VLRENTRADA'
      DisplayFormat = '###,###,##0.00'
    end
    object qSaldoPeriodoVLRSAIDA: TFloatField
      FieldName = 'VLRSAIDA'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object DataSource1: TDataSource
    DataSet = qSaldoAnt
    Left = 568
    Top = 208
  end
end
