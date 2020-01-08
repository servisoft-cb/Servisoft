object fPortaImpressao: TfPortaImpressao
  Left = 222
  Top = 110
  Width = 250
  Height = 129
  BorderIcons = [biSystemMenu]
  Caption = 'Selecione a porta...'
  Color = 10930928
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object ComboBox1: TComboBox
    Left = 48
    Top = 16
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = 'LPT1'
    Items.Strings = (
      'LPT1'
      'LPT2'
      'C:\Boleto.txt')
  end
  object BitBtn1: TBitBtn
    Left = 83
    Top = 56
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
