unit UContasReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvDBCtrl, ExtCtrls, ComCtrls, StdCtrls, Buttons,
  JvLookup, DBCtrls, Mask, DB, FMTBcd, SqlExpr, JvToolEdit, JvCurrEdit, DBXpress,
  DBClient, Provider, JvCombobox, JvEdit, JvTypedEdit, JvComponent,
  JvColorBox, Menus, JvBitBtn, JvxCtrls, JvDBComb, UDm1, rsDBUtils;

type
  TfContasReceber = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    JvDBGrid1: TJvDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Label5: TLabel;
    JvDBDateEdit2: TJvDBDateEdit;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Label4: TLabel;
    JvDBLookupCombo4: TJvDBLookupCombo;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label7: TLabel;
    JvIntegerEdit1: TJvIntegerEdit;
    Panel4: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    BitBtn8: TBitBtn;
    Label17: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Bevel1: TBevel;
    BitBtn5: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    JvDBDateEdit1: TJvDBDateEdit;
    DBEdit4: TDBEdit;
    Panel5: TPanel;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    Label24: TLabel;
    DBEdit6: TDBEdit;
    Label25: TLabel;
    DBEdit7: TDBEdit;
    Label27: TLabel;
    DBEdit10: TDBEdit;
    Label29: TLabel;
    DBEdit12: TDBEdit;
    Label30: TLabel;
    DBEdit13: TDBEdit;
    Label32: TLabel;
    DBEdit14: TDBEdit;
    Label33: TLabel;
    DBEdit15: TDBEdit;
    Label34: TLabel;
    DBEdit16: TDBEdit;
    Label26: TLabel;
    JvDBLookupCombo2: TJvDBLookupCombo;
    Label28: TLabel;
    JvDBLookupCombo3: TJvDBLookupCombo;
    Label23: TLabel;
    JvDBLookupCombo5: TJvDBLookupCombo;
    Label35: TLabel;
    DBEdit5: TDBEdit;
    Cliente: TSQLQuery;
    ClienteP: TDataSetProvider;
    qCliente: TClientDataSet;
    qsCliente: TDataSource;
    Label20: TLabel;
    JvDBLookupCombo6: TJvDBLookupCombo;
    BitBtn10: TBitBtn;
    DBEdit8: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    BitBtn6: TBitBtn;
    CReceberHist: TSQLDataSet;
    CReceberrHistP: TDataSetProvider;
    tCReceberHist: TClientDataSet;
    tCReceberHistNUMCRECEBER: TIntegerField;
    tCReceberHistPARCELA: TStringField;
    tCReceberHistITEM: TIntegerField;
    tCReceberHistHISTORICO: TStringField;
    tCReceberHistDTHISTORICO: TDateField;
    tCReceberHistDTULTPGTO: TDateField;
    tCReceberHistVLRULTPGTO: TFloatField;
    tCReceberHistVLRULTJUROSPAGO: TFloatField;
    tCReceberHistVLRULTDESCONTO: TFloatField;
    tCReceberHistVLRULTDESPESA: TFloatField;
    tCReceberHistTIPOHIST: TStringField;
    tCReceberHistNUMMOVFINANC: TIntegerField;
    tCReceberHistNUMMOVJUROS: TIntegerField;
    tCReceberHistVLRULTDEVOLUCAO: TFloatField;
    tCReceberHistNUMEXTCOMISSAO: TIntegerField;
    Label21: TLabel;
    CReceberExc: TSQLQuery;
    CReceberExcP: TDataSetProvider;
    qCReceberExc: TClientDataSet;
    Label22: TLabel;
    DBEdit19: TDBEdit;
    qClienteID: TIntegerField;
    qClienteNOME: TStringField;
    qClienteFANTASIA: TStringField;
    qClientePESSOA: TStringField;
    qClienteDOCUMENTO: TStringField;
    qClienteENDERECO: TStringField;
    qClienteBAIRRO: TStringField;
    qClienteCEP: TStringField;
    qClienteESTADO: TStringField;
    qClienteFONE: TStringField;
    qClienteFAX: TStringField;
    qClienteINSCESTADUAL: TStringField;
    qClienteIDENTIDADE: TStringField;
    qClienteESTCIVIL: TStringField;
    qClientePROFISSAO: TStringField;
    qClienteNACIONALIDADE: TStringField;
    qClienteDTCADASTRO: TDateField;
    qClienteOBSERVACAO: TBlobField;
    qClienteFORNECEDOR: TStringField;
    qClienteCLIENTE: TStringField;
    qClienteVENDEDOR: TStringField;
    qClienteREFPESSOAL1: TStringField;
    qClienteREFPESSOAL2: TStringField;
    qClienteREFPESSOALEND1: TStringField;
    qClienteREFPESSOALEND2: TStringField;
    qClienteREFPESSOALFONE1: TStringField;
    qClienteREFPESSOALFONE2: TStringField;
    qClienteREFCOMERCIAL1: TStringField;
    qClienteREFCOMERCIAL2: TStringField;
    qClienteREFCOMERCIALEND1: TStringField;
    qClienteREFCOMERCIALEND2: TStringField;
    qClienteREFCOMERCIALFONE1: TStringField;
    qClienteREFCOMERCIALFONE2: TStringField;
    qClienteCIDADE: TIntegerField;
    qClienteTRANSPORTADORA: TStringField;
    qClientePERCCOMISSAO: TFloatField;
    qClienteTIPOCOMISSAO: TStringField;
    qClienteNOMECIDADE: TStringField;
    qClienteFORMAPGTO: TIntegerField;
    BitBtn7: TBitBtn;
    JvDBGrid2: TJvDBGrid;
    JvxSpeedButton1: TJvxSpeedButton;
    Label36: TLabel;
    JvDBComboBox3: TJvDBComboBox;
    Label37: TLabel;
    DBEdit20: TDBEdit;
    Label13: TLabel;
    JvColorSquare1: TJvColorSquare;
    JvColorSquare3: TJvColorSquare;
    Label14: TLabel;
    JvColorSquare4: TJvColorSquare;
    Label15: TLabel;
    JvColorSquare5: TJvColorSquare;
    Label31: TLabel;
    JvColorSquare2: TJvColorSquare;
    Label16: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    JvDBLookupCombo7: TJvDBLookupCombo;
    PopupMenu1: TPopupMenu;
    ImprimirConsulta1: TMenuItem;
    ImprimirBoletos1: TMenuItem;
    ImprimirBoleto21: TMenuItem;
    ImprimirContasaReceberDetalhado1: TMenuItem;
    ImprimirAcumuladodeClientes1: TMenuItem;
    BitBtn9: TBitBtn;
    Label45: TLabel;
    Edit1: TEdit;
    Label46: TLabel;
    ImprimirRecibo1: TMenuItem;
    Label47: TLabel;
    JvIntegerEdit2: TJvIntegerEdit;
    Label48: TLabel;
    DBMemo1: TDBMemo;
    Label49: TLabel;
    JvDBLookupCombo8: TJvDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure JvDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure JvDBLookupCombo6Exit(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure Label20Click(Sender: TObject);
    procedure JvDBLookupCombo5Exit(Sender: TObject);
    procedure Label13Click(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure Label16Click(Sender: TObject);
    procedure JvIntegerEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label23Click(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure JvDBLookupCombo4Exit(Sender: TObject);
    procedure ImprimirConsulta1Click(Sender: TObject);
    procedure ImprimirBoletos1Click(Sender: TObject);
    procedure ImprimirContasaReceberDetalhado1Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure Label26Click(Sender: TObject);
    procedure ImprimirAcumuladodeClientes1Click(Sender: TObject);
    procedure ImprimirBoleto21Click(Sender: TObject);
    procedure Label44Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ImprimirRecibo1Click(Sender: TObject);
    procedure JvIntegerEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Label28Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    Fdm1: TDm1;
    procedure Calcula;
    procedure Habilita;
    procedure Atualiza;
    procedure Monta_SQLCReceberParc(Tipo : String);
    procedure Imprime_Recibo;
  public
    { Public declarations }
  end;

var
  fContasReceber: TfContasReceber;
  vAlteraNE : String;
  vUltNumMovimento : Integer;
  Porta: String;

implementation

uses UDmCons, Math, UPessoa, StdConvs, UCondPgto, UDevolucaoRec,
  uPortaImpressao, UContasReceberRel, UContasReceberDet,
  UContasReceberPgto, UBanco, UContasReceberCliente, UPrevBoleto2,
  uCentroCusto, UPrevRecibo2, uPessoac, UTipoCobranca;

{$R *.dfm}

procedure TfContasReceber.Imprime_Recibo;
begin
  fPrevRecibo2 := TfPrevRecibo2.Create(Self);

  fPrevRecibo2.Dm1 := Fdm1;

  fPrevRecibo2.TabSheet1.TabVisible := True;
  fPrevRecibo2.TabSheet2.TabVisible := False;
  Fdm1.tCReceberHist.Filtered := False;
  Fdm1.tCReceberHist.Filter   := 'TIPOHIST = ''P''';
  Fdm1.tCReceberHist.Filtered := True;
  Fdm1.tCReceberHist.Last;
  fPrevRecibo2.JvIntegerEdit1.Value := Fdm1.tCReceberParcNUMCRECEBER.AsInteger;
  fPrevRecibo2.JvIntegerEdit3.Value := Fdm1.tCReceberParcNUMNOTA.AsInteger;
  fPrevRecibo2.Edit1.Text           := Fdm1.tCReceberParcDTVENCIMENTO.AsString;
  fPrevRecibo2.edit2.Text           := Fdm1.tCReceberParcNOMECLIENTE.AsString;
  fPrevRecibo2.ShowModal;
  Fdm1.tCReceberHist.Filtered := False;
end;

procedure TfContasReceber.Monta_SQLCReceberParc(Tipo : String);
begin
  DmCons.qCReceberParc.Close;
  DmCons.CReceberParc.SQL.Clear;
  DmCons.CReceberParc.SQL.Add('Select CRECEBERPARC.*, BANCO.NOME NOMEBANCO,');
  DmCons.CReceberParc.SQL.Add('BANCO.TIPOBANCO, PESSOA.NOME NOMECLIENTE,');
  DmCons.CReceberParc.SQL.Add('PESSOA.ENDERECO ENDCLIENTE, A.NOME CIDADECLIENTE,');
  DmCons.CReceberParc.SQL.Add('PESSOA.BAIRRO, PESSOA.CEP, CENTROCUSTO.NOME NOMECENTROCUSTO, VEND.NOME NOMEVENDEDOR');
  DmCons.CReceberParc.SQL.Add('from CRECEBERPARC');
  DmCons.CReceberParc.SQL.Add('left join BANCO on');
  DmCons.CReceberParc.SQL.Add('(BANCO.ID = CRECEBERPARC.CODBANCO)');
  DmCons.CReceberParc.SQL.Add('left join PESSOA on');
  DmCons.CReceberParc.SQL.Add('(PESSOA.ID = CRECEBERPARC.CODCLIENTE)');
  DmCons.CReceberParc.SQL.Add('LEFT JOIN CIDADE A');
  DmCons.CReceberParc.SQL.Add('ON (PESSOA.CIDADE = A.ID)');
  DmCons.CReceberParc.SQL.Add('left join CENTROCUSTO on');
  DmCons.CReceberParc.SQL.Add('(CENTROCUSTO.ID = CRECEBERPARC.CODCENTROCUSTO)');
  DmCons.CReceberParc.SQL.Add('left join PESSOA VEND on');
  DmCons.CReceberParc.SQL.Add('(VEND.ID = CRECEBERPARC.CODVENDEDOR)');
  DmCons.CReceberParc.SQL.Add('WHERE (0=0)');
  if JvDBLookupCombo1.Text <> '' then
    begin
      DmCons.CReceberParc.SQL.Add(' AND (CRECEBERPARC.CODCLIENTE = :CODCLIENTE) ');
      DmCons.CReceberParc.ParamByName('CODCLIENTE').AsInteger := JvDBLookupCombo1.KeyValue;
    end;
  if JvDBLookupCombo8.Text <> '' then
  begin
    DmCons.CReceberParc.SQL.Add(' AND (CRECEBERPARC.CODVENDEDOR = :CODVENDEDOR) ');
    DmCons.CReceberParc.ParamByName('CODVENDEDOR').AsInteger := JvDBLookupCombo8.KeyValue;
  end;
  if JvIntegerEdit1.Value > 0 then
    begin
      DmCons.CReceberParc.SQL.Add('  AND (CRECEBERPARC.NUMNOTA = :NUMNOTA)');
      DmCons.CReceberParc.ParamByName('NUMNOTA').AsInteger := JvIntegerEdit1.Value;
    end;
  if JvIntegerEdit2.Value > 0 then
    begin
      DmCons.CReceberParc.SQL.Add('  AND (CRECEBERPARC.NUMCRECEBER = :NUMCRECEBER)');
      DmCons.CReceberParc.ParamByName('NUMCRECEBER').AsInteger := JvIntegerEdit2.Value;
    end;
  if Edit1.Text <> '' then
    begin
      DmCons.CReceberParc.SQL.Add('  AND (CRECEBERPARC.NOSSONUMERO = :NOSSONUMERO)');
      DmCons.CReceberParc.ParamByName('NOSSONUMERO').AsString := Edit1.Text;
    end;
  if Tipo = 'PAG' then
    DmCons.CReceberParc.SQL.Add(' AND (CRECEBERPARC.VLRRESTANTE <= 0) ')
  else
  if Tipo = 'PEND' then
    DmCons.CReceberParc.SQL.Add(' AND (CRECEBERPARC.VLRRESTANTE > 0) ')
  else
  if Tipo = 'ATR' then
    begin
      DmCons.CReceberParc.SQL.Add(' AND (CRECEBERPARC.VLRRESTANTE > 0) ');
      DmCons.CReceberParc.SQL.Add(' AND (CRECEBERPARC.QUITADO = ''N'') ');
      DmCons.CReceberParc.SQL.Add(' AND (CRECEBERPARC.DTVENCIMENTO < :DtVencimento)');
      DmCons.CReceberParc.ParamByName('DtVencimento').AsDate := Date;
    end;
  DmCons.CReceberParc.SQL.Add('order by CRECEBERPARC.DTVENCIMENTO');
  DmCons.qCReceberParc.Open;
end;

procedure TfContasReceber.Calcula;
var
  vAtrasado, vRecebido, vAReceber : Real;
begin
  vAtrasado := 0;
  vRecebido     := 0;
  vAReceber := 0;
  DmCons.qCReceberParc.DisableControls;
  DmCons.qCReceberParc.First;
  while not DmCons.qCReceberParc.Eof do
    begin
      if (DmCons.qCReceberParcclDiasAtraso.AsInteger >0) and (DmCons.qCReceberParcVLRRESTANTE.AsFloat >0)then
        vAtrasado := vAtrasado + DmCons.qCReceberParcVLRRESTANTE.AsFloat
      else
        vAReceber := vAReceber + DmCons.qCReceberParcVLRRESTANTE.AsFloat;
      vRecebido := vRecebido + DmCons.qCReceberParcVLRPAGTO.AsFloat;
      DmCons.qCReceberParc.Next;
    end;
  Label39.Caption := FormatFloat('###,###,##0.00',vAtrasado);
  Label40.Caption := FormatFloat('###,###,##0.00',vRecebido);
  Label41.Caption := FormatFloat('###,###,##0.00',vAReceber);
  DmCons.qCReceberParc.EnableControls;
end;

procedure TfContasReceber.Atualiza;
begin
  if Fdm1.tCReceberParc.State in [dsInactive,dsBrowse] then
    begin
      Fdm1.tCReceberParc.Close;
      Fdm1.tCReceberHist.Close;
      if BitBtn1.Tag = 1 then
        begin
          Fdm1.CReceberParc.ParamByName('Codigo').AsInteger := 0;
          Fdm1.CReceberParc.ParamByName('Parcela').AsString := '';

          Fdm1.CReceberHist.ParamByName('Codigo').AsInteger := 0;
          Fdm1.CReceberHist.ParamByName('Parcela').AsString := '';
        end
      else
        begin
          Fdm1.CReceberParc.ParamByName('Codigo').AsInteger := DmCons.qCReceberParcNUMCRECEBER.AsInteger;
          Fdm1.CReceberParc.ParamByName('Parcela').AsString := DmCons.qCReceberParcPARCELA.AsString;

          Fdm1.CReceberHist.ParamByName('Codigo').AsInteger := DmCons.qCReceberParcNUMCRECEBER.AsInteger;
          Fdm1.CReceberHist.ParamByName('Parcela').AsString := DmCons.qCReceberParcPARCELA.AsString;
        end;
      Fdm1.tCReceberParc.Open;
      Fdm1.tCReceberHist.Open;
    end;
end;

procedure TfContasReceber.Habilita;
begin
  Panel3.Enabled          := not Panel3.Enabled;
  BitBtn1.Enabled         := not BitBtn1.Enabled;
  BitBtn2.Enabled         := not BitBtn2.Enabled;
  BitBtn3.Enabled         := not BitBtn3.Enabled;
  BitBtn4.Enabled         := not BitBtn4.Enabled;
  BitBtn5.Enabled         := not BitBtn5.Enabled;
  BitBtn6.Enabled         := not BitBtn6.Enabled;
  BitBtn7.Enabled         := not BitBtn7.Enabled;
  BitBtn8.Enabled         := not BitBtn8.Enabled;
  DBMemo1.ReadOnly        := not DBMemo1.ReadOnly;
  JvxSpeedButton1.Enabled := not JvxSpeedButton1.Enabled;
  TabSheet1.TabVisible    := not TabSheet1.TabVisible;
end;

procedure TfContasReceber.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Fdm1.tBanco.Open;
  Fdm1.tCReceberParc.Close;
  Fdm1.tCReceberHist.Close;
  DmCons.qTipoCobranca.Close;
  DmCons.qBanco.Close;
  DmCons.qCondPgto.Close;
  DmCons.qVendedor.Close;
  DmCons.qCentroCusto.Close;
  DmCons.qCliente.Close;
  qCliente.Close;
  Action := Cafree;
end;

procedure TfContasReceber.BitBtn1Click(Sender: TObject);
begin
  BitBtn1.Tag := 1;
  BitBtn2.Tag := 0;
  PageControl1.ActivePageIndex := 1;
  Habilita;
  Atualiza;
  Fdm1.tCReceberParc.Insert;
  Fdm1.tCReceberParcTIPODOC.AsString := 'AV';
  JvDBDateEdit2.Date := Date;
  JvDBLookupCombo4.Enabled := True;
  DBEdit3.Enabled          := True;
  DBEdit2.Enabled          := True;
  JvDBLookupCombo6.Enabled := True;
  JvDBLookupCombo4.SetFocus;
  BitBtn1.Tag := 0;
end;

procedure TfContasReceber.BitBtn2Click(Sender: TObject);
begin
  if (PageControl1.ActivePageIndex = 1) and (DBEdit1.Text = '') then
    ShowMessage('Registro vazio, não pode ser alterado!')
  else
  if DmCons.qCReceberParcVLRPAGTO.AsFloat > 0 then
    ShowMessage('Registro já contém pagamento!')
  else  
  if (DmCons.qCReceberParcNUMCRECEBER.AsInteger > 0) then
    begin
      BitBtn2.Tag := 1;
      BitBtn1.Tag := 0;
      PageControl1.ActivePageIndex := 1;
      Fdm1.tCReceberParc.Edit;
      Habilita;
      JvDBLookupCombo4.Enabled := False;
      if DmCons.qCReceberParcTIPODOC.AsString <> 'MV' then
        DBEdit3.Enabled          := False
      else
        DBEdit3.Enabled          := True;
      DBEdit2.Enabled          := False;
      JvDBLookupCombo6.Enabled := False;
      BitBtn10.Enabled         := False;
      JvDBDateEdit2.SetFocus;
    end;
end;

procedure TfContasReceber.BitBtn3Click(Sender: TObject);
begin
  BitBtn1.Tag := 0;
  Fdm1.tCReceberParc.Cancel;
  Habilita;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfContasReceber.FormCreate(Sender: TObject);
begin
{  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;}

  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);

  Fdm1.tBanco.Open;
  PageControl1.ActivePageIndex := 0;
  DmCons.qCReceberParc.Open;
  DmCons.qVendedor.Open;
  DmCons.qTipoCobranca.Open;
  DmCons.qBanco.Open;
  DmCons.qCondPgto.Open;
  DmCons.qCentroCusto.Open;
  qCliente.Open;
  DmCons.qCliente.Open;
  Label13Click(Sender);
end;

procedure TfContasReceber.BitBtn5Click(Sender: TObject);
var
  TD : TTransactionDesc;
begin
//  if (Fdm1.tCReceberParcNUMNOTA.AsInteger < 1) or (Fdm1.tCReceberParcPARCELA.AsString = '') or
  if (Fdm1.tCReceberParcNUMNOTA.AsInteger < 0) or (Fdm1.tCReceberParcPARCELA.AsString = '') or
     (Fdm1.tCReceberParcDTMOVIMENTO.AsDateTime < 1) or (Fdm1.tCReceberParcCODCLIENTE.AsInteger < 1) or
     (Fdm1.tCReceberParcDTVENCIMENTO.AsDateTime < 1) or (Fdm1.tCReceberParcVLRVENCIMENTO.AsFloat = 0) then
    begin
      ShowMessage('Falta informar <Nº Nota>, <Parcela>, <Dt.Movimento>, <Cliente>, <Dt.Vencimento> ou <Vlr.Parcela>!');
      DBEdit3.SetFocus;
    end
  else
    begin
      if Fdm1.tCReceberParc.State in [dsInsert] then
        Fdm1.tCReceberParcNUMCRECEBER.AsInteger := Fdm1.Incrementa('NUMCRECEBER','CRECEBERPARC');
      Fdm1.tCReceberParcVLRRESTANTE.AsFloat := StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcVLRVENCIMENTO.AsFloat)) -
                                            StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcVLRPAGTO.AsFloat)) -
                                            StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcVLRDEVOLUCAO.AsFloat)) -
                                            StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcVLRDESCONTO.AsFloat));
      try
      TD.TransactionID  := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      Fdm1.Conexao.StartTransaction(TD);
      Fdm1.tCReceberParc.ApplyUpdates(0);
      Fdm1.Conexao.Commit(TD);
      Habilita;
      DmCons.qCReceberParc.Refresh;
      PageControl1.TabIndex := 0;
      DmCons.qCReceberParc.IndexFieldNames := 'NUMCRECEBER';
      Dmcons.qCReceberParc.SetKey;
      DmCons.qCReceberParcNUMCRECEBER.AsInteger := Fdm1.tCReceberParcNUMCRECEBER.AsInteger;
      DmCons.qCReceberParc.GotoKey;
