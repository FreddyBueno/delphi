object FrmLibro_Diario: TFrmLibro_Diario
  Left = 378
  Top = 177
  Align = alCustom
  BorderStyle = bsDialog
  Caption = 'Libro Diario'
  ClientHeight = 211
  ClientWidth = 469
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
  OnActivate = FormActivate
  OnClose = FormClose
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 0
    Top = 208
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
      'QRSTRINGSBAND1')
    Functions.DATA = (
      '0'
      '0'
      #39#39
      #39#39)
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
    object QRBand3: TQRBand
      Left = 38
      Top = 258
      Width = 740
      Height = 27
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        71.437500000000000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRShape2: TQRShape
        Left = 3
        Top = 4
        Width = 736
        Height = 2
        Size.Values = (
          5.291666666666667000
          7.937500000000000000
          10.583333333333330000
          1947.333333333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel2: TQRLabel
        Left = 1
        Top = 8
        Width = 92
        Height = 17
        Size.Values = (
          44.979166666666670000
          2.645833333333333000
          21.166666666666670000
          243.416666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total General:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRExpr6: TQRExpr
        Left = 456
        Top = 8
        Width = 207
        Height = 11
        Size.Values = (
          29.104166666666670000
          1206.500000000000000000
          21.166666666666670000
          547.687500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery2.vrd)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRExpr7: TQRExpr
        Left = 531
        Top = 8
        Width = 206
        Height = 11
        Size.Values = (
          29.104166666666670000
          1404.937500000000000000
          21.166666666666670000
          545.041666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery2.vrc)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 740
      Height = 163
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        431.270833333333300000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 517
        Top = 1
        Width = 186
        Height = 33
        Size.Values = (
          87.312500000000000000
          1367.895833333333000000
          2.645833333333333000
          492.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'LIBRO DIARIO'
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
      object QRExpr2: TQRExpr
        Left = 328
        Top = 104
        Width = 103
        Height = 17
        Enabled = False
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
        Enabled = False
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
        Left = 3
        Top = 144
        Width = 735
        Height = 17
        Size.Values = (
          44.979166666666670000
          7.937500000000000000
          381.000000000000000000
          1944.687500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel6: TQRLabel
        Left = 24
        Top = 147
        Width = 28
        Height = 13
        Size.Values = (
          34.395833333333340000
          63.500000000000000000
          388.937500000000000000
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
      object QRLabel7: TQRLabel
        Left = 584
        Top = 147
        Width = 26
        Height = 13
        Size.Values = (
          34.395833333333340000
          1545.166666666667000000
          388.937500000000000000
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
        Left = 664
        Top = 147
        Width = 29
        Height = 13
        Size.Values = (
          34.395833333333340000
          1756.833333333333000000
          388.937500000000000000
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
      object QRLabel10: TQRLabel
        Left = 65
        Top = 124
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          171.979166666666700000
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
      object QRLabel9: TQRLabel
        Left = 126
        Top = 124
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          333.375000000000000000
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
      object QRLabel15: TQRLabel
        Left = 416
        Top = 147
        Width = 29
        Height = 13
        Size.Values = (
          34.395833333333340000
          1100.666666666667000000
          388.937500000000000000
          76.729166666666680000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Tercero'
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
      object QRLabel16: TQRLabel
        Left = 504
        Top = 147
        Width = 46
        Height = 13
        Size.Values = (
          34.395833333333340000
          1333.500000000000000000
          388.937500000000000000
          121.708333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cent. Costo'
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
        Top = 4
        Width = 201
        Height = 45
        Size.Values = (
          119.062500000000000000
          15.875000000000000000
          10.583333333333330000
          531.812500000000000000)
        XLColumn = 0
        DataField = 'Logo'
        DataSet = DataModule1.ADOQuery1
      end
      object QRLabel13: TQRLabel
        Left = 208
        Top = 104
        Width = 119
        Height = 17
        Enabled = False
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
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 285
      Width = 740
      Height = 21
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        55.562500000000000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel11: TQRLabel
        Left = 622
        Top = 2
        Width = 113
        Height = 15
        Size.Values = (
          39.687500000000000000
          1645.708333333333000000
          5.291666666666667000
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
        Left = 1
        Top = 1
        Width = 60
        Height = 17
        Size.Values = (
          44.979166666666670000
          2.645833333333333000
          2.645833333333333000
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
        Left = 65
        Top = 1
        Width = 71
        Height = 17
        Size.Values = (
          44.979166666666670000
          171.979166666666700000
          2.645833333333333000
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
      Top = 215
      Width = 740
      Height = 13
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
        34.395833333333330000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText4: TQRDBText
        Left = 24
        Top = 0
        Width = 25
        Height = 11
        Size.Values = (
          29.104166666666670000
          63.500000000000000000
          0.000000000000000000
          66.145833333333340000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
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
      object QRDBText5: TQRDBText
        Left = 56
        Top = 0
        Width = 50
        Height = 11
        Size.Values = (
          29.104166666666670000
          148.166666666666700000
          0.000000000000000000
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
      object QRExpr4: TQRExpr
        Left = 424
        Top = 0
        Width = 236
        Height = 11
        Size.Values = (
          29.104166666666670000
          1121.833333333333000000
          0.000000000000000000
          624.416666666666800000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
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
        Left = 498
        Top = 0
        Width = 239
        Height = 11
        Size.Values = (
          29.104166666666670000
          1317.625000000000000000
          0.000000000000000000
          632.354166666666800000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
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
      object QRDBText7: TQRDBText
        Left = 416
        Top = 0
        Width = 28
        Height = 11
        Size.Values = (
          29.104166666666670000
          1100.666666666667000000
          0.000000000000000000
          74.083333333333340000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Tercero'
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
      object QRDBText8: TQRDBText
        Left = 504
        Top = 0
        Width = 48
        Height = 11
        Size.Values = (
          29.104166666666670000
          1333.500000000000000000
          0.000000000000000000
          127.000000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Centro_Costo'
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
      Top = 201
      Width = 740
      Height = 14
      AfterPrint = QRGroup1AfterPrint
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        37.041666666666670000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'ADOQuery1.Tipo_Comprobante+STR(ADOQuery1.Numero_Comprobante)'
      FooterBand = QRFooter
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRLabel5: TQRLabel
        Left = 8
        Top = 1
        Width = 96
        Height = 12
        Size.Values = (
          31.750000000000000000
          21.166666666666670000
          2.645833333333333000
          254.000000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Fecha Comprobante:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRDBText1: TQRDBText
        Left = 112
        Top = 1
        Width = 95
        Height = 12
        Size.Values = (
          31.750000000000000000
          296.333333333333400000
          2.645833333333333000
          251.354166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Fecha_Comprobante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRLabel3: TQRLabel
        Left = 280
        Top = 1
        Width = 67
        Height = 12
        Size.Values = (
          31.750000000000000000
          740.833333333333200000
          2.645833333333333000
          177.270833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Tp/No. Comp.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRDBText2: TQRDBText
        Left = 352
        Top = 1
        Width = 88
        Height = 12
        Size.Values = (
          31.750000000000000000
          931.333333333333500000
          2.645833333333333000
          232.833333333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Tipo_Comprobante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRLabel4: TQRLabel
        Left = 376
        Top = 1
        Width = 4
        Height = 12
        Size.Values = (
          31.750000000000000000
          994.833333333333400000
          2.645833333333333000
          10.583333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRDBText3: TQRDBText
        Left = 392
        Top = 1
        Width = 104
        Height = 12
        Size.Values = (
          31.750000000000000000
          1037.166666666667000000
          2.645833333333333000
          275.166666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Numero_Comprobante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRLabel17: TQRLabel
        Left = 512
        Top = 1
        Width = 65
        Height = 12
        Size.Values = (
          31.750000000000000000
          1354.666666666667000000
          2.645833333333333000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Empresa/Area:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRDBText9: TQRDBText
        Left = 576
        Top = 1
        Width = 40
        Height = 12
        Size.Values = (
          31.750000000000000000
          1524.000000000000000000
          2.645833333333333000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText10: TQRDBText
        Left = 624
        Top = 1
        Width = 20
        Height = 12
        Size.Values = (
          31.750000000000000000
          1651.000000000000000000
          2.645833333333333000
          52.916666666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Area'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
    end
    object QRFooter: TQRBand
      Left = 38
      Top = 228
      Width = 740
      Height = 30
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        79.375000000000000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRLabel14: TQRLabel
        Left = 2
        Top = 16
        Width = 59
        Height = 11
        Size.Values = (
          29.104166666666670000
          5.291666666666667000
          42.333333333333340000
          156.104166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Observaciones:'
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
      object QRDBText6: TQRDBText
        Left = 65
        Top = 16
        Width = 672
        Height = 11
        Size.Values = (
          29.104166666666670000
          171.979166666666700000
          42.333333333333330000
          1778.000000000000000000)
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
      object QRExpr8: TQRExpr
        Left = 552
        Top = 4
        Width = 89
        Height = 11
        Size.Values = (
          29.104166666666670000
          1460.500000000000000000
          10.583333333333330000
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
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery4.VRD)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRExpr9: TQRExpr
        Left = 648
        Top = 4
        Width = 89
        Height = 11
        Size.Values = (
          29.104166666666670000
          1714.500000000000000000
          10.583333333333330000
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
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery4.VRC)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRShape3: TQRShape
        Left = 448
        Top = 2
        Width = 289
        Height = 1
        Size.Values = (
          2.645833333333333000
          1185.333333333333000000
          5.291666666666667000
          764.645833333333200000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 466
    Height = 211
    Caption = 'Par'#225'metros del Reporte:'
    TabOrder = 1
    object Label1: TLabel
      Left = 32
      Top = 32
      Width = 96
      Height = 13
      Caption = 'Periodo de Proceso:'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 136
      Top = 29
      Width = 169
      Height = 21
      KeyField = 'Periodo_Proceso'
      ListField = 'Periodo_Proceso'
      ListSource = DataSource1
      TabOrder = 0
    end
    object Button1: TButton
      Left = 328
      Top = 168
      Width = 129
      Height = 33
      Caption = 'Generar Informe'
      TabOrder = 1
      OnClick = Button1Click
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
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT contenccomp.empresa as empresa,contenccomp.area as area,c' +
        'ontenccomp.Fecha_Comprobante, contenccomp.Tipo_Comprobante, cont' +
        'enccomp.Numero_Comprobante, contenccomp.Periodo_Proceso, contenc' +
        'comp.Descripcion, contdetcomp.Cuenta AS Cuenta, ContCuenta.descr' +
        'ipcion as Descripcion_1,contdetcomp.Tercero AS Tercero, contdetc' +
        'omp.Centro_Costo AS Centro_Costo, contdetcomp.Valor_Debito AS Va' +
        'lor_Debito, contdetcomp.Valor_Credito AS Valor_Credito'
      
        'FROM contterce RIGHT JOIN (contcuenta INNER JOIN (contdetcomp IN' +
        'NER JOIN contenccomp ON (contdetcomp.Numero_Comprobante = conten' +
        'ccomp.Numero_Comprobante) AND (contdetcomp.Tipo_Comprobante = co' +
        'ntenccomp.Tipo_Comprobante)) ON contcuenta.Cuenta = contdetcomp.' +
        'Cuenta) ON contterce.Numero_Documento = contdetcomp.Tercero'
      
        'WHERE (((contenccomp.Periodo_Proceso)=:per) AND ((contenccomp.Es' +
        'tado)='#39'G'#39'))'
      
        'ORDER BY contenccomp.Tipo_Comprobante, contenccomp.Numero_Compro' +
        'bante, contdetcomp.Cuenta;')
    Left = 422
    Top = 1
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
      'SELECT Sum(Valor_Debito) AS vrd, Sum(Valor_Credito) AS Vrc'
      
        'FROM contterce RIGHT JOIN (contcuenta INNER JOIN (contdetcomp IN' +
        'NER JOIN contenccomp ON (contdetcomp.Numero_Comprobante = conten' +
        'ccomp.Numero_Comprobante) AND (contdetcomp.Tipo_Comprobante = co' +
        'ntenccomp.Tipo_Comprobante)) ON contcuenta.Cuenta = contdetcomp.' +
        'Cuenta) ON contterce.Numero_Documento = contdetcomp.Tercero'
      
        'WHERE (((contenccomp.Periodo_Proceso)=:per) AND ((contenccomp.Es' +
        'tado)='#39'G'#39'))')
    Left = 424
    Top = 32
  end
  object ADOQuery3: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM contcierres')
    Left = 424
    Top = 64
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery3
    Left = 424
    Top = 96
  end
  object ADOQuery4: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Tp'
        Size = -1
        Value = Null
      end
      item
        Name = 'nr'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT Sum(Valor_Debito) AS vrd, Sum(Valor_Credito) AS Vrc'
      'FROM contdetcomp'
      'WHERE Tipo_Comprobante = :Tp   AND Numero_Comprobante = :nr')
    Left = 424
    Top = 128
  end
end
