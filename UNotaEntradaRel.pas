unit UNotaEntradaRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfNotaEntradaRel = class(TForm)
    RLReport2: TRLReport;
    RLSubDetail4: TRLSubDetail;
    RLBand4: TRLBand;
    RLDBText22: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText23: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText24: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText25: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText26: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText27: TRLDBText;
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLSubDetail5: TRLSubDetail;
    RLBand6: TRLBand;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLSubDetail6: TRLSubDetail;
    RLBand7: TRLBand;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLSubDetail7: TRLSubDetail;
    RLBand8: TRLBand;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLDBText31: TRLDBText;
    RLDBText32: TRLDBText;
    RLDBText33: TRLDBText;
    RLDBText34: TRLDBText;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLSubDetail3: TRLSubDetail;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLSubDetail8: TRLSubDetail;
    RLBand5: TRLBand;
    RLDraw1: TRLDraw;
    RLSubDetail9: TRLSubDetail;
    RLBand9: TRLBand;
    RLLabel15: TRLLabel;
    RLDBText9: TRLDBText;
    RLSubDetail10: TRLSubDetail;
    RLBand10: TRLBand;
    RLLabel16: TRLLabel;
    RLDBText15: TRLDBText;
    RLSubDetail11: TRLSubDetail;
    RLBand11: TRLBand;
    RLLabel17: TRLLabel;
    RLDBText16: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLSubDetail5BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLSubDetail6BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLSubDetail1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNotaEntradaRel: TfNotaEntradaRel;

implementation

uses UDm1, UNotaEntrada, DB;

{$R *.dfm}

procedure TfNotaEntradaRel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfNotaEntradaRel.RLSubDetail5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := not Dm1.tNotaEntradaIt.IsEmpty;
end;

procedure TfNotaEntradaRel.RLSubDetail6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := not Dm1.tNotaEntradaMObra.IsEmpty;
end;

procedure TfNotaEntradaRel.RLSubDetail1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := not Dm1.tNotaEntradaParc.IsEmpty;
end;

end.
