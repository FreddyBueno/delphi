object faf: Tfaf
  Left = 246
  Top = 289
  Width = 609
  Height = 375
  Caption = 'Achivo de las Transacciones'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 176
    Top = 8
    Width = 185
    Height = 13
    Caption = 'ARCHIVO DE TRANSACCIONES'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 32
    Width = 521
    Height = 313
    ColCount = 18
    DefaultRowHeight = 18
    FixedCols = 0
    RowCount = 2
    TabOrder = 0
  end
end
