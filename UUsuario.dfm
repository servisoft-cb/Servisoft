object fUsuario: TfUsuario
  Left = 246
  Top = 10
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 509
  ClientWidth = 460
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
    Left = 1
    Top = 1
    Width = 458
    Height = 468
    ActivePage = TabSheet2
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Consulta'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 450
        Height = 440
        Align = alClient
        BevelOuter = bvLowered
        Color = 10930928
        TabOrder = 0
        object JvDBGrid1: TJvDBGrid
          Left = 1
          Top = 1
          Width = 448
          Height = 438
          Align = alClient
          DataSource = Dm1.dsUsuario
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = BitBtn2Click
          OnTitleClick = JvDBGrid1TitleClick
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LOGIN'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMAIL'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NIVEL'
              Visible = True
            end>
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dados Gerais'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 450
        Height = 440
        Align = alClient
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 0
        object Label3: TLabel
          Left = 32
          Top = 32
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nome:'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 33
          Top = 72
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Caption = 'Login:'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 224
          Top = 72
          Width = 41
          Height = 13
          Caption = 'Senha:'
          FocusControl = DBEdit4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 38
          Top = 96
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'E-mail:'
          FocusControl = DBEdit5
        end
        object Label7: TLabel
          Left = 42
          Top = 120
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fone:'
          FocusControl = DBEdit6
        end
        object Label9: TLabel
          Left = 33
          Top = 192
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Caption = 'Estado:'
          FocusControl = DBEdit8
        end
        object Label10: TLabel
          Left = 33
          Top = 168
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cidade:'
          OnClick = Label10Click
        end
        object Label11: TLabel
          Left = 20
          Top = 144
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Endere'#231'o:'
          FocusControl = DBEdit10
        end
        object Label12: TLabel
          Left = 45
          Top = 216
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'CEP:'
          FocusControl = DBEdit11
        end
        object Label13: TLabel
          Left = 23
          Top = 264
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Profiss'#227'o:'
          FocusControl = DBEdit12
        end
        object Label14: TLabel
          Left = 33
          Top = 288
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#237'vel:'
          FocusControl = DBEdit13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit2: TDBEdit
          Left = 72
          Top = 24
          Width = 300
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = Dm1.dsUsuario
          TabOrder = 0
        end
        object DBEdit3: TDBEdit
          Left = 72
          Top = 64
          Width = 100
          Height = 21
          CharCase = ecUpperCase
          DataField = 'LOGIN'
          DataSource = Dm1.dsUsuario
          TabOrder = 1
        end
        object DBEdit4: TDBEdit
          Left = 264
          Top = 64
          Width = 108
          Height = 21
          CharCase = ecUpperCase
          DataField = 'SENHA'
          DataSource = Dm1.dsUsuario
          PasswordChar = '*'
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 72
          Top = 88
          Width = 300
          Height = 21
          DataField = 'EMAIL'
          DataSource = Dm1.dsUsuario
          TabOrder = 3
        end
        object DBEdit6: TDBEdit
          Left = 72
          Top = 112
          Width = 100
          Height = 21
          CharCase = ecUpperCase
          DataField = 'FONE'
          DataSource = Dm1.dsUsuario
          TabOrder = 4
        end
        object DBEdit8: TDBEdit
          Left = 72
          Top = 184
          Width = 41
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ESTADO'
          DataSource = Dm1.dsUsuario
          TabOrder = 7
        end
        object DBEdit10: TDBEdit
          Left = 72
          Top = 136
          Width = 300
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ENDERECO'
          DataSource = Dm1.dsUsuario
          TabOrder = 5
        end
        object DBEdit11: TDBEdit
          Left = 72
          Top = 208
          Width = 100
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CEP'
          DataSource = Dm1.dsUsuario
          MaxLength = 9
          TabOrder = 8
        end
        object DBEdit12: TDBEdit
          Left = 72
          Top = 256
          Width = 300
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PROFISSAO'
          DataSource = Dm1.dsUsuario
          TabOrder = 9
        end
        object DBEdit13: TDBEdit
          Left = 72
          Top = 280
          Width = 134
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NIVEL'
          DataSource = Dm1.dsUsuario
          TabOrder = 10
        end
        object JvDBLookupCombo3: TJvDBLookupCombo
          Left = 72
          Top = 160
          Width = 302
          Height = 21
          DropDownCount = 8
          DataField = 'CIDADE'
          DataSource = Dm1.dsUsuario
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DmCons.qsCidade
          TabOrder = 6
        end
        object UpDown1: TUpDown
          Left = 208
          Top = 280
          Width = 17
          Height = 25
          Min = 1
          Max = 3
          Position = 1
          TabOrder = 11
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 470
    Width = 649
    Height = 37
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 16
      Top = 4
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
    object BitBtn2: TBitBtn
      Left = 101
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
    object BitBtn3: TBitBtn
      Left = 186
      Top = 4
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
    object BitBtn4: TBitBtn
      Left = 356
      Top = 4
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
    object BitBtn5: TBitBtn
      Left = 271
      Top = 4
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
  end
end
