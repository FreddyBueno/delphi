object ProgAuto: TProgAuto
  Left = 268
  Top = 304
  BorderStyle = bsToolWindow
  Caption = 'Programaci'#243'n Automatica de Citas'
  ClientHeight = 384
  ClientWidth = 682
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 682
    Height = 219
    Align = alClient
    TabOrder = 0
    object StringGrid1: TStringGrid
      Left = 1
      Top = 1
      Width = 680
      Height = 217
      Align = alClient
      ColCount = 3
      FixedCols = 0
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 219
    Width = 682
    Height = 165
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 10
      Width = 51
      Height = 13
      Caption = 'Seccion:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 352
      Top = 10
      Width = 55
      Height = 13
      Caption = 'Cantidad:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 474
      Top = 10
      Width = 113
      Height = 13
      Caption = 'Secciones por Semana.'
    end
    object Label4: TLabel
      Left = 368
      Top = 99
      Width = 109
      Height = 13
      Caption = 'Bloques diarios de:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 514
      Top = 99
      Width = 31
      Height = 13
      Caption = 'Horas.'
    end
    object Label6: TLabel
      Left = 608
      Top = 2
      Width = 34
      Height = 13
      Caption = 'Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 8
      Top = 99
      Width = 80
      Height = 13
      Caption = 'Fecha Desde:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 192
      Top = 99
      Width = 77
      Height = 13
      Caption = 'Fecha Hasta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 8
      Top = 34
      Width = 45
      Height = 13
      Caption = 'Ubicac:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ProgressBar1: TProgressBar
      Left = 8
      Top = 136
      Width = 505
      Height = 17
      TabOrder = 0
    end
    object JvBitBtn1: TJvBitBtn
      Left = 520
      Top = 128
      Width = 161
      Height = 31
      Caption = 'Programaci'#243'n Autom'#225'tica'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = JvBitBtn1Click
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object JvBitBtn2: TJvBitBtn
      Left = 363
      Top = 48
      Width = 149
      Height = 31
      Caption = 'Incluir Secci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = JvBitBtn2Click
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 64
      Top = 7
      Width = 281
      Height = 21
      KeyField = 'CD_Tipo'
      ListField = 'Descripcion'
      ListSource = DataSource1
      TabOrder = 3
    end
    object Edit1: TEdit
      Left = 408
      Top = 7
      Width = 65
      Height = 21
      TabOrder = 4
    end
    object JvBitBtn3: TJvBitBtn
      Left = 515
      Top = 48
      Width = 149
      Height = 31
      Caption = 'Excluir Secci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = JvBitBtn3Click
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object Edit2: TEdit
      Left = 480
      Top = 96
      Width = 33
      Height = 21
      TabOrder = 6
    end
    object Edit3: TEdit
      Left = 600
      Top = 15
      Width = 65
      Height = 21
      Color = cl3DLight
      Enabled = False
      TabOrder = 7
    end
    object DateTimePicker1: TDateTimePicker
      Left = 96
      Top = 96
      Width = 89
      Height = 21
      Date = 40393.669425393520000000
      Time = 40393.669425393520000000
      TabOrder = 8
      OnChange = DateTimePicker1Change
    end
    object DateTimePicker2: TDateTimePicker
      Left = 272
      Top = 96
      Width = 89
      Height = 21
      Date = 40393.669425393520000000
      Time = 40393.669425393520000000
      TabOrder = 9
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 64
      Top = 31
      Width = 281
      Height = 21
      KeyField = 'CD_Cama'
      ListField = 'Nom_Cama'
      ListSource = DataSource2
      TabOrder = 10
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM GETiposCama'
      'WHERE Estado = '#39'A'#39)
    Left = 512
    Top = 192
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    OnDataChange = DataSource1DataChange
    Left = 480
    Top = 192
  end
  object QryGeneral: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM GETiposCama'
      'WHERE Estado = '#39'A'#39)
    Left = 544
    Top = 192
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 480
    Top = 224
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'sec'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM SACamas'
      'WHERE CD_Tipo = :sec')
    Left = 512
    Top = 224
  end
end
