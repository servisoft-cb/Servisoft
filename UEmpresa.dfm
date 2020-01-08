object fEmpresa: TfEmpresa
  Left = 226
  Top = 56
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Empresa'
  ClientHeight = 482
  ClientWidth = 482
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 1
    Top = 1
    Width = 481
    Height = 440
    ActivePage = TabSheet2
    TabOrder = 0
    object TabSheet2: TTabSheet
      Caption = 'Dados Gerais'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 473
        Height = 412
        Align = alClient
        BevelOuter = bvLowered
        Color = 10930928
        Enabled = False
        TabOrder = 0
        object Label3: TLabel
          Left = 67
          Top = 23
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
          Left = 74
          Top = 272
          Width = 30
          Height = 13
          Caption = 'CNPJ:'
          FocusControl = DBEdit2
        end
        object Label6: TLabel
          Left = 55
          Top = 72
          Width = 49
          Height = 13
          Caption = 'Endere'#231'o:'
          FocusControl = DBEdit3
        end
        object Label7: TLabel
          Left = 74
          Top = 97
          Width = 30
          Height = 13
          Caption = 'Bairro:'
          FocusControl = DBEdit4
        end
        object Label8: TLabel
          Left = 80
          Top = 122
          Width = 24
          Height = 13
          Caption = 'CEP:'
          FocusControl = DBEdit5
        end
        object Label9: TLabel
          Left = 68
          Top = 147
          Width = 36
          Height = 13
          Cursor = crHandPoint
          Hint = 
            'Abre o cadastro de cidade para efetuar novo registro ou alterar ' +
            'registro atual'
          Caption = 'Cidade:'
          ParentShowHint = False
          ShowHint = True
          OnClick = Label9Click
        end
        object Label10: TLabel
          Left = 87
          Top = 172
          Width = 17
          Height = 13
          Caption = 'UF:'
        end
        object Label11: TLabel
          Left = 72
          Top = 222
          Width = 32
          Height = 13
          Caption = 'Fones:'
          FocusControl = DBEdit6
        end
        object Label12: TLabel
          Left = 84
          Top = 247
          Width = 20
          Height = 13
          Caption = 'Fax:'
          FocusControl = DBEdit7
        end
        object Label13: TLabel
          Left = 34
          Top = 296
          Width = 70
          Height = 13
          Caption = 'Insc. Estadual:'
          FocusControl = DBEdit8
        end
        object Label17: TLabel
          Left = 77
          Top = 197
          Width = 27
          Height = 13
          Caption = 'DDD:'
          FocusControl = DBEdit12
        end
        object Label2: TLabel
          Left = 61
          Top = 47
          Width = 43
          Height = 13
          Caption = 'Fantasia:'
          FocusControl = DBEdit25
        end
        object Label1: TLabel
          Left = 9
          Top = 321
          Width = 95
          Height = 13
          Alignment = taRightJustify
          Caption = 'Logo da Empresa 1:'
        end
        object Label4: TLabel
          Left = 9
          Top = 347
          Width = 95
          Height = 13
          Alignment = taRightJustify
          Caption = 'Logo da Empresa 2:'
        end
        object DBEdit1: TDBEdit
          Left = 110
          Top = 15
          Width = 316
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = Dm1.dsEmpresa
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 110
          Top = 264
          Width = 155
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DOCUMENTO'
          DataSource = Dm1.dsEmpresa
          TabOrder = 12
        end
        object DBEdit3: TDBEdit
          Left = 110
          Top = 64
          Width = 316
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ENDERECO'
          DataSource = Dm1.dsEmpresa
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 110
          Top = 89
          Width = 202
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BAIRRO'
          DataSource = Dm1.dsEmpresa
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 110
          Top = 114
          Width = 115
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CEP'
          DataSource = Dm1.dsEmpresa
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 110
          Top = 214
          Width = 91
          Height = 21
          CharCase = ecUpperCase
          DataField = 'FONE'
          DataSource = Dm1.dsEmpresa
          TabOrder = 8
        end
        object DBEdit7: TDBEdit
          Left = 110
          Top = 239
          Width = 155
          Height = 21
          CharCase = ecUpperCase
          DataField = 'FAX'
          DataSource = Dm1.dsEmpresa
          TabOrder = 11
        end
        object JvDBLookupCombo3: TJvDBLookupCombo
          Left = 110
          Top = 139
          Width = 315
          Height = 21
          DropDownCount = 8
          DataField = 'CODCIDADE'
          DataSource = Dm1.dsEmpresa
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = Dm1.dsCidade
          TabOrder = 5
          OnExit = JvDBLookupCombo3Exit
        end
        object JvDBLookupCombo4: TJvDBLookupCombo
          Left = 110
          Top = 164
          Width = 50
          Height = 21
          DropDownCount = 8
          DataField = 'UF'
          DataSource = Dm1.dsEmpresa
          LookupField = 'UF'
          LookupDisplay = 'UF'
          LookupSource = DmCons.qsUF
          TabOrder = 6
        end
        object DBEdit8: TDBEdit
          Left = 110
          Top = 288
          Width = 156
          Height = 21
          CharCase = ecUpperCase
          DataField = 'INSCREST'
          DataSource = Dm1.dsEmpresa
          TabOrder = 13
        end
        object DBEdit12: TDBEdit
          Left = 110
          Top = 189
          Width = 51
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DDD'
          DataSource = Dm1.dsEmpresa
          TabOrder = 7
        end
        object DBEdit25: TDBEdit
          Left = 110
          Top = 39
          Width = 316
          Height = 21
          CharCase = ecUpperCase
          DataField = 'FANTASIA'
          DataSource = Dm1.dsEmpresa
          TabOrder = 1
        end
        object DBCheckBox1: TDBCheckBox
          Left = 110
          Top = 372
          Width = 137
          Height = 17
          Caption = 'Prestadora de Servi'#231'os'
          DataField = 'SERVICO'
          DataSource = Dm1.dsEmpresa
          TabOrder = 15
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object JvFilenameEdit1: TJvFilenameEdit
          Left = 110
          Top = 313
          Width = 276
          Height = 21
          ButtonFlat = False
          NumGlyphs = 1
          TabOrder = 14
          Text = 'JvFilenameEdit1'
        end
        object DBEdit9: TDBEdit
          Left = 206
          Top = 214
          Width = 91
          Height = 21
          CharCase = ecUpperCase
          DataField = 'FONE2'
          DataSource = Dm1.dsEmpresa
          TabOrder = 9
        end
        object DBEdit10: TDBEdit
          Left = 302
          Top = 214
          Width = 91
          Height = 21
          CharCase = ecUpperCase
          DataField = 'FONE3'
          DataSource = Dm1.dsEmpresa
          TabOrder = 10
        end
        object JvFilenameEdit2: TJvFilenameEdit
          Left = 110
          Top = 339
          Width = 276
          Height = 21
          ButtonFlat = False
          NumGlyphs = 1
          TabOrder = 16
          Text = 'JvFilenameEdit2'
        end
        object DBCheckBox2: TDBCheckBox
          Left = 392
          Top = 315
          Width = 63
          Height = 17
          Caption = 'Stretch'
          DataField = 'STRETCH'
          DataSource = Dm1.dsEmpresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 17
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 1
    Top = 445
    Width = 481
    Height = 37
    Color = 10930928
    TabOrder = 1
    object BitBtn2: TBitBtn
      Left = 119
      Top = 4
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
      TabOrder = 0
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
    object BitBtn3: TBitBtn
      Left = 204
      Top = 4
      Width = 85
      Height = 27
      Hint = 'Cancela a altera'#231#227'o do registro'
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
    object BitBtn5: TBitBtn
      Left = 289
      Top = 4
      Width = 85
      Height = 27
      Hint = 'Confirma a altera'#231#227'o do registro'
      Caption = 'Confirmar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
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
  end
end
