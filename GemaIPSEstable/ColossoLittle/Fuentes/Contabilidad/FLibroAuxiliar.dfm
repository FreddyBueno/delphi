object FrmLibroAuxiliar: TFrmLibroAuxiliar
  Left = 305
  Top = 172
  BorderStyle = bsDialog
  Caption = 'FrmLibroAuxiliar'
  ClientHeight = 235
  ClientWidth = 465
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
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = -2
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
      Top = 320
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
      BandType = rbGroupFooter
      object QRShape2: TQRShape
        Left = 0
        Top = 4
        Width = 740
        Height = 2
        Size.Values = (
          5.291666666666667000
          0.000000000000000000
          10.583333333333330000
          1957.916666666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel2: TQRLabel
        Left = 0
        Top = 8
        Width = 92
        Height = 17
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
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
        Left = 568
        Top = 8
        Width = 79
        Height = 11
        Size.Values = (
          29.104166666666670000
          1502.833333333333000000
          21.166666666666670000
          209.020833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
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
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery2.Vrd)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRExpr7: TQRExpr
        Left = 656
        Top = 8
        Width = 87
        Height = 11
        Size.Values = (
          29.104166666666670000
          1735.666666666667000000
          21.166666666666670000
          230.187500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
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
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery2.VrC)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 740
      Height = 195
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        515.937500000000000000
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
        Left = 0
        Top = 176
        Width = 739
        Height = 17
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          465.666666666666800000
          1955.270833333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel5: TQRLabel
        Left = 16
        Top = 179
        Width = 77
        Height = 13
        Size.Values = (
          34.395833333333330000
          42.333333333333330000
          473.604166666666700000
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
        Left = 488
        Top = 179
        Width = 26
        Height = 13
        Size.Values = (
          34.395833333333330000
          1291.166666666667000000
          473.604166666666700000
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
        Left = 568
        Top = 179
        Width = 29
        Height = 13
        Size.Values = (
          34.395833333333330000
          1502.833333333333000000
          473.604166666666700000
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
        Left = 104
        Top = 179
        Width = 53
        Height = 13
        Size.Values = (
          34.395833333333330000
          275.166666666666700000
          473.604166666666700000
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
      object QRLabel14: TQRLabel
        Left = 208
        Top = 144
        Width = 46
        Height = 17
        Size.Values = (
          44.979166666666670000
          550.333333333333300000
          381.000000000000000000
          121.708333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cuenta:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 256
        Top = 144
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          677.333333333333200000
          381.000000000000000000
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
        Left = 424
        Top = 179
        Width = 33
        Height = 13
        Size.Values = (
          34.395833333333330000
          1121.833333333333000000
          473.604166666666700000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Empresa'
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
        Left = 458
        Top = 179
        Width = 17
        Height = 13
        Size.Values = (
          34.395833333333330000
          1211.791666666667000000
          473.604166666666700000
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
      object QRLabel19: TQRLabel
        Left = 176
        Top = 179
        Width = 33
        Height = 13
        Size.Values = (
          34.395833333333330000
          465.666666666666700000
          473.604166666666700000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Descripci'#243'n'
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
        Top = 178
        Width = 22
        Height = 11
        Size.Values = (
          29.104166666666670000
          1867.958333333333000000
          470.958333333333300000
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
        Left = 8
        Top = 3
        Width = 721
        Height = 65
        Size.Values = (
          171.979166666666700000
          21.166666666666670000
          7.937500000000000000
          1907.645833333333000000)
        XLColumn = 0
        DataField = 'Logo'
        DataSet = DataModule1.ADOQuery1
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 288
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
      Top = 261
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
      object QRDBText1: TQRDBText
        Left = 16
        Top = 0
        Width = 65
        Height = 11
        Size.Values = (
          29.104166666666670000
          42.333333333333330000
          0.000000000000000000
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
        Left = 88
        Top = 0
        Width = 25
        Height = 11
        Size.Values = (
          29.104166666666670000
          232.833333333333300000
          0.000000000000000000
          66.145833333333320000)
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
        Left = 112
        Top = 0
        Width = 57
        Height = 11
        Size.Values = (
          29.104166666666670000
          296.333333333333300000
          0.000000000000000000
          150.812500000000000000)
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
        Left = 120
        Top = 0
        Width = 4
        Height = 13
        Size.Values = (
          34.395833333333340000
          317.500000000000000000
          0.000000000000000000
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
        Left = 480
        Top = 0
        Width = 81
        Height = 11
        Size.Values = (
          29.104166666666670000
          1270.000000000000000000
          0.000000000000000000
          214.312500000000000000)
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
        Left = 568
        Top = 0
        Width = 82
        Height = 11
        Size.Values = (
          29.104166666666670000
          1502.833333333333000000
          0.000000000000000000
          216.958333333333300000)
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
      object QRDBText14: TQRDBText
        Left = 424
        Top = 0
        Width = 31
        Height = 11
        Size.Values = (
          29.104166666666670000
          1121.833333333333000000
          0.000000000000000000
          82.020833333333340000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
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
      object QRDBText15: TQRDBText
        Left = 456
        Top = 0
        Width = 17
        Height = 11
        Size.Values = (
          29.104166666666670000
          1206.500000000000000000
          0.000000000000000000
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
      object QRDBText16: TQRDBText
        Left = 176
        Top = 0
        Width = 241
        Height = 11
        Size.Values = (
          29.104166666666670000
          465.666666666666700000
          0.000000000000000000
          637.645833333333200000)
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
        Left = 644
        Top = 0
        Width = 93
        Height = 11
        Size.Values = (
          29.104166666666670000
          1703.916666666667000000
          0.000000000000000000
          246.062500000000000000)
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
    end
    object QRGroup1: TQRGroup
      Left = 38
      Top = 233
      Width = 740
      Height = 14
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
      Expression = 'ADOQuery1.Tercero'
      FooterBand = QRBand1
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRDBText7: TQRDBText
        Left = 35
        Top = 1
        Width = 70
        Height = 11
        Size.Values = (
          29.104166666666670000
          92.604166666666680000
          2.645833333333333000
          185.208333333333300000)
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
      object QRDBText8: TQRDBText
        Left = 109
        Top = 1
        Width = 396
        Height = 11
        Size.Values = (
          29.104166666666670000
          288.395833333333300000
          2.645833333333333000
          1047.750000000000000000)
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
      object QRLabel6: TQRLabel
        Left = 0
        Top = 1
        Width = 32
        Height = 11
        Size.Values = (
          29.104166666666670000
          0.000000000000000000
          2.645833333333333000
          84.666666666666680000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Tercero:'
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
        Left = 32
        Top = 1
        Width = 65
        Height = 11
        Size.Values = (
          29.104166666666670000
          84.666666666666680000
          2.645833333333333000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Tipo_Tercero'
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
      Top = 273
      Width = 740
      Height = 15
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        39.687500000000000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
    end
    object QRGroup2: TQRGroup
      Left = 38
      Top = 247
      Width = 740
      Height = 14
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
      Expression = 'ADOQuery1.Cuenta'
      FooterBand = QRBand1
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRDBText4: TQRDBText
        Left = 37
        Top = 1
        Width = 36
        Height = 11
        Size.Values = (
          29.104166666666670000
          97.895833333333320000
          2.645833333333333000
          95.250000000000000000)
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
      object QRDBText5: TQRDBText
        Left = 77
        Top = 1
        Width = 388
        Height = 11
        Size.Values = (
          29.104166666666670000
          203.729166666666700000
          2.645833333333333000
          1026.583333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
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
      object QRLabel17: TQRLabel
        Left = 5
        Top = 1
        Width = 31
        Height = 11
        Size.Values = (
          29.104166666666670000
          13.229166666666670000
          2.645833333333333000
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
    end
    object QRBand4: TQRBand
      Left = 38
      Top = 352
      Width = 740
      Height = 15
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        39.687500000000000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 465
    Height = 235
    Align = alClient
    Caption = 'Par'#225'metros del Reporte:'
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 40
      Width = 96
      Height = 13
      Caption = 'Periodo de Proceso:'
    end
    object Label2: TLabel
      Left = 16
      Top = 88
      Width = 37
      Height = 13
      Caption = 'Cuenta:'
    end
    object Label3: TLabel
      Left = 16
      Top = 64
      Width = 40
      Height = 13
      Caption = 'Tercero:'
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
      Top = 192
      Width = 129
      Height = 33
      Caption = 'Generar Informe'
      TabOrder = 1
      OnClick = Button1Click
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 120
      Top = 85
      Width = 337
      Height = 21
      KeyField = 'Cuenta'
      ListField = 'descr'
      ListSource = DataSource2
      TabOrder = 2
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 120
      Top = 61
      Width = 337
      Height = 21
      KeyField = 'Numero_Documento'
      ListField = 'Nombre'
      ListSource = DataSource3
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
        Name = 'cta'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = ''
      end>
    SQL.Strings = (
      
        'SELECT contenccomp.empresa as empresa,contenccomp.area as area,c' +
        'ontenccomp.Tipo_Comprobante, contenccomp.Numero_Comprobante, con' +
        'tenccomp.Fecha_Comprobante, contenccomp.Descripcion, contenccomp' +
        '.Periodo_Proceso, contdetcomp.Cuenta AS Cuenta, contdetcomp.Terc' +
        'ero AS Tercero, contdetcomp.Centro_Costo AS Centro_Costo, contde' +
        'tcomp.Valor_Debito AS Valor_Debito, contdetcomp.Valor_Credito AS' +
        ' Valor_credito, contcuenta.Descripcion AS Descripcion_1, contter' +
        'ce.Nombre AS Nombre, *'
      
        'FROM contterce RIGHT JOIN (contcuenta INNER JOIN (contdetcomp IN' +
        'NER JOIN contenccomp ON (contdetcomp.Numero_Comprobante = conten' +
        'ccomp.Numero_Comprobante) AND (contdetcomp.Tipo_Comprobante = co' +
        'ntenccomp.Tipo_Comprobante)) ON contcuenta.Cuenta = contdetcomp.' +
        'Cuenta) ON contterce.Numero_Documento = contdetcomp.Tercero'
      
        'WHERE (((contenccomp.Periodo_Proceso)=:per) AND ((contcuenta.Cue' +
        'nta)=:cta) AND ((contenccomp.Estado)='#39'G'#39'))'
      'ORDER BY contdetcomp.Tercero, contdetcomp.Centro_Costo;')
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
        Name = 'cta'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = ''
      end>
    SQL.Strings = (
      'SELECT Sum(Valor_Debito) AS Vrd, Sum(Valor_Credito) AS Vrc'
      
        'FROM contterce RIGHT JOIN (contcuenta INNER JOIN (contdetcomp IN' +
        'NER JOIN contenccomp ON (contdetcomp.Numero_Comprobante = conten' +
        'ccomp.Numero_Comprobante) AND (contdetcomp.Tipo_Comprobante = co' +
        'ntenccomp.Tipo_Comprobante)) ON contcuenta.Cuenta = contdetcomp.' +
        'Cuenta) ON contterce.Numero_Documento = contdetcomp.Tercero'
      
        'WHERE (((contenccomp.Estado)='#39'G'#39') AND ((contenccomp.Periodo_Proc' +
        'eso)=:per) AND ((contcuenta.Cuenta)=:cta)) '
      '')
    Left = 400
    Top = 8
  end
  object ADOQuery3: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM contcierres')
    Left = 424
    Top = 160
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery3
    Left = 392
    Top = 136
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
  object ADOQuery5: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM Contterce')
    Left = 248
    Top = 112
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery5
    Left = 248
    Top = 144
  end
end
