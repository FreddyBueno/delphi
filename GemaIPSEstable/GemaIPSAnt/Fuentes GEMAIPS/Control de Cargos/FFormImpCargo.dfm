object FormImpCargo: TFormImpCargo
  Left = 318
  Top = 145
  BorderStyle = bsSingle
  Caption = 'Cargos'
  ClientHeight = 431
  ClientWidth = 759
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
    Left = -10
    Top = 70
    Width = 816
    Height = 529
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
    Page.PaperSize = Custom
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      1400.000000000000000000
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
    object QRSubDetail2: TQRSubDetail
      Left = 38
      Top = 225
      Width = 740
      Height = 12
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        31.750000000000000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText2: TQRDBText
        Left = 40
        Top = 0
        Width = 65
        Height = 11
        Size.Values = (
          29.104166666666670000
          105.833333333333300000
          0.000000000000000000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'CD_PST'
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
        Width = 257
        Height = 11
        Size.Values = (
          29.104166666666670000
          296.333333333333400000
          0.000000000000000000
          679.979166666666800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'DESCRIPCION'
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
      object QRDBText4: TQRDBText
        Left = 376
        Top = 0
        Width = 33
        Height = 11
        Size.Values = (
          29.104166666666670000
          994.833333333333400000
          0.000000000000000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'UNIDADES'
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
        Left = 561
        Top = 0
        Width = 41
        Height = 11
        Size.Values = (
          29.104166666666670000
          1484.312500000000000000
          0.000000000000000000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Cd_Tarifa'
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
      object QRDBText9: TQRDBText
        Left = 0
        Top = 0
        Width = 17
        Height = 11
        Size.Values = (
          29.104166666666670000
          0.000000000000000000
          0.000000000000000000
          44.979166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'SEC_CARGO'
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
        Left = 21
        Top = 0
        Width = 17
        Height = 11
        Size.Values = (
          29.104166666666670000
          55.562500000000000000
          0.000000000000000000
          44.979166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'TP_PST'
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
        Left = 518
        Top = 0
        Width = 41
        Height = 11
        Size.Values = (
          29.104166666666670000
          1370.541666666667000000
          0.000000000000000000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'Tb_Tarifa'
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
      object QRDBText20: TQRDBText
        Left = 608
        Top = 0
        Width = 56
        Height = 11
        Size.Values = (
          29.104166666666670000
          1608.666666666667000000
          0.000000000000000000
          148.166666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'PRECIO'
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
      object QRDBText21: TQRDBText
        Left = 416
        Top = 0
        Width = 101
        Height = 11
        Size.Values = (
          29.104166666666670000
          1100.666666666667000000
          0.000000000000000000
          267.229166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'AGRUPACION'
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
        Left = 683
        Top = 0
        Width = 33
        Height = 11
        Size.Values = (
          29.104166666666670000
          1807.104166666667000000
          0.000000000000000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'VALOR_LIQUIDADO'
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
    object QRBand3: TQRBand
      Left = 38
      Top = 38
      Width = 740
      Height = 187
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        494.770833333333300000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRDBRichText1: TQRDBRichText
        Left = 126
        Top = 153
        Width = 601
        Height = 19
        Size.Values = (
          50.270833333333330000
          333.375000000000000000
          404.812500000000000000
          1590.145833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AutoStretch = False
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HiresExport = False
        DataField = 'OBSERVACIONES'
        DataSet = ADOQuery1
      end
    end
    object QRBand4: TQRBand
      Left = 38
      Top = 237
      Width = 740
      Height = 136
      AlignToBottom = True
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        359.833333333333300000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRShape1: TQRShape
        Left = 0
        Top = 24
        Width = 361
        Height = 105
        Size.Values = (
          277.812500000000000000
          0.000000000000000000
          63.500000000000000000
          955.145833333333500000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 368
        Top = 24
        Width = 369
        Height = 105
        Size.Values = (
          277.812500000000000000
          973.666666666666900000
          63.500000000000000000
          976.312500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 8
        Top = 80
        Width = 345
        Height = 1
        Size.Values = (
          2.645833333333333000
          21.166666666666670000
          211.666666666666700000
          912.812500000000100000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel4: TQRLabel
        Left = 112
        Top = 93
        Width = 111
        Height = 33
        Size.Values = (
          87.312500000000000000
          296.333333333333300000
          246.062500000000000000
          293.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Firma Autorizada'
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
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'nofact'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM CREncCargos   '
      
        ' inner join CRDetCargos on CREncCargos.No_Cargo=CRDetCargos.No_C' +
        'argo'
      
        ' inner join SAAdmisiones on CREncCargos.No_Admision = SAAdmision' +
        'es.No_Admision'
      
        ' inner join SAPacientes on ( SAAdmisiones.tp_ident_usuar = SAPac' +
        'ientes.tp_ident_usuar'
      
        #9#9#9'AND SAAdmisiones.nr_ident_usuar = SAPacientes.nr_ident_usuar ' +
        ')'
      
        ' inner join Comunes.dbo.SEAreas AS A on ( CREncCargos.Empresa_Pr' +
        'oducto = A.Empresa'
      #9#9#9'AND CREncCargos.Area_Producto = A.Codigo )'
      
        ' left outer join Comunes.dbo.SEAreas AS B on ( CREncCargos.Empre' +
        'sa_Solicita = B.Empresa'
      ' AND CREncCargos.Area_Solicita = B.Codigo )'
      'WHERE CREncCargos.No_Cargo = :nofact'
      'ORDER BY crenccargos.no_cargo,agrupacion'
      '')
    Left = 48
  end
  object ADOTable1: TADOTable
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    TableName = 'INConsecFacturas'
    Left = 128
  end
end
