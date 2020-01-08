object fComissaoRel: TfComissaoRel
  Left = 18
  Top = 106
  Width = 1110
  Height = 470
  BorderIcons = [biSystemMenu]
  Caption = 'fComissaoRel'
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
  object RLReport1: TRLReport
    Left = 2
    Top = 2
    Width = 794
    Height = 1123
    DataSource = fConsComissaoVend.dsExtComissao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 38
      Width = 718
      Height = 403
      DataSource = fConsComissaoVend.dsExtComissao
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 66
        BandType = btHeader
        object RLDraw9: TRLDraw
          Left = 684
          Top = 45
          Width = 34
          Height = 20
        end
        object RLDraw3: TRLDraw
          Left = 130
          Top = 45
          Width = 59
          Height = 20
        end
        object RLDBText1: TRLDBText
          Left = 4
          Top = 5
          Width = 34
          Height = 14
          DataField = 'NOME'
          DataSource = Dm1.dsEmpresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLSystemInfo1: TRLSystemInfo
          Left = 634
          Top = 5
          Width = 82
          Height = 14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = itPageNumber
          ParentFont = False
        end
        object RLSystemInfo2: TRLSystemInfo
          Left = 634
          Top = 21
          Width = 35
          Height = 14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel1: TRLLabel
          Left = 604
          Top = 5
          Width = 29
          Height = 14
          Caption = 'Pag.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 604
          Top = 21
          Width = 29
          Height = 14
          Caption = 'Data:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 291
          Top = 13
          Width = 177
          Height = 19
          Caption = 'Relat'#243'rio de Comiss'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLDraw1: TRLDraw
          Left = 0
          Top = 45
          Width = 59
          Height = 20
        end
        object RLLabel4: TRLLabel
          Left = 9
          Top = 48
          Width = 45
          Height = 15
          Caption = 'N'#176' Mov.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw2: TRLDraw
          Left = 575
          Top = 45
          Width = 51
          Height = 20
        end
        object RLLabel5: TRLLabel
          Left = 578
          Top = 48
          Width = 44
          Height = 15
          Caption = '% Com.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 137
          Top = 48
          Width = 45
          Height = 15
          Caption = 'N'#176' Nota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw4: TRLDraw
          Left = 223
          Top = 45
          Width = 51
          Height = 20
        end
        object RLLabel7: TRLLabel
          Left = 227
          Top = 48
          Width = 44
          Height = 15
          Caption = 'Fun'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw5: TRLDraw
          Left = 273
          Top = 45
          Width = 229
          Height = 20
        end
        object RLLabel8: TRLLabel
          Left = 366
          Top = 48
          Width = 42
          Height = 15
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw6: TRLDraw
          Left = 188
          Top = 45
          Width = 36
          Height = 20
        end
        object RLLabel9: TRLLabel
          Left = 190
          Top = 48
          Width = 33
          Height = 15
          Caption = 'Parc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw7: TRLDraw
          Left = 501
          Top = 45
          Width = 75
          Height = 20
        end
        object RLLabel10: TRLLabel
          Left = 511
          Top = 48
          Width = 54
          Height = 15
          Caption = 'Vlr. Base'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw8: TRLDraw
          Left = 625
          Top = 45
          Width = 60
          Height = 20
        end
        object RLLabel11: TRLLabel
          Left = 628
          Top = 48
          Width = 54
          Height = 15
          Caption = 'Vlr. Com.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw23: TRLDraw
          Left = 58
          Top = 45
          Width = 73
          Height = 20
        end
        object RLLabel34: TRLLabel
          Left = 71
          Top = 48
          Width = 47
          Height = 15
          Caption = 'Dt. Mov.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 688
          Top = 48
          Width = 27
          Height = 15
          Caption = 'Tipo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel15: TRLLabel
          Left = 3
          Top = 32
          Width = 47
          Height = 12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 66
        Width = 718
        Height = 16
        BeforePrint = RLBand2BeforePrint
        object RLDBText2: TRLDBText
          Left = 13
          Top = 2
          Width = 44
          Height = 12
          Alignment = taRightJustify
          DataField = 'NUMMOV'
          DataSource = fConsComissaoVend.dsExtComissao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 59
          Top = 2
          Width = 70
          Height = 11
          Alignment = taCenter
          AutoSize = False
          DataField = 'DTREFERENCIA'
          DataSource = fConsComissaoVend.dsExtComissao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 133
          Top = 2
          Width = 55
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'NUMNOTA'
          DataSource = fConsComissaoVend.dsExtComissao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 192
          Top = 2
          Width = 32
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PARCELA'
          DataSource = fConsComissaoVend.dsExtComissao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 228
          Top = 2
          Width = 39
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'FUNCAO'
          DataSource = fConsComissaoVend.dsExtComissao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 275
          Top = 2
          Width = 226
          Height = 11
          AutoSize = False
          DataField = 'NOMECLIENTE'
          DataSource = fConsComissaoVend.dsExtComissao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 504
          Top = 2
          Width = 70
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRBASE'
          DataSource = fConsComissaoVend.dsExtComissao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 578
          Top = 2
          Width = 47
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PERCENTUAL'
          DataSource = fConsComissaoVend.dsExtComissao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 628
          Top = 2
          Width = 55
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRCOMISSAO'
          DataSource = fConsComissaoVend.dsExtComissao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 687
          Top = 2
          Width = 27
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TIPO'
          DataSource = fConsComissaoVend.dsExtComissao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw10: TRLDraw
          Left = 0
          Top = 0
          Width = 718
          Height = 2
          Align = faTop
          DrawKind = dkLine
          Pen.Style = psDot
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 99
        Width = 718
        Height = 49
        BandType = btSummary
        BeforePrint = RLBand3BeforePrint
        object RLDraw13: TRLDraw
          Left = 456
          Top = 0
          Width = 225
          Height = 47
        end
        object RLDraw12: TRLDraw
          Left = 232
          Top = 0
          Width = 225
          Height = 47
        end
        object RLDraw11: TRLDraw
          Left = 8
          Top = 0
          Width = 225
          Height = 47
        end
        object RLLabel13: TRLLabel
          Left = 21
          Top = 11
          Width = 85
          Height = 14
          Caption = 'Saldo Anterior:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel14: TRLLabel
          Left = 108
          Top = 11
          Width = 80
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel16: TRLLabel
          Left = 331
          Top = 17
          Width = 93
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 269
          Top = 17
          Width = 61
          Height = 14
          Caption = 'Vlr.Saidas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 497
          Top = 10
          Width = 170
          Height = 14
          Caption = 'Saldo Anterior + Saldo Per'#237'odo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel19: TRLLabel
          Left = 559
          Top = 26
          Width = 107
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel20: TRLLabel
          Left = 264
          Top = 3
          Width = 66
          Height = 14
          Caption = 'Vlr.Entrada:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 331
          Top = 3
          Width = 93
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel22: TRLLabel
          Left = 248
          Top = 31
          Width = 82
          Height = 14
          Caption = 'Saldo Per'#237'odo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel23: TRLLabel
          Left = 331
          Top = 31
          Width = 93
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel24: TRLLabel
          Left = 489
          Top = 26
          Width = 68
          Height = 14
          Caption = 'Vlr. a Pagar:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 82
        Width = 718
        Height = 17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BeforePrint = RLBand4BeforePrint
        object RLLabel25: TRLLabel
          Left = 40
          Top = 2
          Width = 26
          Height = 14
          Caption = 'Obs:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLMemo1: TRLMemo
          Left = 68
          Top = 2
          Width = 605
          Height = 14
          Behavior = [beSiteExpander]
        end
      end
    end
  end
end
