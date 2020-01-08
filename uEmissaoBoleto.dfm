object fEmissaoBoleto: TfEmissaoBoleto
  Left = 25
  Top = 100
  Width = 569
  Height = 480
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Emiss'#227'o de Boleto'
  Color = 10930928
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 561
    Height = 453
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Parcelas dispon'#237'veis'
      DesignSize = (
        553
        425)
      object Label1: TLabel
        Left = 46
        Top = 16
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data Inicial:'
      end
      object Label2: TLabel
        Left = 51
        Top = 40
        Width = 51
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data Final:'
      end
      object Label26: TLabel
        Left = 30
        Top = 63
        Width = 72
        Height = 13
        Cursor = crHandPoint
        Hint = 
          'Abre o cadastro de pessoa para efetuar novo registro ou alterar ' +
          'registro atual'
        Alignment = taRightJustify
        Caption = 'Banco emissor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object JvDBGrid1: TJvDBGrid
        Left = 0
        Top = 82
        Width = 553
        Height = 285
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dsCREceberParc
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        MultiSelect = True
        Columns = <
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'CLIENTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMNOTA'
            Title.Caption = 'NRO NOTA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PARCELA'
            Title.Alignment = taCenter
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTVENCIMENTO'
            Title.Caption = 'VENCIMENTO'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRVENCIMENTO'
            Title.Caption = 'VALOR'
            Visible = True
          end>
      end
      object JvDateEdit1: TJvDateEdit
        Left = 107
        Top = 8
        Width = 90
        Height = 21
        ButtonFlat = False
        NumGlyphs = 2
        StartOfWeek = Sun
        TabOrder = 1
      end
      object JvDateEdit2: TJvDateEdit
        Left = 107
        Top = 32
        Width = 90
        Height = 21
        ButtonFlat = False
        NumGlyphs = 2
        StartOfWeek = Sun
        TabOrder = 2
      end
      object BitBtn1: TBitBtn
        Left = 200
        Top = 29
        Width = 169
        Height = 25
        Caption = 'Filtrar pelas datas selecionadas'
        TabOrder = 3
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 2
        Top = 374
        Width = 153
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Marcar / Desmarcar todos'
        TabOrder = 4
        OnClick = BitBtn2Click
      end
      object BitBtn3: TBitBtn
        Left = 451
        Top = 374
        Width = 100
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'Avan'#231'ar >>'
        TabOrder = 5
        OnClick = BitBtn3Click
      end
      object JvDBLookupCombo2: TJvDBLookupCombo
        Left = 106
        Top = 55
        Width = 263
        Height = 21
        DropDownCount = 8
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = DmCons.qsBanco
        TabOrder = 6
      end
      object StatusBar1: TStatusBar
        Left = 0
        Top = 406
        Width = 553
        Height = 19
        Panels = <
          item
            Text = 'Para selecionar v'#225'rias parcelas, mantenha CTRL pressionado'
            Width = 50
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Parcelas selecionadas para gera'#231#227'o'
      ImageIndex = 1
      object Label3: TLabel
        Left = 56
        Top = 24
        Width = 59
        Height = 13
        Caption = 'Valor boleto:'
      end
      object Label4: TLabel
        Left = 40
        Top = 48
        Width = 75
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data para juros:'
      end
      object Edit1: TEdit
        Left = 120
        Top = 16
        Width = 90
        Height = 21
        TabOrder = 0
        Text = '4,00'
      end
      object JvDateEdit3: TJvDateEdit
        Left = 120
        Top = 40
        Width = 90
        Height = 21
        ButtonFlat = False
        NumGlyphs = 2
        StartOfWeek = Sun
        TabOrder = 1
      end
      object JvDBComboBox2: TJvDBComboBox
        Left = 120
        Top = 64
        Width = 145
        Height = 21
        Style = csDropDownList
        DataField = 'STATUS'
        DataSource = Dm1.dsPessoa
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Ativo'
          'Inativo'
          'Teste'
          'Proposta'
          'Em D'#233'bito')
        TabOrder = 2
        Values.Strings = (
          'A'
          'I'
          'T'
          'P'
          'D')
      end
    end
  end
  object qCReceberParc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prCReceberParc'
    Left = 24
    Top = 160
    object qCReceberParcFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 40
    end
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
      DisplayFormat = '0.00'
    end
    object qCReceberParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object qCReceberParcQUITADO: TStringField
      FieldName = 'QUITADO'
      FixedChar = True
      Size = 1
    end
    object qCReceberParcCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object qCReceberParcNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object qCReceberParcVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
      DisplayFormat = '0.00'
    end
    object qCReceberParcVLRRESTANTE: TFloatField
      FieldName = 'VLRRESTANTE'
      DisplayFormat = '0.00'
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
      DisplayFormat = '0.00'
    end
    object qCReceberParcCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
    object qCReceberParcCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object qCReceberParcCOBRANCAEMITIDA: TStringField
      FieldName = 'COBRANCAEMITIDA'
      FixedChar = True
      Size = 1
    end
    object qCReceberParcNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qCReceberParcDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 18
    end
  end
  object prCReceberParc: TDataSetProvider
    DataSet = CReceberParc
    Left = 56
    Top = 160
  end
  object dsCREceberParc: TDataSource
    DataSet = qCReceberParc
    Left = 88
    Top = 160
  end
  object CReceberParc: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT A.*, B.FANTASIA, NOME, DOCUMENTO'
      'FROM CRECEBERPARC A'
      'INNER JOIN PESSOA B'
      'ON (A.CODCLIENTE = B.ID)'
      'WHERE QUITADO IS NULL')
    SQLConnection = Dm1.Conexao
    Left = 120
    Top = 160
  end
  object Query1: TQuery
    Left = 153
    Top = 160
  end
end
