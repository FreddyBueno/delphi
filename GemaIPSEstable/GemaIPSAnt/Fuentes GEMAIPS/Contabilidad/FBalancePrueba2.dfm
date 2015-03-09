object FrmLibroBalancePrueba2: TFrmLibroBalancePrueba2
  Left = 400
  Top = 196
  Align = alCustom
  BorderStyle = bsSingle
  Caption = 'Libro Mayor y Balances'
  ClientHeight = 354
  ClientWidth = 660
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
    Left = 8
    Top = 0
    Width = 816
    Height = 1056
    BeforePrint = QuickRep1BeforePrint
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
      Top = 292
      Width = 740
      Height = 20
      AlignToBottom = False
      BeforePrint = QRBand3BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.916666666666670000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRShape2: TQRShape
        Left = 0
        Top = 4
        Width = 740
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          10.583333333333330000
          1957.916666666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel48: TQRLabel
        Left = 216
        Top = 6
        Width = 86
        Height = 11
        Size.Values = (
          29.104166666666670000
          571.500000000000000000
          15.875000000000000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel42'
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
      object QRLabel49: TQRLabel
        Left = 304
        Top = 6
        Width = 86
        Height = 11
        Size.Values = (
          29.104166666666670000
          804.333333333333200000
          15.875000000000000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel43'
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
      object QRLabel50: TQRLabel
        Left = 393
        Top = 6
        Width = 85
        Height = 11
        Size.Values = (
          29.104166666666670000
          1039.812500000000000000
          15.875000000000000000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel44'
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
      object QRLabel51: TQRLabel
        Left = 480
        Top = 6
        Width = 86
        Height = 11
        Size.Values = (
          29.104166666666670000
          1270.000000000000000000
          15.875000000000000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel45'
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
      object QRLabel52: TQRLabel
        Left = 569
        Top = 6
        Width = 85
        Height = 11
        Size.Values = (
          29.104166666666670000
          1505.479166666667000000
          15.875000000000000000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel46'
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
      object QRLabel53: TQRLabel
        Left = 655
        Top = 6
        Width = 83
        Height = 11
        Size.Values = (
          29.104166666666670000
          1733.020833333333000000
          15.875000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel47'
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
      object QRLabel54: TQRLabel
        Left = 170
        Top = 6
        Width = 37
        Height = 11
        Size.Values = (
          29.104166666666670000
          449.791666666666700000
          15.875000000000000000
          97.895833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TOTALES'
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
    end
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 740
      Height = 179
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        473.604166666666700000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 520
        Top = 8
        Width = 211
        Height = 25
        Size.Values = (
          66.145833333333330000
          1375.833333333333000000
          21.166666666666670000
          558.270833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'LIBRO MAYOR Y BALANCES'
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
        Left = 0
        Top = 144
        Width = 739
        Height = 33
        Size.Values = (
          87.312500000000000000
          0.000000000000000000
          381.000000000000000000
          1955.270833333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel9: TQRLabel
        Left = 91
        Top = 124
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          240.770833333333300000
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
        Left = 37
        Top = 124
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          97.895833333333330000
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
      object QRLabel3: TQRLabel
        Left = 3
        Top = 147
        Width = 28
        Height = 11
        Size.Values = (
          29.104166666666670000
          7.937500000000000000
          388.937500000000000000
          74.083333333333330000)
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
      object QRLabel2: TQRLabel
        Left = 265
        Top = 147
        Width = 58
        Height = 11
        Size.Values = (
          29.104166666666670000
          701.145833333333300000
          388.937500000000000000
          153.458333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'SALDO INICIAL'
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
      object QRLabel4: TQRLabel
        Left = 218
        Top = 162
        Width = 26
        Height = 11
        Size.Values = (
          29.104166666666670000
          576.791666666666700000
          428.625000000000000000
          68.791666666666670000)
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
      object QRLabel5: TQRLabel
        Left = 310
        Top = 162
        Width = 29
        Height = 11
        Size.Values = (
          29.104166666666670000
          820.208333333333300000
          428.625000000000000000
          76.729166666666670000)
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
      object QRLabel20: TQRLabel
        Left = 425
        Top = 147
        Width = 89
        Height = 11
        Size.Values = (
          29.104166666666670000
          1124.479166666667000000
          388.937500000000000000
          235.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'MOVIMIENTO DEL MES'
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
        Left = 402
        Top = 162
        Width = 26
        Height = 11
        Size.Values = (
          29.104166666666670000
          1063.625000000000000000
          428.625000000000000000
          68.791666666666670000)
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
        Left = 486
        Top = 162
        Width = 29
        Height = 11
        Size.Values = (
          29.104166666666670000
          1285.875000000000000000
          428.625000000000000000
          76.729166666666670000)
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
      object QRLabel6: TQRLabel
        Left = 571
        Top = 162
        Width = 26
        Height = 11
        Size.Values = (
          29.104166666666670000
          1510.770833333333000000
          428.625000000000000000
          68.791666666666670000)
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
      object QRLabel16: TQRLabel
        Left = 609
        Top = 147
        Width = 53
        Height = 11
        Size.Values = (
          29.104166666666670000
          1611.312500000000000000
          388.937500000000000000
          140.229166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'SALDO FINAL'
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
        Left = 657
        Top = 162
        Width = 29
        Height = 11
        Size.Values = (
          29.104166666666670000
          1738.312500000000000000
          428.625000000000000000
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
      object QRLabel14: TQRLabel
        Left = 18
        Top = 162
        Width = 29
        Height = 11
        Size.Values = (
          29.104166666666670000
          47.625000000000000000
          428.625000000000000000
          76.729166666666670000)
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
      object QRDBImage1: TQRDBImage
        Left = 2
        Top = 4
        Width = 213
        Height = 37
        Size.Values = (
          97.895833333333340000
          5.291666666666667000
          10.583333333333330000
          563.562500000000000000)
        XLColumn = 0
        DataField = 'Logo'
        DataSet = DataModule1.ADOQuery1
        Stretch = True
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 312
      Width = 740
      Height = 32
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        84.666666666666670000
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
      Top = 278
      Width = 740
      Height = 14
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
        37.041666666666670000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 12
        Top = 2
        Width = 63
        Height = 11
        Size.Values = (
          29.104166666666670000
          31.750000000000000000
          5.291666666666667000
          166.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Numero_Documento'
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
        Left = 77
        Top = 2
        Width = 138
        Height = 11
        Size.Values = (
          29.104166666666670000
          203.729166666666700000
          5.291666666666667000
          365.125000000000000000)
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
      object QRLabel42: TQRLabel
        Left = 216
        Top = 2
        Width = 86
        Height = 11
        Size.Values = (
          29.104166666666670000
          571.500000000000000000
          5.291666666666667000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel42'
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
      object QRLabel43: TQRLabel
        Left = 304
        Top = 2
        Width = 86
        Height = 11
        Size.Values = (
          29.104166666666670000
          804.333333333333200000
          5.291666666666667000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel43'
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
      object QRLabel44: TQRLabel
        Left = 393
        Top = 2
        Width = 85
        Height = 11
        Size.Values = (
          29.104166666666670000
          1039.812500000000000000
          5.291666666666667000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel44'
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
      object QRLabel45: TQRLabel
        Left = 480
        Top = 2
        Width = 86
        Height = 11
        Size.Values = (
          29.104166666666670000
          1270.000000000000000000
          5.291666666666667000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel45'
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
      object QRLabel46: TQRLabel
        Left = 569
        Top = 2
        Width = 85
        Height = 11
        Size.Values = (
          29.104166666666670000
          1505.479166666667000000
          5.291666666666667000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel46'
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
      object QRLabel47: TQRLabel
        Left = 655
        Top = 2
        Width = 83
        Height = 11
        Size.Values = (
          29.104166666666670000
          1733.020833333333000000
          5.291666666666667000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel47'
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
    object QRGroup4: TQRGroup
      Left = 38
      Top = 217
      Width = 740
      Height = 21
      AlignToBottom = False
      BeforePrint = QRGroup4BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        55.562500000000000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'Copy(ADOQuery1.Cta,1,1)'
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRExpr8: TQRExpr
        Left = 2
        Top = 5
        Width = 31
        Height = 15
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          13.229166666666670000
          82.020833333333320000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'Copy(ADOQuery1.CTA,1,1)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText3: TQRDBText
        Left = 40
        Top = 5
        Width = 174
        Height = 15
        Size.Values = (
          39.687500000000000000
          105.833333333333300000
          13.229166666666670000
          460.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery6
        DataField = 'Descripcion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRLabel15: TQRLabel
        Left = 216
        Top = 7
        Width = 86
        Height = 11
        Size.Values = (
          29.104166666666670000
          571.500000000000000000
          18.520833333333330000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel15'
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
      object QRLabel18: TQRLabel
        Left = 304
        Top = 7
        Width = 86
        Height = 11
        Size.Values = (
          29.104166666666670000
          804.333333333333200000
          18.520833333333330000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel18'
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
      object QRLabel19: TQRLabel
        Left = 393
        Top = 7
        Width = 85
        Height = 11
        Size.Values = (
          29.104166666666670000
          1039.812500000000000000
          18.520833333333330000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel19'
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
      object QRLabel21: TQRLabel
        Left = 480
        Top = 7
        Width = 86
        Height = 11
        Size.Values = (
          29.104166666666670000
          1270.000000000000000000
          18.520833333333330000
          227.541666666666700000)
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
      object QRLabel22: TQRLabel
        Left = 569
        Top = 7
        Width = 85
        Height = 11
        Size.Values = (
          29.104166666666670000
          1505.479166666667000000
          18.520833333333330000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel22'
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
      object QRLabel23: TQRLabel
        Left = 655
        Top = 7
        Width = 83
        Height = 11
        Size.Values = (
          29.104166666666670000
          1733.020833333333000000
          18.520833333333330000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel23'
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
      object QRShape3: TQRShape
        Left = 0
        Top = 19
        Width = 739
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          50.270833333333330000
          1955.270833333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
    object QRGroup5: TQRGroup
      Left = 38
      Top = 238
      Width = 740
      Height = 14
      AlignToBottom = False
      BeforePrint = QRGroup5BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        37.041666666666670000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'Copy(ADOQuery1.Cta,1,2)'
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRExpr9: TQRExpr
        Left = 6
        Top = 2
        Width = 38
        Height = 11
        Size.Values = (
          29.104166666666670000
          15.875000000000000000
          5.291666666666667000
          100.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'Copy(ADOQuery1.CTA,1,2)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRDBText4: TQRDBText
        Left = 48
        Top = 2
        Width = 166
        Height = 11
        Size.Values = (
          29.104166666666670000
          127.000000000000000000
          5.291666666666667000
          439.208333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery6
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
      object QRLabel24: TQRLabel
        Left = 216
        Top = 2
        Width = 86
        Height = 11
        Size.Values = (
          29.104166666666670000
          571.500000000000000000
          5.291666666666667000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel24'
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
      object QRLabel25: TQRLabel
        Left = 304
        Top = 2
        Width = 86
        Height = 11
        Size.Values = (
          29.104166666666670000
          804.333333333333200000
          5.291666666666667000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel25'
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
      object QRLabel26: TQRLabel
        Left = 393
        Top = 2
        Width = 85
        Height = 11
        Size.Values = (
          29.104166666666670000
          1039.812500000000000000
          5.291666666666667000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel26'
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
      object QRLabel27: TQRLabel
        Left = 480
        Top = 2
        Width = 86
        Height = 11
        Size.Values = (
          29.104166666666670000
          1270.000000000000000000
          5.291666666666667000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel27'
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
        Left = 569
        Top = 2
        Width = 85
        Height = 11
        Size.Values = (
          29.104166666666670000
          1505.479166666667000000
          5.291666666666667000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel28'
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
        Left = 655
        Top = 2
        Width = 83
        Height = 11
        Size.Values = (
          29.104166666666670000
          1733.020833333333000000
          5.291666666666667000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel29'
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
    object QRGroup6: TQRGroup
      Left = 38
      Top = 252
      Width = 740
      Height = 13
      AlignToBottom = False
      BeforePrint = QRGroup6BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        34.395833333333330000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'Copy(ADOQuery1.Cta,1,4)'
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRExpr10: TQRExpr
        Left = 7
        Top = 1
        Width = 39
        Height = 11
        Size.Values = (
          29.104166666666670000
          18.520833333333330000
          2.645833333333333000
          103.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'Copy(ADOQuery1.CTA,1,4)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRDBText5: TQRDBText
        Left = 50
        Top = 1
        Width = 164
        Height = 11
        Size.Values = (
          29.104166666666670000
          132.291666666666700000
          2.645833333333333000
          433.916666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery6
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
      object QRLabel30: TQRLabel
        Left = 216
        Top = 2
        Width = 86
        Height = 11
        Size.Values = (
          29.104166666666670000
          571.500000000000000000
          5.291666666666667000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel30'
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
        Left = 304
        Top = 2
        Width = 86
        Height = 11
        Size.Values = (
          29.104166666666670000
          804.333333333333200000
          5.291666666666667000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel31'
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
      object QRLabel32: TQRLabel
        Left = 393
        Top = 2
        Width = 85
        Height = 11
        Size.Values = (
          29.104166666666670000
          1039.812500000000000000
          5.291666666666667000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel32'
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
      object QRLabel33: TQRLabel
        Left = 480
        Top = 2
        Width = 86
        Height = 11
        Size.Values = (
          29.104166666666670000
          1270.000000000000000000
          5.291666666666667000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel33'
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
      object QRLabel34: TQRLabel
        Left = 569
        Top = 2
        Width = 85
        Height = 11
        Size.Values = (
          29.104166666666670000
          1505.479166666667000000
          5.291666666666667000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel34'
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
      object QRLabel35: TQRLabel
        Left = 655
        Top = 2
        Width = 83
        Height = 11
        Size.Values = (
          29.104166666666670000
          1733.020833333333000000
          5.291666666666667000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel35'
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
    object QRGroup1: TQRGroup
      Left = 38
      Top = 265
      Width = 740
      Height = 13
      AlignToBottom = False
      BeforePrint = QRGroup1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        34.395833333333330000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'Copy(ADOQuery1.Cta,1,6)'
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRExpr6: TQRExpr
        Left = 9
        Top = 1
        Width = 39
        Height = 11
        Size.Values = (
          29.104166666666670000
          23.812500000000000000
          2.645833333333333000
          103.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'Copy(ADOQuery1.Cta,1,6)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRDBText6: TQRDBText
        Left = 52
        Top = 1
        Width = 162
        Height = 11
        Size.Values = (
          29.104166666666670000
          137.583333333333300000
          2.645833333333333000
          428.625000000000000000)
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
      object QRLabel36: TQRLabel
        Left = 216
        Top = 2
        Width = 86
        Height = 11
        Size.Values = (
          29.104166666666670000
          571.500000000000000000
          5.291666666666667000
          227.541666666666700000)
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
      object QRLabel37: TQRLabel
        Left = 304
        Top = 2
        Width = 86
        Height = 11
        Size.Values = (
          29.104166666666670000
          804.333333333333200000
          5.291666666666667000
          227.541666666666700000)
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
      object QRLabel38: TQRLabel
        Left = 393
        Top = 2
        Width = 85
        Height = 11
        Size.Values = (
          29.104166666666670000
          1039.812500000000000000
          5.291666666666667000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel38'
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
      object QRLabel39: TQRLabel
        Left = 480
        Top = 2
        Width = 86
        Height = 11
        Size.Values = (
          29.104166666666670000
          1270.000000000000000000
          5.291666666666667000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel39'
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
      object QRLabel40: TQRLabel
        Left = 569
        Top = 2
        Width = 85
        Height = 11
        Size.Values = (
          29.104166666666670000
          1505.479166666667000000
          5.291666666666667000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel40'
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
      object QRLabel41: TQRLabel
        Left = 655
        Top = 2
        Width = 83
        Height = 11
        Size.Values = (
          29.104166666666670000
          1733.020833333333000000
          5.291666666666667000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel41'
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
    Left = -2
    Top = 0
    Width = 466
    Height = 218
    Caption = 'Par'#225'metros del Reporte:'
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 40
      Width = 96
      Height = 13
      Caption = 'Periodo de Proceso:'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 120
      Top = 37
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 72
      Width = 185
      Height = 129
      Caption = 'Niveles del Balance:'
      TabOrder = 2
      object CheckBox1: TCheckBox
        Left = 24
        Top = 24
        Width = 145
        Height = 17
        Caption = 'Grupo'
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 0
      end
      object CheckBox2: TCheckBox
        Left = 24
        Top = 40
        Width = 145
        Height = 17
        Caption = 'Sub Grupo'
        TabOrder = 1
      end
      object CheckBox3: TCheckBox
        Left = 24
        Top = 56
        Width = 145
        Height = 17
        Caption = 'Cuenta'
        TabOrder = 2
      end
      object CheckBox4: TCheckBox
        Left = 24
        Top = 72
        Width = 145
        Height = 17
        Caption = 'SubCuenta'
        TabOrder = 3
      end
      object CheckBox5: TCheckBox
        Left = 24
        Top = 88
        Width = 145
        Height = 17
        Caption = 'Tercero'
        TabOrder = 4
      end
      object CheckBox6: TCheckBox
        Left = 24
        Top = 104
        Width = 145
        Height = 17
        Caption = 'Centro de Costo'
        TabOrder = 5
        Visible = False
      end
    end
  end
  object ADOQuery1: TADOQuery
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
        Name = 'perant'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT CONTCuenta.Cuenta as cta,CONTCuenta.Descripcion,CONTTerce' +
        '.Numero_Documento,CONTTerce.Primer_Apellido as Nombre'
      'FROM  CONTCuenta  '
      ' inner join CONTSaldo on CONTCuenta.Cuenta = CONTSaldo.Cuenta'
      
        ' left outer join CONTTerce on CONTSaldo.Tercero = CONTTerce.Nume' +
        'ro_documento'
      'WHERE CONTCuenta.Estado = '#39'A'#39' AND'
      '      (CONTSaldo.Periodo_Proceso = :per OR'
      '      CONTSaldo.Periodo_Proceso = :perant)  '
      
        'GROUP BY CONTCuenta.Cuenta,CONTCuenta.Descripcion,CONTTerce.Nume' +
        'ro_Documento,CONTTerce.Primer_Apellido'
      
        'ORDER BY CONTCuenta.Cuenta,CONTCuenta.Descripcion,CONTTerce.Nume' +
        'ro_Documento,CONTTerce.Primer_Apellido')
    Left = 454
    Top = 177
  end
  object ADOQuery3: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM contcierres')
    Left = 296
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery3
    Left = 328
    Top = 40
  end
  object ADOQuery5: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 486
    Top = 177
  end
  object ADOQuery6: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 518
    Top = 177
  end
end
