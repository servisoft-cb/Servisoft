object fProdutoIt: TfProdutoIt
  Left = 133
  Top = 171
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Digita'#231#227'o'
  ClientHeight = 292
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
    Top = 262
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
    Height = 258
    ActivePage = TSTAMANHO
    Align = alTop
    TabOrder = 1
    object TSTAMANHO: TTabSheet
      Caption = 'Tamanho'
      object Label3: TLabel
        Left = 22
        Top = 108
        Width = 80
        Height = 13
        Alignment = taRightJustify
        Caption = 'Estoque M'#237'nimo:'
      end
      object Label4: TLabel
        Left = 26
        Top = 43
        Width = 76
        Height = 13
        Alignment = taRightJustify
        Caption = 'Pre'#231'o de Custo:'
      end
      object Label6: TLabel
        Left = 45
        Top = 9
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
      object Label1: TLabel
        Left = 33
        Top = 64
        Width = 69
        Height = 13
        Alignment = taRightJustify
        Caption = 'Pre'#231'o M'#237'nimo:'
      end
      object Label2: TLabel
        Left = 22
        Top = 86
        Width = 80
        Height = 13
        Alignment = taRightJustify
        Caption = 'Pre'#231'o de Venda:'
      end
      object Label10: TLabel
        Left = 23
        Top = 130
        Width = 79
        Height = 13
        Alignment = taRightJustify
        Caption = 'C'#243'digo de Barra:'
      end
      object Label5: TLabel
        Left = 31
        Top = 152
        Width = 71
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data Reajuste:'
      end
      object JvxCurrencyEdit2: TJvxCurrencyEdit
        Left = 104
        Top = 100
        Width = 121
        Height = 21
        AutoSize = False
        DecimalPlaces = 3
        DisplayFormat = '0.000'
        TabOrder = 4
      end
      object JvxCurrencyEdit4: TJvxCurrencyEdit
        Left = 104
        Top = 35
        Width = 121
        Height = 21
        AutoSize = False
        DisplayFormat = '0.00'
        TabOrder = 1
      end
      object Edit3: TEdit
        Left = 104
        Top = 3
        Width = 60
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 3
        TabOrder = 0
      end
      object JvxCurrencyEdit1: TJvxCurrencyEdit
        Left = 104
        Top = 56
        Width = 121
        Height = 21
        AutoSize = False
        DisplayFormat = '0.00'
        TabOrder = 2
      end
      object JvxCurrencyEdit18: TJvxCurrencyEdit
        Left = 104
        Top = 78
        Width = 121
        Height = 21
        AutoSize = False
        DisplayFormat = '0.00'
        TabOrder = 3
      end
      object Edit1: TEdit
        Left = 104
        Top = 122
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 13
        TabOrder = 5
      end
      object JvDateEdit2: TJvDateEdit
        Left = 104
        Top = 144
        Width = 121
        Height = 21
        ButtonFlat = False
        NumGlyphs = 2
        TabOrder = 6
      end
    end
    object TSFOTO: TTabSheet
      Caption = 'Foto'
      ImageIndex = 1
      object Label7: TLabel
        Left = 4
        Top = 64
        Width = 44
        Height = 13
        Caption = 'Caminho:'
      end
      object Label8: TLabel
        Left = 17
        Top = 88
        Width = 31
        Height = 13
        Caption = 'Nome:'
      end
      object Edit2: TEdit
        Left = 52
        Top = 80
        Width = 277
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
      end
      object JvFilenameEdit1: TJvFilenameEdit
        Left = 52
        Top = 56
        Width = 277
        Height = 21
        ButtonFlat = False
        NumGlyphs = 1
        TabOrder = 0
        OnChange = JvFilenameEdit1Change
      end
      object Panel1: TPanel
        Left = 357
        Top = 8
        Width = 157
        Height = 141
        TabOrder = 2
        object Image1: TImage
          Left = 3
          Top = 4
          Width = 151
          Height = 133
          Center = True
          Stretch = True
        end
      end
    end
  end
end
