object fPagtoComissao: TfPagtoComissao
  Left = 218
  Top = 191
  Width = 546
  Height = 264
  Caption = 'Pagamento Comiss'#227'o'
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 25
    Top = 93
    Width = 84
    Height = 13
    Caption = 'Valor Pagamento:'
  end
  object Label7: TLabel
    Left = 15
    Top = 24
    Width = 94
    Height = 13
    Caption = 'Saldo do Vendedor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 25
    Top = 70
    Width = 83
    Height = 13
    Caption = 'Data Pagamento:'
  end
  object Label3: TLabel
    Left = 84
    Top = 128
    Width = 25
    Height = 13
    Caption = 'Obs.:'
  end
  object BitBtn1: TBitBtn
    Left = 112
    Top = 192
    Width = 83
    Height = 28
    Caption = 'Confirmar'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 195
    Top = 192
    Width = 83
    Height = 28
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object JvxCurrencyEdit1: TJvxCurrencyEdit
    Left = 111
    Top = 85
    Width = 98
    Height = 21
    AutoSize = False
    Color = clAqua
    DisplayFormat = '0.00'
    TabOrder = 1
  end
  object JvxCurrencyEdit5: TJvxCurrencyEdit
    Left = 111
    Top = 16
    Width = 98
    Height = 21
    AutoSize = False
    Color = clInfoBk
    DisplayFormat = '0.00'
    ReadOnly = True
    TabOrder = 5
  end
  object JvDateEdit1: TJvDateEdit
    Left = 111
    Top = 62
    Width = 98
    Height = 21
    ButtonFlat = False
    NumGlyphs = 2
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 111
    Top = 120
    Width = 401
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
  end
end
