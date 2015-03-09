inherited frmHuella: TfrmHuella
  Align = alClient
  BorderStyle = bsSingle
  Caption = 'Verificaci'#243'n de Paciente por Huella Dactilar'
  ClientHeight = 522
  ClientWidth = 574
  FormStyle = fsNormal
  Visible = True
  OnCreate = FormCreate
  ExplicitTop = -81
  ExplicitWidth = 580
  ExplicitHeight = 551
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottom: TPanel
    Top = 482
    Width = 574
    ExplicitTop = 482
    ExplicitWidth = 574
    inherited btnCancelar: TcxButton
      Left = 488
      ExplicitLeft = 494
    end
    inherited btnAplicar: TcxButton
      Left = 282
      Visible = False
      ExplicitLeft = 282
    end
    inherited btnGuardar: TcxButton
      Left = 368
      Caption = 'Escoger'
      OptionsImage.ImageIndex = 5
      OnClick = btnGuardarClick
      ExplicitLeft = 368
    end
    inherited lblMensaje: TcxLabel
      ExplicitWidth = 282
      Width = 282
      AnchorY = 20
    end
  end
  object gbx: TcxGroupBox [1]
    Left = 0
    Top = 0
    Align = alLeft
    Caption = 'Buscar por huella'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 1
    ExplicitTop = -6
    Height = 482
    Width = 153
    object DPFPVerificationControl: TDPFPVerificationControl
      Left = 49
      Top = 75
      Width = 48
      Height = 47
      Hint = 'Ingrese su huella....'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnComplete = DPFPVerificationControlComplete
      ControlData = {
        00080000F6040000DC04000008004E0000007B00300030003000300030003000
        300030002D0030003000300030002D0030003000300030002D00300030003000
        30002D003000300030003000300030003000300030003000300030007D000000
        0B000100}
    end
    object rchedtHuella: TRichEdit
      Left = 2
      Top = 18
      Width = 149
      Height = 39
      ParentCustomHint = False
      TabStop = False
      Align = alTop
      BiDiMode = bdLeftToRight
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        'Por favor ponga su dedo en '
        'el lector'
        ''
        ''
        ''
        '')
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 1
      StyleElements = []
    end
  end
  object pnlContent: TPanel [2]
    Left = 153
    Top = 0
    Width = 421
    Height = 482
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object cxGroupBox1: TcxGroupBox
      Left = 0
      Top = 0
      Align = alTop
      Caption = 'Buscar por n'#250'mero de identificaci'#243'n'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      ExplicitLeft = 4
      Height = 57
      Width = 421
      object edtDocID: TcxSpinEdit
        Left = 6
        Top = 33
        ParentCustomHint = False
        ParentFont = False
        ParentShowHint = False
        Properties.SpinButtons.Visible = False
        ShowHint = True
        Style.ButtonTransparency = ebtAlways
        TabOrder = 0
        Width = 155
      end
      object cxLabel1: TcxLabel
        Left = 6
        Top = 14
        ParentCustomHint = False
        Caption = 'N'#250'mero de documento'
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object btnBuscar: TcxButton
        Left = 189
        Top = 16
        Width = 132
        Height = 38
        ParentCustomHint = False
        Caption = 'Buscar'
        OptionsImage.ImageIndex = 12
        OptionsImage.Images = imgListDlg32
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = btnBuscarClick
      end
    end
    object grdPaciente: TcxGrid
      Left = 0
      Top = 57
      Width = 421
      Height = 425
      Align = alClient
      TabOrder = 1
      Visible = False
      object lvwPaciente: TcxGridDBLayoutView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsPaciente
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.NoDataToDisplayInfoText = '<No hay datos para mostrar>'
        object lvwPacienteID1: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'ID'
          Visible = False
          LayoutItem = lvwPacienteLayoutItem1
        end
        object lvwPacienteTipoDocID1: TcxGridDBLayoutViewItem
          Caption = 'Tipo'
          DataBinding.FieldName = 'TipoDocID'
          LayoutItem = lvwPacienteLayoutItem2
        end
        object lvwPacienteDocID1: TcxGridDBLayoutViewItem
          Caption = 'N'#250'mero'
          DataBinding.FieldName = 'DocID'
          LayoutItem = lvwPacienteLayoutItem3
        end
        object lvwPacientePaciente1: TcxGridDBLayoutViewItem
          Caption = 'Apellidos y Nombres'
          DataBinding.FieldName = 'Paciente'
          LayoutItem = lvwPacienteLayoutItem4
        end
        object lvwPacienteFechaNacimiento1: TcxGridDBLayoutViewItem
          Caption = 'Fecha Nacimiento'
          DataBinding.FieldName = 'FechaNacimiento'
          LayoutItem = lvwPacienteLayoutItem5
        end
        object lvwPacienteEdad1: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'Edad'
          LayoutItem = lvwPacienteLayoutItem6
        end
        object lvwPacienteSEXO1: TcxGridDBLayoutViewItem
          Caption = 'Sexo'
          DataBinding.FieldName = 'SEXO'
          LayoutItem = lvwPacienteLayoutItem7
        end
        object lvwPacienteFoto1: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'Foto'
          PropertiesClassName = 'TcxImageProperties'
          Properties.Stretch = True
          LayoutItem = lvwPacienteLayoutItem8
        end
        object lvwPacienteTelResidencia1: TcxGridDBLayoutViewItem
          Caption = 'Tel Residencia'
          DataBinding.FieldName = 'TelResidencia'
          LayoutItem = lvwPacienteLayoutItem9
        end
        object lvwPacienteTelTrabajo1: TcxGridDBLayoutViewItem
          Caption = 'Tel Trabajo'
          DataBinding.FieldName = 'TelTrabajo'
          LayoutItem = lvwPacienteLayoutItem10
        end
        object lvwPacienteResponsable1: TcxGridDBLayoutViewItem
          Caption = 'Apellidos y Nombres'
          DataBinding.FieldName = 'Responsable'
          LayoutItem = lvwPacienteLayoutItem11
        end
        object lvwPacienteTelCasaResp1: TcxGridDBLayoutViewItem
          Caption = 'Tel Casa'
          DataBinding.FieldName = 'TelCasaResp'
          LayoutItem = lvwPacienteLayoutItem12
        end
        object lvwPacienteNITAseguradora1: TcxGridDBLayoutViewItem
          Caption = 'NIT'
          DataBinding.FieldName = 'NITAseguradora'
          LayoutItem = lvwPacienteLayoutItem13
        end
        object lvwPacienteNombreAseguradora1: TcxGridDBLayoutViewItem
          Caption = 'Nombre'
          DataBinding.FieldName = 'NombreAseguradora'
          LayoutItem = lvwPacienteLayoutItem14
        end
        object lvwPacienteGroup_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Template Card'
          CaptionOptions.Visible = False
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object lvwPacienteLayoutItem1: TcxGridLayoutItem
          Index = -1
        end
        object lvwPacienteLayoutItem2: TcxGridLayoutItem
          CaptionOptions.Layout = clTop
          Parent = lvwPacienteGroup1
          Index = 0
        end
        object lvwPacienteLayoutItem3: TcxGridLayoutItem
          CaptionOptions.Layout = clTop
          Parent = lvwPacienteGroup1
          Index = 1
        end
        object lvwPacienteLayoutItem4: TcxGridLayoutItem
          CaptionOptions.Layout = clTop
          Parent = lvwPacienteGroup6
          SizeOptions.Width = 234
          Index = 0
        end
        object lvwPacienteLayoutItem5: TcxGridLayoutItem
          CaptionOptions.Layout = clTop
          Parent = lvwPacienteGroup3
          SizeOptions.Width = 124
          Index = 0
        end
        object lvwPacienteLayoutItem6: TcxGridLayoutItem
          CaptionOptions.Layout = clTop
          Parent = lvwPacienteGroup3
          SizeOptions.Width = 19
          Index = 1
        end
        object lvwPacienteLayoutItem7: TcxGridLayoutItem
          CaptionOptions.Layout = clTop
          Parent = lvwPacienteGroup3
          Index = 2
        end
        object lvwPacienteLayoutItem8: TcxGridLayoutItem
          CaptionOptions.Visible = False
          Parent = lvwPacienteGroup2
          SizeOptions.Height = 85
          Index = 0
        end
        object lvwPacienteLayoutItem9: TcxGridLayoutItem
          CaptionOptions.Layout = clTop
          Parent = lvwPacienteGroup7
          SizeOptions.Width = 97
          Index = 0
        end
        object lvwPacienteLayoutItem10: TcxGridLayoutItem
          CaptionOptions.Layout = clTop
          Parent = lvwPacienteGroup7
          SizeOptions.Width = 98
          Index = 1
        end
        object lvwPacienteLayoutItem11: TcxGridLayoutItem
          CaptionOptions.Layout = clTop
          Parent = lvwPacienteGroup8
          SizeOptions.Width = 280
          Index = 0
        end
        object lvwPacienteLayoutItem12: TcxGridLayoutItem
          CaptionOptions.Layout = clTop
          Parent = lvwPacienteGroup8
          Index = 1
        end
        object lvwPacienteLayoutItem13: TcxGridLayoutItem
          CaptionOptions.Layout = clTop
          Parent = lvwPacienteGroup9
          SizeOptions.Width = 109
          Index = 0
        end
        object lvwPacienteLayoutItem14: TcxGridLayoutItem
          CaptionOptions.Layout = clTop
          Parent = lvwPacienteGroup9
          SizeOptions.Width = 260
          Index = 1
        end
        object lvwPacienteGroup1: TdxLayoutGroup
          CaptionOptions.Text = 'Documento de identidad'
          Parent = lvwPacienteGroup6
          SizeOptions.Height = 40
          SizeOptions.Width = 280
          ButtonOptions.Buttons = <>
          LayoutDirection = ldHorizontal
          Index = 1
        end
        object lvwPacienteGroup2: TdxLayoutGroup
          CaptionOptions.Text = 'Foto'
          CaptionOptions.Visible = False
          Parent = lvwPacienteGroup5
          SizeOptions.Height = 105
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object lvwPacienteGroup3: TdxLayoutGroup
          CaptionOptions.Text = 'Datos b'#225'sicos'
          Parent = lvwPacienteGroup_Root
          SizeOptions.Width = 208
          ButtonOptions.Buttons = <>
          LayoutDirection = ldHorizontal
          Index = 1
        end
        object lvwPacienteGroup5: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          CaptionOptions.Visible = False
          Parent = lvwPacienteGroup_Root
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object lvwPacienteGroup6: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          CaptionOptions.Visible = False
          Parent = lvwPacienteGroup5
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object lvwPacienteGroup7: TdxLayoutGroup
          CaptionOptions.Text = 'Tel'#233'fonos'
          Parent = lvwPacienteGroup_Root
          ButtonOptions.Buttons = <>
          LayoutDirection = ldHorizontal
          Index = 2
        end
        object lvwPacienteGroup8: TdxLayoutGroup
          CaptionOptions.Text = 'Responsable'
          Parent = lvwPacienteGroup_Root
          ButtonOptions.Buttons = <>
          LayoutDirection = ldHorizontal
          Index = 3
        end
        object lvwPacienteGroup9: TdxLayoutGroup
          CaptionOptions.Text = 'Aseguradora'
          Parent = lvwPacienteGroup_Root
          ButtonOptions.Buttons = <>
          LayoutDirection = ldHorizontal
          Index = 4
        end
      end
      object lvPaciente: TcxGridLevel
        GridView = lvwPaciente
      end
    end
  end
  inherited imgListDlg32: TcxImageList
    FormatVersion = 1
  end
  object qryHuella: TADQuery
    Connection = dmGIPSci.connGIPS
    Left = 25
    Top = 136
  end
  object qryPaciente: TADQuery
    Active = True
    Connection = dmGIPSci.connGIPS
    SQL.Strings = (
      'select * from vPacientesparanuevacita')
    Left = 17
    Top = 184
  end
  object dsHuella: TDataSource
    AutoEdit = False
    DataSet = qryHuella
    Left = 73
    Top = 136
  end
  object dsPaciente: TDataSource
    AutoEdit = False
    DataSet = qryPaciente
    Left = 73
    Top = 184
  end
  object cxEditRepository1: TcxEditRepository
    Left = 24
    Top = 296
    object rpitmFoto: TcxEditRepositoryImageItem
      Properties.GraphicClassName = 'TJPEGImage'
      Properties.GraphicTransparency = gtTransparent
      Properties.Stretch = True
    end
  end
end
