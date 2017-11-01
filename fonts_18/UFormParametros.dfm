object FormParametros: TFormParametros
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Cadastro de Par'#226'mentros do Sistema'
  ClientHeight = 636
  ClientWidth = 901
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
  object pnl1: TPanel
    Left = 8
    Top = 8
    Width = 881
    Height = 521
    TabOrder = 0
    object grpCertificado: TGroupBox
      Left = 16
      Top = 15
      Width = 841
      Height = 146
      Caption = 'Dados do Certificado'
      TabOrder = 0
      object lbl38: TLabel
        Left = 15
        Top = 19
        Width = 83
        Height = 13
        Caption = 'ID do certificado:'
        FocusControl = dbedtID
        ParentShowHint = False
        ShowHint = True
      end
      object lbl1: TLabel
        Left = 135
        Top = 19
        Width = 99
        Height = 13
        Caption = 'Nome do certificado:'
        FocusControl = dbedtNOME
        ParentShowHint = False
        ShowHint = True
      end
      object lbl2: TLabel
        Left = 607
        Top = 19
        Width = 102
        Height = 13
        Caption = 'Senha do certificado:'
        FocusControl = dbedtSENHA
        ParentShowHint = False
        ShowHint = True
      end
      object lbl3: TLabel
        Left = 15
        Top = 67
        Width = 96
        Height = 13
        Caption = 'S'#233'rie do certificado:'
        FocusControl = dbedtSERIE
        ParentShowHint = False
        ShowHint = True
      end
      object lbl11: TLabel
        Left = 278
        Top = 67
        Width = 106
        Height = 13
        Caption = 'Modelo do certificado:'
        ParentShowHint = False
        ShowHint = True
      end
      object lbl9: TLabel
        Left = 607
        Top = 66
        Width = 49
        Height = 13
        Caption = 'Ambiente:'
        ParentShowHint = False
        ShowHint = True
      end
      object dbedtID: TDBEdit
        Left = 15
        Top = 38
        Width = 74
        Height = 19
        Hint = 'Identificador sequencial do certificado'
        Ctl3D = False
        DataField = 'ID'
        DataSource = DM.dsParametros
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
      object dbedtNOME: TDBEdit
        Left = 135
        Top = 38
        Width = 394
        Height = 19
        Hint = 'Nome do certificado digital'
        Ctl3D = False
        DataField = 'NOME'
        DataSource = DM.dsParametros
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
      object dbedtSENHA: TDBEdit
        Left = 607
        Top = 38
        Width = 170
        Height = 19
        Hint = 'Informe a senha do certificado'
        Ctl3D = False
        DataField = 'SENHA'
        DataSource = DM.dsParametros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 2
      end
      object dbedtSERIE: TDBEdit
        Left = 15
        Top = 86
        Width = 186
        Height = 19
        Hint = 'N'#250'mero de s'#233'rie do certificado'
        Ctl3D = False
        DataField = 'SERIE'
        DataSource = DM.dsParametros
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
      object cbbMODELO: TJvDBComboBox
        Left = 278
        Top = 86
        Width = 171
        Height = 22
        Hint = 'Modelo do certificado'
        Style = csOwnerDrawFixed
        DataField = 'MODELO'
        DataSource = DM.dsParametros
        Items.Strings = (
          'A1'
          'A2')
        TabOrder = 4
        Values.Strings = (
          'A1'
          'A2')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object cbbAMBIENTEAMBIENTE: TJvDBComboBox
        Left = 607
        Top = 85
        Width = 171
        Height = 22
        Hint = 'Modelo do certificado'
        Style = csOwnerDrawFixed
        DataField = 'AMBIENTE'
        DataSource = DM.dsParametros
        Items.Strings = (
          '1 - Produ'#231#227'o '
          '2 - Pr'#233' - Produ'#231#227'o - dados reais'
          '3 - Pr'#233' - Produ'#231#227'o - dados fict'#237'cios')
        TabOrder = 5
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
    end
    object grpXML: TGroupBox
      Left = 16
      Top = 166
      Width = 505
      Height = 314
      Caption = 'Caminho do XML'
      Enabled = False
      TabOrder = 1
      object lbl4: TLabel
        Left = 14
        Top = 20
        Width = 135
        Height = 26
        Caption = 'Caminho do XML Importado:'#13#10
        ParentShowHint = False
        ShowHint = True
      end
      object lbl5: TLabel
        Left = 15
        Top = 74
        Width = 238
        Height = 26
        Caption = 'Caminho do XML Gerado e Assinado pelo Sistema:'#13#10
        ParentShowHint = False
        ShowHint = True
      end
      object lbl6: TLabel
        Left = 15
        Top = 131
        Width = 196
        Height = 26
        Caption = 'Caminho do XML Transmitido para a RFB:'#13#10
        ParentShowHint = False
        ShowHint = True
      end
      object lbl7: TLabel
        Left = 15
        Top = 186
        Width = 234
        Height = 26
        Caption = 'Caminho do XML Retornado sem Erros pela RFB :'#13#10
        ParentShowHint = False
        ShowHint = True
      end
      object lbl8: TLabel
        Left = 15
        Top = 240
        Width = 234
        Height = 26
        Caption = 'Caminho do XML Retornado com Erros pela RFB :'#13#10
        ParentShowHint = False
        ShowHint = True
      end
      object btnLocalizar: TBitBtn
        Left = 447
        Top = 41
        Width = 35
        Height = 20
        Hint = 'Selecione o caminho'
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
        TabOrder = 0
        OnClick = btnLocalizarClick
      end
      object dbedtXML_IMPORTADO: TDBEdit
        Left = 15
        Top = 44
        Width = 426
        Height = 19
        Hint = 'informe o caminho dos XML que ser'#227'o importados'
        Ctl3D = False
        DataField = 'XML_IMPORTADO'
        DataSource = DM.dsParametros
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
      object dbedtXML_GERADO: TDBEdit
        Left = 15
        Top = 100
        Width = 426
        Height = 19
        Hint = 'informe o caminho onde ser'#227'o salvos os XML gerados'
        Ctl3D = False
        DataField = 'XML_GERADO'
        DataSource = DM.dsParametros
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
      object btn1: TBitBtn
        Left = 447
        Top = 96
        Width = 35
        Height = 20
        Hint = 'Selecione o caminho'
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
        TabOrder = 3
        OnClick = btn1Click
      end
      object dbedtXML_TRANSMITIDO: TDBEdit
        Left = 15
        Top = 155
        Width = 426
        Height = 19
        Hint = 'Informe o caminho onde ser'#227'o salvos os XML transmitidos'
        Ctl3D = False
        DataField = 'XML_TRANSMITIDO'
        DataSource = DM.dsParametros
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
      object btn2: TBitBtn
        Left = 447
        Top = 151
        Width = 35
        Height = 20
        Hint = 'Selecione o caminho'
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
        TabOrder = 5
        OnClick = btn2Click
      end
      object dbedtXML_RETORNO: TDBEdit
        Left = 15
        Top = 210
        Width = 426
        Height = 19
        Hint = 'informe o caminho onde ser'#227'o salvos os XML de retorno sem erros'
        Ctl3D = False
        DataField = 'XML_RETORNO'
        DataSource = DM.dsParametros
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
      object btn3: TBitBtn
        Left = 447
        Top = 206
        Width = 35
        Height = 20
        Hint = 'Selecione o caminho'
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
        TabOrder = 7
        OnClick = btn3Click
      end
      object dbedtXML_RETORNO_ERRO: TDBEdit
        Left = 15
        Top = 265
        Width = 426
        Height = 19
        Hint = 'Informe o caminho onde ser'#227'o salvos os XML de retorno com erros'
        Ctl3D = False
        DataField = 'XML_RETORNO_ERRO'
        DataSource = DM.dsParametros
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
      object btn4: TBitBtn
        Left = 447
        Top = 261
        Width = 35
        Height = 20
        Hint = 'Selecione o caminho'
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
        TabOrder = 9
        OnClick = btn4Click
      end
    end
    object grpproxy: TGroupBox
      Left = 527
      Top = 166
      Width = 330
      Height = 171
      Caption = 'Configura'#231#227'o Proxy'
      Enabled = False
      TabOrder = 2
      object lbl10: TLabel
        Left = 14
        Top = 22
        Width = 26
        Height = 13
        Caption = 'Host:'
        ParentShowHint = False
        ShowHint = True
      end
      object lbl12: TLabel
        Left = 262
        Top = 22
        Width = 30
        Height = 13
        Caption = 'Porta:'
        ParentShowHint = False
        ShowHint = True
      end
      object lbl13: TLabel
        Left = 14
        Top = 77
        Width = 40
        Height = 13
        Caption = 'Usu'#225'rio:'
        ParentShowHint = False
        ShowHint = True
      end
      object lbl14: TLabel
        Left = 206
        Top = 77
        Width = 34
        Height = 13
        Caption = 'Senha:'
        ParentShowHint = False
        ShowHint = True
      end
      object dbedtHOST: TDBEdit
        Left = 15
        Top = 41
        Width = 226
        Height = 19
        Hint = 'N'#250'mero de s'#233'rie do certificado'
        Ctl3D = False
        DataField = 'HOST'
        DataSource = DM.dsParametros
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
      object dbedtPORTA: TDBEdit
        Left = 247
        Top = 41
        Width = 74
        Height = 19
        Hint = 'N'#250'mero de s'#233'rie do certificado'
        Ctl3D = False
        DataField = 'PORTA'
        DataSource = DM.dsParametros
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
      object dbedtUSUARIO: TDBEdit
        Left = 15
        Top = 96
        Width = 170
        Height = 19
        Hint = 'N'#250'mero de s'#233'rie do certificado'
        Ctl3D = False
        DataField = 'USUARIO'
        DataSource = DM.dsParametros
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
      object dbedtSENHAHOST: TDBEdit
        Left = 199
        Top = 96
        Width = 122
        Height = 19
        Hint = 'N'#250'mero de s'#233'rie do certificado'
        Ctl3D = False
        DataField = 'SENHAHOST'
        DataSource = DM.dsParametros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 3
      end
    end
  end
  object btnNovo: TBitBtn
    Left = 36
    Top = 599
    Width = 75
    Height = 25
    Hint = 'Cadastrar um novo registro'
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
    Left = 117
    Top = 599
    Width = 75
    Height = 25
    Hint = 'Grava os dados '
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
    Left = 204
    Top = 599
    Width = 75
    Height = 25
    Hint = 'Altera os dados '
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
    Left = 291
    Top = 599
    Width = 75
    Height = 25
    Hint = 'Exclui dados'
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
    Left = 375
    Top = 599
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
    TabOrder = 5
    OnClick = btnCancelarClick
  end
  object btn5: TBitBtn
    Left = 464
    Top = 599
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
    TabOrder = 6
    OnClick = btn5Click
  end
  object dbnvgr1: TDBNavigator
    Left = 43
    Top = 544
    Width = 236
    Height = 26
    DataSource = DM.dsParametros
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Hints.Strings = (
      'Primeira Empresa'
      'Anterior'
      'Pr'#243'xima '
      #218'ltima Empresa ')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
  end
  object JvSelectDirectory1: TJvSelectDirectory
    InitialDir = 'C:\'
    Left = 368
    Top = 184
  end
end
