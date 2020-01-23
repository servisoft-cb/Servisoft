object fPessoa_Usuario: TfPessoa_Usuario
  Left = 534
  Top = 260
  Width = 500
  Height = 351
  BorderIcons = [biSystemMenu]
  Caption = 'fPessoa_Usuario'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object NxPanel1: TNxPanel
    Left = 0
    Top = 0
    Width = 492
    Height = 59
    Align = alTop
    UseDockManager = False
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 72
      Top = 12
      Width = 53
      Height = 14
      Caption = 'Usu'#225'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 9
      Top = 29
      Width = 208
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'LOGIN'
      LookupSource = Dm1.dsUsuario
      TabOrder = 0
    end
    object btnConfirmar: TNxButton
      Left = 220
      Top = 27
      Width = 74
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnConfirmarClick
    end
    object btnExcluir: TNxButton
      Left = 294
      Top = 27
      Width = 75
      Caption = 'Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnExcluirClick
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 59
    Width = 492
    Height = 261
    Align = alClient
    Ctl3D = False
    DataSource = Dm1.dsPessoa_Usuario
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = True
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 2
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'clUsuario'
        Title.Alignment = taCenter
        Title.Caption = 'Usu'#225'rio'
        Title.Color = 8453888
        Width = 237
        Visible = True
      end>
  end
end
