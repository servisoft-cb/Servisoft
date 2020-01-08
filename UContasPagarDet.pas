unit UContasPagarDet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, JvxCtrls, Mask, JvToolEdit,
  JvDBComb, JvLookup, Grids, DBGrids, JvDBCtrl, DB, DBClient, FMTBcd,
  Provider, SqlExpr;

type
  TfContasPagarDet = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label2: TLabel;
    CheckBox1: TCheckBox;
    Label3: TLabel;
    Label4: TLabel;
    JvDateEdit1: TJvDateEdit;
    JvDateEdit2: TJvDateEdit;
    BitBtn3: TBitBtn;
    ComboBox1: TComboBox;
    Pagas: TSQLQuery;
    PagasP: TDataSetProvider;
    qPagas: TClientDataSet;
    qsPagas: TDataSource;
    Label5: TLabel;
    JvDBLookupCombo2: TJvDBLookupCombo;
    BitBtn1: TBitBtn;
    qPagasPARCELA: TStringField;
    qPagasHISTORICO: TStringField;
    qPagasDTULTPGTO: TDateField;
    qPagasVLRULTPGTO: TFloatField;
    qPagasVLRULTJUROSPAGO: TFloatField;
    qPagasVLRULTDESCONTO: TFloatField;
    qPagasNUMDUPLICATA: TIntegerField;
    qPagasNOME: TStringField;
    qPagasNOMEBANCO: TStringField;
    Label6: TLabel;
    JvDBLookupCombo3: TJvDBLookupCombo;
    qPagasNOMECENTROCUSTO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_SQL(Tipo : String);
    procedure Imprimir;
  public
    { Public declarations }
  end;

var
  fContasPagarDet: TfContasPagarDet;

implementation

uses UDmCons, UContasPagarRel;

{$R *.dfm}

procedure TfContasPagarDet.Monta_SQL(Tipo : String);
begin
  DmCons.qCPagarParc.Close;
  DmCons.CPagarParc.SQL.Clear;
  DmCons.CPagarParc.SQL.Add('Select CPAGARPARC.*, BANCO.NOME NOMEBANCO,');
  DmCons.CPagarParc.SQL.Add('BANCO.TIPOBANCO, PESSOA.NOME NOMEFORNECEDOR,');
  DmCons.CPagarParc.SQL.Add('PESSOA.ENDERECO ENDCLIENTE, A.NOME CIDADECLIENTE,');
  DmCons.CPagarParc.SQL.Add('PESSOA.BAIRRO, PESSOA.CEP, CENTROCUSTO.NOME NOMECENTROCUSTO');
  DmCons.CPagarParc.SQL.Add('from CPAGARPARC');
  DmCons.CPagarParc.SQL.Add('left join BANCO on');
  DmCons.CPagarParc.SQL.Add('(BANCO.ID = CPAGARPARC.CODBANCO)');
  DmCons.CPagarParc.SQL.Add('left join PESSOA on');
  DmCons.CPagarParc.SQL.Add('(PESSOA.ID = CPAGARPARC.CODFORNECEDOR)');
  DmCons.CPagarParc.SQL.Add('LEFT JOIN CIDADE A');
  DmCons.CPagarParc.SQL.Add('ON (PESSOA.CIDADE = A.ID)');
  DmCons.CPagarParc.SQL.Add('left join CENTROCUSTO on');
  DmCons.CPagarParc.SQL.Add('(CENTROCUSTO.ID = CPAGARPARC.CODCENTROCUSTO)');
  if (Tipo = 'Vencidas') or (Tipo = 'AVencer') then
    begin
      DmCons.CPagarParc.SQL.Add('where (CPAGARPARC.VLRRESTANTE > 0) ');
      if Tipo = 'Vencidas' then
        DmCons.CPagarParc.SQL.Add(' AND (CPAGARPARC.DTVENCIMENTO < :DataInicial) ');
    end
  else
    DmCons.CPagarParc.SQL.Add('where (0=0)');
  if JvDateEdit1.Date > 0 then
    begin
      if Tipo <> 'Vencidas' then
        DmCons.CPagarParc.SQL.Add(' AND (CPAGARPARC.DTVENCIMENTO >= :DataInicial) ');
      DmCons.CPagarParc.ParamByName('DataInicial').AsDate := JvDateEdit1.Date;
    end;
  if (JvDateEdit2.Date > 0) and (Tipo <> 'Vencidas') then
    begin
      DmCons.CPagarParc.SQL.Add(' AND (CPAGARPARC.DTVENCIMENTO <= :DataFinal) ');
      DmCons.CPagarParc.ParamByName('DataFinal').AsDate := JvDateEdit2.Date;
    end;
  if JvDBLookupCombo1.Text <> '' then
    begin
      DmCons.CPagarParc.SQL.Add('and CPAGARPARC.CODFORNECEDOR = :CODFORNECEDOR');
      DmCons.CPagarParc.ParamByName('CODFORNECEDOR').AsInteger := JvDBLookupCombo1.KeyValue;
    end;
  if JvDBLookupCombo2.Text <> '' then
    begin
      DmCons.CPagarParc.SQL.Add('and CPAGARPARC.CODBANCO = :CODBANCO');
      DmCons.CPagarParc.ParamByName('CODBANCO').AsInteger := JvDBLookupCombo2.KeyValue;
    end;
  if JvDBLookupCombo3.Text <> '' then
    begin
      DmCons.CPagarParc.SQL.Add('and CPAGARPARC.CODCENTROCUSTO = :CODCENTROCUSTO');
      DmCons.CPagarParc.ParamByName('CODCENTROCUSTO').AsInteger := JvDBLookupCombo3.KeyValue;
    end;
  DmCons.CPagarParc.SQL.Add('order by CPAGARPARC.DTVENCIMENTO');
  DmCons.qCPagarParc.Open;
