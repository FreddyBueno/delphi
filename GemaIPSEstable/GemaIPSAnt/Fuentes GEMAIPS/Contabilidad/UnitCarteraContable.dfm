object FrmCarteraContable: TFrmCarteraContable
  Left = 27
  Top = 125
  BorderStyle = bsSingle
  Caption = 'Cartera contable'
  ClientHeight = 583
  ClientWidth = 1202
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
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1202
    Height = 94
    Align = alTop
    TabOrder = 0
    object JvLabel1: TJvLabel
      Left = 32
      Top = 46
      Width = 100
      Height = 13
      Caption = 'Cliente seleccionado'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object LblNit: TJvLabel
      Left = 32
      Top = 67
      Width = 9
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object LblDescripcion: TJvLabel
      Left = 231
      Top = 67
      Width = 9
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object JvBevel1: TJvBevel
      Left = 144
      Top = 52
      Width = 546
      Height = 3
      Shape = bsTopLine
      Edges = [beTop]
      Inner = bvRaised
    end
    object LblDoc: TJvLabel
      Left = 708
      Top = 67
      Width = 9
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object JvLabel3: TJvLabel
      Left = 708
      Top = 46
      Width = 57
      Height = 13
      Caption = 'Documento'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object JvBevel2: TJvBevel
      Left = 770
      Top = 52
      Width = 118
      Height = 3
      Shape = bsTopLine
      Edges = [beTop]
      Inner = bvRaised
    end
    object JvLabel2: TJvLabel
      Left = 35
      Top = 16
      Width = 62
      Height = 13
      Caption = 'Fecha corte:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object Label1: TLabel
      Left = 640
      Top = 20
      Width = 37
      Height = 13
      Caption = 'Cuenta:'
    end
    object Label2: TLabel
      Left = 704
      Top = 72
      Width = 47
      Height = 13
      Caption = 'Totales:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DTPFecha: TJvDateTimePicker
      Left = 128
      Top = 12
      Width = 273
      Height = 21
      Date = 40120.350794907400000000
      Time = 40120.350794907400000000
      DateFormat = dfLong
      TabOrder = 0
      OnChange = DTPFechaChange
      DropDownDate = 40120.000000000000000000
      NullText = '(none)'
    end
    object BtnCargar: TJvBitBtn
      Left = 424
      Top = 10
      Width = 145
      Height = 25
      Caption = '&Cargar datos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BtnCargarClick
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object Edit1: TEdit
      Left = 688
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 2
      Text = '1305'
    end
    object MaskEdit1: TMaskEdit
      Left = 760
      Top = 68
      Width = 145
      Height = 21
      Color = cl3DLight
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 539
    Width = 1202
    Height = 44
    Align = alBottom
    TabOrder = 1
    object Menos: TImage
      Left = 33
      Top = 6
      Width = 13
      Height = 13
      Picture.Data = {
        07544269746D6170EE000000424DEE0000000000000076000000280000000F00
        00000F0000000100040000000000780000000000000000000000100000000000
        0000000000000000800000800000008080008000000080008000808000008080
        8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
        FF00FFFFFFFFFFFFFFF0FFFFFFFFFFFFFFF0FFFFFFFFFFFFFFF0FFFFFFFFFFFF
        FFF0FFFFFFFFFFFFFFF0FFFFFFFFFFFFFFF0FFFFFFFFFFFFFFF0FF0000000000
        0FF0FF00000000000FF0FFFFFFFFFFFFFFF0FFFFFFFFFFFFFFF0FFFFFFFFFFFF
        FFF0FFFFFFFFFFFFFFF0FFFFFFFFFFFFFFF0FFFFFFFFFFFFFFF0}
      Stretch = True
      Visible = False
    end
    object Mas: TImage
      Left = 10
      Top = 5
      Width = 13
      Height = 11
      Picture.Data = {
        07544269746D6170EE000000424DEE0000000000000076000000280000000F00
        00000F0000000100040000000000780000000000000000000000100000000000
        0000000000000000800000800000008080008000000080008000808000008080
        8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
        FF00FFFFFFFFFFFFFFF0FFFFFFFFFFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFF
        FFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FF0000000000
        0FF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFF
        FFF0FFFFFFF0FFFFFFF0FFFFFFFFFFFFFFF0FFFFFFFFFFFFFFF0}
      Stretch = True
      Visible = False
    end
    object BtnSalir: TJvBitBtn
      Left = 763
      Top = 7
      Width = 121
      Height = 33
      Caption = '&Salir'
      TabOrder = 0
      OnClick = BtnSalirClick
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object BtnExportar: TJvBitBtn
      Left = 55
      Top = 5
      Width = 177
      Height = 35
      Caption = 'Exportar a Excel'
      TabOrder = 1
      OnClick = BtnExportarClick
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
  end
  object SGDatos: TJvStringGrid
    Left = 0
    Top = 94
    Width = 1202
    Height = 445
    Align = alClient
    ColCount = 12
    DefaultRowHeight = 18
    FixedCols = 0
    RowCount = 2
    TabOrder = 2
    OnClick = SGDatosClick
    OnDblClick = SGDatosDblClick
    OnDrawCell = SGDatosDrawCell
    Alignment = taCenter
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = []
    ColWidths = (
      17
      304
      139
      119
      108
      110
      112
      114
      105
      131
      125
      64)
  end
  object QryG: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    Left = 872
    Top = 8
  end
  object Qry1: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    Left = 904
    Top = 8
  end
end
