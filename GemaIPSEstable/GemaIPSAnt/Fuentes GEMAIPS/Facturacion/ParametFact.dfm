object ParametrosFact: TParametrosFact
  Left = 347
  Top = 216
  BorderStyle = bsSingle
  Caption = 'Par'#225'metros'
  ClientHeight = 326
  ClientWidth = 651
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
    Top = 25
    Width = 651
    Height = 301
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
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 643
        Height = 273
        Align = alClient
        Caption = 'Datos de Impresi'#243'n de Factura:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label7: TLabel
          Left = 8
          Top = 32
          Width = 92
          Height = 13
          Caption = 'Linea Encabezado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 8
          Top = 57
          Width = 38
          Height = 13
          Caption = 'Linea 1:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 8
          Top = 82
          Width = 38
          Height = 13
          Caption = 'Linea 2:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 8
          Top = 107
          Width = 38
          Height = 13
          Caption = 'Linea 3:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 8
          Top = 132
          Width = 65
          Height = 13
          Caption = 'Linea Detalle:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbl: TLabel
          Left = 8
          Top = 160
          Width = 235
          Height = 13
          Caption = 'Facturar el Valor del Convenio como Descuento?:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 8
          Top = 187
          Width = 111
          Height = 13
          Caption = 'Facturar segun Embell?'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 8
          Top = 219
          Width = 110
          Height = 13
          Caption = 'Aseguradora Particular:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 8
          Top = 244
          Width = 90
          Height = 13
          Caption = 'Contrato Particular:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit2: TDBEdit
          Left = 136
          Top = 30
          Width = 481
          Height = 21
          DataField = 'Factura_LineaE'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit3: TDBEdit
          Left = 136
          Top = 55
          Width = 481
          Height = 21
          DataField = 'Factura_Linea1'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit4: TDBEdit
          Left = 136
          Top = 80
          Width = 481
          Height = 21
          DataField = 'Factura_Linea2'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 136
          Top = 105
          Width = 481
          Height = 21
          DataField = 'Factura_Linea3'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit6: TDBEdit
          Left = 136
          Top = 130
          Width = 481
          Height = 21
          DataField = 'Factura_LineaD'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBComboBox: TDBComboBox
          Left = 264
          Top = 157
          Width = 73
          Height = 21
          DataField = 'ConvenioComoDescuento'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            'S'
            'N')
          ParentFont = False
          TabOrder = 5
        end
        object DBComboBox6: TDBComboBox
          Left = 264
          Top = 184
          Width = 73
          Height = 21
          DataField = 'Embell'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            'S'
            'N')
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit1: TDBEdit
          Left = 136
          Top = 244
          Width = 481
          Height = 21
          DataField = 'No_Contrato_Particular'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit7: TDBEdit
          Left = 136
          Top = 217
          Width = 481
          Height = 21
          DataField = 'No_Aseg_Particular'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Parametrizaci'#243'n de Inventarios'
      ImageIndex = 1
      object Label12: TLabel
        Left = 8
        Top = 83
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
      object Label13: TLabel
        Left = 8
        Top = 115
        Width = 78
        Height = 13
        Caption = 'Almacen Origen:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 8
        Top = 51
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
      object Label3: TLabel
        Left = 8
        Top = 24
        Width = 287
        Height = 13
        Caption = 'Esta opci'#243'n afecta solo en la Facturaci'#243'n Directa.'
      end
      object Label15: TLabel
        Left = 8
        Top = 142
        Width = 94
        Height = 13
        Caption = 'Valida Existencias?:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 128
        Top = 80
        Width = 497
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
        TabOrder = 0
      end
      object DBLookupComboBox6: TDBLookupComboBox
        Left = 128
        Top = 112
        Width = 497
        Height = 21
        DataField = 'Almacen_Origen'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'CD_ALMACEN'
        ListField = 'DESCRIPCION'
        ListSource = DataSource3
        ParentFont = False
        TabOrder = 1
      end
      object DBComboBox2: TDBComboBox
        Left = 128
        Top = 48
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
        TabOrder = 2
      end
      object DBComboBox5: TDBComboBox
        Left = 128
        Top = 139
        Width = 73
        Height = 21
        DataField = 'Valida_Existencias'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'S'
          'N')
        ParentFont = False
        TabOrder = 3
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Parametrizaci'#243'n Contable'
      ImageIndex = 2
      object Label1: TLabel
        Left = 11
        Top = 51
        Width = 180
        Height = 13
        Caption = 'Tipo de Comprobante Contable:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 13
        Top = 19
        Width = 123
        Height = 13
        Caption = 'Afecta Contabilidad?:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 11
        Top = 83
        Width = 185
        Height = 13
        Caption = 'Tipo de Tercero para Pacientes:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 11
        Top = 116
        Width = 185
        Height = 13
        Caption = 'Tipo de Tercero para Pacientes:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 208
        Top = 48
        Width = 425
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
        TabOrder = 0
      end
      object DBComboBox3: TDBComboBox
        Left = 208
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
        TabOrder = 1
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 208
        Top = 80
        Width = 425
        Height = 21
        DataField = 'Tipo_Tercero_Particular'
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
        TabOrder = 2
      end
      object DBComboBox1: TDBComboBox
        Left = 208
        Top = 112
        Width = 425
        Height = 21
        DataField = 'Tipo_Factura'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          '1-Contabiliza por los Capitulos del Servicio o CUPS.'
          '2-Contabiliza por cada uno de los Servicios.')
        ParentFont = False
        TabOrder = 3
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Impresi'#243'n'
      ImageIndex = 3
      object Label6: TLabel
        Left = 3
        Top = 16
        Width = 50
        Height = 13
        Caption = 'Formato:'
      end
      object DBComboBox4: TDBComboBox
        Left = 59
        Top = 13
        Width = 246
        Height = 21
        DataField = 'Tipo_Factura'
        DataSource = DataSource1
        Items.Strings = (
          '1 - Formato Grande'
          '2 - Formato Media Carta'
          '3 - Formato Impresora POS')
        TabOrder = 0
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 651
    Height = 25
    Align = alTop
    TabOrder = 1
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 460
    Top = 113
  end
  object ADOTable1: TADOTable
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    TableName = 'INConsecFacturas'
    Left = 492
    Top = 113
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 532
    Top = 113
  end
  object ADOTable3: TADOTable
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    TableName = 'INAlmacenes'
    Left = 564
    Top = 49
  end
  object DataSource3: TDataSource
    DataSet = ADOTable3
    Left = 532
    Top = 49
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INDocumentos WHERE EntradaSalida= '#39'S'#39)
    Left = 564
    Top = 113
  end
  object DataSource4: TDataSource
    DataSet = ADOTable2
    Left = 336
    Top = 96
  end
  object ADOTable2: TADOTable
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    TableName = 'CONTTipoComp'
    Left = 368
    Top = 96
  end
  object DataSource5: TDataSource
    DataSet = ADOTable4
    Left = 336
    Top = 128
  end
  object ADOTable4: TADOTable
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Filter = 'Modulo = '#39'2'#39
    Filtered = True
    TableName = 'CONTTiTerc'
    Left = 368
    Top = 128
  end
end
