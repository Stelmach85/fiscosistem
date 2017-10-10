object DMCadCPRB: TDMCadCPRB
  OldCreateOrder = False
  Height = 273
  Width = 490
  object unCadCPRB: TUniTable
    TableName = 'CADCPRB_18'
    Connection = DM.Conexao
    AfterPost = unCadCPRBAfterPost
    AfterScroll = unCadCPRBAfterScroll
    Left = 40
    Top = 17
    object unCadCPRBCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object unCadCPRBPERAPUR: TStringField
      FieldName = 'PERAPUR'
      Required = True
      EditMask = '9999-99;1;'
      Size = 7
    end
    object unCadCPRBNRINSCESTAB: TStringField
      FieldName = 'NRINSCESTAB'
      Required = True
      Size = 18
    end
    object unCadCPRBTPINSCESTAB: TIntegerField
      FieldName = 'TPINSCESTAB'
      Required = True
    end
    object cdsCadCPRBVLRRECBRUTATOTAL: TFloatField
      FieldName = 'VLRRECBRUTATOTAL'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object cdsCadCPRBVLRCPAPURTOTAL: TFloatField
      FieldName = 'VLRCPAPURTOTAL'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object cdsCadCPRBVLRCPRBSUSPTOTAL: TFloatField
      FieldName = 'VLRCPRBSUSPTOTAL'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
  end
  object dsCadCPRB: TUniDataSource
    DataSet = unCadCPRB
    Left = 40
    Top = 80
  end
  object unDetalheReceita: TUniTable
    TableName = 'DETALHERECEITA_18'
    Connection = DM.Conexao
    AfterScroll = unDetalheReceitaAfterScroll
    Left = 120
    Top = 16
    object unDetalheReceitaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object unDetalheReceitaPERAPUR: TStringField
      FieldName = 'PERAPUR'
      Required = True
      Size = 7
    end
    object unDetalheReceitaNRINSCESTAB: TStringField
      FieldName = 'NRINSCESTAB'
      Required = True
      Size = 18
    end
    object unDetalheReceitaCODATIVECON: TStringField
      FieldName = 'CODATIVECON'
      Required = True
      Size = 8
    end
    object cdsDetalheReceitaVLRRECBRUTAATIV: TFloatField
      FieldName = 'VLRRECBRUTAATIV'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object cdsDetalheReceitaVLREXCRECBRUTA: TFloatField
      FieldName = 'VLREXCRECBRUTA'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object cdsDetalheReceitaVLRADICRECBRUTA: TFloatField
      FieldName = 'VLRADICRECBRUTA'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object cdsDetalheReceitaVLRBCCPRB: TFloatField
      FieldName = 'VLRBCCPRB'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object cdsDetalheReceitaVLRCPRBAPUR: TFloatField
      FieldName = 'VLRCPRBAPUR'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
  end
  object dsDetalheReceita: TUniDataSource
    DataSet = unDetalheReceita
    Left = 120
    Top = 80
  end
  object unAjustesReceita: TUniTable
    TableName = 'AJUSTESRECEITA_18'
    Connection = DM.Conexao
    Left = 226
    Top = 16
    object unAjustesReceitaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object unAjustesReceitaPERAPUR: TStringField
      FieldName = 'PERAPUR'
      Required = True
      Size = 7
    end
    object unAjustesReceitaNRINSCESTAB: TStringField
      FieldName = 'NRINSCESTAB'
      Required = True
      Size = 18
    end
    object unAjustesReceitaCODATIVECON: TStringField
      FieldName = 'CODATIVECON'
      Required = True
      Size = 8
    end
    object unAjustesReceitaTPAJUSTE: TStringField
      FieldName = 'TPAJUSTE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object unAjustesReceitaCODAJUSTE: TIntegerField
      FieldName = 'CODAJUSTE'
      Required = True
    end
    object cdsAjustesReceitaVLRAJUSTE: TFloatField
      FieldName = 'VLRAJUSTE'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object unAjustesReceitaDESCAJUSTE: TStringField
      FieldName = 'DESCAJUSTE'
      Required = True
    end
    object unAjustesReceitaDTAJUSTE: TStringField
      FieldName = 'DTAJUSTE'
      Required = True
      EditMask = '9999-99;1;'
      Size = 7
    end
  end
  object dsAjustesReceita: TUniDataSource
    DataSet = unAjustesReceita
    Left = 226
    Top = 80
  end
  object unProcessosReceita: TUniTable
    TableName = 'PROCESSOSRECEITA_18'
    Connection = DM.Conexao
    Left = 339
    Top = 16
    object unProcessosReceitaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object unProcessosReceitaPERAPUR: TStringField
      FieldName = 'PERAPUR'
      Required = True
      Size = 7
    end
    object unProcessosReceitaNRINSCESTAB: TStringField
      FieldName = 'NRINSCESTAB'
      Required = True
      Size = 18
    end
    object unProcessosReceitaNRPROC: TStringField
      FieldName = 'NRPROC'
      Required = True
      Size = 21
    end
    object unProcessosReceitaTPPROC: TIntegerField
      FieldName = 'TPPROC'
      Required = True
    end
    object unProcessosReceitaCODSUSP: TStringField
      FieldName = 'CODSUSP'
      Required = True
      Size = 14
    end
    object cdsProcessosReceitaVLRCPRBSUSP: TFloatField
      FieldName = 'VLRCPRBSUSP'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
  end
  object dsProcessosReceita: TUniDataSource
    DataSet = unProcessosReceita
    Left = 339
    Top = 80
  end
  object unRefAtivEcon: TUniTable
    TableName = 'REF_ATIVECON'
    Connection = DM.Conexao
    Left = 43
    Top = 152
    object unRefAtivEconCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
    end
    object unRefAtivEconDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 2000
    end
    object unRefAtivEconNCM: TStringField
      FieldName = 'NCM'
      Size = 50
    end
    object cdsRefAtivEconALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object dtmfldRefAtivEconDATAINI: TDateTimeField
      FieldName = 'DATAINI'
    end
  end
  object dsRefAtivEcon: TUniDataSource
    DataSet = unRefAtivEcon
    Left = 43
    Top = 216
  end
end
