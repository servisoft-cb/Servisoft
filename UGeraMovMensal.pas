unit UGeraMovMensal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Mask, JvToolEdit,
  JvTypedEdit, JvEdit, FMTBcd, DB, DBClient, Provider, SqlExpr, dbxpress,
  ComCtrls, UDm1, rsDBUtils;

type
  TfGeraMovMensal = class(TForm)
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    JvIntegerEdit1: TJvIntegerEdit;
    Label3: TLabel;
    JvYearEdit1: TJvYearEdit;
    Label7: TLabel;
    JvDateEdit1: TJvDateEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Pessoa: TSQLQuery;
    PessoaP: TDataSetProvider;
    qPessoa: TClientDataSet;
    dsPessoa: TDataSource;
    qPessoaID: TIntegerField;
    qPessoaNOME: TStringField;
    qPessoaFANTASIA: TStringField;
    qPessoaPESSOA: TStringField;
    qPessoaDOCUMENTO: TStringField;
    qPessoaENDERECO: TStringField;
    qPessoaBAIRRO: TStringField;
    qPessoaCEP: TStringField;
    qPessoaESTADO: TStringField;
    qPessoaFONE: TStringField;
    qPessoaFAX: TStringField;
    qPessoaINSCESTADUAL: TStringField;
    qPessoaIDENTIDADE: TStringField;
    qPessoaESTCIVIL: TStringField;
    qPessoaPROFISSAO: TStringField;
    qPessoaNACIONALIDADE: TStringField;
    qPessoaDTCADASTRO: TDateField;
    qPessoaOBSERVACAO: TMemoField;
    qPessoaFORNECEDOR: TStringField;
    qPessoaCLIENTE: TStringField;
    qPessoaVENDEDOR: TStringField;
    qPessoaREFPESSOAL1: TStringField;
    qPessoaREFPESSOAL2: TStringField;
    qPessoaREFPESSOALEND1: TStringField;
    qPessoaREFPESSOALEND2: TStringField;
    qPessoaREFPESSOALFONE1: TStringField;
    qPessoaREFPESSOALFONE2: TStringField;
    qPessoaREFCOMERCIAL1: TStringField;
    qPessoaREFCOMERCIAL2: TStringField;
    qPessoaREFCOMERCIALEND1: TStringField;
    qPessoaREFCOMERCIALEND2: TStringField;
    qPessoaREFCOMERCIALFONE1: TStringField;
    qPessoaREFCOMERCIALFONE2: TStringField;
    qPessoaCIDADE: TIntegerField;
    qPessoaTRANSPORTADORA: TStringField;
    qPessoaPERCCOMISSAO: TFloatField;
    qPessoaTIPOCOMISSAO: TStringField;
    qPessoaSTATUS: TStringField;
    qPessoaDTCONTRATOINI: TDateField;
    qPessoaDTCONTRATOFIM: TDateField;
    qPessoaCONTRATODEVOLVIDO: TDateField;
    qPessoaCOBENDERECO: TStringField;
    qPessoaCOBNUMERO: TIntegerField;
    qPessoaCOBCOMPLEMENTO: TStringField;
    qPessoaCOBBAIRRO: TStringField;
    qPessoaCOBCIDADE: TIntegerField;
    qPessoaCOBUF: TStringField;
    qPessoaCOBCONTATO: TStringField;
    qPessoaENDNUMERO: TIntegerField;
    qPessoaENDCOMPLEMENTO: TStringField;
    qPessoaIDUSUARIO: TIntegerField;
    qPessoaCODBANCO: TIntegerField;
    qPessoaAGENCIA: TStringField;
    qPessoaNUMCONTACORRENTE: TStringField;
    qPessoaLOGIN: TStringField;
    qPessoaSENHA: TStringField;
    qPessoaDIAPAGAMENTO: TIntegerField;
    qPessoaCODVENDEDOR: TIntegerField;
    qPessoaFORMAPGTO: TIntegerField;
    qPessoaEMAIL: TStringField;
    qPessoaHOMEPAGE: TStringField;
    qPessoaSELECIONADO: TStringField;
    qPessoaCONJUGE: TStringField;
    qPessoaDTNASCIMENTO: TDateField;
    qPessoaCEL: TStringField;
    qPessoaPLANOSAUDE_ID: TIntegerField;
    qPessoaCOBCEP: TStringField;
    qPessoaVLRPGTO: TFloatField;
    CReceberParc: TSQLDataSet;
    CReceberParcP: TDataSetProvider;
    tCReceberParc: TClientDataSet;
    tCReceberParcNUMCRECEBER: TIntegerField;
    tCReceberParcPARCELA: TStringField;
    tCReceberParcVLRVENCIMENTO: TFloatField;
    tCReceberParcDTVENCIMENTO: TDateField;
    tCReceberParcQUITADO: TStringField;
    tCReceberParcJUROSCALC: TFloatField;
    tCReceberParcDTPAGTO: TDateField;
    tCReceberParcCODCLIENTE: TIntegerField;
    tCReceberParcNUMNOTA: TIntegerField;
    tCReceberParcVLRDESCONTO: TFloatField;
    tCReceberParcVLRPAGTO: TFloatField;
    tCReceberParcVLRRESTANTE: TFloatField;
    tCReceberParcCODVENDEDOR: TIntegerField;
    tCReceberParcPERCCOMISSAO: TFloatField;
    tCReceberParcAGENCIA: TStringField;
    tCReceberParcTITPORTADOR: TStringField;
    tCReceberParcCODTIPOCOBRANCA: TIntegerField;
    tCReceberParcVLRDESPESA: TFloatField;
    tCReceberParcCODBANCO: TIntegerField;
    tCReceberParcPGCARTORIO: TStringField;
    tCReceberParcTITPROTESTADO: TStringField;
    tCReceberParcQTDDIASPROT: TIntegerField;
    tCReceberParcDTMOVIMENTO: TDateField;
    tCReceberParcDIASATRASO: TIntegerField;
    tCReceberParcJUROSPAGOS: TFloatField;
    tCReceberParcCANCELADO: TStringField;
    tCReceberParcTIPODOC: TStringField;
    tCReceberParcVLRDEVOLUCAO: TFloatField;
    tCReceberParcCODCONDPGTO: TIntegerField;
    tCReceberParcDTDEVOLUCAO: TDateField;
    tCReceberParcCOBRANCAEMITIDA: TStringField;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    MovAvulsoParc: TSQLQuery;
    MovAvulsoParcP: TDataSetProvider;
    qMovAvulsoParc: TClientDataSet;
    qMovAvulsoParcVALOR: TFMTBCDField;
    tCReceberParcNUMCARTEIRA: TStringField;
    tCReceberParcNOSSONUMERO: TStringField;
    qPessoaNUMCARTEIRA: TStringField;
    qPessoaFUNCIONARIO: TStringField;
    qPessoaCODCENTROCUSTO: TIntegerField;
    qPessoaCODTIPOCOBRANCA: TIntegerField;
    tCReceberParcIMPRIMIR: TStringField;
    tCReceberParcCODCENTROCUSTO: TIntegerField;
    qMovAvulsoParcDTVENC: TDateField;
    BitBtn2: TBitBtn;
    MovAvulsoItens: TSQLQuery;
    MovAvulsoItensP: TDataSetProvider;
    qMovAvulsoItens: TClientDataSet;
    qMovAvulsoItensDESCRICAO: TStringField;
    ServicoExtra: TSQLQuery;
    ServicoExtraP: TDataSetProvider;
    qServicoExtra: TClientDataSet;
    qServicoExtraPESSOA_ID: TIntegerField;
    qServicoExtraID: TIntegerField;
    qServicoExtraDESCRICAO: TStringField;
    qServicoExtraVALOR: TFMTBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Fdm1: TDm1;
  public
    { Public declarations }
  end;

