object FormGrabaRIPS: TFormGrabaRIPS
  Left = 189
  Top = 51
  BorderStyle = bsSingle
  Caption = 'Control de Rips'
  ClientHeight = 552
  ClientWidth = 1025
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1025
    Height = 129
    Align = alTop
    TabOrder = 0
    object JvSplitter1: TJvSplitter
      Left = 460
      Top = 1
      Width = 5
      Height = 127
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 459
      Height = 127
      Align = alLeft
      TabOrder = 0
      object JvPageControl1: TJvPageControl
        Left = 1
        Top = 19
        Width = 457
        Height = 107
        ActivePage = TabSheet14
        Align = alClient
        TabOrder = 0
        object TabSheet14: TTabSheet
          Caption = 'Por cliente'
          ImageIndex = 1
          object JvGradient2: TJvGradient
            Left = 0
            Top = 0
            Width = 449
            Height = 79
            Style = grVertical
            StartColor = 15440144
            EndColor = 15259317
            Steps = 30
          end
          object Label11: TLabel
            Left = 3
            Top = 5
            Width = 92
            Height = 13
            Caption = 'Empresa/Conv.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object JvBitBtn2: TJvBitBtn
            Left = 333
            Top = 51
            Width = 113
            Height = 25
            Caption = 'Buscar facturas'
            TabOrder = 0
            OnClick = JvBitBtn2Click
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'MS Sans Serif'
            HotTrackFont.Style = []
          end
          object DBLookupComboBox11: TDBLookupComboBox
            Left = 3
            Top = 24
            Width = 443
            Height = 21
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'key2'
            ListField = 'Descripcion'
            ListSource = DatamoduloAdmision.DTSConvenios
            ParentFont = False
            TabOrder = 1
          end
          object CheckBox1: TCheckBox
            Left = 10
            Top = 51
            Width = 231
            Height = 17
            Caption = 'Consolidar todos los convenios del Cliente'
            Enabled = False
            TabOrder = 2
          end
        end
        object TabSheet15: TTabSheet
          Caption = 'Periodo de tiempo'
          ImageIndex = 2
          object JvGradient3: TJvGradient
            Left = 0
            Top = 0
            Width = 449
            Height = 79
            Style = grVertical
            StartColor = 15440144
            EndColor = 15259317
            Steps = 30
          end
          object JvLabel7: TJvLabel
            Left = 8
            Top = 9
            Width = 39
            Height = 13
            Caption = 'Desde'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'MS Sans Serif'
            HotTrackFont.Style = []
          end
          object JvLabel8: TJvLabel
            Left = 228
            Top = 9
            Width = 36
            Height = 13
            Caption = 'Hasta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'MS Sans Serif'
            HotTrackFont.Style = []
          end
          object DTPDesde: TJvDateTimePicker
            Left = 8
            Top = 25
            Width = 209
            Height = 21
            Date = 40045.765657905090000000
            Time = 40045.765657905090000000
            DateFormat = dfLong
            TabOrder = 0
            DropDownDate = 40045.000000000000000000
            NullText = '(none)'
          end
          object DTPHasta: TJvDateTimePicker
            Left = 228
            Top = 25
            Width = 209
            Height = 21
            Date = 40045.765715057870000000
            Time = 40045.765715057870000000
            DateFormat = dfLong
            TabOrder = 1
            DropDownDate = 40045.000000000000000000
            NullText = '(none)'
          end
          object JvBitBtn1: TJvBitBtn
            Left = 291
            Top = 49
            Width = 145
            Height = 25
            Caption = 'Buscar facturas'
            TabOrder = 2
            OnClick = JvBitBtn1Click
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'MS Sans Serif'
            HotTrackFont.Style = []
          end
        end
      end
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 457
        Height = 18
        Align = alTop
        Caption = 'B'#250'squedas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object Panel5: TPanel
      Left = 465
      Top = 1
      Width = 559
      Height = 127
      Align = alClient
      TabOrder = 1
      object JvGradient4: TJvGradient
        Left = 1
        Top = 18
        Width = 557
        Height = 108
        Style = grVertical
        StartColor = 15440144
        EndColor = 15259317
        Steps = 30
        ExplicitWidth = 560
      end
      object JvLabel1: TJvLabel
        Left = 27
        Top = 67
        Width = 50
        Height = 13
        Caption = 'Nombre:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object JvLabel9: TJvLabel
        Left = 27
        Top = 33
        Width = 71
        Height = 13
        Caption = 'Documento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object JvLabel3: TJvLabel
        Left = 27
        Top = 100
        Width = 61
        Height = 13
        Caption = 'Direcci'#243'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object JvLabel5: TJvLabel
        Left = 334
        Top = 100
        Width = 57
        Height = 13
        Caption = 'Tel'#233'fono:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object JvLabel12: TJvLabel
        Left = 355
        Top = 33
        Width = 46
        Height = 13
        Caption = 'Codigo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object Panel7: TPanel
        Left = 1
        Top = 1
        Width = 557
        Height = 17
        Align = alTop
        Caption = 'Informaci'#243'n del cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object EditNombre: TJvEdit
        Left = 99
        Top = 63
        Width = 433
        Height = 21
        TabStop = False
        ClipboardCommands = [caCopy]
        CharCase = ecUpperCase
        ReadOnly = True
        TabOrder = 1
      end
      object EditDocumento: TJvEdit
        Left = 99
        Top = 29
        Width = 225
        Height = 21
        TabStop = False
        ClipboardCommands = [caCopy]
        CharCase = ecUpperCase
        ReadOnly = True
        TabOrder = 2
      end
      object EditDireccion: TJvEdit
        Left = 99
        Top = 96
        Width = 231
        Height = 21
        TabStop = False
        ClipboardCommands = [caCopy]
        CharCase = ecUpperCase
        ReadOnly = True
        TabOrder = 3
      end
      object EditTelefono: TJvEdit
        Left = 390
        Top = 96
        Width = 141
        Height = 21
        TabStop = False
        ClipboardCommands = [caCopy]
        CharCase = ecUpperCase
        ReadOnly = True
        TabOrder = 4
      end
      object EditCodigoEPS: TJvEdit
        Left = 411
        Top = 29
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 5
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 129
    Width = 1025
    Height = 32
    Align = alTop
    TabOrder = 1
    object JvGradient1: TJvGradient
      Left = 1
      Top = 1
      Width = 1023
      Height = 30
      Style = grVertical
      StartColor = 15440144
      EndColor = 15259317
      Steps = 30
      ExplicitWidth = 1026
    end
    object LblDesde: TJvLabel
      Left = 463
      Top = 2
      Width = 10
      Height = 29
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object LblHasta: TJvLabel
      Left = 864
      Top = 1
      Width = 10
      Height = 29
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object BtnDesde: TBitBtn
      Left = 302
      Top = 3
      Width = 145
      Height = 25
      Caption = 'Desde >>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtnDesdeClick
    end
    object BtnHasta: TBitBtn
      Left = 711
      Top = 3
      Width = 145
      Height = 25
      Caption = 'Hasta >>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BtnHastaClick
    end
    object ChkLista: TJvCheckBox
      Left = 16
      Top = 8
      Width = 217
      Height = 17
      Caption = 'Listar todas las facturas'
      Color = 13405002
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      OnClick = ChkListaClick
      LinkedControls = <>
      AutoSize = False
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 161
    Width = 1025
    Height = 312
    ActivePage = TabSheet1
    Align = alClient
    MultiLine = True
    TabOrder = 2
    TabPosition = tpBottom
    object TabSheet1: TTabSheet
      Caption = 'CT'
      object SGCt: TJvStringGrid
        Left = 0
        Top = 0
        Width = 1017
        Height = 286
        Align = alClient
        ColCount = 4
        DefaultRowHeight = 17
        FixedCols = 0
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
        TabOrder = 0
        Alignment = taLeftJustify
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = []
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'AF'
      ImageIndex = 1
      object SGAf: TJvStringGrid
        Left = 0
        Top = 0
        Width = 1017
        Height = 286
        Align = alClient
        ColCount = 15
        DefaultRowHeight = 17
        FixedCols = 0
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
        TabOrder = 0
        Alignment = taLeftJustify
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = []
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'US'
      ImageIndex = 2
      object SGUs: TJvStringGrid
        Left = 0
        Top = 0
        Width = 1017
        Height = 286
        Align = alClient
        ColCount = 11
        DefaultRowHeight = 17
        FixedCols = 0
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
        TabOrder = 0
        Alignment = taLeftJustify
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = []
        ColWidths = (
          90
          82
          86
          64
          64
          64
          64
          64
          64
          64
          64)
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'AD'
      ImageIndex = 3
      object SGAd: TJvStringGrid
        Left = 0
        Top = 0
        Width = 1017
        Height = 286
        Align = alClient
        ColCount = 6
        DefaultRowHeight = 17
        FixedCols = 0
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
        TabOrder = 0
        Alignment = taLeftJustify
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = []
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'AC'
      ImageIndex = 4
      object SGAc: TJvStringGrid
        Left = 0
        Top = 0
        Width = 1017
        Height = 286
        Align = alClient
        ColCount = 17
        DefaultRowHeight = 17
        FixedCols = 0
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
        TabOrder = 0
        Alignment = taLeftJustify
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = []
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'AP'
      ImageIndex = 5
      object SGAp: TJvStringGrid
        Left = 0
        Top = 0
        Width = 1017
        Height = 286
        Align = alClient
        ColCount = 15
        DefaultRowHeight = 17
        FixedCols = 0
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
        TabOrder = 0
        Alignment = taLeftJustify
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = []
        ColWidths = (
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          103)
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'AH'
      ImageIndex = 6
      object SGAh: TJvStringGrid
        Left = 0
        Top = 0
        Width = 1017
        Height = 286
        Align = alClient
        ColCount = 19
        DefaultRowHeight = 17
        FixedCols = 0
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
        TabOrder = 0
        Alignment = taLeftJustify
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = []
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'AU'
      ImageIndex = 7
      object SGAu: TJvStringGrid
        Left = 0
        Top = 0
        Width = 1017
        Height = 286
        Align = alClient
        ColCount = 17
        DefaultRowHeight = 17
        FixedCols = 0
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
        TabOrder = 0
        Alignment = taLeftJustify
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = []
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'AN'
      ImageIndex = 8
      object SGAn: TJvStringGrid
        Left = 0
        Top = 0
        Width = 1017
        Height = 286
        Align = alClient
        ColCount = 14
        DefaultRowHeight = 17
        FixedCols = 0
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
        TabOrder = 0
        Alignment = taLeftJustify
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = []
      end
    end
    object TabSheet10: TTabSheet
      Caption = 'AM'
      ImageIndex = 9
      object SGAm: TJvStringGrid
        Left = 0
        Top = 0
        Width = 1017
        Height = 286
        Align = alClient
        ColCount = 14
        DefaultRowHeight = 17
        FixedCols = 0
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
        TabOrder = 0
        Alignment = taLeftJustify
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = []
        ColWidths = (
          101
          111
          66
          128
          127
          118
          83
          258
          128
          116
          98
          82
          108
          125)
      end
    end
    object TabSheet11: TTabSheet
      Caption = 'AT'
      ImageIndex = 10
      object SGAt: TJvStringGrid
        Left = 0
        Top = 0
        Width = 1017
        Height = 286
        Align = alClient
        ColCount = 12
        DefaultRowHeight = 17
        FixedCols = 0
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
        TabOrder = 0
        Alignment = taLeftJustify
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = []
        ColWidths = (
          75
          88
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64)
      end
    end
    object TabSheet12: TTabSheet
      Caption = 'Errores'
      ImageIndex = 11
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 1017
        Height = 286
        Align = alClient
        TabOrder = 0
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 473
    Width = 1025
    Height = 79
    Align = alBottom
    TabOrder = 3
    object JvGradient5: TJvGradient
      Left = 1
      Top = 1
      Width = 1023
      Height = 77
      Style = grVertical
      StartColor = 15440144
      EndColor = 15259317
      Steps = 30
      ExplicitTop = 6
      ExplicitWidth = 1026
      ExplicitHeight = 61
    end
    object JvLabel10: TJvLabel
      Left = 16
      Top = 14
      Width = 55
      Height = 13
      Caption = 'Empresa:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object JvLabel11: TJvLabel
      Left = 16
      Top = 41
      Width = 71
      Height = 13
      Caption = 'Radicaci'#243'n:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object JvLabel13: TJvLabel
      Left = 360
      Top = 7
      Width = 55
      Height = 13
      Caption = 'Total AF:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object JvLabel14: TJvLabel
      Left = 360
      Top = 30
      Width = 57
      Height = 13
      Caption = 'Total AD:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object JvLabel15: TJvLabel
      Left = 360
      Top = 53
      Width = 56
      Height = 13
      Caption = 'Total AC:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object Edit1: TEdit
      Left = 93
      Top = 10
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object BtnCargar: TJvBitBtn
      Left = 569
      Top = 19
      Width = 136
      Height = 39
      Caption = 'Cargar Datos'
      TabOrder = 1
      OnClick = BtnCargarClick
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object BtnGenerar: TJvBitBtn
      Left = 711
      Top = 17
      Width = 136
      Height = 41
      Caption = 'Generar RIPS'
      TabOrder = 2
      OnClick = BtnGenerarClick
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object JvEdit2: TJvEdit
      Left = 93
      Top = 37
      Width = 121
      Height = 21
      MaxLength = 6
      TabOrder = 3
      Text = '000001'
    end
    object JvEdit3: TJvEdit
      Left = 223
      Top = 37
      Width = 121
      Height = 21
      ClipboardCommands = [caCopy]
      ReadOnly = True
      TabOrder = 4
    end
    object JvEdit1: TJvEdit
      Left = 421
      Top = 3
      Width = 121
      Height = 21
      ClipboardCommands = [caCopy]
      ReadOnly = True
      TabOrder = 5
    end
    object JvEdit4: TJvEdit
      Left = 421
      Top = 26
      Width = 121
      Height = 21
      ClipboardCommands = [caCopy]
      ReadOnly = True
      TabOrder = 6
    end
    object JvEdit5: TJvEdit
      Left = 421
      Top = 49
      Width = 121
      Height = 21
      ClipboardCommands = [caCopy]
      ReadOnly = True
      TabOrder = 7
    end
    object Drive: TDriveComboBox
      Left = 853
      Top = 24
      Width = 169
      Height = 19
      TabOrder = 8
    end
  end
  object PnlDesde: TPanel
    Left = 302
    Top = 156
    Width = 237
    Height = 0
    TabOrder = 4
    object JvLabel2: TJvLabel
      Left = 1
      Top = 1
      Width = 235
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'Seleccione un numero de factura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
      ExplicitWidth = 191
    end
    object SGDesde: TJvStringGrid
      Left = 1
      Top = 14
      Width = 235
      Height = 53
      Align = alClient
      ColCount = 2
      DefaultRowHeight = 17
      FixedCols = 0
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
      TabOrder = 0
      OnDblClick = SGDesdeDblClick
      Alignment = taLeftJustify
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = []
      ColWidths = (
        9
        163)
    end
  end
  object PnlHasta: TPanel
    Left = 710
    Top = 157
    Width = 238
    Height = 0
    TabOrder = 5
    object JvLabel4: TJvLabel
      Left = 1
      Top = 1
      Width = 236
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'Seleccione un numero de factura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
      ExplicitWidth = 191
    end
    object SGHasta: TJvStringGrid
      Left = 1
      Top = 14
      Width = 236
      Height = 482
      Align = alClient
      ColCount = 2
      DefaultRowHeight = 17
      FixedCols = 0
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
      TabOrder = 0
      OnDblClick = SGHastaDblClick
      Alignment = taLeftJustify
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = []
      ColWidths = (
        10
        170)
    end
  end
  object QryGeneral: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    Left = 32
    Top = 216
  end
  object QryApoyo: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    Left = 32
    Top = 272
  end
  object QryApoyo1: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    Left = 32
    Top = 336
  end
  object QryApoyo2: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    Left = 32
    Top = 392
  end
  object ADOQPaquete: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    Left = 136
    Top = 216
  end
end
