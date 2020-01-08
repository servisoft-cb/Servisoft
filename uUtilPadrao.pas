unit uUtilPadrao;

interface

uses
  Classes, SysUtils, Dialogs, Variants, Forms, ShellApi, Windows, StrUtils, Controls, SMDBGrid,
  DB, Printers, Messages, StdCtrls, ExtCtrls;

  function Monta_Numero(Campo: String; Tamanho: Integer): String;
  function TirarAcento(texto: string): string;
  function TirarAcento_Arq(texto: string): string;
  function Monta_Texto(Campo: String; Tamanho: Integer): String;
  procedure AbreArquivo(arquivo: string);
  function ValidaCNPJ(numCNPJ: string): Boolean;
  function ValidaCPF(numCPF: string): Boolean;
  function Formatar_Campo(Campo: String; Tamanho: Integer): String;
  function fnc_Calcular_Hora(Hora_Ini, Hora_Fin: TDateTime): Real;
  function fnc_Calcular_Hora2(Hora_Ini, Hora_Fin, DataIni, DataFin: TDateTime): Real;
  
  function fnc_Montar_Campo(Separador: String = ';'; vReg: String = ''): String;
  function fnc_Montar_Valor(Campo: String): String;
  function fnc_Retornar_Semana_Mes(Data: TDateTime): Integer;
  function Replace(Str, Ant, Novo: string): string;
  function Replace2(Str, Ant, Novo: string): string;
  function PegaTimeZone: string;
  function fnc_verifica_Arquivo(NomeArquivo, Le_Grava: String): String;
  function fnc_Calcula_DigitoEAN13(Seq_Maxima, Sequencia: Integer; Cod_Principal: String): Integer;
  function fnc_HorarioVerao: Boolean;
  
  procedure prc_le_Grid(Grid: TSMDBGrid; Form, Caminho: string);
  procedure prc_Grava_Grid(Grid: TSMDBGrid; Form, Caminho: string);
  function fnc_Verifica_Numero(Campo: String): Boolean;
  function fnc_Verifica_Data(Campo: String): Boolean;

  procedure prc_ShellExecute(MSG: String);

  procedure prc_Preencher_Excel(planilha: Variant; vDados: TDataSource);
  procedure prc_Preencher_Excel2(planilha: Variant;  vDados: TDataSource; Grid :TSMDBGrid);

  function fnc_Ajusta_DtVencimento(Dia_Vecto,Dia1,Dia2,QDias_MPag: Integer ; DtVecto: TDateTime) : TDateTime;

  function fnc_Converte_Horas(Hora: Real): Real;
  function fnc_Converte_Min_Dec(Hora: Real): Real;
  function fnc_Diferenca_Horas2(Inicio, Fim: TTime): Real;

  function CharEspeciais(Texto:String):String;

  function fnc_Somar_Edit(Valores: string): Double;

  function Criptografar(ABase: integer; AChave, AValue: string): string;
  { Criptografa o valor informado
    - Parâmetros -
    ABase  -> Número da base utilizada para gerar o serial
    AChave -> Chave utilizada para gerar o serial
    AValue -> Valor que ser criptografado
  }

  function Descriptografar(ABase: integer; AChave, AValue: string): string;
  { Descriptografa o valor informado
    - Parâmetros -
    ABase  -> Número da base utilizada para gerar o serial
    AChave -> Chave utilizada para gerar o serial
    AValue -> Valor que ser descriptografado
  }
  function GerarSerial(ABase: Integer; AChave: string): string;
  { Gera serial
    - Parâmetros -
    ABase  -> Número da base utilizada para gerar o serial
    AChave -> Chave utilizada para gerar o serial
  }
  procedure addLog(Erro: string; Arquivo: string = '');
  procedure prc_Form_Aguarde(Form : TForm); overload;
  procedure prc_Form_Aguarde(Form : TForm; Mensagem : String); overload;

