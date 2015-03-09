object ArqueoCaja: TArqueoCaja
  Left = 414
  Top = 170
  BorderStyle = bsSingle
  Caption = 'Arqueo de Caja'
  ClientHeight = 210
  ClientWidth = 397
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
    Left = -13
    Top = 211
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
    object QRSubDetail2: TQRSubDetail
      Left = 38
      Top = 217
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
      Master = QuickRep1
      DataSet = ADOQuery1
      FooterBand = GroupFooterBand1
      PrintBefore = False
      PrintIfEmpty = True
      object QRExpr4: TQRExpr
        Left = 290
        Top = 0
        Width = 91
        Height = 15
        Size.Values = (
          39.687500000000000000
          767.291666666666800000
          0.000000000000000000
          240.770833333333300000)
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
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery1.Valor_Recibido)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText6: TQRDBText
        Left = 18
        Top = 0
        Width = 55
        Height = 15
        Size.Values = (
          39.687500000000000000
          47.625000000000000000
          0.000000000000000000
          145.520833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Tipo_de_Concepto'
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
      object QRExpr7: TQRExpr
        Left = 386
        Top = 0
        Width = 91
        Height = 15
        Size.Values = (
          39.687500000000000000
          1021.291666666667000000
          0.000000000000000000
          240.770833333333300000)
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
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery1.Valor_Retenido)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr8: TQRExpr
        Left = 482
        Top = 0
        Width = 91
        Height = 15
        Size.Values = (
          39.687500000000000000
          1275.291666666667000000
          0.000000000000000000
          240.770833333333300000)
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
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery1.Valor_Pendiente)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText1: TQRDBText
        Left = 178
        Top = 0
        Width = 42
        Height = 15
        Size.Values = (
          39.687500000000000000
          470.958333333333400000
          0.000000000000000000
          111.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Numero_Ingreso'
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
      object QRDBText7: TQRDBText
        Left = 74
        Top = 0
        Width = 102
        Height = 15
        Size.Values = (
          39.687500000000000000
          195.791666666666700000
          0.000000000000000000
          269.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Concepto_del_Ingreso'
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
      object QRDBText9: TQRDBText
        Left = 234
        Top = 0
        Width = 50
        Height = 15
        Size.Values = (
          39.687500000000000000
          619.125000000000000000
          0.000000000000000000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Fecha'
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
      object QRDBText10: TQRDBText
        Left = 578
        Top = 0
        Width = 50
        Height = 15
        Size.Values = (
          39.687500000000000000
          1529.291666666667000000
          0.000000000000000000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Doc_Pagador'
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
      object QRDBText11: TQRDBText
        Left = 634
        Top = 0
        Width = 98
        Height = 15
        Size.Values = (
          39.687500000000000000
          1677.458333333333000000
          0.000000000000000000
          259.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Nombre_Pagador'
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
    object QRBand3: TQRBand
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
      BandType = rbTitle
      object QRShape1: TQRShape
        Left = 0
        Top = 0
        Width = 737
        Height = 161
        Size.Values = (
          425.979166666666700000
          0.000000000000000000
          0.000000000000000000
          1949.979166666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel11: TQRLabel
        Left = 269
        Top = 80
        Width = 189
        Height = 25
        Size.Values = (
          66.145833333333330000
          711.729166666666700000
          211.666666666666700000
          500.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'ARQUEO DE CAJA'
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
      object QRLabel3: TQRLabel
        Left = 16
        Top = 143
        Width = 49
        Height = 15
        Size.Values = (
          39.687500000000000000
          42.333333333333330000
          378.354166666666700000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Tp Conc.'
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
      object QRLabel5: TQRLabel
        Left = 72
        Top = 143
        Width = 54
        Height = 15
        Size.Values = (
          39.687500000000000000
          190.500000000000000000
          378.354166666666700000
          142.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Concepto'
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
      object QRLabel6: TQRLabel
        Left = 176
        Top = 143
        Width = 45
        Height = 15
        Size.Values = (
          39.687500000000000000
          465.666666666666700000
          378.354166666666700000
          119.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Numero'
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
      object QRLabel7: TQRLabel
        Left = 240
        Top = 143
        Width = 33
        Height = 15
        Size.Values = (
          39.687500000000000000
          635.000000000000000000
          378.354166666666700000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Fecha'
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
        Left = 296
        Top = 143
        Width = 67
        Height = 15
        Size.Values = (
          39.687500000000000000
          783.166666666666700000
          378.354166666666700000
          177.270833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Vr. Recibido'
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
      object QRLabel15: TQRLabel
        Left = 392
        Top = 143
        Width = 69
        Height = 15
        Size.Values = (
          39.687500000000000000
          1037.166666666667000000
          378.354166666666700000
          182.562500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Vr. Retenido'
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
      object QRLabel18: TQRLabel
        Left = 488
        Top = 143
        Width = 76
        Height = 15
        Size.Values = (
          39.687500000000000000
          1291.166666666667000000
          378.354166666666700000
          201.083333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Vr. Pendiente'
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
      object QRLabel20: TQRLabel
        Left = 584
        Top = 143
        Width = 46
        Height = 15
        Size.Values = (
          39.687500000000000000
          1545.166666666667000000
          378.354166666666700000
          121.708333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Pagador'
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
      object QRLabel21: TQRLabel
        Left = 640
        Top = 143
        Width = 45
        Height = 15
        Size.Values = (
          39.687500000000000000
          1693.333333333333000000
          378.354166666666700000
          119.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Nombre'
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
      object QRLabel10: TQRLabel
        Left = 301
        Top = 112
        Width = 10
        Height = 20
        Size.Values = (
          52.916666666666670000
          796.395833333333300000
          296.333333333333300000
          26.458333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '0'
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
      object QRLabel13: TQRLabel
        Left = 429
        Top = 112
        Width = 10
        Height = 20
        Size.Values = (
          52.916666666666670000
          1135.062500000000000000
          296.333333333333300000
          26.458333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '0'
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
      object QRLabel22: TQRLabel
        Left = 405
        Top = 112
        Width = 11
        Height = 20
        Size.Values = (
          52.916666666666670000
          1071.562500000000000000
          296.333333333333300000
          29.104166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Y'
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
      object QRLabel24: TQRLabel
        Left = 229
        Top = 112
        Width = 63
        Height = 20
        Size.Values = (
          52.916666666666670000
          605.895833333333300000
          296.333333333333300000
          166.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'ENTRE:'
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
      object QRDBImage1: TQRDBImage
        Left = 4
        Top = 3
        Width = 729
        Height = 73
        Size.Values = (
          193.145833333333300000
          10.583333333333330000
          7.937500000000000000
          1928.812500000000000000)
        XLColumn = 0
        DataField = 'Logo'
        DataSet = DataModule1.ADOQuery1
      end
    end
    object QRBand4: TQRBand
      Left = 38
      Top = 257
      Width = 740
      Height = 174
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        460.375000000000000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRShape2: TQRShape
        Left = 0
        Top = 0
        Width = 737
        Height = 169
        Size.Values = (
          447.145833333333400000
          0.000000000000000000
          0.000000000000000000
          1949.979166666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 8
        Top = 5
        Width = 721
        Height = 140
        Size.Values = (
          370.416666666666700000
          21.166666666666670000
          13.229166666666670000
          1907.645833333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel14: TQRLabel
        Left = 15
        Top = 31
        Width = 93
        Height = 17
        Size.Values = (
          44.979166666666670000
          39.687500000000000000
          82.020833333333340000
          246.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TOTAL A PAGAR:'
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
      object QRLabel16: TQRLabel
        Left = 40
        Top = 50
        Width = 105
        Height = 17
        Size.Values = (
          44.979166666666670000
          105.833333333333300000
          132.291666666666700000
          277.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total Vr. Pagado E.:'
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
      object QRLabel17: TQRLabel
        Left = 40
        Top = 68
        Width = 104
        Height = 15
        Size.Values = (
          39.687500000000000000
          105.833333333333300000
          179.916666666666700000
          275.166666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total Vr. Pagado C:'
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
      object QRLabel19: TQRLabel
        Left = 40
        Top = 83
        Width = 104
        Height = 15
        Size.Values = (
          39.687500000000000000
          105.833333333333300000
          219.604166666666700000
          275.166666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total Vr. Pagado O:'
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
        Left = 127
        Top = 31
        Width = 90
        Height = 17
        Size.Values = (
          44.979166666666670000
          336.020833333333400000
          82.020833333333340000
          238.125000000000000000)
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
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery3.Valor_A_Pagar)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr2: TQRExpr
        Left = 152
        Top = 50
        Width = 90
        Height = 17
        Size.Values = (
          44.979166666666670000
          402.166666666666600000
          132.291666666666700000
          238.125000000000000000)
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
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery3.Valor_Pagado_E)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr3: TQRExpr
        Left = 152
        Top = 68
        Width = 90
        Height = 15
        Size.Values = (
          39.687500000000000000
          402.166666666666600000
          179.916666666666700000
          238.125000000000000000)
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
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery3.Valor_Pagado_C)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr11: TQRExpr
        Left = 152
        Top = 83
        Width = 90
        Height = 15
        Size.Values = (
          39.687500000000000000
          402.166666666666600000
          219.604166666666700000
          238.125000000000000000)
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
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery3.Valor_Pagado_O)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr12: TQRExpr
        Left = 408
        Top = 50
        Width = 90
        Height = 17
        Size.Values = (
          44.979166666666670000
          1079.500000000000000000
          132.291666666666700000
          238.125000000000000000)
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
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery3.Valor_Retenido_1)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr13: TQRExpr
        Left = 408
        Top = 68
        Width = 90
        Height = 15
        Size.Values = (
          39.687500000000000000
          1079.500000000000000000
          179.916666666666700000
          238.125000000000000000)
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
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery3.Valor_Retenido_2)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr14: TQRExpr
        Left = 408
        Top = 83
        Width = 90
        Height = 15
        Size.Values = (
          39.687500000000000000
          1079.500000000000000000
          219.604166666666700000
          238.125000000000000000)
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
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery3.Valor_Retenido_3)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel23: TQRLabel
        Left = 16
        Top = 124
        Width = 90
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          328.083333333333400000
          238.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TOTAL PAGADO:'
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
      object QRExpr15: TQRExpr
        Left = 128
        Top = 124
        Width = 90
        Height = 17
        Size.Values = (
          44.979166666666670000
          338.666666666666700000
          328.083333333333400000
          238.125000000000000000)
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
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery3.Valor_Pagado)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel2: TQRLabel
        Left = 40
        Top = 99
        Width = 112
        Height = 15
        Size.Values = (
          39.687500000000000000
          105.833333333333300000
          261.937500000000000000
          296.333333333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total Vr. Descuento:'
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
      object QRExpr5: TQRExpr
        Left = 152
        Top = 99
        Width = 90
        Height = 15
        Size.Values = (
          39.687500000000000000
          402.166666666666600000
          261.937500000000000000
          238.125000000000000000)
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
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery3.Valor_Descuento)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 288
        Top = 99
        Width = 109
        Height = 15
        Size.Values = (
          39.687500000000000000
          762.000000000000000000
          261.937500000000000000
          288.395833333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total Vr. Pendiente:'
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
      object QRExpr6: TQRExpr
        Left = 408
        Top = 99
        Width = 90
        Height = 15
        Size.Values = (
          39.687500000000000000
          1079.500000000000000000
          261.937500000000000000
          238.125000000000000000)
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
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery3.Valor_Pendiente)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Left = 288
        Top = 51
        Width = 68
        Height = 17
        Size.Values = (
          44.979166666666670000
          762.000000000000000000
          134.937500000000000000
          179.916666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOTable1
        DataField = 'Retencion_1'
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
      object QRDBText3: TQRDBText
        Left = 288
        Top = 69
        Width = 68
        Height = 15
        Size.Values = (
          39.687500000000000000
          762.000000000000000000
          182.562500000000000000
          179.916666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOTable1
        DataField = 'Retencion_2'
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
      object QRDBText5: TQRDBText
        Left = 288
        Top = 84
        Width = 68
        Height = 15
        Size.Values = (
          39.687500000000000000
          762.000000000000000000
          222.250000000000000000
          179.916666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOTable1
        DataField = 'Retencion_3'
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
      object QRLabel8: TQRLabel
        Left = 13
        Top = 8
        Width = 258
        Height = 20
        Size.Values = (
          52.916666666666670000
          34.395833333333330000
          21.166666666666670000
          682.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'ARQUEO DE TODAS LAS CAJAS:'
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
    end
    object GroupFooterBand1: TQRBand
      Left = 38
      Top = 232
      Width = 740
      Height = 25
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        66.145833333333330000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRShape3: TQRShape
        Left = 289
        Top = 0
        Width = 284
        Height = 2
        Size.Values = (
          5.291666666666667000
          764.645833333333400000
          0.000000000000000000
          751.416666666666800000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel9: TQRLabel
        Left = 8
        Top = -1
        Width = 70
        Height = 15
        Size.Values = (
          39.687500000000000000
          21.166666666666670000
          -2.645833333333333000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total Cajero:'
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
      object QRExpr9: TQRExpr
        Left = 290
        Top = 3
        Width = 91
        Height = 15
        Size.Values = (
          39.687500000000000000
          767.291666666666800000
          7.937500000000000000
          240.770833333333300000)
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
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery2.Valor_Recibido)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr10: TQRExpr
        Left = 386
        Top = 3
        Width = 91
        Height = 15
        Size.Values = (
          39.687500000000000000
          1021.291666666667000000
          7.937500000000000000
          240.770833333333300000)
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
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery2.Valor_Retenido)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr16: TQRExpr
        Left = 482
        Top = 3
        Width = 91
        Height = 15
        Size.Values = (
          39.687500000000000000
          1275.291666666667000000
          7.937500000000000000
          240.770833333333300000)
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
        Expression = 'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQuery2.Valor_Pendiente)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
    object QRGroup1: TQRGroup
      Left = 38
      Top = 201
      Width = 740
      Height = 16
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        42.333333333333330000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'Id'
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRDBText4: TQRDBText
        Left = 50
        Top = 1
        Width = 55
        Height = 15
        Size.Values = (
          39.687500000000000000
          132.291666666666700000
          2.645833333333333000
          145.520833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Cajero'
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
      object QRLabel1: TQRLabel
        Left = 0
        Top = -1
        Width = 40
        Height = 15
        Size.Values = (
          39.687500000000000000
          0.000000000000000000
          -2.645833333333333000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cajero:'
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
      object QRDBText8: TQRDBText
        Left = 114
        Top = 1
        Width = 119
        Height = 15
        Size.Values = (
          39.687500000000000000
          301.625000000000000000
          2.645833333333333000
          314.854166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Primer_Apellido'
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
      object QRDBText12: TQRDBText
        Left = 242
        Top = 1
        Width = 119
        Height = 15
        Size.Values = (
          39.687500000000000000
          640.291666666666800000
          2.645833333333333000
          314.854166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Segundo_Apellido'
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
      object QRDBText13: TQRDBText
        Left = 370
        Top = 1
        Width = 119
        Height = 15
        Size.Values = (
          39.687500000000000000
          978.958333333333200000
          2.645833333333333000
          314.854166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Nombres'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 397
    Height = 210
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 67
      Height = 13
      Caption = 'Fecha Desde:'
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 64
      Height = 13
      Caption = 'Fecha Hasta:'
    end
    object Label3: TLabel
      Left = 16
      Top = 102
      Width = 33
      Height = 13
      Caption = 'Cajero:'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 96
      Top = 22
      Width = 177
      Height = 22
      Date = 39014.629874409720000000
      Time = 39014.629874409720000000
      TabOrder = 0
    end
    object DateTimePicker2: TDateTimePicker
      Left = 96
      Top = 61
      Width = 177
      Height = 22
      Date = 39014.629874409720000000
      Time = 39014.629874409720000000
      TabOrder = 1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 96
      Top = 98
      Width = 289
      Height = 21
      KeyField = 'Id'
      ListField = 'Id'
      ListSource = DataSource1
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 280
      Top = 128
      Width = 105
      Height = 73
      Caption = 'Imprimir'
      Glyph.Data = {
        863B0000424D863B000000000000360000002800000061000000340000000100
        180000000000503B0000C40E0000C40E000000000000000000003C3C3C3C3C3C
        3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C
        3C3C3C3C3C3C3C3C3C3C302F2F2F2F2F393A3A2D2D2D3B3B3B3C3C3C3C3C3C3C
        3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C393939303030333434
        3536363939393C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C
        3C3C3C3C3C3C3C3C3C3C2F2F2F4D4D4DD9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003C3C
        3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C
        3C3C3C3C3C3B3C3C3737372B2A283C3D3DBAC4C4B9C4C13E43432E2E2E363636
        3A3A3A3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3A3A3A3534343633346266
        66909D9B5054553535353939393C3C3C3B3B3B3C3C3C3C3C3C3C3C3C3C3C3C3C
        3C3C3C3C3C3C3C3C3C3C3C3C3C3C2F2F2F4D4D4DD9D9D9FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF003C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C
        3C3C3C3C3C3C3A3B3B3536352B2A2B535756C8D5D5FFFFFFFBFFFFBDCBCA5E64
        643434343333333B3B3B3C3C3C3C3C3C3C3C3C3C3C3C3B3A3A3533333C3E3E6E
        7776A1ADAC9BA5A35C63634244453B3C3C3A3A3A3A3A3A3B3B3B3C3C3C3C3C3C
        3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C2F2F2F4D4D4DD9D9D9FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF003C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C
        3C3C3C3C3C3C3C3B3C3B323132323232686E6ED1DCDBF7FFFFD9EAE8DAEDECF1
        FFFFCEDBDA7B83813C3C3D3030303939393C3C3C3C3C3C3B3B3B3535353B3A3B
        6D767596A3A19BA5A49FAAA86C7372444647484C4B3E3E3E3838383A3A3A3B3B
        3B3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C2F2F2F4D4D4DD9D9D9FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF003C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C
        3C3C3C3C3C3C3C3C3C3B3B3130303535367A8282D2E2E1ECFBFAD9ECE8DAEBE7
        D9EAE8DEEDEDEAFBF9DAEAE897A1A04447482A292A3838383D3C3C3737373534
        346166648F9A9A98A2A29EA9A7B0BCBB858E8D4244444C5050494C4C3D3F3F38
        36363A39393C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C2F2F2F4D4D4D
        D9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF003C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C
        3C3C3C3C3C3C3C3C3C3C3C3C333232333232848C8CD6E7E6E6F8F5DAEAE8D6EB
        E6DAEAE7DAEAE9D9E9E8DBECEAE4F5F4E6F8F5B0BDBC52565624232239383833
        333351555485918E939E9C9CA8A7AAB6B4BBCAC8A4B1AF5051524549494E5151
        4A4E4E3E3F3F3836363B3A3B3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C2F2F
        2F4D4D4DD9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003C3C3C3C3C3C3C3C3C3C3C3C3C3C
        3C3C3C3C3C3C3C3B3B3B3D3D3D323231282726889190E0F1EFE3F4F2D9E9E7D9
        E9E6D8E9E7D9E9E7D9E8E8D9E8E7D9E9E8D9EBE8DDF0EEEAF9F8D1DEDD656C6B
        1310103637367A84828D9997949F9DABB7B4B6C5C2BCCDCCBDCFCD666B6B3E41
        404D50514D52514B4F4F4041403635363A3A3A3C3C3C3C3C3C3C3C3C3C3C3C3C
        3C3C2F2F2F4D4D4DD9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003C3C3C3C3C3C3C3C3C3C
        3C3C3C3C3C3C3C3C3B3B3B3E3E3E3737361E1B1D8F9695EFFAF8E1F6F0D9EAE7
        D8E7E6D5E7E4D7E7E8D5E5E5D7E9E3D6E6E5D6E8E6D7E8E6D8E7E7DDEEECE6F7
        F5E0F0F08B9392585F5F87908F8F9796A9B5B5BCCBC9BECFCCBFCDCACAD8DA8E
        96954143444A4E4D4C4F504C50514C51513F41413636363A3A3A3C3C3C3C3C3C
        3C3C3C3C3C3C2F2F2F4D4D4DD9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003C3C3C3C3C3C
        3C3C3C3C3C3C3C3C3C3C3C3C3D3D3D393B3B0F08088B9695FFFFFFDCEEECD2E3
        E3D5E6E6D4E5E5D5E6E1D3E4E5D4E5E1D3E4E4D5E6E2D5E6E3D6E7E5D8E8E8D6
        E7E6CBDCDAD5E7E7E5F8F78E9B99778281A5B1AEBDCCC9C3D3D1C5D4D2C5D5D4
        CCDDDCB7C2C14E53524549494D51514C504F4D51504F53524242423637373A3A
        3A3C3C3C3C3C3C3C3C3C2F2F2F4D4D4DD9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003C3C
        3C3C3C3C3C3C3C3C3C3C3C3C3C3D3D3D3737370C0606849290FFFFFFD0E3DFD2
        E3E1D5E6E3D5E6E4D5E6E2D3E4E2D0E1E1D1E2E1D1E2E1D1E2DFD2E3E1D5E6E3
        D1E3E0C7D8D8CCDDDBE2F3F3E5F5F488929198A3A3C5D5D4C9DAD9C8DBD8C5D4
        D2B9C6C4A8B5B4949E9D515655494C4B4D51504B4F4E4B4F4F4E51514F545441
        45453636363B3B3B3C3C3C3C3C3C2F2F2F4D4D4DD9D9D9FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF003C3C3C3C3C3C3C3C3C3C3C3C3C3D3D3534341F1A1B778480FFFFFFC6DBD9
        D0E0DED0E2DFD2E3E1D2E3DFD0E1E1CFE0E0D0E1DECEDFDDCFE0DDCFE0DECFE1
        DECBDDDAC6D8D6D0E3E0E3F4F4E0F1ECB6C7C58E9B99AFBDBAB7C4C5AEBAB8A1
        AEAD909C9B8189887E8887808888525555484C4C4C50504D51514C51514E504F
        4F52515055544444443737373A3A3A3D3D3D2F2F2F4D4D4DD9D9D9FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF003C3C3C3C3C3C3C3C3C3C3C3C343232282728798480EFFFFFCFDF
        DCCADBDCCDDEDBCDDDDDCDDEDDCEDFDCCEDFDACDDEDDCDDDDCCADDDBCBDCDBCB
        DBDAC6D7D5C7D9D6D4E6E4DDF1EECEDDDB94A2A16E77768089898E9796848C8B
        7F88877C85847E8786838B8A8A94938B9292545858474B4B4D51514D51504D50
        514C52514C50504F53525155554446473837373B39392F2F2F4D4D4DD9D9D9FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF003C3C3C3C3C3C3C3C3C3534342E2D2E737B7CD8E8E6D6
        E5E6CBDED9CCDCDBCADBD9CADADAC9DAD9CADBD9CADBD8CADBD9C9DBD8C7DBD9
        C6D7D5C2D2D0C7D9D6D6E7E5D8E9E6B1C1BF7F8888676F6F778380838A8A8189
        88818C8B848D8C888F8E8A92918B94938C9796888F8F535656484C4C4D51514D
        524F4E51504E51524E52514E51505054525154554549483A39392D2C2C4D4D4D
        D9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF003C3C3C3C3C3C3736362E2E2E6A7070C9DAD8
        D8E9E8CEDDDCCADFDCC9D8D7CADADAC8D9D7C7D8D6C6D6D6C6D7D7C6D8D6C8DA
        D7C0D1D1BECFCCC8D9D8D3E6E3C7D9D69AA5A4707A796E7877828B8A87908F85
        8E8D86908F8891908A92918B93928B9493878F8E848D8C858F8E4B5051454947
        4F53514D52514D51514E53504F52514D53524F53504E53535157564749492C2A
        294C4C4CD9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003C3C3C3939392F2D2E595E5DC0CD
        CBDBEDECCCDFDDCCDCDACBDCDCCADAD7C7D8D8C7D8D7C6D6D5C5D4D4C5D5D5C6
        D7D4BFCFCDBBCBCACBDCDAD1E3E2B5C6C484918F6B757576807F848E8D869190
        878F8E86908F8892918A93928B9493889190808A88858E8D9DA5A4C7CFCE858B
        8B3C413F4A4D4D4F53534D51514E52504F53534E52524F53534D53545155554E
        53522C2D2B4B4B4BD9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003C3C3C302F2F464746B4
        C1C1DFF1F0D0E1DFCADCDCCBDAD8C9DBDBCBDCD7C5D8D7C6D7D5C6D6D4C6D7D6
        C5D5D3BDCDCBBDCCCACEDFDDCFE1DFA1B0AF727D7C6E78777D8786848D8C858F
        8E8791908A92918B94938B9392878F8E818A88869291A7B1AFCFD4D4F2F6F6FD
        FFFFEDEFEF757E7C3A3D3D4B4E4E4F53514F52524F53534E52534E53534F5453
        5154545055542F2F2F4A4A4AD9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003636362E2E2E
        9EA9A7E4F7F7D0E2E2CCDDDCCBDDDCCDDEDBC7DBDBCBDBD6C6D7D8C7D8D5C8D8
        D5C3D5D3BACCCAC0CFCED4E5E3C8DBD78D9A9A697574747F7E808988838C8B84
        8E8D878F8E8B94938A9393848D8A8189898B9795AEB9B9D9DCDCF2FAFAFAFFFF
        F2FEFEEAFCFAFAFFFFE2E4E46D7475383B394D50505053544E53524F53535054
        544F55544F53555155563232324B4A4AD9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF002422
        237B8585EDFBFBD3E6E4CDDEDCCEDFDECEDFDCCCDEDAC8DBDDCADBD6C6D7D8C8
        D8D6C2D4D2BCCCCBC3D5D4D3E5E3BECCCB7A85836A72727B8584828C8B828B8A
        818C8B86908F8B949386908D818B8A939D9BB8C4C3E0EAE9F1F9F9F4FFFFE6FF
        FFE8FFFFECFEFCE9F9F7EAFBFAF7FFFFDEDFE0656B6C3A3E3D4E53514F535450
        53524F55555053545054555256563434344A4949D9D9D9FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF003D3F3EFAFFFFD8EAE8CCDEDBD0E1DECEDFDECFE0DECBDCDCCBDED9CBD9D6
        C8D8D8C3D3D2BDCDCDC6D8D5D4E5E3AEBCBA6F7B7A6A7574808A89828C8B818A
        89828D8B848D8C858E8D808A88929C9BBBC7C6E3F2F1FCFFFFFEFFFFF0FFFFE0
        D8D7D88081D6AAA9E8F9F8E9FAF9E6F8F6E8F9F7F7FFFFDADDDD6068673B3E3C
        4F53534F55554E5355515352515554545858373939484848D9D9D9FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF007B7E7EFFFFFFDBF0EED2E4E2CEE0DED1E1E0D0E1DFCCDDDECCDD
        DACADBD9C4D6D4C1CFCFC9DAD7CEDEDBA1B1AD6E7B79717C7A838B8A818B8A82
        8B8A848D8C818B8B7E8585889290B5C2C0E2EEEEEFFEFEF2FFFFCFE6DBADD1B8
        DFF8F4E6C3C4EA3F43C75D61E0EDEDE8FAF9E8F8F6E6F7F8E9FAF7FBFFFFD5DB
        D95960603E41404F54534D53555155554F53525458583A3C3C484848D8D8D8FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00333131727A77CEDEDDEAFCFCDCF0ECCFE0DED0E1DECE
        E0DFCBDEDAC8D8D5BFD3D1CADBD9C9DAD696A3A26B777675817F828C8B808A89
        838E8D848E8D7E8685808988A3AEADD7E9E6EDFFFEE8F8F7E2F2F1E9F3FA8DD7
        9724B82685C18CF0FAFCD8D0CFCED4D5E4FBF9E6F7F7E7F7F5E6F6F7E8F8F5E7
        F9F7FCFFFFC9D1D15156564144445056554F53535053555458583D4040494848
        D8D8D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00353434232020323232818A89D3E3E2E8FBF9
        D9EAE8D1E5E1CEDEDDC5D8D4CEDFDDC6D8D58F9D9A6E79787A8382828C8B828C
        8B858E8E7F8A887B8382939F9EC9D9D7EDFEFFEAFAF8DFEFEFDDEDEBDFEFEEE9
        F3F6C7EAD281CB8AB1CFBBEBF9FCE6FFFFE8FFFEE6F6F4E6F4F2E5F5F3E7F7F6
        E5F5F6E4F5F4E7F8F7FDFFFFC3D0CF4D52524346455157545253555359584043
        414B4B4BD7D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003C3C3C3B3C3C312E2E2623234543
        45929B9BD0E2E0D7EBE8C8D7D8CDDEDDC4D5D28F9B9A7681807B8786818C8B82
        8C8B828C8B7D8886869390B6C4C3E2F3EFE8FAF8DFF0EDDDEDEADDEDEDE0F0EE
        E0F0EEDFF0EEECF3F9F2F4FFEDF6FCE3F6F1E3F4F2E5F4F2E4F4F2E6F4F3E3F3
        F2E6F6F3E5F6F3E6F4F5E2F3F2E7F8F6FBFFFFBBC6C64E535345494850555455
        59584246454E4D4DD7D6D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003C3C3C3C3C3C3D3D3D38
        3838272525211F1F535656B1BEBCD5EAE6C3D4D3879291717C7A828C8C818C8B
        818B8A7E87877E888798A3A2CFDFDDE8FBF8E2F2F1DBEBE9DCECE9DEEDECDEEF
        EBDFEEEDE0F0EDE0F0EEE1F2F0E4F5F3E3F3F2E1F1F1E3F3F1E5F4F2E5F5F2E3
        F2F2E4F4F2E4F4F0E4F4F1E4F4F2E6F6F2E5F4F0EAF8F8F9FFFFB0BABA474D4D
        464C4B555A594347464F504FD6D4D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003C3C3C3C3C3C
        3B3B3B3838383C3D3D5254535C6060727B7ACCDFDD808D8B626B697E8888838C
        8C7D8686798281848F8EB2BFBDE1F1F0E2F3F2D7E9E7D8E8E6DAEAEADBECEADD
        EBEBDDEDEADFEEECDEEEEEDFEFECDDEEEEE0F1EEE1F3F2E4F5F4E3F4F1E0F2EF
        E1F2EFE2F2F1E5F5F2E3F3F2E3F3F2E4F4F0E5F6F2E3F4F2E2F2F2EBFAF7FBFF
        FFA6AEAE4246454C4F4F454A49525352D5D4D4FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003C3C
        3C3C3C3C3939393939395E6362848F8E7C848395A4A06F78785C676576828080
        8A8978828179828195A2A0C7D5D3E3F5F4DCEBE9D7E6E5D8E7E5DAEAE8DAEBE9
        DBEAE8DCECEADCECEADCEDEBDCECEBE1F2F1EEFBFBF8FFFFF7FFFFF2FFFFF5FF
        FFF7FFFFEEFDFBE2F3F2E1F1F0E2F1F0E4F3F2E3F4F1E3F4F1E2F2F2E2F2F2E2
        F2EFEAFAF9F8FFFF9BA4A34245453D4241555757D5D5D6FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF003C3C3C3B3B3B363636444646757E7C8A94927F8887798581545C5C707C7B
        7C8785767F7E7F8B8AABB7B5D5E4E3E1F1EED6E6E5D4E5E4D7E7E6D9E7E7D8E9
        E6DAEBE8DBEAE7DBEBE7DBE9E9E1F2F0F1FFFEF7FFFFD8E0E1B6B0B29D969A96
        9093B2A5AABDB1B5DCE2E2F9FFFFEFFEFDE2F4F1DFF0EFE1F2F0E1F1EFE1F1F0
        E2F2F1E1F0F0DFF0EFECFBF8F4FFFF949E9C393B3A505252D6D7D7FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF003C3C3C3A3A3A3736364C4F4E818B8AA0ACAA828B8C59605E6976
        74768182717B79889492BBCCC9DBEBE9DAE9E7D4E4E2D5E5E2D5E6E6D7E7E5D9
        E6E7D7E8E6D8E8E5D8E9E6E1F1EFF0FFFFF7FEFDC6CECE83767B504046311A21
        280C162F111A371924391E2757454B898488DBE3E3FDFFFFEDFEFDDFF1EEDEEF
        EDE2F2F0E2F2F0E2F2F0E1F1EEE1F1EEEBFAF9EDFBFB7F8B89484B4AD5D4D4FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF003C3C3C3A3B3B36353455575698A3A2A5B3B16D74745F
        6A686D7A796A7473939F9DCDDCDADDEDEAD4E5E4D1E2E0D6E6E4D4E4E3D6E8E6
        D7E7E4D7E5E4D5E6E4DFEFEDF0FFFFF1FAFBC0C4C663555C351F28270C15290C
        162F141D32161F3219212F151E30141E2B0E18280C153F2A318E8B8DE0E6E5FC
        FFFFEAFAF9DEEEEDDFEFECE2F2EFE1F0F0E2F2EEDEEEEBEEFBFBEBF3F1959F9C
        CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF003C3C3C3B3A3B3536345A5F5EA0ABAA889090
        5F666563716D626C6DA2AEAEDBEAE9D9EBE9D2E1DFD0E1DFD2E2E1D4E4E3D5E4
        E5D7E8E3D3E3E4DAEBE8EFFFFEEEFEFCBFC4C262585B260C152308122F131C33
        1A23351D26361D26371E27351C26361C26361D26351C253319222B0F1921030E
        3C2D33AAAFAEEDF2F3F7FFFFE0F3F1DDEDECDEEEEDDEEDECEFFEFBF9FFFFCCCF
        CF89908FD0D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003C3C3C3A3B3B3534355B5D5E8F98
        986C75745660615A6363B9C6C4E9F9FAD1E3E2CFDEDCD0E2E0D0E3DED1E4E1D4
        E3E2D4E2E0D5E5E2E7F9F7F9FFFFCAD3D36B606420080D1B0209311720341C24
        371D28331C23351D25361C23341B23361D24361D26341B25341B25351D25361C
        25371B24280B150D00014F444AC4CCCDFFFFFFF0FFFFE8F8F6FEFFFFDFEEEE85
        8E8B222122333131D7D6D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003C3C3C3B3B3B3537354D
        50506D7273585F5D656D6CBDCECCE7F6F6CADBD9CDDBDBD0E0DECFE1DED1E0E0
        D1E1E0D1E1DFDBEDEAF6FFFFD7E6E4736B6E240C151A000730161F371E28351C
        25331A23331A25351A23331A23331A23351C25351D25331A22341B23371E2634
        1C26341D24341D26381F28371C271E000921050C6D6267D6E0E1EAFDFB919896
        3635361D1919222222505151D9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003C3C3C3C3B3B
        3837374040405055556D7473BAC9C5DAEBE9C9D8D8CBDBD9CCDEDBCDDEDDCEDF
        DDD0DEDED0DFDDE6FDF9EBFEFBA7A9AB3320281900052A0E17371D26351C2533
        1A22351A24331D24341A25351C24351C26351A23341C24351A25341924351A25
        351D24361D24361B23361B26351B24341D263820292F131C1F0008351E26423D
        3E2525252B29293D3D3D3131314D4D4DD9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003C3C
        3C3B3B3B3837383E414267706FB3C1C1D4E5E3C7D8D6C7D7D8C9D9D7CBDBD9CD
        DDDCCEDDDCD5E5E4F1FCFBCED6D662585C160003260913351C26361E26331B23
        351B24321B24341C23321B25351B24331B22331D25341C22321B23341C25351C
        26341B25341B24351B24341C24361C25341D25351C2630151F2A0E172B111A2F
        21262D2B2D3738383D3D3D3D3D3D2F2F2F4D4D4DD9D9D9FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF003C3C3C3A3A3A333334535858A8B6B3D1E1DFC7D7D5C6D6D4C5D5D7C8D8D3
        C9D9D8CADBD9D8ECE9E4F1F0A5A7A836232B190006311820371F27341C25341A
        23331B24341A25331A23341C22321A23331A23331924321B24341C24341C2433
        1B24321C24331D24331A23351B26341C27341C2330151E2509102B131C4C4649
        5055554C565548514F3837373B3A3A3C3D3D2F2F2F4D4D4DD9D9D9FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF003C3C3C3636363D3F3F909C9BD1E2DFCADAD7C3D3D2C3D3D0C4D4
        D4C3D4D2C7D6D6D3E6E4D1E2E07A777B220A1222050F361D26351D2434192333
        1A23331A23331B24331A23331B22331A23331A23311A24311A22331922341B24
        331A22331A22331A23341C24341B22331A232D131C2509132B171B4D4B4A8693
        94BBD8D68CA09E484F4D4B52513C3D3D3838383D3C3C2F2F2F4D4D4DD9D9D9FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF003C3C3C333434575A5AC4D4D3D9EBE9C3D3D2C3D2D0C3
        D5D1C4D1D0C0D1D0C9D9D7CBDBDA756F731F040F2A0D18341D25321B23351A23
        311B24331B24331924331923321B22321A23321922341B24311A22311A223219
        22331A23321A23341B23331A2431161E2A0E17260A122A171D575458879895B0
        CBC8B2CCC9B4CDCAA1B6B656605E484F504447483635353C3C3C2F2F2F4D4D4D
        D9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF003C3C3C3736363C3D3D717777B7C5C5CEDFDD
        C6D5D2BFD1CFC2D2D2C2D1D0CBDEDAA7AFB0362129240811321B23321B22331B
        22311B24321B22331A22331A23321A22311B23331922331A22311922311A2231
        1922331A23331B233219222D121C2409132810183B2B3162636895ABA9ADC8C6
        B2CCC9A8BDBCA2B5B5A6BCBBB4CCCC788887454A4B4A52533A39393A3A3A3030
        304D4D4DD9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003C3C3C3B3B3B3434342D2C2C5456
        56A2ACABCDDDDCCADAD6BECFCEC3D4D1CBDCDAADB8B8413138230A1130182131
        1A20311923311921321922321921321A23311921321A23321822321A23301820
        331B22321B242F151F280E17250A132B151D473D4171787A9BAEACAEC9C7B0CA
        C7A7BDBCA3B6B5A4B8B6A4B9B7A5BAB8B2CAC89EB5B34E56554A525342444338
        37372F2F2F4D4D4DD9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003C3C3C3C3C3C3C3C3C37
        37372C2A2B3C3B3B88908FCFE0DDD3E4E0BBCBC8C6D6D4CBDDDA7B7B7E250D16
        29111B2F1A2031182230191F311822301A20301821311922311821311921331C
        24341C242E131C220611220711321E27554F557E8A88A4B9B6B0CBC8ABC2BFA5
        BAB9A1B4B3A3B6B6A6BAB7A4BCB9A4BBBAA4B8B7ABC2C0B5CCCC6B7A78444A49
        4951513938382D2D2D4D4D4DD9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003C3C3C3C3C3C
        3C3C3C3C3C3C3A3A3B302F2F2B2929606565CFDEDCDFF4F2C0CDCCCBDDDCC2D1
        D0564C5120060F2D161D2F18222D17203018223119212F1A212F1A2032192332
        1C23280D171400001F050F3E30356A6E6E93A6A5A5BFBCAEC7C5A7BDBDA4B7B6
        A4B6B4A2B5B5A3B7B6A5BAB9A3B8B7A4BBBAA5BDBBA4BBB9A7BCBBB7D1CE98AE
        AC4147464C54513F41402B2A2A4C4C4CD9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003C3C
        3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C373637211F203B3C3CBBCAC8E4F6F5C6
        D6D3D2E5E3BAC7C63A29302307102E1A222F1A212E161F301922331A23321B23
        260B13130000220B13585559828F8FA4BEBBB0C9C8ACC4C2A5BBBAA4B6B5A2B6
        B5A4B7B5A2B6B5A4B8B8A5B9B8A4BAB7A6B9B8A7BBBAA8BEBDA7BDBDA6BCB9B1
        CAC8B9D1CF5D686644484A4A50502B2A2A4C4C4CD9D9D9FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF003C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C292626292727
        919997E3F4F2D2E2E0DFF6F2B3BABC1D1819251217311A202F18232F171F1E06
        0E1000002A1821767F80A0B8B4B6CECEB2CDC9A8BBBBA4B8B7A3B6B4A2B7B6A4
        B9B8A4B8B5A4B7B7A2B9B7A2B6B5A5B6B8A3B8B7A7BCBBA8BEBCA9C0BEAAC1BF
        A7BEBDA7BDBDC4E0DC8A9D9C3A3E3D4E56543132334A4848D9D9D9FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF003C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3E3E
        3E333333211E1E666A69CBDADAD7E9E9FFFFFFB0AEB01D070A2A121B2B141D26
        101759555A9AB1B06A858293ABAAB0C9C6A1B4B39FB3B2A3B8B6A2B6B5A2B7B5
        A3B8B7A4B8B7A5B7B7A3B8B6A3B9B6A5B9B8A2B7B6A7BBBAA5BBBAA7BEBEACC1
        BEAAC3C1AAC1C0AAC0BEB2CDCBBBD7D3545D5B464C4C3C4341494A49D7D7D7FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF003C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C
        3C3C3C3C3C3D3D3D363737222020525555B1BABAB0BBB989999633292D2A1E23
        3835353439366A7775B1CBC9798B8A6E7C7BA3B6B7A2B7B4A3B7B5A2B7B5A4B6
        B7A3BAB6A5BAB8A4B9B7A3B6B6A2B8B5A4BAB7A2B7B5A4B9B6A7BCBAA8BDBCA9
        BFBDADC4C3AFC7C5B2CBCAB1CAC9ADC6C4D4F5F48395924046453538384B4C4C
        D8D8D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF003C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C
        3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3B3A3A2826261D1A1A110E0E1713143B3F
        3D4046443E403F3533343C3C3D91A19F98AFAD6072719CB1AFA6BCB8A0B3B2A3
        B7B4A3B8B7A4BAB7A3B9B6A3B8B6A3B7B5A4B7B6A1B6B5A4B9B6A6BBB9AAC0BF
        AEC7C6B1CAC8B2CAC9B0C8C6A6BCBC8FA1A199ACAB93A6A5757C7C3735352724
        244D4D4DD9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003C3C3C3C3C3C3C3C3C3C3C3C3C3C
        3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3D3D3A3B3B3E3E3E3F
        40403C3B3B3A3A3A3B3A3A393839333032768181AAC1C06A7C7C849895A9BFBD
        A2B5B5A2B6B4A3B8B7A4B7B6A3B6B6A1B5B4A3B7B5A7BBBBA8BEBEABC2C0AFC7
        C6ACC4C3A1B7B695A7A7828E8C656D6C4C4F4F39393A4142423230312925263A
        38382F30304D4D4DD9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003C3C3C3C3C3C3C3C3C3C
        3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C
        3C3C3C3B3B3B3C3C3C3C3C3C3C3C3C3A3B3A312E2F55595AAEC3C28599996C7E
        7DABC1C0A3B7B6A1B5B4A1B4B3A2B5B5A6BBBAACC4C2B0C6C4ABC2C1A6BCBB98
        AAA98394936F7C7B575E5E4345453836362D2C2D2D2A29323131302E2E343434
        3B3C3B3D3D3D2F2F2F4D4D4DD9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003C3C3C3C3C3C
        3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C
        3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3333333D3C3C96A8A7A3
        BAB9627A799DB1B0A3B7B6A5B9B8B1C8C7B4CDCCADC4C3A1B7B590A19F747F7D
        5F66674E51513C3C3C343332323131333131353434393A3A3D3D3D3C3D3D3D3D
        3D3C3D3D3C3C3C3C3C3C2F2F2F4D4D4DD9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003C3C
        3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C
        3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C383838312D2E
        737F7EB9D3D16B7E7E8B9E9DD1EFECB7CFCE9AAEAC8290906971704E53534041
        423738373532333533333635353838383A3A3A3C3C3C3C3C3C3C3C3C3C3C3C3B
        3B3B3B3B3B3C3B3B3C3C3C3C3C3C2F2F2F4D4D4DD9D9D9FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF003C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C
        3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3D
        3D2B2828545858C1DDDBBFDCDA7F98977A87864F54533F404136353533323234
        33333634343737373B3A3A3B3B3B3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C
        3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C2F2F2F4D4D4DD9D9D9FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF003C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C
        3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C
        3C3C3C3C3C353535333131777E7E6369692B27262B2A2A322F2F3737373A3939
        3A3A3A3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C
        3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C2F2F2F4D4D4DD9D9D9FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00}
      NumGlyphs = 2
      TabOrder = 3
      OnClick = BitBtn1Click
    end
  end
  object ADOTable1: TADOTable
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    TableName = 'CAParametros'
    Left = 408
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdCa'
        DataType = ftInteger
        Size = -1
        Value = 0
      end
      item
        Name = 'FecIni'
        DataType = ftString
        Size = 13
        Value = Null
      end
      item
        Name = 'FecFin'
        DataType = ftString
        Size = 13
        Value = ''
      end>
    SQL.Strings = (
      
        'SELECT CAIngresos.Id as Cajero,Tipo_Concepto AS Tipo_de_Concepto' +
        ',Concepto as Concepto_del_Ingreso,Numero_Ingreso,Left(Fecha,11) ' +
        'As Fecha,'
      
        '  Valor_Pagado_E+Valor_Pagado_C+Valor_Pagado_O As Valor_Recibido' +
        ',Valor_Retenido_1+Valor_Retenido_2+Valor_Retenido_3 As Valor_Ret' +
        'enido,'
      
        '  Valor_Descuento+Valor_Pendiente AS Valor_Pendiente,Doc_Pagador' +
        ',Nombre_Pagador,'
      '  Primer_Apellido,Segundo_Apellido,Nombres'
      'FROM CAIngresos,Comunes..SEPersonas'
      'WHERE (Estado <> '#39'A'#39' OR ESTADO IS NULL) '
      '      AND CAIngresos.Id= Comunes..SEPersonas.ID '
      '      AND CAIngresos.Id = :IdCa  '
      
        '      AND Fecha >=   convert(datetime,convert(varchar,:FecIni,10' +
        '3)+'#39' 00:00:00.000'#39',103) '
      
        '      AND Fecha <=   convert(datetime,convert(varchar,:FecFin,10' +
        '3)+'#39' 23:59:59.000'#39',103)'
      'ORDER BY CAIngresos.Id')
    Left = 448
    Top = 1
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdCa'
        DataType = ftInteger
        Size = -1
        Value = 0
      end
      item
        Name = 'FecIni'
        Size = -1
        Value = Null
      end
      item
        Name = 'FecFin'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT sum(Valor_Pagado_E+Valor_Pagado_C+Valor_Pagado_O) As Valo' +
        'r_Recibido,Sum(Valor_Retenido_1+Valor_Retenido_2+Valor_Retenido_' +
        '3) As Valor_Retenido,'
      '  Sum(Valor_Descuento+Valor_Pendiente) AS Valor_Pendiente'
      'FROM CAIngresos '
      'WHERE (Estado <> '#39'A'#39' OR ESTADO IS NULL) '
      '      AND  Id = :IdCa       '
      
        '      AND Fecha >=   convert(datetime,convert(varchar,:FecIni,10' +
        '3)+'#39' 00:00:00.000'#39',103) '
      
        '      AND Fecha <=   convert(datetime,convert(varchar,:FecFin,10' +
        '3)+'#39' 23:59:59.000'#39',103)'
      ''
      '')
    Left = 480
    Top = 1
  end
  object ADOQuery3: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FecIni'
        Size = -1
        Value = Null
      end
      item
        Name = 'FecFin'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT SUM(Valor_Pagado_E) as Valor_Pagado_E,SUM(Valor_Pagado_C)' +
        ' as Valor_Pagado_C,SUM(Valor_Pagado_O) as Valor_Pagado_O,SUM(Val' +
        'or_Retenido_1) as Valor_Retenido_1,'
      
        #9'SUM(Valor_Retenido_2) as Valor_Retenido_2,SUM(Valor_Retenido_3)' +
        ' as Valor_Retenido_3,SUM(Valor_Descuento) as Valor_Descuento,SUM' +
        '(Valor_Pendiente) as Valor_Pendiente,SUM(Valor_Pagado) as Valor_' +
        'Pagado,SUM(Valor_a_Pagar) as Valor_a_Pagar'
      '  FROM CAIngresos '
      'WHERE    (Estado <> '#39'A'#39' OR ESTADO IS NULL) '
      
        '      AND   Fecha >=   convert(datetime,convert(varchar,:FecIni,' +
        '103)+'#39' 00:00:00.000'#39',103) '
      
        '      AND Fecha <=   convert(datetime,convert(varchar,:FecFin,10' +
        '3)+'#39' 23:59:59.000'#39',103)'
      '')
    Left = 512
    Top = 1
  end
  object ADOQuery4: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'nofact'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'SELECT Distinct Id as Id'
      'FROM CAIngresos'
      'WHERE (Estado <> '#39'A'#39' OR ESTADO IS NULL) '
      '     '
      'ORDER BY Id')
    Left = 584
    Top = 1
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery4
    Left = 616
  end
end
