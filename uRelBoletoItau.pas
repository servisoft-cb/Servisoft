unit uRelBoletoItau;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLBarcode, QuickRpt, QRCtrls, jpeg, UDM1, rsDBUtils;

type
  TfRelBoletoItau = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDraw44: TRLDraw;
    RLBarcode2: TRLBarcode;
    RLDraw45: TRLDraw;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLDraw47: TRLDraw;
    RLLabel50: TRLLabel;
    RLDraw48: TRLDraw;
    RLLabel51: TRLLabel;
    RLDraw49: TRLDraw;
    RLLabel52: TRLLabel;
    RLDraw50: TRLDraw;
    RLLabel53: TRLLabel;
    RLDraw51: TRLDraw;
    RLLabel54: TRLLabel;
    RLDraw52: TRLDraw;
    RLLabel55: TRLLabel;
    RLDraw53: TRLDraw;
    RLLabel56: TRLLabel;
    RLDraw54: TRLDraw;
    RLLabel57: TRLLabel;
    RLDraw55: TRLDraw;
    RLDraw56: TRLDraw;
    RLLabel59: TRLLabel;
    RLDraw58: TRLDraw;
    RLLabel61: TRLLabel;
    RLDraw59: TRLDraw;
    RLLabel62: TRLLabel;
    RLDraw60: TRLDraw;
    RLLabel63: TRLLabel;
    RLDraw61: TRLDraw;
    RLDraw62: TRLDraw;
    RLDraw63: TRLDraw;
    RLDraw64: TRLDraw;
    RLDraw65: TRLDraw;
    RLDraw66: TRLDraw;
    RLLabel64: TRLLabel;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLDBText31: TRLDBText;
    RLLabel66: TRLLabel;
    RLDBText35: TRLDBText;
    RLDraw67: TRLDraw;
    RLDraw68: TRLDraw;
    RLLabel69: TRLLabel;
    RLLabel70: TRLLabel;
    RLLabel71: TRLLabel;
    RLLabel72: TRLLabel;
    RLLabel73: TRLLabel;
    RLLabel75: TRLLabel;
    RLDBText37: TRLDBText;
    RLDBText38: TRLDBText;
    RLLabel76: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText2: TRLDBText;
    RLDraw3: TRLDraw;
    RLLabel1: TRLLabel;
    RLLabel4: TRLLabel;
    RLDraw5: TRLDraw;
    RLLabel5: TRLLabel;
    RLDraw6: TRLDraw;
    RLLabel8: TRLLabel;
    RLDraw8: TRLDraw;
    RLLabel10: TRLLabel;
    RLDraw14: TRLDraw;
    RLLabel15: TRLLabel;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw20: TRLDraw;
    RLDraw21: TRLDraw;
    RLDraw22: TRLDraw;
    RLDraw23: TRLDraw;
    RLLabel19: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel20: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel26: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel30: TRLLabel;
    Inst1: TRLLabel;
    Inst2: TRLLabel;
    Inst3: TRLLabel;
    Inst4: TRLLabel;
    Inst5: TRLLabel;
    Inst1A: TRLLabel;
    Inst2A: TRLLabel;
    Inst3A: TRLLabel;
    Inst4A: TRLLabel;
    Inst5A: TRLLabel;
    RLDBText19: TRLDBText;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLLabel6: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLDraw4: TRLDraw;
    RLDraw24: TRLDraw;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLDraw25: TRLDraw;
    RLLabel42: TRLLabel;
    RLDBText1: TRLDBText;
    RLDraw26: TRLDraw;
    RLLabel31: TRLLabel;
    RLLabel43: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLDraw27: TRLDraw;
    RLLabel9: TRLLabel;
    RLDBText5: TRLDBText;
    RLDraw7: TRLDraw;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDraw9: TRLDraw;
    RLLabel13: TRLLabel;
    RLDBText7: TRLDBText;
    RLDraw10: TRLDraw;
    RLLabel14: TRLLabel;
    RLDBText8: TRLDBText;
    RLDraw11: TRLDraw;
    RLLabel25: TRLLabel;
    RLDraw12: TRLDraw;
    RLLabel16: TRLLabel;
    RLDraw13: TRLDraw;
    RLDBText9: TRLDBText;
    RLLabel17: TRLLabel;
    RLDraw15: TRLDraw;
    RLLabel18: TRLLabel;
    RLLabel21: TRLLabel;
    RLDraw16: TRLDraw;
    RLLabel29: TRLLabel;
    RLDraw17: TRLDraw;
    RLLabel47: TRLLabel;
    RLDraw28: TRLDraw;
    RLDraw29: TRLDraw;
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2AfterPrint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Fdm1: Tdm1;

    { Private declarations }
    procedure Calcula_NossoNumero;
    procedure SetDM1(const Value: Tdm1);
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write SetDM1;
  end;

var
  fRelBoletoItau: TfRelBoletoItau;

implementation

uses UPrevBoleto2;

{$R *.dfm}

