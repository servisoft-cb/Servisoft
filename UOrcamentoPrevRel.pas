unit UOrcamentoPrevRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDm1, rsDBUtils;

type
  TfOrcamentoPrevRel = class(TForm)
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
    Fdm1: TDm1;
  public
    { Public declarations }
  end;

var
  fOrcamentoPrevRel: TfOrcamentoPrevRel;

implementation

uses UOrcamentoPrev, DB;

{$R *.dfm}

procedure TfOrcamentoPrevRel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfOrcamentoPrevRel.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fOrcamentoPrev.qResumidoSITUACAO.AsString = 'PE' then
    RLLabel6.Caption := 'PENDENTE'
  else
  if fOrcamentoPrev.qResumidoSITUACAO.AsString = 'NA' then
    RLLabel6.Caption := 'NÃO APROVADO'
  else
  if fOrcamentoPrev.qResumidoSITUACAO.AsString = 'AP' then
    RLLabel6.Caption := 'APROVADO';
end;

procedure TfOrcamentoPrevRel.RLSubDetail3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fOrcamentoPrev.ComboBox2.ItemIndex = 0 then
    begin
      PrintIt := True;
      FDm1.tPedidoIt.Close;
      FDm1.PedidoIt.Params[0].AsInteger := fOrcamentoPrev.qResumidoNUMLACTO.AsInteger;
      FDm1.tPedidoIt.Open;
    end
  else
    PrintIt := False;  
end;

end.
