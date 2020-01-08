unit UPedidoRelPermanente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, JvComponent, JvMail, RLPreviewForm, QuickRpt, QRCtrls,
  jpeg, UDm1, rsDBUtils;

type
  TfPedidoRelPermanente = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail2: TRLSubDetail;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLSubDetail3: TRLSubDetail;
    RLBand3: TRLBand;
    RLLabel14: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel18: TRLLabel;
    RLDBText15: TRLDBText;
    RLSubDetail4: TRLSubDetail;
    RLBand4: TRLBand;
    RLDBMemo1: TRLDBMemo;
    RLBand5: TRLBand;
    RLLabel23: TRLLabel;
    RLDBText16: TRLDBText;
    RLLabel30: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel22: TRLLabel;
    RLDetailGrid1: TRLDetailGrid;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText23: TRLDBText;
    RLLabel31: TRLLabel;
    RLLabel33: TRLLabel;
    RLDBText30: TRLDBText;
    RLDBText32: TRLDBText;
    RLLabel21: TRLLabel;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLLabel24: TRLLabel;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLLabel25: TRLLabel;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLLabel26: TRLLabel;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLLabel27: TRLLabel;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLLabel28: TRLLabel;
    RLDBText33: TRLDBText;
    RLDBText34: TRLDBText;
    RLLabel32: TRLLabel;
    RLDBText31: TRLDBText;
    JvMail1: TJvMail;
    RLDraw3: TRLDraw;
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
    RLDraw1: TRLDraw;
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
    RLLabel2: TRLLabel;
    RLLabel17: TRLLabel;
    RLDBText35: TRLDBText;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLDBText36: TRLDBText;
    RLDBText37: TRLDBText;
    RLLabel36: TRLLabel;
    RLDBText38: TRLDBText;
    RLDBText39: TRLDBText;
    RLLabel37: TRLLabel;
    RLDraw16: TRLDraw;
    RLDraw17: TRLDraw;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw20: TRLDraw;
    RLDraw21: TRLDraw;
    RLDraw22: TRLDraw;
    RLDraw24: TRLDraw;
    RLDraw26: TRLDraw;
    RLDraw27: TRLDraw;
    RLDraw25: TRLDraw;
    RLLabel38: TRLLabel;
    RLBand6: TRLBand;
    RLLabel39: TRLLabel;
    RLDBMemo2: TRLDBMemo;
    RLDraw23: TRLDraw;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    Fdm1: Tdm1;
    procedure SetDM1(const Value: Tdm1);
    { Private declarations }
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write SetDM1;
  end;

var
  fPedidoRelPermanente: TfPedidoRelPermanente;

implementation

uses UDmCons, DB;

{$R *.dfm}

procedure TfPedidoRelPermanente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfPedidoRelPermanente.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  i : Integer;
begin
  {if Fdm1.tEmpresaLOGOEMPRESA.AsString <> '' then
    RLImage1.Picture.LoadFromFile(Fdm1.tEmpresaLOGOEMPRESA.AsString);}
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

procedure TfPedidoRelPermanente.SetDM1(const Value: Tdm1);
begin
  Fdm1 := Value;
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.
