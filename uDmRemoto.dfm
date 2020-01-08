object dmRemoto: TdmRemoto
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 290
  Top = 123
  Height = 316
  Width = 509
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
    Left = 56
    Top = 48
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
  end
  object dspPessoa: TDataSetProvider
    DataSet = sdsPessoa
    Left = 160
    Top = 48
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoa'
    Left = 200
    Top = 48
    object cdsPessoaID: TIntegerField
      FieldName = 'ID'
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
end
