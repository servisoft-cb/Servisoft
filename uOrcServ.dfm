object fOrcServ: TfOrcServ
  Left = 400
  Top = 113
  Width = 450
  Height = 400
  Caption = 'Servi'#231'os'
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
    Left = 50
    Top = 15
    Width = 48
    Height = 13
    Cursor = crHandPoint
    Alignment = taRightJustify
    Caption = 'Servi'#231'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = Label1Click
  end
  object Label4: TLabel
    Left = 73
    Top = 39
    Width = 25
    Height = 13
    Alignment = taRightJustify
    Caption = 'Qtd:'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 64
    Top = 63
    Width = 34
    Height = 13
    Alignment = taRightJustify
    Caption = 'Valor:'
    FocusControl = DBEdit16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 31
    Top = 87
    Width = 67
    Height = 13
    Alignment = taRightJustify
    Caption = 'Valor Total:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 331
    Width = 434
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
  object DBEdit4: TDBEdit
    Left = 102
    Top = 31
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'QTD'
    DataSource = Dm1.dsPedidoServico
    MaxLength = 3
    TabOrder = 1
    OnExit = DBEdit4Exit
  end
  object JvDBLookupCombo1: TJvDBLookupCombo
    Left = 102
    Top = 7
    Width = 313
    Height = 21
    DropDownCount = 8
    DataField = 'SERVICO_ID'
    DataSource = Dm1.dsPedidoServico
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = Dm1.dsServico
    TabOrder = 0
  end
  object DBEdit16: TDBEdit
    Left = 102
    Top = 55
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'VALORSERVICO'
    DataSource = Dm1.dsPedidoServico
    TabOrder = 2
    OnExit = DBEdit16Exit
  end
  object DBEdit1: TDBEdit
    Left = 102
    Top = 79
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'VALORMES'
    DataSource = Dm1.dsPedidoServico
    TabOrder = 4
  end
  object PopupMenu1: TPopupMenu
    Left = 368
    Top = 56
    object Limpar1: TMenuItem
      Caption = 'Limpar'
    end
  end
end
