object ParametrosCompras: TParametrosCompras
  Left = 496
  Top = 385
  BorderStyle = bsSingle
  Caption = 'Par'#225'metros'
  ClientHeight = 239
  ClientWidth = 531
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 531
    Height = 239
    ActivePage = TabSheet3
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object TabSheet3: TTabSheet
      Caption = 'Datos Generales'
      ImageIndex = 2
      object Label6: TLabel
        Left = 16
        Top = 24
        Width = 127
        Height = 13
        Caption = 'Consecutivo de la Compra:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 16
        Top = 56
        Width = 120
        Height = 13
        Caption = 'Consecutivo de Ordenes:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 152
        Top = 21
        Width = 105
        Height = 21
        DataField = 'Consecutivo'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 152
        Top = 53
        Width = 105
        Height = 21
        DataField = 'Consecutivo_Ordenes'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Parametrizaci'#243'n de Inventarios'
      ImageIndex = 1
      object Label14: TLabel
        Left = 8
        Top = 27
        Width = 95
        Height = 13
        Caption = 'Afecta Inventarios?:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 8
        Top = 59
        Width = 97
        Height = 13
        Caption = 'Tipo de Documento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBComboBox2: TDBComboBox
        Left = 128
        Top = 24
        Width = 73
        Height = 21
        DataField = 'Afecta_Inventarios'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Si'
          'No')
        ParentFont = False
        TabOrder = 0
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 128
        Top = 56
        Width = 385
        Height = 21
        DataField = 'Tipo_Doc_Inventario'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'CD_Documento'
        ListField = 'Descripcion'
        ListSource = DataSource2
        ParentFont = False
        TabOrder = 1
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Parametrizaci'#243'n Contable'
      object Label2: TLabel
        Left = 5
        Top = 19
        Width = 101
        Height = 13
        Caption = 'Afecta Contabilidad?:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 3
        Top = 57
        Width = 150
        Height = 13
        Caption = 'Tipo de Comprobante Contable:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 11
        Top = 89
        Width = 131
        Height = 13
        Caption = 'Tipo de Tercero Proveedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBComboBox3: TDBComboBox
        Left = 160
        Top = 16
        Width = 73
        Height = 21
        DataField = 'Afecta_Contabilidad'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Si'
          'No')
        ParentFont = False
        TabOrder = 0
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 160
        Top = 52
        Width = 361
        Height = 21
        DataField = 'Tipo_Comp_Contable'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'Tipo_Comprobante'
        ListField = 'Descripcion'
        ListSource = DataSource4
        ParentFont = False
        TabOrder = 1
      end
      object Memo1: TMemo
        Left = 1
        Top = 120
        Width = 520
        Height = 88
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Lines.Strings = (
          
            'El sistema graba automaticamente un comprobante contable si esta' +
            ' activo por esta opci'#243'n y adicionalmente '
          
            'estan diligenciados los campos del Tipo de Comprobante y las cue' +
            'ntas del Grupo de Productos. Es '
          
            'importante tener encuenta que la afectaci'#243'n contable automatica ' +
            'graba el Tercero y '
          'el Centro de Costo automaticamente.')
        ParentFont = False
        TabOrder = 2
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 160
        Top = 84
        Width = 363
        Height = 21
        DataField = 'Tipo_Tercero_Proveedor'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'Tipo_Tercero'
        ListField = 'Descripcion'
        ListSource = DataSource5
        ParentFont = False
        TabOrder = 3
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 380
    Top = 65
  end
  object ADOTable1: TADOTable
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    TableName = 'INConsecCompras'
    Left = 412
    Top = 65
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 452
    Top = 65
  end
  object ADOTable3: TADOTable
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    TableName = 'INAlmacenes'
    Left = 484
    Top = 97
  end
  object DataSource3: TDataSource
    DataSet = ADOTable3
    Left = 452
    Top = 97
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INDocumentos WHERE EntradaSalida= '#39'E'#39)
    Left = 484
    Top = 65
  end
  object DataSource4: TDataSource
    DataSet = ADOTable2
    Left = 240
    Top = 72
  end
  object ADOTable2: TADOTable
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    TableName = 'CONTTipoComp'
    Left = 272
    Top = 72
  end
  object DataSource5: TDataSource
    DataSet = ADOTable4
    Left = 232
    Top = 104
  end
  object ADOTable4: TADOTable
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Filter = 'Modulo = '#39'1'#39
    Filtered = True
    TableName = 'CONTTiTerc'
    Left = 272
    Top = 104
  end
end