//      Consulta;
      BitBtn1.SetFocus;
      BitBtn1.Tag := 0;
      except
      Fdm1.Conexao.Rollback(TD);

      end;
    end;
end;

procedure TfContasReceber.BitBtn4Click(Sender: TObject);
var
  TD : TTransactionDesc;
begin
  qCReceberExc.Close;
  CReceberExc.SQL.Clear;
  CReceberExc.SQL.Add('SELECT CODCLIENTE, NUMNOTA, PARCELA FROM CRECEBERPARC ');
  CReceberExc.SQL.Add('WHERE CODCLIENTE = :CodCliente and NUMCRECEBER = :NUMCRECEBER and VLRPAGTO > 0');
  try 
  TD.TransactionID  := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  Fdm1.Conexao.StartTransaction(TD);
  case MessageDlg('Excluir todas as parcelas da Nota ' + DmCons.qCReceberParcNUMNOTA.AsString + '?',mtConfirmation,[mbYes,mbNO,mbCancel],0) of
     mrYes : begin
               CReceberExc.Params[0].AsInteger := DmCons.qCReceberParcCODCLIENTE.AsInteger;
               CReceberExc.Params[1].AsInteger := DmCons.qCReceberParcNUMCRECEBER.AsInteger;
               qCReceberExc.Open;
               if qCReceberExc.IsEmpty then
                 begin
                   qCReceberExc.Close;
                   CReceberExc.SQL.Clear;
                   CReceberExc.SQL.Add('DELETE FROM CRECEBERPARC');
                   CReceberExc.SQL.Add('WHERE CODCLIENTE = :CodCliente and NUMCRECEBER = :NUMCRECEBER');
                   CReceberExc.Params[0].AsInteger := DmCons.qCReceberParcCODCLIENTE.AsInteger;
                   CReceberExc.Params[1].AsInteger := DmCons.qCReceberParcNUMCRECEBER.AsInteger;
                   CReceberExc.ExecSQL;

                   //*** Histórico
                   qCReceberExc.Close;
                   CReceberExc.SQL.Clear;
                   CReceberExc.SQL.Add('DELETE FROM CRECEBERHIST');
                   CReceberExc.SQL.Add('WHERE CODCLIENTE = :CodCliente and NUMCRECEBER = :NUMCRECEBER');
                   CReceberExc.Params[0].AsInteger := DmCons.qCReceberParcCODCLIENTE.AsInteger;
                   CReceberExc.Params[1].AsInteger := DmCons.qCReceberParcNUMCRECEBER.AsInteger;

                   CReceberExc.ExecSQL;

                 end
               else
                 ShowMessage('Existem parcelas quitadas, a exclusão será cancelada!');
             end;
     mrNo  : begin
               CReceberExc.SQL.Add(' and PARCELA = :Parcela');
               CReceberExc.Params[0].AsInteger := DmCons.qCReceberParcCODCLIENTE.AsInteger;
               CReceberExc.Params[1].AsInteger := DmCons.qCReceberParcNUMCRECEBER.AsInteger;
               CReceberExc.Params[2].AsString  := DmCons.qCReceberParcPARCELA.AsString;
               qCReceberExc.Open;
               if qCReceberExc.IsEmpty then
                 begin
                   Fdm1.tCReceberParc.Close;
                   Fdm1.CReceberParc.Params[0].AsInteger := DmCons.qCReceberParcNUMCRECEBER.AsInteger;
                   Fdm1.CReceberParc.Params[1].AsString  := DmCons.qCReceberParcPARCELA.AsString;
                   Fdm1.tCReceberParc.Open;

                   Fdm1.tCReceberHist.Close;
                   Fdm1.CReceberParc.Params[0].AsInteger := DmCons.qCReceberParcNUMCRECEBER.AsInteger;
                   Fdm1.CReceberParc.Params[1].AsString  := DmCons.qCReceberParcPARCELA.AsString;
                   Fdm1.tCReceberHist.Open;
                   if not Fdm1.tCReceberHist.IsEmpty then
                     begin
                       Fdm1.tCReceberHist.First;
                       while not Fdm1.tCReceberHist.Eof do
                         Fdm1.tCReceberHist.Delete;
                       //Fdm1.tCReceberHist.Delete;
                       Fdm1.tCReceberHist.ApplyUpdates(0);
                     end;
                   Fdm1.tCReceberParc.Delete;
                   Fdm1.tCReceberParc.ApplyUpdates(0);
                 end
               else
                 ShowMessage('Parcela já quitada, a exclusão será cancelada!');
             end;
  end;
  Fdm1.Conexao.Commit(TD);
  except
  Fdm1.Conexao.Rollback(TD);
  end;
  PageControl1.ActivePage := TabSheet1;
  DmCons.qCReceberParc.Refresh;
