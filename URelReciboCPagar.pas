unit URelReciboCPagar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, ValorPor, DB, UDM1, rsDBUtils;

type
  TfRelReciboCPagar = class(TForm)
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
    ValorPorExtenso2: TValorPorExtenso;
    QRLabel14: TQRLabel;
    QRLabel29: TQRLabel;
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
  fRelReciboCPagar: TfRelReciboCPagar;

implementation

uses UDmCons;

{$R *.DFM}

procedure TfRelReciboCPagar.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if dmCons.qBanco.Locate('ID',Fdm1.tCPagarHistCODBANCO.AsInteger,([LocaseInsensitive])) then
    QRLabel14.Caption := DmCons.qBancoNOME.AsString;
  QRLabel7.Caption  := ValorPorExtenso2.Texto;
  QRLabel10.Caption := Fdm1.tCPagarHistHISTORICO.AsString;
  QRLabel13.Caption := Fdm1.tCPagarHistNUMDUPLICATA.AsString + '/' + Fdm1.tCPagarParcPARCELA.AsString;
  QRLabel1.Caption  := 'Recibo R$     ' + FormatFloat('###,###,##0.00',Fdm1.tCPagarHistVLRULTPGTO.AsFloat);

  QRLabel29.Caption := Fdm1.tCReceberHistDTULTPGTO.AsString;
  if Fdm1.tCPagarParcCODBANCO.AsInteger = 1 then
    QRLabel11.Caption := ''
  else
    QRLabel11.Caption := 'Banco:';
end;

procedure TfRelReciboCPagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelReciboCPagar.FormCreate(Sender: TObject);
begin
  ValorPorExtenso2.Valor := Fdm1.tCPagarHistVLRULTPGTO.AsFloat;
end;

procedure TfRelReciboCPagar.SetDM1(const Value: Tdm1);
begin
  Fdm1 := Value;
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.
