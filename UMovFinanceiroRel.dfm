object fMovFinanceiroRel: TfMovFinanceiroRel
  Left = 7
  Top = 110
  Width = 784
  Height = 449
  BorderIcons = [biMaximize]
  Caption = 'Relat'#243'rio do Movimento Financeiro'
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
    DataSource = DmCons.qsMovFinanceiro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 97
      BandType = btHeader
      BeforePrint = RLBand1BeforePrint
      object RLDraw3: TRLDraw
        Left = 620
        Top = 57
        Width = 97
        Height = 20
      end
      object RLDBText1: TRLDBText
        Left = 3
        Top = 2
        Width = 518
        Height = 11
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
      object RLSystemInfo1: TRLSystemInfo
        Left = 616
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
        Left = 616
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
        Left = 586
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
        Left = 586
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
        Left = 128
        Top = 15
        Width = 433
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Movimento Financeiro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 57
        Width = 63
        Height = 20
      end
      object RLLabel4: TRLLabel
        Left = 27
        Top = 60
        Width = 26
        Height = 14
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw2: TRLDraw
        Left = 532
        Top = 57
        Width = 89
        Height = 20
      end
      object RLLabel5: TRLLabel
        Left = 558
        Top = 60
        Width = 54
        Height = 14
        Caption = 'Vlr. Sa'#237'da'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw4: TRLDraw
        Left = 62
        Top = 57
        Width = 383
        Height = 20
      end
      object RLLabel7: TRLLabel
        Left = 226
        Top = 60
        Width = 52
        Height = 14
        Caption = 'Hist'#243'rico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw5: TRLDraw
        Left = 444
        Top = 57
        Width = 89
        Height = 20
      end
      object RLLabel8: TRLLabel
        Left = 464
        Top = 60
        Width = 66
        Height = 14
        Caption = 'Vlr. Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 338
        Top = 34
        Width = 42
        Height = 16
        Alignment = taCenter
        Caption = 'Conta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 493
        Top = 80
        Width = 74
        Height = 15
        Caption = 'Saldo Inicial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 569
        Top = 77
        Width = 136
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 646
        Top = 60
        Width = 33
        Height = 14
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 5
        Top = 40
        Width = 220
        Height = 14
        AutoSize = False
        Caption = 'Conta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 135
      Width = 718
      Height = 19
      BeforePrint = RLBand2BeforePrint
      object RLDBText2: TRLDBText
        Left = 1
        Top = 1
        Width = 60
        Height = 14
        Alignment = taCenter
        AutoSize = False
        DataField = 'DTMOVIMENTO'
        DataSource = DmCons.qsMovFinanceiro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = 65
        Top = 1
        Width = 381
        Height = 14
        AutoSize = False
        DataField = 'HISTORICO'
        DataSource = DmCons.qsMovFinanceiro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText5: TRLDBText
        Left = 449
        Top = 1
        Width = 80
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VLRENTRADA'
        DataSource = DmCons.qsMovFinanceiro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 535
        Top = 1
        Width = 84
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VLRSAIDA'
        DataSource = DmCons.qsMovFinanceiro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw7: TRLDraw
        Left = 2
        Top = 15
        Width = 714
        Height = 3
        DrawKind = dkLine
        HoldStyle = hsHorizontally
      end
      object RLLabel20: TRLLabel
        Left = 623
        Top = 1
        Width = 91
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 154
      Width = 718
      Height = 48
      BandType = btSummary
      BeforePrint = RLBand3BeforePrint
      object RLLabel11: TRLLabel
        Left = 273
        Top = 8
        Width = 105
        Height = 15
        Caption = 'Total de Entradas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 285
        Top = 28
        Width = 93
        Height = 15
        Caption = 'Total de Sa'#237'das:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 508
        Top = 8
        Width = 102
        Height = 15
        Caption = 'Saldo do Per'#237'odo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 572
        Top = 28
        Width = 38
        Height = 15
        Caption = 'Saldo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 615
        Top = 5
        Width = 100
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel17: TRLLabel
        Left = 615
        Top = 25
        Width = 100
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 384
        Top = 5
        Width = 100
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel19: TRLLabel
        Left = 384
        Top = 25
        Width = 100
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw6: TRLDraw
        Left = 280
        Top = 1
        Width = 433
        Height = 2
      end
    end
  end
end
