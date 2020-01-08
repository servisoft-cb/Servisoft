object fProdutoHist: TfProdutoHist
  Left = 46
  Top = 56
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Hist'#243'rico do Produto'
  ClientHeight = 536
  ClientWidth = 673
  Color = 10930928
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 673
    Height = 536
    Align = alClient
    Color = 10930928
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 21
      Width = 49
      Height = 13
      Caption = 'Produto:'
      FocusControl = JvDBGrid1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 365
      Top = 21
      Width = 48
      Height = 13
      Caption = 'Tamanho:'
    end
    object Label3: TLabel
      Left = 9
      Top = 47
      Width = 56
      Height = 13
      Caption = 'Data Inicial:'
    end
    object Label4: TLabel
      Left = 336
      Top = 47
      Width = 51
      Height = 13
      Caption = 'Data Final:'
    end
    object JvxSpeedButton1: TJvxSpeedButton
      Left = 579
      Top = 12
      Width = 85
      Height = 27
      Caption = 'Im&primir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
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
      Layout = blGlyphLeft
      ParentFont = False
      OnClick = JvxSpeedButton1Click
    end
    object JvDBGrid1: TJvDBGrid
      Left = 1
      Top = 64
      Width = 671
      Height = 397
      Align = alCustom
      DataSource = qsHistProd
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnTitleClick = JvDBGrid1TitleClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DTMOV'
          Title.Alignment = taCenter
          Title.Caption = 'Data do Mov.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Alignment = taCenter
          Title.Caption = 'Produto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TAMANHO'
          Title.Alignment = taCenter
          Title.Caption = 'Tamanho'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ES'
          Title.Alignment = taCenter
          Title.Caption = 'Entrada/Sa'#237'da'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTD'
          Title.Alignment = taCenter
          Title.Caption = 'Quantidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNIDADE'
          Title.Alignment = taCenter
          Title.Caption = 'Unidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPOMOV'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMDOCTO'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Doc.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECOCUSTO'
          Title.Alignment = taCenter
          Title.Caption = 'Pr. Custo'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PERCICMS'
          Title.Alignment = taCenter
          Title.Caption = '% ICMS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PERCIPI'
          Title.Alignment = taCenter
          Title.Caption = '% IPI'
          Visible = True
        end>
    end
    object JvDBLookupCombo1: TJvDBLookupCombo
      Left = 69
      Top = 13
      Width = 292
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DmCons.qsProduto
      TabOrder = 1
      OnExit = JvDBLookupCombo1Exit
    end
    object JvDBLookupCombo2: TJvDBLookupCombo
      Left = 416
      Top = 13
      Width = 73
      Height = 21
      DropDownCount = 8
      LookupField = 'TAMANHO'
      LookupDisplay = 'TAMANHO'
      LookupSource = dsTamanho
      TabOrder = 2
    end
    object JvDateEdit1: TJvDateEdit
      Left = 69
      Top = 39
      Width = 95
      Height = 21
      ButtonFlat = False
      NumGlyphs = 2
      TabOrder = 3
    end
    object JvDateEdit2: TJvDateEdit
      Left = 394
      Top = 39
      Width = 95
      Height = 21
      ButtonFlat = False
      NumGlyphs = 2
      TabOrder = 4
    end
    object BitBtn1: TBitBtn
      Left = 494
      Top = 12
      Width = 85
      Height = 27
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
        F6000000424DF60000000000000076000000280000000E000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888800
        88008888888884EC0800880000004ECC000088788884ECC88000887FFF4ECC8F
        80008870078CC8FF8000878E80778FFF80007FE8E808FFFF80007EFE8E08FFFF
        80007FEFE808FFFF800087FEF08FFFFF8000887708FFFFFF8000887FFFFFFF00
        0000887FFFFFFF8F7800887FFFFFFF8788008877777777788800}
    end
    object Panel2: TPanel
      Left = 4
      Top = 465
      Width = 664
      Height = 67
      Color = 10930928
      Enabled = False
      TabOrder = 6
      object Label5: TLabel
        Left = 211
        Top = 15
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
      object Label7: TLabel
        Left = 442
        Top = 15
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
      object Label8: TLabel
        Left = 467
        Top = 44
        Width = 70
        Height = 13
        Caption = 'Saldo Atual:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object JvxCurrencyEdit1: TJvxCurrencyEdit
        Left = 318
        Top = 7
        Width = 103
        Height = 21
        AutoSize = False
        DisplayFormat = '0.000'
        ReadOnly = True
        TabOrder = 0
      end
      object JvxCurrencyEdit3: TJvxCurrencyEdit
        Left = 541
        Top = 7
        Width = 103
        Height = 21
        AutoSize = False
        DisplayFormat = '0.000'
        ReadOnly = True
        TabOrder = 1
      end
      object JvxCurrencyEdit4: TJvxCurrencyEdit
        Left = 541
        Top = 36
        Width = 103
        Height = 21
        AutoSize = False
        DisplayFormat = '0.000'
        ReadOnly = True
        TabOrder = 2
      end
    end
  end
  object HistProd: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ESTOQUEMOV.*, PRODUTO.NOME'
      'FROM ESTOQUEMOV'
      'INNER JOIN PRODUTO ON'
      '(ESTOQUEMOV.CODPRODUTO = PRODUTO.ID)')
    SQLConnection = Dm1.Conexao
    Left = 264
    Top = 152
  end
  object HistProdP: TDataSetProvider
    DataSet = HistProd
    Left = 280
    Top = 152
  end
  object qHistProd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'HistProdP'
    Left = 295
    Top = 152
    object qHistProdNUMMOV: TIntegerField
      FieldName = 'NUMMOV'
      Required = True
    end
    object qHistProdCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object qHistProdTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 3
    end
    object qHistProdDTMOV: TDateField
      FieldName = 'DTMOV'
    end
    object qHistProdES: TStringField
      FieldName = 'ES'
      FixedChar = True
      Size = 1
    end
    object qHistProdTIPOMOV: TStringField
      FieldName = 'TIPOMOV'
      Size = 3
    end
    object qHistProdNUMDOCTO: TIntegerField
      FieldName = 'NUMDOCTO'
    end
    object qHistProdCODPESSOA: TIntegerField
      FieldName = 'CODPESSOA'
    end
    object qHistProdPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
      DisplayFormat = '0.00'
    end
    object qHistProdPRECOVC: TFloatField
      FieldName = 'PRECOVC'
      DisplayFormat = '0.00'
    end
    object qHistProdQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '0.000'
    end
    object qHistProdPERCICMS: TFloatField
      FieldName = 'PERCICMS'
      DisplayFormat = '0.00'
    end
    object qHistProdPERCIPI: TFloatField
      FieldName = 'PERCIPI'
      DisplayFormat = '0.00'
    end
    object qHistProdUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object qHistProdVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
      DisplayFormat = '0.00'
    end
    object qHistProdVLRADICIONAL: TFloatField
      FieldName = 'VLRADICIONAL'
      DisplayFormat = '0.00'
    end
    object qHistProdNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object qsHistProd: TDataSource
    DataSet = qHistProd
    Left = 309
    Top = 152
  end
  object Tamanho: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM PRODUTOTAM'
      'WHERE CODPRODUTO = :Codigo'
      'ORDER BY TAMANHO')
    SQLConnection = Dm1.Conexao
    Left = 264
    Top = 208
  end
  object TamanhoP: TDataSetProvider
    DataSet = Tamanho
    Left = 280
    Top = 208
  end
  object qTamanho: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TamanhoP'
    Left = 295
    Top = 208
    object qTamanhoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object qTamanhoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 3
    end
    object qTamanhoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object qTamanhoPRECOMINIMO: TFloatField
      FieldName = 'PRECOMINIMO'
    end
    object qTamanhoPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object qTamanhoCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qTamanhoESTMINIMO: TFloatField
      FieldName = 'ESTMINIMO'
    end
    object qTamanhoDTREAJUST: TDateField
      FieldName = 'DTREAJUST'
    end
  end
  object dsTamanho: TDataSource
    DataSet = qTamanho
    Left = 309
    Top = 208
  end
  object Entrada: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ES, SUM(QTD) QTD'
      'FROM ESTOQUEMOV'
      'GROUP BY ES')
    SQLConnection = Dm1.Conexao
    Left = 264
    Top = 296
  end
  object EntradaP: TDataSetProvider
    DataSet = Entrada
    Left = 280
    Top = 296
  end
  object qEntrada: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'EntradaP'
    Left = 295
    Top = 296
    object qEntradaES: TStringField
      FieldName = 'ES'
      FixedChar = True
      Size = 1
    end
    object qEntradaQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '0.000'
    end
  end
  object qsEntrada: TDataSource
    DataSet = qEntrada
    Left = 312
    Top = 296
  end
end
