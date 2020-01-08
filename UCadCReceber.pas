unit UCadCReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvDBCtrl, ExtCtrls, ComCtrls, StdCtrls, Buttons,
  JvLookup, DBCtrls, Mask, DB, FMTBcd, SqlExpr, JvToolEdit, JvCurrEdit, DBXpress,
  DBClient, Provider, JvCombobox;

type
  TfCadCReceber = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    JvDBGrid1: TJvDBGrid;
    Label1: TLabel;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label5: TLabel;
    JvDBDateEdit2: TJvDBDateEdit;
    Label4: TLabel;
    JvDBLookupCombo4: TJvDBLookupCombo;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    PageControl2: TPageControl;
    TSItens: TTabSheet;
    JvDBGrid2: TJvDBGrid;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    JvComboBox1: TJvComboBox;
    Label9: TLabel;
    JvDateEdit1: TJvDateEdit;
    Label10: TLabel;
    JvDateEdit2: TJvDateEdit;
    Edit1: TEdit;
    Label11: TLabel;
    JvDBDateEdit3: TJvDBDateEdit;
    Panel2: TPanel;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Label12: TLabel;
    DBEdit3: TDBEdit;
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
    procedure Edit1Change(Sender: TObject);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure JvComboBox1Enter(Sender: TObject);
    procedure JvComboBox1Change(Sender: TObject);
    procedure JvDBLookupCombo4Exit(Sender: TObject);
  private
    { Private declarations }
    procedure Habilita;
    procedure Consulta;
    procedure Atualiza;
    procedure Le_tPagtoIt;
    procedure Grava_Historico;
    procedure Grava_MovFinanceiro(Tipo : String);
  public
    { Public declarations }
  end;

var
  fCadCReceber: TfCadCReceber;
  vAlteraNE : String;

implementation

uses UDm1, UDmCons, Math, UPessoa, UPagtoIt, StdConvs;

{$R *.dfm}

procedure TfCadCReceber.Atualiza;
begin
  if Dm1.tPagto.State in [dsInactive,dsBrowse] then
    begin
      Dm1.tPagto.Close;
      Dm1.tPagtoIt.Close;
      if BitBtn1.Tag = 1 then
        begin
          Dm1.Pagto.ParamByName('Codigo').AsInteger      := 0;
          Dm1.PagtoIt.ParamByName('Codigo').AsInteger    := 0;
        end
      else
        begin
          Dm1.Pagto.ParamByName('Codigo').AsInteger      := DmCons.qPagtoNUMLACTO.AsInteger;
          Dm1.PagtoIt.ParamByName('Codigo').AsInteger    := DmCons.qPagtoNUMLACTO.AsInteger;
        end;
      Dm1.tPagto.Open;
      Dm1.tPagtoIt.Open;
    end;
end;

procedure TfCadCReceber.Consulta;
begin
  DmCons.qPagto.Close;
  DmCons.Pagto.SQL.Clear;
  DmCons.Pagto.SQL.Add('Select PAGTO.*, BANCO.NOME, BANCO.TIPOBANCO');
  DmCons.Pagto.SQL.Add('from PAGTO');
  DmCons.Pagto.SQL.Add('inner join BANCO on');
  DmCons.Pagto.SQL.Add('(BANCO.ID = PAGTO.CODBANCO)');
  DmCons.qPagto.Open;
end;

procedure TfCadCReceber.Habilita;
begin
  Panel3.Enabled  := not Panel3.Enabled;
  BitBtn1.Enabled := not BitBtn1.Enabled;
  BitBtn2.Enabled := not BitBtn2.Enabled;
  BitBtn3.Enabled := not BitBtn3.Enabled;
  BitBtn4.Enabled := not BitBtn4.Enabled;
  BitBtn5.Enabled := not BitBtn5.Enabled;
  TabSheet1.TabVisible := not TabSheet1.TabVisible;
end;

