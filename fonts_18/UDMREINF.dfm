object DMREINF: TDMREINF
  OldCreateOrder = False
  Height = 377
  Width = 750
  object qryregistro1000: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'select * from CONTRIBUINTES_18 '
      'where codigo=:emp')
    Left = 40
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
      end>
  end
  object qryRegistro1070: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'select * from PROCESSOS_18 where codigo=:emp')
    Left = 144
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
      end>
  end
  object qryRegistro2010_1: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'select r.* from RETCP_SERVICOS_18 r'
      'where r.codigo=:emp and r.evento='#39'R-2010'#39)
    Left = 248
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
      end>
  end
  object qryRegistro2010_2: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'select d.* from detalhenf_servicos_18 d'
      'where d.codigo=:emp and d.id_servico=:serv')
    Left = 352
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
      end
      item
        DataType = ftUnknown
        Name = 'serv'
      end>
  end
  object qryregistro2010_3: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'select t.* from tiposservicosnf_18 t'
      'where  t.codigo=:emp and t.id_servico=:serv and t.id_nf=:nf')
    Left = 472
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
      end
      item
        DataType = ftUnknown
        Name = 'serv'
      end
      item
        DataType = ftUnknown
        Name = 'nf'
      end>
  end
  object qryRegistro2010_4: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'select d.* from InfProcessos_18 d'
      'where d.codigo=:emp and d.id_servico=:serv')
    Left = 592
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
      end
      item
        DataType = ftUnknown
        Name = 'serv'
      end>
  end
  object qryRegistro2020_1: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'select r.* from RETCP_SERVICOS_18 r'
      'where r.codigo=:emp and r.evento='#39'R-2020'#39)
    Left = 240
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
      end>
  end
  object qryRegistro2020_2: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'select d.* from detalhenf_servicos_18 d'
      'where d.codigo=:emp and d.id_servico=:serv')
    Left = 344
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
      end
      item
        DataType = ftUnknown
        Name = 'serv'
      end>
  end
  object qryRegistro2020_3: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'select t.* from tiposservicosnf_18 t'
      'where  t.codigo=:emp and t.id_servico=:serv and t.id_nf=:nf')
    Left = 464
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
      end
      item
        DataType = ftUnknown
        Name = 'serv'
      end
      item
        DataType = ftUnknown
        Name = 'nf'
      end>
  end
  object qryRegistro2020_4: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'select d.* from InfProcessos_18 d'
      'where d.codigo=:emp and d.id_servico=:serv')
    Left = 576
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
      end
      item
        DataType = ftUnknown
        Name = 'serv'
      end>
  end
  object qryParametros: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'Select * from Parametros_18 where codigo=:emp')
    Left = 40
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
      end>
  end
end