end;

procedure TfContasReceber.TabSheet2Show(Sender: TObject);
begin
  Atualiza;
end;

procedure TfContasReceber.JvDBGrid1DblClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
end;

procedure TfContasReceber.JvDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
begin
  if Column.Index <> 5 then
    begin
      DmCons.qCReceberParc.IndexFieldNames := Column.FieldName + ';PARCELA';
      Column.Color := clInfoBK;
      for i := 0 to JvDBGrid1.Columns.Count - 1 do
        if not (JvDBGrid1.Columns.Items[I] = Column)  then
          JvDBGrid1.Columns.Items[I].Color := clWhite;
    end;
end;

procedure TfContasReceber.JvDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if DmCons.qCReceberParc.RecordCount > 0 then
    begin
      if StrToFloat(FormatFloat('0.00',DmCons.qCReceberParcVLRRESTANTE.AsFloat)) = 0 then
        begin
          Background  := clTeal;
          AFont.Color := clWhite;
        end
      else
      if DmCons.qCReceberParcclDIASATRASO.AsFloat > 0 then
        begin
          Background  := clRed;
          AFont.Color := clWhite;
        end
      else
      if DmCons.qCReceberParcCANCELADO.AsString = 'S' then
        begin
          Background  := clYellow;
          AFont.Color := clBlack;
        end;
    end;
