object FCenso: TFCenso
  Left = 8
  Top = 19
  Width = 795
  Height = 556
  Caption = 'Censo de Ubicaciones'
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 779
    Height = 368
    Align = alClient
    TabOrder = 0
    object DrawGrid1: TDrawGrid
      Left = 1
      Top = 1
      Width = 777
      Height = 366
      Align = alClient
      ColCount = 1
      DefaultColWidth = 60
      DefaultRowHeight = 60
      DefaultDrawing = False
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      TabOrder = 0
      OnDblClick = DrawGrid1DblClick
      OnMouseMove = DrawGrid1MouseMove
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 779
    Height = 41
    Align = alTop
    TabOrder = 1
    object Label5: TLabel
      Left = 8
      Top = 12
      Width = 109
      Height = 13
      Caption = 'Tipo de Ubicaci'#243'n:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 128
      Top = 10
      Width = 265
      Height = 21
      KeyField = 'CD_Tipo'
      ListField = 'Descripcion'
      ListSource = DataSource1
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 409
    Width = 779
    Height = 111
    Align = alBottom
    TabOrder = 2
    object Shape1: TShape
      Left = 16
      Top = 7
      Width = 17
      Height = 17
      Brush.Color = clLime
    end
    object Label1: TLabel
      Left = 42
      Top = 9
      Width = 52
      Height = 13
      Caption = 'Disponible.'
    end
    object Shape2: TShape
      Left = 16
      Top = 26
      Width = 17
      Height = 17
      Brush.Color = clBlue
    end
    object Label2: TLabel
      Left = 42
      Top = 28
      Width = 110
      Height = 13
      Caption = 'Ocupada por Paciente.'
    end
    object Shape3: TShape
      Left = 16
      Top = 45
      Width = 17
      Height = 17
      Brush.Color = clYellow
    end
    object Label3: TLabel
      Left = 42
      Top = 47
      Width = 76
      Height = 13
      Caption = 'En Preparaci'#243'n.'
    end
    object Shape4: TShape
      Left = 16
      Top = 64
      Width = 17
      Height = 17
      Brush.Color = clRed
    end
    object Label4: TLabel
      Left = 42
      Top = 66
      Width = 69
      Height = 13
      Caption = 'No Disponible.'
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 84
      Width = 777
      Height = 26
      Panels = <
        item
          Width = 300
        end
        item
          Width = 50
        end>
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM GETiposCama')
    Left = 400
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    OnDataChange = DataSource1DataChange
    Left = 432
    Top = 8
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'tp'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM SACamas'
      'WHERE cd_tipo = :tp')
    Left = 480
    Top = 8
  end
  object ADOQuery3: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM GESecciones'
      '')
    Left = 520
    Top = 8
  end
end
