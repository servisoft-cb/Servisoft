object fNotaEntradaIt: TfNotaEntradaIt
  Left = 193
  Top = 18
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Digita'#231#227'o'
  ClientHeight = 367
  ClientWidth = 536
  Color = clMoneyGreen
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
  object BitBtn5: TBitBtn
    Left = 376
    Top = 338
    Width = 153
    Height = 27
    Cursor = crHandPoint
    Hint = 'Confirma a altera'#231#227'o ou a inser'#231#227'o do registro'
    Caption = 'Confirma Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
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
    Width = 536
    Height = 329
    ActivePage = TSProdutos
    Align = alTop
    TabOrder = 1
    object TSProdutos: TTabSheet
      Caption = 'Produto'
      object Label1: TLabel
        Left = 88
        Top = 83
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
        OnClick = Label1Click
      end
      object Label2: TLabel
        Left = 80
        Top = 106
        Width = 57
        Height = 13
        Caption = 'Tamanho:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 67
        Top = 195
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
        Left = 55
        Top = 239
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
        Left = 108
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
      object Label7: TLabel
        Left = 70
        Top = 217
        Width = 67
        Height = 13
        Caption = 'Quantidade 2:'
      end
      object Label8: TLabel
        Left = 97
        Top = 261
        Width = 40
        Height = 13
        Caption = '% ICMS:'
      end
      object Label9: TLabel
        Left = 110
        Top = 283
        Width = 27
        Height = 13
        Caption = '% IPI:'
      end
      object Label10: TLabel
        Left = 85
        Top = 129
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
      object Label11: TLabel
        Left = 331
        Top = 209
        Width = 60
        Height = 13
        Caption = '% Desconto:'
      end
      object Label12: TLabel
        Left = 315
        Top = 231
        Width = 76
        Height = 13
        Caption = 'Valor Desconto:'
      end
      object Label13: TLabel
        Left = 45
        Top = 152
        Width = 92
        Height = 13
        Hint = 
          'Abre o cadastro de situa'#231#227'o tribut'#225'ria para efetuar novo registr' +
          'o ou alterar registro atual'
        Caption = 'Situa'#231#227'o Tribut'#225'ria:'
        ParentShowHint = False
        ShowHint = True
        OnClick = Label13Click
      end
      object Label5: TLabel
        Left = 324
        Top = 275
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
        Left = 53
        Top = 63
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
      object Label26: TLabel
        Left = 4
        Top = 40
        Width = 133
        Height = 13
        Cursor = crHandPoint
        Hint = 
          'Abre o cadastro de natureza de opera'#231#227'o para efetuar novo regist' +
          'ro ou alterar registro atual'
        Alignment = taRightJustify
        Caption = 'Natureza de Opera'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = Label26Click
      end
      object JvDBLookupCombo3: TJvDBLookupCombo
        Left = 138
        Top = 78
        Width = 249
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
        TabOrder = 3
        OnEnter = JvDBLookupCombo3Enter
        OnExit = JvDBLookupCombo3Exit
      end
      object JvDBLookupCombo2: TJvDBLookupCombo
        Left = 138
        Top = 101
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
        TabOrder = 4
        OnExit = JvDBLookupCombo2Exit
      end
      object JvxCurrencyEdit1: TJvxCurrencyEdit
        Left = 138
        Top = 1
        Width = 57
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '0'
        ReadOnly = True
        TabOrder = 0
      end
      object JvxCurrencyEdit2: TJvxCurrencyEdit
        Left = 138
        Top = 187
        Width = 121
        Height = 21
        AutoSize = False
        DecimalPlaces = 3
        DisplayFormat = '0.000'
        TabOrder = 8
        OnExit = JvxCurrencyEdit2Exit
      end
      object JvxCurrencyEdit4: TJvxCurrencyEdit
        Left = 138
        Top = 231
        Width = 121
        Height = 21
        AutoSize = False
        DisplayFormat = '0.00'
        TabOrder = 10
        OnExit = JvxCurrencyEdit4Exit
      end
      object JvxCurrencyEdit3: TJvxCurrencyEdit
        Left = 138
        Top = 209
        Width = 121
        Height = 21
        AutoSize = False
        DecimalPlaces = 3
        DisplayFormat = '0.000'
        TabOrder = 9
      end
      object JvxCurrencyEdit5: TJvxCurrencyEdit
        Left = 138
        Top = 253
        Width = 121
        Height = 21
        AutoSize = False
        DisplayFormat = '0.00'
        TabOrder = 11
      end
      object JvxCurrencyEdit6: TJvxCurrencyEdit
        Left = 138
        Top = 275
        Width = 121
        Height = 21
        AutoSize = False
        DisplayFormat = '0.00'
        TabOrder = 12
        OnExit = JvxCurrencyEdit6Exit
      end
      object Edit1: TEdit
        Left = 138
        Top = 123
        Width = 60
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 3
        TabOrder = 5
      end
      object JvxCurrencyEdit7: TJvxCurrencyEdit
        Left = 392
        Top = 201
        Width = 121
        Height = 21
        AutoSize = False
        DisplayFormat = '0.00'
        TabOrder = 13
        OnExit = JvxCurrencyEdit7Exit
      end
      object JvxCurrencyEdit8: TJvxCurrencyEdit
        Left = 392
        Top = 223
        Width = 121
        Height = 21
        AutoSize = False
        DisplayFormat = '0.00'
        TabOrder = 14
        OnEnter = JvxCurrencyEdit8Enter
        OnExit = JvxCurrencyEdit8Exit
      end
      object JvDBLookupCombo1: TJvDBLookupCombo
        Left = 138
        Top = 145
        Width = 62
        Height = 21
        DropDownCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        LookupField = 'ID'
        LookupDisplay = 'CODSITTRIB'
        LookupSource = DmCons.qsSitTributaria
        ParentFont = False
        TabOrder = 6
      end
      object JvxCurrencyEdit9: TJvxCurrencyEdit
        Left = 392
        Top = 267
        Width = 121
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '0.00'
        ReadOnly = True
        TabOrder = 15
      end
      object Edit2: TEdit
        Left = 138
        Top = 55
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 2
        OnKeyDown = Edit2KeyDown
      end
      object CheckBox1: TCheckBox
        Left = 138
        Top = 168
        Width = 97
        Height = 17
        BiDiMode = bdLeftToRight
        Caption = 'Soma Estoque'
        Checked = True
        ParentBiDiMode = False
        State = cbChecked
        TabOrder = 7
      end
      object JvDBLookupCombo6: TJvDBLookupCombo
        Left = 138
        Top = 32
        Width = 97
        Height = 21
        DropDownCount = 8
        LookupField = 'ID'
        LookupDisplay = 'CODIGO'
        LookupSource = DmCons.qsNatOperacao
        TabOrder = 1
      end
    end
    object TSMObras: TTabSheet
      Caption = 'M'#227'o de Obra (Servi'#231'o)'
      ImageIndex = 1
      object Label17: TLabel
        Left = 97
        Top = 33
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
      object Label18: TLabel
        Left = 77
        Top = 62
        Width = 48
        Height = 13
        Cursor = crHandPoint
        Hint = 
          'Abre o cadastro de m'#227'o de obra para efetuar novo registro ou alt' +
          'erar registro atual'
        Alignment = taRightJustify
        Caption = 'Servi'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = Label18Click
      end
      object Label19: TLabel
        Left = 55
        Top = 84
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
      object Label20: TLabel
        Left = 78
        Top = 128
        Width = 47
        Height = 13
        Caption = '% ISSQN:'
      end
      object Label21: TLabel
        Left = 86
        Top = 150
        Width = 39
        Height = 13
        Caption = '% INSS:'
      end
      object Label22: TLabel
        Left = 94
        Top = 172
        Width = 31
        Height = 13
        Caption = '% IRF:'
      end
      object Label23: TLabel
        Left = 43
        Top = 106
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
      object Label27: TLabel
        Left = 71
        Top = 195
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Caption = 'Valor Total:'
      end
      object JvxCurrencyEdit12: TJvxCurrencyEdit
        Left = 128
        Top = 25
        Width = 57
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '0'
        ReadOnly = True
        TabOrder = 0
      end
      object JvDBLookupCombo4: TJvDBLookupCombo
        Left = 128
        Top = 54
        Width = 321
        Height = 21
        DropDownCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = qsMaoObra
        ParentFont = False
        TabOrder = 1
        OnExit = JvDBLookupCombo4Exit
      end
      object JvxCurrencyEdit13: TJvxCurrencyEdit
        Left = 128
        Top = 76
        Width = 121
        Height = 21
        AutoSize = False
        DecimalPlaces = 3
        DisplayFormat = '0'
        TabOrder = 2
        OnExit = JvxCurrencyEdit13Exit
      end
      object JvxCurrencyEdit14: TJvxCurrencyEdit
        Left = 128
        Top = 120
        Width = 121
        Height = 21
        AutoSize = False
        DisplayFormat = '0.00'
        TabOrder = 4
      end
      object JvxCurrencyEdit15: TJvxCurrencyEdit
        Left = 128
        Top = 142
        Width = 121
        Height = 21
        AutoSize = False
        DisplayFormat = '0.00'
        TabOrder = 5
      end
      object JvxCurrencyEdit16: TJvxCurrencyEdit
        Left = 128
        Top = 164
        Width = 121
        Height = 21
        AutoSize = False
        DisplayFormat = '0.00'
        TabOrder = 6
      end
      object JvxCurrencyEdit17: TJvxCurrencyEdit
        Left = 128
        Top = 98
        Width = 121
        Height = 21
        AutoSize = False
        DisplayFormat = '###,###,##0.00'
        TabOrder = 3
        OnExit = JvxCurrencyEdit17Exit
      end
      object JvxCurrencyEdit18: TJvxCurrencyEdit
        Left = 128
        Top = 187
        Width = 121
        Height = 21
        TabStop = False
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '###,###,##0.00'
        ReadOnly = True
        TabOrder = 7
      end
    end
    object TSDuplicatas: TTabSheet
      Caption = 'Duplicata'
      ImageIndex = 2
      object Label14: TLabel
        Left = 63
        Top = 17
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
        Left = 9
        Top = 46
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
        Left = 7
        Top = 69
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
      object Label25: TLabel
        Left = 77
        Top = 92
        Width = 34
        Height = 13
        Cursor = crHandPoint
        Hint = 
          'Abre o cadastro de banco para efetuar novo registro ou alterar r' +
          'egistro atual'
        Caption = 'Banco:'
        ParentShowHint = False
        ShowHint = True
        OnClick = Label25Click
      end
      object JvxCurrencyEdit10: TJvxCurrencyEdit
        Left = 113
        Top = 9
        Width = 57
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '0'
        ReadOnly = True
        TabOrder = 0
      end
      object JvxCurrencyEdit11: TJvxCurrencyEdit
        Left = 113
        Top = 61
        Width = 121
        Height = 21
        AutoSize = False
        DisplayFormat = '###,###,##0.00'
        TabOrder = 2
      end
      object JvDateEdit1: TJvDateEdit
        Left = 113
        Top = 38
        Width = 121
        Height = 21
        ButtonFlat = False
        NumGlyphs = 2
        TabOrder = 1
      end
      object JvDBLookupCombo5: TJvDBLookupCombo
        Left = 113
        Top = 84
        Width = 321
        Height = 21
        DropDownCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = DmCons.qsBanco
        ParentFont = False
        TabOrder = 3
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
    Left = 228
    Top = 104
  end
  object ProdutoP: TDataSetProvider
    DataSet = Produto
    Left = 248
    Top = 104
  end
  object qProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProdutoP'
    Left = 264
    Top = 104
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
      Size = 10
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
  end
  object qsProduto: TDataSource
    DataSet = qProduto
    Left = 284
    Top = 104
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
    Left = 12
    Top = 248
  end
  object MaoObraP: TDataSetProvider
    DataSet = MaoObra
    Left = 28
    Top = 248
  end
  object qMaoObra: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MaoObraP'
    Left = 48
    Top = 248
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
    Left = 60
    Top = 248
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
    Top = 144
  end
  object ProdutoTamP: TDataSetProvider
    DataSet = ProdutoTam
    Left = 277
    Top = 144
  end
  object qProdutoTam: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProdutoTamP'
    Left = 301
    Top = 144
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
    Top = 144
  end
end
