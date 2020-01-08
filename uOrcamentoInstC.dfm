object fOrcamentoInstC: TfOrcamentoInstC
  Left = -2
  Top = 41
  Width = 799
  Height = 521
  Caption = 'Or'#231'amento'
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 455
    Width = 791
    Height = 32
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 3
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Incluir'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 78
      Top = 4
      Width = 75
      Height = 25
      Caption = 'E&xcluir'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn5: TBitBtn
      Left = 153
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Im&primir'
      Enabled = False
      TabOrder = 2
      OnClick = BitBtn5Click
    end
    object BitBtn3: TBitBtn
      Left = 229
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Envia E-mail'
      TabOrder = 3
      OnClick = BitBtn3Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 791
    Height = 31
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 12
      Width = 44
      Height = 13
      Caption = 'Consulta:'
    end
    object Edit1: TEdit
      Left = 62
      Top = 4
      Width = 227
      Height = 21
      TabOrder = 0
      Text = '[Digite o nome e pressione F3 para localizar]'
    end
    object RadioGroup1: TRadioGroup
      Left = 300
      Top = -3
      Width = 350
      Height = 31
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Or'#231'amento'
        'Ordem de Servi'#231'o/Reclama'#231#227'o')
      TabOrder = 1
    end
  end
  object SMDBGrid2: TSMDBGrid
    Left = 0
    Top = 31
    Width = 791
    Height = 424
    Align = alClient
    DataSource = Dm1.dsPedido
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid2DblClick
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
    ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 7
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'NUMORCAMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' '
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTPEDIDO'
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE_NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'clTipo'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRTOTAL'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Total'
        Width = 64
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMLACTO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Lan'#231'amento'
        Width = 64
        Visible = True
      end>
  end
  object UCControls1: TUCControls
    GroupName = 'Or'#231'amentos'
    UserControl = fMenu.UserControl1
    NotAllowed = naDisabled
    Left = 128
    Top = 160
  end
end
