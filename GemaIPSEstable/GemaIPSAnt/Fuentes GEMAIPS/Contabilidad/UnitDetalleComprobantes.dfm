object FrmDetalleComprobantes: TFrmDetalleComprobantes
  Left = 310
  Top = 253
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Detalle comprobantes'
  ClientHeight = 413
  ClientWidth = 833
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 833
    Height = 33
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 367
    Width = 833
    Height = 46
    Align = alBottom
    TabOrder = 1
    object BtnSalir: TJvBitBtn
      Left = 696
      Top = 8
      Width = 105
      Height = 33
      Caption = '&Salir'
      TabOrder = 0
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
  end
  object SGDetalle: TJvStringGrid
    Left = 0
    Top = 33
    Width = 833
    Height = 334
    Align = alClient
    ColCount = 8
    DefaultRowHeight = 17
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
    TabOrder = 2
    Alignment = taLeftJustify
    ColWidths = (
      76
      90
      86
      131
      97
      123
      103
      104)
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    Left = 304
    Top = 129
  end
end
