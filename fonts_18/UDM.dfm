object DM: TDM
  OldCreateOrder = False
  Height = 597
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
    object unContribuintesNMRAZAOSOCIAL: TStringField
      FieldName = 'NMRAZAOSOCIAL'
      Required = True
      Size = 100
    end
    object unContribuintesNRINSC: TStringField
      FieldName = 'NRINSC'
      Required = True
      Size = 18
    end
    object unContribuintesTPINSC: TIntegerField
      FieldName = 'TPINSC'
      Required = True
    end
    object unContribuintesINDESCRITURACAO: TIntegerField
      FieldName = 'INDESCRITURACAO'
      Required = True
    end
    object unContribuintesINDDESONERACAO: TIntegerField
      FieldName = 'INDDESONERACAO'
      Required = True
    end
    object unContribuintesINDACORDOISENMULTA: TIntegerField
      FieldName = 'INDACORDOISENMULTA'
      Required = True
    end
    object unContribuintesINDSITPJ: TIntegerField
      FieldName = 'INDSITPJ'
      Required = True
    end
    object unContribuintesNMCTT: TStringField
      FieldName = 'NMCTT'
      Required = True
      Size = 70
    end
    object unContribuintesCPFCTT: TStringField
      FieldName = 'CPFCTT'
      Required = True
      EditMask = '999.999.999-99;1;'
      Size = 14
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
    object unContribuintesIDEEFR: TStringField
      FieldName = 'IDEEFR'
      Required = True
      Size = 1
    end
    object unContribuintesCNPJEFR: TStringField
      FieldName = 'CNPJEFR'
      EditMask = '99.999.999/9999-99;1;'
      Size = 18
    end
    object unContribuintesCLASSTRIB: TStringField
      FieldName = 'CLASSTRIB'
      Size = 2
    end
    object unContribuintesINIVALID: TStringField
      FieldName = 'INIVALID'
      Required = True
      Size = 7
    end
    object unContribuintesFIMVALID: TStringField
      FieldName = 'FIMVALID'
      Size = 7
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
    TableName = 'RETCP_SERVICOS_18'
    Connection = Conexao
    AfterPost = unRetCP_ServTomAfterPost
    AfterDelete = unRetCP_ServTomAfterDelete
    AfterScroll = unRetCP_ServTomAfterScroll
    Left = 264
    Top = 136
    object unRetCP_ServTomID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
      Required = True
    end
    object unRetCP_ServTomCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object unRetCP_ServTomTPINSCESTABTOM: TIntegerField
      FieldName = 'TPINSCESTABTOM'
      Required = True
    end
    object unRetCP_ServTomNRINSCESTABTOM: TStringField
      FieldName = 'NRINSCESTABTOM'
      Required = True
      Size = 18
    end
    object unRetCP_ServTomCNPJPRESTADOR: TStringField
      FieldName = 'CNPJPRESTADOR'
      Required = True
      Size = 18
    end
    object unRetCP_ServTomINDOBRA: TIntegerField
      FieldName = 'INDOBRA'
      Required = True
    end
    object unRetCP_ServTomPERAPUR: TStringField
      FieldName = 'PERAPUR'
      Required = True
      Size = 7
    end
    object cdsRetCP_ServTomVLRTOTALBRUTO: TFloatField
      FieldName = 'VLRTOTALBRUTO'
    end
    object cdsRetCP_ServTomVLRTOTALBASERET: TFloatField
      FieldName = 'VLRTOTALBASERET'
    end
    object cdsRetCP_ServTomVLRTOTALRETPRINC: TFloatField
      FieldName = 'VLRTOTALRETPRINC'
    end
    object cdsRetCP_ServTomVLRTOTALRETADIC: TFloatField
      FieldName = 'VLRTOTALRETADIC'
    end
    object cdsRetCP_ServTomVLRTOTALNRETPRINC: TFloatField
      FieldName = 'VLRTOTALNRETPRINC'
    end
    object cdsRetCP_ServTomVLRTOTALNRETADIC: TFloatField
      FieldName = 'VLRTOTALNRETADIC'
    end
    object unRetCP_ServTomINDCPRB: TIntegerField
      FieldName = 'INDCPRB'
      Required = True
    end
    object unRetCP_ServTomEVENTO: TStringField
      FieldName = 'EVENTO'
      Size = 6
    end
  end
  object unDetalheNF_ServPrest: TUniTable
    TableName = 'DETALHENF_SERVICOS_18'
    Connection = Conexao
    AfterPost = unDetalheNF_ServPrestAfterPost
    AfterDelete = unDetalheNF_ServPrestAfterDelete
    AfterScroll = unDetalheNF_ServPrestAfterScroll
    Left = 32
    Top = 280
    object unDetalheNF_ServPrestCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object unDetalheNF_ServPrestID_NF: TIntegerField
      FieldName = 'ID_NF'
      Required = True
    end
    object unDetalheNF_ServPrestID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
      Required = True
    end
    object unDetalheNF_ServPrestSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
      Size = 5
    end
    object unDetalheNF_ServPrestNUMDOCTO: TStringField
      FieldName = 'NUMDOCTO'
      Required = True
      Size = 15
    end
    object dtmfldDetalheNF_ServPrestDTEMISSAONF: TDateTimeField
      FieldName = 'DTEMISSAONF'
      Required = True
    end
    object cdsDetalheNF_ServPrestVLRBRUTO: TFloatField
      FieldName = 'VLRBRUTO'
    end
    object unDetalheNF_ServPrestOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
  end
  object unTiposServPrest_NF: TUniTable
    TableName = 'TIPOSSERVICOSNF_18'
    Connection = Conexao
    AfterPost = unTiposServPrest_NFAfterPost
    AfterDelete = unTiposServPrest_NFAfterDelete
    Left = 168
    Top = 280
    object unTiposServPrest_NFCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object unTiposServPrest_NFTPSERVICO: TStringField
      FieldName = 'TPSERVICO'
      Required = True
      Size = 9
    end
    object unTiposServPrest_NFID_NF: TIntegerField
      FieldName = 'ID_NF'
      Required = True
    end
    object unTiposServPrest_NFID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
      Required = True
    end
    object cdsTiposServPrest_NFVLRBASERET: TFloatField
      FieldName = 'VLRBASERET'
    end
    object cdsTiposServPrest_NFVLRRETENCAO: TFloatField
      FieldName = 'VLRRETENCAO'
    end
    object cdsTiposServPrest_NFVLRRETSUB: TFloatField
      FieldName = 'VLRRETSUB'
    end
    object cdsTiposServPrest_NFVLRNRETPRINC: TFloatField
      FieldName = 'VLRNRETPRINC'
    end
    object cdsTiposServPrest_NFVLRSERVICOS15: TFloatField
      FieldName = 'VLRSERVICOS15'
    end
    object cdsTiposServPrest_NFVLRSERVICOS20: TFloatField
      FieldName = 'VLRSERVICOS20'
    end
    object cdsTiposServPrest_NFVLRSERVICOS25: TFloatField
      FieldName = 'VLRSERVICOS25'
    end
    object cdsTiposServPrest_NFVLRADICIONAL: TFloatField
      FieldName = 'VLRADICIONAL'
    end
    object cdsTiposServPrest_NFVLRNRETADIC: TFloatField
      FieldName = 'VLRNRETADIC'
    end
  end
  object unInfProcessos: TUniTable
    TableName = 'INFPROCESSOS_18'
    Connection = Conexao
    AfterPost = unInfProcessosAfterPost
    AfterDelete = unInfProcessosAfterDelete
    Left = 632
    Top = 136
    object unInfProcessosID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
      Required = True
    end
    object unInfProcessosNRPROCRETPRINC: TStringField
      FieldName = 'NRPROCRETPRINC'
      Required = True
      Size = 21
    end
    object unInfProcessosTPPROCRETPRINC: TIntegerField
      FieldName = 'TPPROCRETPRINC'
      Required = True
    end
    object unInfProcessosCODSUSP: TStringField
      FieldName = 'CODSUSP'
      Size = 14
    end
    object cdsInfProcessosVALORPRINC: TFloatField
      FieldName = 'VALORPRINC'
    end
    object unInfProcessosID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
      Required = True
    end
    object unInfProcessosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
  end
  object unInfProcessosAdic: TUniTable
    TableName = 'INFPROCESSOSADIC_18'
    Connection = Conexao
    AfterClose = unInfProcessosAdicAfterClose
    AfterPost = unInfProcessosAdicAfterPost
    Left = 616
    Top = 288
  end
  object unBeneficiarios: TUniTable
    TableName = 'BENEFICIARIOS_18'
    Connection = Conexao
    AfterPost = unBeneficiariosAfterPost
    AfterDelete = unBeneficiariosAfterDelete
    Left = 384
    Top = 136
    object unBeneficiariosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object unBeneficiariosNRINSCBENEF: TStringField
      FieldName = 'NRINSCBENEF'
      Required = True
      Size = 14
    end
    object unBeneficiariosTPINSCBENF: TIntegerField
      FieldName = 'TPINSCBENF'
      Required = True
    end
    object unBeneficiariosNMRAZAOBENEF: TStringField
      FieldName = 'NMRAZAOBENEF'
      Required = True
      Size = 150
    end
    object unBeneficiariosPAISRESID: TStringField
      FieldName = 'PAISRESID'
      Size = 3
    end
    object unBeneficiariosDSCLOGRAD: TStringField
      FieldName = 'DSCLOGRAD'
      Size = 80
    end
    object unBeneficiariosNRLOGRAD: TStringField
      FieldName = 'NRLOGRAD'
      Size = 10
    end
    object unBeneficiariosCOMPLEM: TStringField
      FieldName = 'COMPLEM'
      Size = 30
    end
    object unBeneficiariosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object unBeneficiariosCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object unBeneficiariosCODPOSTA: TStringField
      FieldName = 'CODPOSTA'
      Size = 12
    end
    object unBeneficiariosINDNIF: TIntegerField
      FieldName = 'INDNIF'
      Required = True
    end
    object unBeneficiariosNIFBENEF: TStringField
      FieldName = 'NIFBENEF'
    end
    object unBeneficiariosRELFONTEPAGAD: TStringField
      FieldName = 'RELFONTEPAGAD'
      Size = 3
    end
    object dtmfldBeneficiariosDTLAUDO: TDateTimeField
      FieldName = 'DTLAUDO'
      EditMask = '!99/99/0000;1;_'
    end
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
    Left = 480
    Top = 288
  end
  object unPagtoExterior: TUniTable
    TableName = 'PAGTOEXTERIOR_18'
    Connection = Conexao
    Left = 368
    Top = 296
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
    Left = 24
    Top = 464
  end
  object dsRefClasTrib: TUniDataSource
    DataSet = unRefClasTrib
    Left = 40
    Top = 536
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
    Left = 136
    Top = 464
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
    Left = 144
    Top = 536
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
  object dsBeneficiarios: TUniDataSource
    DataSet = unBeneficiarios
    Left = 392
    Top = 200
  end
  object unPais: TUniTable
    TableName = 'REF_PAISES'
    Connection = Conexao
    Left = 280
    Top = 480
    object unPaisID: TIntegerField
      FieldName = 'ID'
    end
    object unPaisCOD_PAIS: TStringField
      FieldName = 'COD_PAIS'
      Size = 5
    end
    object unPaisDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object dsPais: TUniDataSource
    DataSet = unPais
    Left = 280
    Top = 536
  end
  object unConslBeneficiarios: TUniTable
    TableName = 'BENEFICIARIOS_18'
    Connection = Conexao
    Left = 792
    Top = 288
    object StringField7: TStringField
      DisplayLabel = 'N'#186' de Inscri'#231#227'o'
      FieldName = 'NRINSCBENEF'
      Required = True
      Size = 14
    end
    object IntegerField3: TIntegerField
      DisplayLabel = 'Tipo Inscri'#231#227'o'
      FieldName = 'TPINSCBENF'
      Required = True
    end
    object StringField15: TStringField
      DisplayLabel = 'Nome Benef.'
      FieldName = 'NMRAZAOBENEF'
      Required = True
      Size = 150
    end
    object StringField16: TStringField
      DisplayLabel = 'Pa'#237's'
      FieldName = 'PAISRESID'
      Size = 3
    end
    object StringField17: TStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'DSCLOGRAD'
      Size = 80
    end
    object StringField18: TStringField
      DisplayLabel = 'N'#186' '
      FieldName = 'NRLOGRAD'
      Size = 10
    end
    object StringField19: TStringField
      DisplayLabel = 'Compl.'
      FieldName = 'COMPLEM'
      Size = 30
    end
    object StringField20: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 60
    end
    object StringField21: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Size = 30
    end
    object StringField22: TStringField
      DisplayLabel = 'C'#243'd. Postal'
      FieldName = 'CODPOSTA'
      Size = 12
    end
    object IntegerField4: TIntegerField
      DisplayLabel = 'Ind. NIF'
      FieldName = 'INDNIF'
      Required = True
    end
    object StringField23: TStringField
      DisplayLabel = 'N'#186' NIF'
      FieldName = 'NIFBENEF'
    end
    object StringField24: TStringField
      DisplayLabel = 'Rel. Fonte'
      FieldName = 'RELFONTEPAGAD'
      Size = 3
    end
    object dtmfld2: TDateTimeField
      DisplayLabel = 'Data Laudo'
      FieldName = 'DTLAUDO'
      EditMask = '!99/99/0000;1;_'
    end
  end
  object dsConsulBeneficiarios: TUniDataSource
    DataSet = unConslBeneficiarios
    Left = 792
    Top = 344
  end
  object dsRetCP_ServTom: TUniDataSource
    DataSet = unRetCP_ServTom
    Left = 264
    Top = 200
  end
  object dsDetalheNF_ServPrest: TUniDataSource
    DataSet = unDetalheNF_ServPrest
    Left = 32
    Top = 344
  end
  object dsTiposServPrest_NF: TUniDataSource
    DataSet = unTiposServPrest_NF
    Left = 168
    Top = 336
  end
  object unRef_Tipo_Servico: TUniTable
    TableName = 'REF_TIPO_SERVICOS'
    Connection = Conexao
    Left = 416
    Top = 480
  end
  object dsRef_Tipo_Servico: TUniDataSource
    DataSet = unRef_Tipo_Servico
    Left = 424
    Top = 536
  end
  object dsInfProcessos: TUniDataSource
    DataSet = unInfProcessos
    Left = 632
    Top = 200
  end
  object dsInfProcessosAdic: TUniDataSource
    DataSet = unInfProcessosAdic
    Left = 624
    Top = 352
  end
  object unProdRural: TUniTable
    TableName = 'CADCOMPRODRURAL_18'
    Connection = Conexao
    IndexFieldNames = 'PERAPUR'
    AfterPost = unProdRuralAfterPost
    AfterDelete = unProdRuralAfterDelete
    AfterScroll = unProdRuralAfterScroll
    Left = 560
    Top = 488
    object unProdRuralCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object unProdRuralPERAPUR: TStringField
      FieldName = 'PERAPUR'
      Required = True
      EditMask = '9999-99;1;'
      Size = 7
    end
    object cdsProdRuralVLRRECBRUTATOTAL: TFloatField
      FieldName = 'VLRRECBRUTATOTAL'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object cdsProdRuralVLRCPAPUR: TFloatField
      FieldName = 'VLRCPAPUR'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object unProdRuralNRINSCBENEF: TStringField
      FieldName = 'NRINSCBENEF'
      Required = True
      EditMask = '99.999.999/9999-99;1'
      Size = 18
    end
    object cdsProdRuralVLRRATAPUR: TFloatField
      FieldName = 'VLRRATAPUR'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object unProdRuralINDCOM: TIntegerField
      FieldName = 'INDCOM'
      Required = True
    end
    object cdsProdRuralVLRSENARAPUR: TFloatField
      FieldName = 'VLRSENARAPUR'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object cdsProdRuralVLRCPSUSPTOTAL: TFloatField
      FieldName = 'VLRCPSUSPTOTAL'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object cdsProdRuralVLRRATSUSPTOTAL: TFloatField
      FieldName = 'VLRRATSUSPTOTAL'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object cdsProdRuralVLRSENARSUSPTOTAL: TFloatField
      FieldName = 'VLRSENARSUSPTOTAL'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
  end
  object dsProdRural: TUniDataSource
    DataSet = unProdRural
    Left = 560
    Top = 544
  end
  object unProcAdmJud: TUniTable
    TableName = 'PROCADMJUD_TOMADOR_18'
    Connection = Conexao
    Left = 656
    Top = 504
    object unProcAdmJudCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object unProcAdmJudPERAPUR: TStringField
      FieldName = 'PERAPUR'
      Required = True
      EditMask = '9999-99;1;'
      Size = 7
    end
    object unProcAdmJudNRPROC: TStringField
      FieldName = 'NRPROC'
      Required = True
      Size = 21
    end
    object unProcAdmJudTPPROC: TIntegerField
      FieldName = 'TPPROC'
      Required = True
    end
    object cdsProcAdmJudVLRCPSUSP: TFloatField
      FieldName = 'VLRCPSUSP'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object cdsProcAdmJudVLRRATSUSP: TFloatField
      FieldName = 'VLRRATSUSP'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object cdsProcAdmJudVLRSENARSUSP: TFloatField
      FieldName = 'VLRSENARSUSP'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
  end
  object dsProcAdmJud: TUniDataSource
    DataSet = unProcAdmJud
    Left = 656
    Top = 560
  end
end
