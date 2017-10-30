object FormMensageria: TFormMensageria
  Left = 0
  Top = 0
  Caption = 'REINF - Mensagaria'
  ClientHeight = 698
  ClientWidth = 665
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
  object Label5: TLabel
    Left = 474
    Top = 456
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 644
    Width = 665
    Height = 54
    Align = alBottom
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 0
    object btnGerar: TButton
      Left = 125
      Top = 6
      Width = 138
      Height = 40
      Caption = 'Gerar Arquivos s/Enviar'
      TabOrder = 0
      OnClick = btnGerarClick
    end
    object btnEnviar: TButton
      Left = 268
      Top = 6
      Width = 130
      Height = 40
      Caption = 'Gerar e Enviar Arquivos'
      TabOrder = 1
      OnClick = btnEnviarClick
    end
    object btn1: TButton
      Left = 403
      Top = 4
      Width = 138
      Height = 40
      Caption = 'Sair da Mensageria'
      TabOrder = 2
      OnClick = btn1Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 665
    Height = 644
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = '  Eventos   '
      object lbl3: TLabel
        Left = 13
        Top = 575
        Width = 52
        Height = 13
        Caption = 'Protocolo :'
      end
      object grp1: TGroupBox
        Left = 0
        Top = 460
        Width = 654
        Height = 93
        Caption = 'Retifica'#231#227'o:'
        TabOrder = 5
        object lbl2: TLabel
          Left = 20
          Top = 32
          Width = 210
          Height = 13
          Caption = 'N'#250'mero do Recibo para a Retifica'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 101
        Width = 654
        Height = 344
        Caption = ' Eventos a serem Gerados de acordo com o Perfil do Contribuinte'
        TabOrder = 0
        object lbl1: TLabel
          Left = 26
          Top = 274
          Width = 84
          Height = 13
          Caption = ' Evento a Excluir:'
        end
        object lbl4: TLabel
          Left = 26
          Top = 312
          Width = 96
          Height = 13
          Caption = 'Per'#237'odo de Entrega:'
        end
        object chk1000: TCheckBox
          Left = 8
          Top = 27
          Width = 233
          Height = 17
          Caption = 'R-1000 - Informa'#231#245'es do Contribuinte'
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object chk2010: TCheckBox
          Left = 8
          Top = 77
          Width = 553
          Height = 17
          Caption = 'R-2010 - Reten'#231#227'o Contribui'#231#227'o Previdenci'#225'ria  Servi'#231'os Tomados '
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object chk2020: TCheckBox
          Left = 8
          Top = 102
          Width = 665
          Height = 17
          Caption = 
            'R-2020 - Reten'#231#227'o Contribui'#231#227'o Previdenci'#225'ria  Servi'#231'os Prestado' +
            's'
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object chk2098: TCheckBox
          Left = 8
          Top = 177
          Width = 271
          Height = 17
          Caption = 'R-2098 - Reabertura dos Eventos Peri'#243'dicos'
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
        object chk1070: TCheckBox
          Left = 8
          Top = 51
          Width = 268
          Height = 17
          Caption = 'R-1070 - Tabela de Processos'
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
        end
        object chk2099: TCheckBox
          Left = 8
          Top = 208
          Width = 271
          Height = 17
          Caption = 'R-2099 - Fechamento dos Eventos Peri'#243'dicos'
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
        end
        object chk9000: TCheckBox
          Left = 8
          Top = 238
          Width = 271
          Height = 17
          Caption = 'R-9000 - Exclus'#227'o de Eventos'
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
        end
        object chk2060: TCheckBox
          Left = 8
          Top = 126
          Width = 337
          Height = 17
          Caption = 
            'R-2060 - Contribui'#231#227'o Previdenci'#225'ria sobre a Receita Bruta - CPR' +
            'B'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsStrikeOut]
          ParentFont = False
          TabOrder = 7
        end
        object chk2070: TCheckBox
          Left = 8
          Top = 149
          Width = 337
          Height = 24
          Caption = 'R-2070 - Reten'#231#245'es na Fonte - IR, CSLL, Cofins, PIS/PASEP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsStrikeOut]
          ParentFont = False
          TabOrder = 8
        end
        object Button1: TButton
          Left = 291
          Top = 204
          Width = 116
          Height = 25
          Caption = 'Consulta Fechamento'
          Enabled = False
          TabOrder = 9
        end
        object cbbEvento: TComboBox
          Left = 116
          Top = 267
          Width = 87
          Height = 21
          TabOrder = 10
          Items.Strings = (
            'R-2010'
            'R-2020')
        end
        object cbb1: TComboBox
          Left = 126
          Top = 304
          Width = 84
          Height = 21
          ItemIndex = 0
          TabOrder = 11
          Text = '01-2018'
          Items.Strings = (
            '01-2018'
            '02-2018'
            '03-2018'
            '04-2018'
            '05-2018'
            '06-2018'
            '07-2018'
            '08-2018'
            '09-2018'
            '10-2018'
            '11-2018'
            '12-2018'
            '01-2019'
            '02-2019'
            '03-2019'
            '04-2019'
            '05-2019'
            '06-2019'
            '07-2019'
            '08-2019'
            '09-2019'
            '10-2019'
            '11-2019'
            '12-2019')
        end
      end
      object rdgOperacao: TRadioGroup
        Left = 0
        Top = 0
        Width = 657
        Height = 43
        Align = alTop
        Caption = '  Opera'#231#227'o  '
        Columns = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Inclus'#227'o'
          'Altera'#231#227'o'
          'Exclus'#227'o')
        ParentFont = False
        TabOrder = 1
      end
      object rdgGrupo: TRadioGroup
        Left = 0
        Top = 43
        Width = 657
        Height = 48
        Align = alTop
        Caption = '  Grupo  '
        Columns = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Iniciais ou Tabelas '
          'N'#227'o peri'#243'dicos'
          'Peri'#243'dicos.')
        ParentFont = False
        TabOrder = 2
      end
      object edtProtocolo: TEdit
        Left = 70
        Top = 573
        Width = 280
        Height = 21
        TabOrder = 6
      end
      object chkClear: TCheckBox
        Left = 381
        Top = 574
        Width = 121
        Height = 17
        Caption = 'Limpar Pasta Docs'
        TabOrder = 7
      end
      object ChkRetificadora: TCheckBox
        Left = 408
        Top = 512
        Width = 129
        Height = 17
        Caption = 'Evento Retificadora'
        TabOrder = 3
      end
      object edtRecibo: TEdit
        Left = 20
        Top = 511
        Width = 356
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
      end
    end
    object TabSheet2: TTabSheet
      Caption = '  Dados de Retorno Eventos'
      ImageIndex = 1
      object mmoRet: TMemo
        Left = 0
        Top = 0
        Width = 657
        Height = 616
        Align = alClient
        Lines.Strings = (
          'mmoRet')
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = '  XML de Envio   '
      ImageIndex = 2
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 657
        Height = 616
        Align = alClient
        Lines.Strings = (
          'Memo1')
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet4: TTabSheet
      Caption = '  XML Retorno  '
      ImageIndex = 3
      object Memo2: TMemo
        Left = 0
        Top = 0
        Width = 657
        Height = 616
        Align = alClient
        Lines.Strings = (
          'Memo1')
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
end
