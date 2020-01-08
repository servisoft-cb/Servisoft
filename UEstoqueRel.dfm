object fEstoqueRel: TfEstoqueRel
  Left = 17
  Top = 106
  Width = 774
  Height = 457
  HorzScrollBar.Position = 854
  BorderIcons = [biSystemMenu]
  Caption = 'Relat'#243'rio de Estoque'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = -852
    Top = 2
    Width = 794
    Height = 1123
    DataSource = fEstoque.qsEstoqueMov
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 38
      Width = 718
      Height = 1046
      DataSource = fEstoque.qsEstoqueMov
      object RLBand4: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 77
        BandType = btHeader
        object RLDBText12: TRLDBText
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
          Left = 259
          Top = 29
          Width = 164
          Height = 19
          Caption = 'Relat'#243'rio de Estoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw13: TRLDraw
          Left = 0
          Top = 56
          Width = 65
          Height = 20
        end
        object RLLabel21: TRLLabel
          Left = 11
          Top = 59
          Width = 42
          Height = 15
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw15: TRLDraw
          Left = 465
          Top = 56
          Width = 67
          Height = 20
        end
        object RLLabel24: TRLLabel
          Left = 470
          Top = 59
          Width = 56
          Height = 15
          Caption = 'Tamanho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw16: TRLDraw
          Left = 531
          Top = 56
          Width = 86
          Height = 20
        end
        object RLLabel25: TRLLabel
          Left = 557
          Top = 59
          Width = 35
          Height = 15
          Caption = 'Saldo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw17: TRLDraw
          Left = 64
          Top = 56
          Width = 402
          Height = 20
        end
        object RLLabel26: TRLLabel
          Left = 235
          Top = 59
          Width = 61
          Height = 15
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand1: TRLBand
        Left = 0
        Top = 77
        Width = 718
        Height = 18
        object RLDBText1: TRLDBText
          Left = 2
          Top = 1
          Width = 60
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'CODPRODUTO'
          DataSource = fEstoque.qsEstoqueMov
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 66
          Top = 1
          Width = 399
          Height = 15
          AutoSize = False
          DataField = 'NOME'
          DataSource = fEstoque.qsEstoqueMov
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 480
          Top = 1
          Width = 35
          Height = 15
          AutoSize = False
          DataField = 'TAMANHO'
          DataSource = fEstoque.qsEstoqueMov
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 533
          Top = 1
          Width = 80
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTD'
          DataSource = fEstoque.qsEstoqueMov
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw1: TRLDraw
          Left = 619
          Top = 15
          Width = 95
          Height = 2
        end
      end
    end
  end
  object RLReport2: TRLReport
    Left = -44
    Top = 3
    Width = 794
    Height = 1123
    DataSource = fProdutoHist.qsHistProd
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLSubDetail2: TRLSubDetail
      Left = 38
      Top = 38
      Width = 718
      Height = 1046
      DataSource = fProdutoHist.qsHistProd
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 75
        BandType = btHeader
        object RLDraw8: TRLDraw
          Left = 427
          Top = 55
          Width = 35
          Height = 20
        end
        object RLDBText5: TRLDBText
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
        object RLSystemInfo2: TRLSystemInfo
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
        object RLLabel1: TRLLabel
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
        object RLLabel2: TRLLabel
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
        object RLLabel3: TRLLabel
          Left = 207
          Top = 29
          Width = 303
          Height = 19
          Caption = 'Hist'#243'rico de Movimenta'#231#227'o do Estoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 55
          Width = 68
          Height = 20
        end
        object RLLabel4: TRLLabel
          Left = 11
          Top = 58
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
        object RLDraw3: TRLDraw
          Left = 299
          Top = 55
          Width = 40
          Height = 20
        end
        object RLLabel5: TRLLabel
          Left = 304
          Top = 58
          Width = 31
          Height = 15
          Caption = 'Tam.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw4: TRLDraw
          Left = 338
          Top = 55
          Width = 27
          Height = 20
        end
        object RLLabel6: TRLLabel
          Left = 341
          Top = 58
          Width = 21
          Height = 15
          Caption = 'E/S'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw5: TRLDraw
          Left = 67
          Top = 55
          Width = 233
          Height = 20
        end
        object RLLabel7: TRLLabel
          Left = 153
          Top = 58
          Width = 61
          Height = 15
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw7: TRLDraw
          Left = 364
          Top = 55
          Width = 64
          Height = 20
        end
        object RLLabel8: TRLLabel
          Left = 383
          Top = 58
          Width = 26
          Height = 15
          Caption = 'Qtd.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 432
          Top = 58
          Width = 25
          Height = 15
          Caption = 'U.N.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw9: TRLDraw
          Left = 461
          Top = 55
          Width = 35
          Height = 20
        end
        object RLLabel10: TRLLabel
          Left = 465
          Top = 58
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
        object RLDraw10: TRLDraw
          Left = 495
          Top = 55
          Width = 55
          Height = 20
        end
        object RLLabel11: TRLLabel
          Left = 500
          Top = 58
          Width = 44
          Height = 15
          Caption = 'N'#176' Doc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw11: TRLDraw
          Left = 549
          Top = 55
          Width = 64
          Height = 20
        end
        object RLLabel12: TRLLabel
          Left = 554
          Top = 58
          Width = 55
          Height = 15
          Caption = 'Pr. Custo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw12: TRLDraw
          Left = 612
          Top = 55
          Width = 53
          Height = 20
        end
        object RLLabel13: TRLLabel
          Left = 616
          Top = 58
          Width = 44
          Height = 15
          Caption = '% ICMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw14: TRLDraw
          Left = 664
          Top = 55
          Width = 53
          Height = 20
        end
        object RLLabel14: TRLLabel
          Left = 676
          Top = 58
          Width = 29
          Height = 15
          Caption = '% IPI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 75
        Width = 718
        Height = 18
        object RLDBText6: TRLDBText
          Left = 2
          Top = 1
          Width = 65
          Height = 15
          Alignment = taCenter
          AutoSize = False
          DataField = 'DTMOV'
          DataSource = fProdutoHist.qsHistProd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 68
          Top = 1
          Width = 232
          Height = 15
          AutoSize = False
          DataField = 'NOME'
          DataSource = fProdutoHist.qsHistProd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 302
          Top = 1
          Width = 35
          Height = 15
          AutoSize = False
          DataField = 'TAMANHO'
          DataSource = fProdutoHist.qsHistProd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 366
          Top = 1
          Width = 61
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTD'
          DataSource = fProdutoHist.qsHistProd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 340
          Top = 1
          Width = 24
          Height = 15
          Alignment = taCenter
          AutoSize = False
          DataField = 'ES'
          DataSource = fProdutoHist.qsHistProd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 429
          Top = 1
          Width = 32
          Height = 15
          AutoSize = False
          DataField = 'UNIDADE'
          DataSource = fProdutoHist.qsHistProd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText13: TRLDBText
          Left = 465
          Top = 1
          Width = 31
          Height = 15
          AutoSize = False
          DataField = 'TIPOMOV'
          DataSource = fProdutoHist.qsHistProd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText14: TRLDBText
          Left = 498
          Top = 1
          Width = 50
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'NUMDOCTO'
          DataSource = fProdutoHist.qsHistProd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText15: TRLDBText
          Left = 551
          Top = 1
          Width = 61
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRECOCUSTO'
          DataSource = fProdutoHist.qsHistProd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText16: TRLDBText
          Left = 615
          Top = 1
          Width = 48
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PERCICMS'
          DataSource = fProdutoHist.qsHistProd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText17: TRLDBText
          Left = 666
          Top = 1
          Width = 48
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PERCIPI'
          DataSource = fProdutoHist.qsHistProd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 93
        Width = 718
        Height = 24
        BandType = btSummary
        BeforePrint = RLBand5BeforePrint
        object RLLabel15: TRLLabel
          Left = 111
          Top = 5
          Width = 119
          Height = 16
          Caption = 'Total de entradas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel16: TRLLabel
          Left = 335
          Top = 5
          Width = 104
          Height = 16
          Caption = 'Total de sa'#237'das:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 543
          Top = 5
          Width = 81
          Height = 16
          Caption = 'Saldo atual:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw6: TRLDraw
          Left = 81
          Top = 2
          Width = 637
          Height = 2
        end
        object RLLabel22: TRLLabel
          Left = 233
          Top = 5
          Width = 36
          Height = 16
          Caption = '0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel23: TRLLabel
          Left = 442
          Top = 5
          Width = 36
          Height = 16
          Caption = '0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel27: TRLLabel
          Left = 628
          Top = 5
          Width = 36
          Height = 16
          Caption = '0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
end
