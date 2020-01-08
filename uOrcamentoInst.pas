unit uOrcamentoInst;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB, Dialogs, StdCtrls, Mask, DBCtrls,
  Buttons, ExtCtrls, JvLookup, Grids, DBXpress, DBGrids, JvDBCtrl, JvDBComb, JvToolEdit, ComCtrls, rsDBUtils, uDM1;

type
  TfOrcamentoInst = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    Label4: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    JvDBDateEdit1: TJvDBDateEdit;
    JvDBDateEdit2: TJvDBDateEdit;
    JvDBComboBox1: TJvDBComboBox;
    JvDBDateEdit3: TJvDBDateEdit;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    JvDBGrid1: TJvDBGrid;
    TabSheet3: TTabSheet;
    Label7: TLabel;
    Label8: TLabel;
    JvDBComboBox3: TJvDBComboBox;
    Label9: TLabel;
    JvDBDateEdit4: TJvDBDateEdit;
    Label11: TLabel;
    JvDBDateEdit5: TJvDBDateEdit;
    Label12: TLabel;
    DBEdit3: TDBEdit;
    Label13: TLabel;
    DBEdit4: TDBEdit;
    Label14: TLabel;
    DBEdit5: TDBEdit;
    Label15: TLabel;
    DBMemo1: TDBMemo;
    Label17: TLabel;
    JvDBLookupCombo2: TJvDBLookupCombo;
    Label18: TLabel;
    DBEdit7: TDBEdit;
    JvDBLookupCombo3: TJvDBLookupCombo;
    Label22: TLabel;
    DBText1: TDBText;
    Label25: TLabel;
    DBEdit11: TDBEdit;
    Panel3: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label16: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit6: TDBEdit;
    Label26: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label19: TLabel;
    Label21: TLabel;
    DBEdit12: TDBEdit;
    Label24: TLabel;
    DBEdit13: TDBEdit;
    Label27: TLabel;
    DBEdit14: TDBEdit;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit15: TDBEdit;
    Label30: TLabel;
    JvDBLookupCombo4: TJvDBLookupCombo;
    Label31: TLabel;
    DBEdit16: TDBEdit;
    TabSheet5: TTabSheet;
    JvDBGrid3: TJvDBGrid;
    Panel5: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DBRichEdit1: TDBRichEdit;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    DBEdit18: TDBEdit;
    JvDBLookupCombo5: TJvDBLookupCombo;
    Label35: TLabel;
    DBEdit17: TDBEdit;
    DBEdit19: TDBEdit;
    Label36: TLabel;
    TabSheet6: TTabSheet;
    Panel6: TPanel;
    PageControl2: TPageControl;
    TabSheet7: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    Panel7: TPanel;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    JvDBGrid4: TJvDBGrid;
    Label37: TLabel;
    DBEdit20: TDBEdit;
    Shape1: TShape;
    Label38: TLabel;
    DBEdit21: TDBEdit;
    Label39: TLabel;
    DBEdit22: TDBEdit;
    BitBtn11: TBitBtn;
    SpeedButton1: TSpeedButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure JvDBLookupCombo3Enter(Sender: TObject);
    procedure JvDBLookupCombo3Exit(Sender: TObject);
    procedure JvDBComboBox3Exit(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure JvDBLookupCombo2CloseUp(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure JvDBGrid3DblClick(Sender: TObject);
    procedure Label33Click(Sender: TObject);
    procedure DBEdit8Enter(Sender: TObject);
    procedure JvDBLookupCombo2Enter(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    Fdm1: TDm1;
    { Private declarations }
    function calcOrcamento: Currency;
    procedure Calcula_Orcamento(Qtd: Integer);
  public
    property Dm1: Tdm1 read Fdm1 write Fdm1;
    { Public declarations }
  end;

var
  fOrcamentoInst: TfOrcamentoInst;

implementation

uses UDmCons, uOrcamentoProd, uOrcamentoClausula, uCidade, uOrcServ, uOrcamentoInstC, uPessoac;

{$R *.dfm}

procedure TfOrcamentoInst.Calcula_Orcamento(Qtd: Integer);
var
  vVlrFolha: Real;
  vVlr13: Real;
  vVlrEncargos: Real;
  vVlrFerias: Real;
  vAux: Real;
begin
  //Calular a folha
  vVlrFolha     := Qtd * Fdm1.tPedidoVLRFOLHA.AsFloat;

  vVlrEncargos  := StrToFloat(FormatFloat('0.00',(vVlrFolha * Fdm1.tParametroPERCFOLHA.AsFloat) / 100));

  vVlr13        := StrToFloat(FormatFloat('0.00',vVlrFolha / 12));
  vVlrEncargos  := StrToFloat(FormatFloat('0.00',vVlrEncargos + ((vVlr13 * Fdm1.tParametroPERCFOLHA.AsFloat) / 100)));

  vVlrFerias    := StrToFloat(FormatFloat('0.00',(vVlrFolha / 3) + vVlrFolha));
  vVlrFerias    := StrToFloat(FormatFloat('0.00',vVlrFerias / 12));
  vVlrEncargos  := StrToFloat(FormatFloat('0.00',vVlrEncargos + ((vVlrFerias * Fdm1.tParametroPERCFOLHA.AsFloat) / 100)));

  vVlrFolha     := vVlrFolha + vVlrEncargos + vVlr13 + vVlrFerias;

  vAux          := (Fdm1.tPedidoIMPOSTO.AsFloat + Fdm1.tPedidoLUCRO.AsFloat + 10);
  vAux          := 100 - vAux;
  vAux          := StrToFloat(FormatFloat('0.00',(vVlrFolha / vAux) * 100));
  Fdm1.tPedidoVLRSUGERIDO.AsFloat := vAux;
end;

procedure TfOrcamentoInst.BitBtn2Click(Sender: TObject);
begin
  if Fdm1.tPedido.State in [dsInsert] then
  begin
    while not Fdm1.tPedidoServicoPermanente.IsEmpty do
    begin
      Fdm1.tPedidoServicoPermanente.Delete;
      Fdm1.tPedidoServicoPermanente.ApplyUpdates(0);
    end;
    while not Fdm1.tPedidoIt.IsEmpty do
    begin
      Fdm1.tPedidoIt.Delete;
      Fdm1.tPedidoIt.ApplyUpdates(0);
    end;
  end;

  if Fdm1.tPedido.State in[dsInsert, dsEdit] then
    Fdm1.tPedido.Cancel;

  Close;
end;

procedure TfOrcamentoInst.BitBtn1Click(Sender: TObject);
var
  TD: TTransactionDesc;
  vId: Integer;
  vDelta1,
  vDelta2,
  vDelta3,
  vDelta4,
  vDelta5: OleVariant;

  iflag: Integer;

  sBookMark1,
  sBookMark2,
  sBookMark3,
  sBookMark4,
  sBookMark5: string;

  vAux, vAux2: Real;

begin
  if Fdm1.tPedidoCLIENTE_NOME.IsNull then
  begin
    PageControl1.ActivePageIndex := 0;
    ShowMessage('Cliente deve ser preenchido!');
    JvDBLookupCombo2.SetFocus;
    Exit;
  end;
  if Fdm1.tPedidoTIPO.AsString = '2' then
  begin
    if Fdm1.tPedidoServicoSERVICOAVULSO_ID.IsNull then
    begin
      ShowMessage('Tipo do evento deve ser preenchido!');
      PageControl1.ActivePageIndex := 1;
      JvDBComboBox3.SetFocus;
      Exit;
    end;
    if Fdm1.tPedidoServicoVALORSERVICO.IsNull then
    begin
      ShowMessage('Valor do serviço deve ser preenchido!');
      PageControl1.ActivePageIndex := 1;
      DBEdit11.SetFocus;
      Exit;
    end;
  end;
  if Fdm1.tPedidoTIPO.AsString = '3' then
    if Fdm1.tPedidoServicoDURACAO.IsNull then
    begin
      ShowMessage('Duração (em meses) deve ser preenchida!');
      PageControl1.ActivePageIndex := 2;
      Exit;
    end;

  try
    if Fdm1.tPedido.State in [dsInsert] then
    begin
      Fdm1.tPedidoNUMLACTO.AsInteger     := Fdm1.Incrementa('NUMLACTO','PEDIDO');
      Fdm1.tPedidoNUMORCAMENTO.AsInteger := Fdm1.Incrementa('NUMORCAMENTO','PEDIDO');
      Fdm1.tPedidoNOME.AsString := JvDBLookupCombo2.Text;
      Fdm1.tPedidoFORMA_PGTO.AsString := JvDBLookupCombo4.Text;
      Fdm1.tPedidoCONDPGTO.AsString   := JvDBLookupCombo1.Text;
    end;
    Fdm1.tPedidoVLRLUCRO.AsFloat := 0;
    Fdm1.qInc.SQL.Text := 'SELECT MAX(ITEM) ULT FROM PEDIDOIT WHERE NUMLACTO = ' + Fdm1.tPedidoNUMLACTO.AsString;
    Fdm1.qInc.Open;
    vId := Fdm1.qInc.FieldByName('ULT').AsInteger;
    Fdm1.qInc.Close;

    DmCons.qProduto.Open;
    vAux := 0;

    Fdm1.tPedidoIt.Last;
    while not Fdm1.tPedidoIt.Bof do
    begin
      Fdm1.tPedidoIt.Edit;
      Fdm1.tPedidoItNUMLACTO.AsInteger := Fdm1.tPedidoNUMLACTO.AsInteger;
      if Fdm1.tPedidoItITEM.AsInteger = 0 then
      begin
        inc(vId);
        Fdm1.tPedidoItITEM.AsInteger := vId;
      end;
      if DmCons.qProduto.Locate('ID',Fdm1.tPedidoItCODPRODUTO.AsInteger,([locaseinsensitive])) then
        begin
          vAux  := StrToFloat(FormatFloat('0.00',DmCons.qProdutoPRECOCUSTO.AsFloat * Fdm1.tPedidoItQTD.AsFloat));
          vAux2 := StrToFloat(FormatFloat('0.00',Fdm1.tPedidoItQTD.AsFloat * Fdm1.tPedidoItVLRUNITARIO.AsFloat));
          Fdm1.tPedidoVLRLUCRO.AsFloat := StrToFloat(FormatFloat('0.00',Fdm1.tPedidoVLRLUCRO.AsFloat + (vAux2 - vAux)));
        end;
      Fdm1.tPedidoIt.Post;
      Fdm1.tPedidoIt.Prior;
    end;

    Fdm1.tPedidoServicoPermanente.Last;
    while not Fdm1.tPedidoServicoPermanente.Bof do
    begin
      Fdm1.tPedidoServicoPermanente.Edit;
      Fdm1.tPedidoServicoPermanentePEDIDO_ID.AsInteger := Fdm1.tPedidoNUMLACTO.AsInteger;
      Fdm1.tPedidoServicoPermanente.Post;
      Fdm1.tPedidoServicoPermanente.Prior;
    end;

    Fdm1.tPedido_Clausula.Last;
    while not Fdm1.tPedido_Clausula.Bof do
    begin
      Fdm1.tPedido_Clausula.Edit;
      Fdm1.tPedido_ClausulaPEDIDO_ID.AsInteger := Fdm1.tPedidoNUMLACTO.AsInteger;
      Fdm1.tPedido_Clausula.Post;
      Fdm1.tPedido_Clausula.Prior;
    end;

    if Fdm1.tPedidoServico.State in [dsEdit,dsInsert] then
      begin
        Fdm1.tPedidoServicoPEDIDO_ID.AsInteger := Fdm1.tPedidoNUMLACTO.AsInteger;
        if Fdm1.tPedidoTIPO.AsString = '2' then
          begin
            Fdm1.tPedidoServicoITEM.AsInteger := 1;
            Fdm1.tPedidoServicoSERVICO_ID.AsInteger :=  Fdm1.tPedidoServicoSERVICOAVULSO_ID.AsInteger;
          end
        else
          begin
            if not fOrcamentoInstC.vAltera then
              Fdm1.tPedidoServicoITEM.AsInteger := 1;
          end;
        Fdm1.tPedidoServicoPEDIDO_ID.AsInteger;
        Fdm1.tPedidoServicoDURACAO.AsInteger;
        Fdm1.tPedidoServico.Post;
      end
    else
      begin
        Fdm1.tPedidoServico.Last;
        while not Fdm1.tPedidoServico.Bof do
        begin
          Fdm1.tPedidoServico.Edit;
          Fdm1.tPedidoServicoPEDIDO_ID.AsInteger := Fdm1.tPedidoNUMLACTO.AsInteger;
          Fdm1.tPedidoServico.Post;
          Fdm1.tPedidoServico.Prior;
        end;
      end;
    Fdm1.tPedido.Post;

    TD.TransactionID  := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    Fdm1.Conexao.StartTransaction(TD);

    sBookMark1 := Fdm1.tPedido.Bookmark;
    sBookMark2 := Fdm1.tPedidoIt.Bookmark;
    sBookMark3 := Fdm1.tPedidoServico.Bookmark;
    sBookMark4 := Fdm1.tPedidoServicoPermanente.Bookmark;
    sBookMark5 := Fdm1.tPedido_Clausula.Bookmark;

    vDelta1 := Fdm1.tPedido.Data;
    vDelta2 := Fdm1.tPedidoIt.Data;
    vDelta3 := Fdm1.tPedidoServico.Data;
    vDelta4 := Fdm1.tPedidoServicoPermanente.Data;
    vDelta5 := Fdm1.tPedido_Clausula.Data;

    iflag := 1;

    if Fdm1.tPedido.ChangeCount > 0 then
      Fdm1.tPedido.ApplyUpdates(0);
    iflag := 2;
    if Fdm1.tPedidoIt.ChangeCount > 0 then
      Fdm1.tPedidoIt.ApplyUpdates(0);
    iflag := 3;
    if Fdm1.tPedidoServico.ChangeCount > 0 then
      Fdm1.tPedidoServico.ApplyUpdates(0);
    iflag := 4;
    if Fdm1.tPedidoServicoPermanente.ChangeCount > 0 then
      Fdm1.tPedidoServicoPermanente.ApplyUpdates(0);
    iflag := 5;
    if Fdm1.tPedido_Clausula.ChangeCount > 0 then
      Fdm1.tPedido_Clausula.ApplyUpdates(0);

    Fdm1.Conexao.Commit(TD);

    Fdm1.tPedido.Edit;
    Fdm1.tPedidoVLRTOTAL.AsCurrency := calcOrcamento;
    Fdm1.tPedido.Post;
    Fdm1.tPedido.ApplyUpdates(0);


    //Close;

    fOrcamentoInstC.vNumOrcamento := Fdm1.tPedidoNUMLACTO.AsInteger;
    fOrcamentoInstC.vAltera := True;
    Fdm1.tPedido.Edit;
    JvDBComboBox3.Enabled := False;

  except
    on E:Exception do
    begin
      if iflag = 2 then
        Fdm1.tPedido.Data  := vDelta1;
      if iflag = 3 then
        begin
          Fdm1.tPedido.Data  := vDelta1;
          Fdm1.tPedidoIt.Data  := vDelta2;
        end;
      if iflag = 4 then
        begin
          Fdm1.tPedido.Data         := vDelta1;
          Fdm1.tPedidoIt.Data       := vDelta2;
          Fdm1.tPedidoServico.Data  := vDelta3;
        end;
      if iflag = 5 then
        begin
          Fdm1.tPedido.Data         := vDelta1;
          Fdm1.tPedidoIt.Data       := vDelta2;
          Fdm1.tPedidoServico.Data  := vDelta3;
          Fdm1.tPedidoServicoPermanente.Data  := vDelta4;
        end;

      Fdm1.tPedido.Bookmark                   := sBookMark1;
      Fdm1.tPedidoIt.Bookmark                 := sBookMark2;
      Fdm1.tPedidoServico.Bookmark            := sBookMark3;
      Fdm1.tPedidoServicoPermanente.Bookmark  := sBookMark4;
      Fdm1.tPedido_Clausula.Bookmark          := sBookMark5;

      Fdm1.Conexao.Rollback(TD);
      ShowMessage('Erro ao tentar gravar o registro: ' + E.Message);
    end;
  end;
end;

procedure TfOrcamentoInst.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.tPedido.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk:
        begin
          BitBtn1.Click;
          if Fdm1.tPedido.State in [dsBrowse] then
            CanClose := True;
        end;
      mrNo:
        begin
          BitBtn2.Click;
          CanClose := true;
        end;
    end;
  end
  else
    CanClose := True;
end;

procedure TfOrcamentoInst.BitBtn3Click(Sender: TObject);
begin
  fOrcamentoProd := TfOrcamentoProd.Create(Self);
  fOrcamentoProd.Dm1 := Fdm1;
  Fdm1.tPedidoIt.Insert;
  Fdm1.tPedidoItNUMLACTO.AsInteger := Fdm1.tPedidoNUMLACTO.AsInteger;
  Fdm1.tPedidoItQTD.AsInteger      := 1;
  fOrcamentoProd.ShowModal;
  fOrcamentoProd.Free;
  DBEdit11Exit(Sender);
end;

procedure TfOrcamentoInst.FormShow(Sender: TObject);
begin

  oDBUtils.SetDataSourceProperties(Self, fdm1);

  DmCons.qPessoa.Filtered := False;
  DmCons.qPessoa.Filter   := 'CLIENTE = ''1''';
  DmCons.qPessoa.Filtered := True;
  DmCons.qPessoa.IndexFieldNames := 'NOME';
  DmCons.qPessoa.Open;

  DmCons.qCondPgto.Open;
  Fdm1.tFormaPgto.IndexFieldNames := 'DESCRICAO';
  Fdm1.tFormaPgto.Open;

  Fdm1.tCidade.Open;

  Fdm1.tServico.Close;
  Fdm1.tServico.IndexFieldNames := 'NOME';
  Fdm1.tServico.Open;

  Fdm1.tPedidoServico.Close;
  Fdm1.PedidoServico.ParamByName('I1').AsInteger := Fdm1.tPedidoNUMLACTO.AsInteger;
  Fdm1.tPedidoServico.Open;

  Fdm1.tPedido_Clausula.Close;
  Fdm1.Pedido_Clausula.ParamByName('I1').AsInteger := Fdm1.tPedidoNUMLACTO.AsInteger;
  Fdm1.tPedido_Clausula.Open;

  Fdm1.tPedidoServicoPermanente.Close;
  Fdm1.PedidoServicoPermanente.ParamByName('P1').AsInteger := Fdm1.tPedidoNUMLACTO.AsInteger;
  Fdm1.tPedidoServicoPermanente.Open;

  Fdm1.tPedidoIt.Close;
  Fdm1.PedidoIt.ParamByName('P1').AsInteger := Fdm1.tPedidoNUMLACTO.AsInteger;
  Fdm1.tPedidoIt.Open;

  if not Fdm1.tPedidoTIPO.IsNull then
    JvDBComboBox3Exit(Sender);
  PageControl1.ActivePageIndex := 0;
  Fdm1.tParametro.Open;
end;

procedure TfOrcamentoInst.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fdm1.tCidade.Close;
  Fdm1.tFormaPgto.Close;
  DmCons.qPessoa.Close;
  DmCons.qPessoa.Filtered := False;
  DmCons.qPessoa.Filter   := '';
  DmCons.qCondPgto.Close;
  DmCons.qProduto.Close;
  Fdm1.tPedido_Clausula.Close;
  Fdm1.tServico.Close;
  Fdm1.tPedidoServicoPermanente.Close;
  Fdm1.tPedidoServico.Close;
  Fdm1.tPedidoIt.Close;
  Fdm1.tParametro.Close;
end;

function TfOrcamentoInst.calcOrcamento: Currency;
begin
  result := 0;
  if Fdm1.tPedidoVLRMO.AsCurrency = 0 then
  begin
    Fdm1.qInc.Close;
    Fdm1.qInc.SQL.Text := 'SELECT SUM(VLRMO) TOTAL FROM PEDIDOIT WHERE NUMLACTO = ' + Fdm1.tPedidoNUMLACTO.AsString;
    Fdm1.qInc.Open;
    Fdm1.tPedidoVLRMO.AsCurrency := Fdm1.qInc.FieldByName('TOTAL').AsCurrency;
  end;
  Fdm1.qInc.Close;
  Fdm1.qInc.SQL.Text := 'SELECT SUM(VLRUNITARIO * QTD) TOTAL FROM PEDIDOIT WHERE NUMLACTO = ' + Fdm1.tPedidoNUMLACTO.AsString;
  Fdm1.qInc.Open;
  result := Fdm1.qInc.FieldByName('TOTAL').AsCurrency;
  Fdm1.qInc.Close;
  Fdm1.qInc.SQL.Text := 'SELECT SUM(VLR) TOTAL FROM PEDIDOSERVPERMANENTE WHERE PEDIDO_ID = ' + Fdm1.tPedidoNUMLACTO.AsString;
  Fdm1.qInc.Open;
  result := result + Fdm1.qInc.FieldByName('TOTAL').AsCurrency;
  Fdm1.qInc.Close;
  Fdm1.qInc.Close;
  Fdm1.qInc.SQL.Text := 'SELECT SUM(VALORMES) TOTAL FROM PEDIDOSERVICO WHERE PEDIDO_ID = ' + Fdm1.tPedidoNUMLACTO.AsString;
  Fdm1.qInc.Open;
  result := result + Fdm1.qInc.FieldByName('TOTAL').AsCurrency;
  Fdm1.qInc.Close;
  result := result + Fdm1.tPedidoServicoVALORSERVICO.AsCurrency;
  result := result + Fdm1.tPedidoVLRMO.AsCurrency;
  if Fdm1.tPedidoLUCRO.AsCurrency > 0 then
    result := result * ((100 + Fdm1.tPedidoLUCRO.AsCurrency) / 100);
  if Fdm1.tPedidoIMPOSTO.AsCurrency > 0 then
    result := result * ((100 + Fdm1.tPedidoIMPOSTO.AsCurrency) / 100);
  if Fdm1.tPedidoPERCDESCONTO.AsCurrency > 0 then
  begin
    Fdm1.tPedidoVLRDESCONTO.AsCurrency := result * (Fdm1.tPedidoPERCDESCONTO.AsCurrency / 100);
    result := result * ((100 - Fdm1.tPedidoPERCDESCONTO.AsCurrency) / 100);
  end;
end;

procedure TfOrcamentoInst.JvDBLookupCombo3Enter(Sender: TObject);
begin
  Fdm1.tServico.Filtered := False;
  Fdm1.tServico.Filter   := 'AVULSO = ''1''';
  Fdm1.tServico.Filtered := True;
end;

procedure TfOrcamentoInst.JvDBLookupCombo3Exit(Sender: TObject);
begin
  Fdm1.tServico.Filtered := False;
end;

procedure TfOrcamentoInst.JvDBComboBox3Exit(Sender: TObject);
begin
  case Fdm1.tPedidoTIPO.AsInteger of
    1: begin
         TabSheet2.TabVisible := True;
         TabSheet3.TabVisible := False;
         TabSheet6.TabVisible := False;
       end;
    2: begin
         TabSheet2.TabVisible := False;
         TabSheet3.TabVisible := True;
         TabSheet6.TabVisible := False;
         if Fdm1.tPedido.State in [dsInsert] then
         begin
           Fdm1.tPedidoLUCRO.AsCurrency := Fdm1.tParametroPERCMINIMO.AsCurrency;
           Fdm1.tPedidoServico.Insert;
           Fdm1.tPedidoServicoEFETIVO.AsInteger := 1;
         end;
       end;
    3: begin
         TabSheet2.TabVisible := False;
         TabSheet3.TabVisible := False;
         TabSheet6.TabVisible := False;
         if Fdm1.tPedido.State in [dsInsert] then
           Fdm1.tPedidoLUCRO.AsCurrency := Fdm1.tParametroPERCMINIMO.AsCurrency;
       end;
    4, 5: begin
         TabSheet2.TabVisible := True;
         TabSheet3.TabVisible := False;
         TabSheet5.TabVisible := False;
         TabSheet6.TabVisible := True;
       end;
  end;
end;

procedure TfOrcamentoInst.JvDBGrid1DblClick(Sender: TObject);
begin
  if not Fdm1.tPedidoIt.IsEmpty then
  begin
    fOrcamentoProd := TfOrcamentoProd.Create(Self);
    
    fOrcamentoProd.Dm1 := Fdm1;

    Fdm1.tPedidoIt.Edit;
    fOrcamentoProd.ShowModal;
    fOrcamentoProd.Free;
    Fdm1.tPedidoVLRTOTAL.AsCurrency := calcOrcamento;
  end;
end;

procedure TfOrcamentoInst.DBEdit11Exit(Sender: TObject);
begin
   Fdm1.tPedidoVLRTOTAL.AsCurrency := calcOrcamento;
end;

procedure TfOrcamentoInst.BitBtn6Click(Sender: TObject);
begin
  if not Fdm1.tPedidoServicoPermanente.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbOk,mbNo],0) = mrOk then
      Fdm1.tPedidoServicoPermanente.Delete;
  Fdm1.tPedidoVLRTOTAL.AsCurrency := calcOrcamento;
end;

procedure TfOrcamentoInst.BitBtn4Click(Sender: TObject);
begin
  if not Fdm1.tPedidoIt.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbOk,mbNo],0) = mrOk then
      Fdm1.tPedidoIt.Delete;
  Fdm1.tPedidoVLRTOTAL.AsCurrency := calcOrcamento;