end;

procedure TfContasReceber.JvDBLookupCombo6Exit(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
    begin
      if JvDBLookupCombo6.Text <> '' then
        begin
          BitBtn10.Enabled := True;
          DBEdit2.ReadOnly := True;
          DBEdit2.Color    := clInfoBk;
          JvDBDateEdit2.SetFocus;
          Fdm1.tCReceberParcPARCELA.Clear;
        end
      else
        begin
          BitBtn10.Enabled := False;
          DBEdit2.ReadOnly := False;
          DBEdit2.Color     := clWindow;
        end
    end;
end;

procedure TfContasReceber.BitBtn10Click(Sender: TObject);
var
  vDtVenc, vDtMov, vDtVenc1 : TDateTime;
  vParcela : Integer;
  vVlrParcela : Real;
  vNumNota : Integer;
  vCodCliente : Integer;
  vQtdParcelas : Integer;
  ano, dia, mes : Word;
  vCodBanco : Integer;
  vCodTipoCobranca : Integer;
  vCodVendedor : Integer;
  vPercComissao : Real;
begin
  if (Fdm1.tCReceberParcCODCLIENTE.AsInteger > 0) and (Fdm1.tCReceberParcNUMNOTA.AsInteger > 0) and
     (Fdm1.tCReceberParcDTMOVIMENTO.AsDateTime > 0) and (Fdm1.tCReceberParcDTVENCIMENTO.AsDateTime > 0) and
     (Fdm1.tCReceberParcVLRVENCIMENTO.AsFloat > 0) then
    begin
      vDtVenc1 := Fdm1.tCReceberParcDTVENCIMENTO.AsDateTime;
      vDtVenc := Fdm1.tCReceberParcDTVENCIMENTO.AsDateTime;
      vDtMov  := Fdm1.tCReceberParcDTMOVIMENTO.AsDateTime;
      vVlrParcela := Fdm1.tCReceberParcVLRVENCIMENTO.AsFloat;
      vNumNota := Fdm1.tCReceberParcNUMNOTA.AsInteger;
      vCodCliente := Fdm1.tCReceberParcCODCLIENTE.AsInteger;
      vCodBanco := Fdm1.tCReceberParcCODBANCO.AsInteger;
      vCodTipoCobranca := Fdm1.tCReceberParcCODTIPOCOBRANCA.AsInteger;
      vCodVendedor := Fdm1.tCReceberParcCODVENDEDOR.AsInteger;
      vPercComissao := Fdm1.tCReceberParcPERCCOMISSAO.AsFloat;
      if DmCons.qCondPgtoFIXARDIA.AsString = 'N' then
        begin
          Fdm1.tCondPgtoIt.Close;
          Fdm1.CondPgtoIt.Params[0].AsInteger := DmCons.qCondPgtoID.AsInteger;
          Fdm1.tCondPgtoIt.Open;
          vQtdParcelas := Fdm1.tCondPgtoIt.RecordCount;
        end
      else
        vQtdParcelas := DmCons.qCondPgtoQTDPARCELAS.AsInteger;
      DecodeDate(vDtVenc,Ano,Mes,Dia);
      Fdm1.tCReceberParc.Cancel;
      Mes := Mes - 1;
      for vParcela := 1 to vQtdParcelas do
        begin
          Fdm1.tCReceberParc.Insert;
          Fdm1.tCReceberParcNUMCRECEBER.AsInteger := Fdm1.Incrementa('NUMCRECEBER','CRECEBERPARC');
          Fdm1.tCReceberParcCODCLIENTE.AsInteger := vCodCliente;
          if vParcela < 10 then
            Fdm1.tCReceberParcPARCELA.AsString := '0' + IntToStr(vParcela)
          else
            Fdm1.tCReceberParcPARCELA.AsString := IntToStr(vParcela);
          if DmCons.qCondPgtoFIXARDIA.AsString = 'N' then
            begin
              Fdm1.tCondPgtoIt.RecNo := vParcela;
              vDtVenc := vDtVenc1 + Fdm1.tCondPgtoItQTDDIAS.AsInteger;
            end
          else
            begin
              Mes := Mes + 1;
              if Mes > 12 then
                begin
                  Mes := 01;
                  Ano := Ano + 1;
                end;
              vDtVenc := EncodeDate(ano,mes,dia);
            end;
          Fdm1.tCReceberParcDTVENCIMENTO.AsDateTime := vDtVenc;
          Fdm1.tCReceberParcDTMOVIMENTO.AsDateTime := vDtMov;
          Fdm1.tCReceberParcCODCONDPGTO.AsInteger := DmCons.qCondPgtoID.AsInteger;
          Fdm1.tCReceberParcNUMNOTA.AsInteger := vNumNota;
          Fdm1.tCReceberParcQUITADO.AsString := 'N';
          Fdm1.tCReceberParcTIPODOC.AsString := 'AV';
          Fdm1.tCReceberParcVLRRESTANTE.AsFloat := vVlrParcela;
          Fdm1.tCReceberParcVLRVENCIMENTO.AsFloat := vVlrParcela;
          Fdm1.tCReceberParcCODBANCO.AsInteger := vCodBanco;
          Fdm1.tCReceberParcCODTIPOCOBRANCA.AsInteger := vCodTipoCobranca;
          Fdm1.tCReceberParcCODVENDEDOR.AsInteger := vCodVendedor;
          Fdm1.tCReceberParcPERCCOMISSAO.AsFloat := vPercComissao;
          Fdm1.tCReceberParc.Post;
        end;
      Fdm1.tCReceberParc.ApplyUpdates(0);
      Habilita;
      Label13Click(Sender);
      JvDBLookupCombo1.KeyValue := Fdm1.tCReceberParcCODCLIENTE.AsInteger;
      JvIntegerEdit1.Value      := Fdm1.tCReceberParcNUMNOTA.AsInteger;
      PageControl1.ActivePageIndex := 0;
    end
  else
    begin
      ShowMessage('Falta informar os campos obrigatórios!');
      JvDBLookupCombo4.SetFocus;
    end;
end;

procedure TfContasReceber.Label20Click(Sender: TObject);
begin
  DmCons.qCondPgto.Close;
  fCondPgto := TfCondPgto.Create(Self);
  fCondPgto.ShowModal;
  DmCons.qCondPgto.Close;
  DmCons.qCondPgto.Open;
  JvDBLookupCombo6.SetFocus;
end;

procedure TfContasReceber.JvDBLookupCombo5Exit(Sender: TObject);
begin
  if Fdm1.tCReceberParcCODVENDEDOR.AsInteger > 0 then
    Fdm1.tCReceberParcPERCCOMISSAO.AsFloat := DmCons.qVendedorPERCCOMISSAO.AsFloat;
end;

procedure TfContasReceber.Label13Click(Sender: TObject);
begin
  Monta_SQLCReceberParc('PEND');
  Calcula;
end;

procedure TfContasReceber.Label14Click(Sender: TObject);
begin
  Monta_SQLCReceberParc('PAG');
  Calcula;
end;

procedure TfContasReceber.Label16Click(Sender: TObject);
begin
  Monta_SQLCReceberParc('');
  Calcula;
end;

procedure TfContasReceber.JvIntegerEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
    begin
      Monta_SQLCReceberParc('');
      JvDBGrid1.SetFocus;
      Calcula;
    end;
end;

procedure TfContasReceber.JvDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13) and (DmCons.qCReceberParcNUMCRECEBER.AsInteger > 0) then
    PageControl1.ActivePage := TabSheet2;
