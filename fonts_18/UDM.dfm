object DM: TDM
  OldCreateOrder = False
  Height = 496
  Width = 880
  object Conexao: TUniConnection
    ProviderName = 'InterBase'
    Port = 3050
    Database = 'C:\REINF.fdb'
    SpecificOptions.Strings = (
      'Oracle.Direct=True')
    Username = 'SYSDBA'
    Server = 'localhost'
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 4
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object InterBaseUniProvider1: TInterBaseUniProvider
    Left = 129
    Top = 6
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 236
    Top = 9
  end
  object OracleUniProvider1: TOracleUniProvider
    Left = 32
    Top = 60
  end
  object SQLServerUniProvider1: TSQLServerUniProvider
    Left = 232
    Top = 60
  end
  object UniSQLMonitor1: TUniSQLMonitor
    Left = 336
    Top = 8
  end
  object ConexaoAnt: TUniConnection
    ProviderName = 'InterBase'
    Database = 'C:\Banco\2016\Melita\24022016\ECF.FDB'
    Username = 'sysdba'
    Server = 'localhost'
    LoginPrompt = False
    Left = 128
    Top = 64
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object unContribuintes: TUniTable
    TableName = 'CONTRIBUINTES_18'
    Connection = Conexao
    IndexFieldNames = 'CODIGO'
    AfterPost = unContribuintesAfterPost
    AfterDelete = unContribuintesAfterDelete
    Left = 32
    Top = 136
    object unContribuintesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object unContribuintesNRINSC: TStringField
      FieldName = 'NRINSC'
      Size = 18
    end
    object unContribuintesTPINSC: TIntegerField
      FieldName = 'TPINSC'
    end
    object unContribuintesINIVALID: TDateField
      FieldName = 'INIVALID'
      EditMask = '!99/99/0000;1;_'
    end
    object unContribuintesFIMVALID: TDateField
      FieldName = 'FIMVALID'
      EditMask = '!99/99/0000;1;_'
    end
    object unContribuintesCLASSTRIB: TIntegerField
      FieldName = 'CLASSTRIB'
    end
    object unContribuintesINDESCRITURACAO: TIntegerField
      FieldName = 'INDESCRITURACAO'
    end
    object unContribuintesINDDESONERACAO: TIntegerField
      FieldName = 'INDDESONERACAO'
    end
    object unContribuintesINDACORDOISENMULTA: TIntegerField
      FieldName = 'INDACORDOISENMULTA'
    end
    object unContribuintesINDSITPJ: TIntegerField
      FieldName = 'INDSITPJ'
    end
    object unContribuintesNMCTT: TStringField
      FieldName = 'NMCTT'
      Size = 70
    end
    object unContribuintesCPFCTT: TStringField
      FieldName = 'CPFCTT'
      EditMask = '999.999.999-99;1;'
      Size = 11
    end
    object unContribuintesFONEFIXO: TStringField
      FieldName = 'FONEFIXO'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 13
    end
    object unContribuintesFONECEL: TStringField
      FieldName = 'FONECEL'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 13
    end
    object unContribuintesEMAIL_CONTATO: TStringField
      FieldName = 'EMAIL_CONTATO'
      Size = 60
    end
    object unContribuintesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object unContribuintesCNPJSOFTHOUSE: TStringField
      FieldName = 'CNPJSOFTHOUSE'
      Size = 14
    end
    object unContribuintesNMRAZAO: TStringField
      FieldName = 'NMRAZAO'
      Size = 115
    end
    object unContribuintesNMCONT: TStringField
      FieldName = 'NMCONT'
      Size = 70
    end
    object unContribuintesTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object unContribuintesIDEEFR: TStringField
      FieldName = 'IDEEFR'
      Size = 1
    end
    object unContribuintesCNPJEFR: TStringField
      FieldName = 'CNPJEFR'
      EditMask = '99.999.999/9999-99;1;'
      Size = 14
    end
    object unContribuintesNMRAZAOSOCIAL: TStringField
      FieldName = 'NMRAZAOSOCIAL'
      Size = 100
    end
  end
  object unProcessos: TUniTable
    TableName = 'PROCESSOS_18'
    Connection = Conexao
    Left = 136
    Top = 136
  end
  object unRetCP_ServTom: TUniTable
    TableName = 'RETCP_SEVTOM_18'
    Connection = Conexao
    Left = 264
    Top = 136
  end
  object unDetalheNF_ServPrest: TUniTable
    TableName = 'DETALHENF_SERVPREST_18'
    Connection = Conexao
    Left = 32
    Top = 280
  end
  object unTiposServPrest_NF: TUniTable
    TableName = 'TIPOSSERVPREST_NF_18'
    Connection = Conexao
    Left = 160
    Top = 288
  end
  object unInfProcessos: TUniTable
    TableName = 'INFPROCESSOS_18'
    Connection = Conexao
    Left = 632
    Top = 136
  end
  object unInfProcessosAdic: TUniTable
    TableName = 'INFPROCESSOSADIC_18'
    Connection = Conexao
    Left = 496
    Top = 272
  end
  object unBeneficiarios: TUniTable
    TableName = 'BENEFICIARIOS_18'
    Connection = Conexao
    Left = 384
    Top = 136
  end
  object unRendimentos: TUniTable
    TableName = 'RENDIMENTOS_18'
    Connection = Conexao
    Left = 480
    Top = 136
  end
  object unRendimentosCum: TUniTable
    TableName = 'RENDIMENTOSCUM_18'
    Connection = Conexao
    Left = 368
    Top = 280
  end
  object unPagtoExterior: TUniTable
    TableName = 'PAGTOEXTERIOR_18'
    Connection = Conexao
    Left = 272
    Top = 288
  end
  object dsContribuintes: TUniDataSource
    DataSet = unContribuintes
    Left = 32
    Top = 200
  end
  object qryUtil: TUniQuery
    Connection = Conexao
    Left = 448
    Top = 48
  end
  object unRefClasTrib: TUniTable
    TableName = 'REF_CLASSIF_TRIB'
    Connection = Conexao
    Left = 32
    Top = 352
  end
  object dsRefClasTrib: TUniDataSource
    DataSet = unRefClasTrib
    Left = 48
    Top = 424
  end
end
