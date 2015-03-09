object FrmBuscaCitasCumplidas: TFrmBuscaCitasCumplidas
  Left = 424
  Top = 269
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 239
  ClientWidth = 510
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 510
    Height = 239
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object JvGradient1: TJvGradient
        Left = 0
        Top = 0
        Width = 502
        Height = 178
        Style = grVertical
        StartColor = 15440144
        EndColor = 15259317
        Steps = 19
      end
      object JvGradient3: TJvGradient
        Left = 0
        Top = 0
        Width = 502
        Height = 178
        Style = grVertical
        StartColor = 15440144
        EndColor = 15259317
        Steps = 19
      end
      object JvLabel1: TJvLabel
        Left = 8
        Top = 78
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
      object JvLabel2: TJvLabel
        Left = 264
        Top = 78
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
      object JvLabel3: TJvLabel
        Left = 8
        Top = 8
        Width = 231
        Height = 16
        Caption = 'B'#250'squeda por periodo de tiempo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
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
      object Bevel1: TBevel
        Left = 248
        Top = 16
        Width = 241
        Height = 9
        Shape = bsTopLine
      end
      object JvLabel4: TJvLabel
        Left = 8
        Top = 46
        Width = 116
        Height = 13
        Caption = 'N'#250'mero documento:'
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
      object Panel1: TPanel
        Left = 0
        Top = 178
        Width = 502
        Height = 51
        Align = alBottom
        TabOrder = 0
        object JvGradient2: TJvGradient
          Left = 1
          Top = 1
          Width = 500
          Height = 49
          Style = grVertical
          StartColor = 15440144
          EndColor = 15259317
          Steps = 19
        end
        object BtnAceptar: TJvBitBtn
          Left = 110
          Top = 12
          Width = 121
          Height = 32
          Caption = '&Aceptar'
          TabOrder = 0
          OnClick = BtnAceptarClick
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object BtnCancelar: TJvBitBtn
          Left = 259
          Top = 12
          Width = 121
          Height = 32
          Caption = '&Cancelar'
          TabOrder = 1
          OnClick = BtnCancelarClick
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
      end
      object JvDateTimePicker1: TJvDateTimePicker
        Left = 8
        Top = 94
        Width = 225
        Height = 21
        Date = 40037.411606435170000000
        Time = 40037.411606435170000000
        DateFormat = dfLong
        TabOrder = 1
        DropDownDate = 40037.000000000000000000
        NullText = '(none)'
      end
      object JvDateTimePicker2: TJvDateTimePicker
        Left = 264
        Top = 94
        Width = 225
        Height = 21
        Date = 40037.411796504630000000
        Time = 40037.411796504630000000
        DateFormat = dfLong
        TabOrder = 2
        DropDownDate = 40037.000000000000000000
        NullText = '(none)'
      end
      object EditNumDoc: TJvEdit
        Left = 128
        Top = 42
        Width = 361
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 3
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object JvGradient5: TJvGradient
        Left = 0
        Top = 0
        Width = 502
        Height = 178
        Style = grVertical
        StartColor = 15440144
        EndColor = 15259317
        Steps = 19
      end
      object JvGradient6: TJvGradient
        Left = 0
        Top = 0
        Width = 502
        Height = 178
        Style = grVertical
        StartColor = 15440144
        EndColor = 15259317
        Steps = 19
      end
      object JvLabel5: TJvLabel
        Left = 8
        Top = 38
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
      object JvLabel6: TJvLabel
        Left = 264
        Top = 38
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
      object JvLabel7: TJvLabel
        Left = 8
        Top = 8
        Width = 231
        Height = 16
        Caption = 'B'#250'squeda por periodo de tiempo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
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
      object Bevel2: TBevel
        Left = 248
        Top = 16
        Width = 241
        Height = 9
        Shape = bsTopLine
      end
      object Panel2: TPanel
        Left = 0
        Top = 178
        Width = 502
        Height = 51
        Align = alBottom
        TabOrder = 0
        object JvGradient4: TJvGradient
          Left = 1
          Top = 1
          Width = 500
          Height = 49
          Style = grVertical
          StartColor = 15440144
          EndColor = 15259317
          Steps = 19
        end
        object JvBitBtn1: TJvBitBtn
          Left = 110
          Top = 12
          Width = 121
          Height = 32
          Caption = '&Aceptar'
          TabOrder = 0
          OnClick = JvBitBtn1Click
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object JvBitBtn2: TJvBitBtn
          Left = 259
          Top = 12
          Width = 121
          Height = 32
          Caption = '&Cancelar'
          TabOrder = 1
          OnClick = BtnCancelarClick
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
      end
      object JvDateTimePicker3: TJvDateTimePicker
        Left = 8
        Top = 54
        Width = 225
        Height = 21
        Date = 40037.411606435170000000
        Time = 40037.411606435170000000
        DateFormat = dfLong
        TabOrder = 1
        DropDownDate = 40037.000000000000000000
        NullText = '(none)'
      end
      object JvDateTimePicker4: TJvDateTimePicker
        Left = 264
        Top = 54
        Width = 225
        Height = 21
        Date = 40037.411796504630000000
        Time = 40037.411796504630000000
        DateFormat = dfLong
        TabOrder = 2
        DropDownDate = 40037.000000000000000000
        NullText = '(none)'
      end
      object Panel3: TPanel
        Left = 8
        Top = 86
        Width = 481
        Height = 41
        TabOrder = 3
        object RBActivas: TRadioButton
          Left = 56
          Top = 8
          Width = 65
          Height = 17
          Caption = 'Activas'
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object RBCanceladas: TRadioButton
          Left = 184
          Top = 8
          Width = 81
          Height = 17
          Caption = 'Canceladas'
          TabOrder = 1
        end
        object RBTodas: TRadioButton
          Left = 312
          Top = 8
          Width = 65
          Height = 17
          Caption = 'Todas'
          TabOrder = 2
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
      TabVisible = False
      OnShow = TabSheet3Show
      object JvGradient8: TJvGradient
        Left = 0
        Top = 0
        Width = 502
        Height = 178
        Style = grVertical
        StartColor = 15440144
        EndColor = 15259317
        Steps = 19
      end
      object JvLabel8: TJvLabel
        Left = 8
        Top = 8
        Width = 142
        Height = 16
        Caption = 'Parametros de citas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
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
      object Bevel3: TBevel
        Left = 150
        Top = 16
        Width = 336
        Height = 9
        Shape = bsTopLine
      end
      object JvLabel9: TJvLabel
        Left = 16
        Top = 48
        Width = 104
        Height = 16
        Caption = 'Hora inicio d'#237'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
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
      object JvLabel10: TJvLabel
        Left = 256
        Top = 48
        Width = 83
        Height = 16
        Caption = 'Hora fin d'#237'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
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
        Left = 8
        Top = 102
        Width = 128
        Height = 13
        Caption = 'Duraci'#243'n de las Citas:'
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
        Left = 8
        Top = 126
        Width = 110
        Height = 13
        Caption = 'Minutos por Horas:'
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
        Left = 8
        Top = 150
        Width = 90
        Height = 13
        Caption = 'Programar por :'
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
      object Panel4: TPanel
        Left = 0
        Top = 178
        Width = 502
        Height = 51
        Align = alBottom
        TabOrder = 0
        object JvGradient7: TJvGradient
          Left = 1
          Top = 1
          Width = 500
          Height = 49
          Style = grVertical
          StartColor = 15440144
          EndColor = 15259317
          Steps = 19
        end
        object JvBitBtn3: TJvBitBtn
          Left = 110
          Top = 12
          Width = 121
          Height = 32
          Caption = '&Aceptar'
          TabOrder = 0
          OnClick = JvBitBtn3Click
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object JvBitBtn4: TJvBitBtn
          Left = 259
          Top = 12
          Width = 121
          Height = 32
          Caption = '&Cancelar'
          TabOrder = 1
          OnClick = BtnCancelarClick
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
      end
      object DTP1: TDateTimePicker
        Left = 16
        Top = 64
        Width = 185
        Height = 21
        Date = 40182.783348900460000000
        Time = 40182.783348900460000000
        Kind = dtkTime
        TabOrder = 1
      end
      object DTP2: TDateTimePicker
        Left = 256
        Top = 64
        Width = 186
        Height = 21
        Date = 40182.783394074070000000
        Time = 40182.783394074070000000
        Kind = dtkTime
        TabOrder = 2
      end
      object JvEdit1: TJvEdit
        Left = 136
        Top = 98
        Width = 97
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 3
        Text = '0'
      end
      object JvEdit2: TJvEdit
        Left = 136
        Top = 122
        Width = 97
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 4
        Text = '0'
      end
      object ComboBox1: TComboBox
        Left = 136
        Top = 149
        Width = 97
        Height = 21
        TabOrder = 5
        Text = 'ComboBox1'
        Items.Strings = (
          '1-Por Profesional'
          '2-Por Ubicaci'#243'n')
      end
    end
  end
  object QryGeneral: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    Left = 236
    Top = 38
  end
end
