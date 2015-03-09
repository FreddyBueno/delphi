object FrmLibroAuxiliarCtaTercero2: TFrmLibroAuxiliarCtaTercero2
  Left = 329
  Top = 101
  BorderStyle = bsDialog
  Caption = 'Libro Auxiliar por Cuenta y Tercero con Base para Impuestos'
  ClientHeight = 314
  ClientWidth = 487
  Color = clBtnFace
  Enabled = False
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
    Left = -2
    Top = 294
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
        Left = 264
        Top = 72
        Width = 214
        Height = 33
        Size.Values = (
          87.312500000000000000
          698.500000000000000000
          190.500000000000000000
          566.208333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'LIBRO AUXILIAR'
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
          550.333333333333300000
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
          867.833333333333200000
          275.166666666666700000
          272.520833333333300000)
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
      object QRLabel5: TQRLabel
        Left = 3
        Top = 155
        Width = 77
        Height = 13
        Size.Values = (
          34.395833333333330000
          7.937500000000000000
          410.104166666666700000
          203.729166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Fecha Comprobante'
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
        Left = 506
        Top = 155
        Width = 26
        Height = 13
        Size.Values = (
          34.395833333333330000
          1338.791666666667000000
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
          34.395833333333330000
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
      object QRLabel3: TQRLabel
        Left = 96
        Top = 155
        Width = 53
        Height = 13
        Size.Values = (
          34.395833333333330000
          254.000000000000000000
          410.104166666666700000
          140.229166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Tp/No. Comp.'
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
          328.083333333333300000
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
          328.083333333333300000
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
        Left = 214
        Top = 155
        Width = 28
        Height = 13
        Size.Values = (
          34.395833333333330000
          566.208333333333300000
          410.104166666666700000
          74.083333333333320000)
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
      object QRLabel17: TQRLabel
        Left = 440
        Top = 155
        Width = 52
        Height = 13
        Size.Values = (
          34.395833333333330000
          1164.166666666667000000
          410.104166666666700000
          137.583333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Centro Costo'
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
      object QRLabel18: TQRLabel
        Left = 170
        Top = 155
        Width = 18
        Height = 13
        Size.Values = (
          34.395833333333330000
          449.791666666666700000
          410.104166666666700000
          47.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Emp'
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
      object QRLabel19: TQRLabel
        Left = 190
        Top = 155
        Width = 17
        Height = 13
        Size.Values = (
          34.395833333333330000
          502.708333333333300000
          410.104166666666700000
          44.979166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Area'
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
      object QRLabel20: TQRLabel
        Left = 706
        Top = 154
        Width = 22
        Height = 11
        Size.Values = (
          29.104166666666670000
          1867.958333333333000000
          407.458333333333300000
          58.208333333333320000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Saldo'
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
        Width = 729
        Height = 65
        Size.Values = (
          171.979166666666700000
          15.875000000000000000
          10.583333333333330000
          1928.812500000000000000)
        XLColumn = 0
        DataField = 'Logo'
        DataSet = DataModule1.ADOQuery1
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 264
      Width = 740
      Height = 28
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        74.083333333333330000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel11: TQRLabel
        Left = 576
        Top = 8
        Width = 160
        Height = 17
        Size.Values = (
          44.979166666666670000
          1524.000000000000000000
          21.166666666666670000
          423.333333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Generado por Prateinco-2006'
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
      Top = 235
      Width = 740
      Height = 13
      AlignToBottom = False
      BeforePrint = QRBand2BeforePrint
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
      object QRDBText1: TQRDBText
        Left = 16
        Top = 1
        Width = 65
        Height = 11
        Size.Values = (
          29.104166666666670000
          42.333333333333330000
          2.645833333333333000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Fecha_Comprobante'
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
      object QRDBText2: TQRDBText
        Left = 84
        Top = 1
        Width = 20
        Height = 11
        Size.Values = (
          29.104166666666670000
          222.250000000000000000
          2.645833333333333000
          52.916666666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
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
      object QRDBText3: TQRDBText
        Left = 109
        Top = 1
        Width = 41
        Height = 11
        Size.Values = (
          29.104166666666670000
          288.395833333333300000
          2.645833333333333000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Numero_Comprobante'
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
      object QRLabel4: TQRLabel
        Left = 104
        Top = 1
        Width = 4
        Height = 11
        Size.Values = (
          29.104166666666670000
          275.166666666666700000
          2.645833333333333000
          10.583333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '-'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRExpr4: TQRExpr
        Left = 584
        Top = 1
        Width = 72
        Height = 11
        Size.Values = (
          29.104166666666670000
          1545.166666666667000000
          2.645833333333333000
          190.500000000000000000)
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
        Left = 504
        Top = 1
        Width = 75
        Height = 11
        Size.Values = (
          29.104166666666670000
          1333.500000000000000000
          2.645833333333333000
          198.437500000000000000)
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
      object QRDBText9: TQRDBText
        Left = 464
        Top = 1
        Width = 32
        Height = 11
        Size.Values = (
          29.104166666666670000
          1227.666666666667000000
          2.645833333333333000
          84.666666666666680000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
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
      object QRDBText10: TQRDBText
        Left = 154
        Top = 1
        Width = 20
        Height = 11
        Size.Values = (
          29.104166666666670000
          407.458333333333300000
          2.645833333333333000
          52.916666666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Empresa'
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
      object QRDBText11: TQRDBText
        Left = 176
        Top = 1
        Width = 17
        Height = 11
        Size.Values = (
          29.104166666666670000
          465.666666666666700000
          2.645833333333333000
          44.979166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Area'
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
        Left = 200
        Top = 1
        Width = 81
        Height = 11
        Size.Values = (
          29.104166666666670000
          529.166666666666700000
          2.645833333333333000
          214.312500000000000000)
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
      object QRLabel21: TQRLabel
        Left = 660
        Top = 0
        Width = 77
        Height = 11
        Size.Values = (
          29.104166666666670000
          1746.250000000000000000
          0.000000000000000000
          203.729166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel21'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRDBText4: TQRDBText
        Left = 286
        Top = 1
        Width = 54
        Height = 11
        Size.Values = (
          29.104166666666670000
          756.708333333333200000
          2.645833333333333000
          142.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
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
      object QRDBText5: TQRDBText
        Left = 342
        Top = 1
        Width = 119
        Height = 11
        Size.Values = (
          29.104166666666670000
          904.875000000000000000
          2.645833333333333000
          314.854166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Nombre'
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
      Top = 248
      Width = 740
      Height = 16
      AlignToBottom = False
      BeforePrint = QRBand1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        42.333333333333330000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRShape3: TQRShape
        Left = 1
        Top = 1
        Width = 738
        Height = 14
        Size.Values = (
          37.041666666666670000
          2.645833333333333000
          2.645833333333333000
          1952.625000000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel26: TQRLabel
        Left = 2
        Top = 3
        Width = 133
        Height = 11
        Size.Values = (
          29.104166666666670000
          5.291666666666667000
          7.937500000000000000
          351.895833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Saldo Final del Periodo por Cuenta:'
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
      object QRLabel27: TQRLabel
        Left = 644
        Top = 3
        Width = 92
        Height = 11
        Size.Values = (
          29.104166666666670000
          1703.916666666667000000
          7.937500000000000000
          243.416666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel21'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRLabel30: TQRLabel
        Left = 463
        Top = 3
        Width = 90
        Height = 11
        Enabled = False
        Size.Values = (
          29.104166666666670000
          1225.020833333333000000
          7.937500000000000000
          238.125000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRLabel31: TQRLabel
        Left = 555
        Top = 3
        Width = 86
        Height = 11
        Enabled = False
        Size.Values = (
          29.104166666666670000
          1468.437500000000000000
          7.937500000000000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRLabel37: TQRLabel
        Left = 143
        Top = 3
        Width = 90
        Height = 11
        Size.Values = (
          29.104166666666670000
          378.354166666666700000
          7.937500000000000000
          238.125000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel37'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
    end
    object QRGroup2: TQRGroup
      Left = 38
      Top = 209
      Width = 740
      Height = 26
      AlignToBottom = False
      BeforePrint = QRGroup2BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        68.791666666666670000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'ADOQuery1.Cuenta'
      FooterBand = QRBand1
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRLabel2: TQRLabel
        Left = 0
        Top = 2
        Width = 31
        Height = 11
        Size.Values = (
          29.104166666666670000
          0.000000000000000000
          5.291666666666667000
          82.020833333333320000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cuenta:'
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
      object QRDBText13: TQRDBText
        Left = 40
        Top = 2
        Width = 25
        Height = 11
        Size.Values = (
          29.104166666666670000
          105.833333333333300000
          5.291666666666667000
          66.145833333333320000)
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
      object QRDBText14: TQRDBText
        Left = 80
        Top = 2
        Width = 50
        Height = 11
        Size.Values = (
          29.104166666666670000
          211.666666666666700000
          5.291666666666667000
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
      object QRShape2: TQRShape
        Left = 5
        Top = 24
        Width = 731
        Height = 1
        Size.Values = (
          2.645833333333333000
          13.229166666666670000
          63.500000000000000000
          1934.104166666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel25: TQRLabel
        Left = 661
        Top = 13
        Width = 78
        Height = 11
        Size.Values = (
          29.104166666666670000
          1748.895833333333000000
          34.395833333333330000
          206.375000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRLabel28: TQRLabel
        Left = 504
        Top = 13
        Width = 73
        Height = 11
        Size.Values = (
          29.104166666666670000
          1333.500000000000000000
          34.395833333333330000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRLabel29: TQRLabel
        Left = 585
        Top = 13
        Width = 71
        Height = 11
        Size.Values = (
          29.104166666666670000
          1547.812500000000000000
          34.395833333333330000
          187.854166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRLabel15: TQRLabel
        Left = 4
        Top = 13
        Width = 92
        Height = 11
        Size.Values = (
          29.104166666666670000
          10.583333333333330000
          34.395833333333330000
          243.416666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Saldo Inicial por Cuenta:'
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
      object QRLabel36: TQRLabel
        Left = 103
        Top = 13
        Width = 90
        Height = 11
        Size.Values = (
          29.104166666666670000
          272.520833333333300000
          34.395833333333330000
          238.125000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel36'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 487
    Height = 314
    Align = alClient
    Caption = 'Par'#225'metros del Reporte:'
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 40
      Width = 86
      Height = 13
      Caption = 'Periodo Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 176
      Width = 70
      Height = 13
      Caption = 'Tercero Inicial:'
    end
    object Label3: TLabel
      Left = 16
      Top = 72
      Width = 67
      Height = 13
      Caption = 'Cuenta Inicial:'
    end
    object Label4: TLabel
      Left = 264
      Top = 40
      Width = 79
      Height = 13
      Caption = 'Periodo Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 96
      Width = 62
      Height = 13
      Caption = 'Cuenta Final:'
    end
    object Label6: TLabel
      Left = 16
      Top = 200
      Width = 65
      Height = 13
      Caption = 'Tercero Final:'
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
      Left = 344
      Top = 272
      Width = 129
      Height = 33
      Caption = 'Generar Informe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = Button1Click
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 104
      Top = 173
      Width = 377
      Height = 21
      KeyField = 'Numero_Documento'
      ListField = 'Primer_Apellido'
      ListSource = DataSource3
      TabOrder = 4
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 104
      Top = 69
      Width = 377
      Height = 21
      KeyField = 'Cuenta'
      ListField = 'descr'
      ListSource = DataSource2
      TabOrder = 2
    end
    object DBLookupComboBox4: TDBLookupComboBox
      Left = 352
      Top = 37
      Width = 129
      Height = 21
      KeyField = 'Periodo_Proceso'
      ListField = 'Periodo_Proceso'
      ListSource = DataSource1
      TabOrder = 1
    end
    object DBLookupComboBox5: TDBLookupComboBox
      Left = 104
      Top = 93
      Width = 377
      Height = 21
      KeyField = 'Cuenta'
      ListField = 'descr'
      ListSource = DataSource2
      TabOrder = 3
    end
    object DBLookupComboBox6: TDBLookupComboBox
      Left = 104
      Top = 197
      Width = 377
      Height = 21
      KeyField = 'Numero_Documento'
      ListField = 'Primer_Apellido'
      ListSource = DataSource3
      TabOrder = 5
    end
    object CheckBox2: TCheckBox
      Left = 104
      Top = 224
      Width = 129
      Height = 17
      Caption = 'Muestra Totales?'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 7
    end
    object CheckBox3: TCheckBox
      Left = 104
      Top = 120
      Width = 129
      Height = 17
      Caption = 'Muestra Totales?'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 8
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
        Name = 'Per2'
        Size = -1
        Value = Null
      end
      item
        Name = 'Terce'
        Size = -1
        Value = Null
      end
      item
        Name = 'Terce2'
        Size = -1
        Value = Null
      end
      item
        Name = 'Cta'
        Size = -1
        Value = Null
      end
      item
        Name = 'Cta2'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT contenccomp.empresa as empresa,contenccomp.area as area,c' +
        'ontenccomp.Tipo_Comprobante, contenccomp.Numero_Comprobante, con' +
        'tenccomp.Fecha_Comprobante, contenccomp.Descripcion, contenccomp' +
        '.Periodo_Proceso, contdetcomp.Cuenta AS Cuenta, contdetcomp.Terc' +
        'ero AS Tercero, contdetcomp.Centro_Costo AS Centro_Costo, contde' +
        'tcomp.Valor_Debito AS Valor_Debito, contdetcomp.Valor_Credito AS' +
        ' Valor_Credito, contcuenta.Descripcion AS Descripcion_1, contter' +
        'ce.Primer_Apellido AS Nombre,contcuenta.naturaleza as naturaleza'
      'FROM   contterce,contcuenta,contdetcomp,contenccomp'
      
        'WHERE contdetcomp.Tipo_Comprobante = contenccomp.Tipo_Comprobant' +
        'e AND '
      
        '              contdetcomp.Numero_Comprobante = contenccomp.Numer' +
        'o_Comprobante AND '
      '              contdetcomp.Cuenta = contcuenta.Cuenta  AND'
      
        '              contdetcomp.Tercero = contterce.Numero_Documento+ ' +
        'contterce.sucursal  AND'
      '              contenccomp.Periodo_Proceso >= :Per  AND '
      '              contenccomp.Periodo_Proceso <=  :Per2  AND '
      '              contdetcomp.Tercero >= :Terce AND'
      '              contdetcomp.Tercero <= :Terce2 AND'
      '              contdetcomp.Cuenta >= :Cta AND'
      '              contdetcomp.Cuenta <= :Cta2 AND'
      '              contenccomp.Estado='#39'G'#39
      
        'ORDER BY contdetcomp.cuenta,contdetcomp.Tercero,contenccomp.Peri' +
        'odo_Proceso,contenccomp.Fecha_Comprobante')
    Left = 382
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
        Name = 'Per2'
        Size = -1
        Value = Null
      end
      item
        Name = 'Terce'
        Size = -1
        Value = Null
      end
      item
        Name = 'Terce2'
        Size = -1
        Value = Null
      end
      item
        Name = 'Cta'
        Size = -1
        Value = Null
      end
      item
        Name = 'Cta2'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT Sum(Valor_Debito) AS Vrd, Sum(Valor_Credito) AS Vrc'
      'FROM  contterce,contcuenta,contdetcomp,contenccomp'
      
        'WHERE contdetcomp.Tipo_Comprobante = contenccomp.Tipo_Comprobant' +
        'e AND '
      
        '              contdetcomp.Numero_Comprobante = contenccomp.Numer' +
        'o_Comprobante AND '
      '              contdetcomp.Cuenta = contcuenta.Cuenta  AND'
      
        '              contdetcomp.Tercero = contterce.Numero_Documento +' +
        ' contterce.sucursal AND'
      '              contenccomp.Periodo_Proceso >= :Per  AND '
      '              contenccomp.Periodo_Proceso <=  :Per2  AND '
      '              contdetcomp.Tercero >= :Terce AND'
      '              contdetcomp.Tercero <= :Terce2 AND'
      '              contdetcomp.Cuenta >= :Cta AND'
      '              contdetcomp.Cuenta <= :Cta2 AND'
      '              contenccomp.Estado='#39'G'#39)
    Left = 317
    Top = 9
  end
  object ADOQuery3: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM contcierres')
    Left = 440
    Top = 152
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery3
    Left = 440
    Top = 192
  end
  object ADOQuery4: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT cuenta,cuenta+'#39'-'#39'+descripcion as descr '
      'FROM contcuenta '
      'WHERE estado = '#39'A'#39)
    Left = 336
    Top = 144
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery4
    Left = 336
    Top = 192
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
        Size = -1
        Value = Null
      end
      item
        Name = 'terce'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT sum(Saldo_Debito) as Saldo_Debito,sum(Saldo_Credito) as S' +
        'aldo_Credito'
      'FROM CONTSaldo'
      'WHERE  Periodo_Proceso = :Per  AND '
      '               cuenta =:cta   AND'
      '              tercero =:terce '
      '')
    Left = 446
    Top = 9
  end
  object ADOQuery6: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM CONTTerce'
      '')
    Left = 192
    Top = 144
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery6
    Left = 192
    Top = 176
  end
  object ADOQuery7: TADOQuery
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
      
        'SELECT sum(Saldo_Debito) as Saldo_Debito,sum(Saldo_Credito) as S' +
        'aldo_Credito'
      'FROM CONTSaldo'
      'WHERE  Periodo_Proceso = :Per  AND'
      '               cuenta =:cta'
      ''
      ' ')
    Left = 414
    Top = 9
  end
end
