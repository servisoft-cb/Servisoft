unit uIntegracao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, DB, QRCTRLS, SqlExpr, dbXPress,
  Variants, uDm1, uDmRemoto, IdCoder, JvLookup, IdCoder3to4, IdCoderMIME;

procedure Prc_Gravar_Pessoa_FB(fDm1: TDm1; Codigo: Integer);
procedure prc_Ler_Vcto_Site(fDm1: TDm1);
procedure Prc_Ler_Pessoa_FB(fDm1: TDm1; Codigo: Integer);
procedure Prc_Excluir_Pessoa_FB(fDm1: TDm1; Codigo: Integer);

procedure Prc_Gravar_Usuario(ID : Integer ; Nome, Login, Senha : String);
procedure Prc_Excluir_Usuario(ID: Integer);

procedure Prc_Gravar_Sistema(ID : Integer ; Nome, Obs : String);
procedure Prc_Excluir_Sistema(ID: Integer);

procedure Prc_Gravar_Pessoa_Usuario(ID_Pessoa, ID_Usuario: Integer);
procedure Prc_Excluir_Pessoa_Usuario(ID_Pessoa, ID_Usuario: Integer);

procedure Prc_Gravar_Pessoa_Sistema(ID_Pessoa, ID_Sistema: Integer ; DtInicio, DtFinal : TDate);
procedure Prc_Excluir_Pessoa_Sistema(ID_Pessoa, ID_Sistema: Integer);


function ProximaSequencia(NomeTabela: String; Filial: Integer): Integer;

implementation

function ProximaSequencia(NomeTabela: String; Filial: Integer): Integer;
var
  sds: TSQLDataSet;
  iSeq: Integer;
  ID: TTransactionDesc;
  Flag: Boolean;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    ID.TransactionID := 999;  // --
    ID.IsolationLevel := xilREADCOMMITTED;          //--

    dmRemoto.scConexao.StartTransaction(ID);
    try //--
      sds.SQLConnection := dmRemoto.scConexao; //--

      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      //Esse comando foi tirado porque demora muito, as máquinas estavam demorando até 20 segundos para confirmar
     //sds.CommandText := 'SELECT NUMREGISTRO FROM SEQUENCIAL WHERE TABELA = :TABELA AND FILIAL = :FILIAL FOR UPDATE WITH LOCK';

      sds.CommandText :=  'UPDATE SEQUENCIAL SET NUMREGISTRO = ( SELECT MAX(NUMREGISTRO) + 1 '+
                          '                                      FROM SEQUENCIAL '+
                          '                                      WHERE TABELA = :TABELA '+
                          '                                      AND FILIAL = :FILIAL) ' +
                          ' WHERE TABELA = :TABELA   '+
                          ' AND FILIAL = :FILIAL  ';

      sds.ParamByName('TABELA').AsString  := NomeTabela;
      sds.ParamByName('FILIAL').AsInteger := Filial;

      Flag := False;
      While Not Flag do
      Begin
         try
            sds.Close;
            sds.ExecSQL;
            Flag := True;
         Except
           On E: Exception do
              Flag := False;
         End;
      End;

      sds.Close;
      sds.CommandText := 'SELECT MAX(NUMREGISTRO) NUMREGISTRO ' +
                         'FROM SEQUENCIAL ' +
                         'WHERE TABELA = :TABELA'+
                         ' AND FILIAL = :FILIAL';

      sds.ParamByName('TABELA').AsString  := NomeTabela;
      sds.ParamByName('FILIAL').AsInteger := Filial;
      sds.Open;

      iSeq := sds.FieldByName('NUMREGISTRO').AsInteger;
      dmRemoto.scConexao.Commit(ID);

      Result := iSeq;
    except //--
      dmRemoto.scConexao.Rollback(ID);  //--
      raise; //--
    end;   //--
  finally
    FreeAndNil(sds);
  end;
end;

