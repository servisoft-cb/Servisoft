unit UContasReceberDet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, JvxCtrls, Mask, JvToolEdit,
  JvDBComb, JvLookup, Grids, DBGrids, JvDBCtrl, DB, DBClient, FMTBcd,
  Provider, SqlExpr;

type
  TfContasReceberDet = class(TForm)
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
    qPagasPARCELA: TStringField;
    qPagasHISTORICO: TStringField;
    qPagasDTULTPGTO: TDateField;
    qPagasVLRULTPGTO: TFloatField;
    qPagasVLRULTJUROSPAGO: TFloatField;
    qPagasVLRULTDESCONTO: TFloatField;
    qPagasNUMNOTA: TIntegerField;
    qPagasNOME: TStringField;
    Label5: TLabel;
    JvDBLookupCombo2: TJvDBLookupCombo;
    qPagasNOMEBANCO: TStringField;
    BitBtn1: TBitBtn;
    Label6: TLabel;
    JvDBLookupCombo3: TJvDBLookupCombo;
    Label7: TLabel;
    JvDBLookupCombo4: TJvDBLookupCombo;
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
  fContasReceberDet: TfContasReceberDet;

implementation

uses UDmCons, UContasReceberRel;

{$R *.dfm}

procedure TfContasReceberDet.Monta_SQL(Tipo : String);
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
  DmCons.CReceberParc.SQL.Add('inner join PESSOA on');
  DmCons.CReceberParc.SQL.Add('(PESSOA.ID = CRECEBERPARC.CODCLIENTE)');
  DmCons.CReceberParc.SQL.Add('LEFT JOIN CIDADE A');
  DmCons.CReceberParc.SQL.Add('ON (PESSOA.CIDADE = A.ID)');
  DmCons.CReceberParc.SQL.Add('left join CENTROCUSTO on ');
  DmCons.CReceberParc.SQL.Add('(CENTROCUSTO.ID = CRECEBERPARC.CODCENTROCUSTO) ');
  DmCons.CReceberParc.SQL.Add('left join PESSOA VEND on ');
  DmCons.CReceberParc.SQL.Add('(VEND.ID = CRECEBERPARC.CODVENDEDOR) ');
  if (Tipo = 'Vencidas') or (Tipo = 'AVencer') then
    begin
      DmCons.CReceberParc.SQL.Add('where (CRECEBERPARC.VLRRESTANTE > 0)');
      if Tipo = 'Vencidas' then
        DmCons.CReceberParc.SQL.Add(' AND (CRECEBERPARC.DTVENCIMENTO < :DataInicial) ');
    end
  else
    DmCons.CReceberParc.SQL.Add('where (0=0) ');
  if JvDateEdit1.Date > 0 then
    begin
      if Tipo <> 'Vencidas' then
        DmCons.CReceberParc.SQL.Add(' AND (CRECEBERPARC.DTVENCIMENTO >= :DataInicial) ');
      DmCons.CReceberParc.ParamByName('DataInicial').AsDate := JvDateEdit1.Date;
    end;
  if (JvDateEdit2.Date > 0) and (Tipo <> 'Vencidas') then
    begin
      DmCons.CReceberParc.SQL.Add(' AND (CRECEBERPARC.DTVENCIMENTO <= :DataFinal) ');
      DmCons.CReceberParc.ParamByName('DataFinal').AsDate := JvDateEdit2.Date;
    end;
  if JvDBLookupCombo1.Text <> '' then
    begin
      DmCons.CReceberParc.SQL.Add(' and CRECEBERPARC.CODCLIENTE = :CODCLIENTE');
      DmCons.CReceberParc.ParamByName('CODCLIENTE').AsInteger := JvDBLookupCombo1.KeyValue;
    end;
  if JvDBLookupCombo2.Text <> '' then
    begin
      DmCons.CReceberParc.SQL.Add(' and CRECEBERPARC.CODBANCO = :CODBANCO');
      DmCons.CReceberParc.ParamByName('CODBANCO').AsInteger := JvDBLookupCombo2.KeyValue;
    end;
  if JvDBLookupCombo3.Text <> '' then
    begin
      DmCons.CReceberParc.SQL.Add(' and CRECEBERPARC.CODCENTROCUSTO = :CODCENTROCUSTO');
      DmCons.CReceberParc.ParamByName('CODCENTROCUSTO').AsInteger := JvDBLookupCombo3.KeyValue;
    end;
  if JvDBLookupCombo4.Text <> '' then
    begin
      DmCons.CReceberParc.SQL.Add(' and CRECEBERPARC.CODVENDEDOR = :CODVENDEDOR');
      DmCons.CReceberParc.ParamByName('CODVENDEDOR').AsInteger := JvDBLookupCombo4.KeyValue;
    end;
  DmCons.CReceberParc.SQL.Add('order by CRECEBERPARC.DTVENCIMENTO');
  DmCons.qCReceberParc.Open;
end;

