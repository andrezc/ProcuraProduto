object frmPesquisa: TfrmPesquisa
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Pesquisa de Produtos'
  ClientHeight = 309
  ClientWidth = 406
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object edtDadosPesquisa: TEdit
    Left = 8
    Top = 24
    Width = 273
    Height = 21
    TabOrder = 0
    OnChange = edtDadosPesquisaChange
    OnKeyDown = edtDadosPesquisaKeyDown
  end
  object btnSelecionar: TBitBtn
    Left = 287
    Top = 22
    Width = 98
    Height = 23
    Caption = 'Selecionar'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000130B0000130B00000000000000000001FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF349B370E8E180B
      8A150A881409851238953BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF359D3951DA7B3ACF6939CD6732C25B39973BFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF359E395CE0843E
      D46E3DD36D34C55F3A993CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF36A03B64E48A41D7713FD56F37C8613A993DFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF32A53932A43931A33931A13817951E56E28244
      DA7441D87239CB64168B1C349737349536339335329235FFFFFFFFFFFF21A72D
      60E4874BDD794ADC7849DC774AE07A46DD7744DB7540D6703BCD6739CB6536C8
      6233C45E0A8413FFFFFFFFFFFF22A92F76F0995EEA8A5AE88856E68453E4814E
      E17D47DE7844DB7541D8723FD56F3DD36D39CD670B8715FFFFFFFFFFFF24AB30
      7EF39F68EE9164ED8E60EA8B59E88654E4824EE17D46DD7744DA7441D7713ED4
      6E3ACF690C8916FFFFFFFFFFFF25AD3291F7AB8DF6A88BF5A689F4A57AF09B59
      E88653E4814ADF7A5BE48667E58C5EE18653DB7C0F8D1AFFFFFFFFFFFF39B041
      39AE4139AC4139AB411B9C2489F4A560EA8B56E68445D8721A952136A03C369D
      3B359C3A359A39FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF39AB418BF5A664
      ED8E5AE88845D7713DA442FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF39AC418DF6A868EE915EEA8A46D8723DA743FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3AAD4291F7AB7F
      F39F76F09958DF7F3EA744FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF39AF4326AD3325AB3223A93021A62E3EA945FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 1
    OnClick = btnSelecionarClick
  end
  object Grid: TDBGrid
    Left = 8
    Top = 72
    Width = 390
    Height = 217
    BorderStyle = bsNone
    Color = clWhite
    Ctl3D = True
    DataSource = DS1
    DragCursor = crHandPoint
    DrawingStyle = gdsGradient
    FixedColor = clSilver
    GradientEndColor = clSilver
    GradientStartColor = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = GridCellClick
    OnDblClick = GridDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_BARRAS'
        Title.Caption = 'C'#211'DIGO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_PRODUTO'
        Title.Caption = 'PRODUTO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 270
        Visible = True
      end>
  end
  object DS1: TDataSource
    DataSet = CM.CDS
    Left = 176
    Top = 160
  end
end
