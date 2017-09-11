object FormContribuintes: TFormContribuintes
  Left = 0
  Top = 0
  Caption = 'Cadastro de Contribuintes'
  ClientHeight = 373
  ClientWidth = 758
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgc1: TPageControl
    Left = 1
    Top = -1
    Width = 1158
    Height = 617
    ActivePage = ts1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object ts1: TTabSheet
      Caption = 'Dados do Contribuinte'
      ParentShowHint = False
      ShowHint = True
      object lbl36: TLabel
        Left = 16
        Top = 8
        Width = 36
        Height = 13
        Caption = 'C'#243'digo:'
        FocusControl = dbedtCodemp
        ParentShowHint = False
        ShowHint = True
      end
      object lbl37: TLabel
        Left = 72
        Top = 8
        Width = 66
        Height = 13
        Caption = 'Raz'#227'o Social:'
        FocusControl = dbedtRsocial
        ParentShowHint = False
        ShowHint = True
      end
      object lbl38: TLabel
        Left = 220
        Top = 51
        Width = 55
        Height = 13
        Caption = 'CNPJ/CPF:'
        FocusControl = dbedtCnpj
        ParentShowHint = False
        ShowHint = True
      end
      object lbl13: TLabel
        Left = 16
        Top = 576
        Width = 19
        Height = 13
        Caption = 'Cep'
        FocusControl = dbedtCep
        ParentShowHint = False
        ShowHint = True
      end
      object lbl14: TLabel
        Left = 16
        Top = 616
        Width = 41
        Height = 13
        Caption = 'Dddfone'
        FocusControl = dbedtDddfone
        ParentShowHint = False
        ShowHint = True
      end
      object lbl15: TLabel
        Left = 16
        Top = 656
        Width = 24
        Height = 13
        Caption = 'Fone'
        FocusControl = dbedtFone
        ParentShowHint = False
        ShowHint = True
      end
      object lbl16: TLabel
        Left = 16
        Top = 696
        Width = 34
        Height = 13
        Caption = 'Dddfax'
        FocusControl = dbedtDddfax1
        ParentShowHint = False
        ShowHint = True
      end
      object lbl17: TLabel
        Left = 16
        Top = 736
        Width = 17
        Height = 13
        Caption = 'Fax'
        FocusControl = dbedtFax1
        ParentShowHint = False
        ShowHint = True
      end
      object lbl18: TLabel
        Left = 16
        Top = 776
        Width = 40
        Height = 13
        Caption = 'Cxpostal'
        FocusControl = dbedtCxpostal
        ParentShowHint = False
        ShowHint = True
      end
      object lbl19: TLabel
        Left = 16
        Top = 816
        Width = 50
        Height = 13
        Caption = 'Ufcxpostal'
        FocusControl = dbedtUfcxpostal
        ParentShowHint = False
        ShowHint = True
      end
      object lbl20: TLabel
        Left = 16
        Top = 856
        Width = 59
        Height = 13
        Caption = 'CepCxpostal'
        FocusControl = dbedtCepCxpostal
        ParentShowHint = False
        ShowHint = True
      end
      object lbl21: TLabel
        Left = 16
        Top = 896
        Width = 25
        Height = 13
        Caption = 'Email'
        FocusControl = dbedtEmail
        ParentShowHint = False
        ShowHint = True
      end
      object lbl22: TLabel
        Left = 16
        Top = 936
        Width = 70
        Height = 13
        Caption = 'Representante'
        FocusControl = dbedtRepresentante
        ParentShowHint = False
        ShowHint = True
      end
      object lbl23: TLabel
        Left = 16
        Top = 976
        Width = 62
        Height = 13
        Caption = 'Responsavel'
        FocusControl = dbedtResponsavel
        ParentShowHint = False
        ShowHint = True
      end
      object lbl1: TLabel
        Left = 20
        Top = 50
        Width = 85
        Height = 13
        Caption = 'Tipo de Inscri'#231#227'o:'
        FocusControl = dbedtCnpj
        ParentShowHint = False
        ShowHint = True
      end
      object lbl2: TLabel
        Left = 420
        Top = 49
        Width = 56
        Height = 13
        Caption = 'Data Inicial:'
        FocusControl = dbedtCnpj
        ParentShowHint = False
        ShowHint = True
      end
      object lbl3: TLabel
        Left = 588
        Top = 51
        Width = 51
        Height = 13
        Caption = 'Data Final:'
        FocusControl = dbedtCnpj
        ParentShowHint = False
        ShowHint = True
      end
      object lbl4: TLabel
        Left = 15
        Top = 114
        Width = 114
        Height = 13
        Caption = 'Obr. a entregra da ECD:'
        FocusControl = dbedtCnpj
        ParentShowHint = False
        ShowHint = True
      end
      object lbl5: TLabel
        Left = 207
        Top = 114
        Width = 202
        Height = 13
        Caption = 'Ind. de Desonera'#231#227'o da Folha pela CPRB:'
        FocusControl = dbedtCnpj
        ParentShowHint = False
        ShowHint = True
      end
      object lbl6: TLabel
        Left = 484
        Top = 114
        Width = 158
        Height = 13
        Caption = 'Ind. de Acordo Isen'#231#227'o de Multa:'
        FocusControl = dbedtCnpj
        ParentShowHint = False
        ShowHint = True
      end
      object lbl7: TLabel
        Left = 15
        Top = 178
        Width = 111
        Height = 13
        Caption = 'Ind. da Situa'#231#227'o da PJ:'
        FocusControl = dbedtCnpj
        ParentShowHint = False
        ShowHint = True
      end
      object lbl12: TLabel
        Left = 284
        Top = 178
        Width = 112
        Height = 13
        Caption = 'Classifica'#231#227'o Tribut'#225'ria:'
        FocusControl = dbedtCnpj
        ParentShowHint = False
        ShowHint = True
      end
      object dbedtCodemp: TDBEdit
        Left = 15
        Top = 24
        Width = 41
        Height = 19
        Hint = 'C'#243'digo da Empresa  '
        Ctl3D = False
        DataField = 'CODIGO'
        DataSource = DM.dsContribuintes
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
        TabOrder = 0
      end
      object dbedtRsocial: TDBEdit
        Left = 72
        Top = 24
        Width = 634
        Height = 19
        Hint = 'Digite a Raz'#227'o Social da Empresa'
        Ctl3D = False
        DataField = 'NMRAZAOSOCIAL'
        DataSource = DM.dsContribuintes
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
      object dbedtCnpj: TDBEdit
        Left = 207
        Top = 70
        Width = 160
        Height = 19
        Hint = 'Digite o CNPJ da empresa'
        Ctl3D = False
        DataField = 'NRINSC'
        DataSource = DM.dsContribuintes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object dbedtUf: TDBEdit
        Left = 16
        Top = 552
        Width = 30
        Height = 21
        DataField = 'Uf'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
      end
      object dbedtCep: TDBEdit
        Left = 16
        Top = 592
        Width = 134
        Height = 21
        DataField = 'Cep'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
      end
      object dbedtDddfone: TDBEdit
        Left = 16
        Top = 632
        Width = 56
        Height = 21
        DataField = 'Dddfone'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
      end
      object dbedtFone: TDBEdit
        Left = 16
        Top = 672
        Width = 186
        Height = 21
        DataField = 'Fone'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
      end
      object dbedtDddfax1: TDBEdit
        Left = 16
        Top = 712
        Width = 56
        Height = 21
        DataField = 'Dddfax'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
      end
      object dbedtFax1: TDBEdit
        Left = 16
        Top = 752
        Width = 186
        Height = 21
        DataField = 'Fax'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
      end
      object dbedtCxpostal: TDBEdit
        Left = 16
        Top = 792
        Width = 108
        Height = 21
        DataField = 'Cxpostal'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
      end
      object dbedtUfcxpostal: TDBEdit
        Left = 16
        Top = 832
        Width = 30
        Height = 21
        DataField = 'Ufcxpostal'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
      end
      object dbedtCepCxpostal: TDBEdit
        Left = 16
        Top = 872
        Width = 329
        Height = 21
        DataField = 'CepCxpostal'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 18
      end
      object dbedtEmail: TDBEdit
        Left = 16
        Top = 912
        Width = 524
        Height = 21
        DataField = 'Email'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 19
      end
      object dbedtRepresentante: TDBEdit
        Left = 16
        Top = 952
        Width = 134
        Height = 21
        DataField = 'Representante'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 20
      end
      object dbedtResponsavel: TDBEdit
        Left = 16
        Top = 992
        Width = 134
        Height = 21
        DataField = 'Responsavel'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 21
      end
      object dbchkTransferido: TDBCheckBox
        Left = 16
        Top = 1016
        Width = 97
        Height = 17
        Caption = 'Transferido'
        DataField = 'Transferido'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 22
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object dbnvgr1: TDBNavigator
        Left = 39
        Top = 264
        Width = 236
        Height = 26
        DataSource = DM.dsContribuintes
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Hints.Strings = (
          'Primeira Empresa'
          'Anterior'
          'Pr'#243'xima '
          #218'ltima Empresa ')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object btnCancelar: TBitBtn
        Left = 383
        Top = 311
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
        TabOrder = 8
        OnClick = btnCancelarClick
      end
      object btnExcluir: TBitBtn
        Left = 298
        Top = 311
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
        TabOrder = 7
        OnClick = btnExcluirClick
      end
      object btnAlterar: TBitBtn
        Left = 212
        Top = 311
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
        TabOrder = 6
        OnClick = btnAlterarClick
      end
      object btnGravar: TBitBtn
        Left = 125
        Top = 311
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
        TabOrder = 5
        OnClick = btnGravarClick
      end
      object btnNovo: TBitBtn
        Left = 44
        Top = 311
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
        TabOrder = 4
        OnClick = btnNovoClick
      end
      object btn1: TBitBtn
        Left = 472
        Top = 311
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
        TabOrder = 9
        OnClick = btn1Click
      end
      object cbbTPINSC: TJvDBComboBox
        Left = 16
        Top = 69
        Width = 154
        Height = 22
        Hint = 'Selecione o Indicador de Natureza'
        Style = csOwnerDrawFixed
        DataField = 'TPINSC'
        DataSource = DM.dsContribuintes
        Items.Strings = (
          '1 - CNPJ'
          '2 - CPF')
        TabOrder = 23
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
        Left = 420
        Top = 70
        Width = 127
        Height = 19
        Hint = 'Digite o CNPJ da empresa'
        Ctl3D = False
        DataField = 'INIVALID'
        DataSource = DM.dsContribuintes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 24
      end
      object dbedtFIMVALID: TDBEdit
        Left = 588
        Top = 70
        Width = 127
        Height = 19
        Hint = 'Digite o CNPJ da empresa'
        Ctl3D = False
        DataField = 'FIMVALID'
        DataSource = DM.dsContribuintes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 25
      end
      object JvDBComboBox2: TJvDBComboBox
        Left = 15
        Top = 133
        Width = 154
        Height = 22
        Hint = 'Selecione o Indicador de Natureza'
        Style = csOwnerDrawFixed
        DataField = 'INDESCRITURACAO'
        DataSource = DM.dsContribuintes
        Items.Strings = (
          '0 - N'#227'o faz'
          '1 - Empresa Entrega a ECD')
        TabOrder = 26
        Values.Strings = (
          '0'
          '1')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object cbbINDDESONERACAO: TJvDBComboBox
        Left = 207
        Top = 133
        Width = 222
        Height = 22
        Hint = 'Selecione o Indicador de Natureza'
        Style = csOwnerDrawFixed
        DataField = 'INDDESONERACAO'
        DataSource = DM.dsContribuintes
        Items.Strings = (
          '0 - N'#227'o Aplic'#225'vel'
          '1 - Empresa enquadrada nos termos da Lei 12.556/2011')
        TabOrder = 27
        Values.Strings = (
          '0'
          '1')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object cbbINDACORDOISENMULTA: TJvDBComboBox
        Left = 484
        Top = 133
        Width = 173
        Height = 22
        Hint = 'Selecione o Indicador de Natureza'
        Style = csOwnerDrawFixed
        DataField = 'INDACORDOISENMULTA'
        DataSource = DM.dsContribuintes
        Items.Strings = (
          '0 - Sem Acordo'
          '1 - Com Acordo')
        TabOrder = 28
        Values.Strings = (
          '0'
          '1')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object cbbINDSITPJ: TJvDBComboBox
        Left = 15
        Top = 197
        Width = 173
        Height = 22
        Hint = 'Selecione o Indicador de Natureza'
        Style = csOwnerDrawFixed
        DataField = 'INDSITPJ'
        DataSource = DM.dsContribuintes
        Items.Strings = (
          '0 - Situa'#231#227'o Normal'
          '1 - Extin'#231#227'o'
          '2 - Fus'#227'o'
          '3 - Cis'#227'o'
          '4 - Incorpora'#231#227'o')
        TabOrder = 29
        Values.Strings = (
          '0'
          '1')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object cbbCLASSTRIB: TJvDBComboBox
        Left = 284
        Top = 197
        Width = 355
        Height = 21
        DataField = 'CLASSTRIB'
        DataSource = DM.dsContribuintes
        TabOrder = 30
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
        ListSettings.KeyField = 'codigo'
        ListSettings.DisplayField = 'descricao'
        ListSettings.DataSource = DM.dsRefClasTrib
      end
    end
    object ts2: TTabSheet
      Caption = 'Contato do Contribuinte'
      ImageIndex = 1
      object lbl30: TLabel
        Left = 11
        Top = 5
        Width = 80
        Height = 13
        Caption = 'C'#243'digo Empresa:'
        FocusControl = dbedtCodemp1
        ParentShowHint = False
        ShowHint = True
      end
      object lbl8: TLabel
        Left = 139
        Top = 3
        Width = 160
        Height = 13
        Caption = 'Nome do Contato no Contribuinte:'
        FocusControl = dbedtCodemp1
        ParentShowHint = False
        ShowHint = True
      end
      object lbl9: TLabel
        Left = 12
        Top = 65
        Width = 23
        Height = 13
        Caption = 'CPF:'
        FocusControl = dbedtCodemp1
        ParentShowHint = False
        ShowHint = True
      end
      object lbl10: TLabel
        Left = 179
        Top = 65
        Width = 67
        Height = 13
        Caption = 'Telefone Fixo:'
        FocusControl = dbedtCodemp1
        ParentShowHint = False
        ShowHint = True
      end
      object lbl11: TLabel
        Left = 407
        Top = 65
        Width = 35
        Height = 13
        Caption = 'Celular:'
        FocusControl = dbedtCodemp1
        ParentShowHint = False
        ShowHint = True
      end
      object lbl24: TLabel
        Left = 12
        Top = 129
        Width = 31
        Height = 13
        Caption = 'E-mail:'
        FocusControl = dbedtCodemp1
        ParentShowHint = False
        ShowHint = True
      end
      object lbl25: TLabel
        Left = 179
        Top = 187
        Width = 30
        Height = 13
        Caption = 'CNPJ:'
        FocusControl = dbedtCodemp1
        ParentShowHint = False
        ShowHint = True
      end
      object lbl26: TLabel
        Left = 15
        Top = 186
        Width = 98
        Height = 13
        Caption = 'Org'#227'o Publ. '#233' ERF ?'
        FocusControl = dbedtCodemp1
        ParentShowHint = False
        ShowHint = True
      end
      object dbedtCodemp1: TDBEdit
        Left = 11
        Top = 20
        Width = 81
        Height = 19
        Hint = 'N'#227'o altere o c'#243'digo da empresa'
        Ctl3D = False
        DataField = 'CODIGO'
        DataSource = DM.dsContribuintes
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
        TabOrder = 0
      end
      object btnGravar2: TBitBtn
        Left = 15
        Top = 303
        Width = 75
        Height = 25
        Hint = 'Gravar altera'#231#245'es'
        Caption = 'Gravar'
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
        TabOrder = 1
        OnClick = btnGravar2Click
      end
      object btnAlterar2: TBitBtn
        Left = 104
        Top = 303
        Width = 75
        Height = 25
        Hint = 'Alterar dados'
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
        TabOrder = 2
        OnClick = btnAlterar2Click
      end
      object btnCancelar2: TBitBtn
        Left = 194
        Top = 303
        Width = 75
        Height = 25
        Hint = 'Cancelar Opera'#231#245'es Realizadas'
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
        TabOrder = 3
        OnClick = btnCancelar2Click
      end
      object btn2: TBitBtn
        Left = 282
        Top = 303
        Width = 75
        Height = 25
        Hint = 'Cancelar Opera'#231#245'es Realizadas'
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
        TabOrder = 4
        OnClick = btn2Click
      end
      object dbedtNMCTT: TDBEdit
        Left = 139
        Top = 20
        Width = 510
        Height = 19
        Hint = 'N'#227'o altere o c'#243'digo da empresa'
        Ctl3D = False
        DataField = 'NMCTT'
        DataSource = DM.dsContribuintes
        Enabled = False
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
      object dbedtCPFCTT: TDBEdit
        Left = 11
        Top = 84
        Width = 142
        Height = 19
        Hint = 'N'#227'o altere o c'#243'digo da empresa'
        Ctl3D = False
        DataField = 'CPFCTT'
        DataSource = DM.dsContribuintes
        Enabled = False
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
      object dbedtFONEFIXO: TDBEdit
        Left = 179
        Top = 84
        Width = 142
        Height = 19
        Hint = 'N'#227'o altere o c'#243'digo da empresa'
        Ctl3D = False
        DataField = 'FONEFIXO'
        DataSource = DM.dsContribuintes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
      end
      object dbedtFONECEL: TDBEdit
        Left = 407
        Top = 84
        Width = 142
        Height = 19
        Hint = 'N'#227'o altere o c'#243'digo da empresa'
        Ctl3D = False
        DataField = 'FONECEL'
        DataSource = DM.dsContribuintes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
      end
      object dbedtEMAIL_CONTATO: TDBEdit
        Left = 12
        Top = 148
        Width = 510
        Height = 19
        Hint = 'N'#227'o altere o c'#243'digo da empresa'
        Ctl3D = False
        DataField = 'EMAIL_CONTATO'
        DataSource = DM.dsContribuintes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
      end
      object cbbIDEEFR: TJvDBComboBox
        Left = 12
        Top = 205
        Width = 154
        Height = 22
        Hint = 'Selecione o Indicador de Natureza'
        Style = csOwnerDrawFixed
        DataField = 'IDEEFR'
        DataSource = DM.dsContribuintes
        Items.Strings = (
          'Sim'
          'N'#227'o')
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
      object dbedtCNPJEFR: TDBEdit
        Left = 179
        Top = 206
        Width = 198
        Height = 19
        Hint = 'N'#227'o altere o c'#243'digo da empresa'
        Ctl3D = False
        DataField = 'CNPJEFR'
        DataSource = DM.dsContribuintes
        Enabled = False
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
    end
  end
end
