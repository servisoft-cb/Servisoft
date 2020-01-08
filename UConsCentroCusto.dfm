object fConsCentroCusto: TfConsCentroCusto
  Left = 134
  Top = 98
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta do centro de custo'
  ClientHeight = 479
  ClientWidth = 778
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
    Left = 3
    Top = 7
    Width = 64
    Height = 13
    Caption = 'Centro Custo:'
  end
  object Label3: TLabel
    Left = 15
    Top = 31
    Width = 52
    Height = 13
    Caption = 'Ano Inicial:'
  end
  object Label2: TLabel
    Left = 135
    Top = 31
    Width = 53
    Height = 13
    Caption = 'M'#234's Inicial:'
  end
  object Label4: TLabel
    Left = 20
    Top = 53
    Width = 47
    Height = 13
    Caption = 'Ano Final:'
  end
  object Label5: TLabel
    Left = 140
    Top = 53
    Width = 48
    Height = 13
    Caption = 'M'#234's Final:'
  end
  object JvDBLookupCombo1: TJvDBLookupCombo
    Left = 69
    Top = 1
    Width = 290
    Height = 21
    DropDownCount = 8
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = DmCons.qsCentroCusto
    TabOrder = 0
  end
  object JvIntegerEdit1: TJvIntegerEdit
    Left = 69
    Top = 23
    Width = 54
    Height = 21
    Alignment = taRightJustify
    MaxLength = 4
    ReadOnly = False
    TabOrder = 1
    Value = 0
    MaxValue = 0
    MinValue = 0
    HasMaxValue = False
    HasMinValue = False
  end
  object JvIntegerEdit2: TJvIntegerEdit
    Left = 189
    Top = 23
    Width = 54
    Height = 21
    Alignment = taRightJustify
    MaxLength = 4
    ReadOnly = False
    TabOrder = 2
    Value = 0
    MaxValue = 0
    MinValue = 0
    HasMaxValue = False
    HasMinValue = False
  end
  object JvIntegerEdit3: TJvIntegerEdit
    Left = 69
    Top = 45
    Width = 54
    Height = 21
    Alignment = taRightJustify
    MaxLength = 4
    ReadOnly = False
    TabOrder = 3
    Value = 0
    MaxValue = 0
    MinValue = 0
    HasMaxValue = False
    HasMinValue = False
  end
  object JvIntegerEdit4: TJvIntegerEdit
    Left = 189
    Top = 45
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
  object RzPageControl1: TRzPageControl
    Left = 2
    Top = 72
    Width = 776
    Height = 409
    ActivePage = TabSheet1
    TabIndex = 0
    TabOrder = 5
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Acumulado'
      object SMDBGrid1: TSMDBGrid
        Left = 6
        Top = 8
        Width = 761
        Height = 369
        DataSource = dsmAuxiliar
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
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
        OnGetCellParams = SMDBGrid1GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 9
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'CodCentroCusto'
            Title.Alignment = taCenter
            Title.Caption = 'Codigo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeCentroCusto'
            Title.Alignment = taCenter
            Title.Caption = 'Centro de Custo'
            Width = 185
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Ano'
            Title.Alignment = taCenter
            Width = 50
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Mes'
            Title.Alignment = taCenter
            Title.Caption = 'M'#234's'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrPrevisao'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Previs'#227'o'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrCPagar'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Saida'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrCReceber'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Entrada'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrDiferenca'
            Title.Alignment = taCenter
            Title.Caption = 'Diferen'#231'a'
            Width = 101
            Visible = True
          end>
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 245
    Top = 41
    Width = 92
    Height = 25
    Caption = 'Consulta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object ProgressBar1: TProgressBar
    Left = 442
    Top = 47
    Width = 333
    Height = 16
    TabOrder = 7
  end
  object BitBtn2: TBitBtn
    Left = 338
    Top = 41
    Width = 92
    Height = 25
    Caption = 'Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = BitBtn2Click
  end
  object ConsCentroCusto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT A.*, B.ANO, B.MES, B.VALOR'#13#10'FROM CENTROCUSTO A'#13#10'LEFT JOIN' +
      ' PREVCENTROCUSTO B'#13#10'  ON  (B.CODCENTROCUSTO = A.ID)'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 440
  end
  object ConsCentroCustoP: TDataSetProvider
    DataSet = ConsCentroCusto
    Left = 464
  end
  object mConsCentroCusto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ConsCentroCustoP'
    Left = 480
    object mConsCentroCustoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object mConsCentroCustoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object mConsCentroCustoANO: TIntegerField
      FieldName = 'ANO'
    end
    object mConsCentroCustoMES: TIntegerField
      FieldName = 'MES'
    end
    object mConsCentroCustoVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object mAuxiliar: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodCentroCusto'
        DataType = ftInteger
      end
      item
        Name = 'NomeCentroCusto'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Ano'
        DataType = ftInteger
      end
      item
        Name = 'Mes'
        DataType = ftInteger
      end
      item
        Name = 'VlrPrevisao'
        DataType = ftFloat
      end
      item
        Name = 'VlrCPagar'
        DataType = ftFloat
      end
      item
        Name = 'VlrDiferenca'
        DataType = ftFloat
      end
      item
        Name = 'VlrCReceber'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'NomeCentroCusto;Ano;Mes'
    Params = <>
    StoreDefs = True
    OnNewRecord = mAuxiliarNewRecord
    Left = 464
    Top = 216
    Data = {
      D20000009619E0BD010000001800000008000000000003000000D2000E436F64
      43656E74726F437573746F04000100000000000F4E6F6D6543656E74726F4375
      73746F010049000000010005574944544802000200280003416E6F0400010000
      000000034D657304000100000000000B566C72507265766973616F0800040000
      00000009566C7243506167617208000400000000000C566C724469666572656E
      636108000400000000000B566C72435265636562657208000400000000000100
      0D44454641554C545F4F524445520200820000000000}
    object mAuxiliarCodCentroCusto: TIntegerField
      FieldName = 'CodCentroCusto'
    end
    object mAuxiliarNomeCentroCusto: TStringField
      FieldName = 'NomeCentroCusto'
      Size = 40
    end
    object mAuxiliarAno: TIntegerField
      FieldName = 'Ano'
    end
    object mAuxiliarMes: TIntegerField
      FieldName = 'Mes'
    end
    object mAuxiliarVlrPrevisao: TFloatField
      FieldName = 'VlrPrevisao'
      DisplayFormat = '###,###,##0.00'
    end
    object mAuxiliarVlrCPagar: TFloatField
      FieldName = 'VlrCPagar'
      DisplayFormat = '###,###,##0.00'
    end
    object mAuxiliarVlrDiferenca: TFloatField
      FieldName = 'VlrDiferenca'
      DisplayFormat = '###,###,##0.00'
    end
    object mAuxiliarVlrCReceber: TFloatField
      FieldName = 'VlrCReceber'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsmAuxiliar: TDataSource
    DataSet = mAuxiliar
    Left = 488
    Top = 216
  end
  object CPagar: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT A.DTVENCIMENTO, A.VLRVENCIMENTO, A.VLRPAGTO, A.VLRRESTANT' +
      'E, A.CODCENTROCUSTO'#13#10'FROM CPAGARPARC A'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 568
  end
  object CPagarP: TDataSetProvider
    DataSet = CPagar
    Left = 584
  end
  object mCPagar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CPagarP'
    Left = 600
    object mCPagarDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object mCPagarVLRVENCIMENTO: TFloatField
      FieldName = 'VLRVENCIMENTO'
    end
    object mCPagarVLRPAGTO: TFloatField
      FieldName = 'VLRPAGTO'
    end
    object mCPagarVLRRESTANTE: TFloatField
      FieldName = 'VLRRESTANTE'
    end
    object mCPagarCODCENTROCUSTO: TIntegerField
      FieldName = 'CODCENTROCUSTO'
    end
  end
  object mTotal: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NomeCentroCusto'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CentroCusto'
        DataType = ftInteger
      end
      item
        Name = 'TotalPrevisao'
        DataType = ftFloat
      end
      item
        Name = 'TotalInformado'
        DataType = ftFloat
      end
      item
        Name = 'TotalDiferenca'
        DataType = ftFloat
      end
      item
        Name = 'TotalEntrada'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'NomeCentroCusto'
    Params = <>
    StoreDefs = True
    Left = 464
    Top = 296
    Data = {
      C10000009619E0BD010000001800000006000000000003000000C1000F4E6F6D
      6543656E74726F437573746F0100490000000100055749445448020002002800
      0B43656E74726F437573746F04000100000000000D546F74616C507265766973
      616F08000400000000000E546F74616C496E666F726D61646F08000400000000
      000E546F74616C4469666572656E636108000400000000000C546F74616C456E
      7472616461080004000000000001000D44454641554C545F4F52444552020082
      0000000000}
    object mTotalNomeCentroCusto: TStringField
      FieldName = 'NomeCentroCusto'
      Size = 40
    end
    object mTotalCentroCusto: TIntegerField
      FieldName = 'CentroCusto'
    end
    object mTotalTotalPrevisao: TFloatField
      FieldName = 'TotalPrevisao'
      DisplayFormat = '###,###,##0.00'
    end
    object mTotalTotalInformado: TFloatField
      FieldName = 'TotalInformado'
      DisplayFormat = '###,###,##0.00'
    end
    object mTotalTotalDiferenca: TFloatField
      FieldName = 'TotalDiferenca'
      DisplayFormat = '###,###,##0.00'
    end
    object mTotalTotalEntrada: TFloatField
      FieldName = 'TotalEntrada'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object msTotal: TDataSource
    DataSet = mTotal
    Left = 488
    Top = 296
  end
  object mCReceber: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CReceberP'
    Left = 688
    Top = 8
    object mCReceberDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object mCReceberVLRVENCIMENTO: TFloatField
      FieldName = 'VLRVENCIMENTO'
    end
    object mCReceberVLRPAGTO: TFloatField
      FieldName = 'VLRPAGTO'
    end
    object mCReceberVLRRESTANTE: TFloatField
      FieldName = 'VLRRESTANTE'
    end
    object mCReceberCODCENTROCUSTO: TIntegerField
      FieldName = 'CODCENTROCUSTO'
    end
  end
  object CReceberP: TDataSetProvider
    DataSet = CReceber
    Left = 672
    Top = 8
  end
  object CReceber: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT A.DTVENCIMENTO, A.VLRVENCIMENTO, A.VLRPAGTO, A.VLRRESTANT' +
      'E, A.CODCENTROCUSTO'#13#10'FROM CRECEBERPARC A'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 656
    Top = 8
  end
  object MovFinanceiro: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT A.DTMOVIMENTO,  A.VLRENTRADA,  A.VLRSAIDA,   A.CODCENTROC' +
      'USTO'#13#10'FROM MOVFINANCEIRO A'#13#10'WHERE TIPOMOV = '#39'MOV'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 608
    Top = 112
  end
  object MovFinanceiroP: TDataSetProvider
    DataSet = MovFinanceiro
    Left = 624
    Top = 112
  end
  object mMovFinanceiro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MovFinanceiroP'
    Left = 640
    Top = 112
    object mMovFinanceiroDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object mMovFinanceiroVLRENTRADA: TFloatField
      FieldName = 'VLRENTRADA'
    end
    object mMovFinanceiroVLRSAIDA: TFloatField
      FieldName = 'VLRSAIDA'
    end
    object mMovFinanceiroCODCENTROCUSTO: TIntegerField
      FieldName = 'CODCENTROCUSTO'
    end
  end
end