var
  vCodProduto_Pos: Integer;
  vCodPessoa_Pos: Integer;
  vCodProcesso_Pos: Integer;
  vNum_Pedido_Pos: Integer;
  vReferencia_Pos: String;
  vID_Grupo_Pos: Integer;
  vID_ContaOrcamento_Pos: Integer;
  vID_ContaOrcamento_Sup_Pos: Integer;
  vTipo_RD_Pos: String; //Receita ou Despesa das contas de orçamento
  vID_Plano_Contas_Pos: Integer;
  vFilial: Integer;
  vFilial_Nome: String;
  vEmail_Fortes, vEmail_Assunto_Fortes: String;
  vEmail_Fortes_Corpo: String;
  vTipo_Config_Email: Integer;
  vID_Nota: Integer; //Esse campo serve para marcar o ID da nota fiscal, esta sendo usado na importação do XML.
  vImportar_NotaSaida: Boolean = False;
  vTipo_Baixa_Ped: String; //FAT=Faturar  COM=Compras  PRO=Produção
  vTipo_Pedido: String; //P= Pedido  C= Compras
  vPreco_Pos: Real;
  vNum_Lote_Pos: String;
  vRegistro_CSV: String;
  vRegistro_CSV2: String;
  vRotulo: Boolean;
  vSenha: String;
  vID_Cidade_Pos: Integer;
  vID_Pais_Pos: Integer;
  vUsuario: String;
  vTerminal: Integer; //terminal PDV Cupom
  vPorta: String;
  vModeloImpressora : string;
  vLocalEstoque: Integer; //para Cupom fiscal
  vBalanca: String;
  vPortaBalanca: String;
  vVelocidade: String;
  vUnidade_Pos: String;
  vQtd_Pacote_Pos: Real;
  vMSgNotificacao: String;
  vHrEmissaoNFe: TDateTime;
  vUsa_Cor_Pos, vUsa_Preco_Cor_Pos: String;
  vExcluir_Cupom: Boolean = False;
  vTipo_Dig_Cupom: String;
  vCodCombinacao_Pos: Integer;
  vCodCor_Pos: Integer;
  vNumOrd_Pos: Integer;
  vNumRemessa_Pos: String;
  vImpCliente_RF: String; //R= Imprime Razão Social   F= Imprime Fantasia
  vImpPreco_Etiqueta: Boolean;
  viD_EnqIPI_Pos: Integer;
  vID_Ponto_Pos: Integer;
  vCodCest_Pos: String;
  vRefazer_Cons: Boolean;
  vTipo_Imp_Rotulo: String;//T=Por Tamanho
  vNum_OS_Pos: Integer;
  vID_Fechamento_Pos: Integer;
  vNome_Pos: String;
  vVlr_Pos: Real;
  vID_Atividade_Pos: Integer;
  vId_Vendedor: Integer;
  vImpressora_Padrao: String;
  vUsaGaveta: Boolean;
  vPreco_Venda_Rec_XML_Pos: Real;
  vPreco_Custo_Rec_XML_Pos: Real;
  vID_Centro_Custo: Integer;
  vID_Plano_Contabil_Pos: Integer;
  vID_Plano_Contabil: Integer;
  vNUM_Ordem_Sel: String;
  vID_Cor_Pos: Integer;
  vNum_Pedido_Vend: Integer;
  vNum_Orc_Sel: Integer;
  vProcesso_Parcial: String; //E=Encerrar    G=Gerar Novo registro no Baixa_Processo     C=Cancelar e retornar
  vItem_Ped_Pos: Integer;
  vCodBarra_Pos: String;
  vTipo_Etiqueta: String; //ROT=Rotulo
  vTamanho_Pos: String;
  vSelPesquisa: String;
  vSelCentroCusto: String;
  vDiaAdicional: Integer;
  vDtHora_Res: String;
  vPrimeira_Hora: TTime;
  vPrimeira_Data: TDate;
  vDocumentoClienteVenda : String; //Cupom - SSNFCe
  vCpfOK : Boolean; //Cupom - SSNFCe
  vCod_CBenef : String;  

implementation

uses DateUtils, JvSerialMaker, JvXorCipher, JvComponent, JvVigenereCipher, IdCoder, IdCoder3to4, IdCoderMIME, IdBaseComponent,
  Math, DBGrids;