end;

procedure TfOrcamentoInst.JvDBLookupCombo2CloseUp(Sender: TObject);
begin
  if (JvDBLookupCombo2.Text <> '') and (JvDBLookupCombo2.Text <> DBEdit8.Text) then
  begin
    Fdm1.tPedidoCLIENTE_NOME.AsString := JvDBLookupCombo2.Text;
    Fdm1.tPedidoCLIENTE_FONE.AsString := DmCons.qPessoaFONE.AsString;
    Fdm1.tPedidoENDERECO.AsString     := DmCons.qPessoaENDERECO.AsString;
    Fdm1.tPedidoCIDADE_ID.AsInteger   := DmCons.qPessoaCIDADE.AsInteger;
    Fdm1.tPedidoENDERECO_COMPL.AsString := dmCons.qPessoaENDCOMPLEMENTO.AsString;
    Fdm1.tPedidoENDERECO_NUM.AsString   := DmCons.qPessoaENDNUMERO.AsString;
  end;
end;

procedure TfOrcamentoInst.DBEdit5Exit(Sender: TObject);
var
  custo: Currency;
begin
  //Fdm1.tParametro.Open;  14/01/2008
  Fdm1.qInc.Close;
  Fdm1.qInc.SQL.Text := 'SELECT SUM(VALOR) SOMA ' +
                       'FROM CUSTO_HOMEM ' +
                       'WHERE PERCENTUAL = ''1''' +
                       'AND PERIODICIDADE = ''1'''; //custo percentual mensal
  Fdm1.qInc.Open;
  custo := Fdm1.qInc.FieldByName('SOMA').AsCurrency;
  Fdm1.qInc.Close;
  Fdm1.qInc.SQL.Text := 'SELECT SUM(VALOR) SOMA ' +
                       'FROM CUSTO_HOMEM ' +
                       'WHERE PERCENTUAL = ''1''' +
                       'AND PERIODICIDADE = ''2'''; //custo percentual anual
  Fdm1.qInc.Open;
  custo := custo + Fdm1.qInc.FieldByName('SOMA').AsCurrency / 12;
  Fdm1.tPedidoServicoVALORSERVICO.AsCurrency := Fdm1.tParametroVLRHOMEMHR.AsCurrency *
                                               Fdm1.tPedidoServicoDURACAO.AsCurrency *
                                               Fdm1.tPedidoServicoEFETIVO.AsCurrency;
  Fdm1.tPedidoServicoVALORSERVICO.AsCurrency := Fdm1.tPedidoServicoVALORSERVICO.AsCurrency *
                                                (1 + custo / 100);
  Fdm1.qInc.Close;
  Fdm1.qInc.SQL.Text := 'SELECT SUM(VALOR) SOMA ' +
                       'FROM CUSTO_HOMEM ' +
                       'WHERE PERCENTUAL = ''0''' +
                       'AND PERIODICIDADE = ''1'''; //custo mensal
  Fdm1.qInc.Open;
  custo := Fdm1.qInc.FieldByName('SOMA').AsCurrency;
  Fdm1.tPedidoServicoVALORSERVICO.AsCurrency := Fdm1.tPedidoServicoVALORSERVICO.AsCurrency +
                                                custo * Fdm1.tPedidoServicoEFETIVO.AsCurrency *
                                                Fdm1.tPedidoServicoDURACAO.AsCurrency;
  Fdm1.qInc.Close;
  Fdm1.qInc.SQL.Text := 'SELECT SUM(VALOR) SOMA ' +
                       'FROM CUSTO_HOMEM ' +
                       'WHERE PERCENTUAL = ''0''' +
                       'AND PERIODICIDADE = ''2'''; //custo anual
  Fdm1.qInc.Open;
  custo := Fdm1.qInc.FieldByName('SOMA').AsCurrency / 12;
  Fdm1.tPedidoServicoVALORSERVICO.AsCurrency := Fdm1.tPedidoServicoVALORSERVICO.AsCurrency +
                                              custo * Fdm1.tPedidoServicoEFETIVO.AsCurrency *
                                              Fdm1.tPedidoServicoDURACAO.AsCurrency;
  Fdm1.qInc.Open;
  //Fdm1.tParametro.Close; 14/01/2008
