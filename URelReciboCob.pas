unit URelReciboCob;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, ValorPor, UDm1, rsDBUtils;

type
  TfRelReciboCob = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLImage1: TRLImage;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText2: TRLDBText;
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
    RLDBText9: TRLDBText;
    RLLabel18: TRLLabel;
    RLDraw7: TRLDraw;
    RLDraw8: TRLDraw;
    RLDraw9: TRLDraw;
    RLAngleLabel1: TRLAngleLabel;
    RLAngleLabel2: TRLAngleLabel;
    RLAngleLabel3: TRLAngleLabel;
    RLAngleLabel4: TRLAngleLabel;
    RLAngleLabel5: TRLAngleLabel;
    RLAngleLabel6: TRLAngleLabel;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
    RLLabel19: TRLLabel;
    RLDBMemo1: TRLDBMemo;
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
  fRelReciboCob: TfRelReciboCob;

implementation

uses UDmCons, URecibo, DB;

{$R *.dfm}

procedure TfRelReciboCob.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelReciboCob.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  PrintIt := fRecibo.SMDBGrid1.SelectedRows.CurrentRowSelected;
  if not PrintIt then
    exit;

  RLLabel4.Caption  := Fdm1.tEmpresaCEP.AsString + '    Bairro: ' + Fdm1.tEmpresaBAIRRO.AsString;
  RLLabel5.Caption  := Fdm1.tEmpresaCIDADE.AsString + ' / ' + Fdm1.tEmpresaUF.AsString;
  RLImage1.Visible := false;
  if fRecibo.CheckBox1.Checked then
    begin
      RLImage1.Picture.LoadFromFile(Fdm1.tEmpresaLOGOEMPRESA.AsString);
      RLImage1.Visible  := fRecibo.CheckBox1.Checked;
    end;
  if fRecibo.CheckBox2.Checked then
    begin
      RLImage1.Picture.LoadFromFile(Fdm1.tEmpresaLOGOEMPRESA2.AsString);
      RLImage1.Visible  := fRecibo.CheckBox2.Checked;
    end;
  RLLabel12.Caption := fRecibo.qCReceberParcENDCLIENTE.AsString + '    Cep: ' + fRecibo.qCReceberParcCEP.AsString;
  RLLabel14.Caption := fRecibo.qCReceberParcBAIRRO.AsString + '   Cidade: ' + fRecibo.qCReceberParcCIDADECLIENTE.AsString + ' / ' + fRecibo.qCReceberParcESTADO.AsString;
  ValorPorExtenso2.Valor := fRecibo.qCReceberParcVLRRESTANTE.AsFloat;
  RLMemo1.Lines.Text := ValorPorExtenso2.Texto;
  if fRecibo.qCReceberParcPESSOA.AsString = 'F' then
    RLLabel16.Caption := 'CPF:'
  else
    RLLabel16.Caption := 'CNPJ:';
  RLLabel17.Caption := fRecibo.qCReceberParcDOCUMENTO.AsString + '    Fone: ' + fRecibo.qCReceberParcFONE.AsString;

  RLLabel18.Caption := FormatDateTime('dddd',Date) + ', ' + FormatDateTime('dd',Date) + ' de ' +
                       FormatDateTime('mmmm',Date) + ' de ' + FormatDateTime('yyyy',Date);

  RLAngleLabel1.Caption := 'Nº Recibo: ' + fRecibo.qCReceberParcNUMCRECEBER.AsString;
  RLAngleLabel6.Caption := 'Data Vecto: ' + fRecibo.qCReceberParcDTVENCIMENTO.AsString + '       Valor: ' + FormatFloat('###,###,##0.00',fRecibo.qCReceberParcVLRRESTANTE.AsFloat);
  RLAngleLabel2.Caption := 'Cliente: ' + fRecibo.qCReceberParcNOMECLIENTE.AsString;
  RLAngleLabel3.Caption := 'End: ' + fRecibo.qCReceberParcENDCLIENTE.AsString;
  RLAngleLabel4.Caption := 'Cep: ' + fRecibo.qCReceberParcCEP.AsString + ' - ' + fRecibo.qCReceberParcBAIRRO.AsString;
  RLAngleLabel5.Caption := 'Cid: ' + fRecibo.qCReceberParcCIDADECLIENTE.AsString + ' / ' + fRecibo.qCReceberParcESTADO.AsString;

end;

procedure TfRelReciboCob.SetDM1(const Value: Tdm1);
begin
  Fdm1 := Value;
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.








