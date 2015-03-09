object BoletaCompra: TBoletaCompra
  Left = 336
  Top = 150
  BorderStyle = bsSingle
  Caption = 'Orden de Compra'
  ClientHeight = 5
  ClientWidth = 278
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
    Top = -1
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
    object QRBand1: TQRBand
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
        431.270833333333400000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRShape5: TQRShape
        Left = 448
        Top = 139
        Width = 73
        Height = 22
        Size.Values = (
          58.208333333333340000
          1185.333333333333000000
          367.770833333333400000
          193.145833333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 88
        Top = 139
        Width = 361
        Height = 22
        Size.Values = (
          58.208333333333340000
          232.833333333333400000
          367.770833333333400000
          955.145833333333500000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 0
        Top = 139
        Width = 89
        Height = 22
        Size.Values = (
          58.208333333333340000
          0.000000000000000000
          367.770833333333400000
          235.479166666666700000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 368
        Top = 0
        Width = 369
        Height = 105
        Size.Values = (
          277.812500000000000000
          973.666666666666900000
          0.000000000000000000
          976.312500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel2: TQRLabel
        Left = 376
        Top = 35
        Width = 27
        Height = 20
        Size.Values = (
          52.916666666666670000
          994.833333333333400000
          92.604166666666680000
          71.437500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'No.'
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
      object QRLabel3: TQRLabel
        Left = 8
        Top = 142
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          375.708333333333400000
          153.458333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Producto'
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
        Left = 96
        Top = 142
        Width = 75
        Height = 17
        Size.Values = (
          44.979166666666670000
          254.000000000000000000
          375.708333333333400000
          198.437500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Descripci'#243'n'
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
        Left = 452
        Top = 142
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          1195.916666666667000000
          375.708333333333400000
          153.458333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cantidad'
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
      object QRDBText1: TQRDBText
        Left = 416
        Top = 35
        Width = 132
        Height = 20
        Size.Values = (
          52.916666666666670000
          1100.666666666667000000
          92.604166666666680000
          349.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Numero_Compra'
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
      object QRLabel1: TQRLabel
        Left = 378
        Top = 4
        Width = 262
        Height = 30
        Size.Values = (
          79.375000000000000000
          1000.125000000000000000
          10.583333333333330000
          693.208333333333200000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'INGRESO DE LA COMPRA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 16
      end
      object QRShape27: TQRShape
        Left = 520
        Top = 139
        Width = 81
        Height = 22
        Size.Values = (
          58.208333333333340000
          1375.833333333333000000
          367.770833333333400000
          214.312500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel19: TQRLabel
        Left = 524
        Top = 142
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1386.416666666667000000
          375.708333333333400000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Vr. Unitario'
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
      object QRShape28: TQRShape
        Left = 600
        Top = 139
        Width = 73
        Height = 22
        Size.Values = (
          58.208333333333340000
          1587.500000000000000000
          367.770833333333400000
          193.145833333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape31: TQRShape
        Left = 672
        Top = 139
        Height = 22
        Size.Values = (
          58.208333333333340000
          1778.000000000000000000
          367.770833333333400000
          171.979166666666700000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel20: TQRLabel
        Left = 676
        Top = 142
        Width = 47
        Height = 17
        Size.Values = (
          44.979166666666670000
          1788.583333333333000000
          375.708333333333400000
          124.354166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '+ I.V.A.'
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
      object QRLabel22: TQRLabel
        Left = 604
        Top = 142
        Width = 55
        Height = 17
        Size.Values = (
          44.979166666666670000
          1598.083333333333000000
          375.708333333333400000
          145.520833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Vr. Total'
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
      object QRShape33: TQRShape
        Left = 216
        Top = 139
        Width = 233
        Height = 22
        Size.Values = (
          58.208333333333340000
          571.500000000000000000
          367.770833333333400000
          616.479166666666800000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRSysData1: TQRSysData
        Left = 640
        Top = 60
        Width = 89
        Height = 17
        Size.Values = (
          44.979166666666670000
          1693.333333333333000000
          158.750000000000000000
          235.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsDateTime
        Transparent = False
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel23: TQRLabel
        Left = 513
        Top = 60
        Width = 107
        Height = 17
        Size.Values = (
          44.979166666666670000
          1357.312500000000000000
          158.750000000000000000
          283.104166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Fecha impresi'#243'n'
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
      object QRLabel24: TQRLabel
        Left = 624
        Top = 36
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          1651.000000000000000000
          95.250000000000000000
          153.458333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'ESTADO:'
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
      object QRDBText2: TQRDBText
        Left = 688
        Top = 36
        Width = 43
        Height = 17
        Size.Values = (
          44.979166666666670000
          1820.333333333333000000
          95.250000000000000000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Estado'
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
      object QRLabel26: TQRLabel
        Left = 377
        Top = 60
        Width = 44
        Height = 17
        Size.Values = (
          44.979166666666670000
          997.479166666666800000
          158.750000000000000000
          116.416666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Fecha:'
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
      object QRDBText7: TQRDBText
        Left = 429
        Top = 60
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1135.062500000000000000
          158.750000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Fecha'
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
      object QRLabel27: TQRLabel
        Left = 377
        Top = 84
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          997.479166666666800000
          222.250000000000000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'PROVEEDOR:'
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
      object QRDBText8: TQRDBText
        Left = 469
        Top = 84
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1240.895833333333000000
          222.250000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Proveedor'
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
      object QRDBText9: TQRDBText
        Left = 549
        Top = 84
        Width = 180
        Height = 17
        Size.Values = (
          44.979166666666670000
          1452.562500000000000000
          222.250000000000000000
          476.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Primer_Apellido'
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
      object QRLabel28: TQRLabel
        Left = 9
        Top = 108
        Width = 79
        Height = 17
        Size.Values = (
          44.979166666666670000
          23.812500000000000000
          285.750000000000000000
          209.020833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Descripcion:'
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
      object QRDBText10: TQRDBText
        Left = 101
        Top = 108
        Width = 636
        Height = 29
        Size.Values = (
          76.729166666666680000
          267.229166666666700000
          285.750000000000000000
          1682.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Observa'
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
      object QRDBImage1: TQRDBImage
        Left = 4
        Top = 5
        Width = 361
        Height = 97
        Size.Values = (
          256.645833333333300000
          10.583333333333330000
          13.229166666666670000
          955.145833333333200000)
        XLColumn = 0
        DataField = 'Logo'
        DataSet = DataModule1.ADOQuery1
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 38
      Top = 201
      Width = 740
      Height = 34
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        89.958333333333320000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      DataSet = ADOQuery1
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText3: TQRDBText
        Left = 3
        Top = 1
        Width = 78
        Height = 13
        Size.Values = (
          34.395833333333340000
          7.937500000000000000
          2.645833333333333000
          206.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Codigo_Producto'
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
      object QRDBText4: TQRDBText
        Left = 91
        Top = 1
        Width = 354
        Height = 13
        Size.Values = (
          34.395833333333340000
          240.770833333333300000
          2.645833333333333000
          936.625000000000100000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'DESCRIPCION'
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
      object QRDBText5: TQRDBText
        Left = 451
        Top = 1
        Width = 66
        Height = 13
        Size.Values = (
          34.395833333333340000
          1193.270833333333000000
          2.645833333333333000
          174.625000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'cantidad'
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
      object QRExpr2: TQRExpr
        Left = 524
        Top = 2
        Width = 72
        Height = 13
        Size.Values = (
          34.395833333333340000
          1386.416666666667000000
          5.291666666666667000
          190.500000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery1.valor_unitario)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRExpr3: TQRExpr
        Left = 603
        Top = 2
        Width = 66
        Height = 13
        Size.Values = (
          34.395833333333340000
          1595.437500000000000000
          5.291666666666667000
          174.625000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery1.valor_total)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRExpr4: TQRExpr
        Left = 678
        Top = 2
        Width = 55
        Height = 13
        Size.Values = (
          34.395833333333340000
          1793.875000000000000000
          5.291666666666667000
          145.520833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery1.valor_iva)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRDBText12: TQRDBText
        Left = 301
        Top = 17
        Width = 144
        Height = 13
        Size.Values = (
          34.395833333333330000
          796.395833333333200000
          44.979166666666670000
          381.000000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'UnidadEmpaque'
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
      object QRDBText13: TQRDBText
        Left = 35
        Top = 17
        Width = 260
        Height = 13
        Size.Values = (
          34.395833333333330000
          92.604166666666680000
          44.979166666666670000
          687.916666666666800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'LABORATORIO'
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
      object QRDBText14: TQRDBText
        Left = 503
        Top = 17
        Width = 98
        Height = 13
        Size.Values = (
          34.395833333333330000
          1330.854166666667000000
          44.979166666666670000
          259.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Fecha_Vence'
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
        Left = 656
        Top = 17
        Width = 72
        Height = 13
        Size.Values = (
          34.395833333333330000
          1735.666666666667000000
          44.979166666666670000
          190.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Lote'
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
      object QRShape21: TQRShape
        Left = 4
        Top = 32
        Width = 733
        Height = 1
        Size.Values = (
          2.645833333333333000
          10.583333333333330000
          84.666666666666680000
          1939.395833333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel14: TQRLabel
        Left = 451
        Top = 17
        Width = 46
        Height = 13
        Size.Values = (
          34.395833333333340000
          1193.270833333333000000
          44.979166666666670000
          121.708333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'FecVence:'
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
      object QRLabel29: TQRLabel
        Left = 626
        Top = 17
        Width = 22
        Height = 13
        Size.Values = (
          34.395833333333340000
          1656.291666666667000000
          44.979166666666670000
          58.208333333333340000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Lote:'
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
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 235
      Width = 740
      Height = 224
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        592.666666666666800000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRShape1: TQRShape
        Left = 448
        Top = 0
        Width = 129
        Height = 41
        Size.Values = (
          108.479166666666700000
          1185.333333333333000000
          0.000000000000000000
          341.312500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 0
        Top = 0
        Width = 449
        Height = 217
        Size.Values = (
          574.145833333333400000
          0.000000000000000000
          0.000000000000000000
          1187.979166666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 576
        Top = 0
        Width = 161
        Height = 41
        Size.Values = (
          108.479166666666700000
          1524.000000000000000000
          0.000000000000000000
          425.979166666666700000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 448
        Top = 40
        Width = 289
        Height = 177
        Size.Values = (
          468.312500000000100000
          1185.333333333333000000
          105.833333333333300000
          764.645833333333400000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 0
        Top = 152
        Width = 113
        Size.Values = (
          171.979166666666700000
          0.000000000000000000
          402.166666666666600000
          298.979166666666700000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 112
        Top = 152
        Width = 113
        Size.Values = (
          171.979166666666700000
          296.333333333333400000
          402.166666666666600000
          298.979166666666700000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 224
        Top = 152
        Width = 113
        Size.Values = (
          171.979166666666700000
          592.666666666666800000
          402.166666666666600000
          298.979166666666700000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 336
        Top = 152
        Width = 113
        Size.Values = (
          171.979166666666700000
          889.000000000000000000
          402.166666666666600000
          298.979166666666700000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel6: TQRLabel
        Left = 450
        Top = 42
        Width = 86
        Height = 23
        Size.Values = (
          60.854166666666680000
          1190.625000000000000000
          111.125000000000000000
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
      object QRShape14: TQRShape
        Left = 448
        Top = 152
        Width = 289
        Size.Values = (
          171.979166666666700000
          1185.333333333333000000
          402.166666666666600000
          764.645833333333400000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 448
        Top = 184
        Width = 289
        Height = 33
        Size.Values = (
          87.312500000000000000
          1185.333333333333000000
          486.833333333333400000
          764.645833333333400000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel7: TQRLabel
        Left = 450
        Top = 192
        Width = 104
        Height = 17
        Size.Values = (
          44.979166666666670000
          1190.625000000000000000
          508.000000000000000000
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
        Top = 184
        Width = 57
        Height = 33
        Size.Values = (
          87.312500000000000000
          1460.500000000000000000
          486.833333333333400000
          150.812500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 608
        Top = 184
        Height = 33
        Size.Values = (
          87.312500000000000000
          1608.666666666667000000
          486.833333333333400000
          171.979166666666700000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 672
        Top = 184
        Height = 33
        Size.Values = (
          87.312500000000000000
          1778.000000000000000000
          486.833333333333400000
          171.979166666666700000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel8: TQRLabel
        Left = 554
        Top = 192
        Width = 10
        Height = 17
        Size.Values = (
          44.979166666666670000
          1465.791666666667000000
          508.000000000000000000
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
        Top = 192
        Width = 12
        Height = 17
        Size.Values = (
          44.979166666666670000
          1613.958333333333000000
          508.000000000000000000
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
        Top = 192
        Width = 10
        Height = 17
        Size.Values = (
          44.979166666666670000
          1783.291666666667000000
          508.000000000000000000
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
        Top = 160
        Width = 25
        Height = 17
        Size.Values = (
          44.979166666666670000
          1270.000000000000000000
          423.333333333333300000
          66.145833333333340000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel11: TQRLabel
        Left = 456
        Top = 160
        Width = 19
        Height = 17
        Size.Values = (
          44.979166666666670000
          1206.500000000000000000
          423.333333333333300000
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
        Top = 160
        Width = 22
        Height = 17
        Size.Values = (
          44.979166666666670000
          1354.666666666667000000
          423.333333333333300000
          58.208333333333340000)
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
        Top = 160
        Width = 25
        Height = 17
        Size.Values = (
          44.979166666666670000
          1418.166666666667000000
          423.333333333333300000
          66.145833333333340000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel13: TQRLabel
        Left = 568
        Top = 160
        Width = 22
        Height = 17
        Size.Values = (
          44.979166666666670000
          1502.833333333333000000
          423.333333333333300000
          58.208333333333340000)
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
      object QRLabel15: TQRLabel
        Left = 8
        Top = 160
        Width = 66
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          423.333333333333300000
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
      object QRLabel16: TQRLabel
        Left = 120
        Top = 160
        Width = 59
        Height = 17
        Size.Values = (
          44.979166666666670000
          317.500000000000000000
          423.333333333333300000
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
      object QRLabel17: TQRLabel
        Left = 232
        Top = 160
        Width = 63
        Height = 17
        Size.Values = (
          44.979166666666670000
          613.833333333333400000
          423.333333333333300000
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
      object QRLabel18: TQRLabel
        Left = 344
        Top = 160
        Width = 89
        Height = 17
        Size.Values = (
          44.979166666666670000
          910.166666666666800000
          423.333333333333300000
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
      object QRLabel21: TQRLabel
        Left = 496
        Top = 16
        Width = 79
        Height = 17
        Size.Values = (
          44.979166666666670000
          1312.333333333333000000
          42.333333333333340000
          209.020833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Valor Neto $'
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
      object QRExpr1: TQRExpr
        Left = 584
        Top = 16
        Width = 145
        Height = 17
        Size.Values = (
          44.979166666666670000
          1545.166666666667000000
          42.333333333333340000
          383.645833333333400000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery2.valor_total)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRShape6: TQRShape
        Left = 0
        Top = 0
        Width = 449
        Height = 41
        Size.Values = (
          108.479166666666700000
          0.000000000000000000
          0.000000000000000000
          1187.979166666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel25: TQRLabel
        Left = 9
        Top = 12
        Width = 105
        Height = 17
        Size.Values = (
          44.979166666666670000
          23.812500000000000000
          31.750000000000000000
          277.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'INVENTARIO No:'
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
      object QRDBText6: TQRDBText
        Left = 117
        Top = 12
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          309.562500000000000000
          31.750000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Numero_Transaccion_Inventario'
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
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'nofact'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT INDETCompras.numero_compra, Proveedor,Primer_Apellido,Fec' +
        'ha,Numero_Transaccion_Inventario,INDETCompras.cantidad, INDETCom' +
        'pras.Valor_Unitario, INDETCompras.Valor_Total, INDETCompras.Codi' +
        'go_Producto, INProductos.DESCRIPCION, INDETCompras.Valor_IVA,INE' +
        'ncCompras.descripcion as observa,'
      '       Lote,Fecha_Vence, LABORATORIO,UnidadEmpaque,Marca'
      'FROM INEncCompras, INDETCompras, INProductos,CONTTerce'
      'WHERE INEncCompras.numero_compra=INDETCompras.numero_compra'
      ' AND INEncCompras.Proveedor = CONTTerce.Numero_Documento'
      ' AND INDETCompras.codigo_producto = INProductos.CD_Producto'
      ' AND INENCCompras.numero_compra = :nofact ')
    Left = 392
    Top = 8
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'nofact'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'SELECT INEncCompras.valor_total '
      'FROM INEncCompras, INDETCompras, INProductos'
      'WHERE INEncCompras.numero_compra=INDETCompras.numero_compra'
      ' AND INDETCompras.codigo_producto = INProductos.CD_Producto'
      ' AND INENCCompras.numero_compra = :nofact ')
    Left = 454
    Top = 8
  end
end