procedure TfRelBoletoItau.Calcula_NossoNumero;
var
  vNumero, i, vSoma, vAux, vAux2, vSomaAux : Integer;
  texto1, texto2 : String;
begin
  Fdm1.tBcoItau.First;
  vNumero := Fdm1.tBcoItauSEQNOSSONUMERO.AsInteger + 1;
  texto1 := copy(Fdm1.tBcoItauAGENCIA.AsString,1,4) + copy(Fdm1.tBcoItauNUMCONTA.AsString,1,5) +
            fPrevBoleto2.tParcelasNUMCARTEIRA.AsString + FormatFloat('00000000',vNumero);
  vSoma := 0;
  vAux  := 1;
  for i := length(texto1) downto 1 do
    begin
      inc(vAux);
      if vAux > 2 then
        vAux := 1;
      vSomaAux := StrToInt(Copy(texto1,i,1)) * vAux;
      if vSomaAux < 10 then
        vSoma := vSoma + vSomaAux
      else
        begin
          texto2 := formatfloat('00',vSomaAux);
          vSoma := vSoma + (StrToInt(Copy(texto2,1,1))) + (StrToInt(Copy(texto2,2,1)));
        end;
    end;

  vAux  := vSoma div 10;
  vAux2 := vAux * 10;
  vAux  := vSoma - vAux2;
  if vAux > 0 then
    vAux  := 10 - vAux;
  texto1 := texto1 + FormatFloat('0',vAux);

  fPrevBoleto2.tParcelas.Edit;
  fPrevBoleto2.tParcelasNOSSONUMERO.AsString := FormatFloat('00000000',vNumero) + '-' + FormatFloat('0',vAux);
  fPrevBoleto2.tParcelas.Post;
  fPrevBoleto2.tParcelas.ApplyUpdates(0);

  Fdm1.tBcoItau.Edit;
  Fdm1.tBcoItauSEQNOSSONUMERO.AsInteger := vNumero;
  Fdm1.tBcoItau.Post;
  Fdm1.tBcoItau.ApplyUpdates(0);
end;

procedure TfRelBoletoItau.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  i : Integer;
  vNumAux : String;
  vDigAux : String;
  texto2 : String;
  vData : TDateTime;
