object fProduto: TfProduto
  Left = 395
  Top = 162
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Produtos'
  ClientHeight = 550
  ClientWidth = 697
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 697
    Height = 513
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Consulta'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 689
        Height = 485
        Align = alClient
        BevelOuter = bvLowered
        TabOrder = 0
        object Label1: TLabel
          Left = 27
          Top = 27
          Width = 44
          Height = 13
          Caption = 'Consulta:'
        end
        object Label21: TLabel
          Left = 80
          Top = 5
          Width = 135
          Height = 13
          Caption = 'Campo para fazer a consulta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 264
          Top = 5
          Width = 292
          Height = 13
          Caption = 'Informar os dados para a consulta, conforme o campo ao lado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object JvDBGrid1: TJvDBGrid
          Left = 1
          Top = 42
          Width = 687
          Height = 442
          Align = alBottom
          DataSource = qsProduto
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = JvDBGrid1DblClick
          OnTitleClick = JvDBGrid1TitleClick
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Title.Alignment = taCenter
              Width = 47
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'TIPO'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Alignment = taCenter
              Title.Caption = 'Nome'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNIDADE'
              Title.Alignment = taCenter
              Title.Caption = 'U.M.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRECOVENDA'
              Title.Alignment = taCenter
              Title.Caption = 'Pre'#231'o de Venda'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRECOMINIMO'
              Title.Alignment = taCenter
              Title.Caption = 'Pre'#231'o M'#237'nimo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GRUPO'
              Title.Alignment = taCenter
              Title.Caption = 'Grupo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODBARRA'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo de Barra'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DTREAJUSTE'
              Title.Alignment = taCenter
              Title.Caption = 'Dt. Reajuste'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DTCADASTRO'
              Title.Alignment = taRightJustify
              Title.Caption = 'Dt. Cadastro'
              Width = 67
              Visible = True
            end>
        end
        object JvComboBox1: TJvComboBox
          Left = 76
          Top = 19
          Width = 177
          Height = 21
          MaxPixel.Font.Charset = DEFAULT_CHARSET
          MaxPixel.Font.Color = clWindowText
          MaxPixel.Font.Height = -11
          MaxPixel.Font.Name = 'MS Sans Serif'
          MaxPixel.Font.Style = []
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 0
          Text = 'Produto'
          OnEnter = JvComboBox1Enter
          Items.Strings = (
            'Produto'
            'Grupo'
            'Sit. Tribut'#225'ria'
            'Fornecedor'
            'M'#227'o-de-Obra')
        end
        object Edit3: TEdit
          Left = 255
          Top = 19
          Width = 425
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          OnChange = Edit3Change
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
        Width = 689
        Height = 485
        Align = alClient
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 0
        object Label3: TLabel
          Left = 54
          Top = 16
          Width = 37
          Height = 13
          Caption = 'Nome:'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 65
          Top = 87
          Width = 26
          Height = 13
          Caption = 'U.M.:'
          FocusControl = DBEdit2
        end
        object Label6: TLabel
          Left = 39
          Top = 182
          Width = 52
          Height = 13
          Caption = 'Aliq. ICMS:'
          FocusControl = DBEdit3
        end
        object Label7: TLabel
          Left = 207
          Top = 182
          Width = 39
          Height = 13
          Caption = 'Aliq. IPI:'
          FocusControl = DBEdit4
        end
        object Label8: TLabel
          Left = 238
          Top = 159
          Width = 80
          Height = 13
          Caption = 'Estoque M'#237'nimo:'
          FocusControl = DBEdit5
        end
        object Label9: TLabel
          Left = 59
          Top = 111
          Width = 32
          Height = 13
          Cursor = crHandPoint
          Hint = 
            'Abre o cadastro de grupo para efetuar novo registro ou alterar r' +
            'egistro atual'
          Caption = 'Grupo:'
          ParentShowHint = False
          ShowHint = True
          OnClick = Label9Click
        end
        object Label14: TLabel
          Left = 26
          Top = 254
          Width = 65
          Height = 13
          Cursor = crHandPoint
          Hint = 
            'Abre o cadastro de situa'#231#227'o tribut'#225'ria para efetuar novo registr' +
            'o ou alterar registro atual'
          Caption = 'Sit. Tribut'#225'ria:'
          ParentShowHint = False
          ShowHint = True
          OnClick = Label14Click
        end
        object Label16: TLabel
          Left = 33
          Top = 206
          Width = 56
          Height = 13
          Cursor = crHandPoint
          Hint = 
            'Abre o cadastro de classifica'#231#227'o fiscal para efetuar novo regist' +
            'ro ou alterar registro atual'
          Caption = 'Clas. Fiscal:'
          FocusControl = DBEdit11
          ParentShowHint = False
          ShowHint = True
          OnClick = Label16Click
        end
        object Label30: TLabel
          Left = 32
          Top = 135
          Width = 57
          Height = 13
          Cursor = crHandPoint
          Hint = 
            'Abre o cadastro de pessoas para efetuar novo registro ou alterar' +
            ' registro atual'
          Caption = 'Fornecedor:'
          ParentShowHint = False
          ShowHint = True
          OnClick = Label30Click
        end
        object Label31: TLabel
          Left = 26
          Top = 454
          Width = 65
          Height = 13
          Caption = 'Dt. Cadastro::'
        end
        object Label32: TLabel
          Left = 34
          Top = 63
          Width = 53
          Height = 13
          Caption = 'C'#243'd. Barra:'
        end
        object Label4: TLabel
          Left = 407
          Top = 361
          Width = 61
          Height = 13
          Caption = 'Observa'#231#227'o:'
        end
        object Label2: TLabel
          Left = 4
          Top = 230
          Width = 87
          Height = 13
          Cursor = crHandPoint
          Hint = 
            'Abre o cadastro de situa'#231#227'o tribut'#225'ria para efetuar novo registr' +
            'o ou alterar registro atual'
          Alignment = taRightJustify
          Caption = 'Sit. Tribut'#225'ria C.F.:'
          ParentShowHint = False
          ShowHint = True
        end
        object Label19: TLabel
          Left = 64
          Top = 40
          Width = 24
          Height = 13
          Caption = 'Tipo:'
          FocusControl = DBEdit4
        end
        object Label17: TLabel
          Left = 29
          Top = 429
          Width = 62
          Height = 13
          Caption = 'Dt. Reajuste:'
        end
        object DBEdit1: TDBEdit
          Left = 93
          Top = 8
          Width = 301
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = Dm1.dsProduto
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 93
          Top = 79
          Width = 35
          Height = 21
          CharCase = ecUpperCase
          DataField = 'UNIDADE'
          DataSource = Dm1.dsProduto
          TabOrder = 3
        end
        object DBEdit3: TDBEdit
          Left = 93
          Top = 174
          Width = 67
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ALIQICMS'
          DataSource = Dm1.dsProduto
          TabOrder = 8
        end
        object DBEdit4: TDBEdit
          Left = 251
          Top = 174
          Width = 73
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ALIQIPI'
          DataSource = Dm1.dsProduto
          TabOrder = 9
        end
        object DBEdit5: TDBEdit
          Left = 322
          Top = 151
          Width = 73
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ESTMINIMO'
          DataSource = Dm1.dsProduto
          TabOrder = 7
        end
        object JvDBLookupCombo3: TJvDBLookupCombo
          Left = 93
          Top = 103
          Width = 302
          Height = 21
          DropDownCount = 8
          DataField = 'CODGRUPO'
          DataSource = Dm1.dsProduto
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DmCons.qsGrupo
          TabOrder = 4
        end
        object DBEdit11: TDBEdit
          Left = 92
          Top = 55
          Width = 178
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CODBARRA'
          DataSource = Dm1.dsProduto
          TabOrder = 2
        end
        object DBCheckBox1: TDBCheckBox
          Left = 341
          Top = 444
          Width = 60
          Height = 17
          Caption = 'Inativo'
          DataField = 'INATIVO'
          DataSource = Dm1.dsProduto
          TabOrder = 15
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object JvDBLookupCombo4: TJvDBLookupCombo
          Left = 93
          Top = 127
          Width = 302
          Height = 21
          DropDownCount = 8
          DataField = 'CODFORNECEDOR'
          DataSource = Dm1.dsProduto
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = qsPessoa
          TabOrder = 5
          OnChange = JvDBLookupCombo4Change
          OnClick = JvDBLookupCombo4Change
          OnEnter = JvDBLookupCombo4Change
        end
        object JvDBLookupCombo5: TJvDBLookupCombo
          Left = 93
          Top = 198
          Width = 233
          Height = 21
          DropDownCount = 8
          DataField = 'CLASFISCAL'
          DataSource = Dm1.dsProduto
          LookupField = 'CODCLASFISCAL'
          LookupDisplay = 'CODCLASFISCAL'
          LookupSource = DmCons.qsClasFiscal
          TabOrder = 10
        end
        object JvDBLookupCombo6: TJvDBLookupCombo
          Left = 93
          Top = 246
          Width = 233
          Height = 21
          DropDownCount = 8
          DataField = 'CODSITTRIB'
          DataSource = Dm1.dsProduto
          LookupField = 'ID'
          LookupDisplay = 'CODSITTRIB'
          LookupSource = DmCons.qsSitTributaria
          TabOrder = 12
        end
        object JvDBDateEdit2: TJvDBDateEdit
          Left = 93
          Top = 446
          Width = 90
          Height = 21
          DataField = 'DTCADASTRO'
          DataSource = Dm1.dsProduto
          NumGlyphs = 2
          TabOrder = 14
        end
        object DBMemo1: TDBMemo
          Left = 408
          Top = 376
          Width = 266
          Height = 89
          DataField = 'OBS'
          DataSource = Dm1.dsProduto
          ScrollBars = ssVertical
          TabOrder = 16
        end
        object GroupBox2: TGroupBox
          Left = 16
          Top = 272
          Width = 379
          Height = 129
          Caption = ' Op'#231#245'es de Pre'#231'os '
          TabOrder = 13
          object Label10: TLabel
            Left = 23
            Top = 30
            Width = 46
            Height = 13
            Caption = 'Pr. Custo:'
          end
          object Label12: TLabel
            Left = 20
            Top = 54
            Width = 49
            Height = 13
            Caption = 'M'#237'nimo %:'
            FocusControl = DBEdit7
          end
          object Label13: TLabel
            Left = 217
            Top = 54
            Width = 54
            Height = 13
            Caption = 'Pr. M'#237'nimo:'
            FocusControl = DBEdit8
          end
          object Label11: TLabel
            Left = 24
            Top = 78
            Width = 45
            Height = 13
            Caption = 'Venda %:'
          end
          object Label15: TLabel
            Left = 221
            Top = 78
            Width = 50
            Height = 13
            Caption = 'Pr. Venda:'
            FocusControl = DBEdit9
          end
          object Label18: TLabel
            Left = 216
            Top = 30
            Width = 55
            Height = 13
            Caption = 'Lote Econ.:'
          end
          object Label20: TLabel
            Left = 208
            Top = 102
            Width = 65
            Height = 13
            Caption = 'M'#227'o de Obra:'
          end
          object DBEdit6: TDBEdit
            Left = 73
            Top = 22
            Width = 90
            Height = 21
            CharCase = ecUpperCase
            DataField = 'PRECOCUSTO'
            DataSource = Dm1.dsProduto
            TabOrder = 0
          end
          object DBEdit7: TDBEdit
            Left = 73
            Top = 46
            Width = 90
            Height = 21
            CharCase = ecUpperCase
            DataField = 'PERCMINIMO'
            DataSource = Dm1.dsProduto
            TabOrder = 2
            OnEnter = DBEdit7Enter
            OnExit = DBEdit7Exit
          end
          object DBEdit8: TDBEdit
            Left = 276
            Top = 46
            Width = 90
            Height = 21
            CharCase = ecUpperCase
            DataField = 'PRECOMINIMO'
            DataSource = Dm1.dsProduto
            TabOrder = 3
          end
          object DBEdit9: TDBEdit
            Left = 73
            Top = 70
            Width = 90
            Height = 21
            CharCase = ecUpperCase
            DataField = 'PERCVENDA'
            DataSource = Dm1.dsProduto
            TabOrder = 4
            OnEnter = DBEdit9Enter
            OnExit = DBEdit9Exit
          end
          object DBEdit10: TDBEdit
            Left = 276
            Top = 70
            Width = 90
            Height = 21
            CharCase = ecUpperCase
            DataField = 'PRECOVENDA'
            DataSource = Dm1.dsProduto
            TabOrder = 5
          end
          object DBEdit12: TDBEdit
            Left = 276
            Top = 22
            Width = 90
            Height = 21
            CharCase = ecUpperCase
            DataField = 'LOTEECONOMICO'
            DataSource = Dm1.dsProduto
            TabOrder = 1
          end
          object DBEdit13: TDBEdit
            Left = 276
            Top = 94
            Width = 90
            Height = 21
            CharCase = ecUpperCase
            DataField = 'VLRMO'
            DataSource = Dm1.dsProduto
            TabOrder = 6
            OnEnter = DBEdit9Enter
            OnExit = DBEdit9Exit
          end
        end
        object DBCheckBox2: TDBCheckBox
          Left = 93
          Top = 153
          Width = 105
          Height = 17
          Caption = 'Possui Tamanho'
          DataField = 'POSSUITAMANHO'
          DataSource = Dm1.dsProduto
          TabOrder = 6
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox2Click
        end
        object JvDBLookupCombo1: TJvDBLookupCombo
          Left = 93
          Top = 222
          Width = 233
          Height = 21
          DropDownCount = 8
          DataField = 'CODSITTRIBCF'
          DataSource = Dm1.dsProduto
          LookupField = 'CODIGO'
          LookupDisplay = 'DESCRICAO'
          LookupSource = Dm1.dsSitTribCF
          TabOrder = 11
        end
        object JvDBComboBox2: TJvDBComboBox
          Left = 92
          Top = 32
          Width = 180
          Height = 21
          Style = csDropDownList
          DataField = 'TIPO'
          DataSource = Dm1.dsProduto
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'PRODUTO'
            'SERVI'#199'O')
          TabOrder = 1
          Values.Strings = (
            'P'
            'S')
        end
        object DBCheckBox3: TDBCheckBox
          Left = 93
          Top = 402
          Width = 156
          Height = 17
          Caption = 'Atualiza Pre'#231'o Autom'#225'tico'
          DataField = 'ATUALIZAPRECO'
          DataSource = Dm1.dsProduto
          TabOrder = 17
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox2Click
        end
        object JvDBDateEdit1: TJvDBDateEdit
          Left = 93
          Top = 421
          Width = 90
          Height = 21
          DataField = 'DTREAJUSTE'
          DataSource = Dm1.dsProduto
          NumGlyphs = 2
          TabOrder = 18
        end
        object GroupBox3: TGroupBox
          Left = 402
          Top = 8
          Width = 278
          Height = 345
          Caption = ' Fotos '
          Color = 10930928
          ParentColor = False
          TabOrder = 19
          object JvDBGrid3: TJvDBGrid
            Left = 4
            Top = 12
            Width = 270
            Height = 117
            DataSource = Dm1.dsProdutoFoto
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnKeyDown = JvDBGrid3KeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'NOME'
                Title.Alignment = taCenter
                Title.Caption = 'Nome'
                Width = 190
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CAMINHO'
                Title.Alignment = taCenter
                Title.Caption = 'Caminho '
                Visible = True
              end>
          end
          object StaticText5: TStaticText
            Left = 8
            Top = 132
            Width = 126
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
            TabOrder = 1
            OnClick = StaticText5Click
          end
          object StaticText6: TStaticText
            Left = 136
            Top = 132
            Width = 137
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
            TabOrder = 2
            OnClick = StaticText6Click
          end
          object Panel4: TPanel
            Left = 5
            Top = 156
            Width = 268
            Height = 185
            TabOrder = 3
            object Image1: TImage
              Left = 1
              Top = 1
              Width = 266
              Height = 183
              Align = alClient
              Stretch = True
            end
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Fotos/Tamanho'
      ImageIndex = 2
      OnShow = TabSheet3Show
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 689
        Height = 485
        Align = alClient
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 0
        object GroupBox1: TGroupBox
          Left = 0
          Top = 272
          Width = 683
          Height = 183
          Caption = ' Op'#231#245'es de Tamanho... '
          TabOrder = 0
          object JvDBGrid2: TJvDBGrid
            Left = 6
            Top = 18
            Width = 661
            Height = 157
            DataSource = Dm1.dsProdutoTam
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgCancelOnExit]
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
                Expanded = False
                FieldName = 'TAMANHO'
                Title.Alignment = taCenter
                Title.Caption = 'Tamanho'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRECOCUSTO'
                Title.Alignment = taCenter
                Title.Caption = 'Pre'#231'o de Custo'
                Width = 83
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRECOMINIMO'
                Title.Alignment = taCenter
                Title.Caption = 'Pre'#231'o M'#237'nimo'
                Width = 89
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRECOVENDA'
                Title.Alignment = taCenter
                Title.Caption = 'Pre'#231'o de Venda'
                Width = 94
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ESTMINIMO'
                Title.Alignment = taCenter
                Title.Caption = 'Est. M'#237'nimo'
                Width = 72
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODBARRA'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo de Barra'
                Width = 135
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DTREAJUST'
                Title.Alignment = taCenter
                Title.Caption = 'Data Reajuste'
                Width = 86
                Visible = True
              end>
          end
        end
        object StaticText1: TStaticText
          Left = 0
          Top = 453
          Width = 123
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
          TabOrder = 1
          OnClick = StaticText1Click
        end
        object StaticText2: TStaticText
          Left = 123
          Top = 453
          Width = 213
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
          TabOrder = 2
          OnClick = StaticText2Click
        end
        object StaticText3: TStaticText
          Left = 336
          Top = 453
          Width = 167
          Height = 18
          Cursor = crHandPoint
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '<Enter> Altera o item'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 3
          OnClick = StaticText3Click
        end
        object StaticText4: TStaticText
          Left = 503
          Top = 453
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
          TabOrder = 4
          OnClick = StaticText4Click
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 513
    Width = 697
    Height = 37
    Align = alBottom
    TabOrder = 1
    object JvxSpeedButton1: TJvxSpeedButton
      Left = 514
      Top = 5
      Width = 85
      Height = 27
      DropDownMenu = PopupMenu1
      Caption = 'Im&primir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        1E010000424D1E010000000000007600000028000000110000000E0000000100
        040000000000A800000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777000000000
        0077700000007707777777770707700000007000000000000070700000007077
        7777BBB770007000000070777777888770707000000070000000000000770000
        00007077777777770707000000007700000000007070000000007770FFFFFFFF
        07070000000077770F00000F00007000000077770FFFFFFFF077700000007777
        70F00000F07770000000777770FFFFFFFF077000000077777700000000077000
        0000}
      Layout = blGlyphLeft
      ParentFont = False
      Visible = False
    end
    object BitBtn5: TBitBtn
      Left = 344
      Top = 5
      Width = 85
      Height = 27
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
    object BitBtn3: TBitBtn
      Left = 259
      Top = 5
      Width = 85
      Height = 27
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
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 174
      Top = 5
      Width = 85
      Height = 27
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
        0400000000000001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333388888888883333330FFFFFFFF03FF3FF8FF33F3FF800300000FF0F
        00F088F888883F838838E00BFBFB0FFFFFF08883333F8F3333F8E0BFBF000FFF
        F0F088F3338883F3F838E0FBFBFBF0F00FF088F3333FF8F88F38E0BFBF00000B
        0FF088F3338888838338E0FBFBFBFBF0FFF088F33FFFFFF83338E0BF0000000F
        FFF088FF888888833FF8000BFB00B0FF00F08883FF88383388383330000B0FFF
        FFF03338888383333FF8333330B0FFFF00003333383833FF888833330B0FF00F
        0FF03333838F38838F383330B00FFFFF0F033338F88F33338F833309030FFFFF
        00333388838FFFFF883333303300000003333338338888888333}
      NumGlyphs = 2
    end
    object BitBtn1: TBitBtn
      Left = 89
      Top = 5
      Width = 85
      Height = 27
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
        0400000000000001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033388F3333333888333993333333
        300033F88FFF3333388839999993333333333888888F3333333F399999933333
        33003888888333333388333993333333330033388F3333333388333993333333
        3333333883333333333F333333333333330033333333F33333883333333C3333
        330033333338FF3333883333333CC333333333FFFFF88FFF3FF33CCCCCCCCCC3
        993338888888888F88F33CCCCCCCCCC3993338888888888388333333333CC333
        333333333338833333FF3333333C333330003333333833333888333333333333
        3000333333333333388833333333333333333333333333333333}
      NumGlyphs = 2
    end
    object BitBtn4: TBitBtn
      Left = 429
      Top = 5
      Width = 85
      Height = 27
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
        0400000000000001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333888888888F3333330F888888033333338F3F3F3F8F3333330F0707080
        33333338F8F8F8F8F3333330F070808033333338F8F8F8F8F3333330F0707080
        33333338F8F8F8F8F3333330F070808033333338F8F8F8F8F3333330F0707080
        333333F8F8F8F8F8F3F33030F070808030333838F8F8F8F8F8333300F0707080
        03333388F8F8F8F883333330F070808033333338F8F8F8F8F333333080808080
        33333338F8F8F8F8FF3333000000000003333388888888888F33330F77788888
        0333338FFFFFFFFF8F3333000000000003333388888888888333333330888033
        3333333338FFF8F3333333333000003333333333388888333333}
      NumGlyphs = 2
    end
  end
  object qCheca: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'D1'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID, DOCUMENTO, NOME'
      'FROM PESSOA'
      'WHERE DOCUMENTO = :D1')
    SQLConnection = Dm1.Conexao
    Left = 13
    Top = 505
    object qChecaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qChecaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 18
    end
    object qChecaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 581
    Top = 505
    object ImprimirConsulta1: TMenuItem
      Caption = 'Imprimir Consulta'
    end
    object ImprimirSelecionados1: TMenuItem
      Caption = 'Imprimir Selecionados'
    end
    object ImprimirMalaDireta1: TMenuItem
      Caption = 'Imprimir Mala Direta'
    end
  end
  object Produto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT PRODUTO.*, GRUPO.NOME GRUPO, '
      '              PESSOA.NOME FORNECEDOR, SITTRIBUTARIA.CODSITTRIB'
      'FROM PRODUTO'
      'LEFT JOIN GRUPO ON'
      '(PRODUTO.CODGRUPO = GRUPO.ID)'
      'LEFT JOIN PESSOA ON'
      '(PRODUTO.CODFORNECEDOR = PESSOA.ID)'
      'LEFT JOIN SITTRIBUTARIA ON'
      '(PRODUTO.CODSITTRIB = SITTRIBUTARIA.ID)'
      'ORDER BY PRODUTO.NOME')
    SQLConnection = Dm1.Conexao
    Left = 45
    Top = 504
  end
  object ProdutoP: TDataSetProvider
    DataSet = Produto
    Left = 64
    Top = 504
  end
  object qProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProdutoP'
    Left = 80
    Top = 504
    object qProdutoID: TIntegerField
      FieldName = 'ID'
    end
    object qProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object qProdutoCODGRUPO: TIntegerField
      FieldName = 'CODGRUPO'
    end
    object qProdutoALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
    end
    object qProdutoALIQIPI: TFloatField
      FieldName = 'ALIQIPI'
    end
    object qProdutoCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object qProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object qProdutoPOSSUITAMANHO: TStringField
      FieldName = 'POSSUITAMANHO'
      FixedChar = True
      Size = 1
    end
    object qProdutoOPCAOPRECO: TStringField
      FieldName = 'OPCAOPRECO'
      FixedChar = True
      Size = 1
    end
    object qProdutoDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object qProdutoCODSITTRIB: TIntegerField
      FieldName = 'CODSITTRIB'
    end
    object qProdutoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
      DisplayFormat = '0.00'
    end
    object qProdutoPERCMINIMO: TFloatField
      FieldName = 'PERCMINIMO'
    end
    object qProdutoPRECOMINIMO: TFloatField
      FieldName = 'PRECOMINIMO'
      DisplayFormat = '0.00'
    end
    object qProdutoPERCVENDA: TFloatField
      FieldName = 'PERCVENDA'
    end
    object qProdutoDTREAJUSTE: TDateField
      FieldName = 'DTREAJUSTE'
    end
    object qProdutoCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qProdutoESTMINIMO: TFloatField
      FieldName = 'ESTMINIMO'
    end
    object qProdutoOBS: TBlobField
      FieldName = 'OBS'
      Size = 1
    end
    object qProdutoATUALIZAPRECO: TStringField
      FieldName = 'ATUALIZAPRECO'
      FixedChar = True
      Size = 1
    end
    object qProdutoGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 30
    end
    object qProdutoFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 40
    end
    object qProdutoCODSITTRIB_1: TStringField
      FieldName = 'CODSITTRIB_1'
      Size = 3
    end
    object qProdutoCLASFISCAL: TStringField
      FieldName = 'CLASFISCAL'
      Size = 10
    end
    object qProdutoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qProdutoPRECOVENDA: TFMTBCDField
      FieldName = 'PRECOVENDA'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
  end
  object qsProduto: TDataSource
    DataSet = qProduto
    Left = 96
    Top = 504
  end
  object Pessoa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ID, NOME FROM PESSOA WHERE FORNECEDOR = '#39'1'#39' ORDER BY NOME')
    SQLConnection = Dm1.Conexao
    Left = 576
    Top = 80
  end
  object PessoaP: TDataSetProvider
    DataSet = Pessoa
    Left = 592
    Top = 80
  end
  object qPessoa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PessoaP'
    Left = 608
    Top = 80
    object qPessoaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object qsPessoa: TDataSource
    DataSet = qPessoa
    Left = 624
    Top = 80
  end
  object UCControls1: TUCControls
    GroupName = 'Produtos'
    UserControl = fMenu.UserControl1
    NotAllowed = naDisabled
    Left = 156
    Top = 177
  end
end
