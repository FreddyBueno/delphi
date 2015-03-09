object FormImpInventa: TFormImpInventa
  Left = 484
  Top = 280
  BorderStyle = bsSingle
  Caption = 'Impresi'#243'n de la Transacci'#243'n'
  ClientHeight = 208
  ClientWidth = 503
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
    Width = 503
    Height = 208
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 59
      Width = 78
      Height = 13
      Caption = 'No. Documento:'
    end
    object Label6: TLabel
      Left = 7
      Top = 27
      Width = 58
      Height = 13
      Caption = 'Documento:'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 88
      Top = 56
      Width = 129
      Height = 21
      KeyField = 'Consec_Dcto'
      ListField = 'Consec_Dcto'
      ListSource = DataSource1
      TabOrder = 2
    end
    object Button1: TButton
      Left = 216
      Top = 152
      Width = 281
      Height = 49
      Caption = 'Reimprimir la Transacci'#243'n de Inventarios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object DBLookupComboBox5: TDBLookupComboBox
      Left = 88
      Top = 24
      Width = 273
      Height = 21
      KeyField = 'CD_Documento'
      ListField = 'Descripcion'
      ListSource = DataSource4
      TabOrder = 0
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
        Name = 'doc'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = ''
      end>
    SQL.Strings = (
      'SELECT * FROM INTransacciones_Enc'
      'WHERE cd_documento = :doc')
    Left = 472
    Top = 64
  end
  object ADOTable1: TADOTable
    Connection = DataModule1.ADOConnection1
    TableName = 'INDocumentos'
    Left = 473
    Top = 9
  end
  object DataSource4: TDataSource
    DataSet = ADOTable1
    OnDataChange = DataSource4DataChange
    Left = 441
    Top = 9
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ncomp'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '2'
      end
      item
        Name = 'tipcomp'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = '02'
      end>
    SQL.Strings = (
      
        'SELECT INTransacciones_Enc.Estado,Fecha_Vence,Lote,INTransaccion' +
        'es_Enc.Cd_Documento, '
      
        '       INTransacciones_Enc.Consec_Dcto AS Consec_Dcto,INTransacc' +
        'iones_Enc.Desc_Concepto, '
      
        '       INTransacciones_Enc.Fch_Hora_Transac, INTransacciones_Det' +
        '.Cd_Producto AS Cd_Producto,'
      
        '       INTransacciones_Det.Cant_Producto AS Cant_Producto, INPro' +
        'ductos.DESCRIPCION AS Descripcion, '
      
        '       INDocumentos.Descripcion AS Descripcion_1, A.DESCRIPCION ' +
        'AS Descripcion_3, '
      
        '       B.DESCRIPCION AS Descripcion_2,Valor_Unitario,CONTTerce.P' +
        'rimer_Apellido +'#39' '#39'+ CONTTerce.Primer_Nombre as Nom'
      'FROM INTransacciones_Det '
      
        'inner join INProductos on INTransacciones_Det.Cd_Producto = INPr' +
        'oductos.CD_PRODUCTO'
      
        'inner join INTransacciones_Enc on ( INTransacciones_Det.Consec_D' +
        'cto = INTransacciones_Enc.Consec_Dcto  AND '
      
        #9#9#9#9#9#9#9#9#9'INTransacciones_Det.Cd_Documento = INTransacciones_Enc.' +
        'Cd_Documento)'
      
        'inner join INDocumentos on INTransacciones_Enc.Cd_Documento = IN' +
        'Documentos.CD_Documento '
      
        'left outer join INAlmacenes AS B on INTransacciones_Enc.Cd_Almac' +
        'enOrigen = B.CD_ALMACEN '
      
        'left outer  join INAlmacenes AS A on INTransacciones_Enc.Cd_Alma' +
        'cenDestino = A.CD_ALMACEN'
      
        'left outer  join CONTTerce on INTransacciones_Enc.Identificacion' +
        ' = CONTTerce.Numero_Documento'
      'WHERE  INTransacciones_Enc.Consec_Dcto =:ncomp  AND '
      '       INTransacciones_Enc.Cd_Documento =:tipcomp ')
    Left = 27
    Top = 110
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 88
    Top = 112
  end
  object frxReport1: TfrxReport
    Version = '4.13.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41876.697381157410000000
    ReportOptions.LastChange = 41876.697381157410000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 144
    Top = 112
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
