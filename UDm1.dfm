object Dm1: TDm1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 282
  Top = 35
  Height = 616
  Width = 860
  object Conexao: TSQLConnection
    ConnectionName = 'Servisoft'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=localhost:D:\Fontes\$Servisoft\Servisoft\Servisoft.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
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
    BeforeConnect = ConexaoBeforeConnect
    Left = 16
    Top = 9
  end
  object Pessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.*, C.NOME CIDADE_NOME, CC.NOME NOME_CENTROCUSTO, P.ID P' +
      'ESSOA_ID,'#13#10'VEN.NOME NOME_VENDEDOR, VC.nome NOME_VENDEDOR_COB,'#13#10'P' +
      'RI.NOME NOME_PRINCIPAL,'#13#10'CASE'#13#10'  when P.empresa_principal = '#39'1'#39' ' +
      'THEN '#39'SIM'#39#13#10'  else '#39#39#13#10'  end DESC_EMP_PRINCIPAL'#13#10'FROM PESSOA P'#13#10 +
      'LEFT JOIN CIDADE C ON (P.CIDADE = C.ID)'#13#10'LEFT JOIN CENTROCUSTO C' +
      'C ON (P.CODCENTROCUSTO = CC.ID)'#13#10'LEFT JOIN PESSOA VEN ON (P.codv' +
      'endedor = VEN.id)'#13#10'LEFT JOIN PESSOA VC ON (P.codvendedor_cob = V' +
      'C.id)'#13#10'LEFT JOIN PESSOA PRI ON (P.id_empresa_principal = PRI.id)' +
      #13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 48
    Top = 8
    object PessoaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object PessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object PessoaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 40
    end
    object PessoaPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object PessoaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 18
    end
    object PessoaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object PessoaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 25
    end
    object PessoaCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object PessoaESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object PessoaFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object PessoaFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object PessoaINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 15
    end
    object PessoaIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
      Size = 10
    end
    object PessoaESTCIVIL: TStringField
      FieldName = 'ESTCIVIL'
      Size = 12
    end
    object PessoaPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 25
    end
    object PessoaNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
    end
    object PessoaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object PessoaOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object PessoaFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      FixedChar = True
      Size = 1
    end
    object PessoaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      FixedChar = True
      Size = 1
    end
    object PessoaVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object PessoaREFPESSOAL1: TStringField
      FieldName = 'REFPESSOAL1'
      Size = 40
    end
    object PessoaREFPESSOAL2: TStringField
      FieldName = 'REFPESSOAL2'
      Size = 40
    end
    object PessoaREFPESSOALEND1: TStringField
      FieldName = 'REFPESSOALEND1'
      Size = 40
    end
    object PessoaREFPESSOALEND2: TStringField
      FieldName = 'REFPESSOALEND2'
      Size = 40
    end
    object PessoaREFPESSOALFONE1: TStringField
      FieldName = 'REFPESSOALFONE1'
      Size = 15
    end
    object PessoaREFPESSOALFONE2: TStringField
      FieldName = 'REFPESSOALFONE2'
      Size = 15
    end
    object PessoaREFCOMERCIAL1: TStringField
      FieldName = 'REFCOMERCIAL1'
      Size = 40
    end
    object PessoaREFCOMERCIAL2: TStringField
      FieldName = 'REFCOMERCIAL2'
      Size = 40
    end
    object PessoaREFCOMERCIALEND1: TStringField
      FieldName = 'REFCOMERCIALEND1'
      Size = 40
    end
    object PessoaREFCOMERCIALEND2: TStringField
      FieldName = 'REFCOMERCIALEND2'
      Size = 40
    end
    object PessoaREFCOMERCIALFONE1: TStringField
      FieldName = 'REFCOMERCIALFONE1'
      Size = 15
    end
    object PessoaREFCOMERCIALFONE2: TStringField
      FieldName = 'REFCOMERCIALFONE2'
      Size = 15
    end
    object PessoaCIDADE: TIntegerField
      FieldName = 'CIDADE'
    end
    object PessoaTRANSPORTADORA: TStringField
      FieldName = 'TRANSPORTADORA'
      FixedChar = True
      Size = 1
    end
    object PessoaPERCCOMISSAO: TFloatField
      FieldName = 'PERCCOMISSAO'
    end
    object PessoaTIPOCOMISSAO: TStringField
      FieldName = 'TIPOCOMISSAO'
      FixedChar = True
      Size = 1
    end
    object PessoaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object PessoaDTCONTRATOINI: TDateField
      FieldName = 'DTCONTRATOINI'
    end
    object PessoaDTCONTRATOFIM: TDateField
      FieldName = 'DTCONTRATOFIM'
    end
    object PessoaCONTRATODEVOLVIDO: TDateField
      FieldName = 'CONTRATODEVOLVIDO'
    end
    object PessoaCOBENDERECO: TStringField
      FieldName = 'COBENDERECO'
      Size = 40
    end
    object PessoaCOBNUMERO: TIntegerField
      FieldName = 'COBNUMERO'
    end
    object PessoaCOBCOMPLEMENTO: TStringField
      FieldName = 'COBCOMPLEMENTO'
      Size = 10
    end
    object PessoaCOBBAIRRO: TStringField
      FieldName = 'COBBAIRRO'
      Size = 30
    end
    object PessoaCOBCIDADE: TIntegerField
      FieldName = 'COBCIDADE'
    end
    object PessoaCOBUF: TStringField
      FieldName = 'COBUF'
      Size = 2
    end
    object PessoaCOBCONTATO: TStringField
      FieldName = 'COBCONTATO'
      Size = 30
    end
    object PessoaENDNUMERO: TIntegerField
      FieldName = 'ENDNUMERO'
    end
    object PessoaENDCOMPLEMENTO: TStringField
      FieldName = 'ENDCOMPLEMENTO'
      Size = 15
    end
    object PessoaIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
    end
    object PessoaCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
    object PessoaAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 5
    end
    object PessoaNUMCONTACORRENTE: TStringField
      FieldName = 'NUMCONTACORRENTE'
      Size = 15
    end
    object PessoaLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 10
    end
    object PessoaSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object PessoaDIAPAGAMENTO: TIntegerField
      FieldName = 'DIAPAGAMENTO'
    end
    object PessoaCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object PessoaFORMAPGTO: TIntegerField
      FieldName = 'FORMAPGTO'
    end
    object PessoaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object PessoaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 50
    end
    object PessoaSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object PessoaCONJUGE: TStringField
      FieldName = 'CONJUGE'
      Size = 40
    end
    object PessoaDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
    end
    object PessoaCEL: TStringField
      FieldName = 'CEL'
      Size = 15
    end
    object PessoaPLANOSAUDE_ID: TIntegerField
      FieldName = 'PLANOSAUDE_ID'
    end
    object PessoaCOBCEP: TStringField
      FieldName = 'COBCEP'
      Size = 10
    end
    object PessoaVLRPGTO: TFloatField
      FieldName = 'VLRPGTO'
    end
    object PessoaNUMCARTEIRA: TStringField
      FieldName = 'NUMCARTEIRA'
      Size = 3
    end
    object PessoaFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      FixedChar = True
      Size = 1
    end
    object PessoaCODCENTROCUSTO: TIntegerField
      FieldName = 'CODCENTROCUSTO'
    end
    object PessoaCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object PessoaTIPOSALARIO: TStringField
      FieldName = 'TIPOSALARIO'
      FixedChar = True
      Size = 1
    end
    object PessoaVALORSALARIO: TFloatField
      FieldName = 'VALORSALARIO'
      DisplayFormat = '0.00'
    end
    object PessoaRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object PessoaDT_LIBERADO: TStringField
      FieldName = 'DT_LIBERADO'
      Size = 25
    end
    object PessoaCIDADE_NOME: TStringField
      FieldName = 'CIDADE_NOME'
      ProviderFlags = []
      Size = 30
    end
    object PessoaNOME_CENTROCUSTO: TStringField
      FieldName = 'NOME_CENTROCUSTO'
      ProviderFlags = []
      Size = 30
    end
    object PessoaPESSOA_ID: TIntegerField
      FieldName = 'PESSOA_ID'
      ProviderFlags = []
      Required = True
    end
    object PessoaVERSAO_EXE: TStringField
      FieldName = 'VERSAO_EXE'
      Size = 15
    end
    object PessoaCODVENDEDOR_COB: TIntegerField
      FieldName = 'CODVENDEDOR_COB'
    end
    object PessoaNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      ProviderFlags = []
      Size = 40
    end
    object PessoaNOME_VENDEDOR_COB: TStringField
      FieldName = 'NOME_VENDEDOR_COB'
      ProviderFlags = []
      Size = 40
    end
    object PessoaEMPRESA_PRINCIPAL: TStringField
      FieldName = 'EMPRESA_PRINCIPAL'
      Size = 1
    end
    object PessoaID_EMPRESA_PRINCIPAL: TIntegerField
      FieldName = 'ID_EMPRESA_PRINCIPAL'
    end
    object PessoaNOME_PRINCIPAL: TStringField
      FieldName = 'NOME_PRINCIPAL'
      ProviderFlags = []
      Size = 40
    end
    object PessoaDESC_EMP_PRINCIPAL: TStringField
      FieldName = 'DESC_EMP_PRINCIPAL'
      ProviderFlags = []
      Required = True
      FixedChar = True
      Size = 3
    end
  end
  object PessoaP: TDataSetProvider
    DataSet = Pessoa
    Options = [poCascadeDeletes, poCascadeUpdates]
    OnUpdateError = PessoaPUpdateError
    Left = 60
    Top = 8
  end
  object tPessoa: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'FANTASIA'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'PESSOA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DOCUMENTO'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'ESTADO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FONE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'FAX'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'INSCESTADUAL'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'IDENTIDADE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ESTCIVIL'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'PROFISSAO'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'NACIONALIDADE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DTCADASTRO'
        DataType = ftDate
      end
      item
        Name = 'OBSERVACAO'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'FORNECEDOR'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CLIENTE'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'VENDEDOR'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'REFPESSOAL1'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'REFPESSOAL2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'REFPESSOALEND1'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'REFPESSOALEND2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'REFPESSOALFONE1'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'REFPESSOALFONE2'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'REFCOMERCIAL1'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'REFCOMERCIAL2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'REFCOMERCIALEND1'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'REFCOMERCIALEND2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'REFCOMERCIALFONE1'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'REFCOMERCIALFONE2'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CIDADE'
        DataType = ftInteger
      end
      item
        Name = 'TRANSPORTADORA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PERCCOMISSAO'
        DataType = ftFloat
      end
      item
        Name = 'TIPOCOMISSAO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'STATUS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DTCONTRATOINI'
        DataType = ftDate
      end
      item
        Name = 'DTCONTRATOFIM'
        DataType = ftDate
      end
      item
        Name = 'CONTRATODEVOLVIDO'
        DataType = ftDate
      end
      item
        Name = 'COBENDERECO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'COBNUMERO'
        DataType = ftInteger
      end
      item
        Name = 'COBCOMPLEMENTO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'COBBAIRRO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'COBCIDADE'
        DataType = ftInteger
      end
      item
        Name = 'COBUF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'COBCONTATO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ENDNUMERO'
        DataType = ftInteger
      end
      item
        Name = 'ENDCOMPLEMENTO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'IDUSUARIO'
        DataType = ftInteger
      end
      item
        Name = 'CODBANCO'
        DataType = ftInteger
      end
      item
        Name = 'AGENCIA'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'NUMCONTACORRENTE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'LOGIN'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'SENHA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DIAPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'CODVENDEDOR'
        DataType = ftInteger
      end
      item
        Name = 'FORMAPGTO'
        DataType = ftInteger
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'HOMEPAGE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SELECIONADO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CONJUGE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DTNASCIMENTO'
        DataType = ftDate
      end
      item
        Name = 'CEL'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'PLANOSAUDE_ID'
        DataType = ftInteger
      end
      item
        Name = 'COBCEP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'VLRPGTO'
        DataType = ftFloat
      end
      item
        Name = 'NUMCARTEIRA'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'FUNCIONARIO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CODCENTROCUSTO'
        DataType = ftInteger
      end
      item
        Name = 'CODTIPOCOBRANCA'
        DataType = ftInteger
      end
      item
        Name = 'TIPOSALARIO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'VALORSALARIO'
        DataType = ftFloat
      end
      item
        Name = 'RG'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DT_LIBERADO'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'CIDADE_NOME'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NOME_CENTROCUSTO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'PESSOA_ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'VERSAO_EXE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CODVENDEDOR_COB'
        DataType = ftInteger
      end
      item
        Name = 'NOME_VENDEDOR'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NOME_VENDEDOR_COB'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'EMPRESA_PRINCIPAL'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_EMPRESA_PRINCIPAL'
        DataType = ftInteger
      end
      item
        Name = 'NOME_PRINCIPAL'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DESC_EMP_PRINCIPAL'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'sdsPessoaModulos'
        DataType = ftDataSet
      end
      item
        Name = 'sdsPessoaChave'
        DataType = ftDataSet
      end
      item
        Name = 'sdsPessoaHist'
        DataType = ftDataSet
      end>
    IndexDefs = <
      item
        Name = 'tPessoaIndex2'
        Fields = 'NOME'
      end>
    Params = <>
    ProviderName = 'PessoaP'
    StoreDefs = True
    OnCalcFields = tPessoaCalcFields
    OnNewRecord = tPessoaNewRecord
    Left = 72
    Top = 8
    object tPessoaID: TIntegerField
      DisplayWidth = 12
      FieldName = 'ID'
      Required = True
    end
    object tPessoaNOME: TStringField
      DisplayWidth = 48
      FieldName = 'NOME'
      Size = 40
    end
    object tPessoaFANTASIA: TStringField
      DisplayWidth = 48
      FieldName = 'FANTASIA'
      Size = 40
    end
    object tPessoaPESSOA: TStringField
      DisplayWidth = 9
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object tPessoaDOCUMENTO: TStringField
      DisplayWidth = 22
      FieldName = 'DOCUMENTO'
      Size = 18
    end
    object tPessoaENDERECO: TStringField
      DisplayWidth = 48
      FieldName = 'ENDERECO'
      Size = 40
    end
    object tPessoaBAIRRO: TStringField
      DisplayWidth = 30
      FieldName = 'BAIRRO'
      Size = 25
    end
    object tPessoaCEP: TStringField
      DisplayWidth = 11
      FieldName = 'CEP'
      EditMask = '99999-999'
      Size = 9
    end
    object tPessoaESTADO: TStringField
      DisplayWidth = 9
      FieldName = 'ESTADO'
      Size = 2
    end
    object tPessoaFONE: TStringField
      DisplayWidth = 18
      FieldName = 'FONE'
      Size = 15
    end
    object tPessoaFAX: TStringField
      DisplayWidth = 18
      FieldName = 'FAX'
      Size = 15
    end
    object tPessoaINSCESTADUAL: TStringField
      DisplayWidth = 18
      FieldName = 'INSCESTADUAL'
      Size = 15
    end
    object tPessoaIDENTIDADE: TStringField
      DisplayWidth = 13
      FieldName = 'IDENTIDADE'
      Size = 10
    end
    object tPessoaESTCIVIL: TStringField
      DisplayWidth = 15
      FieldName = 'ESTCIVIL'
      Size = 12
    end
    object tPessoaPROFISSAO: TStringField
      DisplayWidth = 30
      FieldName = 'PROFISSAO'
      Size = 25
    end
    object tPessoaNACIONALIDADE: TStringField
      DisplayWidth = 24
      FieldName = 'NACIONALIDADE'
    end
    object tPessoaDTCADASTRO: TDateField
      DisplayWidth = 15
      FieldName = 'DTCADASTRO'
    end
    object tPessoaOBSERVACAO: TBlobField
      DisplayWidth = 15
      FieldName = 'OBSERVACAO'
      Size = 1
    end
    object tPessoaFORNECEDOR: TStringField
      DisplayWidth = 15
      FieldName = 'FORNECEDOR'
      FixedChar = True
      Size = 1
    end
    object tPessoaCLIENTE: TStringField
      DisplayWidth = 9
      FieldName = 'CLIENTE'
      FixedChar = True
      Size = 1
    end
    object tPessoaVENDEDOR: TStringField
      DisplayWidth = 12
      FieldName = 'VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object tPessoaREFPESSOAL1: TStringField
      DisplayWidth = 48
      FieldName = 'REFPESSOAL1'
      Size = 40
    end
    object tPessoaREFPESSOAL2: TStringField
      DisplayWidth = 48
      FieldName = 'REFPESSOAL2'
      Size = 40
    end
    object tPessoaREFPESSOALEND1: TStringField
      DisplayWidth = 48
      FieldName = 'REFPESSOALEND1'
      Size = 40
    end
    object tPessoaREFPESSOALEND2: TStringField
      DisplayWidth = 48
      FieldName = 'REFPESSOALEND2'
      Size = 40
    end
    object tPessoaREFPESSOALFONE1: TStringField
      DisplayWidth = 21
      FieldName = 'REFPESSOALFONE1'
      Size = 15
    end
    object tPessoaREFPESSOALFONE2: TStringField
      DisplayWidth = 21
      FieldName = 'REFPESSOALFONE2'
      Size = 15
    end
    object tPessoaREFCOMERCIAL1: TStringField
      DisplayWidth = 48
      FieldName = 'REFCOMERCIAL1'
      Size = 40
    end
    object tPessoaREFCOMERCIAL2: TStringField
      DisplayWidth = 48
      FieldName = 'REFCOMERCIAL2'
      Size = 40
    end
    object tPessoaREFCOMERCIALEND1: TStringField
      DisplayWidth = 48
      FieldName = 'REFCOMERCIALEND1'
      Size = 40
    end
    object tPessoaREFCOMERCIALEND2: TStringField
      DisplayWidth = 48
      FieldName = 'REFCOMERCIALEND2'
      Size = 40
    end
    object tPessoaREFCOMERCIALFONE1: TStringField
      DisplayWidth = 24
      FieldName = 'REFCOMERCIALFONE1'
      Size = 15
    end
    object tPessoaREFCOMERCIALFONE2: TStringField
      DisplayWidth = 24
      FieldName = 'REFCOMERCIALFONE2'
      Size = 15
    end
    object tPessoaCIDADE: TIntegerField
      DisplayWidth = 12
      FieldName = 'CIDADE'
    end
    object tPessoaTRANSPORTADORA: TStringField
      DisplayWidth = 21
      FieldName = 'TRANSPORTADORA'
      FixedChar = True
      Size = 1
    end
    object tPessoaPERCCOMISSAO: TFloatField
      DisplayWidth = 17
      FieldName = 'PERCCOMISSAO'
      DisplayFormat = '0.00'
    end
    object tPessoaTIPOCOMISSAO: TStringField
      DisplayWidth = 16
      FieldName = 'TIPOCOMISSAO'
      FixedChar = True
      Size = 1
    end
    object tPessoaSTATUS: TStringField
      DisplayWidth = 9
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object tPessoaDTCONTRATOINI: TDateField
      DisplayWidth = 18
      FieldName = 'DTCONTRATOINI'
    end
    object tPessoaDTCONTRATOFIM: TDateField
      DisplayWidth = 19
      FieldName = 'DTCONTRATOFIM'
    end
    object tPessoaCONTRATODEVOLVIDO: TDateField
      DisplayWidth = 25
      FieldName = 'CONTRATODEVOLVIDO'
    end
    object tPessoaCOBENDERECO: TStringField
      DisplayWidth = 48
      FieldName = 'COBENDERECO'
      Size = 40
    end
    object tPessoaCOBNUMERO: TIntegerField
      DisplayWidth = 14
      FieldName = 'COBNUMERO'
    end
    object tPessoaCOBCOMPLEMENTO: TStringField
      DisplayWidth = 21
      FieldName = 'COBCOMPLEMENTO'
      Size = 10
    end
    object tPessoaCOBBAIRRO: TStringField
      DisplayWidth = 36
      FieldName = 'COBBAIRRO'
      Size = 30
    end
    object tPessoaCOBCIDADE: TIntegerField
      DisplayWidth = 13
      FieldName = 'COBCIDADE'
    end
    object tPessoaCOBUF: TStringField
      DisplayWidth = 7
      FieldName = 'COBUF'
      Size = 2
    end
    object tPessoaCOBCONTATO: TStringField
      DisplayWidth = 36
      FieldName = 'COBCONTATO'
      Size = 30
    end
    object tPessoaENDNUMERO: TIntegerField
      DisplayWidth = 14
      FieldName = 'ENDNUMERO'
    end
    object tPessoaENDCOMPLEMENTO: TStringField
      DisplayWidth = 21
      FieldName = 'ENDCOMPLEMENTO'
      Size = 15
    end
    object tPessoaIDUSUARIO: TIntegerField
      DisplayWidth = 12
      FieldName = 'IDUSUARIO'
    end
    object tPessoaCODBANCO: TIntegerField
      DisplayWidth = 12
      FieldName = 'CODBANCO'
    end
    object tPessoaAGENCIA: TStringField
      DisplayWidth = 10
      FieldName = 'AGENCIA'
      Size = 5
    end
    object tPessoaNUMCONTACORRENTE: TStringField
      DisplayWidth = 25
      FieldName = 'NUMCONTACORRENTE'
      Size = 15
    end
    object tPessoaDIAPAGAMENTO: TIntegerField
      DisplayWidth = 17
      FieldName = 'DIAPAGAMENTO'
    end
    object tPessoaLOGIN: TStringField
      DisplayWidth = 12
      FieldName = 'LOGIN'
      Size = 10
    end
    object tPessoaSENHA: TStringField
      DisplayWidth = 12
      FieldName = 'SENHA'
      Size = 10
    end
    object tPessoaCODVENDEDOR: TIntegerField
      DisplayWidth = 17
      FieldName = 'CODVENDEDOR'
    end
    object tPessoaFORMAPGTO: TIntegerField
      DisplayWidth = 14
      FieldName = 'FORMAPGTO'
    end
    object tPessoaEMAIL: TStringField
      DisplayWidth = 60
      FieldName = 'EMAIL'
      Size = 50
    end
    object tPessoaHOMEPAGE: TStringField
      DisplayWidth = 60
      FieldName = 'HOMEPAGE'
      Size = 50
    end
    object tPessoaSELECIONADO: TStringField
      DisplayWidth = 15
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object tPessoaCONJUGE: TStringField
      DisplayWidth = 48
      FieldName = 'CONJUGE'
      Size = 40
    end
    object tPessoaDTNASCIMENTO: TDateField
      DisplayWidth = 17
      FieldName = 'DTNASCIMENTO'
    end
    object tPessoaCEL: TStringField
      DisplayWidth = 18
      FieldName = 'CEL'
      Size = 15
    end
    object tPessoaPLANOSAUDE_ID: TIntegerField
      DisplayWidth = 18
      FieldName = 'PLANOSAUDE_ID'
    end
    object tPessoaCOBCEP: TStringField
      DisplayWidth = 12
      FieldName = 'COBCEP'
      Size = 10
    end
    object tPessoaVLRPGTO: TFloatField
      DisplayWidth = 12
      FieldName = 'VLRPGTO'
      DisplayFormat = '0.00'
    end
    object tPessoaNUMCARTEIRA: TStringField
      FieldName = 'NUMCARTEIRA'
      Size = 3
    end
    object tPessoaFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      FixedChar = True
      Size = 1
    end
    object tPessoaCODCENTROCUSTO: TIntegerField
      FieldName = 'CODCENTROCUSTO'
    end
    object tPessoaCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object tPessoaTIPOSALARIO: TStringField
      FieldName = 'TIPOSALARIO'
      FixedChar = True
      Size = 1
    end
    object tPessoaVALORSALARIO: TFloatField
      FieldName = 'VALORSALARIO'
      DisplayFormat = '0.00'
    end
    object tPessoaRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object tPessoaDT_LIBERADO: TStringField
      FieldName = 'DT_LIBERADO'
      Size = 25
    end
    object tPessoaCIDADE_NOME: TStringField
      FieldName = 'CIDADE_NOME'
      ProviderFlags = []
      Size = 30
    end
    object tPessoaNOME_CENTROCUSTO: TStringField
      FieldName = 'NOME_CENTROCUSTO'
      ProviderFlags = []
      Size = 30
    end
    object tPessoasdsPessoaHist: TDataSetField
      FieldName = 'sdsPessoaHist'
    end
    object tPessoasdsPessoaChave: TDataSetField
      FieldName = 'sdsPessoaChave'
    end
    object tPessoaPESSOA_ID: TIntegerField
      FieldName = 'PESSOA_ID'
      ProviderFlags = []
      Required = True
    end
    object tPessoaVERSAO_EXE: TStringField
      FieldName = 'VERSAO_EXE'
      Size = 15
    end
    object tPessoaclDtLiberacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'clDtLiberacao'
      Size = 12
      Calculated = True
    end
    object tPessoasdsPessoaModulos: TDataSetField
      FieldName = 'sdsPessoaModulos'
    end
    object tPessoaCODVENDEDOR_COB: TIntegerField
      FieldName = 'CODVENDEDOR_COB'
    end
    object tPessoaNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      ProviderFlags = []
      Size = 40
    end
    object tPessoaNOME_VENDEDOR_COB: TStringField
      FieldName = 'NOME_VENDEDOR_COB'
      ProviderFlags = []
      Size = 40
    end
    object tPessoaEMPRESA_PRINCIPAL: TStringField
      FieldName = 'EMPRESA_PRINCIPAL'
      Size = 1
    end
    object tPessoaID_EMPRESA_PRINCIPAL: TIntegerField
      FieldName = 'ID_EMPRESA_PRINCIPAL'
    end
    object tPessoaNOME_PRINCIPAL: TStringField
      FieldName = 'NOME_PRINCIPAL'
      ProviderFlags = []
      Size = 40
    end
    object tPessoaDESC_EMP_PRINCIPAL: TStringField
      FieldName = 'DESC_EMP_PRINCIPAL'
      ProviderFlags = []
      Required = True
      FixedChar = True
      Size = 3
    end
  end
  object dsPessoa: TDataSource
    DataSet = tPessoa
    Left = 91
    Top = 8
  end
  object qInc: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 8
    Top = 444
  end
  object Pais: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select *'#13#10'from PAIS'#13#10'where ID = :Codigo'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 214
    Top = 8
  end
  object PaisP: TDataSetProvider
    DataSet = Pais
    OnUpdateError = PessoaPUpdateError
    Left = 230
    Top = 8
  end
  object tPais: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PaisP'
    Left = 246
    Top = 8
    object tPaisID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object tPaisNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsPais: TDataSource
    DataSet = tPais
    Left = 261
    Top = 8
  end
  object Cidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM CIDADE'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 295
    Top = 8
  end
  object CidadeP: TDataSetProvider
    DataSet = Cidade
    OnUpdateError = PessoaPUpdateError
    Left = 311
    Top = 8
  end
  object tCidade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'CidadeP'
    OnNewRecord = tCidadeNewRecord
    Left = 327
    Top = 8
    object tCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object tCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object tCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object tCidadeCODPAIS: TIntegerField
      FieldName = 'CODPAIS'
    end
    object tCidadePERISSQN: TFloatField
      FieldName = 'PERISSQN'
      DisplayFormat = '0.00'
    end
  end
  object dsCidade: TDataSource
    DataSet = tCidade
    Left = 342
    Top = 8
  end
  object Grupo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select *'#13#10'from GRUPO'#13#10'where ID = :Codigo'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 376
    Top = 9
  end
  object GrupoP: TDataSetProvider
    DataSet = Grupo
    OnUpdateError = PessoaPUpdateError
    Left = 392
    Top = 9
  end
  object tGrupo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'GrupoP'
    Left = 408
    Top = 9
    object tGrupoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object tGrupoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsGrupo: TDataSource
    DataSet = tGrupo
    Left = 423
    Top = 9
  end
  object SitTributaria: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select *'#13#10'from SITTRIBUTARIA'#13#10'where ID = :Codigo'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 460
    Top = 9
  end
  object SitTributariaP: TDataSetProvider
    DataSet = SitTributaria
    OnUpdateError = PessoaPUpdateError
    Left = 476
    Top = 9
  end
  object tSitTributaria: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SitTributariaP'
    Left = 492
    Top = 9
    object tSitTributariaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object tSitTributariaDESCRICAO: TBlobField
      FieldName = 'DESCRICAO'
      Size = 1
    end
    object tSitTributariaPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
      DisplayFormat = '0.00'
    end
    object tSitTributariaCODSITTRIB: TStringField
      FieldName = 'CODSITTRIB'
      Size = 3
    end
  end
  object dsSitTributaria: TDataSource
    DataSet = tSitTributaria
    Left = 507
    Top = 9
  end
  object ClasFiscal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select *'#13#10'from CLASFISCAL'#13#10'where CODCLASFISCAL = :Codigo'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 545
    Top = 9
  end
  object ClasFiscalP: TDataSetProvider
    DataSet = ClasFiscal
    OnUpdateError = PessoaPUpdateError
    Left = 561
    Top = 9
  end
  object tClasFiscal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ClasFiscalP'
    Left = 577
    Top = 9
    object tClasFiscalCODCLASFISCAL: TStringField
      FieldName = 'CODCLASFISCAL'
      Required = True
      Size = 12
    end
    object tClasFiscalCODREDUZIDO: TStringField
      FieldName = 'CODREDUZIDO'
      Size = 3
    end
    object tClasFiscalDESCRICAO: TBlobField
      FieldName = 'DESCRICAO'
      Size = 1
    end
  end
  object dsClasFiscal: TDataSource
    DataSet = tClasFiscal
    Left = 592
    Top = 9
  end
  object NatOperacao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select *'#13#10'from NATOPERACAO'#13#10'where ID = :Codigo'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 630
    Top = 9
  end
  object NatOperacaoP: TDataSetProvider
    DataSet = NatOperacao
    OnUpdateError = PessoaPUpdateError
    Left = 646
    Top = 9
  end
  object tNatOperacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'NatOperacaoP'
    OnNewRecord = tNatOperacaoNewRecord
    Left = 662
    Top = 9
    object tNatOperacaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object tNatOperacaoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object tNatOperacaoES: TStringField
      FieldName = 'ES'
      FixedChar = True
      Size = 1
    end
    object tNatOperacaoCALCIPI: TStringField
      FieldName = 'CALCIPI'
      FixedChar = True
      Size = 1
    end
    object tNatOperacaoCALCICMS: TStringField
      FieldName = 'CALCICMS'
      FixedChar = True
      Size = 1
    end
    object tNatOperacaoGERADUPL: TStringField
      FieldName = 'GERADUPL'
      FixedChar = True
      Size = 1
    end
    object tNatOperacaoLEI: TBlobField
      FieldName = 'LEI'
      Size = 1
    end
    object tNatOperacaoCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 4
    end
  end
  object dsNatOperacao: TDataSource
    DataSet = tNatOperacao
    Left = 677
    Top = 9
  end
  object Produto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select *'#13#10'from PRODUTO'#13#10'where ID = :Codigo'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 252
    Top = 64
  end
  object ProdutoP: TDataSetProvider
    DataSet = Produto
    OnUpdateError = PessoaPUpdateError
    Left = 268
    Top = 64
  end
  object tProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProdutoP'
    OnNewRecord = tProdutoNewRecord
    Left = 282
    Top = 64
    object tProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object tProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object tProdutoCODGRUPO: TIntegerField
      FieldName = 'CODGRUPO'
    end
    object tProdutoALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
      DisplayFormat = '0.00'
    end
    object tProdutoALIQIPI: TFloatField
      FieldName = 'ALIQIPI'
      DisplayFormat = '0.00'
    end
    object tProdutoCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object tProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object tProdutoPOSSUITAMANHO: TStringField
      FieldName = 'POSSUITAMANHO'
      FixedChar = True
      Size = 1
    end
    object tProdutoOPCAOPRECO: TStringField
      FieldName = 'OPCAOPRECO'
      FixedChar = True
      Size = 1
    end
    object tProdutoDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object tProdutoCODSITTRIB: TIntegerField
      FieldName = 'CODSITTRIB'
    end
    object tProdutoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
      DisplayFormat = '0.00'
    end
    object tProdutoPERCMINIMO: TFloatField
      FieldName = 'PERCMINIMO'
      DisplayFormat = '0.00'
    end
    object tProdutoPRECOMINIMO: TFloatField
      FieldName = 'PRECOMINIMO'
      DisplayFormat = '0.00'
    end
    object tProdutoPERCVENDA: TFloatField
      FieldName = 'PERCVENDA'
      DisplayFormat = '0.00'
    end
    object tProdutoDTREAJUSTE: TDateField
      FieldName = 'DTREAJUSTE'
    end
    object tProdutoCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object tProdutoESTMINIMO: TFloatField
      FieldName = 'ESTMINIMO'
    end
    object tProdutoOBS: TBlobField
      FieldName = 'OBS'
      Size = 1
    end
    object tProdutoATUALIZAPRECO: TStringField
      FieldName = 'ATUALIZAPRECO'
      FixedChar = True
      Size = 1
    end
    object tProdutoCLASFISCAL: TStringField
      FieldName = 'CLASFISCAL'
      Size = 12
    end
    object tProdutoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object tProdutoCODSITTRIBCF: TIntegerField
      FieldName = 'CODSITTRIBCF'
    end
    object tProdutoLOTEECONOMICO: TIntegerField
      FieldName = 'LOTEECONOMICO'
    end
    object tProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object tProdutoVLRMO: TFMTBCDField
      FieldName = 'VLRMO'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object tProdutoPRECOVENDA: TFMTBCDField
      FieldName = 'PRECOVENDA'
      Precision = 15
      Size = 1
    end
  end
  object dsProduto: TDataSource
    DataSet = tProduto
    Left = 299
    Top = 64
  end
  object ProdutoTam: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select *'#13#10'from PRODUTOTAM'#13#10'where CODPRODUTO = :Codigo'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 332
    Top = 64
  end
  object ProdutoTamP: TDataSetProvider
    DataSet = ProdutoTam
    OnUpdateError = PessoaPUpdateError
    Left = 348
    Top = 64
  end
  object tProdutoTam: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProdutoTamP'
    OnNewRecord = tProdutoTamNewRecord
    Left = 364
    Top = 64
    object tProdutoTamCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object tProdutoTamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 3
    end
    object tProdutoTamPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
      DisplayFormat = '0.00'
    end
    object tProdutoTamPRECOMINIMO: TFloatField
      FieldName = 'PRECOMINIMO'
      DisplayFormat = '0.00'
    end
    object tProdutoTamPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
      DisplayFormat = '0.00'
    end
    object tProdutoTamCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object tProdutoTamESTMINIMO: TFloatField
      FieldName = 'ESTMINIMO'
    end
    object tProdutoTamDTREAJUST: TDateField
      FieldName = 'DTREAJUST'
    end
  end
  object dsProdutoTam: TDataSource
    DataSet = tProdutoTam
    Left = 379
    Top = 64
  end
  object CondPgto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select *'#13#10' from CONDPGTO'#13#10'where ID = :Codigo'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 8
    Top = 162
  end
  object CondPgtoP: TDataSetProvider
    DataSet = CondPgto
    OnUpdateError = PessoaPUpdateError
    Left = 24
    Top = 162
  end
  object tCondPgto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CondPgtoP'
    OnNewRecord = tCondPgtoNewRecord
    Left = 40
    Top = 162
    object tCondPgtoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object tCondPgtoNOME: TStringField
      FieldName = 'NOME'
    end
    object tCondPgtoPRAZOVISTA: TStringField
      FieldName = 'PRAZOVISTA'
      FixedChar = True
      Size = 1
    end
    object tCondPgtoPERCCUSTO: TFloatField
      FieldName = 'PERCCUSTO'
      DisplayFormat = '0.00'
    end
    object tCondPgtoENTRADA: TStringField
      FieldName = 'ENTRADA'
      FixedChar = True
      Size = 1
    end
    object tCondPgtoPERCJUROS: TFloatField
      FieldName = 'PERCJUROS'
      DisplayFormat = '0.00'
    end
    object tCondPgtoPERCDESCONTO: TFloatField
      FieldName = 'PERCDESCONTO'
      DisplayFormat = '0.00'
    end
    object tCondPgtoFIXARDIA: TStringField
      FieldName = 'FIXARDIA'
      FixedChar = True
      Size = 1
    end
    object tCondPgtoQTDPARCELAS: TIntegerField
      FieldName = 'QTDPARCELAS'
    end
  end
  object dsCondPgto: TDataSource
    DataSet = tCondPgto
    Left = 55
    Top = 162
  end
  object CondPgtoIt: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select *'#13#10'from CONDPGTOIT'#13#10'where CODCONDPGTO = :Codigo'#13#10'order by' +
      ' CODCONDPGTO, ITEM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 90
    Top = 162
  end
  object CondPgtoItP: TDataSetProvider
    DataSet = CondPgtoIt
    OnUpdateError = PessoaPUpdateError
    Left = 106
    Top = 162
  end
  object tCondPgtoIt: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CondPgtoItP'
    OnNewRecord = tCondPgtoItNewRecord
    Left = 122
    Top = 162
    object tCondPgtoItCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
      Required = True
    end
    object tCondPgtoItITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object tCondPgtoItQTDDIAS: TIntegerField
      FieldName = 'QTDDIAS'
    end
  end
  object dsCondPgtoIt: TDataSource
    DataSet = tCondPgtoIt
    Left = 137
    Top = 162
  end
  object PromocaoIt: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select PROMOCAOIT.*, PRODUTO.NOME'#13#10'from PROMOCAOIT'#13#10'inner join P' +
      'RODUTO on'#13#10'(PRODUTO.ID = PROMOCAOIT.CODPRODUTO)'#13#10'where PROMOCAOI' +
      'T.NUMMOVIMENTO = :Codigo'#13#10'order by PROMOCAOIT.NUMMOVIMENTO, PROM' +
      'OCAOIT.ITEM'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 170
    Top = 64
    object PromocaoItNUMMOVIMENTO: TIntegerField
      FieldName = 'NUMMOVIMENTO'
      Required = True
    end
    object PromocaoItITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object PromocaoItCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object PromocaoItTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 3
    end
    object PromocaoItPERCVENDA: TFloatField
      FieldName = 'PERCVENDA'
    end
    object PromocaoItPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object PromocaoItNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 40
    end
  end
  object PromocaoItP: TDataSetProvider
    DataSet = PromocaoIt
    OnUpdateError = PessoaPUpdateError
    Left = 186
    Top = 64
  end
  object tPromocaoIt: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PromocaoItP'
    Left = 202
    Top = 64
    object tPromocaoItNUMMOVIMENTO: TIntegerField
      FieldName = 'NUMMOVIMENTO'
      Required = True
    end
    object tPromocaoItITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object tPromocaoItCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object tPromocaoItTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 3
    end
    object tPromocaoItPERCVENDA: TFloatField
      FieldName = 'PERCVENDA'
      DisplayFormat = '0.00'
    end
    object tPromocaoItPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
      DisplayFormat = '0.00'
    end
    object tPromocaoItNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 40
    end
  end
  object dsPromocaoIt: TDataSource
    DataSet = tPromocaoIt
    Left = 217
    Top = 64
  end
  object Parametro: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select * '#13#10'from PARAMETRO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 8
    Top = 64
  end
  object ParametroP: TDataSetProvider
    DataSet = Parametro
    OnUpdateError = PessoaPUpdateError
    Left = 24
    Top = 64
  end
  object tParametro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ParametroP'
    Left = 40
    Top = 64
    object tParametroPERCMINIMO: TFloatField
      FieldName = 'PERCMINIMO'
      DisplayFormat = '0.00'
    end
    object tParametroPERCVENDA: TFloatField
      FieldName = 'PERCVENDA'
      DisplayFormat = '0.00'
    end
    object tParametroCODPAIS: TIntegerField
      FieldName = 'CODPAIS'
    end
    object tParametroQTDDIASPROTESTO: TIntegerField
      FieldName = 'QTDDIASPROTESTO'
    end
    object tParametroECF: TIntegerField
      FieldName = 'ECF'
    end
    object tParametroCOM: TStringField
      FieldName = 'COM'
      Size = 10
    end
    object tParametroLINHASBOLETO: TIntegerField
      FieldName = 'LINHASBOLETO'
    end
    object tParametroLINHASPULOBOLETO: TIntegerField
      FieldName = 'LINHASPULOBOLETO'
    end
    object tParametroCUSTOKM: TFMTBCDField
      FieldName = 'CUSTOKM'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object tParametroVLRHOMEMHR: TFMTBCDField
      FieldName = 'VLRHOMEMHR'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object tParametroIMPOSTO_NF: TFMTBCDField
      FieldName = 'IMPOSTO_NF'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object tParametroTITULO1: TStringField
      FieldName = 'TITULO1'
      Size = 70
    end
    object tParametroTITULO2: TStringField
      FieldName = 'TITULO2'
      Size = 70
    end
    object tParametroCABECALHO1: TBlobField
      FieldName = 'CABECALHO1'
      Size = 1
    end
    object tParametroCABECALHO2: TBlobField
      FieldName = 'CABECALHO2'
      Size = 1
    end
    object tParametroPERCFOLHA: TFMTBCDField
      FieldName = 'PERCFOLHA'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object tParametroPERCLUCRO: TFMTBCDField
      FieldName = 'PERCLUCRO'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
  end
  object dsParametro: TDataSource
    DataSet = tParametro
    Left = 56
    Top = 64
  end
  object NotaEntrada: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'Select NOTAENTRADA.*, PESSOA.NOME'#13#10'from NOTAENTRADA'#13#10'inner join ' +
      'PESSOA on'#13#10'(PESSOA.ID = NOTAENTRADA.CODFORNECEDOR)'#13#10'where NOTAEN' +
      'TRADA.NUMNOTA  = :Codigo  and'#13#10'          NOTAENTRADA.CODFORNECED' +
      'OR = :CodFornecedor'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CodFornecedor'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 414
    Top = 64
    object NotaEntradaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
      Required = True
    end
    object NotaEntradaCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object NotaEntradaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object NotaEntradaINFCONDPGTO: TStringField
      FieldName = 'INFCONDPGTO'
      FixedChar = True
      Size = 1
    end
    object NotaEntradaCODNATOPER: TIntegerField
      FieldName = 'CODNATOPER'
    end
    object NotaEntradaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object NotaEntradaDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object NotaEntradaICMSIPI: TStringField
      FieldName = 'ICMSIPI'
      FixedChar = True
      Size = 1
    end
    object NotaEntradaVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
    end
    object NotaEntradaBASEICMS: TFloatField
      FieldName = 'BASEICMS'
    end
    object NotaEntradaVLRICMS: TFloatField
      FieldName = 'VLRICMS'
      DisplayFormat = '0.00'
    end
    object NotaEntradaVLRIPI: TFloatField
      FieldName = 'VLRIPI'
      DisplayFormat = '0.00'
    end
    object NotaEntradaVLRTOTALMOBRAS: TFloatField
      FieldName = 'VLRTOTALMOBRAS'
      DisplayFormat = '0.00'
    end
    object NotaEntradaVLRTOTALITENS: TFloatField
      FieldName = 'VLRTOTALITENS'
      DisplayFormat = '0.00'
    end
    object NotaEntradaSOMAPRODDUPL: TStringField
      FieldName = 'SOMAPRODDUPL'
      FixedChar = True
      Size = 1
    end
    object NotaEntradaSOMAMOBRADUPL: TStringField
      FieldName = 'SOMAMOBRADUPL'
      FixedChar = True
      Size = 1
    end
    object NotaEntradaCODNATOPERMOBRA: TStringField
      FieldName = 'CODNATOPERMOBRA'
      FixedChar = True
      Size = 1
    end
    object NotaEntradaBASEIPI: TFloatField
      FieldName = 'BASEIPI'
    end
    object NotaEntradaVLROUTRASDESP: TFloatField
      FieldName = 'VLROUTRASDESP'
    end
    object NotaEntradaNRODUPLICATA: TIntegerField
      FieldName = 'NRODUPLICATA'
    end
    object NotaEntradaNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 40
    end
  end
  object NotaEntradaP: TDataSetProvider
    DataSet = NotaEntrada
    OnUpdateError = PessoaPUpdateError
    Left = 430
    Top = 64
  end
  object tNotaEntrada: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'NotaEntradaP'
    OnNewRecord = tNotaEntradaNewRecord
    Left = 446
    Top = 64
    object tNotaEntradaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
      Required = True
    end
    object tNotaEntradaCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object tNotaEntradaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object tNotaEntradaINFCONDPGTO: TStringField
      FieldName = 'INFCONDPGTO'
      FixedChar = True
      Size = 1
    end
    object tNotaEntradaCODNATOPER: TIntegerField
      FieldName = 'CODNATOPER'
    end
    object tNotaEntradaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object tNotaEntradaDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object tNotaEntradaICMSIPI: TStringField
      FieldName = 'ICMSIPI'
      FixedChar = True
      Size = 1
    end
    object tNotaEntradaVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
      DisplayFormat = '0.00'
    end
    object tNotaEntradaBASEICMS: TFloatField
      FieldName = 'BASEICMS'
      DisplayFormat = '0.00'
    end
    object tNotaEntradaVLRICMS: TFloatField
      FieldName = 'VLRICMS'
      DisplayFormat = '0.00'
    end
    object tNotaEntradaVLRIPI: TFloatField
      FieldName = 'VLRIPI'
      DisplayFormat = '0.00'
    end
    object tNotaEntradaBASEIPI: TFloatField
      FieldName = 'BASEIPI'
      DisplayFormat = '0.00'
    end
    object tNotaEntradaVLROUTRASDESP: TFloatField
      FieldName = 'VLROUTRASDESP'
      DisplayFormat = '0.00'
    end
    object tNotaEntradaNRODUPLICATA: TIntegerField
      FieldName = 'NRODUPLICATA'
    end
    object tNotaEntradaVLRTOTALMOBRAS: TFloatField
      FieldName = 'VLRTOTALMOBRAS'
      DisplayFormat = '0.00'
    end
    object tNotaEntradaVLRTOTALITENS: TFloatField
      FieldName = 'VLRTOTALITENS'
      DisplayFormat = '0.00'
    end
    object tNotaEntradaSOMAPRODDUPL: TStringField
      FieldName = 'SOMAPRODDUPL'
      FixedChar = True
      Size = 1
    end
    object tNotaEntradaSOMAMOBRADUPL: TStringField
      FieldName = 'SOMAMOBRADUPL'
      FixedChar = True
      Size = 1
    end
    object tNotaEntradaCODNATOPERMOBRA: TStringField
      FieldName = 'CODNATOPERMOBRA'
      FixedChar = True
      Size = 1
    end
    object tNotaEntradaNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 40
    end
  end
  object dsNotaEntrada: TDataSource
    DataSet = tNotaEntrada
    Left = 461
    Top = 64
  end
  object NotaEntradaIt: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select NOTAENTRADAIT.*, PRODUTO.NOME'#13#10'from NOTAENTRADAIT'#13#10'inner ' +
      'join PRODUTO on'#13#10'(PRODUTO.ID = NOTAENTRADAIT.CODPRODUTO)'#13#10'where ' +
      'NOTAENTRADAIT.NUMNOTA = :Codigo and'#13#10'           NOTAENTRADAIT.CO' +
      'DFORNECEDOR = :CodFornecedor'#13#10'order by NOTAENTRADAIT.NUMNOTA, NO' +
      'TAENTRADAIT.CODFORNECEDOR, '#13#10'NOTAENTRADAIT.ITEM'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CodFornecedor'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 496
    Top = 64
    object NotaEntradaItNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
      Required = True
    end
    object NotaEntradaItCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object NotaEntradaItITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object NotaEntradaItCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object NotaEntradaItTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 3
    end
    object NotaEntradaItQTD: TFloatField
      FieldName = 'QTD'
    end
    object NotaEntradaItVLRUNITARIO: TFloatField
      FieldName = 'VLRUNITARIO'
    end
    object NotaEntradaItVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
    end
    object NotaEntradaItALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
    end
    object NotaEntradaItALIQIPI: TFloatField
      FieldName = 'ALIQIPI'
    end
    object NotaEntradaItPERCDESC: TFloatField
      FieldName = 'PERCDESC'
    end
    object NotaEntradaItVLRDESC: TFloatField
      FieldName = 'VLRDESC'
    end
    object NotaEntradaItVLRIPI: TFloatField
      FieldName = 'VLRIPI'
    end
    object NotaEntradaItBASEIPI: TFloatField
      FieldName = 'BASEIPI'
    end
    object NotaEntradaItBASEICMS: TFloatField
      FieldName = 'BASEICMS'
    end
    object NotaEntradaItCODNATOPER: TIntegerField
      FieldName = 'CODNATOPER'
    end
    object NotaEntradaItBAIXAESTOQUE: TStringField
      FieldName = 'BAIXAESTOQUE'
      FixedChar = True
      Size = 1
    end
    object NotaEntradaItVLRICMS: TFloatField
      FieldName = 'VLRICMS'
    end
    object NotaEntradaItCODSITTRIB: TIntegerField
      FieldName = 'CODSITTRIB'
    end
    object NotaEntradaItUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object NotaEntradaItNUMOC: TIntegerField
      FieldName = 'NUMOC'
    end
    object NotaEntradaItITEMOC: TIntegerField
      FieldName = 'ITEMOC'
    end
    object NotaEntradaItQTD2: TFloatField
      FieldName = 'QTD2'
    end
    object NotaEntradaItNUMMOVEST: TIntegerField
      FieldName = 'NUMMOVEST'
    end
    object NotaEntradaItNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 40
    end
  end
  object NotaEntradaItP: TDataSetProvider
    DataSet = NotaEntradaIt
    OnUpdateError = PessoaPUpdateError
    Left = 512
    Top = 64
  end
  object tNotaEntradaIt: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'NotaEntradaItP'
    OnNewRecord = tNotaEntradaItNewRecord
    Left = 528
    Top = 64
    object tNotaEntradaItNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
      Required = True
    end
    object tNotaEntradaItCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object tNotaEntradaItITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object tNotaEntradaItCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object tNotaEntradaItTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 3
    end
    object tNotaEntradaItQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '0.00'
    end
    object tNotaEntradaItVLRUNITARIO: TFloatField
      FieldName = 'VLRUNITARIO'
      DisplayFormat = '0.00'
    end
    object tNotaEntradaItVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
      DisplayFormat = '0.00'
    end
    object tNotaEntradaItALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
      DisplayFormat = '0.00'
    end
    object tNotaEntradaItALIQIPI: TFloatField
      FieldName = 'ALIQIPI'
      DisplayFormat = '0.00'
    end
    object tNotaEntradaItPERCDESC: TFloatField
      FieldName = 'PERCDESC'
      DisplayFormat = '0.00'
    end
    object tNotaEntradaItVLRDESC: TFloatField
      FieldName = 'VLRDESC'
      DisplayFormat = '0.00'
    end
    object tNotaEntradaItVLRIPI: TFloatField
      FieldName = 'VLRIPI'
      DisplayFormat = '0.00'
    end
    object tNotaEntradaItBASEIPI: TFloatField
      FieldName = 'BASEIPI'
      DisplayFormat = '0.00'
    end
    object tNotaEntradaItBASEICMS: TFloatField
      FieldName = 'BASEICMS'
      DisplayFormat = '0.00'
    end
    object tNotaEntradaItCODNATOPER: TIntegerField
      FieldName = 'CODNATOPER'
    end
    object tNotaEntradaItBAIXAESTOQUE: TStringField
      FieldName = 'BAIXAESTOQUE'
      FixedChar = True
      Size = 1
    end
    object tNotaEntradaItVLRICMS: TFloatField
      FieldName = 'VLRICMS'
      DisplayFormat = '0.00'
    end
    object tNotaEntradaItCODSITTRIB: TIntegerField
      FieldName = 'CODSITTRIB'
    end
    object tNotaEntradaItUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object tNotaEntradaItNUMOC: TIntegerField
      FieldName = 'NUMOC'
    end
    object tNotaEntradaItITEMOC: TIntegerField
      FieldName = 'ITEMOC'
    end
    object tNotaEntradaItQTD2: TFloatField
      FieldName = 'QTD2'
    end
    object tNotaEntradaItNUMMOVEST: TIntegerField
      FieldName = 'NUMMOVEST'
    end
    object tNotaEntradaItNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 40
    end
  end
  object dsNotaEntradaIt: TDataSource
    DataSet = tNotaEntradaIt
    Left = 543
    Top = 64
  end
  object NotaEntradaParc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select NOTAENTRADAPARC.*,  BANCO.NOME NOMEBANCO'#13#10'from NOTAENTRAD' +
      'APARC'#13#10'full join BANCO on'#13#10'(BANCO.ID = NOTAENTRADAPARC.CODBANCO)' +
      #13#10'where NOTAENTRADAPARC.NUMNOTA = :Codigo and'#13#10'           NOTAEN' +
      'TRADAPARC.CODFORNECEDOR = :CodFornecedor'#13#10'order by NOTAENTRADAPA' +
      'RC.NUMNOTA, NOTAENTRADAPARC.CODFORNECEDOR, '#13#10'NOTAENTRADAPARC.ITE' +
      'M'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CodFornecedor'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 579
    Top = 64
    object NotaEntradaParcNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object NotaEntradaParcCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object NotaEntradaParcITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object NotaEntradaParcNUMDUPLICATA: TIntegerField
      FieldName = 'NUMDUPLICATA'
    end
    object NotaEntradaParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object NotaEntradaParcVLRVENCIMENTO: TFloatField
      FieldName = 'VLRVENCIMENTO'
    end
    object NotaEntradaParcCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
    object NotaEntradaParcNUMCPAGAR: TIntegerField
      FieldName = 'NUMCPAGAR'
    end
    object NotaEntradaParcNOMEBANCO: TStringField
      FieldName = 'NOMEBANCO'
      ProviderFlags = []
      Size = 40
    end
  end
  object NotaEntradaParcP: TDataSetProvider
    DataSet = NotaEntradaParc
    OnUpdateError = PessoaPUpdateError
    Left = 595
    Top = 64
  end
  object tNotaEntradaParc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'NotaEntradaParcP'
    OnNewRecord = tNotaEntradaParcNewRecord
    Left = 611
    Top = 64
    object tNotaEntradaParcNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
      Required = True
    end
    object tNotaEntradaParcCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object tNotaEntradaParcITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object tNotaEntradaParcNUMDUPLICATA: TIntegerField
      FieldName = 'NUMDUPLICATA'
    end
    object tNotaEntradaParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object tNotaEntradaParcVLRVENCIMENTO: TFloatField
      FieldName = 'VLRVENCIMENTO'
      DisplayFormat = '0.00'
    end
    object tNotaEntradaParcCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
    object tNotaEntradaParcNUMCPAGAR: TIntegerField
      FieldName = 'NUMCPAGAR'
    end
    object tNotaEntradaParcNOMEBANCO: TStringField
      FieldName = 'NOMEBANCO'
      ProviderFlags = []
      Size = 40
    end
  end
  object dsNotaEntradaParc: TDataSource
    DataSet = tNotaEntradaParc
    Left = 626
    Top = 64
  end
  object NotaEntradaMObra: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select NOTAENTRADAMOBRA.*, NATOPERACAO.CODIGO CODFISCALNATOPER, ' +
      'PRODUTO.NOME NOMEMOBRA'#13#10'from NOTAENTRADAMOBRA'#13#10'inner join NATOPE' +
      'RACAO on'#13#10'(NATOPERACAO.ID = NOTAENTRADAMOBRA.CODNATOPER)'#13#10'inner ' +
      'join PRODUTO on'#13#10'(PRODUTO.ID = NOTAENTRADAMOBRA.CODMOBRA)'#13#10'where' +
      ' NOTAENTRADAMOBRA.NUMNOTA = :Codigo and'#13#10'           NOTAENTRADAM' +
      'OBRA.CODFORNECEDOR = :CodFornecedor'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CodFornecedor'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 664
    Top = 64
    object NotaEntradaMObraNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
      Required = True
    end
    object NotaEntradaMObraCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object NotaEntradaMObraITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object NotaEntradaMObraCODNATOPER: TIntegerField
      FieldName = 'CODNATOPER'
    end
    object NotaEntradaMObraCODMOBRA: TIntegerField
      FieldName = 'CODMOBRA'
    end
    object NotaEntradaMObraQTD: TFloatField
      FieldName = 'QTD'
    end
    object NotaEntradaMObraALIQISSQN: TFloatField
      FieldName = 'ALIQISSQN'
    end
    object NotaEntradaMObraALIQINSS: TFloatField
      FieldName = 'ALIQINSS'
    end
    object NotaEntradaMObraALIQIRF: TFloatField
      FieldName = 'ALIQIRF'
    end
    object NotaEntradaMObraVLRUNITARIO: TFloatField
      FieldName = 'VLRUNITARIO'
    end
    object NotaEntradaMObraVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
    end
    object NotaEntradaMObraVLRISSQN: TFloatField
      FieldName = 'VLRISSQN'
    end
    object NotaEntradaMObraCODFISCALNATOPER: TStringField
      FieldName = 'CODFISCALNATOPER'
      ProviderFlags = []
      Size = 4
    end
    object NotaEntradaMObraNOMEMOBRA: TStringField
      FieldName = 'NOMEMOBRA'
      ProviderFlags = []
      Size = 50
    end
  end
  object NotaEntradaMObraP: TDataSetProvider
    DataSet = NotaEntradaMObra
    OnUpdateError = PessoaPUpdateError
    Left = 680
    Top = 64
  end
  object tNotaEntradaMObra: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'NotaEntradaMObraP'
    OnNewRecord = tNotaEntradaMObraNewRecord
    Left = 696
    Top = 64
    object tNotaEntradaMObraNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
      Required = True
    end
    object tNotaEntradaMObraCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object tNotaEntradaMObraITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object tNotaEntradaMObraCODNATOPER: TIntegerField
      FieldName = 'CODNATOPER'
    end
    object tNotaEntradaMObraCODMOBRA: TIntegerField
      FieldName = 'CODMOBRA'
    end
    object tNotaEntradaMObraQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '0.00'
    end
    object tNotaEntradaMObraALIQISSQN: TFloatField
      FieldName = 'ALIQISSQN'
      DisplayFormat = '0.00'
    end
    object tNotaEntradaMObraALIQINSS: TFloatField
      FieldName = 'ALIQINSS'
      DisplayFormat = '0.00'
    end
    object tNotaEntradaMObraALIQIRF: TFloatField
      FieldName = 'ALIQIRF'
      DisplayFormat = '0.00'
    end
    object tNotaEntradaMObraVLRUNITARIO: TFloatField
      FieldName = 'VLRUNITARIO'
      DisplayFormat = '0.00'
    end
    object tNotaEntradaMObraVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
      DisplayFormat = '0.00'
    end
    object tNotaEntradaMObraVLRISSQN: TFloatField
      FieldName = 'VLRISSQN'
      DisplayFormat = '0.00'
    end
    object tNotaEntradaMObraCODFISCALNATOPER: TStringField
      FieldName = 'CODFISCALNATOPER'
      ProviderFlags = []
      Size = 4
    end
    object tNotaEntradaMObraNOMEMOBRA: TStringField
      FieldName = 'NOMEMOBRA'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsNotaEntradaMObra: TDataSource
    DataSet = tNotaEntradaMObra
    Left = 711
    Top = 64
  end
  object TipoCobranca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select *'#13#10'from TIPOCOBRANCA'#13#10'where ID = :Codigo'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 8
    Top = 114
  end
  object TipoCobrancaP: TDataSetProvider
    DataSet = TipoCobranca
    OnUpdateError = PessoaPUpdateError
    Left = 24
    Top = 114
  end
  object tTipoCobranca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TipoCobrancaP'
    OnCalcFields = tTipoCobrancaCalcFields
    OnNewRecord = tTipoCobrancaNewRecord
    Left = 40
    Top = 114
    object tTipoCobrancaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object tTipoCobrancaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object tTipoCobrancaTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object tTipoCobrancaclTipo: TStringField
      FieldKind = fkCalculated
      FieldName = 'clTipo'
      Calculated = True
    end
  end
  object dsTipoCobranca: TDataSource
    DataSet = tTipoCobranca
    Left = 55
    Top = 114
  end
  object UF: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM UF'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 93
    Top = 114
  end
  object UFP: TDataSetProvider
    DataSet = UF
    OnUpdateError = PessoaPUpdateError
    Left = 109
    Top = 114
  end
  object tUF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UFP'
    Left = 125
    Top = 114
    object tUFUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
    object tUFALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
      DisplayFormat = '0.00'
    end
  end
  object dsUF: TDataSource
    DataSet = tUF
    Left = 140
    Top = 114
  end
  object MaoObra: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select *'#13#10'from MAOOBRA'#13#10'where ID = :Codigo'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 177
    Top = 114
  end
  object MaoObraP: TDataSetProvider
    DataSet = MaoObra
    OnUpdateError = PessoaPUpdateError
    Left = 193
    Top = 114
  end
  object tMaoObra: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MaoObraP'
    Left = 209
    Top = 114
    object tMaoObraID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object tMaoObraNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object tMaoObraVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '0.00'
    end
    object tMaoObraDTREAJUSTE: TDateField
      FieldName = 'DTREAJUSTE'
    end
  end
  object dsMaoObra: TDataSource
    DataSet = tMaoObra
    Left = 224
    Top = 114
  end
  object Empresa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT A.*, B.NOME CIDADE'#13#10'FROM EMPRESA A'#13#10'INNER JOIN CIDADE B'#13#10 +
      'ON (A.CODCIDADE = B.ID)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 259
    Top = 114
    object EmpresaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object EmpresaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object EmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object EmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object EmpresaCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object EmpresaCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
    end
    object EmpresaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object EmpresaDDD: TStringField
      FieldName = 'DDD'
      Size = 2
    end
    object EmpresaFONE: TStringField
      FieldName = 'FONE'
      Size = 9
    end
    object EmpresaFAX: TStringField
      FieldName = 'FAX'
      Size = 8
    end
    object EmpresaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 18
    end
    object EmpresaINSCREST: TStringField
      FieldName = 'INSCREST'
      Size = 18
    end
    object EmpresaCODACESSO: TIntegerField
      FieldName = 'CODACESSO'
    end
    object EmpresaAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      Size = 6
    end
    object EmpresaDATA: TDateField
      FieldName = 'DATA'
    end
    object EmpresaSERVICO: TStringField
      FieldName = 'SERVICO'
      FixedChar = True
      Size = 1
    end
    object EmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 30
    end
    object EmpresaLOGOEMPRESA: TStringField
      FieldName = 'LOGOEMPRESA'
      Size = 200
    end
    object EmpresaFONE2: TStringField
      FieldName = 'FONE2'
      Size = 8
    end
    object EmpresaFONE3: TStringField
      FieldName = 'FONE3'
      Size = 8
    end
    object EmpresaLOGOEMPRESA2: TStringField
      FieldName = 'LOGOEMPRESA2'
      Size = 200
    end
    object EmpresaSTRETCH: TStringField
      FieldName = 'STRETCH'
      Size = 1
    end
  end
  object EmpresaP: TDataSetProvider
    DataSet = Empresa
    OnUpdateError = PessoaPUpdateError
    Left = 275
    Top = 114
  end
  object tEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'EmpresaP'
    Left = 291
    Top = 114
    object tEmpresaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object tEmpresaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object tEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object tEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object tEmpresaCEP: TStringField
      FieldName = 'CEP'
      EditMask = '99999-999'
      Size = 9
    end
    object tEmpresaCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
    end
    object tEmpresaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object tEmpresaDDD: TStringField
      FieldName = 'DDD'
      Size = 2
    end
    object tEmpresaFONE: TStringField
      FieldName = 'FONE'
      Size = 9
    end
    object tEmpresaFAX: TStringField
      FieldName = 'FAX'
      Size = 8
    end
    object tEmpresaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      EditMask = '99.999.999/9999-99'
      Size = 18
    end
    object tEmpresaINSCREST: TStringField
      FieldName = 'INSCREST'
      Size = 18
    end
    object tEmpresaCODACESSO: TIntegerField
      FieldName = 'CODACESSO'
    end
    object tEmpresaAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      Size = 6
    end
    object tEmpresaDATA: TDateField
      FieldName = 'DATA'
    end
    object tEmpresaSERVICO: TStringField
      FieldName = 'SERVICO'
      FixedChar = True
      Size = 1
    end
    object tEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 30
    end
    object tEmpresaLOGOEMPRESA: TStringField
      FieldName = 'LOGOEMPRESA'
      Size = 200
    end
    object tEmpresaFONE2: TStringField
      FieldName = 'FONE2'
      Size = 8
    end
    object tEmpresaFONE3: TStringField
      FieldName = 'FONE3'
      Size = 8
    end
    object tEmpresaLOGOEMPRESA2: TStringField
      FieldName = 'LOGOEMPRESA2'
      Size = 200
    end
    object tEmpresaSTRETCH: TStringField
      FieldName = 'STRETCH'
      Size = 1
    end
  end
  object dsEmpresa: TDataSource
    DataSet = tEmpresa
    Left = 306
    Top = 114
  end
  object Banco: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select *'#13#10'from BANCO'#13#10'where ID = :Codigo'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 342
    Top = 115
  end
  object BancoP: TDataSetProvider
    DataSet = Banco
    OnUpdateError = PessoaPUpdateError
    Left = 358
    Top = 115
  end
  object tBanco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BancoP'
    OnNewRecord = tBancoNewRecord
    Left = 374
    Top = 115
    object tBancoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object tBancoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object tBancoSALDO: TFloatField
      FieldName = 'SALDO'
      DisplayFormat = '0.00'
    end
    object tBancoTIPOBANCO: TStringField
      FieldName = 'TIPOBANCO'
      FixedChar = True
      Size = 1
    end
    object tBancoBANCO: TStringField
      FieldName = 'BANCO'
      Size = 4
    end
    object tBancoAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 6
    end
    object tBancoEMPCLI: TStringField
      FieldName = 'EMPCLI'
      FixedChar = True
      Size = 1
    end
    object tBancoNUMCONTA: TStringField
      FieldName = 'NUMCONTA'
      Size = 10
    end
    object tBancoDIGCONTA: TStringField
      FieldName = 'DIGCONTA'
      FixedChar = True
      Size = 1
    end
  end
  object dsBanco: TDataSource
    DataSet = tBanco
    Left = 389
    Top = 115
  end
  object EstoqueMov: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select *'#13#10'from ESTOQUEMOV'#13#10'where NUMMOV = :Codigo'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 260
    Top = 162
  end
  object EstoqueMovP: TDataSetProvider
    DataSet = EstoqueMov
    OnUpdateError = PessoaPUpdateError
    Left = 270
    Top = 162
  end
  object tEstoqueMov: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'EstoqueMovP'
    Left = 284
    Top = 162
    object tEstoqueMovNUMMOV: TIntegerField
      FieldName = 'NUMMOV'
      Required = True
    end
    object tEstoqueMovCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object tEstoqueMovTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 3
    end
    object tEstoqueMovDTMOV: TDateField
      FieldName = 'DTMOV'
    end
    object tEstoqueMovES: TStringField
      FieldName = 'ES'
      FixedChar = True
      Size = 1
    end
    object tEstoqueMovTIPOMOV: TStringField
      FieldName = 'TIPOMOV'
      Size = 3
    end
    object tEstoqueMovNUMDOCTO: TIntegerField
      FieldName = 'NUMDOCTO'
    end
    object tEstoqueMovCODPESSOA: TIntegerField
      FieldName = 'CODPESSOA'
    end
    object tEstoqueMovPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object tEstoqueMovPRECOVC: TFloatField
      FieldName = 'PRECOVC'
    end
    object tEstoqueMovQTD: TFloatField
      FieldName = 'QTD'
    end
    object tEstoqueMovPERCICMS: TFloatField
      FieldName = 'PERCICMS'
    end
    object tEstoqueMovPERCIPI: TFloatField
      FieldName = 'PERCIPI'
    end
    object tEstoqueMovUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object tEstoqueMovVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
    end
    object tEstoqueMovVLRADICIONAL: TFloatField
      FieldName = 'VLRADICIONAL'
    end
    object tEstoqueMovQTD2: TFloatField
      FieldName = 'QTD2'
    end
  end
  object dsEstoqueMov: TDataSource
    DataSet = tEstoqueMov
    Left = 302
    Top = 162
  end
  object CReceberParc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select CRECEBERPARC.*, PESSOA.NOME NOMECLIENTE'#13#10'from CRECEBERPAR' +
      'C'#13#10'Left join PESSOA on'#13#10'(PESSOA.ID = CRECEBERPARC.CODCLIENTE)'#13#10'w' +
      'here NUMCRECEBER = :Codigo and'#13#10'           PARCELA = :Parcela'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Parcela'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 349
    Top = 208
    object CReceberParcNUMCRECEBER: TIntegerField
      FieldName = 'NUMCRECEBER'
      Required = True
    end
    object CReceberParcPARCELA: TStringField
      FieldName = 'PARCELA'
      Required = True
      Size = 3
    end
    object CReceberParcVLRVENCIMENTO: TFloatField
      FieldName = 'VLRVENCIMENTO'
    end
    object CReceberParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object CReceberParcQUITADO: TStringField
      FieldName = 'QUITADO'
      FixedChar = True
      Size = 1
    end
    object CReceberParcJUROSCALC: TFloatField
      FieldName = 'JUROSCALC'
    end
    object CReceberParcDTPAGTO: TDateField
      FieldName = 'DTPAGTO'
    end
    object CReceberParcCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object CReceberParcNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object CReceberParcVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
    end
    object CReceberParcVLRPAGTO: TFloatField
      FieldName = 'VLRPAGTO'
    end
    object CReceberParcVLRRESTANTE: TFloatField
      FieldName = 'VLRRESTANTE'
    end
    object CReceberParcCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object CReceberParcPERCCOMISSAO: TFloatField
      FieldName = 'PERCCOMISSAO'
    end
    object CReceberParcAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 6
    end
    object CReceberParcTITPORTADOR: TStringField
      FieldName = 'TITPORTADOR'
    end
    object CReceberParcCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object CReceberParcVLRDESPESA: TFloatField
      FieldName = 'VLRDESPESA'
    end
    object CReceberParcCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
    object CReceberParcPGCARTORIO: TStringField
      FieldName = 'PGCARTORIO'
      FixedChar = True
      Size = 1
    end
    object CReceberParcTITPROTESTADO: TStringField
      FieldName = 'TITPROTESTADO'
      FixedChar = True
      Size = 1
    end
    object CReceberParcQTDDIASPROT: TIntegerField
      FieldName = 'QTDDIASPROT'
    end
    object CReceberParcDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object CReceberParcDIASATRASO: TIntegerField
      FieldName = 'DIASATRASO'
    end
    object CReceberParcJUROSPAGOS: TFloatField
      FieldName = 'JUROSPAGOS'
    end
    object CReceberParcCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object CReceberParcTIPODOC: TStringField
      FieldName = 'TIPODOC'
      Size = 2
    end
    object CReceberParcVLRDEVOLUCAO: TFloatField
      FieldName = 'VLRDEVOLUCAO'
    end
    object CReceberParcCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
    end
    object CReceberParcDTDEVOLUCAO: TDateField
      FieldName = 'DTDEVOLUCAO'
    end
    object CReceberParcNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 40
    end
    object CReceberParcCOBRANCAEMITIDA: TStringField
      FieldName = 'COBRANCAEMITIDA'
      FixedChar = True
      Size = 1
    end
    object CReceberParcNUMCARTEIRA: TStringField
      FieldName = 'NUMCARTEIRA'
      Size = 3
    end
    object CReceberParcNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 15
    end
    object CReceberParcIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      FixedChar = True
      Size = 1
    end
    object CReceberParcCODCENTROCUSTO: TIntegerField
      FieldName = 'CODCENTROCUSTO'
    end
    object CReceberParcOBS: TBlobField
      FieldName = 'OBS'
      Size = 1
    end
  end
  object CReceberParcP: TDataSetProvider
    DataSet = CReceberParc
    OnUpdateError = PessoaPUpdateError
    Left = 363
    Top = 208
  end
  object tCReceberParc: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NUMCRECEBER'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PARCELA'
        Attributes = [faRequired]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'VLRVENCIMENTO'
        DataType = ftFloat
      end
      item
        Name = 'DTVENCIMENTO'
        DataType = ftDate
      end
      item
        Name = 'QUITADO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'JUROSCALC'
        DataType = ftFloat
      end
      item
        Name = 'DTPAGTO'
        DataType = ftDate
      end
      item
        Name = 'CODCLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'NUMNOTA'
        DataType = ftInteger
      end
      item
        Name = 'VLRDESCONTO'
        DataType = ftFloat
      end
      item
        Name = 'VLRPAGTO'
        DataType = ftFloat
      end
      item
        Name = 'VLRRESTANTE'
        DataType = ftFloat
      end
      item
        Name = 'CODVENDEDOR'
        DataType = ftInteger
      end
      item
        Name = 'PERCCOMISSAO'
        DataType = ftFloat
      end
      item
        Name = 'AGENCIA'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'TITPORTADOR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODTIPOCOBRANCA'
        DataType = ftInteger
      end
      item
        Name = 'VLRDESPESA'
        DataType = ftFloat
      end
      item
        Name = 'CODBANCO'
        DataType = ftInteger
      end
      item
        Name = 'PGCARTORIO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TITPROTESTADO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'QTDDIASPROT'
        DataType = ftInteger
      end
      item
        Name = 'DTMOVIMENTO'
        DataType = ftDate
      end
      item
        Name = 'DIASATRASO'
        DataType = ftInteger
      end
      item
        Name = 'JUROSPAGOS'
        DataType = ftFloat
      end
      item
        Name = 'CANCELADO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TIPODOC'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'VLRDEVOLUCAO'
        DataType = ftFloat
      end
      item
        Name = 'CODCONDPGTO'
        DataType = ftInteger
      end
      item
        Name = 'DTDEVOLUCAO'
        DataType = ftDate
      end
      item
        Name = 'NOMECLIENTE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'COBRANCAEMITIDA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NUMCARTEIRA'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'NOSSONUMERO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'IMPRIMIR'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CODCENTROCUSTO'
        DataType = ftInteger
      end
      item
        Name = 'OBS'
        DataType = ftBlob
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'CReceberParcP'
    StoreDefs = True
    OnNewRecord = tCReceberParcNewRecord
    Left = 379
    Top = 208
    object tCReceberParcNUMCRECEBER: TIntegerField
      FieldName = 'NUMCRECEBER'
      Required = True
    end
    object tCReceberParcPARCELA: TStringField
      FieldName = 'PARCELA'
      Required = True
      Size = 3
    end
    object tCReceberParcVLRVENCIMENTO: TFloatField
      FieldName = 'VLRVENCIMENTO'
      DisplayFormat = '###,###,##0.00'
    end
    object tCReceberParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object tCReceberParcJUROSCALC: TFloatField
      FieldName = 'JUROSCALC'
      DisplayFormat = '###,###,##0.00'
    end
    object tCReceberParcQUITADO: TStringField
      FieldName = 'QUITADO'
      FixedChar = True
      Size = 1
    end
    object tCReceberParcDTPAGTO: TDateField
      FieldName = 'DTPAGTO'
    end
    object tCReceberParcCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object tCReceberParcNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object tCReceberParcVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object tCReceberParcVLRPAGTO: TFloatField
      FieldName = 'VLRPAGTO'
      DisplayFormat = '###,###,##0.00'
    end
    object tCReceberParcVLRRESTANTE: TFloatField
      FieldName = 'VLRRESTANTE'
      DisplayFormat = '###,###,##0.00'
    end
    object tCReceberParcCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object tCReceberParcPERCCOMISSAO: TFloatField
      FieldName = 'PERCCOMISSAO'
      DisplayFormat = '0.00'
    end
    object tCReceberParcAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 6
    end
    object tCReceberParcTITPORTADOR: TStringField
      FieldName = 'TITPORTADOR'
    end
    object tCReceberParcCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object tCReceberParcVLRDESPESA: TFloatField
      FieldName = 'VLRDESPESA'
      DisplayFormat = '###,###,##0.00'
    end
    object tCReceberParcCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
    object tCReceberParcPGCARTORIO: TStringField
      FieldName = 'PGCARTORIO'
      FixedChar = True
      Size = 1
    end
    object tCReceberParcTITPROTESTADO: TStringField
      FieldName = 'TITPROTESTADO'
      FixedChar = True
      Size = 1
    end
    object tCReceberParcQTDDIASPROT: TIntegerField
      FieldName = 'QTDDIASPROT'
    end
    object tCReceberParcDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object tCReceberParcDIASATRASO: TIntegerField
      FieldName = 'DIASATRASO'
    end
    object tCReceberParcJUROSPAGOS: TFloatField
      FieldName = 'JUROSPAGOS'
      DisplayFormat = '###,###,##0.00'
    end
    object tCReceberParcCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object tCReceberParcTIPODOC: TStringField
      FieldName = 'TIPODOC'
      Size = 2
    end
    object tCReceberParcVLRDEVOLUCAO: TFloatField
      FieldName = 'VLRDEVOLUCAO'
      DisplayFormat = '###,###,##0.00'
    end
    object tCReceberParcCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
    end
    object tCReceberParcDTDEVOLUCAO: TDateField
      FieldName = 'DTDEVOLUCAO'
    end
    object tCReceberParcNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 40
    end
    object tCReceberParcCOBRANCAEMITIDA: TStringField
      FieldName = 'COBRANCAEMITIDA'
      FixedChar = True
      Size = 1
    end
    object tCReceberParcNUMCARTEIRA: TStringField
      FieldName = 'NUMCARTEIRA'
      Size = 3
    end
    object tCReceberParcNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 15
    end
    object tCReceberParcIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      FixedChar = True
      Size = 1
    end
    object tCReceberParcCODCENTROCUSTO: TIntegerField
      FieldName = 'CODCENTROCUSTO'
    end
    object tCReceberParcOBS: TBlobField
      FieldName = 'OBS'
      Size = 1
    end
  end
  object dsCReceberParc: TDataSource
    DataSet = tCReceberParc
    Left = 395
    Top = 208
  end
  object CPagarParc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select CPAGARPARC.*, PESSOA.NOME'#13#10'from CPAGARPARC'#13#10'left join PES' +
      'SOA on'#13#10'(PESSOA.ID = CPAGARPARC.CODFORNECEDOR)'#13#10'where CODFORNECE' +
      'DOR = :CODFORNECEDOR and'#13#10'           NUMCPAGAR = :NUMCPAGAR and'#13 +
      #10'           PARCELA = :PARCELA'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODFORNECEDOR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMCPAGAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PARCELA'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 341
    Top = 163
    object CPagarParcNUMCPAGAR: TIntegerField
      FieldName = 'NUMCPAGAR'
      Required = True
    end
    object CPagarParcPARCELA: TStringField
      FieldName = 'PARCELA'
      Required = True
      Size = 3
    end
    object CPagarParcNUMDUPLICATA: TIntegerField
      FieldName = 'NUMDUPLICATA'
    end
    object CPagarParcVLRVENCIMENTO: TFloatField
      FieldName = 'VLRVENCIMENTO'
    end
    object CPagarParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object CPagarParcQUITADO: TStringField
      FieldName = 'QUITADO'
      FixedChar = True
      Size = 1
    end
    object CPagarParcVLRJUROS: TFloatField
      FieldName = 'VLRJUROS'
    end
    object CPagarParcDTPAGTO: TDateField
      FieldName = 'DTPAGTO'
    end
    object CPagarParcCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object CPagarParcNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object CPagarParcVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
    end
    object CPagarParcVLRPAGTO: TFloatField
      FieldName = 'VLRPAGTO'
    end
    object CPagarParcVLRRESTANTE: TFloatField
      FieldName = 'VLRRESTANTE'
    end
    object CPagarParcCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object CPagarParcVLRDESPESA: TFloatField
      FieldName = 'VLRDESPESA'
    end
    object CPagarParcCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
    object CPagarParcPGCARTORIO: TStringField
      FieldName = 'PGCARTORIO'
      FixedChar = True
      Size = 1
    end
    object CPagarParcTITPROTESTADO: TStringField
      FieldName = 'TITPROTESTADO'
      FixedChar = True
      Size = 1
    end
    object CPagarParcQTDDIASPROT: TIntegerField
      FieldName = 'QTDDIASPROT'
    end
    object CPagarParcDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object CPagarParcCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
    end
    object CPagarParcDIASATRASO: TIntegerField
      FieldName = 'DIASATRASO'
    end
    object CPagarParcJUROSPAGOS: TFloatField
      FieldName = 'JUROSPAGOS'
    end
    object CPagarParcCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object CPagarParcTIPODOC: TStringField
      FieldName = 'TIPODOC'
      Size = 2
    end
    object CPagarParcVLRDEVOLUCAO: TFloatField
      FieldName = 'VLRDEVOLUCAO'
    end
    object CPagarParcDTRECTO: TDateField
      FieldName = 'DTRECTO'
    end
    object CPagarParcDTDEVOLUCAO: TDateField
      FieldName = 'DTDEVOLUCAO'
    end
    object CPagarParcNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 40
    end
    object CPagarParcCODCENTROCUSTO: TIntegerField
      FieldName = 'CODCENTROCUSTO'
    end
  end
  object CPagarParcP: TDataSetProvider
    DataSet = CPagarParc
    OnUpdateError = PessoaPUpdateError
    Left = 355
    Top = 163
  end
  object tCPagarParc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CPagarParcP'
    OnNewRecord = tCPagarParcNewRecord
    Left = 369
    Top = 163
    object tCPagarParcNUMCPAGAR: TIntegerField
      FieldName = 'NUMCPAGAR'
      Required = True
    end
    object tCPagarParcPARCELA: TStringField
      FieldName = 'PARCELA'
      Required = True
      Size = 3
    end
    object tCPagarParcNUMDUPLICATA: TIntegerField
      FieldName = 'NUMDUPLICATA'
    end
    object tCPagarParcVLRVENCIMENTO: TFloatField
      FieldName = 'VLRVENCIMENTO'
      DisplayFormat = '###,###,##0.00'
    end
    object tCPagarParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object tCPagarParcQUITADO: TStringField
      FieldName = 'QUITADO'
      FixedChar = True
      Size = 1
    end
    object tCPagarParcVLRJUROS: TFloatField
      FieldName = 'VLRJUROS'
      DisplayFormat = '###,###,##0.00'
    end
    object tCPagarParcDTPAGTO: TDateField
      FieldName = 'DTPAGTO'
    end
    object tCPagarParcCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object tCPagarParcNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object tCPagarParcVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object tCPagarParcVLRPAGTO: TFloatField
      FieldName = 'VLRPAGTO'
      DisplayFormat = '###,###,##0.00'
    end
    object tCPagarParcVLRRESTANTE: TFloatField
      FieldName = 'VLRRESTANTE'
      DisplayFormat = '###,###,##0.00'
    end
    object tCPagarParcCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object tCPagarParcVLRDESPESA: TFloatField
      FieldName = 'VLRDESPESA'
      DisplayFormat = '###,###,##0.00'
    end
    object tCPagarParcCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
    object tCPagarParcPGCARTORIO: TStringField
      FieldName = 'PGCARTORIO'
      FixedChar = True
      Size = 1
    end
    object tCPagarParcTITPROTESTADO: TStringField
      FieldName = 'TITPROTESTADO'
      FixedChar = True
      Size = 1
    end
    object tCPagarParcQTDDIASPROT: TIntegerField
      FieldName = 'QTDDIASPROT'
    end
    object tCPagarParcCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
    end
    object tCPagarParcDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object tCPagarParcDIASATRASO: TIntegerField
      FieldName = 'DIASATRASO'
    end
    object tCPagarParcJUROSPAGOS: TFloatField
      FieldName = 'JUROSPAGOS'
      DisplayFormat = '###,###,##0.00'
    end
    object tCPagarParcCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object tCPagarParcTIPODOC: TStringField
      FieldName = 'TIPODOC'
      Size = 2
    end
    object tCPagarParcVLRDEVOLUCAO: TFloatField
      FieldName = 'VLRDEVOLUCAO'
      DisplayFormat = '###,###,##0.00'
    end
    object tCPagarParcDTRECTO: TDateField
      FieldName = 'DTRECTO'
    end
    object tCPagarParcDTDEVOLUCAO: TDateField
      FieldName = 'DTDEVOLUCAO'
    end
    object tCPagarParcNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 40
    end
    object tCPagarParcCODCENTROCUSTO: TIntegerField
      FieldName = 'CODCENTROCUSTO'
    end
  end
  object dsCPagarParc: TDataSource
    DataSet = tCPagarParc
    Left = 386
    Top = 163
  end
  object CPagarHist: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select * '#13#10'from CPAGARHIST'#13#10'where NUMCPAGAR = :NUMCPAGAR and'#13#10'  ' +
      '         CODFORNECEDOR = :CODFORNECEDOR AND'#13#10'           PARCELA ' +
      '= :PARCELA'#13#10'Order by ITEM'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUMCPAGAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODFORNECEDOR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PARCELA'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 432
    Top = 163
  end
  object CPagarHistP: TDataSetProvider
    DataSet = CPagarHist
    OnUpdateError = PessoaPUpdateError
    Left = 444
    Top = 163
  end
  object tCPagarHist: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CPagarHistP'
    OnNewRecord = tCPagarHistNewRecord
    Left = 458
    Top = 163
    object tCPagarHistNUMCPAGAR: TIntegerField
      FieldName = 'NUMCPAGAR'
      Required = True
    end
    object tCPagarHistPARCELA: TStringField
      FieldName = 'PARCELA'
      Required = True
      Size = 3
    end
    object tCPagarHistITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object tCPagarHistHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 70
    end
    object tCPagarHistDTHISTORICO: TDateField
      FieldName = 'DTHISTORICO'
    end
    object tCPagarHistDTULTPGTO: TDateField
      FieldName = 'DTULTPGTO'
    end
    object tCPagarHistVLRULTPGTO: TFloatField
      FieldName = 'VLRULTPGTO'
      DisplayFormat = '0.00'
    end
    object tCPagarHistVLRULTJUROSPAGO: TFloatField
      FieldName = 'VLRULTJUROSPAGO'
      DisplayFormat = '0.00'
    end
    object tCPagarHistVLRULTDESCONTO: TFloatField
      FieldName = 'VLRULTDESCONTO'
      DisplayFormat = '0.00'
    end
    object tCPagarHistVLRULTDESPESA: TFloatField
      FieldName = 'VLRULTDESPESA'
      DisplayFormat = '0.00'
    end
    object tCPagarHistTIPOHIST: TStringField
      FieldName = 'TIPOHIST'
      FixedChar = True
      Size = 1
    end
    object tCPagarHistCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
    object tCPagarHistNUMMOVFINANC: TIntegerField
      FieldName = 'NUMMOVFINANC'
    end
    object tCPagarHistNUMMOVJUROS: TIntegerField
      FieldName = 'NUMMOVJUROS'
    end
    object tCPagarHistVLRULTDEVOLUCAO: TFloatField
      FieldName = 'VLRULTDEVOLUCAO'
      DisplayFormat = '0.00'
    end
    object tCPagarHistCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object tCPagarHistNUMDUPLICATA: TIntegerField
      FieldName = 'NUMDUPLICATA'
    end
  end
  object dsCPagarHist: TDataSource
    DataSet = tCPagarHist
    Left = 474
    Top = 163
  end
  object MovFinanceiro: TSQLDataSet
    CommandText = 
      'select * '#13#10'from MOVFINANCEIRO'#13#10'where NUMMOVTO = :CODIGO'#13#10'Order b' +
      'y CODBANCO, NUMMOVTO'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 260
    Top = 208
  end
  object MovFinanceiroP: TDataSetProvider
    DataSet = MovFinanceiro
    OnUpdateError = PessoaPUpdateError
    Left = 270
    Top = 208
  end
  object tMovFinanceiro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MovFinanceiroP'
    OnNewRecord = tMovFinanceiroNewRecord
    Left = 284
    Top = 208
    object tMovFinanceiroNUMMOVTO: TIntegerField
      FieldName = 'NUMMOVTO'
      Required = True
    end
    object tMovFinanceiroCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
    object tMovFinanceiroDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object tMovFinanceiroVLRENTRADA: TFloatField
      FieldName = 'VLRENTRADA'
      DisplayFormat = '###,###,##0.00'
    end
    object tMovFinanceiroVLRSAIDA: TFloatField
      FieldName = 'VLRSAIDA'
      DisplayFormat = '###,###,##0.00'
    end
    object tMovFinanceiroHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 100
    end
    object tMovFinanceiroTIPOMOV: TStringField
      FieldName = 'TIPOMOV'
      Size = 3
    end
    object tMovFinanceiroCODCENTROCUSTO: TIntegerField
      FieldName = 'CODCENTROCUSTO'
    end
    object tMovFinanceiroTIPOPESSOA: TStringField
      FieldName = 'TIPOPESSOA'
      FixedChar = True
      Size = 1
    end
    object tMovFinanceiroNOMEPESSOA: TStringField
      FieldName = 'NOMEPESSOA'
      Size = 40
    end
  end
  object dsMovFinanceiro: TDataSource
    DataSet = tMovFinanceiro
    Left = 302
    Top = 208
  end
  object CReceberHist: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select * '#13#10'from CRECEBERHIST'#13#10'where NUMCRECEBER = :CODIGO and'#13#10' ' +
      '          PARCELA = :PARCELA'#13#10'order by NUMCRECEBER, PARCELA, ITE' +
      'M'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PARCELA'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 430
    Top = 208
  end
  object CReceberHistP: TDataSetProvider
    DataSet = CReceberHist
    OnUpdateError = PessoaPUpdateError
    Left = 440
    Top = 208
  end
  object tCReceberHist: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CReceberHistP'
    OnNewRecord = tCReceberHistNewRecord
    Left = 455
    Top = 208
    object tCReceberHistNUMCRECEBER: TIntegerField
      FieldName = 'NUMCRECEBER'
      Required = True
    end
    object tCReceberHistPARCELA: TStringField
      FieldName = 'PARCELA'
      Required = True
      Size = 3
    end
    object tCReceberHistITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object tCReceberHistHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 70
    end
    object tCReceberHistDTHISTORICO: TDateField
      FieldName = 'DTHISTORICO'
    end
    object tCReceberHistDTULTPGTO: TDateField
      FieldName = 'DTULTPGTO'
    end
    object tCReceberHistVLRULTPGTO: TFloatField
      FieldName = 'VLRULTPGTO'
      DisplayFormat = '###,###,##0.00'
    end
    object tCReceberHistVLRULTJUROSPAGO: TFloatField
      FieldName = 'VLRULTJUROSPAGO'
      DisplayFormat = '###,###,##0.00'
    end
    object tCReceberHistVLRULTDESCONTO: TFloatField
      FieldName = 'VLRULTDESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object tCReceberHistVLRULTDESPESA: TFloatField
      FieldName = 'VLRULTDESPESA'
      DisplayFormat = '###,###,##0.00'
    end
    object tCReceberHistTIPOHIST: TStringField
      FieldName = 'TIPOHIST'
      FixedChar = True
      Size = 1
    end
    object tCReceberHistNUMMOVFINANC: TIntegerField
      FieldName = 'NUMMOVFINANC'
    end
    object tCReceberHistNUMMOVJUROS: TIntegerField
      FieldName = 'NUMMOVJUROS'
    end
    object tCReceberHistVLRULTDEVOLUCAO: TFloatField
      FieldName = 'VLRULTDEVOLUCAO'
    end
    object tCReceberHistNUMEXTCOMISSAO: TIntegerField
      FieldName = 'NUMEXTCOMISSAO'
    end
    object tCReceberHistCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object tCReceberHistNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object tCReceberHistCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
  end
  object dsCReceberHist: TDataSource
    DataSet = tCReceberHist
    Left = 471
    Top = 208
  end
  object SitTribCF: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT * '#13#10'FROM SITTRIBCF'#13#10'WHERE ECF = :Ecf'#13#10'ORDER BY ECF, CODIG' +
      'O'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Ecf'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 723
    Top = 9
  end
  object SitTribCFP: TDataSetProvider
    DataSet = SitTribCF
    OnUpdateError = PessoaPUpdateError
    Left = 739
    Top = 9
  end
  object tSitTribCF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SitTribCFP'
    Left = 755
    Top = 9
    object tSitTribCFECF: TIntegerField
      FieldName = 'ECF'
      Required = True
    end
    object tSitTribCFCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object tSitTribCFCOMANDO: TStringField
      FieldName = 'COMANDO'
      Size = 10
    end
    object tSitTribCFDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
  end
  object dsSitTribCF: TDataSource
    DataSet = tSitTribCF
    Left = 770
    Top = 9
  end
  object Pedido: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT A.*, B.NOME, C.NOME SERVICO, E.NOME CONDPGTO, F.DESCRICAO' +
      ' FORMA_PGTO'#13#10'FROM PEDIDO A'#13#10'FULL JOIN PESSOA B'#13#10'ON (A.CODCLIENTE' +
      ' = B.ID)'#13#10'LEFT JOIN PEDIDOSERVICO D'#13#10'ON (D.PEDIDO_ID = A.NUMLACT' +
      'O)'#13#10'LEFT JOIN SERVICO C'#13#10'ON (C.ID = D.SERVICOAVULSO_ID)'#13#10'LEFT JO' +
      'IN CONDPGTO E'#13#10'ON (E.ID = A.CODCONDPGTO)'#13#10'LEFT JOIN FORMAPGTO F'#13 +
      #10'ON (A.FORMA_PGTO_ID = F.ID)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 90
    Top = 208
    object PedidoNUMLACTO: TIntegerField
      FieldName = 'NUMLACTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object PedidoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object PedidoNUMORCAMENTO: TIntegerField
      FieldName = 'NUMORCAMENTO'
    end
    object PedidoNUMPEDIDO: TIntegerField
      FieldName = 'NUMPEDIDO'
    end
    object PedidoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object PedidoDTPEDIDO: TDateField
      FieldName = 'DTPEDIDO'
    end
    object PedidoDTPREVENTREGA: TDateField
      FieldName = 'DTPREVENTREGA'
    end
    object PedidoCODNATOPER: TIntegerField
      FieldName = 'CODNATOPER'
    end
    object PedidoCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
    end
    object PedidoINFCONDPGTO: TStringField
      FieldName = 'INFCONDPGTO'
      FixedChar = True
      Size = 1
    end
    object PedidoCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object PedidoDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object PedidoCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object PedidoMOTIVOCANC: TStringField
      FieldName = 'MOTIVOCANC'
      FixedChar = True
      Size = 1
    end
    object PedidoNUMORCAMENTOCOP: TIntegerField
      FieldName = 'NUMORCAMENTOCOP'
    end
    object PedidoNUMPEDCOP: TIntegerField
      FieldName = 'NUMPEDCOP'
    end
    object PedidoQTDDIASVALIDADE: TIntegerField
      FieldName = 'QTDDIASVALIDADE'
    end
    object PedidoCOPIADO: TStringField
      FieldName = 'COPIADO'
      FixedChar = True
      Size = 1
    end
    object PedidoSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object PedidoPEDIDOCLIENTE: TIntegerField
      FieldName = 'PEDIDOCLIENTE'
    end
    object PedidoOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object PedidoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object PedidoNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 40
    end
    object PedidoSERVICO2: TStringField
      FieldName = 'SERVICO'
      ProviderFlags = []
      Size = 40
    end
    object PedidoCONDPGTO: TStringField
      FieldName = 'CONDPGTO'
      ProviderFlags = []
    end
    object PedidoCLIENTE_NOME: TStringField
      FieldName = 'CLIENTE_NOME'
      Size = 40
    end
    object PedidoCLIENTE_FONE: TStringField
      FieldName = 'CLIENTE_FONE'
      Size = 15
    end
    object PedidoVLRMO: TFMTBCDField
      FieldName = 'VLRMO'
      Precision = 15
      Size = 2
    end
    object PedidoLUCRO: TFMTBCDField
      FieldName = 'LUCRO'
      Precision = 15
      Size = 2
    end
    object PedidoIMPOSTO: TFMTBCDField
      FieldName = 'IMPOSTO'
      Precision = 15
      Size = 2
    end
    object PedidoMELHOR_VCTO: TStringField
      FieldName = 'MELHOR_VCTO'
      Size = 2
    end
    object PedidoFORMA_PGTO_ID: TIntegerField
      FieldName = 'FORMA_PGTO_ID'
    end
    object PedidoFORMA_PGTO: TStringField
      FieldName = 'FORMA_PGTO'
      ProviderFlags = []
      Size = 25
    end
    object PedidoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object PedidoCIDADE_ID: TIntegerField
      FieldName = 'CIDADE_ID'
    end
    object PedidoENDERECO_NUM: TStringField
      FieldName = 'ENDERECO_NUM'
      Size = 5
    end
    object PedidoENDERECO_COMPL: TStringField
      FieldName = 'ENDERECO_COMPL'
      Size = 15
    end
    object PedidoPERCDESCONTO: TFMTBCDField
      FieldName = 'PERCDESCONTO'
      Precision = 15
      Size = 2
    end
    object PedidoVLRDESCONTO: TFMTBCDField
      FieldName = 'VLRDESCONTO'
      Precision = 15
      Size = 2
    end
    object PedidoPERCCOMISSAO: TFMTBCDField
      FieldName = 'PERCCOMISSAO'
      Precision = 15
      Size = 2
    end
    object PedidoVLRTOTAL: TFMTBCDField
      FieldName = 'VLRTOTAL'
      Precision = 15
      Size = 2
    end
    object PedidoPROBLEMAS: TMemoField
      FieldName = 'PROBLEMAS'
      BlobType = ftMemo
      Size = 1
    end
    object PedidoSOLUCOES: TMemoField
      FieldName = 'SOLUCOES'
      BlobType = ftMemo
      Size = 1
    end
    object PedidoVLRLUCRO: TFMTBCDField
      FieldName = 'VLRLUCRO'
      Precision = 15
      Size = 2
    end
    object PedidoVLRFOLHA: TFMTBCDField
      FieldName = 'VLRFOLHA'
      Precision = 15
      Size = 2
    end
    object PedidoVLRSUGERIDO: TFMTBCDField
      FieldName = 'VLRSUGERIDO'
      Precision = 15
      Size = 2
    end
  end
  object PedidoP: TDataSetProvider
    DataSet = Pedido
    OnUpdateError = PessoaPUpdateError
    Left = 106
    Top = 208
  end
  object tPedido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PedidoP'
    OnCalcFields = tPedidoCalcFields
    OnNewRecord = tPedidoNewRecord
    Left = 122
    Top = 208
    object tPedidoNUMLACTO: TIntegerField
      FieldName = 'NUMLACTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tPedidoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object tPedidoNUMORCAMENTO: TIntegerField
      FieldName = 'NUMORCAMENTO'
    end
    object tPedidoNUMPEDIDO: TIntegerField
      FieldName = 'NUMPEDIDO'
    end
    object tPedidoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object tPedidoDTPEDIDO: TDateField
      FieldName = 'DTPEDIDO'
    end
    object tPedidoDTPREVENTREGA: TDateField
      FieldName = 'DTPREVENTREGA'
    end
    object tPedidoCODNATOPER: TIntegerField
      FieldName = 'CODNATOPER'
    end
    object tPedidoCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
    end
    object tPedidoINFCONDPGTO: TStringField
      FieldName = 'INFCONDPGTO'
      FixedChar = True
      Size = 1
    end
    object tPedidoCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object tPedidoDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object tPedidoSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object tPedidoCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object tPedidoMOTIVOCANC: TStringField
      FieldName = 'MOTIVOCANC'
      FixedChar = True
      Size = 1
    end
    object tPedidoNUMORCAMENTOCOP: TIntegerField
      FieldName = 'NUMORCAMENTOCOP'
    end
    object tPedidoNUMPEDCOP: TIntegerField
      FieldName = 'NUMPEDCOP'
    end
    object tPedidoQTDDIASVALIDADE: TIntegerField
      FieldName = 'QTDDIASVALIDADE'
    end
    object tPedidoCOPIADO: TStringField
      FieldName = 'COPIADO'
      FixedChar = True
      Size = 1
    end
    object tPedidoPEDIDOCLIENTE: TIntegerField
      FieldName = 'PEDIDOCLIENTE'
    end
    object tPedidoOBSERVACAO: TBlobField
      FieldName = 'OBSERVACAO'
      Size = 1
    end
    object tPedidoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object tPedidoNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 40
    end
    object tPedidoSERVICO2: TStringField
      FieldName = 'SERVICO'
      ProviderFlags = []
      Size = 40
    end
    object tPedidoCONDPGTO: TStringField
      FieldName = 'CONDPGTO'
      ProviderFlags = []
    end
    object tPedidoclTipo: TStringField
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'clTipo'
      Size = 40
      Calculated = True
    end
    object tPedidoCLIENTE_NOME: TStringField
      FieldName = 'CLIENTE_NOME'
      Size = 40
    end
    object tPedidoCLIENTE_FONE: TStringField
      FieldName = 'CLIENTE_FONE'
      Size = 15
    end
    object tPedidoVLRMO: TFMTBCDField
      FieldName = 'VLRMO'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object tPedidoLUCRO: TFMTBCDField
      FieldName = 'LUCRO'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object tPedidoIMPOSTO: TFMTBCDField
      FieldName = 'IMPOSTO'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object tPedidoMELHOR_VCTO: TStringField
      FieldName = 'MELHOR_VCTO'
      Size = 2
    end
    object tPedidoFORMA_PGTO_ID: TIntegerField
      FieldName = 'FORMA_PGTO_ID'
    end
    object tPedidoFORMA_PGTO: TStringField
      FieldName = 'FORMA_PGTO'
      ProviderFlags = []
      Size = 25
    end
    object tPedidoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object tPedidoCIDADE_ID: TIntegerField
      FieldName = 'CIDADE_ID'
    end
    object tPedidoENDERECO_NUM: TStringField
      FieldName = 'ENDERECO_NUM'
      Size = 5
    end
    object tPedidoENDERECO_COMPL: TStringField
      FieldName = 'ENDERECO_COMPL'
      Size = 15
    end
    object tPedidoPERCDESCONTO: TFMTBCDField
      FieldName = 'PERCDESCONTO'
      Precision = 15
      Size = 2
    end
    object tPedidoVLRDESCONTO: TFMTBCDField
      FieldName = 'VLRDESCONTO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object tPedidoPERCCOMISSAO: TFMTBCDField
      FieldName = 'PERCCOMISSAO'
      Precision = 15
      Size = 2
    end
    object tPedidoVLRTOTAL: TFMTBCDField
      FieldName = 'VLRTOTAL'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object tPedidoPROBLEMAS: TMemoField
      FieldName = 'PROBLEMAS'
      BlobType = ftMemo
      Size = 1
    end
    object tPedidoSOLUCOES: TMemoField
      FieldName = 'SOLUCOES'
      BlobType = ftMemo
      Size = 1
    end
    object tPedidoVLRLUCRO: TFMTBCDField
      FieldName = 'VLRLUCRO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object tPedidoVLRFOLHA: TFMTBCDField
      FieldName = 'VLRFOLHA'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object tPedidoVLRSUGERIDO: TFMTBCDField
      FieldName = 'VLRSUGERIDO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
  end
  object dsPedido: TDataSource
    DataSet = tPedido
    Left = 137
    Top = 208
  end
  object PedidoIt: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select PEDIDOIT.*, PRODUTO.NOME PRODUTO'#13#10'from PEDIDOIT'#13#10'inner jo' +
      'in PRODUTO on'#13#10'(PRODUTO.ID = PEDIDOIT.CODPRODUTO)'#13#10'where PEDIDOI' +
      'T.NUMLACTO = :P1'#13#10'order by PEDIDOIT.NUMLACTO, PEDIDOIT.ITEM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'P1'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 179
    Top = 208
    object PedidoItNUMLACTO: TIntegerField
      FieldName = 'NUMLACTO'
      Required = True
    end
    object PedidoItITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object PedidoItCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object PedidoItTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 3
    end
    object PedidoItNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object PedidoItNUMCUPOM: TIntegerField
      FieldName = 'NUMCUPOM'
    end
    object PedidoItUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object PedidoItCODSITTRIB: TIntegerField
      FieldName = 'CODSITTRIB'
    end
    object PedidoItPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Size = 40
    end
    object PedidoItCOPIADO: TStringField
      FieldName = 'COPIADO'
      FixedChar = True
      Size = 1
    end
    object PedidoItSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object PedidoItNUMLANCORCCOP: TIntegerField
      FieldName = 'NUMLANCORCCOP'
    end
    object PedidoItVLRMO: TFMTBCDField
      FieldName = 'VLRMO'
      Precision = 15
      Size = 2
    end
    object PedidoItQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 2
    end
    object PedidoItVLRUNITARIO: TFMTBCDField
      FieldName = 'VLRUNITARIO'
      Precision = 15
      Size = 2
    end
    object PedidoItVLRTOTAL: TFMTBCDField
      FieldName = 'VLRTOTAL'
      Precision = 15
      Size = 2
    end
    object PedidoItPERCDESCONTO: TFMTBCDField
      FieldName = 'PERCDESCONTO'
      Precision = 15
      Size = 2
    end
    object PedidoItVLRDESCONTO: TFMTBCDField
      FieldName = 'VLRDESCONTO'
      Precision = 15
      Size = 2
    end
  end
  object PedidoItP: TDataSetProvider
    DataSet = PedidoIt
    OnUpdateError = PessoaPUpdateError
    Left = 193
    Top = 208
  end
  object tPedidoIt: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PedidoItP'
    OnNewRecord = tPedidoItNewRecord
    Left = 208
    Top = 208
    object tPedidoItNUMLACTO: TIntegerField
      FieldName = 'NUMLACTO'
      Required = True
    end
    object tPedidoItITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object tPedidoItCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object tPedidoItTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 3
    end
    object tPedidoItSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object tPedidoItNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object tPedidoItNUMCUPOM: TIntegerField
      FieldName = 'NUMCUPOM'
    end
    object tPedidoItUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object tPedidoItCODSITTRIB: TIntegerField
      FieldName = 'CODSITTRIB'
    end
    object tPedidoItPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Size = 40
    end
    object tPedidoItCOPIADO: TStringField
      FieldName = 'COPIADO'
      FixedChar = True
      Size = 1
    end
    object tPedidoItNUMLANCORCCOP: TIntegerField
      FieldName = 'NUMLANCORCCOP'
    end
    object tPedidoItVLRMO: TFMTBCDField
      FieldName = 'VLRMO'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object tPedidoItQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 2
    end
    object tPedidoItVLRUNITARIO: TFMTBCDField
      FieldName = 'VLRUNITARIO'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object tPedidoItVLRTOTAL: TFMTBCDField
      FieldName = 'VLRTOTAL'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object tPedidoItPERCDESCONTO: TFMTBCDField
      FieldName = 'PERCDESCONTO'
      Precision = 15
      Size = 2
    end
    object tPedidoItVLRDESCONTO: TFMTBCDField
      FieldName = 'VLRDESCONTO'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
  end
  object dsPedidoIt: TDataSource
    DataSet = tPedidoIt
    Left = 223
    Top = 208
  end
  object Telefone: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select * '#13#10'from TELEFONE'#13#10'where CODPESSOA = :P1'#13#10'ORDER BY CODPES' +
      'SOA, ITEM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'P1'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 8
    Top = 208
    object TelefoneCODPESSOA: TIntegerField
      FieldName = 'CODPESSOA'
      Required = True
    end
    object TelefoneITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object TelefoneTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object TelefoneCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 40
    end
    object TelefoneSETOR: TStringField
      FieldName = 'SETOR'
      Size = 30
    end
    object TelefoneEMAIL: TStringField
      FieldName = 'EMAIL'
    end
    object TelefoneRAMAL: TIntegerField
      FieldName = 'RAMAL'
    end
    object TelefoneANIVERSARIO: TDateField
      FieldName = 'ANIVERSARIO'
    end
  end
  object TelefoneP: TDataSetProvider
    DataSet = Telefone
    OnUpdateError = PessoaPUpdateError
    Left = 24
    Top = 208
  end
  object tTelefone: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TelefoneP'
    Left = 40
    Top = 208
    object tTelefoneCODPESSOA: TIntegerField
      FieldName = 'CODPESSOA'
      Required = True
    end
    object tTelefoneITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object tTelefoneTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object tTelefoneCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 40
    end
    object tTelefoneSETOR: TStringField
      FieldName = 'SETOR'
      Size = 30
    end
    object tTelefoneEMAIL: TStringField
      FieldName = 'EMAIL'
    end
    object tTelefoneRAMAL: TIntegerField
      FieldName = 'RAMAL'
    end
    object tTelefoneANIVERSARIO: TDateField
      FieldName = 'ANIVERSARIO'
    end
  end
  object dsTelefone: TDataSource
    DataSet = tTelefone
    Left = 55
    Top = 208
  end
  object OS: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT A.*, B.NOME'#13#10'FROM OS A'#13#10'INNER JOIN PESSOA B'#13#10'ON (A.IDCLIE' +
      'NTE = B.ID)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 678
    Top = 162
    object OSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object OSIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
    end
    object OSDATA: TDateField
      FieldName = 'DATA'
    end
    object OSDATAPREVISAO: TDateField
      FieldName = 'DATAPREVISAO'
    end
    object OSDATAENTREGA: TDateField
      FieldName = 'DATAENTREGA'
    end
    object OSSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object OSVALOR: TIntegerField
      FieldName = 'VALOR'
    end
    object OSEQUIPAMENTO: TIntegerField
      FieldName = 'EQUIPAMENTO'
    end
    object OSPROBLEMARELATADO: TMemoField
      FieldName = 'PROBLEMARELATADO'
      BlobType = ftMemo
      Size = 1
    end
    object OSPROBLEMADETECTADO: TMemoField
      FieldName = 'PROBLEMADETECTADO'
      BlobType = ftMemo
      Size = 1
    end
    object OSSERIAL: TStringField
      FieldName = 'SERIAL'
    end
    object OSNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 40
    end
  end
  object pOS: TDataSetProvider
    DataSet = OS
    OnUpdateError = PessoaPUpdateError
    Left = 688
    Top = 162
  end
  object tOS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pOS'
    Left = 703
    Top = 162
    object tOSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object tOSIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
    end
    object tOSDATA: TDateField
      FieldName = 'DATA'
    end
    object tOSDATAPREVISAO: TDateField
      FieldName = 'DATAPREVISAO'
    end
    object tOSDATAENTREGA: TDateField
      FieldName = 'DATAENTREGA'
    end
    object tOSSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object tOSVALOR: TIntegerField
      FieldName = 'VALOR'
    end
    object tOSEQUIPAMENTO: TIntegerField
      FieldName = 'EQUIPAMENTO'
    end
    object tOSPROBLEMARELATADO: TMemoField
      FieldName = 'PROBLEMARELATADO'
      BlobType = ftMemo
      Size = 1
    end
    object tOSPROBLEMADETECTADO: TMemoField
      FieldName = 'PROBLEMADETECTADO'
      BlobType = ftMemo
      Size = 1
    end
    object tOSSERIAL: TStringField
      FieldName = 'SERIAL'
    end
    object tOSNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 40
    end
  end
  object dsOS: TDataSource
    DataSet = tOS
    Left = 719
    Top = 162
  end
  object Juros: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select *'#13#10'from JUROS'#13#10'where ANO = :Ano and MES = :Mes'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Ano'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Mes'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 176
    Top = 161
  end
  object JurosP: TDataSetProvider
    DataSet = Juros
    OnUpdateError = PessoaPUpdateError
    Left = 192
    Top = 161
  end
  object tJuros: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'JurosP'
    Left = 208
    Top = 161
    object tJurosANO: TIntegerField
      FieldName = 'ANO'
      Required = True
    end
    object tJurosMES: TIntegerField
      FieldName = 'MES'
      Required = True
    end
    object tJurosJURO: TFloatField
      FieldName = 'JURO'
      DisplayFormat = '0.000'
    end
  end
  object dsJuros: TDataSource
    DataSet = tJuros
    Left = 223
    Top = 161
  end
  object DctoEstoque: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select * '#13#10'from DOCESTOQUE'#13#10'where NUMDOCTO = :CODIGO '#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 510
    Top = 208
  end
  object DctoEstoqueP: TDataSetProvider
    DataSet = DctoEstoque
    OnUpdateError = PessoaPUpdateError
    Left = 520
    Top = 208
  end
  object tDctoEstoque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DctoEstoqueP'
    Left = 535
    Top = 208
    object tDctoEstoqueNUMDOCTO: TIntegerField
      FieldName = 'NUMDOCTO'
      Required = True
    end
    object tDctoEstoqueDTMOV: TDateField
      FieldName = 'DTMOV'
    end
    object tDctoEstoqueES: TStringField
      FieldName = 'ES'
      FixedChar = True
      Size = 1
    end
    object tDctoEstoqueVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object tDctoEstoqueMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 50
    end
  end
  object dsDctoEstoque: TDataSource
    DataSet = tDctoEstoque
    Left = 551
    Top = 208
  end
  object DctoEstoqueIt: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select DOCESTOQUEIT.*, PRODUTO.NOME NOMEPRODUTO'#13#10'from DOCESTOQUE' +
      'IT'#13#10'inner join PRODUTO on'#13#10'(PRODUTO.ID = DOCESTOQUEIT.CODPRODUTO' +
      ')'#13#10'where DOCESTOQUEIT.NUMDOCTO = :CODIGO '#13#10'order by DOCESTOQUEIT' +
      '.NUMDOCTO, DOCESTOQUEIT.ITEM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 678
    Top = 254
    object DctoEstoqueItNUMDOCTO: TIntegerField
      FieldName = 'NUMDOCTO'
      Required = True
    end
    object DctoEstoqueItITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object DctoEstoqueItCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object DctoEstoqueItTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 3
    end
    object DctoEstoqueItUM: TStringField
      FieldName = 'UM'
      Size = 3
    end
    object DctoEstoqueItQTD: TFloatField
      FieldName = 'QTD'
    end
    object DctoEstoqueItPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object DctoEstoqueItPRECOTOTAL: TFloatField
      FieldName = 'PRECOTOTAL'
    end
    object DctoEstoqueItNUMMOVEST: TIntegerField
      FieldName = 'NUMMOVEST'
    end
    object DctoEstoqueItNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      ProviderFlags = []
      Size = 40
    end
  end
  object DctoEstoqueItP: TDataSetProvider
    DataSet = DctoEstoqueIt
    OnUpdateError = PessoaPUpdateError
    Left = 688
    Top = 254
  end
  object tDctoEstoqueIt: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DctoEstoqueItP'
    Left = 703
    Top = 254
    object tDctoEstoqueItNUMDOCTO: TIntegerField
      FieldName = 'NUMDOCTO'
      Required = True
    end
    object tDctoEstoqueItITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object tDctoEstoqueItCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object tDctoEstoqueItTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 3
    end
    object tDctoEstoqueItUM: TStringField
      FieldName = 'UM'
      Size = 3
    end
    object tDctoEstoqueItQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '0.00000'
    end
    object tDctoEstoqueItPRECO: TFloatField
      FieldName = 'PRECO'
      DisplayFormat = '###,###,##0.00'
    end
    object tDctoEstoqueItPRECOTOTAL: TFloatField
      FieldName = 'PRECOTOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object tDctoEstoqueItNUMMOVEST: TIntegerField
      FieldName = 'NUMMOVEST'
    end
    object tDctoEstoqueItNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      ProviderFlags = []
      Size = 40
    end
  end
  object dsDctoEstoqueIt: TDataSource
    DataSet = tDctoEstoqueIt
    Left = 719
    Top = 254
  end
  object Niveis: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * '#13#10'FROM NIVEIS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 8
    Top = 257
  end
  object pNiveis: TDataSetProvider
    DataSet = Niveis
    OnUpdateError = PessoaPUpdateError
    Left = 24
    Top = 257
  end
  object tNiveis: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CupomFiscalP'
    Left = 40
    Top = 257
    object tNiveisNUMCUPOM: TIntegerField
      FieldName = 'NUMCUPOM'
      Required = True
    end
    object tNiveisDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object tNiveisHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object tNiveisCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object tNiveisTIPOPAGTO: TStringField
      FieldName = 'TIPOPAGTO'
      FixedChar = True
      Size = 1
    end
    object tNiveisCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
    end
    object tNiveisCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object tNiveisBASEICMS: TFloatField
      FieldName = 'BASEICMS'
    end
    object tNiveisVLRICMS: TFloatField
      FieldName = 'VLRICMS'
    end
    object tNiveisVLRPRODUTOS: TFloatField
      FieldName = 'VLRPRODUTOS'
    end
    object tNiveisVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
    end
    object tNiveisVLRACRESCIMO: TFloatField
      FieldName = 'VLRACRESCIMO'
    end
    object tNiveisVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
    end
    object tNiveisCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object tNiveisPERCCOMISSAO: TFloatField
      FieldName = 'PERCCOMISSAO'
    end
    object tNiveisVLRTROCO: TFloatField
      FieldName = 'VLRTROCO'
    end
    object tNiveisNUMMOVFINANCEIRO: TIntegerField
      FieldName = 'NUMMOVFINANCEIRO'
    end
  end
  object dsNiveis: TDataSource
    DataSet = tNiveis
    Left = 55
    Top = 257
  end
  object Ususario: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * '#13#10'FROM USUARIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 88
    Top = 257
  end
  object pUsuario: TDataSetProvider
    DataSet = Ususario
    OnUpdateError = PessoaPUpdateError
    Left = 104
    Top = 257
  end
  object tUsuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pUsuario'
    Left = 120
    Top = 257
    object tUsuarioID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tUsuarioNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object tUsuarioLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 10
    end
    object tUsuarioSENHA: TStringField
      FieldName = 'SENHA'
      Size = 8
    end
    object tUsuarioEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object tUsuarioFONE: TStringField
      FieldName = 'FONE'
      Size = 14
    end
    object tUsuarioEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 50
    end
    object tUsuarioESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 50
    end
    object tUsuarioCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object tUsuarioENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object tUsuarioCEP: TStringField
      FieldName = 'CEP'
      Size = 15
    end
    object tUsuarioPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 40
    end
    object tUsuarioNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
  end
  object dsUsuario: TDataSource
    DataSet = tUsuario
    Left = 135
    Top = 257
  end
  object ProdutoFoto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select *'#13#10'from PRODUTOFOTO'#13#10'where CODPRODUTO = :Codigo'#13#10'order by' +
      ' CODPRODUTO, ITEM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 172
    Top = 256
  end
  object ProdutoFotoP: TDataSetProvider
    DataSet = ProdutoFoto
    OnUpdateError = PessoaPUpdateError
    Left = 188
    Top = 256
  end
  object tProdutoFoto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ProdutoFotoP'
    AfterScroll = tProdutoFotoAfterScroll
    Left = 204
    Top = 256
    object tProdutoFotoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object tProdutoFotoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object tProdutoFotoNOME: TStringField
      FieldName = 'NOME'
      Size = 18
    end
    object tProdutoFotoCAMINHO: TStringField
      FieldName = 'CAMINHO'
      Size = 200
    end
  end
  object dsProdutoFoto: TDataSource
    DataSet = tProdutoFoto
    Left = 219
    Top = 256
  end
  object ExtComissao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select *'#13#10'from EXTCOMISAO'#13#10'where NUMMOV = :Codigo'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 257
    Top = 256
    object ExtComissaoNUMMOV: TIntegerField
      FieldName = 'NUMMOV'
      Required = True
    end
    object ExtComissaoCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object ExtComissaoDTREFERENCIA: TDateField
      FieldName = 'DTREFERENCIA'
    end
    object ExtComissaoNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object ExtComissaoPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 3
    end
    object ExtComissaoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object ExtComissaoFUNCAO: TStringField
      FieldName = 'FUNCAO'
      FixedChar = True
      Size = 1
    end
    object ExtComissaoVLRBASE: TFloatField
      FieldName = 'VLRBASE'
    end
    object ExtComissaoPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
    object ExtComissaoVLRCOMISSAO: TFloatField
      FieldName = 'VLRCOMISSAO'
    end
    object ExtComissaoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object ExtComissaoOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
  end
  object ExtComissaoP: TDataSetProvider
    DataSet = ExtComissao
    OnUpdateError = PessoaPUpdateError
    Left = 273
    Top = 256
  end
  object tExtComissao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ExtComissaoP'
    Left = 289
    Top = 256
    object tExtComissaoNUMMOV: TIntegerField
      FieldName = 'NUMMOV'
      Required = True
    end
    object tExtComissaoCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object tExtComissaoDTREFERENCIA: TDateField
      FieldName = 'DTREFERENCIA'
    end
    object tExtComissaoNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object tExtComissaoPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 3
    end
    object tExtComissaoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object tExtComissaoFUNCAO: TStringField
      FieldName = 'FUNCAO'
      FixedChar = True
      Size = 1
    end
    object tExtComissaoVLRBASE: TFloatField
      FieldName = 'VLRBASE'
    end
    object tExtComissaoPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
    object tExtComissaoVLRCOMISSAO: TFloatField
      FieldName = 'VLRCOMISSAO'
    end
    object tExtComissaoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object tExtComissaoOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
  end
  object dsExtComissao: TDataSource
    DataSet = tExtComissao
    Left = 304
    Top = 256
  end
  object PlanoSaude: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PLANOSAUDE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 344
    Top = 257
  end
  object pPlanoSaude: TDataSetProvider
    DataSet = PlanoSaude
    OnUpdateError = PessoaPUpdateError
    Left = 360
    Top = 257
  end
  object tPlanoSaude: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pPlanoSaude'
    Left = 376
    Top = 257
    object tPlanoSaudeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object tPlanoSaudeNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object tPlanoSaudeFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
  end
  object dsPlanoSaude: TDataSource
    DataSet = tPlanoSaude
    Left = 391
    Top = 257
  end
  object Servico: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM SERVICO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 426
    Top = 258
  end
  object pServico: TDataSetProvider
    DataSet = Servico
    OnUpdateError = PessoaPUpdateError
    Left = 442
    Top = 258
  end
  object tServico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pServico'
    Left = 458
    Top = 258
    object tServicoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object tServicoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object tServicoVALORHORA: TStringField
      FieldName = 'VALORHORA'
      FixedChar = True
      Size = 1
    end
    object tServicoDESLOCAMENTO: TStringField
      FieldName = 'DESLOCAMENTO'
      FixedChar = True
      Size = 1
    end
    object tServicoPERMANENTE: TStringField
      FieldName = 'PERMANENTE'
      FixedChar = True
      Size = 1
    end
    object tServicoAVULSO: TStringField
      FieldName = 'AVULSO'
      FixedChar = True
      Size = 1
    end
  end
  object dsServico: TDataSource
    DataSet = tServico
    Left = 473
    Top = 258
  end
  object FormaPgto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM FORMAPGTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 598
    Top = 256
  end
  object pFormaPgto: TDataSetProvider
    DataSet = FormaPgto
    OnUpdateError = PessoaPUpdateError
    Left = 608
    Top = 256
  end
  object tFormaPgto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pFormaPgto'
    Left = 623
    Top = 256
    object tFormaPgtoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object tFormaPgtoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
  end
  object dsFormaPgto: TDataSource
    DataSet = tFormaPgto
    Left = 639
    Top = 256
  end
  object InstrCobranca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM INSTRCOBRANCA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 8
    Top = 305
  end
  object pInstrCobranca: TDataSetProvider
    DataSet = InstrCobranca
    OnUpdateError = PessoaPUpdateError
    Left = 24
    Top = 305
  end
  object tInstrCobranca: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'DESCRICAO'
    Params = <>
    ProviderName = 'PInstrCobranca'
    Left = 40
    Top = 305
    object tInstrCobrancaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object tInstrCobrancaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
  end
  object dsInstrCobranca: TDataSource
    DataSet = tInstrCobranca
    Left = 55
    Top = 305
  end
  object PessoaServico: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT A.*, B.NOME'#13#10'FROM PESSOA_SERVICO A'#13#10'INNER JOIN SERVICO B'#13 +
      #10'ON (A.SERVICO_ID = B.ID)'#13#10'WHERE A.PESSOA_ID = :P1'#13#10'ORDER BY PES' +
      'SOA_ID, SERVICO_ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'P1'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 168
    Top = 305
    object PessoaServicoPESSOA_ID: TIntegerField
      FieldName = 'PESSOA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object PessoaServicoSERVICO_ID: TIntegerField
      FieldName = 'SERVICO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object PessoaServicoDATAINI: TDateField
      FieldName = 'DATAINI'
    end
    object PessoaServicoDATAFIM: TDateField
      FieldName = 'DATAFIM'
    end
    object PessoaServicoNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 40
    end
    object PessoaServicoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
  end
  object pPessoaServico: TDataSetProvider
    DataSet = PessoaServico
    OnUpdateError = PessoaPUpdateError
    Left = 184
    Top = 305
  end
  object tPessoaServico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pPessoaServico'
    Left = 200
    Top = 305
    object tPessoaServicoPESSOA_ID: TIntegerField
      FieldName = 'PESSOA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tPessoaServicoSERVICO_ID: TIntegerField
      FieldName = 'SERVICO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tPessoaServicoDATAINI: TDateField
      FieldName = 'DATAINI'
      DisplayFormat = '00:00'
    end
    object tPessoaServicoDATAFIM: TDateField
      FieldName = 'DATAFIM'
      DisplayFormat = '00:00'
    end
    object tPessoaServicoNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 40
    end
    object tPessoaServicoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
  end
  object dsPessoaServico: TDataSource
    DataSet = tPessoaServico
    Left = 215
    Top = 305
  end
  object PedidoServico: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT A.*, B.NOME SERVICO'#13#10'FROM PEDIDOSERVICO A'#13#10'LEFT JOIN SERV' +
      'ICO B'#13#10'ON (A.SERVICO_ID = B.ID)'#13#10'WHERE PEDIDO_ID = :I1'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'I1'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 344
    Top = 305
    object PedidoServicoPEDIDO_ID: TIntegerField
      FieldName = 'PEDIDO_ID'
      Required = True
    end
    object PedidoServicoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object PedidoServicoSERVICO_ID: TIntegerField
      FieldName = 'SERVICO_ID'
    end
    object PedidoServicoDATAINI: TDateField
      FieldName = 'DATAINI'
    end
    object PedidoServicoDATAFIM: TDateField
      FieldName = 'DATAFIM'
    end
    object PedidoServicoHRINI: TTimeField
      FieldName = 'HRINI'
    end
    object PedidoServicoHRFIM: TTimeField
      FieldName = 'HRFIM'
    end
    object PedidoServicoEFETIVO: TSmallintField
      FieldName = 'EFETIVO'
    end
    object PedidoServicoDURACAO: TSmallintField
      FieldName = 'DURACAO'
    end
    object PedidoServicoRONDASDIA: TIntegerField
      FieldName = 'RONDASDIA'
    end
    object PedidoServicoVALORMES: TFMTBCDField
      FieldName = 'VALORMES'
      Precision = 15
      Size = 2
    end
    object PedidoServicoVALORSERVICO: TFMTBCDField
      FieldName = 'VALORSERVICO'
      Precision = 15
      Size = 2
    end
    object PedidoServicoSERVICOAVULSO_ID: TIntegerField
      FieldName = 'SERVICOAVULSO_ID'
    end
    object PedidoServicoSERVICOPERM_ID: TIntegerField
      FieldName = 'SERVICOPERM_ID'
    end
    object PedidoServicoQTD: TFloatField
      FieldName = 'QTD'
    end
    object PedidoServicoSERVICO: TStringField
      FieldName = 'SERVICO'
      ProviderFlags = []
      Size = 40
    end
  end
  object pPedidoServico: TDataSetProvider
    DataSet = PedidoServico
    OnUpdateError = PessoaPUpdateError
    Left = 360
    Top = 305
  end
  object tPedidoServico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pPedidoServico'
    Left = 376
    Top = 305
    object tPedidoServicoPEDIDO_ID: TIntegerField
      FieldName = 'PEDIDO_ID'
      Required = True
    end
    object tPedidoServicoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object tPedidoServicoDATAINI: TDateField
      FieldName = 'DATAINI'
    end
    object tPedidoServicoDATAFIM: TDateField
      FieldName = 'DATAFIM'
    end
    object tPedidoServicoHRINI: TTimeField
      FieldName = 'HRINI'
      DisplayFormat = 'hh:mm'
      EditMask = '99:99'
    end
    object tPedidoServicoHRFIM: TTimeField
      FieldName = 'HRFIM'
      DisplayFormat = 'hh:mm'
      EditMask = '99:99'
    end
    object tPedidoServicoEFETIVO: TSmallintField
      FieldName = 'EFETIVO'
    end
    object tPedidoServicoDURACAO: TSmallintField
      FieldName = 'DURACAO'
    end
    object tPedidoServicoRONDASDIA: TIntegerField
      FieldName = 'RONDASDIA'
    end
    object tPedidoServicoVALORMES: TFMTBCDField
      FieldName = 'VALORMES'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object tPedidoServicoVALORSERVICO: TFMTBCDField
      FieldName = 'VALORSERVICO'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object tPedidoServicoSERVICOAVULSO_ID: TIntegerField
      FieldName = 'SERVICOAVULSO_ID'
    end
    object tPedidoServicoSERVICO_ID: TIntegerField
      FieldName = 'SERVICO_ID'
    end
    object tPedidoServicoSERVICOPERM_ID: TIntegerField
      FieldName = 'SERVICOPERM_ID'
    end
    object tPedidoServicoQTD: TFloatField
      FieldName = 'QTD'
    end
    object tPedidoServicoSERVICO: TStringField
      FieldName = 'SERVICO'
      ProviderFlags = []
      Size = 40
    end
  end
  object dsPedidoServico: TDataSource
    DataSet = tPedidoServico
    Left = 391
    Top = 305
  end
  object PedidoServicoPermanente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT A.*, B.NOME SERVICO'#13#10'FROM PEDIDOSERVPERMANENTE A'#13#10'INNER J' +
      'OIN SERVICO B'#13#10'ON (A.SERVICO_ID = B.ID)'#13#10'WHERE PEDIDO_ID = :P1'#13#10 +
      'ORDER BY PEDIDO_ID, ITEM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'P1'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 424
    Top = 305
    object PedidoServicoPermanentePEDIDO_ID: TIntegerField
      FieldName = 'PEDIDO_ID'
      Required = True
    end
    object PedidoServicoPermanenteITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object PedidoServicoPermanenteSERVICO_ID: TIntegerField
      FieldName = 'SERVICO_ID'
    end
    object PedidoServicoPermanenteQTD: TIntegerField
      FieldName = 'QTD'
    end
    object PedidoServicoPermanenteSEG_HR_INI: TTimeField
      FieldName = 'SEG_HR_INI'
    end
    object PedidoServicoPermanenteSEG_HR_FIM: TTimeField
      FieldName = 'SEG_HR_FIM'
    end
    object PedidoServicoPermanenteTER_HR_INI: TTimeField
      FieldName = 'TER_HR_INI'
    end
    object PedidoServicoPermanenteTER_HR_FIM: TTimeField
      FieldName = 'TER_HR_FIM'
    end
    object PedidoServicoPermanenteQUA_HR_INI: TTimeField
      FieldName = 'QUA_HR_INI'
    end
    object PedidoServicoPermanenteQUA_HR_FIM: TTimeField
      FieldName = 'QUA_HR_FIM'
    end
    object PedidoServicoPermanenteQUI_HR_INI: TTimeField
      FieldName = 'QUI_HR_INI'
    end
    object PedidoServicoPermanenteQUI_HR_FIM: TTimeField
      FieldName = 'QUI_HR_FIM'
    end
    object PedidoServicoPermanenteSEX_HR_INI: TTimeField
      FieldName = 'SEX_HR_INI'
    end
    object PedidoServicoPermanenteSEX_HR_FIM: TTimeField
      FieldName = 'SEX_HR_FIM'
    end
    object PedidoServicoPermanenteSAB_HR_INI: TTimeField
      FieldName = 'SAB_HR_INI'
    end
    object PedidoServicoPermanenteSAB_HR_FIM: TTimeField
      FieldName = 'SAB_HR_FIM'
    end
    object PedidoServicoPermanenteDOM_HR_INI: TTimeField
      FieldName = 'DOM_HR_INI'
    end
    object PedidoServicoPermanenteDOM_HR_FIM: TTimeField
      FieldName = 'DOM_HR_FIM'
    end
    object PedidoServicoPermanenteVLR: TFMTBCDField
      FieldName = 'VLR'
      Precision = 15
      Size = 2
    end
    object PedidoServicoPermanenteSERVICO: TStringField
      FieldName = 'SERVICO'
      ProviderFlags = []
      Size = 40
    end
    object PedidoServicoPermanenteESCALA_ID: TIntegerField
      FieldName = 'ESCALA_ID'
    end
    object PedidoServicoPermanenteHORAS: TFMTBCDField
      FieldName = 'HORAS'
      Precision = 15
      Size = 2
    end
  end
  object pPedidoServicoPermanente: TDataSetProvider
    DataSet = PedidoServicoPermanente
    OnUpdateError = PessoaPUpdateError
    Left = 440
    Top = 305
  end
  object tPedidoServicoPermanente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pPedidoServicoPermanente'
    Left = 456
    Top = 305
    object tPedidoServicoPermanentePEDIDO_ID: TIntegerField
      FieldName = 'PEDIDO_ID'
      Required = True
    end
    object tPedidoServicoPermanenteITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object tPedidoServicoPermanenteSERVICO_ID: TIntegerField
      FieldName = 'SERVICO_ID'
    end
    object tPedidoServicoPermanenteQTD: TIntegerField
      FieldName = 'QTD'
    end
    object tPedidoServicoPermanenteSEG_HR_INI: TTimeField
      DisplayWidth = 5
      FieldName = 'SEG_HR_INI'
      DisplayFormat = 'hh:mm'
      EditMask = '99:99'
    end
    object tPedidoServicoPermanenteSEG_HR_FIM: TTimeField
      DisplayWidth = 5
      FieldName = 'SEG_HR_FIM'
      DisplayFormat = 'hh:mm'
      EditMask = '99:99'
    end
    object tPedidoServicoPermanenteTER_HR_INI: TTimeField
      DisplayWidth = 5
      FieldName = 'TER_HR_INI'
      DisplayFormat = 'hh:mm'
      EditMask = '99:99'
    end
    object tPedidoServicoPermanenteTER_HR_FIM: TTimeField
      DisplayWidth = 5
      FieldName = 'TER_HR_FIM'
      DisplayFormat = 'hh:mm'
      EditMask = '99:99'
    end
    object tPedidoServicoPermanenteQUA_HR_INI: TTimeField
      DisplayWidth = 5
      FieldName = 'QUA_HR_INI'
      DisplayFormat = 'hh:mm'
      EditMask = '99:99'
    end
    object tPedidoServicoPermanenteQUA_HR_FIM: TTimeField
      DisplayWidth = 5
      FieldName = 'QUA_HR_FIM'
      DisplayFormat = 'hh:mm'
      EditMask = '99:99'
    end
    object tPedidoServicoPermanenteQUI_HR_INI: TTimeField
      DisplayWidth = 5
      FieldName = 'QUI_HR_INI'
      DisplayFormat = 'hh:mm'
      EditMask = '99:99'
    end
    object tPedidoServicoPermanenteQUI_HR_FIM: TTimeField
      DisplayWidth = 5
      FieldName = 'QUI_HR_FIM'
      DisplayFormat = 'hh:mm'
      EditMask = '99:99'
    end
    object tPedidoServicoPermanenteSEX_HR_INI: TTimeField
      DisplayWidth = 5
      FieldName = 'SEX_HR_INI'
      DisplayFormat = 'hh:mm'
      EditMask = '99:99'
    end
    object tPedidoServicoPermanenteSEX_HR_FIM: TTimeField
      DisplayWidth = 5
      FieldName = 'SEX_HR_FIM'
      DisplayFormat = 'hh:mm'
      EditMask = '99:99'
    end
    object tPedidoServicoPermanenteSAB_HR_INI: TTimeField
      DisplayWidth = 5
      FieldName = 'SAB_HR_INI'
      DisplayFormat = 'hh:mm'
      EditMask = '99:99'
    end
    object tPedidoServicoPermanenteSAB_HR_FIM: TTimeField
      DisplayWidth = 5
      FieldName = 'SAB_HR_FIM'
      DisplayFormat = 'hh:mm'
      EditMask = '99:99'
    end
    object tPedidoServicoPermanenteDOM_HR_INI: TTimeField
      DisplayWidth = 5
      FieldName = 'DOM_HR_INI'
      DisplayFormat = 'hh:mm'
      EditMask = '99:99'
    end
    object tPedidoServicoPermanenteDOM_HR_FIM: TTimeField
      DisplayWidth = 5
      FieldName = 'DOM_HR_FIM'
      DisplayFormat = 'hh:mm'
      EditMask = '99:99'
    end
    object tPedidoServicoPermanenteVLR: TFMTBCDField
      FieldName = 'VLR'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object tPedidoServicoPermanenteSERVICO: TStringField
      FieldName = 'SERVICO'
      ProviderFlags = []
      Size = 40
    end
    object tPedidoServicoPermanenteESCALA_ID: TIntegerField
      FieldName = 'ESCALA_ID'
    end
    object tPedidoServicoPermanenteHORAS: TFMTBCDField
      FieldName = 'HORAS'
      Precision = 15
      Size = 2
    end
  end
  object dsPedidoServicoPermanente: TDataSource
    DataSet = tPedidoServicoPermanente
    Left = 471
    Top = 305
  end
  object CriaCampos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'alter table empregados add vinculo Char(1)')
    SQLConnection = Conexao
    Left = 372
    Top = 500
  end
  object Clausula: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM CLAUSULA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 8
    Top = 350
  end
  object pClausula: TDataSetProvider
    DataSet = Clausula
    OnUpdateError = PessoaPUpdateError
    Left = 24
    Top = 350
  end
  object tClausula: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'pClausula'
    Left = 40
    Top = 350
    object tClausulaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object tClausulaNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object tClausulaDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dsClausula: TDataSource
    DataSet = tClausula
    Left = 55
    Top = 350
  end
  object Pedido_Clausula: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT A.*, B.NOME'#13#10'FROM PEDIDO_CLAUSULA A'#13#10'INNER JOIN CLAUSULA ' +
      'B'#13#10'ON (A.CLAUSULA_ID = B.ID)'#13#10'WHERE PEDIDO_ID = :I1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'I1'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 88
    Top = 350
    object Pedido_ClausulaPEDIDO_ID: TIntegerField
      FieldName = 'PEDIDO_ID'
      Required = True
    end
    object Pedido_ClausulaCLAUSULA_ID: TIntegerField
      FieldName = 'CLAUSULA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Pedido_ClausulaNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInKey]
      Size = 100
    end
    object Pedido_ClausulaDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      BlobType = ftMemo
      Size = 1
    end
  end
  object pPedido_Clausula: TDataSetProvider
    DataSet = Pedido_Clausula
    OnUpdateError = PessoaPUpdateError
    Left = 104
    Top = 350
  end
  object tPedido_Clausula: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PPedido_Clausula'
    Left = 120
    Top = 350
    object tPedido_ClausulaPEDIDO_ID: TIntegerField
      FieldName = 'PEDIDO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tPedido_ClausulaCLAUSULA_ID: TIntegerField
      FieldName = 'CLAUSULA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tPedido_ClausulaNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 100
    end
    object tPedido_ClausulaDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dsPedido_Clausula: TDataSource
    DataSet = tPedido_Clausula
    Left = 135
    Top = 350
  end
  object BcoItau: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select BCOITAU.*, BANCO.AGENCIA, BANCO.NUMCONTA, BANCO.DIGCONTA ' +
      #13#10'from BCOITAU'#13#10'inner join BANCO on'#13#10'BCOITAU.CODCONTA = BANCO.ID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 168
    Top = 350
    object BcoItauCODCEDENTE: TStringField
      FieldName = 'CODCEDENTE'
      Size = 12
    end
    object BcoItauCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      FixedChar = True
      Size = 1
    end
    object BcoItauACEITE: TStringField
      FieldName = 'ACEITE'
      FixedChar = True
      Size = 1
    end
    object BcoItauINSTRUCAO: TStringField
      FieldName = 'INSTRUCAO'
      Size = 2
    end
    object BcoItauDIASPROTESTO: TIntegerField
      FieldName = 'DIASPROTESTO'
    end
    object BcoItauCAMINHO: TStringField
      FieldName = 'CAMINHO'
      Size = 50
    end
    object BcoItauNOME: TStringField
      FieldName = 'NOME'
      Size = 8
    end
    object BcoItauEXTENSAO: TStringField
      FieldName = 'EXTENSAO'
      Size = 3
    end
    object BcoItauVLRDESCONTO: TFMTBCDField
      FieldName = 'VLRDESCONTO'
      Precision = 15
      Size = 2
    end
    object BcoItauVLRJUROSPORDIA: TFMTBCDField
      FieldName = 'VLRJUROSPORDIA'
      Precision = 15
      Size = 2
    end
    object BcoItauCODCONTA: TIntegerField
      FieldName = 'CODCONTA'
    end
    object BcoItauNUMCARTEIRA: TStringField
      FieldName = 'NUMCARTEIRA'
      Size = 3
    end
    object BcoItauESPECIEDOC: TStringField
      FieldName = 'ESPECIEDOC'
      Size = 2
    end
    object BcoItauINSTRCOBRANCA1: TStringField
      FieldName = 'INSTRCOBRANCA1'
      Size = 2
    end
    object BcoItauINSTRCOBRANCA2: TStringField
      FieldName = 'INSTRCOBRANCA2'
      Size = 2
    end
    object BcoItauAGENCIA: TStringField
      FieldName = 'AGENCIA'
      ProviderFlags = []
      Size = 6
    end
    object BcoItauNUMCONTA: TStringField
      FieldName = 'NUMCONTA'
      ProviderFlags = []
      Size = 10
    end
    object BcoItauDIGCONTA: TStringField
      FieldName = 'DIGCONTA'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object BcoItauSEQNOSSONUMERO: TIntegerField
      FieldName = 'SEQNOSSONUMERO'
    end
    object BcoItauDTLIMITEDESCONTO: TDateField
      FieldName = 'DTLIMITEDESCONTO'
    end
  end
  object BcoItauP: TDataSetProvider
    DataSet = BcoItau
    OnUpdateError = PessoaPUpdateError
    Left = 184
    Top = 350
  end
  object tBcoItau: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BcoItauP'
    Left = 200
    Top = 350
    object tBcoItauCODCEDENTE: TStringField
      FieldName = 'CODCEDENTE'
      Size = 12
    end
    object tBcoItauCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      FixedChar = True
      Size = 1
    end
    object tBcoItauACEITE: TStringField
      FieldName = 'ACEITE'
      FixedChar = True
      Size = 1
    end
    object tBcoItauINSTRUCAO: TStringField
      FieldName = 'INSTRUCAO'
      Size = 2
    end
    object tBcoItauDIASPROTESTO: TIntegerField
      FieldName = 'DIASPROTESTO'
    end
    object tBcoItauCAMINHO: TStringField
      FieldName = 'CAMINHO'
      Size = 50
    end
    object tBcoItauNOME: TStringField
      FieldName = 'NOME'
      Size = 8
    end
    object tBcoItauEXTENSAO: TStringField
      FieldName = 'EXTENSAO'
      Size = 3
    end
    object tBcoItauVLRDESCONTO: TFMTBCDField
      FieldName = 'VLRDESCONTO'
      Precision = 15
      Size = 2
    end
    object tBcoItauVLRJUROSPORDIA: TFMTBCDField
      FieldName = 'VLRJUROSPORDIA'
      Precision = 15
      Size = 2
    end
    object tBcoItauCODCONTA: TIntegerField
      FieldName = 'CODCONTA'
    end
    object tBcoItauNUMCARTEIRA: TStringField
      FieldName = 'NUMCARTEIRA'
      Size = 3
    end
    object tBcoItauESPECIEDOC: TStringField
      FieldName = 'ESPECIEDOC'
      Size = 2
    end
    object tBcoItauINSTRCOBRANCA1: TStringField
      FieldName = 'INSTRCOBRANCA1'
      Size = 2
    end
    object tBcoItauINSTRCOBRANCA2: TStringField
      FieldName = 'INSTRCOBRANCA2'
      Size = 2
    end
    object tBcoItauAGENCIA: TStringField
      FieldName = 'AGENCIA'
      ProviderFlags = []
      Size = 6
    end
    object tBcoItauNUMCONTA: TStringField
      FieldName = 'NUMCONTA'
      ProviderFlags = []
      Size = 10
    end
    object tBcoItauDIGCONTA: TStringField
      FieldName = 'DIGCONTA'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object tBcoItauSEQNOSSONUMERO: TIntegerField
      FieldName = 'SEQNOSSONUMERO'
    end
    object tBcoItauDTLIMITEDESCONTO: TDateField
      FieldName = 'DTLIMITEDESCONTO'
    end
  end
  object dsBcoItau: TDataSource
    DataSet = tBcoItau
    Left = 215
    Top = 350
  end
  object MovAvulso: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select MOVAVULSO.*'#13#10'from MOVAVULSO'#13#10'Where CODIGO = :codigo'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 256
    Top = 350
  end
  object MovAvulsoP: TDataSetProvider
    DataSet = MovAvulso
    OnUpdateError = PessoaPUpdateError
    Left = 272
    Top = 350
  end
  object tMovAvulso: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MovAvulsoP'
    OnNewRecord = tMovAvulsoNewRecord
    Left = 288
    Top = 350
    object tMovAvulsoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object tMovAvulsoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object tMovAvulsoVLRTOTAL: TFMTBCDField
      FieldName = 'VLRTOTAL'
      Precision = 15
      Size = 2
    end
    object tMovAvulsoVLRTOTALITENS: TFMTBCDField
      FieldName = 'VLRTOTALITENS'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object tMovAvulsoCONDPGTO: TIntegerField
      FieldName = 'CONDPGTO'
    end
    object tMovAvulsoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
  end
  object dsMovAvulso: TDataSource
    DataSet = tMovAvulso
    Left = 303
    Top = 350
  end
  object MovAvulsoItens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select * from MOVAVULSOITENS'#13#10'where CODIGO = :codigo'#13#10'ORDER BY C' +
      'ODIGO, ITENS'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 340
    Top = 350
  end
  object MovAvulsoItensP: TDataSetProvider
    DataSet = MovAvulsoItens
    OnUpdateError = PessoaPUpdateError
    Left = 356
    Top = 350
  end
  object tMovAvulsoItens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MovAvulsoItensP'
    OnNewRecord = tMovAvulsoItensNewRecord
    Left = 372
    Top = 350
    object tMovAvulsoItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object tMovAvulsoItensITENS: TIntegerField
      FieldName = 'ITENS'
      Required = True
    end
    object tMovAvulsoItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object tMovAvulsoItensVLRUNIT: TFMTBCDField
      FieldName = 'VLRUNIT'
      Precision = 15
      Size = 2
    end
    object tMovAvulsoItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object tMovAvulsoItensTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 2
    end
    object tMovAvulsoItensVLRTOTAL: TFMTBCDField
      FieldName = 'VLRTOTAL'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
  end
  object dsMovAvulsoItens: TDataSource
    DataSet = tMovAvulsoItens
    Left = 387
    Top = 350
  end
  object MovAvulsoParc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select * from MOVAVULSOPARC'#13#10'where CODIGO = :codigo'#13#10'ORDER BY CO' +
      'DIGO, PARCELA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 424
    Top = 351
  end
  object MovAvulsoParcP: TDataSetProvider
    DataSet = MovAvulsoParc
    OnUpdateError = PessoaPUpdateError
    Left = 440
    Top = 351
  end
  object tMovAvulsoParc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MovAvulsoParcP'
    OnNewRecord = tMovAvulsoParcNewRecord
    Left = 456
    Top = 351
    object tMovAvulsoParcCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object tMovAvulsoParcPARCELA: TIntegerField
      FieldName = 'PARCELA'
      Required = True
    end
    object tMovAvulsoParcNUMCRECEBER: TIntegerField
      FieldName = 'NUMCRECEBER'
    end
    object tMovAvulsoParcDTVENC: TDateField
      FieldName = 'DTVENC'
    end
    object tMovAvulsoParcVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
  end
  object dsMovAvulsoParc: TDataSource
    DataSet = tMovAvulsoParc
    Left = 471
    Top = 351
  end
  object CentroCusto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM CENTROCUSTO'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 15
    Top = 396
  end
  object CentroCustoP: TDataSetProvider
    DataSet = CentroCusto
    OnUpdateError = PessoaPUpdateError
    Left = 31
    Top = 396
  end
  object tCentroCusto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'CentroCustoP'
    Left = 47
    Top = 396
    object tCentroCustoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object tCentroCustoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsCentroCusto: TDataSource
    DataSet = tCentroCusto
    Left = 62
    Top = 396
  end
  object PrevCentroCusto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PREVCENTROCUSTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 104
    Top = 396
  end
  object PrevCentroCustoP: TDataSetProvider
    DataSet = PrevCentroCusto
    Left = 120
    Top = 396
  end
  object tPrevCentroCusto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PrevCentroCustoP'
    OnNewRecord = tPrevCentroCustoNewRecord
    Left = 136
    Top = 396
    object tPrevCentroCustoCODCENTROCUSTO: TIntegerField
      FieldName = 'CODCENTROCUSTO'
      Required = True
    end
    object tPrevCentroCustoANO: TIntegerField
      FieldName = 'ANO'
      Required = True
    end
    object tPrevCentroCustoMES: TIntegerField
      FieldName = 'MES'
      Required = True
    end
    object tPrevCentroCustoVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsPrevCentroCusto: TDataSource
    DataSet = tPrevCentroCusto
    Left = 152
    Top = 396
  end
  object qPessoa: TADOQuery
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=MTA;M' +
      'ode=ReadWrite'
    Parameters = <>
    Left = 400
    Top = 436
  end
  object dsmPessoa: TDataSource
    DataSet = Pessoa
    Left = 104
    Top = 8
  end
  object sdsPessoaHist: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * '#13#10'FROM PESSOA_HIST'#13#10'WHERE PESSOA_ID = :PESSOA_ID '
    DataSource = dsmPessoa
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PESSOA_ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = Conexao
    Left = 16
    Top = 496
    object sdsPessoaHistID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPessoaHistPESSOA_ID: TIntegerField
      FieldName = 'PESSOA_ID'
    end
    object sdsPessoaHistDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsPessoaHistHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 200
    end
    object sdsPessoaHistDATA_AGENDA: TDateField
      FieldName = 'DATA_AGENDA'
    end
    object sdsPessoaHistUSUARIO_RESP: TStringField
      FieldName = 'USUARIO_RESP'
    end
    object sdsPessoaHistCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsPessoaHist: TClientDataSet
    Aggregates = <>
    DataSetField = tPessoasdsPessoaHist
    Params = <>
    Left = 48
    Top = 496
    object cdsPessoaHistID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPessoaHistPESSOA_ID: TIntegerField
      FieldName = 'PESSOA_ID'
    end
    object cdsPessoaHistDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsPessoaHistHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 200
    end
    object cdsPessoaHistDATA_AGENDA: TDateField
      FieldName = 'DATA_AGENDA'
    end
    object cdsPessoaHistUSUARIO_RESP: TStringField
      FieldName = 'USUARIO_RESP'
    end
    object cdsPessoaHistCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
  end
  object dsPessoaHist: TDataSource
    DataSet = cdsPessoaHist
    Left = 56
    Top = 496
  end
  object sdsPessoaChave: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * '#13#10'FROM PESSOA_CHAVES'#13#10'WHERE PESSOA_ID = :PESSOA_ID '
    DataSource = dsmPessoa
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PESSOA_ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = Conexao
    Left = 112
    Top = 496
    object sdsPessoaChaveID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPessoaChavePESSOA_ID: TIntegerField
      FieldName = 'PESSOA_ID'
    end
    object sdsPessoaChaveCHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 128
    end
    object sdsPessoaChaveTIPO: TStringField
      FieldName = 'TIPO'
      Size = 2
    end
  end
  object cdsPessoaChave: TClientDataSet
    Aggregates = <>
    DataSetField = tPessoasdsPessoaChave
    Params = <>
    OnCalcFields = cdsPessoaChaveCalcFields
    Left = 144
    Top = 496
    object cdsPessoaChaveID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPessoaChavePESSOA_ID: TIntegerField
      FieldName = 'PESSOA_ID'
    end
    object cdsPessoaChaveclTipo: TStringField
      FieldKind = fkCalculated
      FieldName = 'clTipo'
      Size = 30
      Calculated = True
    end
    object cdsPessoaChaveCHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 128
    end
    object cdsPessoaChaveTIPO: TStringField
      FieldName = 'TIPO'
      Size = 2
    end
  end
  object dsPessoaChave: TDataSource
    DataSet = cdsPessoaChave
    Left = 168
    Top = 496
  end
  object Decoder1: TIdDecoderMIME
    FillChar = '='
    Left = 541
    Top = 432
  end
  object sdsPessoaModulos: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PM.*, M.NOME MODULO_NOME'#13#10'FROM PESSOA_MODULOS PM'#13#10'INNER J' +
      'OIN MODULO M ON (PM.MODULO_ID = M.ID)'#13#10'WHERE PM.ID = :ID'
    DataSource = dsmPessoa
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = Conexao
    Left = 192
    Top = 396
    object sdsPessoaModulosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoaModulosMODULO_ID: TIntegerField
      FieldName = 'MODULO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoaModulosLIBERADO: TStringField
      FieldName = 'LIBERADO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaModulosMODULO_NOME: TStringField
      FieldName = 'MODULO_NOME'
      ProviderFlags = []
      Size = 40
    end
  end
  object cdsPessoaModulos: TClientDataSet
    Aggregates = <>
    DataSetField = tPessoasdsPessoaModulos
    Params = <>
    Left = 208
    Top = 396
    object cdsPessoaModulosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoaModulosMODULO_ID: TIntegerField
      FieldName = 'MODULO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoaModulosLIBERADO: TStringField
      FieldName = 'LIBERADO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaModulosMODULO_NOME: TStringField
      FieldName = 'MODULO_NOME'
      ProviderFlags = []
      Size = 40
    end
  end
  object dsPessoaModulos: TDataSource
    DataSet = cdsPessoaModulos
    Left = 224
    Top = 396
  end
  object sdsModulo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM MODULO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 512
    Top = 163
    object sdsModuloID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsModuloNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object sdsModuloTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 10
    end
  end
  object dspModulo: TDataSetProvider
    DataSet = sdsModulo
    OnUpdateError = PessoaPUpdateError
    Left = 524
    Top = 163
  end
  object cdsModulo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspModulo'
    Left = 538
    Top = 163
    object cdsModuloID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsModuloNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsModuloTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 10
    end
  end
  object dsModulo: TDataSource
    DataSet = cdsModulo
    Left = 554
    Top = 163
  end
  object sdsUCTabUsers: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT UCLOGIN'#13#10'FROM UCTABUSERS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 256
    Top = 396
  end
  object dspUCTabUsers: TDataSetProvider
    DataSet = sdsUCTabUsers
    OnUpdateError = PessoaPUpdateError
    Left = 272
    Top = 396
  end
  object cdsUCTabUsers: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUCTabUsers'
    OnNewRecord = tMovAvulsoParcNewRecord
    Left = 288
    Top = 396
    object cdsUCTabUsersUCLOGIN: TStringField
      FieldName = 'UCLOGIN'
      Size = 30
    end
  end
  object dsUCTabUsers: TDataSource
    DataSet = cdsUCTabUsers
    Left = 303
    Top = 396
  end
  object sdsEmpPrincipal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select p.id, p.nome, p.fantasia'#13#10'from pessoa p'#13#10'where p.empresa_' +
      'principal = '#39'1'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 646
    Top = 326
  end
  object dspEmpPrincipal: TDataSetProvider
    DataSet = sdsEmpPrincipal
    OnUpdateError = PessoaPUpdateError
    Left = 656
    Top = 326
  end
  object cdsEmpPrincipal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpPrincipal'
    Left = 670
    Top = 326
    object cdsEmpPrincipalID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEmpPrincipalNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsEmpPrincipalFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 40
    end
  end
  object dsEmpPrincipal: TDataSource
    DataSet = cdsEmpPrincipal
    Left = 687
    Top = 326
  end
end
