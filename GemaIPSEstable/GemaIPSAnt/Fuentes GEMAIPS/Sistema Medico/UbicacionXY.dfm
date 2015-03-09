object Ubixy: TUbixy
  Left = 0
  Top = 0
  Width = 844
  Height = 523
  AutoScroll = True
  Caption = 'Ubicaci'#243'n de Coordenadas de Campos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object SB: TStatusBar
    Left = 0
    Top = 466
    Width = 828
    Height = 19
    Panels = <
      item
        Text = 'X:'
        Width = 50
      end
      item
        Text = 'Y:'
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 828
    Height = 466
    HorzScrollBar.Smooth = True
    HorzScrollBar.Tracking = True
    Align = alClient
    TabOrder = 1
  end
end
