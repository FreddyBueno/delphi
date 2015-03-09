object FormPyGBimestre: TFormPyGBimestre
  Left = 356
  Top = 144
  BorderStyle = bsDialog
  Caption = 'P y G por Bimestre'
  ClientHeight = 223
  ClientWidth = 486
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
    Left = -46
    Top = 144
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
      Top = 219
      Width = 740
      Height = 66
      AlignToBottom = False
      BeforePrint = QRBand3BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        174.625000000000000000
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
      object QRLabel2: TQRLabel
        Left = 3
        Top = 11
        Width = 234
        Height = 20
        Size.Values = (
          52.916666666666670000
          7.937500000000000000
          29.104166666666670000
          619.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Activos - Pasivos - Patrimonio:'
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
      object QRLabel5: TQRLabel
        Left = -2
        Top = 37
        Width = 239
        Height = 20
        Size.Values = (
          52.916666666666670000
          -5.291666666666667000
          97.895833333333340000
          632.354166666666800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Utilidad o Perdida del Ejercicio:'
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
      object QRLabel6: TQRLabel
        Left = 496
        Top = 11
        Width = 240
        Height = 20
        Size.Values = (
          52.916666666666660000
          1312.333333333333000000
          29.104166666666670000
          635.000000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel6'
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
      object QRLabel7: TQRLabel
        Left = 496
        Top = 37
        Width = 240
        Height = 20
        Size.Values = (
          52.916666666666660000
          1312.333333333333000000
          97.895833333333340000
          635.000000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel7'
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
    object PageHeaderBand1: TQRBand
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
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 576
        Top = 8
        Width = 157
        Height = 19
        Size.Values = (
          50.270833333333330000
          1524.000000000000000000
          21.166666666666670000
          415.395833333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'BALANCE GENERAL'
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
        Height = 17
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          381.000000000000000000
          1955.270833333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel8: TQRLabel
        Left = 647
        Top = 146
        Width = 22
        Height = 11
        Size.Values = (
          29.104166666666670000
          1711.854166666667000000
          386.291666666666700000
          58.208333333333340000)
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
      object QRLabel9: TQRLabel
        Left = 272
        Top = 121
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          719.666666666666800000
          320.145833333333400000
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
        Left = 168
        Top = 121
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          444.500000000000000000
          320.145833333333400000
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
          74.083333333333340000)
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
      object QRDBImage1: TQRDBImage
        Left = 3
        Top = 1
        Width = 230
        Height = 40
        Size.Values = (
          105.833333333333300000
          7.937500000000000000
          2.645833333333333000
          608.541666666666800000)
        XLColumn = 0
        DataField = 'Logo'
        DataSet = DataModule1.ADOQuery1
        Stretch = True
      end
      object QRLabel13: TQRLabel
        Left = 368
        Top = 121
        Width = 81
        Height = 17
        Size.Values = (
          44.979166666666670000
          973.666666666666900000
          320.145833333333400000
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
      object QRLabel14: TQRLabel
        Left = 472
        Top = 121
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          1248.833333333333000000
          320.145833333333400000
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
      Top = 285
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
        Left = 648
        Top = 6
        Width = 81
        Height = 17
        Size.Values = (
          44.979166666666670000
          1714.500000000000000000
          15.875000000000000000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'GemaIPS -2011'
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
      Top = 201
      Width = 740
      Height = 18
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
        47.625000000000000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRLabel4: TQRLabel
        Left = 32
        Top = 0
        Width = 609
        Height = 15
        Size.Values = (
          39.687500000000000000
          84.666666666666680000
          0.000000000000000000
          1611.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 
          '................................................................' +
          '................................................................' +
          '................................................................' +
          '.......................................'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText1: TQRDBText
        Left = 10
        Top = 0
        Width = 17
        Height = 11
        Size.Values = (
          29.104166666666670000
          26.458333333333330000
          0.000000000000000000
          44.979166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'CTA'
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
        Left = 96
        Top = 0
        Width = 42
        Height = 11
        Size.Values = (
          29.104166666666670000
          254.000000000000000000
          0.000000000000000000
          111.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
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
      object QRDBText4: TQRDBText
        Left = 647
        Top = 0
        Width = 90
        Height = 15
        Size.Values = (
          39.687500000000000000
          1711.854166666667000000
          0.000000000000000000
          238.125000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'TotCta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.00;(#,##0.00)'
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 486
    Height = 223
    Align = alClient
    Caption = 'Par'#225'metros del Reporte:'
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 84
      Height = 13
      Caption = 'Periodo de Inicial:'
    end
    object Label2: TLabel
      Left = 16
      Top = 72
      Width = 79
      Height = 13
      Caption = 'Periodo de Final:'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 120
      Top = 29
      Width = 169
      Height = 21
      KeyField = 'Periodo_Proceso'
      ListField = 'Periodo_Proceso'
      ListSource = DataSource1
      TabOrder = 0
    end
    object Button1: TButton
      Left = 332
      Top = 171
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
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 120
      Top = 69
      Width = 169
      Height = 21
      KeyField = 'Periodo_Proceso'
      ListField = 'Periodo_Proceso'
      ListSource = DataSource2
      TabOrder = 2
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'per'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = ''
      end
      item
        Name = 'per2'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = Null
      end>
    SQL.Strings = (
      'SELECT Left(contcuenta.cuenta,1) as tp,'
      '       contcuenta.cuenta as CTA,'
      '       contcuenta.descripcion,'
      '       sum(CONTDetComp.Valor_debito) as vrd,'
      '       sum(CONTDetComp.Valor_credito) as vrc,'
      '       sum(case  Left(contcuenta.cuenta,1) '
      
        #9#9'   when 1 then  (CONTDetComp.Valor_debito  - CONTDetComp.Valor' +
        '_credito)'
      
        #9#9'   when 2 then  (CONTDetComp.Valor_credito - CONTDetComp.Valor' +
        '_debito)'
      
        #9#9'   when 3 then  (CONTDetComp.Valor_credito - CONTDetComp.Valor' +
        '_debito)'
      
        #9#9'   when 4 then  (CONTDetComp.Valor_credito - CONTDetComp.Valor' +
        '_debito)'
      
        #9#9'   when 5 then  (CONTDetComp.Valor_debito  - CONTDetComp.Valor' +
        '_credito)'
      
        #9#9'   when 6 then  (CONTDetComp.Valor_debito  - CONTDetComp.Valor' +
        '_credito)'
      '       End) As TotCta'
      'FROM contcuenta,CONTDetComp,CONTEncComp '
      
        'WHERE (CONTDetComp.Tipo_Comprobante = CONTEncComp.Tipo_Comproban' +
        'te AND'
      
        '       CONTDetComp.Numero_Comprobante = CONTEncComp.Numero_Compr' +
        'obante AND '
      '       CONTDetComp.Empresa = CONTEncComp.Empresa) AND '
      
        '       CONTDetComp.Cuenta like rtrim(contcuenta.cuenta) + '#39'%'#39' AN' +
        'D '
      '       (periodo_proceso >= :per AND'
      '       periodo_proceso <= :per2) AND CONTEncComp.Estado = '#39'G'#39
      'GROUP BY contcuenta.cuenta,contcuenta.descripcion         '
      'ORDER BY CTA')
    Left = 302
    Top = 65
  end
  object ADOQuery3: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM contcierres')
    Left = 296
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery3
    Left = 368
    Top = 8
  end
  object ADOQTot1: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'per1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = '201011'
      end
      item
        Name = 'per2'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end
      item
        Name = 'per3'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      'SELECT      '
      '(SELECT sum(saldo_Debito)- sum(saldo_Credito) '
      'FROM CONTSaldo '
      'WHERE Periodo_Proceso = :per1 AND'
      '      Cuenta = '#39'1'#39') - ('
      '(SELECT sum(saldo_Credito)- sum(saldo_Debito) '
      'FROM CONTSaldo '
      'WHERE Periodo_Proceso = :per2 AND'
      '      Cuenta = '#39'2'#39') +'
      '(SELECT sum(saldo_Credito)- sum(saldo_Debito) '
      'FROM CONTSaldo '
      'WHERE Periodo_Proceso = :per3 AND'
      '      Cuenta = '#39'3'#39') ) as Tot')
    Left = 374
    Top = 65
  end
  object ADOQTot2: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'per1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = Null
      end
      item
        Name = 'per2'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end
      item
        Name = 'per3'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      'SELECT      '
      '(SELECT  sum(saldo_Credito) - sum(saldo_Debito)'
      'FROM CONTSaldo '
      'WHERE Periodo_Proceso = :per1 AND'
      '      Cuenta = '#39'4'#39') -( '
      '(SELECT  sum(saldo_Debito) - sum(saldo_Credito)'
      'FROM CONTSaldo '
      'WHERE Periodo_Proceso = :per2 AND'
      '      Cuenta = '#39'5'#39') +'
      '(SELECT  sum(saldo_Debito) - sum(saldo_Credito)'
      'FROM CONTSaldo '
      'WHERE Periodo_Proceso = :per3 AND'
      '      Cuenta = '#39'6'#39'))  as Tot')
    Left = 438
    Top = 65
  end
  object SQLConnection1: TSQLConnection
    Left = 32
    Top = 160
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM contcierres')
    Left = 120
    Top = 96
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 192
    Top = 96
  end
end
