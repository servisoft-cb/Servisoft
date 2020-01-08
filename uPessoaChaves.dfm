object fPessoaChaves: TfPessoaChaves
  Left = 400
  Top = 113
  Width = 676
  Height = 165
  BorderIcons = [biSystemMenu]
  Caption = 'fPessoaChaves'
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
    Left = 98
    Top = 21
    Width = 24
    Height = 13
    Alignment = taRightJustify
    Caption = 'Tipo:'
  end
  object Label2: TLabel
    Left = 88
    Top = 45
    Width = 34
    Height = 13
    Alignment = taRightJustify
    Caption = 'Chave:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 103
    Width = 668
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
  object DBEdit1: TDBEdit
    Left = 128
    Top = 37
    Width = 513
    Height = 21
    DataField = 'CHAVE'
    DataSource = Dm1.dsPessoaChave
    TabOrder = 1
  end
  object JvDBComboBox2: TJvDBComboBox
    Left = 128
    Top = 13
    Width = 161
    Height = 21
    Style = csDropDownList
    DataField = 'TIPO'
    DataSource = Dm1.dsPessoaChave
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'NFe 1.0'
      'NFe 2.0'
      'NFe 2.1'
      'NFSe 1'
      'MDFe'
      'NFe 2.4')
    TabOrder = 0
    Values.Strings = (
      'F1'
      'F2'
      'F3'
      'S1'
      'M1'
      'F4')
  end
end
