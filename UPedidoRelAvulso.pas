unit UPedidoRelAvulso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, JvComponent, JvMail, RLPreviewForm, QuickRpt, QRCtrls,
  jpeg, UDm1, rsDBUtils;

type
  TfPedidoRelAvulso = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail2: TRLSubDetail;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLSubDetail3: TRLSubDetail;
    RLBand3: TRLBand;
    JvMail1: TJvMail;
    RLLabel14: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel18: TRLLabel;
    RLDBText15: TRLDBText;
    RLDraw3: TRLDraw;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLDBText18: TRLDBText;
    RLDBText22: TRLDBText;
    RLLabel24: TRLLabel;
    RLDBText23: TRLDBText;
    RLLabel25: TRLLabel;
    RLDBText29: TRLDBText;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLDBText30: TRLDBText;
    RLDBText31: TRLDBText;
    RLBand5: TRLBand;
    RLLabel23: TRLLabel;
    RLDBText16: TRLDBText;
    RLLabel30: TRLLabel;
    RLLabel29: TRLLabel;
    RLSubDetail5: TRLSubDetail;
    RLBand6: TRLBand;
    RLDBMemo2: TRLDBMemo;
    RLLabel17: TRLLabel;
    RLSubDetail4: TRLSubDetail;
    RLBand1: TRLBand;
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
    RLLabel26: TRLLabel;
    RLDBText19: TRLDBText;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLLabel34: TRLLabel;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLLabel22: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw8: TRLDraw;
    RLDraw9: TRLDraw;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw13: TRLDraw;
    RLDraw14: TRLDraw;
    RLDraw15: TRLDraw;
    RLDraw16: TRLDraw;
    RLDraw17: TRLDraw;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw20: TRLDraw;
    RLLabel35: TRLLabel;
    RLDraw21: TRLDraw;
    RLDraw22: TRLDraw;
    RLDraw24: TRLDraw;
    RLDraw25: TRLDraw;
    RLDraw26: TRLDraw;
    RLDraw27: TRLDraw;
    RLLabel36: TRLLabel;
    RLLabel33: TRLLabel;
    RLDBText32: TRLDBText;
    RLDraw23: TRLDraw;
    RLBand4: TRLBand;
    RLDraw28: TRLDraw;
    RLLabel39: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    Fdm1: Tdm1;
    procedure SetDM1(const Value: Tdm1);
    { Private declarations }
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write SetDM1;
  end;

var
  fPedidoRelAvulso: TfPedidoRelAvulso;

implementation

uses UDmCons, DB;

{$R *.dfm}

procedure TfPedidoRelAvulso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfPedidoRelAvulso.RLBand1BeforePrint(Sender: TObject;
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

procedure TfPedidoRelAvulso.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel36.Caption := Fdm1.tPedidoSERVICO2.AsString;
end;

procedure TfPedidoRelAvulso.SetDM1(const Value: Tdm1);
begin
  Fdm1 := Value;
  oDBUtils.SetDataSourceProperties(Self, Fdm1);  
end;

end.
