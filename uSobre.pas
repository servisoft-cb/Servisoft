unit uSobre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, StdCtrls, ExtCtrls,
  JvComponent, JvFileInfo, jpeg, Buttons, FMTBcd, DBClient, Provider, DB,
  SqlExpr, UDm1, rsDBUtils ;

type
  TfSobre = class(TForm)
    JvFileInfo1: TJvFileInfo;
    Image1: TImage;
    Label2: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Pessoa: TSQLQuery;
    PessoaP: TDataSetProvider;
    qPessoa: TClientDataSet;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    Fdm1: TDm1;
  public
    { Public declarations }
  end;

var
  fSobre: TfSobre;

implementation


{$R *.dfm}

procedure TfSobre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfSobre.FormCreate(Sender: TObject);
{const
  InfoNum = 10;
  InfoStr: array[1..InfoNum] of string = ('CompanyName', 'FileDescription', 'FileVersion',
                                          'InternalName', 'LegalCopyright', 'LegalTradeMarks',
                                          'OriginalFileName', 'ProductName', 'ProductVersion', 'Comments');
var
  S: string;
  n, Len, i: DWORD;
  Buf: PChar;
  Value: PChar;}
begin

  Fdm1 := TDm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);

{  S := Application.ExeName;
  JvFileInfo1.Filename := S;
  n := GetFileVersionInfoSize(PChar(S),n);
  if n > 0 then
  begin
    Buf := AllocMem(n);
    Memo1.Lines.Add('VersionInfoSize = ' + IntToStr(n));
    GetFileVersionInfo(PChar(S),0,n,Buf);
    for i := 1 to InfoNum do
      if VerQueryValue(Buf, PChar('StringFileInfo\040904E4\' + InfoStr[i]), Pointer(Value), Len) then
        Memo1.Lines.Add(InfoStr[i] + ' = ' + Value);
    FreeMem(Buf,n);
  end
  else
    Memo1.Lines.Add('Informação de versão não encontrada!');}
end;

procedure TfSobre.BitBtn1Click(Sender: TObject);
var
  a : String;
begin
  //Parcela do contas a pagar
  Fdm1.tCPagarParc.Close;
  Fdm1.CPagarParc.CommandText := 'select CPAGARPARC.*, PESSOA.NOME ' +
                                'from CPAGARPARC ' +
                                'left join PESSOA on ' +
                                '(PESSOA.ID = CPAGARPARC.CODFORNECEDOR) ';
  Fdm1.tCPagarParc.Open;

  //Movimento financeiro
  Fdm1.tMovFinanceiro.Close;
  Fdm1.MovFinanceiro.CommandText := 'select * ' +
                                   'from MOVFINANCEIRO ' +
                                   'Order by CODBANCO, NUMMOVTO ';
  Fdm1.tMovFinanceiro.Open;

  Fdm1.tCPagarParc.First;
  while not Fdm1.tCPagarParc.Eof do
    begin
      if qPessoa.Locate('ID',Fdm1.tCPagarParcCODFORNECEDOR.AsInteger,([LocaseInsensitive])) then
        begin

          Fdm1.tCPagarParc.Edit;
          Fdm1.tCPagarParcCODCENTROCUSTO.AsInteger := qPessoaCODCENTROCUSTO.AsInteger;
          Fdm1.tCPagarParc.Post;
          Fdm1.tCPagarParc.ApplyUpdates(0);

          //Verifica o histórico do pagamento
          if Fdm1.tCPagarParcVLRPAGTO.AsFloat > 0 then
            begin
              Fdm1.tCPagarHist.Close;
              Fdm1.CPagarHist.CommandText := 'select * ' +
                                            'from CPAGARHIST ' +
                                            'where (NUMCPAGAR = :NUMCPAGAR) AND ' +
                                            '      (CODFORNECEDOR = :CODFORNECEDOR) AND ' +
                                            '      (PARCELA = :PARCELA) AND ' +
                                            '      (TIPOHIST = ''P'') ' +
                                            'Order by ITEM ';
              Fdm1.CPagarHist.ParamByName('NUMCPAGAR').AsInteger     := Fdm1.tCPagarParcNUMCPAGAR.AsInteger;
              Fdm1.CPagarHist.ParamByName('CODFORNECEDOR').AsInteger := Fdm1.tCPagarParcCODFORNECEDOR.AsInteger;
              Fdm1.CPagarHist.ParamByName('PARCELA').AsString        := Fdm1.tCPagarParcPARCELA.AsString;
              Fdm1.tCPagarHist.Open;
              Fdm1.tCPagarHist.First;
              while not Fdm1.tCPagarHist.Eof do
                begin
                  if Fdm1.tCPagarHistNUMMOVFINANC.AsInteger > 0 then
                    begin
                      if Fdm1.tMovFinanceiro.Locate('NUMMOVTO',Fdm1.tCPagarHistNUMMOVFINANC.AsInteger,([LocaseInsensitive])) then
                        begin
                          Fdm1.tMovFinanceiro.Edit;
                          Fdm1.tMovFinanceiroCODCENTROCUSTO.AsInteger := Fdm1.tCPagarParcCODCENTROCUSTO.AsInteger;
                          Fdm1.tMovFinanceiroTIPOPESSOA.AsString      := qPessoaPESSOA.AsString;
                          Fdm1.tMovFinanceiro.Post;
                          Fdm1.tMovFinanceiro.ApplyUpdates(0);
                        end;
                    end;
                  if Fdm1.tCPagarHistNUMMOVJUROS.AsInteger > 0 then
                    begin
                      if Fdm1.tMovFinanceiro.Locate('NUMMOVTO',Fdm1.tCPagarHistNUMMOVJUROS.AsInteger,([LocaseInsensitive])) then
                        begin
                          Fdm1.tMovFinanceiro.Edit;
                          Fdm1.tMovFinanceiroCODCENTROCUSTO.AsInteger := Fdm1.tCPagarParcCODCENTROCUSTO.AsInteger;
                          Fdm1.tMovFinanceiroTIPOPESSOA.AsString      := qPessoaPESSOA.AsString;
                          Fdm1.tMovFinanceiro.Post;
                          Fdm1.tMovFinanceiro.ApplyUpdates(0);
                        end;
                    end;
                  Fdm1.tCPagarHist.Next;
                end;
            end;
        end;
      Fdm1.tCPagarParc.Next;
    end;
    
  //Lê o contas a receber
  Fdm1.tCReceberParc.Close;
  Fdm1.CReceberParc.CommandText := 'select CRECEBERPARC.*, PESSOA.NOME NOMECLIENTE ' +
                                  'from CRECEBERPARC ' +
                                  'Left join PESSOA on ' +
                                  '(PESSOA.ID = CRECEBERPARC.CODCLIENTE) ';
  Fdm1.tCReceberParc.Open;
  Fdm1.tCReceberParc.First;
  while not Fdm1.tCReceberParc.Eof do
    begin
      if qPessoa.Locate('ID',Fdm1.tCReceberParcCODCLIENTE.AsInteger,([LocaseInsensitive])) then
        begin
          //Verifica o histórico do pagamento

          Fdm1.tCReceberParc.Edit;
          Fdm1.tCReceberParcCODCENTROCUSTO.AsInteger := qPessoaCODCENTROCUSTO.AsInteger;
          Fdm1.tCReceberParc.Post;
          Fdm1.tCReceberParc.ApplyUpdates(0);

          if Fdm1.tCReceberParcVLRPAGTO.AsFloat > 0 then
            begin
              Fdm1.tCReceberHist.Close;
              Fdm1.CReceberHist.CommandText := 'select * ' +
                                            'from CRECEBERHIST ' +
                                            'where (NUMCRECEBER = :NUMCRECEBER) AND ' +
                                            '      (CODCLIENTE = :CODCLIENTE) AND ' +
                                            '      (PARCELA = :PARCELA) AND ' +
                                            '      (TIPOHIST = ''P'') ' +
                                            'Order by ITEM ';
              Fdm1.CReceberHist.ParamByName('NUMCRECEBER').AsInteger := Fdm1.tCReceberParcNUMCRECEBER.AsInteger;
              Fdm1.CReceberHist.ParamByName('CODCLIENTE').AsInteger  := Fdm1.tCReceberParcCODCLIENTE.AsInteger;
              Fdm1.CReceberHist.ParamByName('PARCELA').AsString      := Fdm1.tCReceberParcPARCELA.AsString;
              Fdm1.tCReceberHist.Open;
              Fdm1.tCReceberHist.First;
              while not Fdm1.tCReceberHist.Eof do
                begin
                  if Fdm1.tCReceberHistNUMMOVFINANC.AsInteger > 0 then
                    begin
                      if Fdm1.tMovFinanceiro.Locate('NUMMOVTO',Fdm1.tCReceberHistNUMMOVFINANC.AsInteger,([LocaseInsensitive])) then
                        begin
                          Fdm1.tMovFinanceiro.Edit;
                          Fdm1.tMovFinanceiroCODCENTROCUSTO.AsInteger := Fdm1.tCReceberParcCODCENTROCUSTO.AsInteger;
                          Fdm1.tMovFinanceiroTIPOPESSOA.AsString      := qPessoaPESSOA.AsString;
                          Fdm1.tMovFinanceiro.Post;
                          Fdm1.tMovFinanceiro.ApplyUpdates(0);
                        end;
                    end;
                  if Fdm1.tCReceberHistNUMMOVJUROS.AsInteger > 0 then
                    begin
                      if Fdm1.tMovFinanceiro.Locate('NUMMOVTO',Fdm1.tCReceberHistNUMMOVJUROS.AsInteger,([LocaseInsensitive])) then
                        begin
                          Fdm1.tMovFinanceiro.Edit;
                          Fdm1.tMovFinanceiroCODCENTROCUSTO.AsInteger := Fdm1.tCReceberParcCODCENTROCUSTO.AsInteger;
                          Fdm1.tMovFinanceiroTIPOPESSOA.AsString      := qPessoaPESSOA.AsString;
                          Fdm1.tMovFinanceiro.Post;
                          Fdm1.tMovFinanceiro.ApplyUpdates(0);
                        end;
                    end;
                  Fdm1.tCReceberHist.Next;
                end;
            end;
        end;
      Fdm1.tCReceberParc.Next;
    end;

  Fdm1.tCPagarHist.Close;
  Fdm1.tCPagarParc.Close;
  Fdm1.tMovFinanceiro.Close;
  Fdm1.tCReceberParc.Close;
  Fdm1.tCReceberHist.Close;
end;

procedure TfSobre.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
    BitBtn1.Enabled := not BitBtn1.Enabled;
end;

procedure TfSobre.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
