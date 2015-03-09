object ImpBoleta: TImpBoleta
  Left = 658
  Top = 110
  BorderStyle = bsSingle
  Caption = 'Impresi'#243'n del Cargo'
  ClientHeight = 201
  ClientWidth = 300
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  PopupMode = pmAuto
  Position = poScreenCenter
  Scaled = False
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 300
    Height = 201
    Align = alClient
    AutoSize = True
    TabOrder = 0
    object dxLayoutControl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 298
      Height = 199
      Align = alClient
      TabOrder = 0
      object Label1: TLabel
        Left = 10
        Top = 10
        Width = 51
        Height = 13
        Caption = 'No. Cargo:'
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 10
        Top = 29
        Width = 209
        Height = 21
        KeyField = 'NO_CARGO'
        ListField = 'NO_CARGO'
        ListSource = DataSource1
        TabOrder = 0
      end
      object Button1: TButton
        Left = 10
        Top = 56
        Width = 113
        Height = 49
        Caption = 'Reimprimir Cargo'
        TabOrder = 1
        OnClick = Button1Click
      end
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutControl1Item1: TdxLayoutItem
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        CaptionOptions.Layout = clTop
        Parent = dxLayoutControl1Group1
        Control = Label1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl1Item2: TdxLayoutItem
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Parent = dxLayoutControl1Group1
        Control = DBLookupComboBox1
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl1Item3: TdxLayoutItem
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Parent = dxLayoutControl1Group1
        Control = Button1
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        AlignHorz = ahLeft
        CaptionOptions.Layout = clLeft
        CaptionOptions.Text = 'New Group'
        Parent = dxLayoutControl1Group_Root
        ButtonOptions.Buttons = <>
        ShowBorder = False
        Index = 0
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 240
    Top = 8
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM CREncCargos'
      'WHERE estado is NULL'
      'ORDER BY convert(integer,no_cargo)')
    Left = 240
    Top = 72
  end
  object frxReport1: TfrxReport
    Version = '4.13.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41876.330066400500000000
    ReportOptions.LastChange = 41876.330066400500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 24
    Top = 152
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1No_Cargo: TfrxMemoView
          Left = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'No_Cargo'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."No_Cargo"]')
          ParentFont = False
        end
        object frxDBDataset1TP_PST: TfrxMemoView
          Left = 102.047310000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TP_PST'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."TP_PST"]')
        end
        object frxDBDataset1CD_PST: TfrxMemoView
          Left = 120.944960000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CD_PST'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CD_PST"]')
        end
        object frxDBDataset1DESCRIPCION: TfrxMemoView
          Left = 291.023810000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DESCRIPCION'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."DESCRIPCION"]')
        end
      end
      object DetailData1: TfrxDetailData
        Height = 22.677180000000000000
        Top = 245.669450000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1DESCRIPCION1: TfrxMemoView
          Left = 37.795300000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DESCRIPCION'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."DESCRIPCION"]')
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 120.944960000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        Height = 117.165430000000000000
        Top = 328.819110000000000000
        Width = 718.110700000000000000
        object Shape1: TfrxShapeView
          Left = 3.779530000000000000
          Width = 714.331170000000000000
          Height = 117.165430000000000000
          ShowHint = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = ADOQuery2
    BCDToCurrency = False
    Left = 104
    Top = 152
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'nofact'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = '23000001'
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM CREncCargos   '
      
        ' inner join CRDetCargos on CREncCargos.No_Cargo=CRDetCargos.No_C' +
        'argo'
      
        ' inner join SAAdmisiones on CREncCargos.No_Admision = SAAdmision' +
        'es.No_Admision'
      
        ' inner join SAPacientes on ( SAAdmisiones.tp_ident_usuar = SAPac' +
        'ientes.tp_ident_usuar'
      
        #9#9#9'AND SAAdmisiones.nr_ident_usuar = SAPacientes.nr_ident_usuar ' +
        ')'
      
        ' inner join Comunes.dbo.SEAreas AS A on ( CREncCargos.Empresa_Pr' +
        'oducto = A.Empresa'
      #9#9#9'AND CREncCargos.Area_Producto = A.Codigo )'
      
        ' left outer join Comunes.dbo.SEAreas AS B on ( CREncCargos.Empre' +
        'sa_Solicita = B.Empresa'
      ' AND CREncCargos.Area_Solicita = B.Codigo )'
      'WHERE CREncCargos.No_Cargo = :nofact'
      'ORDER BY crenccargos.no_cargo,agrupacion'
      '')
    Left = 24
    Top = 96
  end
  object ADOTable1: TADOTable
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    TableName = 'INConsecFacturas'
    Left = 104
    Top = 96
  end
end
