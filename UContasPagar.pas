unit UContasPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvDBCtrl, ExtCtrls, ComCtrls, StdCtrls, Buttons,
  JvLookup, DBCtrls, Mask, DB, FMTBcd, SqlExpr, JvToolEdit, JvCurrEdit, DBXpress,
  DBClient, Provider, JvCombobox, JvEdit, JvTypedEdit, JvComponent,
  JvColorBox, Menus, JvxCtrls, UDm1, rsDBUtils;

type
  TfContasPagar = class(TForm)
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
    Label26: TLabel;
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
    Label35: TLabel;
    DBEdit17: TDBEdit;
    JvDBDateEdit3: TJvDBDateEdit;
    BitBtn10: TBitBtn;
    Label28: TLabel;
    JvDBLookupCombo2: TJvDBLookupCombo;
    Fornecedor: TSQLQuery;
    FornecedorP: TDataSetProvider;
    qFornecedor: TClientDataSet;
    qsFornecedor: TDataSource;
    qFornecedorID: TIntegerField;
    qFornecedorNOME: TStringField;
    qFornecedorFANTASIA: TStringField;
    qFornecedorPESSOA: TStringField;
    qFornecedorDOCUMENTO: TStringField;
    qFornecedorENDERECO: TStringField;
    qFornecedorBAIRRO: TStringField;
    qFornecedorCEP: TStringField;
    qFornecedorESTADO: TStringField;
    qFornecedorFONE: TStringField;
    qFornecedorFAX: TStringField;
    qFornecedorINSCESTADUAL: TStringField;
    qFornecedorIDENTIDADE: TStringField;
    qFornecedorESTCIVIL: TStringField;
    qFornecedorPROFISSAO: TStringField;
    qFornecedorNACIONALIDADE: TStringField;
    qFornecedorDTCADASTRO: TDateField;
    qFornecedorOBSERVACAO: TBlobField;
    qFornecedorFORNECEDOR: TStringField;
    qFornecedorCLIENTE: TStringField;
    qFornecedorVENDEDOR: TStringField;
    qFornecedorREFPESSOAL1: TStringField;
    qFornecedorREFPESSOAL2: TStringField;
    qFornecedorREFPESSOALEND1: TStringField;
    qFornecedorREFPESSOALEND2: TStringField;
    qFornecedorREFPESSOALFONE1: TStringField;
    qFornecedorREFPESSOALFONE2: TStringField;
    qFornecedorREFCOMERCIAL1: TStringField;
    qFornecedorREFCOMERCIAL2: TStringField;
    qFornecedorREFCOMERCIALEND1: TStringField;
    qFornecedorREFCOMERCIALEND2: TStringField;
    qFornecedorREFCOMERCIALFONE1: TStringField;
    qFornecedorREFCOMERCIALFONE2: TStringField;
    qFornecedorCIDADE: TIntegerField;
    qFornecedorTRANSPORTADORA: TStringField;
    qFornecedorPERCCOMISSAO: TFloatField;
    qFornecedorTIPOCOMISSAO: TStringField;
    CPagarExc: TSQLQuery;
    CPagarExcP: TDataSetProvider;
    qCPagarExc: TClientDataSet;
    Label20: TLabel;
    CPagarHist: TSQLDataSet;
    CPagarHistP: TDataSetProvider;
    tCPagarHist: TClientDataSet;
    tCPagarHistNUMCPAGAR: TIntegerField;
    tCPagarHistPARCELA: TStringField;
    tCPagarHistITEM: TIntegerField;
    tCPagarHistHISTORICO: TStringField;
    tCPagarHistDTHISTORICO: TDateField;
    tCPagarHistDTULTPGTO: TDateField;
    tCPagarHistVLRULTPGTO: TFloatField;
    tCPagarHistVLRULTJUROSPAGO: TFloatField;
    tCPagarHistVLRULTDESCONTO: TFloatField;
    tCPagarHistVLRULTDESPESA: TFloatField;
    tCPagarHistTIPOHIST: TStringField;
    tCPagarHistNUMMOVFINANC: TIntegerField;
    tCPagarHistNUMMOVJUROS: TIntegerField;
    tCPagarHistVLRULTDEVOLUCAO: TFloatField;
    tCPagarHistCODBANCO: TIntegerField;
    Bevel2: TBevel;
    Label21: TLabel;
    DBEdit8: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    qFornecedorNOMECIDADE: TStringField;
    Label22: TLabel;
    JvxSpeedButton1: TJvxSpeedButton;
    PopupMenu1: TPopupMenu;
    ImprimirConsulta1: TMenuItem;
    ImprimirContasaReceberDetalhado1: TMenuItem;
    BitBtn7: TBitBtn;
    BitBtn6: TBitBtn;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    JvColorSquare6: TJvColorSquare;
    JvColorSquare1: TJvColorSquare;
    Label13: TLabel;
    JvColorSquare4: TJvColorSquare;
    Label15: TLabel;
    JvColorSquare5: TJvColorSquare;
    Label31: TLabel;
    JvColorSquare2: TJvColorSquare;
    Label16: TLabel;
    Label14: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label44: TLabel;
    JvDBLookupCombo7: TJvDBLookupCombo;
    BitBtn9: TBitBtn;
    qFornecedorCODCENTROCUSTO: TIntegerField;
    Label42: TLabel;
    JvDBLookupCombo3: TJvDBLookupCombo;
    ConsCPagar: TSQLQuery;
    ConsCPagarP: TDataSetProvider;
    qConsCPagar: TClientDataSet;
    qConsCPagarCODFORNECEDOR: TIntegerField;
    qConsCPagarNUMDUPLICATA: TIntegerField;
    ImprimirRecibo1: TMenuItem;
    JvDBGrid2: TJvDBGrid;
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
    procedure Label13Click(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure Label16Click(Sender: TObject);
    procedure JvDBLookupCombo2Exit(Sender: TObject);
    procedure Label28Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure JvIntegerEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure ImprimirConsulta1Click(Sender: TObject);
    procedure ImprimirContasaReceberDetalhado1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure JvDBLookupCombo4Exit(Sender: TObject);
    procedure ImprimirRecibo1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    Fdm1: TDm1;
    vExisteDup : Boolean;
    procedure Habilita;
    procedure Atualiza;
    procedure Calcula;
    procedure Monta_SQLCPagarParc(Tipo : String);
    procedure Verifica_CPagar(Tipo : String);
    procedure Imprime_Recibo;
  public
    { Public declarations }
  end;

var
  fContasPagar: TfContasPagar;
  vAlteraNE : String;
  vUltNumMovimento : Integer;

implementation

uses UDmCons, Math, UPessoa, StdConvs, UCondPgto, UDevolucaoPag,
  UContasPagarRel, UContasPagarDet, UContasPagarPgto, UPrevRecibo2,
  uPessoac;

{$R *.dfm}


procedure TfContasPagar.Imprime_Recibo;
begin
  fPrevRecibo2 := TfPrevRecibo2.Create(Self);

  fPrevRecibo2.Dm1 := Fdm1;

  fPrevRecibo2.TabSheet1.TabVisible := False;
  fPrevRecibo2.TabSheet2.TabVisible := True;
  Fdm1.tCPagarHist.Filtered := False;
  Fdm1.tCPagarHist.Filter   := 'TIPOHIST = ''P''';
  Fdm1.tCPagarHist.Filtered := True;
  Fdm1.tCPagarHist.Last;
  fPrevRecibo2.JvIntegerEdit1.Value := Fdm1.tCPagarParcNUMCPAGAR.AsInteger;
  fPrevRecibo2.JvIntegerEdit3.Value := Fdm1.tCPagarParcNUMDUPLICATA.AsInteger;
  fPrevRecibo2.Edit1.Text           := Fdm1.tCPagarParcDTVENCIMENTO.AsString;
  fPrevRecibo2.edit2.Text           := Fdm1.tCPagarParcNOME.AsString;
  fPrevRecibo2.RzPageControl1.ActivePageIndex := 1;
  fPrevRecibo2.ShowModal;
  Fdm1.tCPagarHist.Filtered := False;
end;

procedure TfContasPagar.Verifica_CPagar(Tipo : String); //G Gera  C=Confirma uma duplicata
begin
  vExisteDup := False;
  qConsCPagar.Close;
  ConsCPagar.SQL.Clear;
  ConsCPagar.SQL.Add('SELECT CODFORNECEDOR, NUMDUPLICATA');
  ConsCPagar.SQL.Add('FROM CPAGARPARC');
  ConsCPagar.SQL.Add('WHERE CODFORNECEDOR = :CODFORNECEDOR');
  ConsCPagar.SQL.Add('     AND  NUMDUPLICATA = :NUMDUPLICATA');
  if Tipo = 'C' then
    begin
      ConsCPagar.SQL.Add('     AND  PARCELA = :PARCELA');
      ConsCPagar.ParamByName('PARCELA').AsString := Fdm1.tCPagarParcPARCELA.AsString;
    end;
  ConsCPagar.ParamByName('CODFORNECEDOR').AsInteger := Fdm1.tCPagarParcCODFORNECEDOR.AsInteger;
  ConsCPagar.ParamByName('NUMDUPLICATA').AsInteger  := Fdm1.tCPagarParcNUMDUPLICATA.AsInteger;
  qConsCPagar.Open;
  if qConsCPagar.RecordCount > 0 then
    begin
      vExisteDup := True;
      ShowMessage('Duplicata já existe');
    end;
end;

procedure TfContasPagar.Monta_SQLCPagarParc(Tipo : String);
begin
  DmCons.qCPagarParc.Close;
  DmCons.CPagarParc.SQL.Clear;
  DmCons.CPagarParc.SQL.Add('Select CPAGARPARC.*, BANCO.NOME NOMEBANCO, BANCO.TIPOBANCO, PESSOA.NOME NOMEFORNECEDOR, CENTROCUSTO.NOME NOMECENTROCUSTO');
  DmCons.CPagarParc.SQL.Add('from CPAGARPARC');
  DmCons.CPagarParc.SQL.Add('left join BANCO on');
  DmCons.CPagarParc.SQL.Add('(BANCO.ID = CPAGARPARC.CODBANCO)');
  DmCons.CPagarParc.SQL.Add('left join PESSOA on');
  DmCons.CPagarParc.SQL.Add('(PESSOA.ID = CPAGARPARC.CODFORNECEDOR)');
  DmCons.CPagarParc.SQL.Add('left join CENTROCUSTO on');
  DmCons.CPagarParc.SQL.Add('(CENTROCUSTO.ID = CPAGARPARC.CODCENTROCUSTO)');
  DmCons.CPagarParc.SQL.Add('WHERE (0=0) ');
  if JvDBLookupCombo1.Text <> '' then
  begin
    DmCons.CPagarParc.SQL.Add(' AND (CPAGARPARC.CODFORNECEDOR = :CODFORNECEDOR)');
    DmCons.CPagarParc.ParamByName('CODFORNECEDOR').AsInteger := JvDBLookupCombo1.KeyValue;
  end;
  if JvIntegerEdit1.Value > 0 then
    begin
      DmCons.CPagarParc.SQL.Add('  AND (CPAGARPARC.NUMDUPLICATA = :NUMDUPLICATA)');
      DmCons.CPagarParc.ParamByName('NUMDUPLICATA').AsInteger := JvIntegerEdit1.Value;
    end;
  if Tipo = 'PAG' then
    DmCons.CPagarParc.SQL.Add(' AND (CPAGARPARC.VLRRESTANTE <= 0) ')
  else
  if Tipo = 'PEND' then
    DmCons.CPagarParc.SQL.Add(' AND (CPAGARPARC.VLRRESTANTE > 0) ')
  else
  if Tipo = 'ATR' then
    begin
      DmCons.CPagarParc.SQL.Add(' AND (CPAGARPARC.VLRRESTANTE > 0) ');
      DmCons.CPagarParc.SQL.Add(' AND (CPAGARPARC.QUITADO = ''N'') ');
      DmCons.CPagarParc.SQL.Add(' AND (CPAGARPARC.DTVENCIMENTO < :DTVENCIMENTO)');
      DmCons.CPagarParc.ParamByName('DtVencimento').AsDate := Date;
    end;
  DmCons.CPagarParc.SQL.Add('order by CPAGARPARC.DTVENCIMENTO');
  DmCons.qCPagarParc.Open;
end;

procedure TfContasPagar.Calcula;
var
  vAtrasado, vPago, vPendente : Real;
begin
  vAtrasado := 0;
  vPago     := 0;
  vPendente := 0;
  DmCons.qCPagarParc.DisableControls;
  DmCons.qCPagarParc.First;
  while not DmCons.qCPagarParc.Eof do
    begin
      if (DmCons.qCPagarParcclDiasAtraso.AsInteger >0) and (DmCons.qCPagarParcVLRRESTANTE.AsFloat > 0)then
        vAtrasado := vAtrasado + DmCons.qCPagarParcVLRRESTANTE.AsFloat
      else
        vPendente := vPendente + DmCons.qCPagarParcVLRRESTANTE.AsFloat;
      vpago := vPago + DmCons.qCPagarParcVLRPAGTO.AsFloat;
      DmCons.qCPagarParc.Next;
    end;
  Label14.Caption := FormatFloat('###,###,##0.00',vAtrasado);
  Label40.Caption := FormatFloat('###,###,##0.00',vPago);
  Label41.Caption := FormatFloat('###,###,##0.00',vPendente);
  DmCons.qCPagarParc.EnableControls;
end;

procedure TfContasPagar.Atualiza;
begin
  if Fdm1.tCPagarParc.State in [dsInactive,dsBrowse] then
    begin
      Fdm1.tCPagarHist.Close;
      Fdm1.tCPagarParc.Close;
      Fdm1.CPagarParc.CommandText := 'select CPAGARPARC.*, PESSOA.NOME ' +
                                    'from CPAGARPARC ' +
                                    'left join PESSOA on ' +
                                    '(PESSOA.ID = CPAGARPARC.CODFORNECEDOR) ' +
                                    'where CODFORNECEDOR = :CODFORNECEDOR and ' +
                                    //'NUMDUPLICATA = :NUMDUPLICATA and ' +
                                    'NUMCPAGAR = :NUMCPAGAR and ' +
                                    'PARCELA = :PARCELA ';
      if BitBtn1.Tag = 1 then
        begin
          Fdm1.CPagarParc.ParamByName('CODFORNECEDOR').AsInteger := 0;
          //Fdm1.CPagarParc.ParamByName('NUMDUPLICATA').AsInteger  := 0;
          Fdm1.CPagarParc.ParamByName('NUMCPAGAR').AsInteger     := 0;
          Fdm1.CPagarParc.ParamByName('PARCELA').AsString        := '';

          Fdm1.CPagarHist.ParamByName('CODFORNECEDOR').AsInteger := 0;
          //Fdm1.CPagarHist.ParamByName('NUMDUPLICATA').AsInteger  := 0;
          Fdm1.CPagarHist.ParamByName('NUMCPAGAR').AsInteger     := 0;
          Fdm1.CPagarHist.ParamByName('PARCELA').AsString        := '';
        end
      else
        begin
          Fdm1.CPagarParc.ParamByName('CODFORNECEDOR').AsInteger := DmCons.qCPagarParcCODFORNECEDOR.AsInteger;
          //Fdm1.CPagarParc.ParamByName('NUMDUPLICATA').AsInteger  := DmCons.qCPagarParcNUMDUPLICATA.AsInteger;
          Fdm1.CPagarParc.ParamByName('NUMCPAGAR').AsInteger     := DmCons.qCPagarParcNUMCPAGAR.AsInteger;
          Fdm1.CPagarParc.ParamByName('PARCELA').AsString        := DmCons.qCPagarParcPARCELA.AsString;

          Fdm1.CPagarHist.ParamByName('CODFORNECEDOR').AsInteger := DmCons.qCPagarParcCODFORNECEDOR.AsInteger;
          Fdm1.CPagarHist.ParamByName('NUMCPAGAR').AsInteger     := DmCons.qCPagarParcNUMCPAGAR.AsInteger;
          Fdm1.CPagarHist.ParamByName('PARCELA').AsString        := DmCons.qCPagarParcPARCELA.AsString;
        end;
      Fdm1.tCPagarParc.Open;
      Fdm1.tCPagarHist.Open;
    end;
end;

procedure TfContasPagar.Habilita;
begin
  JvxSpeedButton1.Enabled := not JvxSpeedButton1.Enabled;
  Panel3.Enabled  := not Panel3.Enabled;
  BitBtn1.Enabled := not BitBtn1.Enabled;
  BitBtn2.Enabled := not BitBtn2.Enabled;
  BitBtn3.Enabled := not BitBtn3.Enabled;
  BitBtn4.Enabled := not BitBtn4.Enabled;
  BitBtn5.Enabled := not BitBtn5.Enabled;
  BitBtn6.Enabled := not BitBtn6.Enabled;
  BitBtn7.Enabled := not BitBtn7.Enabled;
  BitBtn8.Enabled := not BitBtn8.Enabled;
  TabSheet1.TabVisible := not TabSheet1.TabVisible;
end;

procedure TfContasPagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qConsCPagar.Close;
  
  Fdm1.tCPagarParc.Close;
  Fdm1.CPagarParc.CommandText := 'select CPAGARPARC.*, PESSOA.NOME ' +
                                'from CPAGARPARC ' +
                                'left join PESSOA on ' +
                                '(PESSOA.ID = CPAGARPARC.CODFORNECEDOR) ' +
                                'where CODFORNECEDOR = :CODFORNECEDOR and ' +
                                'NUMCPAGAR = :NUMCPAGAR and ' +
                                'PARCELA = :PARCELA';
  Fdm1.tCPagarHist.Close;
  Fdm1.CPagarHist.CommandText := 'select * ' +
                                ' from CPAGARHIST ' +
                                ' where CODFORNECEDOR = :CODFORNECEDOR and ' +
                                '            NUMCPAGAR = :NUMCPAGAR AND' +
                                '            PARCELA = :PARCELA ' +
                                ' Order by ITEM ';
  DmCons.qCondPgto.Close;
  DmCons.qCPagarParc.Close;
  DmCons.qCentroCusto.Close;
  DmCons.qBanco.Close;
  DmCons.qFornecedor.Close;
  qCPagarExc.Close;
  tCPagarHist.Close;
  qFornecedor.Close;
  Action := Cafree;
end;

procedure TfContasPagar.BitBtn1Click(Sender: TObject);
begin
  BitBtn1.Tag := 1;
  BitBtn2.Tag := 0;
  PageControl1.ActivePageIndex := 1;
  Habilita;
  Atualiza;
  Monta_SQLCPagarParc('');
  Calcula;
  Fdm1.tCPagarParc.Insert;
  JvDBLookupCombo4.Enabled := True;
  DBEdit3.Enabled          := True;
  JvDBLookupCombo2.Enabled := True;
  DBEdit2.Enabled          := True;
  BitBtn10.Enabled         := True;
  Fdm1.tCPagarParcTIPODOC.AsString := 'AV';
  JvDBLookupCombo4.ReadOnly := False;
  DBEdit1.ReadOnly          := False;
  Fdm1.tCPagarParcDTMOVIMENTO.AsDateTime := Date;
  //JvDBDateEdit2.Date        := Date;
  JvDBLookupCombo4.SetFocus;
  BitBtn1.Tag := 0;
end;

procedure TfContasPagar.BitBtn2Click(Sender: TObject);
begin
  if (PageControl1.ActivePageIndex = 1) and (DBEdit1.Text = '') then
    ShowMessage('Registro vazio, não pode ser alterado!')
  else            
  if (DmCons.qCPagarParcNUMCPAGAR.AsInteger > 0) and (DmCons.qCPagarParcVLRRESTANTE.AsFloat > 0)then
    begin
      BitBtn2.Tag := 1;
      BitBtn1.Tag := 0;
      PageControl1.ActivePageIndex := 1;
      Fdm1.tCPagarParc.Edit;
      Habilita;
      JvDBLookupCombo4.Enabled := False;
      DBEdit3.Enabled          := False;
      JvDBLookupCombo2.Enabled := False;
      DBEdit2.Enabled          := False;
      BitBtn10.Enabled         := False;
      JvDBDateEdit2.SetFocus;
    end
  else
  if DmCons.qCPagarParcVLRRESTANTE.AsFloat = 0 then
    ShowMessage('Parcela já quitada, não pode ser alterada!');
end;

procedure TfContasPagar.BitBtn3Click(Sender: TObject);
begin
  Fdm1.CPagarParc.Cancel;
  Habilita;
  PageControl1.ActivePageIndex := 0;
  BitBtn1.Tag := 0;
end;

procedure TfContasPagar.FormCreate(Sender: TObject);
begin
{  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;}

  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);

  PageControl1.ActivePageIndex := 0;
  Label13Click(Sender);
  qFornecedor.Open;
  qFornecedor.IndexFieldNames := 'NOME';
  DmCons.qCondPgto.Open;
  DmCons.qCentroCusto.Open;
  DmCons.qBanco.Open;
  DmCons.qFornecedor.Open;
