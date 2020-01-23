object fPessoa_Sistema: TfPessoa_Sistema
  Left = 431
  Top = 134
  Width = 743
  Height = 351
  BorderIcons = [biSystemMenu]
  Caption = 'fPessoa_Sistema'
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
    Width = 735
    Height = 59
    Align = alTop
    UseDockManager = False
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 72
      Top = 12
      Width = 50
      Height = 14
      Caption = 'Sistema'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 232
      Top = 11
      Width = 67
      Height = 14
      Caption = 'Data Inicio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 332
      Top = 11
      Width = 63
      Height = 14
      Caption = 'Data Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object btnConfirmar: TNxButton
      Left = 421
      Top = 25
      Width = 74
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnConfirmarClick
    end
    object btnExcluir: TNxButton
      Left = 647
      Top = 26
      Width = 75
      Caption = 'Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnExcluirClick
    end
    object btnAlterar: TNxButton
      Left = 496
      Top = 26
      Width = 75
      Caption = 'Alterar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4227072
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btnAlterarClick
    end
    object btnCancelar: TNxButton
      Left = 571
      Top = 26
      Width = 75
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8421631
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = btnCancelarClick
    end
    object JvDBLookupCombo3: TJvDBLookupCombo
      Left = 5
      Top = 29
      Width = 211
      Height = 21
      DropDownCount = 8
      DataField = 'COBCIDADE'
      DataSource = Dm1.dsPessoa
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = Dm1.dsSistema
      TabOrder = 0
    end
    object JvDateEdit1: TJvDateEdit
      Left = 217
      Top = 29
      Width = 100
      Height = 21
      ButtonFlat = False
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 1
    end
    object JvDateEdit2: TJvDateEdit
      Left = 317
      Top = 29
      Width = 100
      Height = 21
      ButtonFlat = False
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 2
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 59
    Width = 735
    Height = 261
    Align = alClient
    Ctl3D = False
    DataSource = Dm1.dsPessoa_Sistema
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
    ColCount = 4
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'clNomeSistema'
        Title.Alignment = taCenter
        Title.Caption = 'Sistema'
        Title.Color = 8453888
        Width = 300
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTINICIO'
        Title.Alignment = taCenter
        Title.Caption = 'Data In'#237'cio'
        Title.Color = 8453888
        Width = 94
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTFINAL'
        Title.Alignment = taCenter
        Title.Caption = 'Data Final'
        Title.Color = 8453888
        Width = 99
        Visible = True
      end>
  end
end
