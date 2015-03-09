object ComprobanteEgreso: TComprobanteEgreso
  Left = 408
  Top = 135
  BorderStyle = bsSingle
  Caption = 'Comprobante de Egreso'
  ClientHeight = 412
  ClientWidth = 554
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
    Left = 8
    Top = 8
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
      Top = 473
      Width = 740
      Height = 48
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        127.000000000000000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      DataSet = ADOQuery1
      PrintBefore = False
      PrintIfEmpty = True
      object QRShape21: TQRShape
        Left = 0
        Top = 0
        Width = 737
        Height = 20
        Size.Values = (
          52.916666666666660000
          0.000000000000000000
          0.000000000000000000
          1949.979166666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText3: TQRDBText
        Left = 10
        Top = 2
        Width = 35
        Height = 15
        Size.Values = (
          39.687500000000000000
          26.458333333333330000
          5.291666666666667000
          92.604166666666680000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Cuenta'
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
      object QRDBText4: TQRDBText
        Left = 106
        Top = 2
        Width = 415
        Height = 15
        Size.Values = (
          39.687500000000000000
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
      object QRLabel24: TQRLabel
        Left = 24
        Top = 21
        Width = 35
        Height = 12
        Size.Values = (
          31.750000000000000000
          63.500000000000000000
          55.562500000000000000
          92.604166666666680000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Tercero'
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
        Height = 15
        Size.Values = (
          39.687500000000000000
          1399.645833333333000000
          5.291666666666667000
          269.875000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery1.Valor_Debito)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr2: TQRExpr
        Left = 633
        Top = 2
        Width = 102
        Height = 15
        Size.Values = (
          39.687500000000000000
          1674.812500000000000000
          5.291666666666667000
          269.875000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery1.Valor_Credito)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel26: TQRLabel
        Left = 24
        Top = 34
        Width = 79
        Height = 12
        Size.Values = (
          31.750000000000000000
          63.500000000000000000
          89.958333333333340000
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
        Top = 34
        Width = 95
        Height = 13
        Size.Values = (
          34.395833333333340000
          301.625000000000000000
          89.958333333333340000
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
        Top = 34
        Width = 303
        Height = 13
        Size.Values = (
          34.395833333333340000
          576.791666666666800000
          89.958333333333340000
          801.687500000000100000)
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
      object QRLabel27: TQRLabel
        Left = 528
        Top = 34
        Width = 56
        Height = 12
        Size.Values = (
          31.750000000000000000
          1397.000000000000000000
          89.958333333333340000
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
      object QRDBText18: TQRDBText
        Left = 592
        Top = 34
        Width = 137
        Height = 13
        Size.Values = (
          34.395833333333340000
          1566.333333333333000000
          89.958333333333340000
          362.479166666666700000)
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
      Height = 435
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1150.937500000000000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRShape5: TQRShape
        Left = 528
        Top = 410
        Width = 105
        Height = 23
        Size.Values = (
          60.854166666666680000
          1397.000000000000000000
          1084.791666666667000000
          277.812500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 104
        Top = 410
        Width = 425
        Height = 23
        Size.Values = (
          60.854166666666680000
          275.166666666666700000
          1084.791666666667000000
          1124.479166666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 0
        Top = 410
        Width = 105
        Height = 23
        Size.Values = (
          60.854166666666680000
          0.000000000000000000
          1084.791666666667000000
          277.812500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 368
        Top = 288
        Width = 369
        Height = 121
        Size.Values = (
          320.145833333333400000
          973.666666666666900000
          762.000000000000000000
          976.312500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 0
        Width = 737
        Height = 281
        Size.Values = (
          743.479166666666800000
          0.000000000000000000
          0.000000000000000000
          1949.979166666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel1: TQRLabel
        Left = 384
        Top = 296
        Width = 339
        Height = 30
        Size.Values = (
          79.375000000000000000
          1016.000000000000000000
          783.166666666666700000
          896.937500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'COMPROBANTE DE EGRESO'
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
      object QRLabel2: TQRLabel
        Left = 384
        Top = 328
        Width = 40
        Height = 30
        Size.Values = (
          79.375000000000000000
          1016.000000000000000000
          867.833333333333300000
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
      object QRLabel3: TQRLabel
        Left = 8
        Top = 414
        Width = 76
        Height = 16
        Size.Values = (
          42.333333333333330000
          21.166666666666670000
          1095.375000000000000000
          201.083333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#243'digo P.U.C.'
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
      object QRLabel4: TQRLabel
        Left = 112
        Top = 414
        Width = 55
        Height = 16
        Size.Values = (
          42.333333333333330000
          296.333333333333300000
          1095.375000000000000000
          145.520833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Concepto'
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
      object QRLabel5: TQRLabel
        Left = 536
        Top = 414
        Width = 37
        Height = 16
        Size.Values = (
          42.333333333333330000
          1418.166666666667000000
          1095.375000000000000000
          97.895833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'D'#233'bito'
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
      object QRLabel20: TQRLabel
        Left = 8
        Top = 262
        Width = 239
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          693.208333333333300000
          632.354166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Espacio Reservado para duplicar el cheque.'
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
      object QRDBText1: TQRDBText
        Left = 512
        Top = 328
        Width = 212
        Height = 30
        Size.Values = (
          79.375000000000000000
          1354.666666666667000000
          867.833333333333200000
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
      object QRLabel22: TQRLabel
        Left = 384
        Top = 364
        Width = 54
        Height = 20
        Size.Values = (
          52.916666666666670000
          1016.000000000000000000
          963.083333333333300000
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
      object QRLabel23: TQRLabel
        Left = 560
        Top = 364
        Width = 67
        Height = 20
        Size.Values = (
          52.916666666666670000
          1481.666666666667000000
          963.083333333333300000
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
      object QRDBText12: TQRDBText
        Left = 440
        Top = 364
        Width = 113
        Height = 19
        Size.Values = (
          50.270833333333330000
          1164.166666666667000000
          963.083333333333400000
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
      object QRDBText13: TQRDBText
        Left = 632
        Top = 364
        Width = 97
        Height = 19
        Size.Values = (
          50.270833333333330000
          1672.166666666667000000
          963.083333333333400000
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
      object QRShape27: TQRShape
        Left = 632
        Top = 410
        Width = 105
        Height = 23
        Size.Values = (
          60.854166666666680000
          1672.166666666667000000
          1084.791666666667000000
          277.812500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel25: TQRLabel
        Left = 640
        Top = 414
        Width = 42
        Height = 16
        Size.Values = (
          42.333333333333330000
          1693.333333333333000000
          1095.375000000000000000
          111.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cr'#233'dito'
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
      object QRDBImage1: TQRDBImage
        Left = 8
        Top = 8
        Width = 721
        Height = 241
        Size.Values = (
          637.645833333333400000
          21.166666666666670000
          21.166666666666670000
          1907.645833333333000000)
        XLColumn = 0
        DataField = 'Imagen'
        DataSet = ADOQuery2
        Stretch = True
      end
      object QRLabel28: TQRLabel
        Left = 384
        Top = 386
        Width = 61
        Height = 20
        Size.Values = (
          52.916666666666670000
          1016.000000000000000000
          1021.291666666667000000
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
      object QRDBText19: TQRDBText
        Left = 448
        Top = 386
        Width = 113
        Height = 19
        Size.Values = (
          50.270833333333330000
          1185.333333333333000000
          1021.291666666667000000
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
      object QRDBText20: TQRDBText
        Left = 432
        Top = 328
        Width = 57
        Height = 30
        Size.Values = (
          79.375000000000000000
          1143.000000000000000000
          867.833333333333200000
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
        Left = 492
        Top = 328
        Width = 17
        Height = 30
        Size.Values = (
          79.375000000000000000
          1301.750000000000000000
          867.833333333333200000
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
      object QRDBImage2: TQRDBImage
        Left = 8
        Top = 286
        Width = 357
        Height = 121
        Size.Values = (
          320.145833333333300000
          21.166666666666670000
          756.708333333333200000
          944.562500000000000000)
        XLColumn = 0
        DataField = 'Logo'
        DataSet = DataModule1.ADOQuery1
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 521
      Width = 740
      Height = 221
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = QRSubDetail1
      Size.Values = (
        584.729166666666700000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRShape8: TQRShape
        Left = 0
        Top = 40
        Width = 449
        Height = 161
        Size.Values = (
          425.979166666666700000
          0.000000000000000000
          105.833333333333300000
          1187.979166666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape24: TQRShape
        Left = 0
        Top = 104
        Width = 449
        Height = 33
        Size.Values = (
          87.312500000000000000
          0.000000000000000000
          275.166666666666700000
          1187.979166666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape25: TQRShape
        Left = 0
        Top = 64
        Width = 449
        Height = 41
        Size.Values = (
          108.479166666666700000
          0.000000000000000000
          169.333333333333300000
          1187.979166666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape26: TQRShape
        Left = 0
        Top = 40
        Width = 449
        Height = 25
        Size.Values = (
          66.145833333333340000
          0.000000000000000000
          105.833333333333300000
          1187.979166666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 0
        Top = 0
        Width = 737
        Height = 40
        Size.Values = (
          105.833333333333300000
          0.000000000000000000
          0.000000000000000000
          1949.979166666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 448
        Top = 40
        Width = 289
        Height = 161
        Size.Values = (
          425.979166666666700000
          1185.333333333333000000
          105.833333333333300000
          764.645833333333400000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 0
        Top = 136
        Width = 113
        Size.Values = (
          171.979166666666700000
          0.000000000000000000
          359.833333333333400000
          298.979166666666700000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 112
        Top = 136
        Width = 113
        Size.Values = (
          171.979166666666700000
          296.333333333333400000
          359.833333333333400000
          298.979166666666700000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 224
        Top = 136
        Width = 113
        Size.Values = (
          171.979166666666700000
          592.666666666666800000
          359.833333333333400000
          298.979166666666700000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 336
        Top = 136
        Width = 113
        Size.Values = (
          171.979166666666700000
          889.000000000000000000
          359.833333333333400000
          298.979166666666700000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel6: TQRLabel
        Left = 450
        Top = 41
        Width = 191
        Height = 23
        Size.Values = (
          60.854166666666680000
          1190.625000000000000000
          108.479166666666700000
          505.354166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Firma y Sello del Beneficiario'
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
      object QRShape14: TQRShape
        Left = 448
        Top = 136
        Width = 289
        Size.Values = (
          171.979166666666700000
          1185.333333333333000000
          359.833333333333400000
          764.645833333333400000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 448
        Top = 168
        Width = 289
        Height = 33
        Size.Values = (
          87.312500000000000000
          1185.333333333333000000
          444.500000000000000000
          764.645833333333400000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel7: TQRLabel
        Left = 450
        Top = 175
        Width = 104
        Height = 17
        Size.Values = (
          44.979166666666670000
          1190.625000000000000000
          463.020833333333400000
          275.166666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Fecha Recibido:'
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
      object QRShape16: TQRShape
        Left = 552
        Top = 168
        Width = 57
        Height = 33
        Size.Values = (
          87.312500000000000000
          1460.500000000000000000
          444.500000000000000000
          150.812500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 608
        Top = 168
        Height = 33
        Size.Values = (
          87.312500000000000000
          1608.666666666667000000
          444.500000000000000000
          171.979166666666700000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 672
        Top = 168
        Height = 33
        Size.Values = (
          87.312500000000000000
          1778.000000000000000000
          444.500000000000000000
          171.979166666666700000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel8: TQRLabel
        Left = 554
        Top = 175
        Width = 10
        Height = 17
        Size.Values = (
          44.979166666666670000
          1465.791666666667000000
          463.020833333333400000
          26.458333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'D'
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
      object QRLabel9: TQRLabel
        Left = 610
        Top = 175
        Width = 12
        Height = 17
        Size.Values = (
          44.979166666666670000
          1613.958333333333000000
          463.020833333333400000
          31.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'M'
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
      object QRLabel10: TQRLabel
        Left = 674
        Top = 175
        Width = 10
        Height = 17
        Size.Values = (
          44.979166666666670000
          1783.291666666667000000
          463.020833333333400000
          26.458333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'A'
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
      object QRShape19: TQRShape
        Left = 480
        Top = 143
        Width = 25
        Height = 17
        Size.Values = (
          44.979166666666670000
          1270.000000000000000000
          378.354166666666700000
          66.145833333333340000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel11: TQRLabel
        Left = 456
        Top = 143
        Width = 19
        Height = 17
        Size.Values = (
          44.979166666666670000
          1206.500000000000000000
          378.354166666666700000
          50.270833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CC'
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
      object QRLabel12: TQRLabel
        Left = 512
        Top = 143
        Width = 22
        Height = 17
        Size.Values = (
          44.979166666666670000
          1354.666666666667000000
          378.354166666666700000
          58.208333333333320000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NIT'
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
      object QRShape20: TQRShape
        Left = 536
        Top = 143
        Width = 25
        Height = 17
        Size.Values = (
          44.979166666666670000
          1418.166666666667000000
          378.354166666666700000
          66.145833333333340000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel13: TQRLabel
        Left = 568
        Top = 143
        Width = 22
        Height = 17
        Size.Values = (
          44.979166666666670000
          1502.833333333333000000
          378.354166666666700000
          58.208333333333320000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'No.'
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
      object QRLabel14: TQRLabel
        Left = 3
        Top = 2
        Width = 98
        Height = 17
        Size.Values = (
          44.979166666666670000
          7.937500000000000000
          5.291666666666667000
          259.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Observaciones:'
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
      object QRLabel15: TQRLabel
        Left = 8
        Top = 189
        Width = 39
        Height = 11
        Size.Values = (
          29.104166666666670000
          21.166666666666670000
          500.062500000000100000
          103.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Elaborado'
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
        Left = 120
        Top = 189
        Width = 36
        Height = 11
        Size.Values = (
          29.104166666666670000
          317.500000000000000000
          500.062500000000100000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Revisado'
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
        Left = 232
        Top = 189
        Width = 38
        Height = 11
        Size.Values = (
          29.104166666666670000
          613.833333333333400000
          500.062500000000100000
          100.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Aprobado'
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
        Left = 344
        Top = 189
        Width = 53
        Height = 11
        Size.Values = (
          29.104166666666670000
          910.166666666666600000
          500.062500000000100000
          140.229166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Contabilizado'
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
        Left = 516
        Top = 203
        Width = 220
        Height = 13
        Size.Values = (
          34.395833333333340000
          1365.250000000000000000
          537.104166666666700000
          582.083333333333400000)
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
      object QRDBText2: TQRDBText
        Left = 2
        Top = 43
        Width = 53
        Height = 17
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          113.770833333333300000
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
      object QRDBText6: TQRDBText
        Left = 106
        Top = 43
        Width = 81
        Height = 17
        Size.Values = (
          44.979166666666670000
          280.458333333333400000
          113.770833333333300000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
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
      object QRDBText7: TQRDBText
        Left = 2
        Top = 72
        Width = 53
        Height = 17
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          190.500000000000000000
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
      object QRDBText8: TQRDBText
        Left = 106
        Top = 72
        Width = 81
        Height = 17
        Size.Values = (
          44.979166666666670000
          280.458333333333300000
          190.500000000000000000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
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
      object QRDBText9: TQRDBText
        Left = 2
        Top = 112
        Width = 53
        Height = 17
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          296.333333333333300000
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
      object QRDBText10: TQRDBText
        Left = 106
        Top = 112
        Width = 81
        Height = 17
        Size.Values = (
          44.979166666666670000
          280.458333333333300000
          296.333333333333300000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
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
      object QRLabel21: TQRLabel
        Left = 2
        Top = 202
        Width = 262
        Height = 15
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          534.458333333333400000
          693.208333333333400000)
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
      object QRDBText11: TQRDBText
        Left = 8
        Top = 22
        Width = 721
        Height = 15
        Size.Values = (
          39.687500000000000000
          21.166666666666670000
          58.208333333333340000
          1907.645833333333000000)
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
    end
  end
  object ADOQuery1: TADOQuery
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
        Name = 'Emp'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'Ncomp'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT valor_debito-valor_credito AS totcuenta,  contenccomp.emp' +
        'resa, contenccomp.Numero_Comprobante, '
      
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
        'ce.Primer_Apellido  +'#39' '#39'+ contterce.Primer_Nombre AS Nombre, con' +
        'tenccomp.Descripcion, '
      
        '            contdetcomp.Valor_Debito AS Valor_Debito, contdetcom' +
        'p.Valor_Credito AS Valor_credito, '
      
        '            CONTTipoComp.Descripcion AS Descripcion_2,ContCentro' +
        's.Centro_Costo,ContCentros.Descripcion as DescCentro,DocSoporte,' +
        'ContEncComp.Estado'
      'FROM contdetcomp '
      
        ' inner join contenccomp on (contdetcomp.Numero_Comprobante = con' +
        'tenccomp.Numero_Comprobante AND '
      '       contdetcomp.Empresa = contenccomp.Empresa AND '
      
        '       contdetcomp.Tipo_Comprobante = contenccomp.Tipo_Comproban' +
        'te)'
      
        ' inner join CONTTipoComp on contenccomp.Tipo_Comprobante = CONTT' +
        'ipoComp.Tipo_Comprobante'
      
        ' inner join contcuenta on contdetcomp.Cuenta = contcuenta.Cuenta' +
        ' '
      
        ' left outer join contterce on contdetcomp.Tercero = contterce.Nu' +
        'mero_Documento+contterce.sucursal'
      
        ' left outer  join contcentros on contdetcomp.Centro_Costo = cont' +
        'centros.Centro_Costo'
      ''
      'WHERE (contenccomp.Tipo_Comprobante =  :TipComp)  AND '
      '      (contenccomp.Empresa  = :Emp) AND'
      '      (contenccomp.Numero_Comprobante  = :NComp)'
      'ORDER BY Valor_Debito  DESC,Valor_Credito')
    Left = 782
    Top = 8
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
