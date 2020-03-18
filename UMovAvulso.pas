unit UMovAvulso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvDBCtrl, ExtCtrls, ComCtrls, StdCtrls, Buttons,
  JvLookup, DBCtrls, Mask, DB, FMTBcd, SqlExpr, JvToolEdit, JvCurrEdit, DBXpress,
  DBClient, Provider, JvCombobox, JvxCtrls, SMDBGrid, UDm1, rsDBUtils;

type
  TfMovAvulso = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    PageControl2: TPageControl;
    TSProdutos: TTabSheet;
    JvDBGrid2: TJvDBGrid;
    TSDuplicatas: TTabSheet;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    Panel7: TPanel;
    Label35: TLabel;
    JvDBLookupCombo6: TJvDBLookupCombo;
    BitBtn7: TBitBtn;
    JvComboBox1: TJvComboBox;
    Label12: TLabel;
    JvDateEdit1: TJvDateEdit;
    Label13: TLabel;
    JvDateEdit2: TJvDateEdit;
    Edit1: TEdit;
    Label5: TLabel;
    JvDBDateEdit2: TJvDBDateEdit;
    Label4: TLabel;
    JvDBLookupCombo4: TJvDBLookupCombo;
    SMDBGrid1: TSMDBGrid;
    TabSheet3: TTabSheet;
    Cliente: TSQLQuery;
    ClienteP: TDataSetProvider;
    qCliente: TClientDataSet;
    qsCliente: TDataSource;
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
    qClienteOBSERVACAO: TMemoField;
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
    qClienteSTATUS: TStringField;
    qClienteDTCONTRATOINI: TDateField;
    qClienteDTCONTRATOFIM: TDateField;
    qClienteCONTRATODEVOLVIDO: TDateField;
    qClienteCOBENDERECO: TStringField;
    qClienteCOBNUMERO: TIntegerField;
    qClienteCOBCOMPLEMENTO: TStringField;
    qClienteCOBBAIRRO: TStringField;
    qClienteCOBCIDADE: TIntegerField;
    qClienteCOBUF: TStringField;
    qClienteCOBCONTATO: TStringField;
    qClienteENDNUMERO: TIntegerField;
    qClienteENDCOMPLEMENTO: TStringField;
    qClienteIDUSUARIO: TIntegerField;
    qClienteCODBANCO: TIntegerField;
    qClienteAGENCIA: TStringField;
    qClienteNUMCONTACORRENTE: TStringField;
    qClienteLOGIN: TStringField;
    qClienteSENHA: TStringField;
    qClienteDIAPAGAMENTO: TIntegerField;
    qClienteCODVENDEDOR: TIntegerField;
    qClienteFORMAPGTO: TIntegerField;
    qClienteEMAIL: TStringField;
    qClienteHOMEPAGE: TStringField;
    qClienteSELECIONADO: TStringField;
    qClienteCONJUGE: TStringField;
    qClienteDTNASCIMENTO: TDateField;
    qClienteCEL: TStringField;
    qClientePLANOSAUDE_ID: TIntegerField;
    qClienteCOBCEP: TStringField;
    qClienteVLRPGTO: TFloatField;
    mDados: TClientDataSet;
    StaticText5: TStaticText;
    DBEdit3: TDBEdit;
    JvDBGrid3: TJvDBGrid;
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
    procedure StaticText1Click(Sender: TObject);
    procedure StaticText2Click(Sender: TObject);
    procedure StaticText3Click(Sender: TObject);
    procedure JvDBGrid2DblClick(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure StaticText4Click(Sender: TObject);
    procedure JvDBGrid3DblClick(Sender: TObject);
    procedure JvDBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvDBGrid4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GroupBox1Exit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure Label35Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure JvComboBox1Change(Sender: TObject);
    procedure JvComboBox1Enter(Sender: TObject);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
//    vEstoque : Boolean;
    Fdm1: TDm1;
    procedure Habilita;
    procedure Consulta;
    procedure Atualiza;
  public
    { Public declarations }
  end;

var
  fMovAvulso: TfMovAvulso;
  vGeraDuplMObra : String;
  vVlrDesconto : Real;

implementation

uses UDmCons, Math, UPessoa, UCondPgto,
  StdConvs, UTipoCobranca, UProdutoIt, UNatOperacao,
  UMovAvulsoIt, uPessoac;

{$R *.dfm}

procedure TfMovAvulso.Atualiza;
begin
  if Fdm1.tMovAvulso.State in [dsInactive,dsBrowse] then
    begin
      Fdm1.tMovAvulso.Close;
      Fdm1.tMovAvulsoItens.Close;
      Fdm1.tMovAvulsoParc.Close;
      if BitBtn1.Tag = 1 then
        begin
          Fdm1.MovAvulso.ParamByName('Codigo').AsInteger      := 0;
          Fdm1.MovAvulsoItens.ParamByName('Codigo').AsInteger    := 0;
          Fdm1.MovAvulsoParc.ParamByName('Codigo').AsInteger  := 0;
        end
      else
        begin
          Fdm1.MovAvulso.ParamByName('Codigo').AsInteger      := DmCons.qMovAvulsoCODIGO.AsInteger;
          Fdm1.MovAvulsoItens.ParamByName('Codigo').AsInteger := DmCons.qMovAvulsoCODIGO.AsInteger;
          Fdm1.MovAvulsoParc.ParamByName('Codigo').AsInteger  := DmCons.qMovAvulsoCODIGO.AsInteger;
        end;
      Fdm1.tMovAvulso.Open;
      Fdm1.tMovAvulsoItens.Open;
      Fdm1.tMovAvulsoParc.Open;
    end;
end;

procedure TfMovAvulso.Consulta;
begin
  DmCons.qMovAvulso.Close;
  DmCons.MovAvulso.SQL.Clear;
  DmCons.MovAvulso.SQL.Add('Select MOVAVULSO.*, PESSOA.NOME NOMECLIENTE');
  DmCons.MovAvulso.SQL.Add('from MOVAVULSO');
  DmCons.MovAvulso.SQL.Add('inner join PESSOA on');
  DmCons.MovAvulso.SQL.Add('(PESSOA.ID = MOVAVULSO.CODCLIENTE)');
  DmCons.qMovAvulso.Open;
end;

procedure TfMovAvulso.Habilita;
begin
  Panel3.Enabled  := not Panel3.Enabled;
  Panel7.Enabled  := not Panel7.Enabled;
  BitBtn1.Enabled := not BitBtn1.Enabled;
  BitBtn2.Enabled := not BitBtn2.Enabled;
  BitBtn3.Enabled := not BitBtn3.Enabled;
  BitBtn4.Enabled := not BitBtn4.Enabled;
  BitBtn5.Enabled := not BitBtn5.Enabled;
  TabSheet1.TabVisible := not TabSheet1.TabVisible;
end;

procedure TfMovAvulso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Fdm1.tMovAvulso.Close;
  Fdm1.tMovAvulsoItens.Close;
  Fdm1.tMovAvulsoParc.Close;
  DmCons.qMovAvulso.Close;
  DmCons.qCondPgto.Close;
  DmCons.qTipoCobranca.Close;
  qCliente.Close;
  Action := Cafree;
end;

procedure TfMovAvulso.BitBtn1Click(Sender: TObject);
begin
//  tNotaFiscalIt.Close;
  BitBtn1.Tag := 1;
  PageControl1.ActivePageIndex := 0;
  Habilita;
  Atualiza;
  Fdm1.tMovAvulso.Insert;
  Fdm1.tMovAvulsoCODIGO.AsInteger := Fdm1.Incrementa('CODIGO','MOVAVULSO');
  JvDBLookupCombo4.ReadOnly := False;
  BitBtn1.Tag := 0;
end;

procedure TfMovAvulso.BitBtn2Click(Sender: TObject);
begin
  PageControl2.Show;
{  qCReceberParc.Close;
  CReceberParc.Params[0].AsInteger := Fdm1.tNotaFiscalNUMNOTA.AsInteger;
  qCReceberParc.Open;
  if not qCReceberParc.IsEmpty then
    ShowMessage('Nota não pode ser alterada, existem parcelas pagas!')
  else
  if Fdm1.tNotaFiscalIMPRESSA.AsString = 'S' then
    ShowMessage('Nota já foi impressa, não pode ser alterada!')
  else}
  if (DmCons.qMovAvulsoCODIGO.AsInteger > 0) or (Fdm1.tMovAvulsoCODIGO.AsInteger > 0) then
    begin
      JvDBLookupCombo4.ReadOnly := True;
      PageControl1.ActivePageIndex := 1;
      Fdm1.tMovAvulso.Edit;
      Habilita;
    end;
end;

procedure TfMovAvulso.BitBtn3Click(Sender: TObject);
begin
  Fdm1.tMovAvulsoItens.Cancel;
  Fdm1.tMovAvulsoParc.Cancel;
  Fdm1.tMovAvulso.Cancel;
  Habilita;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfMovAvulso.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);

  PageControl1.ActivePageIndex := 0;
  DmCons.qMovAvulso.Open;
  Edit1Change(Sender);
  qCliente.Open;
  DmCons.qCondPgto.Open;