end;

procedure TfContasPagar.BitBtn5Click(Sender: TObject);
var
  TD : TTransactionDesc;
begin
  if (Fdm1.tCPagarParcNUMDUPLICATA.AsInteger < 1) or (Fdm1.tCPagarParcPARCELA.AsString = '') or
     (Fdm1.tCPagarParcDTMOVIMENTO.AsDateTime < 1) or (Fdm1.tCPagarParcCODFORNECEDOR.AsInteger < 1) or
     (Fdm1.tCPagarParcDTVENCIMENTO.AsDateTime < 1) or (Fdm1.tCPagarParcVLRVENCIMENTO.AsFloat = 0) then
    begin
      ShowMessage('Falta informar <Nº Duplicata>, <Parcela>, <Dt.Movimento>, <Fornecedor>, <Dt.Vencimento> ou <Vlr.Parcela>!');
      DBEdit3.SetFocus;
    end
  else
    begin
      vExisteDup := False;
      if Fdm1.tCPagarParc.State in [dsInsert] then
        begin
          Verifica_CPagar('C');
          if not vExisteDup then
            Fdm1.tCPagarParcNUMCPAGAR.AsInteger := Fdm1.Incrementa('NUMCPAGAR','CPAGARPARC');
        end;
      if not vExisteDup then
        begin
          Fdm1.tCPagarParcVLRRESTANTE.AsFloat := StrToFloat(FormatFloat('0.00',Fdm1.tCPagarParcVLRVENCIMENTO.AsFloat)) -
                                                StrToFloat(FormatFloat('0.00',Fdm1.tCPagarParcVLRPAGTO.AsFloat)) -
                                                StrToFloat(FormatFloat('0.00',Fdm1.tCPagarParcVLRDEVOLUCAO.AsFloat)) -
                                                StrToFloat(FormatFloat('0.00',Fdm1.tCPagarParcVLRDESCONTO.AsFloat));
          try
          TD.TransactionID  := 1;
          TD.IsolationLevel := xilREADCOMMITTED;
          Fdm1.Conexao.StartTransaction(TD);
          Fdm1.tCPagarParc.ApplyUpdates(0);
          Fdm1.Conexao.Commit(TD);
          Habilita;
          DmCons.qCPagarParc.Refresh;
          PageControl1.TabIndex := 0;
          DmCons.qCPagarParc.IndexFieldNames := 'NUMCPAGAR';
          Dmcons.qCPagarParc.SetKey;
          DmCons.qCPagarParcNUMCPAGAR.AsInteger := Fdm1.tCPagarParcNUMCPAGAR.AsInteger;
          DmCons.qCPagarParc.GotoKey;
          BitBtn1.SetFocus;
          BitBtn1.Tag := 0;
          except
          Fdm1.Conexao.Rollback(TD);
          end;
        end;
    end;
