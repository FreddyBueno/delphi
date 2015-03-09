object FrmLibroAuxiliarxCtaTipoComp: TFrmLibroAuxiliarxCtaTipoComp
  Left = 511
  Top = 159
  BorderStyle = bsDialog
  Caption = 'Libro Auxiliar por Cuenta y Tipo Comprobante'
  ClientHeight = 213
  ClientWidth = 526
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = -18
    Top = 206
    Width = 816
    Height = 1056
    DataSet = ADOQuery1
    Description.Strings = (
      'Reporte que genera el Libro Diario')
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE'
      'QRSTRINGSBAND1'
      'SALDOTOTAL')
    Functions.DATA = (
      '0'
      '0'
      #39#39
      #39#39
      '0')
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Letter
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2794.000000000000000000
      100.000000000000000000
      2159.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    ReportTitle = 'Libro Diario'
    SnapToGrid = True
    Units = Native
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 740
      Height = 171
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        452.437500000000000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 160
        Top = 72
        Width = 408
        Height = 33
        Size.Values = (
          87.312500000000000000
          423.333333333333300000
          190.500000000000000000
          1079.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TOTALES POR COMPROBANTE'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 20
      end
      object QRLabel13: TQRLabel
        Left = 208
        Top = 104
        Width = 119
        Height = 17
        Size.Values = (
          44.979166666666670000
          550.333333333333400000
          275.166666666666700000
          314.854166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Fecha de Impresi'#243'n:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRExpr2: TQRExpr
        Left = 328
        Top = 104
        Width = 103
        Height = 17
        Size.Values = (
          44.979166666666670000
          867.833333333333500000
          275.166666666666700000
          272.520833333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        Expression = 'APPSTARTDATE'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRExpr3: TQRExpr
        Left = 432
        Top = 104
        Width = 99
        Height = 17
        Size.Values = (
          44.979166666666670000
          1143.000000000000000000
          275.166666666666700000
          261.937500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        Expression = 'APPSTARTTIME'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 1
        Top = 152
        Width = 738
        Height = 17
        Size.Values = (
          44.979166666666670000
          2.645833333333333000
          402.166666666666700000
          1952.625000000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel7: TQRLabel
        Left = 498
        Top = 155
        Width = 26
        Height = 13
        Size.Values = (
          34.395833333333340000
          1317.625000000000000000
          410.104166666666700000
          68.791666666666680000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'D'#233'bito'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRLabel8: TQRLabel
        Left = 590
        Top = 155
        Width = 29
        Height = 13
        Size.Values = (
          34.395833333333340000
          1561.041666666667000000
          410.104166666666700000
          76.729166666666680000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cr'#233'dito'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRLabel9: TQRLabel
        Left = 384
        Top = 124
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          1016.000000000000000000
          328.083333333333400000
          153.458333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QRLabel9'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 320
        Top = 124
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          846.666666666666800000
          328.083333333333400000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'P'#233'riodo:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 6
        Top = 155
        Width = 83
        Height = 13
        Size.Values = (
          34.395833333333340000
          15.875000000000000000
          410.104166666666700000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Tipo de Comprobante'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRDBImage1: TQRDBImage
        Left = 6
        Top = 3
        Width = 729
        Height = 65
        Size.Values = (
          171.979166666666700000
          15.875000000000000000
          7.937500000000000000
          1928.812500000000000000)
        XLColumn = 0
        DataField = 'Logo'
        DataSet = DataModule1.ADOQuery1
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 249
      Width = 740
      Height = 32
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        84.666666666666680000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel11: TQRLabel
        Left = 616
        Top = 8
        Width = 113
        Height = 17
        Size.Values = (
          44.979166666666670000
          1629.833333333333000000
          21.166666666666670000
          298.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'www.prateinco.com'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel12: TQRLabel
        Left = 0
        Top = 8
        Width = 60
        Height = 17
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          21.166666666666670000
          158.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'P'#225'gina No.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr1: TQRExpr
        Left = 64
        Top = 8
        Width = 71
        Height = 17
        Size.Values = (
          44.979166666666670000
          169.333333333333300000
          21.166666666666670000
          187.854166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'PAGENUMBER'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 209
      Width = 740
      Height = 12
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        31.750000000000000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRExpr4: TQRExpr
        Left = 464
        Top = 1
        Width = 89
        Height = 11
        Size.Values = (
          29.104166666666670000
          1227.666666666667000000
          2.645833333333333000
          235.479166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery1.VD)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRExpr5: TQRExpr
        Left = 554
        Top = 1
        Width = 89
        Height = 11
        Size.Values = (
          29.104166666666670000
          1465.791666666667000000
          2.645833333333333000
          235.479166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery1.VC)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRDBText8: TQRDBText
        Left = 4
        Top = 1
        Width = 47
        Height = 11
        Size.Values = (
          29.104166666666670000
          10.583333333333330000
          2.645833333333333000
          124.354166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Tipo_comprobante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 6
      end
      object QRDBText12: TQRDBText
        Left = 52
        Top = 1
        Width = 317
        Height = 11
        Size.Values = (
          29.104166666666670000
          137.583333333333300000
          2.645833333333333000
          838.729166666666800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Descripcion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 6
      end
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 221
      Width = 740
      Height = 28
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        74.083333333333340000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel2: TQRLabel
        Left = 48
        Top = 8
        Width = 54
        Height = 17
        Size.Values = (
          44.979166666666670000
          127.000000000000000000
          21.166666666666670000
          142.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TOTALES:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRShape2: TQRShape
        Left = 48
        Top = 8
        Width = 689
        Height = 1
        Size.Values = (
          2.645833333333333000
          127.000000000000000000
          21.166666666666670000
          1822.979166666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRExpr6: TQRExpr
        Left = 464
        Top = 11
        Width = 89
        Height = 11
        Size.Values = (
          29.104166666666670000
          1227.666666666667000000
          29.104166666666670000
          235.479166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery2.VD)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRExpr7: TQRExpr
        Left = 554
        Top = 11
        Width = 89
        Height = 11
        Size.Values = (
          29.104166666666670000
          1465.791666666667000000
          29.104166666666670000
          235.479166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery2.VC)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 526
    Height = 213
    Align = alClient
    Caption = 'Par'#225'metros del Reporte:'
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 40
      Width = 39
      Height = 13
      Caption = 'Periodo:'
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 37
      Height = 13
      Caption = 'Cuenta:'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 104
      Top = 37
      Width = 129
      Height = 21
      KeyField = 'Periodo_Proceso'
      ListField = 'Periodo_Proceso'
      ListSource = DataSource1
      TabOrder = 0
    end
    object Button1: TButton
      Left = 384
      Top = 168
      Width = 129
      Height = 33
      Caption = 'Generar Informe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 104
      Top = 61
      Width = 337
      Height = 21
      KeyField = 'Cuenta'
      ListField = 'descr'
      ListSource = DataSource3
      TabOrder = 2
    end
    object CheckBox1: TCheckBox
      Left = 448
      Top = 64
      Width = 57
      Height = 17
      Caption = 'Todos'
      TabOrder = 3
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'per'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = ''
      end
      item
        Name = 'Cta'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT contenccomp.Tipo_Comprobante, conttipocomp.descripcion,su' +
        'm(valor_debito) as VD,sum(valor_credito) as VC'
      'FROM   contdetcomp,contenccomp,conttipocomp '
      
        'WHERE  contdetcomp.Numero_Comprobante = contenccomp.Numero_Compr' +
        'obante AND '
      
        '       contdetcomp.Tipo_Comprobante   = contenccomp.Tipo_Comprob' +
        'ante AND'
      
        '       contenccomp.tipo_comprobante   = conttipocomp.tipo_compro' +
        'bante AND'
      '       contenccomp.Periodo_Proceso like  :Per  AND '
      '       contdetcomp.cuenta like :Cta AND'
      '       contenccomp.Estado='#39'G'#39
      'GROUP BY contenccomp.Tipo_Comprobante, conttipocomp.descripcion'
      'ORDER BY contenccomp.Tipo_Comprobante, conttipocomp.descripcion')
    Left = 430
    Top = 9
  end
  object ADOQuery3: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM contcierres')
    Left = 352
    Top = 112
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery3
    Left = 352
    Top = 144
  end
  object ADOQuery4: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT cuenta,cuenta+'#39'-'#39'+descripcion as descr FROM contcuenta WH' +
        'ERE len(cuenta) >= 6')
    Left = 280
    Top = 112
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery4
    Left = 280
    Top = 144
  end
  object ADOQuery6: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT cuenta,cuenta+'#39'-'#39'+descripcion as descr '
      'FROM contcuenta '
      'WHERE Estado = '#39'A'#39)
    Left = 152
    Top = 112
  end
  object ADOQuery7: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM Contterce')
    Left = 120
    Top = 112
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery6
    Left = 152
    Top = 144
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery7
    Left = 120
    Top = 144
  end
  object DataSource5: TDataSource
    DataSet = ADOQuery8
    Left = 384
    Top = 144
  end
  object ADOQuery8: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM contcierres WHERE estado ='#39'C'#39)
    Left = 384
    Top = 112
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'per'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = ''
      end>
    SQL.Strings = (
      'SELECT sum(valor_debito) as VD,sum(valor_credito) as VC'
      'FROM   contdetcomp,contenccomp,conttipocomp '
      
        'WHERE  contdetcomp.Numero_Comprobante = contenccomp.Numero_Compr' +
        'obante AND '
      
        '       contdetcomp.Tipo_Comprobante   = contenccomp.Tipo_Comprob' +
        'ante AND'
      
        '       contenccomp.tipo_comprobante   = conttipocomp.tipo_compro' +
        'bante AND'
      '       contenccomp.Periodo_Proceso like  :Per  AND '
      '       contenccomp.Estado='#39'G'#39
      '')
    Left = 462
    Top = 9
  end
end
