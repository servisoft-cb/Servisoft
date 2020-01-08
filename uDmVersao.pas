unit uDmVersao;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, UDm1;

type
  TdmVersao = class(TDataModule)
    sdsVersao: TSQLDataSet;
    dspVersao: TDataSetProvider;
    cdsVersao: TClientDataSet;
    dsVersao: TDataSource;
    sdsVersaoID: TIntegerField;
    sdsVersaoVERSAO: TStringField;
    sdsVersaoDESCRICAO: TMemoField;
    cdsVersaoID: TIntegerField;
    cdsVersaoVERSAO: TStringField;
    cdsVersaoDESCRICAO: TMemoField;
    sdsPrograma: TSQLDataSet;
    dspPrograma: TDataSetProvider;
    cdsPrograma: TClientDataSet;
    dsPrograma: TDataSource;
    sdsProgramaID: TIntegerField;
    sdsProgramaNOME: TStringField;
    sdsProgramaPRODUTO: TStringField;
    cdsProgramaID: TIntegerField;
    cdsProgramaNOME: TStringField;
    cdsProgramaPRODUTO: TStringField;
    sdsVersaoPROGRAMA_ID: TIntegerField;
    cdsVersaoPROGRAMA_ID: TIntegerField;
    sdsVersaoPROGRAMA: TStringField;
    cdsVersaoPROGRAMA: TStringField;
    qInc: TSQLQuery;
    procedure cdsVersaoBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    function Incrementa(Campo, Tabela: String): Integer;
  public
    { Public declarations }
  end;

var
  dmVersao: TdmVersao;

implementation

{$R *.dfm}

procedure TdmVersao.cdsVersaoBeforePost(DataSet: TDataSet);
begin
  if cdsVersao.State in [dsInsert] then
    cdsVersaoID.AsInteger := Incrementa('ID','VERSAO');
end;

function TdmVersao.Incrementa(Campo, Tabela: String): Integer;
begin
  qInc.Close;
  qInc.SQL.Clear;
	qInc.SQL.Add('Select Max(' + Campo + ') UltCodigo  From ' + Tabela);
  qInc.Open;
	Incrementa := qInc.FieldByName('UltCodigo').AsInteger + 1;
end;

end.