end;

procedure TfMovAvulso.BitBtn5Click(Sender: TObject);
var
  TD : TTransactionDesc;
  vGrava : Boolean;
  vVlrParcelas : Real;
begin
  if (qClienteDOCUMENTO.AsString <> '') and (qClienteENDERECO.AsString <> '') then
    begin
      vGrava := True;
      if Fdm1.tMovAvulsoCONDPGTO.Value > 0 then
        begin
          vVlrParcelas := 0;
          //*** Le as parcelas para somar o valor na variavel vVlrParcelas
          Fdm1.tMovAvulsoParc.First;
          while not Fdm1.tMovAvulsoParc.Eof do
            begin
              vVlrParcelas := vVlrParcelas + Fdm1.tMovAvulsoParcVALOR.AsFloat;
              Fdm1.tMovAvulsoParc.Next;
            end;
          //*** Compara o valor total com o valor da variavel se não fechar não vai gravar
          if FormatFloat('0.00',Fdm1.tMovAvulsoVLRTOTAL.AsFloat) <> FormatFloat('0.00',vVlrParcelas) then
            begin
              vGrava := False;
              ShowMessage('Valor das parcelas diferente da nota!');
            end;
          //*** Le os itens para ver se o produto tem a opção de atualizar o preço automático
        end;
      if vGrava then
        begin
          Fdm1.tMovAvulsoCODCLIENTE.AsString := JvDBLookupCombo4.KeyValue;
          try
          TD.TransactionID  := 1;
          TD.IsolationLevel := xilREADCOMMITTED;
          Fdm1.Conexao.StartTransaction(TD);
          Fdm1.tMovAvulso.Post;
