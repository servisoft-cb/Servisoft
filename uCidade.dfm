object fCidade: TfCidade
  Left = 315
  Top = 186
  Width = 450
  Height = 202
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Cidades'
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
    Left = 29
    Top = 23
    Width = 37
    Height = 13
    Alignment = taRightJustify
    Caption = 'Nome:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 35
    Top = 71
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = 'Pa'#237's:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 30
    Top = 95
    Width = 36
    Height = 13
    Alignment = taRightJustify
    Caption = 'ISSQN:'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 20
    Top = 47
    Width = 44
    Height = 13
    Alignment = taRightJustify
    Caption = 'Estado:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 70
    Top = 15
    Width = 313
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = Dm1.dsCidade
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 133
    Width = 434
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
  object DBEdit4: TDBEdit
    Left = 70
    Top = 87
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'PERISSQN'
    DataSource = Dm1.dsCidade
    TabOrder = 3
  end
  object JvDBLookupCombo2: TJvDBLookupCombo
    Left = 70
    Top = 39
    Width = 60
    Height = 21
    DropDownCount = 8
    DataField = 'UF'
    DataSource = Dm1.dsCidade
    LookupField = 'UF'
    LookupDisplay = 'UF'
    LookupSource = DmCons.qsUF
    TabOrder = 1
  end
  object JvDBLookupCombo1: TJvDBLookupCombo
    Left = 70
    Top = 63
    Width = 313
    Height = 21
    DropDownCount = 8
    DataField = 'CODPAIS'
    DataSource = Dm1.dsCidade
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = DmCons.qsPais
    TabOrder = 2
  end
end
