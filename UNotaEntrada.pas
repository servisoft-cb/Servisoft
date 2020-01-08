unit UNotaEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvDBCtrl, ExtCtrls, ComCtrls, StdCtrls, Buttons,
  JvLookup, DBCtrls, Mask, DB, FMTBcd, SqlExpr, JvToolEdit, JvCurrEdit, DBXpress,
  DBClient, Provider, JvCombobox, JvBitBtn;

type
  TfNotaEntrada = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    JvDBGrid1: TJvDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label5: TLabel;
    JvDBDateEdit2: TJvDBDateEdit;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Label4: TLabel;
    JvDBLookupCombo4: TJvDBLookupCombo;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    JvDBLookupCombo5: TJvDBLookupCombo;
    Label7: TLabel;
    Panel4: TPanel;
    StaticText5: TStaticText;
    DBEdit3: TDBEdit;
    StaticText6: TStaticText;
    DBEdit4: TDBEdit;
    StaticText8: TStaticText;
    DBEdit6: TDBEdit;
    StaticText9: TStaticText;
    DBEdit7: TDBEdit;
    StaticText10: TStaticText;
    DBEdit8: TDBEdit;
    PageControl2: TPageControl;
    TSProdutos: TTabSheet;
    JvDBGrid2: TJvDBGrid;
    TSMObras: TTabSheet;
    TSDuplicatas: TTabSheet;
    JvDBGrid3: TJvDBGrid;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    JvDBGrid4: TJvDBGrid;
    Label24: TLabel;
    JvDBLookupCombo2: TJvDBLookupCombo;
    GroupBox1: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    StaticText7: TStaticText;
    DBEdit5: TDBEdit;
    StaticText11: TStaticText;
    DBEdit10: TDBEdit;
    Fornecedor: TSQLQuery;
    FornecedorP: TDataSetProvider;
    qFornecedor: TClientDataSet;
    qsFornecedor: TDataSource;
    qFornecedorID: TIntegerField;
    qFornecedorNOME: TStringField;
    JvComboBox1: TJvComboBox;
    Label9: TLabel;
    JvDateEdit1: TJvDateEdit;
    Label10: TLabel;
    JvDateEdit2: TJvDateEdit;
    Edit1: TEdit;
    CPagarParc: TSQLQuery;
    CPagarParcP: TDataSetProvider;
    qCPagarParc: TClientDataSet;
    qCPagarParcNUMNOTA: TIntegerField;
    qCPagarParcQUITADO: TStringField;
    qCPagarParcCODFORNECEDOR: TIntegerField;
    NotaEntradaIt: TSQLQuery;
    NotaEntradaItP: TDataSetProvider;
    tNotaEntradaIt: TClientDataSet;
    tNotaEntradaItNUMMOVEST: TIntegerField;
    JvBitBtn1: TJvBitBtn;
    NotaEntradaImp: TSQLQuery;
    NotaEntradaImpP: TDataSetProvider;
    qNotaEntradaImp: TClientDataSet;
    qsNotaEntradaImp: TDataSource;
    qNotaEntradaImpCODFORNECEDOR: TIntegerField;
    qNotaEntradaImpNUMNOTA: TIntegerField;
    qNotaEntradaImpSERIE: TStringField;
    qNotaEntradaImpDTEMISSAO: TDateField;
    qNotaEntradaImpDTENTRADA: TDateField;
    qNotaEntradaImpNOME: TStringField;
    qNotaEntradaImpVLRTOTAL: TFloatField;
    qNotaEntradaImpVLRTOTALITENS: TFloatField;
    qNotaEntradaImpVLRTOTALMOBRAS: TFloatField;
    CPagarParc2: TSQLDataSet;
    CPagarParc2P: TDataSetProvider;
    tCPagarParc2: TClientDataSet;
    tCPagarParc2NUMCPAGAR: TIntegerField;
    tCPagarParc2PARCELA: TStringField;
    tCPagarParc2NUMDUPLICATA: TIntegerField;
    tCPagarParc2VLRVENCIMENTO: TFloatField;
    tCPagarParc2DTVENCIMENTO: TDateField;
    tCPagarParc2QUITADO: TStringField;
    tCPagarParc2VLRJUROS: TFloatField;
    tCPagarParc2DTPAGTO: TDateField;
    tCPagarParc2CODFORNECEDOR: TIntegerField;
    tCPagarParc2NUMNOTA: TIntegerField;
    tCPagarParc2VLRDESCONTO: TFloatField;
    tCPagarParc2VLRPAGTO: TFloatField;
    tCPagarParc2VLRRESTANTE: TFloatField;
    tCPagarParc2CODTIPOCOBRANCA: TIntegerField;
    tCPagarParc2VLRDESPESA: TFloatField;
    tCPagarParc2CODBANCO: TIntegerField;
    tCPagarParc2PGCARTORIO: TStringField;
    tCPagarParc2TITPROTESTADO: TStringField;
    tCPagarParc2QTDDIASPROT: TIntegerField;
    tCPagarParc2DTMOVIMENTO: TDateField;
    tCPagarParc2DIASATRASO: TIntegerField;
    tCPagarParc2JUROSPAGOS: TFloatField;
    tCPagarParc2CANCELADO: TStringField;
    tCPagarParc2TIPODOC: TStringField;
    tCPagarParc2VLRDEVOLUCAO: TFloatField;
    tCPagarParc2DTRECTO: TDateField;
    tCPagarParc2CODCONDPGTO: TIntegerField;
    tCPagarParc2DTDEVOLUCAO: TDateField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure JvDBLookupCombo1Change(Sender: TObject);
    procedure JvDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure StaticText1Click(Sender: TObject);
    procedure StaticText2Click(Sender: TObject);
    procedure StaticText3Click(Sender: TObject);
    procedure JvDBGrid2DblClick(Sender: TObject);
    procedure DBCheckBox2Enter(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure StaticText4Click(Sender: TObject);
    procedure JvDBGrid3DblClick(Sender: TObject);
    procedure JvDBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit9Enter(Sender: TObject);
    procedure DBCheckBox1Enter(Sender: TObject);
    procedure JvDBGrid4DblClick(Sender: TObject);
    procedure JvDBGrid4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1Exit(Sender: TObject);
    procedure JvDBLookupCombo2Enter(Sender: TObject);
    procedure DBCheckBox3Enter(Sender: TObject);
    procedure DBCheckBox4Enter(Sender: TObject);
    procedure GroupBox1Exit(Sender: TObject);
    procedure Label24Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure JvComboBox1Enter(Sender: TObject);
    procedure JvComboBox1Change(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    vVlrOutrasDesp : Real;
    procedure Habilita;
    procedure Consulta;
    procedure Atualiza;
    procedure Estoque;
    procedure Exclui_MovEst;
    procedure Pagamento;
  public
    { Public declarations }
  end;

var
  fNotaEntrada: TfNotaEntrada;
  vAlteraNE : String;

implementation

uses UDm1, UDmCons, Math, UNotaEntradaIt, UPessoa, UNatOperacao, UCondPgto,
  UNotaEntradaRel;

{$R *.dfm}

procedure TfNotaEntrada.Exclui_MovEst;
begin
  try
    begin
      tNotaEntradaIt.First;
      while not tNotaEntradaIt.Eof do
        begin
          Dm1.tEstoqueMov.Close;
          Dm1.EstoqueMov.ParamByName('Codigo').AsInteger := tNotaEntradaItNUMMOVEST.AsInteger;
          Dm1.tEstoqueMov.Open;
          Dm1.tEstoqueMov.Delete;
          Dm1.tEstoqueMov.ApplyUpdates(0);
          tNotaEntradaIt.Next;
        end;
    end;
  except
  end;
end;

procedure TfNotaEntrada.Estoque;
begin
  Dm1.tNotaEntradaIt.First;
  while not Dm1.tNotaEntradaIt.Eof do
    begin
      if Dm1.tNotaEntradaItBAIXAESTOQUE.AsString = 'S' then
        begin
           //*** Movimento do estoque
          Dm1.tEstoqueMov.Close;
          Dm1.EstoqueMov.ParamByName('Codigo').AsInteger := 0;
          Dm1.tEstoqueMov.Open;
          Dm1.tEstoqueMov.Insert;
          Dm1.tEstoqueMovNUMMOV.AsInteger     := Dm1.Incrementa('NUMMOV','ESTOQUEMOV');
          Dm1.tEstoqueMovCODPRODUTO.AsInteger := DM1.tNotaEntradaItCODPRODUTO.AsInteger;
          DM1.tEstoqueMovTAMANHO.AsString     := DM1.tNotaEntradaItTAMANHO.AsString;
          DM1.tEstoqueMovDTMOV.AsDateTime     := DM1.tNotaEntradaDTEMISSAO.AsDateTime;
          DM1.tEstoqueMovES.AsString          := 'E';
          DM1.tEstoqueMovTIPOMOV.AsString     := 'NTE';
          DM1.tEstoqueMovNUMDOCTO.AsInteger   := DM1.tNotaEntradaNUMNOTA.AsInteger;
          DM1.tEstoqueMovCODPESSOA.AsInteger  := DM1.tNotaEntradaCODFORNECEDOR.AsInteger;
          DM1.tEstoqueMovPRECOCUSTO.AsFloat   := DM1.tNotaEntradaItVLRUNITARIO.AsFloat;
          DM1.tEstoqueMovQTD.AsFloat          := DM1.tNotaEntradaItQTD.AsFloat;
          DM1.tEstoqueMovQTD2.AsFloat         := DM1.tNotaEntradaItQTD.AsFloat;
          DM1.tEstoqueMovPERCICMS.AsFloat     := DM1.tNotaEntradaItALIQICMS.AsFloat;
          DM1.tEstoqueMovPERCIPI.AsFloat      := DM1.tNotaEntradaItALIQIPI.AsFloat;
          DM1.tEstoqueMovUNIDADE.AsString     := DM1.tNotaEntradaItUNIDADE.AsString;
          DM1.tEstoqueMovVLRDESCONTO.AsFloat  := DM1.tNotaEntradaItVLRDESC.AsFloat;
          Dm1.tEstoqueMov.Post;
          Dm1.tNotaEntradaIt.Edit;
          Dm1.tNotaEntradaItNUMMOVEST.AsInteger := Dm1.tEstoqueMovNUMMOV.AsInteger;
          Dm1.tNotaEntradaIt.Post;
          DM1.tEstoqueMov.ApplyUpdates(0);
        end;
      Dm1.tNotaEntradaIt.Next;
    end;
end;

procedure TfNotaEntrada.Pagamento;
begin
  //*** Se existe o contas a pagar deleta
  Dm1.tCPagarParc.Close;
  Dm1.CPagarParc.Params[0].AsInteger := DM1.tNotaEntradaCODFORNECEDOR.AsInteger;
  Dm1.CPagarParc.Params[1].AsInteger := Dm1.tNotaEntradaNRODUPLICATA.AsInteger;
  Dm1.tCPagarParc.Open;
  Dm1.tCPagarParc.First;
  while not Dm1.tCPagarParc.Eof do
    Dm1.tCPagarParc.Delete;
  Dm1.tCPagarParc.ApplyUpdates(0);

  //*** Grava o contas a pagar
  if Dm1.tNotaEntradaParc.RecordCount > 0 then
    begin
      Dm1.tNotaEntradaParc.First;
      while not Dm1.tNotaEntradaParc.Eof do
        begin
          Dm1.tCPagarParc.Insert;
          Dm1.tCPagarParcNUMCPAGAR.AsInteger      := Dm1.Incrementa('NUMCPAGAR','CPAGARPARC');
          Dm1.tCPagarParcPARCELA.AsInteger        := Dm1.tNotaEntradaParcITEM.AsInteger;
          Dm1.tCPagarParcVLRVENCIMENTO.AsFloat    := Dm1.tNotaEntradaParcVLRVENCIMENTO.AsFloat;
          Dm1.tCPagarParcVLRRESTANTE.AsFloat      := Dm1.tNotaEntradaParcVLRVENCIMENTO.AsFloat;
          Dm1.tCPagarParcDTVENCIMENTO.AsDateTime  := Dm1.tNotaEntradaParcDTVENCIMENTO.AsDateTime;
          Dm1.tCPagarParcCODFORNECEDOR.AsInteger  := Dm1.tNotaEntradaCODFORNECEDOR.AsInteger;
          Dm1.tCPagarParcCODBANCO.AsInteger       := Dm1.tNotaEntradaParcCODBANCO.AsInteger;
          Dm1.tCPagarParcQUITADO.AsString         := 'N';
          Dm1.tCPagarParcNUMNOTA.AsInteger        := Dm1.tNotaEntradaNUMNOTA.AsInteger;
          Dm1.tCPagarParcDTMOVIMENTO.AsDateTime   := Dm1.tNotaEntradaDTEMISSAO.AsDateTime;
          Dm1.tCPagarParcTIPODOC.AsString         := 'NE';
          Dm1.tCPagarParcNUMDUPLICATA.AsInteger   := Dm1.tNotaEntradaNRODUPLICATA.AsInteger;
          Dm1.tCPagarParc.Post;
          DM1.tNotaEntradaParc.Edit;
          DM1.tNotaEntradaParcNUMCPAGAR.AsInteger := Dm1.tCPagarParcNUMCPAGAR.AsInteger;
          DM1.tNotaEntradaParc.Post;
          Dm1.tNotaEntradaParc.Next;
        end;
    end;
end;

procedure TfNotaEntrada.Atualiza;
begin
  if Dm1.tNotaEntrada.State in [dsInactive,dsBrowse] then
    begin
      Dm1.tNotaEntrada.Close;
      Dm1.tNotaEntradaIt.Close;
      Dm1.tNotaEntradaParc.Close;
      Dm1.tNotaEntradaMObra.Close;
      if BitBtn1.Tag = 1 then
        begin
          Dm1.NotaEntrada.ParamByName('Codigo').AsInteger             := 0;
          Dm1.NotaEntrada.ParamByName('CodFornecedor').AsInteger      := 0;
          Dm1.NotaEntradaIt.ParamByName('Codigo').AsInteger           := 0;
          Dm1.NotaEntradaIt.ParamByName('CodFornecedor').AsInteger    := 0;
          Dm1.NotaEntradaParc.ParamByName('Codigo').AsInteger         := 0;
          Dm1.NotaEntradaParc.ParamByName('CodFornecedor').AsInteger  := 0;
          Dm1.NotaEntradaMObra.ParamByName('Codigo').AsInteger        := 0;
          Dm1.NotaEntradaMObra.ParamByName('CodFornecedor').AsInteger := 0;
        end
      else
        begin
          Dm1.NotaEntrada.ParamByName('Codigo').AsInteger            := DmCons.qNotaEntradaNumNota.AsInteger;
          Dm1.NotaEntrada.ParamByName('CodFornecedor').AsInteger     := DmCons.qNotaEntradaCodFornecedor.AsInteger;
          Dm1.NotaEntradaIt.ParamByName('Codigo').AsInteger          := DmCons.qNotaEntradaNumNota.AsInteger;
          Dm1.NotaEntradaIt.ParamByName('CodFornecedor').AsInteger   := DmCons.qNotaEntradaCodFornecedor.AsInteger;
          Dm1.NotaEntradaParc.ParamByName('Codigo').AsInteger        := DmCons.qNotaEntradaNumNota.AsInteger;
          Dm1.NotaEntradaParc.ParamByName('CodFornecedor').AsInteger := DmCons.qNotaEntradaCodFornecedor.AsInteger;
          Dm1.NotaEntradaMObra.ParamByName('Codigo').AsInteger        := DmCons.qNotaEntradaNumNota.AsInteger;
          Dm1.NotaEntradaMObra.ParamByName('CodFornecedor').AsInteger := DmCons.qNotaEntradaCodFornecedor.AsInteger;
        end;
      Dm1.tNotaEntrada.Open;
      Dm1.tNotaEntradaIt.Open;
      Dm1.tNotaEntradaParc.Open;
      Dm1.tNotaEntradaMObra.Open;
      qFornecedor.Open;
    end;
end;

procedure TfNotaEntrada.Consulta;
begin
  DmCons.qNotaEntrada.Close;
  DmCons.NotaEntrada.SQL.Clear;
  DmCons.NotaEntrada.SQL.Add('Select NOTAENTRADA.*, PESSOA.NOME, NATOPERACAO.NOME NOMENATOPER, NATOPERACAO.CODIGO CODFISCALNATOPER');
  DmCons.NotaEntrada.SQL.Add('from NOTAENTRADA');
  DmCons.NotaEntrada.SQL.Add('inner join PESSOA on');
  DmCons.NotaEntrada.SQL.Add('(PESSOA.ID = NOTAENTRADA.CODFORNECEDOR)');
  DmCons.NotaEntrada.SQL.Add('inner join NATOPERACAO on');
  DmCons.NotaEntrada.SQL.Add('(NATOPERACAO.ID = NOTAENTRADA.CODNATOPER)');
  DmCons.qNotaEntrada.Open;
end;

procedure TfNotaEntrada.Habilita;
begin
  Panel3.Enabled  := not Panel3.Enabled;
  BitBtn1.Enabled := not BitBtn1.Enabled;
  BitBtn2.Enabled := not BitBtn2.Enabled;
  BitBtn3.Enabled := not BitBtn3.Enabled;
  BitBtn4.Enabled := not BitBtn4.Enabled;
  BitBtn5.Enabled := not BitBtn5.Enabled;
  JvBitBtn1.Enabled := not JvBitBtn1.Enabled;
  TabSheet1.TabVisible := not TabSheet1.TabVisible;
end;

procedure TfNotaEntrada.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.tNotaEntrada.Close;
  DM1.tNotaEntradaIt.Close;
  DM1.tNotaEntradaParc.Close;
  DM1.tNotaEntradaMObra.Close;
  DmCons.qNotaEntrada.Close;
  DmCons.qProduto.Close;
  DmCons.qProdutoTam.Close;
  qFornecedor.Close;
  DmCons.qNatOperacao.Close;
  DmCons.qSitTributaria.Close;
  Dm1.tProduto.Close;
  Action := Cafree;
end;

procedure TfNotaEntrada.BitBtn1Click(Sender: TObject);
begin
  BitBtn1.Tag := 1;
  BitBtn2.Tag := 0;
  PageControl1.ActivePageIndex := 1;
  Habilita;
  Atualiza;
  Dm1.tNotaEntrada.Insert;
  DBEdit1.ReadOnly := False;
  JvDBLookupCombo4.ReadOnly := False;
  DBEdit1.SetFocus;
  BitBtn1.Tag := 0;
end;

procedure TfNotaEntrada.BitBtn2Click(Sender: TObject);
begin
  PageControl2.Show;
  qCPagarParc.Close;
  CPagarParc.Params[0].AsInteger := Dm1.tNotaEntradaCODFORNECEDOR.AsInteger;
  CPagarParc.Params[1].AsInteger := Dm1.tNotaEntradaNUMNOTA.AsInteger;
  qCPagarParc.Open;
  if not qCPagarParc.IsEmpty then
    ShowMessage('Nota não pode ser alterada pois existem parcelas quitadas!')
  else
  if (PageControl1.ActivePageIndex = 1) and (DBEdit1.Text = '') then
    ShowMessage('Registro vazio, não pode ser alterado!')
  else
  if (DmCons.qNotaEntradaNUMNOTA.AsInteger > 0) or (DM1.tNotaEntradaNUMNOTA.AsInteger > 0) then
    begin
      BitBtn2.Tag := 1;
      DBEdit1.ReadOnly := True;
      JvDBLookupCombo4.ReadOnly := True;
      PageControl1.ActivePageIndex := 1;
      Dm1.tNotaEntrada.Edit;
      Habilita;
//+++++++++ abre tabela local para carregar o numero do movimento do estoque ++++++++//
      tNotaEntradaIt.Close;
      NotaEntradaIt.Params[0].AsInteger := Dm1.tNotaEntradaNUMNOTA.AsInteger;
      NotaEntradaIt.Params[1].AsInteger := Dm1.tNotaEntradaCODFORNECEDOR.AsInteger;
      tNotaEntradaIt.Open;
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//
      DBEdit2.SetFocus;
    end;
end;

procedure TfNotaEntrada.BitBtn3Click(Sender: TObject);
begin
  Dm1.tNotaEntrada.Cancel;
  Dm1.tNotaEntradaIt.Cancel;
  Habilita;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfNotaEntrada.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DmCons.qNotaEntrada.Open;
  DmCons.qProduto.Open;
  DmCons.qNatOperacao.Open;
  DmCons.qSitTributaria.Open;
  Dm1.tProduto.Open;
end;

procedure TfNotaEntrada.BitBtn5Click(Sender: TObject);
var
  TD : TTransactionDesc;
  vGrava : Boolean;
  vVlrTotalAux, vVlrParcelas : String;
begin
  if (DBEdit1.Text <> '') and (DM1.tNotaEntradaCODFORNECEDOR.AsInteger > 0) and (DBEdit9.Text <> '') then
    begin
      vGrava := True;
      if DM1.tNotaEntradaINFCONDPGTO.AsString = 'S' then
        begin
          vVlrParcelas := '0';
          //*** Le as parcelas para somar o valor na variavel vVlrParcelas
          DM1.tNotaEntradaParc.First;
          while not DM1.tNotaEntradaParc.Eof do
            begin
              vVlrParcelas := FormatFloat('0.00',(StrToFloat(vVlrParcelas) + DM1.tNotaEntradaParcVLRVENCIMENTO.AsFloat));
              DM1.tNotaEntradaParc.Next;
            end;
          //*** Compara o valor total com o valor da variavel se não fechar não vai gravar
          vVlrTotalAux := '0';
          if Dm1.tNotaEntradaSOMAPRODDUPL.AsString = 'S' then
            vVlrTotalAux := FormatFloat('0.00',Dm1.tNotaEntradaVLRTOTALITENS.AsFloat);
          if Dm1.tNotaEntradaSOMAMOBRADUPL.AsString = 'S' then
            vVlrTotalAux := FormatFloat('0.00',(StrToFloat(vVlrTotalAux) + Dm1.tNotaEntradaVLRTOTALMOBRAS.AsFloat));
          if vVlrTotalAux <> vVlrParcelas then
            begin
              vGrava := False;
              ShowMessage('Valor das parcelas diferente da nota!');
            end;
          //*** Le os itens para ver se o produto tem a opção de atualizar o preço automático
        end;
      if vGrava then
        begin
          try
          TD.TransactionID  := 1;
          TD.IsolationLevel := xilREADCOMMITTED;
          Dm1.Conexao.StartTransaction(TD);
          Dm1.tNotaEntrada.Post;
          if tNotaEntradaIt.Active then
            Exclui_MovEst;
          Estoque;
          Pagamento;
          Dm1.tCPagarParc.ApplyUpdates(0);
          if Dm1.tProdutoTam.Active then
            Dm1.tProdutoTam.ApplyUpdates(0);
          if Dm1.tProduto.Active then
            Dm1.tProduto.ApplyUpdates(0);
          Dm1.tNotaEntradaIt.ApplyUpdates(0);
          Dm1.tNotaEntradaParc.ApplyUpdates(0);
          Dm1.tNotaEntradaMObra.ApplyUpdates(0);
          Dm1.tNotaEntrada.ApplyUpdates(0);
          Dm1.Conexao.Commit(TD);
          Habilita;
          DmCons.qNotaEntrada.Refresh;
          PageControl1.TabIndex := 0;
          DmCons.qNotaEntrada.IndexFieldNames := 'NUMNOTA';
          Dmcons.qNotaEntrada.SetKey;
          DmCons.qNotaEntradaNUMNOTA.AsInteger := Dm1.tNotaEntradaNUMNOTA.AsInteger;
          DmCons.qNotaEntrada.GotoKey;
//          Consulta;
          PageControl1.ActivePage := TabSheet1;
          BitBtn1.SetFocus;
          except
          Dm1.Conexao.Rollback(TD);
          end;
        end;
    end
  else
    ShowMessage('Esta faltando o número da nota, Fornecedor ou Nº da Duplicata!');
end;

procedure TfNotaEntrada.BitBtn4Click(Sender: TObject);
var
  TD : TTransactionDesc;
begin
  PageControl2.Show;
  qCPagarParc.Close;
  CPagarParc.Params[0].AsInteger := Dm1.tNotaEntradaCODFORNECEDOR.AsInteger;
  CPagarParc.Params[1].AsInteger := Dm1.tNotaEntradaNUMNOTA.AsInteger;
  qCPagarParc.Open;
  if not qCPagarParc.IsEmpty then
    ShowMessage('Nota não pode ser excluída pois existem parcelas quitadas!')
  else
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
    begin
      try
      TD.TransactionID  := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      Dm1.Conexao.StartTransaction(TD);
      Atualiza;
      DM1.tNotaEntradaIt.First;
      while not DM1.tNotaEntradaIt.Eof do
        begin
          Dm1.tEstoqueMov.Close;
          Dm1.EstoqueMov.ParamByName('Codigo').AsInteger := DM1.tNotaEntradaItNUMMOVEST.AsInteger;
          Dm1.tEstoqueMov.Open;
          Dm1.tEstoqueMov.Delete;
          DM1.tNotaEntradaIt.Delete;
        end;
      DM1.tNotaEntradaMObra.First;
      while not DM1.tNotaEntradaMObra.Eof do
        DM1.tNotaEntradaMObra.Delete;
      Dm1.tNotaEntradaParc.First;
      while not Dm1.tNotaEntradaParc.Eof do
        Dm1.tNotaEntradaParc.Delete;  
{      DM1.tNotaEntradaParc.First;
      while not DM1.tNotaEntradaParc.Eof do
        begin
          DM1.tCPagarParc.Close;
          DM1.CPagarParc.Params[0].AsInteger := DM1.tNotaEntradaCODFORNECEDOR.AsInteger;
          DM1.CPagarParc.Params[1].AsInteger := DM1.tNotaEntradaNRODUPLICATA.AsInteger;
          DM1.CPagarParc.Params[2].AsString  := DM1.tNotaEntradaParcITEM.AsString;
          DM1.tCPagarParc.Open;
          DM1.tCPagarParc.Delete;
          DM1.tCPagarParc.ApplyUpdates(0);
          DM1.tNotaEntradaParc.Delete;
        end;}

      DM1.tCPagarParc.Close;
      DM1.CPagarParc.Params[0].AsInteger := DM1.tNotaEntradaCODFORNECEDOR.AsInteger;
      DM1.CPagarParc.Params[1].AsInteger := DM1.tNotaEntradaNRODUPLICATA.AsInteger;
      DM1.tCPagarParc.Open;
      Dm1.tCPagarParc.First;
      while not Dm1.tCPagarParc.Eof do
        Dm1.tCPagarParc.Delete;
      Dm1.tCPagarParc.ApplyUpdates(0);
      Dm1.tNotaEntrada.Delete;
      Dm1.tEstoqueMov.ApplyUpdates(0);
      Dm1.tNotaEntrada.ApplyUpdates(0);
      Dm1.tNotaEntradaIt.ApplyUpdates(0);
      Dm1.tNotaEntradaMObra.ApplyUpdates(0);
      Dm1.tNotaEntradaParc.ApplyUpdates(0);
      Consulta;
      Dm1.Conexao.Commit(TD);
      except
      Dm1.Conexao.Rollback(TD);
      end;
    end;
end;

procedure TfNotaEntrada.TabSheet2Show(Sender: TObject);
begin
  Atualiza;
  PageControl2.ActivePageIndex := 0;
end;

procedure TfNotaEntrada.JvDBGrid1DblClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
end;

procedure TfNotaEntrada.JvDBLookupCombo1Change(Sender: TObject);
begin
  Consulta;
end;

procedure TfNotaEntrada.JvDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if BitBtn3.Enabled then
    begin
      if key = 45 then
        StaticText1Click(Sender)
      else
      if key = 46 then
        StaticText2Click(Sender)
      else
      if key = 13 then
        StaticText3Click(Sender);
    end;
end;

procedure TfNotaEntrada.DBEdit7Enter(Sender: TObject);
begin
  vVlrOutrasDesp := DM1.tNotaEntradaVLROUTRASDESP.AsFloat;
  
end;

procedure TfNotaEntrada.DBEdit7Exit(Sender: TObject);
begin
  DM1.tNotaEntradaVLRTOTAL.AsFloat := (DM1.tNotaEntradaVLRTOTAL.AsFloat - vVlrOutrasDesp) +
                                       DM1.tNotaEntradaVLROUTRASDESP.AsFloat;
end;

procedure TfNotaEntrada.StaticText1Click(Sender: TObject);
begin
  if BitBtn3.Enabled then
    begin
      if (Dm1.tNotaEntradaNUMNOTA.AsInteger < 1) or (Dm1.tNotaEntradaCODFORNECEDOR.AsInteger < 1) then
        ShowMessage('Falta informar o número da nota e o fornecedor!')
      else
        begin
          if PageControl2.ActivePageIndex = 0 then
            begin
              fNotaEntradaIt := TfNotaEntradaIt.Create(Self);
              fNotaEntradaIt.Tag := 11;
              fNotaEntradaIt.ShowModal;
            end
          else
          if PageControl2.ActivePageIndex = 1 then
            begin
              fNotaEntradaIt := TfNotaEntradaIt.Create(Self);
              fNotaEntradaIt.Tag := 21;
              fNotaEntradaIt.ShowModal;
            end
          else
          if (PageControl2.ActivePageIndex = 2) and (DM1.tNotaEntradaINFCONDPGTO.AsString <> 'N') then
            begin
              fNotaEntradaIt := TfNotaEntradaIt.Create(Self);
              fNotaEntradaIt.Tag := 31;
              fNotaEntradaIt.ShowModal;
            end
          else
            ShowMessage('Para informar duplicatas é preciso marcar a opção Informa Condição de Pagamento!')
        end;
    end;
end;

procedure TfNotaEntrada.StaticText2Click(Sender: TObject);
begin
  if BitBtn3.Enabled then
    begin
      if ((PageControl2.ActivePageIndex = 0) and (Dm1.tNotaEntradaIt.RecordCount < 1)) or
         ((PageControl2.ActivePageIndex = 1) and (Dm1.tNotaEntradaMObra.RecordCount < 1)) or
         ((PageControl2.ActivePageIndex = 2) and (Dm1.tNotaEntradaParc.RecordCount < 1)) then
        ShowMessage('Tabela Vazia!')
      else
      if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
        begin
          if PageControl2.ActivePageIndex = 0 then
            begin
              DM1.tNotaEntradaBASEICMS.AsFloat := DM1.tNotaEntradaBASEICMS.AsFloat - Dm1.tNotaEntradaItBASEICMS.AsFloat;
              DM1.tNotaEntradaVLRICMS.AsFloat  := DM1.tNotaEntradaVLRICMS.AsFloat - Dm1.tNotaEntradaItVLRICMS.AsFloat;
              DM1.tNotaEntradaBASEIPI.AsFloat  := DM1.tNotaEntradaBASEIPI.AsFloat - Dm1.tNotaEntradaItBASEIPI.AsFloat;
              DM1.tNotaEntradaVLRIPI.AsFloat   := DM1.tNotaEntradaVLRIPI.AsFloat - Dm1.tNotaEntradaItVLRIPI.AsFloat;
              Dm1.tNotaEntradaVLRTOTALITENS.AsFloat := Dm1.tNotaEntradaVLRTOTALITENS.AsFloat - Dm1.tNotaEntradaItVLRTOTAL.AsFloat;
              DM1.tNotaEntradaVLRTOTAL.AsFloat := DM1.tNotaEntradaVLRTOTAL.AsFloat - Dm1.tNotaEntradaItVLRTOTAL.AsFloat;
              Dm1.tNotaEntradaIt.Delete;
            end
          else
          if PageControl2.ActivePageIndex = 1 then
            Dm1.tNotaEntradaMObra.Delete
          else
          if PageControl2.ActivePageIndex = 2 then
            Dm1.tNotaEntradaParc.Delete;
        end;
    end;
end;

procedure TfNotaEntrada.StaticText3Click(Sender: TObject);
begin
  if BitBtn3.Enabled then
    begin
      if ((PageControl2.ActivePageIndex = 0) and (Dm1.tNotaEntradaIt.RecordCount < 1)) or
         ((PageControl2.ActivePageIndex = 1) and (Dm1.tNotaEntradaMObra.RecordCount < 1)) or
         ((PageControl2.ActivePageIndex = 2) and (Dm1.tNotaEntradaParc.RecordCount < 1)) then
        ShowMessage('Tabela Vazia!')
      else
        begin
          fNotaEntradaIt := TfNotaEntradaIt.Create(Self);
          if PageControl2.ActivePageIndex = 0 then
            fNotaEntradaIt.Tag := 12
          else
          if PageControl2.ActivePageIndex = 1 then
            fNotaEntradaIt.Tag := 22
          else
          if PageControl2.ActivePageIndex = 2 then
            fNotaEntradaIt.Tag := 32;
          fNotaEntradaIt.ShowModal;
        end;
    end;
end;

procedure TfNotaEntrada.JvDBGrid2DblClick(Sender: TObject);
begin
  if Dm1.tNotaEntradaIt.RecordCount < 1 then
    ShowMessage('Tabela Vazia!')
  else
    begin
      fNotaEntradaIt := TfNotaEntradaIt.Create(Self);
      fNotaEntradaIt.Tag := 13;
      fNotaEntradaIt.ShowModal;
    end;
end;

procedure TfNotaEntrada.DBCheckBox2Enter(Sender: TObject);
begin
  DBCheckBox2.ReadOnly := not(Dm1.tNotaEntradaIt.IsEmpty);
end;

procedure TfNotaEntrada.Label4Click(Sender: TObject);
begin
  qFornecedor.Close;
  fPessoa := TfPessoa.Create(Self);
  fPessoa.ShowModal;
  qFornecedor.Open;
end;

procedure TfNotaEntrada.Label7Click(Sender: TObject);
begin
  fNatOperacao := TfNatOperacao.Create(Self);
  fNatOperacao.ShowModal;
  DmCons.qNatOperacao.Close;
  DmCons.qNatOperacao.Open;
end;

procedure TfNotaEntrada.StaticText4Click(Sender: TObject);
begin
  if PageControl2.ActivePageIndex = 0 then
    JvDBGrid2DblClick(Sender)
  else
  if PageControl2.ActivePageIndex = 1 then
    JvDBGrid4DblClick(Sender)
  else
  if PageControl2.ActivePageIndex = 2 then
    JvDBGrid3DblClick(Sender);
end;

procedure TfNotaEntrada.JvDBGrid3DblClick(Sender: TObject);
begin
  if Dm1.tNotaEntradaParc.RecordCount < 1 then
    ShowMessage('Tabela Vazia!')
  else
    begin
      fNotaEntradaIt := TfNotaEntradaIt.Create(Self);
      fNotaEntradaIt.Tag := 33;
      fNotaEntradaIt.ShowModal;
    end;
end;

procedure TfNotaEntrada.JvDBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if BitBtn3.Enabled then
    begin
     if DM1.tNotaEntradaINFCONDPGTO.AsString = 'S' then
       begin
          if key = 45 then
            StaticText1Click(Sender)
          else
          if key = 46 then
            StaticText2Click(Sender)
          else
          if key = 13 then
            StaticText3Click(Sender);
       end
     else
       ShowMessage('Para informar duplicatas é preciso marcar a opção Informa Condição de Pagamento!');
    end;
end;

procedure TfNotaEntrada.DBEdit9Enter(Sender: TObject);
begin
  if Dm1.tNotaEntradaParc.RecordCount > 0 then
    DBEdit9.ReadOnly := True
  else
    DBEdit9.ReadOnly := False;
end;

procedure TfNotaEntrada.DBCheckBox1Enter(Sender: TObject);
begin
  DBCheckBox1.ReadOnly := not(Dm1.tNotaEntradaParc.IsEmpty);
end;

procedure TfNotaEntrada.JvDBGrid4DblClick(Sender: TObject);
begin
  if Dm1.tNotaEntradaMObra.RecordCount < 1 then
    ShowMessage('Tabela Vazia!')
  else
    begin
      fNotaEntradaIt := TfNotaEntradaIt.Create(Self);
      fNotaEntradaIt.Tag := 23;
      fNotaEntradaIt.ShowModal;
    end;
end;

procedure TfNotaEntrada.JvDBGrid4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if BitBtn3.Enabled then
    begin
      if key = 45 then
        StaticText1Click(Sender)
      else
      if key = 46 then
        StaticText2Click(Sender)
      else
      if key = 13 then
        StaticText3Click(Sender);
    end;
end;

procedure TfNotaEntrada.DBEdit1Exit(Sender: TObject);
begin
  if DM1.tNotaEntrada.State in [dsInsert] then
    DM1.tNotaEntradaNRODUPLICATA.AsInteger := DM1.tNotaEntradaNUMNOTA.AsInteger;
end;

procedure TfNotaEntrada.JvDBLookupCombo2Enter(Sender: TObject);
begin
  if Dm1.tNotaEntradaMObra.RecordCount > 0 then
    JvDBLookupCombo2.ReadOnly := True
  else
    JvDBLookupCombo2.ReadOnly := False;
end;

procedure TfNotaEntrada.DBCheckBox3Enter(Sender: TObject);
begin
  DBCheckBox3.ReadOnly := not(Dm1.tNotaEntradaIt.IsEmpty);
end;

procedure TfNotaEntrada.DBCheckBox4Enter(Sender: TObject);
begin
  DBCheckBox4.ReadOnly := not(Dm1.tNotaEntradaMObra.IsEmpty);
end;

procedure TfNotaEntrada.GroupBox1Exit(Sender: TObject);
begin
  PageControl2.SetFocus;
end;

procedure TfNotaEntrada.Label24Click(Sender: TObject);
begin
  fNatOperacao := TfNatOperacao.Create(Self);
  fNatOperacao.ShowModal;
  DmCons.qNatOperacao.Close;
  DmCons.qNatOperacao.Open;
end;

procedure TfNotaEntrada.Edit1Change(Sender: TObject);
var
 vSeparador : String;
begin
  DmCons.qNotaEntrada.Close;
  DmCons.NotaEntrada.SQL.Clear;
  DmCons.NotaEntrada.SQL.Add('Select NOTAENTRADA.*, PESSOA.NOME, NATOPERACAO.NOME NOMENATOPER, NATOPERACAO.CODIGO CODFISCALNATOPER');
  DmCons.NotaEntrada.SQL.Add('from NOTAENTRADA');
  DmCons.NotaEntrada.SQL.Add('inner join PESSOA on');
  DmCons.NotaEntrada.SQL.Add('(PESSOA.ID = NOTAENTRADA.CODFORNECEDOR)');
  DmCons.NotaEntrada.SQL.Add('inner join NATOPERACAO on');
  DmCons.NotaEntrada.SQL.Add('(NATOPERACAO.ID = NOTAENTRADA.CODNATOPER)');
  case JvComboBox1.ItemIndex of
    0 : DmCons.NotaEntrada.SQL.Add(' WHERE NOTAENTRADA.NUMNOTA LIKE ''%' + Edit1.Text + '%''');
    1 : DmCons.NotaEntrada.SQL.Add(' WHERE PESSOA.NOME LIKE ''%' + Edit1.Text + '%''');
    2 : begin
          vSeparador := 'WHERE';
          if (JvDateEdit1.Date > 1) then
            begin
              DmCons.NotaEntrada.SQL.Add(' WHERE NOTAENTRADA.DTEMISSAO >= :D1');
              DmCons.NotaEntrada.ParamByName('D1').AsDate := JvDateEdit1.Date;
              vSeparador := ' AND ';
            end;
          if (JvDateEdit2.Date > 1) then
            begin
              DmCons.NotaEntrada.SQL.Add(' WHERE NOTAENTRADA.DTEMISSAO <= :D2');
              DmCons.NotaEntrada.ParamByName('D2').AsDate := JvDateEdit2.Date;
            end;
        end;
    3 : begin
          vSeparador := 'WHERE';
          if (JvDateEdit1.Date > 1) then
            begin
              DmCons.NotaEntrada.SQL.Add(' WHERE NOTAENTRADA.DTENTRADA >= :D1');
              DmCons.NotaEntrada.ParamByName('D1').AsDate := JvDateEdit1.Date;
              vSeparador := ' AND ';
            end;
          if (JvDateEdit2.Date > 1) then
            begin
              DmCons.NotaEntrada.SQL.Add(' WHERE NOTAENTRADA.DTENTRADA <= :D2');
              DmCons.NotaEntrada.ParamByName('D2').AsDate := JvDateEdit2.Date;
            end;
        end;
  end;
  DmCons.qNotaEntrada.Open;
end;

procedure TfNotaEntrada.JvDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
begin
  DmCons.qNotaEntrada.IndexFieldNames := Column.FieldName;
  Column.Color := clInfoBK;
  for i := 0 to JvDBGrid1.Columns.Count - 1 do
    if not (JvDBGrid1.Columns.Items[I] = Column) then
      JvDBGrid1.Columns.Items[I].Color := clWhite;
end;

procedure TfNotaEntrada.JvComboBox1Enter(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TfNotaEntrada.JvComboBox1Change(Sender: TObject);
begin
  case JvComboBox1.ItemIndex of
    0,1 : begin
            Edit1.Visible := True;
            Label9.Caption := '';
            Label10.Caption := '';
            JvDateEdit1.Visible := False;
            JvDateEdit2.Visible := False;
          end;
    2,3 : begin
            Edit1.Visible := False;
            Label9.Caption := 'Data Inicial:';
            Label10.Caption := 'Data Final:';
            JvDateEdit1.Visible := True;
            JvDateEdit2.Visible := True;
          end;
  end;
end;

procedure TfNotaEntrada.JvBitBtn1Click(Sender: TObject);
begin
  qNotaEntradaImp.Close;
  NotaEntradaImp.Params[0].AsInteger := DmCons.qNotaEntradaNUMNOTA.AsInteger;
  NotaEntradaImp.Params[1].AsInteger := DmCons.qNotaEntradaCODFORNECEDOR.AsInteger;
  qNotaEntradaImp.Open;

  Dm1.tNotaEntradaIt.Close;
  Dm1.NotaEntradaIt.Params[0].AsInteger := qNotaEntradaImpNUMNOTA.AsInteger;
  Dm1.NotaEntradaIt.Params[1].AsInteger := qNotaEntradaImpCODFORNECEDOR.AsInteger;
  Dm1.tNotaEntradaIt.Open;

  Dm1.tNotaEntradaMObra.Close;
  Dm1.NotaEntradaMObra.Params[0].AsInteger := qNotaEntradaImpNUMNOTA.AsInteger;
  Dm1.NotaEntradaMObra.Params[1].AsInteger := qNotaEntradaImpCODFORNECEDOR.AsInteger;
  Dm1.tNotaEntradaMObra.Open;

  Dm1.tNotaEntradaParc.Close;
  Dm1.NotaEntradaParc.Params[0].AsInteger := qNotaEntradaImpNUMNOTA.AsInteger;
  Dm1.NotaEntradaParc.Params[1].AsInteger := qNotaEntradaImpCODFORNECEDOR.AsInteger;
  Dm1.tNotaEntradaParc.Open;

  fNotaEntradaRel := TfNotaEntradaRel.Create(Self);
  fNotaEntradaRel.RLReport2.Preview;
  fNotaEntradaRel.RLReport2.Free;
end;

end.
