object DMQuerysUteis: TDMQuerysUteis
  OldCreateOrder = False
  Height = 386
  Width = 596
  object qryEmpresas: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'select * from contribuintes_18')
    Left = 56
    Top = 16
    object qryEmpresasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryEmpresasNMRAZAOSOCIAL: TStringField
      FieldName = 'NMRAZAOSOCIAL'
      Required = True
      Size = 100
    end
    object qryEmpresasNRINSC: TStringField
      FieldName = 'NRINSC'
      Required = True
      Size = 18
    end
    object qryEmpresasTPINSC: TIntegerField
      FieldName = 'TPINSC'
      Required = True
    end
    object dtmfldEmpresasINIVALID: TDateTimeField
      FieldName = 'INIVALID'
      Required = True
    end
    object dtmfldEmpresasFIMVALID: TDateTimeField
      FieldName = 'FIMVALID'
    end
    object qryEmpresasINDESCRITURACAO: TIntegerField
      FieldName = 'INDESCRITURACAO'
      Required = True
    end
    object qryEmpresasINDDESONERACAO: TIntegerField
      FieldName = 'INDDESONERACAO'
      Required = True
    end
    object qryEmpresasINDACORDOISENMULTA: TIntegerField
      FieldName = 'INDACORDOISENMULTA'
      Required = True
    end
    object qryEmpresasINDSITPJ: TIntegerField
      FieldName = 'INDSITPJ'
      Required = True
    end
    object qryEmpresasNMCTT: TStringField
      FieldName = 'NMCTT'
      Required = True
      Size = 70
    end
    object qryEmpresasCPFCTT: TStringField
      FieldName = 'CPFCTT'
      Required = True
      Size = 14
    end
    object qryEmpresasFONEFIXO: TStringField
      FieldName = 'FONEFIXO'
      Size = 13
    end
    object qryEmpresasFONECEL: TStringField
      FieldName = 'FONECEL'
      Size = 13
    end
    object qryEmpresasEMAIL_CONTATO: TStringField
      FieldName = 'EMAIL_CONTATO'
      Size = 60
    end
    object qryEmpresasIDEEFR: TStringField
      FieldName = 'IDEEFR'
      Required = True
      Size = 1
    end
    object qryEmpresasCNPJEFR: TStringField
      FieldName = 'CNPJEFR'
      Size = 18
    end
    object qryEmpresasCLASSTRIB: TStringField
      FieldName = 'CLASSTRIB'
      Size = 2
    end
  end
  object dsqryEmpresas: TUniDataSource
    DataSet = qryEmpresas
    Left = 56
    Top = 96
  end
  object qryaux: TUniQuery
    Connection = DM.Conexao
    Left = 152
    Top = 16
  end
end
