object FrmLibroDiarioResum: TFrmLibroDiarioResum
  Left = 298
  Top = 146
  BorderStyle = bsDialog
  Caption = 'Libro Diario Resumido'
  ClientHeight = 211
  ClientWidth = 522
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
    Top = 214
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
        Left = 432
        Top = 8
        Width = 296
        Height = 19
        Size.Values = (
          50.270833333333330000
          1143.000000000000000000
          21.166666666666670000
          783.166666666666800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'COMPROBANTE DE DIARIO RESUMIDO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
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
          846.666666666666600000
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
      object QRLabel3: TQRLabel
        Left = 2
        Top = 155
        Width = 28
        Height = 13
        Size.Values = (
          34.395833333333340000
          5.291666666666667000
          410.104166666666700000
          74.083333333333340000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cuenta'
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
        Left = 2
        Top = 1
        Width = 231
        Height = 40
        Size.Values = (
          105.833333333333300000
          5.291666666666667000
          2.645833333333333000
          611.187500000000000000)
        XLColumn = 0
        DataField = 'Logo'
        DataSet = DataModule1.ADOQuery1
        Stretch = True
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 281
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
        Left = 624
        Top = 8
        Width = 113
        Height = 17
        Size.Values = (
          44.979166666666670000
          1651.000000000000000000
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
      Top = 225
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
      object QRDBText3: TQRDBText
        Left = 5
        Top = 1
        Width = 41
        Height = 11
        Size.Values = (
          29.104166666666670000
          13.229166666666670000
          2.645833333333333000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Cuenta'
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
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery1.Valor_Debito)'
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
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery1.Valor_Credito)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRDBText1: TQRDBText
        Left = 53
        Top = 1
        Width = 50
        Height = 11
        Size.Values = (
          29.104166666666670000
          140.229166666666700000
          2.645833333333333000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Descripcion_1'
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
    object QRGroup1: TQRGroup
      Left = 38
      Top = 209
      Width = 740
      Height = 16
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        42.333333333333340000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'ADOQuery1.Tipo_Comprobante'
      FooterBand = QRFooter
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRLabel6: TQRLabel
        Left = 0
        Top = 2
        Width = 75
        Height = 13
        Size.Values = (
          34.395833333333340000
          0.000000000000000000
          5.291666666666667000
          198.437500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Tipo Comprobante:'
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
      object QRDBText4: TQRDBText
        Left = 80
        Top = 2
        Width = 65
        Height = 13
        Size.Values = (
          34.395833333333340000
          211.666666666666700000
          5.291666666666667000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Tipo_Comprobante'
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
      object QRDBText5: TQRDBText
        Left = 152
        Top = 2
        Width = 40
        Height = 13
        Size.Values = (
          34.395833333333340000
          402.166666666666700000
          5.291666666666667000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'descripcion'
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
    object QRFooter: TQRBand
      Left = 38
      Top = 237
      Width = 740
      Height = 16
      AlignToBottom = False
      BeforePrint = QRFooterBeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        42.333333333333340000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRShape3: TQRShape
        Left = 8
        Top = 0
        Width = 730
        Height = 15
        Size.Values = (
          39.687500000000000000
          21.166666666666670000
          0.000000000000000000
          1931.458333333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel14: TQRLabel
        Left = 20
        Top = 2
        Width = 68
        Height = 11
        Size.Values = (
          29.104166666666670000
          52.916666666666670000
          5.291666666666667000
          179.916666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'SUMAS IGUALES:'
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
      object QRExpr10: TQRExpr
        Left = 463
        Top = 2
        Width = 90
        Height = 11
        Size.Values = (
          29.104166666666670000
          1225.020833333333000000
          5.291666666666667000
          238.125000000000000000)
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
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery2.Vrd)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRExpr11: TQRExpr
        Left = 554
        Top = 2
        Width = 89
        Height = 11
        Size.Values = (
          29.104166666666670000
          1465.791666666667000000
          5.291666666666667000
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
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery2.Vrc)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 253
      Width = 740
      Height = 28
      AlignToBottom = False
      BeforePrint = QRBand1BeforePrint
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
        Left = 20
        Top = 10
        Width = 55
        Height = 11
        Size.Values = (
          29.104166666666670000
          52.916666666666670000
          26.458333333333330000
          145.520833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TOTAL FINAL:'
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
      object QRExpr6: TQRExpr
        Left = 463
        Top = 10
        Width = 90
        Height = 11
        Size.Values = (
          29.104166666666670000
          1225.020833333333000000
          26.458333333333330000
          238.125000000000000000)
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
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery7.Vrd)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRExpr7: TQRExpr
        Left = 554
        Top = 10
        Width = 89
        Height = 11
        Size.Values = (
          29.104166666666670000
          1465.791666666667000000
          26.458333333333330000
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
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery7.Vrc)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRShape4: TQRShape
        Left = 16
        Top = 4
        Width = 673
        Height = 1
        Size.Values = (
          2.645833333333333000
          42.333333333333330000
          10.583333333333330000
          1780.645833333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 523
    Height = 212
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
      Width = 90
      Height = 13
      Caption = 'Tipo Comprobante:'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 112
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
      Left = 112
      Top = 61
      Width = 337
      Height = 21
      KeyField = 'Tipo_Comprobante'
      ListField = 'Descripcion'
      ListSource = DataSource3
      TabOrder = 2
    end
    object CheckBox1: TCheckBox
      Left = 456
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
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = ''
      end
      item
        Name = 'tpcomp'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT contenccomp.Tipo_Comprobante,conttipocomp.descripcion, co' +
        'ntdetcomp.Cuenta AS Cuenta,contcuenta.Descripcion AS Descripcion' +
        '_1,sum(contdetcomp.Valor_Debito) AS Valor_Debito, sum(contdetcom' +
        'p.Valor_Credito) AS Valor_Credito'
      'FROM   contterce,contcuenta,contdetcomp,contenccomp,conttipocomp'
      
        'WHERE (contdetcomp.Tipo_Comprobante = contenccomp.Tipo_Comproban' +
        'te AND '
      '      contdetcomp.empresa = contenccomp.empresa AND'
      
        '              contdetcomp.Numero_Comprobante = contenccomp.Numer' +
        'o_Comprobante) AND '
      '              contdetcomp.Cuenta = contcuenta.Cuenta  AND'
      
        '              contdetcomp.Tercero = contterce.Numero_Documento +' +
        ' contterce.Sucursal AND'
      
        '              contenccomp.Tipo_Comprobante = conttipocomp.tipo_c' +
        'omprobante AND'
      '              contenccomp.Periodo_Proceso like  :per  AND '
      '              contenccomp.Tipo_Comprobante like :tpcomp AND'
      '              contenccomp.Estado='#39'G'#39
      
        'GROUP BY contenccomp.Tipo_Comprobante,conttipocomp.descripcion, ' +
        'contdetcomp.Cuenta ,contcuenta.Descripcion'
      
        'ORDER BY contenccomp.Tipo_Comprobante,conttipocomp.descripcion, ' +
        'contdetcomp.Cuenta ,contcuenta.Descripcion')
    Left = 430
    Top = 9
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
      end
      item
        Name = 'Cta'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT Sum(Valor_Debito) AS Vrd, Sum(Valor_Credito) AS Vrc'
      'FROM  contterce,contcuenta,contdetcomp,contenccomp,conttipocomp'
      
        'WHERE contdetcomp.Tipo_Comprobante = contenccomp.Tipo_Comprobant' +
        'e AND '
      
        '              contdetcomp.Numero_Comprobante = contenccomp.Numer' +
        'o_Comprobante AND '
      '              contdetcomp.Cuenta = contcuenta.Cuenta  AND'
      
        '              contdetcomp.Tercero = contterce.Numero_Documento A' +
        'ND'
      
        '              contdetcomp.Tipo_Comprobante = conttipocomp.tipo_c' +
        'omprobante AND'
      '              contenccomp.Periodo_Proceso like  :Per  AND '
      '              contenccomp.Tipo_Comprobante like :Cta AND'
      '              contenccomp.Estado='#39'G'#39)
    Left = 360
    Top = 8
  end
  object ADOQuery3: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM contcierres ')
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
      'SELECT cuenta,cuenta+'#39'-'#39'+descripcion as descr '
      'FROM contcuenta WHERE len(cuenta) >= 6')
    Left = 280
    Top = 112
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery4
    Left = 280
    Top = 144
  end
  object ADOQuery5: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'per'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = ''
      end
      item
        Name = 'cta'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT Periodo_Proceso,ContSaldo.Tipo_Comprobante,sum(Saldo_Debi' +
        'to) as Saldo_Debito,sum(Saldo_Credito) as Saldo_Credito'
      'FROM CONTSaldo,conttipocomp'
      
        'WHERE ContSaldo.Tipo_Comprobante = conttipocomp.tipo_comprobante' +
        ' AND'
      '               periodo_proceso=:per AND '
      '               contsaldo.tipo_comprobante =:cta'
      'GROUP BY Periodo_Proceso,ContSaldo.Tipo_Comprobante'
      ' ')
    Left = 462
    Top = 9
  end
  object ADOQuery6: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM CONTTipoComp'
      '')
    Left = 152
    Top = 112
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery6
    Left = 152
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
      'SELECT * '
      'FROM contcierres '
      'WHERE estado ='#39'C'#39
      '')
    Left = 384
    Top = 112
  end
  object ADOQuery7: TADOQuery
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
      'SELECT Sum(Valor_Debito) AS Vrd, Sum(Valor_Credito) AS Vrc'
      'FROM  contterce,contcuenta,contdetcomp,contenccomp,conttipocomp'
      
        'WHERE contdetcomp.Tipo_Comprobante = contenccomp.Tipo_Comprobant' +
        'e AND '
      
        '              contdetcomp.Numero_Comprobante = contenccomp.Numer' +
        'o_Comprobante AND '
      '              contdetcomp.Cuenta = contcuenta.Cuenta  AND'
      
        '              contdetcomp.Tercero = contterce.Numero_Documento A' +
        'ND'
      
        '              contdetcomp.Tipo_Comprobante = conttipocomp.tipo_c' +
        'omprobante AND'
      '              contenccomp.Periodo_Proceso like  :Per  AND '
      '              contenccomp.Estado='#39'G'#39)
    Left = 496
    Top = 8
  end
end
