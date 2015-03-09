object FormConsolidar: TFormConsolidar
  Left = 325
  Top = 262
  BorderStyle = bsSingle
  Caption = 'Consolidar'
  ClientHeight = 393
  ClientWidth = 811
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 256
    Width = 7
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 504
    Top = 288
    Width = 241
    Height = 65
    Caption = 'Consolidar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object ProgressBar1: TProgressBar
    Left = 16
    Top = 296
    Width = 465
    Height = 41
    TabOrder = 1
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 48
    Top = 24
  end
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Left = 8
    Top = 24
  end
  object ADOConnection2: TADOConnection
    LoginPrompt = False
    Left = 8
    Top = 64
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection2
    Parameters = <>
    Left = 48
    Top = 64
  end
end
