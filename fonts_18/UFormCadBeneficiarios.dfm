object FormCadBeneficiarios: TFormCadBeneficiarios
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Cadastro de Benefici'#225'rios dos Rendimentos Tribut'#225'veis'
  ClientHeight = 529
  ClientWidth = 897
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgc1: TPageControl
    Left = 0
    Top = 0
    Width = 897
    Height = 529
    ActivePage = ts1
    TabOrder = 0
    object ts1: TTabSheet
      Caption = 'Cadastros'
      object pnl1: TPanel
        Left = 28
        Top = 40
        Width = 841
        Height = 353
        TabOrder = 0
        object lbl1: TLabel
          Left = 16
          Top = 8
          Width = 168
          Height = 13
          Caption = 'Nome/Raz'#227'o Social do Beneficiario:'
          ParentShowHint = False
          ShowHint = True
        end
        object lbl3: TLabel
          Left = 258
          Top = 176
          Width = 211
          Height = 13
          Caption = 'Indicativo do N'#250'mero de Identifica'#231#227'o F'#237'scal'
          ParentShowHint = False
          ShowHint = True
        end
        object lbl5: TLabel
          Left = 509
          Top = 7
          Width = 85
          Height = 13
          Caption = 'Tipo de Inscri'#231#227'o:'
          ParentShowHint = False
          ShowHint = True
        end
        object lbl4: TLabel
          Left = 679
          Top = 8
          Width = 52
          Height = 13
          Caption = 'CPF/CNPJ:'
          ParentShowHint = False
          ShowHint = True
        end
        object lbl12: TLabel
          Left = 16
          Top = 66
          Width = 100
          Height = 13
          Caption = 'Pa'#237's da Resid. Fiscal:'
          ParentShowHint = False
          ShowHint = True
        end
        object lbl2: TLabel
          Left = 258
          Top = 67
          Width = 56
          Height = 13
          Caption = 'logradouro:'
          ParentShowHint = False
          ShowHint = True
        end
        object lbl6: TLabel
          Left = 679
          Top = 67
          Width = 41
          Height = 13
          Caption = 'Numero:'
          ParentShowHint = False
          ShowHint = True
        end
        object lbl7: TLabel
          Left = 16
          Top = 128
          Width = 69
          Height = 13
          Caption = 'Complemento:'
          ParentShowHint = False
          ShowHint = True
        end
        object lbl8: TLabel
          Left = 258
          Top = 128
          Width = 37
          Height = 13
          Caption = 'Cidade:'
          ParentShowHint = False
          ShowHint = True
        end
        object lbl9: TLabel
          Left = 679
          Top = 128
          Width = 23
          Height = 13
          Caption = 'CEP:'
          ParentShowHint = False
          ShowHint = True
        end
        object lbl10: TLabel
          Left = 16
          Top = 176
          Width = 32
          Height = 13
          Caption = 'Bairro:'
          ParentShowHint = False
          ShowHint = True
        end
        object lbl11: TLabel
          Left = 16
          Top = 232
          Width = 184
          Height = 13
          Caption = 'N'#250'mero de indentifica'#231#227'o Fiscal -  NIF:'
          ParentShowHint = False
          ShowHint = True
        end
        object lbl13: TLabel
          Left = 679
          Top = 176
          Width = 59
          Height = 13
          Caption = 'Data Laudo:'
          ParentShowHint = False
          ShowHint = True
        end
        object lbl14: TLabel
          Left = 258
          Top = 232
          Width = 220
          Height = 13
          Caption = 'Rela'#231#227'o Fonte Pagadora PJ e Benefici'#225'rio PJ :'
          ParentShowHint = False
          ShowHint = True
        end
        object dbedtNMRAZAOBENEF: TDBEdit
          Left = 16
          Top = 27
          Width = 473
          Height = 19
          Hint = 'Nome do Benefici'#225'rio'
          Ctl3D = False
          DataField = 'NMRAZAOBENEF'
          DataSource = DM.dsBeneficiarios
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
        object cbbINDNIF: TJvDBComboBox
          Left = 258
          Top = 195
          Width = 404
          Height = 22
          Hint = 'Informe o Indicativo do N'#250'emro de F'#237'scal'
          Style = csOwnerDrawFixed
          DataField = 'INDNIF'
          DataSource = DM.dsBeneficiarios
          Items.Strings = (
            '1 - Beneficiario com NIF'
            '2 - Beneficiario dispensado do NIF'
            '3 - Pa'#237's n'#227'o exige NIF')
          TabOrder = 10
          Values.Strings = (
            '1'
            '2'
            '3')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object cbbTPINSC: TJvDBComboBox
          Left = 509
          Top = 26
          Width = 153
          Height = 22
          Hint = 'Informe o tipo de Inscri'#231#227'o CPF/CNPJ'
          Style = csOwnerDrawFixed
          DataField = 'TPINSCBENF'
          DataSource = DM.dsBeneficiarios
          Items.Strings = (
            '1 - CNPJ'
            '2 - CPF')
          TabOrder = 0
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
        object dbedtNRINSC: TDBEdit
          Left = 679
          Top = 27
          Width = 138
          Height = 19
          Hint = 'Informe o N'#186' da inscri'#231#227'o'
          Ctl3D = False
          DataField = 'NRINSCBENEF'
          DataSource = DM.dsBeneficiarios
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
        object cbbPAISRESID: TJvDBComboBox
          Left = 16
          Top = 85
          Width = 220
          Height = 21
          Hint = 'Selecione o Pais do Contribuinte'
          DataField = 'PAISRESID'
          DataSource = DM.dsBeneficiarios
          TabOrder = 3
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
          ListSettings.KeyField = 'COD_PAIS'
          ListSettings.DisplayField = 'descricao'
          ListSettings.DataSource = DM.dsPais
        end
        object dbedtDSCLOGRAD: TDBEdit
          Left = 258
          Top = 86
          Width = 404
          Height = 19
          Hint = 'Informe o Logradouro'
          Ctl3D = False
          DataField = 'DSCLOGRAD'
          DataSource = DM.dsBeneficiarios
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
        object dbedtNRLOGRAD: TDBEdit
          Left = 679
          Top = 86
          Width = 138
          Height = 19
          Hint = 'Informe o N'#186' '
          Ctl3D = False
          DataField = 'NRLOGRAD'
          DataSource = DM.dsBeneficiarios
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
        object dbedtCOMPLEM: TDBEdit
          Left = 16
          Top = 147
          Width = 220
          Height = 19
          Hint = 'Informe o Complemento do Endere'#231'o'
          Ctl3D = False
          DataField = 'COMPLEM'
          DataSource = DM.dsBeneficiarios
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
        object dbedtCIDADE: TDBEdit
          Left = 258
          Top = 147
          Width = 404
          Height = 19
          Hint = 'Informe a Cidade'
          Ctl3D = False
          DataField = 'CIDADE'
          DataSource = DM.dsBeneficiarios
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
        object dbedtCODPOSTA: TDBEdit
          Left = 679
          Top = 147
          Width = 138
          Height = 19
          Hint = 'Informe o CEP'
          Ctl3D = False
          DataField = 'CODPOSTA'
          DataSource = DM.dsBeneficiarios
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
        object dbedtBAIRRO: TDBEdit
          Left = 16
          Top = 195
          Width = 220
          Height = 19
          Hint = 'Informe o Bairro'
          Ctl3D = False
          DataField = 'BAIRRO'
          DataSource = DM.dsBeneficiarios
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
        object dbedtNIFBENEF: TDBEdit
          Left = 16
          Top = 251
          Width = 220
          Height = 19
          Hint = 'Informe o N'#186' da NIF'
          Ctl3D = False
          DataField = 'NIFBENEF'
          DataSource = DM.dsBeneficiarios
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
        object dbedtDTLAUDO: TDBEdit
          Left = 679
          Top = 195
          Width = 138
          Height = 19
          Hint = 'Informe a Data do Laudo'
          Ctl3D = False
          DataField = 'DTLAUDO'
          DataSource = DM.dsBeneficiarios
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
        object cbbRELFONTEPAGAD: TJvDBComboBox
          Left = 258
          Top = 251
          Width = 559
          Height = 22
          Hint = 'Informe a Rela'#231#227'o entre a Fonte Pagadora e o Benefeciario '
          Style = csOwnerDrawFixed
          DataField = 'RELFONTEPAGAD'
          DataSource = DM.dsBeneficiarios
          Items.Strings = (
            '500 - A fonte pagadora '#233' matriz da benefici'#225'ria no exterior'
            
              '510 - A fonte pagadora '#233' filial, surcusal ou ag'#234'ncia da benefici' +
              #225'ria no exterior'
            
              '520 - A fonte pagadora '#233' controlada ou coligada da benefici'#225'ria ' +
              'no exterior, na forma dos '#163#163' 1'#186' e 2'#186' do art. 243 da Lei n'#186' 6.404' +
              ', de 1976'
            
              '530 - A fonte pagadora '#233' controladora ou coligada da benefici'#225'ri' +
              'a no exterior, na forma dos '#163#163' 1'#186' e 2'#186' do art. 243 da Lei n'#186' 6.4' +
              '04, de 1976'
            
              '540 - A fonte pagadora e a benefici'#225'ria no exterior est'#227'o sob co' +
              'ntrole societ'#225'rio ou administrativo comum ou quando pelo menos 1' +
              '0% do capital de cada uma , pertencer a uma mesma pessoa fisica ' +
              'ou jur'#237'dica'
            
              '550 - A fonte pagadora e a benefici'#225'ria no exterior tem particip' +
              'a'#231#227'o societ'#225'ria no capital de uma terceira pessoa jur'#237'dica, cuja' +
              ' soma as caracterize como controladoras ou coligadas na forma do' +
              's '#163#163' 1'#186' e 2'#186' do art. 243 da Lei n'#186' 6.404. de 1976'
            
              '560 - A fonte pagadora ou a benefici'#225'ria no exterior mantenha co' +
              'ntrato de exclusividade como agente, como distribuidor ou como c' +
              'oncession'#225'rio nas opera'#231#245'es com bens, servi'#231'os e direitos'
            
              '570 - A fonte pagadora e a benefici'#225'ria mant'#234'm acordo de atua'#231#227'o' +
              ' conjunta'
            
              '900 - N'#227'o h'#225' rela'#231#227'o entre a fonte pagadpra e a benefici'#225'ria no ' +
              'exterior')
          TabOrder = 13
          Values.Strings = (
            '500'
            '510'
            '520'
            '530'
            '540'
            '550'
            '560'
            '570'
            '900')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
      end
      object dbnvgr1: TDBNavigator
        Left = 28
        Top = 399
        Width = 236
        Height = 26
        DataSource = DM.dsBeneficiarios
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Hints.Strings = (
          'Primeira '
          'Anterior'
          'Pr'#243'xima '
          #218'ltima ')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object btnNovo: TBitBtn
        Left = 20
        Top = 452
        Width = 75
        Height = 25
        Hint = 'Cadastra um novo Processo'
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
        TabOrder = 2
        OnClick = btnNovoClick
      end
      object btnGravar: TBitBtn
        Left = 109
        Top = 452
        Width = 75
        Height = 25
        Hint = 'Grava os dados do Processo'
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
        TabOrder = 3
        OnClick = btnGravarClick
      end
      object btnAlterar: TBitBtn
        Left = 193
        Top = 452
        Width = 75
        Height = 25
        Hint = 'Altera os dados do Processo'
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
        TabOrder = 4
        OnClick = btnAlterarClick
      end
      object btnExcluir: TBitBtn
        Left = 274
        Top = 452
        Width = 75
        Height = 25
        Hint = 'Exclui um Processo'
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
        TabOrder = 5
        OnClick = btnExcluirClick
      end
      object btnCancelar: TBitBtn
        Left = 359
        Top = 452
        Width = 75
        Height = 25
        Hint = 'Cancela Opera'#231#227'o Realizada'
        Caption = 'Cancelar'
        DoubleBuffered = True
        Enabled = False
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
        OnClick = btnCancelarClick
      end
      object btn1: TBitBtn
        Left = 448
        Top = 452
        Width = 75
        Height = 25
        Hint = 'Fechar'
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
        TabOrder = 7
        OnClick = btn1Click
      end
    end
    object ts2: TTabSheet
      Caption = 'Integra'#231#227'o'
      ImageIndex = 1
      object lblDados: TLabel
        Left = 8
        Top = 37
        Width = 203
        Height = 13
        Caption = 'Dados Importados do arquivo (TXT)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbledtArquivo: TLabeledEdit
        Left = 204
        Top = 5
        Width = 365
        Height = 19
        Hint = 'Arquivo de Importa'#231#227'o dos Processos'
        Ctl3D = False
        EditLabel.Width = 164
        EditLabel.Height = 13
        EditLabel.Caption = 'Selecione o arquivo de importa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        LabelPosition = lpLeft
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object btnLocalizar: TBitBtn
        Left = 575
        Top = 5
        Width = 35
        Height = 20
        Hint = 'Selecionar o arquivo de importa'#231#227'o'
        DoubleBuffered = True
        Glyph.Data = {
          46050000424D4605000000000000360000002800000012000000120000000100
          2000000000001005000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000002000000060000001003080B330A192452010405180000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000040000000C020507250A1A255016375084296391C43A8ACCEB347F
          B9EF0B1C285D0000000500000000000000000000000000000001000000030000
          000801030419060F15370F233364204E70A73377ADD53E8FD1F048A0EBFE4CA4
          F1FF4AA2ECFF347EB7FF0E25357F000000100000000000000000000000020104
          0517071017461739518A2B6690BF3B86BFE74AA3E9FE4FA8F1FF52A9F2FF54A9
          F2FF56AAF2FF58AAF2FF4899DAFF3072A6FF102A3D910000001C000000000000
          0000040B101B2D6992C14DA6E7FE53AEF0FF56B0F2FF59B0F2FF5BB1F3FF5EB2
          F2FF60B2F2FF62B2F3FF64B2F2FF63B1F1FF3B86BDFF3171A3FF1432489B0000
          00190000000000000000204A63765CB4EDFE62BBF3FF65BBF3FF67BCF3FF69BC
          F3FF6BBDF3FF6DBCF3FF6EBCF3FF6FBBF3FF70BAF3FF5BA9E2FF367CADFF3477
          A8FF1B435EA500000006000000000710151A5094BACF76C9F4FF77CAF4FF78CA
          F4FF79CAF3FF7AC9F3FF7AC8F3FF7BC7F3FF7CC6F3FF7DC5F3FF7AC1F2FF4896
          CAFF397FADFF387DADFF24597EB90000000000000000244355638FCDEBF9A0DD
          F7FF9FDDF7FF9FDCF7FF9DDBF6FF9CDAF6FF9AD8F6FF97D5F5FF91CFF3FF8ACA
          F0FF70B6E3FF3E8CBBFF3D87B3FF3D87B6FF2E6F99D100000000020406076398
          B5C9B3E6F8FFB3E7F9FFB2E6F8FFAFE4F8FFADE2F8FF9CD6F2FF7CC1E6FF66B2
          DCFF56A6D2FF489BC8FF4396C2FF4495C1FF4496C4FF479CCDFF3A8ABBE10205
          06081B364654A6D8EBF6BCEBFAFFBBEAF9FFB9E9F9FFB5E6F8FF91CFECFF53AA
          D4FF4FAAD0FF4EA8CFFF4EA9D1FF50ADD7FF51B1DCFF53B4E2FF54B7E8FF56BA
          EEFF469FD1E70610161B5987A1B5B2E1F4FFA1D4EAF889BCD3E37CC2E4FF6CBB
          DEFF61B9DBFF5CBADAFF59B8D9FF57B7DBFF59BFE6FF5CC6EFFF5CC7F2FF5CC7
          F3FF5BC6F4FF5BC4F4FF4FABDAEC0B1B262E2B4A5E6D36546572192D38411023
          2E386ABDDDFD84D4E8FF83D2E8FF80D2E9FF7ED2EBFF7DD4EFFF7DD7F4FF7CD7
          F6FF7AD6F7FF7AD4F7FF7AD4F7FF7CD4F6FF6EC1E5F210273541000000000000
          00000000000004090B0E68B7D6EF91E1F4FF91E2F6FF91E2F6FF90E2F7FF8FE1
          F8FF8FE1F8FF8EDFF8FF8DDFF8FF8EDEF8FF8EDDF8FF89D7F8FF77C5E4F1122C
          3C490000000000000000000000000307090B63AAC5D998E7F9FF98E7F9FF98E6
          F9FF97E6F9FF96E5F9FF94E3F8FF95E1F6FFB8E9F6FFCEEEF7FFCDE6FBFF799F
          F5FF32627F9202050708000000000000000000000000020507085897B1C395E3
          F6FF88D7F0FE78C2DCED62A4BCCD427B94A8265067793E738FA68FC2D9EB72A5
          BACB4A7D97AA27506B7E09131A1F000000000000000000000000000000000101
          02021C3A4A572D5468771B333F480C1A2228060E13170103040500000000040A
          0D100A181F26060E121602040506000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000}
        ParentDoubleBuffered = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object lbledtSeparador: TLabeledEdit
        Left = 814
        Top = 6
        Width = 24
        Height = 19
        Hint = 'Caracter Separador de Campo'
        Alignment = taCenter
        AutoSize = False
        Ctl3D = False
        EditLabel.Width = 191
        EditLabel.Height = 13
        EditLabel.Caption = 'Informe o caracter separador de campo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        LabelPosition = lpLeft
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Text = '|'
      end
      object crdbgrdPlanoContas: TCRDBGrid
        Left = 8
        Top = 56
        Width = 878
        Height = 385
        Hint = 'Dados importados dos Processos'
        OptionsEx = [dgeEnableSort, dgeLocalFilter, dgeLocalSorting, dgeRecordCount, dgeSearchBar]
        Ctl3D = False
        DataSource = DM.dsConsulBeneficiarios
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
      end
      object btnImportar: TBitBtn
        Left = 452
        Top = 458
        Width = 75
        Height = 25
        Hint = 'Importar Dados '
        Caption = 'Importar'
        DoubleBuffered = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
          FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
          00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
          F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
          00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
          F033777777777337F73309999990FFF0033377777777FFF77333099999000000
          3333777777777777333333399033333333333337773333333333333903333333
          3333333773333333333333303333333333333337333333333333}
        NumGlyphs = 2
        ParentDoubleBuffered = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object btnExcel: TBitBtn
        Left = 624
        Top = 458
        Width = 75
        Height = 25
        Hint = 'Clique para Gerar os Dados no Excel.'
        Caption = 'Excel'
        DoubleBuffered = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000020000
          00090000000E0000000F00000010000000100000001100000011000000110000
          001200000012000000110000000C000000030000000000000000000000087B50
          43C0AB705CFFAB6F5AFFAB705CFFAA6F5BFFAA6E59FFA96F5AFFAA6D59FFAA6C
          59FFAA6C59FFA96C58FF794D3FC30000000B00000000000000000000000CAD73
          5FFFFDFBF9FFFBF5F2FFFAF5F1FFFAF4F0FFFAF4EFFFFAF2EEFFFAF1EDFFF8F1
          ECFFF8F0EBFFF8F0EAFFD5B6ADFF0000001100000000000000000000000CB077
          62FFFDFBFAFFF7EDE6FF53A46CFF058131FF048030FF047F30FF037E2FFF037D
          2EFF027C2EFF027B2DFF02792CFF01792CFF00782BFF00511DAD0000000BB079
          66FFFDFBFBFFF8EEE8FF068332FFFAF6F6FF058131FFF9F5F3FF047F2FFFF8F2
          F1FFF7F2EFFF7DB68EFFF7EFEDFFF6EEEBFF7BB48BFF01782BFF0000000AB37C
          69FFFEFCFBFFF8F0EAFF068433FFFBF7F6FF058231FFF9F5F4FF048030FFF8F4
          F2FF037E2FFF037D2FFF027C2EFF7DB68DFFF6EEEBFF01792CFF00000009B67F
          6CFFFEFDFCFFF9F0EBFF078533FF81BE95FFFBF7F6FF80BD94FF048131FFF9F5
          F2FF047F30FF037E2FFF7EB88FFFF6F1EEFF037B2DFF017A2DFF00000009B983
          71FFFEFDFCFFFAF3EEFF068634FFFCF8F8FF068433FFFBF7F6FF068231FFFAF5
          F3FF048030FF047F30FFF8F3F0FF037D2EFF027C2EFF027A2DFF00000008BC88
          77FFFEFEFDFFFBF4EFFF078634FFFBFAF9FF078533FFFAF8F7FF068333FFFAF7
          F5FF058131FF058030FF7EB991FFF8F2F0FFF7F2EFFF027C2DFF00000007BF8C
          7AFFFEFEFDFFFBF6F1FF55AA71FF078634FF078534FF068534FF068433FF0683
          32FF058332FF058131FF058030FF047F30FF037E2FFF025420AD00000006C18F
          7FFFFEFEFEFFFAF6F3FFFAF5F3FFFBF6F2FFFBF5F1FFFBF5F0FFFBF5F0FFFAF4
          EFFFFAF4EEFFFDF9F8FFDEC3BAFF0000000B000000000000000000000006C493
          82FFFFFEFEFFFBF7F4FFFBF6F4FFFBF6F4FFFCF6F3FFFCF6F3FFFCF4F2FFFBF5
          F1FFFBF5F0FFFDFBF9FFBF8C7BFF0000000B000000000000000000000005C799
          85FFFFFEFEFFFCF8F7FFFCF8F6FFFCF7F5FFFCF7F5FFFBF6F4FFFBF6F4FFFCF6
          F3FFFCF6F2FFFDFCFAFFC28F7FFF0000000A000000000000000000000004C99A
          89FFFFFFFEFFFFFFFEFFFFFEFEFFFFFEFEFFFEFEFEFFFEFEFEFFFEFEFDFFFEFE
          FDFFFEFDFDFFFEFDFDFFC49382FF000000080000000000000000000000029775
          67C0CA9C8BFFCA9C8BFFC99C8AFFC99B89FFC99B8AFFCA9A88FFC89A88FFC999
          87FFC79887FFC89886FF927163C2000000050000000000000000000000010000
          0002000000030000000400000004000000050000000500000005000000060000
          0006000000060000000600000005000000010000000000000000}
        ParentDoubleBuffered = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
      object btnConsultar: TBitBtn
        Left = 537
        Top = 458
        Width = 81
        Height = 25
        Hint = 'Consultar Dados J'#225' Importados'
        Caption = 'Consultar'
        DoubleBuffered = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333333333333333333C3333333333333337F3333333333333C0C3333
          333333333777F33333333333C0F0C3333333333377377F333333333C0FFF0C33
          3333333777F377F3333333CCC0FFF0C333333373377F377F33333CCCCC0FFF0C
          333337333377F377F3334CCCCCC0FFF0C3337F3333377F377F33C4CCCCCC0FFF
          0C3377F333F377F377F33C4CC0CCC0FFF0C3377F3733F77F377333C4CCC0CC0F
          0C333377F337F3777733333C4C00CCC0333333377F773337F3333333C4CCCCCC
          3333333377F333F7333333333C4CCCC333333333377F37733333333333C4C333
          3333333333777333333333333333333333333333333333333333}
        NumGlyphs = 2
        ParentDoubleBuffered = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = btnConsultarClick
      end
      object btnExcluir1: TBitBtn
        Left = 705
        Top = 458
        Width = 75
        Height = 25
        Hint = 'Excluir Dados Importados'
        Caption = 'Excluir'
        DoubleBuffered = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
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
      end
      object btnSair: TBitBtn
        Left = 786
        Top = 458
        Width = 75
        Height = 25
        Hint = 'Sair da Importa'#231#227'o de Dados'
        Caption = 'Sair'
        DoubleBuffered = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
          03333377777777777F333301111111110333337F333333337F33330111111111
          0333337F333333337F333301111111110333337F333333337F33330111111111
          0333337F333333337F333301111111110333337F333333337F33330111111111
          0333337F3333333F7F333301111111B10333337F333333737F33330111111111
          0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
          0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
          0333337F377777337F333301111111110333337F333333337F33330111111111
          0333337FFFFFFFFF7F3333000000000003333377777777777333}
        NumGlyphs = 2
        ParentDoubleBuffered = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnClick = btnSairClick
      end
    end
  end
  object OpenArquivo: TOpenDialog
    Filter = 'txt|*.txt'
    InitialDir = 'C:\'
    Options = [ofHideReadOnly, ofAllowMultiSelect]
    Left = 852
    Top = 36
  end
end
