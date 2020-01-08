unit UPrevPessoa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvLookup, StdCtrls, DBCtrls, Buttons, FMTBcd, DB, DBClient,
  Provider, SqlExpr;

type
  TfPrevPessoa = class(TForm)
    Label41: TLabel;
    JvDBLookupCombo8: TJvDBLookupCombo;
    Label9: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Pessoa: TSQLQuery;
    PessoaP: TDataSetProvider;
    qPessoa: TClientDataSet;
    qsPessoa: TDataSource;
    qPessoaID: TIntegerField;
    qPessoaNOME: TStringField;
    qPessoaFANTASIA: TStringField;
    qPessoaPESSOA: TStringField;
    qPessoaDOCUMENTO: TStringField;
    qPessoaENDERECO: TStringField;
    qPessoaBAIRRO: TStringField;
    qPessoaCEP: TStringField;
    qPessoaESTADO: TStringField;
    qPessoaFONE: TStringField;
    qPessoaFAX: TStringField;
    qPessoaINSCESTADUAL: TStringField;
    qPessoaIDENTIDADE: TStringField;
    qPessoaESTCIVIL: TStringField;
    qPessoaPROFISSAO: TStringField;
    qPessoaNACIONALIDADE: TStringField;
    qPessoaDTCADASTRO: TDateField;
    qPessoaOBSERVACAO: TMemoField;
    qPessoaFORNECEDOR: TStringField;
    qPessoaCLIENTE: TStringField;
    qPessoaVENDEDOR: TStringField;
    qPessoaREFPESSOAL1: TStringField;
    qPessoaREFPESSOAL2: TStringField;
    qPessoaREFPESSOALEND1: TStringField;
    qPessoaREFPESSOALEND2: TStringField;
    qPessoaREFPESSOALFONE1: TStringField;
    qPessoaREFPESSOALFONE2: TStringField;
    qPessoaREFCOMERCIAL1: TStringField;
    qPessoaREFCOMERCIAL2: TStringField;
    qPessoaREFCOMERCIALEND1: TStringField;
    qPessoaREFCOMERCIALEND2: TStringField;
    qPessoaREFCOMERCIALFONE1: TStringField;
    qPessoaREFCOMERCIALFONE2: TStringField;
    qPessoaCIDADE: TIntegerField;
    qPessoaTRANSPORTADORA: TStringField;
    qPessoaPERCCOMISSAO: TFloatField;
    qPessoaTIPOCOMISSAO: TStringField;
    qPessoaSTATUS: TStringField;
    qPessoaDTCONTRATOINI: TDateField;
    qPessoaDTCONTRATOFIM: TDateField;
    qPessoaCONTRATODEVOLVIDO: TDateField;
    qPessoaCOBENDERECO: TStringField;
    qPessoaCOBNUMERO: TIntegerField;
    qPessoaCOBCOMPLEMENTO: TStringField;
    qPessoaCOBBAIRRO: TStringField;
    qPessoaCOBCIDADE: TIntegerField;
    qPessoaCOBUF: TStringField;
    qPessoaCOBCONTATO: TStringField;
    qPessoaENDNUMERO: TIntegerField;
    qPessoaENDCOMPLEMENTO: TStringField;
    qPessoaIDUSUARIO: TIntegerField;
    qPessoaCODBANCO: TIntegerField;
    qPessoaAGENCIA: TStringField;
    qPessoaNUMCONTACORRENTE: TStringField;
    qPessoaLOGIN: TStringField;
    qPessoaSENHA: TStringField;
    qPessoaDIAPAGAMENTO: TIntegerField;
    qPessoaCODVENDEDOR: TIntegerField;
    qPessoaFORMAPGTO: TIntegerField;
    qPessoaEMAIL: TStringField;
    qPessoaHOMEPAGE: TStringField;
    qPessoaSELECIONADO: TStringField;
    qPessoaCONJUGE: TStringField;
    qPessoaDTNASCIMENTO: TDateField;
    qPessoaCEL: TStringField;
    qPessoaPLANOSAUDE_ID: TIntegerField;
    qPessoaCOBCEP: TStringField;
    qPessoaVLRPGTO: TFloatField;
    qPessoaNUMCARTEIRA: TStringField;
    qPessoaFUNCIONARIO: TStringField;
    qPessoaCODCENTROCUSTO: TIntegerField;
    qPessoaNOMECIDADE: TStringField;
    qPessoaNOMECENTROCUSTO: TStringField;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_SQL;
  public
    { Public declarations }
  end;

var
  fPrevPessoa: TfPrevPessoa;

implementation

{$R *.dfm}

procedure TfPrevPessoa.Monta_SQL;
var
  vSeparador : String;
begin
  qPessoa.Close;
  Pessoa.SQL.Add('SELECT PESSOA.*, CIDADE.NOME NOMECIDADE, CENTROCUSTO.NOME NOMECENTROCUSTO');
  Pessoa.SQL.Add('FROM PESSOA');
  Pessoa.SQL.Add('LEFT JOIN CIDADE');
  Pessoa.SQL.Add(' ON (PESSOA.CIDADE = CIDADE.ID)');
  Pessoa.SQL.Add('LEFT JOIN CENTROCUSTO');
  Pessoa.SQL.Add(' ON (PESSOA.CODCENTROCUSTO = CENTROCUSTO.ID)');
  vSeparador := 'WHERE';
  if CheckBox1.Checked then
    begin
      Pessoa.SQL.Add(vSeparador + ' (PESSOA.CLIENTE = 1)');
      vSeparador := 'AND';
    end;
  if CheckBox2.Checked then
    begin
      Pessoa.SQL.Add(vSeparador + ' (PESSOA.TRANSPORTADORA = 1)');
      vSeparador := 'AND';
    end;
  if CheckBox3.Checked then
    begin
      Pessoa.SQL.Add(vSeparador + ' (PESSOA.FORNECEDOR = 1)');
      vSeparador := 'AND';
    end;
  if CheckBox4.Checked then
    begin
      Pessoa.SQL.Add(vSeparador + ' (PESSOA.VENDEDOR = 1)');
      vSeparador := 'AND';
    end;
  if CheckBox5.Checked then
    begin
      Pessoa.SQL.Add(vSeparador + ' (PESSOA.FUNCIONARIO = 1)');
      vSeparador := 'AND';
    end;
  if JvDBLookupCombo8.Text <> '' then
    begin
      Pessoa.SQL.Add(vSeparador + ' (PESSOA.CODCENTROCUSTO = :CODCENTROCUSTO)');
      Pessoa.ParamByName('CODCENTROCUSTO').AsInteger := JvDBLookupCombo8.KeyValue;
      vSeparador := 'AND';
    end;
  if JvDBLookupCombo1.Text <> '' then
    begin
      Pessoa.SQL.Add(vSeparador + ' (PESSOA.CIDADE = :CIDADE)');
      Pessoa.ParamByName('CIDADE').AsInteger := JvDBLookupCombo1.KeyValue;
      vSeparador := 'AND';
    end;
  Pessoa.SQL.Add('ORDER BY PESSOA.NOME');
  qPessoa.Open;
end;

procedure TfPrevPessoa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfPrevPessoa.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevPessoa.BitBtn1Click(Sender: TObject);
begin
  if (CheckBox1.Checked) or (CheckBox2.Checked) or (CheckBox3.Checked) or
     (CheckBox4.Checked) or (CheckBox5.Checked) then
    begin
      Monta_SQL;


    end
  else
    ShowMessage('Falta informar um tipo!');
end;

end.
