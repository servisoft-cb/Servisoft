object fOrcamentoProd: TfOrcamentoProd
  Left = 411
  Top = 200
  Width = 441
  Height = 400
  Caption = 'Produtos'
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 33
    Top = 39
    Width = 49
    Height = 13
    Cursor = crHandPoint
    Alignment = taRightJustify
    Caption = 'Produto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = Label1Click
  end
  object Label4: TLabel
    Left = 62
    Top = 15
    Width = 20
    Height = 13
    Alignment = taRightJustify
    Caption = 'Qtd:'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 39
    Top = 87
    Width = 43
    Height = 13
    Alignment = taRightJustify
    Caption = 'Vlr. Unit.:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 37
    Top = 159
    Width = 45
    Height = 13
    Alignment = taRightJustify
    Caption = 'Vlr. Total:'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 39
    Top = 63
    Width = 43
    Height = 13
    Alignment = taRightJustify
    Caption = 'Unidade:'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label20: TLabel
    Left = 17
    Top = 110
    Width = 65
    Height = 13
    Alignment = taRightJustify
    Caption = 'M'#227'o de Obra:'
  end
  object Label6: TLabel
    Left = 42
    Top = 134
    Width = 40
    Height = 13
    Alignment = taRightJustify
    Caption = 'Imposto:'
  end
  object SpeedButton1: TSpeedButton
    Left = 397
    Top = 30
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = SpeedButton1Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 333
    Width = 425
    Height = 31
    Align = alBottom
    TabOrder = 7
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
    Top = 7
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'QTD'
    DataSource = Dm1.dsPedidoIt
    TabOrder = 0
    OnExit = DBEdit1Exit
  end
  object JvDBLookupCombo1: TJvDBLookupCombo
    Left = 86
    Top = 31
    Width = 313
    Height = 21
    DropDownCount = 15
    DataField = 'CODPRODUTO'
    DataSource = Dm1.dsPedidoIt
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = DmCons.qsProduto
    TabOrder = 1
    OnExit = JvDBLookupCombo1Exit
  end
  object DBEdit1: TDBEdit
    Left = 86
    Top = 79
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'VLRUNITARIO'
    DataSource = Dm1.dsPedidoIt
    TabOrder = 3
    OnExit = DBEdit1Exit
  end
  object DBEdit2: TDBEdit
    Left = 86
    Top = 151
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'VLRTOTAL'
    DataSource = Dm1.dsPedidoIt
    TabOrder = 6
  end
  object DBEdit3: TDBEdit
    Left = 86
    Top = 55
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'UNIDADE'
    DataSource = Dm1.dsPedidoIt
    TabOrder = 2
  end
  object DBEdit13: TDBEdit
    Left = 86
    Top = 103
    Width = 59
    Height = 21
    CharCase = ecUpperCase
    DataField = 'VLRMO'
    DataSource = Dm1.dsPedidoIt
    TabOrder = 4
    OnExit = DBEdit1Exit
  end
  object DBEdit5: TDBEdit
    Left = 86
    Top = 127
    Width = 59
    Height = 21
    CharCase = ecUpperCase
    DataField = 'VLRMO'
    DataSource = Dm1.dsPedidoIt
    ReadOnly = True
    TabOrder = 5
    OnExit = DBEdit1Exit
  end
end
