object fContasReceber: TfContasReceber
  Left = 153
  Top = 47
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro/Consulta do Contas a Receber'
  ClientHeight = 553
  ClientWidth = 909
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 909
    Height = 520
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Consulta'
      DesignSize = (
        901
        492)
      object Label13: TLabel
        Left = 46
        Top = 464
        Width = 61
        Height = 13
        Cursor = crHandPoint
        Caption = 'Pendentes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = Label13Click
      end
      object JvColorSquare1: TJvColorSquare
        Left = 15
        Top = 462
        Width = 27
        Height = 15
        BorderStyle = bsSingle
        OnClick = Label13Click
      end
      object JvColorSquare3: TJvColorSquare
        Left = 15
        Top = 447
        Width = 27
        Height = 15
        Color = clTeal
        BorderStyle = bsSingle
        OnClick = Label14Click
      end
      object Label14: TLabel
        Left = 46
        Top = 449
        Width = 52
        Height = 13
        Cursor = crHandPoint
        Caption = 'Baixadas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = Label14Click
      end
      object JvColorSquare4: TJvColorSquare
        Left = 15
        Top = 477
        Width = 27
        Height = 15
        Color = clRed
        BorderStyle = bsSingle
        OnClick = Label15Click
      end
      object Label15: TLabel
        Left = 46
        Top = 479
        Width = 37
        Height = 13
        Cursor = crHandPoint
        Caption = 'Atraso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = Label15Click
      end
      object JvColorSquare5: TJvColorSquare
        Left = 162
        Top = 447
        Width = 27
        Height = 15
        Color = clYellow
        BorderStyle = bsSingle
      end
      object Label31: TLabel
        Left = 192
        Top = 449
        Width = 111
        Height = 13
        Cursor = crHandPoint
        Caption = 'T'#237'tulos Cancelados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object JvColorSquare2: TJvColorSquare
        Left = 162
        Top = 462
        Width = 27
        Height = 15
        Color = clBtnFace
        BorderStyle = bsSingle
        OnClick = Label16Click
      end
      object Label16: TLabel
        Left = 192
        Top = 464
        Width = 152
        Height = 13
        Cursor = crHandPoint
        Caption = 'Mostrar Todas as Parcelas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = Label16Click
      end
      object Label38: TLabel
        Left = 507
        Top = 443
        Width = 88
        Height = 13
        Cursor = crHandPoint
        Anchors = [akLeft, akBottom]
        Caption = 'Total Atrasado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label39: TLabel
        Left = 674
        Top = 443
        Width = 99
        Height = 13
        Cursor = crHandPoint
        Alignment = taRightJustify
        Anchors = [akLeft, akBottom]
        AutoSize = False
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label40: TLabel
        Left = 674
        Top = 461
        Width = 99
        Height = 13
        Cursor = crHandPoint
        Alignment = taRightJustify
        Anchors = [akLeft, akBottom]
        AutoSize = False
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label41: TLabel
        Left = 674
        Top = 478
        Width = 99
        Height = 13
        Cursor = crHandPoint
        Alignment = taRightJustify
        Anchors = [akLeft, akBottom]
        AutoSize = False
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label42: TLabel
        Left = 503
        Top = 461
        Width = 92
        Height = 13
        Cursor = crHandPoint
        Alignment = taRightJustify
        Anchors = [akLeft, akBottom]
        Caption = 'Total Recebido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label43: TLabel
        Left = 498
        Top = 478
        Width = 97
        Height = 13
        Cursor = crHandPoint
        Anchors = [akLeft, akBottom]
        Caption = 'Total a Receber:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 901
        Height = 441
        Align = alTop
        BevelOuter = bvLowered
        TabOrder = 0
        object Label1: TLabel
          Left = 28
          Top = 10
          Width = 35
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cliente:'
        end
        object Label7: TLabel
          Left = 5
          Top = 52
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = 'Documento:'
        end
        object Label45: TLabel
          Left = 15
          Top = 74
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nosso N'#186':'
        end
        object Label46: TLabel
          Left = 220
          Top = 72
          Width = 250
          Height = 13
          Caption = 'Informe o n'#186' no campo desejado e pressione ENTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label47: TLabel
          Left = 189
          Top = 52
          Width = 84
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#186' La'#231'to/Recibo:'
        end
        object Label49: TLabel
          Left = 14
          Top = 30
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vendedor:'
        end
        object JvDBGrid1: TJvDBGrid
          Left = 1
          Top = 88
          Width = 899
          Height = 352
          Align = alBottom
          DataSource = DmCons.qsCReceberParc
          ReadOnly = True
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = JvDBGrid1DblClick
          OnKeyDown = JvDBGrid1KeyDown
          OnTitleClick = JvDBGrid1TitleClick
          OnGetCellParams = JvDBGrid1GetCellParams
          Columns = <
            item
              Expanded = False
              FieldName = 'NOMECLIENTE'
              Title.Alignment = taCenter
              Title.Caption = 'Cliente'
              Width = 215
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'NUMCRECEBER'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' La'#231'to'
              Width = 49
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'NUMNOTA'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' Nota'
              Width = 51
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PARCELA'
              Title.Alignment = taCenter
              Title.Caption = 'Parc.'
              Width = 27
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'NUMCARTEIRA'
              Title.Alignment = taCenter
              Title.Caption = 'Carteira'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'NOSSONUMERO'
              Title.Alignment = taCenter
              Title.Caption = 'Nosso N'#250'mero'
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRRESTANTE'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr.Restante'
              Width = 60
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DTVENCIMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Vencimento'
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clDiasAtraso'
              Title.Alignment = taCenter
              Title.Caption = 'Atrazo'
              Width = 34
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRPAGTO'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr.Pagto'
              Width = 51
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTPAGTO'
              Title.Alignment = taCenter
              Title.Caption = 'Dt.Pagto'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRVENCIMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr.Parcela'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'TIPODOC'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo Doc.'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'VLRDEVOLUCAO'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr.Devolu'#231#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'JUROSPAGOS'
              Title.Alignment = taCenter
              Title.Caption = 'Juros Pagos'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMEBANCO'
              Title.Alignment = taCenter
              Title.Caption = 'Banco'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CODVENDEDOR'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'd.Vendedor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PERCCOMISSAO'
              Title.Alignment = taCenter
              Title.Caption = '% Comiss'#227'o'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DTMOVIMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Dt.Emiss'#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMEVENDEDOR'
              Title.Alignment = taCenter
              Title.Caption = 'Nome Vendedor'
              Visible = True
            end>
        end
        object JvDBLookupCombo1: TJvDBLookupCombo
          Left = 65
          Top = 2
          Width = 298
          Height = 21
          DropDownCount = 8
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = qsCliente
          TabOrder = 0
        end
        object JvIntegerEdit1: TJvIntegerEdit
          Left = 65
          Top = 44
          Width = 88
          Height = 21
          Alignment = taRightJustify
          ReadOnly = False
          TabOrder = 2
          OnKeyDown = JvIntegerEdit1KeyDown
          Value = 0
          MaxValue = 0
          MinValue = 0
          HasMaxValue = False
          HasMinValue = False
        end
        object Panel4: TPanel
          Left = 515
          Top = 3
          Width = 256
          Height = 67
          BevelOuter = bvLowered
          Enabled = False
          TabOrder = 4
          object Label9: TLabel
            Left = 17
            Top = 9
            Width = 22
            Height = 13
            Caption = 'End:'
          end
          object Label10: TLabel
            Left = 3
            Top = 30
            Width = 36
            Height = 13
            Caption = 'Cidade:'
          end
          object Label11: TLabel
            Left = 3
            Top = 51
            Width = 36
            Height = 13
            Caption = 'Estado:'
          end
          object Label12: TLabel
            Left = 131
            Top = 51
            Width = 22
            Height = 13
            Caption = 'Cep:'
          end
          object DBEdit8: TDBEdit
            Left = 42
            Top = 1
            Width = 211
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'ENDERECO'
            DataSource = qsCliente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit11: TDBEdit
            Left = 42
            Top = 22
            Width = 211
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'NOMECIDADE'
            DataSource = qsCliente
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit17: TDBEdit
            Left = 42
            Top = 43
            Width = 34
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'ESTADO'
            DataSource = qsCliente
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit18: TDBEdit
            Left = 155
            Top = 43
            Width = 98
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'CEP'
            DataSource = qsCliente
            ReadOnly = True
            TabOrder = 3
          end
        end
        object BitBtn9: TBitBtn
          Left = 366
          Top = 2
          Width = 75
          Height = 22
          Hint = 'Filtra o cliente selecionado'
          Caption = 'Filtra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = BitBtn9Click
        end
        object Edit1: TEdit
          Left = 65
          Top = 66
          Width = 129
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 6
          OnKeyDown = Edit1KeyDown
        end
        object JvIntegerEdit2: TJvIntegerEdit
          Left = 275
          Top = 44
          Width = 88
          Height = 21
          Alignment = taRightJustify
          ReadOnly = False
          TabOrder = 7
          OnKeyDown = JvIntegerEdit2KeyDown
          Value = 0
          MaxValue = 0
          MinValue = 0
          HasMaxValue = False
          HasMinValue = False
        end
        object JvDBLookupCombo8: TJvDBLookupCombo
          Left = 65
          Top = 22
          Width = 298
          Height = 21
          DropDownCount = 8
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DmCons.qsVendedor
          TabOrder = 1
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dados Gerais (Parcela)'
      ImageIndex = 1
      OnShow = TabSheet2Show
      DesignSize = (
        901
        492)
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 901
        Height = 492
        Align = alClient
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 0
        object Label5: TLabel
          Left = 32
          Top = 136
          Width = 97
          Height = 13
          Caption = 'Data Movimento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 85
          Top = 43
          Width = 44
          Height = 13
          Cursor = crHandPoint
          Hint = 
            'Abre o cadastro de pessoa para efetuar novo registro ou alterar ' +
            'registro atual'
          Caption = 'Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = Label4Click
        end
        object Label17: TLabel
          Left = 42
          Top = 65
          Width = 87
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#186' Documento:'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 81
          Top = 113
          Width = 48
          Height = 13
          Caption = 'Parcela:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 27
          Top = 157
          Width = 102
          Height = 13
          Caption = 'Data Vencimento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 30
          Top = 178
          Width = 99
          Height = 13
          Caption = 'Valor da Parcela:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel1: TBevel
          Left = 64
          Top = 293
          Width = 703
          Height = 2
          Shape = bsTopLine
          Style = bsRaised
        end
        object Label2: TLabel
          Left = 8
          Top = 283
          Width = 51
          Height = 13
          Caption = 'Hist'#243'rico'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 19
          Top = 14
          Width = 110
          Height = 13
          Caption = 'N'#186' do Lan'#231'amento:'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label26: TLabel
          Left = 95
          Top = 201
          Width = 34
          Height = 13
          Cursor = crHandPoint
          Hint = 
            'Abre o cadastro de pessoa para efetuar novo registro ou alterar ' +
            'registro atual'
          Caption = 'Banco:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = Label26Click
        end
        object Label28: TLabel
          Left = 56
          Top = 223
          Width = 73
          Height = 13
          Cursor = crHandPoint
          Hint = 
            'Abre o cadastro de pessoa para efetuar novo registro ou alterar ' +
            'registro atual'
          Caption = 'Tipo Cobranca:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = Label28Click
        end
        object Label23: TLabel
          Left = 80
          Top = 245
          Width = 49
          Height = 13
          Cursor = crHandPoint
          Hint = 
            'Abre o cadastro de pessoa para efetuar novo registro ou alterar ' +
            'registro atual'
          Caption = 'Vendedor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = Label23Click
        end
        object Label35: TLabel
          Left = 443
          Top = 245
          Width = 59
          Height = 13
          Cursor = crHandPoint
          Caption = '% Comiss'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object Label20: TLabel
          Left = 53
          Top = 85
          Width = 76
          Height = 13
          Cursor = crHandPoint
          Caption = 'Condi'#231#227'o Pgto.:'
          OnClick = Label20Click
        end
        object Label21: TLabel
          Left = 215
          Top = 100
          Width = 196
          Height = 26
          Hint = 'ou quando for uma parcela s'#243
          Caption = 
            'Este campo '#233' preenchido quando n'#227'o h'#225#13#10'condi'#231#227'o de pagamento pre' +
            'enchida.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4210816
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 425
          Top = 201
          Width = 78
          Height = 13
          Caption = 'Tipo de Carteira:'
        end
        object Label37: TLabel
          Left = 430
          Top = 223
          Width = 73
          Height = 13
          Cursor = crHandPoint
          Caption = 'Nosso N'#250'mero:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object Label44: TLabel
          Left = 51
          Top = 267
          Width = 78
          Height = 13
          Cursor = crHandPoint
          Hint = 
            'Abre o cadastro de pessoa para efetuar novo registro ou alterar ' +
            'registro atual'
          Caption = 'Centro de custo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = Label44Click
        end
        object Label48: TLabel
          Left = 16
          Top = 448
          Width = 61
          Height = 13
          Caption = 'Observa'#231#227'o:'
        end
        object JvDBDateEdit2: TJvDBDateEdit
          Left = 131
          Top = 127
          Width = 121
          Height = 21
          DataField = 'DTMOVIMENTO'
          DataSource = Dm1.dsCReceberParc
          NumGlyphs = 2
          TabOrder = 5
        end
        object JvDBLookupCombo4: TJvDBLookupCombo
          Left = 131
          Top = 33
          Width = 290
          Height = 21
          DropDownCount = 8
          DataField = 'CODCLIENTE'
          DataSource = Dm1.dsCReceberParc
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = qsCliente
          TabOrder = 1
          OnExit = JvDBLookupCombo4Exit
        end
        object DBEdit3: TDBEdit
          Left = 131
          Top = 55
          Width = 87
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NUMNOTA'
          DataSource = Dm1.dsCReceberParc
          MaxLength = 6
          TabOrder = 2
        end
        object DBEdit1: TDBEdit
          Left = 131
          Top = 5
          Width = 87
          Height = 21
          CharCase = ecUpperCase
          Color = clInfoBk
          DataField = 'NUMCRECEBER'
          DataSource = Dm1.dsCReceberParc
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 131
          Top = 103
          Width = 46
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PARCELA'
          DataSource = Dm1.dsCReceberParc
          TabOrder = 4
          OnExit = DBEdit2Exit
        end
        object JvDBDateEdit1: TJvDBDateEdit
          Left = 131
          Top = 148
          Width = 121
          Height = 21
          DataField = 'DTVENCIMENTO'
          DataSource = Dm1.dsCReceberParc
          NumGlyphs = 2
          TabOrder = 6
        end
        object DBEdit4: TDBEdit
          Left = 131
          Top = 170
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VLRVENCIMENTO'
          DataSource = Dm1.dsCReceberParc
          TabOrder = 7
        end
        object Panel5: TPanel
          Left = 446
          Top = 2
          Width = 326
          Height = 190
          Color = clSilver
          Enabled = False
          TabOrder = 8
          object Label8: TLabel
            Left = 27
            Top = 12
            Width = 47
            Height = 13
            Caption = 'Tipo Doc:'
          end
          object Label24: TLabel
            Left = 17
            Top = 38
            Width = 57
            Height = 13
            Caption = 'Dias Atraso:'
          end
          object Label25: TLabel
            Left = 13
            Top = 64
            Width = 61
            Height = 13
            Caption = 'Dt.Ult.Pagto:'
          end
          object Label27: TLabel
            Left = 187
            Top = 89
            Width = 61
            Height = 13
            Caption = 'Juros Pagos:'
          end
          object Label29: TLabel
            Left = 28
            Top = 117
            Width = 46
            Height = 13
            Caption = 'Vlr.Pagto:'
          end
          object Label30: TLabel
            Left = 13
            Top = 170
            Width = 61
            Height = 13
            Caption = 'Vlr.Restante:'
          end
          object Label32: TLabel
            Left = 4
            Top = 143
            Width = 70
            Height = 13
            Caption = 'Vlr.Devolu'#231#227'o:'
          end
          object Label33: TLabel
            Left = 188
            Top = 38
            Width = 60
            Height = 13
            Caption = 'Vlr.Despesa:'
          end
          object Label34: TLabel
            Left = 184
            Top = 64
            Width = 64
            Height = 13
            Caption = 'Vlr.Desconto:'
          end
          object Label22: TLabel
            Left = 10
            Top = 91
            Width = 64
            Height = 13
            Caption = 'Dt.Ult.Devol.:'
          end
          object DBEdit9: TDBEdit
            Left = 77
            Top = 4
            Width = 90
            Height = 21
            CharCase = ecUpperCase
            Color = clInfoBk
            DataField = 'TIPODOC'
            DataSource = Dm1.dsCReceberParc
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit6: TDBEdit
            Left = 77
            Top = 30
            Width = 90
            Height = 21
            CharCase = ecUpperCase
            Color = clInfoBk
            DataField = 'DIASATRASO'
            DataSource = Dm1.dsCReceberParc
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit7: TDBEdit
            Left = 77
            Top = 56
            Width = 90
            Height = 21
            CharCase = ecUpperCase
            Color = clInfoBk
            DataField = 'DTPAGTO'
            DataSource = Dm1.dsCReceberParc
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit10: TDBEdit
            Left = 251
            Top = 82
            Width = 69
            Height = 21
            CharCase = ecUpperCase
            Color = clInfoBk
            DataField = 'JUROSPAGOS'
            DataSource = Dm1.dsCReceberParc
            ReadOnly = True
            TabOrder = 3
          end
          object DBEdit12: TDBEdit
            Left = 77
            Top = 109
            Width = 90
            Height = 21
            CharCase = ecUpperCase
            Color = clInfoBk
            DataField = 'VLRPAGTO'
            DataSource = Dm1.dsCReceberParc
            ReadOnly = True
            TabOrder = 4
          end
          object DBEdit13: TDBEdit
            Left = 77
            Top = 162
            Width = 90
            Height = 21
            CharCase = ecUpperCase
            Color = clInfoBk
            DataField = 'VLRRESTANTE'
            DataSource = Dm1.dsCReceberParc
            ReadOnly = True
            TabOrder = 5
          end
          object DBEdit14: TDBEdit
            Left = 77
            Top = 135
            Width = 90
            Height = 21
            CharCase = ecUpperCase
            Color = clInfoBk
            DataField = 'VLRDEVOLUCAO'
            DataSource = Dm1.dsCReceberParc
            ReadOnly = True
            TabOrder = 6
          end
          object DBEdit15: TDBEdit
            Left = 250
            Top = 30
            Width = 69
            Height = 21
            CharCase = ecUpperCase
            Color = clInfoBk
            DataField = 'VLRDESPESA'
            DataSource = Dm1.dsCReceberParc
            ReadOnly = True
            TabOrder = 7
          end
          object DBEdit16: TDBEdit
            Left = 250
            Top = 56
            Width = 69
            Height = 21
            CharCase = ecUpperCase
            Color = clInfoBk
            DataField = 'VLRDESCONTO'
            DataSource = Dm1.dsCReceberParc
            ReadOnly = True
            TabOrder = 8
          end
          object DBEdit19: TDBEdit
            Left = 77
            Top = 82
            Width = 90
            Height = 21
            CharCase = ecUpperCase
            Color = clInfoBk
            DataField = 'DTDEVOLUCAO'
            DataSource = Dm1.dsCReceberParc
            ReadOnly = True
            TabOrder = 9
          end
        end
        object JvDBLookupCombo2: TJvDBLookupCombo
          Left = 130
          Top = 193
          Width = 290
          Height = 21
          DropDownCount = 8
          DataField = 'CODBANCO'
          DataSource = Dm1.dsCReceberParc
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DmCons.qsBanco
          TabOrder = 9
        end
        object JvDBLookupCombo3: TJvDBLookupCombo
          Left = 130
          Top = 215
          Width = 290
          Height = 21
          DropDownCount = 8
          DataField = 'CODTIPOCOBRANCA'
          DataSource = Dm1.dsCReceberParc
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DmCons.qsTipoCobranca
          TabOrder = 11
        end
        object JvDBLookupCombo5: TJvDBLookupCombo
          Left = 130
          Top = 237
          Width = 290
          Height = 21
          DropDownCount = 8
          DataField = 'CODVENDEDOR'
          DataSource = Dm1.dsCReceberParc
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DmCons.qsVendedor
          TabOrder = 13
          OnExit = JvDBLookupCombo5Exit
        end
        object DBEdit5: TDBEdit
          Left = 506
          Top = 237
          Width = 70
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PERCCOMISSAO'
          DataSource = Dm1.dsCReceberParc
          TabOrder = 14
        end
        object JvDBLookupCombo6: TJvDBLookupCombo
          Left = 131
          Top = 77
          Width = 290
          Height = 21
          DropDownCount = 8
          DataField = 'CODCONDPGTO'
          DataSource = Dm1.dsCReceberParc
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DmCons.qsCondPgto
          TabOrder = 3
          OnExit = JvDBLookupCombo6Exit
        end
        object BitBtn10: TBitBtn
          Left = 584
          Top = 264
          Width = 186
          Height = 25
          Caption = 'Gerar Parcelas Autom'#225'ticas'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
          OnClick = BitBtn10Click
          Glyph.Data = {
            46020000424D460200000000000036000000280000000E0000000C0000000100
            1800000000001002000000000000000000000000000000000000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F0000
            000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBF7F7F7F00000000FFFF0000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BF7F7F7F000000BFBFBFBFBFBF7F7F7F00000000FFFF000000BFBFBF0000BFBF
            BFBFBFBFBFBFBFBFBFBF7F7F7F00000000FFFF0000007F7F7F00000000FFFF00
            FFFF000000BFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBF7F7F7F00000000FFFF00
            FFFF00000000FFFF00FFFF000000BFBFBFBFBFBF6910BFBFBFBFBFBFBFBFBF7F
            7F7F00000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF000000BFBFBFBFBFBF
            2337BFBFBFBFBFBF7F7F7F00000000FFFF00FFFF00FFFF00000000FFFF00FFFF
            000000BFBFBFBFBFBFBFBFBF544EBFBFBFBFBFBF7F7F7F00000000FFFF00FFFF
            000000BFBFBF00000000FFFF000000BFBFBFBFBFBFBFBFBF0000BFBFBF7F7F7F
            00000000FFFF00FFFF000000BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBF
            BFBFBFBF0000BFBFBF7F7F7F00000000FFFF000000BFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBF00000000FFFF000000BFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
            BF000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBF0000}
        end
        object JvDBComboBox3: TJvDBComboBox
          Left = 506
          Top = 193
          Width = 267
          Height = 21
          Style = csDropDownList
          DataField = 'NUMCARTEIRA'
          DataSource = Dm1.dsCReceberParc
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            '112  ESCRITURAL ELETR'#212'NICA - simples / contratual'
            '109  DIRETA ELETR'#212'NICA SEM EMISS'#195'O - SIMPLES'
            '175  SEM REGISTRO SEM EMISS'#195'O')
          TabOrder = 10
          Values.Strings = (
            '112'
            '109'
            '175')
        end
        object DBEdit20: TDBEdit
          Left = 506
          Top = 215
          Width = 151
          Height = 21
          CharCase = ecUpperCase
          Color = clAqua
          DataField = 'NOSSONUMERO'
          DataSource = Dm1.dsCReceberParc
          TabOrder = 12
        end
        object JvDBLookupCombo7: TJvDBLookupCombo
          Left = 130
          Top = 259
          Width = 290
          Height = 21
          DropDownCount = 8
          DataField = 'CODCENTROCUSTO'
          DataSource = Dm1.dsCReceberParc
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DmCons.qsCentroCusto
          TabOrder = 15
          OnExit = JvDBLookupCombo5Exit
        end
      end
      object JvDBGrid2: TJvDBGrid
        Left = 6
        Top = 299
        Width = 881
        Height = 142
        TabStop = False
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clInfoBk
        DataSource = Dm1.dsCReceberHist
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTHISTORICO'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Hist'#243'rico'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTULTPGTO'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Ult.Pagto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRULTPGTO'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Pagto.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRULTJUROSPAGO'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Juros Pagos'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRULTDESCONTO'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Desconto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRULTDESPESA'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Despesa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRULTDEVOLUCAO'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Devolu'#231#227'o'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TIPOHIST'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HISTORICO'
            Title.Alignment = taCenter
            Title.Caption = 'Hist'#243'rico'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ITEM'
            Title.Alignment = taCenter
            Title.Caption = 'Item'
            Visible = True
          end>
      end
      object DBMemo1: TDBMemo
        Left = 78
        Top = 444
        Width = 657
        Height = 45
        DataField = 'OBS'
        DataSource = Dm1.dsCReceberParc
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 2
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 520
    Width = 909
    Height = 33
    Align = alBottom
    TabOrder = 1
    object JvxSpeedButton1: TJvxSpeedButton
      Left = 435
      Top = 3
      Width = 84
      Height = 27
      DropDownMenu = PopupMenu1
      Caption = 'Im&primir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        0E030000424D0E030000000000003600000028000000110000000E0000000100
        180000000000D802000000000000000000000000000000000000BFBFBFBFBFBF
        BFBFBF0000000000000000000000000000000000000000000000000000000000
        00000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BFBFBFBFBF
        BF00BFBFBF000000000000000000000000000000000000000000000000000000
        000000000000000000000000BFBFBF000000BFBFBF00BFBFBF000000BFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF00FFFF00FFFF00FFFFBFBFBFBFBFBF000000
        000000000000BFBFBF00BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBF7F7F7F7F7F7F7F7F7FBFBFBFBFBFBF000000BFBFBF000000BFBFBF00BFBF
        BF00000000000000000000000000000000000000000000000000000000000000
        0000000000000000BFBFBFBFBFBF00000000BFBFBF000000BFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BF
        BFBF00000000BFBFBFBFBFBF0000000000000000000000000000000000000000
        00000000000000000000BFBFBF000000BFBFBF00000000000000BFBFBFBFBFBF
        BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00BFBFBF000000BFBFBF00000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF
        000000000000000000000000000000FFFFFF000000000000000000000000BFBF
        BF00BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF000000FFFFFF000000000000000000000000000000FFFFFF000000
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF00BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000000000000000
        0000000000000000000000BFBFBFBFBFBF00}
      Layout = blGlyphLeft
      ParentFont = False
    end
    object BitBtn4: TBitBtn
      Left = 351
      Top = 3
      Width = 84
      Height = 27
      Cursor = crHandPoint
      Hint = 'Exclui o registro selecionado'
      Caption = 'E&xcluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BitBtn4Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
        03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
        33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
        0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
        3333333337FFF7F3333333333000003333333333377777333333}
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 175
      Top = 3
      Width = 88
      Height = 27
      Cursor = crHandPoint
      Hint = 'Cancela a altera'#231#227'o ou inser'#231#227'o do registro'
      Caption = 'Ca&ncelar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitBtn3Click
      Glyph.Data = {
        CE070000424DCE07000000000000360000002800000024000000120000000100
        18000000000098070000CE0E0000C40E00000000000000000000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        0080800080800080800080800080800080808080808080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080FFFFFF008080008080008080008080008080008080
        0080800080800080800080800080800080800080800080800080800000FF0000
        800000808080800080800080800080800080800080800000FF80808000808000
        8080008080008080008080008080008080008080808080808080FFFFFF008080
        008080008080008080008080008080FFFFFF0080800080800080800080800080
        800080800080800000FF00008000008000008080808000808000808000808000
        00FF000080000080808080008080008080008080008080008080008080808080
        FFFFFF008080808080FFFFFF008080008080008080FFFFFF808080808080FFFF
        FF0080800080800080800080800080800080800000FF00008000008000008000
        00808080800080800000FF000080000080000080000080808080008080008080
        008080008080008080808080FFFFFF008080008080808080FFFFFF008080FFFF
        FF808080008080008080808080FFFFFF00808000808000808000808000808000
        80800000FF000080000080000080000080808080000080000080000080000080
        000080808080008080008080008080008080008080808080FFFFFF0080800080
        80008080808080FFFFFF808080008080008080008080008080808080FFFFFF00
        80800080800080800080800080800080800000FF000080000080000080000080
        0000800000800000800000808080800080800080800080800080800080800080
        80008080808080FFFFFF00808000808000808080808000808000808000808000
        8080FFFFFF808080008080008080008080008080008080008080008080008080
        0000FF0000800000800000800000800000800000808080800080800080800080
        80008080008080008080008080008080008080808080FFFFFF00808000808000
        8080008080008080008080FFFFFF808080008080008080008080008080008080
        0080800080800080800080800080800000800000800000800000800000808080
        8000808000808000808000808000808000808000808000808000808000808000
        8080808080FFFFFF008080008080008080008080008080808080008080008080
        0080800080800080800080800080800080800080800080800080800000FF0000
        8000008000008000008080808000808000808000808000808000808000808000
        8080008080008080008080008080008080808080FFFFFF008080008080008080
        8080800080800080800080800080800080800080800080800080800080800080
        800080800000FF00008000008000008000008000008080808000808000808000
        8080008080008080008080008080008080008080008080008080008080808080
        008080008080008080008080808080FFFFFF0080800080800080800080800080
        800080800080800080800080800000FF00008000008000008080808000008000
        0080000080808080008080008080008080008080008080008080008080008080
        008080008080808080008080008080008080008080008080808080FFFFFF0080
        800080800080800080800080800080800080800080800000FF00008000008000
        00808080800080800000FF000080000080000080808080008080008080008080
        008080008080008080008080008080808080008080008080008080808080FFFF
        FF008080008080808080FFFFFF00808000808000808000808000808000808000
        80800000FF0000800000808080800080800080800080800000FF000080000080
        000080808080008080008080008080008080008080008080808080FFFFFF0080
        80008080808080008080808080FFFFFF008080008080808080FFFFFF00808000
        80800080800080800080800080800080800000FF000080008080008080008080
        0080800080800000FF0000800000800000800080800080800080800080800080
        80008080808080FFFFFFFFFFFF808080008080008080008080808080FFFFFF00
        8080008080808080FFFFFF008080008080008080008080008080008080008080
        0080800080800080800080800080800080800080800000FF0000800000FF0080
        8000808000808000808000808000808000808080808080808000808000808000
        8080008080008080808080FFFFFFFFFFFFFFFFFF808080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080808080808080808080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        008080008080008080008080008080008080}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 87
      Top = 3
      Width = 88
      Height = 27
      Cursor = crHandPoint
      Hint = 'Edita o registro selecionado'
      Caption = '&Editar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
    end
    object BitBtn1: TBitBtn
      Left = 3
      Top = 3
      Width = 84
      Height = 27
      Cursor = crHandPoint
      Hint = 'Insere um novo registro'
      Caption = '&Incluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object BitBtn8: TBitBtn
      Left = 607
      Top = 3
      Width = 88
      Height = 27
      Cursor = crHandPoint
      Hint = 'Grava a devolu'#231#227'o do cliente'
      Caption = 'Devolu'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = BitBtn8Click
      Glyph.Data = {
        06030000424D06030000000000003600000028000000100000000F0000000100
        180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
        0000000000000000000000000000000000000000000000000000000000000000
        00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
        FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
        000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
        FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
        FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
        000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
        FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
        FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000FFFFFF000000BFBFBFBFBFBF
        000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
        FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
        0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
        BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
        FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
        BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
        00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
        00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBF}
    end
    object BitBtn5: TBitBtn
      Left = 263
      Top = 3
      Width = 88
      Height = 27
      Cursor = crHandPoint
      Hint = 'Confirma a altera'#231#227'o ou a inser'#231#227'o do registro'
      Caption = '&Confirmar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BitBtn5Click
      Glyph.Data = {
        CE070000424DCE07000000000000360000002800000024000000120000000100
        18000000000098070000CE0E0000D80E00000000000000000000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080FFFFFF008080008080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8080000080000000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080808080808080FFFFFF
        FFFFFF0080800080800080800080800080800080800080800080800080800080
        8000808000808000808080000000800000800080000000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        808080808080808080808080FFFFFFFFFFFF0080800080800080800080800080
        8000808000808000808000808000808000808080000000800000800000800000
        8000800000008080008080008080008080008080008080008080008080008080
        008080008080008080808080808080808080808080808080808080FFFFFFFFFF
        FF00808000808000808000808000808000808000808000808000808080000000
        8000008000008000008000008000008000800000008080008080008080008080
        0080800080800080800080800080800080808080808080808080808080808080
        80808080808080808080808080FFFFFF00808000808000808000808000808000
        808000808080000000800000800000800000FF00008000008000008000008000
        8000000080800080800080800080800080800080800080800080808080808080
        80808080808080FFFFFF808080808080808080808080808080FFFFFF00808000
        808000808000808000808000808000808000800000800000800000FF00008080
        00FF000080000080000080008000000080800080800080800080800080800080
        80008080008080808080808080808080FFFFFF008080FFFFFF80808080808080
        8080808080FFFFFFFFFFFF00808000808000808000808000808000808000FF00
        00800000FF0000808000808000808000FF000080000080000080008000000080
        80008080008080008080008080008080008080808080808080FFFFFF00808000
        8080008080FFFFFF808080808080808080808080FFFFFFFFFFFF008080008080
        00808000808000808000808000FF0000808000808000808000808000808000FF
        0000800000800000800080000000808000808000808000808000808000808000
        8080FFFFFF008080008080008080008080008080FFFFFF808080808080808080
        808080FFFFFFFFFFFF0080800080800080800080800080800080800080800080
        8000808000808000808000808000FF0000800000800000800080000000808000
        8080008080008080008080008080008080008080008080008080008080008080
        008080FFFFFF808080808080808080808080FFFFFFFFFFFF0080800080800080
        8000808000808000808000808000808000808000808000808000808000FF0000
        8000008000008000800000008080008080008080008080008080008080008080
        008080008080008080008080008080008080FFFFFF8080808080808080808080
        80FFFFFF00808000808000808000808000808000808000808000808000808000
        808000808000808000808000FF00008000008000008000800000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        80FFFFFF808080808080808080808080FFFFFF00808000808000808000808000
        808000808000808000808000808000808000808000808000808000FF00008000
        0080000080008000000080800080800080800080800080800080800080800080
        80008080008080008080008080008080FFFFFF808080808080808080808080FF
        FFFF008080008080008080008080008080008080008080008080008080008080
        00808000808000808000FF000080000080008000000080800080800080800080
        80008080008080008080008080008080008080008080008080008080008080FF
        FFFF808080808080808080008080008080008080008080008080008080008080
        00808000808000808000808000808000808000808000808000FF000080000080
        0000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080FFFFFF808080808080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000FF0000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080FFFFFF
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        008080008080008080008080008080008080}
      NumGlyphs = 2
    end
    object BitBtn6: TBitBtn
      Left = 695
      Top = 3
      Width = 86
      Height = 27
      Cursor = crHandPoint
      Hint = 'Faz o estorno de um pagamento ou de uma devolu'#231#227'o'
      Caption = 'Estorno'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = BitBtn6Click
      Glyph.Data = {
        E6050000424DE605000000000000360400002800000018000000120000000100
        080000000000B0010000C30E0000C30E00000001000000000000000000007B00
        0000FF000000007B00007B7B000000FF0000FFFF0000007B7B007B7B7B00BDBD
        BD0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00090909090909
        0909090909090909090909090909090909090909090909090909090909090909
        0909090909090909090909090909090909090909090909090909090909090909
        0909090909090900000000000000000000000909090909090909090909090900
        0003030303030303030300090909090909090909090909000500030303030303
        0303030009090909090909090909090005050003030303030303030300090909
        0909090909090900050505000303030303030303030009090909090909090900
        0505050500000000000000000000090909090909090909000505050505050505
        0500090909090909090909090909090005050505050505050500090909090909
        0909090909090900050505000000000000000909090909090909090909090909
        0000000909090909090909020202090909090909090909090909090909090909
        0909090902020909090909090909090909090909090909020909090209020909
        0909090909090909090909090909090902020209090909090909090909090909
        0909090909090909090909090909090909090909090909090909090909090909
        09090909090909090909}
    end
    object BitBtn7: TBitBtn
      Left = 519
      Top = 3
      Width = 88
      Height = 27
      Cursor = crHandPoint
      Caption = 'Pgto.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = BitBtn7Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777070777
        7777777770202007777777700220202077777770200707020777770007070702
        0777777777070022077777777700222207777770002222007777770222202077
        7777770220070777777777020707070007777702070700207777777020202200
        7777777700202077777777777707077777777777777777777777}
    end
  end
  object Cliente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT PESSOA.*, CIDADE.NOME NOMECIDADE'
      'FROM PESSOA'
      'FULL JOIN CIDADE ON'
      '(CIDADE.ID = PESSOA.CIDADE)'
      'WHERE CLIENTE = '#39'1'#39
      'ORDER BY PESSOA.NOME')
    SQLConnection = Dm1.Conexao
    Left = 300
    Top = 160
  end
  object ClienteP: TDataSetProvider
    DataSet = Cliente
    Left = 320
    Top = 160
  end
  object qCliente: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'ClienteP'
    Left = 340
    Top = 160
    object qClienteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qClienteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 40
    end
    object qClientePESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object qClienteDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 18
    end
    object qClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object qClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 25
    end
    object qClienteCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qClienteESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object qClienteFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object qClienteFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object qClienteINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 15
    end
    object qClienteIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
      Size = 10
    end
    object qClienteESTCIVIL: TStringField
      FieldName = 'ESTCIVIL'
      Size = 12
    end
    object qClientePROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 25
    end
    object qClienteNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
    end
    object qClienteDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object qClienteOBSERVACAO: TBlobField
      FieldName = 'OBSERVACAO'
      Size = 1
    end
    object qClienteFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      FixedChar = True
      Size = 1
    end
    object qClienteCLIENTE: TStringField
      FieldName = 'CLIENTE'
      FixedChar = True
      Size = 1
    end
    object qClienteVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object qClienteREFPESSOAL1: TStringField
      FieldName = 'REFPESSOAL1'
      Size = 40
    end
    object qClienteREFPESSOAL2: TStringField
      FieldName = 'REFPESSOAL2'
      Size = 40
    end
    object qClienteREFPESSOALEND1: TStringField
      FieldName = 'REFPESSOALEND1'
      Size = 40
    end
    object qClienteREFPESSOALEND2: TStringField
      FieldName = 'REFPESSOALEND2'
      Size = 40
    end
    object qClienteREFPESSOALFONE1: TStringField
      FieldName = 'REFPESSOALFONE1'
      Size = 15
    end
    object qClienteREFPESSOALFONE2: TStringField
      FieldName = 'REFPESSOALFONE2'
      Size = 15
    end
    object qClienteREFCOMERCIAL1: TStringField
      FieldName = 'REFCOMERCIAL1'
      Size = 40
    end
    object qClienteREFCOMERCIAL2: TStringField
      FieldName = 'REFCOMERCIAL2'
      Size = 40
    end
    object qClienteREFCOMERCIALEND1: TStringField
      FieldName = 'REFCOMERCIALEND1'
      Size = 40
    end
    object qClienteREFCOMERCIALEND2: TStringField
      FieldName = 'REFCOMERCIALEND2'
      Size = 40
    end
    object qClienteREFCOMERCIALFONE1: TStringField
      FieldName = 'REFCOMERCIALFONE1'
      Size = 15
    end
    object qClienteREFCOMERCIALFONE2: TStringField
      FieldName = 'REFCOMERCIALFONE2'
      Size = 15
    end
    object qClienteCIDADE: TIntegerField
      FieldName = 'CIDADE'
    end
    object qClienteTRANSPORTADORA: TStringField
      FieldName = 'TRANSPORTADORA'
      FixedChar = True
      Size = 1
    end
    object qClientePERCCOMISSAO: TFloatField
      FieldName = 'PERCCOMISSAO'
    end
    object qClienteTIPOCOMISSAO: TStringField
      FieldName = 'TIPOCOMISSAO'
      FixedChar = True
      Size = 1
    end
    object qClienteNOMECIDADE: TStringField
      FieldName = 'NOMECIDADE'
      Size = 30
    end
    object qClienteFORMAPGTO: TIntegerField
      FieldName = 'FORMAPGTO'
    end
  end
  object qsCliente: TDataSource
    DataSet = qCliente
    Left = 356
    Top = 160
  end
  object CReceberHist: TSQLDataSet
    CommandText = 
      'select * '#13#10'from CRECEBERHIST'#13#10'where TIPOHIST = '#39'D'#39' and'#13#10'        ' +
      '   NUMCRECEBER = :CODIGO and'#13#10'           PARCELA = :Parcela'#13#10'Ord' +
      'er by ITEM'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Parcela'
        ParamType = ptInput
      end>
    SQLConnection = Dm1.Conexao
    Left = 320
    Top = 336
  end
  object CReceberrHistP: TDataSetProvider
    DataSet = CReceberHist
    Left = 344
    Top = 336
  end
  object tCReceberHist: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'CReceberrHistP'
    Left = 368
    Top = 336
    object tCReceberHistNUMCRECEBER: TIntegerField
      FieldName = 'NUMCRECEBER'
      Required = True
    end
    object tCReceberHistPARCELA: TStringField
      FieldName = 'PARCELA'
      Required = True
      Size = 3
    end
    object tCReceberHistITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object tCReceberHistHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 70
    end
    object tCReceberHistDTHISTORICO: TDateField
      FieldName = 'DTHISTORICO'
    end
    object tCReceberHistDTULTPGTO: TDateField
      FieldName = 'DTULTPGTO'
    end
    object tCReceberHistVLRULTPGTO: TFloatField
      FieldName = 'VLRULTPGTO'
    end
    object tCReceberHistVLRULTJUROSPAGO: TFloatField
      FieldName = 'VLRULTJUROSPAGO'
    end
    object tCReceberHistVLRULTDESCONTO: TFloatField
      FieldName = 'VLRULTDESCONTO'
    end
    object tCReceberHistVLRULTDESPESA: TFloatField
      FieldName = 'VLRULTDESPESA'
    end
    object tCReceberHistTIPOHIST: TStringField
      FieldName = 'TIPOHIST'
      FixedChar = True
      Size = 1
    end
    object tCReceberHistNUMMOVFINANC: TIntegerField
      FieldName = 'NUMMOVFINANC'
    end
    object tCReceberHistNUMMOVJUROS: TIntegerField
      FieldName = 'NUMMOVJUROS'
    end
    object tCReceberHistVLRULTDEVOLUCAO: TFloatField
      FieldName = 'VLRULTDEVOLUCAO'
    end
    object tCReceberHistNUMEXTCOMISSAO: TIntegerField
      FieldName = 'NUMEXTCOMISSAO'
    end
  end
  object CReceberExc: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'CodCliente'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'NumNota'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'DELETE FROM CRECEBERPARC'
      'WHERE CODCLIENTE = :CodCliente and'
      '               NUMNOTA = :NumNota')
    SQLConnection = Dm1.Conexao
    Left = 300
    Top = 208
  end
  object CReceberExcP: TDataSetProvider
    DataSet = CReceberExc
    Left = 320
    Top = 208
  end
  object qCReceberExc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CReceberExcP'
    Left = 340
    Top = 208
  end
  object PopupMenu1: TPopupMenu
    Left = 435
    Top = 424
    object ImprimirConsulta1: TMenuItem
      Caption = 'Imprimir Consulta'
      OnClick = ImprimirConsulta1Click
    end
    object ImprimirBoletos1: TMenuItem
      Caption = 'Imprimir Boletos'
      OnClick = ImprimirBoletos1Click
    end
    object ImprimirContasaReceberDetalhado1: TMenuItem
      Caption = 'Imprimir Contas a Receber Detalhado'
      OnClick = ImprimirContasaReceberDetalhado1Click
    end
    object ImprimirAcumuladodeClientes1: TMenuItem
      Caption = 'Imprimir Acumulado de Clientes'
      OnClick = ImprimirAcumuladodeClientes1Click
    end
    object ImprimirRecibo1: TMenuItem
      Caption = 'Imprimir Recibo'
      OnClick = ImprimirRecibo1Click
    end
  end
end
