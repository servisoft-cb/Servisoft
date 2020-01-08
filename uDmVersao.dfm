object dmVersao: TdmVersao
  OldCreateOrder = False
  Left = 337
  Top = 153
  Height = 280
  Width = 482
  object sdsVersao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT V.* , CC.NOME PROGRAMA'#13#10'FROM VERSAO V'#13#10'INNER JOIN CENTROC' +
      'USTO CC ON (V.PROGRAMA_ID = CC.ID)'#13#10'WHERE 1 = 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 32
    Top = 24
    object sdsVersaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsVersaoVERSAO: TStringField
      FieldName = 'VERSAO'
      Size = 15
    end
    object sdsVersaoDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsVersaoPROGRAMA_ID: TIntegerField
      FieldName = 'PROGRAMA_ID'
    end
    object sdsVersaoPROGRAMA: TStringField
      FieldName = 'PROGRAMA'
      ProviderFlags = []
      Size = 30
    end
  end
  object dspVersao: TDataSetProvider
    DataSet = sdsVersao
    Left = 88
    Top = 24
  end
  object cdsVersao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVersao'
    BeforePost = cdsVersaoBeforePost
    Left = 144
    Top = 24
    object cdsVersaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsVersaoPROGRAMA_ID: TIntegerField
      FieldName = 'PROGRAMA_ID'
    end
    object cdsVersaoVERSAO: TStringField
      FieldName = 'VERSAO'
      Size = 15
    end
    object cdsVersaoDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsVersaoPROGRAMA: TStringField
      FieldName = 'PROGRAMA'
      ProviderFlags = []
      Size = 30
    end
  end
  object dsVersao: TDataSource
    DataSet = cdsVersao
    Left = 200
    Top = 24
  end
  object sdsPrograma: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    AfterClose = cdsVersaoBeforePost
    CommandText = 
      'SELECT * '#13#10'FROM CENTROCUSTO'#13#10'WHERE PRODUTO = '#39'S'#39#13#10'ORDER BY NOME'#13 +
      #10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 32
    Top = 80
    object sdsProgramaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProgramaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object sdsProgramaPRODUTO: TStringField
      FieldName = 'PRODUTO'
      FixedChar = True
      Size = 1
    end
  end
  object dspPrograma: TDataSetProvider
    DataSet = sdsPrograma
    Left = 88
    Top = 80
  end
  object cdsPrograma: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPrograma'
    BeforePost = cdsVersaoBeforePost
    Left = 144
    Top = 80
    object cdsProgramaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProgramaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsProgramaPRODUTO: TStringField
      FieldName = 'PRODUTO'
      FixedChar = True
      Size = 1
    end
  end
  object dsPrograma: TDataSource
    DataSet = cdsPrograma
    Left = 200
    Top = 80
  end
  object qInc: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 32
    Top = 140
  end
end
