unit UComissaoRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfComissaoRel = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLDraw3: TRLDraw;
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
    RLLabel6: TRLLabel;
    RLDraw4: TRLDraw;
    RLLabel7: TRLLabel;
    RLDraw5: TRLDraw;
    RLLabel8: TRLLabel;
    RLDraw6: TRLDraw;
    RLLabel9: TRLLabel;
    RLDraw7: TRLDraw;
    RLLabel10: TRLLabel;
    RLDraw8: TRLDraw;
    RLLabel11: TRLLabel;
    RLDraw23: TRLDraw;
    RLLabel34: TRLLabel;
    RLLabel12: TRLLabel;
    RLDraw9: TRLDraw;
    RLLabel15: TRLLabel;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDraw10: TRLDraw;
    RLBand3: TRLBand;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLDraw11: TRLDraw;
    RLDraw12: TRLDraw;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLDraw13: TRLDraw;
    RLLabel24: TRLLabel;
    RLBand4: TRLBand;
    RLLabel25: TRLLabel;
    RLMemo1: TRLMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    vTotal, vEntradas, vSaidas : Real;
  public
    { Public declarations }
  end;

var
  fComissaoRel: TfComissaoRel;

implementation

uses UConsComissaoVend, DB;

{$R *.dfm}

procedure TfComissaoRel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfComissaoRel.FormShow(Sender: TObject);
begin
  vTotal    := 0;
  vEntradas := 0;
  vSaidas   := 0;
end;

procedure TfComissaoRel.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fConsComissaoVend.qExtComissaoFUNCAO.AsString = 'E' then
    vEntradas := vEntradas + fConsComissaoVend.qExtComissaoVLRCOMISSAO.AsFloat
  else
    vSaidas := vSaidas + fConsComissaoVend.qExtComissaoVLRCOMISSAO.AsFloat;
end;

procedure TfComissaoRel.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel14.Caption := FormatFloat('###,###,##0.00',fConsComissaoVend.JvxCurrencyEdit3.Value);

  RLLabel21.Caption := FormatFloat('###,###,##0.00',fConsComissaoVend.JvxCurrencyEdit1.Value);
  RLLabel16.Caption := FormatFloat('###,###,##0.00',fConsComissaoVend.JvxCurrencyEdit2.Value);
  RLLabel23.Caption := FormatFloat('###,###,##0.00',fConsComissaoVend.JvxCurrencyEdit4.Value);

  RLLabel19.Caption := FormatFloat('###,###,##0.00',fConsComissaoVend.JvxCurrencyEdit5.Value);
end;

procedure TfComissaoRel.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo1.Lines.Clear;
  PrintIt := (trim(fConsComissaoVend.qExtComissaoOBS.AsString) <> '');
  if not PrintIt then
    exit;
  RLMemo1.Lines.Text := fConsComissaoVend.qExtComissaoOBS.AsString;
end;

end.