end;

procedure TfContasReceber.BitBtn8Click(Sender: TObject);
begin
  if DmCons.qCReceberParcVLRRESTANTE.AsFloat > 0 then
    begin
      BitBtn1.Tag := 0;
      Atualiza;
      fDevolucaoRec := TfDevolucaoRec.Create(Self);
      fDevolucaoRec.Dm1 := Fdm1;
      fDevolucaoRec.ShowModal;

      Label13Click(Sender);
      PageControl1.ActivePageIndex := 0;
      
    end
  else
    ShowMessage('Não existe valor para fazer devolução!');
end;

procedure TfContasReceber.BitBtn6Click(Sender: TObject);
var
  TD : TTransactionDesc;
begin
  case MessageDlg('Deseja estornar o pagamento ',mtConfirmation,[mbYes,mbNO,mbCancel],0) of
    mrYes : begin
              tCReceberHist.Close;
              CReceberHist.CommandText := 'select * from CRECEBERHIST where TIPOHIST = ''P'' and ' +
                                          'NUMCRECEBER = :CODIGO and PARCELA = :Parcela Order by ITEM';
              CReceberHist.Params[0].AsInteger := DmCons.qCReceberParcNUMCRECEBER.AsInteger;
              CReceberHist.Params[1].AsString  := DmCons.qCReceberParcPARCELA.AsString;
              tCReceberHist.Open;
              tCReceberHist.Last;
              if tCReceberHist.RecordCount > 0 then
                begin
                  //*** Abre as parcelas do contas a receber
                  Fdm1.tCReceberParc.Close;
                  Fdm1.CReceberParc.Params[0].AsInteger := DmCons.qCReceberParcNUMCRECEBER.AsInteger;
                  Fdm1.CReceberParc.Params[1].AsString  := DmCons.qCReceberParcPARCELA.AsString;
                  Fdm1.tCReceberParc.Open;
                  Fdm1.tCReceberParc.Edit;

                  Fdm1.tCReceberParcVLRDESCONTO.AsFloat := StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcVLRDESCONTO.AsFloat)) -
                                                          StrToFloat(FormatFloat('0.00',tCReceberHistVLRULTDESCONTO.AsFloat));
                  Fdm1.tCReceberParcJUROSPAGOS.AsFloat  := StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcJUROSPAGOS.AsFloat)) -
                                                          StrToFloat(FormatFloat('0.00',tCReceberHistVLRULTJUROSPAGO.AsFloat));
                  Fdm1.tCReceberParcVLRRESTANTE.AsFloat := StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcVLRRESTANTE.AsFloat)) +
                                                          StrToFloat(FormatFloat('0.00',tCReceberHistVLRULTPGTO.AsFloat));
                  Fdm1.tCReceberParcVLRPAGTO.AsFloat    := StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcVLRPAGTO.AsFloat)) -
                                                          StrToFloat(FormatFloat('0.00',tCReceberHistVLRULTPGTO.AsFloat));
                  Fdm1.tCReceberParcQUITADO.AsString := 'N';

                  Fdm1.tMovFinanceiro.Close;
                  Fdm1.MovFinanceiro.Params[0].AsInteger := tCReceberHistNUMMOVFINANC.AsInteger;
                  Fdm1.tMovFinanceiro.Open;
                  Fdm1.tMovFinanceiro.Delete;
                  Fdm1.tMovFinanceiro.ApplyUpdates(0);
                  IF tCReceberHistNUMMOVJUROS.AsInteger > 0 then
                    begin
                      Fdm1.tMovFinanceiro.Close;
                      Fdm1.MovFinanceiro.Params[0].AsInteger := tCReceberHistNUMMOVJUROS.AsInteger;
                      Fdm1.tMovFinanceiro.Open;
                      Fdm1.tMovFinanceiro.Delete;
                      Fdm1.tMovFinanceiro.ApplyUpdates(0);
                    end;

                  //Exclui a comissão
                  if tCReceberHistNUMEXTCOMISSAO.AsInteger > 0 then
                    begin
                      Fdm1.tExtComissao.Close;
                      Fdm1.ExtComissao.Params[0].AsInteger := tCReceberHistNUMEXTCOMISSAO.AsInteger;
                      Fdm1.tExtComissao.Open;
                      Fdm1.tExtComissao.Delete;
                      Fdm1.tExtComissao.ApplyUpdates(0);
                    end;

                  //***Histórico
                  if tCReceberHist.RecordCount > 0 then
                    tCReceberHist.Delete;
                  tCReceberHist.ApplyUpdates(0);
                  if tCReceberHist.RecordCount < 1 then
                    Fdm1.tCReceberParcDTPAGTO.Clear
                  else
                    Fdm1.tCReceberParcDTPAGTO.AsDateTime := tCReceberHistDTULTPGTO.AsDateTime;
                  Fdm1.tCReceberParc.Post;
                  Fdm1.tCReceberParc.ApplyUpdates(0);

                  DmCons.qCReceberParc.Refresh;
                  PageControl1.ActivePageIndex := 0;

                end
              else
                ShowMessage('Não existe pagamento para estornar!');
            end;
    mrNO : begin
             if MessageDlg('Deseja fazer estorno de devolução?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
               begin
                 tCReceberHist.Close;
                 CReceberHist.CommandText := 'select * from CRECEBERHIST where TIPOHIST = ''D'' and ' +
                                             'NUMCRECEBER = :CODIGO and PARCELA = :Parcela Order by ITEM';
                 CReceberHist.Params[0].AsInteger := DmCons.qCReceberParcNUMCRECEBER.AsInteger;
                 CReceberHist.Params[1].AsString  := DmCons.qCReceberParcPARCELA.AsString;
                 tCReceberHist.Open;
                 tCReceberHist.Last;
                 if tCReceberHist.RecordCount > 0 then
                   begin
                     try
                     TD.TransactionID  := 1;
                     TD.IsolationLevel := xilREADCOMMITTED;
                     Fdm1.Conexao.StartTransaction(TD);
                     BitBtn1.Tag := 0;
                     Atualiza;
                     Fdm1.tCReceberParc.Edit;
                     Fdm1.tCReceberParcVLRRESTANTE.AsFloat  := StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcVLRRESTANTE.AsFloat + tCReceberHistVLRULTDEVOLUCAO.AsFloat));
                     Fdm1.tCReceberParcVLRDEVOLUCAO.AsFloat := StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcVLRDEVOLUCAO.AsFloat - tCReceberHistVLRULTDEVOLUCAO.AsFloat));
                     tCReceberHist.Delete;
                     tCReceberHist.ApplyUpdates(0);
                     if tCReceberHist.RecordCount < 1 then
                       Fdm1.tCReceberParcDTDEVOLUCAO.Clear
                     else
                       Fdm1.tCReceberParcDTDEVOLUCAO.AsDateTime := tCReceberHistDTULTPGTO.AsDateTime;
                     Fdm1.tCReceberParc.Post;
                     Fdm1.tCReceberParc.ApplyUpdates(0);
                     Label13Click(Sender);
                     Fdm1.Conexao.Commit(TD);
                     except
                     Fdm1.Conexao.Rollback(TD);
                     end;

                     DmCons.qCReceberParc.Refresh;
                     PageControl1.ActivePageIndex := 0;

                   end
                 else
                   ShowMessage('Não existe devolução para estornar!');
               end;
           end;

    mrCancel :;
  end;
