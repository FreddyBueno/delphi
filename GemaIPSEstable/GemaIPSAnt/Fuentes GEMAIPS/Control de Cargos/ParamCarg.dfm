object ParametrosCargo: TParametrosCargo
  Left = 376
  Top = 215
  BorderStyle = bsSingle
  Caption = 'Par'#225'metros'
  ClientHeight = 232
  ClientWidth = 555
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
    Width = 555
    Height = 25
    Align = alTop
    TabOrder = 0
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 25
    Width = 555
    Height = 207
    ActivePage = TabSheet3
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object TabSheet3: TTabSheet
      Caption = 'Datos Generales'
      ImageIndex = 2
      object Label18: TLabel
        Left = 8
        Top = 23
        Width = 146
        Height = 13
        Caption = 'C'#243'digo del Grupo de Servicios:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 8
        Top = 52
        Width = 59
        Height = 13
        Caption = 'UVR Actual:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 3
        Top = 82
        Width = 145
        Height = 13
        Caption = 'Control de Productos por Area:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 4
        Top = 122
        Width = 103
        Height = 13
        Caption = 'Valida Homologacion:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object BitBtn2: TBitBtn
        Left = 488
        Top = 20
        Width = 25
        Height = 21
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
          000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
          00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
          F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
          0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
          FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
          FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
          0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
          00333377737FFFFF773333303300000003333337337777777333}
        NumGlyphs = 2
        TabOrder = 0
        OnClick = BitBtn2Click
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 160
        Top = 20
        Width = 321
        Height = 21
        DataField = 'GRUPO_DE_SERVICIOS'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'Codigo_Grupo'
        ListField = 'Nombre'
        ListSource = DataSource2
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit1: TDBEdit
        Left = 160
        Top = 48
        Width = 105
        Height = 21
        DataField = 'uvr_actual'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBComboBox1: TDBComboBox
        Left = 159
        Top = 81
        Width = 106
        Height = 21
        DataField = 'Control_ProdxArea'
        DataSource = DataSource1
        Items.Strings = (
          'S'
          'N')
        TabOrder = 3
      end
      object DBComboBox3: TDBComboBox
        Left = 160
        Top = 122
        Width = 106
        Height = 21
        DataField = 'Valida_Homologacion'
        DataSource = DataSource1
        Items.Strings = (
          'S'
          'N')
        TabOrder = 4
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Parametrizaci'#243'n de Inventarios'
      ImageIndex = 1
      object Label14: TLabel
        Left = 8
        Top = 19
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
        Top = 51
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
        Top = 16
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
      object DBLookupComboBox6: TDBLookupComboBox
        Left = 128
        Top = 48
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
        ListSource = DataSource3
        ParentFont = False
        TabOrder = 1
      end
      object DBCheckBox1: TDBCheckBox
        Left = 128
        Top = 80
        Width = 225
        Height = 25
        Caption = 'Controla Existencias'
        DataField = 'Control_Existencia'
        DataSource = DataSource1
        TabOrder = 2
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Porcentaje de venta'
      ImageIndex = 2
      object Label2: TLabel
        Left = 24
        Top = 18
        Width = 125
        Height = 13
        Caption = 'Escriba el porcentaje:'
      end
      object Label3: TLabel
        Left = 200
        Top = 18
        Width = 10
        Height = 13
        Caption = '%'
      end
      object DBEdit2: TDBEdit
        Left = 154
        Top = 14
        Width = 41
        Height = 21
        DataField = 'Porcentaje_Venta'
        DataSource = DataSource1
        TabOrder = 0
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Usuario mensaje'
      ImageIndex = 3
      object Label4: TLabel
        Left = 24
        Top = 18
        Width = 445
        Height = 13
        Caption = 
          'Escriba el numero de registo al cual se le enviar'#225' el mensaje au' +
          'tomaticamente'
      end
      object Label5: TLabel
        Left = 24
        Top = 34
        Width = 303
        Height = 13
        Caption = 'para que active el producto en el convenio requerido'
      end
      object Label6: TLabel
        Left = 24
        Top = 64
        Width = 112
        Height = 13
        Caption = 'Numero de registro:'
      end
      object DBEdit3: TDBEdit
        Left = 138
        Top = 62
        Width = 41
        Height = 21
        DataField = 'Usuario_Mensaje'
        DataSource = DataSource1
        TabOrder = 0
      end
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 608
    Top = 8
  end
  object ADOTable2: TADOTable
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    TableName = 'INGrupo'
    Left = 640
    Top = 8
  end
  object ADOTable1: TADOTable
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    TableName = 'CRParametros'
    Left = 416
    Top = 136
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 480
    Top = 136
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery1
    Left = 612
    Top = 41
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INDocumentos WHERE EntradaSalida= '#39'S'#39)
    Left = 644
    Top = 41
  end
  object DataSource4: TDataSource
    DataSet = ADOTable3
    Left = 612
    Top = 73
  end
  object ADOTable3: TADOTable
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    TableName = 'INAlmacenes'
    Left = 644
    Top = 73
  end
end