end;

procedure TfOrcamentoInst.BitBtn8Click(Sender: TObject);
begin
  if not Fdm1.tPedido_Clausula.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbOk,mbNo],0) = mrOk then
      Fdm1.tPedido_Clausula.Delete;
end;

procedure TfOrcamentoInst.BitBtn7Click(Sender: TObject);
begin
  fOrcamentoClausula := TfOrcamentoClausula.Create(Self);
  
  fOrcamentoClausula.Dm1 := Fdm1;

  Fdm1.tPedido_Clausula.Insert;
  Fdm1.tPedido_ClausulaPEDIDO_ID.AsInteger := Fdm1.tPedidoNUMLACTO.AsInteger;
  fOrcamentoClausula.ShowModal;
  fOrcamentoClausula.Free;
end;

procedure TfOrcamentoInst.JvDBGrid3DblClick(Sender: TObject);
begin
  if not Fdm1.tPedido_Clausula.IsEmpty then
  begin
    fOrcamentoClausula := TfOrcamentoClausula.Create(Self);

    fOrcamentoClausula.Dm1 := Fdm1;

    Fdm1.tPedido_Clausula.Edit;
    fOrcamentoClausula.ShowModal;
    fOrcamentoClausula.Free;
  end;
end;

procedure TfOrcamentoInst.Label33Click(Sender: TObject);
begin
  Fdm1.tCidade.Insert;
  fCidade := TfCidade.Create(Self);

  fCidade.Dm1 := Fdm1;

  fCidade.ShowModal;
  Fdm1.tCidade.Close;
  Fdm1.tCidade.Open;