end;

procedure TfContasPagar.BitBtn4Click(Sender: TObject);
var
  TD : TTransactionDesc;
begin
  qCPagarExc.Close;
  CPagarExc.SQL.Clear;
  CPagarExc.SQL.Add('SELECT CODFORNECEDOR, NUMDUPLICATA, PARCELA FROM CPAGARPARC ');
  CPagarExc.SQL.Add('WHERE CODFORNECEDOR = :CodFornecedor and NUMCPAGAR = :NUMCPAGAR and VLRPAGTO > 0');
  try
  TD.TransactionID  := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  Fdm1.Conexao.StartTransaction(TD);
  case MessageDlg('Excluir todas as parcelas da duplicata ' + DmCons.qCPagarParcNUMDUPLICATA.AsString + '?',mtConfirmation,[mbYes,mbNO,mbCancel],0) of
     mrYes : begin
               CPagarExc.Params[0].AsInteger := DmCons.qCPagarParcCODFORNECEDOR.AsInteger;
               CPagarExc.Params[1].AsInteger := DmCons.qCPagarParcNUMCPAGAR.AsInteger;
               qCPagarExc.Open;
               if qCPagarExc.IsEmpty then
               begin
                 qCPagarExc.Close;
                 CPagarExc.SQL.Clear;
                 CPagarExc.SQL.Add('DELETE FROM CPAGARPARC');
                 CPagarExc.SQL.Add('WHERE CODFORNECEDOR = :CodFornecedor and NUMCPAGAR = :Numcpagar');
                 CPagarExc.Params[0].AsInteger := DmCons.qCPagarParcCODFORNECEDOR.AsInteger;
                 CPagarExc.Params[1].AsInteger := DmCons.qCPagarParcNUMCPAGAR.AsInteger;
                 CPagarExc.ExecSQL;

                 //*** Histórico
                 qCPagarExc.Close;
                 CPagarExc.SQL.Clear;
                 CPagarExc.SQL.Add('DELETE FROM CPAGARHIST');
                 CPagarExc.SQL.Add('WHERE CODFORNECEDOR = :CodFornecedor and NUMCPAGAR = :Numcpagar');
                 CPagarExc.Params[0].AsInteger := DmCons.qCPagarParcCODFORNECEDOR.AsInteger;
                 CPagarExc.Params[1].AsInteger := DmCons.qCPagarParcNUMCPAGAR.AsInteger;
                 CPagarExc.ExecSQL;
               end
               else
                 ShowMessage('Existem parcelas quitadas, a exclusão será cancelada!');
             end;
     mrNo  : begin
               CPagarExc.SQL.Add(' and PARCELA = :Parcela');
               CPagarExc.Params[0].AsInteger := DmCons.qCPagarParcCODFORNECEDOR.AsInteger;
               CPagarExc.Params[1].AsInteger := DmCons.qCPagarParcNUMCPAGAR.AsInteger;
               CPagarExc.Params[2].AsString  := DmCons.qCPagarParcPARCELA.AsString;
               qCPagarExc.Open;
               if qCPagarExc.IsEmpty then
               begin
                 Fdm1.tCPagarParc.Close;
                 Fdm1.CPagarParc.Params[0].AsInteger := DmCons.qCPagarParcCODFORNECEDOR.AsInteger;
                 Fdm1.CPagarParc.Params[1].AsInteger := DmCons.qCPagarParcNUMCPAGAR.AsInteger;
                 Fdm1.CPagarParc.Params[2].AsString  := DmCons.qCPagarParcPARCELA.AsString;
                 Fdm1.tCPagarParc.Open;

                 Fdm1.tCPagarHist.Close;
                 Fdm1.CPagarHist.Params[0].AsInteger := DmCons.qCPagarParcCODFORNECEDOR.AsInteger;
                 Fdm1.CPagarHist.Params[1].AsInteger := DmCons.qCPagarParcNUMCPAGAR.AsInteger;
                 Fdm1.CPagarHist.Params[2].AsString  := DmCons.qCPagarParcPARCELA.AsString;
                 Fdm1.tCPagarHist.Open;
                 if not Fdm1.tCPagarHist.IsEmpty then
                 begin
                   Fdm1.tCPagarHist.First;
                   while not Fdm1.tCPagarHist.Eof do
                     Fdm1.tCPagarHist.Delete;
                   Fdm1.tCPagarHist.ApplyUpdates(0);
                 end;
                 Fdm1.tCPagarParc.Delete;
                 Fdm1.tCPagarParc.ApplyUpdates(0);
               end
               else
                 ShowMessage('Parcela já quitada, a exclusão será cancelada!');
             end;
  end;
  Fdm1.Conexao.Commit(TD);
  except
  Fdm1.Conexao.Rollback(TD);
  end;
  DmCons.qCPagarParc.Refresh;
  PageControl1.ActivePage := TabSheet1;
