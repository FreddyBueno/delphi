object ImprimeFmto: TImprimeFmto
  Left = 288
  Top = 170
  BorderStyle = bsSingle
  Caption = 'Impresi'#243'n Historia de Formatos'
  ClientHeight = 7
  ClientWidth = 361
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
    Left = -24
    Top = 21
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
    PrinterSettings.MemoryLimit = 1000000
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PreviewWidth = 500
    PreviewHeight = 500
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object EncabezadoPag: TQRBand
      Left = 38
      Top = 167
      Width = 740
      Height = 76
      AlignToBottom = False
      BeforePrint = EncabezadoPagBeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        201.083333333333300000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRShape5: TQRShape
        Left = 0
        Top = 2
        Width = 737
        Height = 72
        Size.Values = (
          190.500000000000000000
          0.000000000000000000
          5.291666666666667000
          1949.979166666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel3: TQRLabel
        Left = 8
        Top = 8
        Width = 51
        Height = 15
        Size.Values = (
          39.687500000000000000
          21.166666666666670000
          21.166666666666670000
          134.937500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Paciente:'
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
      object QRLabel4: TQRLabel
        Left = 8
        Top = 24
        Width = 31
        Height = 15
        Size.Values = (
          39.687500000000000000
          21.166666666666670000
          63.500000000000000000
          82.020833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Sexo:'
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
        Left = 8
        Top = 40
        Width = 35
        Height = 15
        Size.Values = (
          39.687500000000000000
          21.166666666666670000
          105.833333333333300000
          92.604166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Resp.:'
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
      object QRLabel8: TQRLabel
        Left = 8
        Top = 56
        Width = 31
        Height = 15
        Size.Values = (
          39.687500000000000000
          21.166666666666670000
          148.166666666666700000
          82.020833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Sexo:'
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
      object QRDBText2: TQRDBText
        Left = 64
        Top = 8
        Width = 57
        Height = 15
        Size.Values = (
          39.687500000000000000
          169.333333333333300000
          21.166666666666670000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'CCHistoria'
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
        Left = 64
        Top = 24
        Width = 57
        Height = 15
        Size.Values = (
          39.687500000000000000
          169.333333333333300000
          63.500000000000000000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Sexo'
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
      object QRDBText6: TQRDBText
        Left = 64
        Top = 40
        Width = 249
        Height = 15
        Size.Values = (
          39.687500000000000000
          169.333333333333300000
          105.833333333333300000
          658.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Nombre_Responde'
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
      object QRDBText7: TQRDBText
        Left = 64
        Top = 56
        Width = 249
        Height = 15
        Size.Values = (
          39.687500000000000000
          169.333333333333300000
          148.166666666666700000
          658.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Sexo'
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
      object QRLabel9: TQRLabel
        Left = 124
        Top = 24
        Width = 41
        Height = 15
        Size.Values = (
          39.687500000000000000
          328.083333333333300000
          63.500000000000000000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Est.Civ:'
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
        Left = 204
        Top = 24
        Width = 32
        Height = 15
        Size.Values = (
          39.687500000000000000
          539.750000000000000000
          63.500000000000000000
          84.666666666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ocup:'
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
        Left = 168
        Top = 24
        Width = 33
        Height = 15
        Size.Values = (
          39.687500000000000000
          444.500000000000000000
          63.500000000000000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Estado_Civil'
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
      object QRDBText9: TQRDBText
        Left = 240
        Top = 24
        Width = 73
        Height = 15
        Size.Values = (
          39.687500000000000000
          635.000000000000000000
          63.500000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
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
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText10: TQRDBText
        Left = 128
        Top = 8
        Width = 57
        Height = 15
        Size.Values = (
          39.687500000000000000
          338.666666666666700000
          21.166666666666670000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Primer_Apellido'
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
      object QRDBText11: TQRDBText
        Left = 192
        Top = 8
        Width = 57
        Height = 15
        Size.Values = (
          39.687500000000000000
          508.000000000000000000
          21.166666666666670000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Segundo_Apellido'
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
      object QRDBText12: TQRDBText
        Left = 256
        Top = 8
        Width = 57
        Height = 15
        Size.Values = (
          39.687500000000000000
          677.333333333333400000
          21.166666666666670000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Primer_Nombre'
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
        Left = 320
        Top = 8
        Width = 57
        Height = 15
        Size.Values = (
          39.687500000000000000
          846.666666666666600000
          21.166666666666670000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Segundo_Nombre'
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
      object QRLabel13: TQRLabel
        Left = 384
        Top = 8
        Width = 90
        Height = 15
        Size.Values = (
          39.687500000000000000
          1016.000000000000000000
          21.166666666666670000
          238.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Fec. Nacimiento:'
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
      object QRLabel14: TQRLabel
        Left = 322
        Top = 24
        Width = 55
        Height = 15
        Size.Values = (
          39.687500000000000000
          851.958333333333300000
          63.500000000000000000
          145.520833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Direcci'#243'n:'
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
        Left = 322
        Top = 40
        Width = 53
        Height = 15
        Size.Values = (
          39.687500000000000000
          851.958333333333300000
          105.833333333333300000
          140.229166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Tel'#233'fono:'
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
        Left = 322
        Top = 56
        Width = 58
        Height = 15
        Size.Values = (
          39.687500000000000000
          851.958333333333300000
          148.166666666666700000
          153.458333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Asegurad:'
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
      object QRDBText14: TQRDBText
        Left = 384
        Top = 24
        Width = 121
        Height = 15
        Size.Values = (
          39.687500000000000000
          1016.000000000000000000
          63.500000000000000000
          320.145833333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Dir_Casa_Pacien'
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
        Left = 384
        Top = 40
        Width = 193
        Height = 15
        Size.Values = (
          39.687500000000000000
          1016.000000000000000000
          105.833333333333300000
          510.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Tel_Casa_Resp'
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
        Left = 384
        Top = 56
        Width = 345
        Height = 15
        Size.Values = (
          39.687500000000000000
          1016.000000000000000000
          148.166666666666700000
          912.812500000000100000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Aseguradora'
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
        Left = 480
        Top = 8
        Width = 57
        Height = 15
        Size.Values = (
          39.687500000000000000
          1270.000000000000000000
          21.166666666666670000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Fec_Nacimineto'
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
      object QRLabel17: TQRLabel
        Left = 544
        Top = 8
        Width = 30
        Height = 15
        Size.Values = (
          39.687500000000000000
          1439.333333333333000000
          21.166666666666670000
          79.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Edad:'
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
        Left = 520
        Top = 24
        Width = 53
        Height = 15
        Size.Values = (
          39.687500000000000000
          1375.833333333333000000
          63.500000000000000000
          140.229166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Tel'#233'fono:'
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
      object QRDBText19: TQRDBText
        Left = 584
        Top = 24
        Width = 145
        Height = 15
        Size.Values = (
          39.687500000000000000
          1545.166666666667000000
          63.500000000000000000
          383.645833333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Tel_Casa_Pacien'
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
        Left = 576
        Top = 8
        Width = 47
        Height = 13
        Size.Values = (
          34.395833333333330000
          1524.000000000000000000
          21.166666666666670000
          124.354166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QRLabel27'
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
    object FinalPagina: TQRBand
      Left = 38
      Top = 349
      Width = 740
      Height = 156
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        412.750000000000000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRShape9: TQRShape
        Left = 448
        Top = 32
        Width = 289
        Height = 121
        Size.Values = (
          320.145833333333400000
          1185.333333333333000000
          84.666666666666680000
          764.645833333333400000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 448
        Top = 104
        Width = 289
        Height = 49
        Size.Values = (
          129.645833333333300000
          1185.333333333333000000
          275.166666666666700000
          764.645833333333400000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape1: TQRShape
        Left = 448
        Top = 128
        Width = 289
        Height = 25
        Size.Values = (
          66.145833333333340000
          1185.333333333333000000
          338.666666666666700000
          764.645833333333400000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 0
        Top = 32
        Width = 449
        Height = 121
        Size.Values = (
          320.145833333333400000
          0.000000000000000000
          84.666666666666680000
          1187.979166666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel6: TQRLabel
        Left = 450
        Top = 34
        Width = 202
        Height = 12
        Size.Values = (
          31.750000000000000000
          1190.625000000000000000
          89.958333333333330000
          534.458333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Firma y/o Sello del Profesional o Instituci'#243'n'
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
      object QRLabel11: TQRLabel
        Left = 456
        Top = 108
        Width = 19
        Height = 17
        Size.Values = (
          44.979166666666670000
          1206.500000000000000000
          285.750000000000000000
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
        Left = 456
        Top = 132
        Width = 21
        Height = 17
        Size.Values = (
          44.979166666666670000
          1206.500000000000000000
          349.250000000000000000
          55.562500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'RM'
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
      object QRDBText26: TQRDBText
        Left = 3
        Top = 41
        Width = 438
        Height = 16
        Size.Values = (
          42.333333333333330000
          7.937500000000000000
          108.479166666666700000
          1158.875000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DataModule1.ADOQuery1
        DataField = 'Descripcion_Emp'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText27: TQRDBText
        Left = 3
        Top = 60
        Width = 438
        Height = 16
        Size.Values = (
          42.333333333333330000
          7.937500000000000000
          158.750000000000000000
          1158.875000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DataModule1.ADOQuery1
        DataField = 'Nit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText28: TQRDBText
        Left = 3
        Top = 84
        Width = 438
        Height = 16
        Size.Values = (
          42.333333333333330000
          7.937500000000000000
          222.250000000000000000
          1158.875000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DataModule1.ADOQuery1
        DataField = 'Direccion'
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
      object QRDBText29: TQRDBText
        Left = 3
        Top = 101
        Width = 438
        Height = 16
        Size.Values = (
          42.333333333333330000
          7.937500000000000000
          267.229166666666700000
          1158.875000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DataModule1.ADOQuery1
        DataField = 'Telefono'
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
      object QRDBText30: TQRDBText
        Left = 3
        Top = 118
        Width = 438
        Height = 16
        Size.Values = (
          42.333333333333330000
          7.937500000000000000
          312.208333333333300000
          1158.875000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DataModule1.ADOQuery1
        DataField = 'Ciudad'
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
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 332
      Width = 740
      Height = 17
      AlignToBottom = False
      BeforePrint = QRBand1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        44.979166666666670000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRShape3: TQRShape
        Left = 16
        Top = 1
        Width = 721
        Height = 15
        Size.Values = (
          39.687500000000000000
          42.333333333333340000
          2.645833333333333000
          1907.645833333333000000)
        XLColumn = 0
        Brush.Color = clMenuBar
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRRichText2: TQRRichText
        Left = 18
        Top = 3
        Width = 717
        Height = 9
        Size.Values = (
          23.812500000000000000
          47.625000000000000000
          7.937500000000000000
          1897.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AutoStretch = False
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        HiresExport = False
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 332
      Width = 740
      Height = 0
      AlignToBottom = False
      BeforePrint = QRBand2BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        0.000000000000000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 38
      Width = 740
      Height = 129
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        341.312500000000000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRImage1: TQRImage
        Left = 40
        Top = 5
        Width = 289
        Height = 121
        Size.Values = (
          320.145833333333400000
          105.833333333333300000
          13.229166666666670000
          764.645833333333400000)
        XLColumn = 0
        Center = True
        Stretch = True
      end
      object QRShape2: TQRShape
        Left = 368
        Top = 5
        Width = 369
        Height = 121
        Size.Values = (
          320.145833333333400000
          973.666666666666900000
          13.229166666666670000
          976.312500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel5: TQRLabel
        Left = 376
        Top = 72
        Width = 30
        Height = 17
        Size.Values = (
          44.979166666666670000
          994.833333333333300000
          190.500000000000000000
          79.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'P'#225'g:'
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
      object QRSysData1: TQRSysData
        Left = 416
        Top = 72
        Width = 46
        Height = 17
        Size.Values = (
          44.979166666666670000
          1100.666666666667000000
          190.500000000000000000
          121.708333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsPageNumber
        Text = ''
        Transparent = False
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel22: TQRLabel
        Left = 376
        Top = 96
        Width = 111
        Height = 17
        Size.Values = (
          44.979166666666670000
          994.833333333333300000
          254.000000000000000000
          293.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Fecha Impresi'#243'n:'
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
      object QRSysData2: TQRSysData
        Left = 496
        Top = 96
        Width = 68
        Height = 17
        Size.Values = (
          44.979166666666670000
          1312.333333333333000000
          254.000000000000000000
          179.916666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsDateTime
        Text = ''
        Transparent = False
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel20: TQRLabel
        Left = 374
        Top = 24
        Width = 358
        Height = 23
        Size.Values = (
          60.854166666666680000
          989.541666666666800000
          63.500000000000000000
          947.208333333333200000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Historia Clinica'
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
    end
    object QRGroupFmto: TQRGroup
      Left = 38
      Top = 243
      Width = 740
      Height = 26
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        68.791666666666670000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'ADOQuery1.Descripcion'
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRShape7: TQRShape
        Left = 0
        Top = 2
        Width = 737
        Height = 23
        Size.Values = (
          60.854166666666680000
          0.000000000000000000
          5.291666666666667000
          1949.979166666667000000)
        XLColumn = 0
        Brush.Color = cl3DLight
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText1: TQRDBText
        Left = 2
        Top = 3
        Width = 93
        Height = 20
        Size.Values = (
          52.916666666666670000
          5.291666666666667000
          7.937500000000000000
          246.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Descripcion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
    end
    object GrupoFecha: TQRGroup
      Left = 38
      Top = 269
      Width = 740
      Height = 19
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        50.270833333333330000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'ADOQuery1.Fecha'
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRLabel1: TQRLabel
        Left = 2
        Top = 2
        Width = 103
        Height = 15
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          5.291666666666667000
          272.520833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Fecha de Registro:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText20: TQRDBText
        Left = 108
        Top = 2
        Width = 254
        Height = 15
        Size.Values = (
          39.687500000000000000
          285.750000000000000000
          5.291666666666667000
          672.041666666666800000)
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
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
    end
    object GrupoMedico: TQRGroup
      Left = 38
      Top = 288
      Width = 740
      Height = 14
      AlignToBottom = False
      BeforePrint = GrupoMedicoBeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        37.041666666666670000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'ADOQuery1.Usuario'
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRLabel2: TQRLabel
        Left = 3
        Top = 1
        Width = 36
        Height = 12
        Size.Values = (
          31.750000000000000000
          7.937500000000000000
          2.645833333333333000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Profes.:'
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
      object QRLabel19: TQRLabel
        Left = 419
        Top = 1
        Width = 65
        Height = 12
        Size.Values = (
          31.750000000000000000
          1108.604166666667000000
          2.645833333333333000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Identificaci'#243'n:'
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
      object QRDBText31: TQRDBText
        Left = 688
        Top = 1
        Width = 49
        Height = 12
        Size.Values = (
          31.750000000000000000
          1820.333333333333000000
          2.645833333333333000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Usuario'
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
      object QRLabel21: TQRLabel
        Left = 52
        Top = 0
        Width = 125
        Height = 12
        Size.Values = (
          31.750000000000000000
          137.583333333333300000
          0.000000000000000000
          330.729166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel21'
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
      object QRLabel23: TQRLabel
        Left = 180
        Top = 0
        Width = 125
        Height = 12
        Size.Values = (
          31.750000000000000000
          476.250000000000000000
          0.000000000000000000
          330.729166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel23'
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
      object QRLabel24: TQRLabel
        Left = 308
        Top = 0
        Width = 101
        Height = 12
        Size.Values = (
          31.750000000000000000
          814.916666666666800000
          0.000000000000000000
          267.229166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel24'
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
        Left = 484
        Top = 0
        Width = 69
        Height = 12
        Size.Values = (
          31.750000000000000000
          1280.583333333333000000
          0.000000000000000000
          182.562500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel25'
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
      object QRLabel26: TQRLabel
        Left = 556
        Top = 0
        Width = 125
        Height = 12
        Size.Values = (
          31.750000000000000000
          1471.083333333333000000
          0.000000000000000000
          330.729166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel26'
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
    end
    object GrupoFormato: TQRGroup
      Left = 38
      Top = 302
      Width = 740
      Height = 17
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        44.979166666666670000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'ADOQuery1.Codigo_Seccion'
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRDBText22: TQRDBText
        Left = 8
        Top = 1
        Width = 729
        Height = 12
        Size.Values = (
          31.750000000000000000
          21.166666666666670000
          2.645833333333333000
          1928.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Descripcion_1'
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
      object QRShape4: TQRShape
        Left = 8
        Top = 14
        Width = 729
        Height = 1
        Size.Values = (
          2.645833333333333000
          21.166666666666670000
          37.041666666666670000
          1928.812500000000000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
    end
    object GrupoSeccion: TQRGroup
      Left = 38
      Top = 319
      Width = 740
      Height = 13
      AfterPrint = GrupoSeccionAfterPrint
      AlignToBottom = False
      BeforePrint = GrupoSeccionBeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        34.395833333333330000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'ADOQuery1.Codigo_Campo'
      FooterBand = QRBand1
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRDBRichText1: TQRDBRichText
        Left = 180
        Top = 1
        Width = 557
        Height = 12
        Size.Values = (
          31.750000000000000000
          476.250000000000000000
          2.645833333333333000
          1473.729166666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AutoStretch = True
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        HiresExport = False
        DataField = 'Valor'
        DataSet = ADOQuery1
      end
      object QRDBText23: TQRDBText
        Left = 8
        Top = 0
        Width = 169
        Height = 12
        Size.Values = (
          31.750000000000000000
          21.166666666666670000
          0.000000000000000000
          447.145833333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Descripcion_2'
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
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    Left = 8
    Top = 5
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'CdFmt'
        Size = -1
        Value = Null
      end
      item
        Name = 'CDSecc'
        Size = -1
        Value = Null
      end
      item
        Name = 'CDCampo'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM FDSubcampos'
      'WHERE Codigo_Formato = :CdFmt AND'
      '               Codigo_Seccion = :CDSecc AND'
      '               Codigo_Campo = :CDCampo')
    Left = 40
    Top = 5
  end
  object ADOQuery3: TADOQuery
    Connection = DataModule1.ADOComunes
    Parameters = <
      item
        Name = 'IdE'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM SEPersonas,SEIdentificaciones'
      'WHERE SEPersonas.Id *= SEIdentificaciones.Persona'
      '                AND Id = :IdE')
    Left = 72
    Top = 5
  end
end