////////////////////////////////////////////////////////////////////
/////////////////////////// Pessoa ////////////////////////////////
////////////////////////////////////////////////////////////////////
procedure prc_Ler_Vcto_Site(fDm1: TDm1);
var
  fDmRemoto: TdmRemoto;
  vCodigo: Integer;
  vDt1, vDt2: TDateTime;
begin
  try
    fDmRemoto := TdmRemoto.Create(Nil);
    fdm1.tPessoa.First;
    while not fDM1.tPessoa.eof do
    begin
      vCodigo := fdm1.tPessoaID.AsInteger;
      if fdm1.tPessoaDT_LIBERADO.IsNull then
      begin
        fdm1.tPessoa.Next;
        Continue;
      end;

      if fdm1.tPessoaDT_LIBERADO.IsNull then
      begin
        fdm1.tPessoa.Next;
        Continue;
      end;

      vDt1 := StrToDate(fDm1.Decoder1.DecodeString(fdm1.tPessoaDT_LIBERADO.AsString));

      if not fDmRemoto.LocalizarRegistro(False,vCodigo) then
      begin
        fdm1.tPessoa.Next;
        Continue;
      end;

      vDt2 := StrToDate(fDm1.Decoder1.DecodeString(fDmRemoto.cdsPessoaDT_LIBERADO.AsString));
      if vDt1 < vDt2 then
      begin
        fDM1.tPessoa.Edit;
        fDm1.tPessoaDT_LIBERADO.AsString := fDmRemoto.cdsPessoaDT_LIBERADO.AsString;
        fDM1.tPessoa.Post;
      end;
      fdm1.tPessoa.Next;
    end;
    fDM1.tPessoa.ApplyUpdates(0);
  finally
    FreeAndNil(fDmRemoto);
  end;
end;

procedure Prc_Gravar_Pessoa_FB(fDm1: TDm1; Codigo: Integer);
var
  fDmRemoto: TdmRemoto;
  x: Integer;
begin
   // Verifica se o registro já não se encontra no paradox.
   if fDM1.tPessoa.Locate('ID', Codigo, [loCaseInsensitive]) then
   begin
      fDmRemoto := TdmRemoto.Create(Nil);
      try
         // Localiza a nota fiscal na base do firebird.
         if not fDmRemoto.LocalizarRegistro(False, Codigo) then
           fDmRemoto.IncluirRegistro
         else
           fDmRemoto.cdsPessoa.Edit;

         // Insere a nota do Local na tabela do site.
         for x:=0 to (fDM1.tPessoa.FieldCount-1) do
         begin
           if (not (fDM1.tPessoa.Fields[x].FieldKind in [fkLookup, fkCalculated])) and
              (Copy(fDM1.tPessoa.Fields[x].FieldName,1,3) <> 'sds') and
              ((fDm1.tPessoa.Fields[x].ProviderFlags = [pfInUpdate,pfInWhere,pfInKey]) or
              (fDm1.tPessoa.Fields[x].ProviderFlags = [pfInUpdate,pfInWhere])) then
           begin
             if fDM1.tPessoa.Fields[x].DataType = ftBoolean  then
             begin
               if (not fDM1.tPessoa.Fields[x].AsBoolean) or (fDM1.tPessoa.Fields[x].IsNull) then
                 fDmRemoto.cdsPessoa.FieldByName(fDM1.tPessoa.Fields[x].FieldName).AsVariant :=  'N'
               else
                 fDmRemoto.cdsPessoa.FieldByName(fDM1.tPessoa.Fields[x].FieldName).AsVariant :=  'S'
             end
             else
               fDmRemoto.cdsPessoa.FieldByName(fDM1.tPessoa.Fields[x].FieldName).AsVariant := fDM1.tPessoa.Fields[x].Value
           end;
         end;
        fDmRemoto.GravarRegistro;
      finally

         FreeAndNil(fDmRemoto);
      end;
   end;
end;

