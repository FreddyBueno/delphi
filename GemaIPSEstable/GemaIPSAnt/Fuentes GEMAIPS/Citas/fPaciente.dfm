object frmPaciente: TfrmPaciente
  Left = 0
  Top = 0
  Caption = 'Paciente'
  ClientHeight = 579
  ClientWidth = 884
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object pgctrlPaciente: TcxPageControl
    Left = 0
    Top = 59
    Width = 884
    Height = 520
    Align = alClient
    Color = clBtnFace
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    Visible = False
    Properties.ActivePage = tbshtPaciente
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 516
    ClientRectLeft = 4
    ClientRectRight = 880
    ClientRectTop = 24
    object tbshtPaciente: TcxTabSheet
      Caption = '&Paciente'
      Color = clBtnFace
      ImageIndex = 0
      ParentColor = False
      object pnlSuperiorPac: TPanel
        Left = 0
        Top = 0
        Width = 876
        Height = 129
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 774
          Height = 129
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 774
            Height = 65
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object grpbxDocID: TcxGroupBox
              Left = 0
              Top = 0
              Align = alLeft
              Caption = 'Documento de identidad'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 0
              Height = 65
              Width = 185
              object Label1: TLabel
                Left = 94
                Top = 14
                Width = 54
                Height = 13
                Caption = 'Documento'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object Label2: TLabel
                Left = 11
                Top = 14
                Width = 20
                Height = 13
                Caption = 'Tipo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object cmbbxTipoDocID: TcxDBLookupComboBox
                Left = 11
                Top = 33
                TabStop = False
                DataBinding.DataField = 'TP_IDENT_USUAR'
                DataBinding.DataSource = dsPaciente
                Enabled = False
                ParentFont = False
                ParentShowHint = False
                Properties.DropDownAutoSize = True
                Properties.DropDownWidth = 130
                Properties.KeyFieldNames = 'COD_TIPO'
                Properties.ListColumns = <
                  item
                    MinWidth = 30
                    SortOrder = soAscending
                    FieldName = 'COD_TIPO'
                  end
                  item
                    MinWidth = 100
                    FieldName = 'NOM_NOMBRE'
                  end>
                Properties.ListOptions.CaseInsensitive = True
                Properties.ListOptions.ShowHeader = False
                Properties.ListSource = dmComunes.dsTipoDoc
                ShowHint = True
                TabOrder = 0
                Width = 77
              end
              object dbedtDocID: TcxDBSpinEdit
                Left = 98
                Top = 33
                TabStop = False
                DataBinding.DataField = 'NR_IDENT_USUAR'
                DataBinding.DataSource = dsPaciente
                Enabled = False
                ParentFont = False
                Properties.SpinButtons.Visible = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 1
                Width = 81
              end
            end
            object grpbxNombreCompleto: TcxGroupBox
              Left = 185
              Top = 0
              TabStop = True
              Align = alClient
              Caption = 'Apellidos y nombres'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 1
              DesignSize = (
                589
                65)
              Height = 65
              Width = 589
              object Label4: TLabel
                Left = 14
                Top = 14
                Width = 70
                Height = 13
                Caption = 'Primer Apellido'
                FocusControl = dbedtPrimerApellido
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label5: TLabel
                Left = 144
                Top = 14
                Width = 82
                Height = 13
                Caption = 'Segundo Apellido'
                FocusControl = dbedtSegundoApellido
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label3: TLabel
                Left = 271
                Top = 14
                Width = 70
                Height = 13
                Caption = 'Primer Nombre'
                FocusControl = dbedtPrimerNombre
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label6: TLabel
                Left = 400
                Top = 14
                Width = 82
                Height = 13
                Caption = 'Segundo Nombre'
                FocusControl = dbedtSegundoNombre
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object dbedtPrimerApellido: TcxDBTextEdit
                Left = 14
                Top = 33
                DataBinding.DataField = 'PRIMER_APELLIDO'
                DataBinding.DataSource = dsPaciente
                ParentFont = False
                Properties.CharCase = ecUpperCase
                Style.Color = clCream
                TabOrder = 0
                Width = 121
              end
              object dbedtSegundoApellido: TcxDBTextEdit
                Left = 144
                Top = 33
                DataBinding.DataField = 'SEGUNDO_APELLIDO'
                DataBinding.DataSource = dsPaciente
                ParentFont = False
                Properties.CharCase = ecUpperCase
                TabOrder = 1
                Width = 121
              end
              object dbedtPrimerNombre: TcxDBTextEdit
                Left = 271
                Top = 33
                DataBinding.DataField = 'PRIMER_NOMBRE'
                DataBinding.DataSource = dsPaciente
                ParentFont = False
                Properties.CharCase = ecUpperCase
                Style.Color = clCream
                TabOrder = 2
                Width = 121
              end
              object dbedtSegundoNombre: TcxDBTextEdit
                Left = 398
                Top = 33
                Anchors = [akLeft, akTop, akRight]
                DataBinding.DataField = 'SEGUNDO_NOMBRE'
                DataBinding.DataSource = dsPaciente
                ParentFont = False
                Properties.CharCase = ecUpperCase
                TabOrder = 3
                Width = 185
              end
            end
          end
          object grpbxBasicos: TcxGroupBox
            Left = 0
            Top = 65
            TabStop = True
            Align = alClient
            Caption = 'Datos b'#225'sicos'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 1
            DesignSize = (
              774
              64)
            Height = 64
            Width = 774
            object Label7: TLabel
              Left = 11
              Top = 14
              Width = 24
              Height = 13
              Caption = 'Sexo'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
            end
            object Label8: TLabel
              Left = 96
              Top = 14
              Width = 84
              Height = 13
              Caption = 'Fecha Nacimiento'
              Color = clBtnFace
              FocusControl = dbdtFechaNac
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
            end
            object Label9: TLabel
              Left = 191
              Top = 14
              Width = 82
              Height = 13
              Caption = 'Lugar Nacimiento'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
            end
            object Label10: TLabel
              Left = 367
              Top = 14
              Width = 60
              Height = 13
              Caption = 'Nacionalidad'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
            end
            object Label11: TLabel
              Left = 487
              Top = 13
              Width = 55
              Height = 13
              Caption = 'Estado Civil'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
            end
            object Label12: TLabel
              Left = 575
              Top = 13
              Width = 61
              Height = 13
              Caption = 'Grupo Etnico'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
            end
            object dbdtFechaNac: TcxDBDateEdit
              Left = 96
              Top = 33
              DataBinding.DataField = 'FEC_NACIMINETO'
              DataBinding.DataSource = dsPaciente
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Style.Color = clCream
              TabOrder = 1
              Width = 89
            end
            object cmbbxSexo: TcxDBLookupComboBox
              Left = 11
              Top = 33
              DataBinding.DataField = 'SEXO'
              DataBinding.DataSource = dsPaciente
              ParentFont = False
              ParentShowHint = False
              Properties.DropDownAutoSize = True
              Properties.DropDownWidth = 130
              Properties.KeyFieldNames = 'TIP_SEXO'
              Properties.ListColumns = <
                item
                  MinWidth = 30
                  FieldName = 'TIP_SEXO'
                end
                item
                  MinWidth = 100
                  SortOrder = soDescending
                  FieldName = 'NOM_SEXO'
                end>
              Properties.ListFieldIndex = 1
              Properties.ListOptions.CaseInsensitive = True
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = dmComunes.dsSexo
              ShowHint = True
              TabOrder = 0
              Width = 79
            end
            object cmbbxNacionalidad: TcxDBLookupComboBox
              Left = 367
              Top = 33
              DataBinding.DataField = 'NACIONALIDAD'
              DataBinding.DataSource = dsPaciente
              ParentFont = False
              ParentShowHint = False
              Properties.DropDownAutoSize = True
              Properties.KeyFieldNames = 'COD_NACIONALIDA'
              Properties.ListColumns = <
                item
                  MinWidth = 30
                  FieldName = 'COD_NACIONALIDA'
                end
                item
                  MinWidth = 200
                  SortOrder = soAscending
                  FieldName = 'NOM_NACIONALIAD'
                end>
              Properties.ListFieldIndex = 1
              Properties.ListOptions.CaseInsensitive = True
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = dmComunes.dsNacionalidad
              ShowHint = True
              TabOrder = 3
              Width = 114
            end
            object cmbbxEstadoCivil: TcxDBLookupComboBox
              Left = 487
              Top = 32
              DataBinding.DataField = 'ESTADO_CIVIL'
              DataBinding.DataSource = dsPaciente
              ParentFont = False
              ParentShowHint = False
              Properties.DropDownAutoSize = True
              Properties.KeyFieldNames = 'Codigo'
              Properties.ListColumns = <
                item
                  MinWidth = 30
                  FieldName = 'Codigo'
                end
                item
                  MinWidth = 100
                  FieldName = 'Descripcion'
                end>
              Properties.ListFieldIndex = 1
              Properties.ListOptions.CaseInsensitive = True
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = dmComunes.dsEstadoCivil
              ShowHint = True
              TabOrder = 4
              Width = 82
            end
            object cmbbxGrupoEtnico: TcxDBLookupComboBox
              Left = 577
              Top = 32
              Anchors = [akLeft, akTop, akRight]
              DataBinding.DataField = 'GRUPO_AT_ESPECIAL'
              DataBinding.DataSource = dsPaciente
              ParentFont = False
              ParentShowHint = False
              Properties.DropDownAutoSize = True
              Properties.KeyFieldNames = 'TIP_GRUPO'
              Properties.ListColumns = <
                item
                  FieldName = 'TIP_GRUPO'
                end
                item
                  SortOrder = soAscending
                  FieldName = 'NOM_GRUPO'
                end>
              Properties.ListFieldIndex = 1
              Properties.ListOptions.CaseInsensitive = True
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = dmGIPSci.dsGrupoEtnico
              ShowHint = True
              TabOrder = 5
              Width = 191
            end
            object dbedtLugarNac: TcxDBMRUEdit
              Left = 191
              Top = 33
              DataBinding.DataField = 'LUGAR_NACIMIENT'
              DataBinding.DataSource = dsPaciente
              ParentFont = False
              Properties.CharCase = ecUpperCase
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 170
            end
          end
        end
        object grpbxFoto: TcxGroupBox
          Left = 774
          Top = 0
          Align = alRight
          TabOrder = 1
          Height = 129
          Width = 102
          object dbimgFoto: TcxImage
            Left = 2
            Top = 5
            Hint = 'Haga click para tomar la foto'
            ParentCustomHint = False
            TabStop = False
            Align = alClient
            ParentShowHint = False
            Properties.Caption = 'Click para tomar la foto'
            Properties.GraphicClassName = 'TJPEGImage'
            Properties.GraphicTransparency = gtTransparent
            Properties.Stretch = True
            ShowHint = True
            TabOrder = 0
            Transparent = True
            OnClick = dbimgFotoClick
            Height = 122
            Width = 98
          end
        end
      end
      object pnlMedioPac: TPanel
        Left = 0
        Top = 129
        Width = 876
        Height = 136
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object grpbxDomicilio: TcxGroupBox
          Left = 0
          Top = 0
          TabStop = True
          Align = alTop
          Caption = 'Domicilio'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 0
          DesignSize = (
            876
            65)
          Height = 65
          Width = 876
          object Label13: TLabel
            Left = 11
            Top = 14
            Width = 24
            Height = 13
            Caption = 'Zona'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label15: TLabel
            Left = 449
            Top = 14
            Width = 69
            Height = 13
            Caption = 'Departamento'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label16: TLabel
            Left = 600
            Top = 14
            Width = 43
            Height = 13
            Caption = 'Municipio'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label17: TLabel
            Left = 106
            Top = 14
            Width = 43
            Height = 13
            Caption = 'Direcci'#243'n'
            Color = clBtnFace
            FocusControl = dbedtDireccionRes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label18: TLabel
            Left = 736
            Top = 14
            Width = 42
            Height = 13
            Caption = 'Tel'#233'fono'
            Color = clBtnFace
            FocusControl = dbedtTelRes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object dbedtDireccionRes: TcxDBTextEdit
            Left = 96
            Top = 33
            Anchors = [akLeft, akTop, akRight]
            DataBinding.DataField = 'DIR_CASA_PACIEN'
            DataBinding.DataSource = dsPaciente
            ParentFont = False
            Properties.CharCase = ecUpperCase
            TabOrder = 1
            Width = 385
          end
          object dbedtTelRes: TcxDBTextEdit
            Left = 737
            Top = 33
            DataBinding.DataField = 'TEL_CASA_PACIEN'
            DataBinding.DataSource = dsPaciente
            ParentFont = False
            TabOrder = 4
            Width = 98
          end
          object cmbbxET: TcxDBLookupComboBox
            Left = 449
            Top = 33
            DataBinding.DataField = 'COD_DEPARTAMENTO'
            DataBinding.DataSource = dsPaciente
            ParentFont = False
            ParentShowHint = False
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'CD_Departamento'
            Properties.ListColumns = <
              item
                Width = 200
                FieldName = 'DS_Departamento'
              end
              item
                Width = 30
                FieldName = 'CD_Departamento'
              end>
            Properties.ListOptions.RowSelect = False
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dmComunes.dsET
            ShowHint = True
            TabOrder = 2
            OnExit = cmbbxETExit
            Width = 145
          end
          object cmbbxMun: TcxDBLookupComboBox
            Left = 600
            Top = 33
            DataBinding.DataField = 'COD_MUNICIPIO'
            DataBinding.DataSource = dsPaciente
            ParentFont = False
            ParentShowHint = False
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'CD_Municipio'
            Properties.ListColumns = <
              item
                SortOrder = soAscending
                Width = 200
                FieldName = 'DS_Municipio'
              end
              item
                Width = 30
                FieldName = 'CD_Departamento'
              end
              item
                Width = 40
                FieldName = 'CD_Municipio'
              end>
            Properties.ListOptions.CaseInsensitive = True
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsMun
            ShowHint = True
            TabOrder = 3
            Width = 131
          end
          object cmbbxZona: TcxDBLookupComboBox
            Left = 11
            Top = 33
            DataBinding.DataField = 'ZONA_RESIDENCIA'
            DataBinding.DataSource = dsPaciente
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'TIP_ZONA'
            Properties.ListColumns = <
              item
                MinWidth = 30
                FieldName = 'TIP_ZONA'
              end
              item
                MinWidth = 80
                SortOrder = soAscending
                FieldName = 'NOM_ZONA'
              end>
            Properties.ListFieldIndex = 1
            Properties.ListOptions.CaseInsensitive = True
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dmGIPSci.dsZona
            TabOrder = 0
            Width = 77
          end
        end
        object grpbxTrabajoPac: TcxGroupBox
          Left = 0
          Top = 65
          TabStop = True
          Align = alTop
          Caption = 'Trabajo'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 1
          DesignSize = (
            876
            64)
          Height = 64
          Width = 876
          object lblOcupacion: TLabel
            Left = 11
            Top = 14
            Width = 50
            Height = 13
            Caption = 'Ocupaci'#243'n'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label21: TLabel
            Left = 472
            Top = 14
            Width = 95
            Height = 13
            Caption = 'Direci'#243'n del Trabajo'
            Color = clBtnFace
            FocusControl = dbedtDirTrabajoPac
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label22: TLabel
            Left = 736
            Top = 14
            Width = 42
            Height = 13
            Caption = 'Tel'#233'fono'
            Color = clBtnFace
            FocusControl = dbedtTelTrabajoPac
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label19: TLabel
            Left = 232
            Top = 14
            Width = 41
            Height = 13
            Caption = 'Empresa'
            Color = clBtnFace
            FocusControl = dbedtEmpresaPac
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object dbedtDirTrabajoPac: TcxDBTextEdit
            Left = 472
            Top = 33
            Anchors = [akLeft, akTop, akRight]
            DataBinding.DataField = 'DIR_TRABAJO_PAC'
            DataBinding.DataSource = dsPaciente
            ParentFont = False
            Properties.CharCase = ecUpperCase
            TabOrder = 2
            Width = 296
          end
          object dbedtTelTrabajoPac: TcxDBTextEdit
            Left = 737
            Top = 33
            DataBinding.DataField = 'TEL_TRABAJO_PAC'
            DataBinding.DataSource = dsPaciente
            ParentFont = False
            TabOrder = 3
            Width = 98
          end
          object cmbbxOcupacion: TcxDBLookupComboBox
            Left = 11
            Top = 33
            DataBinding.DataField = 'OCUPACION'
            DataBinding.DataSource = dsPaciente
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'CD_Ocupacion'
            Properties.ListColumns = <
              item
                MinWidth = 30
                FieldName = 'CD_Ocupacion'
              end
              item
                MinWidth = 80
                SortOrder = soAscending
                FieldName = 'DS_Ocupacion'
              end>
            Properties.ListFieldIndex = 1
            Properties.ListOptions.CaseInsensitive = True
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dmComunes.dsOcupacion
            TabOrder = 0
            Width = 215
          end
          object dbedtEmpresaPac: TcxDBTextEdit
            Left = 232
            Top = 33
            DataBinding.DataField = 'EMP_TRABAJO_PAC'
            DataBinding.DataSource = dsPaciente
            ParentFont = False
            Properties.CharCase = ecUpperCase
            TabOrder = 1
            Width = 234
          end
        end
      end
      object pnlBottom: TPanel
        Left = 0
        Top = 452
        Width = 876
        Height = 40
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object btnCancelar: TcxButton
          Left = 790
          Top = 0
          Width = 86
          Height = 40
          Align = alRight
          Cancel = True
          Caption = 'Cancelar'
          OptionsImage.ImageIndex = 3
          OptionsImage.Images = imgListDlg32
          TabOrder = 0
          OnClick = btnCancelarClick
        end
        object btnAplicar: TcxButton
          Left = 584
          Top = 0
          Width = 86
          Height = 40
          Align = alRight
          Caption = 'Aplicar'
          OptionsImage.ImageIndex = 2
          OptionsImage.Images = imgListDlg32
          TabOrder = 1
          OnClick = btnAplicarClick
        end
        object btnGuardar: TcxButton
          Left = 670
          Top = 0
          Width = 120
          Height = 40
          Align = alRight
          Caption = 'Guardar y Salir'
          OptionsImage.ImageIndex = 1
          OptionsImage.Images = imgListDlg32
          TabOrder = 2
          OnClick = btnGuardarClick
        end
        object lblMensaje: TcxLabel
          Left = 0
          Top = 0
          Align = alClient
          ParentColor = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.LabelEffect = cxleCool
          Properties.LabelStyle = cxlsLowered
          Properties.WordWrap = True
          Width = 584
          AnchorY = 20
        end
      end
      object pgctrlOtros: TcxPageControl
        Left = 0
        Top = 265
        Width = 876
        Height = 187
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
        Properties.ActivePage = tbshtSeguro
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 183
        ClientRectLeft = 4
        ClientRectRight = 872
        ClientRectTop = 24
        object tbshtSeguro: TcxTabSheet
          Caption = '&Seguro'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 2
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          object Label32: TLabel
            Left = 7
            Top = 14
            Width = 62
            Height = 13
            Caption = 'Aseguradora'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
          end
          object Label33: TLabel
            Left = 433
            Top = 14
            Width = 69
            Height = 13
            Caption = 'Fecha Ingreso'
            Color = clBtnFace
            FocusControl = dbdtFechaIngreso
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
          end
          object Label35: TLabel
            Left = 569
            Top = 14
            Width = 42
            Height = 13
            Caption = 'N'#176' Poliza'
            Color = clBtnFace
            FocusControl = dbedtPoliza
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
          end
          object lblNitAseguradora: TLabel
            Left = 273
            Top = 14
            Width = 17
            Height = 13
            Caption = 'NIT'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
          end
          object dbdtFechaIngreso: TcxDBDateEdit
            Left = 433
            Top = 33
            DataBinding.DataField = 'FEC_INGRESO'
            DataBinding.DataSource = dsPaciente
            ParentFont = False
            ParentShowHint = False
            Properties.DisplayFormat = 'dd/mm/yyyy'
            Properties.EditFormat = 'dd/mm/yyyy'
            Properties.SaveTime = False
            Properties.ShowTime = False
            Properties.WeekNumbers = True
            ShowHint = False
            TabOrder = 2
            Width = 130
          end
          object dbedtPoliza: TcxDBTextEdit
            Left = 569
            Top = 33
            DataBinding.DataField = 'NO_POLIZA'
            DataBinding.DataSource = dsPaciente
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 3
            Width = 163
          end
          object cmbbxAseguradora: TcxDBLookupComboBox
            Left = 7
            Top = 33
            DataBinding.DataField = 'ASEGURADORA'
            DataBinding.DataSource = dsPaciente
            ParentFont = False
            ParentShowHint = False
            Properties.KeyFieldNames = 'NUM_DOCUMENTO'
            Properties.ListColumns = <
              item
                MinWidth = 80
                FieldName = 'NUM_DOCUMENTO'
              end
              item
                MinWidth = 200
                SortOrder = soAscending
                FieldName = 'NOM_EPS'
              end
              item
                MinWidth = 50
                FieldName = 'COD_EPS'
              end>
            Properties.ListFieldIndex = 1
            Properties.ListOptions.CaseInsensitive = True
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dmGIPSci.dsAseguradora
            ShowHint = False
            TabOrder = 0
            Width = 260
          end
          object cmbbxNitAseguradora: TcxDBLookupComboBox
            Left = 273
            Top = 33
            DataBinding.DataField = 'ASEGURADORA'
            DataBinding.DataSource = dsPaciente
            ParentFont = False
            ParentShowHint = False
            Properties.KeyFieldNames = 'NUM_DOCUMENTO'
            Properties.ListColumns = <
              item
                MinWidth = 80
                FieldName = 'NUM_DOCUMENTO'
              end
              item
                MinWidth = 200
                SortOrder = soAscending
                FieldName = 'NOM_EPS'
              end
              item
                MinWidth = 50
                FieldName = 'COD_EPS'
              end>
            Properties.ListOptions.CaseInsensitive = True
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dmGIPSci.dsAseguradora
            ShowHint = False
            TabOrder = 1
            Width = 154
          end
        end
        object tbshtResponsable: TcxTabSheet
          Caption = '&Responsable'
          ImageIndex = 0
          object pnlRespTop: TPanel
            Left = 0
            Top = 0
            Width = 868
            Height = 65
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object grpbxBasicoResp: TcxGroupBox
              Left = 0
              Top = 0
              TabStop = True
              Align = alLeft
              Caption = 'Persona Responsable'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 0
              Height = 65
              Width = 517
              object lblNombreResponsable: TLabel
                Left = 127
                Top = 14
                Width = 96
                Height = 13
                Caption = 'Nombres y Apellidos'
                Color = clBtnFace
                FocusControl = dbedtResp
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
              end
              object lblParentesco: TLabel
                Left = 363
                Top = 14
                Width = 118
                Height = 13
                Caption = 'Parentesco con Paciente'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
              end
              object lblDocIDResponsable: TLabel
                Left = 16
                Top = 14
                Width = 29
                Height = 13
                Caption = 'DocID'
                Color = clBtnFace
                FocusControl = dbedtDocIDResp
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
              end
              object dbedtResp: TcxDBTextEdit
                Left = 122
                Top = 33
                DataBinding.DataField = 'NOMBRE_RESPONDE'
                DataBinding.DataSource = dsPaciente
                ParentFont = False
                ParentShowHint = False
                Properties.CharCase = ecUpperCase
                ShowHint = False
                TabOrder = 0
                Width = 230
              end
              object dbedtDocIDResp: TcxDBTextEdit
                Left = 11
                Top = 33
                DataBinding.DataField = 'CEDULA_RESPONSA'
                DataBinding.DataSource = dsPaciente
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 1
                Width = 105
              end
              object cmbbxParentesco: TcxDBLookupComboBox
                Left = 358
                Top = 33
                DataBinding.DataField = 'PARENTESCO_RESP'
                DataBinding.DataSource = dsPaciente
                ParentFont = False
                ParentShowHint = False
                Properties.DropDownAutoSize = True
                Properties.KeyFieldNames = 'COD_PARENTESCO'
                Properties.ListColumns = <
                  item
                    MinWidth = 30
                    FieldName = 'COD_PARENTESCO'
                  end
                  item
                    MinWidth = 100
                    SortOrder = soAscending
                    FieldName = 'NOM_PARENTESCO'
                  end>
                Properties.ListFieldIndex = 1
                Properties.ListOptions.CaseInsensitive = True
                Properties.ListOptions.ShowHeader = False
                Properties.ListSource = dmComunes.dsParentesco
                ShowHint = False
                TabOrder = 2
                Width = 153
              end
            end
            object grpbxRespDomicilio: TcxGroupBox
              Left = 517
              Top = 0
              TabStop = True
              Align = alClient
              Caption = 'Domicilio del Responsable'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 1
              Height = 65
              Width = 351
              object Label14: TLabel
                Left = 6
                Top = 16
                Width = 43
                Height = 13
                Caption = 'Direcci'#243'n'
                Color = clBtnFace
                FocusControl = cxDBTextEdit1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
              end
              object Label20: TLabel
                Left = 207
                Top = 16
                Width = 42
                Height = 13
                Caption = 'Tel'#233'fono'
                Color = clBtnFace
                FocusControl = cxDBTextEdit2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
              end
              object cxDBTextEdit1: TcxDBTextEdit
                Left = 6
                Top = 35
                DataBinding.DataField = 'DIR_CASA_RESP'
                DataBinding.DataSource = dsPaciente
                ParentFont = False
                ParentShowHint = False
                Properties.CharCase = ecUpperCase
                ShowHint = False
                TabOrder = 0
                Width = 195
              end
              object cxDBTextEdit2: TcxDBTextEdit
                Left = 207
                Top = 35
                DataBinding.DataField = 'TEL_CASA_RESP'
                DataBinding.DataSource = dsPaciente
                ParentFont = False
                ParentShowHint = False
                Properties.CharCase = ecUpperCase
                ShowHint = False
                TabOrder = 1
                Width = 98
              end
            end
          end
          object cxGroupBox4: TcxGroupBox
            Left = 0
            Top = 65
            TabStop = True
            Align = alLeft
            Caption = 'Trabajo de Responsable'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 1
            Height = 94
            Width = 830
            object Label23: TLabel
              Left = 11
              Top = 14
              Width = 41
              Height = 13
              Caption = 'Empresa'
              Color = clBtnFace
              FocusControl = cxDBTextEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
            end
            object Label24: TLabel
              Left = 272
              Top = 14
              Width = 43
              Height = 13
              Caption = 'Direcci'#243'n'
              Color = clBtnFace
              FocusControl = cxDBTextEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
            end
            object Label25: TLabel
              Left = 523
              Top = 14
              Width = 42
              Height = 13
              Caption = 'Tel'#233'fono'
              Color = clBtnFace
              FocusControl = cxDBTextEdit5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
            end
            object cxDBTextEdit3: TcxDBTextEdit
              Left = 11
              Top = 33
              DataBinding.DataField = 'EMP_TRABAJO_RES'
              DataBinding.DataSource = dsPaciente
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              TabOrder = 0
              Width = 255
            end
            object cxDBTextEdit4: TcxDBTextEdit
              Left = 272
              Top = 33
              DataBinding.DataField = 'DIR_TRABAJO_RES'
              DataBinding.DataSource = dsPaciente
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              TabOrder = 1
              Width = 245
            end
            object cxDBTextEdit5: TcxDBTextEdit
              Left = 523
              Top = 33
              DataBinding.DataField = 'TEL_TRABAJO_RES'
              DataBinding.DataSource = dsPaciente
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              TabOrder = 2
              Width = 97
            end
          end
        end
        object tbshtFamilia: TcxTabSheet
          Caption = '&Familares'
          ImageIndex = 1
          object pnlPadres: TPanel
            Left = 0
            Top = 59
            Width = 868
            Height = 65
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object grpbxPadre: TcxGroupBox
              Left = 0
              Top = 0
              TabStop = True
              Align = alLeft
              Caption = 'Padre'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 0
              Height = 65
              Width = 407
              object Label30: TLabel
                Left = 14
                Top = 14
                Width = 96
                Height = 13
                Caption = 'Apellidos y Nombres'
                Color = clBtnFace
                FocusControl = dbedtPadre
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
              end
              object dbedtPadre: TcxDBTextEdit
                Left = 14
                Top = 33
                DataBinding.DataField = 'NOMBRE_PADRE'
                DataBinding.DataSource = dsPaciente
                ParentFont = False
                ParentShowHint = False
                Properties.CharCase = ecUpperCase
                ShowHint = False
                TabOrder = 0
                Width = 379
              end
            end
            object grpbxMadre: TcxGroupBox
              Left = 407
              Top = 0
              TabStop = True
              Align = alClient
              Caption = 'Madre'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 1
              Height = 65
              Width = 461
              object Label31: TLabel
                Left = 14
                Top = 14
                Width = 96
                Height = 13
                Caption = 'Apellidos y Nombres'
                Color = clBtnFace
                FocusControl = dbedtMadre
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
              end
              object dbedtMadre: TcxDBTextEdit
                Left = 6
                Top = 33
                DataBinding.DataField = 'NOMBRE_MADRE'
                DataBinding.DataSource = dsPaciente
                ParentFont = False
                ParentShowHint = False
                Properties.CharCase = ecUpperCase
                ShowHint = False
                TabOrder = 0
                Width = 379
              end
            end
          end
          object pnlConyuge: TPanel
            Left = 0
            Top = 0
            Width = 868
            Height = 59
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object grpbxConyuge: TcxGroupBox
              Left = 0
              Top = 0
              TabStop = True
              Align = alClient
              Caption = 'C'#243'nyuge'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 0
              Height = 59
              Width = 868
              object Label26: TLabel
                Left = 14
                Top = 14
                Width = 96
                Height = 13
                Caption = 'Apellidos y Nombres'
                Color = clBtnFace
                FocusControl = dbedtConyuge
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
              end
              object Label27: TLabel
                Left = 275
                Top = 14
                Width = 41
                Height = 13
                Caption = 'Empresa'
                Color = clBtnFace
                FocusControl = dbedtEmpresaCyge
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
              end
              object Label28: TLabel
                Left = 483
                Top = 14
                Width = 43
                Height = 13
                Caption = 'Direcci'#243'n'
                Color = clBtnFace
                FocusControl = dbedtDireccionCyge
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
              end
              object Label29: TLabel
                Left = 706
                Top = 14
                Width = 42
                Height = 13
                Caption = 'Tel'#233'fono'
                Color = clBtnFace
                FocusControl = dbedtTelCyge
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
              end
              object dbedtConyuge: TcxDBTextEdit
                Left = 14
                Top = 33
                DataBinding.DataField = 'NOMBRE_CONYUGUE'
                DataBinding.DataSource = dsPaciente
                ParentFont = False
                ParentShowHint = False
                Properties.CharCase = ecUpperCase
                ShowHint = False
                TabOrder = 0
                Width = 244
              end
              object dbedtDireccionCyge: TcxDBTextEdit
                Left = 483
                Top = 33
                DataBinding.DataField = 'DIR_TRABAJO_CYG'
                DataBinding.DataSource = dsPaciente
                ParentFont = False
                ParentShowHint = False
                Properties.CharCase = ecUpperCase
                ShowHint = False
                TabOrder = 1
                Width = 217
              end
              object dbedtEmpresaCyge: TcxDBTextEdit
                Left = 264
                Top = 33
                DataBinding.DataField = 'EMP_TRABAJO_CYG'
                DataBinding.DataSource = dsPaciente
                ParentFont = False
                ParentShowHint = False
                Properties.CharCase = ecUpperCase
                ShowHint = False
                TabOrder = 2
                Width = 213
              end
              object dbedtTelCyge: TcxDBTextEdit
                Left = 706
                Top = 33
                DataBinding.DataField = 'TEL_TRABAJO_CYG'
                DataBinding.DataSource = dsPaciente
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 3
                Width = 121
              end
            end
          end
        end
      end
    end
    object tbshtHuella: TcxTabSheet
      Caption = '&Huella'
      Color = clBtnFace
      Enabled = False
      ImageIndex = 1
      ParentColor = False
      object Panel1: TPanel
        Left = 312
        Top = 200
        Width = 233
        Height = 73
        BevelOuter = bvNone
        TabOrder = 0
      end
      object Panel3: TPanel
        Left = 0
        Top = 451
        Width = 876
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        ParentBackground = False
        ParentColor = True
        TabOrder = 1
        object btnGuardarHuellas: TButton
          Left = 742
          Top = 0
          Width = 134
          Height = 41
          Align = alRight
          Caption = 'Guardar Huellas'
          ImageIndex = 0
          Images = imgListDlg32
          TabOrder = 0
          OnClick = btnGuardarHuellasClick
        end
      end
      object DPFPEnrollmentControl: TDPFPEnrollmentControl
        Left = 0
        Top = 0
        Width = 876
        Height = 451
        Align = alClient
        TabOrder = 2
        ExplicitWidth = 495
        ExplicitHeight = 314
        ControlData = {
          00080000293300007420000003000A00000003000000000008004E0000007B00
          300030003000300030003000300030002D0030003000300030002D0030003000
          300030002D0030003000300030002D0030003000300030003000300030003000
          30003000300030007D000000}
      end
    end
  end
  object pnlSuperior: TPanel
    Left = 0
    Top = 0
    Width = 884
    Height = 59
    Align = alTop
    TabOrder = 1
    object grpbxBuscar: TcxGroupBox
      Left = 1
      Top = 1
      TabStop = True
      Align = alLeft
      Caption = 'Documento de identidad del paciente'
      TabOrder = 0
      Height = 57
      Width = 484
      object cmbbxBuscarTipoDocID: TcxLookupComboBox
        Left = 44
        Top = 23
        Properties.CharCase = ecUpperCase
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'COD_TIPO'
        Properties.ListColumns = <
          item
            SortOrder = soAscending
            Width = 20
            FieldName = 'COD_TIPO'
          end
          item
            Width = 200
            FieldName = 'NOM_NOMBRE'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmComunes.dsTipoDoc
        EditValue = 'CC'
        TabOrder = 1
        Width = 87
      end
      object lblBuscarDocID: TcxLabel
        Left = 151
        Top = 25
        Caption = 'Documento'
      end
      object btnContinuar: TcxButton
        Left = 375
        Top = 18
        Width = 107
        Height = 37
        Align = alRight
        Caption = 'Continuar'
        OptionsImage.ImageIndex = 4
        OptionsImage.Images = imgListDlg32
        OptionsImage.Layout = blGlyphRight
        TabOrder = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnContinuarClick
      end
      object lblBuscarTipoDocID: TcxLabel
        Left = 15
        Top = 25
        Caption = 'Tipo'
      end
      object dbedtBuscarDocID: TcxSpinEdit
        Left = 216
        Top = 24
        Properties.AssignedValues.EditFormat = True
        Properties.AssignedValues.MinValue = True
        Properties.SpinButtons.Visible = False
        Properties.ValueType = vtInt
        TabOrder = 2
        Width = 121
      end
    end
    object pnlHistoria: TPanel
      Left = 485
      Top = 1
      Width = 398
      Height = 57
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      object lblHistoria: TcxLabel
        Left = 15
        Top = 23
        Caption = 'Historia N'#176
      end
      object dbedtHistoria: TcxDBTextEdit
        Left = 85
        Top = 23
        TabStop = False
        DataBinding.DataField = 'CCHISTORIA'
        DataBinding.DataSource = dsPaciente
        Enabled = False
        Style.TextStyle = []
        TabOrder = 1
        Width = 121
      end
    end
  end
  object tblPaciente: TADTable
    BeforePost = tblPacienteBeforePost
    IndexFieldNames = 'NR_IDENT_USUAR;TP_IDENT_USUAR'
    Connection = dmGIPSci.connGIPS
    UpdateOptions.UpdateTableName = 'sapacientes'
    TableName = 'sapacientes'
    Left = 104
    object tblPacienteID: TADAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ReadOnly = True
    end
    object tblPacienteNR_IDENT_USUAR: TStringField
      DisplayLabel = 'DocID'
      FieldName = 'NR_IDENT_USUAR'
      Origin = 'NR_IDENT_USUAR'
      Required = True
    end
    object tblPacienteTP_IDENT_USUAR: TStringField
      DisplayLabel = 'TipoDocID'
      FieldName = 'TP_IDENT_USUAR'
      Origin = 'TP_IDENT_USUAR'
      Required = True
      Size = 4
    end
    object tblPacienteCCHISTORIA: TStringField
      DisplayLabel = 'CCHistoria'
      FieldName = 'CCHISTORIA'
      Origin = 'CCHISTORIA'
      Visible = False
      Size = 50
    end
    object tblPacientePRIMER_APELLIDO: TStringField
      DisplayLabel = 'Primer Apellido'
      FieldName = 'PRIMER_APELLIDO'
      Origin = 'PRIMER_APELLIDO'
    end
    object tblPacienteSEGUNDO_APELLIDO: TStringField
      DisplayLabel = 'Segundo Apellido'
      FieldName = 'SEGUNDO_APELLIDO'
      Origin = 'SEGUNDO_APELLIDO'
    end
    object tblPacientePRIMER_NOMBRE: TStringField
      DisplayLabel = 'Primer Nombre'
      FieldName = 'PRIMER_NOMBRE'
      Origin = 'PRIMER_NOMBRE'
      Size = 15
    end
    object tblPacienteSEGUNDO_NOMBRE: TStringField
      DisplayLabel = 'Segundo Nombre'
      FieldName = 'SEGUNDO_NOMBRE'
      Origin = 'SEGUNDO_NOMBRE'
      Size = 15
    end
    object tblPacienteSEXO: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'SEXO'
      Origin = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object tblPacienteFEC_NACIMINETO: TSQLTimeStampField
      DisplayLabel = 'Fecha Nacimiento'
      FieldName = 'FEC_NACIMINETO'
      Origin = 'FEC_NACIMINETO'
    end
    object tblPacienteLUGAR_NACIMIENT: TStringField
      DisplayLabel = 'Lugar Nacimiento'
      FieldName = 'LUGAR_NACIMIENT'
      Origin = 'LUGAR_NACIMIENT'
      Size = 15
    end
    object tblPacienteNACIONALIDAD: TStringField
      DisplayLabel = 'Nacionalidad'
      FieldName = 'NACIONALIDAD'
      Origin = 'NACIONALIDAD'
      Size = 3
    end
    object tblPacienteESTADO_CIVIL: TStringField
      DisplayLabel = 'Estado Civil'
      FieldName = 'ESTADO_CIVIL'
      Origin = 'ESTADO_CIVIL'
      FixedChar = True
      Size = 1
    end
    object tblPacienteZONA_RESIDENCIA: TStringField
      DisplayLabel = 'Zona'
      FieldName = 'ZONA_RESIDENCIA'
      Origin = 'ZONA_RESIDENCIA'
      FixedChar = True
      Size = 1
    end
    object tblPacienteTP_USUARIO: TStringField
      FieldName = 'TP_USUARIO'
      Origin = 'TP_USUARIO'
      FixedChar = True
      Size = 1
    end
    object tblPacienteTP_AFILIADO: TStringField
      FieldName = 'TP_AFILIADO'
      Origin = 'TP_AFILIADO'
      FixedChar = True
      Size = 1
    end
    object tblPacienteOCUPACION: TStringField
      DisplayLabel = 'Ocupaci'#243'n'
      FieldName = 'OCUPACION'
      Origin = 'OCUPACION'
      Size = 3
    end
    object tblPacienteGRUPO_AT_ESPECIAL: TStringField
      DisplayLabel = 'Grupo Etnico'
      FieldName = 'GRUPO_AT_ESPECIAL'
      Origin = 'GRUPO_AT_ESPECIAL'
      FixedChar = True
      Size = 1
    end
    object tblPacienteDIR_CASA_PACIEN: TStringField
      DisplayLabel = 'Direcci'#243'n'
      FieldName = 'DIR_CASA_PACIEN'
      Origin = 'DIR_CASA_PACIEN'
      Size = 30
    end
    object tblPacienteRESIDENCIA_HABITUAL: TStringField
      FieldName = 'RESIDENCIA_HABITUAL'
      Origin = 'RESIDENCIA_HABITUAL'
      Size = 5
    end
    object tblPacienteTEL_CASA_PACIEN: TStringField
      DisplayLabel = 'Tel'#233'fono'
      FieldName = 'TEL_CASA_PACIEN'
      Origin = 'TEL_CASA_PACIEN'
      Size = 11
    end
    object tblPacienteEMP_TRABAJO_PAC: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'EMP_TRABAJO_PAC'
      Origin = 'EMP_TRABAJO_PAC'
      Size = 30
    end
    object tblPacienteDIR_TRABAJO_PAC: TStringField
      DisplayLabel = 'Direcci'#243'n'
      FieldName = 'DIR_TRABAJO_PAC'
      Origin = 'DIR_TRABAJO_PAC'
      Size = 30
    end
    object tblPacienteTEL_TRABAJO_PAC: TStringField
      DisplayLabel = 'Tel'#233'fono'
      FieldName = 'TEL_TRABAJO_PAC'
      Origin = 'TEL_TRABAJO_PAC'
      Size = 11
    end
    object tblPacienteTP_CED_RESPONSA: TStringField
      DisplayLabel = 'TipoDocID Resp'
      FieldName = 'TP_CED_RESPONSA'
      Origin = 'TP_CED_RESPONSA'
      Size = 3
    end
    object tblPacienteCEDULA_RESPONSA: TStringField
      DisplayLabel = 'DocID Responsable'
      FieldName = 'CEDULA_RESPONSA'
      Origin = 'CEDULA_RESPONSA'
      Size = 15
    end
    object tblPacienteNOMBRE_RESPONDE: TStringField
      DisplayLabel = 'Responsable'
      FieldName = 'NOMBRE_RESPONDE'
      Origin = 'NOMBRE_RESPONDE'
      Size = 30
    end
    object tblPacientePARENTESCO_RESP: TStringField
      DisplayLabel = 'Parentesco'
      FieldName = 'PARENTESCO_RESP'
      Origin = 'PARENTESCO_RESP'
      Size = 10
    end
    object tblPacienteNOMBRE_CONYUGUE: TStringField
      DisplayLabel = 'C'#243'nyuge'
      FieldName = 'NOMBRE_CONYUGUE'
      Origin = 'NOMBRE_CONYUGUE'
      Size = 30
    end
    object tblPacienteDIR_CASA_RESP: TStringField
      DisplayLabel = 'Direcci'#243'n'
      FieldName = 'DIR_CASA_RESP'
      Origin = 'DIR_CASA_RESP'
      Size = 30
    end
    object tblPacienteTEL_CASA_RESP: TStringField
      DisplayLabel = 'Tel'#233'fono'
      FieldName = 'TEL_CASA_RESP'
      Origin = 'TEL_CASA_RESP'
      Size = 11
    end
    object tblPacienteEMP_TRABAJO_RES: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'EMP_TRABAJO_RES'
      Origin = 'EMP_TRABAJO_RES'
      Size = 30
    end
    object tblPacienteDIR_TRABAJO_RES: TStringField
      FieldName = 'DIR_TRABAJO_RES'
      Origin = 'DIR_TRABAJO_RES'
      Size = 30
    end
    object tblPacienteTEL_TRABAJO_RES: TStringField
      FieldName = 'TEL_TRABAJO_RES'
      Origin = 'TEL_TRABAJO_RES'
      Size = 11
    end
    object tblPacienteEMP_TRABAJO_CYG: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'EMP_TRABAJO_CYG'
      Origin = 'EMP_TRABAJO_CYG'
      Size = 30
    end
    object tblPacienteDIR_TRABAJO_CYG: TStringField
      DisplayLabel = 'Direcci'#243'n'
      FieldName = 'DIR_TRABAJO_CYG'
      Origin = 'DIR_TRABAJO_CYG'
      Size = 30
    end
    object tblPacienteTEL_TRABAJO_CYG: TStringField
      DisplayLabel = 'Tel'#233'fono'
      FieldName = 'TEL_TRABAJO_CYG'
      Origin = 'TEL_TRABAJO_CYG'
      Size = 11
    end
    object tblPacienteNOMBRE_MADRE: TStringField
      DisplayLabel = 'Madre'
      FieldName = 'NOMBRE_MADRE'
      Origin = 'NOMBRE_MADRE'
      Size = 15
    end
    object tblPacienteNOMBRE_PADRE: TStringField
      DisplayLabel = 'Padre'
      FieldName = 'NOMBRE_PADRE'
      Origin = 'NOMBRE_PADRE'
      Size = 15
    end
    object tblPacienteCOD_DEPARTAMENTO: TStringField
      DisplayLabel = 'CodET'
      FieldName = 'COD_DEPARTAMENTO'
      Origin = 'COD_DEPARTAMENTO'
      Size = 2
    end
    object tblPacienteCOD_MUNICIPIO: TStringField
      DisplayLabel = 'CodMun'
      FieldName = 'COD_MUNICIPIO'
      Origin = 'COD_MUNICIPIO'
      Size = 3
    end
    object tblPacienteFOTO_PACIENTE: TBlobField
      FieldName = 'FOTO_PACIENTE'
      Origin = 'FOTO_PACIENTE'
      Size = 2147483647
    end
    object tblPacienteASEGURADORA: TStringField
      DisplayLabel = 'Aseguradora'
      FieldName = 'ASEGURADORA'
      Origin = 'ASEGURADORA'
    end
    object tblPacienteFEC_INGRESO: TSQLTimeStampField
      DisplayLabel = 'Fecha Ingreso'
      FieldName = 'FEC_INGRESO'
      Origin = 'FEC_INGRESO'
    end
    object tblPacienteCOD_USUARIO: TStringField
      DisplayLabel = 'C'#243'digo Usuario'
      FieldName = 'COD_USUARIO'
      Origin = 'COD_USUARIO'
    end
    object tblPacienteNO_POLIZA: TStringField
      DisplayLabel = 'N'#176' Poliza'
      FieldName = 'NO_POLIZA'
      Origin = 'NO_POLIZA'
      Size = 100
    end
    object tblPacienteEstado: TStringField
      FieldName = 'Estado'
      Origin = 'Estado'
      FixedChar = True
      Size = 1
    end
  end
  object dsMun: TDataSource
    AutoEdit = False
    DataSet = qryMun
    Left = 296
  end
  object dsPaciente: TDataSource
    DataSet = tblPaciente
    Left = 136
  end
  object qryHuella: TADQuery
    Connection = dmGIPSci.connGIPS
    Left = 368
  end
  object qryMun: TADQuery
    Connection = dmComunes.connComunes
    Left = 320
    Top = 8
  end
  object imgListDlg32: TcxImageList
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 48
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0002000000170000001A00000019000000190505051906060619060606190606
          0619060606190606061906060619060606190606061906060619060606190606
          0619060606190606061906060619060606190606061906060619060606190404
          04190000001900000024000000260000001C0000000400000000000000000100
          0127141317EA222124ED232225EC2B292BECBFBFBEECD6D6D6ECD0D0CFECD0D0
          CFECD0D0CFECD1D0D0ECD1D1D0ECD1D1D0ECD1D1D0ECD1D1D0ECD1D1D0ECD1D1
          D0ECD1D1D0ECD1D1D0ECD1D1D0ECD1D1D0ECD1D0D0ECD0D0CFECD9D9D9EC9B9A
          99EC171719EC070709AD070709A417161AEF0404045200000000000000000101
          012D1C1B1EFF2C2B2FFF2C2B2FFF363537FFE2E2E1FFFEFEFDFFF7F7F6FFF7F7
          F6FFF7F7F6FFF8F7F7FFF8F8F7FFF8F8F7FFF8F8F7FFF8F8F7FFF8F8F7FFF8F8
          F7FFF8F8F7FFF8F8F7FFF8F8F7FFF8F8F7FFF8F7F7FFF7F7F6FFFFFFFFFFB7B5
          B5FF222124FF1616176417171752222124FF0505066100000000000000000101
          012C1B1A1EFE201F23FF1A191EFF2F2F30FFE0DFDEFFFAF9F9FFF3F3F2FFF3F3
          F3FFF4F4F3FFF4F4F3FFF4F4F3FFF4F4F3FFF5F4F4FFF5F4F4FFF5F4F4FFF5F4
          F4FFF5F4F4FFF5F4F4FFF4F4F3FFF4F4F3FFF4F3F3FFF4F4F3FFFFFFFFFFB4B3
          B3FF201F22FF252428FF28272CFF201F23FF0505065E00000000000000000101
          012C1B1A1EFE212024FF1B1A1FFF302E31FFDEDFDEFFFBFBFAFFF5F4F3FFF5F4
          F4FFF5F5F4FFF5F5F4FFF5F5F4FFF5F5F4FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5
          F5FFF6F5F5FFF6F5F5FFF5F5F4FFF5F5F4FFF5F5F4FFF5F5F4FFFFFFFEFFB4B2
          B2FF1E1D20FF1D1C20FF1E1D23FF1E1D21FF0605065E00000000000000000101
          012C1B1A1EFE212024FF1B1A1FFF312F32FFDCDBDAFFE4E4E3FFDCDBDAFFDCDC
          DBFFDDDCDBFFDDDCDBFFDDDCDCFFDDDCDCFFDDDCDCFFDDDDDCFFDDDDDCFFDDDD
          DCFFDDDDDCFFDDDCDCFFDDDCDCFFDDDCDCFFDDDCDBFFDBDBDAFFF0EFEEFFB4B3
          B3FF1E1D20FF1E1D21FF201F24FF1E1D21FF0605065E00000000000000000101
          012C1C1B1EFE232225FF201E22FF343235FFDDDCDBFFE8E9E8FFE0E0DFFFE1E1
          E0FFE2E0E0FFE2E1E0FFE2E1E1FFE2E1E1FFE1E1E1FFE2E2E1FFE2E2E1FFE2E2
          E1FFE2E2E1FFE1E1E1FFE2E1E1FFE2E1E1FFE2E1E0FFE0E0DFFFF3F3F2FFB3B3
          B2FF1E1D20FF1E1D21FF201F24FF1E1D21FF0605065E00000000000000000101
          012C1F1E21FE28272AFF242327FF383639FFDBDBD9FFE5E5E4FFDDDCDBFFDDDD
          DCFFDEDDDCFFDEDDDCFFDEDDDDFFDEDDDDFFDEDDDDFFDEDEDDFFDEDEDDFFDEDE
          DDFFDEDEDDFFDEDDDDFFDEDDDDFFDEDDDDFFDEDDDCFFDCDCDBFFF1F0EFFFB3B2
          B1FF1E1D20FF1E1D21FF201F24FF1E1D21FF0605065E00000000000000000101
          012C232225FE2C2B2EFF29282CFF3A393BFFDBDAD9FFE6E6E5FFDEDDDDFFDFDE
          DDFFDFDEDEFFDFDFDEFFDFDFDEFFDFDFDEFFDFDFDEFFDFDFDEFFDFDFDEFFDFDF
          DEFFDFDFDEFFDFDFDEFFDFDFDEFFDFDFDEFFDFDFDEFFDEDDDDFFF1F1F0FFB2B1
          B0FF1E1D20FF1E1D21FF201F24FF1E1D21FF0605065E00000000000000000101
          012C272628FE312F32FF2F2D30FF3E3C3EFFDADAD8FFE8E8E7FFE0DFDEFFE0E0
          DFFFE1E0DFFFE1E0DFFFE1E0E0FFE1E0E0FFE1E0E0FFE1E1E0FFE1E1E0FFE1E1
          E0FFE1E1E0FFE1E0E0FFE1E0E0FFE1E0E0FFE1E0DFFFE0DFDFFFF2F2F1FFB2B1
          B0FF201F23FF1F1D22FF201F23FF1E1D21FF0605065E00000000000000000101
          012C2B292CFE353436FF333234FF414041FFDAD9D8FFE5E5E4FFDCDCDBFFDDDD
          DCFFDDDDDCFFDDDDDCFFDDDDDCFFDEDDDCFFDEDDDCFFDEDDDCFFDEDDDCFFDEDD
          DCFFDEDDDCFFDEDDDCFFDEDDDCFFDDDDDCFFDDDDDCFFDCDCDBFFEFEFEEFFB2B1
          B0FF252326FF222125FF212024FF1E1D21FF0605065E00000000000000000101
          012C2E2D2FFE3A383BFF383639FF454344FFD9D9D8FFE5E5E4FFDCDCDBFFDDDD
          DCFFDDDDDCFFDEDDDCFFDEDDDCFFDEDDDCFFDEDDDCFFDEDDDCFFDEDDDCFFDEDD
          DCFFDEDDDCFFDEDDDCFFDEDDDCFFDEDDDCFFDDDDDCFFDCDCDBFFEFEFEEFFB2B0
          B0FF282629FF262528FF242327FF1E1D21FF0605065E00000000000000000101
          012C323032FE3E3D3FFF3D3B3DFF484647FFDDDDDBFFEEEDECFFE6E6E5FFE7E6
          E6FFE7E7E6FFE7E7E6FFE7E7E6FFE7E7E6FFE8E7E6FFE8E7E6FFE8E7E6FFE8E7
          E6FFE8E7E6FFE7E7E6FFE7E7E6FFE7E7E6FFE7E7E6FFE6E6E5FFF6F5F4FFB5B4
          B4FF2B2A2CFF2A282BFF28272AFF212024FF0606065E00000000000000000101
          012C353335FE434143FF413F41FF4A4948FFC3C1C0FFF7F7F5FFF0F0EEFFF0EF
          EEFFF0EFEEFFF0EFEEFFEFEFEEFFEFEFEEFFEFEFEEFFEFEFEEFFEFEFEEFFEFEF
          EEFFEFEFEEFFF0EFEEFFF0EFEEFFF0EFEEFFF0EFEEFFF1F0EFFFF8F8F7FF9E9D
          9DFF2F2D30FF2D2C2EFF2C2A2DFF242326FF0606075E00000000000000000101
          012C393738FE474546FF474546FF504E4EFF646262FF868484FF8A8887FF8B89
          89FF8D8B8AFF8F8D8CFF908E8DFF928F8FFF939090FF949291FF949291FF9391
          91FF928F8FFF918E8EFF8F8D8DFF8D8C8CFF8C8B8BFF8C8B8AFF7C7A7AFF5351
          52FF373538FF312F32FF2E2D30FF272629FF0707075E00000000000000000101
          022C3C3A3CFE4B494AFF4C4A4BFF4F4C4DFF514E4EFF4E4C4CFF504D4DFF5250
          50FF545151FF555252FF565353FF565353FF565353FF555352FF545151FF524F
          50FF4F4E4DFF4D4B4BFF4A4848FF474546FF444243FF403D3FFF3C3A3CFF3C3A
          3CFF383739FF353336FF323033FF2A282CFF0707085E00000000000000000202
          022C3F3D3EFE4F4D4DFF504E4EFF535151FF555353FF575555FF595656FF5B58
          57FF5C5959FF5C5A59FF5D5A59FF5C5A59FF5C5959FF5B5857FF595756FF5854
          55FF555252FF535050FF504D4EFF4D4A4BFF4A4748FF464445FF434142FF3F3D
          3FFF3C3A3CFF383639FF353336FF2D2C2EFF0808085E00000000000000000202
          022C424041FE535051FF545252FF575555FF5A5757FF5C5959FF5E5B5BFF605D
          5CFF615E5DFF625F5EFF625F5EFF625F5EFF615E5EFF605D5DFF5E5C5AFF5B59
          59FF595657FF575454FF545151FF514E4FFF4D4B4CFF4A4848FF464445FF4240
          42FF3F3D3FFF3B393BFF373639FF302E31FF0808085E00000000000000000202
          022C464344FE575454FF585555FF5A5857FF5D5B5AFF605D5DFF646160FF605D
          5DFF5B5857FF5C5958FF5C5958FF5C5A59FF5D5B5AFF5E5B5AFF5D5A59FF5C59
          58FF595756FF565453FF535050FF4F4D4DFF4C4A4AFF484546FF434142FF3F3E
          3FFF424041FF3E3C3EFF3A393BFF313032FF0908095E00000000000000000202
          022C484646FE595757FF5D5B5AFF656362FF696665FF6C6968FF666462FF8C8A
          89FFB9B6B5FFAFADACFFAFADACFFB0AEADFFB1AFAEFFB2B0AFFFB2B0AFFFB2B0
          AFFFB1AFAEFFB5B3B2FFB8B6B5FFB9B7B6FFBAB8B6FFB4B2B2FFB8B7B6FF908F
          8FFF403E3FFF403E40FF3D3B3DFF343234FF0909095E00000000000000000202
          022C4B4849FE5D5A5AFF605E5DFF646261FF625F5EFF605C5CFF504D4CFF9694
          94FFEAE9E8FFD5D3D2FFD3D2D1FFD3D1D0FFD2D0CFFFD1CFCEFFD1CFCEFFD1CF
          CEFFD3D1D0FFC1BFBEFFB8B6B5FFBAB8B7FFBEBCBBFFD7D5D4FFE6E4E3FFB3B1
          B1FF424040FF424042FF3F3D3FFF363436FF0A090A5E00000000000000000202
          022C4D4B4BFE605D5DFF636060FF666362FF605D5CFF5C5A59FF4C4A49FF9695
          94FFF7F7F6FFDFDEDDFFD8D6D5FFD3D1D0FFD0CECDFFCECCCBFFCDCBCAFFCCCA
          C9FFD7D5D4FF888584FF555252FF585655FF666463FFCCCAC9FFD6D4D2FFAAA9
          A8FF444243FF444244FF413F41FF373637FF0A0A0A5E00000000000000000202
          022C4F4D4CFE63605FFF646160FF63605FFF5B5958FF575655FF464444FF9392
          92FFFFFFFFFFF6F6F6FFF3F2F2FFEAE9E8FFE0DFDEFFD8D6D6FFD2D1D0FFD0CE
          CDFFDAD8D7FF888685FF585554FF5D5A5AFF6B6868FFCDCBCAFFD4D1D0FFAAA8
          A8FF464445FF464445FF424042FF393739FF0A0A0A5E00000000000000000202
          022C514F4EFE656261FF63605FFF605D5CFF585655FF545252FF434141FF8C8B
          8BFFEFEDEDFFE3E3E2FFEDECECFFF4F3F4FFF6F6F6FFF2F2F2FFEAEAE9FFE0DF
          DEFFE6E4E3FF8A8888FF555251FF5F5C5CFF6F6C6CFFD2D0CFFFD3D1D0FFAAA8
          A8FF474546FF484647FF444243FF3A383AFF0A0A0A5E00000000000000000202
          022C53504FFE666362FF615F5EFF5D5A5AFF565353FF514F4EFF403E3EFF8786
          86FFE3E1E0FFD3D1D1FFD8D6D5FFDDDBDBFFE4E3E2FFECECECFFF4F3F3FFF6F6
          F6FFFDFDFDFF969494FF504E4CFF5E5B5BFF777474FFDEDDDCFFD4D2D0FFAAA9
          A8FF484647FF494748FF454344FF3B393BFF0B0A0B5E00000000000000000202
          022B53504FFD666362FF605E5DFF5B5958FF535151FF4F4C4CFF3D3B3CFF8584
          84FFDFDDDDFFCECBCAFFCFCDCDFFD1D0CFFFD4D2D1FFD7D6D5FFDCDADAFFE3E2
          E2FFFAF9F9FF959494FF4E4B4BFF5E5B5AFF767473FFE7E5E6FFE0DFDEFFADAB
          ABFF494647FF4A4748FF454345FF3C3A3BFF0A0A0A5E00000000000000000202
          022C545251FE656261FF5F5D5CFF5A5857FF525050FF4D4B4BFF3A3939FF8482
          82FFDEDCDBFFCCC9C8FFCDCBCAFFCDCBCAFFCECCCBFFD0CECDFFD1CFCEFFD4D2
          D1FFE6E4E3FF848282FF484645FF585554FF696666FFECECEBFFFDFDFDFFB6B5
          B5FF474546FF4A4849FF464445FF3D3B3DFF0C0C0C6300000000000000000707
          072F585555FF636060FF5E5C5BFF5B5958FF525050FF4D4C4BFF3A3838FF8382
          82FFDCDAD9FFC9C7C6FFCAC8C7FFCBC9C8FFCBC9C8FFCBC9C8FFCCCAC9FFCDCB
          CAFFD9D7D6FF959393FF62605FFF6D6A6AFF7D7B7AFFDFDDDDFFF5F4F4FFB6B5
          B4FF474546FF4A4849FF474546FF3A383AFF0808083A00000000000000000909
          09335C5A59FF696665FF656362FF555352FF4D4B4BFF494848FF383637FF8483
          83FFE6E4E3FFD3D1D0FFD3D2D1FFD3D2D1FFD3D2D1FFD3D2D1FFD4D2D1FFD4D2
          D1FFD4D2D1FFDDDADAFFDEDDDCFFDFDEDDFFE1DFDFFFDCDBD9FFE4E3E2FFB8B7
          B7FB484647FF494748FF403E40FF101011650000000000000000000000000202
          020E1D1C1D812322228F2120208A101010490F0E0F3F0F0F103F0C0C0C3F3030
          305768676782605F5F7C5F5F5F7C5F5F5F7C5F5F5F7C5F5F5F7C5F5F5F7C5F5F
          5F7C5F5F5F7C5F5E5E7C5F5E5E7C5F5F5E7C5F5F5E7C5F5F5F7C6464637F3939
          394D1111124D1C1B1C610B0B0B3C000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0002000000170000001A00000019000000190505051906060619060606190606
          06190606061906060619050538523C3DAFC64C4DB3C8494AB1C6494AB2C64C4D
          B5C93838ABC30505304906060619060606190606061906060619060606190404
          04190000001900000024000000260000001C0000000400000000000000000100
          0127141317EA222124ED232225EC2B292BECBFBFBEECD6D6D6ECD0D0CFECD0D0
          CFECD0D0CFEC9B9ACEF17273E8FE6364E8FF3A3BE3FF3E3FE4FF3E3FE4FF3A3A
          E3FF6767E9FF6D6EE8FEA3A3CFF0D1D1D0ECD1D0D0ECD0D0CFECD9D9D9EC9B9A
          99EC171719EC070709AD070709A417161AEF0404045200000000000000000101
          012D1C1B1EFF2C2B2FFF2C2B2FFF363537FFE2E2E1FFFEFEFDFFF7F7F6FFF7F7
          F6FFB6B6E8FF7777E7FF5758E2FF0000D3FF0000D5FF0000D5FF0000D5FF0000
          D5FF0000D3FF5E5FE3FF7272E7FFC2C2ECFFF8F7F7FFF7F7F6FFFFFFFFFFB7B5
          B5FF222124FF1616176417171752222124FF0505066100000000000000000101
          012C1B1A1EFE201F23FF1A191EFF2F2F30FFE0DFDEFFFAF9F9FFF3F3F2FFB6B6
          E6FF7576E4FF5757DFFF0000CDFF0002D1FF0003D1FF0003D1FF0003D1FF0003
          D1FF0002D1FF0000CDFF5E5FE0FF6F70E3FFF4F3F3FFF4F4F3FFFFFFFFFFB4B3
          B3FF201F22FF252428FF28272CFF201F23FF0505065E00000000000000000101
          012C1B1A1EFE212024FF1B1A1FFF302E31FFDEDFDEFFFBFBFAFFF5F4F3FF7677
          DEFF5F60DDFF0000C7FF0002CBFF0004CBFF0003CBFF0003CBFF0003CBFF0003
          CBFF0004CBFF0002CBFF0000C7FF6566DEFFF5F5F4FFF5F5F4FFFFFFFEFFB4B2
          B2FF1E1D20FF1D1C20FF1E1D23FF1E1D21FF0605065E00000000000000000101
          012C1B1A1EFE212024FF1B1A1FFF312F32FFDCDBDAFFE4E4E3FFDCDBDAFF8080
          DAFF292BCEFF0000C4FF0004C6FF0004C6FF0004C6FF0004C6FF0004C6FF0004
          C6FF0004C6FF0004C6FF0000C4FF3536D1FFDDDCDBFFDBDBDAFFF0EFEEFFB4B3
          B3FF1E1D20FF1E1D21FF201F24FF1E1D21FF0605065E00000000000000000101
          012C1C1B1EFE232225FF201E22FF343235FFDDDCDBFFE8E9E8FFE0E0DFFF7F80
          D8FF3233CCFF0000BDFF0002C0FF0000BFFF0000BFFF0000BFFF0001C0FF0003
          C0FF0004C1FF0004C1FF0000BEFF3B3CCEFFE2E1E0FFE0E0DFFFF3F3F2FFB3B3
          B2FF1E1D20FF1E1D21FF201F24FF1E1D21FF0605065E00000000000000000101
          012C1F1E21FE28272AFF242327FF383639FFDBDBD9FFE5E5E4FFDDDCDBFF8989
          D9FF4C50CFFF1F22C2FF2629C5FF2226C4FF1C1FC2FF1316BFFF090CBDFF0104
          BAFF0000B9FF0001B9FF0000B7FF3B3CC9FFDEDDDCFFDCDCDBFFF1F0EFFFB3B2
          B1FF1E1D20FF1E1D21FF201F24FF1E1D21FF0605065E00000000000000000101
          012C232225FE2C2B2EFF29282CFF3A393BFFDBDAD9FFE6E6E5FFDEDDDDFF9092
          D9FF575BCFFF3439C4FF3F43C7FF4044C8FF4044C8FF3E42C8FF393DC5FF2F33
          C2FF2024BEFF0F12B9FF0000B1FF3334C2FFDFDFDEFFDEDDDDFFF1F1F0FFB2B1
          B0FF1E1D20FF1E1D21FF201F24FF1E1D21FF0605065E00000000000000000101
          012C272628FE312F32FF2F2D30FF3E3C3EFFDADAD8FFE8E8E7FFE0DFDEFF9093
          D8FF8385D8FF3A3DC1FF4E51C8FF4D50C8FF4D50C8FF4B4FC7FF484CC6FF4448
          C5FF4044C4FF3A3EC2FF1519B5FF6668CEFFE1E0DFFFE0DFDFFFF2F2F1FFB2B1
          B0FF201F23FF1F1D22FF201F23FF1E1D21FF0605065E00000000000000000101
          012C2B292CFE353436FF333234FF414041FFDAD9D8FFE5E5E4FFDCDCDBFFADAE
          D2FFA2A4DFFF8588D7FF4F53C4FF5E62CAFF5D61C9FF5B5FC8FF575BC7FF5156
          C5FF4C50C3FF3338BBFF7579D1FF8E91DAFFDDDDDCFFDCDCDBFFEFEFEEFFB2B1
          B0FF252326FF222125FF212024FF1E1D21FF0605065E00000000000000000101
          012C2E2D2FFE3A383BFF383639FF454344FFD9D9D8FFE5E5E4FFDCDCDBFFDDDD
          DCFFACADD2FFAFB1E2FF9295D9FF6064C7FF696CCAFF6569C8FF6165C7FF5B5F
          C5FF4A4FBFFF8486D3FF9C9EDCFFAAAAD2FFDDDDDCFFDCDCDBFFEFEFEEFFB2B0
          B0FF282629FF262528FF242327FF1E1D21FF0605065E00000000000000000101
          012C323032FE3E3D3FFF3D3B3DFF484647FFDDDDDBFFEEEDECFFE6E6E5FFE7E6
          E6FFE7E7E6FFB9BADAFFB6B8E3FFA6A8DEFF9092D5FF9294D6FF8E90D4FF8487
          D1FF9A9DD9FFA5A8DDFFB5B6DAFFE7E7E6FFE7E7E6FFE6E6E5FFF6F5F4FFB5B4
          B4FF2B2A2CFF2A282BFF28272AFF212024FF0606065E00000000000000000101
          012C353335FE434143FF413F41FF4A4948FFC3C1C0FFF7F7F5FFF0F0EEFFF0EF
          EEFFF0EFEEFFF0EFEEFFC8C9E2FFBDBFE3FFC3C5E5FFC2C3E5FFC0C1E4FFBEC0
          E4FFB2B4DFFFC6C7E2FFF0EFEEFFF0EFEEFFF0EFEEFFF1F0EFFFF8F8F7FF9E9D
          9DFF2F2D30FF2D2C2EFF2C2A2DFF242326FF0606075E00000000000000000101
          012C393738FE474546FF474546FF504E4EFF646262FF868484FF8A8887FF8B89
          89FF8D8B8AFF8F8D8CFF908E8DFF928F8FFF928F8FFF949291FF949291FF9290
          90FF928F8FFF918E8EFF8F8D8DFF8D8C8CFF8C8B8BFF8C8B8AFF7C7A7AFF5351
          52FF373538FF312F32FF2E2D30FF272629FF0707075E00000000000000000101
          022C3C3A3CFE4B494AFF4C4A4BFF4F4C4DFF514E4EFF4E4C4CFF504D4DFF5250
          50FF545151FF555252FF565353FF565353FF565353FF555352FF545151FF524F
          50FF4F4E4DFF4D4B4BFF4A4848FF474546FF444243FF403D3FFF3C3A3CFF3C3A
          3CFF383739FF353336FF323033FF2A282CFF0707085E00000000000000000202
          022C3F3D3EFE4F4D4DFF504E4EFF535151FF555353FF575555FF595656FF5B58
          57FF5C5959FF5C5A59FF5D5A59FF5C5A59FF5C5959FF5B5857FF595756FF5854
          55FF555252FF535050FF504D4EFF4D4A4BFF4A4748FF464445FF434142FF3F3D
          3FFF3C3A3CFF383639FF353336FF2D2C2EFF0808085E00000000000000000202
          022C424041FE535051FF545252FF575555FF5A5757FF5C5959FF5E5B5BFF605D
          5CFF615E5DFF625F5EFF625F5EFF625F5EFF615E5EFF605D5DFF5E5C5AFF5B59
          59FF595657FF575454FF545151FF514E4FFF4D4B4CFF4A4848FF464445FF4240
          42FF3F3D3FFF3B393BFF373639FF302E31FF0808085E00000000000000000202
          022C464344FE575454FF585555FF5A5857FF5D5B5AFF605D5DFF646160FF605D
          5DFF5B5857FF5C5958FF5C5958FF5C5A59FF5D5B5AFF5E5B5AFF5D5A59FF5C59
          58FF595756FF565453FF535050FF4F4D4DFF4C4A4AFF484546FF434142FF3F3E
          3FFF424041FF3E3C3EFF3A393BFF313032FF0908095E00000000000000000202
          022C484646FE595757FF5D5B5AFF656362FF696665FF6C6968FF666462FF8C8A
          89FFB9B6B5FFAFADACFFAFADACFFB0AEADFFB1AFAEFFB2B0AFFFB2B0AFFFB2B0
          AFFFB1AFAEFFB5B3B2FFB8B6B5FFB9B7B6FFBAB8B6FFB4B2B2FFB8B7B6FF908F
          8FFF403E3FFF403E40FF3D3B3DFF343234FF0909095E00000000000000000202
          022C4B4849FE5D5A5AFF605E5DFF646261FF625F5EFF605C5CFF504D4CFF9694
          94FFEAE9E8FFD5D3D2FFD3D2D1FFD3D1D0FFD2D0CFFFD1CFCEFFD1CFCEFFD1CF
          CEFFD3D1D0FFC1BFBEFFB8B6B5FFBAB8B7FFBEBCBBFFD7D5D4FFE6E4E3FFB3B1
          B1FF424040FF424042FF3F3D3FFF363436FF0A090A5E00000000000000000202
          022C4D4B4BFE605D5DFF636060FF666362FF605D5CFF5C5A59FF4C4A49FF9695
          94FFF7F7F6FFDFDEDDFFD8D6D5FFD3D1D0FFD0CECDFFCECCCBFFCDCBCAFFCCCA
          C9FFD7D5D4FF888584FF555252FF585655FF666463FFCCCAC9FFD6D4D2FFAAA9
          A8FF444243FF444244FF413F41FF373637FF0A0A0A5E00000000000000000202
          022C4F4D4CFE63605FFF646160FF63605FFF5B5958FF575655FF464444FF9392
          92FFFFFFFFFFF6F6F6FFF3F2F2FFEAE9E8FFE0DFDEFFD8D6D6FFD2D1D0FFD0CE
          CDFFDAD8D7FF888685FF585554FF5D5A5AFF6B6868FFCDCBCAFFD4D1D0FFAAA8
          A8FF464445FF464445FF424042FF393739FF0A0A0A5E00000000000000000202
          022C514F4EFE656261FF63605FFF605D5CFF585655FF545252FF434141FF8C8B
          8BFFEFEDEDFFE3E3E2FFEDECECFFF4F3F4FFF6F6F6FFF2F2F2FFEAEAE9FFE0DF
          DEFFE6E4E3FF8A8888FF555251FF5F5C5CFF6F6C6CFFD2D0CFFFD3D1D0FFAAA8
          A8FF474546FF484647FF444243FF3A383AFF0A0A0A5E00000000000000000202
          022C53504FFE666362FF615F5EFF5D5A5AFF565353FF514F4EFF403E3EFF8786
          86FFE3E1E0FFD3D1D1FFD8D6D5FFDDDBDBFFE4E3E2FFECECECFFF4F3F3FFF6F6
          F6FFFDFDFDFF969494FF504E4CFF5E5B5BFF777474FFDEDDDCFFD4D2D0FFAAA9
          A8FF484647FF494748FF454344FF3B393BFF0B0A0B5E00000000000000000202
          022B53504FFD666362FF605E5DFF5B5958FF535151FF4F4C4CFF3D3B3CFF8584
          84FFDFDDDDFFCECBCAFFCFCDCDFFD1D0CFFFD4D2D1FFD7D6D5FFDCDADAFFE3E2
          E2FFFAF9F9FF959494FF4E4B4BFF5E5B5AFF767473FFE7E5E6FFE0DFDEFFADAB
          ABFF494647FF4A4748FF454345FF3C3A3BFF0A0A0A5E00000000000000000202
          022C545251FE656261FF5F5D5CFF5A5857FF525050FF4D4B4BFF3A3939FF8482
          82FFDEDCDBFFCCC9C8FFCDCBCAFFCDCBCAFFCECCCBFFD0CECDFFD1CFCEFFD4D2
          D1FFE6E4E3FF848282FF484645FF585554FF696666FFECECEBFFFDFDFDFFB6B5
          B5FF474546FF4A4849FF464445FF3D3B3DFF0C0C0C6300000000000000000707
          072F585555FF636060FF5E5C5BFF5B5958FF525050FF4D4C4BFF3A3838FF8382
          82FFDCDAD9FFC9C7C6FFCAC8C7FFCBC9C8FFCBC9C8FFCBC9C8FFCCCAC9FFCDCB
          CAFFD9D7D6FF959393FF62605FFF6D6A6AFF7D7B7AFFDFDDDDFFF5F4F4FFB6B5
          B4FF474546FF4A4849FF474546FF3A383AFF0808083A00000000000000000909
          09335C5A59FF696665FF656362FF555352FF4D4B4BFF494848FF383637FF8483
          83FFE6E4E3FFD3D1D0FFD3D2D1FFD3D2D1FFD3D2D1FFD3D2D1FFD4D2D1FFD4D2
          D1FFD4D2D1FFDDDADAFFDEDDDCFFDFDEDDFFE1DFDFFFDCDBD9FFE4E3E2FFB8B7
          B7FB484647FF494748FF403E40FF101011650000000000000000000000000202
          020E1D1C1D812322228F2120208A101010490F0E0F3F0F0F103F0C0C0C3F3030
          305768676782605F5F7C5F5F5F7C5F5F5F7C5F5F5F7C5F5F5F7C5F5F5F7C5F5F
          5F7C5F5F5F7C5F5E5E7C5F5E5E7C5F5F5E7C5F5F5E7C5F5F5F7C6464637F3939
          394D1111124D1C1B1C610B0B0B3C000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0002000000170000001A00000019000000190505051906060619060606190606
          0619060606190606061906060619060606190606061906060619060606190606
          0619060606190606061906060619060606190606061906060619060606190404
          04190000001900000024000000260000001C0000000400000000000000000100
          0127131217EA212123ED222124EC2B292BECBFBFBEECD6D6D6ECCFCFCEECCFCF
          CEECCFCFCEECD0CFCFECD0D0CFECD0D0CFECD0D0CFECD0D0CFECD0D0CFECD0D0
          CFECD0D0CFECD0D0CFECD0D0CFECD0D0CFECD0CFCFECCFCFCEECD9D9D9EC9B9A
          99EC161619EC070709AD060608A4161619EF0404045200000000000000000101
          012D1C1B1EFF2C2B2FFF2C2B2FFF363537FFE2E2E1FFFEFEFDFFF7F7F6FFF3F5
          F2FFE9F1E8FFDFECDEFFD2E7D1FFC4E1C4FFB9DBB8FFB1D8B0FFB5DAB4FFC3E0
          C2FFDAE9D9FFDAEAD9FFE6F0E6FFF1F5F0FFF8F7F7FFF7F7F6FFFFFFFFFFB7B5
          B5FF222124FF1616176417171752222124FF0505066100000000000000000101
          012C1B1A1EFE201F23FF1A191EFF2F2F30FFE0DFDEFFFAF9F9FFF3F3F2FFF1F2
          F1FFEBF0EAFFE3ECE2FFDAE9D9FFD1E4D0FFC9E1C8FFC4DEC3FFC8E0C7FFC1DD
          C0FFA8CFA4FFECEDEBFFE9EFE8FFEFF2EEFFF4F3F3FFF4F4F3FFFFFFFFFFB4B3
          B3FF201F22FF252428FF28272CFF201F23FF0505065E00000000000000000101
          012C1B1A1EFE212024FF1B1A1FFF302E31FFDEDFDEFFFBFBFAFFF5F4F3FFF5F4
          F4FFF5F5F4FFF5F5F4FFF5F5F4FFF5F5F4FFF6F5F5FFF6F5F5FFF6F5F5FFE2E9
          DEFF74D18EFFC3DFC2FFF5F5F4FFF5F5F4FFF5F5F4FFF5F5F4FFFFFFFEFFB4B2
          B2FF1E1D20FF1D1C20FF1E1D23FF1E1D21FF0605065E00000000000000000101
          012C1B1A1EFE212024FF1B1A1FFF312F32FFDCDBDAFFE4E4E3FFDCDBDAFFDCDC
          DBFFDDDCDBFFDDDCDBFFDDDCDCFFDDDCDCFFDDDCDCFFDDDDDCFFDDDDDCFFCAD1
          C6FF7FDFA3FF7FDEA0FFADC9A8FFDDDCDCFFDDDCDBFFDBDBDAFFF0EFEEFFB4B3
          B3FF1E1D20FF1E1D21FF201F24FF1E1D21FF0605065E00000000000000000101
          012C1C1B1EFE232225FF201E22FF343235FFDDDCDBFFE8E9E8FFE0E0DFFFDDDD
          DCFFDCDADAFFDCDBDAFFDCDBDBFFDCDBDBFFDBDBDBFFDCDCDBFFDDDDDCFFC5CE
          C1FF72D189FF85E9ADFF78D48DFFB0CBA9FFE2E1E0FFE0E0DFFFF3F3F2FFB3B3
          B2FF1E1D20FF1E1D21FF201F24FF1E1D21FF0605065E00000000000000000101
          012C1F1E21FE28272AFF242327FF383639FFDBDBD9FFE5E5E4FFBACBB3FF7CC6
          81FF81CE8CFF7FCC8AFF7ECC89FF7DCC88FF7BCB87FF7ACB86FF7CCC87FF7ACB
          86FF75D68CFF77D98FFF7ADC95FF71CC7DFFAEC8A6FFDCDCDBFFF1F0EFFFB3B2
          B1FF1E1D20FF1E1D21FF201F24FF1E1D21FF0605065E00000000000000000101
          012C232225FE2C2B2EFF29282CFF3A393BFFDBDAD9FFE6E6E5FFB0C4A5FF77CA
          7DFF84DA94FF84D892FF84D892FF83D891FF81D78FFF7CD68BFF76D486FF71D2
          80FF6ECF7CFF6FCF7CFF6FCF7DFF72D483FF67C268FFA4BF97FFF1F1F0FFB2B1
          B0FF1E1D20FF1E1D21FF201F24FF1E1D21FF0605065E00000000000000000101
          012C272628FE312F32FF2F2D30FF3E3C3EFFDADAD8FFE8E8E7FFAFC4A3FF77C5
          73FF87D48BFF87D289FF88D38AFF88D38AFF87D28AFF86D289FF84D186FF7ED0
          82FF72CB76FF66C668FF66C769FF68C66AFF8EC386FFD3D8CFFFF2F2F1FFB2B1
          B0FF201F23FF1F1D22FF201F23FF1E1D21FF0605065E00000000000000000101
          012C2B292CFE353436FF333234FF414041FFDAD9D8FFE5E5E4FFCCD3C7FFA2C5
          99FF9FC697FFA1C698FFA1C699FFA1C699FFA1C699FFA1C699FF9FC597FF9BC3
          93FF7EC776FF73C76EFF63BE5BFF83BB76FFDDDDDCFFDCDCDBFFEFEFEEFFB2B1
          B0FF252326FF222125FF212024FF1E1D21FF0605065E00000000000000000101
          012C2E2D2FFE3A383BFF383639FF454344FFD9D9D8FFE5E5E4FFDCDCDBFFDDDD
          DCFFDDDDDCFFDEDDDCFFDEDDDCFFDEDDDCFFDEDDDCFFDEDDDCFFDEDDDCFFD7D6
          D5FF70B75CFF7EC671FF8BBB7AFFDEDDDCFFDDDDDCFFDCDCDBFFEFEFEEFFB2B0
          B0FF282629FF262528FF242327FF1E1D21FF0605065E00000000000000000101
          012C323032FE3E3D3FFF3D3B3DFF484647FFDDDDDBFFEEEDECFFE6E6E5FFE7E6
          E6FFE7E7E6FFE7E7E6FFE7E7E6FFE7E7E6FFE8E7E6FFE8E7E6FFE8E7E6FFD1D9
          CEFF73B75BFF95C283FFE7E7E6FFE7E7E6FFE7E7E6FFE6E6E5FFF6F5F4FFB5B4
          B4FF2B2A2CFF2A282BFF28272AFF212024FF0606065E00000000000000000101
          012C353335FE434143FF413F41FF4A4948FFC3C1C0FFF7F7F5FFF0F0EEFFF0EF
          EEFFF0EFEEFFF0EFEEFFEFEFEEFFEFEFEEFFEFEFEEFFEFEFEEFFEFEFEEFFDAE3
          D5FF95BD80FFF0EFEEFFF0EFEEFFF0EFEEFFF0EFEEFFF1F0EFFFF8F8F7FF9E9D
          9DFF2F2D30FF2D2C2EFF2C2A2DFF242326FF0606075E00000000000000000101
          012C393738FE474546FF474546FF504E4EFF646262FF868484FF8A8887FF8B89
          89FF8D8B8AFF8F8D8CFF908E8DFF928F8FFF939090FF949291FF949291FF9391
          91FF928F8FFF918E8EFF8F8D8DFF8D8C8CFF8C8B8BFF8C8B8AFF7C7A7AFF5351
          52FF373538FF312F32FF2E2D30FF272629FF0707075E00000000000000000101
          022C3C3A3CFE4B494AFF4C4A4BFF4F4C4DFF514E4EFF4E4C4CFF504D4DFF5250
          50FF545151FF555252FF565353FF565353FF565353FF555352FF545151FF524F
          50FF4F4E4DFF4D4B4BFF4A4848FF474546FF444243FF403D3FFF3C3A3CFF3C3A
          3CFF383739FF353336FF323033FF2A282CFF0707085E00000000000000000202
          022C3F3D3EFE4F4D4DFF504E4EFF535151FF555353FF575555FF595656FF5B58
          57FF5C5959FF5C5A59FF5D5A59FF5C5A59FF5C5959FF5B5857FF595756FF5854
          55FF555252FF535050FF504D4EFF4D4A4BFF4A4748FF464445FF434142FF3F3D
          3FFF3C3A3CFF383639FF353336FF2D2C2EFF0808085E00000000000000000202
          022C424041FE535051FF545252FF575555FF5A5757FF5C5959FF5E5B5BFF605D
          5CFF615E5DFF625F5EFF625F5EFF625F5EFF615E5EFF605D5DFF5E5C5AFF5B59
          59FF595657FF575454FF545151FF514E4FFF4D4B4CFF4A4848FF464445FF4240
          42FF3F3D3FFF3B393BFF373639FF302E31FF0808085E00000000000000000202
          022C464344FE575454FF585555FF5A5857FF5D5B5AFF605D5DFF646160FF605D
          5DFF5B5857FF5C5958FF5C5958FF5C5A59FF5D5B5AFF5E5B5AFF5D5A59FF5C59
          58FF595756FF565453FF535050FF4F4D4DFF4C4A4AFF484546FF434142FF3F3E
          3FFF424041FF3E3C3EFF3A393BFF313032FF0908095E00000000000000000202
          022C484646FE595757FF5D5B5AFF656362FF696665FF6C6968FF666462FF8C8A
          89FFB9B6B5FFAFADACFFAFADACFFB0AEADFFB1AFAEFFB2B0AFFFB2B0AFFFB2B0
          AFFFB1AFAEFFB5B3B2FFB8B6B5FFB9B7B6FFBAB8B6FFB4B2B2FFB8B7B6FF908F
          8FFF403E3FFF403E40FF3D3B3DFF343234FF0909095E00000000000000000202
          022C4B4849FE5D5A5AFF605E5DFF646261FF625F5EFF605C5CFF504D4CFF9694
          94FFEAE9E8FFD5D3D2FFD3D2D1FFD3D1D0FFD2D0CFFFD1CFCEFFD1CFCEFFD1CF
          CEFFD3D1D0FFC1BFBEFFB8B6B5FFBAB8B7FFBEBCBBFFD7D5D4FFE6E4E3FFB3B1
          B1FF424040FF424042FF3F3D3FFF363436FF0A090A5E00000000000000000202
          022C4D4B4BFE605D5DFF636060FF666362FF605D5CFF5C5A59FF4C4A49FF9695
          94FFF7F7F6FFDFDEDDFFD8D6D5FFD3D1D0FFD0CECDFFCECCCBFFCDCBCAFFCCCA
          C9FFD7D5D4FF888584FF555252FF585655FF666463FFCCCAC9FFD6D4D2FFAAA9
          A8FF444243FF444244FF413F41FF373637FF0A0A0A5E00000000000000000202
          022C4F4D4CFE63605FFF646160FF63605FFF5B5958FF575655FF464444FF9392
          92FFFFFFFFFFF6F6F6FFF3F2F2FFEAE9E8FFE0DFDEFFD8D6D6FFD2D1D0FFD0CE
          CDFFDAD8D7FF888685FF585554FF5D5A5AFF6B6868FFCDCBCAFFD4D1D0FFAAA8
          A8FF464445FF464445FF424042FF393739FF0A0A0A5E00000000000000000202
          022C514F4EFE656261FF63605FFF605D5CFF585655FF545252FF434141FF8C8B
          8BFFEFEDEDFFE3E3E2FFEDECECFFF4F3F4FFF6F6F6FFF2F2F2FFEAEAE9FFE0DF
          DEFFE6E4E3FF8A8888FF555251FF5F5C5CFF6F6C6CFFD2D0CFFFD3D1D0FFAAA8
          A8FF474546FF484647FF444243FF3A383AFF0A0A0A5E00000000000000000202
          022C53504FFE666362FF615F5EFF5D5A5AFF565353FF514F4EFF403E3EFF8786
          86FFE3E1E0FFD3D1D1FFD8D6D5FFDDDBDBFFE4E3E2FFECECECFFF4F3F3FFF6F6
          F6FFFDFDFDFF969494FF504E4CFF5E5B5BFF777474FFDEDDDCFFD4D2D0FFAAA9
          A8FF484647FF494748FF454344FF3B393BFF0B0A0B5E00000000000000000202
          022B524F4EFD666362FF605E5DFF5B5958FF535151FF4F4C4CFF3D3B3CFF8584
          84FFDFDDDDFFCECBCAFFCFCDCDFFD1D0CFFFD4D2D1FFD7D6D5FFDCDADAFFE3E2
          E2FFFAF9F9FF959494FF4E4B4BFF5E5B5AFF767473FFE7E5E6FFE0DFDEFFADAB
          ABFF494647FF4A4748FF454345FF3C3A3BFF0A0A0A5E00000000000000000202
          022C545251FE656261FF5F5D5CFF5A5857FF525050FF4D4B4BFF3A3939FF8482
          82FFDEDCDBFFCCC9C8FFCDCBCAFFCDCBCAFFCECCCBFFD0CECDFFD1CFCEFFD4D2
          D1FFE6E4E3FF848282FF484645FF585554FF696666FFECECEBFFFDFDFDFFB6B5
          B5FF474546FF4A4849FF464445FF3D3B3DFF0C0C0C6300000000000000000707
          072F585555FF636060FF5E5C5BFF5B5958FF525050FF4D4C4BFF3A3838FF8382
          82FFDCDAD9FFC9C7C6FFCAC8C7FFCBC9C8FFCBC9C8FFCBC9C8FFCCCAC9FFCDCB
          CAFFD9D7D6FF959393FF62605FFF6D6A6AFF7D7B7AFFDFDDDDFFF5F4F4FFB6B5
          B4FF474546FF4A4849FF474546FF3A383AFF0808083A00000000000000000909
          09335C5A59FF696665FF656362FF555352FF4D4B4BFF494848FF383637FF8483
          83FFE6E4E3FFD3D1D0FFD3D2D1FFD3D2D1FFD3D2D1FFD3D2D1FFD4D2D1FFD4D2
          D1FFD4D2D1FFDDDADAFFDEDDDCFFDFDEDDFFE1DFDFFFDCDBD9FFE4E3E2FFB7B6
          B6FB484647FF494748FF403E40FF101011650000000000000000000000000202
          020E1D1C1D812322228F2020208A101010490F0E0F3F0F0F103F0C0C0C3F3030
          305767676782605F5F7C5F5F5F7C5F5F5F7C5F5F5F7C5F5F5F7C5F5F5F7C5F5F
          5F7C5F5F5F7C5F5E5E7C5F5E5E7C5F5F5E7C5F5F5E7C5F5F5F7C6464637F3939
          394D1111124D1C1B1C610B0B0B3C000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000192100001B2300001A2200001A2200001A2200001A2200001B220000
          1B2200001B2200001B2200001C230000181E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          71890102D4F41819D8F61617D7F51517D7F51517D7F51517D7F51517D8F51517
          D8F51517D8F51617D8F51718D9F60000D2F100005C6D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000006E891818
          E0FFC3C3F9FFC4C5F8FFC2C3F8FFC2C3F8FFC2C3F8FFC2C3F8FFC2C3F8FFC2C3
          F8FFC2C3F8FFC2C2F8FFC7C7F8FFAEAFF6FF0808DEFF00005A6C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000006D891919DDFFDADB
          FBFF7C7DECFF1B1BDDFF1B1CDFFF1B1CDFFF1B1CDFFF1B1CDFFF1B1CDFFF1B1C
          DFFF1B1CDFFF1B1BDFFF1D1DDDFF9899F0FFC2C2F7FF0909DBFF00005A6D0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000006B891919DAFFDBDBFBFF7677
          EAFF0000D6FF0000D9FF0000D9FF0000D9FF0000D9FF0000D9FF0000D9FF0000
          D9FF0000D9FF0000D9FF0000D8FF0000D7FF9596EFFFC3C3F7FF0909D8FF0000
          596D000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000006A891919D8FFDBDBFAFF7678E9FF0000
          D3FF0002D7FF0003D7FF0003D7FF0003D7FF0003D7FF0003D7FF0003D7FF0003
          D7FF0003D7FF0003D7FF0003D7FF0000D6FF0000D3FF9697EEFFC2C3F6FF0909
          D6FF0000586C0000000000000000000000000000000000000000000000000000
          00000000000000000000000069891919D6FFDBDBFAFF7678E7FF0000D0FF0002
          D4FF0003D4FF0003D4FF0003D4FF0003D4FF0003D4FF0003D4FF0003D4FF0003
          D4FF0003D4FF0003D4FF0003D4FF0003D4FF0000D4FF0000D0FF9697ECFFC2C3
          F6FF0A0AD3FF0000576C00000000000000000000000000000000000000000000
          000000000000000066881919D3FFDBDBFAFF7678E6FF0000CDFF0002D1FF0003
          D2FF0003D2FF0003D2FF0003D2FF0003D2FF0003D2FF0003D2FF0003D2FF0003
          D2FF0003D2FF0003D2FF0003D2FF0003D2FF0003D2FF0000D1FF0000CEFF9697
          ECFFC2C3F5FF090AD0FF0000586D000000000000000000000000000000000000
          0203000066881A1AD1FFDBDBF9FF7778E5FF0000CAFF0002CFFF0003CFFF0003
          CFFF0003CFFF0003CFFF0003CFFF0003CFFF0003CFFF0003CFFF0003CFFF0003
          CFFF0003CFFF0003CFFF0003CFFF0003CFFF0003CFFF0003CFFF0000CEFF0000
          CAFF9697EAFFC2C3F4FF0B0BCEFF0000586D0000000000000000000000000000
          23310F10CAFFC9CAF5FF787AE3FF0000C7FF0002CCFF0003CCFF0003CCFF0003
          CCFF0003CCFF0003CCFF0003CCFF0003CCFF0003CCFF0003CCFF0003CCFF0003
          CCFF0003CCFF0003CCFF0003CCFF0003CCFF0003CCFF0003CCFF0003CCFF0000
          CCFF0000C8FF9798E9FFAEAEEFFF0606CCFF00001B2200000000000000000000
          27373132D0FFC6C7F4FF0000C6FF0000C8FF0004C9FF0004C9FF0004C9FF0004
          C9FF0004C9FF0004C9FF0004C9FF0004C9FF0004C9FF0004C9FF0004C9FF0004
          C9FF0004C9FF0004C9FF0004C9FF0004C9FF0004C9FF0004C9FF0004C9FF0004
          C9FF0000C8FF0D0FCBFFCACBF4FF1819CCFC00001F2800000000000000000000
          24352E2FCEFFBCBDF1FF0204C6FF0001C6FF0004C7FF0004C7FF0004C7FF0004
          C7FF0004C7FF0004C7FF0004C7FF0004C7FF0004C7FF0004C7FF0004C7FF0004
          C7FF0004C7FF0004C7FF0004C7FF0004C7FF0004C7FF0004C7FF0004C7FF0004
          C7FF0000C6FF1618CAFFBDBEF0FF1719C7FA00001E2600000000000000000000
          25362E2FCCFFBDBEF0FF0305C3FF0001C3FF0004C4FF0004C4FF0004C4FF0004
          C4FF0004C4FF0004C4FF0004C4FF0004C4FF0004C4FF0004C4FF0004C4FF0004
          C4FF0004C4FF0004C4FF0004C4FF0004C4FF0004C4FF0004C4FF0004C4FF0004
          C4FF0000C3FF1719C7FFBEBFF0FF1719C5FA00001E2700000000000000000000
          24362E2FC9FFBDBEEFFF0204C0FF0000C0FF0004C1FF0004C2FF0004C2FF0004
          C1FF0004C2FF0004C2FF0004C2FF0004C2FF0004C2FF0004C2FF0004C2FF0004
          C2FF0004C2FF0004C2FF0004C2FF0004C2FF0004C2FF0004C2FF0004C2FF0004
          C2FF0000C1FF1719C6FFBEBFEFFF1719C2FA00001E2700000000000000000000
          24362F30C8FFBEBEEFFF0406BEFF0001BEFF0003BFFF0002BEFF0001BEFF0000
          BEFF0000BEFF0001BEFF0001BEFF0003BFFF0003BFFF0004BFFF0004BFFF0004
          BFFF0004BFFF0004BFFF0004BFFF0004BFFF0004BFFF0004BFFF0004BFFF0004
          BFFF0000BEFF1719C3FFBEBFEFFF1719C0FA00001D2700000000000000000000
          24363E41CBFFC6C7F0FF1E22C3FF1F22C4FF2024C5FF1F22C4FF1C1FC3FF181C
          C3FF1417C1FF0F11BFFF090CBEFF0307BDFF0003BCFF0000BBFF0001BBFF0002
          BBFF0004BCFF0004BCFF0005BCFF0005BCFF0005BCFF0005BCFF0005BCFF0005
          BCFF0000BAFF1719C0FFBEBFEDFF1719BEFA00001D2700000000000000000000
          24364548CBFFC8C9F0FF292DC5FF2B30C5FF3034C6FF3235C7FF3337C7FF3438
          C8FF3438C8FF3338C7FF3236C7FF2D31C6FF272BC4FF1E22C1FF1418BFFF0B0E
          BCFF0207BAFF0001B8FF0001B8FF0003B9FF0005B9FF0005B9FF0005B9FF0005
          B9FF0000B7FF1719BDFFBEBFEDFF1719BBFA00001D2700000000000000000000
          24364A4ECAFFCBCBF0FF3034C4FF3136C5FF363AC6FF373BC6FF383CC7FF383C
          C7FF393DC7FF393DC7FF393DC7FF383CC7FF393DC7FF393DC7FF383CC6FF3438
          C6FF2C30C3FF2125C0FF1318BCFF060AB8FF0002B7FF0001B6FF0004B6FF0005
          B7FF0000B5FF1719BBFFBEBFECFF1719B9FA00001D2700000000000000000000
          24365054CAFFCCCDF0FF373CC4FF3A3EC5FF3E42C6FF3E42C6FF4044C7FF4045
          C7FF4044C7FF4044C7FF4044C7FF3F43C7FF3E42C7FF3D41C6FF3C40C6FF3A3E
          C5FF393DC4FF383CC5FF363AC4FF2F34C2FF2327BEFF1317B9FF0408B5FF0001
          B3FF0000B1FF1618B8FFBEBEEBFF1719B7FA00001D2700000000000000000000
          2436575BCBFFD2D3F1FF353AC1FF4246C5FF4549C6FF464BC7FF474CC7FF484C
          C7FF494CC7FF484CC7FF484CC7FF474BC7FF464BC7FF4549C6FF4348C6FF4246
          C5FF3F43C4FF3C40C4FF3A3EC3FF383CC2FF363AC2FF3438C1FF2B2FBEFF1B1F
          B9FF0406B1FF0A0CB2FFC4C5EDFF1819B5FA00001C2700000000000000000405
          25364C4FC6FFE2E3F6FF898CDAFF383CC0FF4D50C7FF4E51C7FF4F52C8FF5052
          C7FF5053C8FF5053C8FF5052C7FF4F52C8FF4E51C7FF4D50C7FF4B4FC6FF494D
          C6FF464AC4FF4448C5FF4145C3FF3E42C2FF3B3FC1FF373BC0FF3539BFFF3236
          BEFF1318B5FF8788D9FFC0C1EAFF0A0DB3FF01011C2500000000000000000101
          070A26287AA66C70CFFFF0F1FAFF8C8EDAFF4346C2FF5659C8FF575AC8FF585B
          C9FF575BC9FF575BC9FF585BC9FF565BC8FF5659C8FF5458C8FF5256C7FF5054
          C6FF4E52C6FF4B4FC5FF484CC3FF4549C2FF4246C1FF3E43C0FF393EBEFF2025
          B6FF8E91DBFFE1E2F5FF3D41C0FF10136B900000040400000000000000000000
          00000000000227297AA77477D0FFF2F2FBFF9295DBFF4D51C3FF5E62C9FF5F63
          C9FF6064C9FF6064C9FF5F63C9FF5F63C9FF5D61C9FF5C60C8FF5A5EC8FF575B
          C7FF5559C6FF5357C5FF4F53C4FF4C50C3FF494DC2FF4448C0FF2C31B8FF9497
          DBFFE2E2F5FF474BC2FF17196D90000000000000000000000000000000000000
          000000000000000001022C2E7CA77C80D2FFF2F3FAFF989BDCFF565BC4FF676B
          CAFF676BCBFF676BCBFF676BCAFF666ACAFF6469CAFF6367C9FF6165C8FF5F63
          C8FF5C60C7FF595DC6FF565AC4FF5357C3FF4E52C2FF383CBAFF9A9CDCFFE4E3
          F4FF5155C3FF1B1D6D9000000000000000000000000000000000000000000000
          000000000000000000000000000231337EA88587D3FFF3F3FBFF9DA0DCFF5F63
          C6FF6F72CCFF6F72CCFF6F71CCFF6E70CBFF6C70CBFF6B6ECAFF696CC9FF666A
          C9FF6467C8FF6165C6FF5D61C5FF595DC4FF4448BCFFA0A2DDFFE5E5F5FF5B5F
          C5FF20226E910000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000010236387FA88D8FD5FFF4F4FBFFA3A5
          DDFF696CC8FF7679CCFF7477CCFF7477CCFF7275CBFF7173CAFF6F71CAFF6C6F
          C9FF696DC8FF666AC7FF6266C5FF4F54BEFFA6A7DFFFE7E7F5FF6569C7FF2426
          6E90000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000023B3D80A89497D6FFF5F5
          FBFFA9ACDFFF7679CBFF7D80CDFF7C7FCDFF7B7ECDFF797CCCFF7679CBFF7377
          CAFF7173C9FF6C70C8FF6266C4FFADAFE0FFE8E9F6FF6E72C9FF282B6F910000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000023F4180A89B9E
          D8FFEDEEF8FFDFE0F2FFDFE0F3FFDFE0F2FFDFE0F2FFDEDFF2FFDDDEF1FFDCDD
          F1FFDCDDF1FFDADCF0FFDCDDF1FFE1E1F2FF797DCBFF2B2E6F90000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000024547
          83A89295D4FFA0A3DAFF9FA2DAFF9FA1D9FF9DA0D9FF9D9FD9FF9B9ED8FF999B
          D8FF9799D7FF9497D6FF9296D5FF7B7ECCFF3233719100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000115162B3716172B3716172A3616172B3616172B3616172B3617172B361617
          2B3616162B3615162B3616162D38121329330000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000100000401000006010000060000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000010000031200001E2E0000465107006F6C1E008C74290093742B0093691F
          00874C0700682900003E0E000019010000030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000010000021700
          0025540900749F4400C4D58C00F2EBBC00FFF4DA05FFF9EA0DFFF9EC0DFFF6DE
          04FFEDC200FFD49000EF9E4900C1580D00771800002700000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000800000E43000060A547
          02CCE49F07FFF0CB01FFF7E30BFFFCF43CFFFEFB58FFFFFF5FFFFFFF5FFFFFFD
          56FFFDF638FFF8E608FFF1CF00FFE5A401FFA64B00CC4103005B0600000B0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000B000013620E0085D47810F9EAB6
          16FFEDC009FFF1CC00FFF6E025FFFAEC47FFFBF03FFFFCF33DFFFCF43DFFFBF2
          3FFFFAEE48FFF7E21FFFF2D000FFEEC201FFEAB301FFD17800F65E11007E0600
          000B000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000B0000126B120091DD871FFFE8B023FFE5A6
          06FFEAB500FFF0C700FFF4D505FFF6DE0DFFF8E30BFFF8E605FFF8E606FFF8E5
          09FFF7E10CFFF4D804FFF0CA00FFEBBA00FFE7AA00FFE6A601FFDA8000FF6417
          00840600000B0000000000000000000000000000000000000000000000000000
          00000000000000000000030000065908007BDA7D28FFE5A530FFE09202FFE39D
          00FFE8AF00FFECBB00FFF0C700FFF3D000FFF5D804FFF8E542FFF9E853FFF6DD
          17FFF3D300FFF0CA00FFEDC000FFE9B300FFE5A200FFE29800FFE09401FFD671
          00FF530D00700000000200000000000000000000000000000000000000000000
          000000000000000000002E000044C75D21F0E4A244FFDB8104FFDE8B00FFE196
          00FFE4A200FFE9B100FFECBB00FFEEC100FFF6DE68FFFFFEFDFFFFFFFFFFFCF2
          C1FFF1CD27FFECBC00FFEAB400FFE5A500FFE29B00FFE09100FFDC8600FFDB82
          03FFC05301ED2901003B00000000000000000000000000000000000000000000
          0000000000000800000E882308B1E19953FFDA7B15FFD87700FFDC8600FFDF8E
          00FFE19700FFE3A000FFE7AA00FFE9B200FFF8EAB1FFFFFFFFFFFFFFFFFFFFFF
          FFFFFBEFC7FFECBA28FFE4A000FFE29A00FFE09200FFDE8900FFDB7F00FFD878
          05FFD7720CFF832400A905000009000000000000000000000000000000000000
          00000000000032000049D16D3EF9DF9049FFD26100FFD77300FFDA7C00FFDC85
          00FFDE8E00FFE09500FFE29A00FFE49E00FFF1CC71FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF9EAC8FFE7A92BFFDE8F00FFDD8900FFDB8100FFD87700FFD56C
          00FFD77214FFC7540CF62C01003E000000000000000000000000000000000000
          0000010000036D130592E09467FFD4671AFFD05D00FFD56A00FFD77300FFD97B
          00FFDB8200FFDD8900FFDF8F00FFE09200FFE39C0BFFF3D697FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF8E6C9FFE29A29FFD97C00FFD87600FFD66E00FFD364
          00FFD2630CFFD4651DFF66150088000000000000000000000000000000000000
          00000C000015A43F27CDE2996EFFCB4B00FFCF5700FFD26100FFD36700FFD56D
          00FFD77400FFD97B00FFDB8100FFDC8500FFDC8600FFDF9108FFF1CE93FFFEFD
          FAFFFFFFFFFFFFFFFFFFFFFFFFFFF7E2C6FFDD8B28FFD56A00FFD36500FFD15C
          00FFCE5302FFD4692AFF993009C40600000B0000000000000000000000000000
          00001E00002EC4664EEADB8059FFC53400FFCC4E00FFCF5700FFD87421FFE7AA
          70FFEBB983FFEBBA81FFECBC81FFEDBF81FFEDC080FFECBD7AFFEFC78EFFFCF2
          E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6DFC8FFDA7C27FFD05900FFCD53
          00FFC84000FFD05921FFB74418E6170000230000000000000000000000000000
          00002F000046D67F6AF9E1977AFFCC4B1BFFCA4502FFCE540BFFF1CEB6FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0CAAEFFCD5102FFC942
          00FFCD521BFFDC845EFFC6502AF5270000380000000000000000000000000000
          00003400004EDE9183FDF4DAC6FFE6A987FFDF9166FFDF9165FFFDF9F7FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF2ECFFDD8957FFE093
          69FFEBB998FFF7E3CFFFD4765BF92900003E0000000000000000000000000000
          00002D000045DB8D81FAF3D5C3FFE5A78BFFE39F7EFFE29C76FFF3D6C5FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFD
          FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D8C7FFE6A985FFE9B1
          91FFEBB99EFFF7E1CFFFD27C67F4220000350000000000000000000000000000
          00001E000031CD786BF0F5DACCFFE7AA93FFE4A286FFE09474FFE19573FFE7AC
          90FFE8AF91FFE7AA88FFE6A783FFE6A67FFFE5A47CFFE4A177FFE7AC87FFF9EA
          E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5DCCFFFE4A17FFFE4A182FFE8B0
          95FFEBBCA4FFF8E5D7FFC06755E41100001E0000000000000000000000000000
          00000A000014B15146D8F7E0D5FFEAB7A5FFE7AB97FFE4A088FFE19578FFDD89
          68FFDC835DFFDA7D52FFD9794BFFD87645FFD6713DFFD87A47FFEFC6B0FFFFFE
          FDFFFFFFFFFFFFFFFFFFFFFFFFFFF5DDD1FFE4A183FFE39F82FFE7AD94FFEBB9
          A4FFEFC8B6FFF9E8DCFF9F4034C5010000050000000000000000000000000000
          0000000000007D1F1AA3F3D4CAFFF0CABDFFEAB6A7FFE7AC9AFFE4A28EFFE29A
          83FFE09379FFDF8E71FFDE8A6AFFDC8663FFDE8B6AFFF1D0C1FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF6DED5FFE5A58CFFE4A189FFE7AD99FFEAB8A6FFEEC3
          B3FFF5DDD0FFF2D2C8FF67110B8A000000000000000000000000000000000000
          0000000000003A000055E6A8A0FFF8E5DDFFEEC1B5FFEBB9ACFFE8AFA1FFE6A8
          98FFE4A28FFFE39B88FFE19881FFE0937AFFEFC7BBFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF6E0DAFFE6AA97FFE5A693FFE9B0A0FFEBB9ABFFEEC4B6FFF0CC
          C0FFFEF9F2FFDF988FFC29000040000000000000000000000000000000000000
          0000000000000500000DA84C46CCFAEDE6FFF2D3CAFFEEC6BDFFECBDB4FFEAB6
          ABFFE8B0A4FFE7AA9EFFE5A698FFE4A292FFF7E3DEFFFFFFFFFFFFFFFFFFFFFF
          FFFFF7E3DFFFE9B2A5FFE8AEA0FFEAB7AAFFECBEB2FFEFC7BCFFF2D0C5FFF7E3
          D9FFFAEEE9FF962F2ABE02000006000000000000000000000000000000000000
          0000000000000000000039020153E8ADA7FFFCF6EEFFF3D4CBFFF1CDC5FFEFC5
          BEFFEDBFB7FFEBBAB2FFEAB6ACFFE8B2A8FFF1CEC8FFFEFAFAFFFFFEFEFFF8E6
          E3FFECBCB3FFEBB8AEFFEDBFB6FFEFC5BDFFF0CCC4FFF2D4CCFFF6DED4FFFFFF
          FFFFDD8F8AFD2E00004700000000000000000000000000000000000000000000
          000000000000000000000000000177252399F4DAD4FFFCF3EBFFF5DCD2FFF3D5
          CEFFF2CFC8FFF0CAC3FFEFC6C0FFEEC3BDFFEEC2BBFFF1D0CAFFF3D4D0FFEFC6
          C0FFEEC5BEFFF0CAC3FFF2CFC8FFF3D5CDFFF5DBD3FFF7E2D9FFFFFFFDFFEDC1
          BDFF660C0B8C0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000500000E974343B9F8E6E0FFFDF8F2FFF7E3
          DBFFF6DFD7FFF5DAD4FFF4D7D1FFF3D4CFFFF2D3CDFFF2D1CAFFF2D1CAFFF3D3
          CEFFF4D7D1FFF5DAD3FFF6DFD7FFF7E3DCFFF9E9E1FFFFFFFFFFF2D0CDFF8422
          1FAD030000080000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000080000128C3F3EADF3D6D2FFFFFF
          FBFFFBF1EAFFF9E9E2FFF8E6E0FFF8E3DEFFF7E3DCFFF7E2DCFFF7E3DCFFF7E3
          DDFFF8E5E0FFF8E8E2FFFAECE4FFFDF8F1FFFFFFFFFFEBBAB7FF7E1D1BA60500
          000D000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000045F1A197CDBA0
          9EF3FAEBE9FFFFFFFCFFFFFCF6FFFCF5EEFFFBF0EBFFFBF0EAFFFBF0EAFFFBF2
          ECFFFDF7F1FFFFFFFBFFFFFFFFFFF7E2E0FFD2817EF354080676000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001A00
          002A78323195D19392EBF2CECCFFF9EBE8FFFEFBF6FFFFFDF9FFFFFEF9FFFDF9
          F4FFF8E4E1FFEEC3C0FFCB7D7BEB751F1D9A1B00002D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001000001D47080860782D2D98994746BAA85856C8A65554C79541
          3FB7712423924000005B0F00001D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object ADPhysMSSQLDriverLink1: TADPhysMSSQLDriverLink
    Left = 708
    Top = 11
  end
end
