object fOrcamentoInst: TfOrcamentoInst
  Left = 98
  Top = 9
  Width = 616
  Height = 595
  Caption = 'Or'#231'amento'
  Color = clBtnFace
  Constraints.MinHeight = 500
  Constraints.MinWidth = 600
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 526
    Width = 600
    Height = 31
    Align = alBottom
    TabOrder = 2
    object Label28: TLabel
      Left = 360
      Top = 0
      Width = 222
      Height = 26
      Alignment = taRightJustify
      Caption = 
        'Obs.: O valor total do or'#231'amento somente ser'#225#13#10'atualizado quando' +
        ' o or'#231'amento for confirmado.'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 3
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Confirmar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 78
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Ca&ncelar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 592
    Height = 417
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Dados'
      DesignSize = (
        584
        389)
      object Label1: TLabel
        Left = 34
        Top = 229
        Width = 73
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cond. de pgto.:'
      end
      object Label2: TLabel
        Left = 81
        Top = 31
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data:'
      end
      object Label3: TLabel
        Left = 63
        Top = 185
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = 'Previs'#227'o:'
      end
      object Label10: TLabel
        Left = 230
        Top = 30
        Width = 33
        Height = 13
        Alignment = taRightJustify
        Caption = 'Status:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 256
        Top = 185
        Width = 57
        Height = 13
        Alignment = taRightJustify
        Caption = 'Entrega em:'
      end
      object Label8: TLabel
        Left = 76
        Top = 53
        Width = 30
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tipo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 3
        Top = 282
        Width = 161
        Height = 13
        Alignment = taRightJustify
        Anchors = [akLeft, akBottom]
        Caption = 'Descri'#231#227'o adicional do or'#231'amento'
      end
      object Label17: TLabel
        Left = 63
        Top = 75
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 63
        Top = 207
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = 'Validade:'
      end
      object Label22: TLabel
        Left = 67
        Top = 7
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Caption = 'N'#250'mero:'
      end
      object DBText1: TDBText
        Left = 112
        Top = 7
        Width = 65
        Height = 17
        DataField = 'NUMORCAMENTO'
        DataSource = Dm1.dsPedido
      end
      object Label26: TLabel
        Left = 206
        Top = 206
        Width = 19
        Height = 13
        Caption = 'dias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 58
        Top = 97
        Width = 49
        Height = 13
        Alignment = taRightJustify
        Caption = 'Endere'#231'o:'
      end
      object Label30: TLabel
        Left = 33
        Top = 251
        Width = 74
        Height = 13
        Alignment = taRightJustify
        Caption = 'Forma de pgto.:'
      end
      object Label31: TLabel
        Left = 265
        Top = 207
        Width = 79
        Height = 13
        Alignment = taRightJustify
        Caption = 'Melhor vcto.: dia'
      end
      object Label33: TLabel
        Left = 71
        Top = 141
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cidade:'
        OnClick = Label33Click
      end
      object Label34: TLabel
        Left = 80
        Top = 163
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fone:'
      end
      object Label35: TLabel
        Left = 70
        Top = 119
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'N'#250'mero'
      end
      object Label36: TLabel
        Left = 229
        Top = 119
        Width = 67
        Height = 13
        Alignment = taRightJustify
        Caption = 'Complemento:'
      end
      object SpeedButton1: TSpeedButton
        Left = 411
        Top = 66
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object JvDBLookupCombo1: TJvDBLookupCombo
        Left = 112
        Top = 221
        Width = 300
        Height = 21
        DropDownCount = 8
        DataField = 'CODCONDPGTO'
        DataSource = Dm1.dsPedido
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = DmCons.qsCondPgto
        TabOrder = 14
      end
      object JvDBDateEdit1: TJvDBDateEdit
        Left = 112
        Top = 23
        Width = 90
        Height = 21
        DataField = 'DTPEDIDO'
        DataSource = Dm1.dsPedido
        NumGlyphs = 2
        TabOrder = 0
        StartOfWeek = Sun
      end
      object JvDBDateEdit2: TJvDBDateEdit
        Left = 112
        Top = 177
        Width = 90
        Height = 21
        DataField = 'DTPREVENTREGA'
        DataSource = Dm1.dsPedido
        NumGlyphs = 2
        TabOrder = 10
        StartOfWeek = Sun
      end
      object JvDBComboBox1: TJvDBComboBox
        Left = 267
        Top = 22
        Width = 145
        Height = 21
        Style = csDropDownList
        DataField = 'SITUACAO'
        DataSource = Dm1.dsPedido
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Pendente'
          'Aprovado'
          'N'#227'o aprovado')
        TabOrder = 1
        Values.Strings = (
          '1'
          '2'
          '3')
      end
      object JvDBDateEdit3: TJvDBDateEdit
        Left = 321
        Top = 177
        Width = 90
        Height = 21
        DataField = 'DTENTREGA'
        DataSource = Dm1.dsPedido
        NumGlyphs = 2
        TabOrder = 11
        StartOfWeek = Sun
      end
      object JvDBComboBox3: TJvDBComboBox
        Left = 112
        Top = 45
        Width = 300
        Height = 21
        Style = csDropDownList
        DataField = 'TIPO'
        DataSource = Dm1.dsPedido
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Instala'#231#227'o'
          'Servi'#231'o avulso (evento)'
          'Servi'#231'o permanente'
          'Ordem de Servi'#231'o'
          'Reclama'#231#227'o')
        TabOrder = 2
        Values.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5')
        OnExit = JvDBComboBox3Exit
      end
      object DBMemo1: TDBMemo
        Left = 0
        Top = 300
        Width = 584
        Height = 89
        Align = alBottom
        DataField = 'OBSERVACAO'
        DataSource = Dm1.dsPedido
        TabOrder = 16
      end
      object JvDBLookupCombo2: TJvDBLookupCombo
        Left = 112
        Top = 67
        Width = 300
        Height = 21
        DropDownCount = 15
        DataField = 'CODCLIENTE'
        DataSource = Dm1.dsPedido
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = DmCons.qsPessoa
        TabOrder = 4
        TabStop = False
        OnCloseUp = JvDBLookupCombo2CloseUp
        OnEnter = JvDBLookupCombo2Enter
      end
      object DBEdit7: TDBEdit
        Left = 112
        Top = 199
        Width = 90
        Height = 21
        DataField = 'QTDDIASVALIDADE'
        DataSource = Dm1.dsPedido
        TabOrder = 12
      end
      object DBEdit8: TDBEdit
        Left = 112
        Top = 67
        Width = 281
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CLIENTE_NOME'
        DataSource = Dm1.dsPedido
        TabOrder = 3
        OnEnter = DBEdit8Enter
      end
      object DBEdit9: TDBEdit
        Left = 112
        Top = 89
        Width = 281
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ENDERECO'
        DataSource = Dm1.dsPedido
        TabOrder = 5
      end
      object JvDBLookupCombo4: TJvDBLookupCombo
        Left = 112
        Top = 243
        Width = 300
        Height = 21
        DropDownCount = 8
        DataField = 'FORMA_PGTO_ID'
        DataSource = Dm1.dsPedido
        LookupField = 'ID'
        LookupDisplay = 'DESCRICAO'
        LookupSource = Dm1.dsFormaPgto
        TabOrder = 15
      end
      object DBEdit16: TDBEdit
        Left = 350
        Top = 199
        Width = 59
        Height = 21
        DataField = 'MELHOR_VCTO'
        DataSource = Dm1.dsPedido
        TabOrder = 13
      end
      object DBEdit18: TDBEdit
        Left = 112
        Top = 155
        Width = 281
        Height = 21
        DataField = 'CLIENTE_FONE'
        DataSource = Dm1.dsPedido
        TabOrder = 9
      end
      object JvDBLookupCombo5: TJvDBLookupCombo
        Left = 112
        Top = 133
        Width = 300
        Height = 21
        DropDownCount = 8
        DataField = 'CIDADE_ID'
        DataSource = Dm1.dsPedido
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = Dm1.dsCidade
        TabOrder = 8
      end
      object DBEdit17: TDBEdit
        Left = 112
        Top = 111
        Width = 89
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ENDERECO_NUM'
        DataSource = Dm1.dsPedido
        TabOrder = 6
      end
      object DBEdit19: TDBEdit
        Left = 304
        Top = 111
        Width = 89
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ENDERECO_COMPL'
        DataSource = Dm1.dsPedido
        TabOrder = 7
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Servi'#231'os avulsos (eventos)'
      ImageIndex = 2
      object Label7: TLabel
        Left = 11
        Top = 15
        Width = 92
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tipo de Evento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 62
        Top = 40
        Width = 42
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data ini.:'
      end
      object Label11: TLabel
        Left = 62
        Top = 64
        Width = 42
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data fim:'
      end
      object Label12: TLabel
        Left = 207
        Top = 40
        Width = 33
        Height = 13
        Alignment = taRightJustify
        Caption = 'Hr. ini.:'
      end
      object Label13: TLabel
        Left = 207
        Top = 64
        Width = 33
        Height = 13
        Alignment = taRightJustify
        Caption = 'Hr. fim:'
      end
      object Label14: TLabel
        Left = 68
        Top = 112
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'Efetivo:'
      end
      object Label25: TLabel
        Left = 24
        Top = 135
        Width = 79
        Height = 13
        Alignment = taRightJustify
        Caption = 'Valor servi'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label29: TLabel
        Left = 73
        Top = 88
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'Horas:'
      end
      object JvDBDateEdit4: TJvDBDateEdit
        Left = 112
        Top = 32
        Width = 90
        Height = 21
        DataField = 'DATAINI'
        DataSource = Dm1.dsPedidoServico
        NumGlyphs = 2
        TabOrder = 1
        StartOfWeek = Sun
      end
      object JvDBDateEdit5: TJvDBDateEdit
        Left = 112
        Top = 56
        Width = 90
        Height = 21
        DataField = 'DATAFIM'
        DataSource = Dm1.dsPedidoServico
        NumGlyphs = 2
        TabOrder = 3
        StartOfWeek = Sun
      end
      object DBEdit3: TDBEdit
        Left = 248
        Top = 32
        Width = 55
        Height = 21
        DataField = 'HRINI'
        DataSource = Dm1.dsPedidoServico
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 248
        Top = 56
        Width = 55
        Height = 21
        DataField = 'HRFIM'
        DataSource = Dm1.dsPedidoServico
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 112
        Top = 104
        Width = 90
        Height = 21
        DataField = 'EFETIVO'
        DataSource = Dm1.dsPedidoServico
        TabOrder = 6
        OnExit = DBEdit5Exit
      end
      object JvDBLookupCombo3: TJvDBLookupCombo
        Left = 112
        Top = 8
        Width = 300
        Height = 21
        DropDownCount = 15
        DataField = 'SERVICOAVULSO_ID'
        DataSource = Dm1.dsPedidoServico
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = Dm1.dsServico
        TabOrder = 0
        OnEnter = JvDBLookupCombo3Enter
        OnExit = JvDBLookupCombo3Exit
      end
      object DBEdit11: TDBEdit
        Left = 112
        Top = 128
        Width = 90
        Height = 21
        DataField = 'VALORSERVICO'
        DataSource = Dm1.dsPedidoServico
        TabOrder = 7
        OnExit = DBEdit11Exit
      end
      object DBEdit15: TDBEdit
        Left = 112
        Top = 80
        Width = 90
        Height = 21
        DataField = 'DURACAO'
        DataSource = Dm1.dsPedidoServico
        TabOrder = 5
        OnExit = DBEdit5Exit
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Produtos'
      object Label21: TLabel
        Left = 11
        Top = 15
        Width = 92
        Height = 13
        Alignment = taRightJustify
        Caption = 'Valor M'#227'o-de-Obra:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label32: TLabel
        Left = 176
        Top = 16
        Width = 209
        Height = 13
        Caption = 'Deixar campo vazio para c'#225'lculo autom'#225'tico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Panel2: TPanel
        Left = 0
        Top = 358
        Width = 584
        Height = 31
        Align = alBottom
        TabOrder = 1
        object BitBtn3: TBitBtn
          Left = 3
          Top = 3
          Width = 75
          Height = 25
          Caption = '&Incluir'
          TabOrder = 0
          OnClick = BitBtn3Click
        end
        object BitBtn4: TBitBtn
          Left = 78
          Top = 3
          Width = 75
          Height = 25
          Caption = 'E&xcluir'
          TabOrder = 1
          OnClick = BitBtn4Click
        end
      end
      object JvDBGrid1: TJvDBGrid
        Left = 0
        Top = 32
        Width = 584
        Height = 326
        Align = alBottom
        DataSource = Dm1.dsPedidoIt
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = JvDBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ITEM'
            Width = 39
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD'
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNIDADE'
            Title.Caption = 'UN.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRUNITARIO'
            Title.Caption = 'VLR. UNIT.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRMO'
            Title.Caption = 'VLR. MO'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTAL'
            Title.Caption = 'VLR. TOTAL'
            Visible = True
          end>
      end
      object DBEdit12: TDBEdit
        Left = 112
        Top = 8
        Width = 57
        Height = 21
        DataField = 'VLRMO'
        DataSource = Dm1.dsPedido
        TabOrder = 0
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Cl'#225'usulas'
      ImageIndex = 4
      object JvDBGrid3: TJvDBGrid
        Left = 0
        Top = 0
        Width = 584
        Height = 201
        Align = alTop
        DataSource = Dm1.dsPedido_Clausula
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = JvDBGrid3DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'NOME'
            Width = 545
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 0
        Top = 358
        Width = 584
        Height = 31
        Align = alBottom
        TabOrder = 1
        object BitBtn7: TBitBtn
          Left = 3
          Top = 3
          Width = 75
          Height = 25
          Caption = '&Incluir'
          TabOrder = 0
          OnClick = BitBtn7Click
        end
        object BitBtn8: TBitBtn
          Left = 78
          Top = 3
          Width = 75
          Height = 25
          Caption = 'E&xcluir'
          TabOrder = 1
          OnClick = BitBtn8Click
        end
      end
      object DBRichEdit1: TDBRichEdit
        Left = 0
        Top = 201
        Width = 584
        Height = 157
        Align = alClient
        DataField = 'DESCRICAO'
        DataSource = Dm1.dsPedido_Clausula
        TabOrder = 2
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'OS'
      ImageIndex = 5
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 584
        Height = 389
        Align = alClient
        BevelOuter = bvLowered
        TabOrder = 0
        object PageControl2: TPageControl
          Left = 1
          Top = 1
          Width = 582
          Height = 387
          ActivePage = TabSheet10
          Align = alClient
          TabOrder = 0
          object TabSheet7: TTabSheet
            Caption = 'Servi'#231'os'
            object Panel7: TPanel
              Left = 0
              Top = 328
              Width = 574
              Height = 31
              Align = alBottom
              TabOrder = 0
              object BitBtn9: TBitBtn
                Left = 3
                Top = 3
                Width = 69
                Height = 25
                Caption = '&Incluir'
                TabOrder = 0
                OnClick = BitBtn9Click
              end
              object BitBtn10: TBitBtn
                Left = 78
                Top = 3
                Width = 75
                Height = 25
                Caption = 'E&xcluir'
                TabOrder = 1
              end
            end
            object JvDBGrid4: TJvDBGrid
              Left = 0
              Top = 0
              Width = 574
              Height = 328
              Align = alBottom
              DataSource = Dm1.dsPedidoServico
              ReadOnly = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'SERVICO'
                  Title.Alignment = taCenter
                  Width = 266
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTD'
                  Title.Alignment = taCenter
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALORSERVICO'
                  Title.Alignment = taCenter
                  Title.Caption = 'VALOR SERVICO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALORMES'
                  Title.Alignment = taCenter
                  Title.Caption = 'VALOR TOTAL'
                  Visible = True
                end>
            end
          end
          object TabSheet9: TTabSheet
            Caption = 'Problemas'
            ImageIndex = 2
            object DBMemo3: TDBMemo
              Left = 0
              Top = 0
              Width = 574
              Height = 359
              Align = alClient
              DataField = 'PROBLEMAS'
              DataSource = Dm1.dsPedido
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
          object TabSheet10: TTabSheet
            Caption = 'Solu'#231#245'es'
            ImageIndex = 3
            object DBMemo2: TDBMemo
              Left = 0
              Top = 0
              Width = 574
              Height = 359
              Align = alClient
              DataField = 'SOLUCOES'
              DataSource = Dm1.dsPedido
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 426
    Width = 600
    Height = 100
    Align = alBottom
    TabOrder = 1
    object Label5: TLabel
      Left = 3
      Top = 14
      Width = 128
      Height = 13
      Alignment = taRightJustify
      Caption = '(-) Percentual de desconto:'
    end
    object Label6: TLabel
      Left = 82
      Top = 38
      Width = 49
      Height = 13
      Alignment = taRightJustify
      Caption = 'Desconto:'
    end
    object Label16: TLabel
      Left = 366
      Top = 38
      Width = 133
      Height = 13
      Alignment = taRightJustify
      Caption = '(=) Valor total do or'#231'amento:'
    end
    object Label24: TLabel
      Left = 211
      Top = 38
      Width = 72
      Height = 13
      Alignment = taRightJustify
      Caption = '(+) Imposto (%):'
    end
    object Label27: TLabel
      Left = 221
      Top = 14
      Width = 62
      Height = 13
      Alignment = taRightJustify
      Caption = '(+) Lucro (%):'
    end
    object Label37: TLabel
      Left = 367
      Top = 5
      Width = 135
      Height = 26
      Alignment = taCenter
      Caption = 'Vlr. do Lucro ('#233' calculado s'#243#13#10'sobre os produtos) ==>'
    end
    object Shape1: TShape
      Left = -8
      Top = 56
      Width = 601
      Height = 5
      Brush.Color = clBlue
    end
    object Label38: TLabel
      Left = 4
      Top = 77
      Width = 105
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr. Folha Funcion'#225'rio:'
    end
    object Label39: TLabel
      Left = 216
      Top = 77
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr. Calculado:'
    end
    object DBEdit1: TDBEdit
      Left = 139
      Top = 6
      Width = 60
      Height = 21
      DataField = 'PERCDESCONTO'
      DataSource = Dm1.dsPedido
      TabOrder = 0
      OnExit = DBEdit11Exit
    end
    object DBEdit2: TDBEdit
      Left = 139
      Top = 30
      Width = 60
      Height = 21
      TabStop = False
      DataField = 'VLRDESCONTO'
      DataSource = Dm1.dsPedido
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit6: TDBEdit
      Left = 507
      Top = 30
      Width = 80
      Height = 21
      Color = clAqua
      DataField = 'VLRTOTAL'
      DataSource = Dm1.dsPedido
      TabOrder = 4
    end
    object DBEdit13: TDBEdit
      Left = 291
      Top = 30
      Width = 60
      Height = 21
      Hint = 'Cadastrado nos par'#226'metros'
      DataField = 'IMPOSTO'
      DataSource = Dm1.dsPedido
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object DBEdit14: TDBEdit
      Left = 291
      Top = 6
      Width = 60
      Height = 21
      Hint = 'Cadastrado nos par'#226'metros'
      DataField = 'LUCRO'
      DataSource = Dm1.dsPedido
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object DBEdit20: TDBEdit
      Left = 506
      Top = 8
      Width = 80
      Height = 21
      DataField = 'VLRLUCRO'
      DataSource = Dm1.dsPedido
      TabOrder = 5
    end
    object DBEdit21: TDBEdit
      Left = 111
      Top = 70
      Width = 100
      Height = 21
      TabStop = False
      DataField = 'VLRFOLHA'
      DataSource = Dm1.dsPedido
      TabOrder = 6
    end
    object DBEdit22: TDBEdit
      Left = 287
      Top = 70
      Width = 100
      Height = 21
      TabStop = False
      DataField = 'VLRSUGERIDO'
      DataSource = Dm1.dsPedido
      ReadOnly = True
      TabOrder = 7
    end
    object BitBtn11: TBitBtn
      Left = 391
      Top = 67
      Width = 105
      Height = 25
      Caption = 'C'#225'lcula Or'#231'amento'
      TabOrder = 8
      OnClick = BitBtn11Click
    end
  end
end
