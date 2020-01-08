object fPedidoPrev: TfPedidoPrev
  Left = 137
  Top = 130
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Pedido'
  ClientHeight = 164
  ClientWidth = 385
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
    Width = 385
    Height = 164
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 0
    object Label1: TLabel
      Left = 45
      Top = 16
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object Label2: TLabel
      Left = 24
      Top = 43
      Width = 56
      Height = 13
      Caption = 'Data Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 220
      Top = 43
      Width = 51
      Height = 13
      Caption = 'Data Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 25
      Top = 70
      Width = 55
      Height = 13
      Caption = 'Situa'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 50
      Top = 97
      Width = 30
      Height = 13
      Caption = 'Tipo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object JvDBLookupCombo1: TJvDBLookupCombo
      Left = 83
      Top = 8
      Width = 289
      Height = 21
      DropDownCount = 8
      LookupField = 'NOMECLIENTE'
      LookupDisplay = 'NOMECLIENTE'
      LookupSource = qsCliente
      TabOrder = 0
    end
    object JvDateEdit1: TJvDateEdit
      Left = 83
      Top = 35
      Width = 95
      Height = 21
      ButtonFlat = False
      NumGlyphs = 2
      TabOrder = 1
    end
    object JvDateEdit2: TJvDateEdit
      Left = 277
      Top = 35
      Width = 95
      Height = 21
      ButtonFlat = False
      NumGlyphs = 2
      TabOrder = 2
    end
    object ComboBox1: TComboBox
      Left = 83
      Top = 62
      Width = 153
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      Text = 'TODOS'
      Items.Strings = (
        'PENDENTE'
        'FATURADO'
        'CANCELADO'
        'TODOS')
    end
    object BitBtn1: TBitBtn
      Left = 110
      Top = 123
      Width = 84
      Height = 27
      Caption = 'Im&primir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
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
    object BitBtn3: TBitBtn
      Left = 194
      Top = 123
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
      TabOrder = 5
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
    object ComboBox2: TComboBox
      Left = 83
      Top = 89
      Width = 153
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 6
      Text = 'DETALHADO'
      Items.Strings = (
        'DETALHADO'
        'RESUMIDO')
    end
  end
  object Resumido: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT PEDIDO.*, PESSOA.NOME NOMEVENDEDOR, CONDPGTO.NOME NOMECON' +
        'DPGTO'
      'FROM PEDIDO'
      'LEFT JOIN PESSOA ON '
      'PEDIDO.CODVENDEDOR = PESSOA.ID'
      'INNER JOIN CONDPGTO ON '
      'PEDIDO.CODCONDPGTO = CONDPGTO.ID')
    SQLConnection = Dm1.Conexao
    Left = 254
    Top = 61
  end
  object ResumidoP: TDataSetProvider
    DataSet = Resumido
    Left = 270
    Top = 61
  end
  object qResumido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ResumidoP'
    Left = 288
    Top = 61
    object qResumidoNUMLACTO: TIntegerField
      FieldName = 'NUMLACTO'
      Required = True
    end
    object qResumidoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qResumidoNUMORCAMENTO: TIntegerField
      FieldName = 'NUMORCAMENTO'
    end
    object qResumidoNUMPEDIDO: TIntegerField
      FieldName = 'NUMPEDIDO'
    end
    object qResumidoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object qResumidoDTPEDIDO: TDateField
      FieldName = 'DTPEDIDO'
    end
    object qResumidoDTPREVENTREGA: TDateField
      FieldName = 'DTPREVENTREGA'
    end
    object qResumidoCODNATOPER: TIntegerField
      FieldName = 'CODNATOPER'
    end
    object qResumidoCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
    end
    object qResumidoINFCONDPGTO: TStringField
      FieldName = 'INFCONDPGTO'
      FixedChar = True
      Size = 1
    end
    object qResumidoPERCDESCONTO: TFloatField
      FieldName = 'PERCDESCONTO'
    end
    object qResumidoVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
    end
    object qResumidoCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object qResumidoPERCCOMISSAO: TFloatField
      FieldName = 'PERCCOMISSAO'
    end
    object qResumidoVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
    end
    object qResumidoDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object qResumidoCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object qResumidoMOTIVOCANC: TStringField
      FieldName = 'MOTIVOCANC'
      FixedChar = True
      Size = 1
    end
    object qResumidoNUMORCAMENTOCOP: TIntegerField
      FieldName = 'NUMORCAMENTOCOP'
    end
    object qResumidoNUMPEDCOP: TIntegerField
      FieldName = 'NUMPEDCOP'
    end
    object qResumidoQTDDIASVALIDADE: TIntegerField
      FieldName = 'QTDDIASVALIDADE'
    end
    object qResumidoCOPIADO: TStringField
      FieldName = 'COPIADO'
      FixedChar = True
      Size = 1
    end
    object qResumidoSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object qResumidoPEDIDOCLIENTE: TIntegerField
      FieldName = 'PEDIDOCLIENTE'
    end
    object qResumidoOBSERVACAO: TBlobField
      FieldName = 'OBSERVACAO'
      Size = 1
    end
    object qResumidoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object qResumidoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 2
    end
    object qResumidoNOMEVENDEDOR: TStringField
      FieldName = 'NOMEVENDEDOR'
      Size = 40
    end
    object qResumidoNOMECONDPGTO: TStringField
      FieldName = 'NOMECONDPGTO'
    end
  end
  object Cliente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select Distinct NomeCliente'
      'from pedido'
      'where tipo = '#39'O'#39
      'order by NomeCliente')
    SQLConnection = Dm1.Conexao
    Left = 112
    Top = 5
  end
  object ClienteP: TDataSetProvider
    DataSet = Cliente
    Left = 128
    Top = 5
  end
  object qCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ClienteP'
    Left = 146
    Top = 5
    object qClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
  end
  object qsCliente: TDataSource
    DataSet = qCliente
    Left = 160
    Top = 5
  end
  object qsResumido: TDataSource
    DataSet = qResumido
    Left = 304
    Top = 64
  end
end
