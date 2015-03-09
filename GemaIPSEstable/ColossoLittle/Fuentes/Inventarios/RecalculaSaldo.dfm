object RegeneraSaldos: TRegeneraSaldos
  Left = 483
  Top = 196
  BorderStyle = bsDialog
  Caption = 'Recalcular Saldos de Inventario.'
  ClientHeight = 199
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
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 622
    Height = 199
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 164
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 56
      Height = 13
      Caption = 'Producto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Memo1: TMemo
      Left = 8
      Top = 80
      Width = 377
      Height = 81
      Lines.Strings = (
        
          'Este proceso recalcula todos los saldos de Inventario basado en ' +
          'las '
        'transacciones que se encuentran en las tablas.')
      TabOrder = 0
    end
    object Button1: TButton
      Left = 456
      Top = 112
      Width = 161
      Height = 41
      Caption = 'Correr Procesos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object ProgressBar1: TProgressBar
      Left = 8
      Top = 48
      Width = 609
      Height = 25
      TabOrder = 2
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 72
      Top = 8
      Width = 113
      Height = 21
      KeyField = 'CD_Producto'
      ListField = 'CD_Producto'
      ListSource = DataSource1
      TabOrder = 3
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 192
      Top = 8
      Width = 417
      Height = 21
      KeyField = 'CD_Producto'
      ListField = 'Descripcion'
      ListSource = DataSource1
      TabOrder = 4
    end
    object CheckBox1: TCheckBox
      Left = 191
      Top = 32
      Width = 64
      Height = 13
      Caption = 'Todos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM INTransacciones_Enc,INTransacciones_Det,INDocumentos'
      
        'WHERE INTransacciones_Enc.Cd_Documento = INTransacciones_Det.Cd_' +
        'Documento AND'
      
        '      INTransacciones_Enc.Consec_Dcto = INTransacciones_Det.Cons' +
        'ec_Dcto AND'
      '      INTransacciones_Enc.Cd_Documento=INDocumentos.Cd_Documento'
      'ORDER BY Fch_Hora_Transac')
    Left = 8
    Top = 128
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'TRUNCATE Table INSaldosxAlmacen')
    Left = 40
    Top = 128
  end
  object ADOQSaldoVence: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INSaldosVencimiento')
    Left = 72
    Top = 128
  end
  object ADOQuery3: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'TRUNCATE Table INSaldosVencimiento')
    Left = 104
    Top = 128
  end
  object ADOQueryProducto: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM INProductos'
      'WHERE ESTADO = '#39'A'#39
      'ORDER BY DESCRIPCION')
    Left = 584
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQueryProducto
    OnDataChange = DataSource1DataChange
    Left = 552
    Top = 8
  end
  object ADOQuery4: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'cddoc'
        Size = -1
        Value = Null
      end
      item
        Name = 'condoc'
        Size = -1
        Value = Null
      end
      item
        Name = 'secdoc'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM INTransacciones_Det'
      'WHERE Cd_Documento =  :cddoc AND'
      '              Consec_Dcto = :condoc AND'
      '              Secuencia = :secdoc')
    Left = 136
    Top = 128
  end
end
