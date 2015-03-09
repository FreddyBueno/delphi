object FrmListaF: TFrmListaF
  Left = 0
  Top = 0
  Caption = 'Grilla MultiFiltro'
  ClientHeight = 548
  ClientWidth = 1039
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 792
    Top = 8
    Width = 177
    Height = 65
  end
  object SpeedButton2: TSpeedButton
    Left = 792
    Top = 79
    Width = 177
    Height = 65
    OnClick = SpeedButton2Click
  end
  object JvgStringGrid1: TJvgStringGrid
    Left = 8
    Top = 8
    Width = 769
    Height = 234
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = []
    ExtOptions = [fsgHottrack, fsgMemoEditor, fsgWordWrap, fsgCellHeightAutoSize, fsgTabThroughCells]
    EditorFont.Charset = DEFAULT_CHARSET
    EditorFont.Color = clWindowText
    EditorFont.Height = -11
    EditorFont.Name = 'Tahoma'
    EditorFont.Style = []
    ColWidths = (
      64
      64
      64
      64
      513)
  end
  object JvStringGrid1: TJvStringGrid
    Left = 8
    Top = 248
    Width = 769
    Height = 273
    TabOrder = 1
    Alignment = taLeftJustify
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = []
  end
  object JvGridFilter1: TJvGridFilter
    Grid = JvgStringGrid1
    Left = 560
    Top = 64
  end
  object JvDBGridExcelExport1: TJvDBGridExcelExport
    Caption = 'Exporting to MS Excel...'
    AutoFit = False
    Left = 664
    Top = 64
  end
end
