object fContasPagar: TfContasPagar
  Left = 347
  Top = 228
  Anchors = []
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro/Consulta do Contas a Pagar'
  ClientHeight = 558
  ClientWidth = 788
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
    Width = 788
    Height = 525
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Consulta'
      DesignSize = (
        780
        497)
      object Label36: TLabel
        Left = 516
        Top = 464
        Width = 67
        Height = 13
        Cursor = crHandPoint
        Anchors = [akLeft, akBottom]
        Caption = 'Total Pago:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label37: TLabel
        Left = 491
        Top = 481
        Width = 92
        Height = 13
        Cursor = crHandPoint
        Anchors = [akLeft, akBottom]
        Caption = 'Total Pendente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label38: TLabel
        Left = 495
        Top = 446
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
        Left = 40
        Top = 458
        Width = 61
        Height = 13
        Cursor = crHandPoint
        Anchors = [akLeft, akBottom]
        Caption = 'Pendentes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = Label13Click
      end
      object JvColorSquare6: TJvColorSquare
        Left = 6
        Top = 456
        Width = 27
        Height = 15
        BorderStyle = bsSingle
        OnClick = Label13Click
      end
      object JvColorSquare1: TJvColorSquare
        Left = 6
        Top = 440
        Width = 27
        Height = 15
        Color = clTeal
        BorderStyle = bsSingle
        OnClick = Label14Click
      end
      object Label13: TLabel
        Left = 40
        Top = 443
        Width = 52
        Height = 13
        Cursor = crHandPoint
        Anchors = [akLeft, akBottom]
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
        Left = 7
        Top = 472
        Width = 27
        Height = 15
        Color = clRed
        BorderStyle = bsSingle
      end
      object Label15: TLabel
        Left = 41
        Top = 474
        Width = 57
        Height = 13
        Cursor = crHandPoint
        Caption = 'Atrasados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = Label15Click
      end
      object JvColorSquare5: TJvColorSquare
        Left = 135
        Top = 440
        Width = 27
        Height = 15
        Color = clBlue
        BorderStyle = bsSingle
      end
      object Label31: TLabel
        Left = 167
        Top = 442
        Width = 105
        Height = 13
        Cursor = crHandPoint
        Caption = 'T'#237'tulos Recebidos'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object JvColorSquare2: TJvColorSquare
        Left = 135
        Top = 456
        Width = 27
        Height = 15
        Color = clBtnFace
        BorderStyle = bsSingle
        OnClick = Label16Click
      end
      object Label16: TLabel
        Left = 167
        Top = 458
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
      object Label14: TLabel
        Left = 662
        Top = 446
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
        Left = 662
        Top = 464
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
        Left = 662
        Top = 481
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
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 780
        Height = 438
        BevelOuter = bvLowered
        TabOrder = 0
        object Label1: TLabel
          Left = 13
          Top = 16
          Width = 57
          Height = 13
          Caption = 'Fornecedor:'
        end
        object Label7: TLabel
          Left = 22
          Top = 40
          Width = 48
          Height = 13
          Caption = 'Duplicata:'
        end
        object Label22: TLabel
          Left = 157
          Top = 31
          Width = 173
          Height = 26
          Caption = 
            'Ap'#243's preenchido o campo para '#13#10'consulta, clicar "ENTER" para fil' +
            'trar!'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4210816
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object JvDBGrid1: TJvDBGrid
          Left = 1
          Top = 68
          Width = 778
          Height = 367
          DataSource = DmCons.qsCPagarParc
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = JvDBGrid1DblClick
          OnTitleClick = JvDBGrid1TitleClick
          OnGetCellParams = JvDBGrid1GetCellParams
          Columns = <
            item
              Expanded = False
              FieldName = 'NOMECENTROCUSTO'
              Title.Alignment = taCenter
              Title.Caption = 'C.Custo'
              Width = 49
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMEFORNECEDOR'
              Title.Alignment = taCenter
              Title.Caption = 'Fornecedor'
              Width = 214
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMDUPLICATA'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' Duplicata'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'PARCELA'
              Title.Alignment = taCenter
              Title.Caption = 'Parc.'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'NUMNOTA'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' Nota'
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
              Expanded = False
              FieldName = 'VLRRESTANTE'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. Restante'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DTVENCIMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Dt.Vecto.'
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clDiasAtraso'
              Title.Alignment = taCenter
              Title.Caption = 'D.Atraso'
              Width = 44
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRPAGTO'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr.Pagto.'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DTPAGTO'
              Title.Alignment = taCenter
              Title.Caption = 'Dt.Pagto'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRJUROS'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr.Juros'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CODFORNECEDOR'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'd.Fornecedor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRDESCONTO'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr.Desconto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PGCARTORIO'
              Title.Alignment = taCenter
              Title.Caption = 'Pagto.Cart'#243'rio'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TITPROTESTADO'
              Title.Alignment = taCenter
              Title.Caption = 'Tit.Protestado'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDDIASPROT'
              Title.Alignment = taCenter
              Title.Caption = 'Qtd.Dias Protesto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTMOVIMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Dt.Movimento'
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
              Alignment = taCenter
              Expanded = False
              FieldName = 'TIPODOC'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo Doc'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRDEVOLUCAO'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr.Devolu'#231#227'o'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DTRECTO'
              Title.Alignment = taCenter
              Title.Caption = 'Dt.Recto Boleto'
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
              Expanded = False
              FieldName = 'NUMCPAGAR'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' Lan'#231'amento'
              Visible = True
            end>
        end
        object JvDBLookupCombo1: TJvDBLookupCombo
          Left = 72
          Top = 8
          Width = 313
          Height = 21
          DropDownCount = 8
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = qsFornecedor
          TabOrder = 1
        end
        object JvIntegerEdit1: TJvIntegerEdit
          Left = 72
          Top = 32
          Width = 81
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
          Left = 465
          Top = 2
          Width = 307
          Height = 65
          BevelOuter = bvLowered
          Enabled = False
          TabOrder = 3
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
          object DBEdit11: TDBEdit
            Left = 41
            Top = 1
            Width = 257
            Height = 21
            Color = clBtnFace
            DataField = 'ENDERECO'
            DataSource = qsFornecedor
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit18: TDBEdit
            Left = 41
            Top = 22
            Width = 257
            Height = 21
            Color = clBtnFace
            DataField = 'NOMECIDADE'
            DataSource = qsFornecedor
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit19: TDBEdit
            Left = 41
            Top = 43
            Width = 30
            Height = 21
            Color = clBtnFace
            DataField = 'ESTADO'
            DataSource = qsFornecedor
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit20: TDBEdit
            Left = 157
            Top = 43
            Width = 141
            Height = 21
            Color = clBtnFace
            DataField = 'CEP'
            DataSource = qsFornecedor
            ReadOnly = True
            TabOrder = 3
          end
        end
        object BitBtn9: TBitBtn
          Left = 387
          Top = 4
          Width = 75
          Height = 25
          Hint = 'Filtra o cliente selecionado'
          Caption = 'Filtra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = BitBtn9Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dados Gerais (Parcela)'
      ImageIndex = 1
      OnShow = TabSheet2Show
      DesignSize = (
        780
        497)
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 780
        Height = 493
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 0
        DesignSize = (
          780
          493)
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
          Left = 60
          Top = 43
          Width = 69
          Height = 13
          Cursor = crHandPoint
          Hint = 
            'Abre o cadastro de pessoa para efetuar novo registro ou alterar ' +
            'registro atual'
          Caption = 'Fornecedor:'
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
          Left = 52
          Top = 66
          Width = 77
          Height = 13
          Caption = 'N'#186' Duplicata:'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 75
          Top = 113
          Width = 54
          Height = 13
          Alignment = taRightJustify
          Caption = 'Parcelas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 27
          Top = 158
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
          Top = 180
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
          Top = 297
          Width = 713
          Height = 2
          Anchors = [akLeft, akTop, akRight]
          Shape = bsTopLine
          Style = bsRaised
        end
        object Label2: TLabel
          Left = 8
          Top = 287
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
          Left = 20
          Top = 268
          Width = 109
          Height = 13
          Caption = 'Dt.Recebimento Titulo:'
        end
        object Label35: TLabel
          Left = 88
          Top = 202
          Width = 41
          Height = 13
          Caption = 'N'#186' Nota:'
        end
        object Label28: TLabel
          Left = 53
          Top = 89
          Width = 76
          Height = 13
          Cursor = crHandPoint
          Caption = 'Condi'#231#227'o Pgto.:'
          OnClick = Label28Click
        end
        object Label20: TLabel
          Left = 183
          Top = 102
          Width = 196
          Height = 26
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
        object Label44: TLabel
          Left = 51
          Top = 224
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
        end
        object Label42: TLabel
          Left = 95
          Top = 246
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
        end
        object JvDBDateEdit2: TJvDBDateEdit
          Left = 131
          Top = 128
          Width = 95
          Height = 21
          DataField = 'DTMOVIMENTO'
          DataSource = Dm1.dsCPagarParc
          NumGlyphs = 2
          TabOrder = 5
        end
        object JvDBLookupCombo4: TJvDBLookupCombo
          Left = 131
          Top = 35
          Width = 290
          Height = 21
          DropDownCount = 8
          DataField = 'CODFORNECEDOR'
          DataSource = Dm1.dsCPagarParc
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = qsFornecedor
          TabOrder = 1
          OnExit = JvDBLookupCombo4Exit
        end
        object DBEdit3: TDBEdit
          Left = 131
          Top = 58
          Width = 87
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NUMDUPLICATA'
          DataSource = Dm1.dsCPagarParc
          TabOrder = 2
        end
        object DBEdit1: TDBEdit
          Left = 131
          Top = 6
          Width = 87
          Height = 21
          CharCase = ecUpperCase
          Color = clInfoBk
          DataField = 'NUMCPAGAR'
          DataSource = Dm1.dsCPagarParc
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 131
          Top = 105
          Width = 46
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PARCELA'
          DataSource = Dm1.dsCPagarParc
          TabOrder = 4
          OnExit = DBEdit2Exit
        end
        object JvDBDateEdit1: TJvDBDateEdit
          Left = 131
          Top = 150
          Width = 95
          Height = 21
          DataField = 'DTVENCIMENTO'
          DataSource = Dm1.dsCPagarParc
          NumGlyphs = 2
          TabOrder = 6
        end
        object DBEdit4: TDBEdit
          Left = 131
          Top = 172
          Width = 95
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VLRVENCIMENTO'
          DataSource = Dm1.dsCPagarParc
          TabOrder = 7
        end
        object Panel5: TPanel
          Left = 454
          Top = 2
          Width = 323
          Height = 224
          Color = clSilver
          Enabled = False
          TabOrder = 13
          object Label8: TLabel
            Left = 22
            Top = 28
            Width = 47
            Height = 13
            Caption = 'Tipo Doc:'
          end
          object Label24: TLabel
            Left = 12
            Top = 54
            Width = 57
            Height = 13
            Caption = 'Dias Atraso:'
          end
          object Label25: TLabel
            Left = 8
            Top = 80
            Width = 61
            Height = 13
            Caption = 'Dt.Ult.Pagto:'
          end
          object Label27: TLabel
            Left = 187
            Top = 106
            Width = 61
            Height = 13
            Caption = 'Juros Pagos:'
          end
          object Label29: TLabel
            Left = 23
            Top = 133
            Width = 46
            Height = 13
            Caption = 'Vlr.Pagto:'
          end
          object Label30: TLabel
            Left = 8
            Top = 186
            Width = 61
            Height = 13
            Caption = 'Vlr.Restante:'
          end
          object Label32: TLabel
            Left = 3
            Top = 159
            Width = 70
            Height = 13
            Caption = 'Vlr.Devolu'#231#227'o:'
          end
          object Label33: TLabel
            Left = 188
            Top = 54
            Width = 60
            Height = 13
            Caption = 'Vlr.Despesa:'
          end
          object Label34: TLabel
            Left = 184
            Top = 80
            Width = 64
            Height = 13
            Caption = 'Vlr.Desconto:'
          end
          object Label21: TLabel
            Left = 5
            Top = 106
            Width = 64
            Height = 13
            Caption = 'Dt.Ult.Devol.:'
          end
          object DBEdit9: TDBEdit
            Left = 74
            Top = 20
            Width = 90
            Height = 21
            CharCase = ecUpperCase
            Color = clInfoBk
            DataField = 'TIPODOC'
            DataSource = Dm1.dsCPagarParc
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit6: TDBEdit
            Left = 74
            Top = 46
            Width = 90
            Height = 21
            CharCase = ecUpperCase
            Color = clInfoBk
            DataField = 'DIASATRASO'
            DataSource = Dm1.dsCPagarParc
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit7: TDBEdit
            Left = 74
            Top = 72
            Width = 90
            Height = 21
            CharCase = ecUpperCase
            Color = clInfoBk
            DataField = 'DTPAGTO'
            DataSource = Dm1.dsCPagarParc
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit10: TDBEdit
            Left = 250
            Top = 98
            Width = 69
            Height = 21
            CharCase = ecUpperCase
            Color = clInfoBk
            DataField = 'JUROSPAGOS'
            DataSource = Dm1.dsCPagarParc
            ReadOnly = True
            TabOrder = 3
          end
          object DBEdit12: TDBEdit
            Left = 74
            Top = 125
            Width = 90
            Height = 21
            CharCase = ecUpperCase
            Color = clInfoBk
            DataField = 'VLRPAGTO'
            DataSource = Dm1.dsCPagarParc
            ReadOnly = True
            TabOrder = 4
          end
          object DBEdit13: TDBEdit
            Left = 74
            Top = 178
            Width = 90
            Height = 21
            CharCase = ecUpperCase
            Color = clInfoBk
            DataField = 'VLRRESTANTE'
            DataSource = Dm1.dsCPagarParc
            ReadOnly = True
            TabOrder = 5
          end
          object DBEdit14: TDBEdit
            Left = 74
            Top = 151
            Width = 90
            Height = 21
            CharCase = ecUpperCase
            Color = clInfoBk
            DataField = 'VLRDEVOLUCAO'
            DataSource = Dm1.dsCPagarParc
            ReadOnly = True
            TabOrder = 6
          end
          object DBEdit15: TDBEdit
            Left = 250
            Top = 46
            Width = 69
            Height = 21
            CharCase = ecUpperCase
            Color = clInfoBk
            DataField = 'VLRDESPESA'
            DataSource = Dm1.dsCPagarParc
            ReadOnly = True
            TabOrder = 7
          end
          object DBEdit16: TDBEdit
            Left = 250
            Top = 72
            Width = 69
            Height = 21
            CharCase = ecUpperCase
            Color = clInfoBk
            DataField = 'VLRDESCONTO'
            DataSource = Dm1.dsCPagarParc
            ReadOnly = True
            TabOrder = 8
          end
          object DBEdit8: TDBEdit
            Left = 74
            Top = 98
            Width = 90
            Height = 21
            CharCase = ecUpperCase
            Color = clInfoBk
            DataField = 'DTDEVOLUCAO'
            DataSource = Dm1.dsCPagarParc
            ReadOnly = True
            TabOrder = 9
          end
        end
        object DBEdit17: TDBEdit
          Left = 131
          Top = 194
          Width = 95
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NUMNOTA'
          DataSource = Dm1.dsCPagarParc
          TabOrder = 8
        end
        object JvDBDateEdit3: TJvDBDateEdit
          Left = 131
          Top = 261
          Width = 95
          Height = 21
          DataField = 'DTRECTO'
          DataSource = Dm1.dsCPagarParc
          NumGlyphs = 2
          TabOrder = 11
        end
        object BitBtn10: TBitBtn
          Left = 231
          Top = 262
          Width = 112
          Height = 25
          Caption = 'Gerar Parcelas'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
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
        object JvDBLookupCombo2: TJvDBLookupCombo
          Left = 131
          Top = 81
          Width = 290
          Height = 21
          DropDownCount = 8
          DataField = 'CODCONDPGTO'
          DataSource = Dm1.dsCPagarParc
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DmCons.qsCondPgto
          TabOrder = 3
          OnExit = JvDBLookupCombo2Exit
        end
        object JvDBLookupCombo7: TJvDBLookupCombo
          Left = 130
          Top = 216
          Width = 290
          Height = 21
          DropDownCount = 8
          DataField = 'CODCENTROCUSTO'
          DataSource = Dm1.dsCPagarParc
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DmCons.qsCentroCusto
          TabOrder = 9
        end
        object JvDBLookupCombo3: TJvDBLookupCombo
          Left = 130
          Top = 238
          Width = 290
          Height = 21
          DropDownCount = 8
          DataField = 'CODBANCO'
          DataSource = Dm1.dsCPagarParc
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DmCons.qsBanco
          TabOrder = 10
        end
      end
      object JvDBGrid2: TJvDBGrid
        Left = 4
        Top = 303
        Width = 773
        Height = 190
        TabStop = False
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clInfoBk
        DataSource = Dm1.dsCPagarHist
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
            FieldName = 'ITEM'
            Title.Alignment = taCenter
            Title.Caption = 'Item'
            Width = 27
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTHISTORICO'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Hist'#243'rico'
            Width = 62
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTULTPGTO'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Pagto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRULTPGTO'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Pagto'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRULTJUROSPAGO'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Juros Pagos'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRULTDESCONTO'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Desconto'
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRULTDESPESA'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Despesa'
            Width = 63
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
            Expanded = False
            FieldName = 'TIPOHIST'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Width = 23
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HISTORICO'
            Title.Alignment = taCenter
            Title.Caption = 'Hist'#243'rico'
            Width = 507
            Visible = True
          end>
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 525
    Width = 788
    Height = 33
    Align = alBottom
    Color = 10930928
    TabOrder = 1
    object Bevel2: TBevel
      Left = 568
      Top = 1
      Width = 2
      Height = 31
      Shape = bsRightLine
      Style = bsRaised
    end
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
      Left = 183
      Top = 3
      Width = 84
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
      Left = 100
      Top = 3
      Width = 84
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
      Left = 16
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
      Width = 84
      Height = 27
      Cursor = crHandPoint
      Hint = 'Faz a devolu'#231#227'o da mercadoria'
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
      Left = 267
      Top = 3
      Width = 84
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
      TabOrder = 6
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
    object BitBtn6: TBitBtn
      Left = 693
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
      TabOrder = 7
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
  end
  object Fornecedor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT PESSOA.*, cidade.nome NomeCidade'
      'FROM PESSOA'
      'LEFT JOIN CIDADE ON'
      '(cidade.id = pessoa.cidade)'
      'WHERE (FORNECEDOR = '#39'1'#39') or (FUNCIONARIO = '#39'1'#39') '
      'ORDER BY FANTASIA')
    SQLConnection = Dm1.Conexao
    Left = 300
    Top = 160
  end
  object FornecedorP: TDataSetProvider
    DataSet = Fornecedor
    Left = 320
    Top = 160
  end
  object qFornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FornecedorP'
    Left = 340
    Top = 160
    object qFornecedorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qFornecedorNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qFornecedorFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 40
    end
    object qFornecedorPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object qFornecedorDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 18
    end
    object qFornecedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object qFornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 25
    end
    object qFornecedorCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qFornecedorESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object qFornecedorFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object qFornecedorFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object qFornecedorINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 15
    end
    object qFornecedorIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
      Size = 10
    end
    object qFornecedorESTCIVIL: TStringField
      FieldName = 'ESTCIVIL'
      Size = 12
    end
    object qFornecedorPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 25
    end
    object qFornecedorNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
    end
    object qFornecedorDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object qFornecedorOBSERVACAO: TBlobField
      FieldName = 'OBSERVACAO'
      Size = 1
    end
    object qFornecedorFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      FixedChar = True
      Size = 1
    end
    object qFornecedorCLIENTE: TStringField
      FieldName = 'CLIENTE'
      FixedChar = True
      Size = 1
    end
    object qFornecedorVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object qFornecedorREFPESSOAL1: TStringField
      FieldName = 'REFPESSOAL1'
      Size = 40
    end
    object qFornecedorREFPESSOAL2: TStringField
      FieldName = 'REFPESSOAL2'
      Size = 40
    end
    object qFornecedorREFPESSOALEND1: TStringField
      FieldName = 'REFPESSOALEND1'
      Size = 40
    end
    object qFornecedorREFPESSOALEND2: TStringField
      FieldName = 'REFPESSOALEND2'
      Size = 40
    end
    object qFornecedorREFPESSOALFONE1: TStringField
      FieldName = 'REFPESSOALFONE1'
      Size = 15
    end
    object qFornecedorREFPESSOALFONE2: TStringField
      FieldName = 'REFPESSOALFONE2'
      Size = 15
    end
    object qFornecedorREFCOMERCIAL1: TStringField
      FieldName = 'REFCOMERCIAL1'
      Size = 40
    end
    object qFornecedorREFCOMERCIAL2: TStringField
      FieldName = 'REFCOMERCIAL2'
      Size = 40
    end
    object qFornecedorREFCOMERCIALEND1: TStringField
      FieldName = 'REFCOMERCIALEND1'
      Size = 40
    end
    object qFornecedorREFCOMERCIALEND2: TStringField
      FieldName = 'REFCOMERCIALEND2'
      Size = 40
    end
    object qFornecedorREFCOMERCIALFONE1: TStringField
      FieldName = 'REFCOMERCIALFONE1'
      Size = 15
    end
    object qFornecedorREFCOMERCIALFONE2: TStringField
      FieldName = 'REFCOMERCIALFONE2'
      Size = 15
    end
    object qFornecedorCIDADE: TIntegerField
      FieldName = 'CIDADE'
    end
    object qFornecedorTRANSPORTADORA: TStringField
      FieldName = 'TRANSPORTADORA'
      FixedChar = True
      Size = 1
    end
    object qFornecedorPERCCOMISSAO: TFloatField
      FieldName = 'PERCCOMISSAO'
    end
    object qFornecedorTIPOCOMISSAO: TStringField
      FieldName = 'TIPOCOMISSAO'
      FixedChar = True
      Size = 1
    end
    object qFornecedorNOMECIDADE: TStringField
      FieldName = 'NOMECIDADE'
      Size = 30
    end
    object qFornecedorCODCENTROCUSTO: TIntegerField
      FieldName = 'CODCENTROCUSTO'
    end
  end
  object qsFornecedor: TDataSource
    DataSet = qFornecedor
    Left = 356
    Top = 160
  end
  object CPagarExc: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CodFornecedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'NumDuplicata'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'DELETE FROM CPAGARPARC'
      'WHERE CODFORNECEDOR = :CodFornecedor and'
      '               NUMDUPLICATA = :NumDuplicata'
      '')
    SQLConnection = Dm1.Conexao
    Left = 300
    Top = 208
  end
  object CPagarExcP: TDataSetProvider
    DataSet = CPagarExc
    Left = 320
    Top = 208
  end
  object qCPagarExc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CPagarExcP'
    Left = 340
    Top = 208
  end
  object CPagarHist: TSQLDataSet
    CommandText = 
      'select * '#13#10'from CPAGARHIST'#13#10'where TIPOHIST = '#39'D'#39' and'#13#10'          ' +
      ' NUMCPAGAR = :CODIGO and'#13#10'           PARCELA = :Parcela'#13#10'Order b' +
      'y ITEM'#13#10
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
    Left = 328
    Top = 336
  end
  object CPagarHistP: TDataSetProvider
    DataSet = CPagarHist
    Left = 352
    Top = 336
  end
  object tCPagarHist: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CPagarHistP'
    Left = 368
    Top = 336
    object tCPagarHistNUMCPAGAR: TIntegerField
      FieldName = 'NUMCPAGAR'
      Required = True
    end
    object tCPagarHistPARCELA: TStringField
      FieldName = 'PARCELA'
      Required = True
      Size = 3
    end
    object tCPagarHistITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object tCPagarHistHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 70
    end
    object tCPagarHistDTHISTORICO: TDateField
      FieldName = 'DTHISTORICO'
    end
    object tCPagarHistDTULTPGTO: TDateField
      FieldName = 'DTULTPGTO'
    end
    object tCPagarHistVLRULTPGTO: TFloatField
      FieldName = 'VLRULTPGTO'
    end
    object tCPagarHistVLRULTJUROSPAGO: TFloatField
      FieldName = 'VLRULTJUROSPAGO'
    end
    object tCPagarHistVLRULTDESCONTO: TFloatField
      FieldName = 'VLRULTDESCONTO'
    end
    object tCPagarHistVLRULTDESPESA: TFloatField
      FieldName = 'VLRULTDESPESA'
    end
    object tCPagarHistTIPOHIST: TStringField
      FieldName = 'TIPOHIST'
      FixedChar = True
      Size = 1
    end
    object tCPagarHistNUMMOVFINANC: TIntegerField
      FieldName = 'NUMMOVFINANC'
    end
    object tCPagarHistNUMMOVJUROS: TIntegerField
      FieldName = 'NUMMOVJUROS'
    end
    object tCPagarHistVLRULTDEVOLUCAO: TFloatField
      FieldName = 'VLRULTDEVOLUCAO'
    end
    object tCPagarHistCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 468
    Top = 384
    object ImprimirConsulta1: TMenuItem
      Caption = 'Imprimir Consulta'
      OnClick = ImprimirConsulta1Click
    end
    object ImprimirContasaReceberDetalhado1: TMenuItem
      Caption = 'Imprimir Contas a Pagar Detalhado'
      OnClick = ImprimirContasaReceberDetalhado1Click
    end
    object ImprimirRecibo1: TMenuItem
      Caption = 'Imprimir Recibo'
      OnClick = ImprimirRecibo1Click
    end
  end
  object ConsCPagar: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODFORNECEDOR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMDUPLICATA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT CODFORNECEDOR, NUMDUPLICATA'
      'FROM CPAGARPARC'
      'WHERE CODFORNECEDOR = :CODFORNECEDOR'
      '     AND  NUMDUPLICATA = :NUMDUPLICATA')
    SQLConnection = Dm1.Conexao
    Left = 516
    Top = 280
  end
  object ConsCPagarP: TDataSetProvider
    DataSet = ConsCPagar
    Left = 532
    Top = 280
  end
  object qConsCPagar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ConsCPagarP'
    Left = 548
    Top = 280
    object qConsCPagarCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object qConsCPagarNUMDUPLICATA: TIntegerField
      FieldName = 'NUMDUPLICATA'
    end
  end
end
