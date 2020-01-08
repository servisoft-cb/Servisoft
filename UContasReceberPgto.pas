unit UContasReceberPgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvEdit, JvTypedEdit, JvLookup, Buttons, Mask,
  JvToolEdit, JvCurrEdit, ExtCtrls, ComCtrls, DBCtrls, JvDBCtrl, FMTBcd,
  DB, DBClient, Provider, SqlExpr, JvCombobox, Grids, DBGrids, DBXpress,
  UDm1, rsDBUtils;

type
  TfContasReceberPgto = class(TForm)
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
    CheckBox1: TCheckBox;
    Label9: TLabel;
    Edit4: TEdit;
    Label11: TLabel;
    JvxCurrencyEdit3: TJvxCurrencyEdit;
    Label12: TLabel;
    Vendedor: TSQLQuery;
    VendedorP: TDataSetProvider;
    qVendedor: TClientDataSet;
    qVendedorID: TIntegerField;
    qVendedorTIPOCOMISSAO: TStringField;
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
    procedure Grava_Comissao;
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fContasReceberPgto: TfContasReceberPgto;
  vDelta1,
  vDelta2,
  vDeltaJuros,
  vDelta4,
  vDelta3,
  vDelta5 : OleVariant;

  iflag, iflagJuros, iflagVendedor : Integer;

  sBookMark1,
  sBookMarkJuros,
  sBookMark2,
  sBookMark4,
  sBookMark3,
  sBookMark5,
  sBookMark6 : string;


implementation

uses UDmCons, UBanco, UPessoa, UJuros;

{$R *.dfm}
procedure TfContasReceberPgto.Grava_Comissao;
begin
  Fdm1.tExtComissao.Close;
  Fdm1.ExtComissao.Params[0].AsInteger := 0;
  Fdm1.tExtComissao.Open;

  Fdm1.tExtComissao.Insert;
  Fdm1.tExtComissaoNUMMOV.AsInteger        := Fdm1.Incrementa('NUMMOV','EXTCOMISAO');
  Fdm1.tExtComissaoCODVENDEDOR.AsInteger   := Fdm1.tCReceberParcCODVENDEDOR.AsInteger;
  Fdm1.tExtComissaoCODCLIENTE.AsInteger    := Fdm1.tCReceberParcCODCLIENTE.AsInteger;
  Fdm1.tExtComissaoDTREFERENCIA.AsDateTime := JvDateEdit1.Date;
  Fdm1.tExtComissaoFUNCAO.AsString         := 'E';
  Fdm1.tExtComissaoNUMNOTA.AsInteger       := Fdm1.tCReceberParcNUMNOTA.AsInteger;
  Fdm1.tExtComissaoPARCELA.AsString        := Fdm1.tCReceberParcPARCELA.AsString;
  Fdm1.tExtComissaoPERCENTUAL.AsFloat      := Fdm1.tCReceberParcPERCCOMISSAO.AsFloat;
  Fdm1.tExtComissaoTIPO.AsString           := 'D';
  Fdm1.tExtComissaoVLRBASE.AsFloat         := StrToFloat(FormatFloat('0.00',JvxCurrencyEdit2.Value + JvxCurrencyEdit4.Value + JvxCurrencyEdit10.Value));
  Fdm1.tExtComissaoVLRCOMISSAO.AsFloat     := StrToFloat(FormatFloat('0.00',Fdm1.tExtComissaoVLRBASE.AsFloat * Fdm1.tCReceberParcPERCCOMISSAO.AsFloat / 100));

  Fdm1.tCReceberHistNUMEXTCOMISSAO.AsInteger := Fdm1.tExtComissaoNUMMOV.AsInteger;

  Fdm1.tExtComissao.Post;
  Fdm1.tExtComissao.ApplyUpdates(0);
end;

