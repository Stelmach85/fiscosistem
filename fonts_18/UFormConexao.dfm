object FormConexao: TFormConexao
  Left = 293
  Top = 192
  HelpContext = 224
  BorderIcons = [biSystemMenu]
  Caption = 'Configura'#231#227'o do Banco de Dados do REINF'
  ClientHeight = 240
  ClientWidth = 580
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clMaroon
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object bvlBotoes: TBevel
    Left = 0
    Top = 191
    Width = 578
    Height = 42
    Shape = bsFrame
  end
  object sbGravar: TSpeedButton
    Left = 42
    Top = 198
    Width = 100
    Height = 26
    Hint = 'Salvar as Configura'#231#245'es  '
    Caption = 'Salvar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
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
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = sbGravarClick
  end
  object sbCancelar: TSpeedButton
    Left = 302
    Top = 198
    Width = 100
    Height = 26
    Hint = 'Cancelar Conex'#227'o com Banco de Dados'
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
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
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = sbCancelarClick
  end
  object sbSair: TSpeedButton
    Left = 438
    Top = 198
    Width = 100
    Height = 26
    Hint = 'Sair do Cadastro de Configura'#231#245'es '
    Caption = 'Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
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
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = sbSairClick
  end
  object sbConectar: TSpeedButton
    Left = 172
    Top = 198
    Width = 100
    Height = 26
    Hint = 'Testar Conex'#227'o com Banco de Dados'
    Caption = 'Conectar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Glyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      0800000000000001000000000000000000000001000000010000FF00FF000875
      0D0010A61D0013AA220016AD260017AF2A001AB12D001CB4310020B8360021B8
      390025BD3E0026BE41002AC147002CC349002FC74F0030C9520035CE590038D1
      5E003AD260003CD462003ED766003FD8680041DA6D0045DD710049E279004DE6
      7F000E7FA9000E80AA001385AF000682B600078DBB002692BF000C92C000089C
      CE00129FCB000DA2D40011A7D20020A1CA0035A7CD0030BCDD0044BADD0023D7
      FE0036D8FD004AC5DD0049C1E30049D5EE0063DAF50059EAFE006CE0F8006FE6
      FF006FF8FF0072F9FE007AFEFF0092CEE4008DE7FA0082F8FF008CFBFE0091FC
      FE0097FEFF009BFBFC00BAEEF600A0FCFE00A8FFFF00ADFFFF00B6F6FF00B3FC
      FE00B4FFFF00C6F5FF00C7FFFF00D3FFFF00E3FAFF00E4FFFF00E9F9FD00F1FB
      FD00F4FFFF00FCFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000101010100000000001B1B1B1B1B1B0001030201000000001E2D292A31
      36281B010603010000001E382F292A31010101010A07010101011E382F292A31
      0113100F0D0B0A0605011E382F292A3101161611100D0C0A08011E4140434648
      010101011513010101011E3C27242225261F35011716010000001E2B2F292A31
      362C1D011919010000001E382F292A31362C21010101010000001E382F292A31
      362C211A0000000000001E382F292A31362C211B0000000000001E3937323439
      3D2E231B0000000000001E4B4A4541413F3F321B00000000000000204A46443F
      3D3B1C0000000000000000001E1E1E1E1E1E0000000000000000}
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = sbConectarClick
  end
  object stxDataBase: TStaticText
    Left = 16
    Top = 53
    Width = 175
    Height = 18
    AutoSize = False
    Caption = 'Nome da Conex'#227'o [Database]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object gbConexao: TGroupBox
    Left = 0
    Top = 0
    Width = 578
    Height = 185
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object lblUsuario: TLabel
      Left = 16
      Top = 116
      Width = 101
      Height = 13
      Caption = 'Usu'#225'rio [User_name]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblSenha: TLabel
      Left = 218
      Top = 117
      Width = 87
      Height = 13
      Caption = 'Senha [Password]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblSelecioneDB: TLabel
      Left = 15
      Top = 23
      Width = 138
      Height = 13
      Caption = 'Selecione o Banco de Dados:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 218
      Top = 23
      Width = 105
      Height = 13
      Caption = 'Tipo de Autentica'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object edtUsuario: TEdit
      Left = 15
      Top = 132
      Width = 182
      Height = 19
      Hint = 'Nome do Usu'#225'rio do Banco de Dados     '
      BevelKind = bkFlat
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object edtSenha: TEdit
      Left = 218
      Top = 132
      Width = 166
      Height = 19
      Hint = 'Senha do Banco de Dados     '
      BevelKind = bkFlat
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      PasswordChar = '*'
      ShowHint = True
      TabOrder = 6
    end
    object edtHostName: TEdit
      Left = 15
      Top = 89
      Width = 182
      Height = 19
      Hint = 'Hostname do Local onde est'#225' o Banco '
      BevelKind = bkFlat
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object StaticText1: TStaticText
      Left = 15
      Top = 71
      Width = 202
      Height = 17
      Caption = 'Identifica'#231#227'o do Computador[Hostname] '
      DoubleBuffered = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 7
    end
    object stNomeDriver: TStaticText
      Left = 218
      Top = 71
      Width = 77
      Height = 17
      Caption = 'Porta do Banco'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object edtPorta: TEdit
      Left = 218
      Top = 89
      Width = 66
      Height = 19
      Hint = 'Porta do Banco de dados  '
      BevelKind = bkFlat
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object cbBancoDados: TComboBox
      Left = 15
      Top = 38
      Width = 182
      Height = 21
      BevelKind = bkFlat
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Text = 'Selecione o Banco de Dados'
      OnChange = cbBancoDadosChange
      Items.Strings = (
        'Oracle'
        'SQL Server'
        'Firebird')
    end
    object cbAutenticacao: TComboBox
      Left = 218
      Top = 39
      Width = 161
      Height = 22
      BevelKind = bkFlat
      Style = csOwnerDrawFixed
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Text = 'SQL Server'
      Visible = False
      Items.Strings = (
        'SQL Server'
        'Windows NT')
    end
    object edtNomeBanco: TEdit
      Left = 307
      Top = 89
      Width = 258
      Height = 19
      Hint = 'Nome do Banco de Dados      '
      BevelKind = bkFlat
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
    object StaticText2: TStaticText
      Left = 307
      Top = 71
      Width = 78
      Height = 17
      Caption = 'Nome do Banco'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
  end
end