function fnc_verifica_Arquivo(NomeArquivo, Le_Grava: String): String;
begin
  if copy(NomeArquivo,1,1) = '"' then
    delete(NomeArquivo,1,1);
  if copy(NomeArquivo,Length(NomeArquivo),1) = '"' then
    delete(NomeArquivo,Length(NomeArquivo),1);
  if (Le_Grava = 'G') and (copy(NomeArquivo,Length(NomeArquivo),1) = '\') then
    delete(NomeArquivo,Length(NomeArquivo),1);
  Result := NomeArquivo;
end;

function Replace(Str, Ant, Novo: string): string;
var
  iPos: Integer;
begin
  while Pos(Ant, Str) > 0 do
  begin
    iPos := Pos(Ant, Str);
    Str  := copy(Str, 1, iPos - 1) + Novo + copy(Str, iPos + 1, Length(Str) - iPos);
  end;
  Result := Str;
end;

function Replace2(Str, Ant, Novo: string): string;
var
  iPos: Integer;
begin
  while Posex(Ant, Str) > 0 do
  begin
    iPos := Posex(Ant, Str);
    delete(str,ipos,Length(ant));
    Str  := copy(Str, 1, iPos - 1) + Novo + copy(Str, iPos + 1, Length(Str) - iPos);
  end;
  Result := Str;
end;

function Monta_Numero(Campo: String; Tamanho: Integer): String;
var
  texto2: String;
  i: Integer;
begin
  texto2 := '';
  for i := 1 to Length(Campo) do
    if Campo[i] in ['0','1','2','3','4','5','6','7','8','9'] then
      Texto2 := Texto2 + Copy(Campo,i,1);
  for i := 1 to Tamanho - Length(texto2) do
    texto2 := '0' + texto2;
  Result := texto2;
end;

function TirarAcento(Texto: string): string;
var
  i: Integer;
begin
  //Texto := Trim(AnsiUpperCase(Texto));
  for i := 1 to Length(texto) do
  begin
    if Pos(Texto[i],' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~''"!@#$%^&*()_-+=|/\{}[]:;,.<>øØ') = 0 then
    begin
      case Texto[i] of
        'Á', 'À', 'Â', 'Ä', 'Ã': Texto[i] := 'A';
        'á', 'à', 'â', 'ä', 'ã': Texto[i] := 'a';
        'É', 'È', 'Ê', 'Ë': Texto[i] := 'E';
        'é', 'è', 'ê', 'ë': Texto[i] := 'e';
        'Í', 'Ì', 'Î', 'Ï': Texto[i] := 'I';
        'í', 'ì', 'î', 'ï': Texto[i] := 'i';
        'Ó', 'Ò', 'Ô', 'Ö', 'Õ': Texto[i] := 'O';
        'ó', 'ò', 'ô', 'ö', 'õ': Texto[i] := 'o';
        'Ú', 'Ù', 'Û', 'Ü': Texto[i] := 'U';
        'ú', 'ù', 'û', 'ü': Texto[i] := 'u';
        'Ç': Texto[i] := 'C';
        'ç': Texto[i] := 'c';
        'Ñ': Texto[i] := 'N';
        'ñ': Texto[i] := 'n';
        'ø': Texto[i] := 'ø';
        'Ø': Texto[i] := 'Ø';
      else
        Texto[i] := ' ';
      end;
    end;
  end;
  Texto := StringReplace(Texto, '&', 'e',[rfReplaceAll, rfIgnoreCase]);
  //Result := AnsiUpperCase(Texto);
  Result := Texto;
end;

function TirarAcento_arq(Texto: string): string;
var
  i: Integer;
begin
  Texto := Trim(AnsiUpperCase(Texto));
  for i := 1 to Length(texto) do
  begin
    if Pos(Texto[i],' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~''!@#$%^&()_-+={}[];,.') = 0 then
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
  Texto := StringReplace(Texto, '&', 'e',[rfReplaceAll, rfIgnoreCase]);
  Result := AnsiUpperCase(Texto);
end;

procedure AbreArquivo(arquivo: string);
begin
  if FileExists(arquivo) then
  begin
    arquivo := '"' + arquivo + '"';
      //fonte: http://www.mail-archive.com/delphi-br@yahoogrupos.com.br/msg58385.html
      //declar no uses ShellApi
    ShellExecute(Application.Handle, 'open', PChar(arquivo), nil, nil, SW_SHOWMAXIMIZED);
  end
  else
    ShowMessage('Arquivo não encontrado!');
end;

function Monta_Texto(Campo: String; Tamanho: Integer): String;
var
  texto2: String;
  i: Integer;
begin
  texto2 := '';
  for i := 1 to Length(Campo) do
    if Campo[i] in ['0','1','2','3','4','5','6','7','8','9'] then
      Texto2 := Texto2 + Copy(Campo,i,1);
  for i := 1 to Tamanho - Length(texto2) do
    texto2 := '0' + texto2;
  Result := texto2;
end;

function ValidaCNPJ(numCNPJ: string): Boolean;
var
  cnpj: string;
  dg1, dg2: integer;
  x, total: integer;
  ret: boolean;
begin
  ret  := False;
  cnpj := '0';
//Analisa os formatos
  if trim(copy(numCNPJ,1,2)) = '' then
    exit;
  if Length(numCNPJ) = 18 then
  begin
    if (Copy(numCNPJ,3,1) + Copy(numCNPJ,7,1) + Copy(numCNPJ,11,1) + Copy(numCNPJ,16,1) = '../-') then
    begin
      cnpj := Copy(numCNPJ,1,2) + Copy(numCNPJ,4,3) + Copy(numCNPJ,8,3) + Copy(numCNPJ,12,4) + Copy(numCNPJ,17,2);
      ret  := True;
    end;
    if (copy(cnpj,1,6) = '000000') or (trim(copy(cnpj,1,6)) = '') then
    begin
      Result := True;
      exit;
    end;
  end;

  cnpj := Monta_Numero(numCNPJ,0);

  if Length(cnpj) = 14 then
    ret  := True;

  //Verifica
  if ret then
  begin
    try
      //1° digito
      total := 0;
      for x := 1 to 12 do
      begin
        if x < 5 then
          Inc(total, StrToInt(Copy(cnpj, x, 1)) * (6 - x))
        else
           Inc(total, StrToInt(Copy(cnpj, x, 1)) * (14 - x));
      end;
      dg1 := 11 - (total mod 11);
      if dg1 > 9 then
        dg1 := 0;

      //2° digito
      total := 0;
      for x := 1 to 13 do
      begin
        if x < 6 then
          Inc(total, StrToInt(Copy(cnpj, x, 1)) * (7 - x))
        else
          Inc(total, StrToInt(Copy(cnpj, x, 1)) * (15 - x));
      end;

      dg2 := 11 - (total mod 11);
      if dg2 > 9 then
        dg2 := 0;
      //Validação final
      if (dg1 = StrToInt(Copy(cnpj, 13, 1))) and (dg2 = StrToInt(Copy(cnpj, 14, 1))) then
        ret := True
      else
        ret := False;
    except
      ret := False;
    end;
      //Inválidos
    case AnsiIndexStr(cnpj,['11111111111111','22222222222222','33333333333333','44444444444444',
                            '55555555555555','66666666666666','77777777777777','88888888888888','99999999999999']) of
      0..9: ret := False;
    end;
  end;
  ValidaCNPJ := ret;
end;

function ValidaCPF(numCPF: string): Boolean;
var
  cpf: string;
  x, total, dg1, dg2: Integer;
  ret: boolean;
begin
  ret := True;
  for x := 1 to Length(numCPF) do
    if not (numCPF[x] in ['0'..'9', '-', '.', ' ']) then
      ret := False;

  if ret then
  begin
    ret := True;
    cpf := '';
    for x:=1 to Length(numCPF) do
      if numCPF[x] in ['0'..'9'] then
        cpf := cpf + numCPF[x];
    if Length(cpf) <> 11 then
      ret := False;

    if ret then
    begin
      //1° dígito
      total := 0;
      for x := 1 to 9 do
        total := total + (StrToInt(cpf[x]) * x);
      dg1 := total mod 11;
      if dg1 = 10 then
        dg1 := 0;

      //2° dígito
      total := 0;
      for x := 1 to 8 do
        total := total + (StrToInt(cpf[x + 1]) * (x));
      total := total + (dg1 * 9);
      dg2 := total mod 11;
      if dg2 = 10 then
        dg2 := 0;

      //Validação final
      ret := False;
      if dg1 = StrToInt(cpf[10]) then
        if dg2 = StrToInt(cpf[11]) then
          ret := True;
      //Inválidos
      case AnsiIndexStr(cpf,['11111111111','22222222222','33333333333','44444444444',
                             '55555555555','66666666666','77777777777','88888888888','99999999999']) of
        0..9: ret := False;
      end;
    end
    else
    begin
    //Se não informado deixa passar
      if cpf = '' then
        ret := True;
    end;
  end;
  ValidaCPF := ret;
end;

function Formatar_Campo(Campo: String; Tamanho: Integer): String;
var
  i: Integer;
  texto2: String;
  vAux: Integer;
begin
  Campo := Trim(Copy(Campo,1,Tamanho));
  if Tamanho <= 0 then
    vAux := Length(Campo)
  else
    vAux := Tamanho;
  Result := '';
  texto2 := Campo;
  for i := 1 to vAux - Length(texto2) do
    texto2 := texto2 + ' ';
  Result := Texto2;
end;

function fnc_Calcular_Hora(Hora_Ini, Hora_Fin: TDateTime): Real;
var
  vQtdHoras: Currency;
  vAux: Currency;
begin
  vQtdHoras := 0;
  if (Hora_Ini > 0) and (Hora_Fin > 0) then
  begin
    vQtdHoras := (Hora_Fin - Hora_Ini) * 24;
    vAux := vQtdHoras - Int(vQtdHoras);
    vAux := (vAux * 60) / 100;
    vQtdHoras := Int(vQtdHoras) + vAux;
  end;
  Result := StrToFloat(FormatFloat('0.00', vQtdHoras));

  Result := (Hora_Fin - Hora_Ini) * 24;
end;

function fnc_Montar_Campo(Separador: String = ';'; vReg: String = ''): String;
var
  i, X: Integer;
  vTexto: String;
  vRegAux: String;
begin
  Result := '';
  if trim(vReg) = '' then
    vRegAux := vRegistro_CSV
  else
    vRegAux := vRegistro_CSV2;
  i := pos(Separador,vRegAux);
  if i = 0 then
    i := Length(vRegAux) + 1;
  Result := Copy(vRegAux,1,i-1);
  vTexto := Result;
  Delete(vRegAux,1,i);
  for x := 1 to Length(vTexto) do
  begin
    if Pos(vTexto[x],'''"') > 0 then
    begin
      vTexto[x] := ' ';
    end;
  end;
  if trim(copy(vTexto,1,1)) = '' then
    Delete(vTexto,1,1);
  if trim(copy(vTexto,Length(vTexto),1)) = '' then
    Delete(vTexto,Length(vTexto),1);
  Result := vTexto;
  if trim(vReg) = '' then
    vRegistro_CSV := vRegAux
  else
    vRegistro_CSV2 := vRegAux;
end;

function fnc_Montar_Valor(Campo: String): String;
var
  vTexto: String;
  i: Integer;
begin
  Result := '';
  vTexto := '';
  for i := 1 to Length(Campo) do
  begin
    if (copy(Campo,i,1) = '0')
      or (copy(Campo,i,1) = '1')
      or (copy(Campo,i,1) = '2')
      or (copy(Campo,i,1) = '3')
      or (copy(Campo,i,1) = '4')
      or (copy(Campo,i,1) = '5')
      or (copy(Campo,i,1) = '6')
      or (copy(Campo,i,1) = '7')
      or (copy(Campo,i,1) = '8')
      or (copy(Campo,i,1) = '9')
      or (copy(Campo,i,1) = ',')
      or (copy(Campo,i,1) = '.') then
    begin
      if (copy(Campo,i,1) = '.') then
        vTexto := vTexto + ','
      else
        vTexto := vTexto + copy(Campo,i,1);
    end;
  end;
  Result := vTexto;
end;

function fnc_Retornar_Semana_Mes(Data: TDateTime): Integer;
var
  vDia: Integer;
begin
  vDia := DayOf(Data);
  if (vDia >= 1) and (vDia <= 7) then
    Result := 1
  else
  if (vDia >= 8) and (vDia <= 14) then
    Result := 2
  else
  if (vDia >= 15) and (vDia <= 21) then
    Result := 3
  else
  if (vDia >= 22) and (vDia <= 28) then
    Result := 4
  else
  if (vDia >= 29) and (vDia <= 31) then
    Result := 5;
end;

function Criptografar(ABase: integer; AChave, AValue: string): string;
var
  Cipher: TJvVigenereCipher;
  Encoder: TIdEncoderMIME;
begin
  Cipher  := TJvVigenereCipher.Create(nil);
  Encoder := TIdEncoderMIME.Create(nil);
  try
    Cipher.Key := GerarSerial(ABase, AChave);
    Cipher.Decoded := AValue;
    Result := Encoder.Encode( Cipher.Encoded );
  finally
    FreeAndNil(Cipher);
    FreeAndNil(Encoder);
  end;
end;

function Descriptografar(ABase: integer; AChave, AValue: string): string;
var
  Cipher: TJvVigenereCipher;
  Decoder: TIdDecoderMIME;
begin
  Cipher  := TJvVigenereCipher.Create(nil);
  Decoder := TIdDecoderMIME.Create(nil);
  try
    Cipher.Key := GerarSerial(ABase, AChave);
    Cipher.Encoded := Decoder.DecodeToString( AValue );
    Result := Cipher.Decoded;
  finally
    FreeAndNil(Cipher);
    FreeAndNil(Decoder);
  end;
end;

function GerarSerial(ABase: Integer; AChave: string): string;
var
  SerialMaker: TJvSerialMaker;
begin
  SerialMaker := TJvSerialMaker.Create(nil);
  try
    Result := SerialMaker.GiveSerial(ABase, AChave);
  finally
    FreeAndNil(SerialMaker);
  end;
end;

function PegaTimeZone: string;
var
  TimeZone: TTimeZoneInformation;
begin
  GetTimeZoneInformation(TimeZone);
  Result := FormatFloat('00', TimeZone.Bias div -60) + ':00';
end;

function fnc_Calcula_DigitoEAN13(Seq_Maxima, Sequencia: Integer; Cod_Principal: String): Integer;
var
  vCodAux: String;
  i: Integer;
  vSoma: Integer;
  vSoma2: Integer;
  i2: Integer;
begin
  vSoma   := 0;
  vCodAux := IntToStr(Sequencia);
  i2      := Length(IntToStr(Seq_Maxima)) -  Length(vCodAux);
  for i := 1 to i2 do
    vCodAux := '0' + vCodAux;
  vCodAux := Cod_Principal + vCodAux;
  for i := 1 to 12 do
    begin
      if i mod 2 > 0 then  //Quando for impar multiplica por 1 se for par multiplica por 3
        vSoma := vSoma + (StrToInt(Copy(vCodAux,i,1)) * 1)
      else
        vSoma := vSoma + (StrToInt(Copy(vCodAux,i,1)) * 3);
    end;
  vSoma2 := vSoma div 10;
  vSoma2 := (vSoma2 + 1) * 10;
  vSoma  := vSoma2 - vSoma;
  if vSoma = 10 then
    Result := 0
  else
    Result := vSoma;
end;

function fnc_HorarioVerao: Boolean;
var
  T: TTimeZoneInformation;
begin
  Result := GetTimeZoneInformation(T) = TIME_ZONE_ID_DAYLIGHT;
end;

procedure prc_le_Grid(Grid: TSMDBGrid; Form, Caminho: string);
begin
  if trim(Caminho) = '' then
    exit;
  if copy(Caminho,Length(Caminho),1) <> '\' then
    Caminho := Caminho + '\';
  try
    if fileExists(Caminho + Form + '_' + Grid.Name + '_' + vUsuario + '.txt') then
      Grid.Columns.LoadFromFile(Caminho + Form + '_' + Grid.Name + '_' + vUsuario + '.txt');
  except
  end;
end;

procedure prc_Grava_Grid(Grid: TSMDBGrid; Form, Caminho: string);
begin
  if trim(Caminho) = '' then
    exit;
  try
    if not DirectoryExists(caminho) then
      CreateDirectory(PAnsiChar(caminho), nil);
    if copy(Caminho,Length(Caminho),1) <> '\' then
      Caminho := Caminho + '\';
    Grid.Columns.SaveToFile(Caminho + Form + '_' + Grid.Name + '_' + vUsuario + '.txt');
  except
    on e: Exception do
      raise Exception.Create('Erro ao gravar o layout da Grid: ' + #13 + e.Message);
  end;
end;

procedure prc_ShellExecute(MSG: String);
begin
  //ShellExecute(Application.Handle, 'Close',pansichar(MSG) ,'', '',SW_HIDE);
  ShellExecute(Application.Handle, 'Open',pansichar(MSG) ,'', '',0);
end;

function fnc_Verifica_Numero(Campo: String): Boolean;
var
  Resultado: Boolean;
  I:Integer;
begin
  Resultado := true;
  For i:=1 to Length(campo) do
    begin
      {Verifica sé é uma letra}
      if campo[i] in ['0'..'9'] then
      else
        Resultado := false;
    end;
  Result := Resultado;
end;

procedure prc_Preencher_Excel(planilha: Variant; vDados: TDataSource);
var
  linha, coluna: Integer;
  valorCampo: String;
  ColunaP: Integer;
  vTexto: String;
begin
  linha   := 1;
  ColunaP := 0;
  for coluna := 1 to vDados.DataSet.FieldCount do
  begin
    ColunaP := ColunaP + 1;
    valorcampo := vDados.DataSet.Fields[coluna - 1].DisplayLabel;
    planilha.cells[Linha, colunaP] := valorCampo;
    planilha.cells[Linha, colunaP].Font.bold := True; // Negrito
  end;

  vDados.DataSet.First;
  while not vDados.DataSet.Eof do
  begin
    linha := Linha + 1;
    ColunaP := 0;
    for coluna := 1 to vDados.DataSet.FieldCount do
    begin
      ColunaP := ColunaP + 1;
      vTexto := vDados.DataSet.Fields[coluna - 1].AsString;
      if trim(vTexto) <> '' then
        valorcampo := vDados.DataSet.Fields[coluna - 1].Value
      else
        valorcampo := '';
      if (FieldTypeNames[vDados.DataSet.Fields[coluna - 1].DataType] = 'Integer') then
      begin
        if trim(valorcampo) = '' then
          valorcampo := '0';
        planilha.Cells[linha, colunaP].NumberFormat := '#.##0_);(#.##0)';
        planilha.cells[linha, colunaP] := StrToFloat(valorCampo);
      end
      else
      if (FieldTypeNames[vDados.DataSet.Fields[coluna - 1].DataType] = 'Float') then
      begin
        if trim(valorcampo) = '' then
          valorcampo := '0';
        planilha.Cells[linha, colunaP].NumberFormat := '#.##0,00_);(#.##0,000##)';
        planilha.cells[linha, colunaP] := StrToFloat(valorCampo);
      end
      else
      if (FieldTypeNames[vDados.DataSet.Fields[coluna - 1].DataType] = 'Date') then
      begin
        if fnc_Verifica_Data(valorCampo) then //verfica se uma string é data
        begin
          try
            valorCampo := FormatDateTime('mm/dd/yyyy',StrToDate(valorCampo));
            planilha.Cells[linha, colunaP].NumberFormat := AnsiString('dd/mm/aaaa');
            planilha.cells[linha, colunaP] := valorCampo;
          except
//            vDados.DataSet.Next;
          end;
        end;
      end
      else
      begin
        planilha.Cells[linha, colunaP].NumberFormat := AnsiChar('@');;
        planilha.cells[linha, colunaP] := valorCampo;
      end;
    end;
    vDados.DataSet.Next;
  end;
end;

function fnc_Verifica_Data(Campo: String): Boolean; //verfica se uma string é data
begin
  Result := True;
  try
    Result := IsValidDate(StrToInt(Copy(Campo,7,4)),StrToInt(Copy(Campo,3,2)),StrToInt(Copy(Campo,1,2)));
  except
    Result := False;
  end;
end;

function fnc_Calcular_Hora2(Hora_Ini, Hora_Fin, DataIni, DataFin: TDateTime): Real;
var
  vTotalHoras: Currency;
  vHrFinalAux: TDateTime;
  vHrAux: TDateTime;
  vQtdDias, vAux: Currency;
begin
  if DataIni = DataFin then
    vTotalHoras := fnc_Calcular_Hora(hora_ini,hora_fin)
  else
  begin
    vQtdDias := DataFin - DataIni;
    vHrFinalAux  := StrToTime('23:59');
    vHrAux       := StrToTime('00:01');
    vTotalHoras  := fnc_Calcular_Hora(Hora_Ini,vHrFinalAux + vHrAux);
    vTotalHoras  := vTotalHoras + (Hora_Fin * 24);
    if vQtdDias > 1 then
    begin
      vAux        := 24 * (vQtdDias - 1);
      vTotalHoras := vTotalHoras + vAux;
    end;
  end;
  Result := vTotalHoras;
end;

function fnc_Converte_Horas(Hora: Real): Real;
var
  vAux: real;
  vAux2: real;
  vTexto: String;
  i: Integer;
begin
  vaux := Frac(Hora);
  if vAux > 0 then
  begin
    vAux   := StrToFloat(FormatFloat('0.00',(vAux / 60)*100));
    vTexto := FloatToStr(vAux);
    i := pos(',',vTexto);
    if i > 0 then
      vTexto := copy(vTexto,i+1,2)
    else
      vTexto := FloatToStr(vAux);
  end
  else
    vTexto := '00';

  vaux2 := Int(Hora);
  if vAux2 <= 0 then
    vAux2 := 0;
  vTexto := FloatToStr(vAux2) + ',' + vTexto;
  Result := StrToFloat(vTexto);
end;

procedure prc_Preencher_Excel2(planilha: Variant; vDados: TDataSource; Grid :TSMDBGrid);
var
  linha, coluna: Integer;
  valorCampo: String;
  ColunaP: Integer;
  vTexto: String;
begin
  linha   := 1;
  ColunaP := 0;
  for coluna := 0 to Grid.FieldCount - 1 do
  begin
    if Grid.Columns[coluna].Visible then
    begin
      ColunaP := ColunaP + 1;
      //valorcampo := Grid.Columns[coluna].FieldName;
      valorcampo := Grid.Columns[coluna].Title.Caption;
      planilha.cells[Linha, colunaP] := valorCampo;
      planilha.cells[Linha, colunaP].Font.bold := True; // Negrito
    end;
  end;

  vDados.DataSet.First;
  while not vDados.DataSet.Eof do
  begin
    linha := Linha + 1;
    ColunaP := 0;
    for coluna := 0 to Grid.FieldCount - 1 do
    begin
      if Grid.Columns[coluna].Visible then
      begin
        ColunaP := ColunaP + 1;
        vTexto := vDados.DataSet.FieldByName(grid.Columns[coluna].FieldName).AsString;
        if trim(vTexto) <> '' then
          valorcampo := vDados.DataSet.FieldByName(grid.Columns[coluna].FieldName).Value
        else
          valorcampo := '';
        vTexto := Grid.Columns[coluna]. FieldName;

        if FieldTypeNames[vDados.DataSet.FieldByName(grid.Columns[coluna].FieldName).DataType] = 'Integer' then
        begin
          if trim(valorcampo) = '' then
            valorcampo := '0';
          planilha.Cells[linha, colunaP].NumberFormat := '#.##0_);(#.##0)';
          planilha.cells[linha, colunaP] := StrToFloat(valorCampo);
        end
        else
        if FieldTypeNames[vDados.DataSet.FieldByName(grid.Columns[coluna].FieldName).DataType] = 'Float' then
        begin
          if trim(valorcampo) = '' then
            valorcampo := '0';
          planilha.Cells[linha, colunaP].NumberFormat := '#.##0,00_);(#.##0,000##)';
          planilha.cells[linha, colunaP] := StrToFloat(valorCampo);
        end
        else
        if FieldTypeNames[vDados.DataSet.FieldByName(grid.Columns[coluna].FieldName).DataType] = 'Date' then
        begin
          if trim(valorCampo) <> '' then
          begin
            try
              valorCampo := FormatDateTime('mm/dd/yyyy',StrToDate(valorCampo));
              planilha.Cells[linha, colunaP].NumberFormat := AnsiString('dd/mm/aaaa');
              planilha.cells[linha, colunaP] := valorCampo;
            except
              vDados.DataSet.Next;
            end;
          end;
        end
        else
        begin
          planilha.Cells[linha, colunaP].NumberFormat := AnsiChar('@');;
          planilha.cells[linha, colunaP] := valorCampo;
        end;
      end;
    end;
    vDados.DataSet.Next;
  end;
end;

function fnc_Ajusta_DtVencimento(Dia_Vecto,Dia1,Dia2,QDias_MPag: Integer ; DtVecto: TDateTime) : TDateTime;
var
  vAux: Integer;
begin
  Result := DtVecto;
  if ((Dia_Vecto <> Dia1) and (Dia_Vecto <> Dia2)) then
  begin
    if Dia1 = Dia2 then
    begin
      if Dia_Vecto > Dia1 then
      begin
        vAux := Dia_Vecto - Dia1;
        if (QDias_MPag <= 0) or ((vAux <= QDias_MPag) and (QDias_MPag > 0)) then
          Result := DtVecto - vAux
        else
          Result := DtVecto + Dia_Vecto + 1;
      end
      else
      begin
        vAux := Dia1 - Dia_Vecto;
        Result := DtVecto + vAux;
      end;
    end
    else
    if Dia_Vecto < Dia1 then
      Result := DtVecto + (dia1 - Dia_Vecto)
    else
    if Dia_Vecto < Dia2 then
      Result := DtVecto + (dia2 - Dia_Vecto)
    else
    if (Dia_Vecto > Dia2) then
    begin
      if (Dia_Vecto = 1) then
        Result := DtVecto + (dia1 - 1)
      else
      if (Dia_Vecto = 7) then
        Result := DtVecto + (dia1)
      else
        Result := DtVecto - (Dia_Vecto - dia2)
    end;
  end;
end;

function CharEspeciais(Texto: String): String;
var
  i,t:integer;
begin
  Result := '';
  t:=length(texto);
  i:=1;
  While i <= t do
  begin
   if texto[i] in ['1'..'9','a'..'z','A'..'Z'] Then
     result:=result+Texto[i];
   i:=i+1;
  end;
end;


function fnc_Converte_Min_Dec(Hora: Real): Real; //Converte de Decimal para Minutos
var
  vAux: Real;
begin
  Result := 0;
  //vAux := Frac vTempo - Trunc(vTempo);
  vAux := Frac(Hora);
  if StrToFloat(FormatFloat('0.00',vAux)) > 0 then
  begin
    vAux := StrToFloat(FormatFloat('0.00',(vAux * 60) / 100));
    vAux := Trunc(Hora) + vAux;
    Result := vAux;
  end;

end;

function fnc_Diferenca_Horas2(Inicio, Fim: TTime): Real;
var
  FIni,FFim: TDateTime;
  vTexto: String;
  vAux: Real;
begin
  Fini := Inicio;
  FFim := Fim;
  if (Inicio > Fim) then
    vTexto :=  TimeToStr((StrTotime('23:59:59')-Fini)+FFim+(StrTotime('00:00:01')))
  else
    vTexto := TimeToStr(FFim-Fini);
  vTexto := Copy(vTexto,1,5);
  vTexto := Replace(vTexto,':',',');
  //Result := fnc_Converte_Horas(StrToFloat(vTexto));
  Result := StrToFloat(vTexto);
end;

function fnc_Somar_Edit(Valores: string): Double;
var
  vValorCalculo: array[1..10] of real;
  i, i2: Integer;
  x: string;
  soma: real;
begin
  i := 0;
  repeat
    inc(i);
    i2 := pos('+', Valores);
    if (i2 = 0) then
    begin
      i2 := Length(Valores) + 1;
    end;
    x := Copy(Valores, 1, i2 - 1);
    Delete(Valores, 1, i2);
    vValorCalculo[i] := strtofloat(x);
  until Valores = '';
  soma := 0;
  for i := 1 to 10 do
  begin
    soma := soma + vValorCalculo[i];
  end;
  Result := soma;
end;

procedure addLog(Erro: string; Arquivo: string = '');
begin
  try
    if FileExists(ExtractFilePath(Application.ExeName) + 'log.txt') then
      with TStringList.Create do
      try

        if Arquivo = '' then
          Arquivo := ExtractFilePath(Application.ExeName)+'LogErro_' + FormatDateTime('yyyymmdd', now) + '.txt';

        //Arquivo := CaminhoPrograma + Arquivo;

        if FileExists(arquivo) then
          LoadFromFile(arquivo);

        Add(DateTimeToStr(now) + ' - ' + erro + #13);

        SaveToFile(arquivo);

      finally
        Free;
      end;
  except
  end;
end;

procedure prc_Form_Aguarde(Form : TForm); overload;
var
  MSG: Tlabel;
  Borda: TShape;
begin
  //Form := TForm.Create(Application);
  Form.BorderStyle := bsNone;
  Form.Position := poDesktopCenter;
  Form.Width := 400;
  Form.Height := 45; // até aqui criamos o form

  Borda := TShape.Create(Application);
  Borda.Parent := Form;
  Borda.Align := alClient; // uma borda envolta do form

  MSG := Tlabel.Create(Application);
  MSG.Parent := Form;
  MSG.Transparent := true;
  MSG.AutoSize := False;
  MSG.Font.Name := 'Verdana';
  MSG.Font.Size := 25;
  MSG.Width := 395;
  MSG.Height := 42;
  MSG.Caption := '... Aguarde ...';
  MSG.Alignment := taCenter; // label com a mensagem "Aguarde"

  Form.Show;
  Form.Update;

  //Form.Free; // Vai limpar na origem da chamada

end;

procedure prc_Form_Aguarde(Form : TForm; Mensagem : String); overload;
var
  MSG: Tlabel;
  Borda: TShape;
begin
  //Form := TForm.Create(Application);
  Form.BorderStyle := bsNone;
  Form.Position := poDesktopCenter;
  Form.Width := 400;
  Form.Height := 45;

  Borda := TShape.Create(Application);
  Borda.Parent := Form;
  Borda.Align := alClient;

  MSG := Tlabel.Create(Application);
  MSG.Parent := Form;
  MSG.Transparent := true;
  MSG.AutoSize := False;
  MSG.Font.Name := 'Verdana';
  MSG.Font.Size := 25;
  MSG.Width := 395;
  MSG.Height := 42;
  MSG.Caption := Mensagem;
  MSG.Alignment := taCenter;

  Form.Show;
  Form.Update;
end;

end.