end;

procedure TfContasPagar.TabSheet2Show(Sender: TObject);
begin
  Atualiza;
end;

procedure TfContasPagar.JvDBGrid1DblClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
end;

procedure TfContasPagar.JvDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
begin
  DmCons.qCPagarParc.IndexFieldNames := Column.FieldName;
  Column.Color := clInfoBK;
  for i := 0 to JvDBGrid1.Columns.Count - 1 do
    if not (JvDBGrid1.Columns.Items[I] = Column) then
      JvDBGrid1.Columns.Items[I].Color := clWhite;
end;

procedure TfContasPagar.JvDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if DmCons.qCPagarParc.RecordCount > 0 then
  begin
    if StrToFloat(FormatFloat('0.00',DmCons.qCPagarParcVLRRESTANTE.AsFloat)) = 0 then
    begin
      Background  := clTeal;
      AFont.Color := clWhite;
    end
    else
    if DmCons.qCPagarParcclDIASATRASO.AsFloat > 0 then
    begin
      Background  := clRed;
      AFont.Color := clWhite;
    end
    else
    if DmCons.qCPagarParcDTRECTO.AsDateTime > 0 then
    begin
      Background  := clBlue;
      AFont.Color := clWhite;
    end;
  end;
end;

procedure TfContasPagar.Label13Click(Sender: TObject);
begin
  Monta_SQLCPagarParc('PEND');
  Calcula;
