object fRelBoletoItau: TfRelBoletoItau
  Left = 450
  Top = 150
  Width = 796
  Height = 591
  HorzScrollBar.Position = 14
  VertScrollBar.Position = 442
  Caption = 'fRelBoletoItau'
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
    Left = -6
    Top = -418
    Width = 794
    Height = 1123
    AllowedBands = [btDetail]
    DataSource = fPrevBoleto2.dsParcelas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    ShowProgress = False
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 38
      Width = 742
      Height = 1043
      DataSource = fPrevBoleto2.dsParcelas
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 742
        Height = 1033
        AfterPrint = RLBand2AfterPrint
        BeforePrint = RLBand2BeforePrint
        object RLDraw28: TRLDraw
          Left = 425
          Top = 134
          Width = 114
          Height = 29
        end
        object RLDraw13: TRLDraw
          Left = 0
          Top = 134
          Width = 73
          Height = 29
        end
        object RLDraw15: TRLDraw
          Left = 72
          Top = 134
          Width = 129
          Height = 29
        end
        object RLDraw16: TRLDraw
          Left = 200
          Top = 134
          Width = 89
          Height = 29
        end
        object RLDraw17: TRLDraw
          Left = 288
          Top = 134
          Width = 138
          Height = 29
        end
        object RLDraw12: TRLDraw
          Left = 425
          Top = 104
          Width = 114
          Height = 31
        end
        object RLDraw11: TRLDraw
          Left = 360
          Top = 104
          Width = 66
          Height = 31
        end
        object RLDraw10: TRLDraw
          Left = 240
          Top = 104
          Width = 121
          Height = 31
        end
        object RLDraw9: TRLDraw
          Left = 112
          Top = 104
          Width = 129
          Height = 31
        end
        object RLDraw7: TRLDraw
          Left = 0
          Top = 104
          Width = 113
          Height = 31
        end
        object RLDraw24: TRLDraw
          Left = 538
          Top = 436
          Width = 202
          Height = 33
        end
        object RLDraw4: TRLDraw
          Left = 538
          Top = 42
          Width = 203
          Height = 33
        end
        object RLDraw44: TRLDraw
          Left = 0
          Top = 392
          Width = 755
          Height = 3
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Pen.Style = psDot
        end
        object RLBarcode2: TRLBarcode
          Left = 3
          Top = 747
          Width = 432
          Height = 52
          Caption = '74893103210005770801807006430099822340000001000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Margins.LeftMargin = 1.000000000000000000
          Margins.RightMargin = 1.000000000000000000
          ParentFont = False
          Ratio = 3.000000000000000000
        end
        object RLDraw45: TRLDraw
          Left = 0
          Top = 436
          Width = 539
          Height = 33
        end
        object RLLabel48: TRLLabel
          Left = 1
          Top = 437
          Width = 87
          Height = 12
          Caption = 'Local de pagamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel49: TRLLabel
          Left = 539
          Top = 437
          Width = 52
          Height = 12
          Caption = 'Vencimento'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDraw47: TRLDraw
          Left = 0
          Top = 468
          Width = 539
          Height = 29
        end
        object RLLabel50: TRLLabel
          Left = 1
          Top = 469
          Width = 38
          Height = 12
          Caption = 'Cedente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw48: TRLDraw
          Left = 538
          Top = 468
          Width = 202
          Height = 29
        end
        object RLLabel51: TRLLabel
          Left = 539
          Top = 469
          Width = 110
          Height = 12
          Caption = 'Ag'#234'ncia / C'#243'digo cedente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw49: TRLDraw
          Left = 0
          Top = 496
          Width = 113
          Height = 27
        end
        object RLLabel52: TRLLabel
          Left = 1
          Top = 497
          Width = 87
          Height = 12
          Caption = 'Data do Documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw50: TRLDraw
          Left = 538
          Top = 496
          Width = 202
          Height = 27
        end
        object RLLabel53: TRLLabel
          Left = 539
          Top = 497
          Width = 64
          Height = 12
          Caption = 'Nosso n'#250'mero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw51: TRLDraw
          Left = 112
          Top = 496
          Width = 129
          Height = 27
        end
        object RLLabel54: TRLLabel
          Left = 113
          Top = 497
          Width = 77
          Height = 12
          Caption = 'N'#186' do Documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw52: TRLDraw
          Left = 240
          Top = 496
          Width = 121
          Height = 27
        end
        object RLLabel55: TRLLabel
          Left = 241
          Top = 497
          Width = 57
          Height = 12
          Caption = 'Esp'#233'cie doc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw53: TRLDraw
          Left = 360
          Top = 496
          Width = 66
          Height = 27
        end
        object RLLabel56: TRLLabel
          Left = 361
          Top = 497
          Width = 29
          Height = 12
          Caption = 'Aceite'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw54: TRLDraw
          Left = 425
          Top = 496
          Width = 114
          Height = 27
        end
        object RLLabel57: TRLLabel
          Left = 426
          Top = 497
          Width = 103
          Height = 12
          Caption = 'Data do processamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw55: TRLDraw
          Left = 0
          Top = 522
          Width = 73
          Height = 30
        end
        object RLDraw56: TRLDraw
          Left = 538
          Top = 522
          Width = 202
          Height = 30
        end
        object RLLabel59: TRLLabel
          Left = 539
          Top = 525
          Width = 100
          Height = 12
          Caption = '(=) Valor do documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw58: TRLDraw
          Left = 200
          Top = 522
          Width = 89
          Height = 30
        end
        object RLLabel61: TRLLabel
          Left = 206
          Top = 523
          Width = 36
          Height = 12
          Caption = 'Esp'#233'cie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw59: TRLDraw
          Left = 288
          Top = 522
          Width = 138
          Height = 30
        end
        object RLLabel62: TRLLabel
          Left = 289
          Top = 523
          Width = 50
          Height = 12
          Caption = 'Quantidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw60: TRLDraw
          Left = 425
          Top = 522
          Width = 114
          Height = 30
        end
        object RLLabel63: TRLLabel
          Left = 426
          Top = 523
          Width = 24
          Height = 12
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw61: TRLDraw
          Left = 0
          Top = 551
          Width = 539
          Height = 112
        end
        object RLDraw62: TRLDraw
          Left = 0
          Top = 662
          Width = 740
          Height = 72
        end
        object RLDraw63: TRLDraw
          Left = 538
          Top = 551
          Width = 202
          Height = 26
        end
        object RLDraw64: TRLDraw
          Left = 538
          Top = 576
          Width = 202
          Height = 22
        end
        object RLDraw65: TRLDraw
          Left = 538
          Top = 597
          Width = 202
          Height = 22
        end
        object RLDraw66: TRLDraw
          Left = 538
          Top = 638
          Width = 202
          Height = 25
        end
        object RLLabel64: TRLLabel
          Left = 498
          Top = 735
          Width = 238
          Height = 14
          Alignment = taRightJustify
          Caption = 'Autentica'#231#227'o Mec'#226'nica / Ficha de Compensa'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText29: TRLDBText
          Left = 0
          Top = 482
          Width = 521
          Height = 13
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
        object RLDBText30: TRLDBText
          Left = 622
          Top = 452
          Width = 87
          Height = 14
          Alignment = taRightJustify
          Color = clWhite
          DataField = 'DTVENCIMENTO'
          DataSource = fPrevBoleto2.dsParcelas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDBText31: TRLDBText
          Left = 8
          Top = 510
          Width = 97
          Height = 12
          AutoSize = False
          DataField = 'DTMOVIMENTO'
          DataSource = fPrevBoleto2.dsParcelas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel66: TRLLabel
          Left = 222
          Top = 537
          Width = 16
          Height = 14
          Caption = 'R$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText35: TRLDBText
          Left = 243
          Top = 510
          Width = 102
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'ESPECIEDOC'
          DataSource = Dm1.dsBcoItau
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw67: TRLDraw
          Left = 89
          Top = 407
          Width = 2
          Height = 30
          DrawData.Strings = (
            '0 0'
            '0 1')
          DrawKind = dkCustom
          Pen.Width = 2
        end
        object RLDraw68: TRLDraw
          Left = 164
          Top = 407
          Width = 2
          Height = 30
          DrawData.Strings = (
            '0 0'
            '0 1')
          DrawKind = dkCustom
          Pen.Width = 2
        end
        object RLLabel69: TRLLabel
          Left = 92
          Top = 408
          Width = 71
          Height = 30
          Caption = '341-7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -25
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel70: TRLLabel
          Left = 179
          Top = 413
          Width = 558
          Height = 22
          Alignment = taCenter
          Caption = '00000.00000 00000.000000 00000.000000 0 00000000000000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          RealBounds.UsedUnit = buMilimeters
        end
        object RLLabel71: TRLLabel
          Left = 1
          Top = 554
          Width = 408
          Height = 12
          Caption = 
            'Instru'#231#245'es:  Todas as informa'#231#245'es deste bloqueto s'#227'o de exclusiv' +
            'a responsabilidade do cedente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel72: TRLLabel
          Left = 539
          Top = 553
          Width = 121
          Height = 12
          Caption = '(-) Descontos / Abatimentos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel73: TRLLabel
          Left = 539
          Top = 604
          Width = 68
          Height = 12
          Caption = '(+) Mora / Multa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel75: TRLLabel
          Left = 539
          Top = 639
          Width = 74
          Height = 12
          Caption = '(=) Valor cobrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText37: TRLDBText
          Left = 629
          Top = 537
          Width = 80
          Height = 14
          Alignment = taRightJustify
          DataField = 'VLRRESTANTE'
          DataSource = fPrevBoleto2.dsParcelas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText38: TRLDBText
          Left = 80
          Top = 666
          Width = 505
          Height = 14
          AutoSize = False
          DataField = 'NOMECLIENTE'
          DataSource = fPrevBoleto2.dsParcelas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel76: TRLLabel
          Left = 1
          Top = 665
          Width = 37
          Height = 12
          Caption = 'Sacado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 703
          Top = 480
          Width = 6
          Height = 14
          Alignment = taRightJustify
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 583
          Top = 19
          Width = 144
          Height = 19
          Caption = 'Recibo do Sacado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 116
          Top = 510
          Width = 122
          Height = 12
          Alignment = taCenter
          AutoSize = False
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 363
          Top = 510
          Width = 54
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'ACEITE'
          DataSource = Dm1.dsBcoItau
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw3: TRLDraw
          Left = 0
          Top = 42
          Width = 539
          Height = 33
        end
        object RLLabel1: TRLLabel
          Left = 1
          Top = 43
          Width = 87
          Height = 12
          Caption = 'Local de pagamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 543
          Top = 43
          Width = 52
          Height = 12
          Caption = 'Vencimento'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDraw5: TRLDraw
          Left = 0
          Top = 74
          Width = 539
          Height = 31
        end
        object RLLabel5: TRLLabel
          Left = 1
          Top = 75
          Width = 38
          Height = 12
          Caption = 'Cedente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw6: TRLDraw
          Left = 538
          Top = 74
          Width = 203
          Height = 31
        end
        object RLLabel8: TRLLabel
          Left = 543
          Top = 75
          Width = 110
          Height = 12
          Caption = 'Ag'#234'ncia / C'#243'digo cedente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw8: TRLDraw
          Left = 538
          Top = 104
          Width = 203
          Height = 31
        end
        object RLLabel10: TRLLabel
          Left = 543
          Top = 105
          Width = 64
          Height = 12
          Caption = 'Nosso n'#250'mero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw14: TRLDraw
          Left = 538
          Top = 134
          Width = 203
          Height = 29
        end
        object RLLabel15: TRLLabel
          Left = 543
          Top = 137
          Width = 100
          Height = 12
          Caption = '(=) Valor do documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw18: TRLDraw
          Left = 0
          Top = 162
          Width = 539
          Height = 111
        end
        object RLDraw19: TRLDraw
          Left = 0
          Top = 272
          Width = 741
          Height = 62
        end
        object RLDraw20: TRLDraw
          Left = 538
          Top = 162
          Width = 203
          Height = 23
        end
        object RLDraw21: TRLDraw
          Left = 538
          Top = 184
          Width = 203
          Height = 21
        end
        object RLDraw22: TRLDraw
          Left = 538
          Top = 204
          Width = 203
          Height = 23
        end
        object RLDraw23: TRLDraw
          Left = 538
          Top = 248
          Width = 203
          Height = 25
        end
        object RLLabel19: TRLLabel
          Left = 499
          Top = 335
          Width = 238
          Height = 14
          Alignment = taRightJustify
          Caption = 'Autentica'#231#227'o Mec'#226'nica / Ficha de Compensa'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 0
          Top = 90
          Width = 505
          Height = 13
          AutoSize = False
          DataField = 'Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 622
          Top = 56
          Width = 87
          Height = 14
          Alignment = taRightJustify
          Color = clWhite
          DataField = 'DTVENCIMENTO'
          DataSource = fPrevBoleto2.dsParcelas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel20: TRLLabel
          Left = 100
          Top = 45
          Width = 294
          Height = 14
          Caption = 'AT'#201' O VENCIMENTO PAGUE PREFERENCIALMENTE NO ITA'#218
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel22: TRLLabel
          Left = 1
          Top = 163
          Width = 408
          Height = 12
          Caption = 
            'Instru'#231#245'es:  Todas as informa'#231#245'es deste bloqueto s'#227'o de exclusiv' +
            'a responsabilidade do cedente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel23: TRLLabel
          Left = 543
          Top = 163
          Width = 121
          Height = 12
          Caption = '(-) Descontos / Abatimentos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel24: TRLLabel
          Left = 551
          Top = 211
          Width = 68
          Height = 12
          Caption = '(+) Mora / Multa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel26: TRLLabel
          Left = 543
          Top = 249
          Width = 74
          Height = 12
          Caption = '(=) Valor cobrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 629
          Top = 149
          Width = 80
          Height = 14
          Alignment = taRightJustify
          DataField = 'VLRRESTANTE'
          DataSource = fPrevBoleto2.dsParcelas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 83
          Top = 277
          Width = 72
          Height = 14
          DataField = 'NOMECLIENTE'
          DataSource = fPrevBoleto2.dsParcelas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel27: TRLLabel
          Left = 5
          Top = 316
          Width = 37
          Height = 12
          Caption = 'Sacado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel28: TRLLabel
          Left = 703
          Top = 87
          Width = 6
          Height = 14
          Alignment = taRightJustify
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel30: TRLLabel
          Left = 489
          Top = 318
          Width = 84
          Height = 14
          Alignment = taRightJustify
          Caption = 'C'#243'digo da Baixa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Inst1: TRLLabel
          Left = 6
          Top = 176
          Width = 530
          Height = 15
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Inst2: TRLLabel
          Left = 6
          Top = 191
          Width = 530
          Height = 15
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Inst3: TRLLabel
          Left = 6
          Top = 206
          Width = 530
          Height = 15
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Inst4: TRLLabel
          Left = 6
          Top = 221
          Width = 530
          Height = 15
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Inst5: TRLLabel
          Left = 6
          Top = 236
          Width = 530
          Height = 15
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Inst1A: TRLLabel
          Left = 4
          Top = 567
          Width = 530
          Height = 14
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Inst2A: TRLLabel
          Left = 4
          Top = 581
          Width = 530
          Height = 14
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Inst3A: TRLLabel
          Left = 4
          Top = 595
          Width = 530
          Height = 14
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Inst4A: TRLLabel
          Left = 4
          Top = 609
          Width = 530
          Height = 14
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Inst5A: TRLLabel
          Left = 4
          Top = 623
          Width = 530
          Height = 14
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText19: TRLDBText
          Left = 80
          Top = 708
          Width = 67
          Height = 14
          DataField = 'DOCUMENTO'
          DataSource = fPrevBoleto2.dsParcelas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel32: TRLLabel
          Left = 50
          Top = 316
          Width = 31
          Height = 14
          Alignment = taRightJustify
          Caption = 'CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel33: TRLLabel
          Left = 47
          Top = 708
          Width = 31
          Height = 14
          Alignment = taRightJustify
          Caption = 'CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel34: TRLLabel
          Left = 703
          Top = 118
          Width = 6
          Height = 14
          Alignment = taRightJustify
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel35: TRLLabel
          Left = 3
          Top = 410
          Width = 82
          Height = 15
          Caption = 'Banco Ita'#250' SA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw1: TRLDraw
          Left = 89
          Top = 13
          Width = 2
          Height = 30
          DrawData.Strings = (
            '0 0'
            '0 1')
          DrawKind = dkCustom
          Pen.Width = 2
        end
        object RLDraw2: TRLDraw
          Left = 164
          Top = 13
          Width = 2
          Height = 30
          DrawData.Strings = (
            '0 0'
            '0 1')
          DrawKind = dkCustom
          Pen.Width = 2
        end
        object RLLabel6: TRLLabel
          Left = 92
          Top = 14
          Width = 71
          Height = 30
          Caption = '341-7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -25
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel36: TRLLabel
          Left = 3
          Top = 16
          Width = 82
          Height = 15
          Caption = 'Banco Ita'#250' SA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel37: TRLLabel
          Left = 100
          Top = 59
          Width = 244
          Height = 14
          Caption = 'AP'#211'S O VENCIMENTO PAGUE SOMENTE NO ITA'#218
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel38: TRLLabel
          Left = 108
          Top = 440
          Width = 294
          Height = 14
          Caption = 'AT'#201' O VENCIMENTO PAGUE PREFERENCIALMENTE NO ITA'#218
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel39: TRLLabel
          Left = 108
          Top = 453
          Width = 244
          Height = 14
          Caption = 'AP'#211'S O VENCIMENTO PAGUE SOMENTE NO ITA'#218
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel40: TRLLabel
          Left = 703
          Top = 507
          Width = 6
          Height = 14
          Alignment = taRightJustify
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel41: TRLLabel
          Left = 1
          Top = 523
          Width = 62
          Height = 12
          Caption = 'Uso do Banco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw25: TRLDraw
          Left = 72
          Top = 522
          Width = 129
          Height = 30
        end
        object RLLabel42: TRLLabel
          Left = 80
          Top = 523
          Width = 36
          Height = 12
          Caption = 'Carteira'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 99
          Top = 536
          Width = 54
          Height = 14
          Alignment = taCenter
          AutoSize = False
          DataField = 'NUMCARTEIRA'
          DataSource = fPrevBoleto2.dsParcelas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw26: TRLDraw
          Left = 538
          Top = 618
          Width = 202
          Height = 21
        end
        object RLLabel31: TRLLabel
          Left = 80
          Top = 681
          Width = 49
          Height = 14
          Caption = 'Endere'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel43: TRLLabel
          Left = 80
          Top = 695
          Width = 22
          Height = 14
          Caption = 'Cep'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 83
          Top = 316
          Width = 67
          Height = 14
          DataField = 'DOCUMENTO'
          DataSource = fPrevBoleto2.dsParcelas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel44: TRLLabel
          Left = 83
          Top = 303
          Width = 22
          Height = 14
          Caption = 'Cep'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel45: TRLLabel
          Left = 83
          Top = 290
          Width = 49
          Height = 14
          Caption = 'Endere'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel46: TRLLabel
          Left = 481
          Top = 718
          Width = 84
          Height = 14
          Alignment = taRightJustify
          Caption = 'C'#243'digo da Baixa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw27: TRLDraw
          Left = 538
          Top = 226
          Width = 203
          Height = 23
        end
        object RLLabel9: TRLLabel
          Left = 1
          Top = 105
          Width = 87
          Height = 12
          Caption = 'Data do Documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 8
          Top = 121
          Width = 98
          Height = 13
          Alignment = taCenter
          AutoSize = False
          DataField = 'DTMOVIMENTO'
          DataSource = fPrevBoleto2.dsParcelas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 113
          Top = 105
          Width = 77
          Height = 12
          Caption = 'N'#186' do Documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 116
          Top = 121
          Width = 122
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel13: TRLLabel
          Left = 241
          Top = 105
          Width = 57
          Height = 12
          Caption = 'Esp'#233'cie doc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 243
          Top = 121
          Width = 102
          Height = 13
          Alignment = taCenter
          AutoSize = False
          DataField = 'ESPECIEDOC'
          DataSource = Dm1.dsBcoItau
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel14: TRLLabel
          Left = 361
          Top = 105
          Width = 29
          Height = 12
          Caption = 'Aceite'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 363
          Top = 121
          Width = 54
          Height = 13
          Alignment = taCenter
          AutoSize = False
          DataField = 'ACEITE'
          DataSource = Dm1.dsBcoItau
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel25: TRLLabel
          Left = 426
          Top = 105
          Width = 103
          Height = 12
          Caption = 'Data do processamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel16: TRLLabel
          Left = 1
          Top = 135
          Width = 62
          Height = 12
          Caption = 'Uso do Banco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 99
          Top = 148
          Width = 54
          Height = 13
          Alignment = taCenter
          AutoSize = False
          DataField = 'NUMCARTEIRA'
          DataSource = fPrevBoleto2.dsParcelas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 80
          Top = 135
          Width = 36
          Height = 12
          Caption = 'Carteira'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 222
          Top = 148
          Width = 16
          Height = 14
          Caption = 'R$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 206
          Top = 135
          Width = 36
          Height = 12
          Caption = 'Esp'#233'cie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel29: TRLLabel
          Left = 289
          Top = 135
          Width = 50
          Height = 12
          Caption = 'Quantidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel47: TRLLabel
          Left = 426
          Top = 135
          Width = 24
          Height = 12
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw29: TRLDraw
          Left = -13
          Top = 824
          Width = 755
          Height = 3
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Pen.Style = psDot
        end
      end
    end
  end
end