procedure TfContasReceberPgto.Grava_MovFinanceiro(Tipo : String);
begin
  Fdm1.tMovFinanceiro.Close;
  Fdm1.MovFinanceiro.Params[0].AsInteger := 0;
  Fdm1.tMovFinanceiro.Open;

  Fdm1.tMovFinanceiro.Insert;
  Fdm1.tMovFinanceiroNUMMOVTO.AsInteger := Fdm1.Incrementa('NUMMOVTO','MOVFINANCEIRO');
  Fdm1.tMovFinanceiroCODBANCO.AsInteger := JvDBLookupCombo1.KeyValue;
  Fdm1.tMovFinanceiroTIPOMOV.AsString   := 'REC';
  Fdm1.tMovFinanceiroDTMOVIMENTO.AsDateTime := JvDateEdit1.Date;
  if Tipo = 'D' then
    begin
      Fdm1.tMovFinanceiroVLRENTRADA.AsFloat   := JvxCurrencyEdit2.Value;
      Fdm1.tMovFinanceiroHISTORICO.AsString := 'Recto. Dupl. ' + DmCons.qCReceberParcNUMNOTA.AsString + ' parcela ' + DmCons.qCReceberParcPARCELA.AsString + ' de ' + Dmcons.qCReceberParcNOMECLIENTE.AsString;
    end
  else
  if Tipo = 'J' then
    begin
      Fdm1.tMovFinanceiroVLRENTRADA.AsFloat   := JvxCurrencyEdit10.Value;
      Fdm1.tMovFinanceiroHISTORICO.AsString := 'Recto. Juros da Dupl. ' + DmCons.qCReceberParcNUMNOTA.AsString + ' parcela ' + DmCons.qCReceberParcPARCELA.AsString + ' de ' + Dmcons.qCReceberParcNOMECLIENTE.AsString;
    end;
  Fdm1.tMovFinanceiroCODCENTROCUSTO.AsInteger := Fdm1.tCReceberParcCODCENTROCUSTO.AsInteger;
  if DmCons.qCliente.Locate('ID',DmCons.qCReceberParcCODCLIENTE.AsInteger,([LocaseInsensitive])) then
    Fdm1.tMovFinanceiroTIPOPESSOA.AsString := DmCons.qClientePESSOA.AsString;
  Fdm1.tMovFinanceiro.Post;
  Fdm1.tMovFinanceiro.ApplyUpdates(0);
end;

procedure TfContasReceberPgto.Grava_Historico;
var
  vAux : Integer;
begin

  Fdm1.tCReceberHist.Close;
  Fdm1.CReceberHist.Params[0].AsInteger := Fdm1.tCReceberParcNUMCRECEBER.AsInteger;
  Fdm1.CReceberHist.Params[1].AsString  := Fdm1.tCReceberParcPARCELA.AsString;
  Fdm1.tCReceberHist.Open;
  Fdm1.tCReceberHist.Last;
  vAux := Fdm1.tCReceberHistITEM.AsInteger + 1;

  Fdm1.tCReceberHist.Insert;
  Fdm1.tCReceberHistNUMCRECEBER.AsInteger   := Fdm1.tCReceberParcNUMCRECEBER.AsInteger;
  Fdm1.tCReceberHistPARCELA.AsString        := Fdm1.tCReceberParcPARCELA.AsString;
  Fdm1.tCReceberHistITEM.AsInteger          := vAux;
  Fdm1.tCReceberHistDTHISTORICO.AsDateTime  := Date;
  Fdm1.tCReceberHistCODBANCO.AsInteger      := JvDBLookupCombo1.KeyValue;
  Fdm1.tCReceberHistDTULTPGTO.AsDateTime    := JvDateEdit1.Date;
  Fdm1.tCReceberHistVLRULTPGTO.AsFloat      := JvxCurrencyEdit2.Value;
  Fdm1.tCReceberHistVLRULTJUROSPAGO.AsFloat := JvxCurrencyEdit10.Value;
  Fdm1.tCReceberHistVLRULTDESCONTO.AsFloat  := JvxCurrencyEdit1.Value;
  Fdm1.tCReceberHistVLRULTDESPESA.AsFloat   := JvxCurrencyEdit4.Value;
  Fdm1.tCReceberHistTIPOHIST.AsString       := 'P';
  if Edit4.Text <> '' then
    Fdm1.tCReceberHistHISTORICO.AsString  := Edit4.Text
  else
    begin
      if StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcVLRRESTANTE.AsFloat)) > 0 then
        Fdm1.tCReceberHistHISTORICO.AsString  := 'PAGAMENTO PARCIAL'
      else
        Fdm1.tCReceberHistHISTORICO.AsString  := 'PAGAMENTO TOTAL';
    end;

  iflag := 2;
  Grava_MovFinanceiro('D');
  sBookMark2  := Fdm1.tMovFinanceiro.Bookmark;
  vDelta2     := Fdm1.tMovFinanceiro.Data;

  Fdm1.tCReceberHistNUMMOVFINANC.AsInteger := Fdm1.tMovFinanceiroNUMMOVTO.AsInteger;

  if JvxCurrencyEdit10.Value > 0 then
    begin
      iflag := 3;
      Grava_MovFinanceiro('J');
      Fdm1.tCReceberHistNUMMOVJUROS.AsInteger  := Fdm1.tMovFinanceiroNUMMOVTO.AsInteger;
      sBookMark3  := Fdm1.tMovFinanceiro.Bookmark;
      vDelta3     := Fdm1.tMovFinanceiro.Data;
    end;

  //Grava comissão do vendedor
  if (Fdm1.tCReceberParcCODVENDEDOR.AsInteger > 0) and
     (Fdm1.tCReceberParcPERCCOMISSAO.AsFloat > 0) then
    begin
      qVendedor.Close;
      Vendedor.Params[0].AsInteger := Fdm1.tCReceberParcCODVENDEDOR.AsInteger;
      qVendedor.Open;
      //if qVendedorTIPOCOMISSAO.AsString = 'D' then
      //begin
        iflag := 4;
        Grava_Comissao;
        sBookMark4  := Fdm1.tExtComissao.Bookmark;
        vDelta4     := Fdm1.tExtComissao.Data;
      //end;
    end;

  Fdm1.tCReceberHist.Post;

  iflag := 5;
  Fdm1.tCReceberHist.ApplyUpdates(0);
  sBookMark5  := Fdm1.tCReceberHist.Bookmark;
  vDelta5     := Fdm1.tCReceberHist.Data;
  