end;

procedure TfContasPagar.Label14Click(Sender: TObject);
begin
  Monta_SQLCPagarParc('PAG');
  Calcula;
end;

procedure TfContasPagar.Label16Click(Sender: TObject);
begin
  Monta_SQLCPagarParc('');
  Calcula;
end;

procedure TfContasPagar.JvDBLookupCombo2Exit(Sender: TObject);
begin
  if JvDBLookupCombo2.Text <> '' then
    begin
      BitBtn10.Enabled := True;
      DBEdit2.ReadOnly := True;
      DBEdit2.Color     := clInfoBk;
      Fdm1.tCPagarParcPARCELA.Clear;
    end
  else
    begin
      DBEdit2.Color     := clWindow;
      BitBtn10.Enabled := False;
      DBEdit2.ReadOnly := False;
    end;
end;

procedure TfContasPagar.Label28Click(Sender: TObject);
begin
  DmCons.qCondPgto.Close;
  fCondPgto := TfCondPgto.Create(Self);
  fCondPgto.ShowModal;
  DmCons.qCondPgto.Open;
end;

procedure TfContasPagar.BitBtn10Click(Sender: TObject);
var
  vDtVenc, vDtMov : TDateTime;
  vParcela : Integer;
  vVlrParcela : Real;
  vNumDuplicata : Integer;
  vNumNota : Integer;
  vCodFornecedor : Integer;
  vQtdParcelas : Integer;
  vCodCentroCusto, vCodBanco : Integer;
  ano, dia, mes : Word;
