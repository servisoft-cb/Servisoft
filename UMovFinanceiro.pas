unit UMovFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvLookup, Buttons, Grids, DBGrids, JvDBCtrl, Mask,
  JvToolEdit, JvEdit, JvTypedEdit, ExtCtrls, FMTBcd, DBClient, Provider,
  DB, SqlExpr, JvCurrEdit, SMDBGrid, UDm1, rsDBUtils ;

type
  TfMovFinanceiro = class(TForm)
    Label1: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    JvDateEdit1: TJvDateEdit;
    Label3: TLabel;
    JvDateEdit2: TJvDateEdit;
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    BitBtn2: TBitBtn;
    SaldoAnt: TSQLQuery;
    SaldoAntP: TDataSetProvider;
    qSaldoAnt: TClientDataSet;
    qSaldoAntVLRENTRADA: TFloatField;
    qSaldoAntVLRSAIDA: TFloatField;
    SaldoPeriodo: TSQLQuery;
    SaldoPeriodoP: TDataSetProvider;
    qSaldoPeriodo: TClientDataSet;
    qSaldoPeriodoVLRENTRADA: TFloatField;
    qSaldoPeriodoVLRSAIDA: TFloatField;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    JvxCurrencyEdit5: TJvxCurrencyEdit;
    JvxCurrencyEdit1: TJvxCurrencyEdit;
    JvxCurrencyEdit2: TJvxCurrencyEdit;
    JvxCurrencyEdit3: TJvxCurrencyEdit;
    JvxCurrencyEdit4: TJvxCurrencyEdit;
    BitBtn3: TBitBtn;
    DataSource1: TDataSource;
    RadioGroup1: TRadioGroup;
    Label9: TLabel;
    JvDBLookupCombo2: TJvDBLookupCombo;
    ComboBox1: TComboBox;
    Label10: TLabel;
    SMDBGrid1: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure StaticText1Click(Sender: TObject);
    procedure StaticText3Click(Sender: TObject);
    procedure StaticText2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    Fdm1: Tdm1;
    procedure Monta_SQl;

  public
    { Public declarations }
  end;

var
  fMovFinanceiro: TfMovFinanceiro;
  vAlteraMov : String;

implementation

uses UDmCons, UMovFinanceiroIt, UMovFinanceiroRel, UFluxoFuturo,
  UPrevRecibo2;

{$R *.dfm}

procedure TfMovFinanceiro.Monta_SQL;
var
  vOpcao : String;