procedure TfCadCReceber.Grava_MovFinanceiro(Tipo : String);
begin
  DM1.tMovFinanceiro.Insert;
  DM1.tMovFinanceiroNUMMOVTO.AsInteger := Dm1.Incrementa('NUMMOVTO','MOVFINANCEIRO');
  DM1.tMovFinanceiroCODBANCO.AsInteger := DM1.tPagtoCODBANCO.AsInteger;
  DM1.tMovFinanceiroTIPOMOV.AsString   := 'PAG';
  if Tipo = 'C' then
    DM1.tMovFinanceiroDTMOVIMENTO.AsDateTime := DM1.tPagtoDTCOMPENSADO.AsDateTime
  else
    DM1.tMovFinanceiroDTMOVIMENTO.AsDateTime := DM1.tPagtoDTEMISSAO.AsDateTime;
  if Tipo = 'D' then
    begin
      DM1.tMovFinanceiroVLRSAIDA.AsFloat   := DM1.tPagtoItVLRPAGTO.AsFloat;
      DM1.tMovFinanceiroHISTORICO.AsString := 'Pagto. Dupl. ' + DM1.tPagtoItNUMDUPLICATA.AsString;
    end
  else
  if Tipo = 'J' then
    begin
      DM1.tMovFinanceiroVLRSAIDA.AsFloat   := DM1.tPagtoItVLRJUROS.AsFloat;
      DM1.tMovFinanceiroHISTORICO.AsString := 'Pagto. Juros da Dupl. ' + DM1.tPagtoItNUMDUPLICATA.AsString;
    end
  else
  if Tipo = 'V' then
    begin
      DM1.tMovFinanceiroVLRSAIDA.AsFloat   := DM1.tPagtoItVLRPAGTO.AsFloat;
      DM1.tMovFinanceiroHISTORICO.AsString := 'Pagto. Comissão do Vendedor ';
    end
  else
  if Tipo = 'C' then
    begin
      DM1.tMovFinanceiroVLRSAIDA.AsFloat   := DM1.tPagtoVLRTOTAL.AsFloat;
      DM1.tMovFinanceiroHISTORICO.AsString := 'Cheque ' + DM1.tPagtoNUMCHEQUE.AsString + ' Compensado';
    end
  else
  if Tipo = 'O' then
    begin
      DM1.tMovFinanceiroVLRSAIDA.AsFloat   := DM1.tPagtoItVLRPAGTO.AsFloat;
      if DM1.tPagtoItOBS.AsString = '' then
        DM1.tMovFinanceiroHISTORICO.AsString := 'Outros pagamentos'
      else
        DM1.tMovFinanceiroHISTORICO.AsString := DM1.tPagtoItOBS.AsString;
    end;
  DM1.tMovFinanceiro.Post;
  Dm1.tMovFinanceiro.ApplyUpdates(0);
end;

procedure TfCadCReceber.Grava_Historico;
var
  vAux : Integer;
begin
  DM1.tCPagarHist.Close;
  DM1.CPagarHist.Params[0].AsInteger := DM1.tCPagarParcNUMCPAGAR.AsInteger;
  DM1.CPagarHist.Params[1].AsString  := DM1.tCPagarParcPARCELA.AsString;
  DM1.tCPagarHist.Open;
  DM1.tCPagarHist.Last;
  vAux := DM1.tCPagarHistITEM.AsInteger + 1;

  DM1.tCPagarHist.Insert;
  DM1.tCPagarHistNUMCPAGAR.AsInteger     := DM1.tCPagarParcNUMCPAGAR.AsInteger;
  DM1.tCPagarHistPARCELA.AsString        := DM1.tCPagarParcPARCELA.AsString;
  DM1.tCPagarHistITEM.AsInteger          := vAux;
  DM1.tCPagarHistDTHISTORICO.AsDateTime  := Date;
  DM1.tCPagarHistDTULTPGTO.AsDateTime    := DM1.tCPagarParcDTPAGTO.AsDateTime;
  DM1.tCPagarHistVLRULTPGTO.AsFloat      := DM1.tPagtoItVLRPAGTO.AsFloat;
  DM1.tCPagarHistVLRULTJUROSPAGO.AsFloat := DM1.tPagtoItVLRJUROS.AsFloat;
  DM1.tCPagarHistVLRULTDESCONTO.AsFloat  := DM1.tPagtoItVLRDESCONTO.AsFloat;
  DM1.tCPagarHistTIPOHIST.AsString       := 'P';
  if StrToFloat(FormatFloat('0.00',DM1.tCPagarParcVLRRESTANTE.AsFloat)) > 0 then
    DM1.tCPagarHistHISTORICO.AsString  := 'PAGAMENTO PARCIAL'
  else
    DM1.tCPagarHistHISTORICO.AsString  := 'PAGAMENTO TOTAL';
  Grava_MovFinanceiro('D');
  DM1.tCPagarHistNUMMOVFINANC.AsInteger := DM1.tMovFinanceiroNUMMOVTO.AsInteger;
  Grava_MovFinanceiro('J');
  DM1.tCPagarHistNUMMOVJUROS.AsInteger  := DM1.tMovFinanceiroNUMMOVTO.AsInteger;
  DM1.tCPagarHist.Post;
  Dm1.tCPagarHist.ApplyUpdates(0);