//          Pagamento;
          Fdm1.tMovAvulsoItens.ApplyUpdates(0);
          Fdm1.tMovAvulsoParc.ApplyUpdates(0);
          Fdm1.tMovAvulso.ApplyUpdates(0);
          Fdm1.Conexao.Commit(TD);
          Habilita;
          DmCons.qMovAvulso.Refresh;
          PageControl1.TabIndex := 0;
          DmCons.qMovAvulso.Locate('CODIGO',Fdm1.tMovAvulsoCODIGO.AsInteger,([]));
          except
          Fdm1.Conexao.Rollback(TD);
          end;
        end;
    end
  else
    ShowMessage('Esta faltando dados sobre o cliente!');
end;

procedure TfMovAvulso.BitBtn4Click(Sender: TObject);
var
  TD : TTransactionDesc;
begin
  PageControl2.Show;
{  qNotaFiscal.Open;
  qNotaFiscal.Last;
  qCReceberParc.Close;
  CReceberParc.Params[0].AsInteger := Fdm1.tNotaFiscalNUMNOTA.AsInteger;
  qCReceberParc.Open;}
  if (MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOK,mbNO],0) = mrOK) then
    begin
      try
      TD.TransactionID  := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      Fdm1.Conexao.StartTransaction(TD);
      Atualiza;
      Fdm1.tMovAvulsoItens.First;
      while not Fdm1.tMovAvulsoItens.Eof do
        Fdm1.tMovAvulsoItens.Delete;
      Fdm1.tMovAvulsoParc.First;
      while not Fdm1.tMovAvulsoParc.Eof do
        Fdm1.tMovAvulsoParc.Delete;
      Fdm1.tMovAvulso.Delete;
      Fdm1.tMovAvulso.ApplyUpdates(0);
      Fdm1.tMovAvulsoItens.ApplyUpdates(0);
      Fdm1.tMovAvulsoParc.ApplyUpdates(0);
      Consulta;
      Fdm1.Conexao.Commit(TD);
      except
      Fdm1.Conexao.Rollback(TD);
      end;
    end
