object fBcoItau: TfBcoItau
  Left = 146
  Top = 114
  BorderStyle = bsSingle
  Caption = 'Par'#226'metros do arquivo'
  ClientHeight = 347
  ClientWidth = 480
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 480
    Height = 347
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 4
      Top = 4
      Width = 469
      Height = 31
      BevelOuter = bvLowered
      TabOrder = 0
      object BitBtn2: TBitBtn
        Left = 21
        Top = 3
        Width = 85
        Height = 25
        Hint = 'Altera os dados abaixo'
        Caption = '&Alterar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
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
      object BitBtn3: TBitBtn
        Left = 361
        Top = 3
        Width = 85
        Height = 25
        Hint = 'Fecha a janela atual'
        Caption = '&Fechar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BitBtn3Click
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F0000000CE0E0000D80E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          77777777000077777777777777777777000077778787878780E0787700007778
          7878787870E60787000077700000000780E66007000077777777770870E66077
          000077777777770000E66077000077777770070770E66077000077777770E007
          70E06077000077700000EE0770E6607700007770EEEEEE6070E6607700007770
          0000E60770E66077000077777770600770E66077000077777770070770E66077
          0000777777777707770E607700007777777777077770E0770000777777777700
          0000007700007777777777777777777700007777777777777777777700007777
          77777777777777770000}
      end
      object BitBtn5: TBitBtn
        Left = 276
        Top = 3
        Width = 85
        Height = 25
        Hint = 'Confirma as altera'#231#245'es abaixo'
        Cancel = True
        Caption = '&Confirmar'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
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
        Left = 191
        Top = 3
        Width = 85
        Height = 25
        Hint = 'Abre a tela de boletos'
        Caption = '&Boletos'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtn4Click
        Glyph.Data = {
          76030000424D7603000000000000360000002800000011000000100000000100
          18000000000040030000C30E0000C30E00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000000000000000000000
          00000000000000BFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBF7F0000BFBFBF
          BFBFBFBFBFBF000000000000000000000000000000000000000000000000BFBF
          BF00BFBFBFBFBFBFBFBFBFBFBFBF7F00007F0000BFBFBFBFBFBF000000007F7F
          007F7F007F7F007F7F007F7F00000000000000000000BFBFBF7F00007F00007F
          00007F00007F00007F0000BFBFBF000000000000000000000000000000000000
          000000007F7F00000000BFBFBFBFBFBFBFBFBFBFBFBF7F00007F0000BFBFBFBF
          BFBF000000FFFFFFBFBFBFFFFFFFBFBFBFFFFFFFBFBFBF00000000000000BFBF
          BFBFBFBFBFBFBFBFBFBF7F0000BFBFBFBFBFBFBFBFBF00000000000000000000
          0000000000000000BFBFBF7F7F7F00000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
          0000BFBFBF00BFBFBFBFBFBFBFBFBF000000000000000000000000000000BFBF
          BF000000FFFFFF7F7F7F7F7F7FFFFFFF000000BFBFBFBFBFBF00BFBFBFBFBFBF
          BFBFBF000000FFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF000000FFFFFFFFFF
          FFFFFFFFFFFFFF000000BFBFBF00BFBFBF000000000000000000000000000000
          FFFFFF000000BFBFBFBFBFBFBFBFBF000000000000000000000000000000BFBF
          BF00BFBFBF000000FFFFFFFFFFFFFFFFFF000000FFFFFF000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF000000FFFFFF7F
          7F7FFFFFFF000000000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBF00BFBFBF000000FFFFFF7F7F7FFFFFFF000000000000BF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBF
          BF000000FFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF0000000000000000000000
          00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00}
      end
      object BitBtn1: TBitBtn
        Left = 106
        Top = 3
        Width = 85
        Height = 25
        Hint = 'Cancela as altera'#231#245'es abaixo'
        Cancel = True
        Caption = 'Ca&ncelar'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = BitBtn1Click
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
    end
    object Panel3: TPanel
      Left = 4
      Top = 38
      Width = 469
      Height = 304
      BevelOuter = bvLowered
      Enabled = False
      TabOrder = 1
      object Label1: TLabel
        Left = 50
        Top = 33
        Width = 83
        Height = 13
        Caption = 'C'#243'd. do Cedente:'
      end
      object Label3: TLabel
        Left = 55
        Top = 56
        Width = 78
        Height = 13
        Caption = 'Tipo de Carteira:'
      end
      object Label5: TLabel
        Left = 36
        Top = 101
        Width = 97
        Height = 13
        Caption = 'Esp'#233'cie documento:'
      end
      object Label6: TLabel
        Left = 60
        Top = 168
        Width = 73
        Height = 13
        Caption = 'C'#243'd. do Aceite:'
      end
      object Label10: TLabel
        Left = 8
        Top = 191
        Width = 125
        Height = 13
        Caption = 'Vlr.Juros por dia de atraso:'
      end
      object Label13: TLabel
        Left = 56
        Top = 235
        Width = 77
        Height = 13
        Caption = 'Dias p/Protesto:'
      end
      object Label15: TLabel
        Left = 49
        Top = 265
        Width = 85
        Height = 13
        Caption = 'Nome do Arquivo:'
      end
      object Label16: TLabel
        Left = 273
        Top = 265
        Width = 101
        Height = 13
        Caption = 'Extens'#227'o do Arquivo:'
      end
      object Label2: TLabel
        Left = 78
        Top = 78
        Width = 55
        Height = 13
        Alignment = taRightJustify
        Caption = 'Ocorr'#234'ncia:'
      end
      object Label17: TLabel
        Left = 55
        Top = 123
        Width = 78
        Height = 13
        Caption = 'Inst.Cobran'#231'a 1:'
      end
      object Label19: TLabel
        Left = 56
        Top = 213
        Width = 77
        Height = 13
        Caption = 'Vlr.do desconto:'
      end
      object Label4: TLabel
        Left = 73
        Top = 287
        Width = 62
        Height = 13
        Caption = 'N'#186' Remessa:'
      end
      object Bevel1: TBevel
        Left = 0
        Top = 251
        Width = 468
        Height = 2
        Shape = bsTopLine
        Style = bsRaised
      end
      object Label8: TLabel
        Left = 99
        Top = 8
        Width = 34
        Height = 13
        Caption = 'Banco:'
      end
      object Label9: TLabel
        Left = 56
        Top = 145
        Width = 78
        Height = 13
        Caption = 'Inst.Cobran'#231'a 2:'
      end
      object Label7: TLabel
        Left = 232
        Top = 213
        Width = 93
        Height = 13
        Caption = 'Dt.Limite Desconto:'
      end
      object DBEdit1: TDBEdit
        Left = 136
        Top = 27
        Width = 113
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CODCEDENTE'
        DataSource = Dm1.dsBcoItau
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 136
        Top = 183
        Width = 69
        Height = 21
        CharCase = ecUpperCase
        DataField = 'VLRJUROSPORDIA'
        DataSource = Dm1.dsBcoItau
        TabOrder = 8
      end
      object DBEdit6: TDBEdit
        Left = 136
        Top = 227
        Width = 37
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DIASPROTESTO'
        DataSource = Dm1.dsBcoItau
        TabOrder = 11
      end
      object DBEdit7: TDBEdit
        Left = 137
        Top = 257
        Width = 79
        Height = 21
        DataField = 'NOME'
        DataSource = Dm1.dsBcoItau
        TabOrder = 12
        OnKeyDown = DBEdit7KeyDown
      end
      object DBEdit8: TDBEdit
        Left = 377
        Top = 257
        Width = 57
        Height = 21
        CharCase = ecUpperCase
        DataField = 'EXTENSAO'
        DataSource = Dm1.dsBcoItau
        TabOrder = 13
      end
      object DBEdit2: TDBEdit
        Left = 136
        Top = 205
        Width = 69
        Height = 21
        CharCase = ecUpperCase
        DataField = 'VLRDESCONTO'
        DataSource = Dm1.dsBcoItau
        TabOrder = 9
      end
      object DBEdit5: TDBEdit
        Left = 137
        Top = 279
        Width = 79
        Height = 21
        Color = clInfoBk
        DataSource = Dm1.dsBcoItau
        ReadOnly = True
        TabOrder = 14
        OnKeyDown = DBEdit5KeyDown
      end
      object JvDBLookupCombo1: TJvDBLookupCombo
        Left = 136
        Top = 4
        Width = 327
        Height = 21
        DropDownCount = 8
        DataField = 'CodConta'
        DataSource = Dm1.dsBcoItau
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = DmCons.qsBanco
        TabOrder = 0
      end
      object JvDBComboBox1: TJvDBComboBox
        Left = 136
        Top = 49
        Width = 326
        Height = 21
        Style = csDropDownList
        DataField = 'NUMCARTEIRA'
        DataSource = Dm1.dsBcoItau
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          '112  ESCRITURAL ELETR'#212'NICA - simples / contratual'
          '109  DIRETA ELETR'#212'NICA SEM EMISS'#195'O - SIMPLES'
          '175  SEM REGISTRO SEM EMISS'#195'O')
        TabOrder = 2
        Values.Strings = (
          '112'
          '109'
          '175')
      end
      object JvDBComboBox2: TJvDBComboBox
        Left = 136
        Top = 71
        Width = 326
        Height = 21
        Style = csDropDownList
        DataField = 'INSTRUCAO'
        DataSource = Dm1.dsBcoItau
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Remessa'
          'Pedido de Baixa'
          'Concess'#227'o de Abatimento (   indicador 12.5) '
          'Cancelamento de Abatimento'
          'Altera'#231#227'o do vencimento '
          'Altera'#231#227'o do Uso da Empresa'
          'Altera'#231#227'o do Seu N'#250'mero '
          'Protestar'
          'N'#227'o protestar '
          'Sustar o Protesto '
          'Altera'#231#227'o de outros dados '
          'Baixa por ter sido pago diretamente ao cedente'
          'cancelamento de instru'#231#227'o'
          'Protesto Urgente '
          'altera'#231#227'o do vencimento e sustar protesto'
          'CEDENTE N'#195'O CONCORDA COM ALEGA'#199#195'O DO SACADO'
          'CEDENTE SOLICITA DISPENSA DE JUROS')
        TabOrder = 3
        Values.Strings = (
          '01'
          '02'
          '04'
          '05'
          '06'
          '07'
          '08'
          '09'
          '10'
          '18'
          '31'
          '34'
          '35'
          '36'
          '37'
          '38'
          '47')
      end
      object JvDBComboBox3: TJvDBComboBox
        Left = 136
        Top = 116
        Width = 326
        Height = 21
        Style = csDropDownList
        DataField = 'INSTRCOBRANCA1'
        DataSource = Dm1.dsBcoItau
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Devolver  ap'#243's 05 dias do Vencimento'
          'Devolver  ap'#243's 30 dias do Vencimento'
          'Receber conforme instru'#231#245'es no pr'#243'prio t'#237'tulo'
          'Devolver  ap'#243's 10 dias do Vencimento'
          'Devolver  ap'#243's 15 dias do Vencimento'
          'Devolver  ap'#243's 20 dias do Vencimento'
          'Protestar'
          'N'#227'o protestar '
          'Devolver  ap'#243's 25 dias do Vencimento'
          'Devolver  ap'#243's 35 dias do Vencimento'
          'Devolver  ap'#243's 40 dias do Vencimento'
          'Devolver  ap'#243's 45 dias do Vencimento'
          'Devolver  ap'#243's 50 dias do Vencimento'
          'Devolver  ap'#243's 55 dias do Vencimento'
          'Devolver  ap'#243's 60 dias do Vencimento'
          'Devolver  ap'#243's 90 dias do Vencimento'
          'N'#227'o Receber ap'#243's 05 dias do vencimento'
          'N'#227'o Receber ap'#243's 10 dias do vencimento'
          'N'#227'o Receber ap'#243's 15 dias do vencimento'
          'N'#227'o Receber ap'#243's 20 dias do vencimento'
          'N'#227'o Receber ap'#243's 25 dias do vencimento'
          'N'#227'o Receber ap'#243's 30 dias do vencimento'
          'N'#227'o Receber ap'#243's 35 dias do vencimento'
          'N'#227'o Receber ap'#243's 40 dias do vencimento'
          'N'#227'o Receber ap'#243's 45 dias do vencimento'
          'N'#227'o Receber ap'#243's 50 dias do vencimento'
          'N'#227'o Receber ap'#243's 55 dias do vencimento'
          'Import'#226'ncia de desconto por dia'
          'N'#227'o Receber ap'#243's 60 dias do vencimento'
          'N'#227'o Receber ap'#243's 90 dias do vencimento'
          'Protesto Urgente '
          'Receber at'#233' o '#250'ltimo dia do m'#234's de vencimento'
          'Conceder desconto mesmo ap'#243's vencimento'
          'N'#227'o Receber ap'#243's o vencimento'
          'Conceder desconto conforme Nota de Cr'#233'dito'
          'Sujeito a protesto se n'#227'o for pago no vencimento'
          'Import'#226'ncia por dia de atraso a partir de '
          'Tem dia da Gra'#231'a'
          'uso do banco'
          'DISPENSAR JUROS/COMISS'#195'O DE PERMAN'#202'NCIA'
          'RECEBER SOMENTE COM A PARCELA ANTERIOR QUITADA'
          'favor efetuar pgto  somente atrav'#233's desta cobran'#231'a banc'#225'ria'
          'USO DO BANCO'
          'ap'#243's vencimento pag'#225'vel somente na empresa'
          'uso do banco'
          'somar valor do t'#237'tulo ao valor do campo mora/multa caso exista'
          'DEVOLVER AP'#211'S 365 DIAS DE VENCIDO'
          
            'COBRAN'#199'A NEGOCIADA. PAG'#193'VEL SOMENTE POR ESTE BLOQUETO NA REDE BA' +
            'NC'#193'RIA'
          'uso do banco'
          'VALOR DA IDA ENGLOBA MULTA DE 10% PRO RATA'
          
            'Cobrar juros ap'#243's 15 dias da emiss'#227'o (para t'#237'tulos com venciment' +
            'o '#224' vista)'
          
            'PAGAMENTO EM CHEQUE: SOMENTE RECEBER COM CHEQUE DE EMISS'#195'O DO SA' +
            'CADO'
          'protestar ap'#243's xx dias corridos do vencimento'
          'protestar ap'#243's xx DIAS '#250'teis do vencimento'
          'OPERA'#199#195'O REF A VENDOR'
          'Ap'#243's vencimento consultar a Ag'#234'ncia cedente'
          
            'Antes do Vencimento ou ap'#243's 15 dias, pag'#225'vel SOMENTE em nossa se' +
            'de'
          'uso do banco'
          'N'#227'o receber antes do Vencimento'
          'uso do banco'
          'No vencimento pag'#225'vel em qualquer ag'#234'ncia banc'#225'ria'
          'N'#227'o receber ap'#243's xx dias do vencimento'
          'Devolver ap'#243's xx dias do vencimento'
          'Mensagens nos bloquetos com 30 posi'#231#245'es'
          'Mensagens nos bloquetos com 40 posi'#231#245'es'
          'uso do banco'
          'Duplicata / Fatura N'#186)
        TabOrder = 5
        Values.Strings = (
          '02'
          '03'
          '05'
          '06'
          '07'
          '08'
          '09'
          '10'
          '11'
          '12'
          '13'
          '14'
          '15'
          '16'
          '17'
          '18'
          '19'
          '20'
          '21'
          '22'
          '23'
          '24'
          '25'
          '26'
          '27'
          '28'
          '29'
          '30'
          '31'
          '32'
          '36'
          '37'
          '38'
          '39'
          '40'
          '43'
          '44'
          '45'
          '46'
          '47'
          '51'
          '52'
          '53'
          '54'
          '56'
          '57'
          '58'
          '59'
          '70'
          '78'
          '79'
          '80'
          '81'
          '82'
          '83'
          '84'
          '86'
          '87'
          '88'
          '89'
          '90'
          '91'
          '92'
          '93'
          '94'
          '95'
          '98')
      end
      object JvDBComboBox4: TJvDBComboBox
        Left = 136
        Top = 94
        Width = 326
        Height = 21
        Style = csDropDownList
        DataField = 'ESPECIEDOC'
        DataSource = Dm1.dsBcoItau
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Duplicata mercantil'
          'Nota Promiss'#243'ria'
          'Nota de Seguro'
          'Mensalidade escolar'
          'Recibo'
          'Contrato'
          'Cosseguros'
          'Duplicata de Servi'#231'o'
          'Letra de C'#226'mbio'
          'Nota de D'#233'bitos'
          'DIVERSOs')
        TabOrder = 4
        Values.Strings = (
          '01'
          '02'
          '03'
          '04'
          '05'
          '06'
          '07'
          '08'
          '09'
          '13'
          '99')
      end
      object JvDBComboBox5: TJvDBComboBox
        Left = 136
        Top = 161
        Width = 97
        Height = 21
        Style = csDropDownList
        DataField = 'ACEITE'
        DataSource = Dm1.dsBcoItau
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 7
        Values.Strings = (
          'A'
          'N')
      end
      object JvDBComboBox9: TJvDBComboBox
        Left = 136
        Top = 138
        Width = 326
        Height = 21
        Style = csDropDownList
        DataField = 'INSTRCOBRANCA2'
        DataSource = Dm1.dsBcoItau
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Devolver  ap'#243's 05 dias do Vencimento'
          'Devolver  ap'#243's 30 dias do Vencimento'
          'Receber conforme instru'#231#245'es no pr'#243'prio t'#237'tulo'
          'Devolver  ap'#243's 10 dias do Vencimento'
          'Devolver  ap'#243's 15 dias do Vencimento'
          'Devolver  ap'#243's 20 dias do Vencimento'
          'Protestar'
          'N'#227'o protestar '
          'Devolver  ap'#243's 25 dias do Vencimento'
          'Devolver  ap'#243's 35 dias do Vencimento'
          'Devolver  ap'#243's 40 dias do Vencimento'
          'Devolver  ap'#243's 45 dias do Vencimento'
          'Devolver  ap'#243's 50 dias do Vencimento'
          'Devolver  ap'#243's 55 dias do Vencimento'
          'Devolver  ap'#243's 60 dias do Vencimento'
          'Devolver  ap'#243's 90 dias do Vencimento'
          'N'#227'o Receber ap'#243's 05 dias do vencimento'
          'N'#227'o Receber ap'#243's 10 dias do vencimento'
          'N'#227'o Receber ap'#243's 15 dias do vencimento'
          'N'#227'o Receber ap'#243's 20 dias do vencimento'
          'N'#227'o Receber ap'#243's 25 dias do vencimento'
          'N'#227'o Receber ap'#243's 30 dias do vencimento'
          'N'#227'o Receber ap'#243's 35 dias do vencimento'
          'N'#227'o Receber ap'#243's 40 dias do vencimento'
          'N'#227'o Receber ap'#243's 45 dias do vencimento'
          'N'#227'o Receber ap'#243's 50 dias do vencimento'
          'N'#227'o Receber ap'#243's 55 dias do vencimento'
          'Import'#226'ncia de desconto por dia'
          'N'#227'o Receber ap'#243's 60 dias do vencimento'
          'N'#227'o Receber ap'#243's 90 dias do vencimento'
          'Protesto Urgente '
          'Receber at'#233' o '#250'ltimo dia do m'#234's de vencimento'
          'Conceder desconto mesmo ap'#243's vencimento'
          'N'#227'o Receber ap'#243's o vencimento'
          'Conceder desconto conforme Nota de Cr'#233'dito'
          'Sujeito a protesto se n'#227'o for pago no vencimento'
          'Import'#226'ncia por dia de atraso a partir de '
          'Tem dia da Gra'#231'a'
          'uso do banco'
          'DISPENSAR JUROS/COMISS'#195'O DE PERMAN'#202'NCIA'
          'RECEBER SOMENTE COM A PARCELA ANTERIOR QUITADA'
          'favor efetuar pgto  somente atrav'#233's desta cobran'#231'a banc'#225'ria'
          'USO DO BANCO'
          'ap'#243's vencimento pag'#225'vel somente na empresa'
          'uso do banco'
          'somar valor do t'#237'tulo ao valor do campo mora/multa caso exista'
          'DEVOLVER AP'#211'S 365 DIAS DE VENCIDO'
          
            'COBRAN'#199'A NEGOCIADA. PAG'#193'VEL SOMENTE POR ESTE BLOQUETO NA REDE BA' +
            'NC'#193'RIA'
          'uso do banco'
          'VALOR DA IDA ENGLOBA MULTA DE 10% PRO RATA'
          
            'Cobrar juros ap'#243's 15 dias da emiss'#227'o (para t'#237'tulos com venciment' +
            'o '#224' vista)'
          
            'PAGAMENTO EM CHEQUE: SOMENTE RECEBER COM CHEQUE DE EMISS'#195'O DO SA' +
            'CADO'
          'protestar ap'#243's xx dias corridos do vencimento'
          'protestar ap'#243's xx DIAS '#250'teis do vencimento'
          'OPERA'#199#195'O REF A VENDOR'
          'Ap'#243's vencimento consultar a Ag'#234'ncia cedente'
          
            'Antes do Vencimento ou ap'#243's 15 dias, pag'#225'vel SOMENTE em nossa se' +
            'de'
          'uso do banco'
          'N'#227'o receber antes do Vencimento'
          'uso do banco'
          'No vencimento pag'#225'vel em qualquer ag'#234'ncia banc'#225'ria'
          'N'#227'o receber ap'#243's xx dias do vencimento'
          'Devolver ap'#243's xx dias do vencimento'
          'Mensagens nos bloquetos com 30 posi'#231#245'es'
          'Mensagens nos bloquetos com 40 posi'#231#245'es'
          'uso do banco'
          'Duplicata / Fatura N'#186)
        TabOrder = 6
        Values.Strings = (
          '02'
          '03'
          '05'
          '06'
          '07'
          '08'
          '09'
          '10'
          '11'
          '12'
          '13'
          '14'
          '15'
          '16'
          '17'
          '18'
          '19'
          '20'
          '21'
          '22'
          '23'
          '24'
          '25'
          '26'
          '27'
          '28'
          '29'
          '30'
          '31'
          '32'
          '36'
          '37'
          '38'
          '39'
          '40'
          '43'
          '44'
          '45'
          '46'
          '47'
          '51'
          '52'
          '53'
          '54'
          '56'
          '57'
          '58'
          '59'
          '70'
          '78'
          '79'
          '80'
          '81'
          '82'
          '83'
          '84'
          '86'
          '87'
          '88'
          '89'
          '90'
          '91'
          '92'
          '93'
          '94'
          '95'
          '98')
      end
      object JvDBDateEdit1: TJvDBDateEdit
        Left = 331
        Top = 207
        Width = 120
        Height = 21
        DataField = 'DTLIMITEDESCONTO'
        DataSource = Dm1.dsBcoItau
        NumGlyphs = 2
        TabOrder = 10
      end
    end
  end
end
