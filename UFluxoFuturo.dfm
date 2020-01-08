object fFluxoFuturo: TfFluxoFuturo
  Left = 12
  Top = 54
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Fluxo Futuro'
  ClientHeight = 475
  ClientWidth = 743
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object JvDBGrid1: TJvDBGrid
    Left = 313
    Top = 1
    Width = 424
    Height = 473
    Color = clInfoBk
    DataSource = dsmConsulta
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrReceber'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Receber'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrPagar'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Pagar'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Saldo'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 5
    Top = 2
    Width = 296
    Height = 111
    Enabled = False
    TabOrder = 1
    object Label4: TLabel
      Left = 11
      Top = 9
      Width = 59
      Height = 20
      Caption = 'Atraso:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 70
      Top = 30
      Width = 97
      Height = 13
      Caption = 'Total a Receber:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 74
      Top = 54
      Width = 82
      Height = 13
      Caption = 'Total a Pagar:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 35
      Top = 74
      Width = 135
      Height = 26
      Alignment = taCenter
      Caption = 'Saldo em Atraso:'#13#10'(Total Receber - Pagar)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object JvxCurrencyEdit1: TJvxCurrencyEdit
      Left = 171
      Top = 22
      Width = 103
      Height = 21
      AutoSize = False
      Color = clInfoBk
      DisplayFormat = '0.00'
      TabOrder = 0
    end
    object JvxCurrencyEdit2: TJvxCurrencyEdit
      Left = 171
      Top = 46
      Width = 103
      Height = 21
      AutoSize = False
      Color = clInfoBk
      DisplayFormat = '0.00'
      TabOrder = 1
    end
    object JvxCurrencyEdit3: TJvxCurrencyEdit
      Left = 172
      Top = 74
      Width = 103
      Height = 21
      AutoSize = False
      Color = clInfoBk
      DisplayFormat = '0.00'
      TabOrder = 2
    end
  end
  object BitBtn1: TBitBtn
    Left = 165
    Top = 117
    Width = 135
    Height = 36
    BiDiMode = bdLeftToRight
    Caption = 'Mostra Fluxo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3303333333333333300033333333333300033333333333300033333333333300
      0333333700073000333333077777000333333078F8F870333333778F8F8F8773
      333307F8F8F8F7033333078F8F8F8703333307F8F8F8F7033333778F8F8F8773
      33333078F8F87033333333077777033333333337000733333333}
  end
  object BitBtn2: TBitBtn
    Left = 165
    Top = 157
    Width = 135
    Height = 36
    BiDiMode = bdLeftToRight
    Caption = 'Contas a Receber'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn2Click
    Glyph.Data = {
      1E010000424D1E010000000000007600000028000000110000000E0000000100
      040000000000A800000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888000000000
      0088800000008808888888880808800000008000000000000080800000008088
      8888BBB880008000000080888888777880808000000080000000000000880000
      00008088888888880808000000008800000000008080000000008880FFFFFFFF
      08080000000088880F00000F00008000000088880FFFFFFFF088800000008888
      80F00000F08880000000888880FFFFFFFF088000000088888800000000088000
      0000}
  end
  object BitBtn3: TBitBtn
    Left = 165
    Top = 197
    Width = 135
    Height = 36
    BiDiMode = bdLeftToRight
    Caption = 'Contas a Pagar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn3Click
    Glyph.Data = {
      1E010000424D1E010000000000007600000028000000110000000E0000000100
      040000000000A800000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888000000000
      0088800000008808888888880808800000008000000000000080800000008088
      8888BBB880008000000080888888777880808000000080000000000000880000
      00008088888888880808000000008800000000008080000000008880FFFFFFFF
      08080000000088880F00000F00008000000088880FFFFFFFF088800000008888
      80F00000F08880000000888880FFFFFFFF088000000088888800000000088000
      0000}
  end
  object mConsulta: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Data'
    Params = <>
    OnNewRecord = mConsultaNewRecord
    Left = 600
    Top = 136
    Data = {
      590000009619E0BD010000001800000004000000000003000000590004446174
      6104000600000000000A566C7252656365626572080004000000000008566C72
      506167617208000400000000000553616C646F08000400000000000000}
    object mConsultaData: TDateField
      DisplayWidth = 12
      FieldName = 'Data'
    end
    object mConsultaVlrReceber: TFloatField
      DisplayWidth = 14
      FieldName = 'VlrReceber'
      DisplayFormat = '###,###,##0.00'
    end
    object mConsultaVlrPagar: TFloatField
      DisplayWidth = 16
      FieldName = 'VlrPagar'
      DisplayFormat = '###,###,##0.00'
    end
    object mConsultaSaldo: TFloatField
      DisplayWidth = 19
      FieldName = 'Saldo'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsmConsulta: TDataSource
    DataSet = mConsulta
    Left = 632
    Top = 136
  end
  object Fluxo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DTVENCIMENTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM FLUXO'
      'WHERE DTVENCIMENTO >=  :DTVENCIMENTO'
      'ORDER BY DTVENCIMENTO')
    SQLConnection = Dm1.Conexao
    Left = 512
    Top = 312
    object FluxoVLRESTANTER: TFloatField
      FieldName = 'VLRESTANTER'
    end
    object FluxoDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object FluxoVLRRESTANTEP: TFloatField
      FieldName = 'VLRRESTANTEP'
    end
  end
  object qFluxo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FluxoP'
    Left = 576
    Top = 312
    object qFluxoVLRESTANTER: TFloatField
      FieldName = 'VLRESTANTER'
    end
    object qFluxoDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object qFluxoVLRRESTANTEP: TFloatField
      FieldName = 'VLRRESTANTEP'
    end
  end
  object FluxoP: TDataSetProvider
    DataSet = Fluxo
    Left = 544
    Top = 312
  end
  object dsqFluxo: TDataSource
    DataSet = qFluxo
    Left = 608
    Top = 312
  end
  object CReceberParc: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DTVENCIMENTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT SUM(VLRRESTANTE) VLRRESTANTE'
      'FROM CRECEBERPARC'
      'WHERE DTVENCIMENTO < :DTVENCIMENTO')
    SQLConnection = Dm1.Conexao
    Left = 528
    Top = 216
    object CReceberParcVLRRESTANTE: TFloatField
      FieldName = 'VLRRESTANTE'
    end
  end
  object qCReceberParc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CReceberParcP'
    Left = 592
    Top = 216
    object qCReceberParcVLRRESTANTE: TFloatField
      FieldName = 'VLRRESTANTE'
    end
  end
  object CReceberParcP: TDataSetProvider
    DataSet = CReceberParc
    Left = 560
    Top = 216
  end
  object CPagarParc: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DTVENCIMENTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT SUM(VLRRESTANTE) VLRRESTANTE'
      'FROM CPAGARPARC'
      'WHERE DTVENCIMENTO < :DTVENCIMENTO')
    SQLConnection = Dm1.Conexao
    Left = 528
    Top = 247
    object CPagarParcVLRRESTANTE: TFloatField
      FieldName = 'VLRRESTANTE'
    end
  end
  object qCPagarParc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CPagarParcP'
    Left = 592
    Top = 247
    object qCPagarParcVLRRESTANTE: TFloatField
      FieldName = 'VLRRESTANTE'
    end
  end
  object CPagarParcP: TDataSetProvider
    DataSet = CPagarParc
    Left = 560
    Top = 247
  end
end