end;

procedure TfCadCReceber.Le_tPagtoIt;
var
  vTotal : Real;
begin
  vTotal := 0;
  DM1.tPagtoIt.First;
  while not DM1.tPagtoIt.Eof do
    begin
      //*** Da baixa no contas a pagar
      vTotal := vTotal + DM1.tPagtoItVLRPAGTO.AsFloat + Dm1.tPagtoItVLRJUROS.AsFloat;
      if DM1.tPagtoItTIPO.AsString = 'D' then
        begin
          //*** Abre as parcelas do contas a pagar
          DM1.tCPagarParc.Close;
          DM1.CPagarParc.Params[0].AsInteger := DM1.tPagtoItCODPESSOA.AsInteger;
          DM1.CPagarParc.Params[1].AsInteger := DM1.tPagtoItNUMDUPLICATA.AsInteger;
          DM1.CPagarParc.Params[2].AsString  := DM1.tPagtoItPARCELA.AsString;
          DM1.tCPagarParc.Open;
          DM1.tCPagarParc.Edit;
          DM1.tCPagarParcVLRDESCONTO.AsFloat := StrToFloat(FormatFloat('0.00',DM1.tCPagarParcVLRDESCONTO.AsFloat)) +
                                                StrToFloat(FormatFloat('0.00',DM1.tPagtoItVLRDESCONTO.AsFloat));
          DM1.tCPagarParcJUROSPAGOS.AsFloat  := StrToFloat(FormatFloat('0.00',DM1.tCPagarParcJUROSPAGOS.AsFloat)) +
                                                StrToFloat(FormatFloat('0.00',DM1.tPagtoItVLRJUROS.AsFloat));
          DM1.tCPagarParcVLRRESTANTE.AsFloat := StrToFloat(FormatFloat('0.00',DM1.tCPagarParcVLRRESTANTE.AsFloat)) -
                                                StrToFloat(FormatFloat('0.00',DM1.tPagtoItVLRPAGTO.AsFloat));
          DM1.tCPagarParcVLRPAGTO.AsFloat    := StrToFloat(FormatFloat('0.00',DM1.tCPagarParcVLRPAGTO.AsFloat)) +
                                                StrToFloat(FormatFloat('0.00',DM1.tPagtoItVLRPAGTO.AsFloat));
          DM1.tCPagarParcDTPAGTO.AsFloat     := DM1.tPagtoDTEMISSAO.AsFloat;
          if StrToFloat(FormatFloat('0.00',DM1.tCPagarParcVLRRESTANTE.AsFloat)) > 0 then
            DM1.tCPagarParcQUITADO.AsString := 'N'
          else
            DM1.tCPagarParcQUITADO.AsString := 'S';
          Grava_Historico;
          DM1.tCPagarParc.Post;
          Dm1.tCPagarParc.ApplyUpdates(0);
        end;
      //*** Da baixa na comissão do vendedor
      if DM1.tPagtoItTIPO.AsString = 'C' then
        begin

        end;
      //*** Outros valores
      if DM1.tPagtoItTIPO.AsString = 'O' then
        Grava_MovFinanceiro('O');
      DM1.tPagtoIt.Next;
    end;
  DM1.tPagtoVLRTOTAL.AsFloat := StrToFloat(FormatFloat('0.00',vTotal));
end;

procedure TfCadCReceber.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmCons.qBanco.Close;
  DM1.tPagto.Close;
  DM1.tPagtoIt.Close;
  Action := Cafree;
end;

procedure TfCadCReceber.BitBtn1Click(Sender: TObject);
begin
  BitBtn1.Tag := 1;
  PageControl1.ActivePageIndex := 1;
  Habilita;
  Atualiza;
  Consulta;
  Dm1.tPagto.Insert;
  JvDBLookupCombo4.ReadOnly := False;
  DBEdit1.ReadOnly   := False;
  JvDBDateEdit3.Date := Date;
  JvDBLookupCombo4.SetFocus;
  BitBtn1.Tag := 0;
end;