begin
  if fPrevBoleto2.tParcelasIMPRIMIR.AsString <> 'S' then
    begin
      PrintIt := False;
      Exit;
    end;

  if (fPrevBoleto2.tParcelasNOSSONUMERO.AsString = '') or (fPrevBoleto2.tParcelasNOSSONUMERO.IsNull) then
    Calcula_NossoNumero;

  vNumAux := copy(fPrevBoleto2.tParcelasNOSSONUMERO.AsString,1,8);
  vDigAux := copy(fPrevBoleto2.tParcelasNOSSONUMERO.AsString,10,1);

  RLLabel70.Caption  := Fdm1.MontaBoletoItau('L',vNumAux,fPrevBoleto2.tParcelasNUMCARTEIRA.AsString,vDigAux,fPrevBoleto2.tParcelasDTVENCIMENTO.AsDateTime,fPrevBoleto2.tParcelasVLRRESTANTE.AsCurrency);

  RLBarcode2.Caption := Fdm1.MontaBoletoItau('B',vNumAux,fPrevBoleto2.tParcelasNUMCARTEIRA.AsString,vDigAux,fPrevBoleto2.tParcelasDTVENCIMENTO.AsDateTime,fPrevBoleto2.tParcelasVLRRESTANTE.AsCurrency);
  RLLabel3.Caption   := Fdm1.tBcoItauAGENCIA.AsString + '/' + Fdm1.tBcoItauCODCEDENTE.AsString;
  RLLabel28.Caption  := RLLabel3.Caption;

  texto2 := fPrevBoleto2.tParcelasCODCLIENTE.AsString;
  for i := 1 to 5 - Length(texto2) do
    texto2 := '0' + texto2;
  if fPrevBoleto2.tParcelasNUMNOTA.AsInteger > 0 then
    texto2 := 'N' + texto2 + '.' + fPrevBoleto2.tParcelasNUMNOTA.AsString + '/' + fPrevBoleto2.tParcelasPARCELA.AsString
  else
    texto2 := 'A' + texto2 + '.' + fPrevBoleto2.tParcelasNUMCRECEBER.AsString + '/' + fPrevBoleto2.tParcelasPARCELA.AsString;
  RLLabel2.Caption  := texto2;
  RLLabel12.Caption := texto2;
  RLLabel40.Caption := fPrevBoleto2.tParcelasNUMCARTEIRA.AsString + '/' + fPrevBoleto2.tParcelasNOSSONUMERO.AsString;
  RLLabel34.Caption := RLLabel40.Caption;

  if fPrevBoleto2.tParcelasPESSOA.AsString = 'F' then
    RLLabel32.Caption := 'CPF:'
  else
    RLLabel32.Caption := 'CNPJ:';
  RLLabel33.Caption := RLLabel32.Caption;

  //Instruções
  for i := 1 to 5 do
    begin
      TRLLabel(FindComponent('Inst'+IntToStr(i))).Caption     := '';
      TRLLabel(FindComponent('Inst'+IntToStr(i)+'A')).Caption := '';
      TRLLabel(FindComponent('Inst'+IntToStr(i))).Visible     := False;
      TRLLabel(FindComponent('Inst'+IntToStr(i)+'A')).Visible := False;
    end;

  i := 1;
  if Fdm1.tBcoItauDIASPROTESTO.AsInteger > 0 then
    begin
      vData := fPrevBoleto2.tParcelasDTVENCIMENTO.AsDateTime + Fdm1.tBcoItauDIASPROTESTO.AsInteger;
      TRLLabel(FindComponent('Inst'+IntToStr(i))).Visible     := True;
      TRLLabel(FindComponent('Inst'+IntToStr(i)+'A')).Visible := True;
      TRLLabel(FindComponent('Inst'+IntToStr(i))).Caption     := '- Protestar após ' + FormatDateTime('dd/mm/yyyy',vData);
      TRLLabel(FindComponent('Inst'+IntToStr(i)+'A')).Caption := '- Protestar após ' + FormatDateTime('dd/mm/yyyy',vData);
      inc(i);
    end;

  if Fdm1.tBcoItauVLRJUROSPORDIA.AsFloat > 0 then
    begin
      TRLLabel(FindComponent('Inst'+IntToStr(i))).Visible     := True;
      TRLLabel(FindComponent('Inst'+IntToStr(i)+'A')).Visible := True;
      TRLLabel(FindComponent('Inst'+IntToStr(i))).Caption     := '- Após vencimento cobrar R$ ' + FormatFloat('###,###,##0.00',Fdm1.tBcoItauVLRJUROSPORDIA.AsFloat) + ' por dia de atraso';
      TRLLabel(FindComponent('Inst'+IntToStr(i)+'A')).Caption := '- Após vencimento cobrar R$ ' + FormatFloat('###,###,##0.00',Fdm1.tBcoItauVLRJUROSPORDIA.AsFloat) + ' por dia de atraso';
      inc(i);
    end;

  if (Fdm1.tBcoItauVLRDESCONTO.AsFloat > 0) and (Fdm1.tBcoItauDTLIMITEDESCONTO.AsDateTime > 1) then
    begin
      TRLLabel(FindComponent('Inst'+IntToStr(i))).Visible     := True;
      TRLLabel(FindComponent('Inst'+IntToStr(i)+'A')).Visible := True;
      TRLLabel(FindComponent('Inst'+IntToStr(i))).Caption     := '- Até ' + Fdm1.tBcoItauDTLIMITEDESCONTO.AsString + ' Conceder desconto de R$ ' + FormatFloat('###,###,##0.00',Fdm1.tBcoItauVLRDESCONTO.AsFloat);
      TRLLabel(FindComponent('Inst'+IntToStr(i)+'A')).Caption := '- Até ' + Fdm1.tBcoItauDTLIMITEDESCONTO.AsString + ' Conceder desconto de R$ ' + FormatFloat('###,###,##0.00',Fdm1.tBcoItauVLRDESCONTO.AsFloat);
      inc(i);
    end;
  //Dados do sacado
  if fPrevBoleto2.tParcelasCOBENDERECO.AsString <> '' then
    begin
      RLLabel31.Caption := fPrevBoleto2.tParcelasCOBENDERECO.AsString;
      RLLabel43.Caption := fPrevBoleto2.tParcelasCOBCEP.AsString + '    -     ' +
                           fPrevBoleto2.tParcelasNOMECIDADECOB.AsString + '  -  ' +
                           fPrevBoleto2.tParcelasCOBUF.AsString;
    end
  else
    begin
      RLLabel31.Caption := fPrevBoleto2.tParcelasENDERECO.AsString;
      RLLabel43.Caption := fPrevBoleto2.tParcelasCEP.AsString + '    -     ' +
                           fPrevBoleto2.tParcelasNOMECIDADE.AsString + '  -  ' +
                           fPrevBoleto2.tParcelasESTADO.AsString;
    end;
  RLLabel45.Caption := RLLabel31.Caption;
  RLLabel44.Caption := RLLabel43.Caption;
end;

procedure TfRelBoletoItau.RLBand2AfterPrint(Sender: TObject);
begin
  if fPrevBoleto2.tParcelasIMPRIMIR.AsString = 'S' then
    begin
      fPrevBoleto2.tParcelas.Edit;
      fPrevBoleto2.tParcelasIMPRIMIR.AsString := 'N';
      fPrevBoleto2.tParcelas.Post;
      fPrevBoleto2.tParcelas.ApplyUpdates(0);
    end;
end;

procedure TfRelBoletoItau.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelBoletoItau.SetDM1(const Value: Tdm1);
begin
  Fdm1 := Value;
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.
