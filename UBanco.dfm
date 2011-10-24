object frmConfBanco: TfrmConfBanco
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Configurar Banco'
  ClientHeight = 132
  ClientWidth = 289
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 16
    Top = 13
    Width = 92
    Height = 13
    Caption = 'Caminho do Banco:'
  end
  object lbl2: TLabel
    Left = 16
    Top = 59
    Width = 44
    Height = 13
    Caption = 'Servidor:'
  end
  object edtCaminho: TEdit
    Left = 16
    Top = 32
    Width = 233
    Height = 21
    TabOrder = 0
  end
  object btnSeleciona: TBitBtn
    Left = 248
    Top = 30
    Width = 33
    Height = 25
    Caption = '...'
    DoubleBuffered = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 1
    OnClick = btnSelecionaClick
  end
  object btnConecta: TButton
    Left = 176
    Top = 96
    Width = 105
    Height = 25
    Caption = 'CONECTAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnConectaClick
  end
  object edtServidor: TEdit
    Left = 16
    Top = 78
    Width = 65
    Height = 21
    TabOrder = 3
    Text = '127.0.0.1'
  end
  object dlg: TOpenDialog
    Left = 104
    Top = 64
  end
end