procedure TfCadCReceber.BitBtn2Click(Sender: TObject);
begin
  if (PageControl1.ActivePageIndex = 1) and (DBEdit1.Text = '') then
    ShowMessage('Registro vazio, não pode ser alterado!')
  else
  if (DmCons.qPagtoCODBANCO.AsInteger > 0) then
    begin
      BitBtn1.Tag := 0;
      DBEdit1.ReadOnly             := True;
      JvDBLookupCombo4.ReadOnly    := True;
      PageControl1.ActivePageIndex := 1;
      Dm1.tPagto.Edit;
      Habilita;
      JvDBDateEdit2.SetFocus;
    end;
end;

procedure TfCadCReceber.BitBtn3Click(Sender: TObject);
begin
  Dm1.tPagtoIt.Cancel;
  Dm1.tPagto.Cancel;
  Habilita;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfCadCReceber.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  Label13Click(Sender);
  DmCons.qBanco.Open;
end;

procedure TfCadCReceber.BitBtn5Click(Sender: TObject);
var
  TD : TTransactionDesc;
  vCodigo : integer;
begin
  if (DM1.tPagtoCODBANCO.AsInteger > 0) then
    begin
      if Dm1.tPagto.State = dsInsert then
        begin       
          vCodigo := Dm1.Incrementa('NUMLACTO','PAGTO');
          Dm1.tPagtoIt.Last;
          while not Dm1.tPagtoIt.Bof do
            begin                
              Dm1.tPagtoIt.Edit;
              Dm1.tPagtoItNUMLACTO.AsInteger := vCodigo;
              Dm1.tPagtoIt.Prior;
            end;
          if Dm1.tPagtoIt.State in [dsEdit,dsInsert] then
            Dm1.tPagtoIt.Post;
          Dm1.tPagtoNUMLACTO.AsInteger := vCodigo;
        end;
      try
      TD.TransactionID  := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      Dm1.Conexao.StartTransaction(TD);
      if vCompensar <> 'S' then
        begin
          Le_tPagtoIt;
          Dm1.tPagto.Post;
          Dm1.tPagtoIt.ApplyUpdates(0);
        end
      else
        Dm1.tPagto.Post;
      Dm1.tPagto.ApplyUpdates(0);
      Dm1.Conexao.Commit(TD);
      Habilita;
      Consulta;
      BitBtn1.SetFocus;
      vCompensar := '';
      PageControl1.ActivePageIndex := 0;
      except
      Dm1.Conexao.Rollback(TD);
      end;
    end
  else
    ShowMessage('Esta faltando o Banco/Caixa ou o número do cheque/movto!');
end;

procedure TfCadCReceber.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
    begin
      Atualiza;
      if (DM1.tPagtoTIPOBANCO.AsString = 'B') and (DM1.tPagtoDTCOMPENSADO.AsDateTime > 0) then
        ShowMessage('Cheque já foi baixado!')
      else
        begin
          DM1.tPagtoIt.First;
          while not DM1.tPagtoIt.Eof do
            DM1.tPagtoIt.Delete;
          Dm1.tPagto.Delete;
          Dm1.tPagto.ApplyUpdates(0);
          Dm1.tPagtoIt.ApplyUpdates(0);
          Consulta;
        end;
    end;
end;

procedure TfCadCReceber.TabSheet2Show(Sender: TObject);
begin
  Atualiza;
end;

procedure TfCadCReceber.JvDBGrid1DblClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
end;

procedure TfCadCReceber.JvDBLookupCombo1Change(Sender: TObject);
begin
  Consulta;
end;

procedure TfCadCReceber.JvDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (BitBtn3.Enabled) and (vCompensar <> 'S') then
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

procedure TfCadCReceber.StaticText1Click(Sender: TObject);
begin
  if BitBtn3.Enabled then
    begin
      if Dm1.tPagtoCODBANCO.AsInteger < 1 then
        ShowMessage('Falta informar o código do banco/caixa!')
      else
        begin
          vAlteraNE        := 'I';
          fPagtoIt := TfPagtoIt.Create(Self);
          fPagtoIt.ShowModal;
        end;
    end;
end;

procedure TfCadCReceber.StaticText2Click(Sender: TObject);
begin
  if BitBtn3.Enabled then
    begin
      if DM1.tPagtoIt.RecordCount < 1 then
        ShowMessage('Tabela Vazia!')
      else
      if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
        begin
          Dm1.tPagtoIt.Delete;
        end;
    end;
end;

