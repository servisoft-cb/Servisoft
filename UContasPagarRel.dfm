object fContasPagarRel: TfContasPagarRel
  Left = 8
  Top = 39
  Width = 782
  Height = 556
  HorzScrollBar.Position = 1168
  VertScrollBar.Position = 12
  Caption = 'Relat'#243'rio do Contas a Pagar'
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
    Left = -1165
    Top = -10
    Width = 1123
    Height = 794
    DataSource = DmCons.qsCPagarParc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    PageSetup.Orientation = poLandscape
    BeforePrint = RLReport1BeforePrint
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 38
      Width = 1071
      Height = 403
      DataSource = DmCons.qsCPagarParc
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 1071
        Height = 67
        BandType = btHeader
        BeforePrint = RLBand1BeforePrint
        object RLDraw3: TRLDraw
          Left = 282
          Top = 50
          Width = 77
          Height = 16
        end
        object RLDBText1: TRLDBText
          Left = 3
          Top = 2
          Width = 262
          Height = 9
          AutoSize = False
          DataField = 'NOME'
          DataSource = Dm1.dsEmpresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLSystemInfo1: TRLSystemInfo
          Left = 928
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
          Left = 928
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
          Left = 898
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
          Left = 898
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
          Left = 72
          Top = 19
          Width = 794
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'Contas a Pagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLDraw1: TRLDraw
          Left = 0
          Top = 50
          Width = 236
          Height = 16
        end
        object RLLabel4: TRLLabel
          Left = 107
          Top = 53
          Width = 56
          Height = 11
          Caption = 'Fornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw2: TRLDraw
          Left = 583
          Top = 50
          Width = 87
          Height = 16
        end
        object RLLabel5: TRLLabel
          Left = 596
          Top = 53
          Width = 61
          Height = 11
          Caption = 'Vlr. Restante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 285
          Top = 53
          Width = 59
          Height = 11
          Caption = 'N'#186' Duplicata'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw4: TRLDraw
          Left = 393
          Top = 50
          Width = 67
          Height = 16
        end
        object RLLabel7: TRLLabel
          Left = 400
          Top = 53
          Width = 42
          Height = 11
          Caption = 'Vlr.Parc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw5: TRLDraw
          Left = 459
          Top = 50
          Width = 67
          Height = 16
        end
        object RLLabel8: TRLLabel
          Left = 475
          Top = 53
          Width = 44
          Height = 11
          Caption = 'Dt. Venc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw6: TRLDraw
          Left = 358
          Top = 50
          Width = 36
          Height = 16
        end
        object RLLabel9: TRLLabel
          Left = 360
          Top = 53
          Width = 26
          Height = 11
          Caption = 'Parc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw7: TRLDraw
          Left = 525
          Top = 50
          Width = 59
          Height = 16
        end
        object RLLabel10: TRLLabel
          Left = 528
          Top = 53
          Width = 54
          Height = 11
          Caption = 'Dias Atraso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw8: TRLDraw
          Left = 669
          Top = 50
          Width = 63
          Height = 16
        end
        object RLLabel11: TRLLabel
          Left = 672
          Top = 53
          Width = 55
          Height = 11
          Caption = 'Dt.'#218'lt.Pgto.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw9: TRLDraw
          Left = 731
          Top = 50
          Width = 77
          Height = 16
        end
        object RLLabel12: TRLLabel
          Left = 742
          Top = 59
          Width = 46
          Height = 11
          Caption = 'Vlr. Pgto.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw10: TRLDraw
          Left = 807
          Top = 50
          Width = 170
          Height = 16
        end
        object RLLabel13: TRLLabel
          Left = 849
          Top = 53
          Width = 30
          Height = 11
          Caption = 'Conta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw23: TRLDraw
          Left = 235
          Top = 50
          Width = 48
          Height = 16
        end
        object RLLabel34: TRLLabel
          Left = 237
          Top = 53
          Width = 37
          Height = 11
          Caption = 'N'#186' Nota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw37: TRLDraw
          Left = 976
          Top = 50
          Width = 95
          Height = 16
        end
        object RLLabel59: TRLLabel
          Left = 986
          Top = 53
          Width = 78
          Height = 11
          Caption = 'Centro de Custo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel60: TRLLabel
          Left = 0
          Top = 39
          Width = 30
          Height = 10
          Caption = 'Op'#231#245'es:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel61: TRLLabel
          Left = 32
          Top = 39
          Width = 30
          Height = 10
          Caption = 'Op'#231#245'es:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 67
        Width = 1071
        Height = 14
        AfterPrint = RLBand2AfterPrint
        BeforePrint = RLBand2BeforePrint
        object RLDBText2: TRLDBText
          Left = 3
          Top = 1
          Width = 231
          Height = 11
          AutoSize = False
          DataField = 'NOMEFORNECEDOR'
          DataSource = DmCons.qsCPagarParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 285
          Top = 1
          Width = 73
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'NUMDUPLICATA'
          DataSource = DmCons.qsCPagarParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 361
          Top = 1
          Width = 31
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PARCELA'
          DataSource = DmCons.qsCPagarParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 395
          Top = 1
          Width = 64
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRVENCIMENTO'
          DataSource = DmCons.qsCPagarParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 462
          Top = 1
          Width = 62
          Height = 11
          Alignment = taCenter
          AutoSize = False
          DataField = 'DTVENCIMENTO'
          DataSource = DmCons.qsCPagarParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 587
          Top = 1
          Width = 81
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRRESTANTE'
          DataSource = DmCons.qsCPagarParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 671
          Top = 1
          Width = 60
          Height = 11
          Alignment = taCenter
          AutoSize = False
          DataField = 'DTPAGTO'
          DataSource = DmCons.qsCPagarParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 733
          Top = 1
          Width = 74
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRPAGTO'
          DataSource = DmCons.qsCPagarParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 809
          Top = 1
          Width = 167
          Height = 11
          AutoSize = False
          DataField = 'NOMEBANCO'
          DataSource = DmCons.qsCPagarParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText20: TRLDBText
          Left = 237
          Top = 1
          Width = 45
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'NUMNOTA'
          DataSource = DmCons.qsCPagarParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 536
          Top = 1
          Width = 37
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'clDiasAtraso'
          DataSource = DmCons.qsCPagarParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw35: TRLDraw
          Left = 0
          Top = 12
          Width = 1071
          Height = 2
          Align = faBottom
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLDBText34: TRLDBText
          Left = 977
          Top = 1
          Width = 91
          Height = 11
          AutoSize = False
          DataField = 'NOMECENTROCUSTO'
          DataSource = DmCons.qsCPagarParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand7: TRLBand
        Left = 0
        Top = 81
        Width = 1071
        Height = 17
        BeforePrint = RLBand7BeforePrint
        object RLLabel28: TRLLabel
          Left = 97
          Top = 3
          Width = 52
          Height = 14
          Caption = 'Total Dia:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel29: TRLLabel
          Left = 201
          Top = 2
          Width = 85
          Height = 14
          Caption = 'Valor Parcelas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel35: TRLLabel
          Left = 289
          Top = 2
          Width = 24
          Height = 14
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel36: TRLLabel
          Left = 420
          Top = 2
          Width = 78
          Height = 14
          Caption = 'Valor a Pagar:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel37: TRLLabel
          Left = 502
          Top = 2
          Width = 24
          Height = 14
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel38: TRLLabel
          Left = 670
          Top = 2
          Width = 65
          Height = 14
          Caption = 'Valor Pago:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel39: TRLLabel
          Left = 739
          Top = 2
          Width = 24
          Height = 14
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw19: TRLDraw
          Left = 184
          Top = 1
          Width = 647
          Height = 2
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 98
        Width = 1071
        Height = 19
        BandType = btSummary
        Completion = ctMaxBands
        BeforePrint = RLBand3BeforePrint
        object RLDraw11: TRLDraw
          Left = 186
          Top = 1
          Width = 645
          Height = 2
        end
        object RLLabel14: TRLLabel
          Left = 671
          Top = 3
          Width = 65
          Height = 14
          Caption = 'Valor Pago:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel15: TRLLabel
          Left = 420
          Top = 3
          Width = 78
          Height = 14
          Caption = 'Valor a Pagar:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel16: TRLLabel
          Left = 502
          Top = 3
          Width = 24
          Height = 14
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 739
          Top = 3
          Width = 24
          Height = 14
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel40: TRLLabel
          Left = 82
          Top = 3
          Width = 65
          Height = 14
          Caption = 'Total Geral:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel41: TRLLabel
          Left = 201
          Top = 2
          Width = 85
          Height = 14
          Caption = 'Valor Parcelas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel42: TRLLabel
          Left = 288
          Top = 2
          Width = 24
          Height = 14
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  object RLReport2: TRLReport
    Left = -25
    Top = 0
    Width = 794
    Height = 1123
    DataSource = fContasPagarDet.qsPagas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    object RLSubDetail3: TRLSubDetail
      Left = 26
      Top = 38
      Width = 742
      Height = 379
      DataSource = fContasPagarDet.qsPagas
      object RLBand4: TRLBand
        Left = 0
        Top = 0
        Width = 742
        Height = 54
        BandType = btHeader
        object RLDBText12: TRLDBText
          Left = 2
          Top = 3
          Width = 246
          Height = 11
          AutoSize = False
          DataField = 'NOME'
          DataSource = Dm1.dsEmpresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLSystemInfo3: TRLSystemInfo
          Left = 632
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
        object RLSystemInfo4: TRLSystemInfo
          Left = 632
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
        object RLLabel18: TRLLabel
          Left = 602
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
        object RLLabel19: TRLLabel
          Left = 602
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
        object RLLabel20: TRLLabel
          Left = 258
          Top = 17
          Width = 152
          Height = 16
          Caption = 'Contas a Pagar - Pagas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLDraw13: TRLDraw
          Left = 0
          Top = 37
          Width = 203
          Height = 16
        end
        object RLLabel21: TRLLabel
          Left = 102
          Top = 40
          Width = 56
          Height = 11
          Caption = 'Fornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw14: TRLDraw
          Left = 479
          Top = 37
          Width = 61
          Height = 16
        end
        object RLLabel22: TRLLabel
          Left = 482
          Top = 40
          Width = 55
          Height = 11
          Caption = 'Juros Pago'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw15: TRLDraw
          Left = 303
          Top = 37
          Width = 59
          Height = 16
        end
        object RLLabel24: TRLLabel
          Left = 308
          Top = 40
          Width = 43
          Height = 11
          Caption = 'Vlr.Pgto.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw16: TRLDraw
          Left = 361
          Top = 37
          Width = 63
          Height = 16
        end
        object RLLabel25: TRLLabel
          Left = 370
          Top = 40
          Width = 43
          Height = 11
          Caption = 'Dt. Pgto.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw17: TRLDraw
          Left = 273
          Top = 37
          Width = 31
          Height = 16
        end
        object RLLabel26: TRLLabel
          Left = 275
          Top = 40
          Width = 26
          Height = 11
          Caption = 'Parc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw18: TRLDraw
          Left = 423
          Top = 37
          Width = 57
          Height = 16
        end
        object RLLabel27: TRLLabel
          Left = 427
          Top = 40
          Width = 47
          Height = 11
          Caption = 'Vlr. Desc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw21: TRLDraw
          Left = 539
          Top = 37
          Width = 119
          Height = 16
        end
        object RLLabel30: TRLLabel
          Left = 580
          Top = 40
          Width = 30
          Height = 11
          Caption = 'Conta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw24: TRLDraw
          Left = 202
          Top = 37
          Width = 72
          Height = 16
        end
        object RLLabel44: TRLLabel
          Left = 204
          Top = 40
          Width = 59
          Height = 11
          Caption = 'N'#186' Duplicata'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw41: TRLDraw
          Left = 657
          Top = 37
          Width = 84
          Height = 16
        end
        object RLLabel64: TRLLabel
          Left = 661
          Top = 40
          Width = 78
          Height = 11
          Caption = 'Centro de Custo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 54
        Width = 742
        Height = 16
        AfterPrint = RLBand5AfterPrint
        BeforePrint = RLBand5BeforePrint
        object RLDBText13: TRLDBText
          Left = 2
          Top = 1
          Width = 198
          Height = 12
          AutoSize = False
          DataField = 'NOME'
          DataSource = fContasPagarDet.qsPagas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText14: TRLDBText
          Left = 204
          Top = 1
          Width = 68
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'NUMDUPLICATA'
          DataSource = fContasPagarDet.qsPagas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText15: TRLDBText
          Left = 274
          Top = 1
          Width = 28
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'PARCELA'
          DataSource = fContasPagarDet.qsPagas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText16: TRLDBText
          Left = 305
          Top = 1
          Width = 56
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRULTPGTO'
          DataSource = fContasPagarDet.qsPagas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText17: TRLDBText
          Left = 363
          Top = 1
          Width = 60
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'DTULTPGTO'
          DataSource = fContasPagarDet.qsPagas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText18: TRLDBText
          Left = 425
          Top = 1
          Width = 54
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRULTDESCONTO'
          DataSource = fContasPagarDet.qsPagas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText22: TRLDBText
          Left = 542
          Top = 1
          Width = 115
          Height = 12
          AutoSize = False
          DataField = 'NOMEBANCO'
          DataSource = fContasPagarDet.qsPagas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText19: TRLDBText
          Left = 482
          Top = 1
          Width = 56
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRULTJUROSPAGO'
          DataSource = fContasPagarDet.qsPagas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw40: TRLDraw
          Left = 0
          Top = 14
          Width = 742
          Height = 2
          Align = faBottom
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLDBText36: TRLDBText
          Left = 659
          Top = 1
          Width = 80
          Height = 12
          AutoSize = False
          DataField = 'NOMECENTROCUSTO'
          DataSource = fContasPagarDet.qsPagas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand8: TRLBand
        Left = 0
        Top = 70
        Width = 742
        Height = 19
        BeforePrint = RLBand8BeforePrint
        object RLLabel74: TRLLabel
          Left = 589
          Top = 3
          Width = 24
          Height = 14
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel73: TRLLabel
          Left = 553
          Top = 3
          Width = 33
          Height = 14
          Caption = 'Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel70: TRLLabel
          Left = 435
          Top = 3
          Width = 24
          Height = 14
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel65: TRLLabel
          Left = 393
          Top = 3
          Width = 38
          Height = 14
          Caption = 'Juros:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel31: TRLLabel
          Left = 65
          Top = 4
          Width = 52
          Height = 14
          Caption = 'Total Dia:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel32: TRLLabel
          Left = 161
          Top = 3
          Width = 100
          Height = 14
          Caption = 'Valor Pagamento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel33: TRLLabel
          Left = 262
          Top = 3
          Width = 24
          Height = 14
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw22: TRLDraw
          Left = 120
          Top = 1
          Width = 593
          Height = 2
        end
      end
      object RLBand9: TRLBand
        Left = 0
        Top = 89
        Width = 742
        Height = 20
        BandType = btSummary
        Completion = ctMaxBands
        BeforePrint = RLBand9BeforePrint
        object RLDraw20: TRLDraw
          Left = 120
          Top = 1
          Width = 591
          Height = 2
        end
        object RLLabel43: TRLLabel
          Left = 131
          Top = 4
          Width = 130
          Height = 14
          Caption = 'Valor Total Pagamento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel46: TRLLabel
          Left = 263
          Top = 4
          Width = 24
          Height = 14
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel75: TRLLabel
          Left = 393
          Top = 4
          Width = 38
          Height = 14
          Caption = 'Juros:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel76: TRLLabel
          Left = 435
          Top = 4
          Width = 24
          Height = 14
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel77: TRLLabel
          Left = 553
          Top = 4
          Width = 33
          Height = 14
          Caption = 'Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel78: TRLLabel
          Left = 589
          Top = 4
          Width = 24
          Height = 14
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  object RLReport3: TRLReport
    Left = 790
    Top = 2
    Width = 1123
    Height = 794
    DataSource = DmCons.qsCPagarParc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    PageSetup.Orientation = poLandscape
    BeforePrint = RLReport1BeforePrint
    object RLSubDetail2: TRLSubDetail
      Left = 26
      Top = 38
      Width = 1071
      Height = 403
      DataSource = DmCons.qsCPagarParc
      object RLBand6: TRLBand
        Left = 0
        Top = 0
        Width = 1071
        Height = 55
        BandType = btHeader
        object RLDraw12: TRLDraw
          Left = 282
          Top = 38
          Width = 77
          Height = 16
        end
        object RLDBText21: TRLDBText
          Left = 4
          Top = 3
          Width = 301
          Height = 11
          AutoSize = False
          DataField = 'NOME'
          DataSource = Dm1.dsEmpresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLSystemInfo5: TRLSystemInfo
          Left = 928
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
        object RLSystemInfo6: TRLSystemInfo
          Left = 928
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
        object RLLabel23: TRLLabel
          Left = 898
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
        object RLLabel45: TRLLabel
          Left = 898
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
        object RLLabel47: TRLLabel
          Left = 192
          Top = 21
          Width = 586
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'Contas a Pagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLDraw25: TRLDraw
          Left = 0
          Top = 38
          Width = 236
          Height = 16
        end
        object RLLabel48: TRLLabel
          Left = 107
          Top = 41
          Width = 56
          Height = 11
          Caption = 'Fornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw26: TRLDraw
          Left = 583
          Top = 38
          Width = 83
          Height = 16
        end
        object RLLabel49: TRLLabel
          Left = 588
          Top = 41
          Width = 61
          Height = 11
          Caption = 'Vlr. Restante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel50: TRLLabel
          Left = 285
          Top = 59
          Width = 59
          Height = 11
          Caption = 'N'#186' Duplicata'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw27: TRLDraw
          Left = 393
          Top = 38
          Width = 67
          Height = 16
        end
        object RLLabel51: TRLLabel
          Left = 400
          Top = 41
          Width = 42
          Height = 11
          Caption = 'Vlr.Parc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw28: TRLDraw
          Left = 459
          Top = 38
          Width = 66
          Height = 16
        end
        object RLLabel52: TRLLabel
          Left = 475
          Top = 41
          Width = 44
          Height = 11
          Caption = 'Dt. Venc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw29: TRLDraw
          Left = 358
          Top = 38
          Width = 32
          Height = 16
        end
        object RLLabel53: TRLLabel
          Left = 360
          Top = 41
          Width = 26
          Height = 11
          Caption = 'Parc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw30: TRLDraw
          Left = 524
          Top = 38
          Width = 60
          Height = 16
        end
        object RLLabel54: TRLLabel
          Left = 527
          Top = 41
          Width = 54
          Height = 11
          Caption = 'Dias Atraso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw31: TRLDraw
          Left = 665
          Top = 38
          Width = 65
          Height = 16
        end
        object RLLabel55: TRLLabel
          Left = 668
          Top = 41
          Width = 55
          Height = 11
          Caption = 'Dt.'#218'lt.Pgto.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw32: TRLDraw
          Left = 729
          Top = 38
          Width = 77
          Height = 16
        end
        object RLLabel56: TRLLabel
          Left = 740
          Top = 41
          Width = 46
          Height = 11
          Caption = 'Vlr. Pgto.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw33: TRLDraw
          Left = 805
          Top = 38
          Width = 159
          Height = 16
        end
        object RLLabel57: TRLLabel
          Left = 863
          Top = 41
          Width = 30
          Height = 11
          Caption = 'Conta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw34: TRLDraw
          Left = 235
          Top = 38
          Width = 48
          Height = 16
        end
        object RLLabel58: TRLLabel
          Left = 237
          Top = 41
          Width = 37
          Height = 11
          Caption = 'N'#186' Nota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel62: TRLLabel
          Left = 296
          Top = 41
          Width = 46
          Height = 11
          Caption = 'Duplicata'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw38: TRLDraw
          Left = 963
          Top = 38
          Width = 107
          Height = 16
        end
        object RLLabel63: TRLLabel
          Left = 981
          Top = 41
          Width = 78
          Height = 11
          Caption = 'Centro de Custo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand10: TRLBand
        Left = 0
        Top = 55
        Width = 1071
        Height = 15
        AfterPrint = RLBand2AfterPrint
        BeforePrint = RLBand2BeforePrint
        object RLDBText23: TRLDBText
          Left = 3
          Top = 1
          Width = 231
          Height = 11
          AutoSize = False
          DataField = 'NOMEFORNECEDOR'
          DataSource = DmCons.qsCPagarParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText24: TRLDBText
          Left = 285
          Top = 1
          Width = 73
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'NUMDUPLICATA'
          DataSource = DmCons.qsCPagarParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText25: TRLDBText
          Left = 361
          Top = 1
          Width = 31
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PARCELA'
          DataSource = DmCons.qsCPagarParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText26: TRLDBText
          Left = 395
          Top = 1
          Width = 64
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRVENCIMENTO'
          DataSource = DmCons.qsCPagarParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText27: TRLDBText
          Left = 462
          Top = 1
          Width = 60
          Height = 11
          Alignment = taCenter
          AutoSize = False
          DataField = 'DTVENCIMENTO'
          DataSource = DmCons.qsCPagarParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText28: TRLDBText
          Left = 535
          Top = 1
          Width = 41
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'clDiasAtraso'
          DataSource = DmCons.qsCPagarParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText29: TRLDBText
          Left = 584
          Top = 1
          Width = 81
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRRESTANTE'
          DataSource = DmCons.qsCPagarParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText30: TRLDBText
          Left = 669
          Top = 1
          Width = 60
          Height = 11
          Alignment = taCenter
          AutoSize = False
          DataField = 'DTPAGTO'
          DataSource = DmCons.qsCPagarParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText31: TRLDBText
          Left = 731
          Top = 1
          Width = 74
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRPAGTO'
          DataSource = DmCons.qsCPagarParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText32: TRLDBText
          Left = 808
          Top = 1
          Width = 154
          Height = 11
          AutoSize = False
          DataField = 'NOMEBANCO'
          DataSource = DmCons.qsCPagarParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText33: TRLDBText
          Left = 237
          Top = 1
          Width = 45
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'NUMNOTA'
          DataSource = DmCons.qsCPagarParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText35: TRLDBText
          Left = 965
          Top = 1
          Width = 102
          Height = 11
          AutoSize = False
          DataField = 'NOMECENTROCUSTO'
          DataSource = DmCons.qsCPagarParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw39: TRLDraw
          Left = 0
          Top = 13
          Width = 1071
          Height = 2
          Align = faBottom
          DrawKind = dkLine
          Pen.Style = psDot
        end
      end
      object RLBand12: TRLBand
        Left = 0
        Top = 70
        Width = 1071
        Height = 19
        BandType = btSummary
        Completion = ctMaxBands
        BeforePrint = RLBand12BeforePrint
        object RLDraw36: TRLDraw
          Left = 186
          Top = 1
          Width = 645
          Height = 2
        end
        object RLLabel66: TRLLabel
          Left = 751
          Top = 2
          Width = 65
          Height = 14
          Caption = 'Valor Pago:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel67: TRLLabel
          Left = 451
          Top = 2
          Width = 78
          Height = 14
          Caption = 'Valor a Pagar:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel68: TRLLabel
          Left = 535
          Top = 3
          Width = 157
          Height = 13
          Alignment = taJustify
          AutoSize = False
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel69: TRLLabel
          Left = 818
          Top = 3
          Width = 146
          Height = 13
          Alignment = taJustify
          AutoSize = False
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel71: TRLLabel
          Left = 201
          Top = 2
          Width = 85
          Height = 14
          Caption = 'Valor Parcelas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel72: TRLLabel
          Left = 289
          Top = 3
          Width = 136
          Height = 13
          Alignment = taJustify
          AutoSize = False
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
end
