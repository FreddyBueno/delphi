object FCajaEmbell: TFCajaEmbell
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Registro de Caja para Embell'
  ClientHeight = 649
  ClientWidth = 781
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  Visible = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 452
    Top = 0
    Width = 10
    Height = 649
    Align = alRight
    Beveled = True
    ExplicitLeft = 511
    ExplicitHeight = 496
  end
  object QuickRep1: TQuickRep
    Left = 109
    Top = 289
    Width = 276
    Height = 753
    DataSet = ADOQCaja
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
    Page.PaperSize = Custom
    Page.Continuous = False
    Page.Values = (
      10.000000000000000000
      1992.300000000000000000
      10.000000000000000000
      730.300000000000000000
      0.000000000000000000
      10.000000000000000000
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
    object QRGroup4: TQRGroup
      Left = 0
      Top = 297
      Width = 272
      Height = 0
      AlignToBottom = False
      Color = clWhite
      Enabled = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        0.000000000000000000
        719.666666666666800000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'ADOQuery1.Codigo_Producto'
      Master = QuickRep1
      ReprintOnNewPage = False
    end
    object QRBand5: TQRBand
      Left = 0
      Top = 4
      Width = 272
      Height = 293
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        775.229166666666800000
        719.666666666666800000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel11: TQRLabel
        Left = 17
        Top = 68
        Width = 230
        Height = 23
        Size.Values = (
          60.854166666666680000
          44.979166666666670000
          179.916666666666700000
          608.541666666666800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CIERRE DIARIO DE CAJA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
      end
      object QRLabel12: TQRLabel
        Left = 66
        Top = 91
        Width = 44
        Height = 17
        Size.Values = (
          44.979166666666670000
          174.625000000000000000
          240.770833333333300000
          116.416666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Fecha:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 116
        Top = 91
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          306.916666666666700000
          240.770833333333300000
          153.458333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QRLabel1'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRShape13: TQRShape
        Left = 7
        Top = 114
        Width = 269
        Height = 175
        Size.Values = (
          463.020833333333400000
          18.520833333333330000
          301.625000000000000000
          711.729166666666800000)
        XLColumn = 0
        Pen.Color = clMenuHighlight
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel2: TQRLabel
        Left = 17
        Top = 118
        Width = 140
        Height = 17
        Size.Values = (
          44.979166666666670000
          44.979166666666670000
          312.208333333333400000
          370.416666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cantidad de Facturas:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 176
        Top = 118
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          465.666666666666700000
          312.208333333333400000
          153.458333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QRLabel1'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 17
        Top = 141
        Width = 117
        Height = 17
        Size.Values = (
          44.979166666666670000
          44.979166666666670000
          373.062500000000000000
          309.562500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Valor de Facturas:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
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
        Left = 176
        Top = 141
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          465.666666666666700000
          373.062500000000000000
          153.458333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QRLabel1'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 17
        Top = 164
        Width = 153
        Height = 17
        Size.Values = (
          44.979166666666670000
          44.979166666666670000
          433.916666666666700000
          404.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Valor Recibido Efectivo:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 176
        Top = 164
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          465.666666666666700000
          433.916666666666700000
          153.458333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QRLabel1'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 17
        Top = 187
        Width = 148
        Height = 17
        Size.Values = (
          44.979166666666670000
          44.979166666666670000
          494.770833333333400000
          391.583333333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Valor Recibido Tarjeta:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
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
        Left = 176
        Top = 187
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          465.666666666666700000
          494.770833333333400000
          153.458333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QRLabel1'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 17
        Top = 210
        Width = 135
        Height = 17
        Size.Values = (
          44.979166666666670000
          44.979166666666670000
          555.625000000000000000
          357.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Valor Recibido Total:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 176
        Top = 210
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          465.666666666666700000
          555.625000000000000000
          153.458333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QRLabel1'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 10
        Top = 257
        Width = 203
        Height = 23
        Size.Values = (
          60.854166666666680000
          26.458333333333330000
          679.979166666666800000
          537.104166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Relaci'#243'n de Facturas:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
      end
      object QRDBImage1: TQRDBImage
        Left = 8
        Top = 8
        Width = 265
        Height = 57
        Size.Values = (
          150.812500000000000000
          21.166666666666670000
          21.166666666666670000
          701.145833333333400000)
        XLColumn = 0
        DataField = 'logo'
        DataSet = DataModule1.ADOQuery1
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 0
      Top = 297
      Width = 272
      Height = 15
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        39.687500000000000000
        719.666666666666800000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      DataSet = ADOQFact
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText2: TQRDBText
        Left = 21
        Top = 0
        Width = 64
        Height = 13
        Size.Values = (
          34.395833333333340000
          55.562500000000000000
          0.000000000000000000
          169.333333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQFact
        DataField = 'Numero_Factura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
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
      object QRExpr4: TQRExpr
        Left = 91
        Top = 0
        Width = 142
        Height = 13
        Size.Values = (
          34.395833333333340000
          240.770833333333300000
          0.000000000000000000
          375.708333333333400000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 
          'FORMATNUMERIC('#39'#,##0.00;(#,##0.00)'#39',ADOQFact.Valor_Total - ADOQF' +
          'act.Valor_Descuento + ADOQFact.Valor_IVA )'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 452
    Height = 649
    Align = alClient
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 450
      Height = 153
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 11
        Width = 99
        Height = 23
        Caption = 'No Factura:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 8
        Top = 77
        Width = 119
        Height = 23
        Caption = 'Valor a Pagar:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 8
        Top = 40
        Width = 401
        Height = 31
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'Numero_Factura'
        ListField = 'Numero_Factura'
        ListSource = DSFact
        ParentFont = False
        TabOrder = 0
        TabStop = False
      end
      object DBEdit1: TDBEdit
        Left = 144
        Top = 77
        Width = 265
        Height = 50
        TabStop = False
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = DSFact
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
        Font.Height = -35
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 154
      Width = 450
      Height = 494
      Align = alClient
      TabOrder = 1
      object Label4: TLabel
        Left = 9
        Top = 181
        Width = 69
        Height = 23
        Caption = 'Cambio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 8
        Top = 81
        Width = 120
        Height = 23
        Caption = 'Valor Efectivo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 9
        Top = 234
        Width = 74
        Height = 23
        Caption = 'Faltante:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 8
        Top = 25
        Width = 110
        Height = 23
        Caption = 'Fecha /Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 8
        Top = 128
        Width = 114
        Height = 23
        Caption = 'Valor Tarjeta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Button1: TButton
        Left = 257
        Top = 327
        Width = 161
        Height = 65
        Caption = 'Pagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = Button1Click
      end
      object DateTimePicker: TDateTimePicker
        Left = 160
        Top = 23
        Width = 257
        Height = 31
        Date = 41095.879967337960000000
        Format = 'dd/MM/yyyy hh:mm:ss tt'
        Time = 41095.879967337960000000
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = False
      end
      object Edit1: TEdit
        Left = 160
        Top = 73
        Width = 257
        Height = 41
        BiDiMode = bdRightToLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
        OnExit = Edit1Exit
        OnKeyPress = Edit1KeyPress
      end
      object Edit2: TEdit
        Left = 161
        Top = 173
        Width = 257
        Height = 41
        BiDiMode = bdRightToLeft
        Color = cl3DLight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object Edit3: TEdit
        Left = 161
        Top = 225
        Width = 257
        Height = 41
        BiDiMode = bdRightToLeft
        Color = cl3DLight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object Edit7: TEdit
        Left = 160
        Top = 120
        Width = 257
        Height = 41
        BiDiMode = bdRightToLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 2
        OnExit = Edit1Exit
        OnKeyPress = Edit1KeyPress
      end
    end
  end
  object Panel4: TPanel
    Left = 462
    Top = 0
    Width = 319
    Height = 649
    Align = alRight
    TabOrder = 1
    object Label7: TLabel
      Left = 6
      Top = 12
      Width = 140
      Height = 23
      Caption = 'CIERRE DIARIO:'
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label8: TLabel
      Left = 14
      Top = 41
      Width = 110
      Height = 23
      Caption = 'Fecha /Hora:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 14
      Top = 116
      Width = 120
      Height = 23
      Caption = 'Valor Efectivo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 14
      Top = 347
      Width = 69
      Height = 23
      Caption = 'Cambio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 14
      Top = 419
      Width = 74
      Height = 23
      Caption = 'Faltante:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 14
      Top = 188
      Width = 114
      Height = 23
      Caption = 'Valor Tarjeta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 14
      Top = 260
      Width = 173
      Height = 23
      Caption = 'Valor Total Recibido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DateTimePicker1: TDateTimePicker
      Left = 14
      Top = 70
      Width = 291
      Height = 31
      Date = 41095.879967337960000000
      Format = 'dd/MM/yyyy hh:mm:ss tt'
      Time = 41095.879967337960000000
      Color = clInactiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = False
    end
    object Edit4: TEdit
      Left = 40
      Top = 145
      Width = 263
      Height = 41
      TabStop = False
      BiDiMode = bdRightToLeft
      Color = clInactiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      OnExit = Edit1Exit
      OnKeyPress = Edit1KeyPress
    end
    object Edit5: TEdit
      Left = 46
      Top = 372
      Width = 257
      Height = 41
      TabStop = False
      BiDiMode = bdRightToLeft
      Color = clInactiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
    end
    object Edit6: TEdit
      Left = 46
      Top = 449
      Width = 257
      Height = 41
      TabStop = False
      BiDiMode = bdRightToLeft
      Color = clInactiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
    end
    object Edit8: TEdit
      Left = 40
      Top = 217
      Width = 263
      Height = 41
      TabStop = False
      BiDiMode = bdRightToLeft
      Color = clInactiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      OnExit = Edit1Exit
      OnKeyPress = Edit1KeyPress
    end
    object Button2: TButton
      Left = 6
      Top = 517
      Width = 139
      Height = 39
      Caption = 'Imprimir Cierre'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button2Click
    end
    object Edit9: TEdit
      Left = 40
      Top = 289
      Width = 263
      Height = 41
      TabStop = False
      BiDiMode = bdRightToLeft
      Color = clInactiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 6
      OnExit = Edit1Exit
      OnKeyPress = Edit1KeyPress
    end
  end
  object ADOQFact: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'dia'
        Size = -1
        Value = Null
      end
      item
        Name = 'mes'
        Size = -1
        Value = Null
      end
      item
        Name = 'ano'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT *,convert(varchar(20),CAST((Valor_Total - Valor_Descuento' +
        '  + Valor_IVA) as money),1) as Total'
      'FROM INEncFacturacion'
      'WHERE  (Estado <> '#39'A'#39' or Estado is NULL) AND'
      
        '              day(Fecha) = :dia AND month(Fecha) = :mes  AND yea' +
        'r(Fecha) = :ano'
      'ORDER BY  Numero_Factura DESC')
    Left = 360
    Top = 8
  end
  object DSFact: TDataSource
    DataSet = ADOQFact
    OnDataChange = DSFactDataChange
    Left = 304
    Top = 8
  end
  object DSCaja: TDataSource
    DataSet = ADOQCaja
    Left = 480
    Top = 360
  end
  object ADOQCaja: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'fac'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM INEmbellCaja'
      'WHERE No_Factura = :fac')
    Left = 560
    Top = 360
  end
  object DSCierre: TDataSource
    Left = 656
    Top = 16
  end
  object ADOQCierre: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'dia'
        Size = -1
        Value = Null
      end
      item
        Name = 'mes'
        Size = -1
        Value = Null
      end
      item
        Name = 'ano'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT convert(varchar(20),CAST(sum(Valor_Recibido_Efectivo - Ca' +
        'mbio) as money),1) as VRE,'
      
        #9#9'convert(varchar(20),CAST(sum(Valor_Recibido_Tarjeta) as money)' +
        ',1) as VRT,'
      #9#9'convert(varchar(20),CAST(sum(Cambio) as money),1) as C,'
      #9#9'convert(varchar(20),CAST(sum(Faltante) as money),1) as F,'
      
        #9#9'convert(varchar(20),CAST(sum(Valor_Recibido_Efectivo+Valor_Rec' +
        'ibido_Tarjeta) as money),1) as TP'
      'FROM INEmbellCaja'
      
        'WHERE day(Fecha_Pago) = :dia AND month(Fecha_Pago) = :mes  AND y' +
        'ear(Fecha_Pago) = :ano')
    Left = 712
    Top = 16
  end
  object ADOQTF: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'dia'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'mes'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ano'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT count(*) as cantidad,convert(varchar(20),CAST(sum(Valor_T' +
        'otal - Valor_Descuento  + Valor_IVA) as money),1) as Total'
      'FROM INEncFacturacion'
      'WHERE (Estado <> '#39'A'#39' or Estado is NULL) AND'
      
        '              day(Fecha) = :dia AND month(Fecha) = :mes  AND yea' +
        'r(Fecha) = :ano')
    Left = 712
    Top = 64
  end
end
