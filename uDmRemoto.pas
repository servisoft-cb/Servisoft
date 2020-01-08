unit uDmRemoto;

interface

uses
  SysUtils, Classes, DBXpress, FMTBcd, DB, DBClient, Provider, SqlExpr, IniFiles, Forms;

type
  TdmRemoto = class(TDataModule)
    scConexao: TSQLConnection;
    sdsPessoa: TSQLDataSet;
    dspPessoa: TDataSetProvider;
    cdsPessoa: TClientDataSet;
    dsPessoa: TDataSource;
    cdsPessoaID: TIntegerField;
    cdsPessoaNOME: TStringField;
    cdsPessoaFANTASIA: TStringField;
    cdsPessoaPESSOA: TStringField;
    cdsPessoaDOCUMENTO: TStringField;
    cdsPessoaENDERECO: TStringField;
    cdsPessoaBAIRRO: TStringField;
    cdsPessoaCEP: TStringField;
    cdsPessoaESTADO: TStringField;
    cdsPessoaFONE: TStringField;
    cdsPessoaFAX: TStringField;
    cdsPessoaINSCESTADUAL: TStringField;
    cdsPessoaIDENTIDADE: TStringField;
    cdsPessoaESTCIVIL: TStringField;
    cdsPessoaPROFISSAO: TStringField;
    cdsPessoaNACIONALIDADE: TStringField;
    cdsPessoaDTCADASTRO: TDateField;
    cdsPessoaOBSERVACAO: TMemoField;
    cdsPessoaFORNECEDOR: TStringField;
    cdsPessoaCLIENTE: TStringField;
    cdsPessoaVENDEDOR: TStringField;
    cdsPessoaREFPESSOAL1: TStringField;
    cdsPessoaREFPESSOAL2: TStringField;
    cdsPessoaREFPESSOALEND1: TStringField;
    cdsPessoaREFPESSOALEND2: TStringField;
    cdsPessoaREFPESSOALFONE1: TStringField;
    cdsPessoaREFPESSOALFONE2: TStringField;
    cdsPessoaREFCOMERCIAL1: TStringField;
    cdsPessoaREFCOMERCIAL2: TStringField;
    cdsPessoaREFCOMERCIALEND1: TStringField;
    cdsPessoaREFCOMERCIALEND2: TStringField;
    cdsPessoaREFCOMERCIALFONE1: TStringField;
    cdsPessoaREFCOMERCIALFONE2: TStringField;
    cdsPessoaCIDADE: TIntegerField;
    cdsPessoaTRANSPORTADORA: TStringField;
    cdsPessoaPERCCOMISSAO: TFloatField;
    cdsPessoaTIPOCOMISSAO: TStringField;
    cdsPessoaSTATUS: TStringField;
    cdsPessoaDTCONTRATOINI: TDateField;
    cdsPessoaDTCONTRATOFIM: TDateField;
    cdsPessoaCONTRATODEVOLVIDO: TDateField;
    cdsPessoaCOBENDERECO: TStringField;
    cdsPessoaCOBNUMERO: TIntegerField;
    cdsPessoaCOBCOMPLEMENTO: TStringField;
    cdsPessoaCOBBAIRRO: TStringField;
    cdsPessoaCOBCIDADE: TIntegerField;
    cdsPessoaCOBUF: TStringField;
    cdsPessoaCOBCONTATO: TStringField;
    cdsPessoaENDNUMERO: TIntegerField;
    cdsPessoaENDCOMPLEMENTO: TStringField;
    cdsPessoaIDUSUARIO: TIntegerField;
    cdsPessoaCODBANCO: TIntegerField;
    cdsPessoaAGENCIA: TStringField;
    cdsPessoaNUMCONTACORRENTE: TStringField;
    cdsPessoaLOGIN: TStringField;
    cdsPessoaSENHA: TStringField;
    cdsPessoaDIAPAGAMENTO: TIntegerField;
    cdsPessoaCODVENDEDOR: TIntegerField;
    cdsPessoaFORMAPGTO: TIntegerField;
    cdsPessoaEMAIL: TStringField;
    cdsPessoaHOMEPAGE: TStringField;
    cdsPessoaSELECIONADO: TStringField;
    cdsPessoaCONJUGE: TStringField;
    cdsPessoaDTNASCIMENTO: TDateField;
    cdsPessoaCEL: TStringField;
    cdsPessoaPLANOSAUDE_ID: TIntegerField;
    cdsPessoaCOBCEP: TStringField;
    cdsPessoaVLRPGTO: TFloatField;
    cdsPessoaNUMCARTEIRA: TStringField;
    cdsPessoaFUNCIONARIO: TStringField;
    cdsPessoaCODCENTROCUSTO: TIntegerField;
    cdsPessoaCODTIPOCOBRANCA: TIntegerField;
    cdsPessoaTIPOSALARIO: TStringField;
    cdsPessoaVALORSALARIO: TFloatField;
    cdsPessoaRG: TStringField;
    cdsPessoaDT_LIBERADO: TStringField;
    cdsPessoaVERSAO_EXE: TStringField;
    cdsPessoaCODVENDEDOR_COB: TIntegerField;
    SQLQuery1: TSQLQuery;
    cdsPessoaEMPRESA_PRINCIPAL: TStringField;
    cdsPessoaID_EMPRESA_PRINCIPAL: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ExecutaConsulta(SQL: string);
  public
    { Public declarations }
    ctPessoa: String;
    function LocalizarRegistro(bLocalizar: Boolean; Codigo: Integer = 0): Boolean;
    procedure IncluirRegistro();
    procedure ExcluirRegistro();
    procedure CancelarRegistro();
    procedure GravarRegistro();
  end;

