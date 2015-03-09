object FrmIngresoPacientes: TFrmIngresoPacientes
  Left = 421
  Top = 108
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Registro de personas'
  ClientHeight = 580
  ClientWidth = 837
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pag: TPageControl
    Left = 0
    Top = 0
    Width = 837
    Height = 580
    ActivePage = tab
    Align = alClient
    TabOrder = 0
    object tab: TTabSheet
      Caption = 'Creaci'#243'n'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 686
        Height = 552
        Align = alClient
        TabOrder = 0
        object GroupBox1: TGroupBox
          Left = 1
          Top = 1
          Width = 684
          Height = 318
          Align = alClient
          TabOrder = 0
          object Label4: TLabel
            Left = 12
            Top = 17
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
          object Label1: TLabel
            Left = 12
            Top = 60
            Width = 85
            Height = 13
            Caption = 'Primer Apellido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 140
            Top = 60
            Width = 100
            Height = 13
            Caption = 'Segundo Apellido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 263
            Top = 60
            Width = 87
            Height = 13
            Caption = 'Primer  Nombre'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 386
            Top = 60
            Width = 98
            Height = 13
            Caption = 'Segundo Nombre'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 12
            Top = 83
            Width = 89
            Height = 13
            Caption = 'Fecha Nacimiento:'
          end
          object Label8: TLabel
            Left = 357
            Top = 83
            Width = 27
            Height = 13
            Caption = 'Sexo:'
          end
          object Label10: TLabel
            Left = 12
            Top = 202
            Width = 126
            Height = 13
            Caption = 'Departamento Residencia:'
          end
          object Label11: TLabel
            Left = 336
            Top = 204
            Width = 48
            Height = 13
            Caption = 'Municipio:'
          end
          object Label12: TLabel
            Left = 12
            Top = 226
            Width = 65
            Height = 13
            Caption = 'Nacionalidad:'
          end
          object Label13: TLabel
            Left = 12
            Top = 130
            Width = 119
            Height = 13
            Caption = 'Direccion de Residencia:'
          end
          object Label14: TLabel
            Left = 12
            Top = 274
            Width = 28
            Height = 13
            Caption = 'Zona:'
          end
          object Label15: TLabel
            Left = 12
            Top = 154
            Width = 45
            Height = 13
            Caption = 'Telefono:'
          end
          object Label32: TLabel
            Left = 12
            Top = 250
            Width = 55
            Height = 13
            Caption = 'Ocupacion:'
          end
          object Label33: TLabel
            Left = 468
            Top = 295
            Width = 65
            Height = 13
            Caption = 'Grupo Etnico:'
          end
          object Label25: TLabel
            Left = 12
            Top = 295
            Width = 114
            Height = 13
            Caption = 'Regimen: (Tipo Usuario)'
          end
          object Label26: TLabel
            Left = 268
            Top = 295
            Width = 61
            Height = 13
            Caption = 'Tipo Afiliado:'
          end
          object Label9: TLabel
            Left = 326
            Top = 158
            Width = 58
            Height = 13
            Caption = 'Estado Civil:'
          end
          object Label37: TLabel
            Left = 12
            Top = 106
            Width = 101
            Height = 13
            Caption = 'Lugar de Nacimiento:'
          end
          object SpeedButton4: TSpeedButton
            Left = 534
            Top = 144
            Width = 137
            Height = 25
            Caption = 'Tomar Foto'
            OnClick = SpeedButton4Click
          end
          object Label38: TLabel
            Left = 12
            Top = 179
            Width = 28
            Height = 13
            Caption = 'Email:'
          end
          object Panel3: TPanel
            Left = 534
            Top = 5
            Width = 137
            Height = 133
            Caption = 'Doble Click para FOTO'
            TabOrder = 20
            object Image1: TImage
              Left = 1
              Top = 1
              Width = 135
              Height = 131
              Align = alClient
              Stretch = True
              Transparent = True
              ExplicitLeft = 8
              ExplicitTop = 11
              ExplicitWidth = 129
              ExplicitHeight = 122
            end
          end
          object DBLookupComboBox4: TDBLookupComboBox
            Left = 91
            Top = 14
            Width = 47
            Height = 21
            Hint = 'Tipo de  Documento'
            Color = clInfoBk
            KeyField = 'COD_TIPO'
            ListField = 'COD_TIPO'
            ListSource = DatamoduloAdmision.DtsTipodocumento
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
          object Edit1: TEdit
            Left = 140
            Top = 14
            Width = 121
            Height = 21
            Hint = 'Numero de  documento'
            CharCase = ecUpperCase
            Color = clInfoBk
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnExit = Edit1Exit
          end
          object Edit2: TEdit
            Left = 12
            Top = 38
            Width = 127
            Height = 21
            Hint = 'Primer  Apellido del paciente'
            CharCase = ecUpperCase
            Color = clInfoBk
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnExit = Edit2Exit
          end
          object Edit3: TEdit
            Left = 140
            Top = 38
            Width = 121
            Height = 21
            Hint = 'Segundo  Apellido del paciente'
            CharCase = ecUpperCase
            Color = clInfoBk
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
          end
          object Edit4: TEdit
            Left = 263
            Top = 38
            Width = 121
            Height = 21
            Hint = 'Primer Nombre del paciente'
            CharCase = ecUpperCase
            Color = clInfoBk
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            OnExit = Edit2Exit
          end
          object Edit5: TEdit
            Left = 386
            Top = 38
            Width = 121
            Height = 21
            Hint = 'Segundo  Apellido del paciente'
            CharCase = ecUpperCase
            Color = clInfoBk
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
          end
          object DateTimePicker1: TDateTimePicker
            Left = 140
            Top = 81
            Width = 189
            Height = 20
            Hint = 'Fecha  de  Naciemiento del paciente'
            Date = 38044.000000000000000000
            Time = 38044.000000000000000000
            Color = clInfoBk
            ParentShowHint = False
            ShowHint = True
            TabOrder = 6
            OnKeyPress = DateTimePicker1KeyPress
          end
          object DBLookupComboBox5: TDBLookupComboBox
            Left = 392
            Top = 81
            Width = 121
            Height = 21
            Hint = 'Tipo de Sexo del paciente'
            Color = clInfoBk
            KeyField = 'TIP_SEXO'
            ListField = 'NOM_SEXO'
            ListSource = DatamoduloAdmision.DtsSexo
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
          end
          object DBLookupComboBox6: TDBLookupComboBox
            Left = 140
            Top = 200
            Width = 189
            Height = 21
            Hint = 'Departamento  de  residencia del paciente'
            Color = clInfoBk
            KeyField = 'CD_Departamento'
            ListField = 'DS_Departamento'
            ListSource = DatamoduloAdmision.dtsGE_Departamentos
            ParentShowHint = False
            ShowHint = True
            TabOrder = 12
            OnExit = DBLookupComboBox6Exit
          end
          object DBLookupComboBox7: TDBLookupComboBox
            Left = 392
            Top = 200
            Width = 281
            Height = 21
            Hint = 'Municipio de residencia del paciente'
            Color = clInfoBk
            KeyField = 'CD_Municipio'
            ListField = 'DS_Municipio'
            ListSource = DatamoduloAdmision.dtsCiudad
            ParentShowHint = False
            ShowHint = True
            TabOrder = 13
          end
          object Edit7: TEdit
            Left = 140
            Top = 127
            Width = 372
            Height = 21
            Hint = 'Direccion de  Residencia del paciente'
            HelpType = htKeyword
            CharCase = ecUpperCase
            Color = clInfoBk
            ParentShowHint = False
            ShowHint = True
            TabOrder = 9
          end
          object DBLookupComboBox8: TDBLookupComboBox
            Left = 140
            Top = 270
            Width = 325
            Height = 21
            Hint = 'Zona  de  Residencia del paciente'
            HelpType = htKeyword
            Color = clInfoBk
            KeyField = 'TIP_ZONA'
            ListField = 'NOM_ZONA'
            ListSource = DatamoduloAdmision.DtsZona
            ParentShowHint = False
            ShowHint = True
            TabOrder = 16
          end
          object Edit8: TEdit
            Left = 140
            Top = 151
            Width = 173
            Height = 21
            Hint = 'Numero  Telefonico del paciente'
            HelpType = htKeyword
            CharCase = ecUpperCase
            Color = clInfoBk
            ParentShowHint = False
            ShowHint = True
            TabOrder = 10
            OnKeyPress = Edit8KeyPress
          end
          object DBLookupComboBox9: TDBLookupComboBox
            Left = 140
            Top = 247
            Width = 533
            Height = 21
            Hint = 'Ocupacion  del paciente'
            KeyField = 'CD_Ocupacion'
            ListField = 'DS_Ocupacion'
            ListSource = DatamoduloAdmision.DtsOcupacion
            ParentShowHint = False
            ShowHint = True
            TabOrder = 15
          end
          object DBLookupComboBox10: TDBLookupComboBox
            Left = 536
            Top = 293
            Width = 137
            Height = 21
            Hint = 'Grupo Etnico del paciente'
            HelpType = htKeyword
            KeyField = 'TIP_GRUPO'
            ListField = 'NOM_GRUPO'
            ListSource = DatamoduloAdmision.DtsGrupoEtnico
            ParentShowHint = False
            ShowHint = True
            TabOrder = 19
            OnExit = DBLookupComboBox10Exit
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 140
            Top = 293
            Width = 125
            Height = 21
            Hint = 'Tipo de  Regimen en  seguridad Social  al que pertenece'
            HelpType = htKeyword
            KeyField = 'COD_TIPO'
            ListField = 'NOM_TIPO'
            ListSource = DatamoduloAdmision.DtsRegimen
            ParentShowHint = False
            ShowHint = True
            TabOrder = 17
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 336
            Top = 293
            Width = 129
            Height = 21
            Hint = 'Tipo de Afiliado del paciente'
            HelpType = htKeyword
            Color = clInfoBk
            KeyField = 'COD_TIPO'
            ListField = 'NOM_TIPO'
            ListSource = DatamoduloAdmision.dtsTipoAfiliado
            ParentShowHint = False
            ShowHint = True
            TabOrder = 18
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 392
            Top = 151
            Width = 121
            Height = 21
            Hint = 'Estado Civil del paciente'
            KeyField = 'Codigo'
            ListField = 'Descripcion'
            ListSource = DatamoduloAdmision.DtsEstadosCiviles
            ParentShowHint = False
            ShowHint = True
            TabOrder = 11
          end
          object DBLookupComboBox13: TDBLookupComboBox
            Left = 140
            Top = 224
            Width = 533
            Height = 21
            Hint = 'Departamento  de  residencia del paciente'
            KeyField = 'Cod_Nacionalida'
            ListField = 'Nom_Nacionaliad'
            ListSource = DataSource1
            ParentShowHint = False
            ShowHint = True
            TabOrder = 14
            OnExit = DBLookupComboBox6Exit
          end
          object BitBtn4: TBitBtn
            Left = 264
            Top = 13
            Width = 25
            Height = 22
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
              0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
              00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
              00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
              F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
              F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
              FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
              0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
              00337777FFFF77FF7733EEEE0000000003337777777777777333}
            NumGlyphs = 2
            TabOrder = 21
            TabStop = False
            OnClick = BitBtn4Click
          end
          object Edit23: TEdit
            Left = 140
            Top = 103
            Width = 372
            Height = 21
            Hint = 'Direccion de  Residencia del paciente'
            HelpType = htKeyword
            CharCase = ecUpperCase
            Color = clInfoBk
            ParentShowHint = False
            ShowHint = True
            TabOrder = 8
          end
          object Edit26: TEdit
            Left = 140
            Top = 176
            Width = 530
            Height = 21
            Hint = 'Direccion de  Residencia del paciente'
            HelpType = htKeyword
            CharCase = ecUpperCase
            Color = clInfoBk
            ParentShowHint = False
            ShowHint = True
            TabOrder = 22
          end
        end
        object GroupBox5: TGroupBox
          Left = 1
          Top = 319
          Width = 684
          Height = 64
          Align = alBottom
          Caption = 'Personas Parecidas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object Memo1: TMemo
            Left = 2
            Top = 15
            Width = 680
            Height = 47
            TabStop = False
            Align = alClient
            Color = clMenuBar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 0
            WantReturns = False
          end
        end
        object Panel5: TPanel
          Left = 1
          Top = 383
          Width = 684
          Height = 168
          Align = alBottom
          TabOrder = 2
          object PageControl1: TPageControl
            Left = 1
            Top = 1
            Width = 682
            Height = 166
            ActivePage = TabSheet2
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object TabSheet2: TTabSheet
              Caption = 'Informacion Familiar'
              ImageIndex = 1
              object Label16: TLabel
                Left = 16
                Top = 3
                Width = 89
                Height = 13
                Caption = 'Nombre del Padre:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label17: TLabel
                Left = 356
                Top = 2
                Width = 100
                Height = 13
                Caption = 'Nombre de la Madre:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label18: TLabel
                Left = 16
                Top = 38
                Width = 113
                Height = 13
                Caption = 'Nombre  del Conyugue:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label19: TLabel
                Left = 16
                Top = 71
                Width = 249
                Height = 13
                Caption = 'Direccion de la Empresa donde  labora el Conyugue:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label20: TLabel
                Left = 356
                Top = 71
                Width = 185
                Height = 13
                Caption = 'Tel'#233'fono de la Empresa del Conyugue:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label21: TLabel
                Left = 356
                Top = 38
                Width = 210
                Height = 13
                Caption = 'Nombre  de la Empresa labora el Conyugue:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Edit9: TEdit
                Left = 16
                Top = 16
                Width = 329
                Height = 21
                CharCase = ecUpperCase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object Edit10: TEdit
                Left = 356
                Top = 16
                Width = 309
                Height = 21
                CharCase = ecUpperCase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object Edit11: TEdit
                Left = 16
                Top = 51
                Width = 329
                Height = 21
                CharCase = ecUpperCase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
              object Edit12: TEdit
                Left = 16
                Top = 84
                Width = 329
                Height = 21
                CharCase = ecUpperCase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
              end
              object Edit13: TEdit
                Left = 356
                Top = 84
                Width = 309
                Height = 21
                CharCase = ecUpperCase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 5
                OnExit = Edit13Exit
                OnKeyPress = Edit13KeyPress
              end
              object Edit14: TEdit
                Left = 356
                Top = 51
                Width = 309
                Height = 21
                CharCase = ecUpperCase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
              end
            end
            object TabSheet3: TTabSheet
              Caption = 'Informacion Responsable Paciente'
              ImageIndex = 2
              object GroupBox4: TGroupBox
                Left = 0
                Top = 17
                Width = 674
                Height = 117
                Caption = 'Persona  Responsable:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                Visible = False
                object Label27: TLabel
                  Left = 14
                  Top = 77
                  Width = 113
                  Height = 13
                  Caption = 'Nombre  de la Empresa:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label28: TLabel
                  Left = 226
                  Top = 77
                  Width = 118
                  Height = 13
                  Caption = 'Direccion de la Empresa:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label29: TLabel
                  Left = 548
                  Top = 77
                  Width = 45
                  Height = 13
                  Caption = 'Tel'#233'fono:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label30: TLabel
                  Left = 14
                  Top = 14
                  Width = 78
                  Height = 13
                  Caption = 'No. Documento:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label31: TLabel
                  Left = 198
                  Top = 15
                  Width = 120
                  Height = 13
                  Caption = 'Nombre  del responsable:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label35: TLabel
                  Left = 14
                  Top = 46
                  Width = 119
                  Height = 13
                  Caption = 'Direccion de Residencia:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label36: TLabel
                  Left = 442
                  Top = 46
                  Width = 45
                  Height = 13
                  Caption = 'Tel'#233'fono:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label34: TLabel
                  Left = 549
                  Top = 46
                  Width = 57
                  Height = 13
                  Caption = 'Parentesco:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Edit18: TEdit
                  Left = 14
                  Top = 90
                  Width = 203
                  Height = 21
                  CharCase = ecUpperCase
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 6
                end
                object Edit19: TEdit
                  Left = 224
                  Top = 90
                  Width = 315
                  Height = 21
                  CharCase = ecUpperCase
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 7
                end
                object Edit20: TEdit
                  Left = 551
                  Top = 90
                  Width = 107
                  Height = 21
                  CharCase = ecUpperCase
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 8
                  OnKeyPress = Edit20KeyPress
                end
                object Edit21: TEdit
                  Left = 68
                  Top = 27
                  Width = 123
                  Height = 21
                  CharCase = ecUpperCase
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  OnExit = Edit21Exit
                end
                object Edit22: TEdit
                  Left = 198
                  Top = 27
                  Width = 459
                  Height = 21
                  CharCase = ecUpperCase
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                end
                object Edit24: TEdit
                  Left = 14
                  Top = 58
                  Width = 419
                  Height = 21
                  CharCase = ecUpperCase
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 3
                end
                object Edit25: TEdit
                  Left = 442
                  Top = 58
                  Width = 98
                  Height = 21
                  CharCase = ecUpperCase
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 4
                  OnKeyPress = Edit25KeyPress
                end
                object DBLookupComboBox11: TDBLookupComboBox
                  Left = 549
                  Top = 58
                  Width = 110
                  Height = 21
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  KeyField = 'COD_PARENTESCO'
                  ListField = 'NOM_PARENTESCO'
                  ListSource = DatamoduloAdmision.DtsParentesco
                  ParentFont = False
                  TabOrder = 5
                end
                object DBLookupComboBox14: TDBLookupComboBox
                  Left = 14
                  Top = 27
                  Width = 48
                  Height = 21
                  Hint = 'Tipo de  Documento'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  KeyField = 'COD_TIPO'
                  ListField = 'COD_TIPO'
                  ListSource = DatamoduloAdmision.DtsTipoDoc2
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                end
              end
              object chk: TCheckBox
                Left = 2
                Top = 1
                Width = 306
                Height = 17
                Caption = 'El paciente tiene persona Responsable?'
                TabOrder = 0
                OnClick = chkClick
              end
            end
            object TabSheet1: TTabSheet
              Caption = 'Informacion Laboral'
              ImageIndex = 2
              object GroupBox2: TGroupBox
                Left = 0
                Top = 0
                Width = 674
                Height = 55
                Align = alTop
                Caption = 'Informacion Laboral'
                TabOrder = 0
                object Label23: TLabel
                  Left = 34
                  Top = 15
                  Width = 132
                  Height = 13
                  Caption = 'Nombre  de la Empresa:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label22: TLabel
                  Left = 258
                  Top = 16
                  Width = 137
                  Height = 13
                  Caption = 'Direccion de la Empresa '
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label24: TLabel
                  Left = 590
                  Top = 14
                  Width = 49
                  Height = 13
                  Caption = 'Telefono'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Edit17: TEdit
                  Left = 8
                  Top = 28
                  Width = 201
                  Height = 21
                  CharCase = ecUpperCase
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  OnEnter = Edit17Enter
                end
                object Edit15: TEdit
                  Left = 211
                  Top = 28
                  Width = 366
                  Height = 21
                  CharCase = ecUpperCase
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
                object Edit16: TEdit
                  Left = 578
                  Top = 28
                  Width = 77
                  Height = 21
                  CharCase = ecUpperCase
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                  OnKeyPress = Edit16KeyPress
                end
              end
              object GroupBox3: TGroupBox
                Left = 0
                Top = 55
                Width = 674
                Height = 80
                Align = alClient
                Caption = 'Aseguradora:'
                TabOrder = 1
                object Label5: TLabel
                  Left = 10
                  Top = 47
                  Width = 56
                  Height = 13
                  Caption = 'No. Poliza:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBLookupComboBox12: TDBLookupComboBox
                  Left = 8
                  Top = 18
                  Width = 649
                  Height = 21
                  Color = clInfoBk
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  KeyField = 'NUM_DOCUMENTO'
                  ListField = 'NOM_EPS'
                  ListSource = DatamoduloAdmision.DtsAseguradoras
                  ParentFont = False
                  TabOrder = 0
                  OnExit = DBLookupComboBox12Exit
                end
                object Edit6: TEdit
                  Left = 72
                  Top = 44
                  Width = 201
                  Height = 21
                  CharCase = ecUpperCase
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  OnEnter = Edit17Enter
                end
              end
            end
          end
        end
      end
      object Panel4: TPanel
        Left = 686
        Top = 0
        Width = 143
        Height = 552
        Align = alRight
        TabOrder = 1
        object BitBtn1: TBitBtn
          Left = 5
          Top = 64
          Width = 133
          Height = 58
          Caption = '&Grabar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Glyph.Data = {
            F6210000424DF621000000000000360000002800000035000000360000000100
            180000000000C0210000110B0000110B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFEFEFEFDFDFDFDFDFDFDFDFDFDFDFDFEFEFEFEFEFEFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
            FEFEFCFCFCFAFAFAF8F8F8F7F7F7F6F6F6F7F7F7F9F9F9FAFAFAFCFCFCFDFDFD
            FEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFB
            FBFBF7F7F7F1F1F1ECECECE9E9E9E8E8E8EAEAEAEDEDEDF0F0F0F4F4F4F6F6F6
            F8F8F8FAFAFAFCFCFCFDFDFDFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAF5
            F5F5ECECECE2E2E2D9D9D9D3D3D3D2D2D2D5D5D5D9D9D9DEDEDEE4E4E4E8E8E8
            EDEDEDF0F0F0F4F4F4F6F6F6F8F8F8FAFAFAFCFCFCFDFDFDFEFEFEFEFEFEFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAF4F4F4EA
            EAEADDDDDDCECECEC1C1C1B9B9B9B7B7B7BABABABFBFBFC5C5C5CCCCCCD2D2D2
            D8D8D8DEDEDEE4E4E4E8E8E8EDEDEDF0F0F0F4F4F4F6F6F6F8F8F8FAFAFAFCFC
            FCFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAF4F4F4E9E9E9DB
            DBDBBDBDBD8A8A8A9F9F9FA1A1A19F9F9FA0A0A0A5A5A5ABABABB1B1B1B7B7B7
            BEBEBEC5C5C5CCCCCCD2D2D2D8D8D8DEDEDEE4E4E4E8E8E8EDEDEDF0F0F0F4F4
            F4F7F7F7FAFAFAFCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAF4F4F4E9E9E9DADADAA3
            A3A31818186060605151513636363E3E3E6363638989899595959A9A9A9F9F9F
            A4A4A4AAAAAAB1B1B1B7B7B7BEBEBEC5C5C5CCCCCCD2D2D2D9D9D9DFDFDFE5E5
            E5EBEBEBF1F1F1F6F6F6FBFBFBFDFDFDFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAF4F4F4E9E9E9DADADAA3A3A317
            1717ABABABDFDFDFDDDDDDDADADABDBDBD8686865050503434343D3D3D626262
            8888889595959A9A9A9F9F9FA4A4A4AAAAAAB1B1B1B7B7B7BEBEBEC6C6C6CECE
            CED7D7D7E1E1E1ECECECF5F5F5FBFBFBFEFEFEFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAF4F4F4E9E9E9DADADAA3A3A3171717A1
            A1A1D6D6D6E2E2E2DEDEDEE0E0E0DFDFDFDEDEDEDADADAD6D6D6BABABA848484
            4E4E4E2727273D3D3D6262628888889595959A9A9A9F9F9FA5A5A5ABABABB4B4
            B4BFBFBFCECECEDEDEDEECECECF7F7F7FCFCFCFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFDFDFDFAFAFAF4F4F4E9E9E9DADADAA3A3A3171717A1A1A1D3
            D3D3DADADAE4E4E4DDDDDDDEDEDEE0E0E0E2E2E2E3E3E3E4E4E4E1E1E1DDDDDD
            D7D7D7D3D3D3AAAAAA7474744040402626263D3D3D6262628989899696969E9E
            9EA9A9A9BBBBBBCFCFCFE3E3E3F2F2F2FBFBFBFEFEFEFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFEFEFEFAFAFAF4F4F4E9E9E9DADADAA3A3A3171717A2A2A2D3D3D3D8
            D8D8DFDFDFE5E5E5DBDBDBDDDDDDDEDEDEE0E0E0E2E2E2E3E3E3E5E5E5E6E6E6
            E8E8E8E7E7E7E2E2E2DCDCDCD4D4D4CFCFCFA7A7A77272723F3F3F2626264848
            489B9B9BADADADC4C4C4DCDCDCEEEEEEF9F9F9FEFEFEFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFEFEFEFBFBFBF4F4F4EAEAEADADADAA3A3A3171717A2A2A2D6D6D6D8D8D8D7
            D7D7E3E3E3E7E7E7D9D9D9DBDBDBDDDDDDDEDEDEE0E0E0E2E2E2E3E3E3E5E5E5
            E6E6E6E8E8E8EAEAEAEBEBEBEDEDEDEBEBEBADCBAECED6CED1D1D1CBCBCB4C4C
            4C525252A5A5A5BDBDBDD7D7D7ECECECF8F8F8FDFDFDFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
            FEFBFBFBF5F5F5EAEAEADBDBDBA3A3A3171717A2A2A2D6D6D6D8D8D8DADADAE5
            E5E5E9E9E9E8E8E8D8D8D8D9D9D9DBDBDBDDDDDDDEDEDEE0E0E0E2E2E2E3E3E3
            E5E5E5E6E6E6E8E8E8EAEAEAEBEBEBB4CFB439AE3936AD3653AD55E3E3E39A9A
            9A242424A1A1A1BABABAD5D5D5EBEBEBF8F8F8FDFDFDFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
            FDF7F7F7EDEDEDDDDDDDA5A5A5181818A2A2A2D6D6D6D8D8D8DDDDDDE8E8E8F4
            F4F4F3F3F3EDEDEDD8D8D8D8D8D8D9D9D9DBDBDBDDDDDDDEDEDEE0E0E0E2E2E2
            E3E3E3E5E5E5E6E6E6E8E8E8EAEAEAEBEBEB87B2875EAF5D1F8320EAEAEA9E9E
            9E242424A0A0A0BABABAD5D5D5EBEBEBF7F7F7FDFDFDFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFBFB
            FBF2F2F2E4E4E4A9A9A9181818A2A2A2D6D6D6D8D8D8DEDEDEE8E8E8F4F4F4FA
            FAFAEFEFEFF0F0F0F2F2F2ECECECE6E6E6E0E0E0DCDCDCDDDDDDDEDEDEE0E0E0
            E2E2E2E3E3E3E5E5E5E6E6E6E8E8E8EAEAEAEBEBEBEDEDEDEFEFEFEAEAEAA2A2
            A2242424A1A1A1BBBBBBD6D6D6EBEBEBF8F8F8FDFDFDFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF7F7
            F7ECECECB1B1B1181818A2A2A2D6D6D6D8D8D8DEDEDEE8E8E8F4F4F4FAFAFAEF
            EFEFE5E5E5E3E3E3E4E4E4E8E8E8EBEBEBEFEFEFF0F0F0EBEBEBE7E7E7E2E2E2
            E0E0E0E2E2E2E3E3E3E5E5E5E6E6E6E8E8E8EAEAEAEBEBEBEDEDEDEAEAEAA5A5
            A5252525A5A5A5BEBEBED8D8D8ECECECF8F8F8FDFDFDFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFAFAFAF3F3
            F3BABABA191919A4A4A4D7D7D7D8D8D8DEDEDEE8E8E8F4F4F4FAFAFAEFEFEFE5
            E5E5E3E3E3E2E2E2E1E1E1E0E0E0DFDFDFDEDEDEE1E1E1E5E5E5E9E9E9EEEEEE
            EEEEEEEAEAEAE7E7E7E6E6E6E5E5E5E6E6E6E8E8E8EAEAEAEBEBEBEAEAEAA9A9
            A9262626ACACACC5C5C5DDDDDDEFEFEFF9F9F9FEFEFEFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFBFBFBF6F6F6EBEB
            EB292929A3A3A3D8D8D8D8D8D8DEDEDEE8E8E8F4F4F4FAFAFAEFEFEFE5E5E5E3
            E3E3E2E2E2E1E1E1E0E0E0DFDFDFDEDEDEDDDDDDDCDCDCDBDBDBDBDBDBDADADA
            DEDEDEE3E3E3E7E7E7ECECECECECECEAEAEAE9E9E9E9E9E9EAEAEAEAEAEAACAC
            AC292929B7B7B7CFCFCFE4E4E4F3F3F3FBFBFBFEFEFEFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFCFCFCF6F6F6EDEDEDDEDE
            DE000000D0D0D0D8D8D8DEDEDEE8E8E8F4F4F4FAFAFAEFEFEFE5E5E5E3E3E3E2
            E2E2E1E1E1E0E0E0DFDFDFDEDEDEDDDDDDDCDCDCDBDBDBDBDBDBDADADAD9D9D9
            DADADADEDEDEDEDEDEDDDDDDDEDEDEE0E0E0E4E4E4E9E9E9EAEAEAE9E9E9AEAE
            AE383838C7C7C7DBDBDBECECECF7F7F7FDFDFDFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF8F8F8EEEEEEE0E0E0CDCD
            CD000000D6D6D6DEDEDEE8E8E8F4F4F4FAFAFAEFEFEFE5E5E5E3E3E3E2E2E2E1
            E1E1E0E0E0DFDFDFDEDEDEDDDDDDDCDCDCDBDBDBDBDBDBDADADAD9D9D9D8D8D8
            D7D7D7D9D9D9E0E0E0E2E2E2E3E3E3E4E4E4E3E3E3DDDDDDDCDCDCCFCFCF2B2B
            2B878787D7D7D7E8E8E8F4F4F4FBFBFBFEFEFEFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF9F9F9F0F0F0E2E2E2C4C4C45252
            52000000DFDFDFE8E8E8F4F4F4FAFAFAEFEFEFE5E5E5E3E3E3E2E2E2E1E1E1E0
            E0E0DFDFDFDEDEDEDDDDDDDCDCDCDBDBDBDBDBDBDADADAD9D9D9D8D8D8C3C3C3
            B7B7B7D2D2D2DDDDDDE3E3E3E4E4E4E5E5E5E7E7E7E6E6E6C6C6C62626267B7B
            7BD7D7D7E7E7E7F2F2F2F9F9F9FDFDFDFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFBFBFBF4F4F4E7E7E7C8C8C82424244517
            02000000E8E8E8F4F4F4FAFAFAEFEFEFE5E5E5E3E3E3E2E2E2E1E1E1E0E0E0DF
            DFDFDEDEDEDDDDDDDCDCDCDBDBDBDBDBDBDADADAD9D9D9D1D1D1B6B6B6ABABAB
            8787879C9C9CCECECEE4E4E4E5E5E5E7E7E7E6E6E6C6C6C62626267C7C7CD7D7
            D7E7E7E7F2F2F2F9F9F9FDFDFDFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF8F8F8EDEDEDCFCFCF2525255C2306963B
            0B000000F4F4F4FAFAFAEFEFEFE5E5E5E3E3E3E2E2E2E1E1E1E0E0E0DFDFDFDE
            DEDEDDDDDDDCDCDCDBDBDBDBDBDBDADADAD9D9D9CCCCCCB8B8B8B2B2B2828282
            0019001E1E1EA0A0A0E0E0E0E7E7E7E3E3E3C4C4C4262626797979D6D6D6E7E7
            E7F2F2F2F9F9F9FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFEFEFEFBFBFBF3F3F3E5E5E5414141642A09A34711A84C
            14000000FAFAFAEFEFEFE5E5E5E3E3E3E2E2E2E1E1E1E0E0E0DFDFDFDEDEDEDD
            DDDDDCDCDCDBDBDBDBDBDBDADADAD9D9D9CBCBCBBCBCBCB8B8B89E9E9E0F180F
            14B7140080003A3A3ACFCFCFE1E1E1A9A9A9161616939393CCCCCCE1E1E1F0F0
            F0F8F8F8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFEFEFEF9F9F9EEEEEE7C7C7C351906AE5217B5581ABB5E
            1D241206C2C2C2E5E5E5E3E3E3E2E2E2E1E1E1E0E0E0DFDFDFDEDEDEDDDDDDDC
            DCDCDBDBDBDBDBDBDADADAD8D8D8CDCDCDC3C3C3BFBFBFB0B0B022222233A333
            4ADB4A0FD00F004C006060608E8E8E151515828282B6B6B6CFCFCFE4E4E4F2F2
            F2FAFAFAFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFDFDFDF6F6F6DBDBDB19130EAC551AC06220C76924CD6F
            279A63261A1E1A4747477F7F7FB7B7B7E0E0E0DFDFDFDEDEDEDDDDDDDCDCDCDB
            DBDBDBDBDBDADADAD9D9D9CECECECACACAC6C6C6C2C2C2474747246D244EDC4E
            55DD5557DE5706C1060026001212127272729B9B9BB0B0B0C8C8C8DEDEDEEEEE
            EEF8F8F8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFCFCFCF4F4F4818181613210C86A24D17329D87A2CA98C
            3D9BBE7ACBFFCBA5CFA5638463372F151C16114545457C7C7CB3B3B3DBDBDBDB
            DBDBDADADAD9D9D9D6D6D6CDCDCDCBCBCBC9C9C97B7B7B1744174FDC4F58DE58
            60DF6068E1685ADE5A00B300081408787878949494A5A5A5BBBBBBD2D2D2E5E5
            E5F2F2F2FAFAFAFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFEFEFEFAFAFAF1F1F11C1C1CB46322D87A2CE18331B6A85DC0F3
            C0CFFFCFCFFFCFC7F9C7A4AE61D09E489FB9717BAF7B567A563E341C1C161044
            44447A7A7AA2A2A2D7D7D7D6D6D6D4D4D4A9A9A90D290D4ACE4A58DE5862E062
            6AE16A72E3727AE47A50DC50009900191919848484999999ACACACC2C2C2D7D7
            D7E9E9E9F4F4F4FBFBFBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFEFEFEFAFAFAD2D2D2351D0ADC7E2EE78934DF953EB6EAB6D3FF
            D3BEEFBEBEC886C0EBB792C380B5EAB5B0E1A7C8BF77F69F48F3963EEC8D37B8
            6B287A451940230C0C06023535356A6A6A111A113EB23E57DE5761E0616BE26B
            74E3747DE57D84E7848BE88B37D7370066003333339090909E9E9EB1B1B1C7C7
            C7DCDCDCECECECF7F7F7FCFCFCFEFEFEFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFEFEFEF9F9F9959595704118EA8C36E39A43B9A857D6FFD6D7FF
            D7A0D9A0FABF78FAC17CF1C17BAEDEA6BFC17CF9B76CF8AF61F7A653F69C44EF
            9139E38432D5772BC76A24974B17150A022E892E53DD535EDF5E69E16973E373
            7DE57D86E7868FE98F96EA9693E9931ED31E004000565656939393A3A3A3B7B7
            B7CECECEE2E2E2F0F0F0F9F9F9FDFDFDFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFEFEFEF9F9F9777777A36226F59940B4D79EA4DAA4DAFFDADBFF
            DBC0EDC0BFC582C0C684BECA89D8FFD8B7C37FFBC785FABF79F9B66AF8AB59F6
            9E47F09139E28331D3752A562D0F1E5F1E4DDC4D59DE5965E06570E2707BE57B
            85E7858FE98F98EA98A1ECA1A8EEA898EB980BC20B0026007474749A9A9AACAC
            ACC2C2C2D8D8D8EAEAEAF6F6F6FCFCFCFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFEFEFEF9F9F95A5A5AB87330F7A552C2EEC2D0F6D0DEFFDEDFFF
            DFDFFFDFCBF2CBDEFFDED7FAD7DBFFDBABDCA5D4CF90FCCF90FBC480F9B86EF8
            AB5AF69D45ED8E378B501E0F360F46DA4652DD525FDF5F6BE26B77E47782E682
            8DE88D97EA97A2ECA2ABEEABB3F0B3BAF1BA8FE98F00A600091509929292AAAA
            AABDBDBDD3D3D3E6E6E6F4F4F4FBFBFBFEFEFEFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFEFEFEFAFAFA3C3C3CB97A3BF8B163C6EFC6E0FFE0E2FFE2E3FF
            E3E3FFE3E3FFE3E2FFE2E1FFE1DFFFDFDDFFDDB3E5B3F6DCA3FCD295FBC581F9
            B76CF7A855C77C341216063ACB3A4ADB4A57DE5763E06370E2707CE57C87E787
            93EA939FEC9FAAEEAAB4F0B4BEF2BEC6F3C6CBF4CB74E3740080002A2A2AB3B3
            B3C3C3C3D5D5D5E7E7E7F4F4F4FBFBFBFEFEFEFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFEFEFEFBFBFB5B5B5BBA8145EBBB72D6F7D6E4FFE4E6FFE6E7FF
            E7E7FFE7E7FFE7E6FFE6E4FFE4E2FFE2E0FFE0CDF5CDBCD79CE8DAA0FCD092FA
            C17BE9A65E2E1E0E2AAE2A40D9404DDC4D5ADE5A67E16773E37380E6808CE88C
            98EB98A5EDA5B1EFB1A5EBA566DB666ADD696CDF6C6CE16C0DCF0D0059005757
            57D1D1D1DFDFDFECECECF6F6F6FCFCFCFEFEFEFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFCFCFC7A7A7A9B7142DEC47FE5FFE5E7FFE7E9FFE9EBFF
            EBEBFFEBEBFFEBEAFFEAE8FFE8E6FFE6D9F9D9DBFCDBD8FCD8AFDEA5CDD598FB
            CA89BB8C560828081A6B1A216C21276E272E6F2E428D4276E47682E6828FE98F
            9CEB9CA9EEA9B6F0B6C2F3C209C2080362030263020165010066000066000E0E
            0EE3E3E3ECECECF4F4F4FAFAFAFDFDFDFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFDFDFDAAAAAA6D5233EECA88DDF9DDEBFFEBEDFFEDEEFF
            EEEFFFEFEFFFEFEDFFEDEBFFEBDEFADEE1FCE1E2FFE2DFFFDFDBFFDBD4FCD4B7
            D494DCC6819B6E3D7B4F2375461B6C3D166234111C381C78E47884E78491E991
            9EEC9EABEEABB8F1B8A2E9A10AC0091212125252525D5D5D686868717171B1B1
            B1F1F1F1F6F6F6FAFAFAFDFDFDFEFEFEFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFEFEFEDBDBDB2F2417FCCE8FE1ECC5EEFFEEF0FFF0F2FF
            F2F3FFF3F3FFF3F1FFF1EEFFEEE1FAE1E8FFE8E4FFE4E1FFE1DDFFDDC6F3C6C7
            F6C7CAD89AF9B265F7A04AED8E37DA7C2DAF5D201C381C78E47884E78491E991
            9EEC9EACEEACB9F1B996E696088F08262626ACACACC5C5C5DCDCDCECECECF5F5
            F5FAFAFAFCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFEFEFEFCFCFC2E2E2EDDB882F2E1ABE6FBE6F3FFF3F6FF
            F6F7FFF7F6FFF6F4FFF4F1FFF1EDFFEDEAFFEAE6FFE6E2FFE2DEFFDEDAFFDAC3
            EFBDF0C986F9B468F7A24CEE8F38DB7D2E8C4B1A30633077E47783E68390E990
            9DEB9DAAEEAAB7F1B773DA72088208464646B6B6B6CFCFCFE5E5E5F3F3F3FAFA
            FAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFDFDFD9C9C9C5E503AFEE3AEE5EFC8F5FFF5F9FF
            F9FBFFFBFAFFFAF6FFF6F3FFF3EAFDEADDF7DADFFCDFE3FFE3DFFFDFD1ECB9BE
            A277FBC683F9B468F7A24DEE9038CE762B26150755B75575E37581E6818DE88D
            9AEB9AA6EDA6B2F0B245CC440652056B6B6BC2C2C2D9D9D9ECECECF8F8F8FDFD
            FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFCFCFC1F1F1FDEC697F4EABAEDFCEDFAFF
            FAFDFFFDFBFFFBF7FFF7F3FFF3CCF3CCE2F2CFD8F5CFDDFCDDC7F1BE85836701
            19011F180F6C4E2C7B5025593615131608378B3765E06571E3717DE57D89E889
            95EA95A1ECA199E79810B90F011701AFAFAFD0D0D0E4E4E4F2F2F2FAFAFAFEFE
            FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEBCBCBC2F2A20DFECB8E8F5D5F8FF
            F8FAFFFAF9FFF9F6FFF6F2FFF2EEFFEEE4FDE4CFF8CFE0FEE0C7F4C29DBC9D04
            230416AF15199E1922A0222CA22C43CD4354DD5460DF606CE26C78E47884E784
            8FE98F9AEB9A37C3360B730A464646CCCCCCDEDEDEEEEEEEF8F8F8FDFDFDFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD6D6D6D565E56EBFDEBF5FF
            F5F6FFF6F5FFF5F3FFF3F0FFF0E7FEE7E9FFE9DAFDDACBF9CBD9FDD9DAFFDA82
            9E82071F0723AE222AD52A37D73743DA434FDC4F5BDE5B67E16772E3727DE57D
            81E4803DC33C129E100D170DB5B5B5DEDEDEECECECF6F6F6FBFBFBFEFEFEFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFCFCFC5D5D5D585D54EBFB
            E2F2FFF2E6FCDFEDF4D0EDF8D9E8F5CDDCFEDCD9FCD4DEFDD9D8FFD8E0EBB7F7
            C5809B7040151D0A1F6F1D30C02F3DD53D4ADB4A55DD5560E06062DB624FCB4F
            20B21E1390110F230FA2A2A2E2E2E2EDEDEDF5F5F5FBFBFBFEFEFEFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFCFCFC5D5D5D4F49
            39E8DDB0FBECBFFFECC1FFECC2FFEBC0FFEABCFEE8B6FEDFA9FCD397FBC683F9
            B86DF8A957D68639563313051305144E131D771B1B7919197C17177E15126B10
            094109383838BABABAEBEBEBF1F1F1F7F7F7FBFBFBFEFEFEFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFD9D9D
            9D1F1D1B9F9071FEE6B4FEE6B4FEE5B2FEE1ABFDDAA1FCD193FBC682F9BA70F8
            AC5CF69E47EE8F38DF8030693A140D0D0D5151513838383939393A3A3A767676
            C1C1C1F0F0F0F3F3F3F7F7F7FAFAFAFCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
            FDECECEC5D5D5D1E1C1A6E6047BDA174FCD091FBC988FAC17BF9B76CF8AC5CF6
            A049B56F2C653B17291D13545454D8D8D8ECECECF1F1F1F4F4F4F7F7F7F8F8F8
            F9F9F9FAFAFAFBFBFBFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFEFEFEFDFDFDECECEC9C9C9C5C5C5C2D2D2D0F0B073E2D1B3E2B170F0A052C
            2C2C585858939393E0E0E0F1F1F1F4F4F4F8F8F8FAFAFAFCFCFCFDFDFDFDFDFD
            FEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFEFEFEFDFDFDFCFCFCFAFAFAF9F9F9F8F8F8F7F7F7F6F6F6F6
            F6F6F7F7F7F8F8F8F9F9F9FAFAFAFCFCFCFDFDFDFEFEFEFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFDFDFDFDFDFDFD
            FDFDFDFDFDFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
          ParentFont = False
          TabOrder = 0
          TabStop = False
          OnClick = BitBtn1Click
        end
        object BitBtn2: TBitBtn
          Left = 5
          Top = 2
          Width = 133
          Height = 58
          Caption = '&Nuevo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Glyph.Data = {
            360C0000424D360C000000000000360000002800000020000000200000000100
            180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEDAB356A55F2A82351A6E241A6E242A
            823557A760AEDAB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF70B778247C2D24933128AF362BBF3C2BBF3C28
            AF36249C31247C2D70B778FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFCFAFAF9FAF4F3F3E3E5E4DEDEDDE3E5E4E3E5E4E3E5E4E5DF
            E0E3E5E4EAEAEAEFEFF170B7782493312BBF3C3BC24A36C24531C1412BBF3C2B
            BF3C31C1412BBD3B24933170B778FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFF5FBFAD3D3D3A6A5A59595959595958989899595958989899595
            958989899595957BA580247C2D2EC03E41C44F41C44F3BC24AFFFFFFFFFFFF2B
            BF3C2BBD3B31C1412BBD3B247C2DAEDAB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFD3D3D35D75A433477415196D15196D15196D15196D15196D1519
            6D33477436475B2A8235249C3141C44F41C44F43C55143C551FFFFFFFFFFFF36
            C2452BBF3C2BBF3C36C245249C3157A760FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FCFAFFFFFFFF1A23B70E11941A23B71A23B70931EC0033FF0033FF0033FF0033
            FF0E11941A23B71E77302AB93A47C65551C85E51C85E51C85EFFFFFFFFFFFF3B
            C24A36C24531C14131C14128AF362A8235FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFF5FBFA0E11941A23B7112CD50835F60E3EFB1546FF345EF74B78FF0033
            FF423BDB292DBD1A6E243BC24A5ACA66FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF36C24531C1411A6E24FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF0E11941A23B70931EC1546FF4B78FF6F90FF6F90FF4B78FF1A23
            B72662AD292DBD1A6E243BC24A86D48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF3BC24A36C2451A6E24FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF0E11940033FF0535FD4B78FF91ABFF91ABFF4B78FF292DBD2662
            AD2662AD2662AD1E77302AB93A97D89E7BD1846CCE775ACA66FFFFFFFFFFFF41
            C44F41C44F41C44F41C44F2AB93A2A8235FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF6459CE0033FF0033FF6F90FF91ABFF5883FF4B78FF292DBD2662
            AD3185D342B2F61F714E249C314DC75A97D89E6CCE775ACA66FFFFFFFFFFFF47
            C65543C55141C44F41C44F249C3157A760FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF292DBD0033FF6F90FF5883FF4B78FF1A23B72662AD3185
            D342B2F642B2F6325D8B1E773031C141AEDAB386D48F6CCE77FFFFFFFFFFFF5A
            CA664FC85C41C44F2EC03E247C2DAEDAB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFEFEFF1292DBD4B78FF4B78FF1A23B72662AD3185D33185
            D342B2F642B2F6345EF731807524933131C141AEDAB397D89E86D48F6CCE775A
            CA6647C6552EC03E24933170B778FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFEAEAEABDBEC12A29810E11942C38161625701625701625
            701625707F606C1A23B7292DBD275E41247C2D26A2343BC24A4DC75A47C65531
            C14126A234247C2D70B778FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFEAEAEAA6A5A5353535204190214694224C99224C992146942146
            941D3E8E16257036475B36475B6B6A6A9AA58557A7602A82351A6E241A6E242A
            823557A760AEDAB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFF4F3F3959595070707204190214694234E97265CA82662AD265CA8265C
            A8265CA82662AD20419036475B6B6A6ABDBEC1FAF9FAFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FCFAFFDEDEDD0D0D0D0707072662AD265CA8265CA8265CA82969B52969B52969
            B52969B52763AE2662AD162570555556BDBEC1FDFDFDFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF7777770707070D0D0D0D0D0D2662AD2B71BD2B71BD2B71BD2D7AC72D7A
            C72D7AC72B71BD2969B52041905C6970A6A5A5FAF9FAFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF31342F0D0D0D1111111111112526343082CE2D7AC72D7AC73185D33185
            D32F85D33082CE2D7AC72662AD555556A6A5A5F5F4EFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF2929291111111C1C1C1C1C1C2929293185D33285D33690DB3895DF3690
            DB399AE33690DB2F85D32662AD3D6D79A6A5A5FAFAF6FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF3535351C1C1C1C1C1C1D1D2A2D2D2D3185D3338AD5399AE33EA4EA3EA4
            EA3EA4EA3EA4EA399AE33185D336475BBDBEC1FEFDFCFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF605F5F1C1C1C1D1D2A29292948484836475B42B0F33EAAF042B1F542B2
            F642B2F642B0F33EAAF03185D33D6D79D3D3D3FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFD3D3D30D0D0D29292931342F3535353B3B3B36475B2662AD3185D33185
            D342B2F642B2F642B1F52764AF555556E3E5E4FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF2929292929293535353535356B6A6A7777775555562D2D2D1625
            702041902041903B3B3B3B3B3B292929F4F3F3FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFD3D3D31C1C1C3939393939394E4E50898989A6A5A5A6A5A57777
            775555563B3B3B3B3B3B292929292929FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF8989891111114848485555566B6A6A959595A6A5A5A6A5
            A58989895555560D0D0D3B3B3BEAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFA6A5A51C1C1C4848487777777777776B6A6A5555
            5631342F1C1C1C959595EFEFF1FFFFFFFFFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA7777773535354848483939394848
            48777777EAEAEAFAFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          TabOrder = 1
          TabStop = False
          OnClick = BitBtn2Click
        end
        object BitBtn3: TBitBtn
          Left = 5
          Top = 314
          Width = 133
          Height = 58
          Caption = '&Salir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Glyph.Data = {
            66010000424D6601000000000000760000002800000014000000140000000100
            040000000000F000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF008787878408FF
            FFFFFFF8FFFF8888888748F4466868F8FFFF4888874048F4766686F8FFFF0488
            040488F4466868F8FFFF4048404888F4766686F8FFFF7404048888F4466868F8
            FFFF8740408888F4766686F8FFFF8874048888F4466868F8FFFF8870408488F4
            766686F8FFFF0404048488F4466868F8FFFF4840408488F4766686F800008804
            040488F4466868F800008870404888F4766686F800008887448888F4466868F8
            00008804788888F4766686F800008844488888F4466868F800008804088888F4
            766666F800008888888888F4477778F800008888888888FFFFFFFFF829B28888
            88888888888888880224}
          ParentFont = False
          TabOrder = 2
          TabStop = False
          OnClick = BitBtn3Click
        end
        object BitBtn5: TBitBtn
          Left = 5
          Top = 126
          Width = 133
          Height = 58
          Caption = '&Consolidar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            0001000000010000000100000001000000010000000100000001000000010000
            0001000000000000000100000001000000010000000100000001000000010000
            0001000000010000000100000000000000010000000100000001000000010000
            0001000000010000000100000001000000010000000000000000000000020000
            0004000000080000000A0000000B0000000B0000000B0000000A000000080000
            00060000000400000005000000080000000A0000000B0000000B0000000B0000
            000A00000008000000060000000400000005000000080000000A0000000B0000
            000B0000000B0000000A00000008000000050000000200000001000000060000
            00110000001D00000024000000260000002700000027000000260000001F0000
            00140000000D000000130000001D000000240000002600000027000000270000
            00260000001F000000140000000D000000130000001D00000024000000260000
            002700000027000000260000001F0000001300000007000000020000000F0B21
            1863216A4BED267453FF257353FF247251FF237152FF237051FF1F6448ED0A1F
            16680000001F0B211865216A4BED267453FF257353FF247251FF237152FF2370
            51FF1F6448ED0A1F16680000001F0B211865216A4BED267453FF257353FF2472
            51FF237152FF237051FF1F6448ED0A1F16660000001100000004000000162672
            55E939B58AFF2CC18EFF2CC18EFF2CC08DFF2CC08DFF2BC08DFF35B186FF2670
            53EA0000002E277355EA39B58AFF2CC18EFF2CC18EFF2CC08DFF2CC08DFF2BC0
            8DFF35B186FF267053EA0000002E277355EA39B58AFF2CC18EFF2CC18EFF2CC0
            8DFF2CC08DFF2BC08DFF35B287FF277254EA0000001A00000006000000172D87
            66FF46CFA5FF30C593FF2FC493FF2FC492FF2EC492FF2EC392FF40C99DFF2E84
            64FF000000302D8766FF46CFA5FF30C593FF2FC493FF2FC492FF2EC492FF2EC3
            92FF40C99DFF2E8464FF000000302D8766FF46CFA5FF30C593FF2FC493FF2FC4
            92FF2EC492FF2EC392FF40CA9EFF2F8766FF0000001C0000000700000015318F
            6EFF4ED4ACFF32C898FF32C898FF32C897FF31C797FF31C797FF47CFA5FF308C
            6AFF0000002C318F6EFF4ED4ACFF32C898FF32C898FF32C897FF31C797FF31C7
            97FF47CFA5FF308C6AFF0000002C318F6EFF4ED4ACFF32C898FF32C898FF32C8
            97FF31C797FF31C797FF47D0A6FF318F6CFF0000001900000007000000113598
            74FF55D8B3FF36CC9DFF36CC9DFF35CB9CFF35CC9DFF35CB9CFF4DD5ADFF3496
            72FF00000026359874FF55D8B3FF36CC9DFF36CC9DFF35CB9CFF35CC9DFF35CB
            9CFF4DD5ADFF349672FF00000026359874FF55D8B3FF36CC9DFF36CC9DFF35CB
            9CFF35CC9DFF35CB9CFF4DD5ADFF359874FF00000016000000060000000E38A1
            7DFF6AE0C1FF60DDBCFF68E0C0FF6FE2C5FF67DFC0FF60DDBBFF64DEBBFF379F
            7CFF0000001F38A17DFF6AE0C1FF60DDBCFF68E0C0FF6FE2C5FF67DFC0FF60DD
            BBFF64DEBBFF379F7CFF0000001F38A17DFF6AE0C1FF60DDBCFF68E0C0FF6FE2
            C5FF67DFC0FF60DDBBFF64DEBBFF38A17DFF00000012000000050000000A3CA9
            84FFA2F0DFFF8AECD5FF82EAD2FF82EAD2FF82EAD2FF88EBD4FF9DEFDDFF3CA7
            84FF000000173CA984FFA2F0DFFF8AECD5FF82EAD2FF82EAD2FF82EAD2FF88EB
            D4FF9DEFDDFF3CA784FF000000173CA984FFA2F0DFFF8AECD5FF82EAD2FF82EA
            D2FF82EAD2FF88EBD4FF9DEFDDFF3CA885FF0000000E0000000300000006389F
            7EE894E2CFFFB1F4E7FFB0F4E7FFB0F4E7FFAEF4E7FFAEF4E6FF90E2CEFF3A9F
            7EE90000000E389F7EE894E2CFFFB1F4E7FFB0F4E7FFB0F4E7FFAEF4E7FFAEF4
            E6FF90E2CEFF3A9F7EE90000000E389F7EE894E2CFFFB1F4E7FFB0F4E7FFB0F4
            E7FFAEF4E7FFAEF4E6FF90E2CEFF3AA07FE9000000080000000200000002102D
            2444338F73CB42B791FF42B691FF42B791FF41B791FF42B791FF338F73CC102D
            244600000006102D2445338F73CB42B791FF42B691FF42B791FF41B791FF42B7
            91FF338F73CC102D244600000006102D2445338F73CB42B791FF42B691FF42B7
            91FF41B791FF42B791FF338F73CC102D24460000000400000001000000000000
            0001000000020000000300000004000000040000000400000004000000040000
            0002000000010000000100000002000000030000000400000004000000040000
            0004000000040000000200000001000000010000000200000003000000040000
            0004000000040000000400000004000000020000000100000000000000000000
            00000000000000000000000000006D5045FF0000000100000001000000000000
            0000000000000000000000000000000000000000000061453BFF000000010000
            000100000000000000000000000000000000000000000000000000000000573B
            33FF000000010000000100000000000000000000000000000000000000000000
            0000000000000000000000000000715448FF0000000000000000000000000000
            0000000000000000000000000000000000000000000064493EFF000000000000
            000000000000000000000000000000000000000000000000000000000000593F
            35FF000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000005F473DCF735749FF725648FF705448FF6F53
            46FF6E5246FF6D5145FF6C5043FF6A4E42FF694D42FF684C41FF674B3FFF664A
            3FFF65483EFF63483DFF62463CFF61453CFF60443AFF5F4439FF5E4238FF4B35
            2DCF000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000001000000010000000100000001000000016C5043FF000000010000
            0001000000010000000100000001000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000010000
            000100000004000000070000000800000009000000096B5044FF000000090000
            0009000000080000000700000004000000010000000100000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000010000
            00050000000F000000190000001F000000210000002200000023000000230000
            0023000000210000001B00000011000000060000000100000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000030000
            000E33201260A46A3BECB57340FFB57340FFB47341FFB47340FFB47240FFB473
            40FFB37340FFA4683AED322012630000000F0000000300000001000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000050000
            0015A36A3CE9CD9B67FFD7AB76FFD8AC76FFD9AC78FFD7AD78FFD8AC77FFD7AC
            77FFD7AC77FFCD9B67FFA2683BEA000000180000000600000001000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000050000
            0017B87847FFD9B07DFFD5A871FFD6AA73FFD7AA74FFD7AB75FFD7AB76FFD7AB
            76FFD7AA74FFDAB07CFFB77744FF0000001B0000000600000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000060000
            0016BA7B49FFDCB584FFD8AB76FFD8AC78FFD9AE79FFD9AF7AFFD9AF7AFFD9AF
            7AFFD9AE7AFFDDB585FFB87947FF0000001A0000000700000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000050000
            0014BC7E4CFFE0BB8CFFD9AE7AFFDAB07CFFDBB17EFFDCB380FFDCB380FFDBB3
            7FFFDBB17EFFE0BC8EFFBA7C4AFF000000180000000600000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000040000
            0012BD804EFFE2C196FFDAB27EFFDCB381FFDDB583FFDDB784FFDEB785FFDDB7
            85FFDDB583FFE2C298FFBC7E4DFF000000160000000600000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000040000
            0010BF8351FFE5C69DFFE1BD8DFFE5C699FFE8CB9FFFEACFA4FFE9CCA1FFE7C9
            9CFFE3C192FFE6C8A0FFBE814FFF000000140000000500000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000030000
            000DC38958FFF2DFBFFFEED7AEFFEFD8AFFFEFDAB1FFF0DBB2FFF0DAB2FFF0DB
            B2FFF0DAB1FFF2E0C1FFC18757FF000000110000000400000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000020000
            000BCD9D6FFFF8EDD2FFF5E5C1FFF4E3BDFFF5E4BEFFF5E4BFFFF5E5BFFFF5E5
            BFFFF6E6C4FFF9EDD3FFCD9C6EFF0000000E0000000300000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000020000
            0007BE956CE9F0DEC2FFFCF3DDFFFCF3DDFFFBF3DEFFFBF4DEFFFCF4DDFFFBF4
            DDFFFBF3DDFFF0DFC2FFBE956CE90000000A0000000200000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000010000
            0003352A1F46A88562CCD5A97DFFD5A97DFFD5A97DFFD5A97CFFD5A97DFFD5A9
            7CFFD4A97DFFA78563CD352A1F47000000050000000100000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0001000000030000000500000006000000070000000700000007000000080000
            0008000000070000000600000004000000010000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000100000001000000010000000100000001000000010000
            0002000000010000000100000001000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          ParentFont = False
          TabOrder = 3
          TabStop = False
          OnClick = BitBtn5Click
        end
        object BitBtn6: TBitBtn
          Left = 5
          Top = 251
          Width = 133
          Height = 58
          Caption = 'Activar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Glyph.Data = {
            66010000424D6601000000000000760000002800000014000000140000000100
            040000000000F000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF008787878408FF
            FFFFFFF8FFFF8888888748F4466868F8FFFF4888874048F4766686F8FFFF0488
            040488F4466868F8FFFF4048404888F4766686F8FFFF7404048888F4466868F8
            FFFF8740408888F4766686F8FFFF8874048888F4466868F8FFFF8870408488F4
            766686F8FFFF0404048488F4466868F8FFFF4840408488F4766686F800008804
            040488F4466868F800008870404888F4766686F800008887448888F4466868F8
            00008804788888F4766686F800008844488888F4466868F800008804088888F4
            766666F800008888888888F4477778F800008888888888FFFFFFFFF829B28888
            88888888888888880224}
          ParentFont = False
          TabOrder = 4
          TabStop = False
          OnClick = BitBtn6Click
        end
        object BitBtn7: TBitBtn
          Left = 5
          Top = 189
          Width = 133
          Height = 58
          Caption = '&Importar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000010000
            0003000000050000000500000005000000050000000500000005000000050000
            0006000000060000000600000006000000050000000400000002000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000001000000050000
            000B000000110000001300000014000000140000001400000015000000150000
            0015000000150000001600000015000000130000000D00000006000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000030000000B7654
            49BEA47566FFA47465FFA37464FFA37363FFA37263FFA17263FFA17162FFA171
            61FFA07160FFA06F5FFFA06F5FFF9F6E5FFF724F44BF0000000D000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000040000000FA777
            68FFFBF8F5FFFAF7F4FFFAF7F4FFFAF7F4FFFAF7F4FFFAF7F4FFFAF7F4FFFAF7
            F3FFFAF6F3FFF9F6F3FFFAF6F3FFF9F6F3FFA0705FFF00000012000000000000
            0001000000010000000100000001000000010000000100000001000000010000
            000100000001000000010000000100000001000000010000000500000010A879
            6AFFFCF9F7FFF6F0EBFFF6F0EAFFF6F0EAFFF6F0EAFFF6F0EAFFF5EFE9FFF5EF
            E9FFF6EFE8FFF5EEE8FFF5EFE8FFFAF6F3FFA17162FF00000013000000010000
            0003000000040000000500000006000000060000000600000006000000060000
            000600000006000000060000000600000006000000060000000A00000015A97C
            6CFFFCFAF7FFF7F1ECFFF6F0EBFFF6F0EAFFF6F0EAFFF6F0EBFFF6F0EAFFF6EF
            EAFFF6EFEAFFF5EFE9FFF5EFE9FFFAF7F4FFA37363FF00000012000000050000
            000B000000110000001500000015000000160000001600000016000000160000
            001600000017000000170000001700000017000000170000001B00000024AB7E
            6EFFFCFAF9FFF7F2EDFFF7F1EDFFF6F1ECFFF7F1EBFFF7F0EBFFF6F1EBFFF7F0
            EBFFF6F0EAFFF6F0EAFFF5F0E9FFFAF7F4FFA47565FF000000110000000B2D1F
            1A8B583C34FC593D34FF583D34FF5C4138FFC89263FFC08454FFBD8151FFBB7D
            4DFFB97A4BFFB77748FFB57444FFB37141FFB06D3DFFAD6A39FFA36334FFA871
            52FFFCFBF9FFF8F3EEFFF7F2EDFFF7F2EDFFF7F1ECFFF7F1ECFFF7F1ECFFF7F1
            EBFFF6F1ECFFF7F0EBFFF6F0EAFFFAF7F4FFA57667FF00000010000000105C40
            37FC876A60FF785B4FFF785A4FFF6D5246FFE8C594FFE4BC85FFE4BA83FFE3B9
            81FFE2B77EFFE2B57CFFE1B479FFE0B277FFE0B075FFDCAD71FFD4A56BFFC194
            6FFFFDFCFAFFF8F3EEFFF8F3EEFFF8F2EEFFF8F2EDFFF8F2EDFFF8F2EDFFF7F2
            ECFFF7F1ECFFF7F1ECFFF7F1ECFFFAF8F5FFA77968FF0000000F000000126044
            3BFF8B6F64FF7B5E52FF7B5D51FF70554AFFDFBE90FFD9B37FFFD8B17DFFD7B1
            7BFFD7AF79FFD6AD76FFD6AC75FFD6AA72FFD5A870FFD2A46DFFCB9E66FFBE91
            6DFFFEFCFBFFF9F4F0FFF9F4EFFFF8F3EFFFF8F3EEFFF8F3EEFFF7F2EEFFF8F3
            EDFFF8F2EDFFF7F1ECFFF7F1ECFFFBF8F5FFA97A6BFF0000000E000000126347
            3DFF8F7468FF7E6154FF7D6053FF74594EFFFAF6F2FFF8F3EEFFF8F2EDFFF7F2
            ECFFF7F0ECFFF6F0EBFFF6EFEBFFF6EFEAFFF5EEE9FFF3EBE6FFEBE4DEFFCFB5
            ABFFFEFCFCFFFAF5F1FFF9F4F0FFF9F4F0FFF9F4F0FFF8F4EFFFF9F3EFFFF8F3
            EFFFF8F3EEFFF8F2EEFFF8F2EDFFFBF8F6FFAA7D6DFF0000000D00000012664A
            40FF92786CFF816357FF806356FF785C50FFF9F6F3FFF9F3F0FFF8F2EFFFF7F2
            EDFFF7F1EDFFF6F1ECFFF6F0EBFFF6F0EBFFF6EFE9FFF3ECE7FFECE6E0FFD0B7
            ACFFFEFDFDFFFAF5F1FFF9F5F1FFFAF4F1FFFAF4F1FFF9F4F0FFF9F3EFFFF9F4
            F0FFF9F3EFFFF8F3EFFFF8F2EFFFFBF9F6FFAC7F70FF0000000C000000116A4E
            42FF987C71FF84675AFF836559FF7C6053FFFAF7F4FFF9F4F0FFF9F3EFFFF8F3
            EFFFF8F2EEFFF7F2EDFFF7F1EDFFF6F0EBFFF6EFEAFFF3EDE8FFEDE7E2FFD1B9
            AEFFFEFEFDFFFBF6F2FFFAF5F2FFFAF5F1FFFAF5F2FFFAF4F1FFF9F5F1FFF9F5
            F0FFF9F4F0FFF9F3F0FFF9F4EFFFFBF9F7FFAE8171FF0000000B000000106E51
            46FF9B8274FF866B5DFF86695CFF7F6457FFFBF8F5FFF9F5F1FFF9F4F1FFF8F3
            F0FFF8F3EEFFF7F3EEFFF7F1EDFFF7F1ECFFF6F0ECFFF4EDE8FFEFE8E3FFD3BA
            B0FFFFFEFEFFFBF6F3FFFBF6F3FFFAF6F2FFFAF6F3FFFAF6F2FFFAF5F2FFF9F5
            F2FFFAF4F1FFF9F5F0FFF9F4F0FFFCF9F7FFAF8274FF0000000A000000107155
            49FF9F8679FF8A6D5FFF896D5EFF836759FFFBF8F6FFFAF5F2FFF9F5F1FFF8F4
            F0FFF8F3F0FFF8F3EFFFF8F2EEFFF7F1EDFFF7F0ECFFF5EFEBFFF0EAE5FFD4BC
            B2FFFFFEFEFFFBF8F4FFFBF7F4FFFBF7F4FFFAF6F3FFFBF6F3FFFAF6F3FFFAF5
            F2FFFAF5F2FFFAF6F2FFF9F5F1FFFCF9F8FFB18575FF000000090000000F7559
            4CFFA38B7DFF8C7162FF8C7061FF866B5CFFFBFAF7FFFBF8F6FFFBF8F6FFFBF8
            F5FFFAF7F4FFFBF7F3FFF9F6F3FFF9F5F2FFF9F5F1FFF8F3F0FFF3EFEBFFD6BF
            B6FFFFFFFEFFFCF8F6FFFBF7F5FFFBF8F4FFFCF7F5FFFBF7F4FFFBF7F3FFFAF6
            F3FFFBF6F3FFFAF5F3FFFAF5F2FFFCFAF8FFB38778FF000000080000000F795C
            4EFFA88F82FF907465FF8F7364FF8A6F60FF886E5EFF886C5EFF866B5DFF856A
            5CFF85695BFF83685AFF7F6557FF795F53FF785E52FF785D51FF755B4FFF9876
            68FFFFFFFFFFFCF8F6FFFCF8F6FFFBF8F6FFFBF7F5FFFBF7F5FFFBF7F5FFFBF7
            F4FFFBF7F4FFFBF6F4FFFBF6F3FFFCFAF9FFB4897AFF000000070000000E7C5F
            52FFAB9386FF937768FF927767FF917566FF907565FF8F7365FF8E7263FF8D71
            63FF8C7161FF8B7061FF8A6E5FFF7A5F55FF785C53FF785C51FF775A51FF9976
            6AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB68B7CFF000000050000000D8063
            56FFB0988AFF967B6BFF957A6AFF947869FF947868FF927767FF927566FF9175
            65FF907365FF8F7363FF8D7263FF856A5CFF7A5E54FF795E53FF785C52FF8466
            5BFF9A776BFF9A776BFF9A776AFF99766AFF997569FF9D7B6FFF8C6A5EFFB990
            80FFB98F80FFB98F7FFFB98E7FFFB88D7EFF88675EBF000000030000000D8467
            58FFB39C8DFF997E6DFF987D6DFF977C6CFF977C6BFF957A6BFF957968FF9478
            69FF937767FF927666FF917465FF8F7364FF7C6156FF7B5F55FF795E54FF795E
            54FF785C52FF785C52FF785C52FF775B51FF775A50FF81675CFF5E443BFF0000
            00160000000800000004000000040000000400000003000000010000000C886C
            5CFFB7A193FF9C8170FFA38979FFA58B7BFFA48A7BFFA28979FFA08779FFA087
            77FF9F8476FF9D8374FF9C8272FF9C8071FF8F7469FF83695FFF83695FFF8267
            5EFF81675CFF80655CFF7F655BFF7D6258FF785D52FF846A61FF60473EFF0000
            001200000005000000012C1A15C00000000100000001000000000000000C8A6F
            5EFFBAA696FF9F8473FFA88F80FF6C5147FF553931FF5E443CFF614840FF6048
            3FFF5F473EFF5E463DFF5D453DFF5D443CFF5C433BFF5A433AFF5A4239FF5A41
            39FF594039FF584038FF634A41FF80645AFF795F54FF886D64FF62483FFF0000
            0010000000040E08073C3B241DFF0E08073C00000000000000000000000B8E73
            61FFBDA999FFA28876FFA99282FF563933FF4E423CFF664D44FFE9D5C9FFE8D5
            C9FFE8D5C8FFE6D4C8FFE8D4C7FFE6D4C7FFE6D3C5FFE6D3C5FFE6D2C4FFE5D0
            C4FFE6D2C3FFE5D0C3FF5B423AFF80655AFF7B6055FF897065FF634940FF0000
            0010000000042F1D17C03D261EFF2E1D17C000000000000000000000000B9176
            63FFC1AC9DFFA58A79FFAC9382FF563B33FF4F433CFF6A5148FFF4E4D5FFEFDE
            D0FFEAD9CBFFE8D6C9FFE8D4C8FFE8D4C8FFE6D4C7FF4C3932FF614840FF6048
            3FFF60463EFFE6D2C4FF5D453CFF80675CFF7C6156FF8B7268FF654B42FF0000
            000F0F09073F3F2720FF3F2720FF3F2620FF0F09073C000000000000000A9579
            67FFC4AFA1FFA78D7AFFAE9484FF573A34FF51443EFF6F554CFFF7E8D9FFF6E8
            D8FFF5E6D7FFF2E2D4FFECDBCFFFE9D7CBFFE8D5C9FF4B3932FF614842FF644B
            43FF634A42FFE6D2C4FF61483FFF82675CFF7D6258FF8D756CFF664C44FF0000
            000F31201AC1402921FF402920FF402820FF301E18C00000000000000009987C
            69FFC6B3A4FFAA917DFFB19686FF583C34FF52463EFF73594FFFF8EADBFFF7E9
            DAFFF6E8D9FFF5E7D8FFF4E6D7FFF0E1D4FFECDACFFF4A3932FF5F463FFF6047
            40FF684E46FFE8D4C7FF654C43FF82685EFF7E6459FF90776DFF674E45FF0000
            000E0000000400000000432B22FF000000000000000000000000000000099A7F
            6BFFC9B7A7FFAC9280FFB29A88FF593C35FF52473FFF765D53FFF9ECDCFFF8EB
            DCFFF7EADBFFF6E8DAFFF5E7D9FFF5E6D8FFF3E3D6FF483832FF5C413BFF5D43
            3DFF6C5249FFE8D5C8FF695047FF82695EFF7F655AFF927B71FF695046FF0000
            000D0000000300000000452C24FF000000000000000000000000000000089D81
            6DFFCCB8ABFFAF9481FFB49B88FF593D36FF534740FF7A6056FFFAEDDEFFF9EC
            DDFFF8EBDCFFF8EADBFFF7E9DAFFF5E7D9FFF5E7D9FF473732FF593F39FF5940
            39FF70564CFFE8D6C9FF6D544BFF83695EFF80675CFF957D73FF695147FF0000
            000D00000003110B093C35231DC000000000000000000000000000000008A084
            6FFFCEBBACFFB9A18EFFB69C89FF5B3D37FF544841FF7E645AFFFBEEDEFFFAED
            DEFFF9EDDDFFF8ECDDFFF8EADBFFF7E9DBFFF6E8DAFF463630FF463631FF4736
            32FF463632FFE9D8CEFF72584FFF846A60FF81685DFF967F76FF6B5349FF0000
            000C4B3127FF38251DC0110C093C00000000000000000000000000000006A085
            70FCCEBCAEFFCFBEAFFFD1C0B2FF5B3E37FF554942FF80655CFFFCEFDFFFFBEE
            DFFFFAEEDEFFFAEDDEFFF9ECDDFFF8EBDCFFF7EADCFFF6E9DAFFF5E7DAFFF4E7
            D9FFF1E2D7FFEBDCD2FF765C52FFAD9890FFAB978EFFAA968CFF6C544AFE0000
            000A000000030000000000000000000000000000000000000000000000045143
            3983A18671FCA38772FFA38771FF6D5146FF5B3E37FF785C53FFA9948BFFA893
            8AFFA69188FFA58F86FFA38D83FFA18B81FF9F887FFF9C857CFF9A837AFF9981
            78FF977F75FF957D75FF765C53FF6E554BFF6D554CFF6D554BFE44352FA50000
            0006000000020000000000000000000000000000000000000000000000010000
            0004000000060000000700000007000000070000000700000008000000080000
            0008000000080000000800000008000000080000000900000009000000090000
            0009000000090000000A0000000A0000000A0000000A00000009000000060000
            0003000000010000000000000000000000000000000000000000}
          ParentFont = False
          TabOrder = 5
          TabStop = False
          OnClick = BitBtn7Click
        end
      end
    end
    object tab2: TTabSheet
      Caption = 'Enrolar Huella'
      ImageIndex = 1
      object DPFPEnrollmentControl: TDPFPEnrollmentControl
        Left = 0
        Top = 54
        Width = 829
        Height = 498
        Align = alClient
        TabOrder = 0
        OnEnroll = DPFPEnrollmentControlEnroll
        ExplicitWidth = 495
        ExplicitHeight = 314
        ControlData = {
          00080000293300007420000003000A00000003000000000008004E0000007B00
          300030003000300030003000300030002D0030003000300030002D0030003000
          300030002D0030003000300030002D0030003000300030003000300030003000
          30003000300030007D000000}
      end
      object ToolBar: TToolBar
        Left = 0
        Top = 0
        Width = 829
        Height = 54
        AutoSize = True
        ButtonHeight = 54
        ButtonWidth = 55
        Caption = 'ToolBar'
        Images = ImageList
        TabOrder = 1
        object ToolButton: TToolButton
          Left = 0
          Top = 0
          Caption = 'ToolButton'
          ImageIndex = 0
          OnClick = ToolButtonClick
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 509
    Top = 257
  end
  object ADOTable1: TADOTable
    Connection = DataModule1.ADOComunes
    TableName = 'GENacionalidad'
    Left = 635
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 563
    Top = 8
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    Left = 591
    Top = 254
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'tpdoc'
        Size = -1
        Value = Null
      end
      item
        Name = 'nrdoc'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM SAPacientes'
      'WHERE Tp_Ident_Usuar = :tpdoc  AND Nr_Ident_Usuar = :nrdoc')
    Left = 511
    Top = 422
  end
  object ADOQuery3: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'tpdoc'
        Size = -1
        Value = Null
      end
      item
        Name = 'nrdoc'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM SAPacientes'
      'WHERE Tipo_Documento = :tpdoc  AND Numero_Documento = :nrdoc')
    Left = 511
    Top = 454
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    Left = 65535
    Top = 3
  end
  object ADOQuery4: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Nr_Ident_Usuar,Tp_Ident_Usuar,Primer_Apellido + '#39' '#39' +Segu' +
        'ndo_Apellido +'#39' '#39' + Primer_Nombre + '#39'  '#39' + Segundo_Nombre AS Nom' +
        'bre'
      'FROM SAPacientes')
    Left = 635
    Top = 88
  end
  object ADOQTemp: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 329
    Top = 6
  end
  object ImageList: TImageList
    ColorDepth = cd32Bit
    Height = 48
    Width = 48
    Left = 232
    Bitmap = {
      494C0101020004003C0030003000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000C00000003000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002020201040404030808
      08070B0B0B0A0D0D0D0D0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0D0D0D0D0B0B
      0B0A080808070404040302020201000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000050505040C0C0C0B1111
      1111121212120F0F0F0F09090908030303020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000002020201050505040B0B0B0A11111111181818191E1E
      1E21222222272525252C2727272F28282830282828302727272F2525252C2222
      22271E1E1E2118181819111111110B0B0B0A0505050402020201000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000606060513131314232323282B2B
      2B352D2D2D38292929311D1D1D200C0C0C0B0303030200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002020201070707060E0E0E0E1818181A2323232838383D4D464662854646
      73A03D3D89C4393990D1393990D139398FD139398FD13D3D88C6464672A34747
      638A3C3C42582E2E2E3B2A2A2A34232323281818181A0E0E0E0E070707060202
      0201000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000202020107070706222322264F8551B140AE44F33DB7
      43FF46A84BE94D674F8E2E2E2E3B1D1D1D200909090800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020202010606
      06050E0E0E0E1B1B1B1E36363B4844447AA92D2D9FE81919ABFF1515AAFF1313
      ABFF1212AEFF1313B0FF1414B2FF1515B3FF1616B4FF1616B4FF1919B5FF1B1B
      B1FF1D1DADFF2D2D9DE9444479B03D3D435B2E2E2E3B2727272E1B1B1B1E0E0E
      0E0E060606050202020100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000020202010909090824252429459B49D858C35BFF7CD67DFF83DC
      85FF7BD87EFF49BD4FFF4B5E4C822C2C2C361616161705050504000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000030303020A0A0A091717
      171840404E61393991CE1A1AAAFF1111A7FF0C0CA9FF0D0DB1FF1010B8FF1212
      BDFF1414C2FF1616C5FF1818C7FF1A1AC9FF1B1BC9FF1C1CCAFF1D1DC9FF1C1C
      C6FF1B1BC4FF1B1BBFFF1C1CB7FF1F1FADFF39398FD2444454752F2F2F3D2525
      252C171717180A0A0A0903030302000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000202020109090908373D3747419A46D95EC65FFF7CD57CFF70D371FF6DD5
      6FFF81DE84FF79D77DFF43B048F43A3C3A512525252C0F0F0F0F030303020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000040404030D0D0D0D3030353D3F3F
      8AC01717AAFF0D0DA6FF0A0AAEFF0D0DB7FF0F0FBFFF1111C1FF1313C3FF1515
      C5FF1616C7FF1818C9FF1A1ACBFF1C1CCDFF1E1ECFFF2020D2FF2323D4FF2525
      D6FF2626D7FF2525D5FF2323D0FF2121CBFF2020C2FF2222B5FF3D3D87C73D3D
      435C2C2C2C361E1E1E210D0D0D0D040404030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      020109090908363D374734A837F25AC25AFF78D176FF67CE66FF5FCE60FF64D2
      67FF6FD873FF8AE28EFF61CB67FF4E8E51C73030303E1E1E1E21090909080000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040403101010104343566B2424A6F30F0F
      A6FF0909ADFF0B0BB9FF0D0DBDFF0F0FBEFF1010C0FF1212C1FF1313C3FF1515
      C5FF1717C7FF1919C9FF1A1ACBFF1D1DCEFF1F1FD0FF2121D2FF2323D5FF2626
      D8FF2828DAFF2B2BDDFF2D2DE0FF2D2DDFFF2A2AD9FF2525D1FF2323C2FF2727
      A5F446465C822F2F2F3D22222227101010100404040300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020202010909
      0908363D36472FA633F255C055FF73CE71FF61CA5FFF59C959FF5ECD5FFF63D1
      65FF68D56CFF7CDD80FF88E28DFF4DC053FF4B5E4C822C2C2C36161616170505
      0504000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000040404031111111146467AA11717AAFF0909A7FF0909
      B6FF0B0BBAFF0C0CBBFF0E0EBDFF0F0FBEFF1010C0FF1212C2FF1313C3FF1515
      C5FF1717C7FF1919CAFF1B1BCCFF2121CFFF2121D1FF2121D3FF2424D6FF2626
      D8FF2929DBFF2C2CDEFF2E2EE1FF3131E4FF3434E7FF3232E5FF2D2DDDFF2626
      CFFF2121B1FF444479B0313131402424242A1111111104040403000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000202020109090908363D
      36472CA42EF251BC4FFF6CC968FF5CC559FF53C451FF58C857FF5DCC5DFF62D0
      64FF67D46AFF6CD971FF87E28CFF81DE86FF41AF47F43A3C3A512525252C0F0F
      0F0F030303020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040310101010434382AF1313A8FF0707ADFF0909B8FF0A0A
      B9FF0B0BBAFF0C0CBBFF0E0EBDFF0F0FBEFF1010C0FF1212C2FF1D1DC7FF3535
      CFFF4747D5FF5757DAFF5D5DDCFF5E5EDDFF5A5ADDFF5050DCFF4242DAFF3535
      D9FF2C2CDAFF2B2BDDFF2F2FE2FF3232E5FF3535E9FF3838ECFF3939EDFF3434
      E6FF2E2EDEFF2323B9FF41417FBB313131412424242A10101010040404030000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030303020A0A0A09363D36482CA4
      2DF24DBA4AFF68C563FF50BE4BFF4DBF4AFF52C350FF57C755FF5CCB5CFF61CF
      62FF66D368FF6BD76FFF75DD7AFF8FE694FF68CF6EFF4C8E50C73030303E1E1E
      1E21090909080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000030303020D0D0D0D444482AE2929B5FF1010B6FF0808B7FF0909B8FF0A0A
      B9FF0B0BBAFF0C0CBBFF0E0EBDFF0F0FBEFF2B2BC9FF5B5BD7FF5D5DD1FF4F4F
      C7FF3838BAFF3434B7FF1E1EABFF1E1EABFF3C3CBBFF3A3ABAFF5252C9FF6A6A
      DBFF6767E4FF4949DEFF3333DDFF3030E3FF3535E9FF3838EDFF3C3CF0FF3E3E
      F3FF3A3AEDFF3030E2FF2424BBFF41417FBB31313140222222270D0D0D0D0303
      0302000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000030303020C0C0C0B373F374A28A129F355BB
      50FF63C25DFF4ABA44FF48BB42FF4CBE48FF51C24EFF55C654FF5ACA5AFF5FCE
      60FF64D266FF69D66CFF6EDA73FF81E185FF91E898FF4CBF52FF4A5E4B822C2C
      2C36161616170505050400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000909090846467A9D4141C1FF2121BEFF0707B6FF0808B7FF0909B8FF0A0A
      B9FF0B0BBAFF0C0CBBFF1D1DC2FF5454D2FF4E4EC6FF2C2CB3FF1D1DACFF1E1E
      ACFF3F3F91C44848779648486D8548486D8549497693414190C21F1FABFF1F1F
      AAFF2E2EB3FF5353CAFF6C6CE4FF4B4BE1FF3232E1FF3838ECFF3B3BF0FF3E3E
      F3FF4242F7FF3D3DF1FF3030E2FF2525BBFF444479B02F2F2F3D1E1E1E210909
      0908000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000030303020C0C0C0C41534168239F25F351B84BFF5FBE
      58FF45B53DFF42B63BFF46B941FF4BBD46FF4FC14CFF54C552FF58C857FF5DCC
      5EFF62D064FF67D46AFF6CD870FF70DC76FF8AE590FF82E088FF3FAE44F4393C
      3A512525252C0F0F0F0F03030302000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000505
      0504404052602E2EB8FF3A3AC6FF0606B5FF0707B5FF0808B6FF0909B8FF0A0A
      B9FF0B0BBAFF3333C7FF4C4CC6FF2424B0FF1D1DADFF464681A93E3E4E5A0707
      0706030303020000000000000000000000000000000000000000000000003B3B
      495148487FA11F1FAAFF2727AEFF6464DFFF3C3CE7FF3737EBFF3A3AEEFF3D3D
      F2FF4040F5FF4141F6FF3939EDFF2B2BD8FF2121B0FF46465C822B2B2B351616
      1617050505040000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000030303020C0C0C0C435C437616A217FF4DB546FF5BBB52FF40B1
      37FF3DB134FF41B539FF45B83FFF49BC44FF4EBF4AFF52C34FFF56C755FF5BCB
      5BFF60CE61FF65D267FF69D66DFF6EDA73FF78DF7EFF91E897FF68CF6EFF4B8E
      4EC73030303E1E1E1E2109090908000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020202011919
      1A1B2B2BABF25858CFFF0505B4FF0606B5FF0707B5FF0808B6FF0909B8FF0A0A
      B9FF3131C4FF3E3EBDFF1D1DADFF41418ABA27272B2E06060605020202010000
      0000000000000000000000000000000000000000000000000000000000000000
      00000404040329292C302D2DB8F23131E4FF3333E7FF3636EAFF3838EDFF3B3B
      EFFF3D3DF2FF3E3EF3FF3E3EF2FF3333E5FF2727D0FF2929A8F439393B502424
      242A0C0C0C0C0202020100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000030303020C0C0C0C425C427612A012FF4AB242FF57B84DFF3BAD31FF37AD
      2DFF3BB032FF3FB438FF43B73DFF47BA42FF4CBE47FF50C24DFF55C553FF59C9
      58FF5ECD5EFF62D064FF67D46AFF6CD870FF70DC76FF81E387FF93E999FF4BBF
      50FF4A5D4B822C2C2C3616161617050505040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000050505044545
      82A94B4BC6FF1E1EBCFF0505B4FF0606B4FF0707B5FF0808B6FF0909B7FF0B0B
      B8FF2828B4FF2626A7F245455D720B0B0B0A0303030200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      04031010101048488EAF2D2DDFFF2F2FE2FF3232E5FF3434E8FF3636EAFF3838
      EDFF3A3AEEFF3B3BEFFF3B3BF0FF3838ECFF2C2CDBFF2121BBFF414180BB2E2E
      2E3A1818181A0505050400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000303
      03020C0C0C0C425B42760D9E0DFF46AF3DFF51B346FF36A92BFF32A927FF36AC
      2CFF3AAF30FF3DB235FF42B63AFF46B940FF4ABC45FF4EC04AFF52C350FF57C7
      55FF5BCB5BFF60CE61FF64D267FF69D66CFF6DDA72FF72DD78FF8BE691FF82E0
      88FF3DAD42F4393C3A512525252C0F0F0F0F0303030200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002525282A2828
      B5FF5555CEFF0505B3FF0505B4FF0606B4FF0707B5FF0808B6FF0A0AB7FF1818
      B0FF2525A6F336363E4809090908020202010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000030303020E0E
      0E0E47478CAE2929DBFF2B2BDEFF2E2EE1FF3030E3FF3232E5FF3434E8FF3636
      EAFF3737EBFF3838ECFF3838ECFF3737ECFF3131E3FF2525D2FF2020ADFF3D3D
      435C2424242A0C0C0C0C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000030303020D0D
      0D0D415B41760E9D0CFF42AD38FF4AAF3EFF2CA31FFF2DA521FF31A825FF34AB
      2AFF38AE2EFF3CB133FF40B438FF44B73DFF48BB42FF4EBF4AFF6DCC6AFF5DC8
      5BFF59C958FF5DCC5DFF62D063FF66D369FF6AD76EFF6FDB74FF78DF7FFF91E8
      97FF67CF6CFF4A8D4CC73030303E1E1E1E210909090800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040403454582A85656
      CBFF1A1AB9FF0505B3FF0505B3FF0606B4FF0707B5FF0707B6FF1616B1FF1C1C
      AEFF3939414E0C0C0C0B02020201000000000000000000000000000000000000
      00000000000000000000000000000000000000000000030303020C0C0C0C4848
      829F2525D7FF2727DAFF2929DCFF2C2CDEFF2E2EE1FF3030E3FF3232E5FF3333
      E6FF4343E7FF3131E0FF3535E9FF3434E8FF3333E6FF2828D6FF1E1EBBFF4141
      81BB2D2D2D391616161704040403000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040310101010415B
      4178109D0DFF48AC3CFF47AC3AFF28A01AFF28A11BFF2CA41FFF2FA723FF33A9
      28FF36AC2CFF3AAF31FF3EB236FF42B63BFF48BA42FF67C763FF74CD71FF84D5
      82FF56C655FF5ACA5AFF5FCD5FFF63D165FF67D46AFF6CD870FF70DB75FF80E2
      84FF91E898FF49BE4EFF4A5D4A822C2C2C361616161705050504000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000161617172727B5FF5959
      CFFF0404B2FF0404B3FF0505B3FF0606B4FF0606B5FF0F0FB3FF1C1CAEFF4747
      6A8A111111110303030200000000000000000000000000000000000000000000
      000000000000000000000000000000000000030303020C0C0C0C464665762222
      D4FF2424D6FF2626D8FF2828DAFF2A2ADCFF2C2CDEFF2E2EE0FF2F2FE2FF2F2F
      E0FF6161DBFF4747E0FF2F2FE2FF3232E5FF3131E4FF2C2CDCFF2020CAFF2020
      AFFF38383B4E2020202409090908000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030303020E0E0E0E3F6C3F94149E
      11FF46AB39FF43A936FF249C15FF249D15FF27A019FF2AA31DFF2EA521FF31A8
      25FF34AB2AFF38AE2EFF3CB133FF47B740FF65C45FFF5DC15AFF3CB43DFF94D9
      92FF7AD178FF58C856FF5CCB5CFF60CE61FF64D266FF68D56BFF6CD971FF70DC
      76FF87E48DFF81DE85FF3CAC40F4393C39512525252C0F0F0F0F030303020000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000454565784545C4FF2A2A
      BEFF0404B2FF0404B3FF0505B3FF0505B4FF0707B4FF1B1BAEFF393992CE1919
      191B060606050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000030303020C0C0C0C454564761F1FD0FF2020
      D2FF2222D4FF2424D6FF2626D8FF2828DAFF2929DCFF2B2BDEFF2C2CDCFF3333
      A8E42F2FB3FF6F6FE7FF3131DDFF2F2FE2FF2E2EE1FF2C2CDFFF2121CDFF1E1E
      B5FF46466B982727272F0E0E0E0E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000080808073A793AAB169F13FF65B8
      5AFF58B24BFF209910FF209A10FF239C13FF269F17FF29A11BFF2CA41FFF2FA7
      23FF33A928FF36AC2CFF41B238FF62C15BFF58BE54FF1DA61FFF349437D65CC1
      5CFF9ADC98FF5EC95CFF59C958FF5DCC5DFF61CF62FF65D267FF69D66CFF6CD9
      71FF74DD79FF8CE591FF64CD69FF498C4CC73030303F1F1F1F230A0A0A090202
      0201000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000020202013D3D93C46767D2FF0F0F
      B4FF0404B2FF0404B2FF0505B3FF0505B4FF0F0FB1FF1C1CAEFF36363B480E0E
      0E0E020202010000000000000000000000000000000000000000000000000000
      00000000000000000000030303020C0C0C0C454564761C1CCCFF1D1DCEFF1F1F
      D0FF2121D2FF2222D4FF2424D6FF2626D8FF2727DAFF2828D8FF474762763030
      363B1F1FAAFF6060D2FF4444DDFF2B2BDDFF2B2BDEFF2A2ADDFF2424D2FF1D1D
      BFFF38388FD22D2D2D3814141415020202010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003B4C3B5A1EA21DFF7EC375FF64B7
      58FF49AA3BFF37A428FF219A11FF229B12FF249E15FF27A019FF2AA31DFF2DA5
      21FF31A825FF41B037FF5DBD55FF4EB849FF239F24F2405241641819181926A0
      27F083D281FF8AD788FF55C654FF59C959FF5DCC5DFF61CF62FF65D267FF68D5
      6CFF6CD870FF7CDE81FF8DE593FF46BC4BFF4B654C8E2C2C2C37181818190606
      0605000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000060606052222B4FF7878D8FF1616
      B7FF0404B2FF0404B2FF0404B3FF0505B3FF1818AFFF3C3C8AC31E1E1E220808
      0807000000000000000000000000000000000000000000000000000000000000
      000000000000030303020C0C0C0C444463761919C9FF1A1ACBFF1C1CCDFF1E1E
      CFFF1F1FD1FF2121D2FF2222D4FF2424D5FF2525D4FF464662760C0C0C0C0303
      0302414190C13535B7FF6060E2FF2A2ADAFF2828DBFF2828DAFF2525D5FF1A1A
      C0FF1F1FADFF3030303E1A1A1A1C060606050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000278B27D269BD64FF6FBB64FF48A9
      39FF46A938FF47AA39FF40A832FF239B13FF239C13FF269F17FF28A11BFF2CA4
      1FFF3FAD33FF5BBA53FF40B13BFF1A9B1BF2353C354609090908020202014155
      41613AB23CFF9BDC99FF6ACC68FF56C654FF59C959FF5DCC5EFF61CF62FF65D2
      67FF68D56BFF6BD870FF82E087FF7DDA81FF39AC3DF43F453F5D2727272E1111
      1111030303020000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000363640463A3ABEFF6464CFFF3B3B
      C4FF0E0EB5FF0404B2FF0404B3FF0909B2FF1B1BAFFF46466284161616170303
      0302000000000000000000000000000000000000000000000000000000000000
      0000030303020C0C0C0C444463761616C6FF1717C8FF1919CAFF1A1ACBFF1C1C
      CDFF1E1ECFFF1F1FD0FF2020D2FF2222D1FF464662760C0C0C0C030303020000
      0000414155611F1FAAFF6B6BDEFF3131D8FF2626D8FF2525D7FF2424D5FF1A1A
      C3FF1C1CADFF434353711F1F1F23090909080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000029702FF97CE8FFF51AD43FF45A8
      37FF46A937FF46A938FF47AB39FF46AB38FF2BA01CFF249D15FF27A019FF3DAA
      30FF57B74DFF36AC31FF209421E5333A33430808080702020201000000000000
      00003E8D3FC069C669FF97DA95FF58C555FF56C654FF59C959FF5DCC5DFF61CF
      62FF64D266FF67D46AFF6ED872FF87E18BFF60CA64FF459448D2313131402020
      20240B0B0B0A0202020100000000000000000000000000000000000000000000
      000000000000000000000000000000000000464664765858CBFF5555CAFF3F3F
      C5FF3A3AC4FF0F0FB6FF0404B2FF1010B1FF1B1BAFFF32323441111111110000
      0000000000000000000000000000000000000000000000000000000000000303
      03020C0C0C0C434362761313C3FF1515C5FF1616C7FF1818C8FF1919CAFF1A1A
      CBFF1C1CCDFF1D1DCEFF1F1FCEFF464661760C0C0C0C03030302000000000000
      0000101011101F1FABFF5454CCFF3C3CD9FF2424D5FF2323D5FF2222D4FF1B1B
      C4FF1A1AB2FF47476A96222222270B0B0B0A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000029602FF96CD8FFF52AD44FF46A8
      37FF46A837FF46A937FF47AA39FF48AB3AFF49AC3BFF38A62AFF43AB36FF53B4
      48FF23A41FFF268C26D821222125060606050000000000000000000000000000
      0000292F293120A722FF92D78FFF7CD079FF52C450FF56C654FF59C958FF5CCC
      5CFF60CE61FF63D165FF66D368FF76D979FF87E08BFF43BA47FF4C6D4D992D2D
      2D381818181A0606060500000000000000000000000000000000000000000000
      00000000000000000000000000000000000047476F855C5CCDFF4D4DC8FF4040
      C5FF3E3EC5FF3939C3FF1212B7FF1414B0FF30309ADD2727272F0E0E0E0E0000
      0000000000000000000000000000000000000000000000000000030303020C0C
      0C0C434362761111C1FF1313C3FF1414C4FF1515C5FF1717C7FF1818C8FF1919
      CAFF1A1ACBFF1C1CCAFF464661760C0C0C0C0303030200000000000000000000
      0000000000003A3A98D24646C2FF4747DAFF2121D3FF2121D2FF2020D1FF1B1B
      C6FF1919B3FF454572A22424242A0C0C0C0B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000029602FF96CC8FFF60B353FF46A8
      37FF45A837FF46A937FF46A938FF47AB39FF48AB3AFF60B754FF6BBC60FF20A2
      1CFF238C24D71E201E2206060605000000000000000000000000000000000000
      000000000000476A478149B849FF9ADB97FF60C75DFF52C34FFF55C653FF58C8
      57FF5BCB5BFF5ECD5FFF61D063FF64D266FF7EDA80FF77D57AFF37AB3CF43E44
      3F5D2727272E1111111103030302000000000000000000000000000000000000
      000000000000000000000000000000000000474778957070D5FF4949C7FF4040
      C5FF3F3FC5FF3D3DC5FF3C3CC4FF2020B3FF373792D02525252B0C0C0C0C0000
      00000000000000000000000000000000000000000000030303020C0C0C0C4343
      61760F0FBFFF1010C0FF1212C1FF1313C3FF1414C4FF1515C5FF1616C7FF1717
      C8FF1919C7FF454561760C0C0C0C030303020000000000000000000000000000
      000000000000404090C23939BAFF4F4FDBFF1F1FD0FF1E1ED0FF1E1ECFFF1A1A
      C6FF1616B3FF44447AAE2727272E0E0E0E0E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000308430C16ABA65FF89C781FF4BAA
      3DFF46A837FF45A836FF46A937FF4BAC3EFF66B95AFF66BA5CFF16A014FF3979
      39AE111111110404040300000000000000000000000000000000000000000000
      000000000000101110102D992EE079CC78FF8AD588FF4EC04BFF51C24EFF54C5
      52FF57C756FF5ACA5AFF5DCC5DFF60CE60FF66D167FF81DA81FF60C963FF4493
      47D231313140202020240B0B0B0A020202010000000000000000000000000000
      0000000000000000000000000000000000003D3D94C36D6DD4FF4848C6FF4141
      C6FF4040C5FF3E3EC5FF3C3CC5FF2222B3FF43437BAD2525252B0C0C0C0C0000
      000000000000000000000000000000000000030303020C0C0C0C424261760D0D
      BDFF0E0EBEFF0F0FBFFF1010C0FF1212C1FF1313C3FF1414C4FF1515C5FF1717
      C5FF454561760C0C0C0C03030302000000000000000000000000000000000000
      000000000000494976943B3BBAFF5353DBFF1D1DCEFF1C1CCDFF1C1CCDFF1818
      C5FF1414B0FF39398FD12727272E0E0E0E0E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000313B31410B980BFF7CC276FF8CC8
      83FF60B454FF58B14BFF5FB452FF6CBA60FF5FB755FF169F14FF397939AC0F0F
      0F0F040404030000000000000000000000000000000000000000000000000000
      00000000000000000000333C334126AA27FF97D995FF6ECA6AFF4DBF49FF50C2
      4DFF53C451FF56C654FF58C857FF5BCA5BFF5DCC5EFF6ED26EFF81D981FF45BB
      49FF4B6D4C992D2D2D381818181A060606050000000000000000000000000000
      0000000000000000000000000000000000003E3E93C26D6DD4FF4848C6FF4242
      C6FF4040C5FF3F3FC5FF3D3DC5FF1F1FB2FF42427BAF2727272F0E0E0E0E0000
      0000000000000000000000000000030303020C0C0C0C434360760B0BBAFF0C0C
      BCFF0D0DBDFF0E0EBEFF0F0FBFFF1010C0FF1212C1FF1313C2FF1414C2FF4545
      60760C0C0C0C0303030200000000000000000000000000000000000000000000
      000000000000494977953A3ABAFF5252DAFF1B1BCBFF1A1ACBFF1A1ACAFF1717
      C3FF1313AFFF393990D02424242A0C0C0C0B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003D523D610B980BFF4DB1
      4AFF73C06DFF67BB60FF58B652FF2CA628FF0F950FF14161417C0A0A0A090303
      0302000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000408441B157BD56FF92D78FFF54C04FFF4CBE
      48FF4FC04BFF51C34FFF54C552FF56C755FF59C858FF5BCA5AFF75D375FF75D2
      76FF3AAC3EF43E443F5D2727272E111111110303030200000000000000000000
      000000000000000000000000000000000000474778937070D5FF4A4AC7FF4343
      C6FF4141C6FF4040C5FF3E3EC5FF2323B5FF363691D22A2A2A34111111110000
      00000000000000000000030303020C0C0C0C43435F760B0BB8FF0B0BBAFF0C0C
      BBFF0C0CBCFF0D0DBDFF0E0EBEFF0F0FBFFF1010C0FF1212C0FF444460760C0C
      0C0C030303020000000000000000000000000000000000000000000000000000
      0000000000003F3F92C33838B9FF4949D7FF1919C9FF1818C9FF1818C8FF1515
      C0FF1313AFFF44447AAC222222270B0B0B0A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001E201E21406F
      4091308530C22F852FC3377F37B33F553F671617161703030302000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001E201E2127A028F085D082FF7FCE7BFF48BB
      43FF4BBD46FF4DBF49FF50C14CFF52C34FFF54C552FF56C654FF5CC95BFF79D3
      78FF5AC45CFF439245D231313140202020240B0B0B0A02020201000000000000
      00000000000000000000000000000000000047476E845D5DCDFF4F4FC8FF4343
      C6FF4242C6FF4040C5FF3F3FC5FF2626B6FF30309ADD2E2E2E3A161616170303
      030200000000030303020C0C0C0C43435F760A0AB7FF0909B8FF0A0AB9FF0B0B
      BAFF0C0CBBFF0C0CBCFF0D0DBDFF0E0EBEFF1010BEFF444460760C0C0C0C0303
      0302000000000000000000000000000000000000000000000000000000000000
      000003030302383899D34242C0FF3B3BD2FF1717C7FF1717C7FF1616C6FF1313
      BDFF1515AEFF464673A11F1F1F23090909080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000435F447134AF34FF98D894FF61C3
      5BFF47BA41FF49BC44FF4BBE47FF4DBF49FF4FC14CFF51C24EFF53C451FF64CA
      62FF78D277FF41B844FF4B6D4C992D2D2D381818181A06060605000000000000
      000000000000000000000000000000000000454563735858CBFF5858CBFF4343
      C6FF4343C6FF4141C6FF4040C5FF2D2DBAFF1B1BAFFF37373A4D1E1E1E220909
      0908030303020C0C0C0C484860762525BEFF0E0EB8FF0808B7FF0909B8FF0A0A
      B9FF0B0BBAFF0C0CBBFF0C0CBCFF0E0EBCFF444460760C0C0C0C030303020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000161617171E1EACFF4E4EC8FF2A2ACCFF1515C5FF1515C5FF1414C4FF1111
      B9FF1515ACFF46466B931A1A1A1C060606050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000339233D076C974FF99D8
      95FF60C25BFF5EC258FF5CC258FF5BC256FF5CC358FF5EC55AFF5FC65BFF60C7
      5DFF7AD178FF78D077FF39AB3DF43E443E5D2727272E11111111030303020000
      00000000000000000000000000000000000033333D413A3ABFFF6868D1FF4444
      C6FF4343C6FF4242C6FF4040C5FF3838C1FF1B1BAFFF4545658D2727272F1111
      11110D0D0D0D484860763535C3FF3636C4FF3535C4FF2C2CC2FF1C1CBDFF0E0E
      BAFF0A0AB9FF0B0BBAFF0C0CBAFF44445F760C0C0C0C03030302000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      020143435A6A1D1DACFF5F5FD6FF1919C5FF1313C3FF1313C3FF1313C3FF0E0E
      B3FF1818AAFF4242516A14141415020202010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000333C33411BA41CFF98D6
      94FF7FCC7AFF5BBF55FF5CC056FF5EC158FF5FC35AFF60C45CFF61C55DFF62C6
      5EFF67C863FF81D27FFF5DC35EFF419144D231313140202020240B0B0B0A0202
      020100000000000000000000000000000000000000002121B4FF7D7DD9FF4646
      C7FF4444C6FF4343C6FF4242C6FF4040C5FF1F1FB2FF363691D22F2F2F3D2121
      2125484862783737C3FF3838C4FF3737C4FF3636C4FF3535C4FF3434C4FF3434
      C5FF2B2BC3FF1F1FBEFF43435F760C0C0C0C0303030200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000606
      06053D3D91C63131B6FF4949D3FF1212C2FF1212C1FF1212C1FF1111C1FF0B0B
      AAFF1C1CADFF2727272F0E0E0E0E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004572459050B9
      4FFFA1D99CFF67C260FF5ABD53FF5BBF54FF5BC056FF5DC157FF5EC259FF5FC3
      5AFF60C45BFF6EC96BFF81D17EFF41B744FF4A6D4B992D2D2D381818181A0606
      060500000000000000000000000000000000000000003D3D94C17777D8FF4D4D
      C8FF4545C7FF4343C6FF4343C6FF4141C6FF2D2DBAFF1A1AAFFF3E3E455F4949
      66873939C3FF3A3AC4FF3838C4FF3737C4FF3737C4FF3636C4FF3535C4FF3434
      C4FF3232C4FF474761760C0C0C0C030303020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000030303023131
      383E1D1DADFF5454CBFF2828C7FF1818C2FF1C1CC3FF2020C4FF2121C0FF1818
      AEFF383891D02020202409090908000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000101110101B9C
      1DF083CE81FF8DD187FF57BB4FFF58BC51FF59BD52FF5ABE54FF5BBF55FF5CC0
      56FF5DC157FF5DC258FF74CA70FF74CB72FF36AA3AF43E443E5D2727272E1111
      11110303030200000000000000000000000000000000454563725151C9FF6161
      CEFF4646C7FF4444C6FF4343C6FF4242C6FF3E3EC4FF1C1CB1FF2F2FA5E93B3B
      C3FF3C3CC4FF3B3BC5FF3A3AC4FF3838C4FF3737C4FF3737C4FF3636C4FF3434
      C3FF474760760C0C0C0C03030302000000000000000000000000000000000000
      00000000000000000000000000000000000000000000020202010C0C0C0B3C3C
      92C82C2CB4FF6262D7FF3030C8FF3030C8FF3030C8FF3030C8FF2828BCFF1E1E
      AEFF47476A901616161704040403000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003A48
      3A512AAA2AFF9ED799FF73C66CFF55BA4DFF57BB4EFF57BC50FF58BC51FF59BD
      52FF5ABE53FF5ABE54FF5DC057FF7ACC75FF59BF57FF3F9143D2313131402020
      20240B0B0B0A02020201000000000000000000000000101011102121B4FF8181
      DBFF4949C8FF4646C7FF4444C6FF4343C6FF4242C6FF3434BFFF3D3DC4FF3E3E
      C5FF3C3CC5FF3C3CC4FF3B3BC5FF3A3AC4FF3838C4FF3838C4FF3535C3FF4848
      60760C0C0C0C0303030200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000202020109090908474767811D1D
      ADFF5C5CCEFF3737C9FF3030C7FF3030C7FF3030C7FF3030C7FF2222B3FF1D1D
      ADFF2D2D2F370C0C0C0C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000388A39C060BE5EFF99D493FF58B94FFF53B84BFF54B94CFF55BA4DFF56BB
      4EFF57BB4FFF58BC50FF58BC51FF63C15CFF7ACA75FF3EB43FFF496D4B992D2D
      2D381818181A0606060500000000000000000000000000000000464682A16767
      D1FF5A5ACCFF4747C7FF4545C7FF4343C6FF4343C6FF4242C6FF4040C5FF3F3F
      C5FF3D3DC5FF3D3DC5FF3C3CC4FF3B3BC5FF3A3AC4FF3737C3FF484860760C0C
      0C0C030303020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000030303020B0B0B0A36363E481C1CADFF4545
      C0FF4646CDFF3131C6FF3131C6FF3131C6FF3131C6FF2D2DC1FF1C1CABFF4141
      82B51818181A0505050400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001E201E2116A217FF8ACE85FF81C97AFF52B648FF52B748FF53B749FF53B8
      4AFF54B94BFF55B94CFF55BA4DFF56BA4EFF6DC467FF6EC569FF34A837F43E44
      3E5D2828283012121212030303020000000000000000000000001E1E21212929
      B8FF8181DBFF4A4AC8FF4747C7FF4545C7FF4343C6FF4343C6FF4242C6FF4040
      C5FF3F3FC5FF3D3DC5FF3C3CC5FF3C3CC4FF3939C3FF484862780D0D0D0D0303
      0302000000000000000000000000000000000000000000000000000000000000
      0000000000000202020106060605101010103838404C2525A6F33030B7FF4848
      CCFF3232C6FF3232C6FF3232C6FF3232C6FF3232C6FF2424B4FF1C1CACFF3434
      39450C0C0C0C0202020100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000446944813AAF39FF9BD596FF63BC5AFF50B446FF51B547FF51B6
      47FF52B648FF52B748FF52B749FF53B84AFF55B84CFF74C66DFF54BB52FF3B98
      3DDD32323242212121260C0C0C0B020202010000000000000000000000004646
      82A15959CCFF6666D0FF4848C8FF4646C7FF4444C6FF4343C6FF4343C6FF4242
      C6FF4040C5FF3F3FC5FF3E3EC5FF3B3BC3FF49496687202020240F0F0F0F0707
      0706030303020000000000000000000000000000000000000000000000000303
      0302070707060E0E0E0E1919191B4646607C2525A7F32020B2FF3131C4FF3232
      C5FF3232C5FF3232C5FF3232C5FF3232C5FF2D2DBFFF1C1CABFF424282B31616
      1617050505040000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000249525E078C674FF91CF8AFF4DB242FF4EB343FF4FB3
      44FF4FB445FF50B446FF50B546FF50B547FF51B547FF5CBA53FF75C46DFF3BB2
      3CFF487349A52D2D2D3918181819050505040000000000000000000000001010
      11102C2CAEF08181DCFF5555CAFF4848C8FF4646C7FF4444C6FF4343C6FF4343
      C6FF4242C6FF4040C5FF3D3DC4FF36369DDD3E3E455E2E2E2E3B2525252C1C1C
      1C1F141414150E0E0E0E0C0C0C0B0B0B0B0A0B0B0B0A0C0C0C0B0F0F0F0F1414
      14151C1C1C1F35353A463D3D8AC21C1CAEFF2424B5FF3232C4FF3434C5FF3434
      C5FF3434C5FF3333C5FF3333C5FF3333C5FF2222AFFF2727A9F32828292F0909
      0908000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000323B32411DA41DFF91D08AFF74C26BFF4CB141FF4DB1
      41FF4DB142FF4DB242FF4EB243FF4EB343FF4EB344FF4EB344FF68BE5EFF69C0
      62FF2CAD2FFF3D433D5B232323280B0B0B0A0000000000000000000000000000
      00003B3B4A513232BCFF7E7EDAFF4F4FC9FF4848C8FF4646C7FF4444C6FF4343
      C6FF4343C6FF4242C6FF3737C0FF1C1CB1FF1A1AAFFF3E3E83BB45455D803030
      303F2D2D2D38282828302424242A22222227222222272424242A292929314444
      5A77414182B71C1CAEFF1E1EAFFF2A2ABBFF3535C4FF3535C4FF3434C4FF3434
      C4FF3434C4FF3434C4FF3434C4FF2828B5FF1C1CADFF4343566B0D0D0D0D0303
      0302000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003F7A40A152B84FFF96D18FFF54B349FF4BAF
      3FFF4BB03FFF4CB040FF4CB040FF4CB140FF4CB141FF4DB141FF4FB244FF6EC0
      65FF4BB649FF467A47B02A2A2A33101010100000000000000000000000000000
      000000000000474778904A4AC6FF7E7EDAFF4D4DC8FF4848C8FF4646C7FF4545
      C6FF4343C6FF4343C6FF4242C6FF3E3EC4FF2D2DBAFF1C1CB0FF1B1BAFFF2323
      A9F4363691D242427BAF454574A2454574A243437BAD373792D01B1BAFFF1B1B
      AEFF1D1DAFFF2929B9FF3535C3FF3737C4FF3636C4FF3636C4FF3636C4FF3636
      C4FF3636C4FF3636C4FF3131BDFF1E1EADFF46467AA110101010040404030000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000010111010179817F07FC779FF84C87DFF49AE
      3DFF49AE3DFF49AE3EFF4AAF3EFF4AAF3EFF4AAF3EFF4AAF3FFF4BB03FFF5FB8
      55FF66BD5EFF319E34E92D2D2D38131313130000000000000000000000000000
      00000000000000000000464682A04A4AC6FF7E7EDAFF4F4FC9FF4848C8FF4646
      C7FF4545C7FF4343C6FF4343C6FF4242C6FF4141C6FF4040C5FF3434BEFF2B2B
      B9FF2424B4FF1D1DB0FF1B1BAFFF1B1BAFFF1D1DB0FF2323B4FF2929B8FF3030
      BDFF3838C4FF3838C4FF3838C4FF3737C4FF3737C4FF3737C4FF3737C4FF3737
      C4FF3737C4FF4040C6FF2D2DB6FF434382AF1111111104040403000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000415E41712DA92BFF97D090FF61B7
      56FF48AC3BFF48AC3BFF48AD3BFF48AD3CFF49AD3CFF49AE3DFF49AE3DFF52B2
      46FF6EBE64FF23A926FF2E2E2E3A131313130000000000000000000000000000
      0000000000000000000000000000464682A04A4AC6FF8383DDFF5555CAFF4848
      C8FF4747C7FF4545C7FF4444C6FF4343C6FF4343C6FF4242C6FF4141C5FF4040
      C5FF3F3FC5FF3E3EC5FF3D3DC5FF3D3DC5FF3C3CC4FF3C3CC4FF3B3BC4FF3A3A
      C4FF3A3AC4FF3A3AC4FF3939C4FF3939C4FF3838C4FF3838C4FF3838C4FF3838
      C4FF5F5FD3FF4848C3FF444482AE111111110404040300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000348835C062BC5EFF91CD
      8AFF4BAD3EFF46AB39FF47AB39FF47AB3AFF47AB3AFF47AB3AFF47AC3AFF51B0
      44FF6DBC62FF26AA28FF2C2C2C37121212120000000000000000000000000000
      000000000000000000000000000000000000464682A03232BCFF8181DCFF6565
      D0FF4A4AC8FF4747C7FF4646C7FF4444C6FF4343C6FF4343C6FF4242C6FF4141
      C6FF4040C5FF4040C5FF3F3FC5FF3E3EC5FF3D3DC5FF3D3DC5FF3C3CC4FF3C3C
      C4FF3C3CC4FF3B3BC4FF3B3BC4FF3A3AC4FF3A3AC4FF3A3AC4FF4343C8FF6C6C
      D6FF3232BAFF444483AC0E0E0E0E040404030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000292E2931109F10FF8DCC
      86FF74BF69FF45AA37FF45AA38FF45AA37FF45AA38FF46AA38FF46AA38FF54B1
      47FF6CBB60FF1FA721FF2525252B0C0C0C0C0000000000000000000000000000
      00000000000000000000000000000000000000000000414156612C2CAEF06969
      D3FF8181DBFF5A5ACCFF4949C8FF4646C7FF4545C7FF4444C6FF4343C6FF4343
      C6FF4242C6FF4141C6FF4040C5FF4040C5FF3F3FC5FF3E3EC5FF3E3EC5FF3D3D
      C5FF3D3DC5FF3C3CC4FF3C3CC4FF3C3CC4FF4343C6FF6C6CD6FF5D5DCDFF2C2C
      ACF244445D700A0A0A0903030302000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004268428134AB
      31FF96CF8EFF5EB452FF45A936FF45A937FF45A937FF45A937FF4EAE41FF68B9
      5DFF48B142FF3F8640C017171718060606050000000000000000000000000000
      00000000000000000000000000000000000000000000000000001E1E21214343
      8BB13A3ABFFF7777D8FF8181DBFF6060CEFF4D4DC8FF4646C7FF4444C6FF4444
      C6FF4343C6FF4343C6FF4242C6FF4141C6FF4040C5FF4040C5FF4040C5FF3F3F
      C5FF3E3EC5FF4040C5FF5252CBFF7070D7FF7272D6FF3A3ABDFF41418BB82626
      292C060606050202020100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000101110102A8D
      2AD061BB5CFF93CE8AFF70BD65FF51AE42FF53AF45FF5FB452FF6ABA5FFF50B2
      49FF27A028F22D312D3809090908020202010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000033333D413D3D94C12929B8FF6161CFFF7F7FDBFF7C7CD9FF6767D1FF5858
      CBFF4F4FC8FF4A4AC6FF4848C6FF4848C6FF4949C6FF4B4BC8FF5454CAFF6161
      CFFF7474D7FF7B7BD9FF5F5FCEFF2A2AB6FF3D3D93C63737424A070707060202
      0201000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001011
      10102A8D2AD034AB31FF70C16AFF90CC87FF7BC271FF59B752FF28A726FF2998
      2BE33138313F0707070602020201000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001E1E2121474778912F2FA4E03131BBFF5252C9FF6060
      CFFF7474D7FF7070D5FF6D6DD3FF6C6CD3FF6F6FD4FF7373D7FF5F5FCEFF5151
      C9FF3232BBFF2E2EA3E247477996242427290505050402020201000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E533E61348834C1099C09FF189918F0368A37C4415841690808
      0807030303020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001E1E2121414157624747
      6F8343438BB23E3E93C23D3D94C33D3D94C33D3D94C342428BB347476F864242
      5966222225260404040302020201000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000C0000000300000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFF8001FFFF00000000
      0000000000000000000000000000FFFC00003FFF000000000000000000000000
      000000000000FFF000000FFF000000000000000000000000000000000000FFC0
      000003FF000000000000000000000000000000000000FF80000001FF00000000
      0000000000000000000000000000FF00000000FF000000000000000000000000
      000000000000FE000000007F000000000000000000000000000000000000FC00
      0000003F000000000000000000000000000000000000F8000000001F00000000
      0000000000000000000000000000F0000000000F000000000000000000000000
      000000000000F0000000000F000000000000000000000000000000000000E000
      07E00007000000000000000000000000000000000000C0001FF0000300000000
      0000000000000000000000000000C0007FE00003000000000000000000000000
      000000000000C000FFC000030000000000000000000000000000000000008001
      FF8000010000000000000000000000000000000000008003FF00000100000000
      00000000000000000000000000008007FE000001000000000000000000000000
      0000000000000007FC000000000000000000000000000000000000000000000F
      F8000000000000000000000000000000000000000000000FF000100000000000
      0000000000000000000000000000001FE0003000000000000000000000000000
      000000000000001FC0007800000000000000000000000000000000000000001F
      8000F800000000000000000000000000000000000000001F0001F80000000000
      0000000000000000000000000000001E0003F800000000000000000000000000
      000000000000001C0007F8000000000000000000000000000000000000000008
      000FF0000000000000000000000000000000000000000000001FF00000000000
      00000000000000000000000000000000003FE000000000000000000000000000
      0000000000008000007FE0010000000000000000000000000000000000008000
      00FFC001000000000000000000000000000000000000800001FF800100000000
      0000000000000000000000000000800003FF0003000000000000000000000000
      000000000000C00007FE0003000000000000000000000000000000000000C000
      0FF80003000000000000000000000000000000000000E00007E0000700000000
      0000000000000000000000000000E0000000000F000000000000000000000000
      000000000000F0000000000F000000000000000000000000000000000000F800
      0000001F000000000000000000000000000000000000FC000000003F00000000
      0000000000000000000000000000FE000000007F000000000000000000000000
      000000000000FF00000000FF000000000000000000000000000000000000FF80
      000001FF000000000000000000000000000000000000FFC0000003FF00000000
      0000000000000000000000000000FFF000000FFF000000000000000000000000
      000000000000FFFC00003FFF000000000000000000000000000000000000FFFF
      8001FFFF00000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object ADOQHuella: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    Left = 424
  end
end
