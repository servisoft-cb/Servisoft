object fContasReceberClienteRel: TfContasReceberClienteRel
  Left = 5
  Top = 104
  Width = 782
  Height = 449
  HorzScrollBar.Position = 17
  Caption = 'fContasReceberClienteRel'
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
  object RLReport1: TRLReport
    Left = -15
    Top = 2
    Width = 794
    Height = 1123
    DataSource = fContasReceberCliente.dsClienteTotal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 77
      BandType = btHeader
      object RLDraw9: TRLDraw
        Left = 614
        Top = 56
        Width = 104
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
        Left = 299
        Top = 29
        Width = 180
        Height = 19
        Caption = 'Acumulado de Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 293
        Top = 56
        Width = 87
        Height = 20
      end
      object RLLabel4: TRLLabel
        Left = 303
        Top = 59
        Width = 67
        Height = 15
        Caption = 'Saldo Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw2: TRLDraw
        Left = 489
        Top = 56
        Width = 126
        Height = 20
      end
      object RLLabel5: TRLLabel
        Left = 508
        Top = 59
        Width = 89
        Height = 15
        Caption = 'Saldo a Vencer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw5: TRLDraw
        Left = 0
        Top = 56
        Width = 294
        Height = 20
      end
      object RLLabel8: TRLLabel
        Left = 93
        Top = 59
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
      object RLDraw7: TRLDraw
        Left = 379
        Top = 56
        Width = 111
        Height = 20
      end
      object RLLabel10: TRLLabel
        Left = 389
        Top = 59
        Width = 91
        Height = 15
        Caption = 'Saldo Vencidas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 633
        Top = 59
        Width = 66
        Height = 15
        Caption = 'Saldo Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 115
      Width = 718
      Height = 968
      DataSource = fContasReceberCliente.dsClienteTotal
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 19
        BeforePrint = RLBand2BeforePrint
        object RLDBText2: TRLDBText
          Left = 3
          Top = 1
          Width = 290
          Height = 15
          AutoSize = False
          DataField = 'Cliente'
          DataSource = fContasReceberCliente.dsClienteTotal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 296
          Top = 1
          Width = 83
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'SaldoPago'
          DataSource = fContasReceberCliente.dsClienteTotal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 382
          Top = 1
          Width = 106
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'SaldoVencidas'
          DataSource = fContasReceberCliente.dsClienteTotal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 496
          Top = 1
          Width = 117
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'SaldoVencer'
          DataSource = fContasReceberCliente.dsClienteTotal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 618
          Top = 1
          Width = 96
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'SaldoTotal'
          DataSource = fContasReceberCliente.dsClienteTotal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 19
        Width = 718
        Height = 26
        BandType = btSummary
        BeforePrint = RLBand3BeforePrint
        object RLLabel6: TRLLabel
          Left = 208
          Top = 5
          Width = 57
          Height = 19
          Caption = 'Totais:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw3: TRLDraw
          Left = 176
          Top = 2
          Width = 541
          Height = 2
        end
        object RLLabel7: TRLLabel
          Left = 295
          Top = 5
          Width = 85
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 388
          Top = 5
          Width = 101
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 497
          Top = 5
          Width = 117
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel13: TRLLabel
          Left = 621
          Top = 5
          Width = 93
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
end