procedure Prc_Excluir_Pessoa_FB(fDm1: TDm1; Codigo: Integer);
Var
   fDmRemoto: TDmRemoto;
begin
   fDmRemoto := TDmRemoto.Create(Nil);
   try
      If fDmRemoto.LocalizarRegistro(False, Codigo) then
         fDmRemoto.ExcluirRegistro;
      fDmRemoto.GravarRegistro;
   finally
      FreeAndNil(fDmRemoto);
   end;
end;

procedure Prc_Ler_Pessoa_FB(fDm1: TDm1; Codigo: Integer);
begin

end;

procedure Prc_Gravar_Pessoa_Usuario(ID_Pessoa, ID_Usuario: Integer);
var
  fDmRemoto: TdmRemoto;
begin
   fDmRemoto := TdmRemoto.Create(Nil);
   try
     fDmRemoto.prc_Localizar_Pessoa_Usuario(ID_Pessoa,ID_Usuario);
     if fDmRemoto.cdsPessoa_Usuario.IsEmpty then
     begin
       fDmRemoto.cdsPessoa_Usuario.Insert;
       fDmRemoto.cdsPessoa_UsuarioID_PESSOA.AsInteger  := ID_Pessoa;
       fDmRemoto.cdsPessoa_UsuarioID_USUARIO.AsInteger := ID_Usuario;
       fDmRemoto.cdsPessoa_Usuario.Post;
       fDmRemoto.cdsPessoa_Usuario.ApplyUpdates(0);
     end;
   finally
     FreeAndNil(fDmRemoto);
   end;
end;

procedure Prc_Excluir_Pessoa_Usuario(ID_Pessoa, ID_Usuario: Integer);
Var
   fDmRemoto: TDmRemoto;
begin
   fDmRemoto := TDmRemoto.Create(Nil);
   try
     fDmRemoto.prc_Localizar_Pessoa_Usuario(ID_Pessoa,ID_Usuario);
     if not fDmRemoto.cdsPessoa_Usuario.IsEmpty then
     begin
       fDmRemoto.cdsPessoa_Usuario.Delete;
       fDmRemoto.cdsPessoa_Usuario.ApplyUpdates(0);
     end;
   finally
      FreeAndNil(fDmRemoto);
   end;
end;

procedure Prc_Gravar_Pessoa_Sistema(ID_Pessoa, ID_Sistema: Integer ; DtInicio, DtFinal : TDate);
var
  fDmRemoto: TdmRemoto;
begin
   fDmRemoto := TdmRemoto.Create(Nil);
   try
     fDmRemoto.prc_Localizar_Pessoa_Sistema(ID_Pessoa,ID_Sistema);
     if fDmRemoto.cdsPessoa_Sistema.IsEmpty then
     begin
       fDmRemoto.cdsPessoa_Sistema.Insert;
       fDmRemoto.cdsPessoa_SistemaID_PESSOA.AsInteger  := ID_Pessoa;
       fDmRemoto.cdsPessoa_SistemaID_SISTEMA.AsInteger := ID_Sistema;
       if DtInicio > 10 then
         fDmRemoto.cdsPessoa_SistemaDTINICIO.AsDateTime := DtInicio
       else
         fDmRemoto.cdsPessoa_SistemaDTINICIO.Clear;
       if DtFinal > 10 then
         fDmRemoto.cdsPessoa_SistemaDTFINAL.AsDateTime := DtFinal
       else
         fDmRemoto.cdsPessoa_SistemaDTFINAL.Clear;
       fDmRemoto.cdsPessoa_Sistema.Post;
       fDmRemoto.cdsPessoa_Sistema.ApplyUpdates(0);
     end;
   finally
     FreeAndNil(fDmRemoto);
   end;
end;

procedure Prc_Excluir_Pessoa_Sistema(ID_Pessoa, ID_Sistema: Integer);
Var
   fDmRemoto: TDmRemoto;