end;

procedure TfContasPagarDet.Imprimir;
begin
  if (ComboBox1.ItemIndex = 0) then
    Monta_SQL('Vencidas')
  else
  if (ComboBox1.ItemIndex = 1) then
    Monta_SQL('AVencer')
  else
  if (ComboBox1.ItemIndex = 3) then
    Monta_SQL('Todas')
  else
  if (ComboBox1.ItemIndex = 2) then
    begin
      // pela data de pagamento
      qPagas.Close;
      Pagas.SQL.Clear;
      Pagas.SQL.Add('select cpagarhist.parcela, cpagarhist.historico, cpagarhist.dtultpgto, cpagarhist.vlrultpgto, ');
      Pagas.SQL.Add(' cpagarhist.vlrultjurospago, cpagarhist.vlrultdesconto, cpagarhist.numduplicata, Pessoa.nome, banco.nome nomebanco, CENTROCUSTO.NOME NOMECENTROCUSTO');
      Pagas.SQL.Add('from cpagarhist');
      Pagas.SQL.Add(' inner join Pessoa on');
      Pagas.SQL.Add(' (cpagarhist.codfornecedor = Pessoa.id)');
      Pagas.SQL.Add(' inner join Banco on');
      Pagas.SQL.Add(' (banco.id = cpagarhist.codbanco)');
      Pagas.SQL.Add(' inner join cPagarParc on ');
      Pagas.SQL.Add(' (cPagarParc.NumCPagar = cpagarhist.NumCPagar) And ');
      Pagas.SQL.Add(' (cPagarParc.Parcela = cpagarhist.Parcela) ');
      Pagas.SQL.Add(' LEFT JOIN CENTROCUSTO on');
      Pagas.SQL.Add(' (CENTROCUSTO.ID = CPAGARPARC.CODCENTROCUSTO)');
      Pagas.SQL.Add('WHERE (0=0) ');
      if JvDBLookupCombo1.Text <> '' then
        begin
          Pagas.SQL.Add(' AND (cpagarhist.codfornecedor = :C1) ');
          Pagas.ParamByName('C1').AsInteger := JvDBLookupCombo1.KeyValue;
        end;
      if JvDBLookupCombo2.Text <> '' then
        begin
          Pagas.SQL.Add(' AND (cpagarhist.codbanco = :C2) ');
          Pagas.ParamByName('C2').AsInteger := JvDBLookupCombo2.KeyValue;
        end;
      if JvDBLookupCombo3.Text <> '' then
        begin
          Pagas.SQL.Add(' AND (cpagarparc.CODCENTROCUSTO = :CODCENTROCUSTO) ');
          Pagas.ParamByName('CODCENTROCUSTO').AsInteger := JvDBLookupCombo3.KeyValue;
        end;
      if JvDateEdit1.Text <> '  /  /    ' then
        begin
          Pagas.SQL.Add(' AND (cpagarhist.dtultpgto >= :D1) ');
          Pagas.ParamByName('D1').AsDate := JvDateEdit1.Date;
        end;
      if JvDateEdit2.Text <> '  /  /    ' then
        begin
          Pagas.SQL.Add(' AND (cpagarhist.dtultpgto <= :D2)');
          Pagas.ParamByName('D2').AsDate := JvDateEdit2.Date;
        end;
      Pagas.SQL.Add('Order By cpagarhist.dtultpgto');
      qPagas.Open;
      fContasPagarRel := TfContasPagarRel.Create(self);
      fContasPagarRel.RLReport2.Preview;
      fContasPagarRel.RLReport2.Free;
      FreeAndNil(fContasPagarRel);
    end;
  if ComboBox1.ItemIndex <> 2 then
    begin
      fContasPagarRel := TfContasPagarRel.Create(self);
      fContasPagarRel.RLReport1.Preview;
      fContasPagarRel.RLReport1.Free;
      FreeAndNil(fContasPagarRel);
    end;
end;

procedure TfContasPagarDet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DmCons.qCPagarParc.Active then
    DmCons.qCPagarParc.PacketRecords := 16;
  DmCons.qBanco.Close;
  DmCons.qFornecedor.Close;
  Action := Cafree;
end;

procedure TfContasPagarDet.FormShow(Sender: TObject);
begin
  DmCons.qCPagarParc.PacketRecords := -1;
  fContasPagarDet.Top    := 56;
  fContasPagarDet.Height := 194;
  DmCons.qFornecedor.Open;
  DmCons.qBanco.Open;
  if not DmCons.qCentroCusto.Active then
    DmCons.qCentroCusto.Open;
end;

procedure TfContasPagarDet.BitBtn3Click(Sender: TObject);
begin
  fContasPagarDet.Height := 194;
  JvDBLookupCombo1.ClearValue;
  ComboBox1.ItemIndex := -1;
  JvDateEdit1.Clear;
  JvDateEdit2.Clear;
  CheckBox1.Checked := False;
end;

procedure TfContasPagarDet.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0     : JvDateEdit2.Enabled := False;
    1,2,3 : JvDateEdit2.Enabled := True;
  end;
end;

procedure TfContasPagarDet.BitBtn1Click(Sender: TObject);
begin
  if JvDateEdit1.Date < 1 then
    if (ComboBox1.ItemIndex = 0) or (ComboBox1.ItemIndex = 1) then
      JvDateEdit1.Date := Date;
  case ComboBox1.ItemIndex of
    0,1,3 : begin
              DmCons.qCPagarParc.DisableControls;
              Imprimir;
              DmCons.qCPagarParc.EnableControls;
            end;
    2     : begin
              qPagas.DisableControls;
              Imprimir;
              qPagas.EnableControls;
            end;
  end;
end;

end.