begin
  if (Fdm1.tCPagarParcCODFORNECEDOR.AsInteger > 0) and (Fdm1.tCPagarParcNUMDUPLICATA.AsInteger > 0) and
     (Fdm1.tCPagarParcDTMOVIMENTO.AsDateTime > 0) and (Fdm1.tCPagarParcDTVENCIMENTO.AsDateTime > 0) and
     (Fdm1.tCPagarParcVLRVENCIMENTO.AsFloat > 0) then
    begin
      Verifica_CPagar('G');
      if not vExisteDup then
        begin
          vDtMov          := Fdm1.tCPagarParcDTMOVIMENTO.AsDateTime;
          vDtVenc         := Fdm1.tCPagarParcDTVENCIMENTO.AsDateTime;
          vVlrParcela     := Fdm1.tCPagarParcVLRVENCIMENTO.AsFloat;
          vNumDuplicata   := Fdm1.tCPagarParcNUMDUPLICATA.AsInteger;
          vNumNota        := Fdm1.tCPagarParcNUMNOTA.AsInteger;
          vCodFornecedor  := Fdm1.tCPagarParcCODFORNECEDOR.AsInteger;
          vCodCentroCusto := Fdm1.tCPagarParcCODCENTROCUSTO.AsInteger;
          vCodBanco       := Fdm1.tCPagarParcCODBANCO.AsInteger;
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
          Fdm1.tCPagarParc.Cancel;
          Mes := Mes - 1;
          for vParcela := 1 to vQtdParcelas do
            begin
              Fdm1.tCPagarParc.Insert;
              Fdm1.tCPagarParcNUMCPAGAR.AsInteger := Fdm1.Incrementa('NUMCPAGAR','CPAGARPARC');
              Fdm1.tCPagarParcCODFORNECEDOR.AsInteger := vCodFornecedor;
              if vParcela < 10 then
                Fdm1.tCPagarParcPARCELA.AsString := '0' + IntToStr(vParcela)
              else
                Fdm1.tCPagarParcPARCELA.AsString        := IntToStr(vParcela);
              if DmCons.qCondPgtoFIXARDIA.AsString = 'N' then
              begin
                Fdm1.tCondPgtoIt.RecNo := vParcela;
                vDtVenc := vDtVenc + Fdm1.tCondPgtoItQTDDIAS.AsInteger;
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
              Fdm1.tCPagarParcDTVENCIMENTO.AsDateTime  := vDtVenc;
              Fdm1.tCPagarParcDTMOVIMENTO.AsDateTime   := vDtMov;
              Fdm1.tCPagarParcCODCONDPGTO.AsInteger    := DmCons.qCondPgtoID.AsInteger;
              Fdm1.tCPagarParcNUMDUPLICATA.AsInteger   := vNumDuplicata;
              Fdm1.tCPagarParcNUMNOTA.AsInteger        := vNumNota;
              Fdm1.tCPagarParcQUITADO.AsString         := 'N';
              Fdm1.tCPagarParcTIPODOC.AsString         := 'AV';
              Fdm1.tCPagarParcVLRRESTANTE.AsFloat      := vVlrParcela;
              Fdm1.tCPagarParcVLRVENCIMENTO.AsFloat    := vVlrParcela;
              Fdm1.tCPagarParcCODCENTROCUSTO.AsInteger := vCodCentroCusto;
              Fdm1.tCPagarParcCODBANCO.AsInteger       := vCodBanco;
              Fdm1.tCPagarParc.Post;
            end;
          Fdm1.tCPagarParc.ApplyUpdates(0);
          Habilita;
          Label13Click(Sender);
          PageControl1.ActivePageIndex := 0;
        end;
    end
  else
    ShowMessage('Faltam informações: <Fornecedor>, <Duplicata>,' + #13 +
                '<Data do movimento>, <Data do vencimento> ou <Valor>!');
