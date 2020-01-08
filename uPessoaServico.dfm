object fPessoaServico: TfPessoaServico
  Left = 107
  Top = 105
  Width = 450
  Height = 400
  Caption = 'Servi'#231'o Contratado'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 49
    Top = 23
    Width = 37
    Height = 13
    Alignment = taRightJustify
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label46: TLabel
    Left = 30
    Top = 47
    Width = 56
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data In'#237'cio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 41
    Top = 71
    Width = 45
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data Fim:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 59
    Top = 94
    Width = 27
    Height = 13
    Caption = 'Valor:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 335
    Width = 442
    Height = 31
    Align = alBottom
    TabOrder = 3
    object BitBtn1: TBitBtn
      Left = 3
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Confirmar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 78
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Ca&ncelar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object JvDBLookupCombo1: TJvDBLookupCombo
    Left = 90
    Top = 15
    Width = 313
    Height = 21
    DropDownCount = 8
    DataField = 'SERVICO_ID'
    DataSource = Dm1.dsPessoaServico
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = Dm1.dsServico
    TabOrder = 0
  end
  object JvDBDateEdit2: TJvDBDateEdit
    Left = 91
    Top = 38
    Width = 95
    Height = 21
    DataField = 'DATAINI'
    DataSource = Dm1.dsPessoaServico
    NumGlyphs = 2
    TabOrder = 1
  end
  object JvDBDateEdit1: TJvDBDateEdit
    Left = 91
    Top = 62
    Width = 95
    Height = 21
    DataField = 'DATAFIM'
    DataSource = Dm1.dsPessoaServico
    NumGlyphs = 2
    TabOrder = 2
  end
  object JvxCurrencyEdit8: TJvxCurrencyEdit
    Left = 89
    Top = 86
    Width = 96
    Height = 21
    AutoSize = False
    DisplayFormat = '0.00'
    TabOrder = 4
  end
end