var
  dmRemoto: TdmRemoto;

implementation

{$R *.dfm}

procedure TdmRemoto.ExecutaConsulta(SQL: string);
begin
  cdsPessoa.Close;
  sdsPessoa.CommandText := SQL;
  cdsPessoa.Open;
end;

function TdmRemoto.LocalizarRegistro(bLocalizar: Boolean; Codigo: Integer): Boolean;
begin
  if not bLocalizar and not cdsPessoa.Active then
  begin
    ExecutaConsulta(ctPessoa + ' WHERE ID = ' + IntToStr(Codigo));
    Result := not cdsPessoa.IsEmpty;
  end
  else if (not cdsPessoa.IsEmpty) and (Codigo > 0) then
  begin
    cdsPessoa.First;
    Result := cdsPessoa.Locate('ID', Codigo, []);
  end
  else
    Result := not cdsPessoa.IsEmpty;
end;

procedure TdmRemoto.DataModuleCreate(Sender: TObject);
var
  Config: TIniFile;
begin
{  scConexao.Connected := False;
  Config := TIniFile.Create(ExtractFilePath(Application.ExeName + 'dbxconnections.ini'));
  scConexao.Params.Values['DATABASE']   := Config.ReadString('ServisoftRemoto', 'DATABASE', '');
  scConexao.Params.Values['USER_NAME']  := Config.ReadString('ServisoftRemoto', 'USERNAME', '');
  scConexao.Params.Values['PASSWORD']   := Config.ReadString('ServisoftRemoto', 'PASSWORD', '');
  scConexao.Connected := True;
}

  ctPessoa := sdsPessoa.CommandText;
end;

procedure TdmRemoto.IncluirRegistro;
begin
  if not cdsPessoa.Active then
    LocalizarRegistro(False);
  cdsPessoa.Insert;
end;

procedure TdmRemoto.ExcluirRegistro;
var
  sBookmark: string;
begin
  sBookmark := cdsPessoa.Bookmark;
  try
    cdsPessoa.DisableControls;
    try
      cdsPessoa.Delete;
      if (cdsPessoa.ChangeCount > 0) and (cdsPessoa.ApplyUpdates(0) > 0) then
        Abort;
    except
      CancelarRegistro;
      cdsPessoa.Bookmark := sBookmark;
      raise;
    end;
  finally
    cdsPessoa.EnableControls;
  end;
end;

procedure TdmRemoto.CancelarRegistro;
var
  iCodigo: integer;
begin
  iCodigo := 0;
  if cdsPessoa.State in [dsEdit] then
    iCodigo := cdsPessoaID.AsInteger;

  if cdsPessoa.Active then
    cdsPessoa.CancelUpdates;

  if (cdsPessoaID.AsInteger <> iCodigo) then
    cdsPessoa.Locate('ID', iCodigo, []);
end;

procedure TdmRemoto.GravarRegistro;
begin
  if cdsPessoa.State in [dsEdit, dsInsert] then
    cdsPessoa.Post;

  if cdsPessoa.ApplyUpdates(0) > 0 then
    Abort;
end;

end.