var
  fGeraMovMensal: TfGeraMovMensal;

implementation

uses URecibo, DateUtils;

{$R *.dfm}

procedure TfGeraMovMensal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfGeraMovMensal.BitBtn1Click(Sender: TObject);
var
  TD : TTransactionDesc;
  vData : String;
  vValor : Currency;
  vDataAux : TDate;
  vCodAvulso : Integer;
begin
  if JvIntegerEdit1.Value < 1 then
    ShowMessage('Falta informar o dia de vencimento!')
  else
  if JvDateEdit1.Date > 0 then
    begin
      try
        TD.TransactionID  := 1;
        TD.IsolationLevel := xilREADCOMMITTED;
        Fdm1.Conexao.StartTransaction(TD);
        qPessoa.Close;
        Pessoa.Params[0].AsInteger := JvIntegerEdit1.Value;
        qPessoa.Open;
        ProgressBar1.Max      := qPessoa.RecordCount;
        ProgressBar1.Position := 0;
        qPessoa.First;
        while not qPessoa.Eof do
          begin
            ProgressBar1.Position := ProgressBar1.Position + 1;
            qMovAvulsoParc.Close;
            MovAvulsoParc.ParamByName('CodCliente').AsInteger := qPessoaID.AsInteger;
            MovAvulsoParc.ParamByName('Mes').AsInteger        := ComboBox1.ItemIndex + 1;
            MovAvulsoParc.ParamByName('Ano').AsInteger        := JvYearEdit1.Value;
            qMovAvulsoParc.Open;

            qMovAvulsoItens.Close;
            MovAvulsoItens.ParamByName('CodCliente').AsInteger := qPessoaID.AsInteger;
            MovAvulsoItens.ParamByName('Mes').AsInteger        := ComboBox1.ItemIndex + 1;
            MovAvulsoItens.ParamByName('Ano').AsInteger        := JvYearEdit1.Value;
            qMovAvulsoItens.Open;

            qServicoExtra.Close;
            ServicoExtra.ParamByName('PESSOA_ID').AsInteger := qPessoaID.AsInteger;
            qServicoExtra.Open;

            vValor     := 0;
            vDataAux   := 0;
            qMovAvulsoParc.First;
            while not qMovAvulsoParc.Eof do
              begin
                vDataAux := qMovAvulsoParcDTVENC.AsDateTime;
                vValor   := StrToFloat(FormatFloat('0.00',vValor + qMovAvulsoParcVALOR.AsFloat));
                qMovAvulsoParc.Next;
              end;

            if (qPessoaVLRPGTO.AsFloat > 0) or (vValor > 0) then
              begin
                tCReceberParc.Close;
                CReceberParc.Params[0].AsInteger := qPessoaID.AsInteger;
                if qPessoaVLRPGTO.AsFloat > 0 then
                  vData := qPessoaDIAPAGAMENTO.AsString + '/' + IntToStr(ComboBox1.ItemIndex + 1) + '/' + IntToStr(JvYearEdit1.Value);
                //else
                //  vData := DateToStr(vDataAux);
                CReceberParc.Params[1].AsDate    := StrToDate(vData);
                tCReceberParc.Open;
                if not(tCReceberParc.IsEmpty) and (tCReceberParcVLRPAGTO.AsFloat <= 0) then
                  begin
                    Fdm1.tCReceberParc.Close;
                    Fdm1.CReceberParc.Params[0].AsInteger := tCReceberParcNUMCRECEBER.AsInteger;
                    Fdm1.CReceberParc.Params[1].AsString  := tCReceberParcPARCELA.AsString;
                    Fdm1.tCReceberParc.Open;
                    if StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcVLRVENCIMENTO.AsFloat)) <> StrToFloat(FormatFloat('0.00',tCReceberParcVLRVENCIMENTO.AsFloat)) then
                      begin
                        Fdm1.tCReceberParc.Edit;
                        Fdm1.tCReceberParcVLRVENCIMENTO.AsFloat   := StrToFloat(FormatFloat('0.00',qPessoaVLRPGTO.AsFloat + vValor));
                        Fdm1.tCReceberParcVLRRESTANTE.AsFloat     := StrToFloat(FormatFloat('0.00',qPessoaVLRPGTO.AsFloat + vValor));
                        Fdm1.tCReceberParcDTMOVIMENTO.AsDateTime  := JvDateEdit1.Date;
                        Fdm1.tCReceberParcOBS.AsString             := '';
                        if qPessoaVLRPGTO.AsFloat > 0 then
                          Fdm1.tCReceberParcOBS.AsString             := '(Valor Mensal ==>  ' + FormatFloat('###,###,##0.00',qPessoaVLRPGTO.AsFloat) + ')  ';
                        if vValor > 0 then
                          begin
                            Fdm1.tCReceberParcOBS.AsString  := Fdm1.tCReceberParcOBS.AsString + ' (Serviços Extras:';
                            qMovAvulsoItens.First;
                            while not qMovAvulsoItens.Eof do
                              begin
                                Fdm1.tCReceberParcOBS.AsString := Fdm1.tCReceberParcOBS.AsString + '"' + qMovAvulsoItensDESCRICAO.AsString + '" ';
                                qMovAvulsoItens.Next;
                              end;
                            qServicoExtra.First;
                            while not qServicoExtra.Eof do
                              begin
                                Fdm1.tCReceberParcOBS.AsString := Fdm1.tCReceberParcOBS.AsString + '"' + qServicoExtraDESCRICAO.AsString + '" ';
                                qServicoExtra.Next;
                              end;

                            Fdm1.tCReceberParcOBS.AsString  := Fdm1.tCReceberParcOBS.AsString + ' ==> ' + FormatFloat('###,###,##0.00',vValor) + ')';
                          end;
                        Fdm1.tCReceberParc.Post;
                        Fdm1.tCReceberParc.ApplyUpdates(0);
                      end;
                  end
                else
                if tCReceberParc.IsEmpty then
                  begin
                    Fdm1.tCReceberParc.Close;
                    Fdm1.CReceberParc.Params[0].AsInteger := 0;
                    Fdm1.CReceberParc.Params[1].AsString  := '';
                    Fdm1.tCReceberParc.Open;

                    Fdm1.tCReceberParc.Insert;
                    Fdm1.tCReceberParcNUMCRECEBER.AsInteger   := Fdm1.Incrementa('NUMCRECEBER','CRECEBERPARC');
                    Fdm1.tCReceberParcPARCELA.AsString        := '01';
                    Fdm1.tCReceberParcVLRVENCIMENTO.AsFloat   := qPessoaVLRPGTO.AsFloat + vValor;
                    Fdm1.tCReceberParcVLRRESTANTE.AsFloat     := qPessoaVLRPGTO.AsFloat + vValor;
                    Fdm1.tCReceberParcDTVENCIMENTO.AsDateTime := StrToDate(vData);
                    Fdm1.tCReceberParcCODCLIENTE.AsInteger    := qPessoaID.AsInteger;
                    Fdm1.tCReceberParcCODTIPOCOBRANCA.AsInteger := qPessoaCODTIPOCOBRANCA.AsInteger;
                    Fdm1.tCReceberParcQUITADO.AsString        := 'N';
                    Fdm1.tCReceberParcNUMNOTA.AsInteger       := 0;
                    Fdm1.tCReceberParcDTMOVIMENTO.AsDateTime  := JvDateEdit1.Date;
                    Fdm1.tCReceberParcTIPODOC.AsString        := 'MV';
                    Fdm1.tCReceberParcCODVENDEDOR.AsInteger   := qPessoaCODVENDEDOR.AsInteger;
                    Fdm1.tCReceberParcPERCCOMISSAO.AsFloat    := 0;
                    Fdm1.tCReceberParcNUMCARTEIRA.AsString    := qPessoaNUMCARTEIRA.AsString;
                    Fdm1.tCReceberParcCODCENTROCUSTO.AsInteger := qPessoaCODCENTROCUSTO.AsInteger;
                    Fdm1.tCReceberParcOBS.AsString             := '';
                    if qPessoaVLRPGTO.AsFloat > 0 then
                      Fdm1.tCReceberParcOBS.AsString             := '(Valor Mensal ==>  ' + FormatFloat('###,###,##0.00',qPessoaVLRPGTO.AsFloat) + ')  ';
                    if vValor > 0 then
                      begin
                        Fdm1.tCReceberParcOBS.AsString  := Fdm1.tCReceberParcOBS.AsString + ' (Serviços Extras:';
                        qMovAvulsoItens.First;
                        while not qMovAvulsoItens.Eof do
                          begin
                            Fdm1.tCReceberParcOBS.AsString := Fdm1.tCReceberParcOBS.AsString + '"' + qMovAvulsoItensDESCRICAO.AsString + '" ';
                            qMovAvulsoItens.Next;
                          end;
                        Fdm1.tCReceberParcOBS.AsString  := Fdm1.tCReceberParcOBS.AsString + ' ==> ' + FormatFloat('###,###,##0.00',vValor) + ')';
                      end;
                    Fdm1.tCReceberParc.Post;
                    Fdm1.tCReceberParc.ApplyUpdates(0);
                  end;
              end;
            qPessoa.Next;
          end;
        Fdm1.Conexao.Commit(TD);
      except
        on E:Exception do
          begin
            Fdm1.Conexao.Rollback(TD);
            ShowMessage('Erro ao tentar gravar o registro : ' + E.Message);
          end;
      end;
      ShowMessage('Movimento gerado!');
    end
  else
    ShowMessage('Falta informar a data de emissão!');
end;

procedure TfGeraMovMensal.BitBtn2Click(Sender: TObject);
begin
  fRecibo := TfRecibo.Create(Self);
  fRecibo.ShowModal;
end;

procedure TfGeraMovMensal.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

procedure TfGeraMovMensal.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

procedure TfGeraMovMensal.FormShow(Sender: TObject);
begin
  JvYearEdit1.Value := YearOf(Date);
end;

end.
