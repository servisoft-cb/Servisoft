unit UContasReceberClienteRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfContasReceberClienteRel = class(TForm)
    RLReport1: TRLReport;
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
    RLLabel12: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLBand3: TRLBand;
    RLLabel6: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel7: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel13: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fContasReceberClienteRel: TfContasReceberClienteRel;
  vTotal, vPagas, vAVencer, vVencidas : Real;
  
implementation

uses UContasReceberCliente, DB;

{$R *.dfm}

procedure TfContasReceberClienteRel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfContasReceberClienteRel.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  vTotal := vTotal + fContasReceberCliente.tClienteTotalSaldoTotal.AsFloat;
  vPagas := vPagas + fContasReceberCliente.tClienteTotalSaldoPago.AsFloat;
  vAVencer := vAVencer + fContasReceberCliente.tClienteTotalSaldoVencer.AsFloat;
  vVencidas := vVencidas + fContasReceberCliente.tClienteTotalSaldoVencidas.AsFloat;
end;

procedure TfContasReceberClienteRel.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel7.Caption := FormatFloat('###,###,##0.00',vPagas);
  RLLabel9.Caption := FormatFloat('###,###,##0.00',vVencidas);
  RLLabel11.Caption := FormatFloat('###,###,##0.00',vAVencer);
  RLLabel13.Caption := FormatFloat('###,###,##0.00',vTotal);
end;

end.
