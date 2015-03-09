object FrmContabFacturacion: TFrmContabFacturacion
  Left = 329
  Top = 114
  BorderStyle = bsSingle
  Caption = 'Contabilizar Movimientos de Facturaci'#243'n'
  ClientHeight = 583
  ClientWidth = 1038
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1038
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 151
      Height = 13
      Caption = 'Fecha y Periodo Contable:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 288
      Top = 16
      Width = 53
      Height = 13
      Caption = 'Empresa:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 928
      Top = 17
      Width = 38
      Height = 13
      Caption = 'Ult. Dia:'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 176
      Top = 13
      Width = 105
      Height = 21
      Date = 38547.518292789350000000
      Time = 38547.518292789350000000
      Enabled = False
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 344
      Top = 14
      Width = 473
      Height = 21
      KeyField = 'Codigo'
      ListField = 'Descripcion_Emp'
      ListSource = DataSource6
      TabOrder = 1
      OnExit = DBLookupComboBox1Exit
    end
    object CheckBox1: TCheckBox
      Left = 824
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Ejecuci'#243'n Diaria.'
      TabOrder = 2
      OnClick = CheckBox1Click
    end
    object Edit9: TEdit
      Left = 971
      Top = 13
      Width = 25
      Height = 21
      Color = cl3DLight
      Enabled = False
      TabOrder = 3
      Text = '0'
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 558
    Width = 1038
    Height = 25
    Align = alBottom
    TabOrder = 1
    object ProgressBar1: TProgressBar
      Left = 1
      Top = 1
      Width = 1036
      Height = 23
      Align = alClient
      TabOrder = 0
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 1038
    Height = 517
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Contabilizaci'#243'n'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1030
        Height = 482
        Align = alClient
        TabOrder = 0
        object Splitter1: TSplitter
          Left = 425
          Top = 1
          Width = 8
          Height = 480
          Beveled = True
          ExplicitHeight = 485
        end
        object GroupBox1: TGroupBox
          Left = 1
          Top = 1
          Width = 424
          Height = 480
          Align = alLeft
          Caption = 'Facturas no Contabilizadas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object DBGrid1: TDBGrid
            Left = 2
            Top = 73
            Width = 420
            Height = 312
            Align = alClient
            Color = clInactiveBorder
            DataSource = DataSource4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnDblClick = DBGrid1DblClick
          end
          object GroupBox3: TGroupBox
            Left = 2
            Top = 15
            Width = 420
            Height = 58
            Align = alTop
            Caption = 'Filtros:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object Label3: TLabel
              Left = 8
              Top = 24
              Width = 28
              Height = 13
              Caption = 'Mes:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 136
              Top = 24
              Width = 27
              Height = 13
              Caption = 'A'#241'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label16: TLabel
              Left = 264
              Top = 24
              Width = 30
              Height = 13
              Caption = 'Fact:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Edit1: TEdit
              Left = 40
              Top = 22
              Width = 89
              Height = 21
              TabOrder = 0
              OnExit = Edit1Exit
            end
            object Edit2: TEdit
              Left = 168
              Top = 22
              Width = 89
              Height = 21
              TabOrder = 1
              OnExit = Edit1Exit
            end
            object Edit7: TEdit
              Left = 296
              Top = 22
              Width = 89
              Height = 21
              TabOrder = 2
              OnExit = Edit1Exit
            end
          end
          object GroupBox4: TGroupBox
            Left = 2
            Top = 385
            Width = 420
            Height = 93
            Align = alBottom
            Caption = 'Totales:'
            TabOrder = 2
            object DBGrid5: TDBGrid
              Left = 2
              Top = 15
              Width = 416
              Height = 76
              Align = alClient
              Color = clInactiveBorder
              DataSource = DataSource7
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              OnDblClick = DBGrid1DblClick
            end
          end
        end
        object Panel3: TPanel
          Left = 433
          Top = 1
          Width = 160
          Height = 480
          Align = alLeft
          TabOrder = 1
          object Panel5: TPanel
            Left = 1
            Top = 1
            Width = 158
            Height = 72
            Align = alTop
            TabOrder = 0
            object SpeedButton3: TSpeedButton
              Left = 5
              Top = 8
              Width = 148
              Height = 25
              Caption = 'Contabilizar'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Century'
              Font.Style = []
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                33333FF3333333333333447333333333333377FFF33333333333744473333333
                333337773FF3333333333444447333333333373F773FF3333333334444447333
                33333373F3773FF3333333744444447333333337F333773FF333333444444444
                733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
                999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
                33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
                333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
                33333777333333333333CC333333333333337733333333333333}
              NumGlyphs = 2
              ParentFont = False
              OnClick = SpeedButton3Click
            end
            object SpeedButton4: TSpeedButton
              Left = 5
              Top = 40
              Width = 148
              Height = 25
              Caption = 'Eliminar Contabilizaci'#243'n'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Century'
              Font.Style = []
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333333FF3333333333333744333333333333F773333333333337
                44473333333333F777F3333333333744444333333333F7733733333333374444
                4433333333F77333733333333744444447333333F7733337F333333744444444
                433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
                9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
                C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
                CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
                CCC333333333333777FF33333333333333CC3333333333333773}
              NumGlyphs = 2
              ParentFont = False
              OnClick = SpeedButton4Click
            end
          end
          object Panel7: TPanel
            Left = 1
            Top = 402
            Width = 158
            Height = 77
            Align = alBottom
            TabOrder = 1
            Visible = False
            object SpeedButton1: TSpeedButton
              Left = 5
              Top = 40
              Width = 148
              Height = 25
              Caption = 'Eliminar Inactivaci'#243'n'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Century'
              Font.Style = []
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333333FF3333333333333744333333333333F773333333333337
                44473333333333F777F3333333333744444333333333F7733733333333374444
                4433333333F77333733333333744444447333333F7733337F333333744444444
                433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
                9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
                C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
                CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
                CCC333333333333777FF33333333333333CC3333333333333773}
              NumGlyphs = 2
              ParentFont = False
              OnClick = SpeedButton1Click
            end
            object SpeedButton5: TSpeedButton
              Left = 5
              Top = 8
              Width = 148
              Height = 25
              Caption = 'Inactivar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Century'
              Font.Style = []
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                33333FF3333333333333447333333333333377FFF33333333333744473333333
                333337773FF3333333333444447333333333373F773FF3333333334444447333
                33333373F3773FF3333333744444447333333337F333773FF333333444444444
                733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
                999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
                33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
                333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
                33333777333333333333CC333333333333337733333333333333}
              NumGlyphs = 2
              ParentFont = False
              OnClick = SpeedButton5Click
            end
          end
          object Panel8: TPanel
            Left = 1
            Top = 73
            Width = 158
            Height = 329
            Align = alClient
            TabOrder = 2
            object DBCtrlGrid1: TDBCtrlGrid
              Left = 1
              Top = 1
              Width = 156
              Height = 327
              Align = alClient
              DataSource = DataSource5
              PanelHeight = 32
              PanelWidth = 139
              TabOrder = 0
              RowCount = 10
              object DBText2: TDBText
                Left = 2
                Top = 1
                Width = 135
                Height = 16
                DataField = 'Primer_Apellido'
                DataSource = DataSource5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '@Arial Unicode MS'
                Font.Style = []
                ParentFont = False
              end
              object DBText3: TDBText
                Left = 3
                Top = 17
                Width = 135
                Height = 15
                Alignment = taRightJustify
                DataField = 'Valor'
                DataSource = DataSource5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '@Arial Unicode MS'
                Font.Style = []
                ParentFont = False
              end
            end
          end
        end
        object Panel6: TPanel
          Left = 593
          Top = 1
          Width = 436
          Height = 480
          Align = alClient
          TabOrder = 2
          object Splitter2: TSplitter
            Left = 1
            Top = 272
            Width = 434
            Height = 9
            Cursor = crVSplit
            Align = alBottom
            Beveled = True
            ExplicitTop = 277
            ExplicitWidth = 436
          end
          object GroupBox2: TGroupBox
            Left = 1
            Top = 1
            Width = 434
            Height = 271
            Align = alClient
            Caption = 'Facturas Contabilizadas:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object GroupBox5: TGroupBox
              Left = 2
              Top = 15
              Width = 430
              Height = 58
              Align = alTop
              Caption = 'Filtros:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              object Label2: TLabel
                Left = 8
                Top = 18
                Width = 28
                Height = 13
                Caption = 'Mes:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 136
                Top = 18
                Width = 27
                Height = 13
                Caption = 'A'#241'o:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label17: TLabel
                Left = 264
                Top = 18
                Width = 30
                Height = 13
                Caption = 'Fact:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Edit3: TEdit
                Left = 40
                Top = 16
                Width = 89
                Height = 21
                TabOrder = 0
                OnExit = Edit3Exit
              end
              object Edit4: TEdit
                Left = 168
                Top = 16
                Width = 89
                Height = 21
                TabOrder = 1
                OnExit = Edit3Exit
              end
              object RadioButton1: TRadioButton
                Left = 8
                Top = 39
                Width = 97
                Height = 17
                Caption = 'Imprimir Factura'
                Checked = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                TabStop = True
              end
              object RadioButton2: TRadioButton
                Left = 112
                Top = 39
                Width = 121
                Height = 17
                Caption = 'Imprimir Comprobante'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
              end
              object Edit8: TEdit
                Left = 296
                Top = 16
                Width = 89
                Height = 21
                TabOrder = 4
                OnExit = Edit3Exit
              end
            end
            object DBGrid2: TDBGrid
              Left = 2
              Top = 73
              Width = 430
              Height = 196
              Align = alClient
              Color = clInactiveBorder
              DataSource = DataSource1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              OnDblClick = DBGrid2DblClick
            end
          end
          object GroupBox6: TGroupBox
            Left = 1
            Top = 281
            Width = 434
            Height = 198
            Align = alBottom
            Caption = 'Facturas Marcadas pero no Contabilizadas:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object GroupBox7: TGroupBox
              Left = 2
              Top = 15
              Width = 430
              Height = 58
              Align = alTop
              Caption = 'Filtros:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              object Label6: TLabel
                Left = 8
                Top = 24
                Width = 28
                Height = 13
                Caption = 'Mes:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label7: TLabel
                Left = 136
                Top = 24
                Width = 27
                Height = 13
                Caption = 'A'#241'o:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Edit5: TEdit
                Left = 40
                Top = 22
                Width = 89
                Height = 21
                TabOrder = 0
                OnExit = Edit5Exit
              end
              object Edit6: TEdit
                Left = 168
                Top = 22
                Width = 89
                Height = 21
                TabOrder = 1
                OnExit = Edit5Exit
              end
            end
            object DBGrid3: TDBGrid
              Left = 2
              Top = 73
              Width = 430
              Height = 123
              Align = alClient
              Color = clInactiveBorder
              DataSource = DataSource2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              OnDblClick = DBGrid3DblClick
            end
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Parametrizaci'#243'n'
      ImageIndex = 1
      object Label8: TLabel
        Left = 24
        Top = 24
        Width = 567
        Height = 20
        Caption = 
          '1 - Ingrese el Tipo de Comprobante en el cual se graban en la co' +
          'ntabilidad los ingresos:'
      end
      object Label9: TLabel
        Left = 24
        Top = 56
        Width = 465
        Height = 20
        Caption = 
          '2 - Ingrese las Cuentas Contables para todos los Grupos de Produ' +
          'ctos:'
      end
      object Label10: TLabel
        Left = 24
        Top = 88
        Width = 386
        Height = 20
        Caption = '3 - Ingrese las Cuentas Contables para todos los Servicios:'
      end
      object Label11: TLabel
        Left = 24
        Top = 264
        Width = 325
        Height = 20
        Caption = 'Validar que todos los par'#225'metros esten correctos:'
      end
      object Label13: TLabel
        Left = 24
        Top = 120
        Width = 471
        Height = 20
        Caption = 
          '4 - Ingrese las Cuentas Contables para todos los Capitulos de Se' +
          'rvicios:'
      end
      object Label14: TLabel
        Left = 24
        Top = 152
        Width = 415
        Height = 20
        Caption = '5 - Ingrese las Cuentas Contables para todas las Agrupaciones:'
      end
      object Label15: TLabel
        Left = 24
        Top = 184
        Width = 401
        Height = 20
        Caption = '6 - Ingresa las Cuentas Contables para cada Tipo de Tercero:'
      end
      object Label18: TLabel
        Left = 24
        Top = 216
        Width = 347
        Height = 20
        Caption = '6.1 - Ingresa los Tipos de Tercero para cada Tercero:'
      end
      object Button1: TButton
        Left = 544
        Top = 23
        Width = 201
        Height = 25
        Caption = 'Parametros de Facturaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = '@Arial Unicode MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object Button2: TButton
        Left = 544
        Top = 55
        Width = 201
        Height = 25
        Caption = 'Grupos de Productos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = '@Arial Unicode MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 544
        Top = 87
        Width = 201
        Height = 25
        Caption = 'Servicios'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = '@Arial Unicode MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 544
        Top = 263
        Width = 201
        Height = 25
        Caption = 'Validaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = '@Arial Unicode MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 544
        Top = 119
        Width = 201
        Height = 25
        Caption = 'Capitulos de Servicios'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = '@Arial Unicode MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 544
        Top = 151
        Width = 201
        Height = 25
        Caption = 'Homologaci'#243'n Agrupaciones'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = '@Arial Unicode MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = Button6Click
      end
      object Memo1: TMemo
        Left = 0
        Top = 328
        Width = 1030
        Height = 154
        Align = alBottom
        TabOrder = 6
      end
      object Button7: TButton
        Left = 544
        Top = 183
        Width = 201
        Height = 25
        Caption = 'Tipos de Tercero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = '@Arial Unicode MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnClick = Button7Click
      end
      object Button8: TButton
        Left = 544
        Top = 215
        Width = 201
        Height = 25
        Caption = 'Aseguradoras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = '@Arial Unicode MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        OnClick = Button7Click
      end
      object Button9: TButton
        Left = 752
        Top = 151
        Width = 201
        Height = 25
        Caption = 'Titulo de Agrupaciones'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = '@Arial Unicode MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        OnClick = Button9Click
      end
      object Button10: TButton
        Left = 751
        Top = 56
        Width = 201
        Height = 25
        Caption = 'Asigna Productos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = '@Arial Unicode MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        OnClick = Button10Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Comprobantes sin Ingreso en Facturaci'#243'n'
      ImageIndex = 2
      object DBGrid4: TDBGrid
        Left = 0
        Top = 57
        Width = 1030
        Height = 425
        Align = alClient
        Color = clInactiveBorder
        DataSource = DataSource3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
      end
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 1030
        Height = 57
        Align = alTop
        TabOrder = 1
        object SpeedButton2: TSpeedButton
          Left = 5
          Top = 16
          Width = 148
          Height = 25
          Caption = 'Eliminar Contabilizaci'#243'n'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Century'
          Font.Style = []
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333FF3333333333333744333333333333F773333333333337
            44473333333333F777F3333333333744444333333333F7733733333333374444
            4433333333F77333733333333744444447333333F7733337F333333744444444
            433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
            9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
            C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
            CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
            CCC333333333333777FF33333333333333CC3333333333333773}
          NumGlyphs = 2
          ParentFont = False
          OnClick = SpeedButton2Click
        end
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'Emp'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT INENCFacturacion.Empresa,INENCFacturacion.Numero_Factura,' +
        'Fecha,Cliente,Valor_Total,Valor_Descuento,Valor_IVA,(Valor_Total' +
        '-Valor_Descuento+Valor_IVA) as Total,Numero_Comprobante_Contable' +
        ',SegundaFactura'
      'FROM INENCFacturacion'
      'WHERE INENCFacturacion.Empresa = :emp  AND '
      
        '              (Numero_Comprobante_Contable IS NULL or Numero_Com' +
        'probante_Contable =0) AND'
      '              (estado <> '#39'A'#39' OR estado IS Null)'
      
        'ORDER BY INENCFacturacion.empresa,INENCFacturacion.numero_factur' +
        'a')
    Left = 49
    Top = 81
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery1
    Left = 17
    Top = 81
  end
  object ADOTable1: TADOTable
    Connection = DataModule1.ADOConnection1
    TableName = 'INConsecFacturas'
    Left = 1
    Top = 1
  end
  object ADOQTemp: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 33
    Top = 65534
  end
  object ADOQuery3: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'Emp'
        Size = -1
        Value = Null
      end
      item
        Name = 'NumFact'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM INDETFacturacion'
      'WHERE Empresa = :Emp  '
      '              AND Numero_Factura = :NumFact')
    Left = 897
    Top = 49
  end
  object ADOQuery4: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'Tipo'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM CONTTiterc'
      'WHERE Tipo_Tercero = :Tipo')
    Left = 929
    Top = 49
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery5
    Left = 521
    Top = 81
  end
  object ADOQuery5: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'Emp'
        Size = -1
        Value = Null
      end
      item
        Name = 'tpcomp'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT Empresa,Numero_Factura,Fecha,Cliente,(Valor_Total-Valor_D' +
        'escuento+Valor_IVA) as Total,Numero_Comprobante_Contable'
      'FROM   INENCFacturacion'
      'WHERE  Empresa = :Emp AND'
      
        '       (NOT (Numero_Comprobante_Contable IS NULL or Numero_Compr' +
        'obante_Contable =0)) AND'
      #9#9#9'Numero_Comprobante_Contable  IN (SELECT Numero_Comprobante '
      #9#9#9#9'FROM CONTEncComp'
      #9#9#9#9'WHERE Tipo_Comprobante = :tpcomp)'
      'ORDER BY empresa,numero_factura')
    Left = 553
    Top = 81
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery6
    Left = 769
    Top = 313
  end
  object ADOQuery6: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'Emp'
        Size = -1
        Value = Null
      end
      item
        Name = 'tpcomp'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT Empresa,Numero_Factura,Fecha,Cliente,(Valor_Total-Valor_D' +
        'escuento+Valor_IVA) as Total,Numero_Comprobante_Contable'
      'FROM   INENCFacturacion'
      'WHERE  Empresa = :Emp AND'
      '       (Numero_Comprobante_Contable =-1) AND'
      '              (estado <> '#39'A'#39' OR estado IS Null) AND'
      
        #9#9#9'Numero_Comprobante_Contable  NOT IN (SELECT Numero_Comprobant' +
        'e '
      #9#9#9#9'FROM CONTEncComp'
      #9#9#9#9'WHERE Tipo_Comprobante = :tpcomp)'
      'ORDER BY empresa,numero_factura')
    Left = 801
    Top = 313
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery7
    Left = 961
    Top = 81
  end
  object ADOQuery7: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'tpcomp'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM  INENCFacturacion'
      'WHERE Estado = '#39'A'#39
      '      AND NOT Numero_Comprobante_Contable is  null '
      '      AND NOT Numero_Comprobante_Contable =  -1'
      '      AND NOT Numero_Comprobante_Contable =  0'
      ''
      '')
    Left = 993
    Top = 81
  end
  object ADOQuery8: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'emp'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT INENCFacturacion.cliente,CONTTerce.Primer_Apellido,sum(Va' +
        'lor_Total-Valor_Descuento+Valor_IVA) as valor'
      'FROM INENCFacturacion left outer join CONTTerce on'
      
        '     INENCFacturacion.Cliente =  CONTTerce.Numero_Documento+CONT' +
        'Terce.sucursal '
      ''
      
        'WHERE INENCFacturacion.Empresa = :emp  AND (Numero_Comprobante_C' +
        'ontable IS NULL or Numero_Comprobante_Contable =0) AND'
      
        '              (INENCFacturacion.estado <> '#39'A'#39' OR INENCFacturacio' +
        'n.estado IS Null) '
      ' GROUP BY INENCFacturacion.cliente,CONTTerce.Primer_Apellido'
      'ORDER BY INENCFacturacion.cliente,CONTTerce.Primer_Apellido')
    Left = 961
    Top = 49
  end
  object DataSource5: TDataSource
    DataSet = ADOQuery8
    Left = 993
    Top = 49
  end
  object ADOQueryEmpresas: TADOQuery
    Connection = DataModule1.ADOComunes
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM SEEmpresas')
    Left = 736
    Top = 8
  end
  object DataSource6: TDataSource
    DataSet = ADOQueryEmpresas
    Left = 704
    Top = 8
  end
  object ADOQueryAdmi: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'Admi'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM  SAAdmisiones left outer join SAPacientes on'
      #9#9'SAAdmisiones.Tp_Ident_Usuar = SAPacientes.Tp_Ident_Usuar AND'
      #9#9'SAAdmisiones.Nr_Ident_Usuar = SAPacientes.Nr_Ident_Usuar  '
      ' WHERE  SAAdmisiones.No_Admision = :Admi')
    Left = 897
    Top = 81
  end
  object ADOQueryCargo: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'NCarg'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM CREncCargos'
      'WHERE No_Cargo= :NCarg')
    Left = 929
    Top = 81
  end
  object ADOQTemp2: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 65
    Top = 65534
  end
  object DataSource7: TDataSource
    DataSet = ADOQuery2
    Left = 361
    Top = 425
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'Emp'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT sum(Valor_Total) as Subtotal,sum(Valor_Descuento) as Dsct' +
        'o,sum(Valor_IVA) as IVA,sum(Valor_Total-Valor_Descuento+Valor_IV' +
        'A) as Total'
      'FROM INENCFacturacion'
      'WHERE INENCFacturacion.Empresa = :emp  AND '
      
        '              (Numero_Comprobante_Contable IS NULL or Numero_Com' +
        'probante_Contable =0) AND'
      '              (estado <> '#39'A'#39' OR estado IS Null)')
    Left = 393
    Top = 425
  end
  object Timer1: TTimer
    Interval = 1000000
    OnTimer = Timer1Timer
    Left = 822
    Top = 35
  end
end
