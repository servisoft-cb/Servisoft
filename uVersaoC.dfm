object fVersaoC: TfVersaoC
  Left = 421
  Top = 255
  Width = 450
  Height = 400
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fVersaoC'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 329
    Width = 434
    Height = 33
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
  end
  object JvDBGrid1: TJvDBGrid
    Left = 0
    Top = 31
    Width = 434
    Height = 298
    Align = alClient
    DataSource = dmVersao.dsVersao
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = JvDBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROGRAMA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VERSAO'
        Title.Caption = 'VERS'#195'O'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 434
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
    object JvDBLookupCombo1: TJvDBLookupCombo
      Left = 62
      Top = 5
      Width = 243
      Height = 21
      DropDownCount = 15
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = dmVersao.dsPrograma
      TabOrder = 0
    end
    object BitBtn3: TBitBtn
      Left = 311
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Consulta'
      TabOrder = 1
      OnClick = BitBtn3Click
    end
  end
  object UCControls1: TUCControls
    GroupName = 'Cidades'
    UserControl = fMenu.UserControl1
    NotAllowed = naDisabled
    Left = 96
    Top = 136
  end
end
