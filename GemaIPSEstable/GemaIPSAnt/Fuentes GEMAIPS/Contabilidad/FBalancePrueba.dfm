object FrmLibroBalancePrueba: TFrmLibroBalancePrueba
  Left = 400
  Top = 196
  Align = alCustom
  BorderStyle = bsSingle
  Caption = 'Balance de Prueba'
  ClientHeight = 254
  ClientWidth = 494
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
    Left = 48
    Top = -46
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
      Top = 354
      Width = 740
      Height = 22
      AlignToBottom = False
      BeforePrint = QRBand3BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        58.208333333333330000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRShape2: TQRShape
        Left = 2
        Top = 3
        Width = 737
        Height = 1
        Size.Values = (
          2.645833333333333000
          5.291666666666667000
          7.937500000000000000
          1949.979166666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel50: TQRLabel
        Left = 457
        Top = 5
        Width = 85
        Height = 15
        Size.Values = (
          39.687500000000000000
          1209.145833333333000000
          13.229166666666670000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel44'
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
      object QRLabel51: TQRLabel
        Left = 544
        Top = 5
        Width = 86
        Height = 15
        Size.Values = (
          39.687500000000000000
          1439.333333333333000000
          13.229166666666670000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel45'
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
      object QRLabel25: TQRLabel
        Left = 256
        Top = 9
        Width = 87
        Height = 11
        Size.Values = (
          29.104166666666670000
          677.333333333333400000
          23.812500000000000000
          230.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TOTALES GENERALES'
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
        Left = 512
        Top = 9
        Width = 209
        Height = 25
        Size.Values = (
          66.145833333333340000
          1354.666666666667000000
          23.812500000000000000
          552.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'BALANCE DE PRUEBA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
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
        Left = 95
        Top = 124
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          251.354166666666700000
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
        Left = 3
        Top = 124
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          7.937500000000000000
          328.083333333333300000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'P'#233'riodo Inicial:'
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
        Left = 361
        Top = 147
        Width = 58
        Height = 11
        Size.Values = (
          29.104166666666670000
          955.145833333333300000
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
      object QRLabel20: TQRLabel
        Left = 490
        Top = 145
        Width = 113
        Height = 11
        Size.Values = (
          29.104166666666670000
          1296.458333333333000000
          383.645833333333400000
          298.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'MOVIMIENTOS DEL PERIODO'
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
        Left = 490
        Top = 162
        Width = 26
        Height = 11
        Size.Values = (
          29.104166666666670000
          1296.458333333333000000
          428.625000000000000000
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
        Left = 574
        Top = 162
        Width = 29
        Height = 11
        Size.Values = (
          29.104166666666670000
          1518.708333333333000000
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
      object QRLabel16: TQRLabel
        Left = 665
        Top = 147
        Width = 53
        Height = 11
        Size.Values = (
          29.104166666666670000
          1759.479166666667000000
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
      object QRLabel43: TQRLabel
        Left = 187
        Top = 124
        Width = 81
        Height = 17
        Size.Values = (
          44.979166666666670000
          494.770833333333300000
          328.083333333333300000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'P'#233'riodo Final:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel47: TQRLabel
        Left = 279
        Top = 124
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          738.187500000000000000
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
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 376
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
      object QRLabel48: TQRLabel
        Left = 562
        Top = 6
        Width = 164
        Height = 17
        Size.Values = (
          44.979166666666670000
          1486.958333333333000000
          15.875000000000000000
          433.916666666666800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'www.gematechnologies.com'
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
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 296
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
        Left = 64
        Top = 2
        Width = 63
        Height = 11
        Size.Values = (
          29.104166666666670000
          169.333333333333300000
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
        Left = 130
        Top = 2
        Width = 213
        Height = 11
        Size.Values = (
          29.104166666666670000
          343.958333333333400000
          5.291666666666667000
          563.562500000000000000)
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
        Left = 349
        Top = 2
        Width = 86
        Height = 11
        Size.Values = (
          29.104166666666670000
          923.395833333333400000
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
      object QRLabel44: TQRLabel
        Left = 457
        Top = 1
        Width = 85
        Height = 11
        Size.Values = (
          29.104166666666670000
          1209.145833333333000000
          2.645833333333333000
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
        Left = 544
        Top = 1
        Width = 86
        Height = 11
        Size.Values = (
          29.104166666666670000
          1439.333333333333000000
          2.645833333333333000
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
        Left = 648
        Top = 2
        Width = 85
        Height = 11
        Size.Values = (
          29.104166666666670000
          1714.500000000000000000
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
        Width = 303
        Height = 15
        Size.Values = (
          39.687500000000000000
          105.833333333333300000
          13.229166666666670000
          801.687500000000100000)
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
        Left = 349
        Top = 6
        Width = 86
        Height = 11
        Size.Values = (
          29.104166666666670000
          923.395833333333400000
          15.875000000000000000
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
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRLabel19: TQRLabel
        Left = 457
        Top = 6
        Width = 85
        Height = 11
        Size.Values = (
          29.104166666666670000
          1209.145833333333000000
          15.875000000000000000
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
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRLabel21: TQRLabel
        Left = 544
        Top = 6
        Width = 86
        Height = 11
        Size.Values = (
          29.104166666666670000
          1439.333333333333000000
          15.875000000000000000
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
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRLabel22: TQRLabel
        Left = 648
        Top = 6
        Width = 85
        Height = 11
        Size.Values = (
          29.104166666666670000
          1714.500000000000000000
          15.875000000000000000
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
      Height = 17
      AlignToBottom = False
      BeforePrint = QRGroup5BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        44.979166666666670000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'Copy(ADOQuery1.Cta,1,2)'
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRShape6: TQRShape
        Left = 3
        Top = 0
        Width = 733
        Height = 15
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          0.000000000000000000
          1939.395833333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRExpr9: TQRExpr
        Left = 6
        Top = 2
        Width = 52
        Height = 11
        Size.Values = (
          29.104166666666670000
          15.875000000000000000
          5.291666666666667000
          137.583333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
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
        Left = 64
        Top = 2
        Width = 295
        Height = 11
        Size.Values = (
          29.104166666666670000
          169.333333333333300000
          5.291666666666667000
          780.520833333333400000)
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
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 6
      end
      object QRLabel24: TQRLabel
        Left = 349
        Top = 2
        Width = 86
        Height = 11
        Size.Values = (
          29.104166666666670000
          923.395833333333400000
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
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRLabel26: TQRLabel
        Left = 457
        Top = 2
        Width = 85
        Height = 11
        Size.Values = (
          29.104166666666670000
          1209.145833333333000000
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
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRLabel27: TQRLabel
        Left = 544
        Top = 2
        Width = 86
        Height = 11
        Size.Values = (
          29.104166666666670000
          1439.333333333333000000
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
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRLabel28: TQRLabel
        Left = 648
        Top = 2
        Width = 85
        Height = 11
        Size.Values = (
          29.104166666666670000
          1714.500000000000000000
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
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
    end
    object QRGroup6: TQRGroup
      Left = 38
      Top = 255
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
      FooterBand = QRBand4
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRExpr10: TQRExpr
        Left = 6
        Top = 1
        Width = 51
        Height = 11
        Size.Values = (
          29.104166666666670000
          15.875000000000000000
          2.645833333333333000
          134.937500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
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
        Left = 64
        Top = 1
        Width = 279
        Height = 11
        Size.Values = (
          29.104166666666670000
          169.333333333333300000
          2.645833333333333000
          738.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery6
        DataField = 'Descripcion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
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
        Left = 349
        Top = 2
        Width = 86
        Height = 11
        Enabled = False
        Size.Values = (
          29.104166666666670000
          923.395833333333400000
          5.291666666666667000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel30'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
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
        Left = 457
        Top = 1
        Width = 85
        Height = 11
        Enabled = False
        Size.Values = (
          29.104166666666670000
          1209.145833333333000000
          2.645833333333333000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel32'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
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
        Left = 544
        Top = 1
        Width = 86
        Height = 11
        Enabled = False
        Size.Values = (
          29.104166666666670000
          1439.333333333333000000
          2.645833333333333000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel33'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
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
        Left = 648
        Top = 2
        Width = 85
        Height = 11
        Enabled = False
        Size.Values = (
          29.104166666666670000
          1714.500000000000000000
          5.291666666666667000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel34'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
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
      Top = 268
      Width = 740
      Height = 14
      AlignToBottom = False
      BeforePrint = QRGroup1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        37.041666666666670000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'Copy(ADOQuery1.Cta,1,6)'
      FooterBand = QRBand1
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRExpr6: TQRExpr
        Left = 6
        Top = 1
        Width = 52
        Height = 11
        Size.Values = (
          29.104166666666670000
          15.875000000000000000
          2.645833333333333000
          137.583333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
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
        Left = 64
        Top = 1
        Width = 279
        Height = 11
        Size.Values = (
          29.104166666666670000
          169.333333333333300000
          2.645833333333333000
          738.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Descripcion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
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
        Left = 349
        Top = 2
        Width = 86
        Height = 11
        Enabled = False
        Size.Values = (
          29.104166666666670000
          923.395833333333400000
          5.291666666666667000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel36'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
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
        Left = 457
        Top = 2
        Width = 85
        Height = 11
        Enabled = False
        Size.Values = (
          29.104166666666670000
          1209.145833333333000000
          5.291666666666667000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel38'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
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
        Left = 544
        Top = 2
        Width = 86
        Height = 11
        Enabled = False
        Size.Values = (
          29.104166666666670000
          1439.333333333333000000
          5.291666666666667000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel39'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
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
        Left = 648
        Top = 2
        Width = 85
        Height = 11
        Enabled = False
        Size.Values = (
          29.104166666666670000
          1714.500000000000000000
          5.291666666666667000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel40'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
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
      Top = 282
      Width = 740
      Height = 14
      AlignToBottom = False
      BeforePrint = QRGroup2BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        37.041666666666670000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'Copy(ADOQuery1.Cta,1,8)'
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRExpr2: TQRExpr
        Left = 6
        Top = 1
        Width = 52
        Height = 11
        Size.Values = (
          29.104166666666670000
          15.875000000000000000
          2.645833333333333000
          137.583333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'Copy(ADOQuery1.Cta,1,8)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRDBText7: TQRDBText
        Left = 64
        Top = 1
        Width = 279
        Height = 11
        Size.Values = (
          29.104166666666670000
          169.333333333333300000
          2.645833333333333000
          738.187500000000000000)
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
      object QRLabel4: TQRLabel
        Left = 349
        Top = 2
        Width = 86
        Height = 11
        Size.Values = (
          29.104166666666670000
          923.395833333333400000
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
      object QRLabel5: TQRLabel
        Left = 457
        Top = 2
        Width = 85
        Height = 11
        Size.Values = (
          29.104166666666670000
          1209.145833333333000000
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
      object QRLabel6: TQRLabel
        Left = 544
        Top = 2
        Width = 86
        Height = 11
        Size.Values = (
          29.104166666666670000
          1439.333333333333000000
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
      object QRLabel11: TQRLabel
        Left = 648
        Top = 2
        Width = 85
        Height = 11
        Size.Values = (
          29.104166666666670000
          1714.500000000000000000
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
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 310
      Width = 740
      Height = 22
      AfterPrint = QRBand1AfterPrint
      AlignToBottom = False
      BeforePrint = QRBand1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        58.208333333333330000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRShape4: TQRShape
        Left = 349
        Top = 3
        Width = 390
        Height = 1
        Frame.Color = clBlue
        Size.Values = (
          2.645833333333333000
          923.395833333333400000
          7.937500000000000000
          1031.875000000000000000)
        XLColumn = 0
        Pen.Color = clBlue
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel13: TQRLabel
        Left = 349
        Top = 9
        Width = 86
        Height = 11
        Size.Values = (
          29.104166666666670000
          923.395833333333400000
          23.812500000000000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel42'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRLabel17: TQRLabel
        Left = 457
        Top = 9
        Width = 85
        Height = 11
        Size.Values = (
          29.104166666666670000
          1209.145833333333000000
          23.812500000000000000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel44'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
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
        Left = 544
        Top = 9
        Width = 86
        Height = 11
        Size.Values = (
          29.104166666666670000
          1439.333333333333000000
          23.812500000000000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel45'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
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
        Left = 648
        Top = 9
        Width = 85
        Height = 11
        Size.Values = (
          29.104166666666670000
          1714.500000000000000000
          23.812500000000000000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel46'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRLabel: TQRLabel
        Left = 245
        Top = 8
        Width = 98
        Height = 11
        Size.Values = (
          29.104166666666670000
          648.229166666666800000
          21.166666666666670000
          259.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TOTAL POR SUBCUENTA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
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
    object QRBand4: TQRBand
      Left = 38
      Top = 332
      Width = 740
      Height = 22
      AfterPrint = QRBand4AfterPrint
      AlignToBottom = False
      BeforePrint = QRBand4BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        58.208333333333330000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRShape5: TQRShape
        Left = 349
        Top = 3
        Width = 390
        Height = 1
        Frame.Color = clBlue
        Size.Values = (
          2.645833333333333000
          923.395833333333400000
          7.937500000000000000
          1031.875000000000000000)
        XLColumn = 0
        Pen.Color = clFuchsia
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel29: TQRLabel
        Left = 349
        Top = 9
        Width = 86
        Height = 11
        Size.Values = (
          29.104166666666670000
          923.395833333333400000
          23.812500000000000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel42'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
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
        Left = 457
        Top = 9
        Width = 85
        Height = 11
        Size.Values = (
          29.104166666666670000
          1209.145833333333000000
          23.812500000000000000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel44'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
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
        Left = 544
        Top = 9
        Width = 86
        Height = 11
        Size.Values = (
          29.104166666666670000
          1439.333333333333000000
          23.812500000000000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel45'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
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
        Left = 648
        Top = 9
        Width = 85
        Height = 11
        Size.Values = (
          29.104166666666670000
          1714.500000000000000000
          23.812500000000000000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel46'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
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
        Left = 262
        Top = 8
        Width = 81
        Height = 11
        Size.Values = (
          29.104166666666670000
          693.208333333333400000
          21.166666666666670000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TOTAL POR CUENTA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
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
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 494
    Height = 254
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
      Top = 67
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
      Left = 344
      Top = 202
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
      Top = 106
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
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 120
      Top = 64
      Width = 169
      Height = 21
      KeyField = 'Periodo_Proceso'
      ListField = 'Periodo_Proceso'
      ListSource = DataSource2
      TabOrder = 3
    end
    object CheckBox7: TCheckBox
      Left = 207
      Top = 159
      Width = 172
      Height = 17
      Caption = 'Imprimir items con saldo final 0'
      Checked = True
      State = cbChecked
      TabOrder = 4
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
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT CONTCuenta.Cuenta as cta,CONTCuenta.Descripcion,CONTTerce' +
        '.Numero_Documento,CONTTerce.Primer_Apellido + '#39' '#39' + CONTTerce.Pr' +
        'imer_Nombre as Nombre'
      'FROM  CONTCuenta  '
      'inner join CONTSaldo on CONTCuenta.Cuenta = CONTSaldo.Cuenta'
      
        'left outer join CONTTerce on CONTSaldo.Tercero = CONTTerce.Numer' +
        'o_documento  + CONTTerce.Sucursal'
      'WHERE CONTCuenta.Estado = '#39'A'#39' AND'
      '      CONTSaldo.Periodo_Proceso <= :per AND'
      '      CONTSaldo.Periodo_Proceso >= :perant '
      
        'GROUP BY CONTCuenta.Cuenta,CONTCuenta.Descripcion,CONTTerce.Nume' +
        'ro_Documento,CONTTerce.Primer_Apellido + '#39' '#39' + CONTTerce.Primer_' +
        'Nombre'
      
        'ORDER BY CONTCuenta.Cuenta,CONTCuenta.Descripcion,CONTTerce.Nume' +
        'ro_Documento,CONTTerce.Primer_Apellido + '#39' '#39' + CONTTerce.Primer_' +
        'Nombre'
      '')
    Left = 422
    Top = 145
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
    Left = 360
    Top = 40
  end
  object ADOQuery5: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 430
    Top = 41
  end
  object ADOQuery6: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 486
    Top = 41
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM contcierres')
    Left = 296
    Top = 96
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 360
    Top = 96
  end
end