end;

procedure TfContasReceberPgto.Pagamento;
begin

  Fdm1.tCReceberParc.Close;
  Fdm1.CReceberParc.Params[0].AsInteger := DmCons.qCReceberParcNUMCRECEBER.AsInteger;
  Fdm1.CReceberParc.Params[1].AsString  := DmCons.qCReceberParcPARCELA.AsString;
  Fdm1.tCReceberParc.Open;
  Fdm1.tCReceberParc.Edit;

  Fdm1.tCReceberParcCODBANCO.AsInteger  := JvDBLookupCombo1.KeyValue;
  Fdm1.tCReceberParcVLRDESPESA.AsFloat  := StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcVLRDESPESA.AsFloat)) +
                                      StrToFloat(FormatFloat('0.00',JvxCurrencyEdit4.Value));
  Fdm1.tCReceberParcVLRDESCONTO.AsFloat := StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcVLRDESCONTO.AsFloat)) +
                                      StrToFloat(FormatFloat('0.00',JvxCurrencyEdit1.Value));
  Fdm1.tCReceberParcJUROSPAGOS.AsFloat  := StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcJUROSPAGOS.AsFloat)) +
                                      StrToFloat(FormatFloat('0.00',JvxCurrencyEdit10.Value));
  Fdm1.tCReceberParcVLRRESTANTE.AsFloat := StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcVLRRESTANTE.AsFloat)) -
                                        StrToFloat(FormatFloat('0.00',JvxCurrencyEdit2.Value));
  Fdm1.tCReceberParcVLRPAGTO.AsFloat    := StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcVLRPAGTO.AsFloat)) +
                                        StrToFloat(FormatFloat('0.00',JvxCurrencyEdit2.Value));
  Fdm1.tCReceberParcDTPAGTO.AsDateTime  := JvDateEdit1.Date;

  if JvDateEdit1.Date > Fdm1.tCReceberParcDTVENCIMENTO.AsDateTime then
    Fdm1.tCReceberParcDIASATRASO.AsFloat := JvDateEdit1.Date - Fdm1.tCReceberParcDTVENCIMENTO.AsDateTime;

  if StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcVLRRESTANTE.AsFloat)) > 0 then
    Fdm1.tCReceberParcQUITADO.AsString := 'N'
  else
    Fdm1.tCReceberParcQUITADO.AsString := 'S';
  Fdm1.tCReceberParc.Post;

  Fdm1.tCReceberParc.ApplyUpdates(0);

  Grava_Historico;
end;

procedure TfContasReceberPgto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfContasReceberPgto.JvxCurrencyEdit2Exit(Sender: TObject);
begin
  if JvxCurrencyEdit2.Value > JvxCurrencyEdit9.Value then
    begin
      JvxCurrencyEdit10.Value := StrToFloat(FormatFloat('0.00',JvxCurrencyEdit2.Value - JvxCurrencyEdit9.Value));
      JvxCurrencyEdit2.Value  := StrToFloat(FormatFloat('0.00',JvxCurrencyEdit9.Value));
    end;
end;

procedure TfContasReceberPgto.Label1Click(Sender: TObject);
begin
  DmCons.qCliente.Close;
  fPessoa := TfPessoa.Create(Self);
  fPessoa.ShowModal;
  DmCons.qCliente.Open;
end;

procedure TfContasReceberPgto.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);

  DmCons.qCliente.Open;
  DmCons.qBanco.Open;

  Edit3.Text := DmCons.qCReceberParcNOMECLIENTE.AsString;
  Edit1.Text := DmCons.qCReceberParcNUMNOTA.AsString;
  Edit2.Text := DmCons.qCReceberParcPARCELA.AsString;
  Edit5.Text := DmCons.qCReceberParcNOMECENTROCUSTO.AsString;
  JvxCurrencyEdit9.Value := DmCons.qCReceberParcVLRRESTANTE.AsFloat;
  JvxCurrencyEdit2.Value := DmCons.qCReceberParcVLRRESTANTE.AsFloat;
  JvDateEdit1.SetFocus;
  JvDateEdit1.Date := Now;
  if DmCons.qCReceberParcCODBANCO.AsInteger > 0 then
    JvDBLookupCombo1.KeyValue := DmCons.qCReceberParcCODBANCO.AsInteger;