end;

procedure TfContasReceber.Label4Click(Sender: TObject);
begin
  qCliente.Close;
  DmCons.qVendedor.Close;
  DmCons.qBanco.Close;

  fPessoaC := TfPessoaC.Create(Self);
  fPessoaC.ShowModal;

  qCliente.Open;
  DmCons.qVendedor.Open;
  DmCons.qBanco.Open;
end;

procedure TfContasReceber.Label23Click(Sender: TObject);
begin
  qCliente.Close;
  DmCons.qVendedor.Close;
  DmCons.qTipoCobranca.Close;

  fPessoaC := TfPessoaC.Create(Self);
  fPessoaC.ShowModal;

  DmCons.qTipoCobranca.open;
  qCliente.OPen;
  DmCons.qVendedor.Open;
end;

procedure TfContasReceber.Label15Click(Sender: TObject);
begin
  Monta_SQLCReceberParc('ATR');
  Calcula;
end;

procedure TfContasReceber.JvDBLookupCombo4Exit(Sender: TObject);
begin
  Fdm1.tCReceberParcCODTIPOCOBRANCA.AsInteger := qClienteFORMAPGTO.AsInteger;
end;

procedure TfContasReceber.ImprimirConsulta1Click(Sender: TObject);
begin
  DmCons.qCReceberParc.DisableControls;
  fContasReceberRel := TfContasReceberRel.Create(Self);
  fContasReceberRel.RLReport3.Preview;
  fContasReceberRel.RLReport3.Free;
  DmCons.qCReceberParc.EnableControls;
