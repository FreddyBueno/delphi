object WebCamF: TWebCamF
  Left = 0
  Top = 0
  Caption = 'Captura de Fotos'
  ClientHeight = 546
  ClientWidth = 657
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 8
    Top = 8
    Width = 641
    Height = 473
    OnMouseMove = Image1MouseMove
  end
  object Image2: TImage
    Left = 8
    Top = 320
    Width = 177
    Height = 218
    Transparent = True
    OnClick = Image2Click
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 641
    Height = 473
    TabOrder = 0
  end
  object Button1: TButton
    Left = 136
    Top = 494
    Width = 185
    Height = 47
    Caption = 'Encender la camara'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 327
    Top = 494
    Width = 186
    Height = 47
    Caption = 'Tomar Foto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
end
