object fContasReceberDet: TfContasReceberDet
  Left = 366
  Top = 245
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Contas a Receber Detalhado'
  ClientHeight = 228
  ClientWidth = 416
  Color = 10930928
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 416
    Height = 228
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 0
    object Label1: TLabel
      Left = 33
      Top = 16
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object Label2: TLabel
      Left = 26
      Top = 119
      Width = 42
      Height = 13
      Caption = 'Op'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 12
      Top = 147
      Width = 56
      Height = 13
      Caption = 'Data Inicial:'
    end
    object Label4: TLabel
      Left = 197
      Top = 147
      Width = 51
      Height = 13
      Caption = 'Data Final:'
    end
    object Label5: TLabel
      Left = 34
      Top = 43
      Width = 34
      Height = 13
      Caption = 'Banco:'
    end
    object Label6: TLabel
      Left = 4
      Top = 69
      Width = 64
      Height = 13
      Caption = 'Centro Custo:'
    end
    object Label7: TLabel
      Left = 19
      Top = 95
      Width = 49
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vendedor:'
    end
    object JvDBLookupCombo1: TJvDBLookupCombo
      Left = 69
      Top = 8
      Width = 274
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DmCons.qsCliente
      TabOrder = 0
    end
    object CheckBox1: TCheckBox
      Left = 229
      Top = 117
      Width = 116
      Height = 17
      Caption = 'Imprimir Total p/ Dia'
      TabOrder = 4
    end
    object JvDateEdit1: TJvDateEdit
      Left = 69
      Top = 139
      Width = 95
      Height = 21
      ButtonFlat = False
      NumGlyphs = 2
      TabOrder = 5
    end
    object JvDateEdit2: TJvDateEdit
      Left = 253
      Top = 139
      Width = 95
      Height = 21
      ButtonFlat = False
      NumGlyphs = 2
      TabOrder = 6
    end
    object BitBtn3: TBitBtn
      Left = 183
      Top = 172
      Width = 88
      Height = 27
      Cursor = crHandPoint
      Hint = 'Cancela a altera'#231#227'o ou inser'#231#227'o do registro'
      Caption = 'Ca&ncelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = BitBtn3Click
      Glyph.Data = {
        CE070000424DCE07000000000000360000002800000024000000120000000100
        18000000000098070000CE0E0000C40E00000000000000000000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        0080800080800080800080800080800080808080808080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080FFFFFF008080008080008080008080008080008080
        0080800080800080800080800080800080800080800080800080800000FF0000
        800000808080800080800080800080800080800080800000FF80808000808000
        8080008080008080008080008080008080008080808080808080FFFFFF008080
        008080008080008080008080008080FFFFFF0080800080800080800080800080
        800080800080800000FF00008000008000008080808000808000808000808000
        00FF000080000080808080008080008080008080008080008080008080808080
        FFFFFF008080808080FFFFFF008080008080008080FFFFFF808080808080FFFF
        FF0080800080800080800080800080800080800000FF00008000008000008000
        00808080800080800000FF000080000080000080000080808080008080008080
        008080008080008080808080FFFFFF008080008080808080FFFFFF008080FFFF
        FF808080008080008080808080FFFFFF00808000808000808000808000808000
        80800000FF000080000080000080000080808080000080000080000080000080
        000080808080008080008080008080008080008080808080FFFFFF0080800080
        80008080808080FFFFFF808080008080008080008080008080808080FFFFFF00
        80800080800080800080800080800080800000FF000080000080000080000080
        0000800000800000800000808080800080800080800080800080800080800080
        80008080808080FFFFFF00808000808000808080808000808000808000808000
        8080FFFFFF808080008080008080008080008080008080008080008080008080
        0000FF0000800000800000800000800000800000808080800080800080800080
        80008080008080008080008080008080008080808080FFFFFF00808000808000
        8080008080008080008080FFFFFF808080008080008080008080008080008080
        0080800080800080800080800080800000800000800000800000800000808080
        8000808000808000808000808000808000808000808000808000808000808000
        8080808080FFFFFF008080008080008080008080008080808080008080008080
        0080800080800080800080800080800080800080800080800080800000FF0000
        8000008000008000008080808000808000808000808000808000808000808000
        8080008080008080008080008080008080808080FFFFFF008080008080008080
        8080800080800080800080800080800080800080800080800080800080800080
        800080800000FF00008000008000008000008000008080808000808000808000
        8080008080008080008080008080008080008080008080008080008080808080
        008080008080008080008080808080FFFFFF0080800080800080800080800080
        800080800080800080800080800000FF00008000008000008080808000008000
        0080000080808080008080008080008080008080008080008080008080008080
        008080008080808080008080008080008080008080008080808080FFFFFF0080
        800080800080800080800080800080800080800080800000FF00008000008000
        00808080800080800000FF000080000080000080808080008080008080008080
        008080008080008080008080008080808080008080008080008080808080FFFF
        FF008080008080808080FFFFFF00808000808000808000808000808000808000
        80800000FF0000800000808080800080800080800080800000FF000080000080
        000080808080008080008080008080008080008080008080808080FFFFFF0080
        80008080808080008080808080FFFFFF008080008080808080FFFFFF00808000
        80800080800080800080800080800080800000FF000080008080008080008080
        0080800080800000FF0000800000800000800080800080800080800080800080
        80008080808080FFFFFFFFFFFF808080008080008080008080808080FFFFFF00
        8080008080808080FFFFFF008080008080008080008080008080008080008080
        0080800080800080800080800080800080800080800000FF0000800000FF0080
        8000808000808000808000808000808000808080808080808000808000808000
        8080008080008080808080FFFFFFFFFFFFFFFFFF808080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080808080808080808080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        008080008080008080008080008080008080}
      NumGlyphs = 2
    end
    object ComboBox1: TComboBox
      Left = 69
      Top = 111
      Width = 156
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 3
      OnChange = ComboBox1Change
      Items.Strings = (
        'Vencidas'
        'A Vencer'
        'Pagas'
        'Todas')
    end
    object JvDBLookupCombo2: TJvDBLookupCombo
      Left = 69
      Top = 35
      Width = 274
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DmCons.qsBanco
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 99
      Top = 172
      Width = 84
      Height = 27
      Caption = 'Im&primir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BitBtn1Click
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
    object JvDBLookupCombo3: TJvDBLookupCombo
      Left = 69
      Top = 61
      Width = 274
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DmCons.qsCentroCusto
      TabOrder = 2
    end
    object JvDBLookupCombo4: TJvDBLookupCombo
      Left = 69
      Top = 87
      Width = 274
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DmCons.qsVendedor
      TabOrder = 9
    end
  end
  object Pagas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select creceberhist.parcela, creceberhist.historico, creceberhis' +
        't.dtultpgto, creceberhist.vlrultpgto,'
      
        'creceberhist.vlrultjurospago, creceberhist.vlrultdesconto, crece' +
        'berhist.numnota, Pessoa.nome, banco.nome nomebanco'
      'from creceberhist'
      'inner join Pessoa on'
      '(creceberhist.codcliente = Pessoa.id)'
      'inner join Banco on'
      '(banco.id = creceberhist.codbanco)'
      'INNER JOIN CRECEBERPARC ON'
      '(CRECEBERPARC.NUMCRECEBER = CRECEBERHIST.NUMCRECEBER) AND'
      '(CRECEBERPARC.PARCELA = CRECEBERHIST.PARCELA)'
      ''
      '')
    SQLConnection = Dm1.Conexao
    Left = 184
    Top = 16
  end
  object PagasP: TDataSetProvider
    DataSet = Pagas
    Left = 208
    Top = 16
  end
  object qPagas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PagasP'
    Left = 232
    Top = 16
    object qPagasPARCELA: TStringField
      FieldName = 'PARCELA'
      Required = True
      Size = 3
    end
    object qPagasHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 70
    end
    object qPagasDTULTPGTO: TDateField
      FieldName = 'DTULTPGTO'
    end
    object qPagasVLRULTPGTO: TFloatField
      FieldName = 'VLRULTPGTO'
      DisplayFormat = '0.00'
    end
    object qPagasVLRULTJUROSPAGO: TFloatField
      FieldName = 'VLRULTJUROSPAGO'
      DisplayFormat = '0.00'
    end
    object qPagasVLRULTDESCONTO: TFloatField
      FieldName = 'VLRULTDESCONTO'
      DisplayFormat = '0.00'
    end
    object qPagasNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object qPagasNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qPagasNOMEBANCO: TStringField
      FieldName = 'NOMEBANCO'
      Size = 40
    end
  end
  object qsPagas: TDataSource
    DataSet = qPagas
    Left = 256
    Top = 16
  end
end