end;

procedure TfOrcamentoInst.DBEdit8Enter(Sender: TObject);
begin
  JvDBComboBox3.Enabled := False;
end;

procedure TfOrcamentoInst.JvDBLookupCombo2Enter(Sender: TObject);
begin
  JvDBComboBox3.Enabled := False;
end;

procedure TfOrcamentoInst.BitBtn9Click(Sender: TObject);
begin
  fOrcServ := TfOrcServ.Create(Self);

  fOrcServ.Dm1 := Fdm1;

  Fdm1.tPedidoServico.Insert;
  Fdm1.tPedidoServicoPEDIDO_ID.AsInteger := Fdm1.tPedidoNUMLACTO.AsInteger;
  Fdm1.tPedidoServicoITEM.AsInteger      := Fdm1.tPedidoServico.RecordCount + 1;
  fOrcServ.ShowModal;
  fOrcServ.Free;
end;

procedure TfOrcamentoInst.BitBtn11Click(Sender: TObject);
var
  vQtd: Integer;
begin
  if (Fdm1.tPedidoVLRFOLHA.AsFloat <= 0) or (Fdm1.tParametroPERCFOLHA.AsFloat <= 0) then
    exit;
  if (Fdm1.tPedidoTIPO.AsString <> '2') and (Fdm1.tPedidoTIPO.AsString <> '3') then
    exit;
  vQtd := 0;
  if (Fdm1.tPedidoTIPO.AsString = '2') and (Fdm1.tPedidoServicoEFETIVO.AsInteger > 0) then
    vQtd := Fdm1.tPedidoServicoEFETIVO.AsInteger
  else
  if Fdm1.tPedidoTIPO.AsString = '3' then
    begin
      Fdm1.tPedidoServicoPermanente.First;
      while not Fdm1.tPedidoServicoPermanente.Eof do
        begin
          vQtd := vQtd + Fdm1.tPedidoServicoPermanenteQTD.AsInteger;
          Fdm1.tPedidoServicoPermanente.Next;
        end;
    end;
  if vQtd > 0 then
    Calcula_Orcamento(vQtd)
  else
    ShowMessage('É obrigatório informar os campo <Vlr.Folha>, <Efetivo> e o <% Encargos>!');
end;

procedure TfOrcamentoInst.SpeedButton1Click(Sender: TObject);
begin
  fPessoaC := TfPessoaC.Create(Self);
  fPessoaC.ShowModal;
  JvDBLookupCombo2.LookupSource.DataSet.Close;
  JvDBLookupCombo2.LookupSource.DataSet.Open;
  fPessoaC.Free;
end;

end.
