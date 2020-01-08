unit URecibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, JvLookup, StdCtrls, Mask, JvToolEdit, Grids, DBGrids,
  SMDBGrid, FMTBcd, DB, DBClient, Provider, SqlExpr, ExtCtrls, uDm1, rsDBUtils;

type
  TfRecibo = class(TForm)
    Label6: TLabel;
    JvDateEdit1: TJvDateEdit;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label8: TLabel;
    JvDateEdit2: TJvDateEdit;
    RzBitBtn2: TRzBitBtn;
    SMDBGrid1: TSMDBGrid;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    Bevel1: TBevel;
    CReceberParc: TSQLDataSet;
    cReceberParcP: TDataSetProvider;
    qCReceberParc: TClientDataSet;
    dsqCReceberParc: TDataSource;
    qCReceberParcNUMCRECEBER: TIntegerField;
    qCReceberParcPARCELA: TStringField;
    qCReceberParcVLRVENCIMENTO: TFloatField;
    qCReceberParcDTVENCIMENTO: TDateField;
    qCReceberParcQUITADO: TStringField;
    qCReceberParcJUROSCALC: TFloatField;
    qCReceberParcDTPAGTO: TDateField;
    qCReceberParcCODCLIENTE: TIntegerField;
    qCReceberParcNUMNOTA: TIntegerField;
    qCReceberParcVLRDESCONTO: TFloatField;
    qCReceberParcVLRPAGTO: TFloatField;
    qCReceberParcVLRRESTANTE: TFloatField;
    qCReceberParcCODVENDEDOR: TIntegerField;
    qCReceberParcPERCCOMISSAO: TFloatField;
    qCReceberParcAGENCIA: TStringField;
    qCReceberParcTITPORTADOR: TStringField;
    qCReceberParcCODTIPOCOBRANCA: TIntegerField;
    qCReceberParcVLRDESPESA: TFloatField;
    qCReceberParcCODBANCO: TIntegerField;
    qCReceberParcPGCARTORIO: TStringField;
    qCReceberParcTITPROTESTADO: TStringField;
    qCReceberParcQTDDIASPROT: TIntegerField;
    qCReceberParcDTMOVIMENTO: TDateField;
    qCReceberParcDIASATRASO: TIntegerField;
    qCReceberParcJUROSPAGOS: TFloatField;
    qCReceberParcCANCELADO: TStringField;
    qCReceberParcTIPODOC: TStringField;
    qCReceberParcVLRDEVOLUCAO: TFloatField;
    qCReceberParcCODCONDPGTO: TIntegerField;
    qCReceberParcDTDEVOLUCAO: TDateField;
    qCReceberParcCOBRANCAEMITIDA: TStringField;
    qCReceberParcNUMCARTEIRA: TStringField;
    qCReceberParcNOSSONUMERO: TStringField;
    qCReceberParcIMPRIMIR: TStringField;
    qCReceberParcCODCENTROCUSTO: TIntegerField;
    qCReceberParcNOMECLIENTE: TStringField;
    qCReceberParcENDCLIENTE: TStringField;
    qCReceberParcCIDADECLIENTE: TStringField;
    qCReceberParcBAIRRO: TStringField;
    qCReceberParcCEP: TStringField;
    CheckBox1: TCheckBox;
    qCReceberParcESTADO: TStringField;
    qCReceberParcPESSOA: TStringField;
    qCReceberParcDOCUMENTO: TStringField;
    qCReceberParcFONE: TStringField;
    CheckBox2: TCheckBox;
    qCReceberParcOBS: TBlobField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    Fdm1: Tdm1;

    procedure Monta_SQL;
  public
    { Public declarations }
  end;

var
  fRecibo: TfRecibo;

implementation

uses UDmCons, URelReciboCob;

{$R *.dfm}

procedure TfRecibo.Monta_SQL;
begin
  qCReceberParc.Close;
  CReceberParc.CommandText := 'Select CRECEBERPARC.*, PESSOA.NOME NOMECLIENTE, ' +
                              ' PESSOA.ENDERECO ENDCLIENTE, A.NOME CIDADECLIENTE, ' +
                              ' PESSOA.BAIRRO, PESSOA.CEP, PESSOA.ESTADO, PESSOA.PESSOA, PESSOA.DOCUMENTO, PESSOA.FONE ' +
                              'from CRECEBERPARC ' +
                              'left join PESSOA on ' +
                              '(PESSOA.ID = CRECEBERPARC.CODCLIENTE) ' +
                              'LEFT JOIN CIDADE A ' +
                              'ON (PESSOA.CIDADE = A.ID) ' +
                              'LEFT JOIN TIPOCOBRANCA B ' +
                              'ON (CRECEBERPARC.CODTIPOCOBRANCA = B.ID) ' +
                              'WHERE (CRECEBERPARC.DTVENCIMENTO BETWEEN ''' + FormatDateTime('MM/DD/YYYY',JvDateEdit1.Date) + ''' AND ''' + FormatDateTime('MM/DD/YYYY',JvDateEdit2.Date) +''' ) ' +
                              '  AND (CRECEBERPARC.VLRRESTANTE > 0) ';
  if JvDBLookupCombo1.Text <> '' then
    CReceberParc.CommandText := CReceberParc.CommandText + '  AND (CRECEBERPARC.CODCLIENTE = ' + JvDBLookupCombo1.Value+')';
  case ComboBox1.ItemIndex of
    0 : CReceberParc.CommandText := CReceberParc.CommandText + ' AND (B.TIPO = ''0'')';
    1 : CReceberParc.CommandText := CReceberParc.CommandText + ' AND (B.TIPO = ''1'')';
  end;
  CReceberParc.CommandText := CReceberParc.CommandText + 'order by CRECEBERPARC.DTVENCIMENTO, PESSOA.NOME';
  qCReceberParc.Open;
end;

procedure TfRecibo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmCons.qCliente.Close;
  Action := Cafree;
end;

procedure TfRecibo.FormShow(Sender: TObject);
begin
  DmCons.qCliente.Open;
end;

procedure TfRecibo.RzBitBtn2Click(Sender: TObject);
begin
  Monta_SQL;
end;

procedure TfRecibo.RzBitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfRecibo.RzBitBtn1Click(Sender: TObject);
begin
  fRelReciboCob := TfRelReciboCob.Create(Self);

  fRelReciboCob.Dm1 := Fdm1;

  fRelReciboCob.RLReport1.Preview;
  fRelReciboCob.RLReport1.Free;
end;

procedure TfRecibo.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked then
    CheckBox1.Checked := false;
end;

procedure TfRecibo.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
    CheckBox2.Checked := false;
end;

procedure TfRecibo.FormCreate(Sender: TObject);
begin
  Fdm1 := TDm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

procedure TfRecibo.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
