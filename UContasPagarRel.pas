unit UContasPagarRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfContasPagarRel = class(TForm)
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
    RLBand2: TRLBand;
    RLDraw6: TRLDraw;
    RLLabel9: TRLLabel;
    RLDraw7: TRLDraw;
    RLLabel10: TRLLabel;
    RLDraw8: TRLDraw;
    RLLabel11: TRLLabel;
    RLDraw9: TRLDraw;
    RLLabel12: TRLLabel;
    RLDraw10: TRLDraw;
    RLLabel13: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLReport2: TRLReport;
    RLSubDetail3: TRLSubDetail;
    RLBand4: TRLBand;
    RLDBText12: TRLDBText;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLDraw13: TRLDraw;
    RLLabel21: TRLLabel;
    RLDraw14: TRLDraw;
    RLLabel22: TRLLabel;
    RLDraw15: TRLDraw;
    RLLabel24: TRLLabel;
    RLDraw16: TRLDraw;
    RLLabel25: TRLLabel;
    RLDraw17: TRLDraw;
    RLLabel26: TRLLabel;
    RLDraw18: TRLDraw;
    RLLabel27: TRLLabel;
    RLDraw21: TRLDraw;
    RLLabel30: TRLLabel;
    RLBand5: TRLBand;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText19: TRLDBText;
    RLBand7: TRLBand;
    RLBand3: TRLBand;
    RLDraw11: TRLDraw;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLDraw19: TRLDraw;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLBand8: TRLBand;
    RLBand9: TRLBand;
    RLDraw20: TRLDraw;
    RLLabel43: TRLLabel;
    RLLabel46: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLDraw22: TRLDraw;
    RLDraw23: TRLDraw;
    RLLabel34: TRLLabel;
    RLDBText20: TRLDBText;
    RLDraw24: TRLDraw;
    RLLabel44: TRLLabel;
    RLReport3: TRLReport;
    RLSubDetail2: TRLSubDetail;
    RLBand6: TRLBand;
    RLDraw12: TRLDraw;
    RLDBText21: TRLDBText;
    RLSystemInfo5: TRLSystemInfo;
    RLSystemInfo6: TRLSystemInfo;
    RLLabel23: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel47: TRLLabel;
    RLDraw25: TRLDraw;
    RLLabel48: TRLLabel;
    RLDraw26: TRLDraw;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    RLDraw27: TRLDraw;
    RLLabel51: TRLLabel;
    RLDraw28: TRLDraw;
    RLLabel52: TRLLabel;
    RLDraw29: TRLDraw;
    RLLabel53: TRLLabel;
    RLDraw30: TRLDraw;
    RLLabel54: TRLLabel;
    RLDraw31: TRLDraw;
    RLLabel55: TRLLabel;
    RLDraw32: TRLDraw;
    RLLabel56: TRLLabel;
    RLDraw33: TRLDraw;
    RLLabel57: TRLLabel;
    RLDraw34: TRLDraw;
    RLLabel58: TRLLabel;
    RLBand10: TRLBand;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLDBText31: TRLDBText;
    RLDBText32: TRLDBText;
    RLDBText33: TRLDBText;
    RLBand12: TRLBand;
    RLDraw36: TRLDraw;
    RLLabel66: TRLLabel;
    RLLabel67: TRLLabel;
    RLLabel68: TRLLabel;
    RLLabel69: TRLLabel;
    RLLabel71: TRLLabel;
    RLLabel72: TRLLabel;
    RLDBText7: TRLDBText;
    RLDraw35: TRLDraw;
    RLDraw37: TRLDraw;
    RLLabel59: TRLLabel;
    RLDBText34: TRLDBText;
    RLLabel60: TRLLabel;
    RLLabel61: TRLLabel;
    RLLabel62: TRLLabel;
    RLDraw38: TRLDraw;
    RLLabel63: TRLLabel;
    RLDBText35: TRLDBText;
    RLDraw39: TRLDraw;
    RLDraw40: TRLDraw;
    RLDraw41: TRLDraw;
    RLLabel64: TRLLabel;
    RLDBText36: TRLDBText;
    RLLabel65: TRLLabel;
    RLLabel70: TRLLabel;
    RLLabel73: TRLLabel;
    RLLabel74: TRLLabel;
    RLLabel75: TRLLabel;
    RLLabel76: TRLLabel;
    RLLabel77: TRLLabel;
    RLLabel78: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormShow(Sender: TObject);
    procedure RLBand2AfterPrint(Sender: TObject);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5AfterPrint(Sender: TObject);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand12BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    vData : TDate;
    vVlrDiaRestante, vVlrDiaPagto, vVlrDiaParcela, vVlrDiaPagtoTotal : Real;
    vVlrJurosDia, vVlrJurosGeral : Real;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fContasPagarRel: TfContasPagarRel;
  vRecebido, vAReceber, vParcPagar : Real;

