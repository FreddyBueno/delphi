object FormGraf1: TFormGraf1
  Left = 3
  Top = 3
  BorderStyle = bsSingle
  Caption = 'Informaci'#243'n Historica de la Cuenta'
  ClientHeight = 412
  ClientWidth = 622
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
    Width = 622
    Height = 412
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 620
      Height = 73
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 37
        Height = 13
        Caption = 'Cuenta:'
      end
      object Label2: TLabel
        Left = 8
        Top = 42
        Width = 39
        Height = 13
        Caption = 'Periodo:'
      end
      object Label3: TLabel
        Left = 232
        Top = 43
        Width = 27
        Height = 13
        Caption = 'Valor:'
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 56
        Top = 14
        Width = 481
        Height = 21
        KeyField = 'Cuenta'
        ListField = 'Cuenta;Descripcion'
        ListSource = DataSource1
        TabOrder = 0
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 56
        Top = 39
        Width = 137
        Height = 21
        KeyField = 'Periodo_Proceso'
        ListField = 'Periodo_Proceso'
        ListSource = DataSource3
        TabOrder = 1
        OnExit = DBLookupComboBox2Exit
      end
      object MaskEdit1: TMaskEdit
        Left = 264
        Top = 40
        Width = 121
        Height = 21
        TabOrder = 2
        Text = '2000000'
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 74
      Width = 620
      Height = 337
      Align = alClient
      TabOrder = 1
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 618
        Height = 335
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Histograma de la Cuenta'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object DBChart1: TDBChart
            Left = 0
            Top = 0
            Width = 610
            Height = 307
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Gradient.EndColor = clSilver
            Gradient.Visible = True
            Title.Text.Strings = (
              'Histograma de Cuentas')
            Align = alClient
            TabOrder = 0
            object Series1: TBarSeries
              ColorEachPoint = True
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Style = smsLabelValue
              Marks.Visible = True
              DataSource = ADOQuery2
              XLabelsSource = 'Periodo_Proceso'
              Gradient.Direction = gdTopBottom
              MultiBar = mbNone
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'Periodo_Proceso'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = 'Saldo_Total'
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Terceros por Participaci'#243'n'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object DBChart2: TDBChart
            Left = 0
            Top = 0
            Width = 731
            Height = 393
            AllowPanning = pmNone
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            BackWall.Pen.Visible = False
            Gradient.EndColor = clSilver
            Gradient.Visible = True
            Title.Text.Strings = (
              'Terceros por Participaci'#243'n')
            AxisVisible = False
            ClipPoints = False
            Frame.Visible = False
            View3DOptions.Elevation = 315
            View3DOptions.Orthogonal = False
            View3DOptions.Perspective = 0
            View3DOptions.Rotation = 360
            View3DWalls = False
            Zoom.Allow = False
            Align = alClient
            TabOrder = 0
            object BarSeries1: TPieSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Style = smsLabelValue
              Marks.Visible = True
              DataSource = ADOQuery5
              XLabelsSource = 'Nombre2'
              Gradient.Direction = gdRadial
              OtherSlice.Legend.Visible = False
              OtherSlice.Text = 'Other'
              PieValues.Name = 'Pie'
              PieValues.Order = loNone
              PieValues.ValueSource = 'Saldo'
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Centros por Participaci'#243'n'
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object DBChart3: TDBChart
            Left = 0
            Top = 0
            Width = 731
            Height = 393
            AllowPanning = pmNone
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            BackWall.Pen.Visible = False
            Gradient.EndColor = clSilver
            Gradient.Visible = True
            Title.Text.Strings = (
              'Centros por Participaci'#243'n')
            AxisVisible = False
            ClipPoints = False
            Frame.Visible = False
            View3DOptions.Elevation = 315
            View3DOptions.Orthogonal = False
            View3DOptions.Perspective = 0
            View3DOptions.Rotation = 360
            View3DWalls = False
            Zoom.Allow = False
            Align = alClient
            TabOrder = 0
            object PieSeries1: TPieSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Style = smsLabelValue
              Marks.Visible = True
              DataSource = ADOQuery6
              XLabelsSource = 'Descripcion'
              Gradient.Direction = gdRadial
              OtherSlice.Legend.Visible = False
              OtherSlice.Text = 'Other'
              PieValues.Name = 'Pie'
              PieValues.Order = loNone
              PieValues.ValueSource = 'Saldo'
            end
          end
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery3
    Left = 529
    Top = 1
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'cuenta'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '111005'
      end
      item
        Name = 'per'
        DataType = ftString
        Size = 4
        Value = '2009'
      end>
    SQL.Strings = (
      
        'SELECT convert(integer,Periodo_Proceso) as Periodo_Proceso,sum(s' +
        'aldo_debito-saldo_credito) As Saldo_Total'
      'FROM contsaldo'
      
        'WHERE cuenta like (:cuenta + '#39'%'#39') AND Periodo_Proceso like (:per' +
        ' + '#39'%'#39') '
      'GROUP BY convert(integer,Periodo_Proceso)'
      'ORDER BY convert(integer,Periodo_Proceso)')
    Left = 617
    Top = 1
  end
  object ADOQuery3: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM contcuenta'
      'WHERE cuenta IN (SELECT cuenta FROM contsaldo)')
    Left = 561
    Top = 1
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery4
    Left = 105
    Top = 17
  end
  object ADOQuery4: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM contcierres'
      'WHERE Estado = '#39'C'#39)
    Left = 137
    Top = 17
  end
  object ADOQuery5: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '#39'SIN FACTURA'#39' as Nombre2,sum(saldo) as Saldo'
      'FROM xxgr'
      'WHERE (Nombre = NULL or Nombre = '#39#39')')
    Left = 649
    Top = 1
  end
  object ADOQuery6: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'per'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = Null
      end
      item
        Name = 'cta'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT Left(CONTCentros.Descripcion,25) as Descripcion,sum(Saldo' +
        '_Debito -Saldo_credito) as saldo'
      'FROM  CONTSaldo,CONTCentros,CONTCuenta'
      'WHERE CONTSaldo.Centro_Costo = CONTCentros.Centro_Costo AND'
      '      CONTSaldo.cuenta  = CONTCUENTA.cuenta AND'#9#9
      '      Periodo_Proceso = :per  AND  '
      '      CONTSaldo.Cuenta like rtrim( :cta  )+ '#39'%'#39' AND'
      '      CONTCuenta.estado = '#39'A'#39' '
      'GROUP BY Left(CONTCentros.Descripcion,25)'
      'ORDER BY saldo  Desc')
    Left = 681
    Top = 1
  end
end
