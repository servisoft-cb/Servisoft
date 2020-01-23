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
    sdsPessoaID: TIntegerField;
    sdsPessoaNOME: TStringField;
    sdsPessoaFANTASIA: TStringField;
    sdsPessoaPESSOA: TStringField;
    sdsPessoaDOCUMENTO: TStringField;
    sdsPessoaENDERECO: TStringField;
    sdsPessoaBAIRRO: TStringField;
    sdsPessoaCEP: TStringField;
    sdsPessoaESTADO: TStringField;
    sdsPessoaFONE: TStringField;
    sdsPessoaFAX: TStringField;
    sdsPessoaINSCESTADUAL: TStringField;
    sdsPessoaIDENTIDADE: TStringField;
    sdsPessoaESTCIVIL: TStringField;
    sdsPessoaPROFISSAO: TStringField;
    sdsPessoaNACIONALIDADE: TStringField;
    sdsPessoaDTCADASTRO: TDateField;
    sdsPessoaOBSERVACAO: TMemoField;
    sdsPessoaFORNECEDOR: TStringField;
    sdsPessoaCLIENTE: TStringField;
    sdsPessoaVENDEDOR: TStringField;
    sdsPessoaREFPESSOAL1: TStringField;
    sdsPessoaREFPESSOAL2: TStringField;
    sdsPessoaREFPESSOALEND1: TStringField;
    sdsPessoaREFPESSOALEND2: TStringField;
    sdsPessoaREFPESSOALFONE1: TStringField;
    sdsPessoaREFPESSOALFONE2: TStringField;
    sdsPessoaREFCOMERCIAL1: TStringField;
    sdsPessoaREFCOMERCIAL2: TStringField;
    sdsPessoaREFCOMERCIALEND1: TStringField;
    sdsPessoaREFCOMERCIALEND2: TStringField;
    sdsPessoaREFCOMERCIALFONE1: TStringField;
    sdsPessoaREFCOMERCIALFONE2: TStringField;
    sdsPessoaCIDADE: TIntegerField;
    sdsPessoaTRANSPORTADORA: TStringField;
    sdsPessoaPERCCOMISSAO: TFloatField;
    sdsPessoaTIPOCOMISSAO: TStringField;
    sdsPessoaSTATUS: TStringField;
    sdsPessoaDTCONTRATOINI: TDateField;
    sdsPessoaDTCONTRATOFIM: TDateField;
    sdsPessoaCONTRATODEVOLVIDO: TDateField;
    sdsPessoaCOBENDERECO: TStringField;
    sdsPessoaCOBNUMERO: TIntegerField;
    sdsPessoaCOBCOMPLEMENTO: TStringField;
    sdsPessoaCOBBAIRRO: TStringField;
    sdsPessoaCOBCIDADE: TIntegerField;
    sdsPessoaCOBUF: TStringField;
    sdsPessoaCOBCONTATO: TStringField;
    sdsPessoaENDNUMERO: TIntegerField;
    sdsPessoaENDCOMPLEMENTO: TStringField;
    sdsPessoaIDUSUARIO: TIntegerField;
    sdsPessoaCODBANCO: TIntegerField;
    sdsPessoaAGENCIA: TStringField;
    sdsPessoaNUMCONTACORRENTE: TStringField;
    sdsPessoaLOGIN: TStringField;
    sdsPessoaSENHA: TStringField;
    sdsPessoaDIAPAGAMENTO: TIntegerField;
    sdsPessoaCODVENDEDOR: TIntegerField;
    sdsPessoaFORMAPGTO: TIntegerField;
    sdsPessoaEMAIL: TStringField;
    sdsPessoaHOMEPAGE: TStringField;
    sdsPessoaSELECIONADO: TStringField;
    sdsPessoaCONJUGE: TStringField;
    sdsPessoaDTNASCIMENTO: TDateField;
    sdsPessoaCEL: TStringField;
    sdsPessoaPLANOSAUDE_ID: TIntegerField;
    sdsPessoaCOBCEP: TStringField;
    sdsPessoaVLRPGTO: TFloatField;
    sdsPessoaNUMCARTEIRA: TStringField;
    sdsPessoaFUNCIONARIO: TStringField;
    sdsPessoaCODCENTROCUSTO: TIntegerField;
    sdsPessoaCODTIPOCOBRANCA: TIntegerField;
    sdsPessoaTIPOSALARIO: TStringField;
    sdsPessoaVALORSALARIO: TFloatField;
    sdsPessoaRG: TStringField;
    sdsPessoaDT_LIBERADO: TStringField;
    sdsPessoaVERSAO_EXE: TStringField;
    sdsPessoaCODVENDEDOR_COB: TIntegerField;
    sdsPessoaEMPRESA_PRINCIPAL: TStringField;
    sdsPessoaID_EMPRESA_PRINCIPAL: TIntegerField;
    sdsPessoa_Usuario: TSQLDataSet;
    sdsPessoa_UsuarioID_PESSOA: TIntegerField;
    sdsPessoa_UsuarioID_USUARIO: TIntegerField;
    cdsPessoa_Usuario: TClientDataSet;
    cdsPessoa_UsuarioID_PESSOA: TIntegerField;
    cdsPessoa_UsuarioID_USUARIO: TIntegerField;
    dspPessoa_Usuario: TDataSetProvider;
    sdsPessoa_Sistema: TSQLDataSet;
    cdsPessoa_Sistema: TClientDataSet;
    dspPessoa_Sistema: TDataSetProvider;
    sdsPessoa_SistemaID_PESSOA: TIntegerField;
    sdsPessoa_SistemaID_SISTEMA: TIntegerField;
    sdsPessoa_SistemaDTINICIO: TDateField;
    sdsPessoa_SistemaDTFINAL: TDateField;
    cdsPessoa_SistemaID_PESSOA: TIntegerField;
    cdsPessoa_SistemaID_SISTEMA: TIntegerField;
    cdsPessoa_SistemaDTINICIO: TDateField;
    cdsPessoa_SistemaDTFINAL: TDateField;
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

    procedure prc_Localizar_Pessoa_Usuario(ID_Pessoa,ID_Usuario : Integer);
    procedure prc_Localizar_Pessoa_Sistema(ID_Pessoa,ID_Sistema : Integer);
    
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

procedure TdmRemoto.prc_Localizar_Pessoa_Usuario(ID_Pessoa, ID_Usuario: Integer);
begin
  cdsPessoa_Usuario.Close;
  sdsPessoa_Usuario.ParamByName('ID_PESSOA').AsInteger  := ID_Pessoa;
  sdsPessoa_Usuario.ParamByName('ID_USUARIO').AsInteger := ID_Usuario;
  cdsPessoa_Usuario.Open;
end;

procedure TdmRemoto.prc_Localizar_Pessoa_Sistema(ID_Pessoa, ID_Sistema: Integer);
begin
  cdsPessoa_Sistema.Close;
  sdsPessoa_Sistema.ParamByName('ID_PESSOA').AsInteger  := ID_Pessoa;
  sdsPessoa_Sistema.ParamByName('ID_SISTEMA').AsInteger := ID_Sistema;
  cdsPessoa_Sistema.Open;
end;

end.
