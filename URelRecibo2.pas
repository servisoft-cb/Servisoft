unit URelRecibo2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, ValorPor, UDm1, rsDBUtils;

type
  TfRelRecibo2 = class(TForm)
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
    RLDBText7: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel15: TRLLabel;
    RLMemo1: TRLMemo;
    ValorPorExtenso2: TValorPorExtenso;
    RLDraw5: TRLDraw;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLDraw6: TRLDraw;
    RLLabel18: TRLLabel;
    RLDraw7: TRLDraw;
    RLDraw10: TRLDraw;
    RLLabel19: TRLLabel;
    RLMemo2: TRLMemo;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
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
  fRelRecibo2: TfRelRecibo2;

implementation

uses UDmCons, DB, UPrevRecibo2;

{$R *.dfm}

procedure TfRelRecibo2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelRecibo2.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel4.Caption  := Fdm1.tEmpresaCEP.AsString + '    Bairro: ' + Fdm1.tEmpresaBAIRRO.AsString;
  RLLabel5.Caption  := Fdm1.tEmpresaCIDADE.AsString + ' / ' + Fdm1.tEmpresaUF.AsString;
  RLImage1.Visible  := fPrevRecibo2.CheckBox1.Checked;
  RLLabel12.Caption := fPrevRecibo2.mReciboEndereco.AsString + '    Cep: ' + fPrevRecibo2.mReciboCep.AsString;
  RLLabel14.Caption := fPrevRecibo2.mReciboBairro.AsString + '   Cidade: ' + fPrevRecibo2.mReciboCidade.AsString + ' / ' + fPrevRecibo2.mReciboUF.AsString;
  ValorPorExtenso2.Valor := fPrevRecibo2.mReciboValor.AsFloat;
  RLMemo1.Lines.Text := ValorPorExtenso2.Texto;
  RLMemo2.Lines.Text := fPrevRecibo2.mReciboHistorico.AsString;
  if fPrevRecibo2.mReciboPessoa.AsString = 'F' then
    RLLabel16.Caption := 'CPF:'
  else
    RLLabel16.Caption := 'CNPJ:';
  RLLabel17.Caption := fPrevRecibo2.mReciboDocumento.AsString + '    Fone: ' + fPrevRecibo2.mReciboFone.AsString;

  RLLabel18.Caption := FormatDateTime('dddd',Date) + ', ' + FormatDateTime('dd',Date) + ' de ' +
                       FormatDateTime('mmmm',Date) + ' de ' + FormatDateTime('yyyy',Date);
  RLLabel20.Caption := fPrevRecibo2.mReciboNumLacto.AsString + ' / ' + fPrevRecibo2.mReciboParcela.AsString;
  if fPrevRecibo2.TabSheet1.Visible then
    begin
      RLLabel15.Caption := 'Valor Recebido:';
      RLLabel10.Caption := 'Recibi (emos) de:';
      RLLabel21.Caption := Fdm1.tEmpresaFANTASIA.AsString;
    end
  else
    begin
      RLLabel15.Caption := 'Valor Pago:';
      RLLabel10.Caption := 'Pago a:';
      RLLabel21.Caption := fPrevRecibo2.mReciboNome.AsString;
    end;
end;

procedure TfRelRecibo2.SetDM1(const Value: Tdm1);
begin
  Fdm1 := Value;
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.








