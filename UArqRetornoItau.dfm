object fArqRetornoItau: TfArqRetornoItau
  Left = 7
  Top = 22
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Busca Aquivo Retorno Ita'#250
  ClientHeight = 535
  ClientWidth = 784
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 535
    Align = alClient
    TabOrder = 0
    object ALed1: TALed
      Left = 173
      Top = 515
      Width = 16
      Height = 16
      TrueColor = clTeal
      FalseColor = clTeal
    end
    object Label8: TLabel
      Left = 194
      Top = 518
      Width = 56
      Height = 13
      Caption = 'Liquidado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ALed2: TALed
      Left = 13
      Top = 515
      Width = 16
      Height = 16
      TrueColor = clTeal
      FalseColor = clAqua
    end
    object Label2: TLabel
      Left = 34
      Top = 518
      Width = 112
      Height = 13
      Caption = 'Entrada Confirmada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ALed3: TALed
      Left = 277
      Top = 515
      Width = 16
      Height = 16
      TrueColor = clTeal
      FalseColor = clRed
    end
    object Label3: TLabel
      Left = 298
      Top = 518
      Width = 100
      Height = 13
      Caption = 'T'#237'tulo Protestado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 450
      Top = 518
      Width = 93
      Height = 13
      Caption = 'T'#237'tulo Rejeitado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ALed4: TALed
      Left = 429
      Top = 515
      Width = 16
      Height = 16
      TrueColor = clTeal
      FalseColor = clYellow
    end
    object ALed5: TALed
      Left = 581
      Top = 515
      Width = 16
      Height = 16
      TrueColor = clTeal
      FalseColor = clMaroon
    end
    object Label6: TLabel
      Left = 602
      Top = 518
      Width = 106
      Height = 13
      Caption = 'Dt.Vecto. Alterada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 3
      Top = 3
      Width = 778
      Height = 36
      BevelOuter = bvLowered
      TabOrder = 0
      object Label1: TLabel
        Left = 10
        Top = 15
        Width = 39
        Height = 13
        Caption = 'Arquivo:'
      end
      object BitBtn1: TBitBtn
        Left = 391
        Top = 3
        Width = 95
        Height = 29
        Hint = 'Busca o arquivo selecionado ao lado'
        Caption = '&Buscar Arq.'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BitBtn1Click
        Glyph.Data = {
          46050000424D460500000000000036040000280000000D000000110000000100
          08000000000010010000C30E0000C30E00000001000000000000000000008080
          8000000080000080800000800000808000008000000080008000408080004040
          0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
          FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
          80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
          60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
          B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
          1D007666280000450000013E450013286A006A39850085324A00040404000808
          08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
          5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
          840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
          0000000039009B00000000250000000049003B111100002F000000005D004517
          1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
          00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
          2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
          A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
          2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
          89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
          AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
          0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
          0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
          42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
          890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
          C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
          FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
          F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
          FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
          CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
          8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
          7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
          BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
          88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
          A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
          0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
          00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
          001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
          11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
          110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
          11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
          110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
          110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
          0F0F0F0F0F0F0F000000}
      end
      object BitBtn2: TBitBtn
        Left = 487
        Top = 3
        Width = 95
        Height = 29
        Hint = 'Cancela a sele'#231#227'o do arquivo'
        Caption = 'Ca&ncelar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtn2Click
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
      object BitBtn3: TBitBtn
        Left = 679
        Top = 3
        Width = 95
        Height = 29
        Hint = 'Atualiza o Contas a Receber'
        Caption = '&Atualiza'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BitBtn3Click
        Glyph.Data = {
          F2060000424DF20600000000000036040000280000001A000000190000000100
          080000000000BC020000CE0E0000C40E00000001000000000000000000004000
          00006000000080000000A0000000C0000000E0000000FF000000008000004080
          00006080000080800000A0800000C0800000E0800000FF80000000C0000040C0
          000060C0000080C00000A0C00000C0C00000E0C00000FFC0000000FF000040FF
          000060FF000080FF0000A0FF0000C0FF0000E0FF0000FFFF0000000040004000
          40006000400080004000A0004000C0004000E0004000FF004000008040004080
          40006080400080804000A0804000C0804000E0804000FF80400000C0400040C0
          400060C0400080C04000A0C04000C0C04000E0C04000FFC0400000FF400040FF
          400060FF400080FF4000A0FF4000C0FF4000E0FF4000FFFF4000000060004000
          60006000600080006000A0006000C0006000E0006000FF006000008060004080
          60006080600080806000A0806000C0806000E0806000FF80600000C0600040C0
          600060C0600080C06000A0C06000C0C06000E0C06000FFC0600000FF600040FF
          600060FF600080FF6000A0FF6000C0FF6000E0FF6000FFFF6000000080004000
          80006000800080008000A0008000C0008000E0008000FF008000008080004080
          80006080800080808000A0808000C0808000E0808000FF80800000C0800040C0
          800060C0800080C08000A0C08000C0C08000E0C08000FFC0800000FF800040FF
          800060FF800080FF8000A0FF8000C0FF8000E0FF8000FFFF80000000A0004000
          A0006000A0008000A000A000A000C000A000E000A000FF00A0000080A0004080
          A0006080A0008080A000A080A000C080A000E080A000FF80A00000C0A00040C0
          A00060C0A00080C0A000A0C0A000C0C0A000E0C0A000FFC0A00000FFA00040FF
          A00060FFA00080FFA000A0FFA000C0FFA000E0FFA000FFFFA0000000C0004000
          C0006000C0008000C000A000C000C000C000E000C000FF00C0000080C0004080
          C0006080C0008080C000A080C000C080C000E080C000FF80C00000C0C00040C0
          C00060C0C00080C0C000A0C0C000C0C0C000E0C0C000FFC0C00000FFC00040FF
          C00060FFC00080FFC000A0FFC000C0FFC000E0FFC000FFFFC0000000E0004000
          E0006000E0008000E000A000E000C000E000E000E000FF00E0000080E0004080
          E0006080E0008080E000A080E000C080E000E080E000FF80E00000C0E00040C0
          E00060C0E00080C0E000A0C0E000C0C0E000E0C0E000FFC0E00000FFE00040FF
          E00060FFE00080FFE000A0FFE000C0FFE000E0FFE000FFFFE0000000FF004000
          FF006000FF008000FF00A000FF00C000FF00E000FF00FF00FF000080FF004080
          FF006080FF008080FF00A080FF00C080FF00E080FF00FF80FF0000C0FF0040C0
          FF0060C0FF0080C0FF00A0C0FF00C0C0FF00E0C0FF00FFC0FF0000FFFF0040FF
          FF0060FFFF0080FFFF00A0FFFF00C0FFFF00E0FFFF00FFFFFF00DEDEDEDEDEDE
          DEDEDEDEDEDEDE94949494949494949494DEDEDE0000DEDEDEDEDEDEDEDEDEDE
          DEDEDE0000000000000000949494DEDE0000DEFFFFFFFFFFFFFFFFFFDEDE0080
          8080808080008400949494DE0000DEDEDEDEDEDEDEDEDEDEDEDE008080808080
          80008400949494940000DEDEDEDEDE0803DEDEDE008080808080800000000084
          8400DEDE0000DEDE181818080803DEDE0080808080808000F8F80084848400DE
          0000181808080808080303DE80808080808000F8F8F80000000000DE00000808
          0808080808080803000000000000000707F800DEDEDEDEDE0000080818DEDE08
          0808030300F8F8F8F8F8F8F8F8F800DEDEDEDEDE0000080818DEDE080303DEDE
          00F807070707070707F800DEDEDEDEDE0000080818DEDE0303DEDEDE00F8F8F8
          F8F8F8F8F8F800DEDEDEDEDE0000DEDEDEDEDEDEDEDEDEDE00F80707F8000000
          000000DEDEDEDEDE0000DEDEDEDEDEDEDEDEDEDEDE00F8F800DEDEDEDEDEDEDE
          DEDEDEDE00000000000000000000000000DE0000FFDEDEDEDEDEDE080808DEDE
          000000F8F8F8F8F8F8F8F8F800DEDEDEDE0303DEDEDE18080808DEDE000000F8
          F8F8F8F8F8F8F8F800DEDEDE030308DEDEDE18080808DEDE000000F807070707
          070707F800DE0303080808DEDEDE18080808DEDE000000F8F8F8F8F8F8F8F8F8
          00DE030808080808080808080818DEDE000000F807070707070707F800DEDE03
          0308080808080818DEDEDEDE000000F8F8F8F8F8F8F8F8F800DEDEDE03080818
          181818DEDEDEDEDE000000F80707F8000000000000DEDEDEDE0308DEDEDEDEDE
          DEDEDEDE0000DE00F8F800DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE
          0000DEDE0000DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE0000DEDE
          DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE0000DEDEDEDEDEDE
          DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE0000}
      end
      object JvFilenameEdit1: TJvFilenameEdit
        Left = 54
        Top = 7
        Width = 329
        Height = 21
        ButtonFlat = False
        NumGlyphs = 1
        TabOrder = 3
      end
    end
    object SMDBGrid1: TSMDBGrid
      Left = 3
      Top = 48
      Width = 776
      Height = 459
      DataSource = dsmArquivo
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
      ExOptions = [eoBooleanAsCheckBox, eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
      OnGetCellParams = SMDBGrid1GetCellParams
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 23
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 32
      RowCount = 2
      Columns = <
        item
          Expanded = False
          FieldName = 'NumTitEmpresa'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NumTitBanco'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CodCarteira'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CodOcorrenciaRet'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeOcorrenciaRet'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DtOcorrencia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NumNota'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DtVenc'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrTitulo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EspecieDoc'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrDespesaCobranca'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrIOF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrAbatimento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrDesconto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrPago'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrJurosPagos'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DtLiquidacao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'InstrCancelada'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeCliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Erros'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CodLiquidacao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescLiquidacao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Atualizado'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tipo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CodCliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Parcela'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescErro2'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescErro1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescErro3'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescErro4'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NumCReceber'
          Visible = True
        end>
    end
  end
  object dsmArquivo: TDataSource
    DataSet = mArquivo
    Left = 512
    Top = 72
  end
  object qCReceberParc: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM CRECEBERPARC')
    SQLConnection = Dm1.Conexao
    Left = 464
    Top = 272
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
    end
    object qCReceberParcVLRPAGTO: TFloatField
      FieldName = 'VLRPAGTO'
    end
    object qCReceberParcVLRRESTANTE: TFloatField
      FieldName = 'VLRRESTANTE'
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
  end
  object mArquivo: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 488
    Top = 72
    Data = {
      800300009619E0BD01000000180000001F00000000000300000080030D4E756D
      546974456D707265736101004900000001000557494454480200020019000B4E
      756D54697442616E636F01004900000001000557494454480200020009000B43
      6F64436172746569726101004900000001000557494454480200020003001043
      6F644F636F7272656E6369615265740100490000000100055749445448020002
      000200114E6F6D654F636F7272656E6369615265740100490000000100055749
      4454480200020064000C44744F636F7272656E63696101004900000001000557
      49445448020002000A00074E756D4E6F74610100490000000100055749445448
      020002000A0006447456656E630100490000000100055749445448020002000A
      0009566C72546974756C6F08000400000000000A45737065636965446F630100
      490000000100055749445448020002001E0012566C7244657370657361436F62
      72616E6361080004000000000006566C72494F4608000400000000000D566C72
      41626174696D656E746F08000400000000000B566C72446573636F6E746F0800
      04000000000007566C725061676F08000400000000000D566C724A75726F7350
      61676F7308000400000000000C44744C69717569646163616F01004900000001
      00055749445448020002000A000E496E73747243616E63656C61646101004900
      000001000557494454480200020046000B4E6F6D65436C69656E746501004900
      00000100055749445448020002001E00054572726F7301004900000001000557
      494454480200020008000D436F644C69717569646163616F0100490000000100
      0557494454480200020002000E446573634C69717569646163616F0100490000
      0001000557494454480200020046000A417475616C697A61646F010049000000
      0100055749445448020002000100045469706F01004900000001000557494454
      480200020001000A436F64436C69656E74650400010000000000075061726365
      6C61010049000000010005574944544802000200140009446573634572726F32
      010049000000010005574944544802000200460009446573634572726F310100
      49000000010005574944544802000200460009446573634572726F3301004900
      0000010005574944544802000200460009446573634572726F34010049000000
      01000557494454480200020046000B4E756D4352656365626572040001000000
      00000000}
    object mArquivoNumTitEmpresa: TStringField
      FieldName = 'NumTitEmpresa'
      Size = 25
    end
    object mArquivoNumTitBanco: TStringField
      FieldName = 'NumTitBanco'
      Size = 9
    end
    object mArquivoCodCarteira: TStringField
      FieldName = 'CodCarteira'
      Size = 3
    end
    object mArquivoCodOcorrenciaRet: TStringField
      FieldName = 'CodOcorrenciaRet'
      Size = 2
    end
    object mArquivoNomeOcorrenciaRet: TStringField
      FieldName = 'NomeOcorrenciaRet'
      Size = 100
    end
    object mArquivoDtOcorrencia: TStringField
      FieldName = 'DtOcorrencia'
      Size = 10
    end
    object mArquivoNumNota: TStringField
      FieldName = 'NumNota'
      Size = 10
    end
    object mArquivoDtVenc: TStringField
      FieldName = 'DtVenc'
      Size = 10
    end
    object mArquivoVlrTitulo: TFloatField
      FieldName = 'VlrTitulo'
    end
    object mArquivoEspecieDoc: TStringField
      FieldName = 'EspecieDoc'
      Size = 30
    end
    object mArquivoVlrDespesaCobranca: TFloatField
      FieldName = 'VlrDespesaCobranca'
    end
    object mArquivoVlrIOF: TFloatField
      FieldName = 'VlrIOF'
    end
    object mArquivoVlrAbatimento: TFloatField
      FieldName = 'VlrAbatimento'
    end
    object mArquivoVlrDesconto: TFloatField
      FieldName = 'VlrDesconto'
    end
    object mArquivoVlrPago: TFloatField
      FieldName = 'VlrPago'
    end
    object mArquivoVlrJurosPagos: TFloatField
      FieldName = 'VlrJurosPagos'
    end
    object mArquivoDtLiquidacao: TStringField
      FieldName = 'DtLiquidacao'
      Size = 10
    end
    object mArquivoInstrCancelada: TStringField
      FieldName = 'InstrCancelada'
      Size = 70
    end
    object mArquivoNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 30
    end
    object mArquivoErros: TStringField
      FieldName = 'Erros'
      Size = 8
    end
    object mArquivoCodLiquidacao: TStringField
      FieldName = 'CodLiquidacao'
      Size = 2
    end
    object mArquivoDescLiquidacao: TStringField
      FieldName = 'DescLiquidacao'
      Size = 70
    end
    object mArquivoAtualizado: TStringField
      FieldName = 'Atualizado'
      Size = 1
    end
    object mArquivoTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object mArquivoCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object mArquivoParcela: TStringField
      FieldName = 'Parcela'
    end
    object mArquivoDescErro2: TStringField
      FieldName = 'DescErro2'
      Size = 70
    end
    object mArquivoDescErro1: TStringField
      FieldName = 'DescErro1'
      Size = 70
    end
    object mArquivoDescErro3: TStringField
      FieldName = 'DescErro3'
      Size = 70
    end
    object mArquivoDescErro4: TStringField
      FieldName = 'DescErro4'
      Size = 70
    end
    object mArquivoNumCReceber: TIntegerField
      FieldName = 'NumCReceber'
    end
  end
end
