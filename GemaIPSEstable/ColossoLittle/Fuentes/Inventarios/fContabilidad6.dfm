object Form6: TForm6
  Left = 294
  Top = 255
  Width = 684
  Height = 438
  Caption = 'Informaci'#243'n Historica de los Productos'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 676
    Height = 404
    Align = alClient
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 313
      Top = 74
      Width = 9
      Height = 329
      Beveled = True
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 674
      Height = 73
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 19
        Width = 46
        Height = 13
        Caption = 'Producto:'
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 56
        Top = 16
        Width = 601
        Height = 21
        KeyField = 'CD_PRODUCTO'
        ListField = 'DESCRIPCION'
        ListSource = DataSource1
        TabOrder = 0
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 74
      Width = 312
      Height = 329
      Align = alLeft
      TabOrder = 1
      object DBChart1: TDBChart
        Left = 1
        Top = 1
        Width = 310
        Height = 327
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'Histograma del Producto')
        Align = alClient
        TabOrder = 0
        object Series1: TBarSeries
          Marks.ArrowLength = 20
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = ADOQuery2
          SeriesColor = clRed
          Title = 'Debito'
          XLabelsSource = 'Periodo_Proceso'
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          XValues.ValueSource = 'Saldo_Debito'
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'Saldo_Debito'
        end
        object Series2: TBarSeries
          Marks.ArrowLength = 20
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = ADOQuery2
          SeriesColor = clGreen
          Title = 'Credito'
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          XValues.ValueSource = 'Saldo_Credito'
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'Saldo_Credito'
        end
      end
    end
    object Panel4: TPanel
      Left = 322
      Top = 74
      Width = 353
      Height = 329
      Align = alClient
      TabOrder = 2
      object DBChart2: TDBChart
        Left = 1
        Top = 1
        Width = 351
        Height = 327
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'Totales de la Cuenta')
        Align = alClient
        TabOrder = 0
        object Series3: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = True
          DataSource = Series1
          SeriesColor = clRed
          Title = 'Debito_Total'
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          object TeeFunction1: TAddTeeFunction
          end
        end
        object Series4: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = True
          DataSource = Series2
          SeriesColor = clGreen
          Title = 'Credito_Total'
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          object TeeFunction2: TAddTeeFunction
          end
        end
        object Series5: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = True
          DataSource = Series3
          SeriesColor = clYellow
          Title = 'Saldo'
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          DataSources = (
            'Series3'
            'Series4')
          object TeeFunction3: TSubtractTeeFunction
          end
        end
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM contsaldo')
    Left = 657
    Top = 1
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery3
    OnDataChange = DataSource1DataChange
    Left = 529
    Top = 1
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 625
    Top = 1
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Cuenta'
        DataType = ftString
        Size = 10
        Value = ''
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM contsaldo'
      'WHERE cuenta = :cuenta')
    Left = 657
    Top = 41
  end
  object ADOQuery3: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM INProductos')
    Left = 561
    Top = 1
  end
end
