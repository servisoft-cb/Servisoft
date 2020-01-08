object fNotaEntrada: TfNotaEntrada
  Left = 8
  Top = 7
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Nota de Entrada'
  ClientHeight = 544
  ClientWidth = 775
  Color = 10930928
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 775
    Height = 513
    ActivePage = TabSheet2
    Align = alTop
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Consulta'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 767
        Height = 485
        Align = alClient
        BevelOuter = bvLowered
        Color = 10930928
        TabOrder = 0
        object Label1: TLabel
          Left = 11
          Top = 16
          Width = 44
          Height = 13
          Caption = 'Consulta:'
        end
        object Label9: TLabel
          Left = 248
          Top = 16
          Width = 56
          Height = 13
          Caption = 'Data Inicial:'
        end
        object Label10: TLabel
          Left = 424
          Top = 16
          Width = 48
          Height = 13
          Caption = 'Data Final'
        end
        object JvDBGrid1: TJvDBGrid
          Left = 1
          Top = 35
          Width = 765
          Height = 449
          Align = alBottom
          DataSource = DmCons.qsNotaEntrada
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = JvDBGrid1DblClick
          OnTitleClick = JvDBGrid1TitleClick
          Columns = <
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
              FieldName = 'NOME'
              Title.Alignment = taCenter
              Title.Caption = 'Fornecedor'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'SERIE'
              Title.Alignment = taCenter
              Title.Caption = 'S'#233'rie'
              Width = 59
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'INFCONDPGTO'
              Title.Alignment = taCenter
              Title.Caption = 'Possui Cond.Pagto'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CODFISCALNATOPER'
              Title.Alignment = taCenter
              Title.Caption = 'CFOP'
              Width = 60
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DTEMISSAO'
              Title.Alignment = taCenter
              Title.Caption = 'Dt.Emiss'#227'o'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DTENTRADA'
              Title.Alignment = taCenter
              Title.Caption = 'Dt.Entrada'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ICMSIPI'
              Title.Alignment = taCenter
              Title.Caption = 'Icms Sobre IPI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRTOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Total'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'NRODUPLICATA'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' Duplicata'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BASEICMS'
              Title.Alignment = taCenter
              Title.Caption = 'Base ICMS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRICMS'
              Title.Alignment = taCenter
              Title.Caption = 'Valor ICMS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BASEIPI'
              Title.Alignment = taCenter
              Title.Caption = 'Base IPI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRIPI'
              Title.Alignment = taCenter
              Title.Caption = 'Valor IPI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLROUTRASDESP'
              Title.Alignment = taCenter
              Title.Caption = 'Valor O.Despesas'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODFORNECEDOR'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'd.Fornecedor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMENATOPER'
              Title.Caption = 'Descri'#231#227'o da Natureza de Opera'#231#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODNATOPER'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'd.Cadastro Nat.Opera'#231#227'o'
              Visible = True
            end>
        end
        object JvComboBox1: TJvComboBox
          Left = 58
          Top = 8
          Width = 177
          Height = 21
          MaxPixel.Font.Charset = DEFAULT_CHARSET
          MaxPixel.Font.Color = clWindowText
          MaxPixel.Font.Height = -11
          MaxPixel.Font.Name = 'MS Sans Serif'
          MaxPixel.Font.Style = []
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 1
          OnChange = JvComboBox1Change
          OnEnter = JvComboBox1Enter
          Items.Strings = (
            'N'#186' Nota'
            'Fornecedor'
            'Dt. Emiss'#227'o'
            'Dt. Entrada')
        end
        object JvDateEdit1: TJvDateEdit
          Left = 310
          Top = 8
          Width = 95
          Height = 21
          ButtonFlat = False
          NumGlyphs = 2
          TabOrder = 2
          OnChange = Edit1Change
        end
        object JvDateEdit2: TJvDateEdit
          Left = 480
          Top = 8
          Width = 95
          Height = 21
          ButtonFlat = False
          NumGlyphs = 2
          TabOrder = 3
          OnChange = Edit1Change
        end
        object Edit1: TEdit
          Left = 237
          Top = 8
          Width = 524
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 4
          OnChange = Edit1Change
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dados Gerais'
      ImageIndex = 1
      OnShow = TabSheet2Show
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 767
        Height = 485
        Align = alClient
        BevelOuter = bvLowered
        Color = 10930928
        Enabled = False
        TabOrder = 0
        object Label3: TLabel
          Left = 57
          Top = 16
          Width = 68
          Height = 13
          Caption = 'N'#186' da Nota:'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 98
          Top = 38
          Width = 27
          Height = 13
          Caption = 'S'#233'rie:'
        end
        object Label5: TLabel
          Left = 57
          Top = 62
          Width = 68
          Height = 13
          Caption = 'Data Emiss'#227'o:'
        end
        object Label4: TLabel
          Left = 297
          Top = 16
          Width = 69
          Height = 13
          Cursor = crHandPoint
          Hint = 
            'Abre o cadastro de pessoa para efetuar novo registro ou alterar ' +
            'registro atual'
          Caption = 'Fornecedor:'
          FocusControl = DBEdit1
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
        object Label6: TLabel
          Left = 300
          Top = 62
          Width = 66
          Height = 13
          Caption = 'Data Entrada:'
        end
        object Label7: TLabel
          Left = 255
          Top = 38
          Width = 111
          Height = 13
          Cursor = crHandPoint
          Hint = 
            'Abre o cadastro de natureza de opera'#231#227'o para efetuar novo regist' +
            'ro ou alterar registro atual'
          Caption = 'Natureza de Opera'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = Label7Click
        end
        object Label8: TLabel
          Left = 48
          Top = 84
          Width = 77
          Height = 13
          Caption = 'N'#186' Duplicata:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 242
          Top = 84
          Width = 124
          Height = 13
          Cursor = crHandPoint
          Hint = 
            'Abre o cadastro de natureza de opera'#231#227'o para efetuar novo regist' +
            'ro ou alterar registro atual'
          Caption = 'Nat.Opera'#231#227'o do Servi'#231'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = Label24Click
        end
        object DBEdit1: TDBEdit
          Left = 127
          Top = 8
          Width = 94
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NUMNOTA'
          DataSource = Dm1.dsNotaEntrada
          TabOrder = 0
          OnExit = DBEdit1Exit
        end
        object JvDBDateEdit2: TJvDBDateEdit
          Left = 126
          Top = 54
          Width = 95
          Height = 21
          DataField = 'DTEMISSAO'
          DataSource = Dm1.dsNotaEntrada
          NumGlyphs = 2
          TabOrder = 4
        end
        object JvDBLookupCombo4: TJvDBLookupCombo
          Left = 368
          Top = 8
          Width = 361
          Height = 21
          DropDownCount = 8
          DataField = 'CODFORNECEDOR'
          DataSource = Dm1.dsNotaEntrada
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = qsFornecedor
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 127
          Top = 32
          Width = 94
          Height = 21
          CharCase = ecUpperCase
          DataField = 'SERIE'
          DataSource = Dm1.dsNotaEntrada
          TabOrder = 2
        end
        object JvDBDateEdit1: TJvDBDateEdit
          Left = 368
          Top = 54
          Width = 97
          Height = 21
          DataField = 'DTENTRADA'
          DataSource = Dm1.dsNotaEntrada
          NumGlyphs = 2
          TabOrder = 5
        end
        object JvDBLookupCombo5: TJvDBLookupCombo
          Left = 368
          Top = 32
          Width = 97
          Height = 21
          DropDownCount = 8
          DataField = 'CODNATOPER'
          DataSource = Dm1.dsNotaEntrada
          LookupField = 'ID'
          LookupDisplay = 'CODIGO'
          LookupSource = DmCons.qsNatOperacao
          TabOrder = 3
        end
        object Panel4: TPanel
          Left = 1
          Top = 439
          Width = 765
          Height = 45
          Align = alBottom
          Color = clMoneyGreen
          TabOrder = 9
          object StaticText5: TStaticText
            Left = 222
            Top = 2
            Width = 105
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSunken
            Caption = 'Base ICMS'
            TabOrder = 0
          end
          object DBEdit3: TDBEdit
            Left = 222
            Top = 20
            Width = 105
            Height = 21
            DataField = 'BASEICMS'
            DataSource = Dm1.dsNotaEntrada
            TabOrder = 3
          end
          object StaticText6: TStaticText
            Left = 327
            Top = 2
            Width = 97
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSunken
            Caption = 'Valor ICMS'
            TabOrder = 8
          end
          object DBEdit4: TDBEdit
            Left = 327
            Top = 20
            Width = 97
            Height = 21
            DataField = 'VLRICMS'
            DataSource = Dm1.dsNotaEntrada
            TabOrder = 4
          end
          object StaticText8: TStaticText
            Left = 425
            Top = 2
            Width = 89
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSunken
            Caption = 'Valor IPI'
            TabOrder = 9
          end
          object DBEdit6: TDBEdit
            Left = 425
            Top = 20
            Width = 89
            Height = 21
            DataField = 'VLRIPI'
            DataSource = Dm1.dsNotaEntrada
            TabOrder = 5
          end
          object StaticText9: TStaticText
            Left = 515
            Top = 2
            Width = 92
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSunken
            Caption = 'Outras Despesas'
            TabOrder = 10
          end
          object DBEdit7: TDBEdit
            Left = 515
            Top = 20
            Width = 92
            Height = 21
            DataField = 'VLROUTRASDESP'
            DataSource = Dm1.dsNotaEntrada
            TabOrder = 6
            OnEnter = DBEdit7Enter
            OnExit = DBEdit7Exit
          end
          object StaticText10: TStaticText
            Left = 641
            Top = 2
            Width = 118
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSunken
            Caption = 'Valor Total da Nota'
            TabOrder = 11
          end
          object DBEdit8: TDBEdit
            Left = 641
            Top = 20
            Width = 118
            Height = 21
            DataField = 'VLRTOTAL'
            DataSource = Dm1.dsNotaEntrada
            TabOrder = 7
          end
          object StaticText7: TStaticText
            Left = 2
            Top = 2
            Width = 110
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSunken
            Caption = 'Valor Produtos'
            TabOrder = 12
          end
          object DBEdit5: TDBEdit
            Left = 2
            Top = 20
            Width = 110
            Height = 21
            DataField = 'VLRTOTALITENS'
            DataSource = Dm1.dsNotaEntrada
            TabOrder = 1
          end
          object StaticText11: TStaticText
            Left = 113
            Top = 2
            Width = 108
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSunken
            Caption = 'Valor Servi'#231'os'
            TabOrder = 13
          end
          object DBEdit10: TDBEdit
            Left = 113
            Top = 20
            Width = 108
            Height = 21
            DataField = 'VLRTOTALMOBRAS'
            DataSource = Dm1.dsNotaEntrada
            TabOrder = 2
          end
        end
        object StaticText1: TStaticText
          Left = 0
          Top = 418
          Width = 161
          Height = 18
          Cursor = crHandPoint
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '<Insert> Incluir item'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 10
          OnClick = StaticText1Click
        end
        object StaticText2: TStaticText
          Left = 162
          Top = 418
          Width = 215
          Height = 18
          Cursor = crHandPoint
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '<Delete> Exclui o item '
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 11
          OnClick = StaticText2Click
        end
        object StaticText3: TStaticText
          Left = 378
          Top = 418
          Width = 205
          Height = 18
          Cursor = crHandPoint
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '<Enter> Altera o item '
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 12
          OnClick = StaticText3Click
        end
        object StaticText4: TStaticText
          Left = 583
          Top = 418
          Width = 181
          Height = 18
          Cursor = crHandPoint
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Duplo clique para consulta'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 13
          OnClick = StaticText4Click
        end
        object DBEdit9: TDBEdit
          Left = 126
          Top = 76
          Width = 95
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NRODUPLICATA'
          DataSource = Dm1.dsNotaEntrada
          TabOrder = 6
          OnEnter = DBEdit9Enter
        end
        object JvDBLookupCombo2: TJvDBLookupCombo
          Left = 368
          Top = 76
          Width = 97
          Height = 21
          DropDownCount = 8
          DataField = 'CODNATOPERMOBRA'
          DataSource = Dm1.dsNotaEntrada
          LookupField = 'ID'
          LookupDisplay = 'CODIGO'
          LookupSource = DmCons.qsNatOperacao
          TabOrder = 7
          OnEnter = JvDBLookupCombo2Enter
        end
        object GroupBox1: TGroupBox
          Left = 518
          Top = 30
          Width = 234
          Height = 82
          Caption = ' Op'#231#245'es '
          TabOrder = 8
          OnExit = GroupBox1Exit
          object DBCheckBox1: TDBCheckBox
            Left = 32
            Top = 14
            Width = 177
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Informa Condi'#231#227'o de Pagamento:'
            DataField = 'INFCONDPGTO'
            DataSource = Dm1.dsNotaEntrada
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnEnter = DBCheckBox1Enter
          end
          object DBCheckBox2: TDBCheckBox
            Left = 70
            Top = 30
            Width = 139
            Height = 17
            Alignment = taLeftJustify
            Caption = 'C'#225'lcula ICMS sobre o IPI:'
            DataField = 'ICMSIPI'
            DataSource = Dm1.dsNotaEntrada
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnEnter = DBCheckBox2Enter
          end
          object DBCheckBox3: TDBCheckBox
            Left = 34
            Top = 46
            Width = 175
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Soma Total Itens nas Duplicatas:'
            DataField = 'SOMAPRODDUPL'
            DataSource = Dm1.dsNotaEntrada
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnEnter = DBCheckBox3Enter
          end
          object DBCheckBox4: TDBCheckBox
            Left = 18
            Top = 62
            Width = 191
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Soma Total Servi'#231'os nas Duplicatas:'
            DataField = 'SOMAMOBRADUPL'
            DataSource = Dm1.dsNotaEntrada
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnEnter = DBCheckBox4Enter
          end
        end
      end
      object PageControl2: TPageControl
        Left = 1
        Top = 112
        Width = 764
        Height = 305
        ActivePage = TSProdutos
        TabOrder = 1
        object TSProdutos: TTabSheet
          Caption = 'Produto'
          object JvDBGrid2: TJvDBGrid
            Left = 0
            Top = 0
            Width = 756
            Height = 277
            Hint = 'Duplo clique para consulta'
            DataSource = Dm1.dsNotaEntradaIt
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = JvDBGrid2DblClick
            OnKeyDown = JvDBGrid2KeyDown
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'ITEM'
                Title.Alignment = taCenter
                Title.Caption = 'Item'
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME'
                Title.Alignment = taCenter
                Title.Caption = 'Produto'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'TAMANHO'
                Title.Alignment = taCenter
                Title.Caption = 'Tamanho'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'UNIDADE'
                Title.Alignment = taCenter
                Title.Caption = 'Unid.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD'
                Title.Alignment = taCenter
                Title.Caption = 'Quantidade'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD2'
                Title.Alignment = taCenter
                Title.Caption = 'Quantidade 2'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRUNITARIO'
                Title.Alignment = taCenter
                Title.Caption = 'Valor Unit'#225'rio'
                Width = 73
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRTOTAL'
                Title.Alignment = taCenter
                Title.Caption = 'Valor Total'
                Width = 78
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ALIQICMS'
                Title.Alignment = taCenter
                Title.Caption = '% ICMS'
                Width = 48
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ALIQIPI'
                Title.Alignment = taCenter
                Title.Caption = '% IPI'
                Width = 48
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERCDESC'
                Title.Alignment = taCenter
                Title.Caption = '% Desconto'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRDESC'
                Title.Alignment = taCenter
                Title.Caption = 'Valor Desconto'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRIPI'
                Title.Alignment = taCenter
                Title.Caption = 'Valor IPI'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRICMS'
                Title.Alignment = taCenter
                Title.Caption = 'Valor ICMS'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CODSITTRIB'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'd.Sit.Tribut'#225'ria'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CODPRODUTO'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'd.Produto'
                Visible = True
              end>
          end
        end
        object TSMObras: TTabSheet
          Caption = 'M'#227'o de Obra (Servi'#231'os)'
          ImageIndex = 1
          object JvDBGrid4: TJvDBGrid
            Left = 0
            Top = -1
            Width = 756
            Height = 277
            Hint = 'Duplo clique para consulta'
            DataSource = Dm1.dsNotaEntradaMObra
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = JvDBGrid4DblClick
            OnKeyDown = JvDBGrid4KeyDown
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'ITEM'
                Title.Alignment = taCenter
                Title.Caption = 'Item'
                Width = 35
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOMEMOBRA'
                Title.Alignment = taCenter
                Title.Caption = 'Servi'#231'o (M'#227'o de Obra)'
                Width = 175
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CODFISCALNATOPER'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'd.Nat.Opera'#231#227'o'
                Width = 99
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD'
                Title.Alignment = taCenter
                Title.Caption = 'Quantidade'
                Width = 71
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRUNITARIO'
                Title.Alignment = taCenter
                Title.Caption = 'Valor Unit'#225'rio'
                Width = 77
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRTOTAL'
                Title.Alignment = taCenter
                Title.Caption = 'Valor Total'
                Width = 85
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ALIQISSQN'
                Title.Alignment = taCenter
                Title.Caption = '% ISSQN'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ALIQINSS'
                Title.Alignment = taCenter
                Title.Caption = '% INSS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ALIQIRF'
                Title.Alignment = taCenter
                Title.Caption = '% IRF'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRISSQN'
                Title.Alignment = taCenter
                Title.Caption = 'Valor ISSQN'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODMOBRA'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'd.M'#227'o Obra'
                Width = 81
                Visible = True
              end>
          end
        end
        object TSDuplicatas: TTabSheet
          Caption = 'Duplicata'
          ImageIndex = 2
          object JvDBGrid3: TJvDBGrid
            Left = 0
            Top = 0
            Width = 756
            Height = 277
            Hint = 'Duplo clique para consulta'
            DataSource = Dm1.dsNotaEntradaParc
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = JvDBGrid3DblClick
            OnKeyDown = JvDBGrid3KeyDown
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'ITEM'
                Title.Alignment = taCenter
                Title.Caption = 'Parcela'
                Width = 51
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMDUPLICATA'
                Title.Alignment = taCenter
                Title.Caption = 'N'#186' Duplicata'
                Width = 109
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DTVENCIMENTO'
                Title.Alignment = taCenter
                Title.Caption = 'Data Vencimento'
                Width = 102
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRVENCIMENTO'
                Title.Alignment = taCenter
                Title.Caption = 'Valor do Vencimento'
                Width = 126
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOMEBANCO'
                Title.Alignment = taCenter
                Title.Caption = 'Nome do Banco'
                Width = 186
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODBANCO'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'd.Banco'
                Width = 77
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMCPAGAR'
                Title.Alignment = taCenter
                Title.Caption = 'N'#186' CPagar'
                Visible = True
              end>
          end
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 511
    Width = 775
    Height = 33
    Align = alBottom
    Color = 10930928
    TabOrder = 1
    object BitBtn5: TBitBtn
      Left = 385
      Top = 3
      Width = 85
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
    object BitBtn4: TBitBtn
      Left = 470
      Top = 3
      Width = 85
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
      Left = 300
      Top = 3
      Width = 85
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
      Left = 215
      Top = 3
      Width = 85
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
      Left = 130
      Top = 3
      Width = 85
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
    object JvBitBtn1: TJvBitBtn
      Left = 555
      Top = 3
      Width = 85
      Height = 27
      Hint = 'Imprime o registro selecionado'
      Caption = 'Im&primir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = JvBitBtn1Click
      Glyph.Data = {
        1E010000424D1E010000000000007600000028000000110000000E0000000100
        040000000000A800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888000000000
        0088800000008808888888880808800000008000000000000080800000008088
        8888BBB880008000000080888888777880808000000080000000000000880000
        00008088888888880808000000008800000000008080000000008880FFFFFFFF
        08080000000088880F00000F00008000000088880FFFFFFFF088800000008888
        80F00000F08880000000888880FFFFFFFF088000000088888800000000088000
        0000}
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
  end
  object Fornecedor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ID, NOME'
      'FROM PESSOA'
      'WHERE FORNECEDOR = '#39'S'#39
      'ORDER BY NOME')
    SQLConnection = Dm1.Conexao
    Left = 340
    Top = 128
  end
  object FornecedorP: TDataSetProvider
    DataSet = Fornecedor
    Left = 372
    Top = 128
  end
  object qFornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FornecedorP'
    Left = 404
    Top = 128
    object qFornecedorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qFornecedorNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object qsFornecedor: TDataSource
    DataSet = qFornecedor
    Left = 436
    Top = 128
  end
  object CPagarParc: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'C1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'C2'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT NUMNOTA, QUITADO, CODFORNECEDOR'
      'FROM CPAGARPARC'
      'WHERE (CODFORNECEDOR = :C1) AND (NUMNOTA = :C2) AND'
      '               (VLRPAGTO > 0) ')
    SQLConnection = Dm1.Conexao
    Left = 153
    Top = 280
  end
  object CPagarParcP: TDataSetProvider
    DataSet = CPagarParc
    Left = 185
    Top = 280
  end
  object qCPagarParc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CPagarParcP'
    Left = 217
    Top = 280
    object qCPagarParcNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object qCPagarParcQUITADO: TStringField
      FieldName = 'QUITADO'
      FixedChar = True
      Size = 1
    end
    object qCPagarParcCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
  end
  object NotaEntradaIt: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NumNota'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CodFornecedor'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select NUMMOVEST'
      'from NOTAENTRADAIT'
      'where (NUMNOTA = :NumNota) AND (CODFORNECEDOR = :CodFornecedor)')
    SQLConnection = Dm1.Conexao
    Left = 385
    Top = 286
  end
  object NotaEntradaItP: TDataSetProvider
    DataSet = NotaEntradaIt
    Left = 400
    Top = 286
  end
  object tNotaEntradaIt: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'NotaEntradaItp'
    Left = 417
    Top = 286
    object tNotaEntradaItNUMMOVEST: TIntegerField
      FieldName = 'NUMMOVEST'
    end
  end
  object NotaEntradaImp: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'C1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'C2'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT NOTAENTRADA.CODFORNECEDOR, NOTAENTRADA.NUMNOTA,'
      'NOTAENTRADA.SERIE, NOTAENTRADA.DTEMISSAO,'
      'NOTAENTRADA.DTENTRADA, NOTAENTRADA.VLRTOTAL, '
      'NOTAENTRADA.VLRTOTALITENS, NOTAENTRADA.VLRTOTALMOBRAS,'
      'PESSOA.NOME'
      'FROM NOTAENTRADA'
      'INNER JOIN pessoa ON'
      'NOTAENTRADA.CODFORNECEDOR = PESSOA.id'
      'WHERE (PESSOA.fornecedor = '#39'S'#39')'
      'AND (NOTAENTRADA.NUMNOTA = :C1)'
      'AND (NOTAENTRADA.CODFORNECEDOR = :C2)')
    SQLConnection = Dm1.Conexao
    Left = 605
    Top = 479
  end
  object NotaEntradaImpP: TDataSetProvider
    DataSet = NotaEntradaImp
    Left = 621
    Top = 479
  end
  object qNotaEntradaImp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'NotaEntradaImpP'
    Left = 637
    Top = 479
    object qNotaEntradaImpCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object qNotaEntradaImpNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
      Required = True
    end
    object qNotaEntradaImpSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object qNotaEntradaImpDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object qNotaEntradaImpDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object qNotaEntradaImpNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qNotaEntradaImpVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qNotaEntradaImpVLRTOTALITENS: TFloatField
      FieldName = 'VLRTOTALITENS'
      DisplayFormat = '###,###,##0.00'
    end
    object qNotaEntradaImpVLRTOTALMOBRAS: TFloatField
      FieldName = 'VLRTOTALMOBRAS'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object qsNotaEntradaImp: TDataSource
    DataSet = qNotaEntradaImp
    Left = 653
    Top = 479
  end
  object CPagarParc2: TSQLDataSet
    CommandText = 
      'select CPAGARPARC.*'#13#10'from CPAGARPARC'#13#10'where CODFORNECEDOR = :COD' +
      'IGO and'#13#10'           NUMDUPLICATA = :NumDuplicata'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NumDuplicata'
        ParamType = ptInput
      end>
    SQLConnection = Dm1.Conexao
    Left = 177
    Top = 376
  end
  object CPagarParc2P: TDataSetProvider
    DataSet = CPagarParc2
    Left = 209
    Top = 376
  end
  object tCPagarParc2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CPagarParc2P'
    Left = 241
    Top = 376
    object tCPagarParc2NUMCPAGAR: TIntegerField
      FieldName = 'NUMCPAGAR'
      Required = True
    end
    object tCPagarParc2PARCELA: TStringField
      FieldName = 'PARCELA'
      Required = True
      Size = 3
    end
    object tCPagarParc2NUMDUPLICATA: TIntegerField
      FieldName = 'NUMDUPLICATA'
    end
    object tCPagarParc2VLRVENCIMENTO: TFloatField
      FieldName = 'VLRVENCIMENTO'
    end
    object tCPagarParc2DTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object tCPagarParc2QUITADO: TStringField
      FieldName = 'QUITADO'
      FixedChar = True
      Size = 1
    end
    object tCPagarParc2VLRJUROS: TFloatField
      FieldName = 'VLRJUROS'
    end
    object tCPagarParc2DTPAGTO: TDateField
      FieldName = 'DTPAGTO'
    end
    object tCPagarParc2CODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object tCPagarParc2NUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object tCPagarParc2VLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
    end
    object tCPagarParc2VLRPAGTO: TFloatField
      FieldName = 'VLRPAGTO'
    end
    object tCPagarParc2VLRRESTANTE: TFloatField
      FieldName = 'VLRRESTANTE'
    end
    object tCPagarParc2CODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object tCPagarParc2VLRDESPESA: TFloatField
      FieldName = 'VLRDESPESA'
    end
    object tCPagarParc2CODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
    object tCPagarParc2PGCARTORIO: TStringField
      FieldName = 'PGCARTORIO'
      FixedChar = True
      Size = 1
    end
    object tCPagarParc2TITPROTESTADO: TStringField
      FieldName = 'TITPROTESTADO'
      FixedChar = True
      Size = 1
    end
    object tCPagarParc2QTDDIASPROT: TIntegerField
      FieldName = 'QTDDIASPROT'
    end
    object tCPagarParc2DTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object tCPagarParc2DIASATRASO: TIntegerField
      FieldName = 'DIASATRASO'
    end
    object tCPagarParc2JUROSPAGOS: TFloatField
      FieldName = 'JUROSPAGOS'
    end
    object tCPagarParc2CANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object tCPagarParc2TIPODOC: TStringField
      FieldName = 'TIPODOC'
      Size = 2
    end
    object tCPagarParc2VLRDEVOLUCAO: TFloatField
      FieldName = 'VLRDEVOLUCAO'
    end
    object tCPagarParc2DTRECTO: TDateField
      FieldName = 'DTRECTO'
    end
    object tCPagarParc2CODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
    end
    object tCPagarParc2DTDEVOLUCAO: TDateField
      FieldName = 'DTDEVOLUCAO'
    end
  end
end