end;

procedure TfContasReceber.ImprimirBoletos1Click(Sender: TObject);
var
  F: TextFile;
  Texto: String;
  i: Word;
begin
  Tag := 1;
  fPortaImpressao := TfPortaImpressao.Create(Self);
  fPortaImpressao.ShowModal;
  AssignFile(F,Porta);
  if Tag = 1 then
    begin
      Tag := 0;
      Exit;
    end;
  ReWrite(F);
  WriteLn(F,'0',#15);  //'primeiro linha, segundo coluna'
  WriteLn(F);
  Texto := 'PAGAVEL EM QUALQUER BANCO ATE O VENCIMENTO';
  for i := 1 to 100 - Length(Texto)  do
    Texto := Texto + ' ';
  Texto := Texto + DmCons.qCReceberParcDtVencimento.AsString;
  WriteLn(F,Texto);
  for i := 1 to 3 do
    WriteLn(F);
  Texto := DateToStr(Date);
  for i := 1 to 10 do
    Texto := Texto + ' ';
  Texto := Texto + DmCons.qCReceberParcNUMNOTA.AsString + '/' + DmCons.qCReceberParcPARCELA.AsString;
  for i := 1 to 70 - Length(Texto) do
    Texto := Texto + ' ';
  Texto := Texto + DateToStr(Date);
  WriteLn(F,Texto);
  WriteLn(F);
  Texto := FormatFloat('0.00',DmCons.qCReceberParcVLRVENCIMENTO.AsFloat);
  for i := 1 to 100 do
    Texto := ' ' + Texto;
  WriteLn(F,Texto);
  WriteLn(F);
  for i := 1 to 3 do
    WriteLn(F);
  Texto := 'APOS VENCIMENTO MULTA DE 2% E JUROS DE 1% A.M.';
  WriteLn(F,Texto);
  for i := 1 to 6 do
    WriteLn(F);
  Texto := DmCons.qCReceberParcNOMECLIENTE.AsString;
  WriteLn(F,Texto);
  Texto := DmCons.qCReceberParcENDCLIENTE.AsString + ' - BAIRRO: ' + DmCons.qCReceberParcBAIRRO.AsString;
  WriteLn(F,Texto);
  Texto := DmCons.qCReceberParcCIDADECLIENTE.AsString +  ' '  +
           DmCons.qCReceberParcCEP.AsString + ' - RS';
  WriteLn(F,Texto);
  CloseFile(F);
end;

procedure TfContasReceber.ImprimirContasaReceberDetalhado1Click(
  Sender: TObject);
begin
  fContasReceberDet := TfContasReceberDet.Create(Self);
  fContasReceberDet.ShowModal;
end;

procedure TfContasReceber.DBEdit2Exit(Sender: TObject);
var
  vParcela : String;
begin
  vParcela := Fdm1.tCReceberParcPARCELA.AsString;
  if (DBEdit2.Text <> '') and (StrToInt(vParcela) < 10) and (Copy(vParcela,1,1) <> '0') then
    Fdm1.tCReceberParcPARCELA.AsString := '0' + vParcela;
end;

procedure TfContasReceber.BitBtn7Click(Sender: TObject);
begin
  if DmCons.qCReceberParcVLRRESTANTE.AsFloat > 0 then
    begin
      fContasReceberPgto := TfContasReceberPgto.Create(Self);
      fContasReceberPgto.Dm1 := Fdm1;
      fContasReceberPgto.ShowModal;

      if MessageDlg('Deseja imprimir o recibo?',mtConfirmation,[mbYes,mbNO],0) = mrYes then
        Imprime_Recibo;

      DmCons.qCReceberParc.Refresh;
      PageControl1.ActivePageIndex := 0;

    end
  else
    ShowMessage('Parcela já quitada!');
end;

procedure TfContasReceber.Label26Click(Sender: TObject);
begin
  DmCons.qBanco.Close;
  fBanco := TfBanco.Create(Self);
  fBanco.ShowModal;
  DmCons.qBanco.Open;
  JvDBLookupCombo2.SetFocus;
end;

procedure TfContasReceber.ImprimirAcumuladodeClientes1Click(
  Sender: TObject);
begin
  fContasReceberCliente := TfContasReceberCliente.Create(Self);
  fContasReceberCliente.ShowModal;
end;

procedure TfContasReceber.ImprimirBoleto21Click(Sender: TObject);
begin
  fPrevBoleto2 := TfPrevBoleto2.Create(Self);
  fPrevBoleto2.ShowModal;
end;

procedure TfContasReceber.Label44Click(Sender: TObject);
begin
  DmCons.qCentroCusto.Close;
  fCentroCusto := TfCentroCusto.Create(Self);
  fCentroCusto.ShowModal;
  DmCons.qCentroCusto.Open;
  JvDBLookupCombo7.SetFocus;
end;

procedure TfContasReceber.BitBtn9Click(Sender: TObject);
begin
  Monta_SQLCReceberParc('');
  Calcula;
end;

procedure TfContasReceber.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
    begin
      Monta_SQLCReceberParc('');
      JvDBGrid1.SetFocus;
      Calcula;
    end;
end;

procedure TfContasReceber.ImprimirRecibo1Click(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 0 then
    Atualiza;
  Imprime_Recibo;
end;

procedure TfContasReceber.JvIntegerEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
    begin
      Monta_SQLCReceberParc('');
      JvDBGrid1.SetFocus;
      Calcula;
    end;
end;

procedure TfContasReceber.Label28Click(Sender: TObject);
begin
  DmCons.qTipoCobranca.Close;
  fTipoCobranca := TfTipoCobranca.Create(Self);
  fTipoCobranca.ShowModal;
  DmCons.qTipoCobranca.open;
end;

procedure TfContasReceber.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
