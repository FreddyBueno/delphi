object frmSelPaciente: TfrmSelPaciente
  Left = 0
  Top = 0
  Caption = 'Seleccionar Paciente'
  ClientHeight = 559
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBottom: TPanel
    Left = 0
    Top = 511
    Width = 704
    Height = 41
    TabOrder = 0
  end
  object lytctrlSelPac: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 784
    Height = 559
    Align = alClient
    TabOrder = 1
    object gridCita: TcxGrid
      Left = -93
      Top = 289
      Width = 769
      Height = 237
      Align = alClient
      PopupMenu = PopupMenu1
      TabOrder = 19
      object lvCita: TcxGridLevel
        GridView = btvCitaPac
      end
    end
    object btnNuevo: TcxButton
      Left = 647
      Top = 28
      Width = 115
      Height = 38
      Hint = 'Haga clic aqu'#237' para registrar un paciente nuevo'
      Caption = 'Paciente &Nuevo'
      OptionsImage.ImageIndex = 14
      OptionsImage.Images = imgListDlg32
      TabOrder = 3
      OnClick = btnNuevoClick
    end
    object btnHuella: TcxButton
      Left = 376
      Top = 28
      Width = 96
      Height = 38
      Hint = 
        'Haga clic aqu'#237' para buscar el paciente cotejando su huella dacti' +
        'lar'
      Caption = 'por &huella'
      OptionsImage.ImageIndex = 13
      OptionsImage.Images = imgListDlg32
      TabOrder = 2
      OnClick = btnHuellaClick
    end
    object cmbbxPaciente: TcxExtLookupComboBox
      Left = 63
      Top = 46
      Hint = 
        'Escriba aqu'#237' o despliegue la lista para buscar el paciente por s' +
        'us apellidos y nombres'
      Properties.CharCase = ecUpperCase
      Properties.DropDownAutoSize = True
      Properties.HideSelection = False
      Properties.ImmediatePost = True
      Properties.View = tvPacientes
      Properties.KeyFieldNames = 'ID'
      Properties.ListFieldItem = tvPacientesPaciente
      Properties.OnChange = cmbbxPacientePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      OnEnter = cmbbxPacienteEnter
      Width = 307
    end
    object cmbbxDocID: TcxExtLookupComboBox
      Left = -81
      Top = 46
      Hint = 
        'Escriba aqu'#237' o despliegue la lista para buscar el paciente por s' +
        'u documento de identidad'
      Properties.CharCase = ecUpperCase
      Properties.DropDownAutoSize = True
      Properties.HideSelection = False
      Properties.ImmediatePost = True
      Properties.View = tvPacientes
      Properties.KeyFieldNames = 'ID'
      Properties.ListFieldItem = tvPacientesDocID
      Properties.OnChange = cmbbxDocIDPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      OnEnter = cmbbxDocIDEnter
      Width = 138
    end
    object edtTipoDocID: TcxDBLabel
      Left = -40
      Top = 133
      TabStop = False
      AutoSize = True
      DataBinding.DataField = 'TipoDocID'
      DataBinding.DataSource = dsPaciente
      ParentColor = False
      Style.HotTrack = False
    end
    object edtDocID: TcxDBLabel
      Left = 26
      Top = 133
      TabStop = False
      AutoSize = True
      DataBinding.DataField = 'DocID'
      DataBinding.DataSource = dsPaciente
      ParentColor = False
      Style.HotTrack = False
    end
    object edtPaciente: TcxDBLabel
      Left = 120
      Top = 133
      AutoSize = True
      DataBinding.DataField = 'Paciente'
      DataBinding.DataSource = dsPaciente
      ParentColor = False
      Style.HotTrack = False
    end
    object edtPacienteID: TcxDBTextEdit
      Left = 321
      Top = 133
      DataBinding.DataField = 'ID'
      DataBinding.DataSource = dsPaciente
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 67
    end
    object edtTelTrabajoPac: TcxDBTextEdit
      Left = 111
      Top = 208
      TabStop = False
      DataBinding.DataField = 'TelTrabajo'
      DataBinding.DataSource = dsPaciente
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 106
    end
    object edtTelCasaPac: TcxDBTextEdit
      Left = 8
      Top = 208
      ParentCustomHint = False
      TabStop = False
      DataBinding.DataField = 'TelResidencia'
      DataBinding.DataSource = dsPaciente
      ParentFont = False
      ParentShowHint = False
      Properties.ReadOnly = False
      ShowHint = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 97
    end
    object cmbbxZona: TcxDBLookupComboBox
      Left = -69
      Top = 208
      TabStop = False
      DataBinding.DataField = 'Zona'
      DataBinding.DataSource = dsPaciente
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'TIP_ZONA'
      Properties.ListColumns = <
        item
          FieldName = 'TIP_ZONA'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dmGIPSci.dsZona
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 11
      Width = 71
    end
    object cmbbxSexo: TcxDBLookupComboBox
      Left = 549
      Top = 133
      TabStop = False
      RepositoryItem = rpitmSexo
      DataBinding.DataField = 'Sexo'
      DataBinding.DataSource = dsPaciente
      Properties.DropDownAutoSize = True
      Properties.ListColumns = <>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.ShowHeader = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Width = 109
    end
    object edtEdad: TcxDBLabel
      Left = 518
      Top = 133
      TabStop = False
      AutoSize = True
      DataBinding.DataField = 'Edad'
      DataBinding.DataSource = dsPaciente
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      AnchorX = 526
    end
    object edtFechaNac: TcxDBDateEdit
      Left = 406
      Top = 133
      TabStop = False
      DataBinding.DataField = 'FechaNacimiento'
      DataBinding.DataSource = dsPaciente
      Properties.DisplayFormat = 'dd/mm/yyyy'
      Properties.EditFormat = 'dd/mm/yyyy'
      Properties.ReadOnly = False
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 106
    end
    object dbimgFoto: TcxImage
      Left = 664
      Top = 115
      Hint = 'Haga click para tomar la foto'
      ParentCustomHint = False
      TabStop = False
      ParentShowHint = False
      Properties.GraphicClassName = 'TJPEGImage'
      Properties.GraphicTransparency = gtTransparent
      Properties.Stretch = True
      ShowHint = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Transparent = True
      Height = 122
      Width = 98
    end
    object edtNitAseguradora: TcxDBLabel
      Left = 295
      Top = 208
      ParentCustomHint = False
      TabStop = False
      AutoSize = True
      DataBinding.DataField = 'NITAseguradora'
      DataBinding.DataSource = dsPaciente
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      Style.HotTrack = False
    end
    object edtAseguradora: TcxDBLabel
      Left = 247
      Top = 208
      ParentCustomHint = False
      TabStop = False
      AutoSize = True
      DataBinding.DataField = 'NombreAseguradora'
      DataBinding.DataSource = dsPaciente
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      Style.HotTrack = False
    end
    object lblMensaje: TcxLabel
      Left = -93
      Top = 493
      Align = alClient
      Style.HotTrack = False
    end
    object btnNuevaCita: TcxButton
      Left = 596
      Top = 493
      Width = 97
      Height = 39
      Align = alRight
      Caption = 'Nueva Cita'
      OptionsImage.ImageIndex = 15
      OptionsImage.Images = imgListDlg32
      TabOrder = 22
      OnClick = btnNuevaCitaClick
    end
    object btnGuardar: TcxButton
      Left = 699
      Top = 493
      Width = 75
      Height = 39
      Align = alRight
      Caption = 'Salir'
      Colors.DisabledText = clCaptionText
      OptionsImage.ImageIndex = 10
      OptionsImage.Images = imgListDlg32
      OptionsImage.Layout = blGlyphRight
      TabOrder = 23
      OnClick = btnGuardarClick
    end
    object btnCancelar: TcxButton
      Left = 515
      Top = 493
      Width = 75
      Height = 39
      Align = alRight
      TabOrder = 21
      OnClick = btnCancelarClick
    end
    object edtResponsable: TcxDBLabel
      Left = 383
      Top = 208
      TabStop = False
      AutoSize = True
      DataBinding.DataField = 'Responsable'
      DataBinding.DataSource = dsPaciente
      ParentColor = False
      Style.HotTrack = False
    end
    object edtTelResp: TcxDBLabel
      Left = 451
      Top = 208
      TabStop = False
      AutoSize = True
      DataBinding.DataField = 'TelCasaResp'
      DataBinding.DataSource = dsPaciente
      ParentColor = False
      Style.HotTrack = False
    end
    object lytctrlSelPacGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 2
      ShowBorder = False
      Index = -1
    end
    object lytgrdCita: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Citas'
      CaptionOptions.Layout = clTop
      Parent = lytctrlSelPacGroup_Root
      Visible = False
      Control = gridCita
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lytitmBuscarDocID: TdxLayoutItem
      CaptionOptions.Text = 'por documento de identidad'
      CaptionOptions.Layout = clTop
      Parent = lytgrpBuscarPac
      Control = cmbbxDocID
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lytitmBuscarNombre: TdxLayoutItem
      CaptionOptions.Text = 'por apellidos y nombres'
      CaptionOptions.Layout = clTop
      Parent = lytgrpBuscarPac
      Control = cmbbxPaciente
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lytitmHuella: TdxLayoutItem
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = lytgrpBuscarPac
      Control = btnHuella
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lytgrpTraerPac: TdxLayoutGroup
      CaptionOptions.Visible = False
      Parent = lytctrlSelPacGroup_Root
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lytgrpBuscarPac: TdxLayoutGroup
      CaptionOptions.Text = 'Buscar paciente'
      Parent = lytgrpTraerPac
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object lytitmNuevoPac: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'btnNuevo'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grpNuevoPac
      Control = btnNuevo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lytitmTipoDocID: TdxLayoutItem
      CaptionOptions.Text = 'Tipo:'
      Parent = lytgrpDocID
      Control = edtTipoDocID
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lytitmDocID: TdxLayoutItem
      CaptionOptions.Text = 'N'#250'mero:'
      Parent = lytgrpDocID
      Control = edtDocID
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lytgrpDocID: TdxLayoutGroup
      CaptionOptions.Text = 'Documento de identidad'
      Parent = lytgrpPacIzqSup
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object lytitmPaciente: TdxLayoutItem
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = lytgrpPaciente
      Control = edtPaciente
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lytitmID: TdxLayoutItem
      CaptionOptions.Text = 'ID'
      CaptionOptions.Visible = False
      Parent = lytgrpPaciente
      Visible = False
      Control = edtPacienteID
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lytgrpPaciente: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Paciente'
      Parent = lytgrpPacIzqSup
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object lytSeparatorDatos: TdxLayoutSeparatorItem
      CaptionOptions.Text = 'Separator'
      Parent = lytctrlSelPacGroup_Root
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object lytSeparatorGrd: TdxLayoutSeparatorItem
      CaptionOptions.Text = 'Separator'
      Parent = lytctrlSelPacGroup_Root
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 3
    end
    object lytgrpPacIzqSup: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = lytgrpPacIzq
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lytitmTelTrabajo: TdxLayoutItem
      CaptionOptions.Text = 'Tel'#233'fono Trabajo'
      CaptionOptions.Layout = clTop
      Parent = lytgrpZonaTels
      Control = edtTelTrabajoPac
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lytitmTelCasa: TdxLayoutItem
      CaptionOptions.Text = 'Tel'#233'fono Domicilio'
      CaptionOptions.Layout = clTop
      Parent = lytgrpZonaTels
      Control = edtTelCasaPac
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lytitmEdad: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'Edad'
      CaptionOptions.Layout = clTop
      Parent = lytgrpPacIzqSup
      Control = edtEdad
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lytitmZona: TdxLayoutItem
      CaptionOptions.Text = 'Zona'
      CaptionOptions.Layout = clTop
      Parent = lytgrpZonaTels
      Control = cmbbxZona
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lytitmSexo: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'Sexo'
      CaptionOptions.Layout = clTop
      Parent = lytgrpPacIzqSup
      Control = cmbbxSexo
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lytitmFechaNac: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'Fecha Nacimiento'
      CaptionOptions.Layout = clTop
      Parent = lytgrpPacIzqSup
      Control = edtFechaNac
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lytitmFoto: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = lytgrpDatosPac
      Control = dbimgFoto
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lytitmAseguradora: TdxLayoutItem
      AlignHorz = ahClient
      CaptionOptions.Text = 'Nombre:'
      CaptionOptions.Layout = clTop
      Parent = lytgrpAseguradora
      Control = edtAseguradora
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lytitmNitAseg: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'NIT:'
      CaptionOptions.Layout = clTop
      Parent = lytgrpAseguradora
      Control = edtNitAseguradora
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lytgrpPacIzqInf: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = lytgrpPacIzq
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lytgrpResponsable: TdxLayoutGroup
      CaptionOptions.Text = 'Datos de la persona responsable del paciente (si la hay)'
      Parent = lytgrpPacIzqInf
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object lytgrpPacIzq: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Visible = False
      Parent = lytgrpDatosPac
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object lytgrpDatosPac: TdxLayoutGroup
      CaptionOptions.Text = 'Datos del Paciente'
      Parent = lytctrlSelPacGroup_Root
      Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object lytgrpAseguradora: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Aseguradora'
      Parent = lytgrpPacIzqInf
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object lytgrpZonaTels: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = lytgrpPacIzqInf
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object lytSeparatorNuevo: TdxLayoutSeparatorItem
      CaptionOptions.Text = 'Separator'
      Parent = lytgrpTraerPac
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object grpNuevoPac: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = lytgrpTraerPac
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object lytlblMensaje: TdxLayoutItem
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = lytgrpBottom
      Control = lblMensaje
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lytbtnNuevaCita: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = lytgrpBottom
      Control = btnNuevaCita
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lytctrlSelPacItem3: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = lytgrpBottom
      Control = btnGuardar
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lytctrlSelPacItem4: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = lytgrpBottom
      Control = btnCancelar
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lytgrpBottom: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = lytctrlSelPacGroup_Root
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object lytctrlSelPacItem1: TdxLayoutItem
      CaptionOptions.Text = 'Responsable'
      CaptionOptions.Layout = clTop
      Parent = lytgrpResponsable
      Control = edtResponsable
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lytctrlSelPacItem2: TdxLayoutItem
      CaptionOptions.Text = 'Tel'#233'fono'
      CaptionOptions.Layout = clTop
      Parent = lytgrpResponsable
      Control = edtTelResp
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object tblAGCita: TADTable
    IndexFieldNames = 'ID'
    Connection = dmGIPSci.connGIPS
    UpdateOptions.UpdateTableName = 'GIPSPijaosNatagaima.dbo.AGCita'
    TableName = 'GIPSPijaosNatagaima.dbo.AGCita'
    Left = 40
    object tblAGCitaID: TADAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblAGCitaTipoCitaID: TIntegerField
      FieldName = 'TipoCitaID'
      Origin = 'TipoCitaID'
    end
    object tblAGCitaTipoConsultaID: TIntegerField
      FieldName = 'TipoConsultaID'
      Origin = 'TipoConsultaID'
    end
    object tblAGCitaFechaHora: TSQLTimeStampField
      FieldName = 'FechaHora'
      Origin = 'FechaHora'
    end
    object tblAGCitaFechaHoraReal: TSQLTimeStampField
      FieldName = 'FechaHoraReal'
      Origin = 'FechaHoraReal'
    end
    object tblAGCitaDuracionReal: TIntegerField
      FieldName = 'DuracionReal'
      Origin = 'DuracionReal'
    end
    object tblAGCitaPacienteID: TIntegerField
      FieldName = 'PacienteID'
      Origin = 'PacienteID'
    end
    object tblAGCitaProfesionalID: TIntegerField
      FieldName = 'ProfesionalID'
      Origin = 'ProfesionalID'
    end
    object tblAGCitaObservaciones: TStringField
      FieldName = 'Observaciones'
      Origin = 'Observaciones'
      Size = 255
    end
    object tblAGCitaEstadoCitaID: TIntegerField
      FieldName = 'EstadoCitaID'
      Origin = 'EstadoCitaID'
    end
    object tblAGCitaUsuarioID: TIntegerField
      FieldName = 'UsuarioID'
      Origin = 'UsuarioID'
    end
    object tblAGCitaTurno: TIntegerField
      FieldName = 'Turno'
      Origin = 'Turno'
    end
    object tblAGCitaMotivo: TStringField
      FieldName = 'Motivo'
      Origin = 'Motivo'
      Size = 100
    end
  end
  object dsPaciente: TDataSource
    DataSet = qryPaciente
    Left = 296
    Top = 8
  end
  object qryPaciente: TADQuery
    Active = True
    Connection = dmGIPSci.connGIPS
    SQL.Strings = (
      'SELECT ID'
      '      ,TipoDocID'
      '      ,DocID'
      '      ,Paciente'
      '      ,FechaNacimiento'
      '      ,Sexo'
      '      ,Edad'
      '      ,Foto'
      '      ,TelResidencia'
      '      ,TelTrabajo'
      '      ,Zona'
      '      ,Responsable'
      '      ,TelCasaResp'
      '      ,NITAseguradora'
      '      ,NombreAseguradora'
      '  FROM vPacientesParaNuevaCita'
      'Order By Paciente')
    Left = 232
    Top = 8
    object qryPacienteID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object qryPacienteTipoDocID: TStringField
      FieldName = 'TipoDocID'
      Origin = 'TipoDocID'
      Required = True
      Size = 4
    end
    object qryPacienteDocID: TStringField
      FieldName = 'DocID'
      Origin = 'DocID'
      Required = True
    end
    object qryPacientePaciente: TStringField
      FieldName = 'Paciente'
      Origin = 'Paciente'
      ReadOnly = True
      Size = 8000
    end
    object qryPacienteFechaNacimiento: TSQLTimeStampField
      FieldName = 'FechaNacimiento'
      Origin = 'FechaNacimiento'
    end
    object qryPacienteEdad: TIntegerField
      FieldName = 'Edad'
      Origin = 'Edad'
      ReadOnly = True
    end
    object qryPacienteSexo: TStringField
      FieldName = 'Sexo'
      Origin = 'Sexo'
      FixedChar = True
      Size = 1
    end
    object qryPacienteZona: TStringField
      FieldName = 'Zona'
      Origin = 'Zona'
      FixedChar = True
      Size = 1
    end
    object qryPacienteFoto: TBlobField
      FieldName = 'Foto'
      Origin = 'Foto'
      Size = 2147483647
    end
    object qryPacienteTelResidencia: TStringField
      FieldName = 'TelResidencia'
      Origin = 'TelResidencia'
      Size = 11
    end
    object qryPacienteTelTrabajo: TStringField
      FieldName = 'TelTrabajo'
      Origin = 'TelTrabajo'
      ReadOnly = True
      Required = True
      Size = 11
    end
    object qryPacienteResponsable: TStringField
      FieldName = 'Responsable'
      Origin = 'Responsable'
      Size = 30
    end
    object qryPacienteTelCasaResp: TStringField
      FieldName = 'TelCasaResp'
      Origin = 'TelCasaResp'
      ReadOnly = True
      Required = True
      Size = 11
    end
    object qryPacienteNITAseguradora: TStringField
      FieldName = 'NITAseguradora'
      Origin = 'NITAseguradora'
    end
    object qryPacienteNombreAseguradora: TStringField
      FieldName = 'NombreAseguradora'
      Origin = 'NombreAseguradora'
      Required = True
      Size = 100
    end
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 392
    Top = 16
    object tvPacientes: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = dsPaciente
      DataController.Filter.Options = [fcoCaseInsensitive, fcoSoftCompare]
      DataController.KeyFieldNames = 'ID'
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = 'Escriba aqu'#237' la condici'#243'n de b'#250'squeda'
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object tvPacientesID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object tvPacientesDocID: TcxGridDBColumn
        DataBinding.FieldName = 'DocID'
        BestFitMaxWidth = 100
        MinWidth = 80
        Width = 100
      end
      object tvPacientesPaciente: TcxGridDBColumn
        DataBinding.FieldName = 'Paciente'
        BestFitMaxWidth = 250
        MinWidth = 200
        Width = 250
      end
    end
    object btvCitaPac: TcxGridDBBandedTableView
      PopupMenu = PopupMenu1
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsCita
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'Citas: 0'
          Kind = skCount
          FieldName = 'ID'
          Column = btvCitaPacTipoCita1
        end
        item
          Kind = skSum
          FieldName = 'Retardo'
          Column = btvCitaPacRetardo1
        end
        item
          Kind = skSum
          FieldName = 'Demora'
          Column = btvCitaPacDemora1
        end>
      DataController.Summary.SummaryGroups = <>
      DateTimeHandling.DateFormat = 'dd/mm/yyyy'
      DateTimeHandling.Grouping = dtgByDate
      FilterRow.InfoText = 'Presione aqu'#237' para definir un filtro'
      FilterRow.Visible = True
      Images = frmCitaDlg.imgListDlg16
      OptionsCustomize.ColumnHiding = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsCustomize.BandHiding = True
      OptionsCustomize.BandsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = '<No hay datos para mostrar>'
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.HeaderEndEllipsis = True
      OptionsView.Indicator = True
      Preview.Column = btvCitaPacObservaciones1
      Preview.Visible = True
      Styles.FilterRowInfoText = frmCitas.cxStyle24
      Styles.StyleSheet = frmCitas.GridBandedTableViewStyleSheetDevExpress
      Bands = <
        item
          Caption = 'Programaci'#243'n'
          Options.HoldOwnColumnsOnly = True
          Width = 351
        end
        item
          Caption = 'Cita'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Llegada'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Atenci'#243'n'
          Options.HoldOwnColumnsOnly = True
          Width = 203
        end
        item
          Caption = 'Otros'
          Options.HoldOwnColumnsOnly = True
          Visible = False
        end>
      object btvCitaPacTurno1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Turno'
        RepositoryItem = frmCitas.rpitmBtTurno
        BestFitMaxWidth = 50
        MinWidth = 40
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object btvCitaPacID1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        MinWidth = 40
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object btvCitaPacFecha1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Fecha'
        RepositoryItem = frmCitas.rpitmFecha
        BestFitMaxWidth = 60
        MinWidth = 40
        Width = 57
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object btvCitaPacHora1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Hora'
        RepositoryItem = frmCitas.rpitmHora
        MinWidth = 40
        Width = 54
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object btvCitaPacDuracionPrevista1: TcxGridDBBandedColumn
        Caption = 'Dura'
        DataBinding.FieldName = 'DuracionPrevista'
        MinWidth = 50
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object btvCitaPacEstadoCitaID1: TcxGridDBBandedColumn
        Caption = 'Estado Cita'
        DataBinding.FieldName = 'EstadoCitaID'
        RepositoryItem = frmCitas.rpitmEstado
        BestFitMaxWidth = 90
        MinWidth = 80
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object btvCitaPacLlegada1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Llegada'
        RepositoryItem = frmCitas.rpitmHora
        MinWidth = 40
        Width = 64
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object btvCitaPacRetardo1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Retardo'
        MinWidth = 40
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object btvCitaPacDemora1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Demora'
        BestFitMaxWidth = 60
        MinWidth = 60
        Width = 60
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object btvCitaPacFechaHoraReal1: TcxGridDBBandedColumn
        Caption = 'Inici'#243
        DataBinding.FieldName = 'FechaHoraReal'
        RepositoryItem = frmCitas.rpitmHora
        MinWidth = 60
        Width = 60
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object btvCitaPacFechaFinReal1: TcxGridDBBandedColumn
        Caption = 'Termin'#243
        DataBinding.FieldName = 'FechaFinReal'
        RepositoryItem = frmCitas.rpitmHora
        BestFitMaxWidth = 60
        MinWidth = 60
        Width = 60
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object btvCitaPacDuracionReal1: TcxGridDBBandedColumn
        Caption = 'Dur'#243
        DataBinding.FieldName = 'DuracionReal'
        BestFitMaxWidth = 40
        MinWidth = 50
        Width = 50
        Position.BandIndex = 3
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object btvCitaPacTipoCita1: TcxGridDBBandedColumn
        Caption = 'Tipo Cita'
        DataBinding.FieldName = 'TipoCita'
        BestFitMaxWidth = 130
        MinWidth = 120
        Width = 120
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object btvCitaPacTipoConsulta1: TcxGridDBBandedColumn
        Caption = 'Tipo Consulta'
        DataBinding.FieldName = 'TipoConsulta'
        BestFitMaxWidth = 130
        MinWidth = 120
        Width = 130
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object btvCitaPacProfesional1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Profesional'
        MinWidth = 200
        Width = 200
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object btvCitaPacObservaciones1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Observaciones'
        RepositoryItem = frmCitaDlg.rpitmMemo
        MinWidth = 40
        Width = 200
        Position.BandIndex = 4
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object btvCitaPacMotivoID1: TcxGridDBBandedColumn
        Caption = 'Motivo'
        DataBinding.FieldName = 'MotivoID'
        Visible = False
        MinWidth = 40
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object btvCitaPacAseguradoraID1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AseguradoraID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            SortOrder = soAscending
            FieldName = 'NOM_EPS'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmGIPSci.dsAseguradora
        MinWidth = 40
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
  end
  object cxEditRepository1: TcxEditRepository
    Left = 568
    Top = 25
    object rpitmTime: TcxEditRepositoryTimeItem
      Properties.Increment = 15.000000000000000000
      Properties.LargeIncrement = 60.000000000000000000
      Properties.SpinButtons.Visible = False
      Properties.TimeFormat = tfHourMin
    end
    object rpitmSexo: TcxEditRepositoryLookupComboBoxItem
      Properties.KeyFieldNames = 'TIP_SEXO'
      Properties.ListColumns = <
        item
          Width = 30
          FieldName = 'TIP_SEXO'
        end
        item
          SortOrder = soAscending
          Width = 100
          FieldName = 'NOM_SEXO'
        end>
      Properties.ListFieldIndex = 1
    end
    object rpitmMemo: TcxEditRepositoryBlobItem
      Properties.BlobEditKind = bekMemo
      Properties.BlobPaintStyle = bpsText
    end
    object rpitmHoras: TcxEditRepositoryLookupComboBoxItem
      Properties.ImmediateDropDownWhenActivated = True
      Properties.KeyFieldNames = 'Hora'
      Properties.ListColumns = <
        item
          MinWidth = 50
          RepositoryItem = rpitmTime
          FieldName = 'Hora'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.ShowHeader = False
    end
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
          16FFEDC009FFF1CC00FFF6E025FFFAEC47FFFBEF3DFFFCF338FFFCF338FFFBF1
          3EFFFAEE48FFF7E21FFFF2D000FFEEC201FFEAB301FFD17800F65E11007E0600
          000B000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000B0000126B120091DD871FFFE8B023FFE5A6
          06FFEAB500FFF0C700FFF4D505FFF5DD0BFFF7E30CFFF9E926FFF9E923FFF8E5
          0AFFF7E00BFFF4D804FFF0CA00FFEBBA00FFE7AA00FFE6A601FFDA8000FF6417
          00840600000B0000000000000000000000000000000000000000000000000000
          00000000000000000000030000065908007BDA7D28FFE5A530FFE09202FFE39D
          00FFE8AF00FFECBB00FFF0C600FFF3D100FFF9E866FFFEF9D6FFFDF9D1FFF8E5
          53FFF3D200FFF0CA00FFEDC000FFE9B300FFE5A200FFE29800FFE09401FFD671
          00FF530D00700000000200000000000000000000000000000000000000000000
          000000000000000000002E000044C75D21F0E4A244FFDB8104FFDE8B00FFE196
          00FFE4A100FFE9B000FFECBB01FFF6DD72FFFFFEFCFFFFFFFFFFFFFFFFFFFEFB
          F2FFF4D859FFEDBC00FFEAB300FFE5A500FFE29B00FFE09100FFDC8600FFDB82
          03FFC05301ED2901003B00000000000000000000000000000000000000000000
          0000000000000800000E882308B1E19953FFDA7B15FFD87700FFDC8600FFDF8E
          00FFE19500FFE4A102FFF3D172FFFEFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEFBF2FFF0CB5BFFE4A000FFE29900FFE09200FFDE8900FFDB7F00FFD878
          05FFD7720CFF832400A905000009000000000000000000000000000000000000
          00000000000032000049D16D3EF9DF9049FFD26100FFD77300FFDA7C00FFDC84
          00FFDF8F03FFEFC674FFFEFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDF9F2FFECBC59FFDF8F00FFDD8800FFDB8100FFD87700FFD56C
          00FFD77214FFC7540CF62C01003E000000000000000000000000000000000000
          0000010000036D130592E09467FFD4671AFFD05D00FFD56A00FFD77100FFD97C
          01FFEBBC74FFFEFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFDF9F1FFE9B159FFD97D00FFD87600FFD66E00FFD364
          00FFD2630CFFD4651DFF66150088000000000000000000000000000000000000
          00000C000015A43F27CDE2996EFFCB4B00FFCF5700FFD26000FFD46B02FFE9B1
          71FFFEFCFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF7F1FFE5A559FFD56C00FFD36500FFD05C
          00FFCE5302FFD4692AFF993009C40600000B0000000000000000000000000000
          00001E00002EC4664EEADB8059FFC53400FFCC4D00FFCF5500FFE39D62FFFEFC
          FAFFFFFFFFFFFFFFFFFFFFFFFFFFFCF6EDFFFDF8F0FFFFFFFFFFFFFFFFFFFBF2
          E5FFFCF4E8FFFFFFFFFFFFFFFFFFFFFFFFFFFDF7F2FFE09450FFD05A00FFCD52
          00FFC84000FFD05921FFB74418E6170000230000000000000000000000000000
          00002F000046D67F6AF9E1977AFFCC4B1BFFCA4603FFCC4C01FFF3D5C2FFFFFF
          FFFFFFFFFFFFFFFFFFFFFAECDDFFE6A966FFF9EAD9FFFFFFFFFFFFFFFFFFF6DD
          C1FFE39D50FFFBEFE3FFFFFFFFFFFFFFFFFFFFFFFFFFF1CFB7FFCC4D00FFC942
          00FFCD521BFFDC845EFFC6502AF5270000380000000000000000000000000000
          00003400004EDE9183FDF4DAC6FFE6A987FFE0936AFFDA7E4BFFF2D2BFFFFFFF
          FFFFFFFFFFFFFAEDE2FFDE8841FFD7741CFFF9EADBFFFFFFFFFFFFFFFFFFF5DC
          C5FFD46705FFDD863DFFFAEEE5FFFFFFFFFFFFFFFFFFEFC9B0FFD87940FFE095
          6BFFEBB998FFF7E3CFFFD4765BF92900003E0000000000000000000000000000
          00002D000045DB8D81FAF3D5C3FFE5A78BFFE4A080FFE19670FFE4A07AFFF1CE
          B9FFF1CDB8FFE0945FFFD4691CFFDB7F3BFFFAEBE1FFFFFFFFFFFFFFFFFFF6DF
          CDFFD8762CFFD56D20FFE39B68FFF3D4C1FFF2D0BBFFE6A780FFE6A681FFE9B2
          93FFEBB99EFFF7E1CFFFD27C67F4220000350000000000000000000000000000
          00001E000031CD786BF0F5DACCFFE7AA93FFE4A286FFE09676FFDE8B65FFDB80
          54FFD97B48FFD7753EFFD67135FFDC8652FFFAECE4FFFFFFFFFFFFFFFFFFF6E1
          D2FFDA7F46FFD97940FFDA7F48FFDC8553FFDE8C61FFE29772FFE5A384FFE8B0
          95FFEBBCA4FFF8E5D7FFC06755E41100001E0000000000000000000000000000
          00000A000014B15146D8F7E0D5FFEAB7A5FFE7AB97FFE4A088FFE1967AFFDF8D
          6DFFDD8762FFDB8259FFD97B4EFFDE8D65FFFAEEE7FFFFFFFFFFFFFFFFFFF7E3
          D8FFDD875BFFDB8256FFDD8962FFDF906BFFE29878FFE4A186FFE7AD95FFEBB9
          A4FFEFC8B6FFF9E8DCFF9F4034C5010000050000000000000000000000000000
          0000000000007D1F1AA3F3D4CAFFF0CABDFFEAB6A7FFE7AC9AFFE4A28EFFE29A
          83FFE0947AFFDF8E72FFDD8767FFE2987BFFFBF0EAFFFFFFFFFFFFFFFFFFF7E5
          DDFFE09272FFDE8E6EFFE19678FFE39C82FFE5A58DFFE8AD99FFEAB8A6FFEEC3
          B3FFF5DDD0FFF2D2C8FF67110B8A000000000000000000000000000000000000
          0000000000003A000055E6A8A0FFF8E5DDFFEEC1B5FFEBB9ACFFE8AFA1FFE6A8
          98FFE4A28FFFE39C88FFE1957FFFE4A38FFFFBF2EEFFFFFFFFFFFFFFFFFFF9E9
          E4FFE49F89FFE39B85FFE5A38EFFE6A997FFE9B1A0FFEBB9ABFFEEC4B6FFF0CC
          C0FFFEF9F2FFDF988FFC29000040000000000000000000000000000000000000
          0000000000000500000DA84C46CCFAEDE6FFF2D3CAFFEEC6BDFFECBDB4FFEAB6
          ABFFE8B0A4FFE7AB9EFFE5A597FFE7AC9EFFFBF0EDFFFFFFFFFFFFFFFFFFF9E9
          E5FFE7AA9BFFE6AA9CFFE9B1A3FFEAB7AAFFECBEB2FFEFC7BCFFF2D0C5FFF7E3
          D9FFFAEEE9FF962F2ABE02000006000000000000000000000000000000000000
          0000000000000000000039020153E8ADA7FFFCF6EEFFF3D4CBFFF1CDC5FFEFC5
          BEFFEDBFB7FFEBBAB2FFEAB6ACFFE9B3A9FFF2D1CBFFFCF6F5FFFCF4F3FFF1CD
          C6FFEAB5ABFFEBBAB1FFEDBFB7FFEFC5BDFFF0CCC4FFF2D4CCFFF6DED4FFFFFF
          FFFFDD8F8AFD2E00004700000000000000000000000000000000000000000000
          000000000000000000000000000177252399F4DAD4FFFCF3EBFFF5DCD2FFF3D5
          CEFFF2CFC8FFF0CAC3FFEFC6C0FFEEC3BDFFEEC2BBFFF0CAC3FFEFC8C3FFEEC3
          BCFFEFC6BFFFF0CAC3FFF2CFC7FFF3D5CDFFF5DBD3FFF7E2D9FFFFFFFDFFEDC1
          BDFF660C0B8C0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000500000E974343B9F8E6E0FFFDF8F2FFF7E3
          DBFFF6DFD7FFF5DAD4FFF4D7D1FFF3D4CFFFF2D3CDFFF2D1CBFFF2D2CCFFF3D4
          CEFFF4D7D1FFF5DAD3FFF6DFD7FFF7E3DCFFF9E9E1FFFFFFFFFFF2D0CDFF8422
          1FAD030000080000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000080000128C3F3EADF3D6D2FFFFFF
          FBFFFBF1EAFFF9E9E2FFF8E6E0FFF8E3DEFFF7E3DCFFF7E3DCFFF7E3DCFFF7E3
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000002000008150000222F0200424A17005F54230069552300694817
          005B2C02003D1100001D01000005000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000500
          000B34050047803F009BBF8400D7E3BA00F4F5DC05FFF9EA0DFFF9EC0DFFF6E1
          04FFE5BF00F3BD8800D37E420097350700480500000C00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001230000348942
          02A6DE9E07F7EFC701FFF6E00AFFFBF13CFFFEFA57FFFFFE5FFFFFFF5EFFFEFC
          56FFFCF438FFF7E408FFF0CC00FFDEA101F6884400A322000031000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000002400B0056C1720FE0E9B3
          15FFECBE09FFF1CC00FFF6E025FFFAEC47FFFBEF3EFFFCF339FFFCF339FFFBF1
          3EFFFAEE48FFF7E21FFFF2D000FFEDC101FFE9B001FFBD7100DB3B0D004F0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000002490E0061D4841FF4E8AC22FFE5A6
          06FFEAB500FFF0C700FFF4D505FFF6DE0DFFF7E30AFFF9E81AFFF9E91DFFF8E5
          0CFFF7E00CFFF4D804FFF0CA00FFEBBA00FFE7AA00FFE5A301FFCD7B00EF4211
          0056000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003706004CD17C28F3E4A22FFFE09202FFE39D
          00FFE8AF00FFECBB00FFF0C600FFF2D000FFF8E241FFFDF7C3FFFDF8CAFFF8E5
          52FFF3D300FFF0CA00FFEDBF00FFE9B300FFE5A200FFE29800FFDF9101FFC86C
          00ED320800430000000000000000000000000000000000000000000000000000
          0000000000000000000014000020B25921D5E49E43FFDB8104FFDE8B00FFE196
          00FFE4A200FFE9B100FFECBA00FFEFC406FFFBF0BCFFFFFFFFFFFFFFFFFFFDF4
          D1FFF0C913FFECBC00FFEAB400FFE5A500FFE29B00FFE09100FFDC8600FFDB80
          03FFA94C01CE1100001A00000000000000000000000000000000000000000000
          00000000000000000001671F0885E29853FFDA7B15FFD87700FFDC8600FFDF8E
          00FFE19700FFE3A000FFE7AA00FFEBB80FFFFBF1CBFFFFFFFFFFFFFFFFFFFDF7
          E1FFEDC023FFE7AB00FFE5A300FFE29A00FFE09200FFDE8900FFDB7F00FFD877
          04FFD7710CFF621D007D00000000000000000000000000000000000000000000
          00000000000018000025C16B3FE4DF8E48FFD26100FFD77300FFDA7C00FFDC85
          00FFDE8E00FFE09500FFE29900FFE6A60EFFF9EBC7FFFFFFFFFFFFFFFFFFFCF3
          DEFFE8AE22FFE39B00FFE19800FFDF9100FFDD8900FFDB8100FFD87700FFD56C
          00FFD67014FFB6500CDF1400001E000000000000000000000000000000000000
          0000000000005011056AE09568FFD4671AFFD05D00FFD56A00FFD77300FFD97B
          00FFDB8200FFDD8A00FFDF8F00FFE29B0EFFF9E8C7FFFFFFFFFFFFFFFFFFFBF2
          DEFFE5A522FFDF9000FFDE8C00FFDC8600FFDA7E00FFD87700FFD66E00FFD364
          00FFD2630CFFD3661EFF49100060000000000000000000000000000000000000
          000001000003883A25A7E1966DFFCB4B00FFCF5700FFD26100FFD36800FFD56C
          00FFD77200FFD97C00FFDB8200FFDF8F0EFFF7E6C7FFFFFFFFFFFFFFFFFFFBF0
          DEFFE39B24FFDC8300FFDA7E00FFD77500FFD56E00FFD46B00FFD36500FFD15C
          00FFCE5302FFD46829FF7D2A099E000000000000000000000000000000000000
          00000A000013B2634DD2DA7E58FFC53400FFCC4E00FFCF5600FFD56E18FFE8B0
          7AFFECBC88FFDE8B2CFFD77100FFDC820CFFF7E3C7FFFFFFFFFFFFFFFFFFFAEF
          DEFFDF8F22FFD77400FFDE8B27FFEBBB83FFEAB47EFFD8761FFFD05A00FFCD53
          00FFC84000FFCF5821FFA13F18C90700000C0000000000000000000000000000
          000017000025CA7E6AE8E19579FFCC4B1BFFCA4603FFCA4800FFE9B48FFFFFFF
          FFFFFFFFFFFFF8E7D6FFDD852CFFD77205FFF6E0C6FFFFFFFFFFFFFFFFFFF9EC
          DCFFDA7F1BFFDD882FFFF7E4D0FFFFFFFFFFFFFFFFFFECBE9DFFCB4900FFC943
          00FFCD521BFFDC835DFFB74E2AE21200001B0000000000000000000000000000
          00001A00002AD29082ECF4D7C4FFE6A987FFE09269FFDA804EFFF5DCCDFFFFFF
          FFFFFFFFFFFFFFFFFFFFF7E3D3FFDD893FFFF4D9C1FFFFFFFFFFFFFFFFFFF9E7
          D9FFE29857FFF6E1CEFFFFFFFFFFFFFFFFFFFFFFFFFFF5DFD1FFD97C44FFE094
          6BFFEBB998FFF6E0CDFFC8765BE9140000200000000000000000000000000000
          000016000024D08E81EAF2D3C1FFE5A78BFFE4A080FFE1966FFFEBB89CFFFEFD
          FBFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9DEFFFAECE2FFFFFFFFFFFFFFFFFFFCF4
          EEFFFAEDE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFC7AFFFE5A681FFE9B2
          93FFEBB99EFFF6DECCFFC57B67E20E0000190000000000000000000000000000
          00000B000016BF766ADCF4D8CAFFE7AA93FFE4A286FFE09574FFDE8C66FFEBBA
          A2FFFEFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0CAB7FFE29B78FFE4A283FFE8B0
          95FFEBBCA4FFF7E2D4FFAE6453CC030000090000000000000000000000000000
          0000010000049A4E45B8F5DDD3FFEAB7A5FFE7AB97FFE4A088FFE19478FFDE8C
          6CFFECBBA8FFFEFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF1CCBBFFE29B7BFFE4A083FFE7AD95FFEBB9
          A4FFEFC8B6FFF8E4D9FF863E34A3000000000000000000000000000000000000
          000000000000621D197EF3D3C9FFF0CABDFFEAB6A7FFE7AC9AFFE4A28EFFE198
          82FFE09378FFEDC0AFFFFEFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF1CEC2FFE49F85FFE5A38AFFE7AD99FFEAB8A6FFEEC3
          B3FFF5DCCFFFF3D3CAFF4E100B67000000000000000000000000000000000000
          00000000000021000033E2AAA4F7F7E3DAFFEEC1B5FFEBB9ACFFE8B0A1FFE6A8
          98FFE3A08DFFE29B86FFEEC5B9FFFEFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF2D1C7FFE5A491FFE6A794FFE9B1A0FFEBB9ABFFEEC4B6FFF0CD
          C0FFFDF6EFFFD69991EE14000022000000000000000000000000000000000000
          000000000000000000018D4843A9F9EAE2FFF2D3CAFFEEC6BDFFECBDB4FFEAB6
          ABFFE8B0A4FFE6A99CFFE5A597FFF0CCC3FFFEFDFCFFFFFFFFFFFFFFFFFFFFFF
          FFFFF4D6CFFFE8AD9FFFE8AFA1FFEAB7AAFFECBEB2FFEFC7BCFFF2D0C5FFF7E3
          D9FFF9EBE6FF7A2D299900000000000000000000000000000000000000000000
          0000000000000000000021010031E1AEA8F4FCF3EBFFF3D4CBFFF1CDC5FFEFC5
          BEFFEDBFB7FFEBBAB2FFEAB5ACFFE9B2A9FFF2D2CDFFFDF8F7FFFEF9F9FFF4D9
          D5FFEBB8AEFFEBB9AFFFEDBFB7FFEFC5BDFFF0CCC4FFF2D4CCFFF6DED4FFFFFF
          FBFFD3908AED1900002800000000000000000000000000000000000000000000
          00000000000000000000000000005A212072F5DBD5FFFBF1E9FFF5DCD2FFF3D5
          CEFFF2CFC8FFF0CAC3FFEFC6C0FFEEC3BCFFEDC1BBFFF0CBC5FFF0CCC6FFEEC3
          BDFFEEC5BEFFF0CAC3FFF2CFC7FFF3D5CDFFF5DBD3FFF7E2D9FFFFFFFAFFEFC5
          C1FF490B0A640000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000017C413F95F8E6DFFFFCF6F0FFF7E4
          DCFFF6DFD7FFF5DAD4FFF4D7D1FFF3D4CFFFF2D3CDFFF2D1CAFFF2D2CBFFF3D4
          CEFFF4D7D1FFF5DAD3FFF6DFD7FFF7E3DCFFF9EAE1FFFFFFFCFFF3D3CFFF6820
          1D87000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000003733C3A8AF4DAD6FFFFFE
          F7FFFBF1EAFFF9E9E2FFF8E6E0FFF8E3DEFFF7E3DCFFF7E3DCFFF7E3DCFFF7E3
          DDFFF8E5E0FFF8E8E2FFFAECE4FFFDF8F1FFFFFFFDFFEDC0BDFF631B1A810000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000004618185ACB9D
          9ADEFAECE9FFFFFDF9FFFEFAF4FFFCF5EEFFFBF0EBFFFBF0EAFFFBF0EAFFFBF2
          ECFFFDF7F1FFFFFEF8FFFFFFFDFFF7E2E0FFBF7E7BDA3B070653000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000A00
          001463302F78C29190D6F3D4D1FFF8E9E6FFFDF9F4FFFEFCF7FFFFFCF7FFFDF7
          F3FFF7E2E0FFF0CAC6FFB97B7AD35D1F1D790A00001600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000200000A31050543622C2C7880454498905452A9905250A87D40
          3E955C2323742B00003E0200000A000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000002000008150000222F0200424A17005F54230069552300694817
          005B2C02003D1100001D01000005000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000500
          000B34050047803F009BBF8400D7E3BA00F4F5DC05FFF9EA0DFFF9EC0DFFF6E1
          04FFE5BF00F3BD8800D37E420097350700480500000C00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001230000348942
          02A6DE9E07F7EFC701FFF6E00AFFFBF13CFFFEFA57FFFFFE5FFFFFFF5EFFFEFC
          56FFFCF438FFF7E408FFF0CC00FFDEA101F6884400A322000031000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000002400B0056C1720FE0E9B3
          15FFECBE09FFF1CC00FFF6E025FFFAEC47FFFBF03EFFFCF33DFFFCF43DFFFBF2
          3FFFFAEE48FFF7E21FFFF2D000FFEDC101FFE9B001FFBD7100DB3B0D004F0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000002490E0061D4841FF4E8AC22FFE5A6
          06FFEAB500FFF0C700FFF4D505FFF6DE0CFFF7E308FFF8E602FFF8E605FFF8E5
          0BFFF7E10CFFF4D804FFF0CA00FFEBBA00FFE7AA00FFE5A301FFCD7B00EF4211
          0056000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003706004CD17C28F3E4A22FFFE09202FFE39D
          00FFE8AF00FFECBB00FFF0C600FFF2CF00FFF6DC1FFFF9E857FFF8E43AFFF5DA
          01FFF3D400FFF1CA00FFEDBF00FFE9B300FFE5A200FFE29800FFDF9101FFC86C
          00ED320800430000000000000000000000000000000000000000000000000000
          0000000000000000000014000020B25921D5E49E43FFDB8104FFDE8B00FFE196
          00FFE4A100FFE9B100FFEBB900FFF1CF36FFFCF5D2FFFFFFFFFFFFFDF4FFF5DA
          50FFEEC300FFEDBE00FFEAB400FFE5A500FFE29B00FFE09100FFDC8600FFDB80
          03FFA94C01CE1100001A00000000000000000000000000000000000000000000
          00000000000000000001671F0885E29853FFDA7B15FFD87700FFDC8600FFDF8E
          00FFE19600FFE39E00FFECBD37FFFCF4D9FFFFFFFFFFFFFFFFFFFFFFFFFFF7E2
          93FFE9B300FFE8AD00FFE5A300FFE29A00FFE09200FFDE8900FFDB7F00FFD877
          04FFD7710CFF621D007D00000000000000000000000000000000000000000000
          00000000000018000025C16B3FE4DF8E48FFD26100FFD77300FFDA7C00FFDC84
          00FFDE8B00FFE8AD3AFFFAF0DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFEEC4
          59FFE39F00FFE39D00FFE19800FFDF9100FFDD8900FFDB8100FFD87700FFD56C
          00FFD67014FFB6500CDF1400001E000000000000000000000000000000000000
          0000000000005011056AE09568FFD4671AFFD05D00FFD56A00FFD77100FFD979
          00FFE39F38FFFAEEDAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFF1CD80FFE29B
          04FFE09400FFE09100FFDE8C00FFDC8600FFDA7E00FFD87700FFD66E00FFD364
          00FFD2630CFFD3661EFF49100060000000000000000000000000000000000000
          000001000003883A25A7E1966DFFCB4B00FFCF5700FFD26000FFD36700FFDF90
          37FFF9EBD9FFFFFFFFFFFFFFFFFFFFFFFFFFFEFAF4FFEEC47DFFDE8D00FFDD87
          00FFDD8700FFDB8300FFDA7E00FFD87700FFD66F00FFD46B00FFD36500FFD15C
          00FFCE5302FFD46829FF7D2A099E000000000000000000000000000000000000
          00000A000013B2634DD2DA7E58FFC53400FFCC4E00FFCF5500FFDB8237FFF8E9
          DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEDDCFFEEC487FFEDBE7BFFEDC0
          81FFEDC081FFECBE81FFECBB81FFEBBA83FFE6A868FFD67218FFD05B00FFCD53
          00FFC84000FFCF5821FFA13F18C90700000C0000000000000000000000000000
          000017000025CA7E6AE8E19579FFCC4B1BFFCA4502FFCF5812FFF4D9C7FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECBE9DFFCD4E00FFC942
          00FFCD521BFFDC835DFFB74E2AE21200001B0000000000000000000000000000
          00001A00002AD29082ECF4D7C4FFE6A987FFDF9066FFE1986FFFFFFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEBE2FFDB834EFFE093
          69FFEBB998FFF6E0CDFFC8765BE9140000200000000000000000000000000000
          000016000024D08E81EAF2D3C1FFE5A78BFFE39F7EFFE49D79FFF5DED1FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFCFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D1BEFFE6A883FFE9B1
          92FFEBB99EFFF6DECCFFC57B67E20E0000190000000000000000000000000000
          00000B000016BF766ADCF4D8CAFFE7AA93FFE4A286FFE09372FFE39B7BFFF6E2
          D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E1D4FFE6A780FFE5A278FFE6A6
          7EFFE6A983FFE8AC87FFE8AF8EFFEAB598FFE9B295FFE49E7CFFE4A283FFE8B0
          95FFEBBCA4FFF7E2D4FFAE6453CC030000090000000000000000000000000000
          0000010000049A4E45B8F5DDD3FFEAB7A5FFE7AB97FFE49F88FFE09376FFE39D
          81FFF7E3DBFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAF9FFEBBA9FFFD87643FFD775
          41FFD97B4AFFDB7F52FFDC855BFFDE8C66FFE19573FFE4A084FFE7AD95FFEBB9
          A4FFEFC8B6FFF8E4D9FF863E34A3000000000000000000000000000000000000
          000000000000621D197EF3D3C9FFF0CABDFFEAB6A7FFE7AC9AFFE4A28EFFE197
          7FFFE5A28CFFF7E5DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFC5B4FFDE8A
          69FFDD8A68FFDF8F70FFE19578FFE39C81FFE5A48DFFE8AD99FFEAB8A6FFEEC3
          B3FFF5DCCFFFF3D3CAFF4E100B67000000000000000000000000000000000000
          00000000000021000033E2AAA4F7F7E3DAFFEEC1B5FFEBB9ACFFE8B0A1FFE6A7
          98FFE39E8BFFE6A898FFF8E7E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDBD
          AFFFE1957DFFE39C87FFE5A38EFFE6A997FFE9B1A0FFEBB9ABFFEEC4B6FFF0CD
          C0FFFDF6EFFFD69991EE14000022000000000000000000000000000000000000
          000000000000000000018D4843A9F9EAE2FFF2D3CAFFEEC6BDFFECBDB4FFEAB6
          ABFFE8AFA3FFE6A79AFFE9B2A6FFF9EAE6FFFFFFFFFFFFFFFFFFFFFFFFFFF4D9
          D2FFE5A393FFE6AB9CFFE9B1A3FFEAB7AAFFECBEB2FFEFC7BCFFF2D0C5FFF7E3
          D9FFF9EBE6FF7A2D299900000000000000000000000000000000000000000000
          0000000000000000000021010031E1AEA8F4FCF3EBFFF3D4CBFFF1CDC5FFEFC5
          BEFFEDBFB7FFEBBAB1FFEAB3AAFFECBDB5FFF9EBE9FFFFFEFEFFFDF8F7FFEFC8
          C1FFEAB4AAFFEBBBB1FFEDBFB7FFEFC5BDFFF0CCC4FFF2D4CCFFF6DED4FFFFFF
          FBFFD3908AED1900002800000000000000000000000000000000000000000000
          00000000000000000000000000005A212072F5DBD5FFFBF1E9FFF5DCD2FFF3D5
          CEFFF2CFC8FFF0CAC3FFEFC6C0FFEEC2BBFFEFC6C1FFF3D5D0FFF1CEC8FFEDC3
          BCFFEFC6BFFFF0CAC3FFF2CFC7FFF3D5CDFFF5DBD3FFF7E2D9FFFFFFFAFFEFC5
          C1FF490B0A640000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000017C413F95F8E6DFFFFCF6F0FFF7E4
          DCFFF6DFD7FFF5DAD4FFF4D7D1FFF3D4CEFFF2D2CCFFF1D0CAFFF2D1CBFFF3D4
          CEFFF4D7D1FFF5DAD3FFF6DFD7FFF7E3DCFFF9EAE1FFFFFFFCFFF3D3CFFF6820
          1D87000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000003733C3A8AF4DAD6FFFFFE
          F7FFFBF1EAFFF9E9E2FFF8E6E0FFF8E3DEFFF7E3DCFFF7E2DCFFF7E3DCFFF7E3
          DDFFF8E5E0FFF8E8E2FFFAECE4FFFDF8F1FFFFFFFDFFEDC0BDFF631B1A810000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000004618185ACB9D
          9ADEFAECE9FFFFFDF9FFFEFAF4FFFCF5EEFFFBF0EBFFFBF0EAFFFBF0EAFFFBF2
          ECFFFDF7F1FFFFFEF8FFFFFFFDFFF7E2E0FFBF7E7BDA3B070653000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000A00
          001463302F78C29190D6F3D4D1FFF8E9E6FFFDF9F4FFFEFCF7FFFFFCF7FFFDF7
          F3FFF7E2E0FFF0CAC6FFB97B7AD35D1F1D790A00001600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000200000A31050543622C2C7880454498905452A9905250A87D40
          3E955C2323742B00003E0200000A000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
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
          0000000100010001000200020003000200030001000300000000000200030002
          0003000200030001000200010002000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000001000100020004000500090007000E000B0014000E001B001200220015
          0028001A0030001D00370021003D002300430021003E01280051002100430026
          0046002400430020003C001D00360019002F0015002800120021000E001A000A
          00130007000D0005000900020004000100010000000000000000000000000000
          0000000200030005000A000A0012000E001A001300230018002D001D00370023
          00410029004C002E005700340061002D005814590F9D46A43DFC206F17C3002E
          005F003700670033005F002D00550027004A00220040001D00360017002C0012
          0022000D00190009001100050009000200030000000000000000000000000000
          00000000000000000000000000000001000200020004000300060005000A0006
          000C00090010000A001200020006082102425FB061F48DEAB2FF75CC81FF1E4E
          148D00000000000A0013000900110008000F0006000C00050009000300060002
          0003000100010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000B1A04335CA85BEC88E7ABFF82E6AAFF88EAB1FF72CA
          7CFF2146157C0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000A1C03365AA957EF85E4A5FF80E4A5FF7FE1A1FF7FE2A2FF87E8
          ACFF6FC877FF2048158000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000817013157A752EF83E2A2FF7FE2A2FF7EE09EFF7EE09EFF7EE09EFF7DE0
          9FFF84E6A9FF6EC775FF1F47137F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000A1B
          033659A65CEB82E09FFF7EE09EFF7CDE9AFF7DDE9BFF7DDE9BFF7DDE9BFF7DDE
          9AFF7CDE9BFF83E4A5FF6DC572FF2047137F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000A1B03365BA9
          5CEF81E09FFF7BDE9AFF7BDC97FF7BDD97FF7BDD97FF7BDD97FF7BDD97FF7BDD
          97FF7BDC97FF7ADD98FF81E3A1FF6BC46FFF1F47127F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000A1B03365AA75BEE7FDD
          9BFF79DC96FF79DB94FF79DB94FF79DB94FF79DB94FF79DB94FF79DB94FF79DB
          94FF79DB94FF79DB94FF79DB94FF7FE19DFF69C36CFF1F47117F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000919023458A658EE7DDB97FF78DA
          91FF77D890FF77D890FF78D990FF78D990FF78D990FF78D990FF78D990FF78D9
          90FF78D890FF78D88FFF78D88FFF78D890FF7DDE99FF68C169FF1E47117F0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000B1E063B60AF62F185E19FFF80DF99FF7FDE
          97FF7FDE98FF7CDD95FF73D78CFF76D78CFF76D78CFF76D78CFF76D78CFF76D7
          8CFF77D98FFF80DF99FF81DF9AFF81DF9AFF81DF9AFF87E5A4FF6FC772FF2250
          1787000200050000000000000000000000000000000000000000000000000000
          00000000000000000000000000002D5B239A72B46FF872B270ED70AE6DEC70AF
          6EED6FAE6BEC71B16EF093DA9DFF72D688FF74D589FF74D589FF74D589FF72D6
          87FF89D798FE73B372F46CAF6BEC6DAF6BEC6DB06CED6CAF6DEC71B570F25198
          48E8030B011A0000000000000000000000000000000000000000000000000000
          000000000000000000000000000004050407000100110000000F0000000F0000
          000F0000000F000300185DA355E977D88CFF73D386FF73D386FF73D386FF77D9
          8DFF60A75CEE0003001D0000000F0000000F0000000F0000000F000000110103
          000B000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000004A9643E377D88AFF71D282FF71D282FF71D282FF76D7
          89FF55A050EB0000000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000064C9944E576D687FF70D07EFF70D07EFF70D07EFF75D5
          85FF56A150EC0000000900000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000064C9843E574D483FF6ECE7BFF6ECE7BFF6ECE7BFF73D3
          82FF55A04EEC0000000900000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000064C9742E571D27FFF6ACC74FF6CCC77FF6DCD77FF72D1
          7EFF549F4CEC0000000900000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000064F9844E587D891FF74CE7CFF6BCB73FF69CA71FF70D0
          7AFF549F4AEC0000000900000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000064F9844E592DC9AFF8BD590FF83D288FF73CC79FF6DCE
          76FF519D46EC0000000900000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000064F9742E591DA98FF8AD48EFF89D38CFF87D38AFF81D4
          87FF549D49EC0000000900000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000064F9642E593DA98FF8BD38DFF88D38BFF86D188FF8BD7
          8FFF5DA050EC0000000900000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000064E9641E594D998FF8DD38DFF8AD28AFF87D187FF8AD5
          8DFF5D9F4EEC0000000900000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000064E9540E595D998FF8ED38CFF8BD28AFF88D087FF8CD5
          8CFF5D9F4DEC0000000900000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000064E953FE596D998FF8FD28CFF8CD18AFF89D086FF8DD5
          8CFF5D9E4CEC0000000900000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000064D943FE598D998FF90D28CFF8DD189FF8AD086FF8ED4
          8BFF5D9D4BEC0000000900000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000064D943DE599D998FF92D18CFF8FD189FF8BCF86FF8FD3
          8BFF5D9D4AEC0000000900000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000064D933DE59AD998FF93D18CFF90D089FF8CCF86FF90D3
          8BFF5D9C49EC0000000900000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000064C933BE59BD999FF94D18CFF90D089FF8DCF85FF91D3
          8BFF5D9C48EC0000000900000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000064D963BEBA1DD9FFF9AD593FF96D48FFF92D28BFF96D6
          90FF5F9F4AF10000000700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000004518141C99FCC93FF93C484FF92C482FF90C481FF93C6
          85FF528440CC0000000400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000C1208200E260057092300550A2400550A2400550C25
          0057081003200000000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000001000100020003000400070006000B00090010000B0015000E
          001B00120021001400260016002A001A0030001B0033001C0035001D0037001D
          0036001C0034001A00300017002C0015002700120022000F001D000C0017000A
          00120007000D0004000800020004000100020000000000000000000000000000
          0000000100020004000800090010000D0018001200220017002B001D00360022
          00400026004800270049003300600039006B003E00750043007D004500820044
          007F003F0077003B006E00350064002F0059002A004E00240043001E00380019
          002E00130024000E001B000A00120006000B0002000300000000000000000000
          000000000000000000000001000200030006000500090007000D000A0012000B
          0014000B001A082B055200150126001500270017002C0019002E0019002F0019
          002E0017002C001600290014002600120022000F001D000D0018000A00130007
          000E0005000A0003000600020003000100010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003868349A4EAB50FC00060013000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002C5D
          229982DFA2FF67C37CFA00050019000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002B5B1E997AD6
          93FF99FFD8FF65BB75F500050019000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000002A5B1C9977D38DFF8FF4
          C4FF8EF3C0FF61B86DF600060019000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002A591A9876D088FF8BEFBBFF84E7
          AEFF8AEEB8FF5FB568F600060019000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000002958199875CD82FF87EBB1FF81E3A5FF81E3
          A5FF86E9AEFF5CB061F400020013000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000002857179874CA7CFF83E6A8FF7DDF9BFF7DDF9CFF7DDF
          9CFF83E5A5FF55B257F90009002A0000000A0001000E0001000E0001000E0001
          000E0001000E0001000E0001000E0001000E0001000E0001000E0001000E0001
          000E0001000E0001000E0000000E0003000F0000000000000000000000000000
          0000000000002756149870C775FF7FE19EFF78DA92FF79DA93FF79DA93FF79DA
          93FF7ADC95FF70D083FF66AE67F367AC67EE66AD67EF66AD67EF65AD66EF65AD
          65EF65AD65EF65AD65EF65AD65EF65AC65EF64AC64EF64AC64EF64AC64EF64AC
          64EF64AC64EF64AC64EF66AD67EF62AF63F02151188500000000000000000000
          0000255311976BC26CFF7BDE95FF74D68AFF75D68AFF75D68AFF75D68AFF75D6
          8AFF75D68AFF79D990FF80DF9AFF80DF9AFF80DF9AFF80DE9AFF7FDE99FF7FDE
          99FF7FDE99FF7FDE99FF81DF9BFF83E09BFF84E09DFF85E09DFF85E19EFF86E1
          9FFF86E09FFF86E09EFF85E09FFF84DE9BFF3C792FC400000000010300082352
          129165BD62FF77D88CFF70D181FF71D181FF71D181FF71D181FF71D181FF71D1
          81FF71D181FF71D181FF70D180FF6FD17FFF6ED07EFF6FD17FFF72D182FF76D3
          85FF7AD489FF7ED68CFF80D68EFF82D68FFF82D690FF82D690FF82D790FF81D7
          8FFF81D68FFF80D68EFF7FD68EFF7ED58BFF37732ABA00000000081B004459AB
          48FF76D889FF6CCC77FF6DCD79FF6DCD79FF6DCD79FF6DCD79FF6DCD79FF6DCD
          79FF6DCD79FF6CCC77FF6CCC77FF6FCE7BFF76D081FF7CD286FF81D48AFF83D5
          8CFF83D58DFF84D58EFF84D58DFF84D48DFF84D48DFF84D48DFF84D48DFF83D4
          8CFF82D48CFF82D48BFF81D48BFF7FD388FF377127BA00000000000100032041
          127369BC62FF6DCE76FF69C86EFF6AC970FF6AC970FF6AC970FF6AC970FF69C8
          6FFF68C86EFF6ECA73FF77CE7DFF7ED083FF81D186FF82D287FF82D287FF83D2
          88FF84D289FF85D389FF85D28AFF86D38AFF86D38AFF85D38AFF85D28AFF84D2
          8AFF84D289FF83D288FF82D188FF80D185FF366F24B900000000000000000000
          00001E400E7866B95DFF68CA6DFF65C465FF66C567FF66C567FF64C465FF67C5
          68FF74CA76FF7ACC7BFF7ECF80FF81D082FF82D183FF83D185FF84D286FF86D2
          87FF87D288FF87D38AFF88D38AFF88D38AFF88D38AFF88D38AFF88D38AFF87D2
          89FF86D288FF85D288FF85D288FF81D183FF346F21BD00000000000000000000
          0000000000001F400E7864B757FF64C564FF60C05DFF5FC05CFF68C366FF77C9
          75FF7ACA76FF8DD48DFF82C87EFF7BC476FF7DC578FF7FC57AFF80C57AFF81C5
          7AFF81C57BFF82C57BFF82C67BFF82C67BFF82C57BFF82C57AFF81C57AFF81C5
          79FF80C578FF7FC477FF7DC375FF81C479FF3F6F2BB500000000000000000000
          000000000000000000001F400D7862B451FF5EBF58FF68C060FF79C771FF7BC7
          73FF7CCB76FF78B667FA1D3213610C21024A0F23054C0F23054C0F23054C0F23
          054C0F23054C0F23054C0F23054C0F23054C0F23044C0F23044C0F23044C0F23
          044C0F23044C0F23044C0F23044C122506500B12071E00000000000000000000
          00000000000000000000000000001E400C7867B454FF7AC871FF77C46CFF7BC5
          70FF83CD7BFF4E9833F400000006000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000021400F7872B85EFF7EC771FF7BC3
          6CFF85CB78FF549A37F400040015000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000020400D7876B75FFF83C8
          72FF85C976FF559A37F500040016000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000020400E7879B8
          60FF8DCE7DFF559937F400040016000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002040
          0F7881BD68FF59A037FD00040016000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002848157E609840F200050012000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000060F002000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000001000200020004000400080007000D000A0012000C0017000F001D0012
          0022001500270017002C001A0030001C0034001D0036001D0037001C0035001B
          0033001A00300016002A0014002600120021000E001B000B0015000900100006
          000B000400070002000300010001000000000000000000000000000000000002
          00030006000B000A0012000E001B001300240019002E001E003800240043002A
          004E002F005900350064003B006E003F00770044007F004500820043007D003E
          00750039006B00330060002700490026004800220040001D00360017002B0012
          0022000D00180009001000040008000100020000000000000000000000000000
          00000001000100020003000300060005000A0007000E000A0013000D0018000F
          001D0012002200140026001600290017002C0019002E0019002F0019002E0017
          002C0015002700150126082B0552000B001A000B0014000A00120007000D0005
          0009000300060001000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000600134EAA50FC3868349A0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000005001967C27CFA82DFA2FF2C5D229900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000005001965BB75F599FFD8FF7AD693FF2B5B1E99000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000006001961B86DF68EF3C0FF8FF4C4FF77D38DFF2A5B1C990000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000600195FB568F68AEEB8FF84E7AEFF8BEFBBFF76D088FF2A59
          1A98000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000200135CB061F486E9AEFF81E3A5FF81E3A5FF87EBB1FF75CD
          82FF295919990000000000000000000000000000000000000000000000000000
          00000003000F0000000E0001000E0001000E0001000E0001000E0001000E0001
          000E0001000E0001000E0001000E0001000E0001000E0001000E0001000E0001
          000E0000000A0009002A55B257F983E5A5FF7DDF9CFF7DDF9CFF7DDF9BFF83E6
          A8FF74CA7CFF2857179800000000000000000000000000000000000000002151
          188562AF63F066AD67EF64AC64EF64AC64EF64AC64EF64AC64EF64AC64EF64AC
          64EF65AC65EF65AD65EF65AD65EF65AD65EF65AD65EF65AD66EF66AD67EF66AD
          67EF67AC67EE66AE67F370D083FF7ADC95FF79DA93FF79DA93FF79DA93FF78DA
          92FF7FE19EFF70C775FF27561498000000000000000000000000000000003C79
          2FC484DE9BFF85E09FFF86E09EFF86E09FFF86E19FFF85E19EFF85E09DFF84E0
          9DFF83E09BFF81DF9BFF7FDE99FF7FDE99FF7FDE99FF7FDE99FF80DE9AFF80DF
          9AFF80DF9AFF80DF9AFF79D990FF75D68AFF75D68AFF75D68AFF75D68AFF75D6
          8AFF74D68AFF7BDE95FF6BC26CFF255311970000000000000000000000003773
          2ABA7ED58BFF7FD68EFF80D68EFF81D68FFF81D78FFF82D790FF82D690FF82D6
          90FF82D68FFF80D68EFF7ED68CFF7AD489FF76D385FF72D182FF6FD17FFF6ED0
          7EFF6FD17FFF70D180FF71D181FF71D181FF71D181FF71D181FF71D181FF71D1
          81FF71D181FF70D181FF77D88CFF65BD62FF2352129101030008000000003771
          27BA7FD388FF81D48BFF82D48BFF82D48CFF83D48CFF84D48DFF84D48DFF84D4
          8DFF84D48DFF84D58DFF84D58EFF83D58DFF83D58CFF81D48AFF7CD286FF76D0
          81FF6FCE7BFF6CCC77FF6CCC77FF6DCD79FF6DCD79FF6DCD79FF6DCD79FF6DCD
          79FF6DCD79FF6DCD79FF6CCC77FF76D889FF59AB48FF081B004400000000366F
          24B980D185FF82D188FF83D288FF84D289FF84D28AFF85D28AFF85D38AFF86D3
          8AFF86D38AFF85D28AFF85D389FF84D289FF83D288FF82D287FF82D287FF81D1
          86FF7ED083FF77CE7DFF6ECA73FF68C86EFF69C86FFF6AC970FF6AC970FF6AC9
          70FF6AC970FF69C86EFF6DCE76FF69BC62FF204112730001000300000000346F
          21BD81D183FF85D288FF85D288FF86D288FF87D289FF88D38AFF88D38AFF88D3
          8AFF88D38AFF88D38AFF87D38AFF87D288FF86D287FF84D286FF83D185FF82D1
          83FF81D082FF7ECF80FF7ACC7BFF74CA76FF67C568FF64C465FF66C567FF66C5
          67FF65C465FF68CA6DFF66B95DFF1E400E780000000000000000000000003F6F
          2BB581C479FF7DC375FF7FC477FF80C578FF81C579FF81C57AFF82C57AFF82C5
          7BFF82C67BFF82C67BFF82C57BFF81C57BFF81C57AFF80C57AFF7FC57AFF7DC5
          78FF7BC476FF82C97EFF8DD48DFF7ACA76FF77C975FF68C366FF5FC05CFF60C0
          5DFF64C564FF64B757FF1F400E78000000000000000000000000000000000B12
          071E122506500F23044C0F23044C0F23044C0F23044C0F23044C0F23044C0F23
          044C0F23054C0F23054C0F23054C0F23054C0F23054C0F23054C0F23054C0F23
          054C0C21024A1D32136178B667FA7CCB76FF7BC773FF79C771FF68C060FF5EBF
          58FF62B451FF1F400D7800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000064E9833F483CD7BFF7BC570FF77C46CFF7AC871FF67B4
          54FF1E400C780000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000040015539A37F485CB78FF7BC36CFF7EC771FF72B85EFF2140
          0F78000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000040016559A37F585C976FF83C872FF76B75FFF20400D780000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000040016559937F48DCE7DFF79B860FF20400E78000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000040016599F37FD81BD68FF20400F7800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000050012609840F22848157E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000060F0020000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000001000100000000000000000000000000000000000000000000
          0000000000000001000100010001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000001000100020004000400080007000D000A0013000D0019001100200015
          00270019002E001B003305260640082C064B072C054C072D064E072D064E072C
          054D072B0847001E0038001C00340018002D0014002600110020000D0019000A
          00120006000C0004000700020004000000000000000000000000000000000000
          0000000200030005000A000A0012000E001B001300240019002E001E00380023
          0042002700490031005E3BA038EB6BCA76FC68C873FB68C873FC68C873FC6CCB
          78FC48B048F90544037A0029004F0029004C00230041001D00370018002D0013
          0023000D0019000900110005000A000100020000000000000000000000000000
          00000000000000000000000100010001000200020004000400070006000B0007
          000E0007000E000800195BAB61EE94F4C5FF8CEFBCFF8CEFBCFF8CEFBCFF93F5
          C6FF67B972F80212012A0006000D000900100007000D0005000A000400070002
          0004000100020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000055EA864E78FF0BFFF88EBB6FF88EBB6FF88EBB6FF8EF1
          BFFF65B271ED0001000B00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000095CA660E88DEEBAFF86E9B1FF86E9B1FF86E9B1FF8CEF
          BAFF63B26EEF0005001200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000095BA65EE88CECB6FF85E7ADFF85E7ADFF85E7ADFF8BED
          B6FF62B16BEF0005001200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000095AA55CE88AEAB2FF83E5A9FF83E5A9FF83E5A9FF88EB
          B2FF61AF69EF0005001200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000958A359E888E8AEFF81E3A5FF81E3A5FF81E3A5FF86E9
          AEFF61AD66EF0005001200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000957A256E886E6AAFF7FE1A1FF7FE1A1FF7FE1A1FF84E7
          AAFF60AD64EF0005001200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000956A255E884E5A6FF7DDF9DFF7DDF9DFF7DDF9DFF82E5
          A6FF5FAC61EF0005001200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000956A052E883E3A2FF7BDE99FF7CDE99FF7CDE99FF81E4
          A1FF5DAB5FEF0005001200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000009559E50E881E09EFF79DB95FF7ADB95FF7ADB95FF7FE1
          9DFF5CA95DEF0005001200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000009549E4DE87FDF9AFF79D991FF78D991FF78D991FF7DDF
          99FF5BA85AEF0005001200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000009539D4CE87EDE96FF77D88DFF77D88DFF77D88DFF7CDE
          95FF5AA757EF0005001200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000009529C49E87BDC92FF73D689FF74D689FF74D689FF79DB
          91FF59A655EF0005001200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000009509A47E87AD98EFF72D385FF73D385FF73D385FF78D8
          8DFF58A452EF0005001200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000009509A45E878D78AFF70D181FF71D181FF71D181FF76D6
          89FF56A350EF0005001200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000074F9741E776D585FF6ECF7DFF70CF7DFF70CF7DFF74D4
          85FF56A14DEE0004001100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000004C973CE874D381FF6ACD77FF6CCD78FF6DCD79FF73D3
          81FF519E47EE0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000002060010204A11912D5B229A305C2598325D2698335D
          2798325B27952C5D1FA45DAD53FA87D891FF79D082FF72CE7BFF6CCC75FF6ECF
          79FF5BB257F9275A1BA12D5920962D5A20982C5920982C591F982B591F992052
          10A0040C011B0000000000000000000000000000000000000000000000000000
          00000000000000000000000100033153228D8CC887FF88D591FF86D18CFF89D2
          8FFF8AD290FF8CD390FF90D897FF88D58EFF89D48EFF87D48DFF83D389FF7ACE
          80FF72CE7AFF69C66EFF68C56DFF6AC56FFF6AC56EFF6BCA73FF6CBC67FF3E71
          2ABD0104000A0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000294A1C7D88CA84FF8DD893FF89D3
          8CFF8BD48FFF8CD590FF8DD591FF8DD591FF8DD591FF8CD590FF8CD58FFF8BD4
          8FFF87D38BFF7DD082FF6FCB74FF65C76AFF69CC71FF67BF65FF30661EAD0002
          0005000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000002A491B7D8ECB88FF96DB
          9BFF91D593FF93D795FF93D795FF93D795FF93D795FF92D794FF91D692FF8ED5
          91FF8CD48FFF8BD48EFF88D28AFF80D386FF6BBF67FF30651CAC000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000029481A7D92CC
          8BFF9EDDA1FF98D798FF9AD89AFF9AD89AFF99D89AFF98D898FF97D797FF95D6
          96FF92D592FF8ED48EFF92D894FF83C87EFF346621AD00000004000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002848
          197D96CD8EFFA6DFA8FF9FD99EFFA0DA9FFF9FDA9FFF9FD99DFF9DD89BFF9AD8
          9AFF97D696FF9BDB9CFF88C982FF33661FAD0000000400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002747187D9BCE91FFAEE2AFFFA5DBA3FFA6DCA4FFA5DBA3FFA3DAA1FFA0D9
          9DFFA5DEA5FF90CB88FF33651FAD000000040000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002646167D9FCF94FFB6E5B6FFABDDA8FFACDDA9FFA9DCA6FFAFE1
          ADFF98CE8FFF33651FAD00000004000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000026481582A1D095FFBDE6BCFFB0DEABFFB8E4B6FF9FD1
          95FF33651FAD0000000400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000024461282A3CF96FFCAEECAFFA4D29BFF3364
          1FAD000000030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002344127B96C086FA396424A40000
          0003000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000020470988020900110000
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
          0000000000000000000000000002000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000004040536565555A61A1A1A440000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000909093C888787D7C7C6C4FFCAC9C8F62525253D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000D0D
          0D43939291DFC1C0BFFFDFDFDFFFE1E1E0FF9E9E9EB500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000F0F0F479D9C
          9BE6BDBBBAFFDDDDDDFFDBDADAFFD9D9D8F93E3E3E4900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000101010499E9E9DE6B9B8
          B6FFD3D3D2FFD3D2D2FFDCDBDAFD4E4E4E5A0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000011111147A1A1A0E6B5B4B2FFC8C7
          C6FFC7C7C6FFDADADAFF5D5C5C67000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000C0C0C3CA1A1A0E4B2B0AEFFB9B8B6FFBCBC
          BBFFDADAD9FF6666666E00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000404042C959594D8AFAEACFFA9A8A6FFB0AFADFFD9D9
          D8FF717171780000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000001B7F7F7EC5B0AEADFF989695FFA7A6A4FFD9D8D8FF6C6C
          6C70000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00070000000E0000000D00000002000000000000000000000000000000000000
          00000000000F636363ABB4B3B1FF888684FFA3A2A0FFD7D7D7F85C5C5C5F0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000110000004E272626904E4E
          4EBB606161CA606262CA4C4E4EB82827278B0201014000000000000000000000
          00054F4F4F96B9B8B7FF7D7A79FFA5A4A2FFCFCFCFE742424244000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000004B4B4B4BBEABADADFCD8D5D5FFEBE2
          DFFFF2E5E0FFF3E5E0FFECE3DFFFD7D5D4FFACADAEFF4C4C4BB70000002B0505
          0533B7B6B5FB8D8B8AFFAEADACFFBFBFBFCD2626262700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000312121175929393F1E9E4E3FFFAE1D8FFF0C9B9FFEBBE
          ACFFE9BCA9FFE9BCA9FFEBBEACFFF1CABBFFFCE4DCFFE8E5E4FF858787E97B79
          78CFD6D4D3FFC6C5C4FFA1A1A1A80D0D0D0E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001110106FAEB0B0FFF9ECE7FFEFC5B5FFE7B8A4FFECC4B0FFF0CE
          B9FFF1D2BDFFF0D2BDFFEFCEB8FFEBC4AFFFE7B7A3FFEFC6B7FFF9EDEAFFBFC0
          C1FF757473CE2728272F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000003B969697F3F6E7E2FFE9BEADFDEBC5B3FEEFD3BEFDF2DAC4FDF5E0
          CAFEF7E1CCFEF6E2CBFEF5E0C9FEF4DBC6FEF0D2BDFEE8BEA9FEE9BCABFDF6EA
          E7FF858787DC0000000D00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0002494B4BB2E0DAD8FED5B0A3E3DDC2B3EBE0CABBE8DECCBAE5DFCFBBE4E1D3
          BFE5E1D4C0E5E1D4C0E5E1D2BEE5E0CFBCE5DDCAB6E5D9C1AEE5D0AB97E4D6B0
          A3E3E2DFDEFF4F4F4F9900000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000303
          0331A5A5A6F6C0AAA2CDC7AEA3D3D1C3B9D7CABDAFCFC6BAAAC9C1B6A4C3C1B8
          A7C3C3BAA8C4C3BAA8C4C2B9A8C4C2B7A6C4C1B3A2C4BDAD9CC4B9A293C4AF8B
          7CC1C9B5AFCFA5A7A8EC0707071D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002828
          2870BAB6B5F19E867CA9CFC3BED4C3BAB3C8BBB3A8BEB2AA9DB3A49C8DA5A49D
          8FA5A59F90A6A59F90A6A59E8FA6A59D8FA6A49B8CA6A19788A69F8F81A6987F
          73A5987E74A1BEBCBBEF302F2F63000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004A4B
          4B93A19896CA998780A1D4CFCCD7BBB5B0BEB0A9A2B1A6A297A78C877B8D8983
          77898B85798B8B86798B8A85788B8A84788B8A83778B8880748B867A6F8B816F
          658A78605781AAA3A2CD58585898000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000006060
          60A4807775A8998C869DDBD8D7DBBAB5B1BBB0ADA7B1908C85916C675D6C6F6B
          616F706C6270706C6270706C6270706B6170706A60706E685E706C645A706A5D
          5470604C44668D8784AF6A6B6BAE000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000005F5F
          5FA26C65629891858194E6E5E4E6CBC9C6CC88857F8955524A5669655F695552
          4A5557544C5758554D5858554D5858544C5858544C5857524A58554E47585248
          4157493A334C7C7674A56D6C6CAF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004D4D
          4D8B6D6968A66B625E70FFFFFFFF908D8A913A36313B8886828883817E834441
          3B443D3A353D403D3840403D3840403D37403F3C37403F3B36403E3833403C34
          2F3F30252133797574B55E5E5E97000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002D2D
          2D54878787D4332C2944A4A29FA4302D2A32A19F9DA1A4A3A1A4848381845250
          4D5222201C222A28242A2B29252B2B29252B2A28242B2A27232B2925212B2621
          1D261B14112B898988DB3B3B3B62000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000404
          040F979697E2201E1D5216141216C5C3C2C5D6D6D6D6A3A2A2A3878685876D6C
          6B6D292826290F0E0C0F18171418171513171816141816141217161412170909
          09092523225B969695E70B0B0B17000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000059585883777677CB03030211CAC9C8CAF2F2F2F2B2B2B2B2919190917575
          757554545354100F0F1001010001070606070807060807060507000000000000
          000E777677D3605F5F8F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000005040408969696D53D3D3E9407060610B4B4B4B5E4E4E4E4AEAEAEAE8383
          8383676767674646464612121212000000000000000000000000000000024040
          419C989797DE0606060E00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000019181825A8A7A7F04040419F000000145858585A9E9E9E9E9B9B
          9B9B7E7E7E7E606060603E3E3E3E0B0B0B0B000000000000001A434344A5A4A3
          A4F21C1C1C300000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000018181824959494D1777778E20E0E0E660000002B1211
          112B1B1B1B2D121212220302021A0000002A1A1A1A73777777E0969596D81B1B
          1A2E000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000020202065E5D5D7B979697E0808081EA5353
          54C43B3A3BAC3C3B3CAC555556C6828282EB989898E2605F5F840303030A0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000005050508393838485F5E
          5E7F706F6F9A716F709C605F5F813B3A3A4E0707070D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
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
          00000000000000000000000000000000000000000000F1E3DEFFDCB8ABFFE4C4
          B4FFE7C2AEFFE0A28CFFD48066FFD57F6EFFDF9A85FFDC9A83FFD77F6CFFD996
          80FFE7C2B0FFE4C7B9FFE0B8A1FFD88970FFD87F6AFFE5AB9AFFE1AA95FFD474
          5CFFE1A898FFFAF8F6FF00000000000000000000000000000000000000000000
          000000000000000000000000000000000000FBFCFBFFE7CEC3FFE4BAAAFFDFAD
          9BFFE8C1ADFFE3B29EFFD69680FFDB988DFFE5AB9AFFDD9B86FFD8886FFFD591
          79FFE9CEC0FFE2BCAFFFDFA68FFFE29581FFDE9887FFD48D81FFD66E5DFFD879
          5EFFDB9B84FFECDDD7FF00000000000000000000000000000000000000000000
          000000000000000000000000000000000000EEDCD6FFD9947EFFE09C82FFD690
          7DFFDBA594FFE7BDADFFD7A291FFD9A08CFFE2A38EFFE39E89FFDA9278FFDB85
          71FFDD9E8AFFDEAE94FFDEA491FFDFA08AFFD99C89FFDEAA9DFFDA947FFFE0B8
          A2FFDEA997FFF0D5CBFF00000000000000000000000000000000000000000000
          00000000000000000000FDFFFFFFF8F5F3FFDFA89AFFD3816BFFDEA18AFFDBA1
          8EFFD28773FFD88A72FFD18E7EFFD8AE9AFFDEA688FFDA7B6AFFDAA18FFFE5AB
          97FFDC8A6DFFD17B5EFFD58A74FFDD9A84FFE09F8DFFEABAA7FFE5BBA9FFE4B9
          ACFFDEA08CFFF0D9CAFFFAFAF8FFFCFFFFFF0000000000000000000000000000
          0000000000000000000000000000F4EBE7FFD6A392FFDA9F8CFFDEAE9EFFD997
          86FFD58C76FFD78F7BFFDEA993FFE2BFA9FFDC9D87FFCE6B59FFD78A78FFE3A4
          90FFD68169FFD4654CFFD4846DFFDC9E8DFFDD8370FFE0A185FFE0B2A0FFD47E
          6EFFDC9585FFE9D1BCFFF5F7F1FF000000000000000000000000000000000000
          0000000000000000000000000000F3E7E0FFDCA996FFD4846EFFD6937EFFDAA4
          91FFDCB09AFFE9C9B9FFE6B196FFDD9E89FFDEAD9EFFD19A83FFD48167FFD985
          70FFD38775FFDD9379FFDB9076FFD39180FFD28F7FFFD4826FFFE8BBAAFFDA8D
          7CFFDFAB93FFE2C0A9FFF7F5EFFFFDFFFFFF0000000000000000000000000000
          00000000000000000000F9F6F5FFDDB5AAFFDDA896FFE0B398FFD78871FFDC94
          82FFDFB1A0FFDC9884FFD9977FFFDEA491FFDA9281FFD28A79FFDEA892FFD79A
          82FFD79782FFE7C0A4FFDF9B82FFD18775FFDAAA97FFDEA38EFFD58D7AFFDA9C
          88FFE4BBA0FFDBB29AFFEEE1D7FF000000000000000000000000000000000000
          00000000000000000000EEDFDCFFD09484FFDBA08DFFDEA590FFDC8B78FFE2AF
          9DFFDBAA9CFFD58E76FFD58D73FFD38D76FFD4826CFFD57E72FFDA9486FFD78D
          7AFFD9A58DFFE1A792FFD98671FFCF7565FFD8887DFFDA9C89FFD69E86FFE8C1
          B0FFDCAA96FFD4947CFFDEB3A1FFF6F4EFFF0000000000000000000000000000
          00000000000000000000EFE6E2FFE4C6B5FFE19D88FFD67D6CFFD48A78FFDDB1
          99FFD8977CFFD5967DFFD7957FFFD1816AFFD37E6CFFDE9989FFD69983FFDA9E
          88FFD88774FFD16455FFD98873FFD18170FFD16E61FFD66E60FFE2AC96FFE7C1
          ADFFD4897CFFD18371FFD7A48FFFEAD9CDFF0000000000000000000000000000
          00000000000000000000F3ECE9FFEACFC5FFD9A48EFFD89D89FFE0B7A3FFDDA8
          92FFDC9D88FFDA998BFFD98F7FFFD16B5CFFD68974FFDDA088FFDA9683FFDDA6
          90FFD17661FFD0715EFFDA9985FFDDA08CFFDC917AFFD78170FFE2A091FFDB99
          85FFD69385FFDEA091FFDFAB9AFFEEDED3FF0000000000000000000000000000
          00000000000000000000EFE2DBFFE0B4A7FFD79E8EFFE3C7B3FFD9B19EFFD79B
          8AFFDCA899FFDFB2A1FFDB8A7AFFD77D6FFFD5967FFFD89E81FFDBA48FFFD689
          77FFD37B6AFFD67865FFD77C63FFD78E78FFDEA890FFDAA48DFFDEB5A2FFDEB1
          A4FFD8837CFFDC8F7EFFDEAD94FFF2E4D5FF0000000000000000000000000000
          00000000000000000000E7C9C6FFCF8377FFE6C0B1FFDCAC97FFD28A78FFE0AC
          9EFFDFA79CFFDA9A88FFD98E7EFFE2B4A2FFDCA894FFD9917BFFD49A88FFDBA7
          98FFDD9786FFDB8B77FFD77663FFDC8C7DFFD27E72FFCD7262FFDDA993FFE5C1
          B2FFD57E70FFDB9D85FFDFAC93FFEAC7BBFFFEFBF9FF00000000000000000000
          00000000000000000000F1E6E2FFDEBCACFFDCB39DFFD6836FFFD2816EFFDCA3
          8DFFEAC4B5FFDC9B89FFDA8D7DFFE0B09FFFD69987FFD68A78FFDEACA2FFE6C6
          B6FFDC9880FFD9725BFFD67762FFDB9482FFCF7164FFD17A6BFFE0A48FFFE09A
          86FFD68D76FFDFAD98FFE8C6B7FFF4E6DDFFFBFDFAFFFCFFFFFF000000000000
          000000000000FDFCFCFFF3ECE4FFEAD7CAFFDC9F8FFFD97D70FFE2AA9DFFD797
          83FFD5917FFFD8A595FFE6AF9CFFDF9C87FFE1B2A5FFD89686FFE1A093FFE3B0
          99FFDDA98AFFD47259FFD9786DFFD99686FFE2AB94FFE1B29CFFD77D69FFDA72
          5BFFDFA591FFE8C6B8FFEECCBFFFEEDACBFFEFEFE9FFF9FFFFFF000000000000
          00000000000000000000EEDFD6FFDBB6A5FFE5BEB0FFE5AEA4FFE1B2A6FFDFB7
          A9FFD79C8EFFD8A290FFDEAE9BFFDD9B87FFDB9583FFD69380FFD98C7AFFDC89
          77FFDE9A84FFDDA08EFFD99086FFD8A192FFDFBAA4FFE0AF98FFDD967AFFDD9D
          87FFDB9083FFE4BAA9FFE4A796FFDB9786FFEEDCD8FF00000000000000000000
          00000000000000000000EAC7C1FFD99D89FFE8CBBAFFE4BBACFFD8A792FFEDE5
          D9FFEACDC4FFCE8673FFD79686FFE1A494FFDD9E8CFFDCA795FFD38676FFD36D
          5BFFD88872FFE8C5B2FFDBA18BFFD58974FFD7836EFFD78D79FFDDA48FFFDA9F
          8FFFD5796EFFDD978AFFDEA393FFDC988AFFEED4D0FF00000000000000000000
          000000000000FEFCFCFFE6B8B2FFD58876FFDD9B8FFFD99182FFD39180FFEAD6
          C8FFE1B7AEFFE0AB9AFFE6B6A3FFEBCEC1FFDCB3A3FFDBA08FFFDAA38FFFD39C
          85FFD6937BFFDA8E7DFFDA9787FFDD8974FFD97962FFDA8974FFDA8A79FFDA8C
          79FFD67F6EFFD68C7AFFE5B4A1FFE7C7B8FFF4F0EDFF00000000000000000000
          000000000000FEFDFDFFE8C9BBFFD3927DFFDE9A8FFFE0BEAAFFDEB6A6FFE6BE
          B4FFDCA492FFDB9C89FFDEA798FFE2B2A4FFDFBAAAFFD9A99BFFE4C3B5FFE0B9
          A0FFDEA389FFD2806DFFD48270FFDC917CFFDD9A88FFDB927DFFD98771FFD88E
          7EFFDF9885FFD9937BFFE2A791FFE6CFBFFFF5F4F2FF00000000000000000000
          000000000000FBF8F7FFE2C4B7FFDEAE9DFFD69385FFE5C0ABFFE0BFACFFE5C5
          B7FFE3B9AAFFD79788FFDB9E8EFFDA9B89FFD89888FFE3BBB0FFE2C2B5FFE2BE
          ADFFE2B7A7FFDEAB99FFDDAD97FFDEB9A5FFE1BDABFFDBA08BFFDB8776FFD67D
          6CFFE0A89BFFE7C3B4FFDA9987FFDDA595FFEEE2DEFF00000000000000000000
          000000000000FBF6F5FFE4C3B6FFDEBEAEFFD8AFA3FFDBA595FFDA9D86FFE1AD
          9EFFDCA19AFFD09287FFE4C6BBFFDCB1A0FFDCA493FFDFA99AFFD5A092FFDBBA
          B1FFE4C6BBFFE0AEA1FFDFBAAAFFE9D7C4FFDEAB9AFFD88A7EFFD9887CFFD689
          76FFDCA898FFE6C9B8FFD68D7CFFDFA094FFF9F3F0FF00000000000000000000
          000000000000FEFBFAFFEBD0C7FFE6C9BBFFEADBD1FFDEB5A6FFE1A590FFDCA3
          91FFDBB2A6FFDEB9ACFFE7CDC1FFE0BAB0FFE0B7A8FFCFA591FFD5A496FFDDB4
          A9FFD9AD9EFFDAAA98FFDBAB9BFFDEAE9DFFE4B5A4FFDB988BFFD38479FFD288
          79FFDC9E8CFFD79A85FFDDA995FFEACCC3FFFAF7F6FF00000000000000000000
          00000000000000000000EFDFD8FFE6B5A7FFE5B6ADFFE3CDC1FFE6CCC3FFDDB7
          A9FFE2C4B5FFEBC5B6FFE4B4A6FFDEB6A8FFE3C2B6FFD99F91FFC47C6EFFD19C
          8AFFD89B8DFFD7A192FFD9B09FFFDBA495FFD8988BFFDDAF9FFFE7B2A2FFD78E
          7FFFD48C7AFFD99C8DFFDEB5A8FFEEDDD3FFFEFDFBFF00000000000000000000
          00000000000000000000F0DFD8FFDEAE9CFFE5BCA8FFDDA997FFDB9B89FFE5C2
          AEFFE7C9BCFFE3A89CFFDFA899FFE0B4A5FFDAA99AFFDF9A8FFFD7A193FFD8A8
          95FFDEA191FFDCB7ADFFD49F96FFD78679FFD99887FFE4BDACFFE2B3A3FFD89B
          87FFD8A38FFFE3BEAFFFE19D93FFE9C7BFFFFEFCFCFF00000000000000000000
          00000000000000000000EFD4D3FFDDA99DFFE7C2B1FFDCA595FFD99B88FFDDA8
          91FFEED4C6FFDFB1A5FFD7A08EFFDFAC9EFFD69182FFDE9287FFEBC6BAFFDEB8
          A8FFD59E8EFFDDB8AFFFDBB1A8FFDBA296FFD48977FFE19488FFDB9A8CFFD69F
          8AFFE7C4B1FFE4B0A1FFDC9283FFE4BAACFFFAF5F2FF00000000000000000000
          00000000000000000000F8F4F2FFE3B9A9FFD8988BFFDEAEA5FFEAC0B3FFE2A1
          97FFE0B6A6FFD39283FFDD9E8EFFE1B8AAFFDEA89FFFD79489FFE1B1A5FFE4B6
          A9FFDEA596FFDA9484FFDBB4A4FFDBB4ADFFD5978BFFD99180FFD88C7EFFE0A7
          96FFE2AC9AFFE3AE9FFFE2B19BFFDAA592FFF2E3E1FF00000000000000000000
          00000000000000000000FAF5F3FFE0A995FFD57E6CFFE0AB9EFFE9CBBBFFE2B0
          A4FFD99B8DFFD28077FFD88E82FFE3B3A7FFE9C3BAFFE9C3B6FFE0B7A9FFD8AB
          9CFFD18D7EFFD38272FFE0A597FFE1B8AFFFE3C2B7FFE1A898FFE1A18FFFE29D
          89FFDA8F83FFDCA191FFE4BAA8FFE1BCB1FFF5ECEBFF00000000000000000000
          00000000000000000000F6F4F3FFE8C0B2FFD4786BFFD99E91FFE6C5B9FFE4C2
          B1FFD89785FFDDA299FFE8B9ADFFE1AA9DFFE1B3A8FFE2C2B7FFDFB6ACFFDA96
          84FFD4937CFFD08878FFD18B7AFFDEB2A6FFE5C0B7FFDF9B90FFDA948BFFDA8E
          80FFD88374FFDB9285FFD89787FFE5BBB4FFFDFBFBFF00000000000000000000
          00000000000000000000F7FAF9FFE4BBB2FFD98C7EFFE0B3A3FFE7C5B8FFE2A2
          91FFD89380FFE7BFB2FFE6BEB4FFDEA49FFFDEA19FFFDEBAB1FFD7B6A9FFDCA0
          91FFE3A798FFE4B9AEFFD69083FFD68C7DFFDF9485FFDC8F88FFE2A69BFFE2B0
          A3FFDA8E81FFDFA695FFDFA08FFFF0DDD8FFFDFFFFFF00000000000000000000
          00000000000000000000F9FAF9FFE1C0B3FFDFA292FFE8BDAFFFEBC9BAFFDDA0
          8EFFDA9F89FFE2A996FFE2AF9EFFE4BDB2FFE3BDB4FFE3C1B5FFE1B7ABFFDCB0
          A0FFE3B0A0FFE7B5AEFFDC9E95FFDC9C88FFE2A392FFE8AFA3FFE5ACA0FFDF9D
          92FFE09D96FFE1AEA2FFE4BAA5FFF3EEE7FF0000000000000000000000000000
          00000000000000000000FDFFFFFFEBD1CEFFD68A7BFFE0B5A5FFE5BAABFFE0A1
          92FFE2AD9FFFE4B7AAFFE3B4A5FFE0AA9AFFE9CDC0FFE4BDAEFFD9958BFFE5BF
          B2FFE5BDAFFFDBA191FFE2B7A7FFE3ABA4FFDD9791FFE6B0A4FFDB8F83FFDF98
          89FFE4A293FFDA8F82FFDFB0A5FFFAF8F6FF0000000000000000000000000000
          00000000000000000000FEFCFCFFE9B7B7FFD18475FFCEA08FFFE4BDB0FFDD8D
          7BFFE0A09CFFE4C3B8FFDCA695FFE7BAB0FFE5BBB3FFD2867DFFD6A497FFDFBC
          AFFFD29B8EFFCE8C7BFFE6C1B4FFDA898AFFCD5E55FFEDC9BFFFE4BBB4FFD061
          4FFFE1917EFFF2D3C5FFD6A09CFFF8EFF0FF0000000000000000000000000000
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
          000000000000000000000000000000000000000000000F0905102E1B0F324326
          154963351D6C733B207E70371C7C70351A7C7031177E542410693213083D0A04
          020B000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000060302063B23143F794B2B83B36F40C1D3824AE4EC8D50FFEB88
          4CFFEA8347FFE97D43FFE8753DFFE76F37FFE36631FFD05625FFD95625FFBB48
          20DF6F2813891507031B00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002F1A
          0E33874E2C92CB7C46DBED9556FFED9858FFEE9A5AFFEE9859FFED9555FFEC8F
          51FFEB894CFFEA8146FFE87A41FFE7733AFFE36933FFDA5D2AFFE15A28FFD854
          25FFCF4C23FFAA3C1CDA0B04020F000000000000000000000000000000000000
          000000000000000000000000000000000000000000000E070310914F2A9FEA85
          4AFFEC8C50FFED9456FFEE9C5BFFEFA160FFEFA360FFEFA05FFFEE9C5BFFED95
          55FFEC8D4FFFEA8549FFE77D43FFE6753CFFE56C35FFE1632EFFE15C2AFFDA54
          26FFD24F24FFC04822F213060319000000000000000000000000000000000000
          00000000000000000000000000000000000004020104AB5930BBE97E44FFEB88
          4CFFEC9052FFEE9858FFEFA05FFFF1A865FFF1AB68FFF0A764FFEFA05FFFED97
          58FFEC8F51FFEB874BFFE87F44FFE6773EFFE66E37FFE46631FFE25E2AFFDD59
          28FFCC4F26FF9A361ACD00000000000000000000000000000000000000000000
          00000000000000000000000000000000000023120A27EA8755FEEA8246FFEB8A
          4DFFEC9052FFEE995AFFEFA260FFF1AA67FFF2B06BFFF0AA67FFEFA15FFFEE99
          59FFEC9152FFEB884BFFE87F45FFE5773EFFE77038FFE56731FFDE5D29FFD352
          25FFBF4220FF7C2A14A500000000000000000000000000000000000000000000
          00000000000000000000000000000000000021120B24D6734EF5E36E37FFEC86
          49FFED9354FFEE9A5AFFEFA15FFFF0A865FFF0AA67FFF0A664FFEF9F5EFFED97
          57FFEC8F51FFEB874CFFE98046FFE4763DFFE66D36FFE25E2AFFD45123FFCD4B
          22FFC04320FF5D210F7A00000000000000000000000000000000000000000000
          00000000000000000000000000000000000009050309C36645E3D75226FFDA59
          24FFE57E4AFFEF935CFFEC8C4DFFEE9455FFEE9959FFEE9959FFEE9758FFED94
          55FFEC8E51FFEB864AFFE97D43FFE06E37FFE16631FFDF5F2FFFCD4B1EFFCA47
          1EFFBF411EFF3C160A4E00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000A45C41BCD55830FFD54C
          1BFFDA5D2BFFE56E3AFFE46C32FFE9783DFFEA8346FFEB8A4EFFEC8D51FFEB8C
          50FFEA864AFFE97E43FFE8763DFFE16A33FFD95D2AFFE3774EFFCF6845FFD06B
          4EFFBC4D30F31506031A00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000079473388D56340FFD75D
          32FFE38059FFED9D7AFFECA787FFF1B08FFFF1AC88FFEF9F73FFEC9260FFEB89
          53FFE87D44FFE7743CFFE66D36FFE5642EFFD4511DFFD87451FFEECBC0FFE6BA
          ADFF8E4732AD0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003C201342E08C70FFE08F
          76FFEA9B80FFE8997CFFDF8A66FFE17D4FFFE57743FFE87640FFE8733BFFE771
          39FFE77038FFE66A34FFE56631FFE46432FFDC5E30FFDA886DFFF2D7CFFFCF95
          85E81B0701230000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000007044327CD07C
          5DEBDE734EFFDD6B44FFDE693EFFDE5B27FFE2602BFFE56630FFE66832FFE668
          32FFE5642EFFE56532FFE67145FFE37B57FFDE8164FFDB856BFFA75C47C61E06
          0027000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001209
          041360372469AA6143BDE48360FCE26B40FFE15825FFE35D2AFFE35D2AFFE35B
          28FFE15D2CFFE27047FFE48768FFE49982FFDF876CFF70311C87010000030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000D03000E5E28146DD75A29F8D95627FFD65124FFD64F
          22FFD85F37FFDD8063FFE49A82FFBF735AD53D190C4600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000180F0B186544366C6C544A748D695893E07847FCD35A25FFCC5224FFCA4D
          23FFD36846FFDF886BFF8E4F389F0B00000D0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000082371F9CCF6039FFDC7446FFE07D4FFFE79772FFDF835CFFCA5825FFC753
          22FFD9744BFFA35538B900000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000503
          0205A84225E1BC401CFFD05629FFCB5B29FFD3622BFFDF7C4EFFD97249FFBE4B
          1DFFC7582DFF7737218800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002E15
          0D37B24B2EFEBA3F1CFFCF5329FFCE6231FFC46330FFCB622DFFD56A37FFCF5C
          2EFFB5441BFF712D168F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000005A30
          256FA8452AFFB13919FFC84C25FFD55B2CFFD06734FFC06432FFC35D2EFFCE5D
          2EFFC35226FF8B3215C100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008A4F
          41AEA04027FFA43215FFBE4321FFC95026FFD65C2EFFD56634FFC96132FFC65B
          2DFFD86532FFC95428F71606031E000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000001000001A863
          52DB9B3820FF9E3015FFAF381BFFBD4321FFC74D26FFD1562AFFD65E2EFFD660
          31FFD76030FFD0562AFF49190C62000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000F070513B56E
          5DECAA391FFFB13719FFB0381BFFB2381CFFB83E1FFFBF4622FFC44A25FFC44C
          27FFC34A25FFBE4422FF782814A6000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000F080616C078
          66EDBF4221FFC03E1AFFC03F1CFFB83C1CFFB1371BFFB0381DFFB33A1EFFB33A
          1DFFB33A1DFFB0381DFF952E17DB000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000D050416C270
          5BEECC512BFFD35F39FFD15B35FFC64722FFB83B1BFFAD351BFFAA3219FFAB37
          1FFFB04731FFB14932FFA03019F00D0302150000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000003000005B460
          4AE2DD805EFFE6A88CFFE49C80FFD7704FFFC04422FFAE3418FFA7361FFFB250
          3BFFBA6857FFB96351FF9F2F1AF30F03011A0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000007F41
          32A5E19B7EFFF4E0D2FFF1D3C4FFE49C84FFCA5C3EFFAF3419FFAD4833FFBA6A
          5AFFC38073FFB76453FF8E2816DF010000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003423
          2145DFA38EFFF2D4C4FFF7E6DEFFE7AC99FFCC6B51FFAD341BFFAB4835FFB668
          59FFD9B1A9FFD0998FFF652C2398000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000795C5790D37E63FFE19A83FFDA8E78FFBF5740FFA52E18FFAC5242FFD3A8
          9FFFF8F1EFFFD2B2AEF0180C0B26000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000054190F83AC381EF8B44228FFA8321AFFA1321DFFAA5545FFC489
          7EFFBA9A96DC3126263D00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000110100253F0D066F60150CA5691C12B3541811933411
          0D580600000D0000000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000002
          0003000B0015000B001C215521825BAC69DB5BAC68DB21572085000F0023000E
          001B000400080000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000300060001000436673C8C85E9AEFF86E9AEFF36683C8E000200060004
          0008000100010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000E0E0E1D1313132639653C927EE09FFF7EE09EFF3A673D95121212241212
          1224121212241212122412121224121212241212122412121224121212241212
          1224121212241212122412121224121212241212122412121224121212241010
          10241010102410101024111111260D0D0D1E00000000000000000206010B050C
          0417AAB0A9D1D4DAD3F792C295FA79DB92FF7ADB93FF8FC192FAD3D7D0F5D2D7
          D0F5D1D7D0F5D4D8D4F4DCDCDCF4DCDCDCF4DCDCDBF4DCDBDBF4DBDBDBF4DBDB
          DBF4DBDBDBF4DBDBDBF4DBDBDBF4DCDCDBF4DCDCDCF4D9D9D9F4DBDBDBF4E1E1
          E1F4E8E8E8F4EBEBEBF4EBEBEBF6B9B9B9CC0000000200000000386B329D74BE
          7DEB84CF8DFC86D28FFF7BD188FF74D588FF72D586FF6FCE7DFF79CC81FF79CC
          82FF79CC82FF8EC388FFECEBEAFFEBEAE9FFE9E9E7FFE8E8E6FFE7E6E4FFE6E5
          E3FFE4E4E2FFE2E2E1FFE1E0DEFFE6E5E3FFEDEDEBFFEEEDEDFFE5E5E5FFD6D6
          D6FFCBCBCBFFCCCCCCFFE2E2E2FFCBCBCBD800000002000000004D8444BC99DF
          A4FF99E0A5FF96E0A3FF94DFA1FF8BD895FF83D58EFF80D88EFF77D586FF71D3
          82FF70D280FF7CBC72FFEBE9E8FFE7E6E5FFE6E5E3FFE6E4E2FFE4E3E1FFE2E0
          DFFFE1DFDDFFE1E0DEFFE1E1DFFFE0DFDDFFE7E6E4FFF3F2F1FFFDFDFCFFFEFE
          FEFFEFEFEFFFD0D0D0FFA0A0A0FF999999D40000000200000000395D2E8A6FA2
          6ECE9ACB98F7A3D5A1FF98D196FF94D999FF90D895FF8FCD8CFF8FC589FF85C7
          84FF7BC177FF91BA83FFD3CFCDFFDCDAD9FFDBD8D7FFD2CFCDFFCCC8C6FFD8D5
          D4FFD5D2D1FFCDC9C7FFE1DFDEFFE1E1DFFFE0DFDDFFE6E5E3FFF0EFEEFFFBFA
          F9FFFFFFFFFFFFFFFFFFDFDFDFFF8C8C8CD40000000200000000020101030001
          000AC5C7C4D7FCFCFCFFA8C39CFF99D898FF93D692FFADBF90FFECDCD5FFF1F4
          F2FFF0F0EEFFEDECEBFFDEDBDAFFF4F4F3FFF1F1F0FFE6E4E2FFDDDBDAFFEEEE
          EDFFEDECEBFFD5D3D1FFE0DEDCFFE4E3E1FFE1E1DEFFE0DFDDFFE6E4E4FFF0EF
          EEFFFAF9F8FFFFFFFFFFF3F3F3FF919191D40000000200000000000000000000
          0003CCCCCCD6FFFFFFFFA7C69CFFA1D99DFF9BD796FFABC290FFF1E1DBFFF8FA
          FBFFF7F7F7FFF0EFEEFFE0DDDCFFF5F5F5FFF3F2F1FFE7E6E4FFDFDCDBFFF0EF
          EEFFEEEDECFFD8D6D5FFE4E3E1FFE7E7E5FFE6E5E3FFE5E4E2FFE3E1E0FFE8E8
          E7FFF3F3F1FFFDFCFBFFFEFEFEFFA1A1A1D40000000200000000000000000000
          0003CCCCCCD6FFFFFFFFABC69EFFA8D79DFFA0D396FFA6BA8BFFE0D0CAFFE5E5
          E5FFE4E2E2FFDFDBDAFFD2CCCCFFE3E0DFFFE0DEDCFFD7D2D1FFCFCAC9FFDDDB
          D9FFDCD9D8FFC9C5C3FFD3CFCEFFD6D3D2FFD6D1D0FFCDCAC8FFD1CECCFFD0CE
          CCFFD2CFCDFFE6E4E3FFFFFFFFFFB2B2B2D40000000200000000000000000000
          0003CCCCCCD6FFFFFFFFCBD2BDFFA1B586FFA3B888FFCFC8AAFFEBDCD5FFF2F4
          F4FFF1F1F0FFEAE9E8FFDBD8D7FFF0EFEEFFEDECEBFFE2DFDEFFD9D7D6FFE9E9
          E8FFE9E7E6FFD3D1CFFFDEDDDBFFE2E1DFFFE1DFDEFFCBC7C6FFDCDBD9FFDDDC
          DAFFD2D0CEFFD4D1D0FFF6F6F5FFBDBDBDD40000000200000000000000000000
          0003CCCCCCD6FFFFFFFFEEE7E5FFF7DCCEFFFFE6D9FFFEE1D2FFF4E5DFFFFBFD
          FEFFFBFBFAFFF3F2F1FFE3E0DFFFF8F9F8FFF5F6F5FFEBE8E8FFE3E0DEFFF3F3
          F2FFF2F1F0FFDCD9D7FFE7E6E5FFEBEAE9FFEAE9E7FFD5D2D0FFE5E4E2FFE6E5
          E4FFDBDAD8FFD2CFCDFFEBEBE9FFBCBCBAD40000000200000000000000000000
          0003CCCCCCD6FFFFFFFFEEE7E4FFF2D7CAFFFDE2D5FFFBDED0FFF1E1DCFFF8F9
          FAFFF8F6F6FFF0EFEDFFE1DDDCFFF5F4F4FFF2F1F0FFE8E5E4FFE0DEDEFFF1F1
          F1FFF0EFF0FFDAD7D6FFE4E3E1FFE8E7E5FFE8E6E3FFD3CFCDFFE2E1DFFFE4E2
          E0FFD9D7D5FFD2CFCDFFE5E4E2FFB8B7B5D40000000200000000000000000000
          0003CCCCCCD6FFFFFFFFEDE6E3FFEED2C6FFF9DDD1FFF7DACEFFEEDED8FFF5F4
          F4FFF4F2F2FFEEEAEAFFDFDADAFFF2F0F0FFF1EEEBFFE1DFE5FFACBAE2FFB7C8
          F0FFB4C5EFFFB0BADBFFE4E0DEFFE6E2E1FFE5E1E0FFD0CCCAFFDFDCDBFFE1DE
          DCFFD6D2D1FFD3D0CEFFE6E5E3FFB3B3B1D40000000200000000000000000000
          0003CCCCCCD6FFFFFFFFEEE7E5FFF6DBCEFFFFE6D9FFFFE3D5FFF7E9E2FFFFFF
          FFFFFEFFFEFFF7F6F6FFE6E3E2FFFDFDFDFFFBFBF8FFE9EAF2FFA7BBE7FFB2C8
          F4FFAEC5F2FFADBCE2FFEEEDEBFFEFEFEDFFEEEDEDFFD8D6D4FFE9E8E7FFEAEA
          E8FFE0DEDDFFD6D3D2FFE7E6E4FFB4B3B1D40000000200000000000000000000
          0003CCCCCCD6FFFFFFFFEEE7E4FFF8DBCDFFFFE7D9FFFFE3D4FFF8E9E2FFFFFF
          FFFFFFFFFFFFF9F9F9FFE9E5E5FFFFFFFFFFFFFEFCFFEBEDF5FFA9BEEBFFB5CB
          F7FFB1C8F5FFAEBFE5FFF1EFEEFFF2F2F1FFF1F0EFFFDBD8D7FFECECEAFFEDED
          ECFFE2E1DFFFD8D4D3FFE9E7E6FFB5B4B3D40000000200000000000000000000
          0002CCCCCCD6FFFFFFFFECE6E5FFE3CEC5FFEDD9CFFFECD6CDFFE6DAD6FFEDEA
          EAFFEDEAEAFFE7E4E3FFD8D3D2FFEBEAE9FFEAE8E6FFDBD9DFFFA6B5DCFFB2C3
          EAFFAFC0E8FFAAB5D6FFDDDAD9FFDFDDDCFFDFDBDBFFCAC6C5FFD9D7D6FFDBD8
          D7FFD2CFCDFFD8D4D2FFEBEAE8FFB5B5B3D30000000100000000000000000000
          0002CBCBCBD5FFFFFFFFFEFEFEFFF9FAFBFFF9FAFBFFF9FAFBFFF9FAFAFFF9F8
          F8FFFAF9F9FFF3F2F1FFE3DFDFFFF9F9F8FFF6F6F6FFECE9E8FFE5E2E2FFF5F5
          F6FFF5F4F4FFDEDBDAFFE8E6E5FFECECEAFFECEAE9FFD6D3D2FFE6E5E3FFE8E6
          E5FFDDDBDAFFD9D7D5FFEBEBE9FFB7B6B4D30000000100000000000000000000
          0007D0D0D0DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFAF9F9FFE9E7E6FFFFFFFFFFFFFFFFFFF5F3F2FFECEAE9FFFEFE
          FDFFFCFCFCFFE5E3E1FFF1F0F0FFF6F5F5FFF5F4F3FFDDDBDAFFEFEFEEFFF1F1
          EFFFE5E5E3FFDBD9D8FFEEEDECFFBDBDBBD90000000600000000000000000000
          000AD2D2D2DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFAF9F9FFE4E0DFFFF8F7F7FFF8F7F8FFEEEBEBFFE5E3E2FFF6F5
          F5FFF5F4F4FFDFDCDBFFEAE9E8FFEFEEEDFFEDECEBFFDEDAD9FFE9E8E7FFEAE9
          E8FFDFDDDCFFDBD8D7FFEFEEEDFFC2C2C0DE0000000A00000000000000000000
          000AC7C7C7DEF2F2F2FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
          F0FFF0F1F1FFF0EFEFFFE0DEDEFFDFDDDCFFDFDDDDFFDDDBDAFFDCD9D8FFDCD9
          D9FFDBD8D8FFD8D5D5FFD7D5D4FFD7D5D4FFD5D3D3FFD4D0CFFFD3D0CFFFD2D0
          CFFFCFCCCBFFD9D7D6FFE1E0DFFFB9B8B7DE0000000A00000000000000000000
          0008B1B6BCDCD9DEE5FFD7DCE2FFD7DCE2FFD7DCE2FFD7DCE1FFD7DCE1FFD7DC
          E1FFD7DCE0FFD7DCE0FFDADFE3FFDADFE3FFDADFE2FFDBE0E3FFD9DEE2FFD7DD
          E0FFD7DCDFFFD6DCDFFFD4DADDFFD3D8DBFFD1D7DBFFD1D7DAFFCFD6D8FFCDD5
          D7FFCDD4D7FFCAD2D4FFC8D0D2FFA5ACADDC0000000800000000000000000302
          010DB0A18EE1D1C1ACFFCFBFADFFCFBFAEFFCFC0B0FFCFC0B1FFCFC1B2FFCFC1
          B4FFCFC1B5FFCFC2B7FFCFC2B9FFCFC3BBFFCFC4BCFFCFC5BEFFCFC5BEFFCEC3
          BBFFCDC1B9FFCCBFB6FFCBBCB3FFCABAB2FFC9B8AEFFC8B5ACFFC7B3AAFFC7B1
          A7FFC6AEA4FFC5ACA1FFC5AAA0FFA68D84E10402010D00000000000000001A11
          0422EC8904F5FE8F02FFFE8D05FFFE8B07FFFE8909FFFE880CFFFE870FFFFE85
          11FFFE8513FFFE8316FFFE8119FFFE801CFFFE801EFFFE7F22FFFE7C22FFFE78
          1FFFFE741CFFFE701AFFFE6C17FFFE6714FFFE6312FFFE5F0FFFFE5B0DFFFE55
          0AFFFD5107FFFE4C05FFFE4703FFEC4005F51A0A042200000000000000001A11
          0422EE8C02F5FF9000FFFF8D00FFFF8900FFFF8500FFFF8300FFFF8000FFFF7D
          00FFFF7900FFFF7600FFFF7300FFFF7000FFFF6D00FFFF6900FFFF6600FFFF64
          00FFFF6100FFFF5E00FFFF5B00FFFF5800FFFF5600FFFF5400FFFF5100FFFF4E
          00FFFF4C00FFFF4900FFFF4600FFEE4202F51A0A042200000000000000001911
          0421EC8E04F4FF9200FFFF8F00FFFF8B00FFFF8800FFFF8500FFFF8200FFFF7F
          00FFFF7C00FFFF7900FFFF7600FFFF7300FFFF7000FFFF6C00FFFF6900FFFF67
          00FFFF6400FFFF6200FFFF5F00FFFF5C00FFFF5900FFFF5700FFFF5400FFFF51
          00FFFF4E00FFFF4C00FFFF4900FFEC4404F4190A042100000000000000001C13
          0424F79605FFFF9502FFFF9203FFFF9105FFFF8E07FFFF8C08FFFF8A0AFFFF88
          0BFFFF860DFFFF840FFFFF8210FFFF8011FFFF7E13FFFF7D15FFFF7A15FFFF76
          14FFFF7311FFFF6F10FFFF6B0FFFFF670DFFFF640CFFFF600AFFFF5C09FFFF59
          07FFFF5505FFFF5004FFFF4C02FFF74905FF1C0B042400000000000000001E0E
          01208C4D028E925005929150089191500C9191500F9191501391915116919151
          1A9191521D9191522091915424919155279191552B9191572F9191562F919152
          2B9191502791914D2491914A209191471D9191441A9191401791913D13919139
          0F9191360C9191330991922F05928F2B02911707011900000000000000000000
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
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object qryAGCita: TADQuery
    Active = True
    IndexFieldNames = 'PacienteID'
    MasterSource = dsPaciente
    MasterFields = 'ID'
    DetailFields = 'PacienteID'
    Connection = dmGIPSci.connGIPS
    SQL.Strings = (
      'Select * from vAGCita order by Fecha,Hora')
    Left = 80
    object qryAGCitaPacienteID: TIntegerField
      FieldName = 'PacienteID'
      Origin = 'PacienteID'
      Required = True
    end
    object qryAGCitaDocIDPaciente: TStringField
      FieldName = 'DocIDPaciente'
      Origin = 'DocIDPaciente'
      ReadOnly = True
      Required = True
      Size = 24
    end
    object qryAGCitaPaciente: TStringField
      FieldName = 'Paciente'
      Origin = 'Paciente'
      ReadOnly = True
      Size = 8000
    end
    object qryAGCitaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object qryAGCitaFecha: TDateField
      FieldName = 'Fecha'
      Origin = 'Fecha'
      ReadOnly = True
    end
    object qryAGCitaHora: TTimeField
      FieldName = 'Hora'
      Origin = 'Hora'
      ReadOnly = True
    end
    object qryAGCitaFechaHora: TSQLTimeStampField
      FieldName = 'FechaHora'
      Origin = 'FechaHora'
    end
    object qryAGCitaDuracionPrevista: TIntegerField
      FieldName = 'DuracionPrevista'
      Origin = 'DuracionPrevista'
    end
    object qryAGCitaFechaHoraReal: TSQLTimeStampField
      FieldName = 'FechaHoraReal'
      Origin = 'FechaHoraReal'
    end
    object qryAGCitaDuracionReal: TIntegerField
      FieldName = 'DuracionReal'
      Origin = 'DuracionReal'
    end
    object qryAGCitaFechaFinReal: TSQLTimeStampField
      FieldName = 'FechaFinReal'
      Origin = 'FechaFinReal'
      ReadOnly = True
    end
    object qryAGCitaTipoCitaID: TIntegerField
      FieldName = 'TipoCitaID'
      Origin = 'TipoCitaID'
    end
    object qryAGCitaTipoCita: TStringField
      FieldName = 'TipoCita'
      Origin = 'TipoCita'
      Size = 50
    end
    object qryAGCitaTipoConsultaID: TIntegerField
      FieldName = 'TipoConsultaID'
      Origin = 'TipoConsultaID'
    end
    object qryAGCitaTipoConsulta: TStringField
      FieldName = 'TipoConsulta'
      Origin = 'TipoConsulta'
      Size = 50
    end
    object qryAGCitaProfesionalID: TIntegerField
      FieldName = 'ProfesionalID'
      Origin = 'ProfesionalID'
    end
    object qryAGCitaDocIDProf: TStringField
      FieldName = 'DocIDProf'
      Origin = 'DocIDProf'
      Size = 15
    end
    object qryAGCitaProfesional: TStringField
      FieldName = 'Profesional'
      Origin = 'Profesional'
      ReadOnly = True
      Size = 57
    end
    object qryAGCitaEstadoCitaID: TIntegerField
      FieldName = 'EstadoCitaID'
      Origin = 'EstadoCitaID'
    end
    object qryAGCitaEstadoCita: TStringField
      FieldName = 'EstadoCita'
      Origin = 'EstadoCita'
      Size = 50
    end
    object qryAGCitaTurno: TIntegerField
      FieldName = 'Turno'
      Origin = 'Turno'
    end
    object qryAGCitaObservaciones: TStringField
      FieldName = 'Observaciones'
      Origin = 'Observaciones'
      ReadOnly = True
      Size = 356
    end
    object qryAGCitaMotivoID: TIntegerField
      FieldName = 'MotivoID'
      Origin = 'MotivoID'
    end
    object qryAGCitaAseguradoraID: TIntegerField
      FieldName = 'AseguradoraID'
      Origin = 'AseguradoraID'
    end
    object qryAGCitaLlegada: TSQLTimeStampField
      FieldName = 'Llegada'
      Origin = 'Llegada'
    end
    object qryAGCitaRetardo: TIntegerField
      FieldName = 'Retardo'
      Origin = 'Retardo'
      ReadOnly = True
    end
    object qryAGCitaDemora: TIntegerField
      FieldName = 'Demora'
      Origin = 'Demora'
      ReadOnly = True
    end
  end
  object dsCita: TDataSource
    AutoEdit = False
    DataSet = qryAGCita
    Left = 128
    Top = 1
  end
  object SaveDialog1: TSaveDialog
    Left = 608
    Top = 16
  end
  object PopupMenu1: TPopupMenu
    Left = 649
    Top = 3
    object Exportartodo1: TMenuItem
      Caption = 'Exportar lista...'
      object explstXLS: TMenuItem
        Caption = 'Excel XLS'
        OnClick = explstXLSClick
      end
      object explstXLSX: TMenuItem
        Caption = 'Excel XLSX'
        OnClick = explstXLSXClick
      end
      object explstHTML: TMenuItem
        Caption = 'HTML'
        OnClick = explstHTMLClick
      end
      object explstXML: TMenuItem
        Caption = 'XML'
        OnClick = explstXMLClick
      end
      object explstTXT: TMenuItem
        Caption = 'TXT'
        OnClick = explstTXTClick
      end
    end
    object Exportarseleccin1: TMenuItem
      Caption = 'Exportar selecci'#243'n...'
      object expselXLS: TMenuItem
        Caption = 'Excel XLS'
        OnClick = expselXLSClick
      end
      object expselXLSX: TMenuItem
        Caption = 'Excel XLSX'
        OnClick = expselXLSXClick
      end
      object expselHTML: TMenuItem
        Caption = 'HTML'
        OnClick = expselHTMLClick
      end
      object expselXML: TMenuItem
        Caption = 'XML'
        OnClick = expselXMLClick
      end
      object expselTXT: TMenuItem
        Caption = 'TXT'
        OnClick = expselTXTClick
      end
    end
    object Copiartodoalapizarra1: TMenuItem
      Caption = 'Copiar lista a la pizarra'
      OnClick = Copiartodoalapizarra1Click
    end
    object Copiarseleccinalapizarra1: TMenuItem
      Caption = 'Copiar selecci'#243'n a la pizarra'
      OnClick = Copiarseleccinalapizarra1Click
    end
  end
end
