object fMovAvulso: TfMovAvulso
  Left = 14
  Top = 32
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Movimentos Avulsos'
  ClientHeight = 509
  ClientWidth = 775
  Color = clActiveBorder
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
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
    Width = 775
    Height = 475
    ActivePage = TabSheet2
    Align = alTop
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Consulta'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 767
        Height = 447
        Align = alClient
        BevelOuter = bvLowered
        Color = clActiveBorder
        TabOrder = 0
        object Label1: TLabel
          Left = 10
          Top = 16
          Width = 44
          Height = 13
          Caption = 'Consulta:'
        end
        object Label12: TLabel
          Left = 248
          Top = 16
          Width = 56
          Height = 13
          Caption = 'Data Inicial:'
        end
        object Label13: TLabel
          Left = 424
          Top = 16
          Width = 48
          Height = 13
          Caption = 'Data Final'
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
          TabOrder = 0
          OnChange = JvComboBox1Change
          OnEnter = JvComboBox1Enter
          Items.Strings = (
            'N'#186' Mov.'
            'Cliente'
            'Dt. Emiss'#227'o')
        end
        object JvDateEdit1: TJvDateEdit
          Left = 310
          Top = 8
          Width = 95
          Height = 21
          ButtonFlat = False
          NumGlyphs = 2
          TabOrder = 1
          OnChange = Edit1Change
        end
        object JvDateEdit2: TJvDateEdit
          Left = 480
          Top = 8
          Width = 95
          Height = 21
          ButtonFlat = False
          NumGlyphs = 2
          TabOrder = 2
          OnChange = Edit1Change
        end
        object Edit1: TEdit
          Left = 237
          Top = 8
          Width = 524
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 3
          OnChange = Edit1Change
        end
        object SMDBGrid1: TSMDBGrid
          Left = 1
          Top = 31
          Width = 765
          Height = 450
          DataSource = DmCons.qsMovAvulso
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          TabOrder = 4
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Flat = False
          BandsFont.Charset = DEFAULT_CHARSET
          BandsFont.Color = clWindowText
          BandsFont.Height = -11
          BandsFont.Name = 'MS Sans Serif'
          BandsFont.Style = []
          Groupings = <>
          GridStyle.Style = gsCustom
          GridStyle.OddColor = cl3DLight
          GridStyle.EvenColor = clWindow
          TitleHeight.PixelCount = 24
          FooterColor = clBtnFace
          ExOptions = [eoAutoWidth, eoBooleanAsCheckBox, eoCheckBoxSelect, eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 23
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          ColCount = 7
          RowCount = 2
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' Movimento'
              Width = 188
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DTEMISSAO'
              Title.Alignment = taCenter
              Title.Caption = 'Dt. Emiss'#227'o'
              Width = 141
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMECLIENTE'
              Title.Alignment = taCenter
              Title.Caption = 'Nome do Cliente'
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRTOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. Total'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRTOTALITENS'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. Total Itens'
              Width = 97
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CODCLIENTE'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'd. Cliente'
              Width = 115
              Visible = True
            end>
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
        Height = 447
        Align = alClient
        BevelOuter = bvLowered
        Color = clActiveBorder
        Enabled = False
        TabOrder = 0
        object Label5: TLabel
          Left = 11
          Top = 20
          Width = 82
          Height = 13
          Caption = 'Data Emiss'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 201
          Top = 20
          Width = 44
          Height = 13
          Cursor = crHandPoint
          Hint = 
            'Abre o cadastro de Pessoas para efetuar novo registro ou alterar' +
            ' registro atual'
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
        object StaticText1: TStaticText
          Left = 0
          Top = 426
          Width = 161
          Height = 18
          Cursor = crHandPoint
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '<Insert> Inclui item'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          OnClick = StaticText1Click
        end
        object StaticText2: TStaticText
          Left = 162
          Top = 426
          Width = 215
          Height = 18
          Cursor = crHandPoint
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '<Delete> Exclui o item'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          OnClick = StaticText2Click
        end
        object StaticText3: TStaticText
          Left = 378
          Top = 426
          Width = 205
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
          TabOrder = 2
          OnClick = StaticText3Click
        end
        object StaticText4: TStaticText
          Left = 583
          Top = 426
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
          TabOrder = 3
          OnClick = StaticText4Click
        end
        object JvDBDateEdit2: TJvDBDateEdit
          Left = 94
          Top = 12
          Width = 94
          Height = 21
          DataField = 'DTEMISSAO'
          DataSource = Dm1.dsMovAvulso
          NumGlyphs = 2
          TabOrder = 4
        end
        object JvDBLookupCombo4: TJvDBLookupCombo
          Left = 246
          Top = 12
          Width = 395
          Height = 21
          DropDownCount = 8
          DataField = 'CODCLIENTE'
          DataSource = Dm1.dsMovAvulso
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = qsCliente
          TabOrder = 5
        end
        object StaticText5: TStaticText
          Left = 550
          Top = 396
          Width = 105
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Valor Total:'
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit3: TDBEdit
          Left = 657
          Top = 392
          Width = 105
          Height = 21
          TabStop = False
          Color = clAqua
          DataField = 'VLRTOTAL'
          DataSource = Dm1.dsMovAvulso
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
      end
      object PageControl2: TPageControl
        Left = 1
        Top = 46
        Width = 763
        Height = 342
        ActivePage = TSDuplicatas
        TabOrder = 1
        object TabSheet3: TTabSheet
          Caption = 'TabSheet3'
          TabVisible = False
        end
        object TSProdutos: TTabSheet
          Caption = 'Produto'
          object JvDBGrid2: TJvDBGrid
            Left = 0
            Top = 2
            Width = 756
            Height = 311
            Hint = 'Duplo clique para consulta'
            DataSource = Dm1.dsMovAvulsoItens
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
                FieldName = 'CODIGO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ITENS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Width = 296
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRUNIT'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRTOTAL'
                Visible = True
              end>
          end
        end
        object TSDuplicatas: TTabSheet
          Caption = 'Duplicata'
          ImageIndex = 2
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 755
            Height = 50
            Align = alTop
            BevelInner = bvLowered
            BevelOuter = bvLowered
            Color = clActiveBorder
            Enabled = False
            TabOrder = 0
            object Label35: TLabel
              Left = 30
              Top = 16
              Width = 85
              Height = 13
              Hint = 'Clicar aqui para alterar ou cadastrar uma condi'#231#227'o'
              Caption = 'Cond.Pagamento:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = Label35Click
            end
            object JvDBLookupCombo6: TJvDBLookupCombo
              Left = 118
              Top = 8
              Width = 232
              Height = 21
              DropDownCount = 8
              DataField = 'CONDPGTO'
              DataSource = Dm1.dsMovAvulso
              LookupField = 'ID'
              LookupDisplay = 'NOME'
              LookupSource = DmCons.qsCondPgto
              TabOrder = 0
            end
            object BitBtn7: TBitBtn
              Left = 352
              Top = 6
              Width = 107
              Height = 23
              Caption = 'Gera Duplicatas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = BitBtn7Click
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
                FFF07F3FF3FF3FFF3FF70F00F00F000F00F07F773773777377370FFFFFFFFFFF
                FFF07F3FF3FF33FFFFF70F00F00FF00000F07F773773377777F70FEEEEEFF0F9
                FCF07F33333337F7F7F70FFFFFFFF0F9FCF07F3FFFF337F737F70F0000FFF0FF
                FCF07F7777F337F337370F0000FFF0FFFFF07F777733373333370FFFFFFFFFFF
                FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
                C880733777777777733700000000000000007777777777777777333333333333
                3333333333333333333333333333333333333333333333333333}
              NumGlyphs = 2
            end
          end
          object JvDBGrid3: TJvDBGrid
            Left = 0
            Top = 53
            Width = 756
            Height = 260
            Hint = 'Duplo clique para consulta'
            DataSource = Dm1.dsMovAvulsoParc
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = JvDBGrid3DblClick
            OnKeyDown = JvDBGrid3KeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'CODIGO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PARCELA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMCRECEBER'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTVENC'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Visible = True
              end>
          end
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 476
    Width = 775
    Height = 33
    Align = alBottom
    Color = clActiveBorder
    TabOrder = 1
    object BitBtn5: TBitBtn
      Left = 455
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
      TabOrder = 0
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
      Left = 540
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
      TabOrder = 1
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
      Left = 370
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
      TabOrder = 2
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
      Left = 285
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
      TabOrder = 3
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
      Left = 200
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
      TabOrder = 4
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
  end
  object Cliente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT PESSOA.*'
      'FROM PESSOA'
      'WHERE CLIENTE = '#39'1'#39
      'ORDER BY PESSOA.NOME'
      ''
      '')
    SQLConnection = Dm1.Conexao
    Left = 561
    Top = 222
  end
  object ClienteP: TDataSetProvider
    DataSet = Cliente
    Left = 576
    Top = 222
  end
  object qCliente: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'ClienteP'
    Left = 592
    Top = 222
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
    object qClienteOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
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
    object qClienteSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object qClienteDTCONTRATOINI: TDateField
      FieldName = 'DTCONTRATOINI'
    end
    object qClienteDTCONTRATOFIM: TDateField
      FieldName = 'DTCONTRATOFIM'
    end
    object qClienteCONTRATODEVOLVIDO: TDateField
      FieldName = 'CONTRATODEVOLVIDO'
    end
    object qClienteCOBENDERECO: TStringField
      FieldName = 'COBENDERECO'
      Size = 40
    end
    object qClienteCOBNUMERO: TIntegerField
      FieldName = 'COBNUMERO'
    end
    object qClienteCOBCOMPLEMENTO: TStringField
      FieldName = 'COBCOMPLEMENTO'
      Size = 10
    end
    object qClienteCOBBAIRRO: TStringField
      FieldName = 'COBBAIRRO'
      Size = 30
    end
    object qClienteCOBCIDADE: TIntegerField
      FieldName = 'COBCIDADE'
    end
    object qClienteCOBUF: TStringField
      FieldName = 'COBUF'
      Size = 2
    end
    object qClienteCOBCONTATO: TStringField
      FieldName = 'COBCONTATO'
      Size = 30
    end
    object qClienteENDNUMERO: TIntegerField
      FieldName = 'ENDNUMERO'
    end
    object qClienteENDCOMPLEMENTO: TStringField
      FieldName = 'ENDCOMPLEMENTO'
      Size = 15
    end
    object qClienteIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
    end
    object qClienteCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
    object qClienteAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 5
    end
    object qClienteNUMCONTACORRENTE: TStringField
      FieldName = 'NUMCONTACORRENTE'
      Size = 15
    end
    object qClienteLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 10
    end
    object qClienteSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object qClienteDIAPAGAMENTO: TIntegerField
      FieldName = 'DIAPAGAMENTO'
    end
    object qClienteCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object qClienteFORMAPGTO: TIntegerField
      FieldName = 'FORMAPGTO'
    end
    object qClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qClienteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 50
    end
    object qClienteSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object qClienteCONJUGE: TStringField
      FieldName = 'CONJUGE'
      Size = 40
    end
    object qClienteDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
    end
    object qClienteCEL: TStringField
      FieldName = 'CEL'
      Size = 15
    end
    object qClientePLANOSAUDE_ID: TIntegerField
      FieldName = 'PLANOSAUDE_ID'
    end
    object qClienteCOBCEP: TStringField
      FieldName = 'COBCEP'
      Size = 10
    end
    object qClienteVLRPGTO: TFloatField
      FieldName = 'VLRPGTO'
    end
  end
  object qsCliente: TDataSource
    DataSet = qCliente
    Left = 609
    Top = 214
  end
  object mDados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 500
    Top = 352
  end
end