end;

procedure TfMovAvulso.TabSheet2Show(Sender: TObject);
begin
  Atualiza;
  PageControl2.ActivePageIndex := 1;
end;

procedure TfMovAvulso.JvDBGrid1DblClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
end;

procedure TfMovAvulso.JvDBLookupCombo1Change(Sender: TObject);
begin
  Consulta;
end;

procedure TfMovAvulso.JvDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = vk_Delete) then
    Key := vk_Return
  else
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

procedure TfMovAvulso.StaticText1Click(Sender: TObject);
begin
  if BitBtn3.Enabled then
    begin
      if PageControl2.ActivePageIndex = 1 then
        begin
          fMovAvulsoIt     := TfMovAvulsoIt.Create(Self);

          fMovAvulsoIt.Dm1 := Fdm1;

          fMovAvulsoIt.Tag := 11;
          fMovAvulsoIt.ShowModal;
        end;
    end;
end;

procedure TfMovAvulso.StaticText2Click(Sender: TObject);
begin
  if BitBtn3.Enabled then
    begin
      if ((PageControl2.ActivePageIndex = 1) and (Fdm1.tMovAvulsoItens.RecordCount < 1)) or
         ((PageControl2.ActivePageIndex = 3) and (Fdm1.tMovAvulsoParc.RecordCount < 1)) then
        ShowMessage('Tabela Vazia!')
      else
      if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
        begin
          if PageControl2.ActivePageIndex = 1 then
            begin
              Fdm1.tMovAvulsoVLRTOTAL.AsFloat := Fdm1.tMovAvulsoVLRTOTAL.AsFloat - Fdm1.tMovAvulsoItensVLRTOTAL.AsFloat;
              Fdm1.tMovAvulsoVLRTOTALITENS.AsFloat := Fdm1.tMovAvulsoVLRTOTALITENS.AsFloat - Fdm1.tMovAvulsoItensVLRTOTAL.AsFloat;
              Fdm1.tMovAvulsoItens.Delete;
            end
          else
          if PageControl2.ActivePageIndex = 2 then
            Fdm1.tMovAvulsoParc.Delete;
        end;
    end;
end;

procedure TfMovAvulso.StaticText3Click(Sender: TObject);
begin
  if BitBtn3.Enabled then
    begin
      if ((PageControl2.ActivePageIndex = 1) and (Fdm1.tMovAvulsoItens.RecordCount < 1)) or
         ((PageControl2.ActivePageIndex = 3) and (Fdm1.tMovAvulsoParc.RecordCount < 1)) then
        ShowMessage('Tabela Vazia!')
      else
        begin
          fMovAvulsoIt := TfMovAvulsoIt.Create(Self);

          fMovAvulsoIt.Dm1 := Fdm1;

          if PageControl2.ActivePageIndex = 1 then
            fMovAvulsoIt.Tag := 12
          else
          if PageControl2.ActivePageIndex = 2 then
            fMovAvulsoIt.Tag := 22
          else
          if PageControl2.ActivePageIndex = 3 then
            fMovAvulsoIt.Tag := 32;
          fMovAvulsoIt.ShowModal;
        end;
    end;
