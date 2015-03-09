object FImprimeFmto2: TFImprimeFmto2
  Left = 63
  Top = 141
  BorderStyle = bsSingle
  Caption = 'Impresi'#243'n del Formato'
  ClientHeight = 237
  ClientWidth = 562
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
    Width = 562
    Height = 237
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 209
    object Label6: TLabel
      Left = 7
      Top = 27
      Width = 58
      Height = 13
      Caption = 'No. Historia:'
    end
    object Label1: TLabel
      Left = 7
      Top = 59
      Width = 41
      Height = 13
      Caption = 'Formato:'
    end
    object Label2: TLabel
      Left = 7
      Top = 91
      Width = 47
      Height = 13
      Caption = 'Fecha Ini:'
    end
    object Label3: TLabel
      Left = 7
      Top = 123
      Width = 58
      Height = 13
      Caption = 'Fecha Final:'
    end
    object Button1: TButton
      Left = 320
      Top = 152
      Width = 233
      Height = 49
      Caption = 'Imprimir la Historia'
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
      Left = 72
      Top = 24
      Width = 425
      Height = 21
      KeyField = 'CCHistoria'
      ListField = 'CCHistoria;Primer_Apellido;Primer_Nombre'
      ListSource = DataSource4
      TabOrder = 0
      OnExit = DBLookupComboBox5Exit
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 72
      Top = 56
      Width = 425
      Height = 21
      KeyField = 'Codigo'
      ListField = 'Descripcion'
      ListSource = DataSource1
      TabOrder = 2
    end
    object DateTimePicker1: TDateTimePicker
      Left = 72
      Top = 88
      Width = 225
      Height = 22
      Date = 39643.550169259260000000
      Format = 'dd/MM/yyyy hh:mm:ss'
      Time = 39643.550169259260000000
      TabOrder = 3
    end
    object DateTimePicker2: TDateTimePicker
      Left = 72
      Top = 120
      Width = 225
      Height = 22
      Date = 39643.550169259260000000
      Format = 'dd/MM/yyyy hh:mm:ss'
      Time = 39643.550169259260000000
      TabOrder = 4
    end
    object CheckBox1: TCheckBox
      Left = 499
      Top = 57
      Width = 53
      Height = 17
      Caption = 'Todos'
      Checked = True
      State = cbChecked
      TabOrder = 5
      OnClick = CheckBox1Click
    end
  end
  object ADOTable1: TADOTable
    Connection = DataModule1.ADOConnection1
    TableName = 'SAPacientes'
    Left = 473
    Top = 9
  end
  object DataSource4: TDataSource
    DataSet = ADOTable1
    Left = 441
    Top = 9
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 441
    Top = 57
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'Hist'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'SELECT DISTINCT FDFormatos.Codigo,FDFormatos.Descripcion '
      'FROM FDFormatos,FDInformacion'
      
        'WHERE FDFormatos.Codigo = FDInformacion.Codigo_Formato AND No_Hi' +
        'storia = :Hist')
    Left = 488
    Top = 56
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    Left = 24
    Top = 157
  end
  object ADOQuery3: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'CdFmt'
        Size = -1
        Value = Null
      end
      item
        Name = 'CDSecc'
        Size = -1
        Value = Null
      end
      item
        Name = 'CDCampo'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM FDSubcampos'
      'WHERE Codigo_Formato = :CdFmt AND'
      '               Codigo_Seccion = :CDSecc AND'
      '               Codigo_Campo = :CDCampo')
    Left = 112
    Top = 157
  end
  object ADOQuery4: TADOQuery
    Connection = DataModule1.ADOComunes
    Parameters = <
      item
        Name = 'IdE'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM SEPersonas left outer join SEIdentificaciones on'
      '          SEPersonas.Id = SEIdentificaciones.Persona'
      'WHERE      Id = :IdE')
    Left = 184
    Top = 157
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 320
    Top = 120
  end
  object frxReport1: TfrxReport
    Version = '4.13.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41876.709400173610000000
    ReportOptions.LastChange = 41876.709400173610000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 376
    Top = 120
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
