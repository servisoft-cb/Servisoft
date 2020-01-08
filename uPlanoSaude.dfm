object fPlanoSaude: TfPlanoSaude
  Left = 354
  Top = 275
  Width = 450
  Height = 400
  Caption = 'Planos de Sa'#250'de'
  Color = 10930928
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
    Left = 29
    Top = 23
    Width = 37
    Height = 13
    Caption = 'Nome:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 38
    Top = 47
    Width = 27
    Height = 13
    Caption = 'Fone:'
    FocusControl = DBEdit6
  end
  object DBEdit1: TDBEdit
    Left = 70
    Top = 15
    Width = 313
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = Dm1.dsPlanoSaude
    TabOrder = 0
  end
  object DBEdit6: TDBEdit
    Left = 70
    Top = 39
    Width = 155
    Height = 21
    CharCase = ecUpperCase
    DataField = 'FONE'
    DataSource = Dm1.dsPlanoSaude
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 333
    Width = 434
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
      Caption = 'Can&celar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
end
