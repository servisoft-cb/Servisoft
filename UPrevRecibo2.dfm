object fPrevRecibo2: TfPrevRecibo2
  Left = 7
  Top = 38
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Impress'#227'o do Recibo'
  ClientHeight = 288
  ClientWidth = 774
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
  object Label1: TLabel
    Left = -1
    Top = 10
    Width = 90
    Height = 13
    Caption = 'N'#186' Lan'#231'to/Recibo:'
  end
  object Label3: TLabel
    Left = 185
    Top = 10
    Width = 66
    Height = 13
    Caption = 'N'#186' Nota/Doc:'
  end
  object Label2: TLabel
    Left = 361
    Top = 10
    Width = 73
    Height = 13
    Caption = 'Dt.Vencimento:'
  end
  object CheckBox1: TCheckBox
    Left = 552
    Top = 24
    Width = 97
    Height = 17
    Caption = 'Imprimir Logotipo'
    TabOrder = 0
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 72
    Width = 772
    Height = 215
    ActivePage = TabSheet1
    TabIndex = 0
    TabOrder = 1
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Valores recebido no t'#237'tulo'
      object BitBtn1: TBitBtn
        Left = 678
        Top = 161
        Width = 88
        Height = 28
        Caption = 'Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object SMDBGrid1: TSMDBGrid
        Left = 2
        Top = 3
        Width = 763
        Height = 156
        Color = clInfoBk
        DataSource = Dm1.dsCReceberHist
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 6
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUMCRECEBER'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' La'#231'to / Recibo'
            Width = 74
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PARCELA'
            Title.Alignment = taCenter
            Title.Caption = 'Parcela'
            Width = 46
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VLRULTPGTO'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Width = 69
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTULTPGTO'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HISTORICO'
            Title.Alignment = taCenter
            Title.Caption = 'Hist'#243'rico'
            Width = 455
            Visible = True
          end>
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Valores pagos no t'#237'tulo'
      object Label7: TLabel
        Left = 54
        Top = 32
        Width = 3
        Height = 13
      end
      object BitBtn3: TBitBtn
        Left = 677
        Top = 160
        Width = 88
        Height = 28
        Caption = 'Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtn3Click
      end
      object SMDBGrid2: TSMDBGrid
        Left = 2
        Top = 3
        Width = 763
        Height = 156
        Color = clInfoBk
        DataSource = Dm1.dsCPagarHist
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 6
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUMCPAGAR'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' La'#231'to / Recibo'
            Width = 74
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PARCELA'
            Title.Alignment = taCenter
            Title.Caption = 'Parcela'
            Width = 46
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VLRULTPGTO'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Width = 69
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTULTPGTO'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HISTORICO'
            Title.Alignment = taCenter
            Title.Caption = 'Hist'#243'rico'
            Width = 455
            Visible = True
          end>
      end
    end
  end
  object BitBtn4: TBitBtn
    Left = 683
    Top = 8
    Width = 88
    Height = 28
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn4Click
  end
  object JvIntegerEdit1: TJvIntegerEdit
    Left = 90
    Top = 2
    Width = 89
    Height = 21
    Alignment = taRightJustify
    Color = clInfoBk
    ReadOnly = True
    TabOrder = 3
    Value = 0
    MaxValue = 0
    MinValue = 0
    HasMaxValue = False
    HasMinValue = False
  end
  object JvIntegerEdit3: TJvIntegerEdit
    Left = 255
    Top = 2
    Width = 95
    Height = 21
    Alignment = taRightJustify
    Color = clInfoBk
    ReadOnly = True
    TabOrder = 4
    Value = 0
    MaxValue = 0
    MinValue = 0
    HasMaxValue = False
    HasMinValue = False
  end
  object Edit1: TEdit
    Left = 434
    Top = 2
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    Color = clInfoBk
    ReadOnly = True
    TabOrder = 5
    Text = 'EDIT1'
  end
  object Edit2: TEdit
    Left = 90
    Top = 24
    Width = 441
    Height = 21
    CharCase = ecUpperCase
    Color = clInfoBk
    ReadOnly = True
    TabOrder = 6
    Text = 'EDIT1'
  end
  object mRecibo: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NumLacto'
        DataType = ftInteger
      end
      item
        Name = 'NumNota'
        DataType = ftInteger
      end
      item
        Name = 'DtVencimento'
        DataType = ftDate
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Endereco'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Bairro'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Cidade'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Cep'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'Valor'
        DataType = ftFloat
      end
      item
        Name = 'Pessoa'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Documento'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'Fone'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Historico'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'Parcela'
        DataType = ftString
        Size = 5
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 296
    Top = 104
    Data = {
      850100009619E0BD01000000180000000F0000000000030000008501084E756D
      4C6163746F0400010000000000074E756D4E6F746104000100000000000C4474
      56656E63696D656E746F0400060000000000044E6F6D65010049000000010005
      574944544802000200280008456E64657265636F010049000000010005574944
      54480200020028000642616972726F0100490000000100055749445448020002
      001E00064369646164650100490000000100055749445448020002001E000255
      4601004900000001000557494454480200020002000343657001004900000001
      000557494454480200020009000556616C6F7208000400000000000650657373
      6F61010049000000010005574944544802000200010009446F63756D656E746F
      010049000000010005574944544802000200120004466F6E6501004900000001
      00055749445448020002000F0009486973746F7269636F010049000000010005
      57494454480200020096000750617263656C6101004900000001000557494454
      480200020005000000}
    object mReciboNumLacto: TIntegerField
      FieldName = 'NumLacto'
    end
    object mReciboNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object mReciboDtVencimento: TDateField
      FieldName = 'DtVencimento'
    end
    object mReciboNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object mReciboEndereco: TStringField
      FieldName = 'Endereco'
      Size = 40
    end
    object mReciboBairro: TStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object mReciboCidade: TStringField
      FieldName = 'Cidade'
      Size = 30
    end
    object mReciboUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object mReciboCep: TStringField
      FieldName = 'Cep'
      Size = 9
    end
    object mReciboValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '###,###,##0.00'
    end
    object mReciboPessoa: TStringField
      FieldName = 'Pessoa'
      Size = 1
    end
    object mReciboDocumento: TStringField
      FieldName = 'Documento'
      Size = 18
    end
    object mReciboFone: TStringField
      FieldName = 'Fone'
      Size = 15
    end
    object mReciboHistorico: TStringField
      FieldName = 'Historico'
      Size = 150
    end
    object mReciboParcela: TStringField
      FieldName = 'Parcela'
      Size = 5
    end
  end
  object dsmRecibo: TDataSource
    DataSet = mRecibo
    Left = 312
    Top = 104
  end
end
