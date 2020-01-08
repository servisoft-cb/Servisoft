object fUsuarioC: TfUsuarioC
  Left = 133
  Top = 127
  Width = 520
  Height = 331
  HelpContext = 19
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Listagem das Usu'#225'rios'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 512
    Height = 31
    Align = alTop
    TabOrder = 0
    DesignSize = (
      512
      31)
    object Label1: TLabel
      Left = 4
      Top = 12
      Width = 33
      Height = 13
      Caption = 'Busca:'
      Transparent = True
    end
    object Label3: TLabel
      Left = 292
      Top = 8
      Width = 55
      Height = 18
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Usu'#225'rio'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object BitBtn1: TBitBtn
      Left = 361
      Top = 3
      Width = 74
      Height = 25
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Caption = '&Incluir'
      ParentBiDiMode = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 435
      Top = 3
      Width = 74
      Height = 25
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Caption = 'E&xcluir'
      ParentBiDiMode = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object Edit1: TEdit
      Left = 42
      Top = 4
      Width = 190
      Height = 21
      TabOrder = 2
      OnChange = Edit1Change
    end
  end
  object JvDBGrid1: TJvDBGrid
    Left = 0
    Top = 31
    Width = 512
    Height = 247
    Align = alClient
    DataSource = dm1.dsUsuarios
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = JvDBGrid1DblClick
    OnTitleClick = JvDBGrid1TitleClick
    TitleButtons = True
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 409
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end>
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 278
    Width = 512
    Height = 19
    Color = 10944511
    Panels = <
      item
        Text = 'D'#234' duplo clique para ver ou alterar o registro selecionado'
        Width = 50
      end>
  end
end
