object fRelRecibo3: TfRelRecibo3
  Left = 214
  Top = 22
  Width = 838
  Height = 722
  Caption = 'fRelRecibo3'
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
    Left = 0
    Top = 8
    Width = 794
    Height = 1123
    DataSource = Dm1.dsMovFinanceiro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.TopMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    Margins.BottomMargin = 7.000000000000000000
    ShowProgress = False
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 26
      Width = 742
      Height = 391
      DataSource = Dm1.dsMovFinanceiro
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 742
        Height = 345
        BeforePrint = RLBand1BeforePrint
        object RLDraw2: TRLDraw
          Left = 650
          Top = 0
          Width = 92
          Height = 40
        end
        object RLDraw1: TRLDraw
          Left = 0
          Top = 0
          Width = 651
          Height = 74
        end
        object RLImage1: TRLImage
          Left = 4
          Top = 3
          Width = 132
          Height = 68
          Stretch = True
        end
        object RLLabel1: TRLLabel
          Left = 138
          Top = 2
          Width = 48
          Height = 14
          Caption = 'Empresa:'
        end
        object RLLabel2: TRLLabel
          Left = 665
          Top = 3
          Width = 51
          Height = 14
          Caption = 'N'#186' Recibo'
        end
        object RLDBText3: TRLDBText
          Left = 187
          Top = 2
          Width = 333
          Height = 14
          AutoSize = False
          DataField = 'FANTASIA'
          DataSource = Dm1.dsEmpresa
        end
        object RLLabel3: TRLLabel
          Left = 162
          Top = 16
          Width = 24
          Height = 14
          Caption = 'End:'
        end
        object RLDBText4: TRLDBText
          Left = 187
          Top = 16
          Width = 333
          Height = 14
          AutoSize = False
          DataField = 'ENDERECO'
          DataSource = Dm1.dsEmpresa
        end
        object RLLabel4: TRLLabel
          Left = 187
          Top = 30
          Width = 333
          Height = 14
          AutoSize = False
          Caption = 'End:'
        end
        object RLLabel5: TRLLabel
          Left = 187
          Top = 44
          Width = 333
          Height = 14
          AutoSize = False
          Caption = 'End:'
        end
        object RLDraw3: TRLDraw
          Left = 650
          Top = 39
          Width = 92
          Height = 35
        end
        object RLLabel6: TRLLabel
          Left = 657
          Top = 42
          Width = 68
          Height = 14
          Caption = 'Data Emiss'#227'o'
        end
        object RLDBText1: TRLDBText
          Left = 657
          Top = 58
          Width = 80
          Height = 14
          Alignment = taCenter
          AutoSize = False
          DataField = 'DTMOVIMENTO'
          DataSource = Dm1.dsMovFinanceiro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 162
          Top = 58
          Width = 31
          Height = 14
          Caption = 'CNPJ:'
        end
        object RLDBText5: TRLDBText
          Left = 195
          Top = 58
          Width = 67
          Height = 14
          DataField = 'DOCUMENTO'
          DataSource = Dm1.dsEmpresa
        end
        object RLLabel7: TRLLabel
          Left = 350
          Top = 58
          Width = 30
          Height = 14
          Caption = 'Fone:'
        end
        object RLDBText6: TRLDBText
          Left = 382
          Top = 58
          Width = 30
          Height = 14
          DataField = 'FONE'
          DataSource = Dm1.dsEmpresa
        end
        object RLDraw4: TRLDraw
          Left = 650
          Top = 73
          Width = 92
          Height = 36
        end
        object RLLabel9: TRLLabel
          Left = 681
          Top = 76
          Width = 29
          Height = 14
          Caption = 'Valor'
        end
        object RLLabel10: TRLLabel
          Left = 9
          Top = 183
          Width = 87
          Height = 14
          Alignment = taRightJustify
          Caption = 'Recibi (emos) de:'
        end
        object RLDBText8: TRLDBText
          Left = 97
          Top = 183
          Width = 74
          Height = 14
          DataField = 'NOMEPESSOA'
          DataSource = Dm1.dsMovFinanceiro
        end
        object RLLabel15: TRLLabel
          Left = 26
          Top = 86
          Width = 80
          Height = 14
          Alignment = taRightJustify
          Caption = 'Valor Recebido:'
        end
        object RLMemo1: TRLMemo
          Left = 109
          Top = 76
          Width = 532
          Height = 31
          AutoSize = False
        end
        object RLDraw5: TRLDraw
          Left = 1
          Top = 108
          Width = 651
          Height = 1
          DrawKind = dkLine
        end
        object RLDraw6: TRLDraw
          Left = 72
          Top = 300
          Width = 369
          Height = 1
          DrawKind = dkLine
        end
        object RLLabel18: TRLLabel
          Left = 552
          Top = 265
          Width = 54
          Height = 14
          Alignment = taRightJustify
        end
        object RLDraw7: TRLDraw
          Left = 0
          Top = 329
          Width = 738
          Height = 5
          Pen.Style = psDot
        end
        object RLDraw10: TRLDraw
          Left = 0
          Top = 172
          Width = 742
          Height = 5
          DrawKind = dkLine
        end
        object RLLabel19: TRLLabel
          Left = 22
          Top = 134
          Width = 63
          Height = 14
          Caption = 'Referente a:'
        end
        object RLMemo2: TRLMemo
          Left = 91
          Top = 114
          Width = 550
          Height = 48
          AutoSize = False
        end
        object RLLabel20: TRLLabel
          Left = 653
          Top = 21
          Width = 86
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'N'#186' Recibo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 72
          Top = 305
          Width = 369
          Height = 14
          Alignment = taCenter
          AutoSize = False
        end
        object RLLabel11: TRLLabel
          Left = 654
          Top = 92
          Width = 86
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Valor'
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
  object ValorPorExtenso2: TValorPorExtenso
    MoedaNoSingular = 'Real'
    MoedaNoPlural = 'Reais'
    TipoDoTexto = ttMaiuscula
    Genero = gMasculino
    Left = 80
    Top = 8
  end
end
