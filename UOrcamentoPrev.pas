unit UOrcamentoPrev;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, JvToolEdit, JvLookup, ExtCtrls, FMTBcd,
  DBClient, Provider, DB, SqlExpr, Grids, DBGrids;

type
  TfOrcamentoPrev = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    JvDateEdit1: TJvDateEdit;
    JvDateEdit2: TJvDateEdit;
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Label5: TLabel;
    ComboBox2: TComboBox;
    Resumido: TSQLQuery;
    ResumidoP: TDataSetProvider;
    qResumido: TClientDataSet;
    Cliente: TSQLQuery;
    ClienteP: TDataSetProvider;
    qCliente: TClientDataSet;
    qClienteNOMECLIENTE: TStringField;
    qsCliente: TDataSource;
    qsResumido: TDataSource;
    qResumidoNUMLACTO: TIntegerField;
    qResumidoTIPO: TStringField;
    qResumidoNUMORCAMENTO: TIntegerField;
    qResumidoNUMPEDIDO: TIntegerField;
    qResumidoCODCLIENTE: TIntegerField;
    qResumidoDTPEDIDO: TDateField;
    qResumidoDTPREVENTREGA: TDateField;
    qResumidoCODNATOPER: TIntegerField;
    qResumidoCODCONDPGTO: TIntegerField;
    qResumidoINFCONDPGTO: TStringField;
    qResumidoPERCDESCONTO: TFloatField;
    qResumidoVLRDESCONTO: TFloatField;
    qResumidoCODVENDEDOR: TIntegerField;
    qResumidoPERCCOMISSAO: TFloatField;
    qResumidoVLRTOTAL: TFloatField;
    qResumidoDTENTREGA: TDateField;
    qResumidoCANCELADO: TStringField;
    qResumidoMOTIVOCANC: TStringField;
    qResumidoNUMORCAMENTOCOP: TIntegerField;
    qResumidoNUMPEDCOP: TIntegerField;
    qResumidoQTDDIASVALIDADE: TIntegerField;
    qResumidoCOPIADO: TStringField;
    qResumidoSELECIONADO: TStringField;
    qResumidoPEDIDOCLIENTE: TIntegerField;
    qResumidoOBSERVACAO: TBlobField;
    qResumidoNOMECLIENTE: TStringField;
    qResumidoSITUACAO: TStringField;
    qResumidoNOMEVENDEDOR: TStringField;
    qResumidoNOMECONDPGTO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_SQL;
  public
    { Public declarations }
  end;

var
  fOrcamentoPrev: TfOrcamentoPrev;

implementation

uses UDmCons, UOrcamentoPrevRel;

{$R *.dfm}

procedure TfOrcamentoPrev.Monta_SQL;
var
  vTexto : String;
begin
  vTexto := 'WHERE';
  qResumido.Close;
  Resumido.SQL.Clear;
  Resumido.SQL.Add('SELECT PEDIDO.*, PESSOA.NOME NOMEVENDEDOR, CONDPGTO.NOME NOMECONDPGTO FROM PEDIDO ');
  Resumido.SQL.Add('LEFT JOIN PESSOA ON PEDIDO.CODVENDEDOR = PESSOA.ID ');
  Resumido.SQL.Add('INNER JOIN CONDPGTO ON PEDIDO.CODCONDPGTO = CONDPGTO.ID ');
  case ComboBox1.ItemIndex of
    0 : begin
          Resumido.SQL.Add(vTexto + ' PEDIDO.SITUACAO = ''PE''' );
          vTexto := ' AND ';
        end;
    1 : begin
          Resumido.SQL.Add(vTexto + ' PEDIDO.SITUACAO = ''AP''' );
          vTexto := ' AND ';
        end;
    2 : begin
          Resumido.SQL.Add(vTexto + ' PEDIDO.SITUACAO = ''NA''' );
          vTexto := ' AND ';
        end;
    3 : ;
  end;
  if (JvDateEdit1.Text <> '  /  /    ') then
    begin
      Resumido.SQL.Add(vTexto + ' PEDIDO.DTPEDIDO >= :D1 ');
      Resumido.ParamByName('D1').AsDate := JvDateEdit1.Date;
      vTexto := ' AND ';
    end;
  if (JvDateEdit2.Text <> '  /  /    ') then
    begin
      Resumido.SQL.Add(vTexto + ' PEDIDO.DTPEDIDO <= :D2 ');
      Resumido.ParamByName('D2').AsDate := JvDateEdit2.Date;
      vTexto := ' AND ';
    end;
  if JvDBLookupCombo1.Text <> '' then
    begin
      Resumido.SQL.Add(vTexto + ' PEDIDO.NOMECLIENTE = :C1');
      Resumido.ParamByName('C1').AsString := JvDBLookupCombo1.Text;
      vTexto := ' AND ';
    end;
  Resumido.SQL.Add(vTexto + ' PEDIDO.TIPO = ''O''');
  Resumido.SQL.Add(' ORDER BY PEDIDO.DTPEDIDO');
  Resumido.SQL.Text;
  qResumido.Open;
end;

procedure TfOrcamentoPrev.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qCliente.Close;
  Action := Cafree;
end;

procedure TfOrcamentoPrev.BitBtn3Click(Sender: TObject);
begin
  JvDBLookupCombo1.ClearValue;
  JvDateEdit1.Clear;
  JvDateEdit2.Clear;
end;

procedure TfOrcamentoPrev.BitBtn1Click(Sender: TObject);
begin
  Monta_SQL;
  fOrcamentoPrevRel := TfOrcamentoPrevRel.Create(self);
  fOrcamentoPrevRel.RlReport1.Preview;
  fOrcamentoPrevRel.RlReport1.Free;
end;

procedure TfOrcamentoPrev.FormShow(Sender: TObject);
begin
  qCliente.Open;
end;

end.
