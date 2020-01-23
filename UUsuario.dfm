object fUsuario: TfUsuario
  Left = 417
  Top = 93
  Width = 646
  Height = 471
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Usuario  (fUsuario)'
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
    Width = 638
    Height = 110
    Align = alTop
    UseDockManager = False
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 29
      Top = 20
      Width = 41
      Height = 14
      Alignment = taRightJustify
      Caption = 'Nome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 346
      Top = 17
      Width = 19
      Height = 14
      Caption = 'ID:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 31
      Top = 42
      Width = 39
      Height = 14
      Alignment = taRightJustify
      Caption = 'Login:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 25
      Top = 63
      Width = 45
      Height = 14
      Alignment = taRightJustify
      Caption = 'Senha:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object btnConfirmar: TNxButton
      Left = 70
      Top = 81
      Width = 74
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnConfirmarClick
    end
    object btnExcluir: TNxButton
      Left = 294
      Top = 81
      Width = 75
      Caption = 'Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnExcluirClick
    end
    object Edit1: TEdit
      Left = 73
      Top = 13
      Width = 182
      Height = 21
      MaxLength = 50
      TabOrder = 2
    end
    object JvxCurrencyEdit1: TJvxCurrencyEdit
      Left = 369
      Top = 9
      Width = 75
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14540253
      DecimalPlaces = 0
      DisplayFormat = '0'
      ReadOnly = True
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 73
      Top = 35
      Width = 182
      Height = 21
      MaxLength = 10
      TabOrder = 4
    end
    object Edit3: TEdit
      Left = 73
      Top = 56
      Width = 182
      Height = 21
      MaxLength = 10
      PasswordChar = '*'
      TabOrder = 5
    end
    object btnAlterar: TNxButton
      Left = 145
      Top = 81
      Width = 75
      Caption = 'Alterar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4227072
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = btnAlterarClick
    end
    object btnCancelar: TNxButton
      Left = 219
      Top = 81
      Width = 75
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8421631
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = btnCancelarClick
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 110
    Width = 638
    Height = 330
    Align = alClient
    Ctl3D = False
    DataSource = Dm1.dsUsuario
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
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Title.Color = 16777088
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Title.Color = 16777088
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOGIN'
        Title.Alignment = taCenter
        Title.Caption = 'Login'
        Title.Color = 16777088
        Width = 154
        Visible = True
      end>
  end
end
