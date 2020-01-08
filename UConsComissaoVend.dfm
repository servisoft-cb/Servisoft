object fConsComissaoVend: TfConsComissaoVend
  Left = 14
  Top = 60
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Comiss'#227'o do Vendedor'
  ClientHeight = 464
  ClientWidth = 773
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 17
    Top = 14
    Width = 73
    Height = 16
    Caption = 'Vendedor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 21
    Top = 35
    Width = 69
    Height = 16
    Caption = 'Data Inicial:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 319
    Top = 35
    Width = 64
    Height = 16
    Caption = 'Data Final:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 3
    Top = 404
    Width = 69
    Height = 13
    Caption = 'Saldo Anterior:'
  end
  object Label4: TLabel
    Left = 259
    Top = 404
    Width = 72
    Height = 13
    Caption = 'Total Entradas:'
  end
  object Label5: TLabel
    Left = 267
    Top = 426
    Width = 64
    Height = 13
    Caption = 'Total Sa'#237'das:'
  end
  object Label6: TLabel
    Left = 230
    Top = 448
    Width = 101
    Height = 13
    Caption = 'Total do Per'#237'odo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 574
    Top = 423
    Width = 196
    Height = 13
    Caption = 'Saldo Anterior + Total do Per'#237'odo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object JvDBLookupCombo1: TJvDBLookupCombo
    Left = 91
    Top = 6
    Width = 390
    Height = 21
    DropDownCount = 8
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = DmCons.qsVendedor
    TabOrder = 0
  end
  object JvDateEdit1: TJvDateEdit
    Left = 91
    Top = 30
    Width = 95
    Height = 21
    ButtonFlat = False
    NumGlyphs = 2
    TabOrder = 1
  end
  object JvDateEdit2: TJvDateEdit
    Left = 387
    Top = 30
    Width = 95
    Height = 21
    ButtonFlat = False
    NumGlyphs = 2
    TabOrder = 2
  end
  object JvDBGrid1: TJvDBGrid
    Left = 1
    Top = 59
    Width = 770
    Height = 334
    DataSource = dsExtComissao
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMMOV'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Movim.'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTREFERENCIA'
        Title.Alignment = taCenter
        Title.Caption = 'Dt.Movimento'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMNOTA'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Nota'
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PARCELA'
        Title.Alignment = taCenter
        Title.Caption = 'Parcela'
        Width = 44
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'FUNCAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Fun'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Width = 216
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRBASE'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr.Base'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERCENTUAL'
        Title.Alignment = taCenter
        Title.Caption = '% Com.'
        Width = 47
        Visible = True
      end
      item
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'VLRCOMISSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr.Comiss'#227'o'
        Width = 67
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TIPO'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 485
    Top = 14
    Width = 92
    Height = 37
    Caption = 'Consulta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn1Click
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000CE0E0000C40E00000000000000000000008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000000000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080000000000000000000008080008080
      0080800080800080800080800080800080800080800080800080800080800000
      0000000000000000808000808000808000808000808000808000808000808000
      8080008080008080008080000000000000000000008080008080008080008080
      0080800080800080800080800080800080800080800080800000000000000000
      0000808000808000808000808000808000808080808000000000000000000080
      8080008080000000000000000000008080008080008080008080008080008080
      0000008080808080808080808080808080800000000000000000000080800080
      80008080008080008080008080000000808080C0C0C0FFFFFFC0C0C0FFFFFFC0
      C0C0808080000000008080008080008080008080008080008080808080808080
      C0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C08080808080800080800080
      80008080008080008080000000808080FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0
      C0C0FFFFFF808080000000008080008080008080008080008080000000808080
      C0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C08080800000000080800080
      80008080008080008080000000808080FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0
      C0C0FFFFFF808080000000008080008080008080008080008080808080808080
      C0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C08080808080800080800080
      80008080008080008080008080000000808080C0C0C0FFFFFFC0C0C0FFFFFFC0
      C0C0808080000000008080008080008080008080008080008080008080008080
      0000008080808080808080808080808080800000000080800080800080800080
      8000808000808000808000808000808000808080808000000000000000000080
      8080008080008080008080008080008080008080008080008080}
    Layout = blGlyphTop
  end
  object JvxCurrencyEdit3: TJvxCurrencyEdit
    Left = 75
    Top = 396
    Width = 121
    Height = 21
    AutoSize = False
    Color = clInfoBk
    DisplayFormat = '0.00'
    ReadOnly = True
    TabOrder = 5
  end
  object JvxCurrencyEdit1: TJvxCurrencyEdit
    Left = 332
    Top = 396
    Width = 121
    Height = 21
    AutoSize = False
    Color = clInfoBk
    DisplayFormat = '0.00'
    ReadOnly = True
    TabOrder = 6
  end
  object JvxCurrencyEdit2: TJvxCurrencyEdit
    Left = 332
    Top = 418
    Width = 121
    Height = 21
    AutoSize = False
    Color = clInfoBk
    DisplayFormat = '0.00'
    ReadOnly = True
    TabOrder = 7
  end
  object JvxCurrencyEdit4: TJvxCurrencyEdit
    Left = 332
    Top = 440
    Width = 121
    Height = 21
    AutoSize = False
    Color = clAqua
    DisplayFormat = '0.00'
    ReadOnly = True
    TabOrder = 8
  end
  object JvxCurrencyEdit5: TJvxCurrencyEdit
    Left = 580
    Top = 439
    Width = 189
    Height = 21
    AutoSize = False
    Color = clAqua
    DisplayFormat = '###,###,##0.00'
    ReadOnly = True
    TabOrder = 9
  end
  object BitBtn2: TBitBtn
    Left = 669
    Top = 14
    Width = 92
    Height = 37
    Caption = 'Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = BitBtn2Click
    Glyph.Data = {
      0E030000424D0E030000000000003600000028000000110000000E0000000100
      180000000000D802000000000000000000000000000000000000BFBFBFBFBFBF
      BFBFBF0000000000000000000000000000000000000000000000000000000000
      00000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BFBFBFBFBF
      BF00BFBFBF000000000000000000000000000000000000000000000000000000
      000000000000000000000000BFBFBF000000BFBFBF00BFBFBF000000BFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBF00FFFF00FFFF00FFFFBFBFBFBFBFBF000000
      000000000000BFBFBF00BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBF7F7F7F7F7F7F7F7F7FBFBFBFBFBFBF000000BFBFBF000000BFBFBF00BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000BFBFBFBFBFBF00000000BFBFBF000000BFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BF
      BFBF00000000BFBFBFBFBFBF0000000000000000000000000000000000000000
      00000000000000000000BFBFBF000000BFBFBF00000000000000BFBFBFBFBFBF
      BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00BFBFBF000000BFBFBF00000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF
      000000000000000000000000000000FFFFFF000000000000000000000000BFBF
      BF00BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF000000FFFFFF000000000000000000000000000000FFFFFF000000
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF00BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000000000000000
      0000000000000000000000BFBFBFBFBFBF00}
    Layout = blGlyphTop
  end
  object BitBtn3: TBitBtn
    Left = 577
    Top = 14
    Width = 92
    Height = 37
    Caption = 'Pagamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = BitBtn3Click
    Layout = blGlyphTop
  end
  object ExtComissao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODVENDEDOR'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA2'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select EXTCOMISAO.*, PESSOA.NOME NOMECLIENTE'
      'from EXTCOMISAO'
      'full join PESSOA on'
      'PESSOA.ID = CODCLIENTE'
      'where EXTCOMISAO.CODVENDEDOR = :CODVENDEDOR AND'
      '      EXTCOMISAO.DTREFERENCIA between :DATA1 AND :DATA2'
      'order by EXTCOMISAO.DTREFERENCIA, EXTCOMISAO.FUNCAO'
      ''
      '')
    SQLConnection = Dm1.Conexao
    Left = 520
    Top = 200
  end
  object ExtComissaoP: TDataSetProvider
    DataSet = ExtComissao
    Left = 536
    Top = 200
  end
  object qExtComissao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ExtComissaoP'
    Left = 552
    Top = 200
    object qExtComissaoNUMMOV: TIntegerField
      FieldName = 'NUMMOV'
      Required = True
    end
    object qExtComissaoCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object qExtComissaoDTREFERENCIA: TDateField
      FieldName = 'DTREFERENCIA'
    end
    object qExtComissaoNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object qExtComissaoPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 3
    end
    object qExtComissaoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object qExtComissaoFUNCAO: TStringField
      FieldName = 'FUNCAO'
      FixedChar = True
      Size = 1
    end
    object qExtComissaoVLRBASE: TFloatField
      FieldName = 'VLRBASE'
      DisplayFormat = '###,###,##0.00'
    end
    object qExtComissaoPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
      DisplayFormat = '0.00'
    end
    object qExtComissaoVLRCOMISSAO: TFloatField
      FieldName = 'VLRCOMISSAO'
      DisplayFormat = '###,###,##0.00'
    end
    object qExtComissaoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qExtComissaoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 40
    end
    object qExtComissaoOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
  end
  object dsExtComissao: TDataSource
    DataSet = qExtComissao
    Left = 576
    Top = 200
  end
  object SaldoAnt: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select Sum(VlrComissao) VlrComissao, Funcao'
      'from EXTCOMISAO'
      'group by Funcao')
    SQLConnection = Dm1.Conexao
    Left = 520
    Top = 232
  end
  object SaldoAntP: TDataSetProvider
    DataSet = SaldoAnt
    Left = 536
    Top = 232
  end
  object qSaldoAnt: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SaldoAntP'
    Left = 552
    Top = 232
    object qSaldoAntVLRCOMISSAO: TFloatField
      FieldName = 'VLRCOMISSAO'
    end
    object qSaldoAntFUNCAO: TStringField
      FieldName = 'FUNCAO'
      FixedChar = True
      Size = 1
    end
  end
  object SaldoPeriodo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select Sum(VlrComissao) VlrComissao, Funcao'
      'from EXTCOMISAO'
      'Group by Funcao')
    SQLConnection = Dm1.Conexao
    Left = 520
    Top = 272
  end
  object SaldoPeriodoP: TDataSetProvider
    DataSet = SaldoPeriodo
    Left = 536
    Top = 272
  end
  object qSaldoPeriodo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SaldoPeriodoP'
    Left = 552
    Top = 272
    object qSaldoPeriodoVLRCOMISSAO: TFloatField
      FieldName = 'VLRCOMISSAO'
    end
    object qSaldoPeriodoFUNCAO: TStringField
      FieldName = 'FUNCAO'
      FixedChar = True
      Size = 1
    end
  end
end
