unit UPedidoRelPermanenteAprov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, JvComponent, JvMail, RLPreviewForm, QuickRpt, QRCtrls,
  jpeg, UDm1, rsDBUtils;

type
  TfPedidoRelPermanenteAprov = class(TForm)
    JvMail1: TJvMail;
    RLReport1: TRLReport;
    RLSubDetail2: TRLSubDetail;
    RLBand1: TRLBand;
    RLDraw10: TRLDraw;
    RLDraw14: TRLDraw;
    RLDraw13: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw15: TRLDraw;
    RLDraw11: TRLDraw;
    RLDraw9: TRLDraw;
    RLDraw8: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw2: TRLDraw;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel13: TRLLabel;
    RLDBText14: TRLDBText;
    RLImage1: TRLImage;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel17: TRLLabel;
    RLDBText35: TRLDBText;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLDBText36: TRLDBText;
    RLDBText37: TRLDBText;
    RLLabel36: TRLLabel;
    RLDBText38: TRLDBText;
    RLDBText39: TRLDBText;
    RLDBMemo2: TRLDBMemo;
    RLDBMemo3: TRLDBMemo;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText21: TRLDBText;
    RLDBText20: TRLDBText;
    RLDraw1: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw16: TRLDraw;
    RLDraw17: TRLDraw;
    RLDraw18: TRLDraw;
    RLDBText2: TRLDBText;
    RLSubDetail3: TRLSubDetail;
    RLBand4: TRLBand;
    RLBand6: TRLBand;
    RLDraw25: TRLDraw;
    RLDraw23: TRLDraw;
    RLDraw21: TRLDraw;
    RLDraw20: TRLDraw;
    RLDraw19: TRLDraw;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel24: TRLLabel;
    RLDraw22: TRLDraw;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLDraw24: TRLDraw;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLDraw26: TRLDraw;
    RLDraw27: TRLDraw;
    RLDraw28: TRLDraw;
    RLDraw29: TRLDraw;
    RLDraw30: TRLDraw;
    RLDraw31: TRLDraw;
    RLDraw32: TRLDraw;
    RLDraw33: TRLDraw;
    RLDraw34: TRLDraw;
    RLDraw35: TRLDraw;
    RLDraw36: TRLDraw;
    RLDraw37: TRLDraw;
    RLDraw38: TRLDraw;
    RLDraw39: TRLDraw;
    RLDraw40: TRLDraw;
    RLDraw41: TRLDraw;
    RLDraw42: TRLDraw;
    RLDraw43: TRLDraw;
    RLDraw44: TRLDraw;
    RLDraw45: TRLDraw;
    RLDraw46: TRLDraw;
    RLDraw47: TRLDraw;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel18: TRLLabel;
    RLDBText18: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText34: TRLDBText;
    RLDBText33: TRLDBText;
    RLLabel19: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLDBText15: TRLDBText;
    RLSubDetail4: TRLSubDetail;
    RLBand3: TRLBand;
    RLDBText16: TRLDBText;
    RLDBMemo1: TRLDBMemo;
    RLBand5: TRLBand;
    RLLabel2: TRLLabel;
    RLDBText17: TRLDBText;
    RLLabel46: TRLLabel;
    RLLabel47: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    Fdm1: Tdm1;
    procedure SetDM1(const Value: Tdm1);
    { Private declarations }
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write SetDM1;
  end;

var
  fPedidoRelPermanenteAprov: TfPedidoRelPermanenteAprov;

implementation

uses UDmCons, DB;

{$R *.dfm}

procedure TfPedidoRelPermanenteAprov.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfPedidoRelPermanenteAprov.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  i : Integer;
begin
  //if Fdm1.tEmpresaLOGOEMPRESA.AsString <> '' then
    //RLImage1.Picture.LoadFromFile(Fdm1.tEmpresaLOGOEMPRESA.AsString);
  RLLabel3.Caption := Fdm1.tEmpresaENDERECO.AsString + ' - ' + Fdm1.tEmpresaBAIRRO.AsString + ' - CEP: ' + Fdm1.tEmpresaCEP.AsString + ' - ' + Fdm1.tEmpresaCIDADE.AsString + ' - ' + Fdm1.tEmpresaUF.AsString;
  RLLabel1.Caption := 'Fone 1: ' + Fdm1.tEmpresaFONE.AsString + ' - Fone 2: ' + Fdm1.tEmpresaFONE2.AsString + ' - Fone 3: ' + Fdm1.tEmpresaFONE3.AsString;
{  for i := 0 to Screen.FormCount - 1 do
    begin
      if (Screen.Forms[i] is TfPedido) and (fPedido.Showing) then
        begin
          RLLabel3.Caption    := 'Nº Pedido:';
          RLDBText2.DataField := 'NUMPEDIDO';
          RLLabel1.Caption    := 'N° Pedido Cliente:';
        end
      else
      if (Screen.Forms[i] is TfOrcamento) and (fOrcamento.Showing) then
        begin
          RLLabel3.Caption    := 'Nº Orçamento:';
          RLDBText2.DataField := 'NUMORCAMENTO';
          RLLabel1.Caption    := ' ';
        end;
    end;}

end;

procedure TfPedidoRelPermanenteAprov.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel44.Caption := FormatFloat('0.00',Fdm1.tPedidoVLRTOTAL.AsFloat);
  RLLabel45.Caption := Fdm1.tPedidoMELHOR_VCTO.AsString;
end;

procedure TfPedidoRelPermanenteAprov.SetDM1(const Value: Tdm1);
begin
  Fdm1 := Value;
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.
