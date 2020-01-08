unit URelRecibo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, ValorPor, UDM1, rsDBUtils;

type
  TfRelRecibo = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText7: TQRDBText;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText10: TQRDBText;
    QRShape2: TQRShape;
    QRLabel10: TQRLabel;
    QRShape3: TQRShape;
    QRLabel11: TQRLabel;
    QRShape5: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel9: TQRLabel;
    QRShape4: TQRShape;
    QRLabel14: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText22: TQRDBText;
    QRShape6: TQRShape;
    QRLabel22: TQRLabel;
    QRShape7: TQRShape;
    QRLabel23: TQRLabel;
    QRShape8: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel26: TQRLabel;
    ValorPorExtenso2: TValorPorExtenso;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    Fdm1: Tdm1;
    procedure SetDM1(const Value: Tdm1);
    { Private declarations }
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write SetDM1;
  end;

var
  fRelRecibo: TfRelRecibo;

implementation

uses DB, UDmCons;

{$R *.DFM}

procedure TfRelRecibo.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if dmCons.qBanco.Locate('ID',Fdm1.tCReceberHistCODBANCO.AsInteger,([LocaseInsensitive])) then
    begin
      QRLabel27.Caption := DmCons.qBancoNOME.AsString;
      QRLabel28.Caption := DmCons.qBancoNOME.AsString;
    end;
  QRLabel1.Caption  := 'Recibo R$     ' + FormatFloat('###,###,##0.00',Fdm1.tCReceberHistVLRULTPGTO.AsFloat);
  QRLabel7.Caption  := ValorPorExtenso2.Texto;
  QRLabel10.Caption := Fdm1.tCReceberHistHISTORICO.AsString;
  QRLabel13.Caption := Fdm1.tCReceberParcNUMNOTA.AsString + '/' + Fdm1.tCReceberParcPARCELA.AsString;
  QRLabel30.Caption := Fdm1.tCReceberHistDTULTPGTO.AsString;

  QRLabel29.Caption := Fdm1.tCReceberHistDTULTPGTO.AsString;
  QRLabel14.Caption  := 'Recibo R$     ' + FormatFloat('###,###,##0.00',Fdm1.tCReceberHistVLRULTPGTO.AsFloat);
  QRLabel20.Caption  := ValorPorExtenso2.Texto;
  QRLabel22.Caption := Fdm1.tCReceberHistHISTORICO.AsString;
  QRLabel25.Caption := Fdm1.tCReceberParcNUMNOTA.AsString + '/' + Fdm1.tCReceberParcPARCELA.AsString;
  if Fdm1.tCReceberParcCODBANCO.AsInteger = 1 then
    QRLabel11.Caption := ''
  else
    QRLabel11.Caption := 'Banco:';
end;

procedure TfRelRecibo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelRecibo.FormCreate(Sender: TObject);
begin
  ValorPorExtenso2.Valor := Fdm1.tCReceberHistVLRULTPGTO.AsFloat;
end;

procedure TfRelRecibo.SetDM1(const Value: Tdm1);
begin
  Fdm1 := Value;
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.
