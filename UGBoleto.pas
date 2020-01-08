{******************************************************************************}
{ Projeto: gbBoleto                                                            }
{ Biblioteca multi plataforma de componentes Delphi para interação com bancos  }
{ na impressão de Boletos e Controle de Cobranças                              }
{                                                                              }
{ Direitos Autorais Reservados (c) 2005 Projeto Delphi Boleto                  }
{                                       Genilton Barbosa                       }
{                                                                              }
{ Colaboradores nesse arquivo:                                                 }
{                                                                              }
{  Você pode obter a última versão desse arquivo na pagina do Projeto ACBr     }
{ Componentes localizado em      http://www.sourceforge.net/projects/acbr      }
{                                                                              }
{                                                                              }
{  Esta biblioteca é software livre; você pode redistribuí-la e/ou modificá-la }
{ sob os termos da Licença Pública Geral Menor do GNU conforme publicada pela  }
{ Free Software Foundation; tanto a versão 2.1 da Licença, ou (a seu critério) }
{ qualquer versão posterior.                                                   }
{                                                                              }
{  Esta biblioteca é distribuída na expectativa de que seja útil, porém, SEM   }
{ NENHUMA GARANTIA; nem mesmo a garantia implícita de COMERCIABILIDADE OU      }
{ ADEQUAÇÃO A UMA FINALIDADE ESPECÍFICA. Consulte a Licença Pública Geral Menor}
{ do GNU para mais detalhes. (Arquivo LICENÇA.TXT ou LICENSE.TXT)              }
{                                                                              }
{  Você deve ter recebido uma cópia da Licença Pública Geral Menor do GNU junto}
{ com esta biblioteca; se não, escreva para a Free Software Foundation, Inc.,  }
{ no endereço 59 Temple Street, Suite 330, Boston, MA 02111-1307 USA.          }
{ Você também pode obter uma copia da licença em:                              }
{ http://www.opensource.org/licenses/lgpl-license.php                          }
{                                                                              }
{                                                                              }
{******************************************************************************}

{******************************************************************************
|* Histórico
|*
|* 19/12/2005: Alexandre Oliveira e Alexandre Rocha Lima e Marcondes
|*  - Primeira Versao gbBoleto no ACBr
******************************************************************************}

unit UGBoleto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, DBGrids, SMDBGrid, DB, DBClient,
  JvLookup, Mask, JvToolEdit, Buttons, Provider, SqlExpr,
  JvComponent, JvColorBox, dbxpress, RzShellDialogs, RzEdit, RzBtnEdt,
  RzCmboBx, RzShellCtrls, RzButton, FMTBcd, UDm1, rsDBUtils;

type
  TfGBoleto = class(TForm)
    pnlRemessaRetorno: TPanel;
    lblNomeArquivoRemessa: TLabel;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    butGerarRemessa: TButton;
    butLerRetorno: TButton;
    rdgLayoutArquivoRemessa: TRadioGroup;
    mDados: TClientDataSet;
    Panel1: TPanel;
    Label6: TLabel;
    JvDateEdit1: TJvDateEdit;
    Label7: TLabel;
    JvDateEdit2: TJvDateEdit;
    Label8: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Parcelas: TSQLDataSet;
    pParcelas: TDataSetProvider;
    tParcelas: TClientDataSet;
    dsParcelas: TDataSource;
    ParcelasNUMCRECEBER: TIntegerField;
    ParcelasPARCELA: TStringField;
    ParcelasDTVENCIMENTO: TDateField;
    ParcelasCODCLIENTE: TIntegerField;
    ParcelasNUMNOTA: TIntegerField;
    ParcelasVLRRESTANTE: TFloatField;
    ParcelasCODTIPOCOBRANCA: TIntegerField;
    ParcelasCODBANCO: TIntegerField;
    ParcelasDTMOVIMENTO: TDateField;
    ParcelasTIPODOC: TStringField;
    ParcelasNOMECLIENTE: TStringField;
    ParcelasDOCUMENTO: TStringField;
    ParcelasENDERECO: TStringField;
    ParcelasBAIRRO: TStringField;
    ParcelasCEP: TStringField;
    ParcelasESTADO: TStringField;
    ParcelasINSCESTADUAL: TStringField;
    ParcelasCOBENDERECO: TStringField;
    ParcelasCOBNUMERO: TIntegerField;
    ParcelasCOBBAIRRO: TStringField;
    ParcelasCOBUF: TStringField;
    ParcelasENDNUMERO: TIntegerField;
    ParcelasNOMECIDADE: TStringField;
    ParcelasNOMECIDADECOB: TStringField;
    tParcelasNUMCRECEBER: TIntegerField;
    tParcelasPARCELA: TStringField;
    tParcelasDTVENCIMENTO: TDateField;
    tParcelasCODCLIENTE: TIntegerField;
    tParcelasNUMNOTA: TIntegerField;
    tParcelasVLRRESTANTE: TFloatField;
    tParcelasCODTIPOCOBRANCA: TIntegerField;
    tParcelasCODBANCO: TIntegerField;
    tParcelasDTMOVIMENTO: TDateField;
    tParcelasTIPODOC: TStringField;
    tParcelasNOMECLIENTE: TStringField;
    tParcelasDOCUMENTO: TStringField;
    tParcelasENDERECO: TStringField;
    tParcelasBAIRRO: TStringField;
    tParcelasCEP: TStringField;
    tParcelasESTADO: TStringField;
    tParcelasINSCESTADUAL: TStringField;
    tParcelasCOBENDERECO: TStringField;
    tParcelasCOBNUMERO: TIntegerField;
    tParcelasCOBBAIRRO: TStringField;
    tParcelasCOBUF: TStringField;
    tParcelasENDNUMERO: TIntegerField;
    tParcelasNOMECIDADE: TStringField;
    tParcelasNOMECIDADECOB: TStringField;
    ParcelasCOBCEP: TStringField;
    tParcelasCOBCEP: TStringField;
    ParcelasCOBRANCAEMITIDA: TStringField;
    tParcelasCOBRANCAEMITIDA: TStringField;
    JvColorSquare1: TJvColorSquare;
    Label13: TLabel;
    JvColorSquare2: TJvColorSquare;
    Label9: TLabel;
    SMDBGrid1: TSMDBGrid;
    ParcelasPESSOA: TStringField;
    tParcelasPESSOA: TStringField;
    JvDirectoryEdit1: TJvDirectoryEdit;
    JvColorSquare3: TJvColorSquare;
    Label10: TLabel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    mDadosteste: TStringField;
    ParcelasNUMCARTEIRA: TStringField;
    ParcelasNOSSONUMERO: TStringField;
    tParcelasNUMCARTEIRA: TStringField;
    tParcelasNOSSONUMERO: TStringField;
    Label11: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    procedure butGerarRemessaClick(Sender: TObject);
    procedure butLerRetornoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    Fdm1: Tdm1;
    { Private declarations }

    function TirarAcento(texto : String) : string;

    procedure Monta_SQL;
    procedure Grava_CReceber;
    procedure Registro_Header;
    procedure Registro_Detalhe;
    procedure Registro_Trailer;

  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fGBoleto: TfGBoleto;
  F : TextFile;
  i : integer;
  texto1, texto2 : string;
  vContador, vContGerados : Integer;

implementation

uses UMovAvulso, UDmCons, UArqRetornoItau;

{$R *.DFM}

function TfGBoleto.TirarAcento(Texto : String) : String;
var
  vAux : String;
begin
  Texto := Trim(AnsiUpperCase(Texto));
  for i := 1 to Length(texto) do
  begin
    if Pos(Texto[i], ' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~''"!@#$%^&*()_-+=|/\{}[]:;,.<>') = 0 then
    begin
      case Texto[i] of
        'Á', 'À', 'Â', 'Ä', 'Ã': Texto[i] := 'A';
        'É', 'È', 'Ê', 'Ë': Texto[i] := 'E';
        'Í', 'Ì', 'Î', 'Ï': Texto[i] := 'I';
        'Ó', 'Ò', 'Ô', 'Ö', 'Õ': Texto[i] := 'O';
        'Ú', 'Ù', 'Û', 'Ü': Texto[i] := 'U';
        'Ç': Texto[i] := 'C';
        'Ñ': Texto[i] := 'N';
      else
        Texto[i] := ' ';
      end;
    end;
  end;
  Result := AnsiUpperCase(Texto);
end;

procedure TfGBoleto.Registro_Header;
var
  vAux : String;
begin
  //Tipo de registro tamanho 1 - posicao 1 ao 1
  texto1 := '0';

  //Operação (remessa) tamanho 1 - posicao 2 ao 2
  texto1 := texto1 + '1';

  //Literal de remessa tamanho 7 - posicao 3 ao 9
  texto1 := texto1 + 'REMESSA';

  //Código do serviço tamanho 2 - posicao 10 ao 11
  texto1 := texto1 + '01';

  //Literal de serviço tamanho 15 - posicao 12 ao 26
  texto1 := texto1 + 'COBRANCA       ';

  //Agencia tamanho 4 - posicao 27 ao 30
  texto2 := copy(Fdm1.tBcoItauAGENCIA.AsString,1,4);
  for i := 1 to 4 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

  //Complemento do registro tamanho 2 - posicao 31 ao 32
  texto1 := texto1 + '00';

  //Número da conta tamanho 5 - posicao 33 ao 37
  texto2 := copy(Fdm1.tBcoItauNUMCONTA.AsString,1,5);
  for i := 1 to 5 - length(texto2) do
    texto2 := '0' + texto2;
  texto1 := texto1 + texto2;

  //Digito tamanho 1 - posicao 38 ao 38
  if Fdm1.tBcoItauDIGCONTA.AsString <> '' then
    texto1 := texto1 + Fdm1.tBcoItauDIGCONTA.AsString
  else
    texto1 := texto1 + '0';

  //Complemento tamanho 8 - posicao 39 ao 46
  for i := 1 to 8 do
    texto1 := texto1 + ' ';

  //Nome da empresa tamanho 30 - posicao 47 ao 76
  texto2 := TirarAcento(copy(Fdm1.tEmpresaNOME.AsString,1,30));
  for i := 1 to 30 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

  //Código do banco tamanho 3 - posicao 77 ao 79
  texto1 := texto1 + '341';

  //Nome do banco tamanho 15 - posicao 80 ao 94
  texto1 := texto1 + 'BANCO ITAU SA  ';

  //Data de geração do arquivo tamanho 6 - posicao 95 ao 100
  vAux := FormatDateTime('MM/DD/YY',Date);
  texto2 := '';
  for i := 1 to Length(vAux) do
    if (Copy(vAux,i,1) <> '.') and (Copy(vAux,i,1) <> '-') and (Copy(vAux,i,1) <> '/') then
      Texto2 := Texto2 + Copy(vAux,i,1);
   for i := 1 to 6 - Length(texto2) do
     texto2 := '0' + texto2;
  texto1 := texto1 + texto2;

  //Brancos tamanho 294 - posicao 101 ao 394
  for i := 1 to 294 do
    texto1 := texto1 + ' ';

  //Número sequencial tamanho 6 - posicao 395 ao 400
  inc(vContador);
  texto1 := texto1 + FormatFloat('000000',vContador);

  Writeln(F,texto1);
end;

procedure TfGBoleto.Registro_Detalhe;
var
  vAux, texto1 : String;
  vJuros : Currency;
begin
  //Tipo de registro tamanho 1 - posicao 1 ao 1
  texto1 := '1';

  //Tipo de inscrição tamanho 2 - posicao 2 ao 3
  texto1 := texto1 + '02';

  //Número de inscrição da empresa 14 - posicao 4 ao 17
   vAux   := Fdm1.tEmpresaDOCUMENTO.AsString;
   texto2 := '';
   for i  := 1 to Length(vAux) do
     if (Copy(vAux,i,1) <> '.') and (Copy(vAux,i,1) <> '-') and (Copy(vAux,i,1) <> '/') then
       Texto2 := Texto2 + Copy(vAux,i,1);
   for i := 1 to 14 - Length(texto2) do
     texto2 := '0' + texto2;
   texto1 := texto1 + texto2;

   //Agência mantenedora da conta tamanho 4 - posicao 18 ao 21
   texto2 := copy(Fdm1.tBcoItauAGENCIA.AsString,1,4);
   for i := 1 to 4 - length(texto2) do
     texto2 := texto2 + ' ';
   texto1 := texto1 + texto2;

   //Complemento tamanho 2 - posicao 22 ao 23
   texto1 := texto1 + '00';

   //Número da conta da empresa tamanho 5 - posicao 24 ao 28
   texto2 := copy(Fdm1.tBcoItauNUMCONTA.AsString,1,5);
   for i := 1 to 5 - Length(texto2) do
     texto2 := '0' + texto2;
   texto1 := texto1 + texto2;

   //Digito da conta tamanho 1 - posicao 29 ao 29
   if Fdm1.tBcoItauDIGCONTA.AsString <> '' then
     texto1 := texto1 + Fdm1.tBcoItauDIGCONTA.AsString
   else
     texto1 := texto1 + '0';

   //Complemento tamanho 4 - posicao 30 ao 33
   texto1 := texto1 + '    ';

   //Instrução de alegação tamanho 4 - posicao 34 ao 37
   texto1 := texto1 + '0000';

   //identificação do titulo na empresa tamanho 25 - posicao 38 ao 62
   texto2 := tParcelasCODCLIENTE.AsString;
   for i := 1 to 5 - Length(texto2) do
     texto2 := '0' + texto2;
   if tParcelasNUMNOTA.AsInteger > 0 then
     texto2 := 'N' + texto2 + '.' + tParcelasNUMNOTA.AsString + '/' + tParcelasPARCELA.AsString
   else
     texto2 := 'A' + texto2 + '.' + tParcelasNUMCRECEBER.AsString + '/' + tParcelasPARCELA.AsString;
   for i := 1 to 25 - Length(texto2) do
     texto2 := texto2 + ' ';
   texto1 := texto1 + texto2;

   //Nosso número tamanho 8 - posicao 63 ao 70
   for i := 1 to 8 do
     texto1 := texto1 + ' ';

   //Quantidade de moeda variável tamanho 13 - posicao 71 ao 83
   for i := 1 to 13 do
     texto1 := texto1 + '0';

   //Número da carteira no banco tamanho 3 - posicao 84 ao 86
   if tParcelasNUMCARTEIRA.AsString = '' then
     texto2 := Fdm1.tBcoItauNUMCARTEIRA.AsString
   else
     texto2 := tParcelasNUMCARTEIRA.AsString;
   for i := 1 to 3 - Length(texto2) do
     texto2 := '0' + texto2;
   texto1 := texto1 + texto2;

   //Uso do banco tamanho 21 - posicao 87 ao 107
   for i := 1 to 21 do
     texto1 := texto1 + ' ';

   //Código da carteira tamanho 1 - posicao 108 ao 108
   if Fdm1.tBcoItauCARTEIRA.AsString <> '' then
     texto1 := texto1 + Fdm1.tBcoItauCARTEIRA.AsString
   else
     texto1 := texto1 + ' ';

   //Código de ocorrência tamanho 2 - posicao 109 ao 110
   texto2 := Fdm1.tBcoItauINSTRUCAO.AsString;
   for i := 1 to 2 - Length(texto2) do
     texto2 := '0' + texto2;
   texto1 := texto1 + texto2;

   //Número do documento tamanho 10 - posicao 111 ao 120
   for i := 1 to 10 do
     texto1 := texto1 + ' ';

   //Data de vencimento do titulo tamanho 6 - posicao 121 ao 126
   vAux   := FormatDateTime('DD/MM/YY',tParcelasDTVENCIMENTO.AsDateTime);
   texto2 := '';
   for i := 1 to Length(vAux) do
     if (Copy(vAux,i,1) <> '.') and (Copy(vAux,i,1) <> '-') and (Copy(vAux,i,1) <> '/') then
       Texto2 := Texto2 + Copy(vAux,i,1);
    for i := 1 to 6 - Length(texto2) do
      texto2 := '0' + texto2;
   texto1 := texto1 + texto2;

   //Valor do titulo tamanho 13 - posicao 127 ao 139
   texto2 := FormatFloat('00000000000.00',tParcelasVLRRESTANTE.AsFloat);
   Delete(texto2,12,1);
   texto1 := texto1 + texto2;

   //Código do banco tamanho 3 - posicao 140 ao 142
   texto1 := texto1 + '341';

   //Agencia cobradora tamanho 5 - posicao 143 ao 147
   texto1 := texto1 + '00000';

   //Espécie tamanho 2 - posicao 148 ao 149
   texto2 := Fdm1.tBcoItauESPECIEDOC.AsString;
   for i := 1 to 2 - length(texto2) do
     texto2 := texto2 + ' ';
   texto1 := texto1 + texto2;

   //Aceite tamanho 1 - posicao 150 ao 150
   if Fdm1.tBcoItauACEITE.AsString <> '' then
     texto1 := texto1 + Fdm1.tBcoItauACEITE.AsString
   else
     texto1 := texto1 + ' ';

   //Data de emissão do titulo tamanho 6 - posicao 151 ao 156
   //vAux := FormatDateTime('DD/MM/YY',Date);
   vAux := FormatDateTime('DD/MM/YY',tParcelasDTMOVIMENTO.AsDateTime);
   texto2 := '';
   for i := 1 to Length(vAux) do
     if (Copy(vAux,i,1) <> '.') and (Copy(vAux,i,1) <> '-') and (Copy(vAux,i,1) <> '/') then
       Texto2 := Texto2 + Copy(vAux,i,1);
    for i := 1 to 6 - Length(texto2) do
      texto2 := '0' + texto2;
   texto1 := texto1 + texto2;

   //Instrução 1 tamanho 2 - posicao 157 ao 158
   texto2 := Fdm1.tBcoItauINSTRCOBRANCA1.AsString;
   for i := 1 to 2 - Length(texto2) do
     texto2 := '0' + texto2;
   texto1 := texto1 + texto2;

   //Instrução 2 tamanho 2 - posicao 159 ao 160
   texto2 := Fdm1.tBcoItauINSTRCOBRANCA2.AsString;
   for i := 1 to 2 - Length(texto2) do
     texto2 := '0' + texto2;
   texto1 := texto1 + texto2;

   //Juros de mora por dia de atrazo tamanho 13 - posicao 161 ao 173


   texto2 := FormatFloat('00000000000.00',Fdm1.tBcoItauVLRJUROSPORDIA.AsFloat);
   Delete(texto2,12,1);
   texto1 := texto1 + texto2;

   //Data de desconto tamanho 6 - posicao 174 ao 179
   texto1 := texto1 + '000000';

   //Valor do desconto tamanho 13 - posicao 180 ao 192
   texto2 := FormatFloat('00000000000.00',Fdm1.tBcoItauVLRDESCONTO.AsFloat);
   Delete(texto2,12,1);
   texto1 := texto1 + texto2;

   //Valor IOF recolhido por nota de seguro tamanho 13 - posicao 193 ao 205
   for i := 1 to 13 do
     texto1 := texto1 + '0';

   //Valor abatimento tamanho 13 - posicao 206 ao 218
   for i := 1 to 13 do
     texto1 := texto1 + '0';

   //Código de inscrição do sacado tamanho 2 - posicao 219 ao 220
   if tParcelasPESSOA.AsString = 'F' then
     texto1 := texto1 + '01'
   else
   if tParcelasPESSOA.AsString = 'J' then
     texto1 := texto1 + '02'
   else
     texto1 := texto1 + '00';

   //Número de inscrição do sacado tamanho 14 - posicao 221 ao 234
   vAux  := tParcelasDOCUMENTO.AsString;
   texto2 := '';
   for i := 1 to Length(vAux) do
     if (Copy(vAux,i,1) <> '.') and (Copy(vAux,i,1) <> '-') and (Copy(vAux,i,1) <> '/') then
       Texto2 := Texto2 + Copy(vAux,i,1);
   for i := 1 to 14 - Length(texto2) do
     texto2 := '0' + texto2;
   texto1 := texto1 + texto2;

   //Nome do sacado tamanho 30 - posicao 235 ao 264
   //texto2 := copy(tParcelasNOMECLIENTE.AsString,1,30);
   texto2 := TirarAcento(copy(tParcelasNOMECLIENTE.AsString,1,30));
   for i := 1 to 30 - Length(texto2) do
     texto2 := texto2 + ' ';
   texto1 := texto1 + texto2;

   //brancos tamanho 10 - posicao 265 ao 274
   for i := 1 to 10 do
     texto1 := texto1 + ' ';
   
   //Logradouro tamanho 40 - posicao 275 ao 314
   if (tParcelasCOBENDERECO.AsString <> '') and (tParcelasNOMECIDADECOB.AsString <> '') then
     texto2 := TirarAcento(copy(tParcelasCOBENDERECO.AsString,1,40))
   else
     texto2 := TirarAcento(copy(tParcelasENDERECO.AsString,1,40));
   for i := 1 to 40 - Length(texto2) do
     texto2 := texto2 + ' ';
   texto1 := texto1 + texto2;

  //Bairro tamanho 12 - posicao 315 ao 326
   if (tParcelasCOBENDERECO.AsString <> '') and (tParcelasNOMECIDADECOB.AsString <> '') then
     texto2 := TirarAcento(copy(tParcelasCOBBAIRRO.AsString,1,12))
   else
     texto2 := TirarAcento(copy(tParcelasBAIRRO.AsString,1,12));
   for i := 1 to 12 - Length(texto2) do
     texto2 := texto2 + ' ';
   texto1 := texto1 + texto2;

  //Cep tamanho 8 - posicao 327 ao 334
   if (tParcelasCOBENDERECO.AsString <> '') and (tParcelasNOMECIDADECOB.AsString <> '') then
     texto2 := tParcelasCOBCEP.AsString
   else
     texto2 := tParcelasCEP.AsString;
  vAux := texto2;
  texto2 := '';
  for i := 1 to Length(vAux) do
    if (Copy(vAux,i,1) <> '.') and (Copy(vAux,i,1) <> '-') and (Copy(vAux,i,1) <> '/') then
      Texto2 := Texto2 + Copy(vAux,i,1);
   for i := 1 to 8 - Length(texto2) do
     texto2 := texto2 + '0';
  texto1 := texto1 + copy(texto2,1,8);

  //Cidade tamanho 15 - posicao 335 ao 349
   if (tParcelasCOBENDERECO.AsString <> '') and (tParcelasNOMECIDADECOB.AsString <> '') then
     texto2 := TirarAcento(copy(tParcelasNOMECIDADECOB.AsString,1,15))
   else
     texto2 := TirarAcento(copy(tParcelasNOMECIDADE.AsString,1,15));
   for i := 1 to 15 - Length(texto2) do
     texto2 := texto2 + ' ';
   texto1 := texto1 + texto2;

  //Cidade tamanho 25 - posicao 350 ao 351
   if (tParcelasCOBENDERECO.AsString <> '') and (tParcelasNOMECIDADECOB.AsString <> '') then
     texto2 := tParcelasCOBUF.AsString
   else
     texto2 := tParcelasESTADO.AsString;
   for i := 1 to 2 - Length(texto2) do
     texto2 := texto2 + ' ';
   texto1 := texto1 + texto2;

  //Sacador avalista tamanho 30 - posicao 352 ao 381
  for i := 1 to 30 do
    texto1 := texto1 + ' ';

  //Brancos tamanho 4 - posicao 382 ao 385
  for i := 1 to 4 do
    texto1 := texto1 + ' ';

  //Data de mora tamanho 6 - posicao 386 ao 391
  for i := 1 to 6 do
    texto1 := texto1 + ' ';

  //Prazo tamanho 2 - posicao 392 ao 393
  texto1 := texto1 + '00';

  //Brancos tamanho 1 - posicao 394 ao 394
  texto1 := texto1 + ' ';

  //Número sequencial tamanho 6 - posicao 395 ao 400
  inc(vContador);
  inc(vContGerados);
  texto1 := texto1 + FormatFloat('000000',vContador);

  Writeln(F,texto1);
end;

procedure TfGBoleto.Registro_Trailer;
begin
  //Tipo de registro tamanho 1 - posicao 1 ao 1
  texto1 := '9';

  //Brancos tamanho 393 - posicao 2 ao 394
  for i := 1 to 393 do
    texto1 := texto1 + ' ';

  //Número sequencial tamanho 6 - posicao 395 ao 400
  inc(vContador);
  texto1 := texto1 + FormatFloat('000000',vContador);

  Writeln(F,texto1);
end;

procedure TfGBoleto.Grava_CReceber;
var
  vAux : Integer;
begin
  //Grava a parcela como boleto emitido
  Fdm1.tCReceberParc.Close;
  Fdm1.CReceberParc.Params[0].AsInteger := tParcelasNUMCRECEBER.AsInteger;
  Fdm1.CReceberParc.Params[1].AsString  := tParcelasPARCELA.AsString;
  Fdm1.tCReceberParc.Open;
  Fdm1.tCReceberParc.Edit;
  Fdm1.tCReceberParcCOBRANCAEMITIDA.AsString := 'S';
  Fdm1.tCReceberParc.Post;
  Fdm1.tCReceberParc.ApplyUpdates(0);

  //Grava o histórico
  Fdm1.tCReceberHist.Close;
  Fdm1.CReceberHist.ParamByName('Codigo').AsInteger := tParcelasNUMCRECEBER.AsInteger;
  Fdm1.CReceberHist.ParamByName('Parcela').AsString := tParcelasPARCELA.AsString;
  Fdm1.tCReceberHist.Open;
  Fdm1.tCReceberHist.Insert;
  Fdm1.tCReceberHist.Last;
  vAux := Fdm1.tCReceberHistITEM.AsInteger + 1;

  Fdm1.tCReceberHist.Insert;
  Fdm1.tCReceberHistNUMCRECEBER.AsInteger   := tParcelasNUMCRECEBER.AsInteger;
  Fdm1.tCReceberHistPARCELA.AsString        := tParcelasPARCELA.AsString;
  Fdm1.tCReceberHistITEM.AsInteger          := vAux;
  Fdm1.tCReceberHistDTHISTORICO.AsDateTime  := Date;
  Fdm1.tCReceberHistCODBANCO.AsInteger      := Fdm1.tBcoItauCODCONTA.AsInteger;
  Fdm1.tCReceberHistDTULTPGTO.Clear; 
  Fdm1.tCReceberHistVLRULTPGTO.AsFloat      := 0;
  Fdm1.tCReceberHistVLRULTJUROSPAGO.AsFloat := 0;
  Fdm1.tCReceberHistVLRULTDESCONTO.AsFloat  := 0;
  Fdm1.tCReceberHistVLRULTDESPESA.AsFloat   := 0;
  Fdm1.tCReceberHistTIPOHIST.AsString       := 'O';
  Fdm1.tCReceberHistHISTORICO.AsString      := 'Boleto emitido para o Banco Itau';
  Fdm1.tCReceberHistCODCLIENTE.AsInteger    := tParcelasCODCLIENTE.AsInteger;
  Fdm1.tCReceberHistNUMNOTA.AsInteger       := tParcelasNUMNOTA.AsInteger;
  Fdm1.tCReceberHist.Post;
  Fdm1.tCReceberHist.ApplyUpdates(0);
end;

procedure TfGBoleto.Monta_SQL;
begin
  tParcelas.Close;
  Parcelas.CommandText := 'select A.NUMCRECEBER, A.PARCELA, A.DTVENCIMENTO, A.CODCLIENTE, A.NUMNOTA, A.VLRRESTANTE, A.CODTIPOCOBRANCA, A.CODBANCO, A.DTMOVIMENTO, A.TIPODOC,' +
                          ' B.NOME NOMECLIENTE, B.DOCUMENTO, B.ENDERECO, B.BAIRRO, B.CEP, B.ESTADO, B.INSCESTADUAL, B.COBENDERECO, B.COBNUMERO, B.COBBAIRRO, B.COBUF, B.ENDNUMERO,' +
                          ' C.NOME NOMECIDADE, D.NOME NOMECIDADECOB, B.COBCEP, A.COBRANCAEMITIDA, B.PESSOA, A.NUMCARTEIRA, A.NOSSONUMERO' +
                          ' from CRECEBERPARC A ' +
                          ' INNER JOIN PESSOA B ' +
                          ' ON (A.CODCLIENTE = B.ID) ' +
                          ' FULL JOIN CIDADE C ' +
                          ' ON (B.CIDADE = C.ID) ' +
                          ' FULL JOIN CIDADE D ' +
                          ' ON (B.COBCIDADE = C.ID) ' +
                          ' FULL JOIN TIPOCOBRANCA E ' +
                          ' ON (B.CODTIPOCOBRANCA = E.ID) ' +
                          ' WHERE (A.VLRRESTANTE > 0)' +
                          '  AND (A.DTVENCIMENTO BETWEEN ''' + FormatDateTime('MM/DD/YYYY',JvDateEdit1.Date) + ''' AND ''' + FormatDateTime('MM/DD/YYYY',JvDateEdit2.Date) +''' ) ' +
                          '  AND ((A.NUMCARTEIRA = ''112'') OR (A.NUMCARTEIRA = ''109'') OR (A.NUMCARTEIRA IS NULL))' +
                          '  AND (E.TIPO = ''0'')';
  if JvDBLookupCombo1.Text <> '' then
    Parcelas.CommandText := Parcelas.CommandText + '  AND (A.CODCLIENTE = ' + JvDBLookupCombo1.Value+')';
  Parcelas.CommandText := Parcelas.CommandText + 'ORDER BY B.NOME, A.DTVENCIMENTO';
  tParcelas.Open;
end;


procedure TfGBoleto.butGerarRemessaClick(Sender: TObject);
var
  TD : TTransactionDesc;
  vData, vAux, texto2 : String;
  i : Integer;
begin
  if (tParcelas.IsEmpty) or (SMDBGrid1.SelectedRows.Count < 1) or (JvDirectoryEdit1.Text = '') then
    begin
      ShowMessage('Não existe registros para gerar ou falta informar o caminho!');
      Exit;
    end;

  if Fdm1.tBcoItauNUMCARTEIRA.AsString = '175' then
    begin
      ShowMessage('Esta carteira é sem registro!');
      Exit;
    end;

  if copy(JvDirectoryEdit1.Text,Length(JvDirectoryEdit1.Text),1) = '\' then
    AssignFile(F,JvDirectoryEdit1.Text + Fdm1.tBcoItauNOME.AsString + '.' + Fdm1.tBcoItauEXTENSAO.AsString)
  else
    AssignFile(F,JvDirectoryEdit1.Text + '\' + Fdm1.tBcoItauNOME.AsString + '.' + Fdm1.tBcoItauEXTENSAO.AsString);

   Rewrite(F);

  vContador    := 0;
  vContGerados := 0;
  Registro_Header;
  tParcelas.First;
  while not tParcelas.Eof do
    begin
      if SMDBGrid1.SelectedRows.CurrentRowSelected then
        begin
          Registro_Detalhe;
          try
           TD.TransactionID  := 1;
           TD.IsolationLevel := xilREADCOMMITTED;
           Fdm1.Conexao.StartTransaction(TD);
           Grava_CReceber;
           Fdm1.Conexao.Commit(TD);
           except
             on E:Exception do
               begin
                 Fdm1.Conexao.Rollback(TD);
                 ShowMessage('Erro ao tentar gravar o registro : ' + E.Message);
               end;
            end;
        end;
      tParcelas.Next;
    end;
  Registro_Trailer;
  CloseFile(F);
  Label2.Caption := 'Total gerados para o banco: ' + IntToStr(vContGerados);
  ShowMessage('Arquivo Gerado!');
end;

procedure TfGBoleto.butLerRetornoClick(Sender: TObject);
begin
  fArqRetornoItau := TfArqRetornoItau.Create(self);
  fArqRetornoItau.ShowMOdal;
end;

procedure TfGBoleto.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  DmCons.qCliente.Open;
end;

procedure TfGBoleto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmCons.qCliente.Close;
end;

procedure TfGBoleto.SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if tParcelasCOBRANCAEMITIDA.AsString = 'S' then
    begin
      Background  := clRed;
      AFont.Color := clBlack;
    end;
  if SMDBGrid1.SelectedRows.CurrentRowSelected then
    begin
      Background  := clAqua;
      AFont.Color := clBlack;
    end;
end;

procedure TfGBoleto.RzBitBtn2Click(Sender: TObject);
begin
  if (JvDateEdit1.Date > 1) and (JvDateEdit2.Date > 1) then
    Monta_SQL
  else
    begin
      ShowMessage('Falta informar a data de vencimento inicial e final!');
      JvDateEdit1.SetFocus;
    end;
  Label1.Caption := 'Total geral de regitros: ' + IntToStr(tParcelas.RecordCount);
end;

procedure TfGBoleto.RzBitBtn1Click(Sender: TObject);
var
  i : Integer;
begin
  if tParcelas.Active then
    begin
      tParcelas.First;
      while not tParcelas.Eof do
        begin
          SMDBGrid1.SelectedRows.CurrentRowSelected := not(SMDBGrid1.SelectedRows.CurrentRowSelected);
          tParcelas.Next;
        end;
    end;
end;

end.
