object fPessoaModulos: TfPessoaModulos
  Left = 400
  Top = 113
  Width = 598
  Height = 165
  BorderIcons = [biSystemMenu]
  Caption = 'fPessoaModulos'
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
    Left = 78
    Top = 48
    Width = 44
    Height = 13
    Alignment = taRightJustify
    Caption = 'Liberado:'
  end
  object Label2: TLabel
    Left = 84
    Top = 24
    Width = 38
    Height = 13
    Alignment = taRightJustify
    Caption = 'M'#243'dulo:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 96
    Width = 582
    Height = 31
    Align = alBottom
    TabOrder = 2
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
  object JvDBComboBox2: TJvDBComboBox
    Left = 128
    Top = 40
    Width = 161
    Height = 21
    Style = csDropDownList
    DataField = 'LIBERADO'
    DataSource = Dm1.dsPessoaModulos
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'SIM'
      'N'#195'O')
    TabOrder = 1
    Values.Strings = (
      'S'
      'N')
  end
  object JvDBLookupCombo1: TJvDBLookupCombo
    Left = 128
    Top = 16
    Width = 441
    Height = 21
    DropDownCount = 15
    DataField = 'MODULO_ID'
    DataSource = Dm1.dsPessoaModulos
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = Dm1.dsModulo
    TabOrder = 0
    OnEnter = JvDBLookupCombo1Enter
  end
end
