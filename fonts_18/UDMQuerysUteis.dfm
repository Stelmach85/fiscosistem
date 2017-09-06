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
    object qryEmpresasNRINSC: TStringField
      FieldName = 'NRINSC'
      Size = 14
    end
    object qryEmpresasTPINSC: TIntegerField
      FieldName = 'TPINSC'
    end
    object qryEmpresasINIVALID: TDateField
      FieldName = 'INIVALID'
    end
    object qryEmpresasFIMVALID: TDateField
      FieldName = 'FIMVALID'
    end
    object qryEmpresasCLASSTRIB: TIntegerField
      FieldName = 'CLASSTRIB'
    end
    object qryEmpresasINDESCRITURACAO: TIntegerField
      FieldName = 'INDESCRITURACAO'
    end
    object qryEmpresasINDDESONERACAO: TIntegerField
      FieldName = 'INDDESONERACAO'
    end
    object qryEmpresasINDACORDOISENMULTA: TIntegerField
      FieldName = 'INDACORDOISENMULTA'
    end
    object qryEmpresasINDSITPJ: TIntegerField
      FieldName = 'INDSITPJ'
    end
    object qryEmpresasNMCTT: TStringField
      FieldName = 'NMCTT'
      Size = 70
    end
    object qryEmpresasCPFCTT: TStringField
      FieldName = 'CPFCTT'
      Size = 11
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
    object qryEmpresasEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object qryEmpresasCNPJSOFTHOUSE: TStringField
      FieldName = 'CNPJSOFTHOUSE'
      Size = 14
    end
    object qryEmpresasNMRAZAO: TStringField
      FieldName = 'NMRAZAO'
      Size = 115
    end
    object qryEmpresasNMCONT: TStringField
      FieldName = 'NMCONT'
      Size = 70
    end
    object qryEmpresasTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object qryEmpresasIDEEFR: TStringField
      FieldName = 'IDEEFR'
      Size = 1
    end
    object qryEmpresasCNPJEFR: TStringField
      FieldName = 'CNPJEFR'
      Size = 14
    end
    object qryEmpresasNMRAZAOSOCIAL: TStringField
      FieldName = 'NMRAZAOSOCIAL'
      Size = 100
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
