object fOS: TfOS
  Left = 126
  Top = 84
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ordem de Servi'#231'o - OS'
  ClientHeight = 523
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
    Height = 491
    ActivePage = TabSheet2
    Align = alTop
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Consulta'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 767
        Height = 463
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
          Top = 31
          Width = 765
          Height = 431
          Align = alBottom
          DataSource = DmCons.qsPedido
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
              FieldName = 'NUMORCAMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' Or'#231'amento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMECLIENTE'
              Title.Alignment = taCenter
              Title.Caption = 'Cliente'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DTPEDIDO'
              Title.Alignment = taCenter
              Title.Caption = 'Dt. Or'#231'amento'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DTPREVENTREGA'
              Title.Alignment = taCenter
              Title.Caption = 'Dt. Prev. Entr.'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DTENTREGA'
              Title.Alignment = taCenter
              Title.Caption = 'Dt. Entrega'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRTOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. Total'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMECONDPGTO'
              Title.Alignment = taCenter
              Title.Caption = 'Cond. Pagto.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PERCDESCONTO'
              Title.Alignment = taCenter
              Title.Caption = '% Desconto'
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
              Expanded = False
              FieldName = 'MOTIVOCANC'
              Title.Alignment = taCenter
              Title.Caption = 'Motivo do Cancelamento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMORCAMENTOCOP'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' Or'#231'amento'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'NUMLACTO'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' La'#231'to.'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CODCLIENTE'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'd.Cliente'
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
            'N'#186' Or'#231'amento'
            'Cliente'
            'Dt.Prevista de Entrega'
            'Dt.Entrega'
            'Dt.Or'#231'amento')
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
        Height = 463
        Align = alClient
        BevelOuter = bvLowered
        Color = 10930928
        Enabled = False
        TabOrder = 0
        object Label3: TLabel
          Left = 77
          Top = 16
          Width = 48
          Height = 13
          Caption = 'N'#186' O.S.:'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 43
          Top = 42
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
          Left = 322
          Top = 16
          Width = 44
          Height = 13
          Cursor = crHandPoint
          Hint = 
            'Abre o cadastro de pessoa para efetuar novo registro ou alterar ' +
            'registro atual'
          Alignment = taRightJustify
          Caption = 'Cliente:'
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
          Left = 259
          Top = 42
          Width = 107
          Height = 13
          Caption = 'Data Prevista Entrega:'
        end
        object Label7: TLabel
          Left = 96
          Top = 90
          Width = 29
          Height = 13
          Hint = 
            'Abre o cadastro de natureza de opera'#231#227'o para efetuar novo regist' +
            'ro ou alterar registro atual'
          Caption = 'Serial:'
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
        object Label13: TLabel
          Left = 564
          Top = 42
          Width = 66
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data Entrega:'
        end
        object Label15: TLabel
          Left = 562
          Top = 445
          Width = 82
          Height = 13
          Cursor = crHandPoint
          Hint = 
            'Abre o cadastro de pessoa para efetuar novo registro ou alterar ' +
            'registro atual'
          Alignment = taRightJustify
          Caption = 'Vlr.Total O.S.:'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = Label4Click
        end
        object Label11: TLabel
          Left = 92
          Top = 66
          Width = 33
          Height = 13
          Hint = 
            'Abre o cadastro de natureza de opera'#231#227'o para efetuar novo regist' +
            'ro ou alterar registro atual'
          Caption = 'Status:'
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
        object DBEdit1: TDBEdit
          Left = 127
          Top = 8
          Width = 94
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clInfoBk
          DataField = 'NUMORCAMENTO'
          DataSource = Dm1.dsPedido
          ReadOnly = True
          TabOrder = 0
        end
        object JvDBDateEdit2: TJvDBDateEdit
          Left = 127
          Top = 34
          Width = 95
          Height = 21
          DataField = 'DTPEDIDO'
          DataSource = Dm1.dsPedido
          NumGlyphs = 2
          TabOrder = 2
        end
        object JvDBLookupCombo4: TJvDBLookupCombo
          Left = 368
          Top = 8
          Width = 361
          Height = 21
          DropDownCount = 8
          DataField = 'CODCLIENTE'
          DataSource = Dm1.dsPedido
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DmCons.qsCliente
          TabOrder = 1
        end
        object JvDBDateEdit1: TJvDBDateEdit
          Left = 368
          Top = 34
          Width = 97
          Height = 21
          DataField = 'DTPREVENTREGA'
          DataSource = Dm1.dsPedido
          NumGlyphs = 2
          TabOrder = 3
        end
        object StaticText1: TStaticText
          Left = 0
          Top = 414
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
          TabOrder = 7
          OnClick = StaticText1Click
        end
        object StaticText2: TStaticText
          Left = 162
          Top = 414
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
          TabOrder = 8
          OnClick = StaticText2Click
        end
        object StaticText3: TStaticText
          Left = 378
          Top = 414
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
          TabOrder = 9
          OnClick = StaticText3Click
        end
        object StaticText4: TStaticText
          Left = 583
          Top = 414
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
          TabOrder = 10
          OnClick = StaticText4Click
        end
        object JvDBDateEdit3: TJvDBDateEdit
          Left = 632
          Top = 34
          Width = 97
          Height = 21
          TabStop = False
          DataField = 'DTENTREGA'
          DataSource = Dm1.dsPedido
          ReadOnly = True
          Color = clInfoBk
          NumGlyphs = 2
          TabOrder = 4
        end
        object DBEdit8: TDBEdit
          Left = 646
          Top = 437
          Width = 118
          Height = 21
          TabStop = False
          Color = clInfoBk
          DataField = 'VLRTOTAL'
          DataSource = Dm1.dsPedido
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit3: TDBEdit
          Left = 127
          Top = 82
          Width = 338
          Height = 21
          DataField = 'QTDDIASVALIDADE'
          DataSource = Dm1.dsPedido
          TabOrder = 5
        end
        object JvDBComboBox1: TJvDBComboBox
          Left = 127
          Top = 58
          Width = 162
          Height = 21
          Style = csDropDownList
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'Em aberto'
            'Em andamento'
            'Conclu'#237'da'
            '')
          TabOrder = 11
          Values.Strings = (
            '1'
            '2'
            '3')
        end
      end
      object PageControl2: TPageControl
        Left = 1
        Top = 115
        Width = 765
        Height = 278
        ActivePage = TSProdutos
        TabOrder = 1
        object TSProdutos: TTabSheet
          Caption = 'Produto'
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 491
    Width = 775
    Height = 32
    Align = alBottom
    Color = 10930928
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
  end
end
