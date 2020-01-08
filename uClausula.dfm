object fClausula: TfClausula
  Left = 18
  Top = 31
  Width = 765
  Height = 533
  Caption = 'Cl'#225'usula'
  Color = clBtnFace
  Constraints.MinHeight = 274
  Constraints.MinWidth = 450
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
  object Label1: TLabel
    Left = 5
    Top = 47
    Width = 62
    Height = 13
    Caption = 'Descri'#231#227'o:'
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
    Width = 519
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = Dm1.dsClausula
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 468
    Width = 757
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
  object DBMemo1: TDBMemo
    Left = 8
    Top = 64
    Width = 745
    Height = 401
    DataField = 'DESCRICAO'
    DataSource = Dm1.dsClausula
    ScrollBars = ssVertical
    TabOrder = 1
  end
end
