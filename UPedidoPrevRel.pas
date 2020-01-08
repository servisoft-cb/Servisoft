unit UPedidoPrevRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDm1, rsDBUtils;

type
  TfPedidoPrevRel = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLDraw9: TRLDraw;
    RLDBText1: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel4: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel5: TRLLabel;
    RLDraw5: TRLDraw;
    RLLabel8: TRLLabel;
    RLDraw7: TRLDraw;
    RLLabel10: TRLLabel;
    RLDraw23: TRLDraw;
    RLLabel34: TRLLabel;
    RLLabel12: TRLLabel;
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel6: TRLLabel;
    RLSubDetail3: TRLSubDetail;
    RLBand3: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLSubDetail3BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
    Fdm1: Tdm1;
  public
    { Public declarations }
  end;

var
  fPedidoPrevRel: TfPedidoPrevRel;

implementation

uses UPedidoPrev, DB;

{$R *.dfm}

procedure TfPedidoPrevRel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfPedidoPrevRel.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fPedidoPrev.qResumidoSITUACAO.AsString = 'PE' then
    RLLabel6.Caption := 'PENDENTE'
  else
  if fPedidoPrev.qResumidoSITUACAO.AsString = 'NA' then
    RLLabel6.Caption := 'NÃO APROVADO'
  else
  if fPedidoPrev.qResumidoSITUACAO.AsString = 'AP' then
    RLLabel6.Caption := 'APROVADO';
end;

procedure TfPedidoPrevRel.RLSubDetail3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fPedidoPrev.ComboBox2.ItemIndex = 0 then
    begin
      PrintIt := True;
      FDm1.tPedidoIt.Close;
      FDm1.PedidoIt.Params[0].AsInteger := fPedidoPrev.qResumidoNUMLACTO.AsInteger;
      FDm1.tPedidoIt.Open;
    end
  else
    PrintIt := False;  
end;

end.
