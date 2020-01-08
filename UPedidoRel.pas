unit UPedidoRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, JvComponent, JvMail, RLPreviewForm, jpeg, UDm1, rsDBUtils;

type
  TfPedidoRel = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail2: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel3: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLSubDetail3: TRLSubDetail;
    RLBand3: TRLBand;
    RLDBText26: TRLDBText;
    RLLabel26: TRLLabel;
    RLDBText27: TRLDBText;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLDBText28: TRLDBText;
    RLDraw2: TRLDraw;
    RLImage1: TRLImage;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel14: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel18: TRLLabel;
    RLDBText15: TRLDBText;
    RLDraw1: TRLDraw;
    RLLabel34: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText8: TRLDBText;
    RLDraw4: TRLDraw;
    RLDBText9: TRLDBText;
    RLLabel7: TRLLabel;
    RLDraw8: TRLDraw;
    RLDraw3: TRLDraw;
    RLLabel8: TRLLabel;
    RLDBText10: TRLDBText;
    RLDraw15: TRLDraw;
    RLLabel9: TRLLabel;
    RLDBText11: TRLDBText;
    RLDraw12: TRLDraw;
    RLDraw9: TRLDraw;
    RLDBText12: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText13: TRLDBText;
    RLDraw5: TRLDraw;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDBText14: TRLDBText;
    RLDraw6: TRLDraw;
    RLLabel13: TRLLabel;
    RLDBText17: TRLDBText;
    RLDraw10: TRLDraw;
    RLDBText18: TRLDBText;
    RLLabel17: TRLLabel;
    RLDraw13: TRLDraw;
    RLLabel31: TRLLabel;
    RLDBText22: TRLDBText;
    RLDraw14: TRLDraw;
    RLDraw11: TRLDraw;
    RLDBText23: TRLDBText;
    RLLabel32: TRLLabel;
    RLDraw7: TRLDraw;
    RLDBText29: TRLDBText;
    RLLabel33: TRLLabel;
    RLDraw21: TRLDraw;
    RLDraw22: TRLDraw;
    RLDraw23: TRLDraw;
    RLDraw24: TRLDraw;
    RLDraw25: TRLDraw;
    RLDraw26: TRLDraw;
    RLDraw27: TRLDraw;
    RLDraw28: TRLDraw;
    RLDraw29: TRLDraw;
    RLDraw30: TRLDraw;
    RLDraw31: TRLDraw;
    RLDraw32: TRLDraw;
    RLBand4: TRLBand;
    RLDraw20: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw18: TRLDraw;
    RLDraw17: TRLDraw;
    RLDraw16: TRLDraw;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLSubDetail4: TRLSubDetail;
    RLBand5: TRLBand;
    RLDraw34: TRLDraw;
    RLDraw35: TRLDraw;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLBand6: TRLBand;
    RLDraw36: TRLDraw;
    RLDraw37: TRLDraw;
    RLDBText30: TRLDBText;
    RLDBText31: TRLDBText;
    RLDraw38: TRLDraw;
    RLLabel37: TRLLabel;
    RLDBText32: TRLDBText;
    RLLabel38: TRLLabel;
    RLDBText33: TRLDBText;
    RLBand7: TRLBand;
    RLLabel23: TRLLabel;
    RLLabel29: TRLLabel;
    RLDBText16: TRLDBText;
    RLLabel30: TRLLabel;
    RLBand8: TRLBand;
    RLLabel22: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLBand9: TRLBand;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLBand10: TRLBand;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLBand11: TRLBand;
    RLLabel43: TRLLabel;
    RLDBMemo2: TRLDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand11BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private

    vVlrServico : Real;
    vVlrProduto : Real;
    Fdm1: Tdm1;
    procedure SetDM1(const Value: Tdm1);
    { Private declarations }
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write SetDM1;
  end;

var
  fPedidoRel: TfPedidoRel;

implementation

uses UDmCons, DB;

{$R *.dfm}

procedure TfPedidoRel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfPedidoRel.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  i : Integer;
begin
  //if Fdm1.tEmpresaLOGOEMPRESA.AsString <> '' then
    //RLImage1.Picture.LoadFromFile(Fdm1.tEmpresaLOGOEMPRESA.AsString);
  RLLabel3.Caption := Fdm1.tEmpresaENDERECO.AsString + ' - ' + Fdm1.tEmpresaBAIRRO.AsString + ' - CEP: ' + Fdm1.tEmpresaCEP.AsString + ' - ' + Fdm1.tEmpresaCIDADE.AsString + ' - ' + Fdm1.tEmpresaUF.AsString;
  RLLabel1.Caption := 'Fone 1: ' + Fdm1.tEmpresaFONE.AsString + ' - Fone 2: ' + Fdm1.tEmpresaFONE2.AsString + ' - Fone 3: ' + Fdm1.tEmpresaFONE3.AsString;
  if Fdm1.tPedidoTIPO.AsString = '4' then
    begin
      RLLabel2.Caption  := 'ORDEM DE SERVIÇO';
      RLLabel34.Caption := 'ORD. SERVIÇO:';
    end
  else
  if Fdm1.tPedidoTIPO.AsString = '5' then
    begin
      RLLabel2.Caption  := 'RECLAMAÇÃO';
      RLLabel34.Caption := 'RECLAMAÇÃO:';
    end
  else
    begin
      RLLabel2.Caption  := 'ORÇAMENTO - INSTALAÇÃO';
      RLLabel34.Caption := 'ORÇAMENTO:';
    end;
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

procedure TfPedidoRel.FormCreate(Sender: TObject);
begin
  vVlrServico := 0;
  vVlrProduto := 0;
end;

procedure TfPedidoRel.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  vVlrServico := vVlrServico + Fdm1.tPedidoServicoVALORMES.AsFloat;
end;

procedure TfPedidoRel.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel40.Caption := FormatFloat('###,###,##0.00',vVlrServico);
  vVlrServico       := 0;
end;

procedure TfPedidoRel.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  vVlrProduto := vVlrProduto + Fdm1.tPedidoItVLRTOTAL.AsFloat;
end;

procedure TfPedidoRel.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel42.Caption := FormatFloat('###,###,##0.00',vVlrProduto);
  vVlrProduto       := 0;
end;

procedure TfPedidoRel.RLBand11BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if Fdm1.tPedidoTIPO.AsString = '4' then
    RLLabel43.Visible := true
  else
    RLLabel43.Visible := false;
end;

procedure TfPedidoRel.SetDM1(const Value: Tdm1);
begin
  Fdm1 := Value;
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.
