object fPessoa: TfPessoa
  Left = 282
  Top = 118
  Width = 651
  Height = 500
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Cadastro de Pessoas'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 438
    Width = 643
    Height = 31
    Align = alBottom
    TabOrder = 1
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
    Width = 643
    Height = 438
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Dados gerais'
      object Label3: TLabel
        Left = 61
        Top = 16
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome:'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 78
        Top = 232
        Width = 20
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fax:'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 27
        Top = 64
        Width = 71
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome fantasia:'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 25
        Top = 88
        Width = 73
        Height = 13
        Alignment = taRightJustify
        Caption = 'CNPJ / CPF:'
        FocusControl = DBEdit4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 7
        Top = 112
        Width = 91
        Height = 13
        Alignment = taRightJustify
        Caption = 'End. / N'#186' / Compl.:'
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 68
        Top = 136
        Width = 30
        Height = 13
        Alignment = taRightJustify
        Caption = 'Bairro:'
        FocusControl = DBEdit6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 74
        Top = 184
        Width = 24
        Height = 13
        Alignment = taRightJustify
        Caption = 'CEP:'
        FocusControl = DBEdit7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 71
        Top = 208
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fone:'
        FocusControl = DBEdit8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 54
        Top = 160
        Width = 44
        Height = 13
        Cursor = crHandPoint
        Alignment = taRightJustify
        Caption = 'Cidade:'
        FocusControl = DBEdit6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = Label9Click
      end
      object Label10: TLabel
        Left = 60
        Top = 40
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Caption = 'Pessoa:'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 80
        Top = 256
        Width = 18
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cel:'
        FocusControl = DBEdit9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 302
        Top = 184
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'Estado:'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 66
        Top = 280
        Width = 32
        Height = 13
        Alignment = taRightJustify
        Caption = 'E-Mail:'
        FocusControl = DBEdit14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 39
        Top = 304
        Width = 59
        Height = 13
        Alignment = taRightJustify
        Caption = 'Home Page:'
        FocusControl = DBEdit15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 433
        Top = 16
        Width = 33
        Height = 13
        Alignment = taRightJustify
        Caption = 'Status:'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label40: TLabel
        Left = 454
        Top = 48
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = 'C'#243'digo:'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label41: TLabel
        Left = 34
        Top = 328
        Width = 64
        Height = 13
        Cursor = crHandPoint
        Alignment = taRightJustify
        Caption = 'Centro Custo:'
        FocusControl = DBEdit6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = Label41Click
      end
      object Label50: TLabel
        Left = 422
        Top = 328
        Width = 59
        Height = 13
        Caption = 'Dt.Cadastro:'
      end
      object Label55: TLabel
        Left = 251
        Top = 84
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = 'I.Est.:'
        FocusControl = DBEdit41
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 102
        Top = 8
        Width = 313
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOME'
        DataSource = Dm1.dsPessoa
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 102
        Top = 224
        Width = 145
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FAX'
        DataSource = Dm1.dsPessoa
        TabOrder = 14
      end
      object DBEdit3: TDBEdit
        Left = 102
        Top = 56
        Width = 313
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FANTASIA'
        DataSource = Dm1.dsPessoa
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 102
        Top = 80
        Width = 145
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DOCUMENTO'
        DataSource = Dm1.dsPessoa
        TabOrder = 4
        OnExit = DBEdit4Exit
      end
      object DBEdit5: TDBEdit
        Left = 102
        Top = 104
        Width = 174
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ENDERECO'
        DataSource = Dm1.dsPessoa
        TabOrder = 6
      end
      object DBEdit6: TDBEdit
        Left = 102
        Top = 128
        Width = 313
        Height = 21
        CharCase = ecUpperCase
        DataField = 'BAIRRO'
        DataSource = Dm1.dsPessoa
        TabOrder = 9
      end
      object DBEdit7: TDBEdit
        Left = 102
        Top = 176
        Width = 145
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CEP'
        DataSource = Dm1.dsPessoa
        TabOrder = 11
      end
      object DBEdit8: TDBEdit
        Left = 102
        Top = 200
        Width = 145
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FONE'
        DataSource = Dm1.dsPessoa
        TabOrder = 13
      end
      object JvDBLookupCombo1: TJvDBLookupCombo
        Left = 102
        Top = 152
        Width = 313
        Height = 21
        DropDownCount = 15
        DataField = 'CIDADE'
        DataSource = Dm1.dsPessoa
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = Dm1.dsCidade
        TabOrder = 10
        OnExit = JvDBLookupCombo1Exit
      end
      object JvDBComboBox1: TJvDBComboBox
        Left = 102
        Top = 32
        Width = 145
        Height = 21
        Style = csDropDownList
        DataField = 'PESSOA'
        DataSource = Dm1.dsPessoa
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'F'#205'SICA'
          'JUR'#205'DICA')
        TabOrder = 2
        Values.Strings = (
          'F'
          'J')
        OnChange = JvDBComboBox1Change
      end
      object DBEdit9: TDBEdit
        Left = 102
        Top = 248
        Width = 145
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CEL'
        DataSource = Dm1.dsPessoa
        TabOrder = 15
      end
      object JvDBLookupCombo2: TJvDBLookupCombo
        Left = 344
        Top = 176
        Width = 71
        Height = 21
        DropDownCount = 8
        DataField = 'ESTADO'
        DataSource = Dm1.dsPessoa
        LookupField = 'UF'
        LookupDisplay = 'UF'
        LookupSource = Dm1.dsUF
        TabOrder = 12
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 353
        Width = 635
        Height = 57
        Align = alBottom
        Caption = 'Pap'#233'is'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 20
        object DBCheckBox1: TDBCheckBox
          Left = 104
          Top = 11
          Width = 97
          Height = 17
          Caption = 'Cliente'
          DataField = 'CLIENTE'
          DataSource = Dm1.dsPessoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox2: TDBCheckBox
          Left = 104
          Top = 35
          Width = 97
          Height = 17
          Caption = 'Fornecedor'
          DataField = 'FORNECEDOR'
          DataSource = Dm1.dsPessoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox3: TDBCheckBox
          Left = 216
          Top = 11
          Width = 97
          Height = 17
          Caption = 'Transportadora'
          DataField = 'TRANSPORTADORA'
          DataSource = Dm1.dsPessoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox4: TDBCheckBox
          Left = 216
          Top = 35
          Width = 97
          Height = 17
          Caption = 'Vendedor'
          DataField = 'VENDEDOR'
          DataSource = Dm1.dsPessoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox5: TDBCheckBox
          Left = 336
          Top = 35
          Width = 97
          Height = 17
          Caption = 'Funcion'#225'rio'
          DataField = 'FUNCIONARIO'
          DataSource = Dm1.dsPessoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
      object DBEdit12: TDBEdit
        Left = 279
        Top = 104
        Width = 46
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ENDNUMERO'
        DataSource = Dm1.dsPessoa
        TabOrder = 7
      end
      object DBEdit13: TDBEdit
        Left = 328
        Top = 104
        Width = 87
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ENDCOMPLEMENTO'
        DataSource = Dm1.dsPessoa
        TabOrder = 8
      end
      object DBEdit14: TDBEdit
        Left = 102
        Top = 272
        Width = 313
        Height = 21
        DataField = 'EMAIL'
        DataSource = Dm1.dsPessoa
        TabOrder = 16
      end
      object DBEdit15: TDBEdit
        Left = 102
        Top = 296
        Width = 313
        Height = 21
        DataField = 'HOMEPAGE'
        DataSource = Dm1.dsPessoa
        TabOrder = 17
      end
      object JvDBComboBox2: TJvDBComboBox
        Left = 472
        Top = 8
        Width = 100
        Height = 21
        Style = csDropDownList
        DataField = 'STATUS'
        DataSource = Dm1.dsPessoa
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'INATIVO'
          'ATIVO')
        TabOrder = 1
        Values.Strings = (
          '0'
          '1')
      end
      object DBEdit39: TDBEdit
        Left = 502
        Top = 42
        Width = 67
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = 16776176
        DataField = 'ID'
        DataSource = Dm1.dsPessoa
        ReadOnly = True
        TabOrder = 21
      end
      object JvDBLookupCombo8: TJvDBLookupCombo
        Left = 102
        Top = 320
        Width = 315
        Height = 21
        DropDownCount = 15
        DataField = 'CODCENTROCUSTO'
        DataSource = Dm1.dsPessoa
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = Dm1.dsCentroCusto
        TabOrder = 18
      end
      object JvDBDateEdit1: TJvDBDateEdit
        Left = 485
        Top = 320
        Width = 95
        Height = 21
        DataField = 'DTCADASTRO'
        DataSource = Dm1.dsPessoa
        NumGlyphs = 2
        TabOrder = 19
        StartOfWeek = Sun
      end
      object DBEdit41: TDBEdit
        Left = 279
        Top = 79
        Width = 136
        Height = 21
        CharCase = ecUpperCase
        DataField = 'INSCESTADUAL'
        DataSource = Dm1.dsPessoa
        TabOrder = 5
        OnExit = DBEdit4Exit
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Dados finaceiros'
      ImageIndex = 4
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 635
        Height = 410
        Align = alClient
        BevelOuter = bvLowered
        TabOrder = 0
        object Label22: TLabel
          Left = 11
          Top = 207
          Width = 103
          Height = 13
          Alignment = taRightJustify
          Caption = 'Forma de pagamento:'
          FocusControl = DBEdit19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 72
          Top = 159
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ag'#234'ncia:'
          FocusControl = DBEdit21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 41
          Top = 183
          Width = 73
          Height = 13
          Alignment = taRightJustify
          Caption = 'Conta corrente:'
          FocusControl = DBEdit19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 80
          Top = 135
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Caption = 'Banco:'
          FocusControl = DBEdit19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 24
          Top = 231
          Width = 90
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dia de pagamento:'
          FocusControl = DBEdit19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 87
          Top = 262
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor:'
        end
        object Label28: TLabel
          Left = 207
          Top = 262
          Width = 78
          Height = 13
          Caption = 'Tipo de Carteira:'
        end
        object Label51: TLabel
          Left = 27
          Top = 288
          Width = 87
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo de cobran'#231'a:'
          FocusControl = DBEdit19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label52: TLabel
          Left = 434
          Top = 279
          Width = 141
          Height = 26
          Caption = 'Esse campo vai definir'#13#10'se '#233' emitido Boleto ou Recibo'
          FocusControl = DBEdit19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label38: TLabel
          Left = 65
          Top = 312
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vendedor:'
          FocusControl = DBEdit19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label44: TLabel
          Left = 52
          Top = 360
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'Liberado at'#233':'
        end
        object Label13: TLabel
          Left = 13
          Top = 383
          Width = 101
          Height = 13
          Alignment = taRightJustify
          Caption = 'Percentual comiss'#227'o:'
          FocusControl = DBEdit10
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label46: TLabel
          Left = 327
          Top = 360
          Width = 75
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vers'#227'o do EXE:'
          FocusControl = DBEdit33
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label47: TLabel
          Left = 10
          Top = 335
          Width = 104
          Height = 13
          Alignment = taRightJustify
          Caption = 'Resp. Pela Cobran'#231'a:'
          FocusControl = DBEdit19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object GroupBox2: TGroupBox
          Left = 1
          Top = 1
          Width = 633
          Height = 122
          Align = alTop
          Caption = 'Endere'#231'o de cobran'#231'a'
          TabOrder = 0
          object Label17: TLabel
            Left = 23
            Top = 31
            Width = 91
            Height = 13
            Alignment = taRightJustify
            Caption = 'End. / N'#186' / Compl.:'
            FocusControl = DBEdit16
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 320
            Top = 103
            Width = 36
            Height = 13
            Alignment = taRightJustify
            Caption = 'Estado:'
            FocusControl = DBEdit1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 90
            Top = 103
            Width = 24
            Height = 13
            Alignment = taRightJustify
            Caption = 'CEP:'
            FocusControl = DBEdit20
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label20: TLabel
            Left = 78
            Top = 55
            Width = 36
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cidade:'
            FocusControl = DBEdit19
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 84
            Top = 82
            Width = 30
            Height = 13
            Alignment = taRightJustify
            Caption = 'Bairro:'
            FocusControl = DBEdit19
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit16: TDBEdit
            Left = 118
            Top = 23
            Width = 214
            Height = 21
            CharCase = ecUpperCase
            DataField = 'COBENDERECO'
            DataSource = Dm1.dsPessoa
            TabOrder = 0
          end
          object DBEdit17: TDBEdit
            Left = 335
            Top = 23
            Width = 46
            Height = 21
            CharCase = ecUpperCase
            DataField = 'COBNUMERO'
            DataSource = Dm1.dsPessoa
            TabOrder = 1
          end
          object DBEdit18: TDBEdit
            Left = 384
            Top = 23
            Width = 47
            Height = 21
            CharCase = ecUpperCase
            DataField = 'COBCOMPLEMENTO'
            DataSource = Dm1.dsPessoa
            TabOrder = 2
          end
          object DBEdit19: TDBEdit
            Left = 118
            Top = 71
            Width = 314
            Height = 21
            CharCase = ecUpperCase
            DataField = 'COBBAIRRO'
            DataSource = Dm1.dsPessoa
            TabOrder = 4
          end
          object JvDBLookupCombo3: TJvDBLookupCombo
            Left = 118
            Top = 47
            Width = 314
            Height = 21
            DropDownCount = 8
            DataField = 'COBCIDADE'
            DataSource = Dm1.dsPessoa
            LookupField = 'ID'
            LookupDisplay = 'NOME'
            LookupSource = Dm1.dsCidade
            TabOrder = 3
            OnExit = JvDBLookupCombo3Exit
          end
          object DBEdit20: TDBEdit
            Left = 118
            Top = 95
            Width = 145
            Height = 21
            CharCase = ecUpperCase
            DataField = 'COBCEP'
            DataSource = Dm1.dsPessoa
            TabOrder = 5
          end
          object JvDBLookupCombo4: TJvDBLookupCombo
            Left = 362
            Top = 95
            Width = 71
            Height = 21
            DropDownCount = 8
            DataField = 'COBUF'
            DataSource = Dm1.dsPessoa
            LookupField = 'UF'
            LookupDisplay = 'UF'
            LookupSource = Dm1.dsUF
            TabOrder = 6
          end
        end
        object JvDBLookupCombo5: TJvDBLookupCombo
          Left = 118
          Top = 199
          Width = 314
          Height = 21
          DropDownCount = 8
          DataField = 'FORMAPGTO'
          DataSource = Dm1.dsPessoa
          LookupField = 'ID'
          LookupDisplay = 'DESCRICAO'
          LookupSource = Dm1.dsFormaPgto
          TabOrder = 1
        end
        object DBEdit21: TDBEdit
          Left = 118
          Top = 151
          Width = 214
          Height = 21
          CharCase = ecUpperCase
          DataField = 'AGENCIA'
          DataSource = Dm1.dsPessoa
          TabOrder = 2
        end
        object JvDBLookupCombo6: TJvDBLookupCombo
          Left = 118
          Top = 127
          Width = 314
          Height = 21
          DropDownCount = 8
          DataField = 'CODBANCO'
          DataSource = Dm1.dsPessoa
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DmCons.qsBanco
          TabOrder = 3
        end
        object DBEdit22: TDBEdit
          Left = 118
          Top = 175
          Width = 214
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NUMCONTACORRENTE'
          DataSource = Dm1.dsPessoa
          TabOrder = 4
        end
        object DBEdit23: TDBEdit
          Left = 118
          Top = 223
          Width = 43
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DIAPAGAMENTO'
          DataSource = Dm1.dsPessoa
          TabOrder = 5
        end
        object DBEdit11: TDBEdit
          Left = 118
          Top = 254
          Width = 83
          Height = 21
          DataField = 'VLRPGTO'
          DataSource = Dm1.dsPessoa
          TabOrder = 6
        end
        object JvDBComboBox3: TJvDBComboBox
          Left = 288
          Top = 254
          Width = 292
          Height = 21
          Style = csDropDownList
          DataField = 'NUMCARTEIRA'
          DataSource = Dm1.dsPessoa
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            '112  ESCRITURAL ELETR'#212'NICA - simples / contratual'
            '109  DIRETA ELETR'#212'NICA SEM EMISS'#195'O - SIMPLES'
            '175  SEM REGISTRO SEM EMISS'#195'O')
          TabOrder = 7
          Values.Strings = (
            '112'
            '109'
            '175')
        end
        object JvDBLookupCombo9: TJvDBLookupCombo
          Left = 118
          Top = 280
          Width = 314
          Height = 21
          DropDownCount = 8
          DataField = 'CODTIPOCOBRANCA'
          DataSource = Dm1.dsPessoa
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DmCons.qsTipoCobranca
          TabOrder = 8
        end
        object JvDBLookupCombo7: TJvDBLookupCombo
          Left = 118
          Top = 304
          Width = 314
          Height = 21
          DropDownCount = 8
          DataField = 'CODVENDEDOR'
          DataSource = Dm1.dsPessoa
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DmCons.qsVendedor
          TabOrder = 9
        end
        object JvDateEdit1: TJvDateEdit
          Left = 118
          Top = 352
          Width = 90
          Height = 21
          ButtonFlat = False
          NumGlyphs = 2
          StartOfWeek = Sun
          TabOrder = 11
        end
        object DBEdit10: TDBEdit
          Left = 118
          Top = 375
          Width = 145
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PERCCOMISSAO'
          DataSource = Dm1.dsPessoa
          TabOrder = 14
        end
        object DBEdit33: TDBEdit
          Left = 406
          Top = 352
          Width = 145
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VERSAO_EXE'
          DataSource = Dm1.dsPessoa
          TabOrder = 13
        end
        object JvDBLookupCombo10: TJvDBLookupCombo
          Left = 118
          Top = 327
          Width = 314
          Height = 21
          DropDownCount = 8
          DataField = 'CODVENDEDOR_COB'
          DataSource = Dm1.dsPessoa
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DmCons.qsVendedor
          TabOrder = 10
        end
        object BitBtn13: TBitBtn
          Left = 210
          Top = 349
          Width = 95
          Height = 25
          Caption = 'Aplicar no Site'
          TabOrder = 12
          OnClick = BitBtn13Click
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Contatos'
      ImageIndex = 5
      object Panel2: TPanel
        Left = 0
        Top = 372
        Width = 627
        Height = 31
        Align = alBottom
        TabOrder = 0
        object BitBtn3: TBitBtn
          Left = 3
          Top = 4
          Width = 75
          Height = 25
          Caption = '&Incluir'
          TabOrder = 0
          OnClick = BitBtn3Click
        end
        object BitBtn4: TBitBtn
          Left = 78
          Top = 4
          Width = 75
          Height = 25
          Caption = 'E&xcluir'
          TabOrder = 1
          OnClick = BitBtn4Click
        end
      end
      object JvDBGrid1: TJvDBGrid
        Left = 0
        Top = 0
        Width = 627
        Height = 372
        Align = alClient
        DataSource = Dm1.dsTelefone
        ReadOnly = True
        TabOrder = 1
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
            FieldName = 'CONTATO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TELEFONE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RAMAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMAIL'
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cliente'
      ImageIndex = 1
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 635
        Height = 410
        ActivePage = TabSheet10
        Align = alClient
        TabOrder = 0
        object TabSheet5: TTabSheet
          Caption = 'Dados complementares'
          object Label45: TLabel
            Left = 0
            Top = 7
            Width = 66
            Height = 13
            Alignment = taRightJustify
            Caption = 'Obsreva'#231#245'es:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBMemo1: TDBMemo
            Left = 0
            Top = 24
            Width = 619
            Height = 351
            Align = alBottom
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataField = 'OBSERVACAO'
            DataSource = Dm1.dsPessoa
            TabOrder = 0
          end
        end
        object TabSheet8: TTabSheet
          Caption = 'Refer'#234'nicas'
          ImageIndex = 1
          object GroupBox4: TGroupBox
            Left = 0
            Top = 122
            Width = 619
            Height = 122
            Align = alTop
            Caption = 'Comerciais'
            TabOrder = 1
            object Label32: TLabel
              Left = 27
              Top = 23
              Width = 31
              Height = 13
              Alignment = taRightJustify
              Caption = 'Nome:'
              FocusControl = DBEdit27
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label33: TLabel
              Left = 9
              Top = 47
              Width = 49
              Height = 13
              Alignment = taRightJustify
              Caption = 'Endere'#231'o:'
              FocusControl = DBEdit28
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label34: TLabel
              Left = 391
              Top = 47
              Width = 27
              Height = 13
              Alignment = taRightJustify
              Caption = 'Fone:'
              FocusControl = DBEdit28
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label35: TLabel
              Left = 27
              Top = 77
              Width = 31
              Height = 13
              Alignment = taRightJustify
              Caption = 'Nome:'
              FocusControl = DBEdit30
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label36: TLabel
              Left = 9
              Top = 101
              Width = 49
              Height = 13
              Alignment = taRightJustify
              Caption = 'Endere'#231'o:'
              FocusControl = DBEdit31
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label37: TLabel
              Left = 391
              Top = 101
              Width = 27
              Height = 13
              Alignment = taRightJustify
              Caption = 'Fone:'
              FocusControl = DBEdit31
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit27: TDBEdit
              Left = 62
              Top = 39
              Width = 315
              Height = 21
              CharCase = ecUpperCase
              DataField = 'REFCOMERCIALEND1'
              DataSource = Dm1.dsPessoa
              TabOrder = 1
            end
            object DBEdit28: TDBEdit
              Left = 62
              Top = 15
              Width = 314
              Height = 21
              CharCase = ecUpperCase
              DataField = 'REFCOMERCIAL1'
              DataSource = Dm1.dsPessoa
              TabOrder = 0
            end
            object DBEdit29: TDBEdit
              Left = 422
              Top = 39
              Width = 145
              Height = 21
              CharCase = ecUpperCase
              DataField = 'REFCOMERCIALFONE1'
              DataSource = Dm1.dsPessoa
              TabOrder = 2
            end
            object DBEdit30: TDBEdit
              Left = 62
              Top = 93
              Width = 315
              Height = 21
              CharCase = ecUpperCase
              DataField = 'REFCOMERCIALEND2'
              DataSource = Dm1.dsPessoa
              TabOrder = 4
            end
            object DBEdit31: TDBEdit
              Left = 62
              Top = 69
              Width = 314
              Height = 21
              CharCase = ecUpperCase
              DataField = 'REFCOMERCIAL2'
              DataSource = Dm1.dsPessoa
              TabOrder = 3
            end
            object DBEdit32: TDBEdit
              Left = 422
              Top = 93
              Width = 145
              Height = 21
              CharCase = ecUpperCase
              DataField = 'REFCOMERCIALFONE2'
              DataSource = Dm1.dsPessoa
              TabOrder = 5
            end
          end
          object GroupBox5: TGroupBox
            Left = 0
            Top = 0
            Width = 619
            Height = 122
            Align = alTop
            Caption = 'Pessoais'
            TabOrder = 0
            object Label39: TLabel
              Left = 27
              Top = 23
              Width = 31
              Height = 13
              Alignment = taRightJustify
              Caption = 'Nome:'
              FocusControl = DBEdit34
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label42: TLabel
              Left = 9
              Top = 47
              Width = 49
              Height = 13
              Alignment = taRightJustify
              Caption = 'Endere'#231'o:'
              FocusControl = DBEdit37
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label43: TLabel
              Left = 391
              Top = 47
              Width = 27
              Height = 13
              Alignment = taRightJustify
              Caption = 'Fone:'
              FocusControl = DBEdit37
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label29: TLabel
              Left = 27
              Top = 77
              Width = 31
              Height = 13
              Alignment = taRightJustify
              Caption = 'Nome:'
              FocusControl = DBEdit24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label30: TLabel
              Left = 9
              Top = 101
              Width = 49
              Height = 13
              Alignment = taRightJustify
              Caption = 'Endere'#231'o:'
              FocusControl = DBEdit25
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label31: TLabel
              Left = 391
              Top = 101
              Width = 27
              Height = 13
              Alignment = taRightJustify
              Caption = 'Fone:'
              FocusControl = DBEdit25
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit34: TDBEdit
              Left = 62
              Top = 39
              Width = 315
              Height = 21
              CharCase = ecUpperCase
              DataField = 'REFPESSOALEND1'
              DataSource = Dm1.dsPessoa
              TabOrder = 1
            end
            object DBEdit37: TDBEdit
              Left = 62
              Top = 15
              Width = 314
              Height = 21
              CharCase = ecUpperCase
              DataField = 'REFPESSOAL1'
              DataSource = Dm1.dsPessoa
              TabOrder = 0
            end
            object DBEdit38: TDBEdit
              Left = 422
              Top = 39
              Width = 145
              Height = 21
              CharCase = ecUpperCase
              DataField = 'REFPESSOALFONE1'
              DataSource = Dm1.dsPessoa
              TabOrder = 2
            end
            object DBEdit24: TDBEdit
              Left = 62
              Top = 93
              Width = 315
              Height = 21
              CharCase = ecUpperCase
              DataField = 'REFPESSOALEND2'
              DataSource = Dm1.dsPessoa
              TabOrder = 4
            end
            object DBEdit25: TDBEdit
              Left = 62
              Top = 69
              Width = 314
              Height = 21
              CharCase = ecUpperCase
              DataField = 'REFPESSOAL2'
              DataSource = Dm1.dsPessoa
              TabOrder = 3
            end
            object DBEdit26: TDBEdit
              Left = 422
              Top = 93
              Width = 145
              Height = 21
              CharCase = ecUpperCase
              DataField = 'REFPESSOALFONE2'
              DataSource = Dm1.dsPessoa
              TabOrder = 5
            end
          end
        end
        object TabSheet10: TTabSheet
          Caption = 'Servi'#231'os contratados'
          ImageIndex = 3
          object JvDBGrid3: TJvDBGrid
            Left = 0
            Top = 0
            Width = 619
            Height = 344
            Align = alClient
            DataSource = Dm1.dsPessoaServico
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = JvDBGrid3DblClick
            OnTitleClick = JvDBGrid3TitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'NOME'
                Title.Caption = 'SERVI'#199'O'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATAINI'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATAFIM'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Visible = True
              end>
          end
          object Panel7: TPanel
            Left = 0
            Top = 344
            Width = 619
            Height = 31
            Align = alBottom
            TabOrder = 0
            object BitBtn7: TBitBtn
              Left = 3
              Top = 4
              Width = 75
              Height = 25
              Caption = '&Incluir'
              TabOrder = 0
              OnClick = BitBtn7Click
            end
            object BitBtn8: TBitBtn
              Left = 78
              Top = 4
              Width = 75
              Height = 25
              Caption = 'E&xcluir'
              TabOrder = 1
              OnClick = BitBtn8Click
            end
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Hist'#243'rico'
      ImageIndex = 5
      object Panel4: TPanel
        Left = 0
        Top = 372
        Width = 627
        Height = 31
        Align = alBottom
        TabOrder = 0
        object BitBtn5: TBitBtn
          Left = 8
          Top = 4
          Width = 66
          Height = 25
          Caption = '&Incluir'
          TabOrder = 0
          OnClick = BitBtn5Click
        end
        object BitBtn6: TBitBtn
          Left = 78
          Top = 4
          Width = 75
          Height = 25
          Caption = 'E&xcluir'
          TabOrder = 1
          OnClick = BitBtn6Click
        end
      end
      object JvDBGrid2: TJvDBGrid
        Left = 0
        Top = 0
        Width = 627
        Height = 372
        Align = alClient
        DataSource = Dm1.dsPessoaHist
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = JvDBGrid2DblClick
        OnTitleClick = JvDBGrid1TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'DATA'
            Title.Caption = 'Data'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HISTORICO'
            Title.Caption = 'Hist'#243'rico'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_AGENDA'
            Title.Caption = 'Agenda'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end>
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'Chaves FlexDocs'
      ImageIndex = 6
      object JvDBGrid4: TJvDBGrid
        Left = 0
        Top = 0
        Width = 635
        Height = 379
        Align = alClient
        DataSource = Dm1.dsPessoaChave
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = JvDBGrid4DblClick
        OnTitleClick = JvDBGrid1TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'clTipo'
            Title.Caption = 'Tipo'
            Width = 137
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHAVE'
            Title.Caption = 'Chave'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 0
        Top = 379
        Width = 635
        Height = 31
        Align = alBottom
        TabOrder = 1
        object BitBtn9: TBitBtn
          Left = 8
          Top = 4
          Width = 66
          Height = 25
          Caption = '&Incluir'
          TabOrder = 0
          OnClick = BitBtn9Click
        end
        object BitBtn10: TBitBtn
          Left = 78
          Top = 4
          Width = 75
          Height = 25
          Caption = 'E&xcluir'
          TabOrder = 1
          OnClick = BitBtn10Click
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'M'#243'dulos'
      ImageIndex = 6
      object JvDBGrid5: TJvDBGrid
        Left = 0
        Top = 0
        Width = 627
        Height = 372
        Align = alClient
        DataSource = Dm1.dsPessoaModulos
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnTitleClick = JvDBGrid1TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MODULO_NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LIBERADO'
            Width = 67
            Visible = True
          end>
      end
      object Panel6: TPanel
        Left = 0
        Top = 372
        Width = 627
        Height = 31
        Align = alBottom
        TabOrder = 1
        object BitBtn11: TBitBtn
          Left = 8
          Top = 4
          Width = 62
          Height = 25
          Caption = '&Incluir'
          TabOrder = 0
          OnClick = BitBtn11Click
        end
        object BitBtn12: TBitBtn
          Left = 78
          Top = 4
          Width = 75
          Height = 25
          Caption = 'E&xcluir'
          TabOrder = 1
          OnClick = BitBtn12Click
        end
      end
    end
  end
  object VerificaCGC1: TVerificaCGC
    Resultado = False
    Left = 492
    Top = 224
  end
  object VerificaCPF1: TVerificaCPF
    Resultado = False
    Left = 460
    Top = 224
  end
  object UCControls1: TUCControls
    GroupName = 'Pessoas (Financeiro)'
    UserControl = fMenu.UserControl1
    NotAllowed = naInvisible
    Left = 68
    Top = 368
  end
  object Encoder1: TIdEncoderMIME
    FillChar = '='
    Left = 208
    Top = 424
  end
  object Decoder1: TIdDecoderMIME
    FillChar = '='
    Left = 173
    Top = 424
  end
end
