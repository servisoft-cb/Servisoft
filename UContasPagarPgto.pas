unit UContasPagarPgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvEdit, JvTypedEdit, JvLookup, Buttons, Mask,
  JvToolEdit, JvCurrEdit, ExtCtrls, ComCtrls, DBCtrls, JvDBCtrl, FMTBcd,
  DB, DBClient, Provider, SqlExpr, JvCombobox, Grids, DBGrids, DBXpress, UDm1,
  rsDBUtils;

type
  TfContasPagarPgto = class(TForm)
    BitBtn5: TBitBtn;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    Edit1: TEdit;
    Edit2: TEdit;
    JvxCurrencyEdit9: TJvxCurrencyEdit;
    JvxCurrencyEdit2: TJvxCurrencyEdit;
    JvxCurrencyEdit10: TJvxCurrencyEdit;
    JvxCurrencyEdit4: TJvxCurrencyEdit;
    Edit3: TEdit;
    Label6: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    JvDateEdit1: TJvDateEdit;
    Label7: TLabel;
    Label8: TLabel;
    JvxCurrencyEdit1: TJvxCurrencyEdit;
    Label9: TLabel;
    Edit4: TEdit;
    Label11: TLabel;
    JvxCurrencyEdit3: TJvxCurrencyEdit;
    Label12: TLabel;
    Label14: TLabel;
    Edit5: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure JvxCurrencyEdit2Exit(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure JvDateEdit1Exit(Sender: TObject);
    procedure Label11Click(Sender: TObject);
  private
    Fdm1: Tdm1;
    { Private declarations }
    procedure Pagamento;
    procedure Grava_Historico;
    procedure Grava_MovFinanceiro(Tipo : String);
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fContasPagarPgto: TfContasPagarPgto;

  vDelta1,
  vDelta2,
  vDeltaJuros,
  vDelta4,
  vDelta3 : OleVariant;

  iflag, iflagJuros, iflagVendedor : Integer;

  sBookMark1,
  sBookMarkJuros,
  sBookMark2,
  sBookMark4,
  sBookMark3 : string;

implementation

uses UDmCons, UBanco, UPessoa, UJuros;

{$R *.dfm}


procedure TfContasPagarPgto.Grava_MovFinanceiro(Tipo : String);
begin
  Fdm1.tMovFinanceiro.Close;
  Fdm1.MovFinanceiro.Params[0].AsInteger := 0;
  Fdm1.tMovFinanceiro.Open;

  Fdm1.tMovFinanceiro.Insert;
  Fdm1.tMovFinanceiroNUMMOVTO.AsInteger := Fdm1.Incrementa('NUMMOVTO','MOVFINANCEIRO');
  Fdm1.tMovFinanceiroCODBANCO.AsInteger := JvDBLookupCombo1.KeyValue;
  Fdm1.tMovFinanceiroTIPOMOV.AsString   := 'PAG';
  Fdm1.tMovFinanceiroDTMOVIMENTO.AsDateTime := JvDateEdit1.Date;
  if Tipo = 'D' then
    begin
      Fdm1.tMovFinanceiroVLRSAIDA.AsFloat   := JvxCurrencyEdit2.Value;
      Fdm1.tMovFinanceiroHISTORICO.AsString := 'Pagto. Dupl. ' + DmCons.qCPagarParcNUMDUPLICATA.AsString + ' parcela ' + DmCons.qCPagarParcPARCELA.AsString + ' de ' + Dmcons.qCPagarParcNOMEFORNECEDOR.AsString;
    end
  else
  if Tipo = 'J' then
    begin
      Fdm1.tMovFinanceiroVLRSAIDA.AsFloat   := JvxCurrencyEdit10.Value;
      Fdm1.tMovFinanceiroHISTORICO.AsString := 'Pagto. Juros da Dupl. ' + DmCons.qCPagarParcNUMDUPLICATA.AsString + ' parcela ' + DmCons.qCPagarParcPARCELA.AsString + ' de ' + Dmcons.qCPagarParcNOMEFORNECEDOR.AsString;
    end;
  Fdm1.tMovFinanceiroCODCENTROCUSTO.AsInteger := Fdm1.tCPagarParcCODCENTROCUSTO.AsInteger;

  if DmCons.qFornecedor.Locate('ID',DmCons.qCPagarParcCODFORNECEDOR.AsInteger,([LocaseInsensitive])) then
    Fdm1.tMovFinanceiroTIPOPESSOA.AsString := DmCons.qFornecedorPESSOA.AsString;
  Fdm1.tMovFinanceiro.Post;
  Fdm1.tMovFinanceiro.ApplyUpdates(0);
end;

procedure TfContasPagarPgto.Grava_Historico;
var
  vAux : Integer;
begin
  Fdm1.tCPagarHist.Close;
  Fdm1.CPagarHist.ParamByName('CODFORNECEDOR').AsInteger := Fdm1.tCPagarParcCODFORNECEDOR.AsInteger;
  Fdm1.CPagarHist.ParamByName('NUMCPAGAR').AsInteger     := Fdm1.tCPagarParcNUMCPAGAR.AsInteger;
  Fdm1.CPagarHist.ParamByName('Parcela').AsString        := Fdm1.tCPagarParcPARCELA.AsString;
  Fdm1.tCPagarHist.Open;
  Fdm1.tCPagarHist.Last;
  vAux := Fdm1.tCPagarHistITEM.AsInteger + 1;

  Fdm1.tCPagarHist.Insert;
  Fdm1.tCPagarHistNUMCPAGAR.AsInteger   := Fdm1.tCPagarParcNUMCPAGAR.AsInteger;
  Fdm1.tCPagarHistPARCELA.AsString        := Fdm1.tCPagarParcPARCELA.AsString;
  Fdm1.tCPagarHistITEM.AsInteger          := vAux;
  Fdm1.tCPagarHistDTHISTORICO.AsDateTime  := Date;
  Fdm1.tCPagarHistCODBANCO.AsInteger      := JvDBLookupCombo1.KeyValue;
  Fdm1.tCPagarHistDTULTPGTO.AsDateTime    := JvDateEdit1.Date;
  Fdm1.tCPagarHistVLRULTPGTO.AsFloat      := JvxCurrencyEdit2.Value;
  Fdm1.tCPagarHistVLRULTJUROSPAGO.AsFloat := JvxCurrencyEdit10.Value;
  Fdm1.tCPagarHistVLRULTDESCONTO.AsFloat  := JvxCurrencyEdit1.Value;
  Fdm1.tCPagarHistVLRULTDESPESA.AsFloat   := JvxCurrencyEdit4.Value;
  Fdm1.tCPagarHistTIPOHIST.AsString       := 'P';
  if Edit4.Text <> '' then
    Fdm1.tCPagarHistHISTORICO.AsString  := Edit4.Text
  else
    begin
      if StrToFloat(FormatFloat('0.00',Fdm1.tCPagarParcVLRRESTANTE.AsFloat)) > 0 then
        Fdm1.tCPagarHistHISTORICO.AsString  := 'PAGAMENTO PARCIAL'
      else
        Fdm1.tCPagarHistHISTORICO.AsString  := 'PAGAMENTO TOTAL';
    end;    
  Grava_MovFinanceiro('D');
  sBookMark2  := Fdm1.tMovFinanceiro.Bookmark;
  vDelta2     := Fdm1.tMovFinanceiro.Data;
  iflag := 3;
  Fdm1.tCPagarHistNUMMOVFINANC.AsInteger := Fdm1.tMovFinanceiroNUMMOVTO.AsInteger;
  if JvxCurrencyEdit10.Value > 0 then
    begin
      Grava_MovFinanceiro('J');
      Fdm1.tCPagarHistNUMMOVJUROS.AsInteger  := Fdm1.tMovFinanceiroNUMMOVTO.AsInteger;
      sBookMarkJuros  := Fdm1.tMovFinanceiro.Bookmark;
      vDeltaJuros     := Fdm1.tMovFinanceiro.Data;
      iflagJuros := Fdm1.tMovFinanceiroNUMMOVTO.AsInteger;
    end;

  Fdm1.tCPagarHist.Post;
  Fdm1.tCPagarHist.ApplyUpdates(0);
  sBookMark4  := Fdm1.tCPagarHist.Bookmark;
  vDelta4     := Fdm1.tCPagarHist.Data;
end;

procedure TfContasPagarPgto.Pagamento;
begin
  Fdm1.tCPagarParc.Close;
  Fdm1.CPagarParc.Params[0].AsInteger := DmCons.qCPagarParcCODFORNECEDOR.AsInteger;
  Fdm1.CPagarParc.Params[1].AsInteger := DmCons.qCPagarParcNUMCPAGAR.AsInteger;
  Fdm1.CPagarParc.Params[2].AsString  := DmCons.qCPagarParcPARCELA.AsString;
  Fdm1.tCPagarParc.Open;
  Fdm1.tCPagarParc.Edit;

  Fdm1.tCPagarParcCODBANCO.AsInteger  := JvDBLookupCombo1.KeyValue;
  Fdm1.tCPagarParcVLRDESPESA.AsFloat  := StrToFloat(FormatFloat('0.00',Fdm1.tCPagarParcVLRDESPESA.AsFloat)) +
                                      StrToFloat(FormatFloat('0.00',JvxCurrencyEdit4.Value));
  Fdm1.tCPagarParcVLRDESCONTO.AsFloat := StrToFloat(FormatFloat('0.00',Fdm1.tCPagarParcVLRDESCONTO.AsFloat)) +
                                      StrToFloat(FormatFloat('0.00',JvxCurrencyEdit1.Value));
  Fdm1.tCPagarParcJUROSPAGOS.AsFloat  := StrToFloat(FormatFloat('0.00',Fdm1.tCPagarParcJUROSPAGOS.AsFloat)) +
                                      StrToFloat(FormatFloat('0.00',JvxCurrencyEdit10.Value));
  Fdm1.tCPagarParcVLRRESTANTE.AsFloat := StrToFloat(FormatFloat('0.00',Fdm1.tCPagarParcVLRRESTANTE.AsFloat)) -
                                        StrToFloat(FormatFloat('0.00',JvxCurrencyEdit2.Value));
  Fdm1.tCPagarParcVLRPAGTO.AsFloat    := StrToFloat(FormatFloat('0.00',Fdm1.tCPagarParcVLRPAGTO.AsFloat)) +
                                        StrToFloat(FormatFloat('0.00',JvxCurrencyEdit2.Value));
  Fdm1.tCPagarParcDTPAGTO.AsDateTime  := JvDateEdit1.Date;

  if JvDateEdit1.Date > Fdm1.tCPagarParcDTVENCIMENTO.AsDateTime then
    Fdm1.tCPagarParcDIASATRASO.AsFloat := JvDateEdit1.Date - Fdm1.tCPagarParcDTVENCIMENTO.AsDateTime;

  if StrToFloat(FormatFloat('0.00',Fdm1.tCPagarParcVLRRESTANTE.AsFloat)) > 0 then
    Fdm1.tCPagarParcQUITADO.AsString := 'N'
  else
    Fdm1.tCPagarParcQUITADO.AsString := 'S';
  Fdm1.tCPagarParc.Post;
  Fdm1.tCPagarParc.ApplyUpdates(0);
  sBookMark1  := Fdm1.tCPagarParc.Bookmark;
  vDelta1     := Fdm1.tCPagarParc.Data;
  iflag := 2;
  Grava_Historico;
end;

procedure TfContasPagarPgto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfContasPagarPgto.JvxCurrencyEdit2Exit(Sender: TObject);
begin
  if JvxCurrencyEdit2.Value > JvxCurrencyEdit9.Value then
    begin
      JvxCurrencyEdit10.Value := StrToFloat(FormatFloat('0.00',JvxCurrencyEdit2.Value - JvxCurrencyEdit9.Value));
      JvxCurrencyEdit2.Value  := StrToFloat(FormatFloat('0.00',JvxCurrencyEdit9.Value));
    end;
end;

procedure TfContasPagarPgto.Label1Click(Sender: TObject);
begin
  DmCons.qCliente.Close;
  fPessoa := TfPessoa.Create(Self);
  fPessoa.ShowModal;
  DmCons.qCliente.Open;
end;

procedure TfContasPagarPgto.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  DmCons.qBanco.Open;

  Edit3.Text := DmCons.qCPagarParcNOMEFORNECEDOR.AsString;
  Edit1.Text := DmCons.qCPagarParcNUMDUPLICATA.AsString;
  Edit2.Text := DmCons.qCPagarParcPARCELA.AsString;
  Edit5.Text := DmCons.qCPagarParcNOMECENTROCUSTO.AsString;
  JvxCurrencyEdit9.Value := DmCons.qCPagarParcVLRRESTANTE.AsFloat;
  JvxCurrencyEdit2.Value := DmCons.qCPagarParcVLRRESTANTE.AsFloat;
  JvDateEdit1.SetFocus;
  JvDateEdit1.Date := Date;
  if DmCons.qCPagarParcCODBANCO.AsInteger > 0 then
    JvDBLookupCombo1.KeyValue := DmCons.qCPagarParcCODBANCO.AsInteger;
end;

procedure TfContasPagarPgto.BitBtn5Click(Sender: TObject);
var
  TD : TTransactionDesc;
begin
  if (JvxCurrencyEdit2.Value > 0) and (JvDBLookupCombo1.Text <> '') and (JvDateEdit1.Text <> '  /  /    ') then
    begin
      try
      TD.TransactionID  := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      Fdm1.Conexao.StartTransaction(TD);
      Pagamento;
      Fdm1.Conexao.Commit(TD);
      Close;
      except
        begin
         { if iflag = 2 then
            Fdm1.tCPagarParc.Data := vDelta1;
          if iflag = 3 then
            begin
              Fdm1.tCPagarParc.Data := vDelta1;
              Fdm1.tMovFinanceiro.Data := vDelta2;
            end;
          if iflag = 4 then
            begin
              Fdm1.tCPagarParc.Data := vDelta1;
              Fdm1.tMovFinanceiro.Data := vDelta2;
            end;
          Fdm1.tCPagarParc.Bookmark := sBookMark1;
          Fdm1.tMovFinanceiro.Bookmark  := sBookMark2;
          Fdm1.tCPagarHist.Bookmark    := sBookMark4;
         }
          Fdm1.Conexao.Rollback(TD);
        end;
      end;
    end
  else
    begin
      ShowMessage('Valor pago igual a zero ou falta informar o banco!');
      JvxCurrencyEdit2.SetFocus;
    end;
end;

procedure TfContasPagarPgto.Label6Click(Sender: TObject);
begin
  DmCons.qBanco.Close;
  fBanco := TfBanco.Create(Self);
  fBanco.ShowModal;
  DmCons.qBanco.Open;
  JvDBLookupCombo1.SetFocus;  
end;

procedure TfContasPagarPgto.JvDateEdit1Exit(Sender: TObject);
var
  Ano,Mes,Dia : Word;
  vAux : Real;
  vDiaAtraso : Real;
begin
  //*** Calcula Juros
  Label12.Caption := '';
  JvxCurrencyEdit3.Clear;
  if JvDateEdit1.Date > DmCons.qCPagarParcDTVENCIMENTO.AsDateTime then
    begin
      vDiaAtraso := JvDateEdit1.Date - DmCons.qCPagarParcDTVENCIMENTO.AsDateTime;
      Label12.Caption := FloatToStr(vDiaAtraso) + '  Dia(s) em atraso';
    end;
end;

procedure TfContasPagarPgto.Label11Click(Sender: TObject);
begin
  DmCons.qJuros.Close;
  fJuros := TfJuros.Create(Self);
  fJuros.ShowModal;
  DmCons.qJuros.Open;
end;

end.


