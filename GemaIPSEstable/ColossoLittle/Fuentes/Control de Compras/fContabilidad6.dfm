object Form6: TForm6
  Left = 338
  Top = 152
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
    Width = 668
    Height = 402
    Align = alClient
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 313
      Top = 74
      Width = 9
      Height = 327
      Beveled = True
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 666
      Height = 73
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 19
        Width = 51
        Height = 13
        Caption = 'Productos:'
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 64
        Top = 16
        Width = 481
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
      Height = 327
      Align = alLeft
      TabOrder = 1
      object DBChart1: TDBChart
        Left = 1
        Top = 1
        Width = 310
        Height = 325
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
          DataSource = ADOQuery1
          SeriesColor = clRed
          Title = 'Valor_Comprado'
          XLabelsSource = 'A'#241'o'
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'Total_Valor_Total'
        end
      end
    end
    object Panel4: TPanel
      Left = 322
      Top = 74
      Width = 345
      Height = 327
      Align = alClient
      TabOrder = 2
      object DBChart2: TDBChart
        Left = 1
        Top = 1
        Width = 343
        Height = 325
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'Totales del Producto')
        Align = alClient
        TabOrder = 0
        object Series3: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = True
          DataSource = ADOQuery2
          SeriesColor = clRed
          Title = 'Debito_Total'
          XLabelsSource = 'Total_Cantidad'
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'Total_Valor_Total'
          object TeeFunction1: TAddTeeFunction
          end
        end
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'cuenta'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT year(fecha) as A'#241'o,month(fecha) AS Mes,INDetCompras.codig' +
        'o_producto AS Producto,sum(INDetCompras.cantidad) AS Total_Canti' +
        'dad,sum(INDetCompras.Valor_unitario) AS Total_Valor_Unitario,sum' +
        '(INDetCompras.valor_iva) AS Total_Valor_IVA,sum(INDetCompras.val' +
        'or_Total) AS Total_Valor_Total'
      'FROM INEncCompras,INDetCompras'
      'WHERE INEncCompras.Numero_Compra =INDetCompras.Numero_Compra AND'
      '  INDetCompras.codigo_producto= :cuenta'
      'GROUP BY year(fecha),month(fecha),INDetCompras.codigo_producto'
      'ORDER BY year(fecha),month(fecha),INDetCompras.codigo_producto')
    Left = 633
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
    Left = 593
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
      
        'SELECT codigo_producto AS Producto,sum(INDetCompras.cantidad) AS' +
        ' Total_Cantidad,sum(INDetCompras.Valor_unitario) AS Total_Valor_' +
        'Unitario,sum(INDetCompras.valor_iva) AS Total_Valor_IVA,sum(INDe' +
        'tCompras.valor_Total) AS Total_Valor_Total'
      'FROM INEncCompras,INDetCompras'
      'WHERE INEncCompras.Numero_Compra =INDetCompras.Numero_Compra AND'
      '  codigo_producto= :cuenta'
      'GROUP BY codigo_producto'
      'ORDER BY codigo_producto'
      ''
      '')
    Left = 633
    Top = 33
  end
  object ADOQuery3: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM INProductos')
    Left = 561
    Top = 1
  end
end
