object ComprobantesVarios: TComprobantesVarios
  Left = 311
  Top = 171
  BorderStyle = bsSingle
  Caption = 'Comprobantes Varios'
  ClientHeight = 417
  ClientWidth = 849
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 0
    Top = 19
    Width = 816
    Height = 1056
    DataSet = ADOQuery1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
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
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object QRSubDetail1: TQRSubDetail
      Left = 38
      Top = 217
      Width = 740
      Height = 49
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        129.645833333333300000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      DataSet = ADOQuery1
      PrintBefore = False
      PrintIfEmpty = True
      object QRShape23: TQRShape
        Left = 632
        Top = 0
        Width = 105
        Height = 20
        Size.Values = (
          52.916666666666660000
          1672.166666666667000000
          0.000000000000000000
          277.812500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape28: TQRShape
        Left = 528
        Top = 0
        Width = 105
        Height = 20
        Size.Values = (
          52.916666666666660000
          1397.000000000000000000
          0.000000000000000000
          277.812500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 104
        Top = 0
        Width = 425
        Height = 20
        Size.Values = (
          52.916666666666660000
          275.166666666666700000
          0.000000000000000000
          1124.479166666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape21: TQRShape
        Left = 0
        Top = 0
        Width = 105
        Height = 20
        Size.Values = (
          52.916666666666660000
          0.000000000000000000
          0.000000000000000000
          277.812500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText3: TQRDBText
        Left = 10
        Top = 3
        Width = 41
        Height = 16
        Size.Values = (
          42.333333333333330000
          26.458333333333330000
          7.937500000000000000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Cuenta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText4: TQRDBText
        Left = 106
        Top = 2
        Width = 415
        Height = 16
        Size.Values = (
          42.333333333333340000
          280.458333333333400000
          5.291666666666667000
          1098.020833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Descripcion_1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel24: TQRLabel
        Left = 24
        Top = 21
        Width = 38
        Height = 12
        Size.Values = (
          31.750000000000000000
          63.500000000000000000
          55.562500000000000000
          100.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Tercero:'
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
      object QRDBText14: TQRDBText
        Left = 74
        Top = 21
        Width = 35
        Height = 13
        Size.Values = (
          34.395833333333340000
          195.791666666666700000
          55.562500000000000000
          92.604166666666680000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Tipo_Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText15: TQRDBText
        Left = 114
        Top = 21
        Width = 95
        Height = 13
        Size.Values = (
          34.395833333333340000
          301.625000000000000000
          55.562500000000000000
          251.354166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Numero_Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText16: TQRDBText
        Left = 218
        Top = 21
        Width = 511
        Height = 13
        Size.Values = (
          34.395833333333340000
          576.791666666666800000
          55.562500000000000000
          1352.020833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Nombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRExpr1: TQRExpr
        Left = 529
        Top = 2
        Width = 102
        Height = 16
        Size.Values = (
          42.333333333333340000
          1399.645833333333000000
          5.291666666666667000
          269.875000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery1.Valor_Debito)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRExpr2: TQRExpr
        Left = 633
        Top = 2
        Width = 102
        Height = 16
        Size.Values = (
          42.333333333333340000
          1674.812500000000000000
          5.291666666666667000
          269.875000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery1.Valor_Credito)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel6: TQRLabel
        Left = 24
        Top = 35
        Width = 79
        Height = 12
        Size.Values = (
          31.750000000000000000
          63.500000000000000000
          92.604166666666670000
          209.020833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Centro de Costo:'
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
      object QRDBText5: TQRDBText
        Left = 114
        Top = 35
        Width = 95
        Height = 13
        Size.Values = (
          34.395833333333340000
          301.625000000000000000
          92.604166666666680000
          251.354166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Centro_Costo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText17: TQRDBText
        Left = 218
        Top = 35
        Width = 311
        Height = 13
        Size.Values = (
          34.395833333333340000
          576.791666666666800000
          92.604166666666680000
          822.854166666666600000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'DescCentro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRLabel7: TQRLabel
        Left = 544
        Top = 35
        Width = 56
        Height = 12
        Size.Values = (
          31.750000000000000000
          1439.333333333333000000
          92.604166666666670000
          148.166666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Documento:'
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
      object QRDBText19: TQRDBText
        Left = 608
        Top = 35
        Width = 121
        Height = 13
        Size.Values = (
          34.395833333333340000
          1608.666666666667000000
          92.604166666666680000
          320.145833333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'DocSoporte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
    end
    object QRBand1: TQRBand
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
      BandType = rbTitle
      object QRShape27: TQRShape
        Left = 632
        Top = 144
        Width = 105
        Height = 33
        Size.Values = (
          87.312500000000000000
          1672.166666666667000000
          381.000000000000000000
          277.812500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 528
        Top = 144
        Width = 105
        Height = 33
        Size.Values = (
          87.312500000000000000
          1397.000000000000000000
          381.000000000000000000
          277.812500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 104
        Top = 144
        Width = 425
        Height = 33
        Size.Values = (
          87.312500000000000000
          275.166666666666700000
          381.000000000000000000
          1124.479166666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 0
        Top = 144
        Width = 105
        Height = 33
        Size.Values = (
          87.312500000000000000
          0.000000000000000000
          381.000000000000000000
          277.812500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 368
        Top = 0
        Width = 369
        Height = 137
        Size.Values = (
          362.479166666666700000
          973.666666666666900000
          0.000000000000000000
          976.312500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel2: TQRLabel
        Left = 376
        Top = 48
        Width = 40
        Height = 30
        Size.Values = (
          79.375000000000000000
          994.833333333333300000
          127.000000000000000000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'No.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 18
      end
      object QRLabel22: TQRLabel
        Left = 376
        Top = 88
        Width = 54
        Height = 20
        Size.Values = (
          52.916666666666670000
          994.833333333333300000
          232.833333333333300000
          142.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Fecha:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
      object QRDBText12: TQRDBText
        Left = 432
        Top = 88
        Width = 113
        Height = 19
        Size.Values = (
          50.270833333333330000
          1143.000000000000000000
          232.833333333333400000
          298.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Fecha_Comprobante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRLabel23: TQRLabel
        Left = 560
        Top = 88
        Width = 67
        Height = 20
        Size.Values = (
          52.916666666666670000
          1481.666666666667000000
          232.833333333333300000
          177.270833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Periodo:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
      object QRDBText13: TQRDBText
        Left = 632
        Top = 88
        Width = 97
        Height = 19
        Size.Values = (
          50.270833333333330000
          1672.166666666667000000
          232.833333333333400000
          256.645833333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Periodo_Proceso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRLabel3: TQRLabel
        Left = 8
        Top = 152
        Width = 89
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          402.166666666666700000
          235.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#243'digo P.U.C.'
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
      object QRLabel4: TQRLabel
        Left = 112
        Top = 152
        Width = 61
        Height = 17
        Size.Values = (
          44.979166666666670000
          296.333333333333300000
          402.166666666666700000
          161.395833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Concepto'
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
      object QRLabel5: TQRLabel
        Left = 536
        Top = 152
        Width = 41
        Height = 17
        Size.Values = (
          44.979166666666670000
          1418.166666666667000000
          402.166666666666700000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'D'#233'bito'
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
      object QRLabel25: TQRLabel
        Left = 640
        Top = 152
        Width = 46
        Height = 17
        Size.Values = (
          44.979166666666670000
          1693.333333333333000000
          402.166666666666700000
          121.708333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cr'#233'dito'
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
      object QRDBText18: TQRDBText
        Left = 376
        Top = 8
        Width = 353
        Height = 30
        Size.Values = (
          79.375000000000000000
          994.833333333333400000
          21.166666666666670000
          933.979166666666600000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Descripcion_2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRLabel8: TQRLabel
        Left = 376
        Top = 112
        Width = 61
        Height = 20
        Size.Values = (
          52.916666666666670000
          994.833333333333300000
          296.333333333333300000
          161.395833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Estado:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
      object QRDBText20: TQRDBText
        Left = 440
        Top = 112
        Width = 113
        Height = 19
        Size.Values = (
          50.270833333333330000
          1164.166666666667000000
          296.333333333333400000
          298.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Estado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText1: TQRDBText
        Left = 424
        Top = 48
        Width = 57
        Height = 30
        Size.Values = (
          79.375000000000000000
          1121.833333333333000000
          127.000000000000000000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 18
      end
      object QRLabel29: TQRLabel
        Left = 484
        Top = 48
        Width = 17
        Height = 30
        Size.Values = (
          79.375000000000000000
          1280.583333333333000000
          127.000000000000000000
          44.979166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '-'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 18
      end
      object QRDBText21: TQRDBText
        Left = 504
        Top = 48
        Width = 212
        Height = 30
        Size.Values = (
          79.375000000000000000
          1333.500000000000000000
          127.000000000000000000
          560.916666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Numero_Comprobante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 18
      end
      object QRDBImage2: TQRDBImage
        Left = 4
        Top = 2
        Width = 362
        Height = 134
        Size.Values = (
          354.541666666666700000
          10.583333333333330000
          5.291666666666667000
          957.791666666666800000)
        XLColumn = 0
        DataField = 'Logo'
        DataSet = DataModule1.ADOQuery1
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 266
      Width = 740
      Height = 261
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = QRSubDetail1
      Size.Values = (
        690.562500000000000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRShape26: TQRShape
        Left = 0
        Top = 46
        Width = 449
        Height = 59
        Size.Values = (
          156.104166666666700000
          0.000000000000000000
          121.708333333333300000
          1187.979166666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 448
        Top = 46
        Width = 289
        Height = 195
        Size.Values = (
          515.937500000000000000
          1185.333333333333000000
          121.708333333333300000
          764.645833333333400000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel19: TQRLabel
        Left = 512
        Top = 244
        Width = 220
        Height = 13
        Size.Values = (
          34.395833333333330000
          1354.666666666667000000
          645.583333333333200000
          582.083333333333200000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NORMAS: 0284 y 0289 Nuevo C'#243'digo del Comercio'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel21: TQRLabel
        Left = 2
        Top = 242
        Width = 262
        Height = 15
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          640.291666666666800000
          693.208333333333200000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Impreso por Prateinco Software. www.prateinco.com'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRShape13: TQRShape
        Left = 336
        Top = 192
        Width = 113
        Height = 49
        Size.Values = (
          129.645833333333300000
          889.000000000000000000
          508.000000000000000000
          298.979166666666700000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel18: TQRLabel
        Left = 344
        Top = 194
        Width = 89
        Height = 17
        Size.Values = (
          44.979166666666670000
          910.166666666666800000
          513.291666666666700000
          235.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Contabilizado'
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
      object QRShape12: TQRShape
        Left = 224
        Top = 192
        Width = 113
        Height = 49
        Size.Values = (
          129.645833333333300000
          592.666666666666800000
          508.000000000000000000
          298.979166666666700000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel17: TQRLabel
        Left = 232
        Top = 194
        Width = 63
        Height = 17
        Size.Values = (
          44.979166666666670000
          613.833333333333200000
          513.291666666666700000
          166.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Aprobado'
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
      object QRShape11: TQRShape
        Left = 112
        Top = 192
        Width = 113
        Height = 49
        Size.Values = (
          129.645833333333300000
          296.333333333333400000
          508.000000000000000000
          298.979166666666700000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel16: TQRLabel
        Left = 120
        Top = 194
        Width = 59
        Height = 17
        Size.Values = (
          44.979166666666670000
          317.500000000000000000
          513.291666666666700000
          156.104166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Revisado'
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
      object QRShape10: TQRShape
        Left = 0
        Top = 192
        Width = 113
        Height = 49
        Size.Values = (
          129.645833333333300000
          0.000000000000000000
          508.000000000000000000
          298.979166666666700000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel15: TQRLabel
        Left = 8
        Top = 194
        Width = 66
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          513.291666666666700000
          174.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Elaborado'
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
      object QRShape24: TQRShape
        Left = 0
        Top = 104
        Width = 449
        Height = 89
        Size.Values = (
          235.479166666666700000
          0.000000000000000000
          275.166666666666700000
          1187.979166666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText10: TQRDBText
        Left = 111
        Top = 86
        Width = 330
        Height = 17
        Size.Values = (
          44.979166666666670000
          293.687500000000000000
          227.541666666666700000
          873.124999999999900000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Informacion_3'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 7
        Top = 86
        Width = 53
        Height = 17
        Size.Values = (
          44.979166666666670000
          18.520833333333330000
          227.541666666666700000
          140.229166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Campo3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 111
        Top = 66
        Width = 330
        Height = 17
        Size.Values = (
          44.979166666666670000
          293.687500000000000000
          174.625000000000000000
          873.124999999999900000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Informacion_2'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 7
        Top = 66
        Width = 53
        Height = 17
        Size.Values = (
          44.979166666666670000
          18.520833333333330000
          174.625000000000000000
          140.229166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Campo2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 111
        Top = 47
        Width = 330
        Height = 17
        Size.Values = (
          44.979166666666670000
          293.687500000000000000
          124.354166666666700000
          873.124999999999900000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Informacion_1'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 7
        Top = 47
        Width = 53
        Height = 17
        Size.Values = (
          44.979166666666670000
          18.520833333333330000
          124.354166666666700000
          140.229166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Campo1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRShape6: TQRShape
        Left = 0
        Top = 0
        Width = 737
        Height = 47
        Size.Values = (
          124.354166666666700000
          0.000000000000000000
          0.000000000000000000
          1949.979166666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText11: TQRDBText
        Left = 6
        Top = 19
        Width = 726
        Height = 25
        Size.Values = (
          66.145833333333340000
          15.875000000000000000
          50.270833333333330000
          1920.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Descripcion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRLabel14: TQRLabel
        Left = 6
        Top = 2
        Width = 90
        Height = 16
        Size.Values = (
          42.333333333333330000
          15.875000000000000000
          5.291666666666667000
          238.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Observaciones:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel1: TQRLabel
        Left = 2
        Top = 106
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          280.458333333333300000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Firma y Sello'
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
      object QRDBImage1: TQRDBImage
        Left = 456
        Top = 48
        Width = 273
        Height = 185
        Size.Values = (
          489.479166666666600000
          1206.500000000000000000
          127.000000000000000000
          722.312500000000000000)
        XLColumn = 0
        DataField = 'Imagen'
        DataSet = ADOQuery2
        Stretch = True
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'tipcomp'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = '02'
      end
      item
        Name = 'emp'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'ncomp'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Size = 19
        Value = 20000c
      end>
    SQL.Strings = (
      
        'SELECT valor_debito-valor_credito AS totcuenta, contenccomp.empr' +
        'esa ,contenccomp.Numero_Comprobante, '
      
        '              contenccomp.Tipo_Comprobante AS Tipo_Comprobante, ' +
        'contcuenta.Cuenta AS Cuenta, '
      
        '              contcuenta.Descripcion AS Descripcion_1, contencco' +
        'mp.Fecha_Comprobante, '
      
        '              contenccomp.Periodo_Proceso, contenccomp.Campo1, c' +
        'ontenccomp.Informacion_1, '
      
        '              contenccomp.Campo2, contenccomp.Informacion_2, con' +
        'tenccomp.Campo3, '
      
        '             contenccomp.Informacion_3, contterce.Numero_Documen' +
        'to AS Numero_Documento, '
      
        '             contterce.Tipo_Documento AS Tipo_Documento, contter' +
        'ce.Primer_Apellido +'#39' '#39'+ contterce.Primer_Nombre AS Nombre, cont' +
        'enccomp.Descripcion, '
      
        '            contdetcomp.Valor_Debito AS Valor_Debito, contdetcom' +
        'p.Valor_Credito AS Valor_credito, '
      
        '            CONTTipoComp.Descripcion AS Descripcion_2,ContCentro' +
        's.Centro_Costo,ContCentros.Descripcion as DescCentro,DocSoporte,' +
        'ContEncComp.Estado'
      'FROM contdetcomp '
      
        'inner join contenccomp on (contdetcomp.Numero_Comprobante = cont' +
        'enccomp.Numero_Comprobante AND '
      '      contdetcomp.Empresa = contenccomp.Empresa AND '
      
        '       contdetcomp.Tipo_Comprobante = contenccomp.Tipo_Comproban' +
        'te )'
      
        'inner join CONTTipoComp on contenccomp.Tipo_Comprobante = CONTTi' +
        'poComp.Tipo_Comprobante'
      'inner join contcuenta on contdetcomp.Cuenta = contcuenta.Cuenta'
      
        'left outer join contterce on contdetcomp.Tercero = contterce.Num' +
        'ero_Documento+contterce.sucursal'
      
        'left outer join contcentros on contdetcomp.Centro_Costo = contce' +
        'ntros.Centro_Costo'
      'WHERE (contenccomp.Tipo_Comprobante =  :TipComp)  AND '
      '           (contenccomp.Empresa =  :emp)  AND '
      '      (contenccomp.Numero_Comprobante  = :NComp)'
      'ORDER BY Valor_Debito  DESC,Valor_Credito'
      '')
    Left = 614
    Top = 6
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TipComp'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'Ncomp'
        Attributes = [paSigned]
        DataType = ftBCD
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM CONTDigitaliza'
      'WHERE Tipo_Comprobante=:TipComp AND '
      '               Numero_Comprobante=:Ncomp'
      '')
    Left = 750
    Top = 8
  end
end
