unit URelRecibo3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, ValorPor, UDm1, rsDBUtils;

type
  TfRelRecibo3 = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLImage1: TRLImage;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLLabel6: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText6: TRLDBText;
    RLDraw4: TRLDraw;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel15: TRLLabel;
    RLMemo1: TRLMemo;
    ValorPorExtenso2: TValorPorExtenso;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLLabel18: TRLLabel;
    RLDraw7: TRLDraw;
    RLDraw10: TRLDraw;
    RLLabel19: TRLLabel;
    RLMemo2: TRLMemo;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel11: TRLLabel;
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
  fRelRecibo3: TfRelRecibo3;

implementation

uses UDmCons, DB, UPrevRecibo2, UMovFinanceiroIt;

{$R *.dfm}

procedure TfRelRecibo3.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelRecibo3.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel4.Caption  := Fdm1.tEmpresaCEP.AsString + '    Bairro: ' + Fdm1.tEmpresaBAIRRO.AsString;
  RLLabel5.Caption  := Fdm1.tEmpresaCIDADE.AsString + ' / ' + Fdm1.tEmpresaUF.AsString;
//  RLImage1.Visible  := fPrevRecibo2.CheckBox1.Checked;
  RLMemo2.Lines.Text := Fdm1.tMovFinanceiroHISTORICO.AsString;

  RLLabel18.Caption := FormatDateTime('dddd',Date) + ', ' + FormatDateTime('dd',Date) + ' de ' +
                       FormatDateTime('mmmm',Date) + ' de ' + FormatDateTime('yyyy',Date);

  RLLabel20.Caption := Fdm1.tMovFinanceiroNUMMOVTO.AsString;
  if fMovFinanceiroIt.CheckBox1.Checked then
    begin
      RLImage1.Picture.LoadFromFile(Fdm1.tEmpresaLOGOEMPRESA.AsString);
      RLImage1.Visible  := fMovFinanceiroIt.CheckBox1.Checked;
    end;
  if fMovFinanceiroIt.CheckBox2.Checked then
    begin
      RLImage1.Picture.LoadFromFile(Fdm1.tEmpresaLOGOEMPRESA2.AsString);
      RLImage1.Visible  := fMovFinanceiroIt.CheckBox2.Checked;
    end;

  if Fdm1.tMovFinanceiroVLRENTRADA.AsFloat > 0 then
    begin
      ValorPorExtenso2.Valor := Fdm1.tMovFinanceiroVLRENTRADA.AsFloat;
      RLMemo1.Lines.Text := ValorPorExtenso2.Texto;
      RLLabel15.Caption := 'Valor Recebido:';
      RLLabel10.Caption := 'Recibi (emos) de:';
      RLLabel21.Caption := Fdm1.tEmpresaFANTASIA.AsString;
      RLLabel11.Caption := FormatFloat('###,###,##0.00',Fdm1.tMovFinanceiroVLRENTRADA.AsFloat);
    end
  else
  if Fdm1.tMovFinanceiroVLRSAIDA.AsFloat > 0 then
    begin
      ValorPorExtenso2.Valor := Fdm1.tMovFinanceiroVLRSAIDA.AsFloat;
      RLMemo1.Lines.Text := ValorPorExtenso2.Texto;
      RLLabel15.Caption := 'Valor Pago:';
      RLLabel10.Caption := 'Pago a:';
      RLLabel21.Caption := Fdm1.tMovFinanceiroNOMEPESSOA.AsString;
      RLLabel11.Caption := FormatFloat('###,###,##0.00',Fdm1.tMovFinanceiroVLRSAIDA.AsFloat);
    end;
end;

procedure TfRelRecibo3.SetDM1(const Value: Tdm1);
begin
  Fdm1 := Value;
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.








