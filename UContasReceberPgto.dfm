object fContasReceberPgto: TfContasReceberPgto
  Left = 70
  Top = 41
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pagamento'
  ClientHeight = 436
  ClientWidth = 525
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
    Left = 361
    Top = 407
    Width = 162
    Height = 27
    Cursor = crHandPoint
    Hint = 'Confirma pagamento do registro'
    Caption = 'Confirma Pagamento'
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
  object PageControl2: TPageControl
    Left = 2
    Top = 3
    Width = 523
    Height = 398
    ActivePage = TabSheet1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Pagamento'
      object Label1: TLabel
        Left = 51
        Top = 9
        Width = 35
        Height = 13
        Cursor = crHandPoint
        Hint = 
          'Abre o cadastro de fornecedores para efetuar novo registro ou al' +
          'terar registro atual'
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = Label1Click
      end
      object Label10: TLabel
        Left = 45
        Top = 31
        Width = 41
        Height = 13
        Caption = 'N'#186' Nota:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 47
        Top = 53
        Width = 39
        Height = 13
        Caption = 'Parcela:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 171
        Top = 53
        Width = 89
        Height = 13
        Caption = 'Valor Restante:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 3
        Top = 167
        Width = 112
        Height = 13
        Caption = 'Valor Recebimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 32
        Top = 227
        Width = 83
        Height = 13
        Caption = 'Valor Juros Pago:'
      end
      object Label4: TLabel
        Left = 38
        Top = 255
        Width = 77
        Height = 13
        Caption = 'Valor Despesas:'
      end
      object Bevel1: TBevel
        Left = -1
        Top = 94
        Width = 517
        Height = 2
        Shape = bsTopLine
        Style = bsRaised
      end
      object Label6: TLabel
        Left = 74
        Top = 137
        Width = 41
        Height = 13
        Cursor = crHandPoint
        Caption = 'Banco:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = Label6Click
      end
      object Label7: TLabel
        Left = 31
        Top = 109
        Width = 84
        Height = 13
        Caption = 'Data de Pgto.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 39
        Top = 283
        Width = 76
        Height = 13
        Caption = 'Valor Desconto:'
      end
      object Label9: TLabel
        Left = 71
        Top = 334
        Width = 44
        Height = 13
        Caption = 'Hist'#243'rico:'
      end
      object Label11: TLabel
        Left = 32
        Top = 196
        Width = 83
        Height = 13
        Cursor = crHandPoint
        Caption = 'Juros Calculados:'
        OnClick = Label11Click
      end
      object Label12: TLabel
        Left = 248
        Top = 192
        Width = 3
        Height = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 8
        Top = 75
        Width = 78
        Height = 13
        Caption = 'Centro de custo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 88
        Top = 23
        Width = 97
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clInfoBk
        MaxLength = 7
        ReadOnly = True
        TabOrder = 1
      end
      object Edit2: TEdit
        Left = 88
        Top = 45
        Width = 60
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clInfoBk
        MaxLength = 3
        ReadOnly = True
        TabOrder = 2
      end
      object JvxCurrencyEdit9: TJvxCurrencyEdit
        Left = 263
        Top = 45
        Width = 122
        Height = 21
        TabStop = False
        AutoSize = False
        Color = clAqua
        DisplayFormat = '0.00'
        ReadOnly = True
        TabOrder = 3
      end
      object JvxCurrencyEdit2: TJvxCurrencyEdit
        Left = 117
        Top = 159
        Width = 121
        Height = 21
        AutoSize = False
        DisplayFormat = '0.00'
        TabOrder = 6
        OnExit = JvxCurrencyEdit2Exit
      end
      object JvxCurrencyEdit10: TJvxCurrencyEdit
        Left = 117
        Top = 219
        Width = 121
        Height = 21
        AutoSize = False
        DisplayFormat = '0.00'
        TabOrder = 8
      end
      object JvxCurrencyEdit4: TJvxCurrencyEdit
        Left = 117
        Top = 247
        Width = 121
        Height = 21
        AutoSize = False
        DisplayFormat = '0.00'
        TabOrder = 9
      end
      object Edit3: TEdit
        Left = 88
        Top = 1
        Width = 297
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clInfoBk
        MaxLength = 7
        ReadOnly = True
        TabOrder = 0
      end
      object JvDBLookupCombo1: TJvDBLookupCombo
        Left = 117
        Top = 129
        Width = 261
        Height = 21
        DropDownCount = 8
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = DmCons.qsBanco
        TabOrder = 5
      end
      object JvDateEdit1: TJvDateEdit
        Left = 117
        Top = 101
        Width = 122
        Height = 21
        ButtonFlat = False
        NumGlyphs = 2
        TabOrder = 4
        OnExit = JvDateEdit1Exit
      end
      object JvxCurrencyEdit1: TJvxCurrencyEdit
        Left = 117
        Top = 275
        Width = 121
        Height = 21
        AutoSize = False
        DisplayFormat = '0.00'
        TabOrder = 10
      end
      object CheckBox1: TCheckBox
        Left = 117
        Top = 303
        Width = 140
        Height = 17
        Caption = 'Pagamento em Cart'#243'rio'
        TabOrder = 11
      end
      object Edit4: TEdit
        Left = 117
        Top = 326
        Width = 388
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 12
      end
      object JvxCurrencyEdit3: TJvxCurrencyEdit
        Left = 117
        Top = 188
        Width = 121
        Height = 21
        AutoSize = False
        DisplayFormat = '0.00'
        TabOrder = 7
      end
      object Edit5: TEdit
        Left = 88
        Top = 67
        Width = 297
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clInfoBk
        MaxLength = 3
        ReadOnly = True
        TabOrder = 13
      end
    end
  end
  object Vendedor: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select ID, TipoComissao'
      'from pessoa'
      'Where ID = :Codigo')
    SQLConnection = Dm1.Conexao
    Left = 414
    Top = 259
  end
  object VendedorP: TDataSetProvider
    DataSet = Vendedor
    Left = 438
    Top = 259
  end
  object qVendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VendedorP'
    Left = 454
    Top = 259
    object qVendedorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qVendedorTIPOCOMISSAO: TStringField
      FieldName = 'TIPOCOMISSAO'
      FixedChar = True
      Size = 1
    end
  end
end
