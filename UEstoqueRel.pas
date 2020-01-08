unit UEstoqueRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfEstoqueRel = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand4: TRLBand;
    RLDBText12: TRLDBText;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLDraw13: TRLDraw;
    RLLabel21: TRLLabel;
    RLDraw15: TRLDraw;
    RLLabel24: TRLLabel;
    RLDraw16: TRLDraw;
    RLLabel25: TRLLabel;
    RLDraw17: TRLDraw;
    RLLabel26: TRLLabel;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDraw1: TRLDraw;
    RLReport2: TRLReport;
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText5: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel4: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel5: TRLLabel;
    RLDraw4: TRLDraw;
    RLLabel6: TRLLabel;
    RLDraw5: TRLDraw;
    RLLabel7: TRLLabel;
    RLDraw7: TRLDraw;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLDraw8: TRLDraw;
    RLDraw9: TRLDraw;
    RLLabel10: TRLLabel;
    RLDraw10: TRLDraw;
    RLLabel11: TRLLabel;
    RLDraw11: TRLDraw;
    RLLabel12: TRLLabel;
    RLDraw12: TRLDraw;
    RLLabel13: TRLLabel;
    RLDraw14: TRLDraw;
    RLLabel14: TRLLabel;
    RLBand3: TRLBand;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLBand5: TRLBand;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLDraw6: TRLDraw;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel27: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEstoqueRel: TfEstoqueRel;

implementation

uses UEstoque, UProdutoHist;

{$R *.dfm}

procedure TfEstoqueRel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfEstoqueRel.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel22.Caption := FormatFloat('###,###,##0.000',fProdutoHist.JvxCurrencyEdit1.Value);
  RLLabel23.Caption := FormatFloat('###,###,##0.000',fProdutoHist.JvxCurrencyEdit3.Value);
  RLLabel27.Caption := FormatFloat('###,###,##0.000',fProdutoHist.JvxCurrencyEdit4.Value);
end;

end.