end;

procedure TfContasPagar.JvIntegerEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
    begin
      Monta_SQLCPagarParc('');
      JvDBGrid1.SetFocus;
      Calcula;
    end;
end;

procedure TfContasPagar.BitBtn8Click(Sender: TObject);
begin
  if DmCons.qCPagarParcVLRRESTANTE.AsFloat > 0 then
    begin
      BitBtn1.Tag := 0;
      Atualiza;
      fDevolucaoPag := TfDevolucaoPag.Create(Self);
      fDevolucaoPag.Dm1 := Fdm1;
      fDevolucaoPag.ShowModal;

      Label13Click(Sender);
      PageControl1.ActivePage := TabSheet1;
    end
  else
    ShowMessage('Não existe valor para fazer devolução!');
end;

procedure TfContasPagar.BitBtn6Click(Sender: TObject);
var
  TD : TTransactionDesc;
begin
  case MessageDlg('Deseja estornar o pagamento ',mtConfirmation,[mbYes,mbNO,mbCancel],0) of
    mrYes : begin
              tCPagarHist.Close;
              CPagarHist.CommandText := 'select * from CPAGARHIST where TIPOHIST = ''P'' and ' +
                                          'NUMCPAGAR = :NUMCPAGAR and PARCELA = :Parcela Order by ITEM';
              CPagarHist.Params[0].AsInteger := DmCons.qCPagarParcNUMCPAGAR.AsInteger;
              CPagarHist.Params[1].AsString  := DmCons.qCPagarParcPARCELA.AsString;
              tCPagarHist.Open;
              tCPagarHist.Last;
              if tCPagarHist.RecordCount > 0 then
                begin
                  //*** Abre as parcelas do contas a PAGAR
                  Fdm1.tCPagarParc.Close;
                  Fdm1.CPagarParc.Params[0].AsInteger := DmCons.qCPagarParcCODFORNECEDOR.AsInteger;
                  Fdm1.CPagarParc.Params[1].AsInteger := DmCons.qCPagarParcNUMCPAGAR.AsInteger;
                  Fdm1.CPagarParc.Params[2].AsString  := DmCons.qCPagarParcPARCELA.AsString;
                  Fdm1.tCPagarParc.Open;
                  Fdm1.tCPagarParc.Edit;

                  Fdm1.tCPagarParcVLRDESCONTO.AsFloat := StrToFloat(FormatFloat('0.00',Fdm1.tCPagarParcVLRDESCONTO.AsFloat)) -
                                                          StrToFloat(FormatFloat('0.00',tCPagarHistVLRULTDESCONTO.AsFloat));
                  Fdm1.tCPagarParcJUROSPAGOS.AsFloat  := StrToFloat(FormatFloat('0.00',Fdm1.tCPagarParcJUROSPAGOS.AsFloat)) -
                                                          StrToFloat(FormatFloat('0.00',tCPagarHistVLRULTJUROSPAGO.AsFloat));
                  Fdm1.tCPagarParcVLRRESTANTE.AsFloat := StrToFloat(FormatFloat('0.00',Fdm1.tCPagarParcVLRRESTANTE.AsFloat)) +
                                                          StrToFloat(FormatFloat('0.00',tCPagarHistVLRULTPGTO.AsFloat));
                  Fdm1.tCPagarParcVLRPAGTO.AsFloat    := StrToFloat(FormatFloat('0.00',Fdm1.tCPagarParcVLRPAGTO.AsFloat)) -
                                                          StrToFloat(FormatFloat('0.00',tCPagarHistVLRULTPGTO.AsFloat));
                  Fdm1.tCPagarParcQUITADO.AsString := 'N';

                  Fdm1.tMovFinanceiro.Close;
                  Fdm1.MovFinanceiro.Params[0].AsInteger := tCPagarHistNUMMOVFINANC.AsInteger;
                  Fdm1.tMovFinanceiro.Open;
                  Fdm1.tMovFinanceiro.Delete;
                  Fdm1.tMovFinanceiro.ApplyUpdates(0);
                  IF tCPagarHistNUMMOVJUROS.AsInteger > 0 then
                    begin
                      Fdm1.tMovFinanceiro.Close;
                      Fdm1.MovFinanceiro.Params[0].AsInteger := tCPagarHistNUMMOVJUROS.AsInteger;
                      Fdm1.tMovFinanceiro.Open;
                      Fdm1.tMovFinanceiro.Delete;
                      Fdm1.tMovFinanceiro.ApplyUpdates(0);
                    end;

                  //***Histórico
                  if tCPagarHist.RecordCount > 0 then
                    tCPagarHist.Delete;
                  tCPagarHist.ApplyUpdates(0);
                  if tCPagarHist.RecordCount < 1 then
                    Fdm1.tCPagarParcDTPAGTO.Clear
                  else
                    Fdm1.tCPagarParcDTPAGTO.AsDateTime := tCPagarHistDTULTPGTO.AsDateTime;
                  Fdm1.tCPagarParc.Post;
                  Fdm1.tCPagarParc.ApplyUpdates(0);

                  DmCons.qCPagarParc.Refresh;
                  PageControl1.ActivePage := TabSheet1;

                end
              else
                ShowMessage('Não existe pagamento para estornar!');
            end;
    mrNO : begin
             if MessageDlg('Deseja fazer estorno de devolução?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
               begin
                 tCPagarHist.Close;
                 CPagarHist.CommandText := 'select * from CPAGARHIST where TIPOHIST = ''D'' and ' +
                                             'NUMCPAGAR = :NUMCPAGAR and PARCELA = :Parcela Order by ITEM';
                 CPagarHist.Params[0].AsInteger := DmCons.qCPagarParcNUMCPAGAR.AsInteger;
                 CPagarHist.Params[1].AsString  := DmCons.qCPagarParcPARCELA.AsString;
                 tCPagarHist.Open;
                 tCPagarHist.Last;
                 if tCPagarHist.RecordCount > 0 then
                   begin
                     try
                     TD.TransactionID  := 1;
                     TD.IsolationLevel := xilREADCOMMITTED;
                     Fdm1.Conexao.StartTransaction(TD);
                     BitBtn1.Tag := 0;
                     Atualiza;
                     Fdm1.tCPagarParc.Edit;
                     Fdm1.tCPagarParcVLRRESTANTE.AsFloat  := StrToFloat(FormatFloat('0.00',Fdm1.tCPagarParcVLRRESTANTE.AsFloat + tCPagarHistVLRULTDEVOLUCAO.AsFloat));
                     Fdm1.tCPagarParcVLRDEVOLUCAO.AsFloat := StrToFloat(FormatFloat('0.00',Fdm1.tCPagarParcVLRDEVOLUCAO.AsFloat - tCPagarHistVLRULTDEVOLUCAO.AsFloat));
                     tCPagarHist.Delete;
                     tCPagarHist.ApplyUpdates(0);
                     if tCPagarHist.RecordCount < 1 then
                       Fdm1.tCPagarParcDTDEVOLUCAO.Clear
                     else
                       Fdm1.tCPagarParcDTDEVOLUCAO.AsDateTime := tCPagarHistDTULTPGTO.AsDateTime;
                     Fdm1.tCPagarHist.Post;
                     Fdm1.tCPagarHist.ApplyUpdates(0);
                     Fdm1.Conexao.Commit(TD);

                     Label13Click(Sender);
                     PageControl1.ActivePage := TabSheet1;

                     except
                     Fdm1.Conexao.Rollback(TD);
                     end;
                   end
                 else
                   ShowMessage('Não existe devolução para estornar!');
               end;
           end;
    mrCancel :;
  end;
end;

procedure TfContasPagar.Label4Click(Sender: TObject);
begin
  qFornecedor.Close;
  fPessoaC := TfPessoaC.Create(Self);
  fPessoaC.ShowModal;
  qFornecedor.open;

{  qFornecedor.Close;
  Fdm1.tPessoa.Close;
  Fdm1.Pessoa.CommandText := 'SELECT * FROM PESSOA WHERE ID = :codigo';
  Fdm1.Pessoa.Params[0].AsInteger := 0;
  Fdm1.tPessoa.Open;
  Fdm1.tPessoa.Insert;
  Fdm1.tPessoaID.AsInteger := Fdm1.Incrementa('ID','PESSOA');
  fPessoa := TfPessoa.Create(Self);
  fPessoa.ShowModal;
  qFornecedor.Open;}
end;

procedure TfContasPagar.Label15Click(Sender: TObject);
begin
  Monta_SQLCPagarParc('ATR');
  Calcula;
end;

procedure TfContasPagar.DBEdit2Exit(Sender: TObject);
var
  vParcela : String;
begin
  vParcela := Fdm1.tCPagarParcPARCELA.AsString;
  if (DBEdit2.Text <> '') and (StrToInt(vParcela) < 10) and (Copy(vParcela,1,1) <> '0') then
    Fdm1.tCPagarParcPARCELA.AsString := '0' + vParcela;
end;

procedure TfContasPagar.ImprimirConsulta1Click(Sender: TObject);
begin
  DmCons.qCPagarParc.DisableControls;
  fContasPagarRel := TfContasPagarRel.Create(Self);
  fContasPagarRel.RLReport3.Preview;
  fContasPagarRel.RLReport3.Free;
  DmCons.qCPagarParc.EnableControls;
end;

procedure TfContasPagar.ImprimirContasaReceberDetalhado1Click(
  Sender: TObject);
begin
  fContasPagarDet := TfContasPagarDet.Create(Self);
  fContasPagarDet.ShowModal;
  DmCons.qBanco.Open;
  if JvDBLookupCombo1.Text <> '' then
    JvDBLookupCombo1.ClearValue;  
end;

procedure TfContasPagar.BitBtn7Click(Sender: TObject);
begin
  if DmCons.qCPagarParcVLRRESTANTE.AsFloat > 0 then
    begin
      fContasPagarPgto := TfContasPagarPgto.Create(Self);
      fContasPagarPgto.Dm1 := Fdm1;
      fContasPagarPgto.ShowModal;

      if MessageDlg('Deseja imprimir o recibo?',mtConfirmation,[mbYes,mbNO],0) = mrYes then
        Imprime_Recibo;

      DmCons.qCPagarParc.Refresh;
      PageControl1.ActivePage := TabSheet1;

    end
  else
    ShowMessage('Parcela já quitada!');
end;

procedure TfContasPagar.BitBtn9Click(Sender: TObject);
begin
  Monta_SQLCPagarParc('');
  Calcula;
end;

procedure TfContasPagar.JvDBLookupCombo4Exit(Sender: TObject);
begin
  if JvDBLookupCombo4.Text <> '' then
    if (qFornecedor.Locate('ID',JvDBLookupCombo4.KeyValue,([LocaseInsensitive]))) and
       (qFornecedorCODCENTROCUSTO.AsInteger > 0) then
      JvDBLookupCombo7.KeyValue := qFornecedorCODCENTROCUSTO.AsInteger;
end;

procedure TfContasPagar.ImprimirRecibo1Click(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 0 then
    Atualiza;
  Imprime_Recibo;
end;

procedure TfContasPagar.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.

