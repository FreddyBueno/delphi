object FrmReprogramar: TFrmReprogramar
  Left = 357
  Top = 311
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Reprogramar cita'
  ClientHeight = 512
  ClientWidth = 599
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object mxOutlookBar1: TmxOutlookBar
    Left = 0
    Top = 0
    Width = 599
    Height = 512
    ActiveHeader = Header1
    Caption = 'mxOutlookBar'
    Align = alClient
    BorderStyle = bsSingle
    ButtonDown = True
    Color = clBtnFace
    CommonStyle = True
    HeaderHeight = 22
    HeaderSettings.ButtonFont.Charset = DEFAULT_CHARSET
    HeaderSettings.ButtonFont.Color = clWindowText
    HeaderSettings.ButtonFont.Height = -11
    HeaderSettings.ButtonFont.Name = 'MS Sans Serif'
    HeaderSettings.ButtonFont.Style = []
    HeaderSettings.HeaderColor = clBtnFace
    HeaderSettings.HeaderFont.Charset = DEFAULT_CHARSET
    HeaderSettings.HeaderFont.Color = clGray
    HeaderSettings.HeaderFont.Height = -13
    HeaderSettings.HeaderFont.Name = 'MS Sans Serif'
    HeaderSettings.HeaderFont.Style = [fsBold]
    HeaderSettings.HighlightFont.Charset = DEFAULT_CHARSET
    HeaderSettings.HighlightFont.Color = clGray
    HeaderSettings.HighlightFont.Height = -13
    HeaderSettings.HighlightFont.Name = 'MS Sans Serif'
    HeaderSettings.HighlightFont.Style = [fsBold]
    HeaderSettings.KeySupport = False
    HeaderSettings.LargeWidth = 60
    HeaderSettings.LargeHeight = 60
    HeaderSettings.SmallHeight = 20
    HeaderSettings.ViewStyle = vsNormal
    HeaderSettings.XPSettings.Border = clNavy
    HeaderSettings.XPSettings.Background = 14199984
    HeaderSettings.XPSettings.ButtonShadow = True
    HeaderSettings.XPSettings.Shadow = clBlack
    TabStop = True
    TabOrder = 0
    Version = '1.55'
    ExplicitLeft = 40
    ExplicitWidth = 559
    ExplicitHeight = 473
    AlignInfo = 'alClient'
    object Header1: TmxOutlookBarHeader
      Left = 0
      Top = 0
      Width = 595
      Height = 508
      AutoSort = True
      Caption = 'Opciones para reprogramar citas'
      Color = clGray
      CommonStyle = True
      FirstButtonTop = 5
      Gradient.BackStyle = bsGradient
      Gradient.StartColor = 15440144
      Gradient.EndColor = 15259317
      HeaderSettings.ButtonFont.Charset = DEFAULT_CHARSET
      HeaderSettings.ButtonFont.Color = clWindowText
      HeaderSettings.ButtonFont.Height = -11
      HeaderSettings.ButtonFont.Name = 'MS Sans Serif'
      HeaderSettings.ButtonFont.Style = []
      HeaderSettings.HeaderColor = clBtnFace
      HeaderSettings.HeaderFont.Charset = DEFAULT_CHARSET
      HeaderSettings.HeaderFont.Color = clWindowText
      HeaderSettings.HeaderFont.Height = -11
      HeaderSettings.HeaderFont.Name = 'MS Sans Serif'
      HeaderSettings.HeaderFont.Style = []
      HeaderSettings.HighlightFont.Charset = DEFAULT_CHARSET
      HeaderSettings.HighlightFont.Color = clWindowText
      HeaderSettings.HighlightFont.Height = -11
      HeaderSettings.HighlightFont.Name = 'MS Sans Serif'
      HeaderSettings.HighlightFont.Style = []
      HeaderSettings.KeySupport = False
      HeaderSettings.LargeWidth = 60
      HeaderSettings.LargeHeight = 60
      HeaderSettings.SmallHeight = 20
      HeaderSettings.ViewStyle = vsNormal
      HeaderSettings.XPSettings.Border = clNavy
      HeaderSettings.XPSettings.Background = 14199984
      HeaderSettings.XPSettings.ButtonShadow = True
      HeaderSettings.XPSettings.Shadow = clBlack
      HeaderIndex = 0
      TabStop = True
      object Label1: TLabel
        Left = 286
        Top = 368
        Width = 39
        Height = 16
        Caption = 'Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 468
        Top = 370
        Width = 58
        Height = 16
        Caption = 'Tiempo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 11
        Top = 32
        Width = 178
        Height = 16
        Caption = 'Profesionales de la salud'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 14
        Top = 221
        Width = 44
        Height = 16
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 285
        Top = 221
        Width = 110
        Height = 16
        Caption = 'Observaciones '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label15: TLabel
        Left = 284
        Top = 400
        Width = 117
        Height = 16
        Caption = 'Tipo de consulta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object mxCalendar1: TmxCalendar
        Left = 12
        Top = 239
        Width = 264
        Height = 254
        Cursor = crDefault
        Version = '2.11'
        BevelOuter = bvLowered
        BorderWidth = 1
        TabOrder = 0
        OnClick = mxCalendar1Click
        Year = 2009
        Month = 4
        Day = 25
        DateFormat = 'dd.mm.yyyy'
        DayColor = clYellow
        WeekEndColor = clAqua
        SelectedColor = clNavy
        DayNameColor = 16744448
        WeekColor = 16744448
        TodayColor = 4227327
        IndirectColor = clBtnFace
        HeaderColor = clBtnFace
        FooterColor = clBtnFace
        Options = [coFlatButtons, coMonthButtonVisible, coShowDateLabel, coShowFooter, coShowNextMonth, coShowPreviousMonth, coShowHeader, coShowWeekDays, coShowWeeks, coTransparentButtons, coTodayButtonVisible, csUseWeekEndColor, csUseWeekEndFont, coYearButtonVisible]
        Messages.Hints.NextMonth = 'Go to next month'
        Messages.Hints.PreviousMonth = 'Go to previous month'
        Messages.Hints.NextYear = 'Go to next year'
        Messages.Hints.PreviousYear = 'Go to previous year'
        Messages.Hints.TodayButton = 'Set date to today'
        Messages.Hints.Today = 'This date is today'
        Messages.Hints.ClearButton = 'Clear date selection'
        Messages.Week = 'CW'
        Messages.Sunday = 'Dom'
        Messages.Monday = 'Lun'
        Messages.Tuesday = 'Mar'
        Messages.Wednesday = 'Mi'#233
        Messages.Thursday = 'Jue'
        Messages.Friday = 'Vie'
        Messages.Saturday = 'S'#225'b'
        Messages.January = 'Enero'
        Messages.February = 'Febrero'
        Messages.March = 'Marzo'
        Messages.April = 'Abril'
        Messages.May = 'Mayo'
        Messages.June = 'Junio'
        Messages.July = 'Julio'
        Messages.August = 'Agosto'
        Messages.September = 'Septiembre'
        Messages.October = 'Octubre'
        Messages.November = 'Noviembre'
        Messages.December = 'Diciembre'
        SelectedFont.Charset = DEFAULT_CHARSET
        SelectedFont.Color = clWhite
        SelectedFont.Height = -11
        SelectedFont.Name = 'MS Sans Serif'
        SelectedFont.Style = []
        DayFont.Charset = DEFAULT_CHARSET
        DayFont.Color = clWindowText
        DayFont.Height = -11
        DayFont.Name = 'MS Sans Serif'
        DayFont.Style = []
        TodayFont.Charset = DEFAULT_CHARSET
        TodayFont.Color = clWindowText
        TodayFont.Height = -11
        TodayFont.Name = 'MS Sans Serif'
        TodayFont.Style = []
        WeeksFont.Charset = DEFAULT_CHARSET
        WeeksFont.Color = clWhite
        WeeksFont.Height = -11
        WeeksFont.Name = 'MS Sans Serif'
        WeeksFont.Style = []
        WeekEndFont.Charset = DEFAULT_CHARSET
        WeekEndFont.Color = clBlack
        WeekEndFont.Height = -11
        WeekEndFont.Name = 'MS Sans Serif'
        WeekEndFont.Style = []
        DateLabelFont.Charset = DEFAULT_CHARSET
        DateLabelFont.Color = clWindowText
        DateLabelFont.Height = -11
        DateLabelFont.Name = 'MS Sans Serif'
        DateLabelFont.Style = [fsBold]
        WeekDaysFont.Charset = DEFAULT_CHARSET
        WeekDaysFont.Color = clWhite
        WeekDaysFont.Height = -11
        WeekDaysFont.Name = 'MS Sans Serif'
        WeekDaysFont.Style = []
        IndirectFont.Charset = DEFAULT_CHARSET
        IndirectFont.Color = clWindowText
        IndirectFont.Height = -11
        IndirectFont.Name = 'MS Sans Serif'
        IndirectFont.Style = []
      end
      object DateTimePicker2: TDateTimePicker
        Left = 326
        Top = 364
        Width = 96
        Height = 25
        Date = 38863.511934675920000000
        Time = 38863.511934675920000000
        Kind = dtkTime
        TabOrder = 1
      end
      object EditTiempo: TEdit
        Left = 528
        Top = 367
        Width = 41
        Height = 21
        TabOrder = 2
        Text = '15'
      end
      object UpDown1: TUpDown
        Left = 569
        Top = 367
        Width = 15
        Height = 21
        Associate = EditTiempo
        Position = 15
        TabOrder = 3
      end
      object MmObservaciones: TMemo
        Left = 285
        Top = 238
        Width = 298
        Height = 120
        TabOrder = 4
      end
      object BtnAceptar: TJvBitBtn
        Left = 287
        Top = 452
        Width = 144
        Height = 42
        Caption = '&Aceptar'
        ModalResult = 1
        TabOrder = 5
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object BtnCancelar: TJvBitBtn
        Left = 443
        Top = 452
        Width = 144
        Height = 42
        Caption = '&Cancelar'
        ModalResult = 2
        TabOrder = 6
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object SGMedicos: TStringGrid
        Left = 12
        Top = 50
        Width = 570
        Height = 159
        ColCount = 3
        DefaultRowHeight = 17
        Enabled = False
        FixedCols = 0
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
        TabOrder = 7
        ColWidths = (
          79
          128
          383)
      end
      object BtnCambiar: TJvBitBtn
        Left = 470
        Top = 212
        Width = 112
        Height = 21
        Caption = 'Cambiar profesional'
        TabOrder = 8
        OnClick = BtnCambiarClick
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object CBTiposCitas: TComboBox
        Left = 286
        Top = 416
        Width = 299
        Height = 21
        Style = csDropDownList
        TabOrder = 9
      end
    end
  end
end
