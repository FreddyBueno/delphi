object FormCreaConvenios: TFormCreaConvenios
  Left = 266
  Top = 87
  BorderStyle = bsSingle
  Caption = 'Ingresar Convenios o Contratos con Aseguradores'
  ClientHeight = 688
  ClientWidth = 1034
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1034
    Height = 193
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 44
      Width = 44
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 8
      Top = 83
      Width = 82
      Height = 13
      Caption = 'No. Convenio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label22: TLabel
      Left = 8
      Top = 18
      Width = 53
      Height = 13
      Caption = 'Empresa:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton5: TSpeedButton
      Left = 442
      Top = 79
      Width = 241
      Height = 25
      Caption = 'Facturas Creadas para este Convenio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333FF3333333333333003333
        3333333333773FF3333333333309003333333333337F773FF333333333099900
        33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
        99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
        33333333337F3F77333333333309003333333333337F77333333333333003333
        3333333333773333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentFont = False
      OnClick = SpeedButton5Click
    end
    object Label3: TLabel
      Left = 114
      Top = 61
      Width = 327
      Height = 13
      Caption = '(Muestra los Terceros con Tipo de Tercero = 2 - Clientes)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 113
      Top = 39
      Width = 617
      Height = 21
      KeyField = 'codterce'
      ListField = 'NOMBRE;codterce'
      ListSource = DataSource1
      TabOrder = 1
      OnExit = DBLookupComboBox1Exit
    end
    object ComboBox2: TComboBox
      Left = 113
      Top = 80
      Width = 322
      Height = 21
      TabOrder = 2
      OnExit = ComboBox2Exit
    end
    object BitBtn4: TBitBtn
      Left = 854
      Top = 10
      Width = 75
      Height = 78
      Hint = 'Buscar un registro por C'#243'digo.'
      Caption = 'Estado'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FF0000000F0
        000033F77777773777773FFF0CCC0FF09990333F73F37337F33733FFF0C0FFF0
        99903333F7373337F337333FFF0FFFF0999033333F73FFF7FFF73333FFF000F0
        0000333333F77737777733333F07B70FFFFF3333337F337F33333333330BBB0F
        FFFF3FFFFF7F337F333300000307B70FFFFF77777F73FF733F330EEE033000FF
        0FFF7F337FF777337FF30EEE00033FF000FF7F33777F333777FF0EEE0E033300
        000F7FFF7F7FFF77777F00000E00000000007777737773777777330EEE0E0330
        00FF337FFF7F7F3777F33300000E033000FF337777737F3777F333330EEE0330
        00FF33337FFF7FF77733333300000000033F3333777777777333}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object GroupBox7: TGroupBox
      Left = 1
      Top = 102
      Width = 1032
      Height = 90
      Align = alBottom
      Caption = 'Parametros del Convenio:'
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 4
      object Label15: TLabel
        Left = 8
        Top = 23
        Width = 58
        Height = 13
        Caption = 'Fecha Ini:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 8
        Top = 47
        Width = 61
        Height = 13
        Caption = 'Fecha Fin:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 276
        Top = 23
        Width = 95
        Height = 13
        Caption = 'Tarifa Convenio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 440
        Top = 46
        Width = 72
        Height = 13
        Caption = 'Capitaci'#243'n?:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 424
        Top = 47
        Width = 10
        Height = 13
        Caption = '%'
      end
      object Label4: TLabel
        Left = 276
        Top = 46
        Width = 66
        Height = 13
        Caption = 'Porcentaje:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 8
        Top = 71
        Width = 78
        Height = 13
        Caption = 'Posible pago:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DateTimePicker2: TDateTimePicker
        Left = 96
        Top = 43
        Width = 169
        Height = 21
        Date = 38947.849110775460000000
        Time = 38947.849110775460000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DateTimePicker1: TDateTimePicker
        Left = 96
        Top = 19
        Width = 169
        Height = 21
        Date = 38947.849110775460000000
        Time = 38947.849110775460000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object ComboBox3: TComboBox
        Left = 376
        Top = 18
        Width = 201
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnChange = ComboBox3Change
      end
      object ComboBox4: TComboBox
        Left = 517
        Top = 43
        Width = 59
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = 'No'
        Items.Strings = (
          'Si'
          'No')
      end
      object MaskEdit1: TMaskEdit
        Left = 376
        Top = 43
        Width = 41
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Text = '100'
        OnKeyPress = MaskEdit1KeyPress
      end
      object MaskEdit2: TMaskEdit
        Left = 96
        Top = 67
        Width = 41
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        Text = '40'
        OnKeyPress = MaskEdit2KeyPress
      end
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 113
      Top = 13
      Width = 735
      Height = 21
      KeyField = 'Codigo'
      ListField = 'Descripcion_Emp'
      ListSource = DataSource2
      TabOrder = 0
      OnExit = DBLookupComboBox1Exit
    end
    object Edit4: TEdit
      Left = 689
      Top = 79
      Width = 41
      Height = 21
      Color = cl3DLight
      TabOrder = 5
    end
    object DBEdit1: TDBEdit
      Left = 736
      Top = 40
      Width = 113
      Height = 21
      Color = cl3DLight
      DataField = 'codterce'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 6
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 193
    Width = 1034
    Height = 495
    Align = alClient
    Caption = 'Convenio Actual:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 2
      Top = 210
      Width = 1030
      Height = 7
      Cursor = crVSplit
      Align = alBottom
      Beveled = True
      ExplicitTop = 167
      ExplicitWidth = 954
    end
    object Panel1: TPanel
      Left = 2
      Top = 217
      Width = 1030
      Height = 276
      Align = alBottom
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 577
        Height = 231
        Align = alClient
        Caption = 'Adicionar Productos, Servicios o Paquetes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 2
          Top = 46
          Width = 573
          Height = 183
          Align = alClient
          Color = clInactiveBorder
          DataSource = DataSource4
          Options = [dgTitles, dgIndicator, dgColumnResize, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
        end
        object Panel4: TPanel
          Left = 2
          Top = 15
          Width = 573
          Height = 31
          Align = alTop
          BevelInner = bvLowered
          TabOrder = 1
          object Label2: TLabel
            Left = 8
            Top = 8
            Width = 30
            Height = 13
            Caption = 'Tipo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ComboBox1: TComboBox
            Left = 48
            Top = 5
            Width = 105
            Height = 21
            TabOrder = 0
            Text = 'P'
            OnChange = ComboBox1Change
            Items.Strings = (
              'P'
              'S'
              'PAQUETE')
          end
        end
      end
      object Panel2: TPanel
        Left = 1
        Top = 232
        Width = 1028
        Height = 43
        Align = alBottom
        BevelInner = bvLowered
        TabOrder = 1
        object ProgressBar1: TProgressBar
          Left = 339
          Top = 2
          Width = 687
          Height = 39
          Align = alClient
          TabOrder = 0
        end
        object Panel5: TPanel
          Left = 2
          Top = 2
          Width = 337
          Height = 39
          Align = alLeft
          TabOrder = 1
          object SpeedButton1: TSpeedButton
            Left = 6
            Top = 8
            Width = 161
            Height = 25
            Caption = 'Incluir este Item'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333333333333333333333333333333333333333333333333333
              3333333333333333333333333333333333333333333FF3333333333333003333
              3333333333773FF3333333333309003333333333337F773FF333333333099900
              33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
              99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
              33333333337F3F77333333333309003333333333337F77333333333333003333
              3333333333773333333333333333333333333333333333333333333333333333
              3333333333333333333333333333333333333333333333333333}
            NumGlyphs = 2
            OnClick = SpeedButton1Click
          end
          object SpeedButton2: TSpeedButton
            Left = 170
            Top = 8
            Width = 161
            Height = 25
            Caption = 'Incluir todos los Items'
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
            OnClick = SpeedButton2Click
          end
        end
      end
      object GroupBox3: TGroupBox
        Left = 578
        Top = 1
        Width = 451
        Height = 231
        Align = alRight
        Caption = 'Filtros:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object GroupBox6: TGroupBox
          Left = 2
          Top = 225
          Width = 447
          Height = 80
          Align = alTop
          Caption = 'Agrupaci'#243'n de Productos:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Visible = False
          object Label17: TLabel
            Left = 8
            Top = 27
            Width = 32
            Height = 13
            Caption = 'Grupo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 8
            Top = 51
            Width = 49
            Height = 13
            Caption = 'Subgrupo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBLookupComboBox11: TDBLookupComboBox
            Left = 112
            Top = 24
            Width = 297
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'Codigo_Grupo'
            ListField = 'Nombre'
            ListSource = DataSource9
            ParentFont = False
            TabOrder = 0
            OnClick = DBLookupComboBox11Click
            OnExit = DBLookupComboBox3Exit
          end
          object DBLookupComboBox12: TDBLookupComboBox
            Left = 112
            Top = 48
            Width = 297
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'Codigo_Subgrupo'
            ListField = 'Nombre'
            ListSource = DataSource10
            ParentFont = False
            TabOrder = 1
            OnExit = DBLookupComboBox3Exit
          end
        end
        object GroupBox4: TGroupBox
          Left = 2
          Top = 112
          Width = 447
          Height = 113
          Align = alTop
          Caption = 'Agrupaci'#243'n de Servicios:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Visible = False
          object Label9: TLabel
            Left = 8
            Top = 19
            Width = 41
            Height = 13
            Caption = 'Capitulo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 8
            Top = 43
            Width = 38
            Height = 13
            Caption = 'Articulo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 8
            Top = 67
            Width = 35
            Height = 13
            Caption = 'Titulo I:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 8
            Top = 91
            Width = 38
            Height = 13
            Caption = 'Titulo II:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 64
            Top = 16
            Width = 369
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'COD_CAPITULO'
            ListField = 'DESCRIPCION'
            ListSource = DataSource3
            ParentFont = False
            TabOrder = 0
            OnClick = DBLookupComboBox3Click
            OnExit = DBLookupComboBox3Exit
          end
          object DBLookupComboBox4: TDBLookupComboBox
            Left = 64
            Top = 40
            Width = 369
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'COD_ARTICULO'
            ListField = 'DESCRIPCION'
            ListSource = DataSource6
            ParentFont = False
            TabOrder = 1
            OnClick = DBLookupComboBox4Click
            OnExit = DBLookupComboBox3Exit
          end
          object DBLookupComboBox5: TDBLookupComboBox
            Left = 64
            Top = 64
            Width = 369
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'COD_TITULO1'
            ListField = 'DESCRIPCION'
            ListSource = DataSource7
            ParentFont = False
            TabOrder = 2
            OnClick = DBLookupComboBox5Click
            OnExit = DBLookupComboBox3Exit
          end
          object DBLookupComboBox6: TDBLookupComboBox
            Left = 64
            Top = 88
            Width = 369
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'COD_TITULO2'
            ListField = 'DESCRIPCION'
            ListSource = DataSource8
            ParentFont = False
            TabOrder = 3
            OnExit = DBLookupComboBox3Exit
          end
        end
        object GroupBox8: TGroupBox
          Left = 2
          Top = 15
          Width = 447
          Height = 97
          Align = alTop
          Caption = 'Selecciones por Palabra:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object Label6: TLabel
            Left = 8
            Top = 44
            Width = 76
            Height = 13
            Caption = 'Palabra Incluye:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 8
            Top = 68
            Width = 79
            Height = 13
            Caption = 'Palabra Excluye:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label20: TLabel
            Left = 8
            Top = 20
            Width = 73
            Height = 13
            Caption = 'C'#243'digo Incluye:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Edit2: TEdit
            Left = 104
            Top = 68
            Width = 329
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Visible = False
            OnChange = Edit1Change
          end
          object Edit1: TEdit
            Left = 104
            Top = 44
            Width = 329
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnChange = Edit1Change
          end
          object Edit3: TEdit
            Left = 104
            Top = 20
            Width = 329
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnChange = Edit3Change
          end
        end
      end
    end
    object DBGrid2: TDBGrid
      Left = 2
      Top = 15
      Width = 1030
      Height = 195
      Align = alClient
      Color = clMoneyGreen
      DataSource = DataSource5
      DrawingStyle = gdsGradient
      GradientEndColor = clMoneyGreen
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = PopupMenu1
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'Tp_Pst'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cd_Pst'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descripcion'
          Width = 400
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fecha_Ini'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fecha_Fin'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Porcentaje'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tarifa'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'A'#241'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Capitacion'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Posible_Pago'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Estado'
          Visible = True
        end>
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery5
    Left = 785
    Top = 65
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery1
    Left = 9
    Top = 465
  end
  object DataSource5: TDataSource
    DataSet = ADOQueryConv
    Left = 1
    Top = 225
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT Cd_Producto as cod,* FROM INProductos')
    Left = 41
    Top = 465
  end
  object DataSource3: TDataSource
    DataSet = ADOTable2
    Left = 898
    Top = 65
  end
  object DataSource6: TDataSource
    DataSet = ADOTable3
    Left = 898
    Top = 97
  end
  object DataSource7: TDataSource
    DataSet = ADOTable4
    Left = 898
    Top = 129
  end
  object DataSource8: TDataSource
    DataSet = ADOTable6
    Left = 898
    Top = 161
  end
  object ADOTable2: TADOTable
    Connection = DataModule1.ADOConnection1
    TableName = 'SACapituloCups'
    Left = 929
    Top = 65
  end
  object ADOTable3: TADOTable
    Connection = DataModule1.ADOConnection1
    IndexFieldNames = 'COD_CAPITULO'
    MasterFields = 'COD_CAPITULO'
    MasterSource = DataSource3
    TableName = 'SAArticulosCups'
    Left = 929
    Top = 97
  end
  object ADOTable4: TADOTable
    Connection = DataModule1.ADOConnection1
    IndexFieldNames = 'COD_CAPITULO;COD_ARTICULO'
    MasterFields = 'COD_CAPITULO;COD_ARTICULO'
    MasterSource = DataSource6
    TableName = 'SATituloICups'
    Left = 929
    Top = 129
  end
  object ADOTable6: TADOTable
    Connection = DataModule1.ADOConnection1
    IndexFieldNames = 'COD_CAPITULO;COD_ARTICULO;COD_TITULO1'
    MasterFields = 'COD_CAPITULO;COD_ARTICULO;COD_TITULO1'
    MasterSource = DataSource7
    TableName = 'SATituloIICups'
    Left = 929
    Top = 161
  end
  object DataSource9: TDataSource
    DataSet = ADOTable7
    Left = 898
    Top = 193
  end
  object DataSource10: TDataSource
    DataSet = ADOTable8
    Left = 898
    Top = 225
  end
  object ADOTable7: TADOTable
    Connection = DataModule1.ADOConnection1
    TableName = 'INGrupo'
    Left = 929
    Top = 193
  end
  object ADOTable8: TADOTable
    Connection = DataModule1.ADOConnection1
    IndexFieldNames = 'Codigo_Grupo'
    MasterFields = 'Codigo_Grupo'
    MasterSource = DataSource9
    TableName = 'INSubgrupo'
    Left = 930
    Top = 225
  end
  object DataSource11: TDataSource
    DataSet = ADOQuery3
    Left = 898
    Top = 257
  end
  object ADOQuery3: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT distinct tabla FROM SATarifarios')
    Left = 929
    Top = 257
  end
  object ADOQFacturasxCon: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'emp'
        Size = -1
        Value = Null
      end
      item
        Name = 'cli'
        Size = -1
        Value = Null
      end
      item
        Name = 'con'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT count(*) as total'
      'FROM INEncFacturacion'
      'WHERE Estado <> '#39'A'#39' AND'
      '               Empresa = :emp AND'
      '               Cliente = :cli AND'
      '               No_Contrato = :con')
    Left = 577
    Top = 65
  end
  object ADOQTarifConv: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'Ase'
        DataType = ftString
        Size = -1
        Value = ''
      end>
    SQL.Strings = (
      'SELECT distinct Tabla+A'#241'o AS tb'
      'FROM SATarifasDetalle'
      'ORDER BY Tabla+A'#241'o')
    Left = 577
    Top = 129
  end
  object ADOQueryConv: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'Doc'
        Size = -1
        Value = Null
      end
      item
        Name = 'Cont'
        DataType = ftString
        Size = 2
        Value = ''
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM FAConvenios'
      'WHERE Aseguradora = :Doc AND '
      '               No_Contrato = :Cont')
    Left = 49
    Top = 225
  end
  object QryApoyo1: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    Left = 617
    Top = 9
  end
  object ADOQuery5: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCT CONTTerce.Numero_Documento,'
      
        '       CONTTerce.Primer_Apellido +'#39' '#39'+ CONTTerce.Primer_Nombre a' +
        's Nombre,'
      '       CONTTerce.Numero_Documento+CONTTerce.Sucursal as codterce'
      'FROM CONTTerce,CONTTipTercexTerce,CONTTiterc'
      
        'WHERE CONTTerce.Numero_Documento = CONTTipTercexTerce.Tercero AN' +
        'D'
      
        '      CONTTipTercexTerce.Tipo_Tercero = CONTTiterc.Tipo_Tercero ' +
        'AND '
      '      CONTTerce.Estado = '#39'A'#39'  AND CONTTiterc.Modulo = '#39'2'#39
      'ORDER BY Nombre ')
    Left = 817
    Top = 65
  end
  object PopupMenu1: TPopupMenu
    Left = 96
    Top = 225
    object EliminarRegistrodelConvenio1: TMenuItem
      Caption = 'Eliminar Registro del Convenio'
      OnClick = EliminarRegistrodelConvenio1Click
    end
    object EliminartodoslosRegistros1: TMenuItem
      Caption = 'Eliminar todos los Registros'
      OnClick = EliminartodoslosRegistros1Click
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQEmpresas
    Left = 785
    Top = 9
  end
  object ADOQEmpresas: TADOQuery
    Connection = DataModule1.ADOComunes
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM SEEmpresas')
    Left = 817
    Top = 9
  end
end
