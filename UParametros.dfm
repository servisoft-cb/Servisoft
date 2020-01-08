object fParametros: TfParametros
  Left = 321
  Top = 94
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Par'#226'metros'
  ClientHeight = 438
  ClientWidth = 442
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
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 440
    Height = 399
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Dados Gerais'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 432
        Height = 371
        Align = alClient
        BevelOuter = bvLowered
        TabOrder = 0
        object Label1: TLabel
          Left = 47
          Top = 32
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'Pa'#237's Padr'#227'o:'
        end
        object Label3: TLabel
          Left = 5
          Top = 60
          Width = 104
          Height = 13
          Alignment = taRightJustify
          Caption = 'Margem m'#237'nima lucro:'
        end
        object Label4: TLabel
          Left = 17
          Top = 84
          Width = 92
          Height = 13
          Alignment = taRightJustify
          Caption = 'Margem lucro ideal:'
        end
        object Label2: TLabel
          Left = 27
          Top = 111
          Width = 82
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Homem/Hr:'
        end
        object Label5: TLabel
          Left = 28
          Top = 137
          Width = 81
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Km rodado:'
        end
        object Label6: TLabel
          Left = 23
          Top = 164
          Width = 86
          Height = 13
          Alignment = taRightJustify
          Caption = 'Imposto sobre NF:'
        end
        object Label11: TLabel
          Left = 6
          Top = 190
          Width = 103
          Height = 13
          Alignment = taRightJustify
          Caption = '% Encargos da Folha:'
        end
        object Label12: TLabel
          Left = 13
          Top = 217
          Width = 96
          Height = 13
          Alignment = taRightJustify
          Caption = '% Lucro Or'#231'amento:'
        end
        object JvDBLookupCombo1: TJvDBLookupCombo
          Left = 114
          Top = 24
          Width = 302
          Height = 21
          DropDownCount = 8
          DataField = 'CODPAIS'
          DataSource = Dm1.dsParametro
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DmCons.qsPais
          TabOrder = 0
        end
        object DBEdit1: TDBEdit
          Left = 114
          Top = 50
          Width = 63
          Height = 21
          DataField = 'PERCMINIMO'
          DataSource = Dm1.dsParametro
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 114
          Top = 76
          Width = 63
          Height = 21
          DataField = 'PERCVENDA'
          DataSource = Dm1.dsParametro
          TabOrder = 2
        end
        object DBEdit3: TDBEdit
          Left = 114
          Top = 103
          Width = 63
          Height = 21
          DataField = 'VLRHOMEMHR'
          DataSource = Dm1.dsParametro
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 114
          Top = 129
          Width = 63
          Height = 21
          DataField = 'CUSTOKM'
          DataSource = Dm1.dsParametro
          TabOrder = 4
        end
        object DBEdit5: TDBEdit
          Left = 114
          Top = 156
          Width = 63
          Height = 21
          DataField = 'IMPOSTO_NF'
          DataSource = Dm1.dsParametro
          TabOrder = 5
        end
        object DBEdit8: TDBEdit
          Left = 114
          Top = 182
          Width = 63
          Height = 21
          DataField = 'PERCFOLHA'
          DataSource = Dm1.dsParametro
          TabOrder = 6
        end
        object DBEdit9: TDBEdit
          Left = 114
          Top = 209
          Width = 63
          Height = 21
          DataField = 'PERCLUCRO'
          DataSource = Dm1.dsParametro
          TabOrder = 7
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Cabe'#231'alho Or'#231'amento'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 432
        Height = 371
        Align = alClient
        BevelOuter = bvLowered
        TabOrder = 0
        object Label8: TLabel
          Left = 21
          Top = 16
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'T'#237'tulo 1:'
        end
        object Label9: TLabel
          Left = 21
          Top = 195
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'T'#237'tulo 2:'
        end
        object Label7: TLabel
          Left = 7
          Top = 40
          Width = 54
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cabe'#231'alho:'
        end
        object Label10: TLabel
          Left = 7
          Top = 219
          Width = 54
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cabe'#231'alho:'
        end
        object DBEdit6: TDBEdit
          Left = 64
          Top = 8
          Width = 364
          Height = 21
          DataField = 'TITULO1'
          DataSource = Dm1.dsParametro
          TabOrder = 0
        end
        object DBEdit7: TDBEdit
          Left = 64
          Top = 187
          Width = 364
          Height = 21
          DataField = 'TITULO2'
          DataSource = Dm1.dsParametro
          TabOrder = 2
        end
        object DBMemo1: TDBMemo
          Left = 64
          Top = 32
          Width = 366
          Height = 150
          DataField = 'CABECALHO1'
          DataSource = Dm1.dsParametro
          TabOrder = 1
        end
        object DBMemo2: TDBMemo
          Left = 64
          Top = 211
          Width = 366
          Height = 150
          DataField = 'CABECALHO2'
          DataSource = Dm1.dsParametro
          TabOrder = 3
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 400
    Width = 440
    Height = 37
    TabOrder = 1
    object BitBtn3: TBitBtn
      Left = 135
      Top = 5
      Width = 85
      Height = 27
      Hint = 'Cancela a altera'#231#227'o ou inser'#231#227'o do registro'
      Caption = 'Ca&ncelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitBtn3Click
      NumGlyphs = 2
    end
    object BitBtn5: TBitBtn
      Left = 220
      Top = 5
      Width = 85
      Height = 27
      Hint = 'Confirma a altera'#231#227'o ou a inser'#231#227'o do registro'
      Caption = '&Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitBtn5Click
      NumGlyphs = 2
    end
  end
end
