object fTelefone: TfTelefone
  Left = 400
  Top = 113
  Width = 450
  Height = 242
  BorderIcons = [biSystemMenu]
  Caption = 'fTelefone'
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
  object Label3: TLabel
    Left = 37
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
  object Label4: TLabel
    Left = 42
    Top = 119
    Width = 32
    Height = 13
    Alignment = taRightJustify
    Caption = 'E-Mail:'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 39
    Top = 47
    Width = 33
    Height = 13
    Alignment = taRightJustify
    Caption = 'Fone:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 46
    Top = 143
    Width = 28
    Height = 13
    Alignment = taRightJustify
    Caption = 'Setor:'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 41
    Top = 95
    Width = 33
    Height = 13
    Alignment = taRightJustify
    Caption = 'Ramal:'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 19
    Top = 71
    Width = 55
    Height = 13
    Alignment = taRightJustify
    Caption = 'Anivers'#225'rio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 78
    Top = 15
    Width = 313
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CONTATO'
    DataSource = Dm1.dsTelefone
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 173
    Width = 434
    Height = 31
    Align = alBottom
    TabOrder = 6
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
    Left = 78
    Top = 87
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'RAMAL'
    DataSource = Dm1.dsTelefone
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 78
    Top = 39
    Width = 313
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TELEFONE'
    DataSource = Dm1.dsTelefone
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 78
    Top = 111
    Width = 313
    Height = 21
    CharCase = ecUpperCase
    DataField = 'EMAIL'
    DataSource = Dm1.dsTelefone
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 78
    Top = 135
    Width = 313
    Height = 21
    CharCase = ecUpperCase
    DataField = 'SETOR'
    DataSource = Dm1.dsTelefone
    TabOrder = 5
  end
  object JvDBDateEdit1: TJvDBDateEdit
    Left = 78
    Top = 63
    Width = 90
    Height = 21
    DataField = 'ANIVERSARIO'
    DataSource = Dm1.dsTelefone
    NumGlyphs = 2
    TabOrder = 2
    StartOfWeek = Sun
  end
end
