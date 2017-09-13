object DM: TDM
  OldCreateOrder = False
  Height = 496
  Width = 880
  object Conexao: TUniConnection
    ProviderName = 'InterBase'
    Port = 3050
    Database = 'C:\REINF.FDB'
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
    AfterPost = unProcessosAfterPost
    AfterDelete = unProcessosAfterDelete
    Left = 136
    Top = 136
    object unProcessosPERAPUR: TStringField
      DisplayLabel = 'Per. Apura'#231#227'o'
      FieldName = 'PERAPUR'
      Required = True
      EditMask = '9999-99;1;'
      Size = 7
    end
    object unProcessosNRPROC: TStringField
      DisplayLabel = 'N'#186' Proces.'
      FieldName = 'NRPROC'
      Required = True
      Size = 21
    end
    object unProcessosINDSUSP: TStringField
      DisplayLabel = 'Ind. de Susp.'
      FieldName = 'INDSUSP'
      Required = True
      Size = 2
    end
    object unProcessosNRINSC: TStringField
      DisplayLabel = 'N'#186' de inscr.'
      FieldName = 'NRINSC'
      Required = True
      Size = 18
    end
    object unProcessosTPINSC: TIntegerField
      DisplayLabel = 'Tip. de inscr.'
      FieldName = 'TPINSC'
      Required = True
    end
    object unProcessosINIVALID: TStringField
      DisplayLabel = 'Ini. Validade'
      FieldName = 'INIVALID'
      Required = True
      EditMask = '9999-99;1;'
      Size = 7
    end
    object unProcessosFIMVALID: TStringField
      DisplayLabel = 'Fin. Validade'
      FieldName = 'FIMVALID'
      EditMask = '9999-99;1;'
      Size = 7
    end
    object unProcessosTPPROC: TStringField
      DisplayLabel = 'Tip. de Proc.'
      FieldName = 'TPPROC'
      Required = True
      Size = 1
    end
    object unProcessosCODSUSP: TStringField
      DisplayLabel = 'C'#243'd. Susp.'
      FieldName = 'CODSUSP'
      Size = 14
    end
    object dtmfldProcessosDTDECISAO: TDateTimeField
      DisplayLabel = 'Data Decis'#227'o'
      FieldName = 'DTDECISAO'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object unProcessosINDDEPOSITO: TStringField
      DisplayLabel = 'Ind. Depos.'
      FieldName = 'INDDEPOSITO'
      Required = True
      Size = 1
    end
    object unProcessosUFVARA: TStringField
      DisplayLabel = 'UF'
      FieldName = 'UFVARA'
      Required = True
      Size = 2
    end
    object unProcessosCODMUNIC: TStringField
      DisplayLabel = 'C'#243'd. Munic.'
      FieldName = 'CODMUNIC'
      Size = 7
    end
    object unProcessosIDVARA: TStringField
      DisplayLabel = 'C'#243'd. Vara'
      FieldName = 'IDVARA'
      Required = True
      Size = 2
    end
    object unProcessosINDAUTORIA: TStringField
      DisplayLabel = 'Ind. Autor.'
      FieldName = 'INDAUTORIA'
      Size = 1
    end
    object unProcessosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
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
  object dsProcessos: TUniDataSource
    DataSet = unProcessos
    Left = 136
    Top = 200
  end
  object unParametros: TUniTable
    TableName = 'Parametros_18'
    Connection = Conexao
    AfterPost = unParametrosAfterPost
    AfterDelete = unParametrosAfterDelete
    Left = 144
    Top = 352
    object unParametrosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object unParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object unParametrosNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object unParametrosSENHA: TStringField
      FieldName = 'SENHA'
      Required = True
      Size = 50
    end
    object unParametrosSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
      Size = 100
    end
    object unParametrosMODELO: TStringField
      FieldName = 'MODELO'
      Required = True
      Size = 2
    end
    object unParametrosXML_IMPORTADO: TStringField
      FieldName = 'XML_IMPORTADO'
      Size = 100
    end
    object unParametrosXML_GERADO: TStringField
      FieldName = 'XML_GERADO'
      Required = True
      Size = 100
    end
    object unParametrosXML_TRANSMITIDO: TStringField
      FieldName = 'XML_TRANSMITIDO'
      Required = True
      Size = 100
    end
    object unParametrosXML_RETORNO: TStringField
      FieldName = 'XML_RETORNO'
      Required = True
      Size = 100
    end
    object unParametrosXML_RETORNO_ERRO: TStringField
      FieldName = 'XML_RETORNO_ERRO'
      Required = True
      Size = 100
    end
  end
  object dsParametros: TUniDataSource
    DataSet = unParametros
    Left = 152
    Top = 424
  end
  object unConslProcessos: TUniTable
    TableName = 'PROCESSOS_18'
    Connection = Conexao
    AfterPost = unProcessosAfterPost
    AfterDelete = unProcessosAfterDelete
    Left = 792
    Top = 136
    object StringField1: TStringField
      DisplayLabel = 'Per. Apura'#231#227'o'
      FieldName = 'PERAPUR'
      Required = True
      EditMask = '9999-99;1;'
      Size = 7
    end
    object StringField2: TStringField
      DisplayLabel = 'N'#186' Proces.'
      FieldName = 'NRPROC'
      Required = True
      Size = 21
    end
    object StringField3: TStringField
      DisplayLabel = 'Ind. de Susp.'
      FieldName = 'INDSUSP'
      Required = True
      Size = 2
    end
    object StringField4: TStringField
      DisplayLabel = 'N'#186' de inscr.'
      FieldName = 'NRINSC'
      Required = True
      Size = 18
    end
    object IntegerField1: TIntegerField
      DisplayLabel = 'Tip. de inscr.'
      FieldName = 'TPINSC'
      Required = True
    end
    object StringField5: TStringField
      DisplayLabel = 'Ini. Validade'
      FieldName = 'INIVALID'
      Required = True
      EditMask = '9999-99;1;'
      Size = 7
    end
    object StringField6: TStringField
      DisplayLabel = 'Fin. Validade'
      FieldName = 'FIMVALID'
      EditMask = '9999-99;1;'
      Size = 7
    end
    object StringField8: TStringField
      DisplayLabel = 'Tip. de Proc.'
      FieldName = 'TPPROC'
      Required = True
      Size = 1
    end
    object StringField9: TStringField
      DisplayLabel = 'C'#243'd. Susp.'
      FieldName = 'CODSUSP'
      Size = 14
    end
    object dtmfld1: TDateTimeField
      DisplayLabel = 'Data Decis'#227'o'
      FieldName = 'DTDECISAO'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object StringField10: TStringField
      DisplayLabel = 'Ind. Depos.'
      FieldName = 'INDDEPOSITO'
      Required = True
      Size = 1
    end
    object StringField11: TStringField
      DisplayLabel = 'UF'
      FieldName = 'UFVARA'
      Required = True
      Size = 2
    end
    object StringField12: TStringField
      DisplayLabel = 'C'#243'd. Munic.'
      FieldName = 'CODMUNIC'
      Size = 7
    end
    object StringField13: TStringField
      DisplayLabel = 'C'#243'd. Vara'
      FieldName = 'IDVARA'
      Required = True
      Size = 2
    end
    object StringField14: TStringField
      DisplayLabel = 'Ind. Autor.'
      FieldName = 'INDAUTORIA'
      Size = 1
    end
  end
  object dsConslProcessos: TUniDataSource
    DataSet = unConslProcessos
    Left = 792
    Top = 208
  end
end