begin
  vOpcao := '';
  Case RadioGroup1.ItemIndex of
    0 : vOpcao := '(TIPOMOV = ''REC'')';
    1 : vOpcao := '(TIPOMOV = ''PAG'')';
    2 : vOpcao := '(TIPOMOV <> ''REC'') AND (VLRENTRADA > 0)';
    3 : vOpcao := '(TIPOMOV <>  ''PAG'') AND (VLRSAIDA > 0)';
    4 : vOpcao := '(VLRENTRADA > 0)';
    5 : vOpcao := '(VLRSAIDA > 0)';
  end;
  if (vOpcao <> '') and (ComboBox1.ItemIndex < 2) then
    vOpcao := vOpcao + ' AND';
  case ComboBox1.ItemIndex of
    0 : vOpcao := vOpcao + ' (TIPOPESSOA = ''F'')';
    1 : vOpcao := vOpcao + ' (TIPOPESSOA = ''J'')';
  end;
  if JvDateEdit1.Date > 1 then
    begin
      qSaldoAnt.Close;
      SaldoAnt.SQL.Clear;
      SaldoAnt.SQL.Add('Select Sum(VlrEntrada) VlrEntrada, Sum(VlrSaida) VlrSaida');
      SaldoAnt.SQL.Add('from MOVFINANCEIRO');
      SaldoAnt.SQL.Add('where (MOVFINANCEIRO.DTMOVIMENTO < :DataIni)');
      if JvDBLookupCombo1.Text <> '' then
        begin
          SaldoAnt.SQL.Add('      AND (MOVFINANCEIRO.CODBANCO = :Codigo)');
          SaldoAnt.ParamByName('Codigo').AsInteger := JvDBLookupCombo1.KeyValue;
        end;
      if vOpcao <> '' then
        SaldoAnt.SQL.Add('  AND ' + vOpcao);
      SaldoAnt.ParamByName('DataIni').AsDate := JvDateEdit1.Date;
      if JvDBLookupCombo2.Text <> '' then
        begin
          SaldoAnt.SQL.Add('      AND (MOVFINANCEIRO.CODCENTROCUSTO = :CODCENTROCUSTO)');
          SaldoAnt.ParamByName('CODCENTROCUSTO').AsInteger := JvDBLookupCombo2.KeyValue;
        end;
      qSaldoAnt.Open;
      qSaldoAnt.First;
      JvxCurrencyEdit5.Value := StrToFloat(FormatFloat('0.00',qSaldoAntVLRENTRADA.AsFloat - qSaldoAntVLRSAIDA.AsFloat));
    end;

  //*** Monta o saldo do período
  qSaldoPeriodo.Close;
  SaldoPeriodo.SQL.Clear;
  SaldoPeriodo.SQL.Add('SELECT SUM(VlrEntrada) VlrEntrada, Sum(VlrSaida) VlrSaida');
  SaldoPeriodo.SQL.Add('FROM MOVFINANCEIRO');
  SaldoPeriodo.SQL.Add('WHERE (0=0) ');
  if JvDBLookupCombo1.Text <> '' then
    begin
      SaldoPeriodo.SQL.Add(' AND (MOVFINANCEIRO.CODBANCO = :CODBANCO)');
      SaldoPeriodo.ParamByName('CODBANCO').AsInteger := JvDBLookupCombo1.KeyValue;
    end;
  if JvDateEdit1.Date > 1 then
    begin
      SaldoPeriodo.SQL.Add(' AND (MOVFINANCEIRO.DTMOVIMENTO >= :DATAINI)');
      SaldoPeriodo.ParamByName('DATAINI').AsDate := JvDateEdit1.Date;
    end;
  if JvDateEdit2.Date > 1 then
    begin
      SaldoPeriodo.SQL.Add(' AND (MOVFINANCEIRO.DTMOVIMENTO <= :DATAFIN)');
      SaldoPeriodo.ParamByName('DATAFIN').AsDate := JvDateEdit2.Date;
   end;
  if JvDBLookupCombo2.Text <> '' then
    begin
      SaldoPeriodo.SQL.Add(' AND (MOVFINANCEIRO.CODCENTROCUSTO = :CODCENTROCUSTO)');
      SaldoPeriodo.ParamByName('CODCENTROCUSTO').AsInteger := JvDBLookupCombo2.KeyValue;
    end;
  if vOpcao <> '' then
    SaldoPeriodo.SQL.Add('  AND ' + vOpcao);
  qSaldoPeriodo.Open;
  qSaldoPeriodo.First;

  //*** Monta a SQL do período atual (mostra todos os registros)
  DmCons.qMovFinanceiro.Close;
  DmCons.MovFinanceiro.SQL.Clear;
  DmCons.MovFinanceiro.SQL.Add('Select MOVFINANCEIRO.*, BANCO.NOME, CENTROCUSTO.NOME NOMECENTROCUSTO');
  DmCons.MovFinanceiro.SQL.Add('from MOVFINANCEIRO');
  DmCons.MovFinanceiro.SQL.Add('Left join BANCO on');
  DmCons.MovFinanceiro.SQL.Add('(BANCO.ID = MOVFINANCEIRO.CODBANCO) ');
  DmCons.MovFinanceiro.SQL.Add('Left join CENTROCUSTO on');
  DmCons.MovFinanceiro.SQL.Add('(CENTROCUSTO.ID = MOVFINANCEIRO.CODCENTROCUSTO) ');
  DmCons.MovFinanceiro.SQL.Add('WHERE (0=0) ');
  if JvDBLookupCombo1.Text <> '' then
    begin
      DmCons.MovFinanceiro.SQL.Add(' AND (MOVFINANCEIRO.CODBANCO = :CODBANCO)');
      DmCons.MovFinanceiro.ParamByName('CODBANCO').AsInteger := JvDBLookupCombo1.KeyValue;
    end;
  if JvDateEdit1.Date > 1 then
    begin
      DmCons.MovFinanceiro.SQL.Add(' AND (MOVFINANCEIRO.DTMOVIMENTO >= :DATAINI)');
      DmCons.MovFinanceiro.ParamByName('DATAINI').AsDate := JvDateEdit1.Date;
    end;
  if JvDateEdit2.Date > 1 then
    begin
      DmCons.MovFinanceiro.SQL.Add(' AND (MOVFINANCEIRO.DTMOVIMENTO <= :DATAFIN)');
      DmCons.MovFinanceiro.ParamByName('DATAFIN').AsDate := JvDateEdit2.Date;
    end;
  if JvDBLookupCombo2.Text <> '' then
    begin
      DmCons.MovFinanceiro.SQL.Add(' AND (MOVFINANCEIRO.CODCENTROCUSTO = :CODCENTROCUSTO)');
      DmCons.MovFinanceiro.ParamByName('CODCENTROCUSTO').AsInteger := JvDBLookupCombo2.KeyValue;
    end;
  if vOpcao <> '' then
    DmCons.MovFinanceiro.SQL.Add('  AND ' + vOpcao);
  DmCons.MovFinanceiro.SQL.Add(' Order by MOVFINANCEIRO.DTMOVIMENTO');
  DmCons.qMovFinanceiro.Open;
end;

