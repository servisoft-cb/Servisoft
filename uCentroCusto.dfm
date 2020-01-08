object fCentroCusto: TfCentroCusto
  Left = 107
  Top = 60
  Width = 480
  Height = 520
  Caption = 'Centro de custo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 29
    Top = 15
    Width = 37
    Height = 13
    Alignment = taRightJustify
    Caption = 'Nome:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 70
    Top = 7
    Width = 313
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = Dm1.dsCentroCusto
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 436
    Width = 465
    Height = 31
    Align = alBottom
    TabOrder = 1
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 40
    Width = 465
    Height = 393
    Caption = ' Previs'#227'o por ano '
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 25
      Height = 13
      Caption = 'Ano: '
    end
    object BitBtn3: TBitBtn
      Left = 88
      Top = 14
      Width = 63
      Height = 25
      Caption = 'Filtra'
      TabOrder = 0
      OnClick = BitBtn3Click
    end
    object GroupBox2: TGroupBox
      Left = 235
      Top = 7
      Width = 225
      Height = 68
      Caption = ' Valores '
      TabOrder = 1
      object Label2: TLabel
        Left = 8
        Top = 24
        Width = 63
        Height = 13
        Caption = 'Valor no ano:'
      end
      object JvxCurrencyEdit10: TJvxCurrencyEdit
        Left = 71
        Top = 17
        Width = 121
        Height = 21
        AutoSize = False
        DisplayFormat = '0.00'
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 40
        Top = 40
        Width = 169
        Height = 25
        Caption = 'Divide esse valor para os meses'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn4Click
      end
    end
    object SMDBGrid1: TSMDBGrid
      Left = 5
      Top = 78
      Width = 455
      Height = 310
      DataSource = Dm1.dsPrevCentroCusto
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
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
      ColCount = 4
      RowCount = 2
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ANO'
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 88
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'MES'
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taCenter
          Width = 142
          Visible = True
        end>
    end
    object BitBtn5: TBitBtn
      Left = 160
      Top = 50
      Width = 74
      Height = 25
      Caption = 'Excluir Meses'
      TabOrder = 3
      OnClick = BitBtn5Click
    end
    object JvIntegerEdit1: TJvIntegerEdit
      Left = 32
      Top = 16
      Width = 54
      Height = 21
      Alignment = taRightJustify
      MaxLength = 4
      ReadOnly = False
      TabOrder = 4
      Value = 0
      MaxValue = 0
      MinValue = 0
      HasMaxValue = False
      HasMinValue = False
    end
  end
end
