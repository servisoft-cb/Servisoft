unit UMovFinanceiroRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfMovFinanceiroRel = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
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
    RLDraw4: TRLDraw;
    RLLabel7: TRLLabel;
    RLDraw5: TRLDraw;
    RLLabel8: TRLLabel;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel9: TRLLabel;
    RLBand3: TRLBand;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLDraw6: TRLDraw;
    RLLabel10: TRLLabel;
    RLLabel15: TRLLabel;
    RLDraw7: TRLDraw;
    RLLabel6: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormShow(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    vVlrInicial : Real;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMovFinanceiroRel: TfMovFinanceiroRel;

implementation

uses UDm1, UDmCons, UMovFinanceiro, Math;

{$R *.dfm}

procedure TfMovFinanceiroRel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfMovFinanceiroRel.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel9.Caption  := 'Conta ';
  if fMovFinanceiro.JvDBLookupCombo1.Text <> '' then
    RLLabel9.Caption := RLLabel9.Caption + fMovFinanceiro.JvDBLookupCombo1.Text
  else
    RLLabel9.Caption := RLLabel9.Caption + '  Geral ';
  if RLReport1.PageNumber = 1 then
    RLLabel15.Caption := FormatFloat('###,###,##0.00',fMovFinanceiro.JvxCurrencyEdit5.Value)
  else
    RLLabel15.Caption := FormatFloat('###,###,##0.00',vVlrInicial);
  RLLabel21.Caption := '';
  if fMovFinanceiro.JvDBLookupCombo2.Text <> '' then
    RLLabel21.Caption := fMovFinanceiro.JvDBLookupCombo2.Text;
  RLLabel3.Caption := 'Movimento Financeiro';
  case fMovFinanceiro.ComboBox1.ItemIndex of
    0 : RLLabel3.Caption := RLLabel3.Caption + ' - (Física)';
    1 : RLLabel3.Caption := RLLabel3.Caption + ' - (Jurídica)';
  end;
end;

procedure TfMovFinanceiroRel.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel18.Caption := FormatFloat('###,###,##0.00',fMovFinanceiro.JvxCurrencyEdit1.Value);
  RLLabel19.Caption := FormatFloat('###,###,##0.00',fMovFinanceiro.JvxCurrencyEdit2.Value);
  RLLabel16.Caption := FormatFloat('###,###,##0.00',fMovFinanceiro.JvxCurrencyEdit3.Value);
  RLLabel17.Caption := FormatFloat('###,###,##0.00',fMovFinanceiro.JvxCurrencyEdit4.Value);
end;

procedure TfMovFinanceiroRel.FormShow(Sender: TObject);
begin
  vVlrInicial := StrToFloat(FormatFloat('###,###,##0.00',fMovFinanceiro.JvxCurrencyEdit5.Value));
end;

procedure TfMovFinanceiroRel.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  vVlrInicial := vVlrInicial + DmCons.qMovFinanceiroVLRENTRADA.AsFloat -
                               DmCons.qMovFinanceiroVLRSAIDA.AsFloat;
  RLLabel20.Caption := FormatFloat('###,###,##0.00',vVlrInicial);
end;

end.
