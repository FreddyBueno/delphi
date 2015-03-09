object FImprimeFmto: TFImprimeFmto
  Left = 63
  Top = 141
  AutoSize = True
  BorderStyle = bsDialog
  Caption = 'Impresi'#243'n del Formato'
  ClientHeight = 314
  ClientWidth = 553
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 553
    Height = 314
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 579
    ExplicitHeight = 343
    object Label6: TLabel
      Left = 7
      Top = 32
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
      Top = 267
      Width = 47
      Height = 13
      Caption = 'Fecha Ini:'
    end
    object Label3: TLabel
      Left = 7
      Top = 292
      Width = 58
      Height = 13
      Caption = 'Fecha Final:'
    end
    object Label4: TLabel
      Left = 7
      Top = 83
      Width = 50
      Height = 13
      Caption = 'Formato 2:'
    end
    object Label5: TLabel
      Left = 7
      Top = 110
      Width = 50
      Height = 13
      Caption = 'Formato 3:'
    end
    object Button1: TButton
      Left = 319
      Top = 264
      Width = 233
      Height = 49
      Caption = 'Imprimir la Historia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 72
      Top = 56
      Width = 425
      Height = 21
      KeyField = 'Codigo'
      ListField = 'Descripcion'
      ListSource = DataSource1
      TabOrder = 1
    end
    object DateTimePicker1: TDateTimePicker
      Left = 72
      Top = 264
      Width = 225
      Height = 22
      Date = 39643.550169259260000000
      Format = 'dd/MM/yyyy hh:mm:ss'
      Time = 39643.550169259260000000
      TabOrder = 2
    end
    object DateTimePicker2: TDateTimePicker
      Left = 72
      Top = 289
      Width = 225
      Height = 22
      Date = 39643.550169259260000000
      Format = 'dd/MM/yyyy hh:mm:ss'
      Time = 39643.550169259260000000
      TabOrder = 3
    end
    object CheckBox1: TCheckBox
      Left = 499
      Top = 57
      Width = 53
      Height = 17
      Caption = 'Todos'
      Checked = True
      State = cbChecked
      TabOrder = 4
      OnClick = CheckBox1Click
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 72
      Top = 80
      Width = 425
      Height = 21
      KeyField = 'Codigo'
      ListField = 'Descripcion'
      ListSource = DataSource2
      TabOrder = 5
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 72
      Top = 107
      Width = 425
      Height = 21
      KeyField = 'Codigo'
      ListField = 'Descripcion'
      ListSource = DataSource3
      TabOrder = 6
    end
    object Edit1: TEdit
      Left = 71
      Top = 29
      Width = 121
      Height = 21
      TabOrder = 7
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 81
    Top = 209
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
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
    Left = 16
    Top = 208
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 9
    Top = 145
  end
  object ADOQuery2: TADOQuery
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
    Left = 88
    Top = 144
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 161
    Top = 145
  end
  object ADOQuery3: TADOQuery
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
    Left = 240
    Top = 144
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = ADOQuery4
    BCDToCurrency = False
    Left = 376
    Top = 152
  end
  object frxReport1: TfrxReport
    Version = '4.13.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41876.690986400500000000
    ReportOptions.LastChange = 41876.690986400500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 456
    Top = 152
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 249.448980000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Shape3: TfrxShapeView
          Left = 321.260050000000000000
          Top = 3.779530000000000000
          Width = 389.291590000000000000
          Height = 113.385900000000000000
          ShowHint = False
        end
        object frxDBDataset1No_Historia: TfrxMemoView
          Left = 498.897960000000000000
          Top = 45.354360000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'No_Historia'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."No_Historia"]')
        end
        object Memo1: TfrxMemoView
          Left = 400.630180000000000000
          Top = 45.354360000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'No Historia:')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 18.897650000000000000
          Top = 18.897650000000000000
          Width = 275.905690000000000000
          Height = 71.811070000000000000
          ShowHint = False
          DataField = 'Logo'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object frxDBDataset1TP_IDENT_USUAR: TfrxMemoView
          Left = 109.606370000000000000
          Top = 147.401670000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TP_IDENT_USUAR'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."TP_IDENT_USUAR"]')
          ParentFont = False
        end
        object frxDBDataset1NR_IDENT_USUAR: TfrxMemoView
          Left = 143.622140000000000000
          Top = 147.401670000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NR_IDENT_USUAR'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."NR_IDENT_USUAR"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 11.338590000000000000
          Top = 147.401670000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Identificaci'#243'n:')
          ParentFont = False
        end
        object frxDBDataset1PRIMER_APELLIDO: TfrxMemoView
          Left = 109.606370000000000000
          Top = 170.078850000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRIMER_APELLIDO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."PRIMER_APELLIDO"]')
          ParentFont = False
        end
        object frxDBDataset1SEGUNDO_APELLIDO: TfrxMemoView
          Left = 275.905690000000000000
          Top = 170.078850000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SEGUNDO_APELLIDO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."SEGUNDO_APELLIDO"]')
          ParentFont = False
        end
        object frxDBDataset1PRIMER_NOMBRE: TfrxMemoView
          Left = 438.425480000000000000
          Top = 170.078850000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRIMER_NOMBRE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."PRIMER_NOMBRE"]')
          ParentFont = False
        end
        object frxDBDataset1SEGUNDO_NOMBRE: TfrxMemoView
          Left = 563.149970000000000000
          Top = 170.078850000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SEGUNDO_NOMBRE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."SEGUNDO_NOMBRE"]')
          ParentFont = False
        end
        object frxDBDataset1DIR_CASA_PACIEN: TfrxMemoView
          Left = 109.606370000000000000
          Top = 192.756030000000000000
          Width = 325.039580000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DIR_CASA_PACIEN'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."DIR_CASA_PACIEN"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 11.338590000000000000
          Top = 192.756030000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Direcci'#243'n:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 442.205010000000000000
          Top = 192.756030000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tel'#233'fono:')
          ParentFont = False
        end
        object frxDBDataset1TEL_CASA_PACIEN: TfrxMemoView
          Left = 514.016080000000000000
          Top = 192.756030000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TEL_CASA_PACIEN'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."TEL_CASA_PACIEN"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 328.819110000000000000
          Top = 7.559060000000000000
          Width = 377.953000000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'HISTORIA CLINICA')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 581.669667000000000000
          Top = 90.708720000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 612.283860000000000000
          Top = 68.031540000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8W = (
            '[DATE]')
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 143.622140000000000000
        Top = 684.094930000000000000
        Width = 740.409927000000000000
        object Shape1: TfrxShapeView
          Width = 718.110700000000000000
          Height = 143.622140000000000000
          ShowHint = False
        end
        object Shape2: TfrxShapeView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 710.551640000000000000
          Height = 136.063080000000000000
          ShowHint = False
        end
        object frxDBDataset1Usuario: TfrxMemoView
          Left = 294.803340000000000000
          Top = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Usuario'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."Usuario"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 510.236550000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 321.260050000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object frxDBDataset1Valor: TfrxMemoView
          Left = 336.378170000000000000
          Width = 396.850650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Valor'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Valor"]')
          ParentFont = False
        end
        object frxDBDataset1Descripcion_Campo: TfrxMemoView
          Left = 37.795300000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Descripcion_Campo'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Descripcion_Campo"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 22.677180000000000000
        Top = 328.819110000000000000
        Width = 740.409927000000000000
        Condition = 'frxDBDataset1."Codigo_Formato"'
        StartNewPage = True
        object Gradient1: TfrxGradientView
          Width = 740.787880000000000000
          Height = 22.677180000000000000
          ShowHint = False
          BeginColor = clSilver
          Style = gsHorizontal
          Color = 10526880
        end
        object frxDBDataset1Codigo_Formato: TfrxMemoView
          Left = 11.338590000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Codigo_Formato'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."Codigo_Formato"]')
        end
        object frxDBDataset1Descripcion: TfrxMemoView
          Left = 41.574830000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Descripcion'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."Descripcion"]')
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 22.677180000000000000
        Top = 464.882190000000000000
        Width = 740.409927000000000000
        Condition = 'frxDBDataset1."Codigo_Seccion"'
        object frxDBDataset1Descripcion_1: TfrxMemoView
          Left = 83.149660000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Descripcion_1'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."Descripcion_1"]')
        end
        object frxDBDataset1Codigo_Seccion: TfrxMemoView
          Left = 26.456710000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Codigo_Seccion'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."Codigo_Seccion"]')
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 555.590910000000000000
        Width = 740.409927000000000000
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 600.945270000000000000
        Width = 740.409927000000000000
      end
      object GroupHeader3: TfrxGroupHeader
        Height = 22.677180000000000000
        Top = 419.527830000000000000
        Width = 740.409927000000000000
        Condition = 'frxDBDataset1."Usuario"'
        object frxDBDataset1Usuario1: TfrxMemoView
          Left = 117.165430000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Usuario'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."Usuario"]')
        end
        object Memo8: TfrxMemoView
          Left = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Profesional:')
          ParentFont = False
        end
      end
      object GroupHeader4: TfrxGroupHeader
        Height = 22.677180000000000000
        Top = 374.173470000000000000
        Width = 740.409927000000000000
        Condition = 'frxDBDataset1."Fecha"'
        object frxDBDataset1Fecha: TfrxMemoView
          Left = 117.165430000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Fecha'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."Fecha"]')
        end
        object Memo7: TfrxMemoView
          Left = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fecha:')
          ParentFont = False
        end
      end
    end
  end
  object ADOQuery4: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM vHistoriasPacientes'
      'WHERE CCHistoria = '#39'CC79500567'#39)
    Left = 224
    Top = 5
  end
  object ADOQuery5: TADOQuery
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
    Left = 304
    Top = 5
  end
  object ADOQuery6: TADOQuery
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
    Left = 376
    Top = 5
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = DataModule1.ADOQuery1
    BCDToCurrency = False
    Left = 376
    Top = 208
  end
  object frxGradientObject1: TfrxGradientObject
    Left = 288
    Top = 208
  end
end
