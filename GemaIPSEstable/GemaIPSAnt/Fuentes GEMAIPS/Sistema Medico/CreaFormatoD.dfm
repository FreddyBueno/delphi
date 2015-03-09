object FCreacionFormatosD: TFCreacionFormatosD
  Left = 94
  Top = 233
  BorderStyle = bsSingle
  Caption = 'Creaci'#243'n de Formatos Dinamicos'
  ClientHeight = 573
  ClientWidth = 977
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
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object JvGradient12: TJvGradient
    Left = 0
    Top = 81
    Width = 977
    Height = 492
    Style = grVertical
    StartColor = 15440144
    EndColor = 15259317
    Steps = 79
    ExplicitLeft = -3
    ExplicitTop = 74
    ExplicitHeight = 330
  end
  object Label32: TLabel
    Left = 141
    Top = 380
    Width = 34
    Height = 13
    Caption = 'Edad:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 81
    Width = 977
    Height = 492
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Formatos'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel1: TPanel
        Left = 0
        Top = 437
        Width = 969
        Height = 27
        Align = alBottom
        TabOrder = 0
        object JvGradient8: TJvGradient
          Left = 1
          Top = 1
          Width = 842
          Height = 25
          Style = grVertical
          StartColor = 15440144
          EndColor = 15259317
          Steps = 25
        end
        object Panel5: TPanel
          Left = 843
          Top = 1
          Width = 125
          Height = 25
          Align = alRight
          TabOrder = 0
          object JvGradient10: TJvGradient
            Left = 1
            Top = 1
            Width = 123
            Height = 23
            Style = grVertical
            StartColor = 15440144
            EndColor = 15259317
            Steps = 23
          end
        end
      end
      object DBLookupListBox1: TDBLookupListBox
        Left = 0
        Top = 0
        Width = 458
        Height = 433
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'Codigo'
        ListField = 'Codigo;Descripcion'
        ListSource = DataSource1
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 1
        OnClick = DBLookupListBox1Click
      end
      object GroupBox1: TGroupBox
        Left = 458
        Top = 0
        Width = 511
        Height = 437
        Align = alRight
        Caption = 'Formatos:'
        TabOrder = 2
        object JvGradient9: TJvGradient
          Left = 2
          Top = 15
          Width = 507
          Height = 420
          Style = grVertical
          StartColor = 15440144
          EndColor = 15259317
          Steps = 79
          ExplicitLeft = -94
          ExplicitTop = 11
        end
        object Label1: TLabel
          Left = 8
          Top = 27
          Width = 93
          Height = 13
          Caption = 'Codigo Formato:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel
          Left = 8
          Top = 52
          Width = 72
          Height = 13
          Caption = 'Descripci'#243'n:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label18: TLabel
          Left = 8
          Top = 108
          Width = 272
          Height = 13
          Caption = 'Presentaci'#243'n de Tabuladores en una sola linea:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Image1: TImage
          Left = 368
          Top = 184
          Width = 137
          Height = 105
        end
        object lbl: TLabel
          Left = 264
          Top = 295
          Width = 189
          Height = 13
          Caption = 'Solo Imagenes con formato BMP.'
        end
        object Label34: TLabel
          Left = 16
          Top = 380
          Width = 97
          Height = 13
          Caption = 'Tipo de Formato:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label36: TLabel
          Left = 16
          Top = 349
          Width = 52
          Height = 13
          Caption = 'Edad Ini:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label37: TLabel
          Left = 113
          Top = 349
          Width = 55
          Height = 13
          Caption = 'Edad Fin:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label38: TLabel
          Left = 220
          Top = 349
          Width = 33
          Height = 13
          Caption = 'Sexo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Button1: TButton
          Left = 389
          Top = 54
          Width = 113
          Height = 33
          Caption = 'Grabar Formato'
          TabOrder = 0
          TabStop = False
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 389
          Top = 94
          Width = 113
          Height = 33
          Caption = 'Excluir Formato'
          TabOrder = 1
          TabStop = False
          OnClick = Button2Click
        end
        object Edit1: TEdit
          Left = 104
          Top = 24
          Width = 49
          Height = 21
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 3
          ParentFont = False
          TabOrder = 2
          Text = '100'
          OnExit = Edit1Exit
          OnKeyPress = Edit1KeyPress
        end
        object Edit2: TEdit
          Left = 8
          Top = 72
          Width = 369
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 100
          ParentFont = False
          TabOrder = 3
        end
        object Edit8: TEdit
          Left = 264
          Top = 136
          Width = 240
          Height = 21
          Color = clMenuBar
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 100
          ParentFont = False
          TabOrder = 4
        end
        object ComboBox2: TComboBox
          Left = 288
          Top = 104
          Width = 89
          Height = 21
          TabOrder = 5
          Items.Strings = (
            'Si'
            'No')
        end
        object GroupBox2: TGroupBox
          Left = 8
          Top = 128
          Width = 249
          Height = 161
          Caption = 'Imagen:'
          TabOrder = 6
          object DBImage1: TDBImage
            Left = 2
            Top = 15
            Width = 245
            Height = 144
            Align = alClient
            DataField = 'Icono'
            DataSource = DataSource1
            TabOrder = 0
          end
        end
        object Button13: TButton
          Left = 389
          Top = 14
          Width = 113
          Height = 33
          Caption = 'Nuevo Formato'
          TabOrder = 7
          TabStop = False
          OnClick = Button13Click
        end
        object BitBtn1: TBitBtn
          Left = 400
          Top = 159
          Width = 105
          Height = 22
          Caption = 'Buscar imagen'
          TabOrder = 8
          TabStop = False
          OnClick = BitBtn1Click
        end
        object UpDown4: TUpDown
          Left = 153
          Top = 24
          Width = 16
          Height = 21
          Associate = Edit1
          Min = 100
          Max = 999
          Position = 100
          TabOrder = 9
        end
        object Button14: TButton
          Left = 10
          Top = 295
          Width = 113
          Height = 33
          Caption = 'Crear  HTML5'
          TabOrder = 10
          TabStop = False
          OnClick = Button14Click
        end
        object ComboBox10: TComboBox
          Left = 119
          Top = 377
          Width = 137
          Height = 21
          TabOrder = 11
          Items.Strings = (
            'Limpio Totalmente'
            'Trae Ultimos Datos')
        end
        object Edit20: TEdit
          Left = 72
          Top = 346
          Width = 35
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentFont = False
          TabOrder = 12
          Text = '0'
          OnKeyPress = Edit1KeyPress
        end
        object Edit21: TEdit
          Left = 174
          Top = 346
          Width = 35
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentFont = False
          TabOrder = 13
          Text = '0'
          OnKeyPress = Edit1KeyPress
        end
        object ComboBox12: TComboBox
          Left = 259
          Top = 346
          Width = 134
          Height = 21
          Style = csDropDownList
          TabOrder = 14
          OnChange = ComboBox1Change
          Items.Strings = (
            'Masculino'
            'Femenino'
            ' ')
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Secciones'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBLookupListBox2: TDBLookupListBox
        Left = 0
        Top = 0
        Width = 969
        Height = 225
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'Codigo_Seccion'
        ListField = 'Codigo_Seccion;Descripcion'
        ListSource = DataSource2
        ParentFont = False
        PopupMenu = PopupMenu2
        TabOrder = 0
        OnClick = DBLookupListBox2Click
      end
      object Panel3: TPanel
        Left = 0
        Top = 230
        Width = 969
        Height = 234
        Align = alBottom
        TabOrder = 1
        object JvGradient6: TJvGradient
          Left = 1
          Top = 1
          Width = 842
          Height = 232
          Style = grVertical
          StartColor = 15440144
          EndColor = 15259317
          Steps = 79
          ExplicitHeight = 102
        end
        object Label5: TLabel
          Left = 8
          Top = 11
          Width = 94
          Height = 13
          Caption = 'Codigo Secci'#243'n:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label6: TLabel
          Left = 8
          Top = 36
          Width = 72
          Height = 13
          Caption = 'Descripci'#243'n:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Image2: TImage
          Left = 104
          Top = 59
          Width = 241
          Height = 105
        end
        object Label29: TLabel
          Left = 351
          Top = 114
          Width = 189
          Height = 13
          Caption = 'Solo Imagenes con formato BMP.'
        end
        object Edit3: TEdit
          Left = 104
          Top = 8
          Width = 41
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 3
          ParentFont = False
          TabOrder = 0
          Text = '100'
          OnExit = Edit3Exit
          OnKeyPress = Edit1KeyPress
        end
        object Edit4: TEdit
          Left = 104
          Top = 32
          Width = 449
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 100
          ParentFont = False
          TabOrder = 1
        end
        object Panel6: TPanel
          Left = 843
          Top = 1
          Width = 125
          Height = 232
          Align = alRight
          TabOrder = 2
          object JvGradient7: TJvGradient
            Left = 1
            Top = 1
            Width = 123
            Height = 230
            Style = grVertical
            StartColor = 15440144
            EndColor = 15259317
            Steps = 79
            ExplicitHeight = 100
          end
          object Button3: TButton
            Left = 5
            Top = 14
            Width = 113
            Height = 33
            Caption = 'Incluir Secci'#243'n'
            TabOrder = 0
            TabStop = False
            OnClick = Button3Click
          end
          object Button4: TButton
            Left = 5
            Top = 54
            Width = 113
            Height = 33
            Caption = 'Excluir Secci'#243'n'
            TabOrder = 1
            TabStop = False
            OnClick = Button4Click
          end
        end
        object UpDown1: TUpDown
          Left = 145
          Top = 8
          Width = 16
          Height = 21
          Associate = Edit3
          Min = 100
          Max = 999
          Position = 100
          TabOrder = 3
        end
        object GroupBox3: TGroupBox
          Left = 559
          Top = 9
          Width = 249
          Height = 161
          Caption = 'Imagen:'
          TabOrder = 4
          object DBImage2: TDBImage
            Left = 2
            Top = 15
            Width = 245
            Height = 144
            Align = alClient
            DataField = 'Imagen'
            DataSource = DataSource2
            TabOrder = 0
          end
        end
        object Edit16: TEdit
          Left = 351
          Top = 59
          Width = 202
          Height = 21
          Color = clMenuBar
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 100
          ParentFont = False
          TabOrder = 5
        end
        object BitBtn2: TBitBtn
          Left = 351
          Top = 86
          Width = 99
          Height = 22
          Caption = 'Buscar Imagen'
          TabOrder = 6
          TabStop = False
          OnClick = BitBtn2Click
        end
        object BitBtn4: TBitBtn
          Left = 456
          Top = 86
          Width = 97
          Height = 22
          Caption = 'Borrar Imagen'
          TabOrder = 7
          TabStop = False
          OnClick = BitBtn4Click
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Campos'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBLookupListBox3: TDBLookupListBox
        Left = 0
        Top = 0
        Width = 969
        Height = 212
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'Codigo_Campo'
        ListField = 'Codigo_Campo;Descripcion'
        ListSource = DataSource3
        ParentFont = False
        PopupMenu = PopupMenu3
        TabOrder = 0
        OnClick = DBLookupListBox3Click
      end
      object Panel4: TPanel
        Left = 0
        Top = 218
        Width = 969
        Height = 246
        Align = alBottom
        TabOrder = 1
        object JvGradient4: TJvGradient
          Left = 1
          Top = 1
          Width = 842
          Height = 244
          Style = grVertical
          StartColor = 15440144
          EndColor = 15259317
          Steps = 79
          ExplicitTop = -3
          ExplicitHeight = 213
        end
        object Label13: TLabel
          Left = 8
          Top = 11
          Width = 86
          Height = 13
          Caption = 'Codigo Campo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label14: TLabel
          Left = 8
          Top = 36
          Width = 72
          Height = 13
          Caption = 'Descripci'#243'n:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label15: TLabel
          Left = 8
          Top = 82
          Width = 50
          Height = 13
          Caption = 'Tama'#241'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label16: TLabel
          Left = 8
          Top = 61
          Width = 30
          Height = 13
          Caption = 'Tipo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label19: TLabel
          Left = 173
          Top = 13
          Width = 13
          Height = 13
          Caption = 'X:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label20: TLabel
          Left = 233
          Top = 13
          Width = 13
          Height = 13
          Caption = 'Y:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label30: TLabel
          Left = 8
          Top = 226
          Width = 52
          Height = 13
          Caption = 'Edad Ini:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label31: TLabel
          Left = 212
          Top = 226
          Width = 33
          Height = 13
          Caption = 'Sexo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label33: TLabel
          Left = 105
          Top = 226
          Width = 55
          Height = 13
          Caption = 'Edad Fin:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label35: TLabel
          Left = 8
          Top = 102
          Width = 105
          Height = 13
          Caption = 'Valor por Defecto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object ListBox1: TListBox
          Left = 456
          Top = 56
          Width = 301
          Height = 107
          ItemHeight = 13
          TabOrder = 6
          Visible = False
        end
        object Edit5: TEdit
          Left = 94
          Top = 8
          Width = 49
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentFont = False
          TabOrder = 0
          Text = '100'
          OnExit = Edit5Exit
          OnKeyPress = Edit1KeyPress
        end
        object Edit6: TEdit
          Left = 94
          Top = 32
          Width = 664
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 100
          ParentFont = False
          TabOrder = 1
        end
        object Panel7: TPanel
          Left = 843
          Top = 1
          Width = 125
          Height = 244
          Align = alRight
          TabOrder = 2
          object JvGradient5: TJvGradient
            Left = 1
            Top = 1
            Width = 123
            Height = 242
            Style = grVertical
            StartColor = 15440144
            EndColor = 15259317
            Steps = 79
            ExplicitHeight = 207
          end
          object Button5: TButton
            Left = 6
            Top = 15
            Width = 113
            Height = 33
            Caption = 'Incluir Campo'
            TabOrder = 0
            TabStop = False
            OnClick = Button5Click
          end
          object Button6: TButton
            Left = 6
            Top = 54
            Width = 113
            Height = 33
            Caption = 'Excluir Campo'
            TabOrder = 1
            TabStop = False
            OnClick = Button6Click
          end
        end
        object ScrollBar1: TScrollBar
          Left = 94
          Top = 80
          Width = 273
          Height = 17
          Hint = 'Tama'#241'o del Campo'
          Max = 512
          Min = 1
          PageSize = 0
          ParentShowHint = False
          Position = 1
          ShowHint = True
          TabOrder = 3
          Visible = False
          OnChange = ScrollBar1Change
        end
        object Edit7: TEdit
          Left = 374
          Top = 79
          Width = 81
          Height = 21
          ReadOnly = True
          TabOrder = 4
          Visible = False
        end
        object ComboBox1: TComboBox
          Left = 92
          Top = 56
          Width = 361
          Height = 21
          Style = csDropDownList
          TabOrder = 5
          OnChange = ComboBox1Change
          Items.Strings = (
            '00-TITULO'
            '01.TEXTO CON LIMITE DE TAMA'#209'O'
            '02.TEXTO SIN LIMITE DE TAMA'#209'O'
            '03.OPCIONES DESPLEGABLES HACIA ABAJO HISTORICO'
            '04.OPCIONES DESPLEGABLES HACIA ABAJO'
            '06-FORMULA'
            '07-TABLA DE GEMAIPS'
            '08-FECHA'
            '09-HORA'
            '10-NUMERO'
            '11-BOTON DE ESCANER'
            '12-TEXTO FIJO'
            '13-CAMPO DE SELECCION MULTIPLE'
            '14-BOTON DE IMAGENES'
            '15-BOTON DE SOLICITUDES'
            '20-BOTON DE CARGOS')
        end
        object Button7: TButton
          Left = 763
          Top = 80
          Width = 17
          Height = 17
          Caption = '+'
          TabOrder = 7
          Visible = False
          OnClick = Button7Click
        end
        object Button8: TButton
          Left = 763
          Top = 57
          Width = 17
          Height = 17
          Caption = 'C'
          TabOrder = 8
          Visible = False
          OnClick = Button8Click
        end
        object CheckBox1: TCheckBox
          Left = 483
          Top = 8
          Width = 129
          Height = 17
          Caption = 'Campo Obligatorio'
          TabOrder = 9
        end
        object CheckBox3: TCheckBox
          Left = 374
          Top = 8
          Width = 97
          Height = 17
          Caption = 'Advertencia'
          TabOrder = 10
        end
        object PnlTablas: TPanel
          Left = 456
          Top = 56
          Width = 302
          Height = 154
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          Visible = False
          object JvGradient11: TJvGradient
            Left = 1
            Top = 1
            Width = 300
            Height = 152
            Style = grVertical
            StartColor = 15440144
            EndColor = 15259317
            Steps = 79
            ExplicitLeft = 0
          end
          object Lbl19: TLabel
            Left = 3
            Top = 39
            Width = 39
            Height = 13
            Caption = 'Tablas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            Visible = False
          end
          object Lbl20: TLabel
            Left = 3
            Top = 74
            Width = 86
            Height = 13
            Caption = 'Campo Codigo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            Visible = False
          end
          object Lbl17: TLabel
            Left = 3
            Top = 3
            Width = 82
            Height = 13
            Caption = 'Base de datos'
            Transparent = True
          end
          object Label17: TLabel
            Left = 3
            Top = 108
            Width = 114
            Height = 13
            Caption = 'Campo Descripci'#243'n:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            Visible = False
          end
          object ComboBox8: TComboBox
            Left = 4
            Top = 17
            Width = 296
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Sorted = True
            TabOrder = 0
            OnExit = ComboBox8Exit
          end
          object ComboBox3: TComboBox
            Left = 3
            Top = 52
            Width = 297
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Sorted = True
            TabOrder = 1
            OnExit = ComboBox3Exit
          end
          object ComboBox4: TComboBox
            Left = 3
            Top = 87
            Width = 297
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Sorted = True
            TabOrder = 2
          end
          object ComboBox9: TComboBox
            Left = 4
            Top = 121
            Width = 297
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Sorted = True
            TabOrder = 3
            Items.Strings = (
              '')
          end
        end
        object UpDown2: TUpDown
          Left = 143
          Top = 8
          Width = 16
          Height = 21
          Associate = Edit5
          Min = 100
          Max = 999
          Position = 100
          TabOrder = 12
        end
        object CheckBox6: TCheckBox
          Left = 624
          Top = 8
          Width = 129
          Height = 17
          Caption = 'Texto Tama'#241'o Fijo'
          TabOrder = 13
          Visible = False
          OnClick = CheckBox6Click
        end
        object Memo1: TMemo
          Left = 5
          Top = 114
          Width = 449
          Height = 106
          TabOrder = 14
          Visible = False
        end
        object Edit12: TEdit
          Left = 192
          Top = 8
          Width = 35
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentFont = False
          TabOrder = 15
          Text = '0'
          OnExit = Edit5Exit
          OnKeyPress = Edit1KeyPress
        end
        object Edit13: TEdit
          Left = 251
          Top = 8
          Width = 35
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentFont = False
          TabOrder = 16
          Text = '0'
          OnExit = Edit5Exit
          OnKeyPress = Edit1KeyPress
        end
        object BitBtn3: TBitBtn
          Left = 294
          Top = 6
          Width = 60
          Height = 25
          Caption = 'Coord.'
          TabOrder = 17
          OnClick = BitBtn3Click
        end
        object CheckBox7: TCheckBox
          Left = 759
          Top = 9
          Width = 72
          Height = 17
          Caption = 'Label?'
          Checked = True
          State = cbChecked
          TabOrder = 18
        end
        object ComboBox11: TComboBox
          Left = 251
          Top = 223
          Width = 134
          Height = 21
          Style = csDropDownList
          TabOrder = 19
          OnChange = ComboBox1Change
          Items.Strings = (
            'Masculino'
            'Femenino'
            ' ')
        end
        object Edit17: TEdit
          Left = 64
          Top = 223
          Width = 35
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentFont = False
          TabOrder = 20
          Text = '0'
          OnKeyPress = Edit1KeyPress
        end
        object Edit18: TEdit
          Left = 166
          Top = 223
          Width = 35
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentFont = False
          TabOrder = 21
          Text = '0'
          OnKeyPress = Edit1KeyPress
        end
        object Button15: TButton
          Left = 456
          Top = 220
          Width = 129
          Height = 25
          Caption = 'Probar Formula'
          TabOrder = 22
          Visible = False
          OnClick = Button15Click
        end
        object Edit19: TEdit
          Left = 591
          Top = 220
          Width = 167
          Height = 21
          TabOrder = 23
          Visible = False
        end
        object Button16: TButton
          Left = 760
          Top = 220
          Width = 83
          Height = 25
          Caption = 'Ayuda '
          ModalResult = 9
          TabOrder = 24
          OnClick = Button16Click
        end
        object Button17: TButton
          Left = 764
          Top = 103
          Width = 17
          Height = 17
          Caption = '-'
          TabOrder = 25
          Visible = False
          OnClick = Button17Click
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 977
    Height = 81
    Align = alTop
    TabOrder = 1
    object JvGradient1: TJvGradient
      Left = 1
      Top = 1
      Width = 975
      Height = 79
      Style = grVertical
      StartColor = 15440144
      EndColor = 15259317
      Steps = 79
      ExplicitLeft = -2
      ExplicitTop = -4
    end
    object Label3: TLabel
      Left = 14
      Top = 8
      Width = 50
      Height = 13
      Caption = 'Formato:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 81
      Top = 8
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 81
      Top = 24
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 14
      Top = 24
      Width = 51
      Height = 13
      Caption = 'Seccion:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 14
      Top = 40
      Width = 43
      Height = 13
      Caption = 'Campo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 81
      Top = 40
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM FDFormatos'
      'ORDER BY Codigo')
    Left = 824
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    OnDataChange = DataSource1DataChange
    Left = 792
    Top = 8
  end
  object ADOQueryValida: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM FDFormatos')
    Left = 744
    Top = 8
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    OnDataChange = DataSource2DataChange
    Left = 792
    Top = 40
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'CDFmt'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM FDSecciones'
      'WHERE Codigo_Formato = :CDFmt'
      'ORDER BY Codigo_Formato,Codigo_Seccion')
    Left = 824
    Top = 40
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    OnDataChange = DataSource3DataChange
    Left = 792
    Top = 72
  end
  object ADOQuery3: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'CDFmt'
        Size = -1
        Value = Null
      end
      item
        Name = 'CDSecc'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM FDCampos'
      'WHERE Codigo_Formato = :CDFmt AND'
      '              Codigo_Seccion = :CDSecc'
      'ORDER BY Codigo_Formato,Codigo_Seccion,Codigo_Campo')
    Left = 824
    Top = 72
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery4
    Left = 792
    Top = 104
  end
  object ADOQuery4: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM FDOpciones')
    Left = 824
    Top = 104
  end
  object OpenPictureDialog1: TOpenPictureDialog
    DefaultExt = '*.bmp'
    Filter = 'bmp|*.bmp'
    Left = 436
    Top = 185
  end
  object ADOQueryTablas: TADOQuery
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM FDFormatos')
    Left = 712
    Top = 8
  end
  object DataSource5: TDataSource
    DataSet = ADOQuery5
    Left = 792
    Top = 136
  end
  object ADOQuery5: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'CDFmt'
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
      'SELECT * '
      'FROM FDSubCampos'
      'WHERE Codigo_Formato = :CDFmt AND'
      '              Codigo_Seccion = :CDSecc AND'
      '             Codigo_Campo   = :CDCampo'
      
        'ORDER BY Codigo_Formato,Codigo_Seccion,Codigo_Campo,Codigo_Subca' +
        'mpo')
    Left = 824
    Top = 136
  end
  object ADOQuery6: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'CDFmt'
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
      end
      item
        Name = 'CDSCampo'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM FDOpciones'
      'WHERE Codigo_Formato = :CDFmt AND'
      '               Codigo_Seccion = :CDSecc AND'
      '               Codigo_Campo   = :CDCampo AND'
      '               Codigo_SubCampo   = :CDSCampo')
    Left = 744
    Top = 40
  end
  object ADOQuery7: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'CDFmt'
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
      end
      item
        Name = 'CDSCampo'
        Size = -1
        Value = Null
      end
      item
        Name = 'Vr'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM FDOpciones'
      'WHERE Codigo_Formato = :CDFmt AND'
      '               Codigo_Seccion = :CDSecc AND'
      '               Codigo_Campo   = :CDCampo AND'
      '               Codigo_SubCampo   = :CDSCampo AND'
      '               Valor = :Vr')
    Left = 744
    Top = 72
  end
  object ADOQueryValida2: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM FDFormatos')
    Left = 744
    Top = 104
  end
  object ADOQryG: TADOQuery
    Parameters = <>
    Left = 580
    Top = 25
  end
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Left = 648
    Top = 16
  end
  object PopupMenu1: TPopupMenu
    Left = 8
    Top = 48
    object Incrementar1: TMenuItem
      Caption = 'Incrementar'
      OnClick = Incrementar1Click
    end
    object Decrementar1: TMenuItem
      Caption = 'Decrementar'
      OnClick = Decrementar1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 248
    Top = 48
    object Incrementar2: TMenuItem
      Caption = 'Incrementar'
      OnClick = Incrementar2Click
    end
    object Decrementar2: TMenuItem
      Caption = 'Decrementar'
      OnClick = Decrementar2Click
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 144
    Top = 48
    object Incrementar3: TMenuItem
      Caption = 'Incrementar'
      OnClick = Incrementar3Click
    end
    object Decrementar3: TMenuItem
      Caption = 'Decrementar'
      OnClick = Decrementar3Click
    end
  end
  object PopupMenu4: TPopupMenu
    Left = 200
    Top = 48
    object Incrementar4: TMenuItem
      Caption = 'Incrementar'
      OnClick = Incrementar4Click
    end
    object Decrementar4: TMenuItem
      Caption = 'Decrementar'
      OnClick = Decrementar4Click
    end
  end
  object ADOQTmp: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'CDFmt'
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
      'SELECT * '
      'FROM FDSubCampos'
      'WHERE Codigo_Formato = :CDFmt AND'
      '              Codigo_Seccion = :CDSecc AND'
      '             Codigo_Campo   = :CDCampo'
      
        'ORDER BY Codigo_Formato,Codigo_Seccion,Codigo_Campo,Codigo_Subca' +
        'mpo')
    Left = 336
    Top = 8
  end
  object opguardar: TSaveDialog
    Filter = '*.*||*.xls||*.sql'
    Left = 620
    Top = 74
  end
  object JvInterpreterProgram1: TJvInterpreterProgram
    Left = 432
    Top = 120
  end
  object ADOQuery10: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'CDFmt'
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
      'SELECT * '
      'FROM FDSubCampos'
      'WHERE Codigo_Formato = :CDFmt AND'
      '              Codigo_Seccion = :CDSecc AND'
      '              Codigo_Campo = :CDCampo ')
    Left = 824
    Top = 184
  end
  object ADOQuery: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'CDFmt'
        Size = -1
        Value = Null
      end
      item
        Name = 'CDSecc'
        Size = -1
        Value = Null
      end
      item
        Name = 'CDCamp'
        Size = -1
        Value = Null
      end
      item
        Name = 'CDSubCamp'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM FDOpciones'
      'WHERE Codigo_Formato = :CDFmt AND'
      '              Codigo_Seccion = :CDSecc AND'
      '              Codigo_Campo = :CDCamp AND'
      '              Codigo_SubCampo = :CDSubCamp')
    Left = 824
    Top = 240
  end
end
