object fMovAvulsoIt: TfMovAvulsoIt
  Left = 133
  Top = 128
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Digita'#231#227'o'
  ClientHeight = 327
  ClientWidth = 579
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
    Left = 416
    Top = 298
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
    Width = 579
    Height = 295
    ActivePage = TSProdutos
    Align = alTop
    TabOrder = 1
    object TSProdutos: TTabSheet
      Caption = 'Produto'
      object Label1: TLabel
        Left = 91
        Top = 65
        Width = 49
        Height = 13
        Cursor = crHandPoint
        Hint = 
          'Abre o cadastro de produto para efetuar novo registro ou alterar' +
          ' registro atual'
        Alignment = taRightJustify
        Caption = 'Produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Label3: TLabel
        Left = 70
        Top = 114
        Width = 70
        Height = 13
        Alignment = taRightJustify
        Caption = 'Quantidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 58
        Top = 137
        Width = 82
        Height = 13
        Alignment = taRightJustify
        Caption = 'Valor Unit'#225'rio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 111
        Top = 41
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
        Left = 88
        Top = 88
        Width = 52
        Height = 13
        Alignment = taRightJustify
        Caption = 'Unidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 364
        Top = 245
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
      object JvxCurrencyEdit1: TJvxCurrencyEdit
        Left = 141
        Top = 33
        Width = 57
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '0'
        ReadOnly = True
        TabOrder = 0
      end
      object JvxCurrencyEdit2: TJvxCurrencyEdit
        Left = 141
        Top = 106
        Width = 121
        Height = 21
        AutoSize = False
        DecimalPlaces = 3
        DisplayFormat = '0.000'
        TabOrder = 3
      end
      object JvxCurrencyEdit4: TJvxCurrencyEdit
        Left = 141
        Top = 129
        Width = 121
        Height = 21
        AutoSize = False
        DisplayFormat = '0.00'
        TabOrder = 4
        OnExit = JvxCurrencyEdit4Exit
      end
      object Edit1: TEdit
        Left = 141
        Top = 82
        Width = 60
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 3
        TabOrder = 2
      end
      object JvxCurrencyEdit9: TJvxCurrencyEdit
        Left = 432
        Top = 237
        Width = 121
        Height = 21
        TabStop = False
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '0.00'
        ReadOnly = True
        TabOrder = 5
      end
      object Edit2: TEdit
        Left = 141
        Top = 57
        Width = 412
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
      end
    end
    object TSDuplicatas: TTabSheet
      Caption = 'Duplicata'
      ImageIndex = 2
      object Label14: TLabel
        Left = 86
        Top = 49
        Width = 48
        Height = 13
        Caption = 'Parcela:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 32
        Top = 77
        Width = 102
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data Vencimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 30
        Top = 100
        Width = 104
        Height = 13
        Alignment = taRightJustify
        Caption = 'Valor Vencimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object JvxCurrencyEdit10: TJvxCurrencyEdit
        Left = 136
        Top = 41
        Width = 57
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '0'
        ReadOnly = True
        TabOrder = 0
      end
      object JvxCurrencyEdit11: TJvxCurrencyEdit
        Left = 136
        Top = 92
        Width = 121
        Height = 21
        AutoSize = False
        DisplayFormat = '###,###,##0.00'
        TabOrder = 2
      end
      object JvDateEdit1: TJvDateEdit
        Left = 136
        Top = 69
        Width = 121
        Height = 21
        ButtonFlat = False
        NumGlyphs = 2
        TabOrder = 1
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
      Size = 60
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
    object qProdutoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
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
    object qProdutoLOTEECONOMICO: TIntegerField
      FieldName = 'LOTEECONOMICO'
    end
    object qProdutoCODSITTRIBCF: TIntegerField
      FieldName = 'CODSITTRIBCF'
    end
    object qProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object qProdutoVLRMO: TFMTBCDField
      FieldName = 'VLRMO'
      Precision = 15
      Size = 2
    end
    object qProdutoPRECOVENDA: TFMTBCDField
      FieldName = 'PRECOVENDA'
      Precision = 15
      Size = 2
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