procedure TfCadCReceber.StaticText3Click(Sender: TObject);
begin
  if BitBtn3.Enabled then
    begin
      if (Dm1.tPagtoIt.RecordCount < 1) then
        ShowMessage('Tabela Vazia!')
      else
        begin
          vAlteraNE        := 'A';
          fPagtoIt := TfPagtoIt.Create(Self);
          fPagtoIt.ShowModal;
        end;
    end;
end;

procedure TfCadCReceber.JvDBGrid2DblClick(Sender: TObject);
begin
  if Dm1.tPagtoIt.RecordCount < 1 then
    ShowMessage('Tabela Vazia!')
  else
    begin
      vAlteraNE      := 'C';
      fPagtoIt := TfPagtoIt.Create(Self);
      fPagtoIt.ShowModal;
    end;
end;

procedure TfCadCReceber.Edit1Change(Sender: TObject);
var
 vSeparador : String;
begin
  DmCons.qPagto.Close;
  DmCons.Pagto.SQL.Clear;
  DmCons.Pagto.SQL.Add('Select PAGTO.*, BANCO.NOME, BANCO.TIPOBANCO');
  DmCons.Pagto.SQL.Add('from PAGTO');
  DmCons.Pagto.SQL.Add('Left join BANCO on');
  DmCons.Pagto.SQL.Add('(BANCO.ID = PAGTO.CODBANCO)');
  case JvComboBox1.ItemIndex of
    0 : DmCons.Pagto.SQL.Add(' WHERE PAGTO.NUMCHEQUE LIKE ''%' + Edit1.Text + '%''');
    1 : DmCons.Pagto.SQL.Add(' WHERE BANCO.NOME LIKE ''%' + Edit1.Text + '%''');
    2 : begin                                          
          vSeparador := 'WHERE';
          if (JvDateEdit1.Date > 1) then
            begin
              DmCons.Pagto.SQL.Add(' WHERE PAGTO.DTEMISSAO >= :D1');
              DmCons.Pagto.ParamByName('D1').AsDate := JvDateEdit1.Date;
              vSeparador := ' AND ';
            end;
          if (JvDateEdit2.Date > 1) then
            begin
              DmCons.Pagto.SQL.Add(' WHERE PAGTO.DTEMISSAO <= :D2');
              DmCons.Pagto.ParamByName('D2').AsDate := JvDateEdit2.Date;
            end;
        end;
    3 : begin
          vSeparador := 'WHERE';
          if (JvDateEdit1.Date > 1) then
            begin
              DmCons.Pagto.SQL.Add(' WHERE PAGTO.DTCOMPENSADO >= :D1');
              DmCons.Pagto.ParamByName('D1').AsDate := JvDateEdit1.Date;
              vSeparador := ' AND ';
            end;
          if (JvDateEdit2.Date > 1) then
            begin
              DmCons.Pagto.SQL.Add(' WHERE PAGTO.DTCOMPENSADO <= :D2');
              DmCons.Pagto.ParamByName('D2').AsDate := JvDateEdit2.Date;
            end;
        end;
    4 : begin
          vSeparador := 'WHERE';
          if (JvDateEdit1.Date > 1) then
            begin
              DmCons.Pagto.SQL.Add(' WHERE PAGTO.DTPRE >= :D1');
              DmCons.Pagto.ParamByName('D1').AsDate := JvDateEdit1.Date;
              vSeparador := ' AND ';
            end;
          if (JvDateEdit2.Date > 1) then
            begin
              DmCons.Pagto.SQL.Add(' WHERE PAGTO.DTPRE <= :D2');
              DmCons.Pagto.ParamByName('D2').AsDate := JvDateEdit2.Date;
            end;
        end;
  end;
  DmCons.qPagto.Open;
end;

procedure TfCadCReceber.JvDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
begin
  DmCons.qPagto.IndexFieldNames := Column.FieldName;
  Column.Color := clInfoBK;
  for i := 0 to JvDBGrid1.Columns.Count - 1 do
    if not (JvDBGrid1.Columns.Items[I] = Column) then
      JvDBGrid1.Columns.Items[I].Color := clWhite;
end;

procedure TfCadCReceber.JvComboBox1Enter(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TfCadCReceber.JvComboBox1Change(Sender: TObject);
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

procedure TfCadCReceber.JvDBLookupCombo4Exit(Sender: TObject);
begin
  if DmCons.qBancoTIPOBANCO.AsString = 'C' then
    DBEdit1.ReadOnly := True
  else
    DBEdit1.ReadOnly := False;
end;

end.
