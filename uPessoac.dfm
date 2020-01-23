object fPessoaC: TfPessoaC
  Left = 349
  Top = 106
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Pessoas'
  ClientHeight = 495
  ClientWidth = 803
  Color = clBtnFace
  Constraints.MinHeight = 500
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 462
    Width = 803
    Height = 33
    Align = alBottom
    Color = clSilver
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
    object BitBtn3: TBitBtn
      Left = 153
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Im&primir'
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 228
      Top = 4
      Width = 75
      Height = 25
      Caption = 'En&velope'
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 303
      Top = 4
      Width = 121
      Height = 25
      Caption = 'Atualizar pelo Site'
      TabOrder = 4
      OnClick = BitBtn5Click
    end
    object btnUsuario: TNxButton
      Left = 464
      Top = 2
      Width = 98
      Height = 26
      Caption = 'Usu'#225'rios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btnUsuarioClick
    end
    object btnSistema: TNxButton
      Left = 562
      Top = 2
      Width = 98
      Height = 26
      Caption = 'Sistema'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = btnSistemaClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 803
    Height = 73
    Align = alTop
    Color = clSilver
    TabOrder = 0
    DesignSize = (
      803
      73)
    object Label1: TLabel
      Left = 45
      Top = 29
      Width = 44
      Height = 13
      Caption = 'Consulta:'
    end
    object JvColorSquare4: TJvColorSquare
      Left = 191
      Top = 3
      Width = 27
      Height = 15
      Cursor = crHandPoint
      Color = clRed
      BorderStyle = bsSingle
    end
    object Label3: TLabel
      Left = 10
      Top = 52
      Width = 79
      Height = 13
      Alignment = taRightJustify
      Caption = 'Centro de Custo:'
    end
    object Label4: TLabel
      Left = 643
      Top = 56
      Width = 157
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Autoriza'#231#227'o vencida ou a vencer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 648
      Top = 24
      Width = 84
      Height = 13
      Caption = 'Total de registros:'
    end
    object JvComboBox1: TJvComboBox
      Left = 94
      Top = 21
      Width = 131
      Height = 21
      MaxPixel.Font.Charset = DEFAULT_CHARSET
      MaxPixel.Font.Color = clWindowText
      MaxPixel.Font.Height = -11
      MaxPixel.Font.Name = 'MS Sans Serif'
      MaxPixel.Font.Style = []
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 4
      Text = 'Nome'
      OnEnter = JvComboBox1Enter
      Items.Strings = (
        'Nome'
        'CNPJ/CPF'
        'Cliente'
        'Fornecedor'
        'Transportadora'
        'Vendedor'
        'Funcion'#225'rios')
    end
    object Edit1: TEdit
      Left = 225
      Top = 21
      Width = 264
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object CheckBox1: TCheckBox
      Left = 95
      Top = 3
      Width = 80
      Height = 17
      Caption = 'Ativos'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 225
      Top = 3
      Width = 80
      Height = 17
      Caption = 'Inativos'
      TabOrder = 1
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 313
      Top = 3
      Width = 112
      Height = 17
      Caption = 'Somente clientes'
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = CheckBox2Click
    end
    object JvDBLookupCombo1: TJvDBLookupCombo
      Left = 94
      Top = 44
      Width = 131
      Height = 21
      DropDownCount = 15
      DisplayEmpty = '[Todos...]'
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = Dm1.dsCentroCusto
      TabOrder = 6
      OnChange = JvDBLookupCombo1Change
    end
    object cbBloq: TCheckBox
      Left = 441
      Top = 3
      Width = 152
      Height = 17
      Caption = 'Somente bloqueados'
      TabOrder = 3
    end
    object BitBtn6: TBitBtn
      Left = 225
      Top = 43
      Width = 112
      Height = 21
      Caption = 'Pesquisar'
      TabOrder = 7
      OnClick = BitBtn6Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 73
    Width = 803
    Height = 303
    Align = alClient
    Ctl3D = False
    DataSource = Dm1.dsPessoa
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
    OnTitleClick = SMDBGrid1TitleClick
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 18
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'EMPRESA_PRINCIPAL'
        Title.Alignment = taCenter
        Title.Caption = 'Principal'
        Title.Color = 8454016
        Width = 51
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Pessoa'
        Title.Color = 8454016
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Title.Color = 8454016
        Width = 285
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FANTASIA'
        Title.Alignment = taCenter
        Title.Caption = 'Fantasia'
        Title.Color = 8454016
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CENTROCUSTO'
        Title.Alignment = taCenter
        Title.Caption = 'Centro de Custo'
        Title.Color = 8454016
        Width = 116
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FONE'
        Title.Alignment = taCenter
        Title.Caption = 'Fone'
        Title.Color = 8454016
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEL'
        Title.Alignment = taCenter
        Title.Caption = 'Celular'
        Title.Color = 8454016
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clDtLiberacao'
        Title.Alignment = taCenter
        Title.Caption = 'Liberado at'#233
        Title.Color = 8454016
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VERSAO_EXE'
        Title.Caption = 'Vers'#227'o EXE'
        Title.Color = 8454016
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PESSOA'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo (F/J)'
        Title.Color = 8454016
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DOCUMENTO'
        Title.Color = 8454016
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Title.Caption = 'Endere'#231'o'
        Title.Color = 8454016
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDNUMERO'
        Title.Caption = 'N'#186
        Title.Color = 8454016
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDCOMPLEMENTO'
        Title.Caption = 'Compl.'
        Title.Color = 8454016
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE_NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Cidade'
        Title.Color = 8454016
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_VENDEDOR'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Vendedor'
        Title.Color = 8454016
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_VENDEDOR_COB'
        Title.Alignment = taCenter
        Title.Caption = 'Respons'#225'vel pela cobran'#231'a'
        Title.Color = 8454016
        Visible = True
      end>
  end
  object JvDBGrid2: TJvDBGrid
    Left = 0
    Top = 376
    Width = 803
    Height = 86
    Align = alBottom
    Ctl3D = False
    DataSource = Dm1.dsPessoaHist
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Caption = 'Data'
        Title.Color = 16777088
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HISTORICO'
        Title.Caption = 'Hist'#243'rico'
        Title.Color = 16777088
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_AGENDA'
        Title.Caption = 'Agenda'
        Title.Color = 16777088
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID'
        Title.Color = 16777088
        Visible = True
      end>
  end
  object UCControls1: TUCControls
    GroupName = 'Pessoas'
    UserControl = fMenu.UserControl1
    NotAllowed = naDisabled
    Left = 144
    Top = 264
  end
  object qDeleta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 176
    Top = 264
  end
  object Decoder1: TIdDecoderMIME
    FillChar = '='
    Left = 207
    Top = 264
  end
end
