object fVersao: TfVersao
  Left = 328
  Top = 116
  Width = 450
  Height = 399
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fVersao'
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
  object Label1: TLabel
    Left = 24
    Top = 55
    Width = 58
    Height = 13
    Alignment = taRightJustify
    Caption = 'Programa:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 68
    Top = 31
    Width = 14
    Height = 13
    Alignment = taRightJustify
    Caption = 'ID:'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 46
    Top = 79
    Width = 36
    Height = 13
    Alignment = taRightJustify
    Caption = 'Vers'#227'o:'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 31
    Top = 103
    Width = 51
    Height = 13
    Alignment = taRightJustify
    Caption = 'Descri'#231#227'o:'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 330
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
    Left = 86
    Top = 23
    Width = 60
    Height = 21
    TabStop = False
    CharCase = ecUpperCase
    DataField = 'ID'
    DataSource = dmVersao.dsVersao
    ReadOnly = True
    TabOrder = 0
  end
  object JvDBLookupCombo1: TJvDBLookupCombo
    Left = 86
    Top = 47
    Width = 313
    Height = 21
    DropDownCount = 8
    DataField = 'PROGRAMA_ID'
    DataSource = dmVersao.dsVersao
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = dmVersao.dsPrograma
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 86
    Top = 71
    Width = 179
    Height = 21
    CharCase = ecUpperCase
    DataField = 'VERSAO'
    DataSource = dmVersao.dsVersao
    TabOrder = 2
  end
  object DBMemo1: TDBMemo
    Left = 86
    Top = 96
    Width = 313
    Height = 169
    DataField = 'DESCRICAO'
    DataSource = dmVersao.dsVersao
    TabOrder = 3
  end
end
