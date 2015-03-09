object FormAnulaComp: TFormAnulaComp
  Left = 402
  Top = 146
  BorderStyle = bsSingle
  Caption = 'Anular Comprobantes Contables'
  ClientHeight = 281
  ClientWidth = 570
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
    Width = 570
    Height = 281
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 83
      Width = 93
      Height = 13
      Caption = 'No. Documento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 7
      Top = 27
      Width = 69
      Height = 13
      Caption = 'Documento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 7
      Top = 115
      Width = 44
      Height = 13
      Caption = 'Estado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 240
      Top = 83
      Width = 48
      Height = 13
      Caption = 'Periodo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 296
      Top = 83
      Width = 65
      Height = 17
      DataField = 'Periodo_Proceso'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 7
      Top = 51
      Width = 53
      Height = 13
      Caption = 'Empresa:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 104
      Top = 80
      Width = 129
      Height = 21
      KeyField = 'Numero_Comprobante'
      ListField = 'Numero_Comprobante'
      ListSource = DataSource1
      TabOrder = 2
    end
    object Button1: TButton
      Left = 304
      Top = 216
      Width = 233
      Height = 49
      Caption = 'Anular el Comprobante'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = Button1Click
    end
    object DBLookupComboBox5: TDBLookupComboBox
      Left = 104
      Top = 24
      Width = 433
      Height = 21
      KeyField = 'Tipo_Comprobante'
      ListField = 'Descripcion'
      ListSource = DataSource4
      TabOrder = 0
      OnExit = DBLookupComboBox5Exit
    end
    object DBEdit1: TDBEdit
      Left = 104
      Top = 112
      Width = 33
      Height = 21
      DataField = 'Estad2'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 3
    end
    object Memo1: TMemo
      Left = 8
      Top = 208
      Width = 289
      Height = 65
      Lines.Strings = (
        'Este proceso permite la Anulaci'#243'n solo si el periodo del que '
        'desea anular se encuentra ABIERTO, por tanto si dicho '
        'documento no le aparece en la lista es por que el periodo '
        'se encuentra cerrado.')
      TabOrder = 5
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 104
      Top = 48
      Width = 433
      Height = 21
      KeyField = 'Codigo'
      ListField = 'Descripcion_Emp'
      ListSource = DataSource2
      TabOrder = 1
      OnExit = DBLookupComboBox2Exit
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 440
    Top = 64
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'emp'
        Size = -1
        Value = Null
      end
      item
        Name = 'doc'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = ''
      end>
    SQL.Strings = (
      
        'SELECT CONTCierres.Estado as Estado, CONTEncComp.Estado As Estad' +
        '2,CONTEncComp.Periodo_Proceso as Periodo_Proceso,* '
      'FROM CONTEncComp,CONTCierres'
      'WHERE CONTEncComp.Periodo_Proceso = CONTCierres.Periodo_Proceso'
      '              AND CONTCierres.Estado = '#39'A'#39' '
      '              AND Empresa = :emp'
      '              AND Tipo_Comprobante = :doc')
    Left = 472
    Top = 64
  end
  object ADOTable1: TADOTable
    Connection = DataModule1.ADOConnection1
    Filter = 'cargue = '#39'2'#39
    Filtered = True
    TableName = 'CONTTipoComp'
    Left = 473
    Top = 9
  end
  object DataSource4: TDataSource
    DataSet = ADOTable1
    Left = 441
    Top = 9
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    OnDataChange = DataSource2DataChange
    Left = 441
    Top = 33
  end
  object ADOTable2: TADOTable
    Connection = DataModule1.ADOComunes
    CursorType = ctStatic
    TableName = 'SEEmpresas'
    Left = 472
    Top = 40
  end
end