implementation

uses UDmCons, DB, UContasPagarDet;

{$R *.dfm}

procedure TfContasPagarRel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfContasPagarRel.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  vParcPagar     := 0;
  vRecebido      := 0;
  vAReceber      := 0;
  vVlrJurosDia   := 0;
  vVlrJurosGeral := 0;
end;

procedure TfContasPagarRel.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  vParcPagar := vParcPagar + DmCons.qCPagarParcVLRVENCIMENTO.AsFloat;
  vRecebido := vRecebido + DmCons.qCPagarParcVLRPAGTO.AsFloat;
  vAReceber := vAReceber + DmCons.qCPagarParcVLRRESTANTE.AsFloat;
end;

procedure TfContasPagarRel.FormShow(Sender: TObject);
begin
  vVlrDiaPagto    := 0;
  vVlrDiaParcela  := 0;
  vVlrDiaRestante := 0;
//  vData := DmCons.qCReceberParcDTVENCIMENTO.AsDateTime;
end;

procedure TfContasPagarRel.RLBand2AfterPrint(Sender: TObject);
begin
  vVlrDiaPagto := vVlrDiaPagto + DmCons.qCPagarParcVLRPAGTO.AsFloat;
  vVlrDiaParcela := vVlrDiaParcela +  DmCons.qCPagarParcVLRVENCIMENTO.AsFloat;
  vVlrDiaRestante := vVlrDiaRestante +  DmCons.qCPagarParcVLRRESTANTE.AsFloat;
end;

procedure TfContasPagarRel.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  i : Integer;
begin
  if fContasPagarDet.CheckBox1.Checked then
    begin
      vData := DmCons.qCPagarParcDTVENCIMENTO.AsDateTime;
      if DmCons.qCPagarParc.RecordCount =  DmCons.qCPagarParc.RecNo then
        begin
          DmCons.qCPagarParc.Next;
          if DmCons.qCPagarParc.RecordCount =  DmCons.qCPagarParc.RecNo then
            PrintIt := True
          else
            begin
              PrintIt := False;
              DmCons.qCPagarParc.Prior;
            end;
        end
      else
        begin
          DmCons.qCPagarParc.Next;
          if DmCons.qCPagarParcDTVENCIMENTO.AsDateTime <> vData then
            PrintIt := True
          else
            PrintIt := False;
          DmCons.qCPagarParc.Prior;
        end;
      RLLabel35.Caption := FormatFloat('###,###,##0.00',vVlrDiaParcela);
      RLLabel37.Caption := FormatFloat('###,###,##0.00',vVlrDiaRestante);
      RLLabel39.Caption := FormatFloat('###,###,##0.00',vVlrDiaPagto);
      if PrintIt then
        begin
          vVlrDiaPagto := 0;
          vVlrDiaParcela := 0;
          vVlrDiaRestante := 0;
        end;
    end
  else
    PrintIt := False;
end;

procedure TfContasPagarRel.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel17.Caption := FormatFloat('###,###,##0.00',vRecebido);
  RLLabel16.Caption := FormatFloat('###,###,##0.00',vAReceber);
  RLLabel42.Caption := FormatFloat('###,###,##0.00',vParcPagar);
end;

procedure TfContasPagarRel.RLBand8BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fContasPagarDet.CheckBox1.Checked then
    begin
      vData := fContasPagarDet.qPagasDTULTPGTO.AsDateTime;
      if fContasPagarDet.qPagas.RecordCount =  fContasPagarDet.qPagas.RecNo then
        begin
          fContasPagarDet.qPagas.Next;
          if fContasPagarDet.qPagas.RecordCount =  fContasPagarDet.qPagas.RecNo then
            PrintIt := True
          else
            begin
              PrintIt := False;
              fContasPagarDet.qPagas.Prior;
            end;
        end
      else
        begin
          fContasPagarDet.qPagas.Next;
          if fContasPagarDet.qPagasDTULTPGTO.AsDateTime <> vData then
            PrintIt := True
          else
            PrintIt := False;
          fContasPagarDet.qPagas.Prior;
        end;
      RLLabel33.Caption := FormatFloat('###,###,##0.00',vVlrDiaPagto);
      RLLabel70.Caption := FormatFloat('###,###,##0.00',vVlrJurosDia);
      RLLabel74.Caption := FormatFloat('###,###,##0.00',vVlrJurosDia + vVlrDiaPagto);
      if PrintIt then
        begin
          vVlrDiaPagto := 0;
          vVlrJurosDia := 0;
        end;
    end
  else
    PrintIt := False;
