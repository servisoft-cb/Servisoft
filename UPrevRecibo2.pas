unit UPrevRecibo2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, StdCtrls, JvEdit, JvTypedEdit, Buttons,
  DB, DBClient, RzTabs, UDm1, rsDBUtils;

type
  TfPrevRecibo2 = class(TForm)
    mRecibo: TClientDataSet;
    mReciboNumLacto: TIntegerField;
    mReciboNumNota: TIntegerField;
    mReciboDtVencimento: TDateField;
    mReciboNome: TStringField;
    mReciboEndereco: TStringField;
    mReciboBairro: TStringField;
    mReciboCidade: TStringField;
    mReciboUF: TStringField;
    mReciboCep: TStringField;
    mReciboValor: TFloatField;
    dsmRecibo: TDataSource;
    CheckBox1: TCheckBox;
    mReciboPessoa: TStringField;
    mReciboDocumento: TStringField;
    mReciboFone: TStringField;
    mReciboHistorico: TStringField;
    mReciboParcela: TStringField;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    TabSheet2: TRzTabSheet;
    Label7: TLabel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label1: TLabel;
    JvIntegerEdit1: TJvIntegerEdit;
    Label3: TLabel;
    JvIntegerEdit3: TJvIntegerEdit;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    SMDBGrid2: TSMDBGrid;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    Fdm1: Tdm1;
    { Private declarations }
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fPrevRecibo2: TfPrevRecibo2;

implementation

uses  URelRecibo2;

{$R *.dfm}

procedure TfPrevRecibo2.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevRecibo2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfPrevRecibo2.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  mRecibo.EmptyDataSet;
  if not Fdm1.tPessoa.Active then
    Fdm1.tPessoa.Open;
  if not Fdm1.tCidade.Active then
    Fdm1.tCidade.Open;
  RzPageControl1.Refresh;

  if TabSheet1.Showing then
    RzPageControl1.ActivePage := TabSheet1
  else
    if TabSheet2.Showing then
      RzPageControl1.ActivePage := TabSheet2;


end;

procedure TfPrevRecibo2.BitBtn1Click(Sender: TObject);
begin
  mRecibo.EmptyDataSet;
  mRecibo.Insert;
  mReciboNumLacto.AsInteger      := Fdm1.tCReceberHistNUMCRECEBER.AsInteger;
  mReciboNumNota.AsInteger       := Fdm1.tCReceberHistNUMNOTA.AsInteger;
  mReciboDtVencimento.AsDateTime := Fdm1.tCReceberParcDTVENCIMENTO.AsDateTime;
  mReciboNome.AsString           := Fdm1.tCReceberParcNOMECLIENTE.AsString;
  mReciboValor.AsFloat           := Fdm1.tCReceberHistVLRULTPGTO.AsFloat;
  mReciboHistorico.AsString      := Fdm1.tCReceberHistHISTORICO.AsString;
  mReciboParcela.AsString        := Fdm1.tCReceberParcPARCELA.AsString;
  if Fdm1.tPessoa.Locate('ID',Fdm1.tCReceberParcCODCLIENTE.AsInteger,([LocaseInsensitive])) then
    begin
      mReciboEndereco.AsString := Fdm1.tPessoaENDERECO.AsString;
      mReciboBairro.AsString   := Fdm1.tPessoaBAIRRO.AsString;
      if Fdm1.tCidade.Locate('ID',Fdm1.tPessoaCIDADE.AsInteger,([LocaseInsensitive])) then
        mReciboCidade.AsString   := Fdm1.tCidadeNOME.AsString;
      mReciboUF.AsString        := Fdm1.tPessoaESTADO.AsString;
      mReciboCep.AsString       := Fdm1.tPessoaCEP.AsString;
      mReciboPessoa.AsString    := Fdm1.tPessoaPESSOA.AsString;
      mReciboDocumento.AsString := Fdm1.tPessoaDOCUMENTO.AsString;
      mReciboFone.AsString      := Fdm1.tPessoaFONE.AsString;
    end;
  mRecibo.Post;

  fRelRecibo2 := TfRelRecibo2.Create(Self);

  fRelRecibo2.Dm1 := Fdm1;

  fRelRecibo2.RLReport1.Preview;
  fRelRecibo2.RLReport1.Free;
end;

procedure TfPrevRecibo2.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevRecibo2.BitBtn3Click(Sender: TObject);
begin
  mRecibo.EmptyDataSet;
  mRecibo.Insert;
  mReciboNumLacto.AsInteger      := Fdm1.tCPagarHistNUMCPAGAR.AsInteger;
  mReciboNumNota.AsInteger       := Fdm1.tCPagarHistNUMDUPLICATA.AsInteger;
  mReciboDtVencimento.AsDateTime := Fdm1.tCPagarParcDTVENCIMENTO.AsDateTime;
  mReciboNome.AsString           := Fdm1.tCPagarParcNOME.AsString;
  mReciboValor.AsFloat           := Fdm1.tCPagarHistVLRULTPGTO.AsFloat;
  mReciboHistorico.AsString      := Fdm1.tCPagarHistHISTORICO.AsString;
  mReciboParcela.AsString        := Fdm1.tCPagarParcPARCELA.AsString;
  if Fdm1.tPessoa.Locate('ID',Fdm1.tCPagarParcCODFORNECEDOR.AsInteger,([LocaseInsensitive])) then
    begin
      mReciboEndereco.AsString := Fdm1.tPessoaENDERECO.AsString;
      mReciboBairro.AsString   := Fdm1.tPessoaBAIRRO.AsString;
      if Fdm1.tCidade.Locate('ID',Fdm1.tPessoaCIDADE.AsInteger,([LocaseInsensitive])) then
        mReciboCidade.AsString   := Fdm1.tCidadeNOME.AsString;
      mReciboUF.AsString        := Fdm1.tPessoaESTADO.AsString;
      mReciboCep.AsString       := Fdm1.tPessoaCEP.AsString;
      mReciboPessoa.AsString    := Fdm1.tPessoaPESSOA.AsString;
      mReciboDocumento.AsString := Fdm1.tPessoaDOCUMENTO.AsString;
      mReciboFone.AsString      := Fdm1.tPessoaFONE.AsString;
    end;
  mRecibo.Post;

  fRelRecibo2 := TfRelRecibo2.Create(Self);

  fRelRecibo2.Dm1 := Fdm1;

  fRelRecibo2.RLReport1.Preview;
  fRelRecibo2.RLReport1.Free;
end;

end.