begin
   fDmRemoto := TDmRemoto.Create(Nil);
   try
     fDmRemoto.prc_Localizar_Pessoa_Sistema(ID_Pessoa,ID_Sistema);
     if not fDmRemoto.cdsPessoa_Sistema.IsEmpty then
     begin
       fDmRemoto.cdsPessoa_Sistema.Delete;
       fDmRemoto.cdsPessoa_Sistema.ApplyUpdates(0);
     end;
   finally
      FreeAndNil(fDmRemoto);
   end;
end;

procedure Prc_Gravar_Usuario(ID : Integer ; Nome, Login, Senha : String);
var
  fDmRemoto: TdmRemoto;
  Encoder1: TIdEncoderMIME;
begin
   Encoder1   := TIdEncoderMIME.Create(nil);
   fDmRemoto := TdmRemoto.Create(Nil);
   try
     fDmRemoto.prc_Localizar_Usuario(ID);
     if not fDmRemoto.cdsUsuario.IsEmpty then
       fDmRemoto.cdsUsuario.Edit
     else
     if fDmRemoto.cdsUsuario.IsEmpty then
     begin
       fDmRemoto.cdsUsuario.Insert;
       fDmRemoto.cdsUsuarioID.AsInteger := ID;
       fDmRemoto.cdsUsuarioSENHA.AsString := Senha;
     end;
     if trim(fDmRemoto.cdsUsuarioSENHA.AsString) = '' then
       fDmRemoto.cdsUsuarioSENHA.AsString := Encoder1.EncodeString(Senha);
     fDmRemoto.cdsUsuarioNOME.AsString  := Nome;
     fDmRemoto.cdsUsuarioLOGIN.AsString := Login;
     fDmRemoto.cdsUsuario.Post;
     fDmRemoto.cdsUsuario.ApplyUpdates(0);

   finally
     FreeAndNil(fDmRemoto);
     FreeAndNil(Encoder1);
   end;
end;

procedure Prc_Excluir_Usuario(ID: Integer);
Var
   fDmRemoto: TDmRemoto;
begin
   fDmRemoto := TDmRemoto.Create(Nil);
   try
     fDmRemoto.prc_Localizar_Usuario(ID);
     if not fDmRemoto.cdsUsuario.IsEmpty then
     begin
       fDmRemoto.cdsUsuario.Delete;
       fDmRemoto.cdsUsuario.ApplyUpdates(0);
     end;
   finally
      FreeAndNil(fDmRemoto);
   end;
end;

procedure Prc_Gravar_Sistema(ID : Integer ; Nome, Obs : String);
var
  fDmRemoto: TdmRemoto;
begin
   fDmRemoto := TdmRemoto.Create(Nil);
   try
     fDmRemoto.prc_Localizar_Sistema(ID);
     if not fDmRemoto.cdsSistema.IsEmpty then
       fDmRemoto.cdsSistema.Edit
     else
     if fDmRemoto.cdsSistema.IsEmpty then
     begin
       fDmRemoto.cdsSistema.Insert;
       fDmRemoto.cdsSistemaID.AsInteger := ID;
     end;
     fDmRemoto.cdsSistemaNOME.AsString  := Nome;
     fDmRemoto.cdsSistemaOBS.AsString   := Obs;
     fDmRemoto.cdsSistema.Post;
     fDmRemoto.cdsSistema.ApplyUpdates(0);

   finally
     FreeAndNil(fDmRemoto);
   end;
end;

procedure Prc_Excluir_Sistema(ID: Integer);
Var
   fDmRemoto: TDmRemoto;
begin
   fDmRemoto := TDmRemoto.Create(Nil);
   try
     fDmRemoto.prc_Localizar_Sistema(ID);
     if not fDmRemoto.cdsSistema.IsEmpty then
     begin
       fDmRemoto.cdsSistema.Delete;
       fDmRemoto.cdsSistema.ApplyUpdates(0);
     end;
   finally
      FreeAndNil(fDmRemoto);
   end;
end;

end.

