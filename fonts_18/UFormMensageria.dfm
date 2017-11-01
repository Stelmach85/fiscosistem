object FormMensageria: TFormMensageria
  Left = 0
  Top = 0
  Caption = 'REINF - Mensagaria'
  ClientHeight = 602
  ClientWidth = 746
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
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
    Top = 548
    Width = 746
    Height = 54
    Align = alBottom
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 0
    object btnGerar: TButton
      Left = 68
      Top = 13
      Width = 138
      Height = 29
      Caption = 'Gerar Arquivos s/Enviar'
      TabOrder = 0
      OnClick = btnGerarClick
    end
    object btnEnviar: TButton
      Left = 230
      Top = 13
      Width = 130
      Height = 29
      Caption = 'Gerar e Enviar Arquivos'
      TabOrder = 1
      OnClick = btnEnviarClick
    end
    object btn1: TButton
      Left = 546
      Top = 14
      Width = 138
      Height = 29
      Caption = 'Sair da Mensageria'
      TabOrder = 2
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 384
      Top = 14
      Width = 138
      Height = 29
      Caption = 'Painel  de Consulta'
      TabOrder = 3
      OnClick = btnGerarClick
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = -1
    Width = 763
    Height = 546
    ActivePage = TabSheet1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = '  Eventos   '
      object lblAmbiente: TLabel
        Left = 3
        Top = 502
        Width = 150
        Height = 13
        Caption = 'Ambiente de Transmiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object grp1: TGroupBox
        Left = 0
        Top = 396
        Width = 727
        Height = 57
        Caption = 'Altera'#231#227'o de Eventos:'
        TabOrder = 5
        object lbl2: TLabel
          Left = 280
          Top = 14
          Width = 340
          Height = 13
          Caption = 'N'#250'mero do Recibo para a Retifica'#231#227'o (Altera'#231#227'o de Evento) :'
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
        Width = 727
        Height = 292
        Caption = ' Eventos a serem Gerados de acordo com o Perfil do Contribuinte'
        TabOrder = 0
        object chk1000: TCheckBox
          Left = 23
          Top = 27
          Width = 233
          Height = 17
          Caption = 'R-1000 - Informa'#231#245'es do Contribuinte'
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object chk2010: TCheckBox
          Left = 23
          Top = 77
          Width = 538
          Height = 17
          Caption = 'R-2010 - Reten'#231#227'o Contribui'#231#227'o Previdenci'#225'ria  Servi'#231'os Tomados '
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object chk2020: TCheckBox
          Left = 23
          Top = 102
          Width = 522
          Height = 17
          Caption = 
            'R-2020 - Reten'#231#227'o Contribui'#231#227'o Previdenci'#225'ria  Servi'#231'os Prestado' +
            's'
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object chk2098: TCheckBox
          Left = 23
          Top = 209
          Width = 327
          Height = 17
          Caption = 'R-2098 - Reabertura dos Eventos Peri'#243'dicos'
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
        object chk1070: TCheckBox
          Left = 23
          Top = 52
          Width = 268
          Height = 17
          Caption = 'R-1070 - Tabela de Processos'
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
        end
        object chk2099: TCheckBox
          Left = 23
          Top = 234
          Width = 277
          Height = 17
          Caption = 'R-2099 - Fechamento dos Eventos Peri'#243'dicos'
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
        end
        object chk9000: TCheckBox
          Left = 23
          Top = 259
          Width = 271
          Height = 17
          Caption = 'R-9000 - Exclus'#227'o de Eventos'
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
        end
        object chk2060: TCheckBox
          Left = 23
          Top = 152
          Width = 506
          Height = 17
          Caption = 
            'R-2060 - Contribui'#231#227'o Previdenci'#225'ria sobre a Receita Bruta - CPR' +
            'B'
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
        end
        object chk2070: TCheckBox
          Left = 23
          Top = 177
          Width = 506
          Height = 24
          Caption = 'R-2070 - Reten'#231#245'es na Fonte - IR, CSLL, Cofins, PIS/PASEP'
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 8
        end
        object Button1: TButton
          Left = 306
          Top = 225
          Width = 116
          Height = 25
          Caption = 'Consulta Fechamento'
          Enabled = False
          TabOrder = 9
        end
        object chk2050: TCheckBox
          Left = 23
          Top = 127
          Width = 522
          Height = 17
          Caption = 
            'R-2050 - Comercializa'#231#227'o da Produ'#231#227'o por Produtor Rural PJ/Agroi' +
            'nd'#250'stria'
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 10
        end
      end
      object rdgOperacao: TRadioGroup
        Left = 0
        Top = 0
        Width = 561
        Height = 43
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
        Left = 3
        Top = 47
        Width = 558
        Height = 48
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
      object chkClear: TCheckBox
        Left = 381
        Top = 574
        Width = 121
        Height = 17
        Caption = 'Limpar Pasta Docs'
        TabOrder = 6
      end
      object ChkRetificadora: TCheckBox
        Left = 146
        Top = 417
        Width = 129
        Height = 17
        Caption = 'Evento Retificadora'
        TabOrder = 3
      end
      object edtRecibo: TEdit
        Left = 280
        Top = 424
        Width = 356
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
      end
      object grp2: TGroupBox
        Left = 3
        Top = 452
        Width = 272
        Height = 44
        Caption = 'Exclus'#227'o de Eventos:'
        TabOrder = 7
        object lbl1: TLabel
          Left = 74
          Top = 21
          Width = 95
          Height = 13
          Caption = ' Evento a Excluir:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cbbEvento: TComboBox
          Left = 174
          Top = 13
          Width = 87
          Height = 21
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          Items.Strings = (
            'R-2010'
            'R-2020'
            'R-2050'
            'R-2060'
            'R-2070')
        end
      end
      object grp3: TGroupBox
        Left = 567
        Top = 0
        Width = 160
        Height = 95
        Caption = 'Envio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        object lbl4: TLabel
          Left = 22
          Top = 26
          Width = 120
          Height = 16
          Caption = 'Per'#237'odo de Entrega:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object cbbperiodo: TComboBox
          Left = 57
          Top = 50
          Width = 84
          Height = 24
          ItemIndex = 0
          TabOrder = 0
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
      object grp4: TGroupBox
        Left = 281
        Top = 455
        Width = 446
        Height = 41
        Caption = 'Retorno de Envio:'
        TabOrder = 8
        object lbl5: TLabel
          Left = 69
          Top = 20
          Width = 57
          Height = 13
          Caption = 'Protocolo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtProtocolo: TEdit
          Left = 129
          Top = 13
          Width = 288
          Height = 19
          Color = clSilver
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = '  Dados de Retorno Eventos'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object mmoRet: TMemo
        Left = 0
        Top = 0
        Width = 755
        Height = 518
        Align = alClient
        Lines.Strings = (
          'mmoRet')
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = '  XML de Envio   '
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 755
        Height = 518
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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Memo2: TMemo
        Left = 0
        Top = 0
        Width = 755
        Height = 518
        Align = alClient
        Lines.Strings = (
          'Memo1')
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
end
