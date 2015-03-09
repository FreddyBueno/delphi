object FrmContabCaj: TFrmContabCaj
  Left = 388
  Top = 154
  BorderStyle = bsSingle
  Caption = 'Contabilizar Movimientos de Caja'
  ClientHeight = 529
  ClientWidth = 815
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 815
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
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 296
      Top = 16
      Width = 69
      Height = 13
      Caption = 'Documento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 1001
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
      Left = 368
      Top = 14
      Width = 521
      Height = 21
      KeyField = 'Tipo_Documento'
      ListField = 'Descripcion'
      ListSource = DataSource6
      TabOrder = 1
      OnExit = DBLookupComboBox1Exit
    end
    object CheckBox1: TCheckBox
      Left = 896
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Ejecuci'#243'n Diaria.'
      TabOrder = 2
      OnClick = CheckBox1Click
    end
    object Edit9: TEdit
      Left = 1046
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
    Top = 504
    Width = 815
    Height = 25
    Align = alBottom
    TabOrder = 1
    object ProgressBar1: TProgressBar
      Left = 1
      Top = 1
      Width = 813
      Height = 23
      Align = alClient
      TabOrder = 0
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 815
    Height = 463
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Contabilizaci'#243'n'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 807
        Height = 430
        Align = alClient
        TabOrder = 0
        object Splitter1: TSplitter
          Left = 417
          Top = 1
          Width = 8
          Height = 428
          Beveled = True
        end
        object GroupBox1: TGroupBox
          Left = 1
          Top = 1
          Width = 416
          Height = 428
          Align = alLeft
          Caption = 'Ingresos no Contabilizados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object DBGrid1: TDBGrid
            Left = 2
            Top = 73
            Width = 412
            Height = 353
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
            Width = 412
            Height = 58
            Align = alTop
            Caption = 'Filtros:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
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
              Font.Height = -11
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
              Font.Height = -11
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
              Font.Height = -11
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
              Left = 299
              Top = 22
              Width = 89
              Height = 21
              TabOrder = 2
              OnExit = Edit1Exit
            end
          end
        end
        object Panel3: TPanel
          Left = 425
          Top = 1
          Width = 160
          Height = 428
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
              Font.Height = -8
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
              Font.Height = -8
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
            Top = 350
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
              Font.Height = -8
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
              Font.Height = -8
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
            Height = 277
            Align = alClient
            TabOrder = 2
            object DBCtrlGrid1: TDBCtrlGrid
              Left = 1
              Top = 1
              Width = 156
              Height = 275
              Align = alClient
              DataSource = DataSource5
              PanelHeight = 27
              PanelWidth = 139
              TabOrder = 0
              RowCount = 10
              object DBText2: TDBText
                Left = 2
                Top = 1
                Width = 135
                Height = 16
                DataField = 'Descripcion'
                DataSource = DataSource5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
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
                Font.Height = -11
                Font.Name = '@Arial Unicode MS'
                Font.Style = []
                ParentFont = False
              end
            end
          end
        end
        object Panel6: TPanel
          Left = 585
          Top = 1
          Width = 221
          Height = 428
          Align = alClient
          TabOrder = 2
          object Splitter2: TSplitter
            Left = 1
            Top = 220
            Width = 219
            Height = 9
            Cursor = crVSplit
            Align = alBottom
            Beveled = True
          end
          object GroupBox2: TGroupBox
            Left = 1
            Top = 1
            Width = 219
            Height = 219
            Align = alClient
            Caption = 'Ingresos Contabilizados:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object GroupBox5: TGroupBox
              Left = 2
              Top = 15
              Width = 215
              Height = 66
              Align = alTop
              Caption = 'Filtros:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
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
                Font.Height = -11
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
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label12: TLabel
                Left = 264
                Top = 18
                Width = 30
                Height = 13
                Caption = 'Fact:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
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
              object Edit8: TEdit
                Left = 296
                Top = 16
                Width = 89
                Height = 21
                TabOrder = 2
                OnExit = Edit3Exit
              end
              object RadioButton2: TRadioButton
                Left = 88
                Top = 43
                Width = 121
                Height = 17
                Caption = 'Imprimir Comprobante'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
              end
              object RadioButton1: TRadioButton
                Left = 8
                Top = 43
                Width = 76
                Height = 17
                Caption = 'Imprimir RC'
                Checked = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
                TabStop = True
              end
            end
            object DBGrid2: TDBGrid
              Left = 2
              Top = 81
              Width = 215
              Height = 136
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
            Top = 229
            Width = 219
            Height = 198
            Align = alBottom
            Caption = 'Ingresos Marcados pero no Contabilizados:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object GroupBox7: TGroupBox
              Left = 2
              Top = 15
              Width = 215
              Height = 58
              Align = alTop
              Caption = 'Filtros:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
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
                Font.Height = -11
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
                Font.Height = -11
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
              Width = 215
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
        Width = 507
        Height = 18
        Caption = 
          '1 - Ingrese el Tipo de Comprobante en el cual se graban en la co' +
          'ntabilidad los ingresos:'
      end
      object Label9: TLabel
        Left = 24
        Top = 56
        Width = 459
        Height = 18
        Caption = 
          '2 - Ingrese las Cuentas Contables para todos los Conceptos utili' +
          'zados en Caja:'
      end
      object Label10: TLabel
        Left = 24
        Top = 88
        Width = 514
        Height = 18
        Caption = 
          '3 - Ingrese la Cuenta Contable para el Total de Ingresos en Todo' +
          's los Tipos de Terceros:'
      end
      object Label11: TLabel
        Left = 24
        Top = 120
        Width = 324
        Height = 18
        Caption = '4 - Ingrese a Documentos para verificar la Cuenta Total:'
      end
      object Label13: TLabel
        Left = 8
        Top = 248
        Width = 289
        Height = 18
        Caption = 'Validar que todos los par'#225'metros esten correctos:'
      end
      object Label18: TLabel
        Left = 24
        Top = 152
        Width = 308
        Height = 18
        Caption = '4.1 - Ingresa los Tipos de Tercero para cada Tercero:'
      end
      object Button1: TButton
        Left = 544
        Top = 23
        Width = 177
        Height = 25
        Caption = 'Parametros de Ingresos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = '@Arial Unicode MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object Button2: TButton
        Left = 544
        Top = 55
        Width = 177
        Height = 25
        Caption = 'Conceptos Contables'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = '@Arial Unicode MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 544
        Top = 87
        Width = 177
        Height = 25
        Caption = 'Tipos de Terceros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = '@Arial Unicode MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 544
        Top = 119
        Width = 177
        Height = 25
        Caption = 'Documentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = '@Arial Unicode MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 544
        Top = 247
        Width = 177
        Height = 25
        Caption = 'Validaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = '@Arial Unicode MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = Button5Click
      end
      object Memo1: TMemo
        Left = 0
        Top = 229
        Width = 807
        Height = 201
        Align = alBottom
        TabOrder = 5
      end
      object Button8: TButton
        Left = 544
        Top = 151
        Width = 177
        Height = 25
        Caption = 'Aseguradoras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = '@Arial Unicode MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnClick = Button8Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Comprobantes sin Ingreso en Caja'
      ImageIndex = 2
      object DBGrid4: TDBGrid
        Left = 0
        Top = 57
        Width = 807
        Height = 373
        Align = alClient
        DataSource = DataSource3
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = '@Arial Unicode MS'
        TitleFont.Style = []
      end
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 807
        Height = 57
        Align = alTop
        TabOrder = 1
        object SpeedButton2: TSpeedButton
          Left = 5
          Top = 8
          Width = 148
          Height = 25
          Caption = 'Eliminar Contabilizaci'#243'n'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
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
        Name = 'Tpdoc'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT Documento,Numero_Ingreso as No_Ing,Fecha,left(Doc_Pagador' +
        ',15) as Doc,left(Nombre_Pagador,20) as Nombre,Concepto,Numero_Co' +
        'mprobante_Contable,Empresa_Graba'
      'FROM CAIngresos,CADocumentos'
      'WHERE CAIngresos.Documento = CADocumentos.Tipo_Documento AND'
      
        '      (Numero_Comprobante_Contable IS NULL or Numero_Comprobante' +
        '_Contable =0) AND'
      '              (estado <> '#39'A'#39' OR estado IS Null) AND'
      '       Tipo_Comp_Contable = :Tpdoc'
      'ORDER BY Documento,Numero_Ingreso')
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
    TableName = 'CAParametros'
    Left = 9
    Top = 41
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'Ing'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM CAIngresos'
      'WHERE Numero_Ingreso = :Ing  '
      '')
    Left = 705
    Top = 33
  end
  object ADOQTemp: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 33
    Top = 38
  end
  object ADOQuery3: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'Ing'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM CADetFacturas left outer join CAConceptos on '
      ' CADetFacturas.Concepto = CAConceptos.Concepto'
      'WHERE  Numero_Ingreso = :Ing'
      'ORDER BY Documento,Numero_Ingreso,Empresa,Numero_Factura')
    Left = 745
    Top = 33
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
    Left = 777
    Top = 33
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery5
    Left = 481
    Top = 49
  end
  object ADOQuery5: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'tpcomp'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT Documento, Numero_Ingreso as No_Ing,Fecha,left(Doc_Pagado' +
        'r,15) as Doc,left(Nombre_Pagador,20) as Nombre,Concepto,Numero_C' +
        'omprobante_Contable,Empresa_Graba'
      'FROM CAIngresos'
      
        'WHERE (NOT (Numero_Comprobante_Contable IS NULL or Numero_Compro' +
        'bante_Contable =0)) AND'
      #9#9#9'Numero_Comprobante_Contable  IN (SELECT Numero_Comprobante '
      #9#9#9#9'FROM CONTEncComp'
      #9#9#9#9'WHERE Tipo_Comprobante = :tpcomp)'
      'ORDER BY Documento,Numero_Ingreso')
    Left = 513
    Top = 49
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
        Name = 'tpcomp'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT Documento,Numero_Ingreso as No_Ing,Fecha,left(Doc_Pagador' +
        ',15) as Doc,left(Nombre_Pagador,20) as Nombre,Concepto,Numero_Co' +
        'mprobante_Contable '
      'FROM CAIngresos'
      'WHERE (Numero_Comprobante_Contable =-1) AND'
      '              (estado <> '#39'A'#39' OR estado IS Null) AND'
      
        #9#9#9'Numero_Comprobante_Contable NOT IN (SELECT Numero_Comprobante' +
        ' '
      #9#9#9#9'FROM CONTEncComp'
      #9#9#9#9'WHERE Tipo_Comprobante = :tpcomp)'
      'ORDER BY Documento,Numero_Ingreso')
    Left = 801
    Top = 313
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery7
    Left = 833
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
      'FROM  CAIngresos,CADocumentos'
      'WHERE CAIngresos.Documento = CADocumentos.Tipo_Documento '
      '      AND CAIngresos.Estado = '#39'A'#39
      '      AND NOT Numero_Comprobante_Contable is  null '
      '      AND NOT Numero_Comprobante_Contable =  -1'
      '      AND NOT Numero_Comprobante_Contable =  0 '
      '      AND CADocumentos.Tipo_Documento = :TPComp'
      ''
      '')
    Left = 865
    Top = 81
  end
  object ADOQuery8: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT CADetfacturas.concepto,descripcion,sum(valor) as valor'
      'FROM CAIngresos,CADetfacturas,CAConceptos'
      
        'WHERE (Numero_Comprobante_Contable IS NULL or Numero_Comprobante' +
        '_Contable =0) AND'
      
        '              (CAIngresos.estado <> '#39'A'#39' OR CAIngresos.estado IS ' +
        'Null) AND'
      
        '      CAIngresos.Numero_Ingreso =  CADetfacturas.Numero_Ingreso ' +
        'AND'
      '      CADetfacturas.Concepto = CAConceptos.Concepto'
      'GROUP BY CADetfacturas.concepto,descripcion'
      'ORDER BY CADetfacturas.concepto,descripcion')
    Left = 809
    Top = 33
  end
  object DataSource5: TDataSource
    DataSet = ADOQuery8
    Left = 841
    Top = 33
  end
  object ADOQtemp2: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 65
    Top = 38
  end
  object DataSource6: TDataSource
    DataSet = ADOQuery9
    OnDataChange = DataSource6DataChange
    Left = 641
    Top = 17
  end
  object ADOQuery9: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM CADocumentos')
    Left = 681
    Top = 14
  end
  object Timer1: TTimer
    Interval = 1000000
    OnTimer = Timer1Timer
    Left = 894
    Top = 35
  end
end