end;

procedure TfMovAvulso.JvDBGrid2DblClick(Sender: TObject);
begin
  if Fdm1.tMovAvulsoItens.RecordCount < 1 then
    ShowMessage('Tabela Vazia!')
  else
    begin
      fMovAvulsoIt := TfMovAvulsoIt.Create(Self);

      fMovAvulsoIt.Dm1 := Fdm1;

      fMovAvulsoIt.Tag := 13;
      fMovAvulsoIt.ShowModal;
    end;
end;

procedure TfMovAvulso.Label4Click(Sender: TObject);
begin
  qCliente.Close;
  fPessoaC := TfPessoaC.Create(Self);
  fPessoaC.ShowModal;
  qCliente.Open;
end;

procedure TfMovAvulso.StaticText4Click(Sender: TObject);
begin
  if PageControl2.ActivePageIndex = 1 then
    JvDBGrid2DblClick(Sender)
  else
  if PageControl2.ActivePageIndex = 3 then
    JvDBGrid3DblClick(Sender);
end;

procedure TfMovAvulso.JvDBGrid3DblClick(Sender: TObject);
begin
  if Fdm1.tMovAvulsoParc.RecordCount < 1 then
    ShowMessage('Tabela Vazia!')
  else
    begin
      fMovAvulsoIt := TfMovAvulsoIt.Create(Self);

      fMovAvulsoIt.Dm1 := Fdm1;
      
      fMovAvulsoIt.Tag := 33;
      fMovAvulsoIt.ShowModal;
    end;
end;

procedure TfMovAvulso.JvDBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = vk_Delete) then
    Key := vk_Return
  else
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

procedure TfMovAvulso.JvDBGrid4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = vk_Delete) then
    Key := vk_Return
  else
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

procedure TfMovAvulso.GroupBox1Exit(Sender: TObject);
begin
  PageControl2.SetFocus;
end;

procedure TfMovAvulso.DBEdit1Exit(Sender: TObject);
begin
  PageControl2.SetFocus;
end;

procedure TfMovAvulso.Label35Click(Sender: TObject);
begin
  DmCons.qCondPgto.Close;
  fCondPgto := TfCondPgto.Create(Self);
  fCondPgto.ShowModal;
  DmCons.qCondPgto.Close;
  DmCons.qCondPgto.Open;
end;

procedure TfMovAvulso.BitBtn7Click(Sender: TObject);
var
  vDtVenc, vDtVenc1 : TDateTime;
  vAux, vVlrParcela : Real;
  vParcela : Integer;
  vQtdParcelas : Integer;
  ano, dia, mes : Word;
begin
  if Fdm1.tMovAvulsoCONDPGTO.AsInteger < 1 then
    begin
      ShowMessage('Não foi informada a condição de pagamento!');
      JvDBLookupCombo6.SetFocus;
    end
  else
  if not(Fdm1.tMovAvulsoVLRTOTAL.AsFloat > 0) then
    ShowMessage('Valor para calcular as duplicatas esta zerado!')
  else
  if Fdm1.tMovAvulsoParc.IsEmpty then
    begin
      vParcela := 0;
      if DmCons.qCondPgtoFIXARDIA.AsString = 'N' then
        begin
          Fdm1.tCondPgtoIt.Close;
          Fdm1.CondPgtoIt.Params[0].AsInteger := Fdm1.tMovAvulsoCONDPGTO.AsInteger;
          Fdm1.tCondPgtoIt.Open;
          vQtdParcelas := Fdm1.tCondPgtoIt.RecordCount;
        end
      else
        vQtdParcelas := DmCons.qCondPgtoQTDPARCELAS.AsInteger;
      DecodeDate(Fdm1.tMovAvulsoDTEMISSAO.AsDateTime,Ano,Mes,Dia);
      vVlrParcela := StrToFloat(FormatFloat('0.00',Fdm1.tMovAvulsoVLRTOTAL.AsFloat / vQtdParcelas));
      vDtVenc  := Fdm1.tMovAvulsoDTEMISSAO.AsDateTime;
      vDtVenc1 := Fdm1.tMovAvulsoDTEMISSAO.AsDateTime;
      Dia := 01;
      vAux := 0;
      for vParcela := 1 to vQtdParcelas do
        begin
          Fdm1.tMovAvulsoParc.Insert;
          Fdm1.tMovAvulsoParcPARCELA.AsInteger := vParcela;
          Fdm1.tMovAvulsoParcVALOR.AsFloat    := vVlrParcela;
          vAux := vAux + Fdm1.tMovAvulsoParcVALOR.AsFloat;
          if vQtdParcelas = vParcela then
            Fdm1.tMovAvulsoParcVALOR.AsFloat := Fdm1.tMovAvulsoParcVALOR.AsFloat +
               (Fdm1.tMovAvulsoVLRTOTAL.AsFloat - vAux);
          Mes := Mes + 1;
          if Mes > 12 then
            begin
              Mes := 01;
              Ano := Ano + 1;
            end;
          Fdm1.tMovAvulsoParcDTVENC.AsDateTime := EncodeDate(ano,mes,Dia);
          Fdm1.tMovAvulsoParc.Post;
        end;
    end
  else
    ShowMessage('Já existem parcelas!');
