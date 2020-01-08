object fPessoaHist: TfPessoaHist
  Left = 400
  Top = 113
  Width = 676
  Height = 194
  BorderIcons = [biSystemMenu]
  Caption = 'fPessoaHist'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label44: TLabel
    Left = 39
    Top = 21
    Width = 83
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data do Registro:'
  end
  object Label1: TLabel
    Left = 46
    Top = 69
    Width = 76
    Height = 13
    Alignment = taRightJustify
    Caption = 'Agendado para:'
  end
  object Label2: TLabel
    Left = 78
    Top = 45
    Width = 44
    Height = 13
    Alignment = taRightJustify
    Caption = 'Hist'#243'rico:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 125
    Width = 660
    Height = 31
    Align = alBottom
    TabOrder = 4
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
  object JvDBDateEdit1: TJvDBDateEdit
    Left = 127
    Top = 13
    Width = 93
    Height = 21
    DataField = 'DATA'
    DataSource = Dm1.dsPessoaHist
    NumGlyphs = 2
    TabOrder = 0
    StartOfWeek = Sun
  end
  object JvDBDateEdit2: TJvDBDateEdit
    Left = 127
    Top = 61
    Width = 93
    Height = 21
    DataField = 'DATA_AGENDA'
    DataSource = Dm1.dsPessoaHist
    NumGlyphs = 2
    TabOrder = 2
    StartOfWeek = Sun
  end
  object DBEdit1: TDBEdit
    Left = 128
    Top = 37
    Width = 513
    Height = 21
    DataField = 'HISTORICO'
    DataSource = Dm1.dsPessoaHist
    TabOrder = 1
  end
  object DBCheckBox1: TDBCheckBox
    Left = 127
    Top = 88
    Width = 97
    Height = 17
    Caption = 'Conclu'#237'do'
    DataField = 'CONCLUIDO'
    DataSource = Dm1.dsPessoaHist
    TabOrder = 5
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object JvDBLookupCombo1: TJvDBLookupCombo
    Left = 224
    Top = 61
    Width = 145
    Height = 21
    DropDownCount = 8
    DataField = 'USUARIO_RESP'
    DataSource = Dm1.dsPessoaHist
    LookupField = 'UCLOGIN'
    LookupDisplay = 'UCLOGIN'
    LookupSource = Dm1.dsUCTabUsers
    TabOrder = 3
  end
end
