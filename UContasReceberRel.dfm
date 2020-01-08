object fContasReceberRel: TfContasReceberRel
  Left = 342
  Top = 224
  Width = 799
  Height = 446
  HorzScrollBar.Position = 29
  Caption = 'Relat'#243'rio do Contas a Receber'
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
    Left = 14
    Top = 18
    Width = 1123
    Height = 794
    DataSource = DmCons.qsCReceberParc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.TopMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    Margins.BottomMargin = 7.000000000000000000
    PageSetup.Orientation = poLandscape
    BeforePrint = RLReport1BeforePrint
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 26
      Width = 1071
      Height = 403
      DataSource = DmCons.qsCReceberParc
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 1071
        Height = 57
        BandType = btHeader
        object RLDraw3: TRLDraw
          Left = 255
          Top = 36
          Width = 50
          Height = 20
        end
        object RLDBText1: TRLDBText
          Left = 4
          Top = 5
          Width = 349
          Height = 14
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
          Left = 960
          Top = 3
          Width = 72
          Height = 14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = itPageNumber
          ParentFont = False
        end
        object RLSystemInfo2: TRLSystemInfo
          Left = 960
          Top = 19
          Width = 33
          Height = 14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel1: TRLLabel
          Left = 930
          Top = 3
          Width = 27
          Height = 14
          Caption = 'Pag.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 930
          Top = 19
          Width = 28
          Height = 14
          Caption = 'Data:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 445
          Top = 13
          Width = 140
          Height = 19
          Caption = 'Contas a Receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw1: TRLDraw
          Left = 0
          Top = 36
          Width = 256
          Height = 20
        end
        object RLLabel4: TRLLabel
          Left = 107
          Top = 39
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
        object RLDraw2: TRLDraw
          Left = 563
          Top = 36
          Width = 87
          Height = 20
        end
        object RLLabel5: TRLLabel
          Left = 568
          Top = 39
          Width = 76
          Height = 15
          Caption = 'Vlr. Restante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 258
          Top = 39
          Width = 44
          Height = 15
          Caption = 'N'#186' Nota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw4: TRLDraw
          Left = 339
          Top = 36
          Width = 67
          Height = 20
        end
        object RLLabel7: TRLLabel
          Left = 346
          Top = 39
          Width = 52
          Height = 15
          Caption = 'Vlr.Parc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw5: TRLDraw
          Left = 405
          Top = 36
          Width = 85
          Height = 20
        end
        object RLLabel8: TRLLabel
          Left = 421
          Top = 39
          Width = 53
          Height = 15
          Caption = 'Dt. Venc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw6: TRLDraw
          Left = 304
          Top = 36
          Width = 36
          Height = 20
        end
        object RLLabel9: TRLLabel
          Left = 306
          Top = 39
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
          Left = 489
          Top = 36
          Width = 75
          Height = 20
        end
        object RLLabel10: TRLLabel
          Left = 492
          Top = 39
          Width = 69
          Height = 15
          Caption = 'Dias Atraso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw8: TRLDraw
          Left = 649
          Top = 36
          Width = 94
          Height = 20
        end
        object RLLabel11: TRLLabel
          Left = 652
          Top = 39
          Width = 89
          Height = 15
          Caption = 'Dt. '#218'ltimo Pgto.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw9: TRLDraw
          Left = 742
          Top = 36
          Width = 102
          Height = 20
        end
        object RLLabel12: TRLLabel
          Left = 769
          Top = 39
          Width = 54
          Height = 15
          Caption = 'Vlr. Pgto.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw10: TRLDraw
          Left = 843
          Top = 36
          Width = 228
          Height = 20
        end
        object RLLabel13: TRLLabel
          Left = 939
          Top = 39
          Width = 36
          Height = 15
          Caption = 'Conta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 57
        Width = 1071
        Height = 14
        AfterPrint = RLBand2AfterPrint
        BeforePrint = RLBand2BeforePrint
        object RLDBText2: TRLDBText
          Left = 3
          Top = 1
          Width = 254
          Height = 12
          AutoSize = False
          DataField = 'NOMECLIENTE'
          DataSource = DmCons.qsCReceberParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 258
          Top = 1
          Width = 46
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'NUMNOTA'
          DataSource = DmCons.qsCReceberParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 307
          Top = 1
          Width = 31
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PARCELA'
          DataSource = DmCons.qsCReceberParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 341
          Top = 1
          Width = 64
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRVENCIMENTO'
          DataSource = DmCons.qsCReceberParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 407
          Top = 1
          Width = 82
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'DTVENCIMENTO'
          DataSource = DmCons.qsCReceberParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 505
          Top = 1
          Width = 32
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'clDiasAtraso'
          DataSource = DmCons.qsCReceberParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 564
          Top = 1
          Width = 81
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRRESTANTE'
          DataSource = DmCons.qsCReceberParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 652
          Top = 1
          Width = 90
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'DTPAGTO'
          DataSource = DmCons.qsCReceberParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 744
          Top = 1
          Width = 97
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRPAGTO'
          DataSource = DmCons.qsCReceberParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 843
          Top = 1
          Width = 224
          Height = 12
          AutoSize = False
          DataField = 'NOMEBANCO'
          DataSource = DmCons.qsCReceberParc
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
        Top = 71
        Width = 1071
        Height = 18
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
          Left = 380
          Top = 2
          Width = 24
          Height = 14
          Alignment = taRightJustify
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
          Width = 93
          Height = 14
          Caption = 'Valor a Receber:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel37: TRLLabel
          Left = 618
          Top = 2
          Width = 24
          Height = 14
          Alignment = taRightJustify
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel38: TRLLabel
          Left = 646
          Top = 2
          Width = 89
          Height = 14
          Caption = 'Valor Recebido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel39: TRLLabel
          Left = 817
          Top = 2
          Width = 24
          Height = 14
          Alignment = taRightJustify
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
        Top = 89
        Width = 1071
        Height = 22
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
          Left = 647
          Top = 3
          Width = 89
          Height = 14
          Caption = 'Valor Recebido:'
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
          Width = 93
          Height = 14
          Caption = 'Valor a Receber:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel16: TRLLabel
          Left = 617
          Top = 3
          Width = 24
          Height = 14
          Alignment = taRightJustify
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 818
          Top = 3
          Width = 24
          Height = 14
          Alignment = taRightJustify
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
          Left = 380
          Top = 2
          Width = 24
          Height = 14
          Alignment = taRightJustify
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
    Left = 1146
    Top = 11
    Width = 794
    Height = 1123
    DataSource = fContasReceberDet.qsPagas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.TopMargin = 8.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    Margins.BottomMargin = 8.000000000000000000
    object RLSubDetail3: TRLSubDetail
      Left = 26
      Top = 30
      Width = 742
      Height = 379
      DataSource = fContasReceberDet.qsPagas
      object RLBand4: TRLBand
        Left = 0
        Top = 0
        Width = 742
        Height = 55
        BandType = btHeader
        object RLDraw12: TRLDraw
          Left = 245
          Top = 34
          Width = 50
          Height = 20
        end
        object RLDBText12: TRLDBText
          Left = 4
          Top = 5
          Width = 229
          Height = 12
          AutoSize = False
          DataField = 'NOME'
          DataSource = Dm1.dsEmpresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLSystemInfo3: TRLSystemInfo
          Left = 632
          Top = 5
          Width = 72
          Height = 14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = itPageNumber
          ParentFont = False
        end
        object RLSystemInfo4: TRLSystemInfo
          Left = 632
          Top = 19
          Width = 33
          Height = 14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 602
          Top = 5
          Width = 27
          Height = 14
          Caption = 'Pag.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel19: TRLLabel
          Left = 602
          Top = 19
          Width = 28
          Height = 14
          Caption = 'Data:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel20: TRLLabel
          Left = 259
          Top = 13
          Width = 201
          Height = 19
          Caption = 'Contas a Receber - Pagas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw13: TRLDraw
          Left = 0
          Top = 34
          Width = 246
          Height = 20
        end
        object RLLabel21: TRLLabel
          Left = 102
          Top = 37
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
        object RLDraw14: TRLDraw
          Left = 550
          Top = 34
          Width = 74
          Height = 20
        end
        object RLLabel22: TRLLabel
          Left = 553
          Top = 37
          Width = 68
          Height = 15
          Caption = 'Juros Pago'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel23: TRLLabel
          Left = 248
          Top = 37
          Width = 44
          Height = 15
          Caption = 'N'#186' Nota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw15: TRLDraw
          Left = 329
          Top = 34
          Width = 91
          Height = 20
        end
        object RLLabel24: TRLLabel
          Left = 337
          Top = 37
          Width = 51
          Height = 15
          Caption = 'Vlr.Pgto.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw16: TRLDraw
          Left = 419
          Top = 34
          Width = 69
          Height = 20
        end
        object RLLabel25: TRLLabel
          Left = 428
          Top = 37
          Width = 50
          Height = 15
          Caption = 'Dt. Pgto.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw17: TRLDraw
          Left = 294
          Top = 34
          Width = 36
          Height = 20
        end
        object RLLabel26: TRLLabel
          Left = 296
          Top = 37
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
        object RLDraw18: TRLDraw
          Left = 487
          Top = 34
          Width = 64
          Height = 20
        end
        object RLLabel27: TRLLabel
          Left = 491
          Top = 37
          Width = 57
          Height = 15
          Caption = 'Vlr. Desc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw21: TRLDraw
          Left = 623
          Top = 34
          Width = 119
          Height = 20
        end
        object RLLabel30: TRLLabel
          Left = 664
          Top = 37
          Width = 36
          Height = 15
          Caption = 'Conta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 55
        Width = 742
        Height = 14
        AfterPrint = RLBand5AfterPrint
        BeforePrint = RLBand5BeforePrint
        object RLDBText13: TRLDBText
          Left = 3
          Top = 1
          Width = 241
          Height = 11
          AutoSize = False
          DataField = 'NOME'
          DataSource = fContasReceberDet.qsPagas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText14: TRLDBText
          Left = 249
          Top = 1
          Width = 46
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'NUMNOTA'
          DataSource = fContasReceberDet.qsPagas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText15: TRLDBText
          Left = 298
          Top = 1
          Width = 31
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PARCELA'
          DataSource = fContasReceberDet.qsPagas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText16: TRLDBText
          Left = 332
          Top = 1
          Width = 85
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRULTPGTO'
          DataSource = fContasReceberDet.qsPagas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText17: TRLDBText
          Left = 422
          Top = 1
          Width = 66
          Height = 11
          Alignment = taCenter
          AutoSize = False
          DataField = 'DTULTPGTO'
          DataSource = fContasReceberDet.qsPagas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText18: TRLDBText
          Left = 488
          Top = 1
          Width = 61
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRULTDESCONTO'
          DataSource = fContasReceberDet.qsPagas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText22: TRLDBText
          Left = 625
          Top = 1
          Width = 115
          Height = 11
          AutoSize = False
          DataField = 'NOMEBANCO'
          DataSource = fContasReceberDet.qsPagas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText19: TRLDBText
          Left = 553
          Top = 1
          Width = 68
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRULTJUROSPAGO'
          DataSource = fContasReceberDet.qsPagas
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
        Top = 69
        Width = 742
        Height = 17
        BeforePrint = RLBand8BeforePrint
        object RLLabel31: TRLLabel
          Left = 97
          Top = 2
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
          Left = 169
          Top = 1
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
          Left = 380
          Top = 1
          Width = 24
          Height = 14
          Alignment = taRightJustify
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
          Width = 285
          Height = 2
        end
      end
      object RLBand9: TRLBand
        Left = 0
        Top = 86
        Width = 742
        Height = 25
        BandType = btSummary
        Completion = ctMaxBands
        BeforePrint = RLBand9BeforePrint
        object RLDraw20: TRLDraw
          Left = 120
          Top = 1
          Width = 285
          Height = 2
        end
        object RLLabel43: TRLLabel
          Left = 139
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
          Left = 381
          Top = 4
          Width = 24
          Height = 14
          Alignment = taRightJustify
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
    Left = 1977
    Top = 11
    Width = 1123
    Height = 794
    DataSource = DmCons.qsCReceberParc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    BeforePrint = RLReport1BeforePrint
    object RLSubDetail2: TRLSubDetail
      Left = 38
      Top = 38
      Width = 1047
      Height = 403
      DataSource = DmCons.qsCReceberParc
      object RLBand6: TRLBand
        Left = 0
        Top = 0
        Width = 1047
        Height = 51
        BandType = btHeader
        object RLDraw23: TRLDraw
          Left = 255
          Top = 33
          Width = 50
          Height = 18
        end
        object RLDBText20: TRLDBText
          Left = 2
          Top = 2
          Width = 365
          Height = 14
          AutoSize = False
          DataField = 'NOME'
          DataSource = Dm1.dsEmpresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLSystemInfo5: TRLSystemInfo
          Left = 960
          Top = 1
          Width = 63
          Height = 12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Info = itPageNumber
          ParentFont = False
        end
        object RLSystemInfo6: TRLSystemInfo
          Left = 960
          Top = 13
          Width = 29
          Height = 12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel34: TRLLabel
          Left = 930
          Top = 1
          Width = 25
          Height = 12
          Caption = 'Pag.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel44: TRLLabel
          Left = 930
          Top = 13
          Width = 26
          Height = 12
          Caption = 'Data:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel45: TRLLabel
          Left = 453
          Top = 13
          Width = 116
          Height = 16
          Caption = 'Contas a Receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLDraw24: TRLDraw
          Left = 0
          Top = 33
          Width = 256
          Height = 18
        end
        object RLLabel47: TRLLabel
          Left = 107
          Top = 35
          Width = 42
          Height = 14
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw25: TRLDraw
          Left = 563
          Top = 33
          Width = 87
          Height = 18
        end
        object RLLabel48: TRLLabel
          Left = 568
          Top = 35
          Width = 74
          Height = 14
          Caption = 'Vlr. Restante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel49: TRLLabel
          Left = 258
          Top = 35
          Width = 41
          Height = 14
          Caption = 'N'#186' Nota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw26: TRLDraw
          Left = 339
          Top = 33
          Width = 67
          Height = 18
        end
        object RLLabel50: TRLLabel
          Left = 346
          Top = 35
          Width = 49
          Height = 14
          Caption = 'Vlr.Parc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw27: TRLDraw
          Left = 405
          Top = 33
          Width = 85
          Height = 18
        end
        object RLLabel51: TRLLabel
          Left = 421
          Top = 35
          Width = 51
          Height = 14
          Caption = 'Dt. Venc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw28: TRLDraw
          Left = 304
          Top = 33
          Width = 36
          Height = 18
        end
        object RLLabel52: TRLLabel
          Left = 306
          Top = 35
          Width = 30
          Height = 14
          Caption = 'Parc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw29: TRLDraw
          Left = 489
          Top = 33
          Width = 75
          Height = 18
        end
        object RLLabel53: TRLLabel
          Left = 492
          Top = 35
          Width = 66
          Height = 14
          Caption = 'Dias Atraso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw30: TRLDraw
          Left = 649
          Top = 33
          Width = 94
          Height = 18
        end
        object RLLabel54: TRLLabel
          Left = 652
          Top = 35
          Width = 86
          Height = 14
          Caption = 'Dt. '#218'ltimo Pgto.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw31: TRLDraw
          Left = 742
          Top = 33
          Width = 110
          Height = 18
        end
        object RLLabel55: TRLLabel
          Left = 753
          Top = 35
          Width = 53
          Height = 14
          Caption = 'Vlr. Pgto.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw32: TRLDraw
          Left = 851
          Top = 33
          Width = 196
          Height = 18
        end
        object RLLabel56: TRLLabel
          Left = 947
          Top = 35
          Width = 35
          Height = 14
          Caption = 'Conta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand10: TRLBand
        Left = 0
        Top = 51
        Width = 1047
        Height = 13
        AfterPrint = RLBand10AfterPrint
        BeforePrint = RLBand10BeforePrint
        object RLDBText21: TRLDBText
          Left = 3
          Top = 1
          Width = 254
          Height = 11
          AutoSize = False
          DataField = 'NOMECLIENTE'
          DataSource = DmCons.qsCReceberParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText23: TRLDBText
          Left = 258
          Top = 1
          Width = 46
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'NUMNOTA'
          DataSource = DmCons.qsCReceberParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText24: TRLDBText
          Left = 307
          Top = 1
          Width = 31
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PARCELA'
          DataSource = DmCons.qsCReceberParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText25: TRLDBText
          Left = 341
          Top = 1
          Width = 64
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRVENCIMENTO'
          DataSource = DmCons.qsCReceberParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText26: TRLDBText
          Left = 407
          Top = 1
          Width = 82
          Height = 11
          Alignment = taCenter
          AutoSize = False
          DataField = 'DTVENCIMENTO'
          DataSource = DmCons.qsCReceberParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText27: TRLDBText
          Left = 505
          Top = 1
          Width = 32
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'clDiasAtraso'
          DataSource = DmCons.qsCReceberParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText28: TRLDBText
          Left = 564
          Top = 1
          Width = 81
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRRESTANTE'
          DataSource = DmCons.qsCReceberParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText29: TRLDBText
          Left = 652
          Top = 1
          Width = 90
          Height = 11
          Alignment = taCenter
          AutoSize = False
          DataField = 'DTPAGTO'
          DataSource = DmCons.qsCReceberParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText30: TRLDBText
          Left = 744
          Top = 1
          Width = 107
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRPAGTO'
          DataSource = DmCons.qsCReceberParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText31: TRLDBText
          Left = 853
          Top = 1
          Width = 193
          Height = 11
          AutoSize = False
          DataField = 'NOMEBANCO'
          DataSource = DmCons.qsCReceberParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand12: TRLBand
        Left = 0
        Top = 64
        Width = 1047
        Height = 21
        BandType = btSummary
        Completion = ctMaxBands
        BeforePrint = RLBand12BeforePrint
        object RLDraw34: TRLDraw
          Left = 186
          Top = 1
          Width = 645
          Height = 2
        end
        object RLLabel64: TRLLabel
          Left = 648
          Top = 3
          Width = 76
          Height = 14
          Caption = 'Vlr.Recebido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel65: TRLLabel
          Left = 420
          Top = 3
          Width = 80
          Height = 14
          Caption = 'Vlr.a Receber:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel66: TRLLabel
          Left = 618
          Top = 3
          Width = 24
          Height = 14
          Alignment = taRightJustify
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel67: TRLLabel
          Left = 826
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
        object RLLabel68: TRLLabel
          Left = 82
          Top = 3
          Width = 87
          Height = 18
          Caption = 'Total Geral:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel69: TRLLabel
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
        object RLLabel70: TRLLabel
          Left = 380
          Top = 2
          Width = 24
          Height = 14
          Alignment = taRightJustify
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
