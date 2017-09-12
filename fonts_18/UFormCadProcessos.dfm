object FormCadProcessos: TFormCadProcessos
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Cadastro de Processos Administrativos/Judiciais'
  ClientHeight = 443
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dbnvgr1: TDBNavigator
    Left = 8
    Top = 367
    Width = 236
    Height = 26
    DataSource = DM.dsProcessos
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Hints.Strings = (
      'Primeira Empresa'
      'Anterior'
      'Pr'#243'xima '
      #218'ltima Empresa ')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object btnNovo: TBitBtn
    Left = 12
    Top = 407
    Width = 75
    Height = 25
    Hint = 'Cadastra uma nova Empresa'
    Caption = 'Incluir'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
      333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
      0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
      07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
      07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
      0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
      33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
      B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
      3BB33773333773333773B333333B3333333B7333333733333337}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = btnNovoClick
  end
  object btnGravar: TBitBtn
    Left = 93
    Top = 407
    Width = 75
    Height = 25
    Hint = 'Grava os dados da Empresa'
    Caption = 'Gravar'
    DoubleBuffered = True
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333000003333333333F777773FF333333008F88800
      33333337733333773F33330FFF8F888F033333733333333373F330DEFFF8F8FE
      D03337F33333333337F330DDEFFFFFEDD0333733333FFF33373F0BBFDE000EDF
      BB037F33337773F3337F0AABB08880BBAA037F3337F3F7F3337F0EEAA08080AA
      EE037F3337F737F3337F0AABB08880BBAA037F33373FF733337F0BBFDE000EDB
      BB0373F333777333337330DDEFFFFFEDD03337F33333333337F330DEF8F8FFFE
      D033373F333333333733330FFF8F8FFF03333373FF33333F733333300FF8F800
      3333333773FFFF77333333333000003333333333377777333333}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = btnGravarClick
  end
  object btnAlterar: TBitBtn
    Left = 180
    Top = 407
    Width = 75
    Height = 25
    Hint = 'Altera os dados da Empresa'
    Caption = 'Alterar'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
      000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
      00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
      F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
      0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
      FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
      FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
      0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
      00333377737FFFFF773333303300000003333337337777777333}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = btnAlterarClick
  end
  object btnExcluir: TBitBtn
    Left = 266
    Top = 407
    Width = 75
    Height = 25
    Hint = 'Exclui uma Empresa  '
    Caption = 'Excluir'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
      305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
      005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
      B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
      B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
      B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
      B0557777FF577777F7F500000E055550805577777F7555575755500000555555
      05555777775555557F5555000555555505555577755555557555}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = btnExcluirClick
  end
  object btnCancelar: TBitBtn
    Left = 351
    Top = 407
    Width = 75
    Height = 25
    Hint = 'Cancela Opera'#231#227'o Realizada'
    Caption = 'Cancelar'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333333333333333333FFF33FF333FFF339993370733
      999333777FF37FF377733339993000399933333777F777F77733333399970799
      93333333777F7377733333333999399933333333377737773333333333990993
      3333333333737F73333333333331013333333333333777FF3333333333910193
      333333333337773FF3333333399000993333333337377737FF33333399900099
      93333333773777377FF333399930003999333337773777F777FF339993370733
      9993337773337333777333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = btnCancelarClick
  end
  object btn1: TBitBtn
    Left = 440
    Top = 407
    Width = 75
    Height = 25
    Hint = 'Cancela Opera'#231#227'o Realizada'
    Caption = 'Fechar'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333333333333333333FFF33FF333FFF339993370733
      999333777FF37FF377733339993000399933333777F777F77733333399970799
      93333333777F7377733333333999399933333333377737773333333333990993
      3333333333737F73333333333331013333333333333777FF3333333333910193
      333333333337773FF3333333399000993333333337377737FF33333399900099
      93333333773777377FF333399930003999333337773777F777FF339993370733
      9993337773337333777333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = btn1Click
  end
  object pnl1: TPanel
    Left = 8
    Top = 8
    Width = 841
    Height = 353
    TabOrder = 7
    object lbl1: TLabel
      Left = 16
      Top = 8
      Width = 92
      Height = 13
      Caption = 'Per'#237'odo refer'#234'ncia:'
      ParentShowHint = False
      ShowHint = True
    end
    object lbl2: TLabel
      Left = 231
      Top = 5
      Width = 102
      Height = 13
      Caption = 'N'#250'mero do processo:'
      ParentShowHint = False
      ShowHint = True
    end
    object lbl3: TLabel
      Left = 464
      Top = 5
      Width = 170
      Height = 13
      Caption = 'Indicador de Susp. da Exigibilidade:'
      ParentShowHint = False
      ShowHint = True
    end
    object lbl4: TLabel
      Left = 231
      Top = 69
      Width = 52
      Height = 13
      Caption = 'CPF/CNPJ:'
      ParentShowHint = False
      ShowHint = True
    end
    object lbl5: TLabel
      Left = 16
      Top = 68
      Width = 85
      Height = 13
      Caption = 'Tipo de Inscri'#231#227'o:'
      ParentShowHint = False
      ShowHint = True
    end
    object lbl6: TLabel
      Left = 462
      Top = 69
      Width = 57
      Height = 13
      Caption = 'Data Inicial:'
      ParentShowHint = False
      ShowHint = True
    end
    object lbl7: TLabel
      Left = 630
      Top = 69
      Width = 44
      Height = 13
      Caption = 'Data fim:'
      ParentShowHint = False
      ShowHint = True
    end
    object lbl8: TLabel
      Left = 16
      Top = 148
      Width = 85
      Height = 13
      Caption = 'Tipo do Processo:'
      ParentShowHint = False
      ShowHint = True
    end
    object lbl9: TLabel
      Left = 231
      Top = 148
      Width = 163
      Height = 13
      Caption = 'C'#243'd Ind.da susp. de Exigibilidade:'
      ParentShowHint = False
      ShowHint = True
    end
    object lbl10: TLabel
      Left = 464
      Top = 148
      Width = 82
      Height = 13
      Caption = 'Data da Decis'#227'o:'
      ParentShowHint = False
      ShowHint = True
    end
    object lbl11: TLabel
      Left = 606
      Top = 147
      Width = 150
      Height = 13
      Caption = 'Indicador de Deposito Integral:'
      ParentShowHint = False
      ShowHint = True
    end
    object lbl12: TLabel
      Left = 16
      Top = 228
      Width = 87
      Height = 13
      Caption = 'UF da se'#231#227'o Jud.:'
      ParentShowHint = False
      ShowHint = True
    end
    object lbl13: TLabel
      Left = 155
      Top = 228
      Width = 69
      Height = 13
      Caption = 'C'#243'd Minicipio.:'
      ParentShowHint = False
      ShowHint = True
    end
    object lbl14: TLabel
      Left = 299
      Top = 228
      Width = 71
      Height = 13
      Caption = 'C'#243'd. da Vara.:'
      ParentShowHint = False
      ShowHint = True
    end
    object lbl15: TLabel
      Left = 464
      Top = 227
      Width = 149
      Height = 13
      Caption = 'Ind. da autoria da A'#231#227'o judicial'
      ParentShowHint = False
      ShowHint = True
    end
    object dbedtPERAPUR: TDBEdit
      Left = 16
      Top = 27
      Width = 90
      Height = 19
      Hint = 'C'#243'digo da Empresa  '
      Ctl3D = False
      DataField = 'PERAPUR'
      DataSource = DM.dsProcessos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object dbedtNRPROC: TDBEdit
      Left = 231
      Top = 24
      Width = 170
      Height = 19
      Hint = 'C'#243'digo da Empresa  '
      Ctl3D = False
      DataField = 'NRPROC'
      DataSource = DM.dsProcessos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object cbbINDSUSP: TJvDBComboBox
      Left = 464
      Top = 23
      Width = 313
      Height = 22
      Hint = 'Selecione o Indicador de Natureza'
      Style = csOwnerDrawFixed
      DataField = 'INDSUSP'
      DataSource = DM.dsProcessos
      Items.Strings = (
        '01 - Liminar em Mandado de Seguran'#231'a'
        '04 - Antecipa'#231#227'o de Tutela'
        '05 - Liminar em Medida Cautelar'
        '08 - Sente'#231'a em Mandado de Seguran'#231'a Favor'#225'vel ao Contribuinte'
        
          '09 - Senten'#231'a em A'#231#227'o Ordin'#225'ria Favor'#225'vel ao Contribuinte e Conf' +
          'irmada pelo TRF'
        '10 - Ac'#243'rd'#227'o do TRF Favor'#225'vel ao Contribuinte'
        
          '11 - Ac'#243'rd'#227'o do STJ em Recurso Especial Favor'#225'vel ao Contribuint' +
          'e'
        
          '12 - Ac'#243'rd'#227'o do STF em Recurso Extraordin'#225'rio Favor'#225'vel ao Contr' +
          'ibuinte'
        
          '13 - Sente'#231'a de 1'#170' inst'#226'ncia n'#227'o trasitada em julgado com efeito' +
          ' suspensivo'
        '90 - Decis'#227'o Definitiva a favor do Contribuinte'
        '92 - Sem suspens'#227'o da exigibilidade ')
      TabOrder = 2
      Values.Strings = (
        '01'
        '04'
        '05 '
        '08'
        '09'
        '10 '
        '11 '
        '12 '
        '13 '
        '90'
        '92 ')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object dbedtNRINSC: TDBEdit
      Left = 231
      Top = 88
      Width = 154
      Height = 19
      Hint = 'C'#243'digo da Empresa  '
      Ctl3D = False
      DataField = 'NRINSC'
      DataSource = DM.dsProcessos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object cbbTPINSC: TJvDBComboBox
      Left = 16
      Top = 87
      Width = 171
      Height = 22
      Hint = 'Selecione o Indicador de Natureza'
      Style = csOwnerDrawFixed
      DataField = 'TPINSC'
      DataSource = DM.dsProcessos
      Items.Strings = (
        '1 - CNPJ'
        '2 - CPF')
      TabOrder = 4
      Values.Strings = (
        '1'
        '2')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
      OnChange = cbbTPINSCChange
    end
    object dbedtINIVALID: TDBEdit
      Left = 462
      Top = 88
      Width = 90
      Height = 19
      Hint = 'C'#243'digo da Empresa  '
      Ctl3D = False
      DataField = 'INIVALID'
      DataSource = DM.dsProcessos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object dbedtFIMVALID: TDBEdit
      Left = 630
      Top = 88
      Width = 90
      Height = 19
      Hint = 'C'#243'digo da Empresa  '
      Ctl3D = False
      DataField = 'FIMVALID'
      DataSource = DM.dsProcessos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object cbbTPPROC: TJvDBComboBox
      Left = 16
      Top = 167
      Width = 171
      Height = 22
      Hint = 'Selecione o Indicador de Natureza'
      Style = csOwnerDrawFixed
      DataField = 'TPPROC'
      DataSource = DM.dsProcessos
      Items.Strings = (
        '1 - Administrativo'
        '2 - Judicial')
      TabOrder = 7
      Values.Strings = (
        '1'
        '2')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object dbedtCODSUSP: TDBEdit
      Left = 231
      Top = 167
      Width = 186
      Height = 19
      Hint = 'C'#243'digo da Empresa  '
      Ctl3D = False
      DataField = 'CODSUSP'
      DataSource = DM.dsProcessos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 8
    end
    object dbedtDTDECISAO: TDBEdit
      Left = 464
      Top = 167
      Width = 105
      Height = 19
      Hint = 'C'#243'digo da Empresa  '
      Ctl3D = False
      DataField = 'DTDECISAO'
      DataSource = DM.dsProcessos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 9
    end
    object cbbINDDEPOSITO: TJvDBComboBox
      Left = 606
      Top = 166
      Width = 171
      Height = 22
      Hint = 'Selecione o Indicador de Natureza'
      Style = csOwnerDrawFixed
      DataField = 'INDDEPOSITO'
      DataSource = DM.dsProcessos
      Items.Strings = (
        'S - Sim'
        'N - N'#227'o')
      TabOrder = 10
      Values.Strings = (
        'S'
        'N')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object dbedtUFVARA: TDBEdit
      Left = 16
      Top = 247
      Width = 49
      Height = 19
      Hint = 'C'#243'digo da Empresa  '
      Ctl3D = False
      DataField = 'UFVARA'
      DataSource = DM.dsProcessos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
    end
    object dbedtCODMUNIC: TDBEdit
      Left = 155
      Top = 247
      Width = 102
      Height = 19
      Hint = 'C'#243'digo da Empresa  '
      Ctl3D = False
      DataField = 'CODMUNIC'
      DataSource = DM.dsProcessos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
    end
    object dbedtIDVARA: TDBEdit
      Left = 299
      Top = 247
      Width = 102
      Height = 19
      Hint = 'C'#243'digo da Empresa  '
      Ctl3D = False
      DataField = 'IDVARA'
      DataSource = DM.dsProcessos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
    end
    object cbbINDAUDITORIA: TJvDBComboBox
      Left = 464
      Top = 246
      Width = 313
      Height = 22
      Hint = 'Selecione o Indicador de Natureza'
      Style = csOwnerDrawFixed
      DataField = 'INDAUDITORIA'
      DataSource = DM.dsProcessos
      Items.Strings = (
        '1 - Pr'#243'prio Contribuinte'
        '2 - Outra entidade, empresa ou empregado ')
      TabOrder = 14
      Values.Strings = (
        '1'
        '2')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
  end
end