procedure TfMovFinanceiro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DmCons.qBanco.Close;
  DmCons.qMovFinanceiro.Close;
  DmCons.qCentroCusto.Close;
  Fdm1.tPessoa.Close;
  Action := Cafree;
end;

procedure TfMovFinanceiro.FormCreate(Sender: TObject);
begin

  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);

  DmCons.qBanco.Open;
  DmCons.qCentroCusto.Open;
  Fdm1.tPessoa.Open;
end;

procedure TfMovFinanceiro.BitBtn1Click(Sender: TObject);
begin
  JvxCurrencyEdit1.Clear;
  JvxCurrencyEdit2.Clear;
  JvxCurrencyEdit3.Clear;
  JvxCurrencyEdit4.Clear;
  JvxCurrencyEdit5.Clear;
  Monta_SQL;

  JvxCurrencyEdit1.Value := StrToFloat(FormatFloat('0.00',qSaldoPeriodoVLRENTRADA.AsFloat));
  JvxCurrencyEdit2.Value := StrToFloat(FormatFloat('0.00',qSaldoPeriodoVLRSAIDA.AsFloat));
  JvxCurrencyEdit3.Value := StrToFloat(FormatFloat('0.00',qSaldoPeriodoVLRENTRADA.AsFloat)) -
                            StrToFloat(FormatFloat('0.00',qSaldoPeriodoVLRSAIDA.AsFloat));
  JvxCurrencyEdit4.Value := StrToFloat(FormatFloat('0.00',JvxCurrencyEdit5.Value + JvxCurrencyEdit3.Value));
end;

procedure TfMovFinanceiro.StaticText1Click(Sender: TObject);
begin
  Fdm1.tMovFinanceiro.Close;
  Fdm1.MovFinanceiro.Params[0].AsInteger := 0;
  Fdm1.tMovFinanceiro.Open;
  vAlteraMov       := 'I';
  fMovFinanceiroIt := TfMovFinanceiroIt.Create(Self);

  fMovFinanceiroIt.Dm1 := Fdm1;

  fMovFinanceiroIt.ShowModal;
  BitBtn1Click(Sender);
end;

procedure TfMovFinanceiro.StaticText3Click(Sender: TObject);
begin
  if (DmCons.qMovFinanceiro.RecordCount < 1) then
    ShowMessage('Tabela Vazia!')
  else
  if DmCons.qMovFinanceiroTIPOMOV.AsString <> 'MOV' then
    ShowMessage('Este movimento não pode ser alterado, foi gerado automático!')
  else
    begin
      Fdm1.tMovFinanceiro.Close;
      Fdm1.MovFinanceiro.Params[0].AsInteger := DmCons.qMovFinanceiroNUMMOVTO.AsInteger;
      Fdm1.tMovFinanceiro.Open;
      vAlteraMov       := 'A';
      fMovFinanceiroIt := TfMovFinanceiroIt.Create(Self);

      fMovFinanceiroIt.Dm1 := Fdm1;

      fMovFinanceiroIt.ShowModal;
      BitBtn1Click(Sender);
    end;
end;

procedure TfMovFinanceiro.StaticText2Click(Sender: TObject);
begin
  if DmCons.qMovFinanceiro.RecordCount < 1 then
    ShowMessage('Tabela vazia!')
  else
  if DmCons.qMovFinanceiroTIPOMOV.AsString <> 'MOV' then
    ShowMessage('Este registro não pode ser excluído, foi gerado automaticamente!')
  else
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
    begin
      Fdm1.tMovFinanceiro.Close;
      Fdm1.MovFinanceiro.Params[0].AsInteger := DmCons.qMovFinanceiroNUMMOVTO.AsInteger;
      Fdm1.tMovFinanceiro.Open;
      Fdm1.tMovFinanceiro.Delete;
      Fdm1.tMovFinanceiro.ApplyUpdates(0);
      Fdm1.tMovFinanceiro.Close;
      BitBtn1Click(Sender);
    end;
end;

procedure TfMovFinanceiro.BitBtn2Click(Sender: TObject);
begin
  if (DmCons.qMovFinanceiro.Active = True) and (DmCons.qMovFinanceiro.RecordCount > 0) then
    begin
      fMovFinanceiroRel := TfMovFinanceiroRel.Create(Self);
      fMovFinanceiroRel.RLReport1.Preview;
      fMovFinanceiroRel.Free;
    end
  else
    ShowMessage('Não existem registros para serem impressos!');
end;

procedure TfMovFinanceiro.BitBtn3Click(Sender: TObject);
begin
  fFluxoFuturo := TfFluxoFuturo.Create(Self);
  fFluxoFuturo.ShowModal;
end;

procedure TfMovFinanceiro.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 45 then   //inserir
    StaticText1Click(Sender)
  else
  if key = 46 then   //Exclui
    StaticText2Click(Sender)
  else
  if key = 13 then   //Altera
    StaticText3Click(Sender);
end;

procedure TfMovFinanceiro.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
