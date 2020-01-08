object fNotaEntradaRel: TfNotaEntradaRel
  Left = 8
  Top = 100
  Width = 933
  Height = 598
  BorderIcons = [biSystemMenu]
  Caption = 'Impress'#227'o da Nota Fiscal de Entrada'
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
  object RLReport2: TRLReport
    Left = 1
    Top = 2
    Width = 794
    Height = 1123
    DataSource = fNotaEntrada.qsNotaEntradaImp
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLSubDetail4: TRLSubDetail
      Left = 38
      Top = 38
      Width = 718
      Height = 442
      DataSource = fNotaEntrada.qsNotaEntradaImp
      object RLBand4: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 92
        object RLDBText22: TRLDBText
          Left = 4
          Top = 5
          Width = 57
          Height = 14
          DataField = 'FANTASIA'
          DataSource = Dm1.dsEmpresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel1: TRLLabel
          Left = 263
          Top = 19
          Width = 192
          Height = 29
          Alignment = taRightJustify
          Caption = 'Nota de Compra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 6
          Top = 56
          Width = 71
          Height = 15
          Caption = 'Fornecedor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText23: TRLDBText
          Left = 81
          Top = 57
          Width = 276
          Height = 14
          AutoSize = False
          DataField = 'NOME'
          DataSource = fNotaEntrada.qsNotaEntradaImp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 6
          Top = 73
          Width = 47
          Height = 15
          Caption = 'N'#186' Nota:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText24: TRLDBText
          Left = 56
          Top = 74
          Width = 65
          Height = 14
          AutoSize = False
          DataField = 'NUMNOTA'
          DataSource = fNotaEntrada.qsNotaEntradaImp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 144
          Top = 73
          Width = 36
          Height = 15
          Caption = 'S'#233'rie:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText25: TRLDBText
          Left = 184
          Top = 74
          Width = 52
          Height = 14
          AutoSize = False
          DataField = 'SERIE'
          DataSource = fNotaEntrada.qsNotaEntradaImp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 255
          Top = 73
          Width = 84
          Height = 15
          Caption = 'Data Emiss'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText26: TRLDBText
          Left = 342
          Top = 74
          Width = 91
          Height = 14
          AutoSize = False
          DataField = 'DTEMISSAO'
          DataSource = fNotaEntrada.qsNotaEntradaImp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 453
          Top = 73
          Width = 79
          Height = 15
          Caption = 'Data Entrada:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText27: TRLDBText
          Left = 536
          Top = 74
          Width = 81
          Height = 14
          AutoSize = False
          DataField = 'DTENTRADA'
          DataSource = fNotaEntrada.qsNotaEntradaImp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLSubDetail2: TRLSubDetail
        Left = 0
        Top = 143
        Width = 718
        Height = 18
        DataSource = Dm1.dsNotaEntradaIt
        BeforePrint = RLSubDetail5BeforePrint
        object RLBand2: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 17
          object RLDBText2: TRLDBText
            Left = 4
            Top = 2
            Width = 26
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'ITEM'
            DataSource = Dm1.dsNotaEntradaIt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText3: TRLDBText
            Left = 38
            Top = 2
            Width = 267
            Height = 14
            AutoSize = False
            DataField = 'NOME'
            DataSource = Dm1.dsNotaEntradaIt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText4: TRLDBText
            Left = 316
            Top = 2
            Width = 34
            Height = 14
            AutoSize = False
            DataField = 'TAMANHO'
            DataSource = Dm1.dsNotaEntradaIt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText10: TRLDBText
            Left = 372
            Top = 2
            Width = 42
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QTD'
            DataSource = Dm1.dsNotaEntradaIt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText11: TRLDBText
            Left = 425
            Top = 2
            Width = 56
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLRICMS'
            DataSource = Dm1.dsNotaEntradaIt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText12: TRLDBText
            Left = 498
            Top = 2
            Width = 56
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLRIPI'
            DataSource = Dm1.dsNotaEntradaIt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText13: TRLDBText
            Left = 566
            Top = 2
            Width = 70
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLRUNITARIO'
            DataSource = Dm1.dsNotaEntradaIt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText14: TRLDBText
            Left = 642
            Top = 2
            Width = 73
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLRTOTAL'
            DataSource = Dm1.dsNotaEntradaIt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object RLSubDetail5: TRLSubDetail
        Left = 0
        Top = 92
        Width = 718
        Height = 51
        DataSource = fNotaEntrada.qsNotaEntradaImp
        BeforePrint = RLSubDetail5BeforePrint
        object RLBand6: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 50
          object RLLabel13: TRLLabel
            Left = 264
            Top = 6
            Width = 155
            Height = 19
            Caption = 'Descri'#231#227'o dos Itens'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel14: TRLLabel
            Left = 3
            Top = 33
            Width = 28
            Height = 15
            Caption = 'Item'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel32: TRLLabel
            Left = 152
            Top = 33
            Width = 48
            Height = 15
            Caption = 'Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel33: TRLLabel
            Left = 306
            Top = 33
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
          object RLLabel34: TRLLabel
            Left = 386
            Top = 33
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
          object RLLabel35: TRLLabel
            Left = 449
            Top = 33
            Width = 32
            Height = 15
            Caption = 'ICMS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel36: TRLLabel
            Left = 529
            Top = 33
            Width = 17
            Height = 15
            Caption = 'IPI'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel37: TRLLabel
            Left = 574
            Top = 33
            Width = 61
            Height = 15
            Caption = 'Valor Unit.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel38: TRLLabel
            Left = 649
            Top = 33
            Width = 64
            Height = 15
            Caption = 'Valor Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object RLSubDetail6: TRLSubDetail
        Left = 0
        Top = 161
        Width = 718
        Height = 47
        DataSource = fNotaEntrada.qsNotaEntradaImp
        BeforePrint = RLSubDetail6BeforePrint
        object RLBand7: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 46
          object RLLabel39: TRLLabel
            Left = 264
            Top = 8
            Width = 185
            Height = 19
            Caption = 'Descri'#231#227'o dos Servi'#231'os'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel40: TRLLabel
            Left = 3
            Top = 28
            Width = 28
            Height = 15
            Caption = 'Item'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel41: TRLLabel
            Left = 114
            Top = 28
            Width = 131
            Height = 15
            Caption = 'Servi'#231'o (M'#227'o-de-Obra)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel42: TRLLabel
            Left = 329
            Top = 28
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
          object RLLabel43: TRLLabel
            Left = 398
            Top = 28
            Width = 48
            Height = 15
            Caption = '%ISSQN'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel44: TRLLabel
            Left = 472
            Top = 28
            Width = 72
            Height = 15
            Caption = 'Valor ISSQN'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel45: TRLLabel
            Left = 574
            Top = 28
            Width = 61
            Height = 15
            Caption = 'Valor Unit.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel46: TRLLabel
            Left = 649
            Top = 28
            Width = 64
            Height = 15
            Caption = 'Valor Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object RLSubDetail7: TRLSubDetail
        Left = 0
        Top = 208
        Width = 718
        Height = 19
        DataSource = Dm1.dsNotaEntradaMObra
        BeforePrint = RLSubDetail6BeforePrint
        object RLBand8: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 18
          object RLDBText28: TRLDBText
            Left = 4
            Top = 2
            Width = 26
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'ITEM'
            DataSource = Dm1.dsNotaEntradaMObra
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText29: TRLDBText
            Left = 38
            Top = 2
            Width = 267
            Height = 14
            AutoSize = False
            DataField = 'NOMEMOBRA'
            DataSource = Dm1.dsNotaEntradaMObra
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText30: TRLDBText
            Left = 315
            Top = 2
            Width = 42
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QTD'
            DataSource = Dm1.dsNotaEntradaMObra
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText31: TRLDBText
            Left = 390
            Top = 2
            Width = 56
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'ALIQISSQN'
            DataSource = Dm1.dsNotaEntradaMObra
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText32: TRLDBText
            Left = 485
            Top = 2
            Width = 56
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLRISSQN'
            DataSource = Dm1.dsNotaEntradaMObra
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText33: TRLDBText
            Left = 566
            Top = 2
            Width = 70
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLRUNITARIO'
            DataSource = Dm1.dsNotaEntradaMObra
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText34: TRLDBText
            Left = 642
            Top = 2
            Width = 73
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLRTOTAL'
            DataSource = Dm1.dsNotaEntradaMObra
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object RLSubDetail1: TRLSubDetail
        Left = 0
        Top = 227
        Width = 718
        Height = 48
        DataSource = fNotaEntrada.qsNotaEntradaImp
        BeforePrint = RLSubDetail1BeforePrint
        object RLBand1: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 46
          object RLLabel3: TRLLabel
            Left = 264
            Top = 8
            Width = 198
            Height = 19
            Caption = 'Descri'#231#227'o das Duplicatas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel4: TRLLabel
            Left = 3
            Top = 29
            Width = 47
            Height = 15
            Caption = 'Parcela'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel5: TRLLabel
            Left = 69
            Top = 29
            Width = 71
            Height = 15
            Caption = 'N'#186' Duplicata'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel6: TRLLabel
            Left = 467
            Top = 29
            Width = 117
            Height = 15
            Caption = 'Data de Vencimento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel7: TRLLabel
            Left = 606
            Top = 29
            Width = 104
            Height = 15
            Caption = 'Valor Vencimento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel8: TRLLabel
            Left = 278
            Top = 29
            Width = 39
            Height = 15
            Caption = 'Banco'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object RLSubDetail3: TRLSubDetail
        Left = 0
        Top = 275
        Width = 718
        Height = 18
        DataSource = Dm1.dsNotaEntradaParc
        BeforePrint = RLSubDetail1BeforePrint
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 17
          object RLDBText1: TRLDBText
            Left = 4
            Top = 1
            Width = 26
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'ITEM'
            DataSource = Dm1.dsNotaEntradaParc
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText5: TRLDBText
            Left = 48
            Top = 1
            Width = 75
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'NUMDUPLICATA'
            DataSource = Dm1.dsNotaEntradaParc
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText6: TRLDBText
            Left = 142
            Top = 1
            Width = 325
            Height = 14
            AutoSize = False
            DataField = 'NOMEBANCO'
            DataSource = Dm1.dsNotaEntradaParc
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText7: TRLDBText
            Left = 474
            Top = 1
            Width = 106
            Height = 14
            Alignment = taCenter
            AutoSize = False
            DataField = 'DTVENCIMENTO'
            DataSource = Dm1.dsNotaEntradaParc
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText8: TRLDBText
            Left = 604
            Top = 1
            Width = 107
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLRVENCIMENTO'
            DataSource = Dm1.dsNotaEntradaParc
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object RLSubDetail8: TRLSubDetail
        Left = 0
        Top = 293
        Width = 718
        Height = 5
        DataSource = fNotaEntrada.qsNotaEntradaImp
        object RLBand5: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 4
          object RLDraw1: TRLDraw
            Left = 394
            Top = 1
            Width = 321
            Height = 2
          end
        end
      end
      object RLSubDetail9: TRLSubDetail
        Left = 0
        Top = 298
        Width = 718
        Height = 24
        DataSource = fNotaEntrada.qsNotaEntradaImp
        BeforePrint = RLSubDetail5BeforePrint
        object RLBand9: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 23
          object RLLabel15: TRLLabel
            Left = 409
            Top = 2
            Width = 166
            Height = 19
            Caption = 'Valor Total dos Itens:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText9: TRLDBText
            Left = 579
            Top = 5
            Width = 135
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLRTOTALITENS'
            DataSource = fNotaEntrada.qsNotaEntradaImp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object RLSubDetail10: TRLSubDetail
        Left = 0
        Top = 322
        Width = 718
        Height = 24
        DataSource = fNotaEntrada.qsNotaEntradaImp
        BeforePrint = RLSubDetail6BeforePrint
        object RLBand10: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 23
          object RLLabel16: TRLLabel
            Left = 379
            Top = 2
            Width = 196
            Height = 19
            Caption = 'Valor Total dos Servi'#231'os:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText15: TRLDBText
            Left = 579
            Top = 5
            Width = 135
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLRTOTALMOBRAS'
            DataSource = fNotaEntrada.qsNotaEntradaImp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object RLSubDetail11: TRLSubDetail
        Left = 0
        Top = 346
        Width = 718
        Height = 24
        DataSource = fNotaEntrada.qsNotaEntradaImp
        object RLBand11: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 23
          object RLLabel17: TRLLabel
            Left = 483
            Top = 2
            Width = 92
            Height = 19
            Caption = 'Valor Total:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText16: TRLDBText
            Left = 579
            Top = 5
            Width = 135
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLRTOTAL'
            DataSource = fNotaEntrada.qsNotaEntradaImp
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
end