end;

procedure TfMovAvulso.Edit1Change(Sender: TObject);
var
 vSeparador : String;
begin
  DmCons.qMovAvulso.Close;
  DmCons.MovAvulso.SQL.Clear;
  DmCons.MovAvulso.SQL.Add('Select MOVAVULSO.*, PESSOA.NOME NOMECLIENTE');
  DmCons.MovAvulso.SQL.Add('from MOVAVULSO');
  DmCons.MovAvulso.SQL.Add('inner join PESSOA on');
  DmCons.MovAvulso.SQL.Add('(PESSOA.ID = MOVAVULSO.CODCLIENTE)');
  case JvComboBox1.ItemIndex of
    0 : DmCons.MovAvulso.SQL.Add(' WHERE MOVAVULSO.CODIGO LIKE ''%' + Edit1.Text + '%''');
    1 : DmCons.MovAvulso.SQL.Add(' WHERE PESSOA.NOME LIKE ''%' + Edit1.Text + '%''');
    2 : begin
          vSeparador := 'WHERE';
          if (JvDateEdit1.Date > 1) then
            begin
              DmCons.MovAvulso.SQL.Add(' WHERE MOVAVULSO.DTEMISSAO >= :D1');
              DmCons.MovAvulso.ParamByName('D1').AsDate := JvDateEdit1.Date;
              vSeparador := ' AND ';
            end;
          if (JvDateEdit2.Date > 1) then
            begin
              DmCons.MovAvulso.SQL.Add(vSeparador + ' MOVAVULSO.DTEMISSAO <= :D2');
              DmCons.MovAvulso.ParamByName('D2').AsDate := JvDateEdit2.Date;
            end;
        end;
  end;
  DmCons.qMovAvulso.Open;
end;

procedure TfMovAvulso.JvComboBox1Change(Sender: TObject);
begin
  case JvComboBox1.ItemIndex of
    0,1 : begin
            Edit1.Visible := True;
            Label12.Caption := '';
            Label13.Caption := '';
            JvDateEdit1.Visible := False;
            JvDateEdit2.Visible := False;
          end;
    2   : begin
            Edit1.Visible := False;
            Label12.Caption := 'Data Inicial:';
            Label13.Caption := 'Data Final:';
            JvDateEdit1.Visible := True;
            JvDateEdit2.Visible := True;
          end;
  end;
end;

procedure TfMovAvulso.JvComboBox1Enter(Sender: TObject);
begin
  Edit1.Clear;
  JvDateEdit1.Clear;
  JvDateEdit2.Clear;
end;

procedure TfMovAvulso.JvDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
begin
  DmCons.qMovAvulso.IndexFieldNames := Column.FieldName;
  Column.Color := clInfoBK;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Color := clWhite;
end;

procedure TfMovAvulso.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
