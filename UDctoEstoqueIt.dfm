object fDctoEstoqueIt: TfDctoEstoqueIt
  Left = 190
  Top = 108
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Digita'#231#227'o'
  ClientHeight = 282
  ClientWidth = 508
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn5: TBitBtn
    Left = 353
    Top = 252
    Width = 153
    Height = 27
    Cursor = crHandPoint
    Caption = 'Confirma Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn5Click
    Glyph.Data = {
      CE070000424DCE07000000000000360000002800000024000000120000000100
      18000000000098070000CE0E0000D80E00000000000000000000008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080008080008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080FFFFFF008080008080008080008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8080000080000000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080808080808080FFFFFF
      FFFFFF0080800080800080800080800080800080800080800080800080800080
      8000808000808000808080000000800000800080000000808000808000808000
      8080008080008080008080008080008080008080008080008080008080008080
      808080808080808080808080FFFFFFFFFFFF0080800080800080800080800080
      8000808000808000808000808000808000808080000000800000800000800000
      8000800000008080008080008080008080008080008080008080008080008080
      008080008080008080808080808080808080808080808080808080FFFFFFFFFF
      FF00808000808000808000808000808000808000808000808000808080000000
      8000008000008000008000008000008000800000008080008080008080008080
      0080800080800080800080800080800080808080808080808080808080808080
      80808080808080808080808080FFFFFF00808000808000808000808000808000
      808000808080000000800000800000800000FF00008000008000008000008000
      8000000080800080800080800080800080800080800080800080808080808080
      80808080808080FFFFFF808080808080808080808080808080FFFFFF00808000
      808000808000808000808000808000808000800000800000800000FF00008080
      00FF000080000080000080008000000080800080800080800080800080800080
      80008080008080808080808080808080FFFFFF008080FFFFFF80808080808080
      8080808080FFFFFFFFFFFF00808000808000808000808000808000808000FF00
      00800000FF0000808000808000808000FF000080000080000080008000000080
      80008080008080008080008080008080008080808080808080FFFFFF00808000
      8080008080FFFFFF808080808080808080808080FFFFFFFFFFFF008080008080
      00808000808000808000808000FF0000808000808000808000808000808000FF
      0000800000800000800080000000808000808000808000808000808000808000
      8080FFFFFF008080008080008080008080008080FFFFFF808080808080808080
      808080FFFFFFFFFFFF0080800080800080800080800080800080800080800080
      8000808000808000808000808000FF0000800000800000800080000000808000
      8080008080008080008080008080008080008080008080008080008080008080
      008080FFFFFF808080808080808080808080FFFFFFFFFFFF0080800080800080
      8000808000808000808000808000808000808000808000808000808000FF0000
      8000008000008000800000008080008080008080008080008080008080008080
      008080008080008080008080008080008080FFFFFF8080808080808080808080
      80FFFFFF00808000808000808000808000808000808000808000808000808000
      808000808000808000808000FF00008000008000008000800000008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      80FFFFFF808080808080808080808080FFFFFF00808000808000808000808000
      808000808000808000808000808000808000808000808000808000FF00008000
      0080000080008000000080800080800080800080800080800080800080800080
      80008080008080008080008080008080FFFFFF808080808080808080808080FF
      FFFF008080008080008080008080008080008080008080008080008080008080
      00808000808000808000FF000080000080008000000080800080800080800080
      80008080008080008080008080008080008080008080008080008080008080FF
      FFFF808080808080808080008080008080008080008080008080008080008080
      00808000808000808000808000808000808000808000808000FF000080000080
      0000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080FFFFFF808080808080008080008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000808000FF0000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080008080008080FFFFFF
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080008080008080008080
      008080008080008080008080008080008080}
    NumGlyphs = 2
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 508
    Height = 249
    ActivePage = TSProdutos
    Align = alTop
    TabOrder = 1
    object TSProdutos: TTabSheet
      Caption = 'Produto'
      object Label1: TLabel
        Left = 76
        Top = 53
        Width = 40
        Height = 13
        Cursor = crHandPoint
        Hint = 
          'Abre o cadastro de produto para efetuar novo registro ou alterar' +
          ' registro atual'
        Caption = 'Produto:'
        ParentShowHint = False
        ShowHint = True
        OnClick = Label1Click
      end
      object Label2: TLabel
        Left = 68
        Top = 77
        Width = 48
        Height = 13
        Caption = 'Tamanho:'
      end
      object Label3: TLabel
        Left = 58
        Top = 126
        Width = 58
        Height = 13
        Caption = 'Quantidade:'
      end
      object Label4: TLabel
        Left = 50
        Top = 149
        Width = 66
        Height = 13
        Caption = 'Valor Unit'#225'rio:'
      end
      object Label6: TLabel
        Left = 80
        Top = 9
        Width = 29
        Height = 13
        Caption = 'Item:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 73
        Top = 101
        Width = 43
        Height = 13
        Caption = 'Unidade:'
      end
      object Label5: TLabel
        Left = 308
        Top = 205
        Width = 67
        Height = 13
        Caption = 'Valor Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label24: TLabel
        Left = 32
        Top = 33
        Width = 84
        Height = 13
        Hint = 'Clicar aqui para alterar ou cadastrar Produto'
        Caption = 'C'#243'digo de Barras:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = Label1Click
      end
      object JvDBLookupCombo3: TJvDBLookupCombo
        Left = 117
        Top = 48
        Width = 252
        Height = 21
        DropDownCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = qsProduto
        ParentFont = False
        TabOrder = 2
        OnEnter = JvDBLookupCombo3Enter
        OnExit = JvDBLookupCombo3Exit
      end
      object JvDBLookupCombo2: TJvDBLookupCombo
        Left = 117
        Top = 72
        Width = 60
        Height = 21
        DropDownCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        LookupField = 'TAMANHO'
        LookupDisplay = 'TAMANHO'
        LookupSource = DmCons.qsProdutoTam
        ParentFont = False
        TabOrder = 3
        OnExit = JvDBLookupCombo2Exit
      end
      object JvxCurrencyEdit1: TJvxCurrencyEdit
        Left = 117
        Top = 1
        Width = 57
        Height = 21
        AutoSize = False
        DisplayFormat = '0'
        ReadOnly = True
        TabOrder = 0
      end
      object JvxCurrencyEdit2: TJvxCurrencyEdit
        Left = 117
        Top = 118
        Width = 121
        Height = 21
        AutoSize = False
        DecimalPlaces = 3
        DisplayFormat = '0.000'
        TabOrder = 5
        OnExit = JvxCurrencyEdit4Exit
      end
      object JvxCurrencyEdit4: TJvxCurrencyEdit
        Left = 117
        Top = 141
        Width = 121
        Height = 21
        AutoSize = False
        DisplayFormat = '0.00'
        TabOrder = 6
        OnExit = JvxCurrencyEdit4Exit
      end
      object Edit1: TEdit
        Left = 117
        Top = 95
        Width = 60
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 3
        TabOrder = 4
      end
      object JvxCurrencyEdit9: TJvxCurrencyEdit
        Left = 376
        Top = 197
        Width = 121
        Height = 21
        AutoSize = False
        DisplayFormat = '0.00'
        ReadOnly = True
        TabOrder = 7
      end
      object Edit2: TEdit
        Left = 117
        Top = 25
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
        OnKeyDown = Edit2KeyDown
      end
    end
  end
  object Produto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PRODUTO'
      'WHERE (INATIVO = '#39'N'#39') AND (TIPO = '#39'P'#39')'
      'ORDER BY NOME')
    SQLConnection = Dm1.Conexao
    Left = 244
    Top = 32
  end
  object ProdutoP: TDataSetProvider
    DataSet = Produto
    Left = 256
    Top = 32
  end
  object qProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProdutoP'
    Left = 269
    Top = 32
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
    object qProdutoCLASFISCAL: TStringField
      FieldName = 'CLASFISCAL'
      Size = 12
    end
    object qProdutoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object qProdutoPERCMINIMO: TFloatField
      FieldName = 'PERCMINIMO'
    end
    object qProdutoPRECOMINIMO: TFloatField
      FieldName = 'PRECOMINIMO'
    end
    object qProdutoPERCVENDA: TFloatField
      FieldName = 'PERCVENDA'
    end
    object qProdutoPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
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
    object qProdutoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qProdutoCODSITTRIBCF: TIntegerField
      FieldName = 'CODSITTRIBCF'
    end
    object qProdutoFOTO1: TStringField
      FieldName = 'FOTO1'
      Size = 200
    end
    object qProdutoFOTO2: TStringField
      FieldName = 'FOTO2'
      Size = 200
    end
    object qProdutoFOTO3: TStringField
      FieldName = 'FOTO3'
      Size = 200
    end
    object qProdutoFOTO4: TStringField
      FieldName = 'FOTO4'
      Size = 200
    end
  end
  object qsProduto: TDataSource
    DataSet = qProduto
    Left = 284
    Top = 32
  end
  object ProdutoTamP: TDataSetProvider
    DataSet = ProdutoTam
    Left = 277
    Top = 64
  end
  object ProdutoTam: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'C1'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT PRODUTOTAM.*'
      'FROM PRODUTOTAM'
      'WHERE CODBARRA = :C1')
    SQLConnection = Dm1.Conexao
    Left = 253
    Top = 64
  end
  object qProdutoTam: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProdutoTamP'
    Left = 301
    Top = 64
    object qProdutoTamCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object qProdutoTamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
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
  object dsProdutoTam: TDataSource
    DataSet = qProdutoTam
    Left = 325
    Top = 64
  end
end
