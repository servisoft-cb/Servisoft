object fRecibo: TfRecibo
  Left = 8
  Top = 25
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Emiss'#227'o do Recibo'
  ClientHeight = 507
  ClientWidth = 782
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 1
    Top = 12
    Width = 75
    Height = 13
    Caption = 'Dt.Vecto Inicial:'
  end
  object Label8: TLabel
    Left = 41
    Top = 34
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object Label1: TLabel
    Left = 220
    Top = 12
    Width = 70
    Height = 13
    Caption = 'Dt.Vecto Final:'
  end
  object Label2: TLabel
    Left = 401
    Top = 32
    Width = 35
    Height = 13
    Caption = 'Op'#231#227'o:'
  end
  object Bevel1: TBevel
    Left = -1
    Top = 52
    Width = 784
    Height = 2
    Shape = bsTopLine
  end
  object JvDateEdit1: TJvDateEdit
    Left = 78
    Top = 4
    Width = 100
    Height = 21
    ButtonFlat = False
    NumGlyphs = 2
    TabOrder = 0
  end
  object JvDBLookupCombo1: TJvDBLookupCombo
    Left = 78
    Top = 26
    Width = 316
    Height = 21
    DropDownCount = 8
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = DmCons.qsCliente
    TabOrder = 1
  end
  object JvDateEdit2: TJvDateEdit
    Left = 294
    Top = 4
    Width = 100
    Height = 21
    ButtonFlat = False
    NumGlyphs = 2
    TabOrder = 2
  end
  object RzBitBtn2: TRzBitBtn
    Left = 169
    Top = 62
    Width = 95
    Height = 31
    Caption = 'Filtrar T'#237'tulos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = RzBitBtn2Click
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 96
    Width = 781
    Height = 408
    DataSource = dsqCReceberParc
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 4
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
    ExOptions = [eoBooleanAsCheckBox, eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 30
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 13
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMCRECEBER'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' La'#231'to / Recibo'
        Width = 71
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PARCELA'
        Title.Alignment = taCenter
        Title.Caption = 'Parcela'
        Width = 45
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLRVENCIMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Vencimento'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTVENCIMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Vencimento'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Cliente'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLRRESTANTE'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Pendente'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTMOVIMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Gerado'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMNOTA'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Documento'
        Width = 71
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NOSSONUMERO'
        Title.Alignment = taCenter
        Title.Caption = 'Nosso N'#250'mero'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTPAGTO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Pagamento'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VLRPAGTO'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Pagamento'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODCLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Cliente'
        Visible = True
      end>
  end
  object ComboBox1: TComboBox
    Left = 438
    Top = 24
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 1
    TabOrder = 5
    Text = 'Recibos'
    Items.Strings = (
      'Boletos'
      'Recibos'
      'Ambos')
  end
  object RzBitBtn1: TRzBitBtn
    Left = 264
    Top = 62
    Width = 95
    Height = 31
    Caption = 'Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = RzBitBtn1Click
  end
  object RzBitBtn3: TRzBitBtn
    Left = 360
    Top = 62
    Width = 95
    Height = 31
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = RzBitBtn3Click
  end
  object CheckBox1: TCheckBox
    Left = 656
    Top = 5
    Width = 113
    Height = 17
    Caption = 'Imprimir LogoTipo 1'
    TabOrder = 8
    OnClick = CheckBox1Click
  end
  object CheckBox2: TCheckBox
    Left = 656
    Top = 25
    Width = 113
    Height = 17
    Caption = 'Imprimir LogoTipo 2'
    TabOrder = 9
    OnClick = CheckBox2Click
  end
  object CReceberParc: TSQLDataSet
    CommandText = 
      'Select CRECEBERPARC.*, '#13#10' PESSOA.NOME NOMECLIENTE, '#13#10'PESSOA.ENDE' +
      'RECO ENDCLIENTE, A.NOME CIDADECLIENTE, '#13#10'PESSOA.BAIRRO, PESSOA.C' +
      'EP, PESSOA.ESTADO, PESSOA.PESSOA, PESSOA.DOCUMENTO, PESSOA.FONE'#13 +
      #10'from CRECEBERPARC '#13#10'LEFT JOIN PESSOA '#13#10'ON (PESSOA.ID = CRECEBER' +
      'PARC.CODCLIENTE) '#13#10'LEFT JOIN CIDADE A '#13#10'ON (PESSOA.CIDADE = A.ID' +
      ') '#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 528
    Top = 56
  end
  object cReceberParcP: TDataSetProvider
    DataSet = CReceberParc
    Left = 544
    Top = 56
  end
  object qCReceberParc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'cReceberParcP'
    Left = 568
    Top = 56
    object qCReceberParcNUMCRECEBER: TIntegerField
      FieldName = 'NUMCRECEBER'
      Required = True
    end
    object qCReceberParcPARCELA: TStringField
      FieldName = 'PARCELA'
      Required = True
      Size = 3
    end
    object qCReceberParcVLRVENCIMENTO: TFloatField
      FieldName = 'VLRVENCIMENTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object qCReceberParcQUITADO: TStringField
      FieldName = 'QUITADO'
      FixedChar = True
      Size = 1
    end
    object qCReceberParcJUROSCALC: TFloatField
      FieldName = 'JUROSCALC'
    end
    object qCReceberParcDTPAGTO: TDateField
      FieldName = 'DTPAGTO'
    end
    object qCReceberParcCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object qCReceberParcNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object qCReceberParcVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberParcVLRPAGTO: TFloatField
      FieldName = 'VLRPAGTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberParcVLRRESTANTE: TFloatField
      FieldName = 'VLRRESTANTE'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberParcCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object qCReceberParcPERCCOMISSAO: TFloatField
      FieldName = 'PERCCOMISSAO'
    end
    object qCReceberParcAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 6
    end
    object qCReceberParcTITPORTADOR: TStringField
      FieldName = 'TITPORTADOR'
    end
    object qCReceberParcCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object qCReceberParcVLRDESPESA: TFloatField
      FieldName = 'VLRDESPESA'
    end
    object qCReceberParcCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
    object qCReceberParcPGCARTORIO: TStringField
      FieldName = 'PGCARTORIO'
      FixedChar = True
      Size = 1
    end
    object qCReceberParcTITPROTESTADO: TStringField
      FieldName = 'TITPROTESTADO'
      FixedChar = True
      Size = 1
    end
    object qCReceberParcQTDDIASPROT: TIntegerField
      FieldName = 'QTDDIASPROT'
    end
    object qCReceberParcDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object qCReceberParcDIASATRASO: TIntegerField
      FieldName = 'DIASATRASO'
    end
    object qCReceberParcJUROSPAGOS: TFloatField
      FieldName = 'JUROSPAGOS'
    end
    object qCReceberParcCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object qCReceberParcTIPODOC: TStringField
      FieldName = 'TIPODOC'
      Size = 2
    end
    object qCReceberParcVLRDEVOLUCAO: TFloatField
      FieldName = 'VLRDEVOLUCAO'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberParcCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
    end
    object qCReceberParcDTDEVOLUCAO: TDateField
      FieldName = 'DTDEVOLUCAO'
    end
    object qCReceberParcCOBRANCAEMITIDA: TStringField
      FieldName = 'COBRANCAEMITIDA'
      FixedChar = True
      Size = 1
    end
    object qCReceberParcNUMCARTEIRA: TStringField
      FieldName = 'NUMCARTEIRA'
      Size = 3
    end
    object qCReceberParcNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 15
    end
    object qCReceberParcIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      FixedChar = True
      Size = 1
    end
    object qCReceberParcCODCENTROCUSTO: TIntegerField
      FieldName = 'CODCENTROCUSTO'
    end
    object qCReceberParcNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 40
    end
    object qCReceberParcENDCLIENTE: TStringField
      FieldName = 'ENDCLIENTE'
      Size = 40
    end
    object qCReceberParcCIDADECLIENTE: TStringField
      FieldName = 'CIDADECLIENTE'
      Size = 30
    end
    object qCReceberParcBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 25
    end
    object qCReceberParcCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qCReceberParcESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object qCReceberParcPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object qCReceberParcDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 18
    end
    object qCReceberParcFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object qCReceberParcOBS: TBlobField
      FieldName = 'OBS'
      Size = 1
    end
  end
  object dsqCReceberParc: TDataSource
    DataSet = qCReceberParc
    Left = 584
    Top = 56
  end
end
