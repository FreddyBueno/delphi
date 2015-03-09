object FConsultaCompr: TFConsultaCompr
  Left = 0
  Top = 88
  BorderStyle = bsSingle
  Caption = 'Consulta de Comprobantes Contables'
  ClientHeight = 585
  ClientWidth = 993
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
  object Splitter1: TSplitter
    Left = 777
    Top = 0
    Width = 6
    Height = 585
    Align = alRight
    Beveled = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 777
    Height = 585
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 775
      Height = 160
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 19
        Width = 30
        Height = 13
        Caption = 'Tipo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 516
        Top = 19
        Width = 48
        Height = 13
        Caption = 'Numero:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 516
        Top = 46
        Width = 40
        Height = 13
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 8
        Top = 46
        Width = 48
        Height = 13
        Caption = 'Periodo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 8
        Top = 83
        Width = 73
        Height = 13
        AutoSize = False
        Caption = 'Campo 1 :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label6: TLabel
        Left = 240
        Top = 83
        Width = 73
        Height = 13
        AutoSize = False
        Caption = 'Campo 2 :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label7: TLabel
        Left = 496
        Top = 83
        Width = 73
        Height = 13
        AutoSize = False
        Caption = 'Campo 3 :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object DateTimePicker1: TDateTimePicker
        Left = 568
        Top = 43
        Width = 185
        Height = 21
        Date = 38547.518292789350000000
        Time = 38547.518292789350000000
        Enabled = False
        TabOrder = 3
      end
      object Edit1: TEdit
        Left = 568
        Top = 16
        Width = 185
        Height = 21
        TabStop = False
        TabOrder = 1
        OnExit = Edit1Exit
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 104
        Width = 745
        Height = 49
        Caption = 'Observaciones:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        object Edit2: TEdit
          Left = 8
          Top = 16
          Width = 729
          Height = 21
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object Edit3: TEdit
        Left = 88
        Top = 80
        Width = 145
        Height = 21
        Enabled = False
        TabOrder = 4
        Visible = False
      end
      object Edit4: TEdit
        Left = 344
        Top = 80
        Width = 145
        Height = 21
        Enabled = False
        TabOrder = 5
        Visible = False
      end
      object Edit5: TEdit
        Left = 608
        Top = 80
        Width = 145
        Height = 21
        Enabled = False
        TabOrder = 6
        Visible = False
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 88
        Top = 16
        Width = 425
        Height = 21
        KeyField = 'Tipo_Comprobante'
        ListField = 'Descripcion'
        ListSource = DataSource1
        TabOrder = 0
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 88
        Top = 43
        Width = 145
        Height = 21
        Enabled = False
        KeyField = 'Periodo_Proceso'
        ListField = 'Periodo_Proceso'
        ListSource = DataSource2
        TabOrder = 2
      end
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 161
      Width = 775
      Height = 423
      Align = alClient
      Caption = 'Detalle del Comprobante:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -10
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object StringGrid1: TStringGrid
        Left = 2
        Top = 15
        Width = 771
        Height = 406
        Cursor = crCross
        TabStop = False
        Align = alClient
        ColCount = 7
        Ctl3D = True
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing]
        ParentCtl3D = False
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
      end
    end
  end
  object Panel3: TPanel
    Left = 783
    Top = 0
    Width = 210
    Height = 585
    Align = alRight
    TabOrder = 1
    object DBImage1: TDBImage
      Left = 1
      Top = 1
      Width = 208
      Height = 583
      Align = alClient
      DataField = 'Imagen'
      DataSource = DataSource3
      Stretch = True
      TabOrder = 0
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    OnDataChange = DataSource1DataChange
    Left = 545
    Top = 217
  end
  object ADOTable1: TADOTable
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    TableName = 'CONTTIPOCOMP'
    Left = 577
    Top = 217
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 625
    Top = 217
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM contcierres'
      'WHERE estado='#39'A'#39)
    Left = 657
    Top = 217
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TPC'
        Size = -1
        Value = Null
      end
      item
        Name = 'NC'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM CONTEncComp,CONTDetComp,CONTCentros,CONTTerce,CONTCuenta'
      
        'WHERE CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobant' +
        'e AND'
      
        '  CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobant' +
        'e AND'
      '  CONTDetComp.Centro_Costo = CONTCentros.Centro_Costo AND  '
      '  CONTDetComp.Tercero = CONTTerce.Numero_Documento AND'
      '  CONTDetComp.Cuenta = CONTCuenta.Cuenta AND'
      '  CONTEncComp.Tipo_Comprobante = :TPC AND'
      '  CONTDetComp.Numero_Comprobante = :NC')
    Left = 593
    Top = 305
  end
  object ADOQuery3: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TPC'
        Size = -1
        Value = Null
      end
      item
        Name = 'NC'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM contdigitaliza'
      'WHERE  Tipo_Comprobante = :TPC AND'
      '                Numero_Comprobante = :NC')
    Left = 689
    Top = 305
  end
  object PopupMenu1: TPopupMenu
    Left = 11
    Top = 538
    object EliminarRegistro1: TMenuItem
      Caption = 'Eliminar Registro'
    end
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 665
    Top = 305
  end
end
