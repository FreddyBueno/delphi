object FormCapturaCompra: TFormCapturaCompra
  Left = 242
  Top = 112
  BorderStyle = bsSingle
  Caption = 'Captura de Compras'
  ClientHeight = 574
  ClientWidth = 915
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 915
    Height = 574
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 913
      Height = 168
      Align = alTop
      TabOrder = 0
      object Label2: TLabel
        Left = 469
        Top = 11
        Width = 94
        Height = 13
        Caption = 'Numero Compra:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 444
        Top = 36
        Width = 118
        Height = 13
        Caption = 'Fecha de la Compra:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 8
        Top = 59
        Width = 63
        Height = 13
        Caption = 'Proveedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 24
        Top = 35
        Width = 3
        Height = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 8
        Top = 8
        Width = 268
        Height = 29
        Caption = 'CAPTURA DE COMPRA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DateTimePicker1: TDateTimePicker
        Left = 576
        Top = 32
        Width = 177
        Height = 21
        Date = 38547.518292789350000000
        Time = 38547.518292789350000000
        TabOrder = 1
      end
      object Edit1: TEdit
        Left = 576
        Top = 8
        Width = 177
        Height = 21
        TabStop = False
        Color = cl3DLight
        ReadOnly = True
        TabOrder = 0
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 104
        Width = 745
        Height = 57
        Caption = 'Observaciones:'
        TabOrder = 4
        object Memo1: TMemo
          Left = 8
          Top = 16
          Width = 729
          Height = 33
          TabOrder = 0
        end
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 80
        Top = 56
        Width = 113
        Height = 21
        KeyField = 'Numero_Documento'
        ListField = 'Numero_Documento'
        ListSource = DataSource1
        TabOrder = 2
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 200
        Top = 56
        Width = 553
        Height = 21
        KeyField = 'Numero_Documento'
        ListField = 'Primer_Apellido'
        ListSource = DataSource1
        TabOrder = 3
      end
      object DBEdit1: TDBEdit
        Left = 80
        Top = 80
        Width = 353
        Height = 21
        TabStop = False
        DataField = 'DIRECCION'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit2: TDBEdit
        Left = 440
        Top = 80
        Width = 153
        Height = 21
        TabStop = False
        DataField = 'TELEFONO'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 6
      end
      object DBEdit3: TDBEdit
        Left = 600
        Top = 80
        Width = 153
        Height = 21
        TabStop = False
        DataField = 'CD_MUNICIPIO'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 7
      end
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 169
      Width = 913
      Height = 404
      Align = alClient
      Caption = 'Detalle de la Compra:'
      TabOrder = 1
      object StringGrid1: TStringGrid
        Left = 2
        Top = 15
        Width = 766
        Height = 288
        Cursor = crHandPoint
        TabStop = False
        Align = alClient
        ColCount = 9
        Ctl3D = True
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect]
        ParentCtl3D = False
        PopupMenu = PopupMenu2
        TabOrder = 0
      end
      object GroupBox3: TGroupBox
        Left = 2
        Top = 303
        Width = 909
        Height = 99
        Align = alBottom
        Caption = 'Detalle de la Compra:'
        TabOrder = 1
        object Label8: TLabel
          Left = 8
          Top = 18
          Width = 56
          Height = 13
          Caption = 'Producto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 9
          Top = 43
          Width = 55
          Height = 13
          Caption = 'Cantidad:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 648
          Top = 43
          Width = 67
          Height = 13
          Caption = 'Valor Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 416
          Top = 43
          Width = 52
          Height = 13
          Caption = 'IVA Unit:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 184
          Top = 43
          Width = 82
          Height = 13
          Caption = 'Valor Unitario:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 9
          Top = 69
          Width = 66
          Height = 13
          Caption = 'Fec Vence:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 193
          Top = 69
          Width = 30
          Height = 13
          Caption = 'Lote:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 687
          Top = 20
          Width = 93
          Height = 13
          Caption = 'Costo Promedio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 504
          Top = 43
          Width = 14
          Height = 13
          Caption = '%:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Button1: TButton
          Left = 536
          Top = 64
          Width = 145
          Height = 25
          Caption = 'Adicionar Compra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          OnClick = Button1Click
        end
        object MaskEdit1: TMaskEdit
          Left = 64
          Top = 40
          Width = 113
          Height = 21
          TabOrder = 2
          Text = '1'
          OnChange = MaskEdit1Change
          OnExit = MaskEdit1Exit
          OnKeyPress = MaskEdit1KeyPress
        end
        object MaskEdit2: TMaskEdit
          Left = 273
          Top = 40
          Width = 128
          Height = 21
          TabOrder = 3
          Text = ''
          OnChange = MaskEdit1Change
          OnExit = MaskEdit1Exit
          OnKeyPress = MaskEdit2KeyPress
        end
        object MaskEdit3: TMaskEdit
          Left = 720
          Top = 40
          Width = 121
          Height = 21
          TabStop = False
          Color = cl3DLight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          Text = ''
          OnExit = MaskEdit3Exit
          OnKeyPress = MaskEdit3KeyPress
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 64
          Top = 16
          Width = 113
          Height = 21
          KeyField = 'CD_PRODUCTO'
          ListField = 'CD_PRODUCTO'
          ListSource = DataSource3
          TabOrder = 0
          OnClick = DBLookupComboBox3Click
          OnExit = DBLookupComboBox3Exit
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 184
          Top = 16
          Width = 497
          Height = 21
          KeyField = 'CD_PRODUCTO'
          ListField = 'DESCRIPCION'
          ListSource = DataSource3
          TabOrder = 1
        end
        object Button2: TButton
          Left = 384
          Top = 64
          Width = 145
          Height = 25
          Caption = 'Limpiar Grilla'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          TabStop = False
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 688
          Top = 64
          Width = 145
          Height = 25
          Caption = 'Grabar la Compra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          OnClick = Button3Click
        end
        object BitBtn1: TBitBtn
          Left = 881
          Top = 16
          Width = 25
          Height = 19
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
          TabOrder = 11
          OnClick = BitBtn1Click
        end
        object MaskEdit4: TMaskEdit
          Left = 528
          Top = 40
          Width = 105
          Height = 21
          TabOrder = 4
          Text = ''
          OnChange = MaskEdit1Change
          OnExit = MaskEdit4Exit
          OnKeyPress = MaskEdit4KeyPress
        end
        object Edit2: TEdit
          Left = 224
          Top = 66
          Width = 73
          Height = 21
          TabOrder = 7
        end
        object DateTimePicker2: TDateTimePicker
          Left = 80
          Top = 66
          Width = 105
          Height = 21
          Date = 39342.671764131940000000
          Time = 39342.671764131940000000
          TabOrder = 6
        end
        object DBEdit4: TDBEdit
          Left = 786
          Top = 16
          Width = 89
          Height = 21
          Color = 14540253
          DataField = 'Costo_Prom_Pesos'
          DataSource = DataSource3
          ReadOnly = True
          TabOrder = 12
        end
        object Edit3: TEdit
          Left = 472
          Top = 40
          Width = 33
          Height = 21
          TabStop = False
          Color = cl3DLight
          TabOrder = 13
          OnExit = Edit3Exit
        end
      end
      object Panel3: TPanel
        Left = 768
        Top = 15
        Width = 143
        Height = 288
        Align = alRight
        TabOrder = 2
        object Label15: TLabel
          Left = 6
          Top = 8
          Width = 34
          Height = 13
          Caption = 'Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit4: TEdit
          Left = 42
          Top = 5
          Width = 97
          Height = 21
          TabOrder = 0
          Text = '0'
        end
      end
    end
  end
  object DataSource3: TDataSource
    DataSet = ADOTable3
    OnDataChange = DataSource3DataChange
    Left = 705
    Top = 185
  end
  object ADOTable3: TADOTable
    Connection = DataModule1.ADOConnection1
    Filter = 'ESTADO = '#39'A'#39
    Filtered = True
    IndexFieldNames = 'DESCRIPCION'
    TableName = 'INProductos'
    Left = 737
    Top = 185
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INEncCompras')
    Left = 657
    Top = 273
  end
  object ADOQuery3: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INDetCompras')
    Left = 689
    Top = 273
  end
  object ADOTable1: TADOTable
    Connection = DataModule1.ADOConnection1
    TableName = 'INConsecCompras'
    Left = 665
    Top = 193
  end
  object DataSource1: TDataSource
    DataSet = ADOQProv
    OnDataChange = DataSource1DataChange
    Left = 297
    Top = 73
  end
  object PopupMenu2: TPopupMenu
    Left = 11
    Top = 490
    object EliminarRegistro1: TMenuItem
      Caption = 'Eliminar Registro'
      OnClick = EliminarRegistro1Click
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    Left = 137
    Top = 9
  end
  object ADOQProv: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      
        'FROM CONTTerce,CONTTipTercexTerce,CONTTiterc,Comunes..GEDepartam' +
        'entos,Comunes..GEMunicipios'
      
        'WHERE CONTTerce.Numero_Documento = CONTTipTercexTerce.Tercero AN' +
        'D'
      
        '      CONTTipTercexTerce.Tipo_Tercero = CONTTiterc.Tipo_Tercero ' +
        'AND '
      
        '      CONTTerce.Cod_Departamento = Comunes..GEDepartamentos.CD_D' +
        'epartamento AND'
      
        '      CONTTerce.Cod_Departamento = Comunes..GEMunicipios.CD_Depa' +
        'rtamento AND'
      
        '      CONTTerce.Cod_Municipio = Comunes..GEMunicipios.CD_Municip' +
        'io AND'
      '      Modulo = '#39'1'#39' AND '
      '      CONTTerce.Estado = '#39'A'#39' AND '
      '      CONTTiterc.Estado = '#39'A'#39' AND'
      '      Comunes..GEDepartamentos.Estado = '#39'A'#39' AND'
      '      Comunes..GEMunicipios.Estado = '#39'A'#39)
    Left = 329
    Top = 73
  end
  object ADOGrupo_IVA: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'grp'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM INGrupo,INIVA'
      'WHERE INGrupo.Codigo_IVA = INIVA.Codigo_IVA AND'
      '               Codigo_Grupo = :grp')
    Left = 201
    Top = 393
  end
end
