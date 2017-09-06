object FormSelecionaEmpresa: TFormSelecionaEmpresa
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Selecionar a Empresa a ser Aberta'
  ClientHeight = 301
  ClientWidth = 823
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnOK: TBitBtn
    Left = 615
    Top = 271
    Width = 75
    Height = 25
    Caption = 'OK'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555559055555
      55555555577FF5555555555599905555555555557777F5555555555599905555
      555555557777FF5555555559999905555555555777777F555555559999990555
      5555557777777FF5555557990599905555555777757777F55555790555599055
      55557775555777FF5555555555599905555555555557777F5555555555559905
      555555555555777FF5555555555559905555555555555777FF55555555555579
      05555555555555777FF5555555555557905555555555555777FF555555555555
      5990555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = btnOKClick
  end
  object JvDBGrid1: TJvDBGrid
    Left = 1
    Top = 7
    Width = 816
    Height = 259
    Color = clScrollBar
    Ctl3D = False
    DataSource = DMQuerysUteis.dsqryEmpresas
    FixedColor = clGray
    GradientEndColor = clGray
    GradientStartColor = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = JvDBGrid1DblClick
    TitleButtons = True
    AlternateRowColor = clBtnFace
    AlternateRowFontColor = clBlack
    AutoSizeColumns = True
    SelectColumnsDialogStrings.Caption = 'Seleciona Colunas'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Alignment = taCenter
        ButtonStyle = cbsEllipsis
        Color = clAqua
        Expanded = False
        FieldName = 'CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 56
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clAqua
        Expanded = False
        FieldName = 'NRINSC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'CNPJ'
        Width = 147
        Visible = True
      end
      item
        Color = clAqua
        Expanded = False
        FieldName = 'NMRAZAOSOCIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Raz'#227'o Social'
        Width = 393
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clAqua
        Expanded = False
        FieldName = 'INIVALID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Data Inicial'
        Width = 101
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clAqua
        Expanded = False
        FieldName = 'FIMVALID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Data Final'
        Width = 100
        Visible = True
      end>
  end
  object btnCancelar: TBitBtn
    Left = 709
    Top = 271
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
    Font.Quality = fqProof
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
    TabOrder = 2
    OnClick = btnCancelarClick
  end
end
