object fClientesSistemaC: TfClientesSistemaC
  Left = 151
  Top = 164
  Width = 1157
  Height = 447
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Clientes por Sistema'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1141
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 15
      Top = 12
      Width = 40
      Height = 13
      Caption = 'Sistema:'
    end
    object Label2: TLabel
      Left = 6
      Top = 36
      Width = 49
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vendedor:'
    end
    object Label3: TLabel
      Left = 568
      Top = 16
      Width = 44
      Height = 13
      Caption = 'Registros'
    end
    object JvDBLookupCombo1: TJvDBLookupCombo
      Left = 57
      Top = 4
      Width = 298
      Height = 21
      DropDownCount = 15
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = Dm1.dsSistema
      TabOrder = 0
    end
    object btnConsultar: TBitBtn
      Left = 369
      Top = 8
      Width = 112
      Height = 21
      Caption = 'Pesquisar'
      TabOrder = 1
      OnClick = btnConsultarClick
    end
    object JvDBLookupCombo2: TJvDBLookupCombo
      Left = 57
      Top = 28
      Width = 298
      Height = 21
      DropDownCount = 15
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DmCons.qsVendedor
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 488
      Top = 8
      Width = 75
      Height = 21
      Caption = 'Excel'
      TabOrder = 3
      OnClick = BitBtn1Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 57
    Width = 1141
    Height = 351
    Align = alClient
    DataSource = DmCons.dsSistemaCliente
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnTitleClick = SMDBGrid1TitleClick
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 6
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'SISTEMA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DOCUMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENDEDOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEND_COB'
        Visible = True
      end>
  end
  object UCControls1: TUCControls
    GroupName = 'Centro Custo'
    UserControl = fMenu.UserControl1
    NotAllowed = naDisabled
    Left = 96
    Top = 136
  end
end
