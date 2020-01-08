object fOrcamentoClausula: TfOrcamentoClausula
  Left = 122
  Top = 110
  Width = 450
  Height = 400
  Caption = 'Cl'#225'usula'
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
  object Label1: TLabel
    Left = 13
    Top = 15
    Width = 53
    Height = 13
    Cursor = crHandPoint
    Alignment = taRightJustify
    Caption = 'Cl'#225'usula:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 335
    Width = 442
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
  object JvDBLookupCombo1: TJvDBLookupCombo
    Left = 70
    Top = 7
    Width = 313
    Height = 21
    DropDownCount = 8
    DataField = 'CLAUSULA_ID'
    DataSource = Dm1.dsPedido_Clausula
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = Dm1.dsClausula
    TabOrder = 0
    OnChange = JvDBLookupCombo1Change
  end
  object DBRichEdit1: TDBRichEdit
    Left = 0
    Top = 48
    Width = 442
    Height = 287
    Align = alBottom
    DataField = 'DESCRICAO'
    DataSource = Dm1.dsPedido_Clausula
    TabOrder = 1
  end
end
