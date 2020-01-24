object dmRemoto: TdmRemoto
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 358
  Top = 131
  Height = 427
  Width = 627
  object scConexao: TSQLConnection
    ConnectionName = 'ServisoftRemoto'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=firebird09-farm51.kinghost.net:/firebird/servisoft.gdb'
      'RoleName=RoleName'
      'User_Name=servisoft'
      'Password=35977456'
      'ServerCharSet='
      'SQLDialect=3'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Left = 57
    Top = 47
  end
  object sdsPessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT P.*'#13#10'FROM PESSOA P'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = scConexao
    Left = 120
    Top = 48
    object sdsPessoaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object sdsPessoaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 40
    end
    object sdsPessoaPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 18
    end
    object sdsPessoaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object sdsPessoaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 25
    end
    object sdsPessoaCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object sdsPessoaESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object sdsPessoaFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object sdsPessoaFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object sdsPessoaINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 15
    end
    object sdsPessoaIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
      Size = 10
    end
    object sdsPessoaESTCIVIL: TStringField
      FieldName = 'ESTCIVIL'
      Size = 12
    end
    object sdsPessoaPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 25
    end
    object sdsPessoaNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
    end
    object sdsPessoaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsPessoaOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsPessoaFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaREFPESSOAL1: TStringField
      FieldName = 'REFPESSOAL1'
      Size = 40
    end
    object sdsPessoaREFPESSOAL2: TStringField
      FieldName = 'REFPESSOAL2'
      Size = 40
    end
    object sdsPessoaREFPESSOALEND1: TStringField
      FieldName = 'REFPESSOALEND1'
      Size = 40
    end
    object sdsPessoaREFPESSOALEND2: TStringField
      FieldName = 'REFPESSOALEND2'
      Size = 40
    end
    object sdsPessoaREFPESSOALFONE1: TStringField
      FieldName = 'REFPESSOALFONE1'
      Size = 15
    end
    object sdsPessoaREFPESSOALFONE2: TStringField
      FieldName = 'REFPESSOALFONE2'
      Size = 15
    end
    object sdsPessoaREFCOMERCIAL1: TStringField
      FieldName = 'REFCOMERCIAL1'
      Size = 40
    end
    object sdsPessoaREFCOMERCIAL2: TStringField
      FieldName = 'REFCOMERCIAL2'
      Size = 40
    end
    object sdsPessoaREFCOMERCIALEND1: TStringField
      FieldName = 'REFCOMERCIALEND1'
      Size = 40
    end
    object sdsPessoaREFCOMERCIALEND2: TStringField
      FieldName = 'REFCOMERCIALEND2'
      Size = 40
    end
    object sdsPessoaREFCOMERCIALFONE1: TStringField
      FieldName = 'REFCOMERCIALFONE1'
      Size = 15
    end
    object sdsPessoaREFCOMERCIALFONE2: TStringField
      FieldName = 'REFCOMERCIALFONE2'
      Size = 15
    end
    object sdsPessoaCIDADE: TIntegerField
      FieldName = 'CIDADE'
    end
    object sdsPessoaTRANSPORTADORA: TStringField
      FieldName = 'TRANSPORTADORA'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaPERCCOMISSAO: TFloatField
      FieldName = 'PERCCOMISSAO'
    end
    object sdsPessoaTIPOCOMISSAO: TStringField
      FieldName = 'TIPOCOMISSAO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaDTCONTRATOINI: TDateField
      FieldName = 'DTCONTRATOINI'
    end
    object sdsPessoaDTCONTRATOFIM: TDateField
      FieldName = 'DTCONTRATOFIM'
    end
    object sdsPessoaCONTRATODEVOLVIDO: TDateField
      FieldName = 'CONTRATODEVOLVIDO'
    end
    object sdsPessoaCOBENDERECO: TStringField
      FieldName = 'COBENDERECO'
      Size = 40
    end
    object sdsPessoaCOBNUMERO: TIntegerField
      FieldName = 'COBNUMERO'
    end
    object sdsPessoaCOBCOMPLEMENTO: TStringField
      FieldName = 'COBCOMPLEMENTO'
      Size = 10
    end
    object sdsPessoaCOBBAIRRO: TStringField
      FieldName = 'COBBAIRRO'
      Size = 30
    end
    object sdsPessoaCOBCIDADE: TIntegerField
      FieldName = 'COBCIDADE'
    end
    object sdsPessoaCOBUF: TStringField
      FieldName = 'COBUF'
      Size = 2
    end
    object sdsPessoaCOBCONTATO: TStringField
      FieldName = 'COBCONTATO'
      Size = 30
    end
    object sdsPessoaENDNUMERO: TIntegerField
      FieldName = 'ENDNUMERO'
    end
    object sdsPessoaENDCOMPLEMENTO: TStringField
      FieldName = 'ENDCOMPLEMENTO'
      Size = 15
    end
    object sdsPessoaIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
    end
    object sdsPessoaCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
    object sdsPessoaAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 5
    end
    object sdsPessoaNUMCONTACORRENTE: TStringField
      FieldName = 'NUMCONTACORRENTE'
      Size = 15
    end
    object sdsPessoaLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 10
    end
    object sdsPessoaSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object sdsPessoaDIAPAGAMENTO: TIntegerField
      FieldName = 'DIAPAGAMENTO'
    end
    object sdsPessoaCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object sdsPessoaFORMAPGTO: TIntegerField
      FieldName = 'FORMAPGTO'
    end
    object sdsPessoaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object sdsPessoaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 50
    end
    object sdsPessoaSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaCONJUGE: TStringField
      FieldName = 'CONJUGE'
      Size = 40
    end
    object sdsPessoaDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
    end
    object sdsPessoaCEL: TStringField
      FieldName = 'CEL'
      Size = 15
    end
    object sdsPessoaPLANOSAUDE_ID: TIntegerField
      FieldName = 'PLANOSAUDE_ID'
    end
    object sdsPessoaCOBCEP: TStringField
      FieldName = 'COBCEP'
      Size = 10
    end
    object sdsPessoaVLRPGTO: TFloatField
      FieldName = 'VLRPGTO'
    end
    object sdsPessoaNUMCARTEIRA: TStringField
      FieldName = 'NUMCARTEIRA'
      Size = 3
    end
    object sdsPessoaFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaCODCENTROCUSTO: TIntegerField
      FieldName = 'CODCENTROCUSTO'
    end
    object sdsPessoaCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object sdsPessoaTIPOSALARIO: TStringField
      FieldName = 'TIPOSALARIO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaVALORSALARIO: TFloatField
      FieldName = 'VALORSALARIO'
    end
    object sdsPessoaRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object sdsPessoaDT_LIBERADO: TStringField
      FieldName = 'DT_LIBERADO'
      Size = 25
    end
    object sdsPessoaVERSAO_EXE: TStringField
      FieldName = 'VERSAO_EXE'
      Size = 15
    end
    object sdsPessoaCODVENDEDOR_COB: TIntegerField
      FieldName = 'CODVENDEDOR_COB'
    end
    object sdsPessoaEMPRESA_PRINCIPAL: TStringField
      FieldName = 'EMPRESA_PRINCIPAL'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaID_EMPRESA_PRINCIPAL: TIntegerField
      FieldName = 'ID_EMPRESA_PRINCIPAL'
    end
  end
  object dspPessoa: TDataSetProvider
    DataSet = sdsPessoa
    UpdateMode = upWhereKeyOnly
    Left = 160
    Top = 48
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoa'
    Left = 205
    Top = 48
    object cdsPessoaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsPessoaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 40
    end
    object cdsPessoaPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 18
    end
    object cdsPessoaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object cdsPessoaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 25
    end
    object cdsPessoaCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsPessoaESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object cdsPessoaFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object cdsPessoaFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsPessoaINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 15
    end
    object cdsPessoaIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
      Size = 10
    end
    object cdsPessoaESTCIVIL: TStringField
      FieldName = 'ESTCIVIL'
      Size = 12
    end
    object cdsPessoaPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 25
    end
    object cdsPessoaNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
    end
    object cdsPessoaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object cdsPessoaOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPessoaFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaREFPESSOAL1: TStringField
      FieldName = 'REFPESSOAL1'
      Size = 40
    end
    object cdsPessoaREFPESSOAL2: TStringField
      FieldName = 'REFPESSOAL2'
      Size = 40
    end
    object cdsPessoaREFPESSOALEND1: TStringField
      FieldName = 'REFPESSOALEND1'
      Size = 40
    end
    object cdsPessoaREFPESSOALEND2: TStringField
      FieldName = 'REFPESSOALEND2'
      Size = 40
    end
    object cdsPessoaREFPESSOALFONE1: TStringField
      FieldName = 'REFPESSOALFONE1'
      Size = 15
    end
    object cdsPessoaREFPESSOALFONE2: TStringField
      FieldName = 'REFPESSOALFONE2'
      Size = 15
    end
    object cdsPessoaREFCOMERCIAL1: TStringField
      FieldName = 'REFCOMERCIAL1'
      Size = 40
    end
    object cdsPessoaREFCOMERCIAL2: TStringField
      FieldName = 'REFCOMERCIAL2'
      Size = 40
    end
    object cdsPessoaREFCOMERCIALEND1: TStringField
      FieldName = 'REFCOMERCIALEND1'
      Size = 40
    end
    object cdsPessoaREFCOMERCIALEND2: TStringField
      FieldName = 'REFCOMERCIALEND2'
      Size = 40
    end
    object cdsPessoaREFCOMERCIALFONE1: TStringField
      FieldName = 'REFCOMERCIALFONE1'
      Size = 15
    end
    object cdsPessoaREFCOMERCIALFONE2: TStringField
      FieldName = 'REFCOMERCIALFONE2'
      Size = 15
    end
    object cdsPessoaCIDADE: TIntegerField
      FieldName = 'CIDADE'
    end
    object cdsPessoaTRANSPORTADORA: TStringField
      FieldName = 'TRANSPORTADORA'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaPERCCOMISSAO: TFloatField
      FieldName = 'PERCCOMISSAO'
    end
    object cdsPessoaTIPOCOMISSAO: TStringField
      FieldName = 'TIPOCOMISSAO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaDTCONTRATOINI: TDateField
      FieldName = 'DTCONTRATOINI'
    end
    object cdsPessoaDTCONTRATOFIM: TDateField
      FieldName = 'DTCONTRATOFIM'
    end
    object cdsPessoaCONTRATODEVOLVIDO: TDateField
      FieldName = 'CONTRATODEVOLVIDO'
    end
    object cdsPessoaCOBENDERECO: TStringField
      FieldName = 'COBENDERECO'
      Size = 40
    end
    object cdsPessoaCOBNUMERO: TIntegerField
      FieldName = 'COBNUMERO'
    end
    object cdsPessoaCOBCOMPLEMENTO: TStringField
      FieldName = 'COBCOMPLEMENTO'
      Size = 10
    end
    object cdsPessoaCOBBAIRRO: TStringField
      FieldName = 'COBBAIRRO'
      Size = 30
    end
    object cdsPessoaCOBCIDADE: TIntegerField
      FieldName = 'COBCIDADE'
    end
    object cdsPessoaCOBUF: TStringField
      FieldName = 'COBUF'
      Size = 2
    end
    object cdsPessoaCOBCONTATO: TStringField
      FieldName = 'COBCONTATO'
      Size = 30
    end
    object cdsPessoaENDNUMERO: TIntegerField
      FieldName = 'ENDNUMERO'
    end
    object cdsPessoaENDCOMPLEMENTO: TStringField
      FieldName = 'ENDCOMPLEMENTO'
      Size = 15
    end
    object cdsPessoaIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
    end
    object cdsPessoaCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
    object cdsPessoaAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 5
    end
    object cdsPessoaNUMCONTACORRENTE: TStringField
      FieldName = 'NUMCONTACORRENTE'
      Size = 15
    end
    object cdsPessoaLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 10
    end
    object cdsPessoaSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object cdsPessoaDIAPAGAMENTO: TIntegerField
      FieldName = 'DIAPAGAMENTO'
    end
    object cdsPessoaCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object cdsPessoaFORMAPGTO: TIntegerField
      FieldName = 'FORMAPGTO'
    end
    object cdsPessoaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object cdsPessoaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 50
    end
    object cdsPessoaSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCONJUGE: TStringField
      FieldName = 'CONJUGE'
      Size = 40
    end
    object cdsPessoaDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
    end
    object cdsPessoaCEL: TStringField
      FieldName = 'CEL'
      Size = 15
    end
    object cdsPessoaPLANOSAUDE_ID: TIntegerField
      FieldName = 'PLANOSAUDE_ID'
    end
    object cdsPessoaCOBCEP: TStringField
      FieldName = 'COBCEP'
      Size = 10
    end
    object cdsPessoaVLRPGTO: TFloatField
      FieldName = 'VLRPGTO'
    end
    object cdsPessoaNUMCARTEIRA: TStringField
      FieldName = 'NUMCARTEIRA'
      Size = 3
    end
    object cdsPessoaFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCODCENTROCUSTO: TIntegerField
      FieldName = 'CODCENTROCUSTO'
    end
    object cdsPessoaCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object cdsPessoaTIPOSALARIO: TStringField
      FieldName = 'TIPOSALARIO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaVALORSALARIO: TFloatField
      FieldName = 'VALORSALARIO'
    end
    object cdsPessoaRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object cdsPessoaDT_LIBERADO: TStringField
      FieldName = 'DT_LIBERADO'
      Size = 25
    end
    object cdsPessoaVERSAO_EXE: TStringField
      FieldName = 'VERSAO_EXE'
      Size = 15
    end
    object cdsPessoaCODVENDEDOR_COB: TIntegerField
      FieldName = 'CODVENDEDOR_COB'
    end
    object cdsPessoaEMPRESA_PRINCIPAL: TStringField
      FieldName = 'EMPRESA_PRINCIPAL'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaID_EMPRESA_PRINCIPAL: TIntegerField
      FieldName = 'ID_EMPRESA_PRINCIPAL'
    end
  end
  object dsPessoa: TDataSource
    DataSet = cdsPessoa
    Left = 240
    Top = 48
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT DT_LIBERADO'
      'FROM PESSOA'
      'WHERE ')
    SQLConnection = scConexao
    Left = 120
    Top = 104
  end
  object sdsPessoa_Usuario: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT * '#13#10'FROM PESSOA_USUARIO'#13#10'WHERE ID_PESSOA = :ID_PESSOA'#13#10'  ' +
      ' AND ID_USUARIO = :ID_USUARIO'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PESSOA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_USUARIO'
        ParamType = ptInput
      end>
    SQLConnection = scConexao
    Left = 287
    Top = 198
    object sdsPessoa_UsuarioID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoa_UsuarioID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsPessoa_Usuario: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_PESSOA;ID_USUARIO'
    Params = <>
    ProviderName = 'dspPessoa_Usuario'
    Left = 352
    Top = 198
    object cdsPessoa_UsuarioID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoa_UsuarioID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dspPessoa_Usuario: TDataSetProvider
    DataSet = sdsPessoa_Usuario
    UpdateMode = upWhereKeyOnly
    Left = 319
    Top = 198
  end
  object sdsPessoa_Sistema: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT * '#13#10'FROM PESSOA_SISTEMA'#13#10'WHERE ID_PESSOA = :ID_PESSOA'#13#10'  ' +
      ' AND ID_SISTEMA = :ID_SISTEMA'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PESSOA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_SISTEMA'
        ParamType = ptInput
      end>
    SQLConnection = scConexao
    Left = 288
    Top = 254
    object sdsPessoa_SistemaID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoa_SistemaID_SISTEMA: TIntegerField
      FieldName = 'ID_SISTEMA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoa_SistemaDTINICIO: TDateField
      FieldName = 'DTINICIO'
    end
    object sdsPessoa_SistemaDTFINAL: TDateField
      FieldName = 'DTFINAL'
    end
  end
  object cdsPessoa_Sistema: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_PESSOA;ID_SISTEMA'
    Params = <>
    ProviderName = 'dspPessoa_Sistema'
    Left = 356
    Top = 253
    object cdsPessoa_SistemaID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoa_SistemaID_SISTEMA: TIntegerField
      FieldName = 'ID_SISTEMA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoa_SistemaDTINICIO: TDateField
      FieldName = 'DTINICIO'
    end
    object cdsPessoa_SistemaDTFINAL: TDateField
      FieldName = 'DTFINAL'
    end
  end
  object dspPessoa_Sistema: TDataSetProvider
    DataSet = sdsPessoa_Sistema
    UpdateMode = upWhereKeyOnly
    Left = 320
    Top = 255
  end
  object sdsUsuario: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * '#13#10'FROM USUARIO'#13#10'WHERE ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = scConexao
    Left = 425
    Top = 49
    object sdsUsuarioID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsUsuarioNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsUsuarioLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 10
    end
    object sdsUsuarioSENHA: TStringField
      FieldName = 'SENHA'
      Size = 8
    end
    object sdsUsuarioNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
  end
  object cdsUsuario: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspUsuario'
    Left = 501
    Top = 48
    object cdsUsuarioID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsUsuarioNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsUsuarioLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 10
    end
    object cdsUsuarioSENHA: TStringField
      FieldName = 'SENHA'
      Size = 8
    end
    object cdsUsuarioNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
  end
  object dspUsuario: TDataSetProvider
    DataSet = sdsUsuario
    UpdateMode = upWhereKeyOnly
    Left = 462
    Top = 48
  end
  object sdsSistema: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * '#13#10'FROM SISTEMA'#13#10'WHERE ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = scConexao
    Left = 424
    Top = 107
    object sdsSistemaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsSistemaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object sdsSistemaOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
  end
  object cdsSistema: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspSistema'
    Left = 499
    Top = 107
    object cdsSistemaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsSistemaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsSistemaOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
  end
  object dspSistema: TDataSetProvider
    DataSet = sdsSistema
    UpdateMode = upWhereKeyOnly
    Left = 461
    Top = 107
  end
end