end;

procedure TfContasPagarRel.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  vVlrDiaPagtoTotal := vVlrDiaPagtoTotal + fContasPagarDet.qPagasVLRULTPGTO.AsFloat;
  vVlrJurosDia      := vVlrJurosDia + fContasPagarDet.qPagasVLRULTJUROSPAGO.AsFloat;
  vVlrJurosGeral    := vVlrJurosGeral + fContasPagarDet.qPagasVLRULTJUROSPAGO.AsFloat;
end;

procedure TfContasPagarRel.RLBand5AfterPrint(Sender: TObject);
begin
  vVlrDiaPagto := vVlrDiaPagto + fContasPagarDet.qPagasVLRULTPGTO.AsFloat;
end;

procedure TfContasPagarRel.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel46.Caption := FormatFloat('###,###,##0.00',vVlrDiaPagtoTotal);
  RLLabel76.Caption := FormatFloat('###,###,##0.00',vVlrJurosGeral);
  RLLabel78.Caption := FormatFloat('###,###,##0.00',vVlrJurosGeral + vVlrDiaPagtoTotal);
end;

procedure TfContasPagarRel.RLBand12BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel69.Caption := FormatFloat('###,###,##0.00',vRecebido);
  RLLabel68.Caption := FormatFloat('###,###,##0.00',vAReceber);
  RLLabel72.Caption := FormatFloat('###,###,##0.00',vParcPagar);
end;

procedure TfContasPagarRel.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel3.Caption := 'Contas a Pagar';
  if fContasPagarDet.ComboBox1.ItemIndex = 0 then
    RLLabel3.Caption := RLLabel3.Caption + ' - ' + '(Vencidas) até ' + fContasPagarDet.JvDateEdit1.Text
  else
  if fContasPagarDet.ComboBox1.ItemIndex = 1 then
    begin
      RLLabel3.Caption := RLLabel3.Caption + ' - ' + '(A Vencer)';
      if (fContasPagarDet.JvDateEdit1.Date > 0) and (fContasPagarDet.JvDateEdit2.Date > 0) then
        RLLabel3.Caption := RLLabel3.Caption + ' Período ' + fContasPagarDet.JvDateEdit1.Text + ' a ' + fContasPagarDet.JvDateEdit2.Text
      else
      if fContasPagarDet.JvDateEdit1.Date > 0 then
        RLLabel3.Caption := RLLabel3.Caption + ' Data Inicial ' + fContasPagarDet.JvDateEdit1.Text;
    end
  else
  if fContasPagarDet.ComboBox1.ItemIndex = 3 then
    begin
      RLLabel3.Caption := RLLabel3.Caption + ' - ' + '(Todas)';
      if (fContasPagarDet.JvDateEdit1.Date > 0) and (fContasPagarDet.JvDateEdit2.Date > 0) then
        RLLabel3.Caption := RLLabel3.Caption + ' Período ' + fContasPagarDet.JvDateEdit1.Text + ' a ' + fContasPagarDet.JvDateEdit2.Text
    end;
  RLLabel61.Caption := '';
  if fContasPagarDet.JvDBLookupCombo1.Text <> '' then
    RLLabel61.Caption := '(Fornecedor: ' + fContasPagarDet.JvDBLookupCombo1.Text + ')';
  if fContasPagarDet.JvDBLookupCombo2.Text <> '' then
    RLLabel61.Caption := RLLabel61.Caption + ' (Banco: ' + fContasPagarDet.JvDBLookupCombo2.Text + ')';
  if fContasPagarDet.JvDBLookupCombo3.Text <> '' then
    RLLabel61.Caption := RLLabel61.Caption + ' (C.Custo: ' + fContasPagarDet.JvDBLookupCombo3.Text + ')';
end;

end.