procedure TfContasReceberDet.Imprimir;
begin
  if ComboBox1.ItemIndex = 0 then
    Monta_SQL('Vencidas')
  else
  if ComboBox1.ItemIndex = 1 then
    Monta_SQL('AVencer')
  else
  if ComboBox1.ItemIndex = 3 then
    Monta_SQL('Todas')
  else
  if (ComboBox1.ItemIndex = 2) then
    begin
      // pela data de pagamento
      qPagas.Close;
      Pagas.SQL.Clear;
      Pagas.SQL.Add('select creceberhist.parcela, creceberhist.historico, creceberhist.dtultpgto, creceberhist.vlrultpgto,');
      Pagas.SQL.Add('creceberhist.vlrultjurospago, creceberhist.vlrultdesconto, creceberhist.numnota, Pessoa.nome, banco.nome nomebanco');
      Pagas.SQL.Add('from creceberhist');
      Pagas.SQL.Add('inner join Pessoa on');
      Pagas.SQL.Add('(creceberhist.codcliente = Pessoa.id)');
      Pagas.SQL.Add('inner join Banco on');
      Pagas.SQL.Add('(banco.id = creceberhist.codbanco)');
      Pagas.SQL.Add('INNER JOIN CRECEBERPARC ON');
      Pagas.SQL.Add('(CRECEBERPARC.NUMCRECEBER = CRECEBERHIST.NUMCRECEBER) AND');
      Pagas.SQL.Add('(CRECEBERPARC.PARCELA = CRECEBERHIST.PARCELA)');
      Pagas.SQL.Add('WHERE (0=0)');
      if JvDBLookupCombo1.Text <> '' then
        begin
          Pagas.SQL.Add(' AND creceberhist.codcliente = :C1');
          Pagas.ParamByName('C1').AsInteger := JvDBLookupCombo1.KeyValue;
        end;
      if JvDBLookupCombo2.Text <> '' then
        begin
          Pagas.SQL.Add(' AND creceberhist.codbanco = :C2');
          Pagas.ParamByName('C2').AsInteger := JvDBLookupCombo2.KeyValue;
        end;
      if JvDBLookupCombo3.Text <> '' then
        begin
          Pagas.SQL.Add(' AND CRECEBERPARC.CODCENTROCUSTO = :CODCENTROCUSTO');
          Pagas.ParamByName('CODCENTROCUSTO').AsInteger := JvDBLookupCombo3.KeyValue;
        end;
      if JvDateEdit1.Text <> '  /  /    ' then
        begin
          Pagas.SQL.Add(' AND creceberhist.dtultpgto >= :D1');
          Pagas.ParamByName('D1').AsDate := JvDateEdit1.Date;
        end;
      if JvDateEdit2.Text <> '  /  /    ' then
        begin
          Pagas.SQL.Add(' AND creceberhist.dtultpgto <= :D2');
          Pagas.ParamByName('D2').AsDate := JvDateEdit2.Date;
        end;
      Pagas.SQL.Add('Order By creceberhist.dtultpgto');
      qPagas.Open;
      fContasReceberRel := TfContasReceberRel.Create(self);
      fContasReceberRel.RLReport2.Preview;
      fContasReceberRel.RLReport2.Free;
      FreeAndNil(fContasReceberRel);
    end;
  if ComboBox1.ItemIndex <> 2 then
    begin
      fContasReceberRel := TfContasReceberRel.Create(self);
      fContasReceberRel.RLReport1.Preview;
      fContasReceberRel.RLReport1.Free;
      FreeAndNil(fContasReceberRel);
    end;
end;

procedure TfContasReceberDet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DmCons.qCReceberParc.PacketRecords := 16;
  DmCons.qBanco.Close;
  DmCons.qCliente.Close;
  Action := Cafree;
end;

procedure TfContasReceberDet.FormShow(Sender: TObject);
begin
  DmCons.qCReceberParc.PacketRecords := -1;
  DmCons.qCliente.Open;
  DmCons.qBanco.Open;
end;

procedure TfContasReceberDet.BitBtn3Click(Sender: TObject);
begin
  JvDBLookupCombo1.ClearValue;
  ComboBox1.ItemIndex := -1;
  JvDateEdit1.Clear;
  JvDateEdit2.Clear;
  CheckBox1.Checked := False;
end;

procedure TfContasReceberDet.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0     : JvDateEdit2.Enabled := False;
    1,2,3 : JvDateEdit2.Enabled := True;
  end;
end;

procedure TfContasReceberDet.BitBtn1Click(Sender: TObject);
begin
  if JvDateEdit1.Date < 1 then
    if (ComboBox1.ItemIndex = 0) or (ComboBox1.ItemIndex = 1) then
      JvDateEdit1.Date := Date;
  case ComboBox1.ItemIndex of
    0,1,3 : begin
              DmCons.qCReceberParc.DisableControls;
              Imprimir;
              DmCons.qCReceberParc.EnableControls;
            end;
    2     : begin
              qPagas.DisableControls;
              Imprimir;
              qPagas.EnableControls;
            end;
  end;
end;

end.
