object fPedidoRelPermanente: TfPedidoRelPermanente
  Left = -24
  Top = 16
  Width = 812
  Height = 602
  VertScrollBar.Position = 357
  BorderIcons = [biSystemMenu]
  Caption = 'Impress'#227'o do Pedido'
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
    Left = 2
    Top = -355
    Width = 794
    Height = 1123
    DataSource = Dm1.dsPedido
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ShowProgress = False
    object RLSubDetail2: TRLSubDetail
      Left = 38
      Top = 38
      Width = 718
      Height = 1047
      DataSource = Dm1.dsPedido
      object RLSubDetail1: TRLSubDetail
        Left = 0
        Top = 350
        Width = 718
        Height = 222
        DataSource = Dm1.dsPedidoServicoPermanente
        object RLBand2: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 9
        end
        object RLDetailGrid1: TRLDetailGrid
          Left = 0
          Top = 9
          Width = 718
          Height = 209
          ColCount = 2
          object RLDraw3: TRLDraw
            Left = 4
            Top = 2
            Width = 352
            Height = 201
          end
          object RLDraw22: TRLDraw
            Left = 10
            Top = 127
            Width = 190
            Height = 18
          end
          object RLDraw18: TRLDraw
            Left = 10
            Top = 93
            Width = 190
            Height = 18
          end
          object RLDraw21: TRLDraw
            Left = 10
            Top = 110
            Width = 190
            Height = 18
          end
          object RLDraw20: TRLDraw
            Left = 10
            Top = 76
            Width = 190
            Height = 18
          end
          object RLDraw19: TRLDraw
            Left = 10
            Top = 43
            Width = 190
            Height = 18
          end
          object RLDraw17: TRLDraw
            Left = 10
            Top = 60
            Width = 190
            Height = 18
          end
          object RLDraw16: TRLDraw
            Left = 10
            Top = 26
            Width = 190
            Height = 18
          end
          object RLLabel19: TRLLabel
            Left = 14
            Top = 5
            Width = 61
            Height = 18
            Caption = 'Servi'#231'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel20: TRLLabel
            Left = 15
            Top = 28
            Width = 56
            Height = 15
            Caption = 'Segunda:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText17: TRLDBText
            Left = 77
            Top = 7
            Width = 276
            Height = 17
            AutoSize = False
            DataField = 'SERVICO'
            DataSource = Dm1.dsPedidoServicoPermanente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText18: TRLDBText
            Left = 75
            Top = 28
            Width = 60
            Height = 14
            AutoSize = False
            DataField = 'SEG_HR_INI'
            DataSource = Dm1.dsPedidoServicoPermanente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText23: TRLDBText
            Left = 137
            Top = 28
            Width = 58
            Height = 14
            AutoSize = False
            DataField = 'SEG_HR_FIM'
            DataSource = Dm1.dsPedidoServicoPermanente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel31: TRLLabel
            Left = 10
            Top = 158
            Width = 74
            Height = 16
            Caption = 'Quantidade:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel33: TRLLabel
            Left = 42
            Top = 177
            Width = 42
            Height = 16
            Caption = 'Valor:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText30: TRLDBText
            Left = 88
            Top = 158
            Width = 22
            Height = 16
            AutoSize = False
            DataField = 'QTD'
            DataSource = Dm1.dsPedidoServicoPermanente
          end
          object RLDBText32: TRLDBText
            Left = 88
            Top = 177
            Width = 77
            Height = 16
            Alignment = taJustify
            AutoSize = False
            DataField = 'VLR'
            DataSource = Dm1.dsPedidoServicoPermanente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel21: TRLLabel
            Left = 34
            Top = 44
            Width = 37
            Height = 15
            Alignment = taRightJustify
            Caption = 'Ter'#231'a:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText19: TRLDBText
            Left = 74
            Top = 46
            Width = 60
            Height = 14
            AutoSize = False
            DataField = 'TER_HR_INI'
            DataSource = Dm1.dsPedidoServicoPermanente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText20: TRLDBText
            Left = 136
            Top = 46
            Width = 58
            Height = 14
            AutoSize = False
            DataField = 'TER_HR_FIM'
            DataSource = Dm1.dsPedidoServicoPermanente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel24: TRLLabel
            Left = 28
            Top = 61
            Width = 43
            Height = 15
            Alignment = taRightJustify
            Caption = 'Quarta:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText21: TRLDBText
            Left = 74
            Top = 63
            Width = 60
            Height = 14
            AutoSize = False
            DataField = 'QUA_HR_INI'
            DataSource = Dm1.dsPedidoServicoPermanente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText22: TRLDBText
            Left = 136
            Top = 63
            Width = 58
            Height = 14
            AutoSize = False
            DataField = 'QUA_HR_FIM'
            DataSource = Dm1.dsPedidoServicoPermanente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel25: TRLLabel
            Left = 29
            Top = 78
            Width = 42
            Height = 15
            Alignment = taRightJustify
            Caption = 'Quinta:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText24: TRLDBText
            Left = 74
            Top = 80
            Width = 60
            Height = 14
            AutoSize = False
            DataField = 'QUI_HR_INI'
            DataSource = Dm1.dsPedidoServicoPermanente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText25: TRLDBText
            Left = 136
            Top = 80
            Width = 58
            Height = 14
            AutoSize = False
            DataField = 'QUI_HR_FIM'
            DataSource = Dm1.dsPedidoServicoPermanente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel26: TRLLabel
            Left = 35
            Top = 94
            Width = 36
            Height = 15
            Alignment = taRightJustify
            Caption = 'Sexta:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText26: TRLDBText
            Left = 74
            Top = 96
            Width = 60
            Height = 14
            AutoSize = False
            DataField = 'SEX_HR_INI'
            DataSource = Dm1.dsPedidoServicoPermanente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText27: TRLDBText
            Left = 136
            Top = 96
            Width = 58
            Height = 14
            AutoSize = False
            DataField = 'SEX_HR_FIM'
            DataSource = Dm1.dsPedidoServicoPermanente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel27: TRLLabel
            Left = 22
            Top = 111
            Width = 49
            Height = 15
            Alignment = taRightJustify
            Caption = 'S'#225'bado:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText28: TRLDBText
            Left = 74
            Top = 113
            Width = 60
            Height = 14
            AutoSize = False
            DataField = 'SAB_HR_INI'
            DataSource = Dm1.dsPedidoServicoPermanente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText29: TRLDBText
            Left = 136
            Top = 113
            Width = 58
            Height = 14
            AutoSize = False
            DataField = 'SAB_HR_FIM'
            DataSource = Dm1.dsPedidoServicoPermanente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel28: TRLLabel
            Left = 14
            Top = 128
            Width = 57
            Height = 15
            Alignment = taRightJustify
            Caption = 'Domingo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText33: TRLDBText
            Left = 74
            Top = 130
            Width = 60
            Height = 14
            AutoSize = False
            DataField = 'DOM_HR_INI'
            DataSource = Dm1.dsPedidoServicoPermanente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText34: TRLDBText
            Left = 136
            Top = 130
            Width = 58
            Height = 14
            AutoSize = False
            DataField = 'DOM_HR_FIM'
            DataSource = Dm1.dsPedidoServicoPermanente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel38: TRLLabel
            Left = 111
            Top = 158
            Width = 95
            Height = 16
            Caption = '(rondas, efetivo)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object RLSubDetail3: TRLSubDetail
        Left = 0
        Top = 572
        Width = 718
        Height = 166
        DataSource = Dm1.dsPedido
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 121
          object RLDraw25: TRLDraw
            Left = 8
            Top = 98
            Width = 370
            Height = 19
          end
          object RLDraw27: TRLDraw
            Left = 184
            Top = 61
            Width = 194
            Height = 19
          end
          object RLDraw26: TRLDraw
            Left = 8
            Top = 61
            Width = 174
            Height = 19
          end
          object RLDraw24: TRLDraw
            Left = 8
            Top = 25
            Width = 370
            Height = 19
          end
          object RLLabel14: TRLLabel
            Left = 9
            Top = 10
            Width = 141
            Height = 15
            Caption = 'Condi'#231#227'o de Pagamento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText2: TRLDBText
            Left = 9
            Top = 27
            Width = 362
            Height = 14
            AutoSize = False
            DataField = 'CONDPGTO'
            DataSource = Dm1.dsPedido
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText3: TRLDBText
            Left = 9
            Top = 63
            Width = 128
            Height = 14
            AutoSize = False
            DataField = 'QTDDIASVALIDADE'
            DataSource = Dm1.dsPedido
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel15: TRLLabel
            Left = 9
            Top = 46
            Width = 124
            Height = 15
            Caption = 'Validade da Proposta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel16: TRLLabel
            Left = 193
            Top = 46
            Width = 147
            Height = 15
            Caption = 'Melhor dia de Pagamento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText4: TRLDBText
            Left = 193
            Top = 63
            Width = 176
            Height = 14
            AutoSize = False
            DataField = 'MELHOR_VCTO'
            DataSource = Dm1.dsPedido
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel18: TRLLabel
            Left = 9
            Top = 82
            Width = 124
            Height = 15
            Caption = 'Forma de Pagamento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText15: TRLDBText
            Left = 9
            Top = 101
            Width = 192
            Height = 14
            AutoSize = False
            DataField = 'FORMA_PGTO'
            DataSource = Dm1.dsPedido
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel32: TRLLabel
            Left = 520
            Top = 82
            Width = 148
            Height = 15
            Caption = 'Valor Total do Or'#231'amento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText31: TRLDBText
            Left = 520
            Top = 99
            Width = 151
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLRTOTAL'
            DataSource = Dm1.dsPedido
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand6: TRLBand
          Left = 0
          Top = 121
          Width = 718
          Height = 20
          object RLDraw23: TRLDraw
            Left = 0
            Top = 0
            Width = 718
            Height = 2
            Align = faTop
            DrawKind = dkLine
          end
          object RLLabel39: TRLLabel
            Left = 7
            Top = 3
            Width = 31
            Height = 14
            Caption = 'Obs.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBMemo2: TRLDBMemo
            Left = 45
            Top = 3
            Width = 660
            Height = 14
            DataField = 'OBSERVACAO'
            DataSource = Dm1.dsPedido
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object RLSubDetail4: TRLSubDetail
        Left = 0
        Top = 738
        Width = 718
        Height = 45
        DataSource = Dm1.dsPedido_Clausula
        Positioning = btSummary
        object RLBand4: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 43
          object RLDBMemo1: TRLDBMemo
            Left = 8
            Top = 22
            Width = 705
            Height = 16
            DataField = 'DESCRICAO'
            DataSource = Dm1.dsPedido_Clausula
          end
          object RLLabel22: TRLLabel
            Left = 8
            Top = 2
            Width = 80
            Height = 19
            Caption = 'Cl'#225'usulas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 783
        Width = 718
        Height = 63
        BandType = btFooter
        object RLLabel23: TRLLabel
          Left = 17
          Top = 28
          Width = 223
          Height = 15
          Caption = '-------------------------------------------------------'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText16: TRLDBText
          Left = 17
          Top = 44
          Width = 216
          Height = 13
          Alignment = taCenter
          AutoSize = False
          DataField = 'NOME'
          DataSource = Dm1.dsEmpresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel30: TRLLabel
          Left = 470
          Top = 43
          Width = 123
          Height = 14
          Caption = 'Aprova'#231#227'o do Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel29: TRLLabel
          Left = 417
          Top = 28
          Width = 223
          Height = 15
          Caption = '-------------------------------------------------------'
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
        Top = 0
        Width = 718
        Height = 350
        BeforePrint = RLBand1BeforePrint
        object RLDraw10: TRLDraw
          Left = 229
          Top = 297
          Width = 231
          Height = 16
        end
        object RLDraw14: TRLDraw
          Left = 464
          Top = 327
          Width = 250
          Height = 16
        end
        object RLDraw13: TRLDraw
          Left = 464
          Top = 297
          Width = 250
          Height = 16
        end
        object RLDraw12: TRLDraw
          Left = 464
          Top = 267
          Width = 250
          Height = 16
        end
        object RLDraw15: TRLDraw
          Left = 464
          Top = 236
          Width = 250
          Height = 16
        end
        object RLDraw11: TRLDraw
          Left = 229
          Top = 327
          Width = 231
          Height = 16
        end
        object RLDraw9: TRLDraw
          Left = 229
          Top = 267
          Width = 231
          Height = 16
        end
        object RLDraw8: TRLDraw
          Left = 229
          Top = 236
          Width = 231
          Height = 16
        end
        object RLDraw7: TRLDraw
          Left = 5
          Top = 327
          Width = 222
          Height = 16
        end
        object RLDraw6: TRLDraw
          Left = 5
          Top = 297
          Width = 222
          Height = 16
        end
        object RLDraw5: TRLDraw
          Left = 5
          Top = 267
          Width = 222
          Height = 16
        end
        object RLDraw4: TRLDraw
          Left = 5
          Top = 236
          Width = 222
          Height = 16
        end
        object RLDraw2: TRLDraw
          Left = 5
          Top = 207
          Width = 708
          Height = 16
        end
        object RLDraw1: TRLDraw
          Left = 5
          Top = 167
          Width = 708
          Height = 24
        end
        object RLLabel3: TRLLabel
          Left = 321
          Top = 116
          Width = 52
          Height = 11
          Alignment = taCenter
          Caption = 'N'#186' Pedido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 11
          Top = 194
          Width = 43
          Height = 11
          Caption = 'CLIENTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 10
          Top = 208
          Width = 694
          Height = 13
          AutoSize = False
          DataField = 'CLIENTE_NOME'
          DataSource = Dm1.dsPedido
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 10
          Top = 224
          Width = 52
          Height = 11
          Caption = 'CGC/CNPJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 10
          Top = 237
          Width = 193
          Height = 14
          AutoSize = False
          DataField = 'DOCUMENTO'
          DataSource = Dm1.dsPessoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 231
          Top = 224
          Width = 86
          Height = 11
          Caption = 'INSCR. ESTADUAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 231
          Top = 237
          Width = 85
          Height = 14
          AutoSize = False
          DataField = 'INSCESTADUAL'
          DataSource = Dm1.dsPessoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 10
          Top = 254
          Width = 55
          Height = 11
          Caption = 'ENDERE'#199'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 10
          Top = 268
          Width = 205
          Height = 14
          AutoSize = False
          DataField = 'ENDERECO'
          DataSource = Dm1.dsPedido
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 231
          Top = 314
          Width = 25
          Height = 11
          Caption = 'CEL.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 231
          Top = 328
          Width = 161
          Height = 14
          AutoSize = False
          DataField = 'BAIRRO'
          DataSource = Dm1.dsPessoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 10
          Top = 284
          Width = 38
          Height = 11
          Caption = 'CIDADE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 10
          Top = 298
          Width = 213
          Height = 14
          AutoSize = False
          DataField = 'NOME'
          DataSource = Dm1.dsCidade
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 231
          Top = 284
          Width = 25
          Height = 11
          Caption = 'CEP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 231
          Top = 298
          Width = 97
          Height = 14
          AutoSize = False
          DataField = 'CEP'
          DataSource = Dm1.dsPessoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText12: TRLDBText
          Left = 10
          Top = 328
          Width = 119
          Height = 14
          AutoSize = False
          DataField = 'FONE'
          DataSource = Dm1.dsPessoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 10
          Top = 314
          Width = 29
          Height = 11
          Caption = 'FONE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 467
          Top = 314
          Width = 20
          Height = 11
          Caption = 'FAX'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText13: TRLDBText
          Left = 467
          Top = 328
          Width = 125
          Height = 14
          AutoSize = False
          DataField = 'FAX'
          DataSource = Dm1.dsPessoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel13: TRLLabel
          Left = 467
          Top = 284
          Width = 19
          Height = 11
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText14: TRLDBText
          Left = 467
          Top = 298
          Width = 26
          Height = 14
          AutoSize = False
          DataField = 'ESTADO'
          DataSource = Dm1.dsPessoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLImage1: TRLImage
          Left = 302
          Top = 7
          Width = 104
          Height = 82
          Picture.Data = {
            0A544A504547496D616765A5130000FFD8FFE000104A46494600010101006000
            600000FFE1001645786966000049492A0008000000000000000000FFDB004300
            080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A
            1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432
            FFDB0043010909090C0B0C180D0D1832211C2132323232323232323232323232
            3232323232323232323232323232323232323232323232323232323232323232
            3232323232FFC0001108006A006F03012200021101031101FFC4001F00000105
            01010101010100000000000000000102030405060708090A0BFFC400B5100002
            010303020403050504040000017D010203000411051221314106135161072271
            14328191A1082342B1C11552D1F02433627282090A161718191A25262728292A
            3435363738393A434445464748494A535455565758595A636465666768696A73
            7475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9
            AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4
            E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F010003010101010101010101
            0000000000000102030405060708090A0BFFC400B51100020102040403040705
            040400010277000102031104052131061241510761711322328108144291A1B1
            C109233352F0156272D10A162434E125F11718191A262728292A35363738393A
            434445464748494A535455565758595A636465666768696A737475767778797A
            82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6
            B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2
            F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA28A2800A6B743FE1
            514F22C10C92C922C71A0DCCEC70147726BC3BC77F1A5CC9269DE1760AAA4AC9
            7EDD58FF00D331823FE04467D05007ACEBDE2DD0FC35086D5B528ADD986563FB
            D237D100271F8579AEAFF1FEC2262BA468D3DC7FD34B9904431ECA0313F8E2BC
            B348F0A6B3E2A8E5D525BDB6861691A3FB4DFCE54CD2050DB4632CCD81D31FE1
            5D47837C2BA0CDE10BCD62FED6292FECAF7C99D2FA69522894E3690912EE624B
            280BDCFA0C531134DF1EFC4F213E569FA544BFC20C52311F8EFC7E18A48BE3E7
            8A53FD6D96932A8EB88A407F47A4F096830436BE2C9ADF48B6BED5ED6488D95B
            DC58B305859CE64481F93F29C8072471C9CF3B23C29A7CBF14AC45FDA69F2DBB
            696F7925ADBD9B40B2100AF31162779C83C7A038EA4805AD33F681B69182EABA
            2CB12E4664B494483EBB580FE75E8FE1DF1A683E265DBA5EA914D2819685F292
            0FAAB738FCFEB5F3E5F784628FC09A45E7D8671AF6ADA93C50C44B2E21E57017
            FDEC1EDF787B556F11F80755F0A09AF2DEFEDEF21B2745B89ED25C3DAC87180E
            3395E4E33F4A00FAC4734B5F3EF817E355DD8C91E9FE2866B8B42005BD03F791
            FF00BFFDE1DB3D7EB5EF36D7315DDB457104A92C52A87474390C0F42290CB346
            29067BD2D00151B13C8ED4F3D0D79AFC62F16BF873C31F64B593CBBFD4731230
            3CC698F9D87BF2ABFF0002A00F3CF8AFF11E4D6AF25D0348931A744DB6E25493
            1F6961D547FB00FE7D7BD739A87C3DBFD37C3FF6C9D9C5FAC62E2E6D8A80B042
            C70BBDC91FBC62384504E01359BA378335BD7344BAD574AB65B98AD650924114
            80CC38ECBD48E838E7A8E715DCC9E33D5B42F04690BE23B182FAFCFF00A4E92F
            70E77C3B7E4124C98E48C92A7939E4F2334C473DE0AF1ABF8660BED3B50D4358
            B6B4725D22D3D612CB2F00E7CD5247DDC7CBCFB66B4ED7C4DE38F13F88F55BEF
            0959DC40BA818D251022B2A841B57748C0286EA49079CFA62B5FC0BF0C66F10C
            83C4BE2C699E2BA632A427E579F71CEE723A21E4E0119F6E01EBB5DF89DA2F86
            62FECBD0ED92E24801411C385823F6C8EBF867EBD6A253515A9B51C3D4AD2E58
            2B9C337C2AF1D5C4D26B5A96B50417614BBCD25DC924AA00FEF283C0F4150DAF
            C27F182AC1AF691AC5A4F2C804F0CF1CF2472B023839651D41C633DE99AA7C52
            F13EA2AE9F6882DA361CA4510208F4CB66A3D23E24F89345B686D62BA8A5B7B7
            4589239A1180ABC019183FCEB3F6EAE7A3FD8F5B9775720BEBFF001AF84FC4F6
            5AEF89F4F9EFA5B406381EF33244A4823E565F94360F4EA4F3DAB706B537C44D
            134AD157C49058C9E5E35A7BCD88D2B2BAF9654E017E490064738CFA1EAB40F8
            B5A5EB4A2C75EB58ED8CDFBB25C0681F3D893D3E8723DEB07E21FC2383ECF2EB
            5E154202AEF9AC412415FEF467F52BCFB63A1D6328C96879D5A854A2ED3472BF
            117C21A1F84F49D27EC22FA3BE99E55945D60348A871BCA8CEDC9E9EA307B54F
            F0B7E21CBE13D423D2754727489DC03BFADB37F7BD864FCC3F1EC73A3E09D734
            EF15F88F4C3AE69D25FEB51797696916DDB6F14080B19586396037718DB923A6
            41195F163465B5D7EE3529EFAC85EDE4E7FE25B00CB43085C233B0E03300091D
            FB138AA313E98858322956DCA46430E41F7CF7CD4F5E4BF04FC5EDAC68726897
            72EEBAD3D418598F2F09381FF7CE40FC457AC8E452188C48EFDEBE59F8A3AB4B
            E26F891756F0BE56090584009C0CA9DADCFBBB37E42BEA0BB9D6D6CE6B87FB91
            2348DF40326BE51F00E976BE26F1D449AC012D9BACD71745E4299010B6E24118
            E71CE7B5303D127F0049A06AF6B7BA4CF77A42C6429D42021E3FB3C506E92790
            7232EE00DA48CE0F1DEB07C13A6DDFC4DF1F4DAD6BCDE7DB590479415DA18824
            24607400904903AE3D49ACDD674DD77C2DE19B85B3F1769F7FA25C916F25B59D
            E19060E4F0841C0C0C120F39AF4BF865043E1BF84ADAAB28DF3096F64F521721
            573DF841F893EF49BB1518F368677C56F1CC91C8FE1FD36428028FB5C8870704
            64463D323A9FC2B1BC0FF0CA4D7628F52D5DDE2B27C18E2538797DCFA03D7D4D
            6078434A9BC5FE35823BB76912591AE6E9BD4677107D89C0FC6BE94548EDAD82
            AED5545E99000C573423ED25CD2D8F671353EA54D51A5F175399BDF0DE83A368
            377F65D3ED2DB10BE1F62862769EAC79279F7ACFD034BF0DEA5E0DD212FE2D3E
            57FB143B83EDDC0EC1FF000206B88F8A9A9DB3DDADBC5FD9AF22A1DECC2D1E45
            CF38E7E61D73C7FF005EB88B3D135CBCD022D42DEC6CBEC5B389A586CD01DB9C
            FDEE58E41E7AF15BF2ABEC794EBD451B736A771E34F859F60B69751D01CCB6A8
            A4CB6CCDB881D72ADDFE879F7A5F85DE3892DAEE2D075291DEDE6602D6576CEC
            6ECA4FA13C7E38ACCF851E26D4ADBC5F6DA14D2C52585E0917C88C4616290296
            DCA10E013B707D8D51F88DA20F0F78C663684470CE05D4454708D93903D837F3
            158558FB36A513D6C2D5FADC1D0ACAEEDA334BE23F85EFBC35E34B3D73C3729B
            43A83B6D68C6DF2A720E57A746C9C7BEE1C568DEE99A2E85A8691A36ADE1EB79
            AD75250B79AEDF5C6E904E436F0AFC9560CB8EBE9EE4F4FE270BE32F82F2DEB2
            8FB42DAADE038FB9247CB7F271F8D79AFC3FD0B4BF177876F34DBF875A966B39
            44C82CEE54210E42E36BB6C0C32C49E38CF27A574A77573C59C5C64D339EF03E
            B4BE19F885637514DBED56E4C323F40D131D858E3D07CDF51ED5F5B8017D8741
            5F20F8DB40D3BC39E236D3B4DD485EC4B18666C8263724E50EDCAE540038F5F6
            AFAAFC3B7ADA9786F4ABE3CFDA6CE29B3FEF229FEA68243C4818F8635609F7FE
            C736DFAEC38AF8DED6F2EAD1DDED6E6780BC6D1B98DCAE5187CC091D41E057DA
            D73047756D2DBC832B2A3237D08C1AF8A27864B3B892095712C4E5187A30E0FE
            A281093DB4F69204B986581B687DB22ED3B4F7C11F5C57BCCABAF37C22B336CF
            61FD97FD969E606593CE2768DD839C75CF6AF1DF11F89757F175E25EEA8C2496
            DE010EE8A2DA1141EA40E01DC7F5F615EE3F0BE78BC4DF0ADF4895B1241E759C
            A07656C9538FA371F434A6AE99B509A854527B5CE17E178D4FFE12798690F669
            73F656E6E958A94DEB9C05239CE2BD6A61E388E27DF3E86CA4FF00041704FF00
            E3AD9AF15F0B6A73783FC6B0497AA63104AD05C8CF453C1FCB86FA01EB5EE3E2
            AD4ED21D064BA927B668C43B97CC78B073D38756F6AC28EAB96E7A99B2FDEA9A
            5EEC91E21E2BD5F589EFAE12FCB7CB952337EA9E9C091C81FCAB32C2CFC55258
            5BC76361A9B42D18D9E4C777B5811D461B1DFE9CD25A40DAE78820B548AC8AC8
            ECEE523B6C6C552EDC220ECA7A1AFA4BC183FE28AD0FAE7EC30E09EB8D82BA13
            B3B1E4C97BBCC797F82BE1E78BB47BF5D6D869B15E6C291C576F2CA63CF53C1E
            0919EE7AD667C54FED85BCD3FF00B65EC1A4D9215FB2238E30BD771F5AF7C988
            54772D800726BE6EF885AEAF89FC6729B30D2C3162D60D9CF98777257EA4F1F8
            5635FE13D3CA1375AFD12DCED3C2475DFF008563293269FF00D8E2CAEB72B2BF
            9F8FDE670738C67D474C578B697ABEB56F6B71A4693737290DF10648ADF86900
            0473819C63D0E2BE80F16B2F83FE0CC962CE1677B65B3007F1BBE03FE9BCFD2B
            C2FC2D79E21D06EFFB7B45B29A516EACAD28B769A3404630481C7F3AD20AD147
            9F889A9D59492D2E73E46010C31D3208C60F52315F5EFC3FDC7E1FE805FEF7D8
            62FCB6F15F23DDCF2DE5ECD73310D34D2348C40C659892DC0E0738E9C7A715F6
            4F87EC4E99E1CD2F4F2369B6B48A123DD540FE86A8C4D16EA70715F2E7C52D11
            7C3DF11EE66961DF657722DE6D2480CAC7E71907232C1BA7B57D4A7A579D7C5C
            F083F89FC2FF0069B3877EA3604CD08032CC9FC6A3DC8C1C77DB8A00CBD3ED2D
            F59F06C9A478717C3F036A10059E18774A2D51803F3B2A92F273D58AE081C1AF
            3BF87BE246F00F8E2EB4DD4254FB0CD235ADCBAB7CA8CAC40907E3D4F421B3DA
            ACFC2FF15EA11C92E8C6ED1CC16729D2ACA670903DC16DC15C823713CE031006
            3820E2B6FC5DE0BD73C43E1FB6BAD412CCF892CE2927BF683080458CA2391F2B
            4839C63B13CF4240363E28781E5BB66F10E9711925D83ED50C633BC01C3AFAF4
            008EE31F8F3DE08F89773E1DB78F4FD4D1EE74E1C232E0C90E7B7B8F6EA2AB7C
            3AF8B0FA2470E8BAF9696C13E486E941668074DA4752BD71DD4718C703BED67E
            1E787BC656FF00DADA3DC4704B3FEF3CFB621A3933FDE1FE183EA2B095269F34
            0F5B0F8CA72A7EC710AF1E8FB1AF3F8B7C37AB68B746CB52B4691E1701588470
            769EC707F4A87C3FE2CD0748F0568E2F355B485E3B18818CC8A587C838DA0E7F
            FD55E5DAA7C27F11E9D1BCC3ECB711460B6F4970D803FDA038FC6A3D1FE17788
            759B582EE216D05B5C22C88F2484E548E3851E9EF52A73BFC26DF53C2385FDA6
            86BF8DBE2A49AC5BCBA668DBA2B470565B87CABC83D147F0FD7AFB0AB7F0BBC0
            B2C9771F8835184C7146775A4247DEC8FBF8F41DBF3E38ADDD17E16E89E1C8BF
            B435CB94BA687E72D3E23823C7720F07F1CD72DF107E2E2DFC32689E1577689F
            E49AF5720B83C6D8C75C1E9BBEBDB9AA8D36DF34CC6BE32952A7EC70CAC9EECC
            CF8A3E2497C67E2CB4F0F68C7CFB7B697C95F2CE566998E09047503EEFD327B8
            AE8AC2F2DF474D22DED7C6FA7E971E8A3ECFAA69E5BE59D95FF7AE9D0C85B919
            C71C7439AC2F02F84F5DD1ACF55D42DB4F9E1F1443132D9C57B6ACA9B197E678
            99BE53275183C763D735CAF8B7C576DE25B389AF3438ECF5F8E4C5D5DC59884A
            00C1DC9FDFC91D79E08E878E83C927F0AE9D0F8BBE2BA7D96D8436325F3DE985
            570238558B6C207007DD1F53C715F55AFD735E55F05BC20DA2682FACDE4656F3
            5155F2D5860A43D57E85BA9F60B5EAC3A520169ADC0CD3A8A00F9E3E2DFC387D
            36EA5F1268D09366E775D4283981BAEE03FBA7D3B1E9C6311FC3FF001BD835B3
            E85ACCD6FA5E8F0E99708E63DCAF732B637393C92FB3701EA7819E00FA1A4447
            560EAACA460823208F7AF13F1DFC1759659352F0B054739692C09C027AE633DB
            E878F4EC0302BF8B74BF0E5EBE8D6DA9593697AA6A8C896915A43B9ECED4711A
            BA29C3B31DB9EE3A0FBBCF3571E11F1A782B5523C3F7935E7CECA4E972166CA8
            04892219C751D411CA8E0D60695AF5FF00867C656FA96B1672DDDE598D861BC7
            219485DA3A9CF1C6074E05743E13F12477BA0788EC2E35C5D235BD56E12717F3
            1755719CB2175195EADF5CE2810F6F8B9E36B259F4FD4A1B599C7EEA65BAB464
            7048FE20A53191DE92DFE2F78BDAC12CB4AB3B3B786DA2DABF65B5690C71A8C0
            FBCCDDBB9F4AF404F1968434CD4A54D6E5FF00458AC2CA6BFB57559A665721A4
            4DC0EE1F37248E81BDA965D574FD0359F126B77D79636705C5C5AC51BC4BF68F
            B4C28B96E148E594904E0807D7B83BBB58F2D7D33C6BE34BBD31B56B8BAFB3EA
            3214B6B8BB2561DDB777CAA0639192081C91EB9AEEB45F04E9FA1E977E2DC4B7
            1AB5A4DE5DDC896FE7CDE4BF319B553F2A9756037B03B7E6F4C5483E20786FC3
            305BD9DB5F2EA5656979BA0823049FB3BE5D70C780D1BF0324650FBF1E7579E3
            8D6B54BFB6FEC659ED6E859FD80B5AE4CB7116ECA03C70C07191CFA1C1C100EB
            BC51F10F5CD1F4D8B4EB8BCB9B5F11D9B0C4904D1CB1CB1104E265FBBE68C004
            0EFCF438AA7F0D7C0577E31D61FC47AE6F92C04C64DD29C9BC93AF3EAB9CE4F7
            E83BE353C0FF0006279E55D47C5998E3E1858AE0B487FE9A1E719FEE8E48C671
            D07BA410456F0470451A47146A1555060281D00A403D1146368C022A5A00C514
            0051451400534A8F4A7521A00C7D73C37A3788ADC41AB69D05D28FBA641F32FD
            18722BCD755F809A3DC3B3695AA5D599CFDC995675C7B721BF326BD7FF00833D
            EA294910CC41E40E0FA502BEA780CDF0035E5CADBEAFA748A3A79BBD3F929C53
            60F803AFB483ED1AAE9A8B9E4AF98FFA15515F40B122D7703CE3AD4B80338029
            D82F63C6F49F803A6C4DBF55D62EAE81FF009676E82107D89CB13FA57A4E83E1
            1D07C371EDD2B4C86DD88C34B8DD230F77393FAD6C45CEE2793BC8FC29FF00F2
            CF3DF148638014B483A0A5A002814502803FFFD9}
          Stretch = True
        end
        object RLDBText1: TRLDBText
          Left = 311
          Top = 96
          Width = 70
          Height = 16
          Alignment = taCenter
          DataField = 'FANTASIA'
          DataSource = Dm1.dsEmpresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel1: TRLLabel
          Left = 321
          Top = 129
          Width = 52
          Height = 11
          Alignment = taCenter
          Caption = 'N'#186' Pedido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 190
          Top = 142
          Width = 318
          Height = 18
          Alignment = taCenter
          Caption = 'CONTRATO DE PRESTA'#199#195'O DE SERVI'#199'OS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 467
          Top = 224
          Width = 17
          Height = 11
          Caption = 'RG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText35: TRLDBText
          Left = 467
          Top = 237
          Width = 85
          Height = 14
          AutoSize = False
          DataField = 'IDENTIDADE'
          DataSource = Dm1.dsPessoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel34: TRLLabel
          Left = 231
          Top = 254
          Width = 44
          Height = 11
          Caption = 'NUMERO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel35: TRLLabel
          Left = 467
          Top = 254
          Width = 74
          Height = 11
          Caption = 'COMPLEMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText36: TRLDBText
          Left = 231
          Top = 268
          Width = 205
          Height = 14
          AutoSize = False
          DataField = 'ENDERECO_NUM'
          DataSource = Dm1.dsPedido
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText37: TRLDBText
          Left = 467
          Top = 268
          Width = 237
          Height = 14
          AutoSize = False
          DataField = 'ENDERECO_COMPL'
          DataSource = Dm1.dsPedido
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel36: TRLLabel
          Left = 11
          Top = 169
          Width = 115
          Height = 19
          Caption = 'OR'#199'AMENTO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText38: TRLDBText
          Left = 128
          Top = 169
          Width = 119
          Height = 19
          AutoSize = False
          DataField = 'NUMORCAMENTO'
          DataSource = Dm1.dsPedido
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText39: TRLDBText
          Left = 586
          Top = 169
          Width = 119
          Height = 19
          AutoSize = False
          DataField = 'DTPEDIDO'
          DataSource = Dm1.dsPedido
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel37: TRLLabel
          Left = 528
          Top = 169
          Width = 54
          Height = 19
          Caption = 'DATA:'
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
  object JvMail1: TJvMail
    BlindCopy = <>
    CarbonCopy = <>
    Recipient = <>
    Left = 170
    Top = 146
  end
end