end;

procedure TfContasReceberPgto.BitBtn5Click(Sender: TObject);
var
  TD : TTransactionDesc;
  iNumCReceber: Integer;
  sParcela: String;
begin
  iflagJuros := 0;
  iflagVendedor := 0;
  if (JvxCurrencyEdit2.Value > 0) and (JvDBLookupCombo1.Text <> '') and (JvDateEdit1.Text <> '  /  /    ') then
    begin
      try
      TD.TransactionID  := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      Fdm1.Conexao.StartTransaction(TD);

      iflag := 1;
      Pagamento;
      sBookMark1  := Fdm1.tCReceberParc.Bookmark;
      vDelta1     := Fdm1.tCReceberParc.Data;

      Fdm1.Conexao.Commit(TD);

      Close;

      except
        begin
          {if iflag = 2 then
            Fdm1.tCReceberParc.Data := vDelta1;

          if iflag = 3 then
            begin
              Fdm1.tCReceberParc.Data := vDelta1;
              Fdm1.tMovFinanceiro.Data := vDelta2;
            end;

          if iflag = 4 then
            begin
              Fdm1.tCReceberParc.Data := vDelta1;
              Fdm1.tMovFinanceiro.Data := vDelta2;
              //Fdm1.tMovFinanceiro.Data := vDelta3;
            end;

          if iflag = 5 then
            begin
              Fdm1.tCReceberParc.Data := vDelta1;
              Fdm1.tMovFinanceiro.Data := vDelta2;
              //Fdm1.tMovFinanceiro.Data := vDelta3;

              if VarIsNull(vDelta4) then
                Fdm1.tExtComissao.Data   := vDelta4;

            end;


          Fdm1.tCReceberParc.Bookmark := sBookMark1;
          Fdm1.tMovFinanceiro.Bookmark  := sBookMark2;
          //Fdm1.tMovFinanceiro.Bookmark  := sBookMark3;

          if sBookMark4 <> '' then
            Fdm1.tExtComissao.Bookmark     := sBookMark4;

          }

          Fdm1.Conexao.Rollback(TD);

         { if iflagJuros > 0 then
            begin
              Fdm1.tMovFinanceiro.Delete;
              Fdm1.tMovFinanceiro.ApplyUpdates(0);
            end;}
        end;
      end;
    end
  else
    begin
      ShowMessage('Valor Recebimento deve ser maior que "0.00"!');
      JvxCurrencyEdit2.SetFocus;
    end;
end;

procedure TfContasReceberPgto.Label6Click(Sender: TObject);
begin
  DmCons.qBanco.Close;
  fBanco := TfBanco.Create(Self);
  fBanco.ShowModal;
  DmCons.qBanco.Open;
  JvDBLookupCombo1.SetFocus;  
end;

procedure TfContasReceberPgto.JvDateEdit1Exit(Sender: TObject);
var
  Ano,Mes,Dia : Word;
  vAux : Real;
  vDiaAtraso : Real;
begin
  //*** Calcula Juros
  Label12.Caption := '';
  JvxCurrencyEdit3.Clear;
  if JvDateEdit1.Date > DmCons.qCReceberParcDTVENCIMENTO.AsDateTime then
    begin
      vDiaAtraso := JvDateEdit1.Date - DmCons.qCReceberParcDTVENCIMENTO.AsDateTime;
      Label12.Caption := FloatToStr(vDiaAtraso) + '  Dia(s) em atraso';
      DecodeDate(JvDateEdit1.Date,Ano,Mes,Dia);
      Fdm1.tJuros.Close;
      Fdm1.Juros.Params[0].AsInteger := Ano;
      Fdm1.Juros.Params[1].AsInteger := Mes;
      Fdm1.tJuros.Open;
      if Fdm1.tJuros.RecordCount > 0 then
        begin
          vAux := Fdm1.tJurosJURO.AsFloat / 30;
          vAux := (DmCons.qCReceberParcVLRRESTANTE.AsFloat * vAux / 100) * vDiaAtraso;
          JvxCurrencyEdit3.Text := FormatFloat('0.00',vAux);
        end;
    end;
end;

procedure TfContasReceberPgto.Label11Click(Sender: TObject);
begin
  DmCons.qJuros.Close;
  fJuros := TfJuros.Create(Self);
  fJuros.ShowModal;
  DmCons.qJuros.Open;
end;

end.

