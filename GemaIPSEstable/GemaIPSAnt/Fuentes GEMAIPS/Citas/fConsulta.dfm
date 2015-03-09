object frmConsulta: TfrmConsulta
  Left = 0
  Top = 0
  Caption = 'Consulta'
  ClientHeight = 485
  ClientWidth = 769
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlRight: TPanel
    Left = 0
    Top = 0
    Width = 769
    Height = 485
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = -80
    ExplicitTop = -109
    ExplicitWidth = 787
    ExplicitHeight = 488
  end
  object lytctrlConsulta: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 769
    Height = 485
    Align = alClient
    TabOrder = 1
    AutoSize = True
    ExplicitLeft = -80
    ExplicitTop = -109
    ExplicitWidth = 787
    ExplicitHeight = 488
    object gridCita: TcxGrid
      Left = 515
      Top = 51
      Width = 431
      Height = 423
      TabOrder = 3
      object lvCita: TcxGridLevel
        GridView = btvCitas
      end
    end
    object grdProfs: TcxGrid
      Left = 10
      Top = 33
      Width = 479
      Height = 121
      Align = alClient
      TabOrder = 1
      object tvProf: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Visible = fvNever
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Presione aqu'#237' para definir un filtro'
        FilterRow.SeparatorColor = clYellow
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsView.NoDataToDisplayInfoText = '<No hay datos para mostrar>'
        OptionsView.GroupByBox = False
        object tvProfNR_IDENT_MEDICO: TcxGridDBColumn
          Caption = 'DocID'
          DataBinding.FieldName = 'NR_IDENT_MEDICO'
          Width = 74
        end
        object tvProfPRIMER_APELLIDO: TcxGridDBColumn
          Caption = 'Primer Apellido'
          DataBinding.FieldName = 'PRIMER_APELLIDO'
          Width = 100
        end
        object tvProfSEGUND_APELLIDO: TcxGridDBColumn
          Caption = 'Segundo Apellido'
          DataBinding.FieldName = 'SEGUND_APELLIDO'
          Width = 100
        end
        object tvProfPRIMER_NOMBRE: TcxGridDBColumn
          Caption = 'Primer Nombre'
          DataBinding.FieldName = 'PRIMER_NOMBRE'
          Width = 100
        end
        object tvProfSEGUND_NOMBRE: TcxGridDBColumn
          Caption = 'Segundo Nombre'
          DataBinding.FieldName = 'SEGUND_NOMBRE'
          Width = 100
        end
      end
      object lvProfs: TcxGridLevel
        GridView = cvProfs
      end
    end
    object lblCitas: TcxLabel
      Left = 515
      Top = 28
      Align = alTop
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.Shadow = False
      Style.TextColor = clHotLight
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      AnchorX = 576
      AnchorY = 37
    end
    object lblProfs: TcxLabel
      Left = 10
      Top = 10
      Align = alTop
      Caption = 'Profesionales'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.Shadow = False
      Style.TextColor = clHotLight
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      AnchorX = 20
      AnchorY = 19
    end
    object lygrpRoot: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object lytitmCitasGrilla: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Cita'
      CaptionOptions.Visible = False
      CaptionOptions.VisibleElements = [cveText]
      CaptionOptions.Layout = clTop
      Parent = lytgrpCitas
      Control = gridCita
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lytitmProfGrilla: TdxLayoutItem
      AlignVert = avClient
      CaptionOptions.Text = '&Espec'#237'fico'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = lytgrpIzq
      AllowRemove = False
      Control = grdProfs
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lytitmCitasCaption: TdxLayoutItem
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = lytgrpCitas
      Control = lblCitas
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lytgrpCitas: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Parent = lygrpRoot
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object lytspltrCitas: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = lygrpRoot
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object lytgrpIzq: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = lygrpRoot
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object lytitmProfCaption: TdxLayoutItem
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = lytgrpIzq
      Control = lblProfs
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 464
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle23: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle24: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle25: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle26: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle27: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle28: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle29: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle30: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle31: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle32: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle33: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle34: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle35: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle36: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle37: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle38: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle39: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16749885
      TextColor = clWhite
    end
    object cxStyle40: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object GridBandedTableViewStyleSheetDevExpress: TcxGridBandedTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle15
      Styles.Content = cxStyle18
      Styles.ContentEven = cxStyle19
      Styles.ContentOdd = cxStyle20
      Styles.FilterBox = cxStyle21
      Styles.Inactive = cxStyle26
      Styles.IncSearch = cxStyle27
      Styles.Selection = cxStyle30
      Styles.Footer = cxStyle22
      Styles.Group = cxStyle23
      Styles.GroupByBox = cxStyle24
      Styles.Header = cxStyle25
      Styles.Indicator = cxStyle28
      Styles.Preview = cxStyle29
      Styles.BandBackground = cxStyle16
      Styles.BandHeader = cxStyle17
      BuiltIn = True
    end
    object GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle31
      Styles.Content = cxStyle34
      Styles.ContentEven = cxStyle35
      Styles.ContentOdd = cxStyle36
      Styles.Inactive = cxStyle37
      Styles.IncSearch = cxStyle38
      Styles.Selection = cxStyle40
      Styles.CaptionRow = cxStyle32
      Styles.CardBorder = cxStyle33
      Styles.RowCaption = cxStyle39
      BuiltIn = True
    end
  end
  object cxEditRepository1: TcxEditRepository
    Left = 24
    Top = 65528
    object rpitmFoto: TcxEditRepositoryImageItem
      Properties.GraphicClassName = 'TJPEGImage'
      Properties.GraphicTransparency = gtTransparent
      Properties.Stretch = True
    end
    object rpitmFecha: TcxEditRepositoryDateItem
      Properties.DisplayFormat = 'dd/mm'
      Properties.SaveTime = False
      Properties.ShowOnlyValidDates = True
      Properties.ShowTime = False
      Properties.WeekNumbers = True
    end
    object rpitmHora: TcxEditRepositoryTimeItem
      Properties.SpinButtons.Visible = False
      Properties.TimeFormat = tfHourMin
    end
    object rpitmEstado: TcxEditRepositoryImageComboBoxItem
      Properties.Images = imgList16
      Properties.Items = <
        item
          Description = 'Programada'
          ImageIndex = 6
          Value = 1
        end
        item
          Description = 'Reprogramada'
          ImageIndex = 26
          Value = 2
        end
        item
          Description = 'Asisti'#243
          ImageIndex = 8
          Value = 3
        end
        item
          Description = 'Atendi'#233'ndose'
          ImageIndex = 7
          Value = 4
        end
        item
          Description = 'Cumplida'
          ImageIndex = 5
          Value = 5
        end
        item
          Description = 'No asisti'#243
          ImageIndex = 27
          Value = 6
        end
        item
          Description = 'Cancelada'
          ImageIndex = 40
          Value = 7
        end
        item
          Description = 'No atendido'
          ImageIndex = 41
          Value = 8
        end>
    end
    object rpitmFechaHora: TcxEditRepositoryDateItem
      Properties.DisplayFormat = 'dd/mm/yy hh:nn'
    end
    object rpitmRangoFecha: TcxEditRepositoryDateItem
      Properties.DateButtons = []
      Properties.DisplayFormat = 'dd/mm/yyyy'
      Properties.InputKind = ikStandard
      Properties.ShowOnlyValidDates = True
      Properties.ShowTime = False
    end
    object rpitmBtTurno: TcxEditRepositoryButtonItem
      Properties.Buttons = <
        item
          Default = True
          Kind = bkGlyph
        end>
      Properties.Images = imgList16
      Properties.ReadOnly = False
    end
  end
  object qryAGCita: TADQuery
    Connection = dmGIPSci.connGIPS
    SQL.Strings = (
      'Select * from vAGCita order by Fecha,Hora')
    Left = 80
    Top = 65520
  end
  object dsCita: TDataSource
    AutoEdit = False
    DataSet = qryAGCita
    Left = 144
    Top = 65529
  end
  object lytLookAndFeellst: TdxLayoutLookAndFeelList
    Left = 200
    object dxLayoutOfficeLookAndFeel1: TdxLayoutOfficeLookAndFeel
    end
    object dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel
    end
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
    end
    object dxLayoutWebLookAndFeel1: TdxLayoutWebLookAndFeel
    end
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
    end
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 272
    Top = 65529
    object cvProfs: TcxGridDBCardView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
      DataController.DataSource = dmGIPSci.dsProf
      DataController.Filter.Options = [fcoCaseInsensitive, fcoSoftCompare]
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.RowFilteredItemsList = True
      LayoutDirection = ldVertical
      OptionsCustomize.RowExpanding = False
      OptionsView.NoDataToDisplayInfoText = '<No hay datos para mostrar>'
      OptionsView.CardIndent = 7
      OptionsView.ShowRowFilterButtons = sfbAlways
      RowLayout = rlVertical
      Styles.StyleSheet = GridCardViewStyleSheetDevExpress
      object cvProfsEspecialidad: TcxGridDBCardViewRow
        DataBinding.FieldName = 'Especialidad'
        Kind = rkCaption
        Options.Moving = False
        Options.ShowCaption = False
        Position.BeginsLayer = True
      end
      object cvProfsFoto: TcxGridDBCardViewRow
        DataBinding.FieldName = 'Foto'
        PropertiesClassName = 'TcxImageProperties'
        Properties.Stretch = True
        RepositoryItem = rpitmFoto
        Options.Editing = False
        Options.Focusing = False
        Options.Expanding = False
        Options.Moving = False
        Options.ShowCaption = False
        Position.BeginsLayer = False
        Position.LineCount = 4
      end
      object cvProfsPrimerApellido: TcxGridDBCardViewRow
        Caption = 'Primer Apellido'
        DataBinding.FieldName = 'PrimerApellido'
        Kind = rkCaption
        Options.Editing = False
        Options.Focusing = False
        Options.Expanding = False
        Options.Moving = False
        Options.ShowCaption = False
        Position.BeginsLayer = True
        SortIndex = 0
        SortOrder = soAscending
      end
      object cvProfsSegundoApellido: TcxGridDBCardViewRow
        Caption = 'Segundo Apellido'
        DataBinding.FieldName = 'SegundoApellido'
        Options.Editing = False
        Options.Focusing = False
        Options.Expanding = False
        Options.Moving = False
        Options.ShowCaption = False
        Position.BeginsLayer = False
        SortIndex = 1
        SortOrder = soAscending
      end
      object cvProfsPrimerNombre: TcxGridDBCardViewRow
        Caption = 'Primer Nombre'
        DataBinding.FieldName = 'PrimerNombre'
        Options.Editing = False
        Options.Focusing = False
        Options.Expanding = False
        Options.Moving = False
        Options.ShowCaption = False
        Position.BeginsLayer = False
        SortIndex = 2
        SortOrder = soAscending
      end
      object cvProfsSegundoNombre: TcxGridDBCardViewRow
        Caption = 'Segundo Nombre'
        DataBinding.FieldName = 'SegundoNombre'
        Options.Editing = False
        Options.Focusing = False
        Options.Expanding = False
        Options.Moving = False
        Options.ShowCaption = False
        Position.BeginsLayer = False
        SortIndex = 3
        SortOrder = soAscending
      end
      object cvProfsDocIDProf: TcxGridDBCardViewRow
        Caption = 'DocID'
        DataBinding.FieldName = 'DocIDProf'
        Options.Editing = False
        Options.Focusing = False
        Options.Expanding = False
        Options.Moving = False
        Options.ShowCaption = False
        Position.BeginsLayer = False
      end
      object cvProfsID: TcxGridDBCardViewRow
        DataBinding.FieldName = 'ID'
        Visible = False
        Kind = rkCaption
        Options.Editing = False
        Options.Focusing = False
        Options.Expanding = False
        Options.Moving = False
        Options.ShowCaption = False
        Position.BeginsLayer = False
      end
    end
    object btvCitas: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsCita
      DataController.Filter.Options = [fcoCaseInsensitive, fcoSoftCompare]
      DataController.KeyFieldNames = 'ID'
      DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'Citas: 0'
          Kind = skCount
          FieldName = 'ID'
          Column = btvCitasTipoCita
        end>
      DataController.Summary.SummaryGroups = <>
      DateTimeHandling.DateFormat = 'dd/mm/yyyy'
      DateTimeHandling.Grouping = dtgByDate
      FilterRow.InfoText = 'Presione aqu'#237' para definir un filtro'
      FilterRow.Visible = True
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
      Preview.Column = btvCitasObservaciones
      Preview.Visible = True
      Styles.FilterRowInfoText = cxStyle24
      Styles.Header = cxStyle25
      Styles.StyleSheet = GridBandedTableViewStyleSheetDevExpress
      Bands = <
        item
          Caption = 'Cita'
          Options.HoldOwnColumnsOnly = True
          Options.Moving = False
          Options.Sizing = False
        end
        item
          Caption = 'Paciente'
          Options.HoldOwnColumnsOnly = True
          Options.Moving = False
          Options.Sizing = False
        end
        item
          Caption = 'Profesional'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Atenci'#243'n'
          Options.HoldOwnColumnsOnly = True
        end>
      object btvCitasID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Options.Editing = False
        Options.Moving = False
        Options.SortByDisplayText = isbtOn
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object btvCitasTurno: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Turno'
        RepositoryItem = rpitmBtTurno
        BestFitMaxWidth = 40
        MinWidth = 40
        Options.Editing = False
        Options.Moving = False
        Options.SortByDisplayText = isbtOn
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object btvCitasFecha: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Fecha'
        RepositoryItem = rpitmFecha
        BestFitMaxWidth = 60
        DateTimeGrouping = dtgByDate
        MinWidth = 60
        Options.Editing = False
        Options.Moving = False
        SortIndex = 1
        SortOrder = soAscending
        Width = 62
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object btvCitasHora: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Hora'
        RepositoryItem = rpitmHora
        BestFitMaxWidth = 58
        MinWidth = 58
        Options.Editing = False
        Options.Moving = False
        Options.SortByDisplayText = isbtOn
        SortIndex = 2
        SortOrder = soAscending
        Width = 62
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object btvCitasDuracionPrevista: TcxGridDBBandedColumn
        Caption = 'Dura'
        DataBinding.FieldName = 'DuracionPrevista'
        BestFitMaxWidth = 40
        HeaderHint = 'Duraci'#243'n prevista (minutos)'
        MinWidth = 40
        Options.Editing = False
        Options.Moving = False
        Options.SortByDisplayText = isbtOn
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object btvCitasObservaciones: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Observaciones'
        Options.Editing = False
        Options.Moving = False
        Options.SortByDisplayText = isbtOn
        Width = 1789
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object btvCitasTipoCitaID: TcxGridDBBandedColumn
        Caption = 'Tipo CitaID'
        DataBinding.FieldName = 'TipoCitaID'
        Visible = False
        BestFitMaxWidth = 40
        Options.Editing = False
        Options.Moving = False
        Options.SortByDisplayText = isbtOn
        SortIndex = 0
        SortOrder = soDescending
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object btvCitasTipoCita: TcxGridDBBandedColumn
        Caption = 'Tipo Cita'
        DataBinding.FieldName = 'TipoCita'
        BestFitMaxWidth = 100
        MinWidth = 100
        Options.Editing = False
        Options.Moving = False
        Options.SortByDisplayText = isbtOn
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object btvCitasTipoConsulta: TcxGridDBBandedColumn
        Caption = 'Tipo Consulta'
        DataBinding.FieldName = 'TipoConsulta'
        BestFitMaxWidth = 100
        MinWidth = 90
        Options.Editing = False
        Options.Moving = False
        Options.SortByDisplayText = isbtOn
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object btvCitasEstadoCitaID: TcxGridDBBandedColumn
        Caption = 'Estado Cita'
        DataBinding.FieldName = 'EstadoCitaID'
        RepositoryItem = rpitmEstado
        MinWidth = 80
        Options.Editing = False
        Options.Moving = False
        Options.SortByDisplayText = isbtOn
        Width = 88
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object btvCitasDocIDPaciente: TcxGridDBBandedColumn
        Caption = 'DocID'
        DataBinding.FieldName = 'DocIDPaciente'
        BestFitMaxWidth = 60
        MinWidth = 60
        Options.Editing = False
        Options.Moving = False
        Options.SortByDisplayText = isbtOn
        Width = 94
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object btvCitasPaciente: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Paciente'
        BestFitMaxWidth = 200
        MinWidth = 100
        Options.Editing = False
        Options.Moving = False
        Options.SortByDisplayText = isbtOn
        Width = 250
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object btvCitasProfesionalID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ProfesionalID'
        Visible = False
        Options.Editing = False
        Options.Moving = False
        Options.SortByDisplayText = isbtOn
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object btvCitasDocIDProf: TcxGridDBBandedColumn
        Caption = 'DocID'
        DataBinding.FieldName = 'DocIDProf'
        MinWidth = 70
        Options.Editing = False
        Options.Moving = False
        Options.SortByDisplayText = isbtOn
        Width = 70
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object btvCitasProfesional: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Profesional'
        BestFitMaxWidth = 200
        MinWidth = 100
        Options.Editing = False
        Options.Moving = False
        Options.SortByDisplayText = isbtOn
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object btvCitasAutorizacion: TcxGridDBBandedColumn
        Caption = 'Autorizaci'#243'n'
        DataBinding.FieldName = 'Autorizacion'
        BestFitMaxWidth = 100
        MinWidth = 80
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object btvCitasFechaHoraReal: TcxGridDBBandedColumn
        Caption = 'Inici'#243
        DataBinding.FieldName = 'FechaHoraReal'
        RepositoryItem = rpitmFechaHora
        BestFitMaxWidth = 90
        MinWidth = 50
        Options.Editing = False
        Options.Moving = False
        Options.SortByDisplayText = isbtOn
        Width = 50
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object btvCitasFechaFinReal: TcxGridDBBandedColumn
        Caption = 'Termin'#243
        DataBinding.FieldName = 'FechaFinReal'
        RepositoryItem = rpitmFechaHora
        BestFitMaxWidth = 60
        MinWidth = 60
        Options.Editing = False
        Options.Moving = False
        Options.SortByDisplayText = isbtOn
        Width = 60
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object btvCitasDuracionReal: TcxGridDBBandedColumn
        Caption = 'Dur'#243
        DataBinding.FieldName = 'DuracionReal'
        BestFitMaxWidth = 50
        HeaderHint = 'Minutos que dur'#243' la cita'
        MinWidth = 40
        Options.Editing = False
        Options.Moving = False
        Options.SortByDisplayText = isbtOn
        Width = 40
        Position.BandIndex = 3
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
    end
    object cxGridViewRepository1DBCardView1: TcxGridDBCardView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
      DataController.DataSource = dmGIPSci.dsProf
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.RowFiltering = False
      OptionsView.NoDataToDisplayInfoText = '<No hay datos para mostrar>'
      OptionsView.CardIndent = 7
      OptionsView.RowCaptionAutoHeight = True
      RowLayout = rlVertical
      object cxGridViewRepository1DBCardView1Especialidad1: TcxGridDBCardViewRow
        DataBinding.FieldName = 'Especialidad'
        Kind = rkCaption
        Options.ShowCaption = False
        Position.BeginsLayer = True
      end
      object cxGridViewRepository1DBCardView1PrimerApellido1: TcxGridDBCardViewRow
        DataBinding.FieldName = 'PrimerApellido'
        Options.ShowCaption = False
        Position.BeginsLayer = False
      end
      object cxGridViewRepository1DBCardView1SegundoApellido1: TcxGridDBCardViewRow
        DataBinding.FieldName = 'SegundoApellido'
        Options.ShowCaption = False
        Position.BeginsLayer = False
      end
      object cxGridViewRepository1DBCardView1PrimerNombre1: TcxGridDBCardViewRow
        DataBinding.FieldName = 'PrimerNombre'
        Options.ShowCaption = False
        Position.BeginsLayer = False
      end
      object cxGridViewRepository1DBCardView1SegundoNombre1: TcxGridDBCardViewRow
        DataBinding.FieldName = 'SegundoNombre'
        Options.ShowCaption = False
        Position.BeginsLayer = False
      end
      object cxGridViewRepository1DBCardView1DocIDProf1: TcxGridDBCardViewRow
        DataBinding.FieldName = 'DocIDProf'
        Options.ShowCaption = False
        Position.BeginsLayer = True
      end
      object cxGridViewRepository1DBCardView1Foto1: TcxGridDBCardViewRow
        DataBinding.FieldName = 'Foto'
        RepositoryItem = rpitmFoto
        Options.ShowCaption = False
        Position.BeginsLayer = False
        Position.LineCount = 4
      end
      object cxGridViewRepository1DBCardView1id1: TcxGridDBCardViewRow
        DataBinding.FieldName = 'id'
        Visible = False
        Kind = rkCaption
        Options.ShowCaption = False
        Position.BeginsLayer = False
      end
    end
  end
  object imgList16: TcxImageList
    FormatVersion = 1
    DesignInfo = 679
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000130200264D130085822800D5802600D34A14
          007D120400200000000000000000000000000000000000000000000000000000
          0000000000001006001A652A0099A04900E4B35000FFA43A00FFA63F00FFA743
          00FE8B2F00E05518008C0B030012000000000000000000000000000000000000
          000029130039AF5A01EAD37D06FFD98300FFC36A14FFD89C68FFB8622FFFB04E
          00FFB35200FFA33C00FF872900DE1907002A000000000000000000000000160A
          001DBE6B06ECE19521FFE59D23FFD27901FFE2B180FFFFFFF6FFF3C89FFFAF4B
          00FFC66900FFB45400FFA43F00FF892900E10A02001000000000000000008950
          01A4E49D32FFEBA842FFE9A53DFFE29625FFD9933FFFF0DAC2FFD59867FFC869
          00FFD47D00FFC36600FFB45500FFA23C00FF5619008F000000002B1C0830DA98
          36F0EFB55DFFEEB35AFFEEB156FFEFB357FFD68212FFC26004FFC16000FFE297
          18FFDD8905FFD27900FFC16400FFB04F00FF8E2F00E51004001BA37845A9F4BB
          6DFFF4C376FFF4C275FFF4C277FFE9A643FFE2AA5EFFFBF3EBFFDFAE82FFCB72
          07FFE3971BFFDB8603FFCD7300FFBC5E00FFA43F00FE46130076FBC384FCF9CB
          89FFFAD190FFFBD090FFFAD090FFF2BA66FFE5A74BFFFFFFFFFFFFFFFFFFD79A
          63FFD17A07FFE29516FFD78000FFC76C00FFAD4A00FF772200C8FDC993FDFFD8
          A3FFFFDFADFFFFDEADFFFFDDAAFFFFDFADFFECAC4FFFE7AD5FFFFFFFFFFFFEFC
          FAFFD1863BFFD68209FFDF8D09FFD07700FFB35200FF782100CAAD8B67ADFFDC
          ADFFFFE5B9FFFFE6BBFFFEDFADFFF8C883FFFFDBA5FFECAB4EFFE9AF60FFFFFF
          FFFFFAF1E8FFCD7A1DFFDC8A0AFFD88201FFB35100FE4710007C33291E33F1CD
          9EF1FFE6B9FFFEE0AEFFF4BD74FFF1C68BFFEDAC51FFFED598FFE79E34FFF1CF
          9FFFFFFFFFFFEAC195FFD37800FFDD8A04FF9B3F00E70E00001E00000000AA8F
          6DAAFFE2B4FFFDD79CFFF7C991FFFFFFFFFFF8E5CAFFEDAF57FFEAA541FFF5DF
          BDFFFFFFFFFFF3D0A8FFD98302FFCF7906FF5C2000950000000000000000241D
          1524F2D6B1F2FFF7E8FFFAC684FFFBDEBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFCF0E1FFE6A036FFDB8B11FFA44E04E60C03001500000000000000000000
          000041392F41F2DFC9F2FFE4B9FFFAC681FFF8CB95FFF8DEBCFFF9E1C1FFF4CB
          93FFEAA53FFFDE8F1BFFB26009E8220D00330000000000000000000000000000
          000000000000221A1022A38666A3EBC99EEBFDD196FFF8C076FFF2B25CFFEAA2
          39FFC77F18E67A43049A12080019000000000000000000000000000000000000
          000000000000000000000000000031261B31A58562A5EFBC83EFE3A962EB8C5D
          1C9A2211002B0000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000C0CCBBFFCBCDC1FF00000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000EFE4
          DAFFAA9177FF9B7C66FFAB918BFFDCD0D3FF0000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000DDC3
          AAFFE1956DFFF2A47DFFC2886DFF856659FFC5B0ABFF00000000000000000000
          000000000000000000000000000000000000000000000000000000000000D7C5
          B2FFEBA07AFFF48456FFF48E66FFE2967DFF9A695FFFD7B3B0FF000000000000
          000000000000000000000000000000000000D4C2B7FFBDACA5FF000000000000
          0000C29580FFEA865FFFE55A30FFFF8765FFC8836EFFAC8A7BFF000000000000
          00000000000000000000F0DED2FFB89785FFBC937DFFA07B69FFC4B9C4FF0000
          000000000000D88C6EFFE45B32FFFF855EFFD48C70FFA68872FF000000000000
          000000000000DAB4A7FFB27462FFD18E76FFFDC6A6FFC69270FFC29F8CFFD3BD
          B0FFC4A799FFBF7D5FFFEE885DFFFEA67BFFC48165FFAE8675FF00000000EBE1
          D6FFAD7F72FFAC6453FFDF927BFFFDC8A8FFFFE6C0FFE2A57BFFC59061FFC492
          70FFCF9680FFE6A68AFFF5B78EFFFCC299FFCC9179FFB27D72FFF0CEBAFFAB62
          4EFFC75F4BFFF2A389FFFFDBB7FFF9EAC0FFFEE4BFFFFFC8A7FFFDC5A9FFF4CA
          B3FFEDD1C2FFF9E5DBFFFEF0E3FFFFDFCCFFC99B83FFB6886DFFD38562FFC87A
          57FFFFC09CFFFFD9B4FFFFDCB7FFFCE0C0FFFBE1C8FFFDE4CFFFFEECD5FFFFF6
          E1FFFFFEF0FFFFFFFBFFFFF9F3FFFADFD3FFB1947DFFDAC0A3FFD49568FFFFD0
          A4FFFFDBB1FFFFDAB1FFF9D8B6FFF6DFC5FFF3DECDFFFAE3D5FFFFECD4FFFFF7
          E0FFFFFEEEFFFFFFFEFFFAF8F1FFBCA9A1FFC1B8AAFF00000000CFBEA0FFD4AD
          8FFFF4C1A5FFFFDABAFFF3DBB9FFE7E0C0FFFCE0C9FFFFEDDDFFFFF0DAFFF7EA
          D6FFEAE8DAFFCFCDC8FFB6AAA7FFD4CDCBFF0000000000000000000000000000
          0000D7B3A7FFD8B19DFFF2D2B5FFF9DEBCFFFFE3C3FFD8A78CFFCDAFA0FFC6B9
          ADFFC0BBB1FFDAD5D1FF00000000000000000000000000000000000000000000
          000000000000DDD4C7FFD4AC98FFF6C1AAFFFFDFC2FFA87F62FFEDDDD6FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000E1BEB3FFC0A294FFBDAFA3FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000EBEEF1FFE7E9
          E9FFD7D7D4FFE0DDD6FFEAE5DCFFE9E4DBFFF2ECE3FFE7E2D8FFE9E6DDFFE5E4
          DCFFE4E3DEFFE4E5E1FFDFE3DDFFDFE6DFFFDEE8E1FFE4EFEDFFD8D6D6FF827E
          7CFF333333FF333333FF333333FF333333FF333333FF796C5DFF7D7064FF786F
          64FF333333FF333333FF333333FF333333FF7B7E73FFE0E6DEFFEBE5E3FF3333
          33FF8B8175FFA19382FFFFFFFFFFE9D5BFFFECD7C1FFE9D6C2FFEBDAC8FFE6D7
          C6FFE7DCCEFFFFFBEFFFA89F8FFF898370FF333333FFDDDDD1FFE6E0D8FF3333
          33FF958878FFA09079FFFCEED3FF333333FF333333FF333333FF333333FF3333
          33FF333333FFE6D8C6FF9A8D77FF8A7A63FF333333FFF1EBDBFFDEDACEFF3333
          33FF968A74FFA6977BFFF6E4C3FFDCC7A5FFE4CDABFFE5D0AFFFE3D1B2FFD5C5
          A9FFD4C7B0FFF6E9D1FFAE9D82FF9E8B6EFF333333FFF0E6D2FFE2E0D1FF3333
          33FF968C71FF9F9070FFFFF8D4FFDEC8A4FF999999FF999999FF999999FF9999
          99FFCBBFA3FFFDEED3FFAF9A7CFF998160FF333333FFF3E9D3FFECEBDCFF3333
          33FFAF9F82FFA39572FFFFFFE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFB9A280FFA68A66FF333333FFEDE2CCFFDEDED0FF3333
          33FFA38D70FF927F5CFFE5D7B7FFDDC29EFFDAC7A7FFD0C1A6FFD3C8AEFFDAC4
          AAFFE5D8BCFFDFD6BEFFA18B63FFA1865DFF333333FFE5DCC6FFE3E3D4FF3333
          33FFAF9C7CFFA98C69FFD2B08BFFCCAF8DFFCAAB8FFFBFA58CFFBDA48BFFB6A0
          85FFBCA48AFFC2A989FFA89068FFB49B70FF333333FFECE6D2FFEAE7D9FF3333
          33FFB5A181FFA28763FFA78966FF8C6E4DFF333333FF333333FF333333FF3333
          33FF333333FF6B5335FF9C825CFFC8B18AFF333333FFE6DECBFFE6E2D4FF3333
          33FFAA9577FF846A48FF806340FFAB9071FFBBAD92FFBBAB93FFBFB39BFFC0AE
          94FFBBA68AFFC4B99DFF908260FF907853FF333333FFE2DCC9FFE2DFD0FF3333
          33FFA59273FF775E3EFF836949FFBCA387FFFFFFE6FFFFFFFFFFFFFFFFFF9E8D
          74FF8C785DFFE9D9BDFFAD9C7BFF85724FFF333333FFE4E2D2FFE4E2D4FF3333
          33FFA79679FF7A6546FF927A5DFFB59F84FFFFFFFFFFFFFFFFFFFFFFFFFF7D6E
          59FF706148FFC8BA9EFFB3A385FF8A7B5EFF333333FFDFDED2FFE3E2D4FF3333
          33FFA2947AFF786649FF877257FFAD9A83FFFFFFFFFFFFFFFFFFFFFFFFFF8477
          66FF756A54FFBBAE94FFB0A287FF7F725AFF65604FFFE3E5DBFFE5E7DAFF3333
          33FF877D65FF7A6952FF86765FFFB9A997FFFFFFFFFFFFFFFFFFFFFFFFFF746B
          5DFF716957FFD6CCB5FF998E79FF524B38FFA5A396FFDFE2DCFFD9DED3FF908E
          7FFF333333FF333333FF333333FF333333FF686258FF67645CFF817E75FF615E
          54FF686455FF333333FF333333FF7D7869FFEEEDE4FFFAFEFCFF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFFFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFFFF00000000FFFFFFFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FFFFFFFF000000000000000000000000FFFF
          FFFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FFFFFFFF000000000000000000000000000000000000
          0000FFFFFFFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000737373FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000737373FF00000000737373FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000737373FF0000000000000000000000007373
          73FF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000737373FF000000000000000000000000000000000000
          0000737373FF0000000000000000000000000000000000000000000000000000
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
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000005653E8FF5653E8FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000005653E8FF5653E8FF5653E8FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000005653E8FF5653E8FF5653
          E8FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000005653E8FF5653E8FF5653E8FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000005653E8FF5653E8FF000000000000
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
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000004F4FB9FF0000A6FF0F0FA4FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000B6FF0000C7FF0000BDFF0000A6FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001F1FABFF0000DCFF0000DCFF0000D6FF0000C7FF1F1FA6FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00007E7ECCFF0000C7FF0000EEFF0000EEFF0000DCFF0000D6FF0000B6FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000F0FACFF0000FDFF0000FDFF0000FDFF0000EEFF0000E6FF0000DCFF0F0F
          A4FF000000000000000000000000000000000000000000000000000000003F3F
          B3FF1111E6FF0D0DFFFF0000FDFF0000FDFF0000FDFF0000FDFF0000E6FF0000
          BDFF7E7ECCFF0000000000000000000000000000000000000000000000001717
          C6FF3030FFFF2727FFFF1B1BFFFF0D0DFFFF0000FDFF0000FDFF0000EEFF0000
          E6FF0F0FACFF00000000000000000000000000000000000000000E0EADFF4A4A
          FFFF4A4AFFFF4141FFFF3030FFFF2222FFFF0B0BDFFF0000B6FF0000FDFF0000
          EEFF0000D6FF5F5FC0FF000000000000000000000000000000001616B3FF6464
          FFFF6464FFFF5A5AFFFF4A4AFFFF3030FFFF0F0FA4FF4F4FB9FF0000D6FF0000
          FDFF0000E6FF0000B6FF000000000000000000000000000000006F6FC6FF4444
          D3FF7E7EFFFF7171FFFF6464FFFF1616BAFF00000000000000000F0FA4FF0000
          EEFF0000EEFF0000D6FF2F2FADFF000000000000000000000000000000002F2F
          ADFF5151D3FF7E7EFFFF3C3CD3FF5F5FC0FF0000000000000000000000000000
          B6FF0000FDFF0000E6FF0000BDFF000000000000000000000000000000000000
          00006F6FC6FF0E0EA7FF2F2FADFF000000000000000000000000000000007E7E
          CCFF0000C7FF0000EEFF0000D6FF0F0FA4FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003F3FB3FF0000D6FF0000DCFF0000BDFF4F4FB9FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000F0FA4FF0000D6FF0000D6FF0000A6FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000F0FA4FF0000BDFF0000B6FF0F0FA4FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000005F5FC0FF0000A6FF0F0FA4FF}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F1FF0000F0FF0000E07F0000C07F0000C03F0000801F0000801F0000000F
          0000000F00000307000083870000C7830000FFC10000FFE10000FFF00000FFF8
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000037AD37FF0B920BFF0B920BFF3798
          37FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000FA90FFF009A00FF009A00FF009A00FF009500FF008D
          00FF008100FF0B7E0BFF00000000000000000000000000000000000000000000
          00006FCC6FFF0FA90FFF18A918FF85C970FFE4E8BAFF5FD75FFF18A918FFDFE2
          B0FF80BA5DFF0F8F0BFF008100FF65AD65FF0000000000000000000000000000
          00000FA90FFF3FBA3AFFE1EEC6FFFFFEDEFFFFFEDEFF5FD75FFF80C668FFFFFE
          DEFFFFFEDEFFDFE2ACFF2F9E21FF008100FF0000000000000000000000001FB9
          1FFF29B825FFE2F1CCFFFFFBE4FFFFF5E5FFFFF5E5FFFFF2DEFFFFEED5FFFFF5
          D6FFFFFFECFFFFFBE4FFDFE2ACFF0F9A0BFF0B920BFF00000000000000001FB9
          1FFF8ED989FFFFFAEFFFFFFFECFFFFFAEFFFFFF5E5FFFFF2DEFFFFF2DEFFFFEE
          D5FFFFFEFEFFFFFFECFFFFFEDEFF81C15DFF009A00FF0000000053CC53FF1FB9
          1FFFE3F5DFFFFFFEFEFFFFFAEFFFFFFAEFFFFFFAEFFFF1D3CDFFF1D0C7FFFFEE
          D5FFFFECCDFFFFECCDFFFFFEDEFFDFE2ACFF009A00FF39B139FF30CA30FF22BC
          22FF0FA90FFF0FA90FFFFFFEFEFFFFFAEFFFF8DFDDFFD16078FFC6526FFFBA44
          67FFBA4467FFBA4467FFF38A91FFFAE4C2FF06A006FF0FA90FFF30CA30FF29C3
          29FF5FD75FFF5FD75FFFFFFEFEFFFFFEFEFFF8DFDDFFEC828CFFD9697DFFDB98
          A6FFF38A91FFF38A91FFF38A91FF5FD75FFF06A006FF18A918FF5FD75FFF29C3
          29FFE5F8E5FFFFFEFEFFFFFEFEFFFFFEFEFFFFFAEFFFDB98A6FFBA4467FFFFF2
          DEFFFFF2DEFFFFECCDFFFFF5D6FFE2EAB7FF0FA90FFF42BB42FF0000000029C3
          29FF98E393FFFFFEFEFFFFFEFEFFFFFEFEFFFFFAEFFFF38A91FFBA4467FFFFF5
          E5FFFFEED5FFFFECCDFFFFF5D6FF8BD06FFF0FA90FFF00000000000000003ACD
          3AFF3ACD3AFFE5F8E5FFFFFEFEFFFFFEFEFFFFFAEFFFF38A91FFBA4467FFFFF2
          DEFFFFF2DEFFFFECCDFFE3F0BFFF29B825FF22B522FF00000000000000000000
          000030CA30FF5AD35AFFE5F8E5FFFFFEFEFFFFFAEFFFF38A91FFBA4467FFFFF5
          E5FFFFEED5FFE4E8BAFF4AC441FF15AF15FF0000000000000000000000000000
          000084E084FF30CA30FF3ACD3AFF98E393FFE5F3D7FFF38A91FFF38A91FFE1EE
          C6FF94D87DFF33C230FF1FB91FFF7AD67AFF0000000000000000000000000000
          000000000000000000003ACD3AFF30CA30FF30CA30FF30CA30FF29C329FF29C3
          29FF29C329FF30CA30FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000005FD75FFF3ACD3AFF3ACD3AFF5AD3
          5AFF000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FC3F0000F00F0000C0030000C00300008001000080010000000000000000
          000000000000000000008001000080010000C0030000C0030000F00F0000FC3F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000005088BFFF529BDDFF91BD
          E7FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000005088BFFF6DB0EAFF6DB0EAFF6EB5
          F2FF7CB3E9FF0000000000000000000000000000000000000000000000000000
          00000000000000000000A6C2DFFF5088BFFF6DB0EAFF6DB0EAFF76BBF5FF91C8
          F7FF8BC5F7FF7CB3E9FF00000000000000000000000000000000000000000000
          000000000000ABC6E1FF5088BFFF72B6F1FF72B6F1FF7AC2FFFF9FD3FFFFA4D4
          FEFF9CCEFBFF8BC8FDFF72B6F1FF00000000000000000000000000000000A773
          4FFF8F5B3AFF5FA3E2FF72B6F1FF8FCBFFFF94CCFDFFA4D4FEFFADD9FEFFB4DC
          FFFFB4DCFFFFADD9FEFF8FCBFFFF837489FFB48A8AFF00000000BA8F66FFCC88
          31FF8D3E07FF83C0F7FF478ED4FF478ED4FF8BC5F7FFADD9FEFFADD9FEFFA4D4
          FEFF8FCBFFFF72B6F1FF529BDDFF917387FFBA7576FFB48A8AFFB07034FFAC71
          2CFF9D5216FF8BC5F7FFE7EEF6FF9CCEFBFF478ED4FF7AC2FFFF7AC2FFFF63AC
          EEFF529BDDFF4791DCFF4791DCFF9C7A8EFFCF8181FFB67273FF9E480BFFBE78
          3EFF9E4300FF8AAAC6FF72B6F1FF72ADE9FF4A97E4FF478ED4FF4791DCFF529B
          DDFF5D9EE1FF4F99E5FF4791DCFFB27882FFE28A8BFFCF8181FF9E4300FFB44D
          00FFBD5700FF8A8177FFA4D4FEFF72B6F1FF4A97E4FF4A97E4FF4F99E5FF63AC
          EEFF85B7EAFF72ADE9FF5B8CC5FFEA8E8FFFF39394FFCF8181FFB16B2FFFC660
          00FFC66000FFA7580EFFB4DCFFFFA4D4FEFF72B6F1FF4A97E4FF4F99E5FF85B7
          EAFF9BC3ECFF85B7EAFF9C7A8EFFF39394FFFB9798FFD48888FFC3A17EFFC660
          00FFBD5700FFB44D00FF786353FFB4DCFFFFA4D4FEFF72B6F1FF4791DCFF4A97
          E4FF5B9DDDFF837D95FFBB7979FFCF8181FFD48888FFCDB1B1FF00000000A868
          2FFFA24600FFA0561FFFA0561FFF8BC8FDFF8BC8FDFFADD9FEFF000000000000
          00000000000000000000B48A8AFFAC7070FFB48A8AFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FE3F0000FC1F0000F00F0000E0070000800100000000
          0000000000000000000000000000000000000000000080F10000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B17256FFA44100FFC36A07FFD999
          50FFE3B07CFFE0BA9BFF00000000000000000000000000000000000000000000
          00000000000000000000000000000000000089320FFFA94700FFD27E0BFFEFBD
          6EFFFBD9A6FFDBA875FF00000000000000000000000000000000000000000000
          000000000000000000000000000000000000898A92FFB5A08FFFBEC1BFFFBEC1
          BFFFC2B09EFFB2B0ABFF00000000000000000000000000000000000000000000
          000000000000000000000000000091C5CBFF99D1F1FFC2EDFEFFCEF1FEFFD4F3
          FEFFCEF1FEFF77BBE7FF00000000000000000000000000000000000000000000
          0000000000000000000017A717FF319986FFABE7FDFFBBEBFDFFCEF1FEFFD4F3
          FEFFCEF1FEFF8CC9EDFF00000000000000000000000000000000000000000000
          00007AD17AFF19B319FF35CF37FF439FA5FF9BE2FDFF9BE2FDFFBBEBFDFFBBEB
          FDFFB6E9FDFF8DD7F8FF8ABCD6FF000000000000000000000000000000000000
          00001EB822FF39D346FFA9D88FFF7BA5C9FF64B9E7FF7BD0F5FF81D9FCFF8DDC
          FDFF81D9FCFF81D9FCFF318D8DFF0000000000000000000000000000000064CE
          64FF3DD750FF94D57AFFFFF0D9FFDBDDD9FF71A0CAFF478FCAFF52A4DAFF59B7
          E7FF59B7E7FF59B7E7FF23975CFF4FB44FFF00000000000000000000000023BD
          24FF46E05AFFE3E1ADFFFFECCEFFFFF2DDFFFAEBE1FFBDADC2FF6398CAFF4489
          C6FF59B2E4FF52A4DAFF21B031FF029C02FF0000000000000000000000002FC9
          31FF41DB54FFE1A499FFD89296FFD8949DFFD47B8DFFD7687CFFDFA3B0FF71A0
          CAFF61C1EFFF5B98CBFF19B319FF0DA70DFF0000000000000000000000002FC9
          31FF4AE463FFFFE2B5FFFFE7C1FFFFECCEFFEFC1B8FFD7687CFFF5D8D1FF478F
          CAFF59B7E7FF7BA4C4FF23BD24FF0DA70DFF00000000000000000000000048CE
          48FF53ED75FFBFDB8CFFFFE5BCFFFFF7EAFFEFC1B8FFB03860FFFFF2DDFF4E91
          B4FF3E8DB8FF9ACC96FF2FC931FF2FB62FFF00000000000000000000000098E4
          98FF41DB54FF60E36AFFF2E1ADFFFFE5BCFFEBBAA6FFB03860FFFFECCEFFFFEC
          CEFFF1E8C2FF48CE48FF27C12CFF8BD78BFF0000000000000000000000000000
          000058D558FF50EA6DFF60E36AFFBFDB8CFFFFE2B5FFEBBAA6FFFFE5BCFFBFDB
          8CFF51D555FF39D346FF48C548FF000000000000000000000000000000000000
          00000000000058D558FF41DB54FF53ED75FF4AE463FF46E05AFF46E05AFF4AE4
          63FF36D041FF48CE48FF00000000000000000000000000000000000000000000
          0000000000000000000098E498FF4BD24BFF35CF37FF36D041FF2FC931FF48CE
          48FF94E194FF0000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FC0F0000FC0F0000FC0F0000F80F0000F00F0000C0070000C00700008003
          00008003000080030000800300008003000080030000C0070000E00F0000F01F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000075D278FF5FCD62FF3DC740FF33C434FF27BF28FF37BE
          37FF4DC14DFF83CA83FF000000000000000000000000000000000000000065CA
          68FF69D870FF88E992FF88E992FF81E78BFF73E27BFF64DD6AFF4ED652FF39CE
          3AFF29C229FF179F17FF0A8C0AFF3B9E3BFF0000000000000000000000006BD1
          73FFA8F4B6FFB5F8C4FFB5F8C4FFA8F4B6FF94EDA0FF7CE586FF64DD6AFF4AD3
          4DFF27BF28FF18A519FF119611FF0A8C0AFF00000000000000000000000088D5
          8BFFB5F8C4FFC9FFDAFFC9FFDAFF98E8A5FF65CA68FF58CE5FFF4BCA50FF2FBD
          30FF2FBD30FF21AC21FF119611FF57AC57FF0000000000000000000000000000
          00006BD173FFA1EFAEFF2EB132FF18A519FF41BB47FF58CE5FFF72DA7BFF6BD1
          73FF3CB440FF18A519FF2F9F2FFF000000000000000000000000000000000000
          00000000000067C468FF089618FF3C9C93FF5AA6E9FF65AEEEFF6EB2EEFF6BB0
          D1FF5EB38BFF5CB75DFF00000000000000000000000000000000000000000000
          0000000000002F79A1FF368AC5FF65B8FFFF71BEFFFF86C8FFFF93D0FFFF9BD4
          FFFF8CC4F2FF0000000000000000000000000000000000000000000000000000
          00002F79A1FF006194FF5FB2F7FF68BAFFFF78C2FFFF8DCCFFFFA3D8FFFFB4E0
          FFFFB4E0FFFF8DBFE9FF00000000000000000000000000000000000000000000
          000002679BFF1174A7FF65B8FFFF68BAFFFF78C2FFFF93D0FFFFACDCFFFFC7EA
          FFFFC7EAFFFFB4E0FFFF00000000000000000000000000000000000000005192
          B3FF086DA2FF1875ABFF65B8FFFF68BAFFFF86C8FFFF93D0FFFFACDCFFFFBCE5
          FFFFBCE5FFFFACDCFFFFB6D3EDFF00000000000000000000000000000000418C
          AEFF0E74A9FF1174A7FF58ACEFFF68BAFFFF71BEFFFF8DCCFFFF93D0FFFFA6D9
          FFFFA6D9FFFF9BD4FFFFA1C2DDFF00000000000000000000000000000000418C
          AEFF157BB0FF2087BBFF227DB6FF5FB2F7FF68BAFFFF78C2FFFF86C8FFFF8DCC
          FFFF8DCCFFFF6AAFE3FF5F96B3FF000000000000000000000000000000000000
          00001B82B6FF288FC8FF379EEDFF2F8DCFFF459FDFFF50A1DFFF71BEFFFF70BB
          F7FF4D9CD2FF086DA2FF629AB7FF000000000000000000000000000000000000
          00003083ADFF2E95D1FF3FA6F8FF53C0FFFF62D4FDFF43ADEEFF0C86B8FF0061
          94FF177DB1FF086DA2FF00000000000000000000000000000000000000000000
          0000000000003790C3FF3FA6F8FF4FB8FFFF54C0F7FF36ACE0FF0183B1FF1174
          A7FF0E74A9FF629AB7FF00000000000000000000000000000000000000000000
          0000000000000000000086C1E7FF51ABECFF3295D3FF2095C3FF418CAEFF4D96
          BAFF000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F00F0000800300008003000080030000C0070000E00F0000E01F0000C00F
          0000C00F0000800700008007000080070000C0070000C00F0000E00F0000F03F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000BD967AFF9C5838FF84370FFF7A330FFF7A44
          20FF946C59FFCEBAB5FF00000000000000000000000000000000000000000000
          000000000000D6AE94FFA54817FF9C400FFF944017FF843720FF7A3320FF722F
          20FF722F0FFF6A2B07FF8C6049FFE7E3E7FF0000000000000000000000000000
          0000D69E7AFF944030FF724484FF6248BDFF5144D6FF493BDEFF3827DEFF2817
          CEFF2817B5FF301B84FF491F41FF724C38FFE7E3E7FF0000000000000000E7C3
          ADFFAD4C20FF6A60D6FF9C92F7FFA59AF7FF9C8EF7FF8474EFFF6258EFFF4133
          E7FF281BDEFF2013A5FF170F84FF491F41FF8C6851FF0000000000000000CE64
          28FFCE5417FF846CC6FFC6C3FFFFD6CFFFFFBDB2F7FF8474DEFF5950DEFF4133
          DEFF2817D6FF2013B5FF170F8CFF592B38FF6A2B07FFD6C7BDFFEFCBB5FFCE58
          0FFFD65C17FFB55449FF9C92E7FF7A70CEFF2817ADFF3027D6FF494CDEFF594C
          E7FF382BCEFF2013A5FF491F6AFF8C3B0FFF7A3307FF9C7862FFE7A27AFFDE5C
          17FFE76017FFEF6417FFC65C38FF20238CFF416CD6FF62AEF7FF72BAF7FF72B2
          EFFF5974DEFF6A336AFFB54C0FFF9C400FFF843707FF844828FFE78E59FFEF64
          17FFF76417FFF76817FF416072FF2082BDFF62BAFFFF72C3FFFF8CCFFFFF9CD7
          FFFFA5D7FFFF8C8EA5FFBD4C0FFFAD480FFF943B0FFF7A330FFFEF9259FFF764
          17FFF76817FF8C6049FF00649CFF419EDEFF6ABAFFFF84C7FFFF9CD7FFFFB5E3
          FFFFC6E7FFFF9CD3F7FFAD5830FFB54C0FFF9C400FFF84370FFFF7A67AFFF768
          17FFFF6817FF286484FF006CA5FF49A2E7FF6ABAFFFF84CBFFFF9CD7FFFFBDE3
          FFFFC6EBFFFFADDFFFFF946C59FFB54C0FFF9C400FFF945028FFFFCFB5FFF768
          17FFFF6817FF0F6C9CFF0778ADFF308EC6FF62BAFFFF7AC3FFFF8CCFFFFFA5DB
          FFFFA5DBFFFF94CFFFFF8C6049FFB54C0FFFA5440FFFBD866AFF00000000F774
          30FFFF6817FF306C8CFF1782BDFF2086C6FF419EDEFF6ABAFFFF7AC7FFFF84CB
          FFFF8CCFFFFF4996CEFF625449FFB54C0FFFA5440FFFEFD7CEFF00000000FFC7
          ADFFFF6817FF8C6859FF208AC6FF309EEFFF41AAF7FF389EDEFF3896D6FF308E
          C6FF2882BDFF006CA5FF845841FFB54C0FFFC68662FF00000000000000000000
          0000FFA67AFFF76820FF597084FF38A2F7FF51C3FFFF59C7FFFF20A2DEFF0074
          A5FF0F7CB5FF30607AFFBD5017FFC66C41FF0000000000000000000000000000
          000000000000FFB68CFFF76820FF9C7062FF518EBDFF3096CEFF207CA5FF416C
          84FF62646AFFBD5017FFD68659FF000000000000000000000000000000000000
          00000000000000000000FFEBDEFFFFA67AFFF77838FFEF6417FFE76017FFDE68
          28FFDE8E62FFEFD3BDFF00000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F80F0000E0030000C0010000800100008000000000000000000000000000
          00000000000000000000000000008000000080010000C0030000E0070000F00F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000D6EFF7FF72BAD6FFBDDFEFFF0000000000000000000000000000
          0000CEE7EFFF7AC7DEFFCEE7EFFF000000000000000000000000000000000000
          0000ADDFEFFF0FA2CEFF079EC6FF49AAC6FF0000000000000000000000000000
          000062CBE7FF51CFF7FF20AED6FFA5D7E7FF000000000000000000000000B5E7
          F7FF28BAE7FF30C7F7FF20C3EFFF41B2D6FF0000000000000000000000000000
          000051BAD6FF6AD7F7FF51CFF7FF17AED6FFADD3DEFF00000000CEF3FFFF41CB
          EFFF72DBF7FF72DBF7FF62D7F7FF51CFF7FF41C3E7FF51CBEFFF59CBEFFF49C3
          E7FF62CFEFFF94DFF7FF6AD7F7FF38CBF7FF0FA2CEFFC6DFE7FF6AD7F7FF8CDF
          F7FF9CE7FFFF9CE7FFFF94E3F7FF84DFF7FF72D7F7FF6AD7F7FF6AD7F7FF6AD7
          F7FF8CDFF7FFA5E7FFFF84DFF7FF51CFF7FF17BEEFFF28A2C6FF6AD7F7FFADE7
          FFFFBDEFFFFFC6EFFFFFB5EBFFFF94E3F7FF72D7F7FF62D7F7FF62D7F7FF62D7
          F7FF94E3F7FFB5EBFFFF8CDFF7FF59D3F7FF17BEEFFF20A6CEFFCEF3FFFF8CDF
          F7FFDEF7FFFFE7FBFFFFC6EFFFFF9CE7FFFF6AD7F7FF51CFF7FF59D3F7FF59D3
          F7FFA5E3F7FFBDEFFFFF94DFF7FF62D7F7FF17B6E7FFADDFEFFF00000000ADEB
          FFFFADE7FFFFEFFBFFFFCEF3FFFF62C7E7FF0000000000000000000000000000
          000084D7F7FFADE7FFFF8CDFF7FF49CFF7FF94DBEFFF00000000000000000000
          0000A5E7FFFF8CDFF7FFB5EBFFFF6ACBE7FF0000000000000000000000000000
          000094E3F7FF9CE7F7FF62D7F7FF84DFF7FF0000000000000000000000000000
          000000000000C6EFFFFF72D7F7FFADE3F7FF0000000000000000000000000000
          0000CEF3FFFF94E3F7FFBDEFFFFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000E3C70000C3C3000083C10000000000000000
          0000000000000000000083C10000C3C30000E3C70000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000072AAC6FF177CB5FF207CADFFC6DBE7FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002886ADFF84DBFFFF0792E7FF62A2C6FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000388EB5FF72D3FFFF078ADEFF6AAAC6FF0000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000C6DB
          E7FF51A6C6FF62CBFFFF0082CEFF7AAECEFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009CC7
          DEFF72BAD6FF51C3FFFF0078C6FF84B6CEFF0000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000072AE
          CEFF8CCFE7FF41B6FFFF0070B5FF94BED6FF000000000000000000000000D6D3
          D6FFB5B2B5FFADAAADFFBDBEBDFF000000000000000000000000000000004958
          62FF416872FF175472FF003759FF516872FF727472FF494849FF0F0F0FFF0000
          00FF000000FF000000FF000000FF070707FF383738FFBDBEBDFF000000002023
          20FF282728FF414041FF494849FF414041FF383738FF202320FF070707FF0000
          00FF000000FF000000FF000000FF171717FF303330FF383738FF000000000707
          07FF383738FF626462FF6A686AFF515451FF383738FF202320FF070707FF0000
          00FF000000FF000000FF070707FF171717FF383738FF414041FFD6D3D6FF0F0F
          0FFF414441FF626462FF626462FF494849FF303330FF202320FF070707FF0000
          00FF000000FF000000FF070707FF202320FF383738FF595C59FFA5A6A5FF1717
          17FF494849FF626462FF626462FF494849FF303330FF171717FF000000FF0000
          00FF000000FF000000FF070707FF202320FF383738FF7A7C7AFF7A7C7AFF2023
          20FF494849FF6A686AFF595C59FF494849FF303330FF171717FF000000FF0000
          00FF000000FF000000FF0F0F0FFF282728FF303330FFA5A6A5FF515451FF2827
          28FF515451FF6A686AFF595C59FF414041FF282728FF0F0F0FFF000000FF0000
          00FF000000FF000000FF0F130FFF282728FF282728FFCECFCEFF303330FF3033
          30FF515451FF6A686AFF595C59FF414041FF282728FF0F0F0FFF000000FF0000
          00FF000000FF000000FF0F130FFF303330FF202320FF00000000282728FF3033
          30FF595C59FF6A686AFF515451FF383738FF202320FF070707FF0F0F0FFF2023
          20FF000000FF000000FF0F130FFF303330FF383738FF00000000BDBEBDFF3837
          38FF303330FF414041FF494849FF626462FF9C9A9CFFDEDBDEFF000000000000
          000000000000D6D3D6FF949294FF727472FFDEDBDEFF00000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00C3FF0000C3FF0000C3FF000083FF000083FF000083870000800000008000
          00008000000000000000000000000000000000000000000100000001000000E1
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000072AAC6FF2082ADFF4992BDFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002886B5FF72D3FFFF0786D6FF84B6CEFF0000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000D6E3
          EFFF499EC6FF62CBFFFF0082CEFF8CBAD6FF0000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000ADCB
          DEFF62B2CEFF51C3FFFF0078C6FF9CC3D6FF0000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000084B6
          CEFF7AC7DEFF41BAFFFF0074BDFFA5CBDEFF0000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000599E
          BDFF94DBEFFF30B2FFFF006CADFFB5CFDEFF000000000000000000000000F7D3
          D6FFE7BABDFFE7B2B5FFEFC3C6FF000000000000000000000000000000008C68
          7AFF948294FF51608CFF38486AFFAD828CFFD67C7AFFCE5859FFBD1F20FFB50F
          0FFFAD0F0FFFB50F0FFFC6130FFFC61717FFCE4849FFF7C3C6FF00000000BD2F
          30FFDE3330FFE76062FFE7787AFFEF686AFFEF5451FFEF3330FFE71717FFC613
          0FFFB50F0FFFBD130FFFD6130FFFEF2728FFEF5451FFDE5051FF00000000BD17
          17FFEF5451FFF78A8CFFF79A9CFFF77472FFEF5451FFEF3330FFDE1717FFBD13
          0FFFB50F0FFFC6130FFFDE130FFFEF3330FFEF5859FFDE5859FFF7D3D6FFC617
          17FFEF5859FFF78A8CFFF79694FFF77472FFEF5051FFEF2728FFDE130FFFBD13
          0FFFB50F0FFFC6130FFFDE1717FFEF3330FFEF6462FFDE6C6AFFDEAEADFFD61F
          20FFEF6462FFF79694FFF79694FFF7686AFFEF4849FFEF2728FFD6130FFFB50F
          0FFFB50F0FFFCE130FFFE71717FFEF3B38FFEF5859FFE78E8CFFCE8684FFDE27
          28FFF7686AFFF79A9CFFF78A8CFFF7686AFFEF4441FFEF2320FFD6130FFFB50F
          0FFFBD130FFFCE130FFFE71717FFEF4441FFE75451FFEFAEADFFC65C59FFEF33
          30FFF77072FFF79A9CFFF78684FFEF6462FFEF4441FFE71F20FFCE130FFFB50F
          0FFFBD0F0FFFCE130FFFE71F20FFEF4849FFDE4849FFF7D3D6FFBD3738FFEF37
          38FFF7787AFFF79A9CFFF78684FFEF6062FFEF3B38FFE71717FFC6130FFFB50F
          0FFFBD130FFFD6130FFFEF2320FFEF4849FFD63B38FF00000000B53330FFEF44
          41FFF78684FFF79A9CFFF7787AFFEF5859FFE73330FFC6130FFFB51F20FFAD2B
          28FFAD1717FFBD130FFFDE2320FFEF5451FFD65051FF00000000EFC3C6FFC648
          49FFD65051FFDE6062FFD65C59FFD66C6AFFDEA2A5FFF7DFDEFF000000000000
          000000000000F7D3D6FFDE9A9CFFD68284FFF7E3E7FF00000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00C7FF0000C3FF000083FF000083FF000083FF000083870000800000008000
          00008000000000000000000000000000000000000000000100000001000000E1
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00008CBAD6FF2882ADFF388EB5FFD6E7EFFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002882ADFF84DBFFFF078EDEFF62A2C6FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000308EB5FF7AD3FFFF078EDEFF6AA6C6FF0000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000CEDF
          EFFF51A2C6FF62CBFFFF0082D6FF7AAECEFF0000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000A5C7
          DEFF6AB6D6FF51C7FFFF0078C6FF84B6CEFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000007AB2
          CEFF84CBE7FF41BAFFFF0070B5FF94BED6FF000000000000000000000000D6EF
          D6FFBDDFBDFFB5DFB5FFC6E7C6FF0000000000000000000000000000000051AA
          7AFF51B694FF209E94FF078272FF62B28CFF84CF84FF59C362FF28B230FF17A6
          20FF179E20FF17A620FF17B620FF20BA28FF51C759FFC6EFC6FF0000000038B6
          41FF41D341FF6ADB6AFF7ADF84FF72E372FF62E762FF41DF49FF20D728FF17B6
          20FF17A620FF17B620FF20CB28FF30DF38FF59E762FF59D359FF0000000020B2
          28FF59E762FF94EF94FF9CEFA5FF7AEB84FF59E762FF38DF41FF20D728FF17B6
          20FF17A620FF17B620FF20CB28FF38DF41FF62E76AFF62D762FFD6EFD6FF20BA
          28FF62E76AFF94EF9CFF9CEF9CFF7AEB84FF59E762FF38DF41FF20CB28FF17AE
          20FF17AE20FF20BA20FF20D728FF41DF49FF6AE772FF72D77AFFB5DFB5FF28C7
          30FF6AE772FF9CEF9CFF94EF9CFF72EB7AFF51E359FF30DF38FF20CB28FF17AE
          20FF17A620FF20BA28FF20D728FF41E349FF6AE76AFF94DF94FF8CCB8CFF30D7
          38FF72E77AFF9CEFA5FF94EF94FF72E372FF51E359FF30DF38FF20C728FF17AE
          20FF17AE20FF20BA28FF28DB30FF49E351FF59DF62FFB5E7B5FF62BA6AFF38DF
          41FF7AEB84FFA5EFA5FF8CEF94FF6AE772FF49E351FF28DB30FF20C728FF17A6
          20FF17AE20FF20C728FF28DB30FF51E359FF51D359FFD6F3D6FF41B649FF41E3
          49FF84EB84FFA5EFA5FF8CEB8CFF6AE76AFF49E349FF28DB30FF20BA28FF17A6
          20FF17B620FF20C728FF30DF38FF59E762FF41CB49FF0000000038AE41FF49E3
          51FF8CEB8CFFA5EFA5FF84EB8CFF62E76AFF38D741FF20BA28FF28AA30FF30A6
          38FF20A220FF17B620FF30D338FF59E762FF59C362FF00000000C6E7CEFF51BA
          51FF59CF59FF6AD36AFF62D36AFF72CF7AFFA5DBA5FF00000000000000000000
          000000000000D6EFD6FF9CD7A5FF84CF8CFFE7F7E7FF00000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00C3FF0000C3FF0000C3FF000083FF000083FF000083870000800000008000
          00008000000000000000000000000000000000000000000100000001000001E1
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00008CBAD6FF2882ADFF388EB5FFD6E7EFFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002882ADFF84DBFFFF078EDEFF62A2C6FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000308EB5FF7AD3FFFF078EDEFF6AA6C6FF0000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000CEDF
          EFFF51A2C6FF62CBFFFF0082D6FF7AAECEFF0000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000A5C7
          DEFF6AB6D6FF51C7FFFF0078C6FF84B6CEFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000007AB2
          CEFF84CBE7FF41BAFFFF0070B5FF94BED6FF000000000000000000000000D6E3
          F7FFBDCFE7FFB5CFE7FFC6DBEFFF000000000000000000000000000000005192
          BDFF499ECEFF208ACEFF0068ADFF599AC6FF7AAED6FF5996C6FF2078BDFF0F68
          ADFF0F64A5FF0F6CB5FF0F74BDFF1778C6FF4996CEFFC6DBF7FF000000003082
          BDFF3092DEFF62AAE7FF7AB6E7FF6AB2E7FF59AEEFFF389EEFFF178ADEFF0F74
          C6FF0F6CB5FF0F74BDFF1782D6FF2896E7FF51AAEFFF519EDEFF000000001774
          BDFF51AAEFFF8CC7F7FF9CCFF7FF7ABEF7FF51AAEFFF309AEFFF178ADEFF0F74
          BDFF0F6CB5FF0F74C6FF1786DEFF309AEFFF62B2EFFF59A2DEFFD6E3F7FF1778
          C6FF59AEEFFF94CBF7FF94CBF7FF72BAEFFF51AAEFFF309AEFFF1786DEFF0F70
          B5FF0F6CB5FF0F78C6FF178ADEFF389EEFFF62B2EFFF72AEDEFFADCBDEFF2086
          CEFF62B2EFFF94CBF7FF94CBF7FF6AB6EFFF49A6EFFF2896E7FF1782D6FF0F6C
          B5FF0F6CB5FF0F78C6FF178AE7FF389EEFFF62AEEFFF8CBEE7FF84AECEFF2892
          DEFF6AB6EFFF9CCFF7FF8CC7F7FF6AB6EFFF49A6EFFF2092E7FF177CCEFF0F6C
          B5FF0F70B5FF0F7CCEFF178AE7FF41A2EFFF51A6E7FFADD3EFFF6296C6FF309A
          E7FF72BAEFFF9CCFF7FF8CC7F7FF62B2EFFF41A2EFFF2092E7FF0F7CCEFF0F6C
          B5FF0F74BDFF0F7CCEFF2092E7FF49A6EFFF499EDEFFD6E3F7FF3886BDFF389E
          EFFF7ABEF7FF9CCFF7FF84C3F7FF62B2EFFF389EEFFF178AE7FF0F78C6FF0F6C
          B5FF0F74BDFF1782D6FF2092E7FF51AAEFFF3892D6FF00000000387CB5FF41A2
          EFFF84C3F7FF9CCFF7FF7ABEF7FF59AEEFFF3096E7FF1778C6FF2074B5FF3074
          ADFF1768ADFF0F70BDFF208EDEFF51AAEFFF519AD6FF00000000C6DBEFFF498E
          C6FF519AD6FF62A6DEFF62A2D6FF72AAD6FFA5C7DEFFDEEBF7FF000000000000
          000000000000D6E3F7FF9CBEDEFF84AED6FF0000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00C3FF0000C3FF0000C3FF000083FF000083FF000083870000800000008000
          00008000000000000000000000000000000000000000000100000001000000E3
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00008CBAD6FF2882ADFF388EB5FFD6E7EFFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002882ADFF84DBFFFF078EDEFF62A2C6FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000308EB5FF7AD3FFFF078EDEFF6AA6C6FF0000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000CEDF
          EFFF51A2C6FF62CBFFFF0082D6FF7AAECEFF0000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000A5C7
          DEFF6AB6D6FF51C7FFFF0078C6FF84B6CEFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000007AB2
          CEFF84CBE7FF41BAFFFF0070B5FF94BED6FF000000000000000000000000F7D3
          E7FFE7B6D6FFE7AECEFFEFC3DEFF000000000000000000000000000000009C64
          A5FF8C78B5FF5964B5FF414894FF9C74ADFFD67CB5FFCE549CFFC61784FFB50B
          72FFAD0B6AFFB50B72FFC60B7AFFCE1384FFD6489CFFF7BEDEFF00000000C62B
          8CFFDE2F9CFFE75CB5FFEF74BDFFEF64BDFFF750B5FFEF2FA5FFE71394FFC60F
          7AFFB50B72FFC60B7AFFDE0F8CFFEF23A5FFF750B5FFDE4CA5FF00000000BD13
          7AFFF74CB5FFF786CEFFF796D6FFF774C6FFF750B5FFEF2BA5FFE71394FFC60B
          7AFFB50B72FFC60F7AFFE71394FFEF2BA5FFF758B5FFE754ADFFF7D3E7FFCE13
          84FFF750B5FFF792CEFFF796D6FFF76CC6FFF74CB5FFEF23A5FFDE0F8CFFBD0B
          7AFFBD0B72FFCE0F84FFE70F94FFEF2BA5FFF760BDFFE76CB5FFDEAECEFFD61B
          8CFFF75CBDFFF792CEFFF78ACEFFF768BDFFF744ADFFEF23A5FFDE0F8CFFBD0B
          72FFBD0B7AFFCE1384FFE71394FFF737ADFFF758B5FFE78AC6FFCE86B5FFE723
          9CFFF760BDFFF796D6FFF78ACEFFF760BDFFF744ADFFEF1B9CFFD60F8CFFB50B
          72FFBD0B7AFFD60F84FFEF1B9CFFF737ADFFEF50ADFFEFAED6FFC65C9CFFEF2B
          A5FFF76CC6FFF79AD6FFF786CEFFF760BDFFF737ADFFEF1B9CFFD60F84FFB50B
          72FFBD0B7AFFD60F8CFFEF1B9CFFF744ADFFE744A5FFF7D3E7FFC6378CFFEF33
          ADFFF774C6FFF79AD6FFF77CC6FFF75CBDFFF737ADFFEF179CFFCE1384FFB50B
          72FFC60B7AFFD60F8CFFEF1B9CFFF74CB5FFDE2F9CFF00000000B52F84FFEF40
          ADFFF77CC6FFF79AD6FFF77CC6FFF750B5FFE72B9CFFCE0F84FFB51B7AFFB527
          7AFFAD1372FFC60B7AFFE7239CFFF74CB5FFD64CA5FF00000000EFC3DEFFC644
          94FFDE4CA5FFDE5CADFFDE5CADFFD66CADFFDE9EC6FFF7DFEFFF000000000000
          000000000000F7D3E7FFDE9EC6FFD67CB5FFF7E3EFFF00000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00C3FF0000C3FF0000C3FF000083FF000083FF000083870000800000008000
          00008000000000000000000000000000000000000000000100000001000000E1
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00008CBAD6FF2882ADFF388EB5FFD6E7EFFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002882ADFF84DBFFFF078EDEFF62A2C6FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000308EB5FF7AD3FFFF078EDEFF6AA6C6FF0000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000CEDF
          EFFF51A2C6FF62CBFFFF0082D6FF7AAECEFF0000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000A5C7
          DEFF6AB6D6FF51C7FFFF0078C6FF84B6CEFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000007AB2
          CEFF84CBE7FF41BAFFFF0070B5FF94BED6FF000000000000000000000000D6D7
          EFFFB5B6E7FFB5B6E7FFC6C3EFFF000000000000000000000000000000004968
          C6FF4978CEFF1764D6FF0044B5FF5970C6FF7A78D6FF5154CEFF201FBDFF0707
          BDFF0000BDFF0000BDFF0F0FC6FF0F13CEFF4140DEFFBDBEF7FF000000003033
          BDFF4144CEFF6260E7FF7270EFFF6A68EFFF595CE7FF4140DEFF2827D6FF070B
          C6FF0000C6FF0707CEFF1717D6FF302FE7FF5150F7FF4144E7FF00000000201F
          B5FF6A68D6FF8C8AF7FF9492FFFF7274F7FF595CE7FF4140DEFF2023D6FF070B
          C6FF0000C6FF0707CEFF1717D6FF302FE7FF5154F7FF494CEFFFD6D7EFFF2827
          B5FF6A6CDEFF8C8AF7FF8C8EFFFF7274F7FF595CE7FF3837DEFF201FCEFF0000
          C6FF0000C6FF0707CEFF2023D6FF383BE7FF5958FFFF6264EFFFADAAE7FF3837
          B5FF7274DEFF9492F7FF8C8AFFFF6A68EFFF5154E7FF3837DEFF171BCEFF0000
          C6FF0003C6FF0F13CEFF2023D6FF383BE7FF5150F7FF8486EFFF8482D6FF494C
          BDFF7A78E7FF9492FFFF8486F7FF6A68EFFF5154E7FF3033D6FF171BCEFF0000
          C6FF0000C6FF0F13CEFF2023DEFF4140EFFF4948F7FFADAAF7FF595CC6FF595C
          C6FF7A78E7FF9492FFFF8486F7FF6A68EFFF494CE7FF302FD6FF0F13CEFF0000
          C6FF0000C6FF0F13CEFF2827DEFF494CEFFF3837EFFFCECFF7FF4140B5FF595C
          CEFF8486EFFF9492FFFF7A7CF7FF6264EFFF4948DEFF2827D6FF0F13CEFF0000
          C6FF070BC6FF1717D6FF2827DEFF494CEFFF282BE7FF000000003837B5FF6260
          CEFF8486EFFF9492FFFF7A7CF7FF6264EFFF3837DEFF1717C6FF171BBDFF2023
          B5FF070BB5FF0F0FBDFF2827DEFF4948F7FF4948DEFF00000000C6C3EFFF4144
          C6FF494CD6FF595CE7FF5958DEFF6A68D6FF9C9EDEFFDEDFF7FF000000000000
          000000000000D6D7EFFF9496DEFF7A78DEFFE7E3F7FF00000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00C3FF0000C3FF0000C3FF000083FF000083FF000083870000800000008000
          00008000000000000000000000000000000000000000000100000001000000E1
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00008CBAD6FF2882ADFF388EB5FFD6E7EFFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002882ADFF84DBFFFF078EDEFF62A2C6FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000308EB5FF7AD3FFFF078EDEFF6AA6C6FF0000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000CEDF
          EFFF51A2C6FF62CBFFFF0082D6FF7AAECEFF0000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000A5C7
          DEFF6AB6D6FF51C7FFFF0078C6FF84B6CEFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000007AB2
          CEFF84CBE7FF41BAFFFF0070B5FF94BED6FF0000000000000000000000000000
          0000B5E3E7FFADE3E7FFC6EBEFFF0000000000000000000000000000000049B2
          BDFF49BACEFF17A6CEFF0086ADFF59B6C6FF7AD3D6FF51CBC6FF17C3BDFF07B6
          ADFF07AAA5FF07B6B5FF07C7BDFF0FCBC6FF49D3CEFFBDF3F7FF0000000028C3
          BDFF30DFDEFF59E7E7FF72EBE7FF62EBE7FF51F3EFFF30EFEFFF0FE7E7FF0FC7
          C6FF07B6B5FF07C7BDFF0FDBD6FF20EFE7FF51F3EFFF49DFDEFF000000000FBE
          BDFF49F3EFFF84F7F7FF94F7F7FF72F7F7FF51F3EFFF28EFEFFF0FE3DEFF07C7
          BDFF07B6B5FF0FC7C6FF0FE3DEFF28EFEFFF59F3EFFF51E3DEFFD6F3F7FF0FCB
          C6FF51F3EFFF8CF7F7FF94F7F7FF6AF7EFFF49F3EFFF28EFEFFF0FDFDEFF07BA
          B5FF07BAB5FF0FCBC6FF0FE3DEFF30EFEFFF62F3EFFF6AE3DEFFADDFDEFF17D7
          CEFF59F3EFFF94F7F7FF8CF7F7FF6AF7EFFF41EFEFFF20EFE7FF0FDBD6FF07BA
          B5FF07BAB5FF0FCFC6FF0FE7E7FF38F3EFFF59F3EFFF8CE7E7FF84CFCEFF20E7
          DEFF62F3EFFF94F7F7FF8CF7F7FF62F3EFFF41EFEFFF17EFE7FF0FD7CEFF07B6
          B5FF07BAB5FF0FD7CEFF17EBE7FF38F3EFFF51EBE7FFADEFEFFF59C7C6FF28EF
          E7FF6AF7EFFF9CF7F7FF84F7F7FF62F3EFFF38F3EFFF17EFE7FF0FD7CEFF07B6
          B5FF07BEBDFF0FD7CEFF17EBE7FF41EFEFFF41E3DEFFD6F7F7FF38C3BDFF30EF
          EFFF72F7F7FF9CF7F7FF7AF7F7FF59F3EFFF38F3EFFF17EBE7FF0FCBC6FF07B6
          ADFF07C7BDFF0FD7D6FF20EFE7FF49F3EFFF38DBD6FF0000000030B6B5FF41EF
          EFFF7AF7F7FF9CF7F7FF7AF7F7FF51F3EFFF28E7E7FF0FCBC6FF17B6B5FF28B2
          ADFF0FAEADFF07C7BDFF20E7DEFF49F3EFFF49D7D6FF00000000C6EBEFFF41C7
          C6FF49DBD6FF59DFDEFF59DBD6FF6AD7D6FF9CDFDEFF00000000000000000000
          000000000000D6F3F7FF9CDBDEFF7AD3D6FF0000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00C3FF0000C3FF0000C3FF000083FF000083FF000083C70000800000008000
          00008000000000000000000000000000000000000000000100000001000001E3
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000F7DFC6FFE7C7A5FFDEB284FFD69E6AFFCE9259FFC68651FFC68651FFC686
          59FFCE926AFFCE9E84FFDEB6A5FFEFD7CEFF0000000000000000EFD3A5FFD686
          0FFFDE8E28FFDE9641FFE79E51FFE7A659FFEFA659FFE7A651FFE79A41FFDE8E
          30FFCE780FFFC66400FFB55000FFA54000FFA54007FFDEBEADFFDE9620FFF7BA
          72FFFFC384FFFFC78CFFFFCB8CFFFFC78CFFFFC384FFF7BE7AFFF7B662FFEFAA
          49FFE79A30FFDE8A0FFFCE7400FFBD6400FFAD4C00FFA55020FFDE9A28FFFFC7
          8CFFFFCB94FFFFCF9CFFFFCF9CFFFFCF9CFFFFCB94FFFFC78CFFF7BE7AFFF7B6
          62FFEFA641FFDE9620FFD68200FFC66C00FFB55000FFA54C17FFEFBA6AFFF7BA
          72FFFFD3A5FFFFD7ADFFFFD7ADFFFFD7ADFFFFD3A5FFFFCB94FFFFC384FFF7BA
          72FFEFAA51FFE79A30FFDE8607FFCE7400FFB55000FFC68A62FFFFEBD6FFE7A2
          41FFFFDBB5FFFFDFBDFFFFE3C6FFFFDFBDFFFFDBB5FFFFD3A5FFFFCB94FFF7BE
          7AFFF7B662FFE7A238FFDE8A0FFFCE7800FFB55000FFF7E3D6FF00000000EFC7
          84FFF7C37AFFFFE7CEFFFFEBD6FFFFE7CEFFFFDFBDFFFFD7ADFFFFCF9CFFFFC3
          84FFF7B66AFFEFA649FFDE9620FFC66C00FFD6A272FF00000000000000000000
          0000EFAE59FFFFDFBDFFFFF3E7FFFFEFDEFFFFE7CEFFFFDBB5FFFFCF9CFFFFC7
          8CFFF7BA72FFEFAA49FFDE8A20FFC67C28FF0000000000000000000000000000
          0000FFEFDEFFEFAE59FFFFF3E7FFFFF3E7FFFFEBD6FFFFDFBDFFFFD3A5FFFFC7
          8CFFF7BA72FFEFA649FFCE780FFFF7EBDEFF0000000000000000000000000000
          000000000000F7DFBDFFEFBA72FFFFF3E7FFFFEBD6FFFFDFBDFFFFD3A5FFFFC7
          8CFFF7BA72FFD68617FFEFD3ADFF000000000000000000000000000000000000
          00000000000000000000F7CF9CFFF7C384FFFFE7CEFFFFDBB5FFFFCF9CFFFFC7
          8CFFE79A30FFEFBE7AFF00000000000000000000000000000000000000000000
          0000000000000000000000000000F7C78CFFF7C384FFFFD7ADFFFFCF9CFFEFAA
          51FFEFBA6AFF0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000F7CB94FFEFAE59FFEFAA49FFEFC7
          84FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000C003000000000000000000000000000000000000000000008001
          0000C0030000C0030000E0070000F00F0000F81F0000FC3F0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000C6C7F7FF9C9EEFFF8482DEFF6A68D6FF595CCEFF5150CEFF5150C6FF595C
          C6FF6A68CEFF8482D6FFA5A2DEFFC6C7EFFF0000000000000000A5A6F7FF1717
          D6FF2827DEFF4140E7FF494CE7FF5154EFFF5154F7FF4948F7FF3837EFFF201F
          EFFF0707DEFF0003C6FF0003ADFF0003A5FF070B9CFFADAAE7FF201FE7FF6A6C
          FFFF8486FFFF8C8EFFFF8C8EFFFF8C8EFFFF8486FFFF7274FFFF595CFFFF4140
          FFFF171BFFFF0003E7FF0003CEFF0003BDFF0003ADFF201FADFF201FEFFF8C8E
          FFFF9492FFFF9C9EFFFF9C9EFFFF9C9EFFFF9492FFFF8C8EFFFF7274FFFF5154
          FFFF302FFFFF070BF7FF0003D6FF0003C6FF0003B5FF171BADFF6260FFFF6A6C
          FFFFA5A2FFFFADAEFFFFADAEFFFFADAEFFFFA5A2FFFF9492FFFF8486FFFF6A6C
          FFFF4140FFFF171BFFFF0003E7FF0003C6FF0003B5FF6260C6FFD6D3FFFF282B
          FFFFB5B2FFFFBDBEFFFFC6C3FFFFBDBEFFFFB5B2FFFFA5A2FFFF9492FFFF7A78
          FFFF5154FFFF2827FFFF0003EFFF0003CEFF0003ADFFD6D7F7FF000000007A78
          FFFF7274FFFFCECFFFFFD6D3FFFFCECFFFFFBDBEFFFFADAEFFFF9C9EFFFF8486
          FFFF6260FFFF302FFFFF070BF7FF0003C6FF7270D6FF00000000000000000000
          00004140FFFFB5B6FFFFE7E7FFFFDEDBFFFFCECFFFFFB5B2FFFFA5A2FFFF8C8A
          FFFF6A68FFFF383BFFFF0F0FEFFF282BC6FF0000000000000000000000000000
          0000DEDBFFFF4140FFFFE7E7FFFFE7E7FFFFD6D3FFFFBDBEFFFFA5A2FFFF8C8E
          FFFF6A6CFFFF383BF7FF0F13CEFFDEDBF7FF0000000000000000000000000000
          000000000000B5B6FFFF6260FFFFE7E7FFFFD6D3FFFFBDBEFFFFA5A2FFFF8C8E
          FFFF6A6CFFFF0F13DEFFADAEF7FF000000000000000000000000000000000000
          000000000000000000009492FFFF7A78FFFFCECFFFFFB5B2FFFFA5A2FFFF8C8E
          FFFF282BEFFF7A7CEFFF00000000000000000000000000000000000000000000
          00000000000000000000000000007A78FFFF7274FFFFADAEFFFF9C9EFFFF4140
          FFFF6264F7FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000008C8EFFFF494CFFFF383BFFFF7A78
          FFFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000C003000000000000000000000000000000000000000000008001
          0000C0030000C0030000E0070000F00F0000F81F0000FC3F0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000C6EFF7FF9CE3EFFF84D7DEFF6ACFDEFF59C3CEFF49BECEFF51BAC6FF59BA
          C6FF6AC3CEFF84CBD6FFA5D7DEFFC6EBEFFF0000000000000000A5EBF7FF0FC3
          D6FF28CBDEFF38D3E7FF49DBEFFF51DFEFFF51E3F7FF49E3F7FF30DFF7FF17D7
          EFFF00C7DEFF00AEC6FF009EADFF0092A5FF0792A5FFADDBE7FF20CFE7FF6AEF
          FFFF84F3FFFF8CF3FFFF8CF3FFFF8CF3FFFF84F3FFFF72EFFFFF59EFFFFF38EB
          FFFF17E7FFFF00CFE7FF00B6CEFF00AABDFF009EADFF209AADFF17DBEFFF84F3
          FFFF94F3FFFF9CF3FFFF9CF3FFFF9CF3FFFF94F3FFFF8CF3FFFF72EFFFFF51EB
          FFFF30E7FFFF07DFF7FF00BED6FF00AEC6FF00A2B5FF179AADFF59EFFFFF6AEF
          FFFFA5F7FFFFADF7FFFFADF7FFFFADF7FFFFA5F7FFFF94F3FFFF84F3FFFF6AEF
          FFFF41EBFFFF17E7FFFF00CFE7FF00B6CEFF009EB5FF62BECEFFD6FBFFFF28E7
          FFFFB5F7FFFFBDF7FFFFC6FBFFFFBDF7FFFFB5F7FFFFA5F7FFFF94F3FFFF72EF
          FFFF51EBFFFF28E7FFFF00D7EFFF00B6CEFF009EADFFD6F3F7FF000000007AEF
          FFFF72EFFFFFCEFBFFFFD6FBFFFFCEFBFFFFBDFBFFFFADF7FFFF9CF3FFFF84F3
          FFFF62EFFFFF30E7FFFF07DFF7FF00AEC6FF72CFD6FF00000000000000000000
          000041EBFFFFB5F7FFFFE7FFFFFFDEFBFFFFCEFBFFFFB5F7FFFF9CF3FFFF8CF3
          FFFF6AEFFFFF38EBFFFF07D7EFFF28BACEFF0000000000000000000000000000
          00000000000041EBFFFFE7FFFFFFE7FFFFFFD6FBFFFFBDF7FFFFA5F7FFFF8CF3
          FFFF6AEFFFFF38E7FFFF0FBACEFF000000000000000000000000000000000000
          000000000000B5F7FFFF62EFFFFFE7FFFFFFD6FBFFFFBDF7FFFFA5F7FFFF8CF3
          FFFF6AEFFFFF0FC7DEFFADEBF7FF000000000000000000000000000000000000
          000000000000000000008CF3FFFF7AEFFFFFCEFBFFFFB5F7FFFFA5F7FFFF8CF3
          FFFF28DBEFFF7AE3EFFF00000000000000000000000000000000000000000000
          00000000000000000000000000007AF3FFFF72EFFFFFADF7FFFF9CF3FFFF41EB
          FFFF62E7F7FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000084F3FFFF49EBFFFF38EBFFFF7AEF
          FFFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000C003000000000000000000000000000000000000000000008001
          0000C0030000E0070000E0070000F00F0000F81F0000FC3F0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000CEEFCEFFA5E3A5FF8CD78CFF72CF72FF62C362FF59BE59FF59BE59FF6ABA
          6AFF72C372FF8CCB8CFFA5D7A5FFCEEFCEFF0000000000000000ADEBADFF28C3
          28FF38CB38FF49D349FF59DB59FF62DF62FF62E362FF59E359FF49DF49FF30D7
          30FF17CB17FF0FAE0FFF0F9E0FFF0F920FFF179217FFB5DFB5FF30CF30FF7AEF
          7AFF94F394FF94F394FF9CF39CFF94F394FF8CF38CFF84EF84FF6AEF6AFF51EB
          51FF30E730FF17CB17FF17B617FF0FAE0FFF0F9E0FFF309E30FF30DB30FF94F3
          94FFA5F3A5FFA5F3A5FFADF7ADFFA5F3A5FFA5F3A5FF94F394FF84EF84FF62EB
          62FF41E741FF20DF20FF17B617FF0FAE0FFF0FA20FFF289A28FF6AEF6AFF7AEF
          7AFFADF7ADFFB5F7B5FFB5F7B5FFB5F7B5FFADF7ADFFA5F3A5FF94F394FF7AEF
          7AFF59EB59FF30E730FF17CB17FF17B617FF0F9E0FFF6ABA6AFFD6FBD6FF41E7
          41FFBDF7BDFFC6F7C6FFC6FBC6FFC6F7C6FFBDF7BDFFADF7ADFF9CF39CFF84EF
          84FF62EB62FF38E738FF17D717FF17B617FF0F9E0FFFD6F3D6FF0000000084EF
          84FF84EF84FFD6FBD6FFD6FBD6FFD6FBD6FFC6FBC6FFB5F7B5FFA5F3A5FF8CF3
          8CFF72EF72FF49E749FF20DF20FF0FAE0FFF7ACF7AFF00000000000000000000
          000059EB59FFBDF7BDFFE7FFE7FFDEFBDEFFCEFBCEFFBDF7BDFFADF7ADFF94F3
          94FF72EF72FF51EB51FF20D720FF38BA38FF0000000000000000000000000000
          0000DEFBDEFF59EB59FFE7FFE7FFEFFFEFFFD6FBD6FFC6F7C6FFADF7ADFF9CF3
          9CFF7AEF7AFF51E751FF20BA20FFDEF7DEFF0000000000000000000000000000
          000000000000BDF7BDFF72EF72FFEFFFEFFFD6FBD6FFC6F7C6FFADF7ADFF9CF3
          9CFF7AEF7AFF28C328FFB5EBB5FF000000000000000000000000000000000000
          000000000000000000009CF39CFF84EF84FFD6FBD6FFBDF7BDFFADF7ADFF94F3
          94FF41DB41FF84E384FF00000000000000000000000000000000000000000000
          00000000000000000000000000008CF38CFF84EF84FFB5F7B5FFA5F3A5FF51EB
          51FF72E772FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000094F394FF59EB59FF51EB51FF84EF
          84FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000C003000000000000000000000000000000000000000000008001
          0000C0030000C0030000E0070000F00F0000F81F0000FC3F0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000CEE7F7FFA5D3E7FF8CBEDEFF72B2D6FF62A6C6FF59A2C6FF59A2C6FF62A2
          BDFF72AEC6FF8CB6CEFFA5CBDEFFCEE3EFFF0000000000000000ADD7EFFF2096
          CEFF30A2D6FF49AAD6FF59B6DEFF62BAE7FF62BAE7FF59BAE7FF41B2E7FF28A6
          DEFF1796CEFF0F7CB5FF0F74A5FF076C9CFF0F6C94FFADCFDEFF289ED6FF7ACB
          F7FF94D7F7FF94DBF7FF9CDBF7FF94DBF7FF94D7F7FF7ACBF7FF6ACBF7FF49BE
          EFFF28AEEFFF0F9AD6FF0F86BDFF0F7CB5FF0770A5FF287CA5FF28A6DEFF94D7
          F7FF9CDBF7FFA5DFF7FFA5DFF7FFA5DFF7FF9CDBF7FF94DBF7FF84CFF7FF62C7
          F7FF41B6EFFF17A6E7FF0F8EC6FF0F82B5FF0F74A5FF2078A5FF6AC7EFFF7ACB
          F7FFADDFF7FFB5E3FFFFB5E3FFFFB5E3FFFFADDFF7FFA5DFF7FF94D7F7FF72CB
          F7FF51BEEFFF28AEEFFF0F96D6FF0F86BDFF0F74A5FF6AA6C6FF0000000038B6
          EFFFB5E3FFFFC6EBFFFFC6EBFFFFC6EBFFFFBDE7FFFFADDFF7FF9CDBF7FF84D3
          F7FF62C7F7FF38B6EFFF0F9EDEFF0F86BDFF0F74A5FFD6EBF7FF0000000084D3
          F7FF84CFF7FFD6EFFFFFDEF3FFFFD6EFFFFFC6EBFFFFB5E3FFFFA5DFF7FF94D7
          F7FF6ACBF7FF41BAEFFF17A6E7FF0F82B5FF7AB6D6FF00000000000000000000
          000051BEEFFFBDE7FFFFEFF7FFFFE7F7FFFFD6EFFFFFBDE7FFFFA5DFF7FF94D7
          F7FF72CBF7FF49BEEFFF179EDEFF3896BDFF0000000000000000000000000000
          00000000000051BEEFFFEFF7FFFFEFF7FFFFD6EFFFFFBDE7FFFFADDFF7FF9CDB
          F7FF7ACBF7FF49BEEFFF208EC6FF000000000000000000000000000000000000
          000000000000BDE7FFFF6ACBF7FFEFF7FFFFD6F3FFFFC6E7FFFFADDFF7FF9CDB
          F7FF72CBF7FF2096CEFFB5DBEFFF000000000000000000000000000000000000
          000000000000000000009CDBF7FF84D3F7FFD6EFFFFFBDE7FFFFA5DFF7FF94D7
          F7FF38AADEFF84C7E7FF00000000000000000000000000000000000000000000
          00000000000000000000000000008CD3F7FF84D3F7FFB5E3FFFFA5DFF7FF51BE
          EFFF6AC7EFFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000094D7F7FF59C3F7FF49BEEFFF84D3
          F7FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000C003000000000000000000000000000000000000800000008001
          0000C0030000E0070000E0070000F00F0000F81F0000FC3F0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000F7CBE7FFE7A6CEFFDE8ABDFFD670ADFFC6649CFFC65894FFC65894FFBD64
          9CFFC670A5FFCE8AB5FFDEA6C6FFEFCBDEFF0000000000000000EFAAD6FFCE23
          84FFD63394FFD64C9CFFDE5CADFFE764ADFFE764ADFFE758ADFFE744A5FFDE2B
          94FFCE1784FFB50F72FFA50F62FF9C0B62FF941362FFDEAECEFFD62B94FFF778
          C6FFF792CEFFF792CEFFF79ED6FFF792CEFFF792CEFFF778C6FFF768BDFFEF4C
          ADFFEF2B9CFFD61384FFBD0F72FFB50F6AFFA50B62FFA52B72FFDE2B94FFF792
          CEFFF7A2D6FFF7A2D6FFF7A2D6FFF7AAD6FFF79ED6FFF792CEFFF786C6FFF764
          B5FFEF40A5FFE71B94FFC60F7AFFB50F72FFA50F6AFFA5236AFFEF68BDFFF778
          C6FFF7AADEFFFFB6DEFFFFBADEFFFFB6DEFFF7AAD6FFF7A2D6FFF792CEFFF774
          BDFFEF54ADFFEF2B9CFFD61384FFBD0F72FFA50F6AFFC6689CFFFFD7EFFFEF3B
          A5FFFFB6DEFFFFC3E7FFFFC3E7FFFFC3E7FFFFBADEFFF7AAD6FFF79ED6FFF786
          C6FFF764B5FFEF37A5FFDE138CFFBD0F72FFA50F6AFFF7D7E7FF00000000F786
          C6FFF786C6FFFFD7EFFFFFDBEFFFFFD7EFFFFFC3E7FFFFB6DEFFF7A2D6FFF792
          CEFFF768BDFFEF44ADFFE71B94FFB50F72FFD678ADFF00000000000000000000
          0000EF4CADFFFFBEE7FFFFEBF7FFFFE3F7FFFFD7EFFFFFB6DEFFF7A2D6FFF796
          CEFFF774BDFFEF4CADFFDE1B8CFFBD378CFF0000000000000000000000000000
          0000FFDBEFFFEF54ADFFFFEBF7FFFFEBF7FFFFD7EFFFFFBEE7FFF7AAD6FFF796
          CEFFF778C6FFEF4CADFFC61F7AFFF7DBEFFF0000000000000000000000000000
          000000000000FFBADEFFF768BDFFFFEBF7FFFFDBEFFFFFC3E7FFF7AADEFFF796
          CEFFF774BDFFCE2384FFEFB2D6FF000000000000000000000000000000000000
          00000000000000000000F79ED6FFF786C6FFFFD7EFFFFFBADEFFF7AAD6FFF796
          CEFFDE3B9CFFE786BDFF00000000000000000000000000000000000000000000
          0000000000000000000000000000F78ACEFFF786C6FFFFB6DEFFF7A2D6FFEF54
          ADFFEF6CB5FF0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000F78ACEFFF75CB5FFEF4CADFFF786
          C6FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000C003000000000000000000000000000000000000000000008001
          0000C0030000C0030000E0070000F00F0000F81F0000FC3F0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000D6D7D6FFB5B6B5FF9C9E9CFF8C8A8CFF7A787AFF6A6C6AFF6A6C6AFF7270
          72FF7A787AFF949294FFADAEADFFCECFCEFF0000000000000000BDBEBDFF5958
          59FF626062FF727072FF7A787AFF848284FF848284FF7A787AFF727072FF6260
          62FF515451FF383B38FF282B28FF201F20FF201F20FFB5B6B5FF626062FF9496
          94FFA5A2A5FFA5A2A5FFA5A6A5FFA5A2A5FFA5A2A5FF9C9E9CFF8C8A8CFF8482
          84FF6A6C6AFF595859FF414441FF383B38FF282B28FF383B38FF6A6C6AFFA5A2
          A5FFADAEADFFADAEADFFADAEADFFADAEADFFADAEADFFA5A2A5FF9C9E9CFF8C8A
          8CFF7A787AFF626062FF494C49FF414441FF302F30FF303330FF9C9E9CFF9492
          94FFB5B6B5FFBDBEBDFFBDBEBDFFB5B6B5FFB5B6B5FFADAEADFFA5A2A5FF9492
          94FF848284FF6A6C6AFF515451FF414441FF302F30FF727072FFE7E3E7FF7270
          72FFBDBEBDFFC6C3C6FFC6C3C6FFC6C3C6FFBDBEBDFFB5B2B5FFADAEADFF9C9E
          9CFF8C8A8CFF727072FF595859FF494C49FF282B28FFDEDFDEFF00000000ADAE
          ADFF9C9E9CFFCECFCEFFCECFCEFFCECFCEFFC6C3C6FFBDBABDFFADAEADFFA5A2
          A5FF949294FF7A787AFF626062FF414441FF8C8A8CFF00000000000000000000
          00008C8A8CFFC6C3C6FFDEDFDEFFD6D7D6FFCECBCEFFBDBEBDFFB5B2B5FFA5A2
          A5FF949294FF7A7C7AFF595859FF595859FF0000000000000000000000000000
          0000E7E3E7FF848284FFDEDFDEFFDEDBDEFFCECFCEFFC6C3C6FFB5B2B5FFA5A2
          A5FF949694FF7A7C7AFF515451FFE7E3E7FF0000000000000000000000000000
          000000000000CECFCEFF949294FFDEDFDEFFCECFCEFFC6C3C6FFB5B2B5FFA5A2
          A5FF949694FF595859FFC6C3C6FF000000000000000000000000000000000000
          00000000000000000000B5B6B5FF9C9E9CFFCECBCEFFBDBEBDFFB5B6B5FFA5A2
          A5FF6A6C6AFFA5A6A5FF00000000000000000000000000000000000000000000
          0000000000000000000000000000ADAEADFF9C9E9CFFBDBABDFFADAEADFF8482
          84FF9C9E9CFF0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000ADAEADFF848284FF7A787AFFADAE
          ADFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000C003000000000000000000000000000000000000000000008001
          0000C0030000C0030000E0070000F00F0000F81F0000FC3F0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000C58C
          6FFFB65D19FFC06D22FFB76B40FF000000000000000000000000000000000000
          0000CA9272FFBF784AFF0000000000000000000000000000000000000000C575
          27FFDF9F44FFE1A249FFDD9D48FFBC6E3FFF0000000000000000000000000000
          0000BC661EFFDC9739FFC87929FFC38561FF000000000000000000000000D996
          43FFE3A650FFE4A955FFE5AB59FFE2A758FFAE5721FF00000000000000000000
          0000C38561FFD58D34FFDC9739FFD08731FFC58C6FFF00000000C38561FFE5AB
          59FFE5AB59FFE8B162FFE8B162FFEAB66BFFE6B168FFBC6E3FFF000000000000
          000000000000BC661EFFDC9739FFDC9739FFBA631CFF00000000C68557FFEAB6
          6BFFEAB66BFFECBB72FFECBB72FFEFC07BFFEFC07BFFEBBA78FFB76B40FF0000
          000000000000CB9678FFD08731FFD58D34FFCD812DFFC58C6FFFC57E49FFECBB
          72FFEBBA78FFEFC07BFFF1C584FFF1C584FFF4CA8DFFF4CA8DFFD2935AFF0000
          00000000000000000000B5550AFFC87929FFC87929FFB25E2AFFC4793DFFF1C5
          84FFF1C584FFF4CA8DFFF4CA8DFFF6CF96FFF6D096FFD4965EFFCB9678FF0000
          00000000000000000000B66737FFC06D22FFBA631CFFAF4A01FFC67C44FFF4CA
          8DFFF6CF96FFF6CF96FFF8D49EFFF8D49EFFFBD9A7FFBF7E5FFF000000000000
          00000000000000000000B46336FFB65D19FFB5550AFFA44005FFC27640FFF8D4
          9EFFF8D49EFFFBD9A7FFFBD9A7FFFEDFB0FFFEDFB0FFC57E49FF000000000000
          00000000000000000000A44005FFAB4E0FFFA7470CFF9D3802FF00000000C589
          68FFB86F49FFF7D3A4FFFEDFB0FFFEDFB0FFFBD9A7FFF3C88AFFB86F49FF0000
          00000000000000000000A44005FFA44005FF9D3802FFA54C1FFF000000000000
          000000000000CA8551FFF8D49EFFF4CA8DFFEFC07BFFECBB72FFE5AB59FFB868
          33FFC58C6FFFA0400FFF993200FF993200FF993200FFCB9678FF000000000000
          000000000000CB9678FFCE894AFFEAB66BFFE5AB59FFE3A650FFDF9F44FFDC97
          39FFC06A1BFFA44005FF993200FF993200FFAC582FFF00000000000000000000
          00000000000000000000C58C6FFFBC661EFFDC9739FFDA9131FFD78928FFD481
          1FFFD27815FFCF700CFFC05D05FFB25F2FFF0000000000000000000000000000
          000000000000000000000000000000000000C38561FFB86428FFB5550AFFB451
          05FFAF4A01FFBC6E3FFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF000087CF000083C3000081C1000000E1000000600000007000000070
          000000F0000000F0000080700000E0000000E0010000F0030000FC0F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000ADD7F7FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000007ABAEFFFA5D7FFFF94CBF7FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000006AB2E7FFB5E3FFFF84C7EFFFE7F3FFFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000008CBEE7FF9CD7FFFFB5E3FFFF8CBEEFFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000B5D3EFFF7ABAEFFFBDEFFFFF94CFF7FFA5CFEFFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000C6DFEFFF6AB2E7FFA5D7FFFFB5EBFFFF84C7EFFF94C3
          E7FF000000000000000000000000000000000000000000000000EFF7FFFF94BA
          DEFF7AAEDEFF7AAEDEFF6AAEDEFF8CCBF7FF94CBF7FFB5EBFFFFA5D7FFFF7ABE
          F7FF6292DEFF6250B5FF280FA5FF3017A5FF8474C6FF000000009CBADEFF499A
          DEFFADD7FFFFC6E3FFFFBDE7FFFFBDEBFFFFBDEBFFFFB5EBFFFFA5D7FFFF8CCF
          FFFF72B2F7FF281FA5FF2000B5FF2000BDFF2000BDFF8C7CCEFFADCBE7FF388A
          D6FF7ABEF7FF9CCFFFFFADDFFFFFBDEBFFFFBDEFFFFFBDEBFFFFA5DFFFFF8CCF
          FFFF7ABEF7FF4968C6FF2000C6FF2000C6FF2000C6FF3017ADFF418ABDFF388A
          D6FF84BEF7FFA5D7FFFFBDE7FFFFBDEBFFFFBDEBFFFFBDEBFFFFADE3FFFF9CD7
          FFFF84C7FFFF5178CEFF2000B5FF2000BDFF2000B5FF17009CFF3082B5FF388A
          D6FF7ABEF7FF94CBFFFFA5D7FFFFB5E3FFFFBDEFFFFFBDEBFFFFB5EBFFFFA5D7
          FFFF94CBFFFF5164C6FF1700B5FF1700ADFF1700ADFF20079CFFB5D3E7FF1774
          BDFF59A2E7FF84BEF7FFA5D7FFFFADDFFFFFBDEBFFFFBDEFFFFFBDEBFFFFB5EB
          FFFFA5D7FFFF4144B5FF17009CFF6248DEFF4123C6FF513BADFF84B6D6FF308A
          C6FF62AAEFFF72B2F7FF84C7FFFF9CD7FFFFB5E3FFFFBDEBFFFFBDEBFFFFBDEB
          FFFFA5D7F7FF281FA5FF2007A5FF300FD6FF280BB5FFADA2D6FFE7EFF7FF388A
          B5FF2882CEFF59AAEFFF84BEF7FF94CBFFFFA5D7FFFF9CD3F7FF59A6CEFF388A
          BDFF418ABDFF201794FF17008CFF2007A5FF7A6CBDFF0000000000000000B5D3
          E7FF1774B5FF4192D6FF519EE7FF499ED6FF388ABDFF6AA6C6FFCEE3EFFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000A5CBDEFF7AB2CEFF7AB2CEFFA5CBDEFFF7F7FFFF00000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FBFF0000F1FF0000F0FF0000F0FF0000F07F0000F03F0000000100000000
          0000000000000000000000000000000000000000000000010000807F0000C1FF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000006299
          C7FF02669DFF1977B1FF0B6BA5FF02669DFF0000000000000000000000000000
          0000AD835FFFA0683FFFA99785FF8CB6D3FF5C9AC0FF287BABFF2A7DB6FF62A8
          DEFF94CEF8FF85C2F6FF6CADE5FF2A7DB6FF4F96B9FF00000000000000009C55
          1AFFBB7225FFA14E12FF844319FF67A5D2FF7DB9DDFFA3D9F6FFBDECFFFFAEE1
          FEFFA2D5FEFF85C2F6FF68AFEBFF4995D5FF1B75ABFF7EB2CCFFAD835FFFBE74
          2DFFAD722DFFA8591AFF856448FF9CD2F5FFB5E6FEFFBDECFFFFBDECFFFFB5E6
          FEFFACDDFFFFA2D5FEFF8AC5F6FF71B5F2FF297BBCFF6FA9C6FF99521FFFB55E
          20FFBB7840FFA44200FF787774FF94CEF8FFACDDFFFFB5E6FEFFBDECFFFFBDEC
          FFFFB5E6FEFFA2D5FEFF8AC5F6FF63A9E5FF297BBCFF3886B2FF994300FFB14B
          00FFB75000FFBB5500FF6D889FFF85C2F6FF9CD1FCFFB5E6FEFFBDECFFFFBDEC
          FFFFC1EAFFFFC1E6FFFFB5DAF9FF9CCBF3FF599FDDFF1B75ABFF9C4900FFC059
          00FFC05900FFC76100FF668BADFF7BBDF6FF8FCBF8FFA6DBFCFFB5E6FEFFBDEC
          FFFFBDECFFFFB5E6FEFF9CD1FCFF7BBDF6FF3781C4FF6B9FC8FFAB743FFFC761
          00FFC35D00FFC05900FF6E6864FF71B5F2FF88C6F8FF9CD1FCFFBDECFFFFBDEC
          FFFFBDECFFFFC1E6FFFFBDE1FDFFB5DAF9FF599FDDFF77A3CEFF00000000A154
          0FFFB14B00FFAF4800FF88440DFF6299C7FF85C2F6FF9CD1FCFFB5E6FEFFAEE1
          FEFFAEE1FEFF8CC4F3FF84B6E1FF7CAFDDFF4788C6FF9EBEDEFF000000000000
          00000000000000000000000000009AC5E6FF539DD7FF94CEF8FFB5E6FEFF84BF
          F1FF6CADE5FF67A5D2FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000056A5DFFFA3D9F6FFAEE1
          FEFF62A8DEFFA3C8E6FF00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000005BA8DDFFB5E6
          FEFF89C7EEFF84B8E1FF00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000009CCBF3FF89C7
          EEFF9ED5FAFF56A5DFFF00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000063B1
          E5FFB5E6FEFF599FDDFF00000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000A9D3
          EFFF63A9E5FF89C7EEFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FF830000C001000080000000000000000000000000000000000000000000
          000080000000F80F0000FE0F0000FF0F0000FF0F0000FF8F0000FF8F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000E7C79CFFE7B672FFDEA2
          49FFDE9630FFD68207FFD67C00FFD68207FFBD6C20FFDEBEADFF00000000D6AA
          84FFC68651FFBD6C20FFCE8641FF00000000EFD7B5FFC66800FFCE7000FFD67C
          00FFDE8A0FFFDE8E17FFD67C00FFDE8A0FFFBD6007FFAD5007FFA54807FFAD44
          00FFB55000FFBD5C00FFC6680FFF0000000000000000CE8630FFCE7000FFCE78
          00FFDE8A0FFFE79630FFDE8E17FFDE8E17FFBD6007FFAD4800FFA53B00FFAD48
          00FFB55000FFBD5C00FFBD6000FFD69249FF0000000000000000CE7807FFCE78
          00FFD68207FFDE8E17FFD68207FFD68607FFBD5C00FFAD4800FFA53B00FFAD48
          00FFB55000FFBD6000FFBD6000FFC66800FFF7E3D6FF00000000CE7807FFCE78
          00FFD68207FFDE9220FFDE8A0FFFDE8A0FFFBD6007FFAD4800FFA53B00FFAD48
          00FFB55000FFBD5C00FFBD6000FFCE8630FF00000000EFD7B5FFCE7000FFCE78
          00FFDE8A0FFFE79A30FFDE8E17FFDE8E17FFBD6007FFAD4800FFA53B00FFAD48
          00FFB55000FFBD5C00FFBD6000FFDEAE7AFF00000000D69A51FFCE7000FFCE70
          00FFD68200FFDE8E17FFD68207FFD68200FFBD5C00FFAD4800FFA53B00FFAD48
          00FFB55000FFBD5C00FFBD6000FFDEBE94FF00000000DEA262FFCE7000FFCE78
          00FFD68607FFDE9220FFDE8A0FFFDE8A0FFFBD6007FFAD4800FFA53B00FFAD48
          00FFB55000FFBD5C00FFBD5C00FFC67820FFEFDFC6FF00000000D68A28FFCE78
          00FFDE8A0FFFE79A30FFDE9220FFDE9628FFBD600FFFAD4800FFA53B00FFAD48
          00FFB55000FFBD5C00FFBD6000FFC66400FFD6A262FF00000000E7BE84FFCE70
          00FFD68200FFDE9220FFE7A649FFEFB262FFC67420FFAD4400FF9C3B00FFA544
          00FFAD4800FFB55800FFBD5C00FFBD6000FFDEBE94FFEFD7C6FF00000000CE70
          00FFD68607FFE79E38FFF7BA72FFFFD7A5FFE7A649FFBD5C00FF9C3B00FFA544
          00FFAD4800FFB55800FFBD5C00FFC67828FFE7D3BDFF0000000000000000CE78
          00FFDE8A0FFFEFA649FFFFC78CFFFFEBD6FFFFEBD6FFDE9A49FFAD5820FFAD50
          07FFBD6817FFCE7C28FFCE8630FFDEAA72FFE7CBB5FF00000000EFB26AFFF7BE
          7AFFF7C784FFFFC78CFFF7C384FFF7BA72FFEFBA7AFFE7BE8CFF00000000F7D7
          ADFFF7C78CFFF7BE7AFFF7BE7AFFF7C384FFEFD7B5FF00000000FFE7CEFFF7CF
          9CFFF7D7A5FFF7DFBDFFF7E7CEFFFFF3DEFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FE00000084000000060000000300000001000000020000000200
          000002000000010000000100000000800000018000000100000081030000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000001
          0007478B55B1488B54B30004000C000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000559B68B9579D6ABB00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000477A46A385C2
          8EE77FD38EFD77D086FD7FCA89F681BB80EFBDBDBDD3BDBDBCD3BBBBBBD3B9BA
          B9D3BABAB9D3BDBDBDD3B6B6B6D2BCBCBCD97F7F7F8C00000000466D41929AC9
          9CE89AD89CFF91D494FF94D197FF97C890FFE4E3E2FFE2E0DEFFDEDCDBFFDDDB
          D9FFE1E0DEFFEDECEAFFF7F6F6FFDCDCDCFF808080AF0000000000000000A3A5
          A5A8ABD2A0FFA9CB95FFEFE4DFFFEDEEEEFFE5E3E2FFE7E5E4FFE2E0DFFFDFDD
          DCFFE0DEDDFFE1E0DDFFEDECEBFFFFFFFFFF868686A70000000000000000A4A6
          A7A9B7CBA6FFB4BF95FFECE1DCFFE9E9EAFFE2E0DFFFE4E1E0FFDFDDDBFFDBD9
          D7FFDBD9D8FFD6D3D2FFD4D2D0FFE4E3E2FF9B9B9BA80000000000000000A4A6
          A6A9F4E9E4FFFBDCCCFFF7ECE7FFF3F5F5FFECEAE9FFEEECEBFFEAE9E8FFE6E4
          E4FFE7E5E3FFDDDBD9FFDFDEDCFFD7D5D3FF979695A80000000000000000A4A6
          A6A9F4E7E2FFFBDACCFFF9EDE8FFF6F7F8FFF1EEECFFEDEEF1FFB1C4EEFFB7C6
          E9FFECE9E7FFE1DEDDFFE4E2E0FFDBD8D7FF929190A80000000000000000A3A5
          A5A8F2E9E4FFF4DCCFFFF4EAE6FFF3F2F3FFEEEBE9FFEBEBEFFFAFC2EBFFB5C4
          E7FFE9E7E6FFDEDCDAFFE1DFDEFFDDDAD9FF939391A70000000000000000A5A5
          A5AAFFFFFFFFFCFCFDFFFDFDFDFFF8F6F6FFF1EFEFFFF6F4F3FFF3F1F1FFEDEC
          ECFFEFEDECFFE5E3E2FFE8E7E5FFE1E0DEFF999997AA00000000000000009EA3
          A9AEF3FAFFFFF3FAFFFFF3FAFFFFF2F8FDFFE6EBF0FFE6EBEFFFE4E9ECFFE1E5
          E9FFDFE5E9FFDBE1E5FFD9E0E3FFD9E1E4FF939A9CAE00000000000000009183
          70B2D8C3ABFFD7C2ADFFD7C3AFFFD7C3B2FFD8C5B6FFD8C6B8FFD7C4B8FFD5C0
          B3FFD2BBADFFD1B7A9FFCFB2A5FFCEAEA0FF8A7067B20000000000000000BE6D
          00C4FF8A00FFFF8300FFFF7E00FFFF7800FFFF7300FFFF6D02FFFF6702FFFF61
          00FFFF5A00FFFF5300FFFF4D00FFFF4500FFBF3200C40000000000000000B86D
          03BDF78C03F7F68607F6F6820AF6F67E0EF6F67B0FF6F67713F6F67214F6F66B
          10F6F6630EF6F65D0BF6F65607F6F74D03F7B83703BD00000000000000001A0E
          011A23130323211305212113072121140A2121150C2121160E2121160E212114
          0C2121120A2121100721210E0521230D03231A08011A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000100010B0000120B0000120000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000B0000126D3F0180BE950BCFE3CD26ECE3CE25EBBE99
          0ACC6D41007F0A00001000000000000000000000000000000000000000000000
          000000000000280D0334C37E11DFEDBE02FFF9E720FFFDF63BFFFDF73BFFF9EA
          1FFFEEC200FFC07B01DC240D002F000000000000000000000000000000000000
          000017050220CC7C25EDE29908FFE8B000FFF0C900FFF4D700FFF4D800FFF1CC
          00FFEAB400FFE39B00FFC56D01E81504001C0000000000000000000000000000
          00008F4B29AADA7E17FFDB8200FFE19700FFE6A900FFE9B400FFEAB400FFE7AB
          00FFE29B00FFDD8900FFD87704FF863907A40000000000000000000000001405
          041BD2713EF9D05B00FFD77200FFDB8200FFDF8D00FFE09400FFE09400FFDF8F
          00FFDC8400FFD87600FFD26200FFC95611F71003011600000000000000003A1C
          1946D7754DFFCA4602FFCF5800FFD36600FFD77200FFD87800FFD87800FFD773
          00FFD46800FFD05900FFCC4C00FFD2612EFF3211084000000000000000004321
          1E50EBBBA7FFDF926BFFD8773FFFD46A21FFD36611FFD3660AFFD4670BFFD469
          13FFD56D22FFD97B42FFE39D76FFEDC0A9FF3B19124900000000000000002B0F
          0D37ECBDAFFFE6A790FFE09272FFDC835AFFD87947FFD7743EFFD87640FFDB7F
          4EFFDE8D64FFE49F81FFEBB8A1FFEFC7B7FF230A082D00000000000000000500
          0009D6A8A0E7EEC5B9FFE6A898FFE29A86FFE09279FFDF8E73FFDF8F74FFE196
          7DFFE4A28DFFE9B2A1FFF3D4C7FFCFA69EDF0200000400000000000000000000
          000065413E73F5DED6FFEFC8C0FFEBB9B0FFE9B1A7FFE8AEA2FFE8AEA3FFEAB4
          AAFFEDBFB6FFF2D2C9FFF7E2DBFF5A33316A0000000000000000000000000000
          000000000000A27F7CB1F9EAE3FFF6DFD8FFF2D3CDFFF1D0CAFFF2D0CBFFF4D6
          D0FFF8E6DFFFFAECE6FF986D6AAA000000000000000000000000000000000000
          000000000000000000018164628EF2DEDAFAFBEFEAFFFCF3EDFFFCF3EEFFFBEF
          EAFFEFD7D2FA7A53528B00000000000000000000000000000000000000000000
          0000000000000000000000000000190A0A205F43436A85676591846563905A3C
          3B67170403200000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000001800220032003F0032003E0015
          001F000000000000000000000000000000000000000000000000000000000000
          00000000000000000000012E0241049A01BB2DE118F562F93CFF60FA3BFF29E0
          15F3009400B40025003600000000000000000000000000000000000000000000
          0000000000000C4E0C6B10CD14FF1ADF01FF5FF01AFF7DF728FF7EF628FF5EF1
          18FF15E000FF00C801FB0042005F000000000000000000000000000000000000
          00000B2F0B4428C228FF02C603FF0DD300FF25DF00FF34E600FF33E600FF25E0
          00FF0ED500FF00C800FF02B802FE002500390000000000000000000000000001
          0004359635CE0FB60FFF00BC00FF00C600FF03CE00FF09D300FF09D300FF03CF
          00FF00C700FF00BE00FF04B604FF0A800ABF0000000100000000000000000F20
          0F3038B139FF00A300FF00B300FF00BB00FF00C000FF00C400FF00C400FF00C1
          00FF00BC00FF00B500FF00A800FF0DA10EFC031503230000000000000000263D
          265565BC62FF17A315FF01A801FF00AC00FF00B100FF00B500FF00B500FF00B2
          00FF00AD00FF00A700FF16A614FF4EB54BFF0F2C0F4600000000000000002A3F
          2958B9DFAFFF82CB78FF54BC4EFF32B42FFF1DB01BFF14AF13FF16AF14FF22B2
          1FFF38B634FF5DC056FF94D389FFC1E2B6FF1B301B4900000000000000001425
          1438BADDB1FF9ED294FF7FC777FF67C061FF54BB50FF4CB948FF4FB94AFF5DBE
          57FF73C46CFF8ECD85FFB2DBA6FFC0DFB8FE0917092900000000000000000003
          0007A3C09DDECAE3C0FFA6D39EFF94CD8EFF87C881FF81C77CFF83C77EFF8CCB
          87FF9CD195FFB0D9A7FFD9ECCFFF94B090CF0000000300000000000000000000
          00003549355EDEEED6FFD0E6C8FFBCDDB6FFB4D9AEFFB0D8AAFFB1D8ACFFB8DB
          B2FFC3E0BBFFDCEDD3FFDDEDD7FF2236224D0000000000000000000000000000
          000000000000647A628FE8F4E2FFE8F3E1FFDCECD6FFD8EAD2FFD8EAD2FFE0EF
          D8FFEFF6E7FFE5F2E0FF4B634A7F000000000000000000000000000000000000
          0000000000000000000040543F67BDCFB9E1EAF4E6FFF0F7ECFFF0F7EBFFE7F3
          E3FFAEC3ABD92C412C5A00000000000000000000000000000000000000000000
          00000000000000000000000000000003000B263226403D523D653B503A641F2D
          1F3C000000060000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000131B00002D3A00002C390000
          1119000000000000000000000000000000000000000000000000000000000000
          0000000000000000000001012A38030392B13C3CD6F07B7BEFFF8181F1FF4D4D
          D9EF0F0F92AD0000233000000000000000000000000000000000000000000000
          0000000000000A0B4C621111D2FC1F1FDEFF6969E9FF8C8CEFFF9191F1FF7777
          EEFF2B2AE3FF0000CFF800004156000000000000000000000000000000000000
          000009092E3F282AD1FF0303D3FF1414D8FF2D2DDFFF3B3BE2FF3D3CE2FF2E2E
          E0FF1312DBFF0000D9FF0202CBFA000023320000000000000000000000000000
          010334369EC91112CCFF0000CCFF0000D0FF0606D4FF0E0DD7FF0D0DD8FF0505
          D6FF0000D5FF0000D3FF0405D1FF0A0B8CB70000000000000000000000000C0D
          1E2B3B3DC6FF0000BDFF0000C6FF0001CBFF0000CEFF0000CFFF0000D0FF0000
          D0FF0001CFFF0000CDFF0000C8FF0F11BEF80203131D00000000000000002324
          3F535D5ECCFF1112BBFF0102BFFF0000C2FF0000C5FF0000C9FF0000C8FF0000
          C8FF0000C6FF0000C3FF1111C3FF4345CBFF0E0E2E4100000000000000002526
          40569C9EDCFF6668D0FF4345C8FF2729C4FF1718C3FF0F11C3FF1113C4FF1A1B
          C7FF2C2DC9FF494ACEFF7476D8FFA1A3E0FF1819324500000000000000001011
          2233A1A2D9FF8284D3FF696CCDFF5659CAFF484AC8FF4042C7FF4345C9FF4D50
          CCFF5F61D0FF7577D5FF9092DCFFA8A9DDFD0809172500000000000000000000
          02068D8FB6DAAFB0DFFF9092D5FF8284D2FF777AD1FF7274D0FF7476D0FF7C7D
          D3FF888AD6FF9799DBFFBBBDE7FF898AACCB0000000200000000000000000000
          00002E2F425AC7C8E5FFBABBE2FFAAACDCFFA3A5DBFFA0A1DAFFA0A2DAFFA5A7
          DCFFAEB0DFFFC2C4E7FFCBCCE7FF202133470000000000000000000000000000
          0000000000005859708BD5D6EAFFD4D5EBFFC9CBE7FFC6C7E6FFC7C8E6FFCCCE
          E9FFD9DAEFFFD5D6EAFF45465B77000000000000000000000000000000000000
          0000000000000000000038394B60AFB0C5DCDBDDEDFFE1E2F0FFE1E2F0FFDADC
          ECFFA2A4B9D428293B5300000000000000000000000000000000000000000000
          00000000000000000000000000000000010822232E3C393A4D6137384C601C1D
          2938000000030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000F141900252E3701242C35000C
          1116000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000202A33038BA4AE3ED3EAEF7EEDFBFF85EFFBFF52D5
          E6EC14889CA7011B222B00000000000000000000000000000000000000000000
          0000000000000941525F10CAF1FB1EDCFEFF69EAFFFF8DF0FFFF92F1FFFF78EF
          FFFF2AE4FFFF01CBF0F6003A4A54000000000000000000000000000000000000
          00000827323C28C7EFFE04C9F5FF15D2F9FF2FDCFDFF3CE1FEFF3EE2FFFF31DF
          FFFF14D8FDFF00D2FCFF02C4EFFA00212B330000000000000000000000000000
          00013392B2C412C1F0FF00C0F0FF00C6F4FF07CCF7FF0ED1F9FF0ED2F9FF06D0
          F9FF00CCF7FF00C8F5FF04C6F4FF0A86A8B90000000000000000000000000B19
          20273CBCE7FD00B0E8FF00BAEDFF00BEEFFF00C2F1FF00C5F4FF00C5F4FF00C6
          F3FF00C4F2FF00C1F0FF00BBEEFF10B4E4F90212181E00000000000000002237
          444F5AC4EAFF0EAEE5FF00B2E7FF00B5E9FF00B9ECFF00BBEDFF00BCEDFF00BB
          EDFF00B9ECFF00B7EAFF0DB7E9FF40C2EBFF0D2C39440000000000000000253A
          47539CD9F1FF63C9ECFF41BFEAFF26BAE8FF15B7E9FF0EB7EAFF0FB8EAFF18BA
          EBFF29BEEBFF47C5EDFF72D1F0FFA0DEF3FF19313F4A0000000000000000111F
          2932A0D7EFFF80CFEEFF68C8ECFF55C3EAFF46BFEAFF3EBFE9FF41C0EAFF4CC4
          EBFF5EC9EDFF74CFEFFF8FD7F1FFA6DBF0FE0A19222A00000000000000000002
          04068FB6CADAADDDF3FF8ED2EEFF80CEEDFF76CCEDFF71CBECFF72CBEDFF7ACE
          EDFF86D2EEFF95D7F0FFBAE5F6FF8CB0C3D20000020400000000000000000000
          00003043505CC7E6F5FFB7E1F3FFA8DAF1FFA1D8F0FF9DD7F0FF9FD8F0FFA4DA
          F1FFADDDF2FFC1E6F6FFCAE8F5FF243846530000000000000000000000000000
          0000000000005D758390D5ECF7FFD3EBF7FFC8E7F6FFC5E5F5FFC5E5F5FFCBE8
          F6FFD8EFF9FFD5EBF7FF4C657686000000000000000000000000000000000000
          000000000000000000003F525E69B5CCD8E3DDEEF8FFE2F1F9FFE2F1FAFFDBEE
          F8FFABC5D3DF2F45536100000000000000000000000000000000000000000000
          00000000000000000000000000000003080C28353D454054606A3D54616B2232
          3B450000050A0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000007C7C
          7C8DC3C3C3D5C1C2C2D3C0C0C0D3BFBFBED3BEBEBDD3BDBDBDD3BCBCBCD3BABA
          BAD3BBBABAD3BDBDBDD3B8B8B8D3B8B8B8D57F7F7F8D0000000000000000A8A9
          A8B0F5F2F0FFEDE5E1FFEAE7E5FFE8E7E6FFE4E3E1FFE1E0DEFFDEDCDAFFDDDB
          D9FFE1E0DFFFECECEBFFF5F5F5FFDFDFDFFF818181B00000000000000000A5A7
          A7AAF1E5DFFFF4D3C3FFEFE3DEFFEDEEEEFFE5E3E2FFE7E5E4FFE1E0DEFFDEDC
          DAFFE0DFDEFFE1E0DEFFEDEDEBFFFFFFFFFF888888AA0000000000000000A5A7
          A8AAF2E6E1FFF0D1C3FFECE0DBFFEAE9E9FFE2DFDEFFE4E1E0FFDFDDDBFFDBD8
          D6FFDCD9D8FFD6D3D1FFD5D3D1FFE5E4E2FF9B9B9BAA0000000000000000A5A6
          A7AAF6EBE6FFFCDDCEFFF7EBE7FFF5F5F6FFECEAEAFFEEEDECFFEAE8E9FFE5E4
          E3FFE7E6E4FFDDDAD9FFE1DFDDFFD8D6D5FF979695AA0000000000000000A5A6
          A7AAF5E9E4FFFCDCCDFFF8EDE8FFF7F7F8FFEFECEBFFEDEDF0FFB2C4EDFFB7C6
          E8FFEBE9E8FFE0DDDCFFE3E1E0FFDBD9D7FF929190AA0000000000000000A4A5
          A6A9F4EAE6FFF6DCCFFFF4EBE7FFF4F4F4FFEDEAE8FFEAEBEEFFB0C2EAFFB5C4
          E6FFE9E7E5FFDDDBD9FFE0DFDEFFDDDBD9FF949392A90000000000000000A6A6
          A5ABFFFFFFFFFDFDFEFFFDFDFDFFF9F8F8FFF3F1F1FFF6F5F5FFF2F1F1FFEDEC
          ECFFEFEEEDFFE5E3E2FFE9E8E7FFE2E0DFFF989897AB00000000000000009EA2
          A6AEF4F9FFFFF4F9FEFFF3F8FDFFF2F7FBFFE7EAEEFFE7EBEDFFE4E7E9FFE1E4
          E6FFDFE4E7FFDBDFE1FFDADFE1FFDAE0E2FF93989AAE00000000000000009182
          6EB2D8C2A9FFD7C2ABFFD7C2ADFFD7C2B0FFD8C4B3FFD8C4B6FFD7C3B5FFD5BF
          B1FFD3BAACFFD2B6A8FFCFB1A3FFCFAD9FFF8A7067B20000000000000000BC6B
          00C1FF8A00FFFF8300FFFF7E00FFFF7800FFFF7300FFFF6E00FFFF6800FFFF61
          00FFFF5A00FFFF5300FFFF4C00FFFF4500FFBC3100C10000000001000001BA6D
          03BEFC8E03FCFC8906FCFC8509FCFC810CFCFC7E0FFCFC7A13FCFC7513FCFC6D
          0FFCFC660CFCFC5F09FCFC5707FCFC4F03FCB93603BD0000000001000001160B
          00161C0F021C1B0F041B1B10061B1B10081B1B110A1B1B120C1B1B120C1B1B10
          0A1B1B0F081B1B0D061B1B0C041B1C0A021C1506001500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000001000006000000050000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000100F0E1A6A695C78ACAA9BBFB2B1AACEAEACA4CD9896
          83B34E4D40650201020900000000000000000000000000000000000000000000
          00000000000043433E58DCDBD2F0B0B0E7FF6060E4FF3536EAFF393AF2FF6969
          F3FFB1B1E0FFB0AF9BD41F1E1C31000000000000000000000000000000000000
          000041413C54E4E3DFFF595AD7FF0000CAFF0000D7FF0000E3FF0000EFFF0000
          FDFF0101FFFF797AEFFFCBCAB8EE181816270000000000000000000000000B0B
          0B14D6D5C8EF5A5BCCFF0000BCFF0000CAFF0000D3FF0000E3FF0000EDFF0000
          EFFF0000F3FF0000EDFF8787E5FFA8A794C20000000100000000000000006361
          5872AEAFD1FF0000B2FF0000BDFF5B5CC9FF9E9FD5FF0000D6FF0A0ADAFFA4A4
          D8FF3C3DDEFF0000E4FF0C0CDFFFCACAD8FF2F2F283A0000000000000000A3A1
          94B66A6CC1FF0E13B7FF0000B9FF8687D1FFFFFFECFF9999D3FFACACD5FFFFFF
          E7FF6363DCFF0000DAFF0000D2FF9494DBFF7473647D0000000000000000B1AF
          A6CB5356B8FF2E33BCFF2A2FC2FF0000BCFF8080CBFFFEFDE1FFFAF9E0FF6363
          D0FF0000D3FF0002CFFF0000C7FF7777D4FF929181960000000000000000ADAB
          A2C75C5FB4FF4146BEFF464AC5FF3B3FC0FFA4A3CBFFEBE9DAFFEAE9D9FF8D8C
          C7FF0707C0FF0000C6FF0204C1FF8384D4FF908F819200000000000000009392
          87A37B7DB6FF484EBCFF5257C4FFB8B8D5FFFFFFE8FF8283D0FF9495D1FFFFFF
          DEFF8383CAFF282BC9FF1F23C0FFB2B2DAFF66655C6900000000000000004444
          404EBFBEC7FF3C42ACFF7377CDFF8486CFFF9597D2FF5458CBFF565ACDFF9597
          D3FF686BCFFF464BC7FF484CC0FFE7E7E4F91C1B1A2000000000000000000202
          0204B4B2A8C68D8EB6FF3F44AEFF7E82D0FF7C7FD0FF7D80D0FF777AD0FF6B6F
          D0FF5C60C9FF3439B4FFCACBE3FF8988818C0000000000000000000000000000
          00001717171EC9C7BEDC9A9ABBFF494CA7FF585DB8FF676BC2FF6165C0FF4D50
          B7FF5A5CB7FFCECEE6FFB2B2ACB2030303060000000000000000000000000000
          000000000000131313189E9D94A8D3D2D2FDA4A4C3FF8F91BFFF9698C5FFBDBD
          D8FFE9E8E5F18989838901010103000000000000000000000000000000000000
          00000000000000000000000000002727262A6766606986867E8683837C835E5E
          595E1818181C0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFEF1FFFEFC
          F2FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E3E0FF9898AEFF6B6F99FF5E6593FF656A
          87FF82827FFFAEADA1FFD4D4D4FFF0F1F1FFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFF9396C2FF232F99FF0B21ADFF112FC8FF1338DAFF1438
          DEFF1332C0FF35407EFF949289FFCECDCBFFF2F2F2FFFFFFFFFFFFFFFFFFFFFF
          FFFFFAFAFAFF5F63AFFF0316A4FF1939CAFF193ED3FF153FDAFF1543E4FF1B48
          ECFF234EF4FF1238E9FF4756B8FFE5E3DCFFF9F9F9FFFFFFFFFFFFFFFFFFFFFF
          FFFF7275B8FF0016AAFF1D3ACCFF1333C6FF5070D7FF90A8EAFF8FABEEFF5277
          E8FF143DE5FF1F44E7FF0726CDFF747DC9FFFFFFFFFFFFFFFFFFFFFFFFFFCECE
          E3FF0818A3FF1831C7FF112CC3FFA4B3E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA3B6EFFF1334D5FF1835D4FF0A1AABFFCECFE5FFFFFFFFFFFFFFFFFF7479
          C0FF071AB7FF0B24C7FF8EA1E8FFFFFFFFFF8EA0F2FF274CEAFF2047E7FF8A9B
          EFFFFFFFFFFF8E9FE4FF0B24C8FF0519B4FF7476BBFFFFFFFFFFFFFEFCFF4751
          B9FF0D25C4FF2240D9FFFBFDFEFFB4C7F5FF0E51EAFFA1BBF4FFA5BBF4FF0027
          E6FFADBAF5FFFBFCFCFF203AC6FF0C1FBCFF474BA8FFFFFEFCFFF7F7F7FF3A48
          BDFF0927CFFF3C5AE8FFFFFFFFFF7FAFF0FF3497EBFFD7EAFAFFE3EAFCFF1959
          EBFF6A86F0FFFFFFFFFF3A4ECCFF091FBBFF393FA6FFF7F6F6FFFDFDFCFF4654
          C6FF0929D7FF3258EDFFFFFEFEFFABD2F2FF7DC9F2FFE4EDF7FFD0E1F7FF2576
          EBFF99B4F3FFFFFFFEFF2B42CBFF0920BBFF4449A8FFFDFDFCFFFFFFFFFF6C79
          D3FF0625D6FF194BEBFFBDCFF6FFFEFFFEFFDAE4F6FFEDEDF7FF79BDEDFF6AA8
          EDFFFEFFFEFFB6C0F0FF0B28CAFF061AB4FF6C6EB4FFFFFFFFFFFFFFFFFFC2CA
          EBFF0322CEFF1B48EEFF437DEDFFDEE9F8FFFFFFFDFFF2F5F9FFE2EFF8FFFFFF
          FEFFD9E0FAFF2644DFFF132DCCFF0212A3FFC3C4DCFFFFFFFFFFFFFFFFFFFFFF
          FFFF6071D9FF0225E1FF275EEFFF4485ECFF9CBFF3FFCFDFF8FFD1DEF9FF90AA
          F2FF2248EAFF1231D9FF0017B7FF5D65B9FFFFFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFF4F6F9FF485FDBFF0229E4FF2153EEFF2666EDFF2B69ECFF2459EDFF103D
          ECFF1231DFFF0018BFFF4853BAFFF4F4F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFBFBFCFF8794E7FF2C4AE1FF1B3EE4FF1C3FE7FF1A3AE2FF1936
          D6FF2D41C7FF878FD4FFFBFAFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFE8EAF6FF909CE2FF3D54D0FF3D53CCFF929A
          DBFFE8E9F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000004010104190D
          071C1D0D06201408041900000000000000000000000000000000000000000000
          000000000000000000000000000026160C29653F246D9F6339ABBE7140CDCB70
          3DDDCC6433E0BB5024DB9A3B1AB73C150A4C0000000000000000000000000000
          000000000000120904139E5730ACEA8E50FDEF9E5EFFEFA461FFEE9958FFEB89
          4CFFE7783FFFE46631FFDC5727FFA73D1CD40000000000000000000000000000
          0000000000006034206AE98047FFEE9757FFF1A966FFF1AF6BFFEE9D5DFFEC8C
          4FFFE77B42FFE56630FFD14D21FF7629139F0000000000000000000000000000
          00000000000047271C52D8592AFFE4753EFFED8D50FFEE985AFFED9658FFEB88
          4CFFE47138FFDD6130FFCA532FFF541E106F0000000000000000000000000000
          0000000000001D110C20DB724FFFE38462FFE7916BFFEB8D5EFFEA834BFFE873
          3AFFE25C24FFDD7E5DFFD9A798F3180A071F0000000000000000000000000000
          000000000000000000004E342A57A86046BDD26238F0E15924FEE5602AFFE466
          35FFE48261FFB66C54D32F1D1836000000000000000000000000000000000000
          000000000000000000000000000018110D186C473773D96335FAD04C1EFFDB77
          57FE855547940902000B00000000000000000000000000000000000000000000
          0000000000000000000000000000973E22C1D36A3FFDDB7E50FECA5C2FFF9B4A
          2DBC000000000000000000000000000000000000000000000000000000000000
          00000000000000000000180E0B1EAC4024F8CB4F23FFCC6731FFCA6031FF9037
          17BF000000000000000000000000000000000000000000000000000000000000
          000000000000000000003D251F4FA23E26FFB63B1BFFCF582BFFD26030FFC956
          29F51607031E0000000000000000000000000000000000000000000000000000
          0000000000000000000052322B68BC4526FFB63312FFB3391CFFB93E1EFFB63D
          1EFF3D130A580000000000000000000000000000000000000000000000000000
          0000000000000000000049241B5DDE8869FFDE8565FFB5381AFFAA3E2AFFB050
          3DFF4A150B730000000000000000000000000000000000000000000000000000
          000000000000000000001509061EDCB09FF5F1C9B9FFBB492EFFB76757FFD09D
          94FF2A0E09410000000000000000000000000000000000000000000000000000
          0000000000000000000000000000331B164497422FCE992F1BEE9E6157DC6F65
          657A000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000061D0503360C00001B0000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001191919262424
          243C1D1D1D360909091700000000000000000000000000000000000000000000
          0000000000000000000010101017484848617E7E7EA59D9D9DD2A2A2A2E79C9C
          9CF3878787F06B6B6BDF4545459D0A0A0A1B0000000000000000000000000000
          0000000000004F4F4F77B0B0B0F7C6C6C6FFD3D3D3FFCECECEFFBEBEBEFFACAC
          ACFF999999FF868686FF717171FF1E1E1E4F0000000000000000000000000000
          000007070709A6A6A6FCB7B7B7FFCECECEFFDCDCDCFFD4D4D4FFC1C1C1FFAFAF
          AFFF9B9B9BFF7D7D7DFF616161FF0B0B0B230000000000000000000000000000
          000001010101787878DB848484FFB3B3B3FFC0C0C0FFC6C6C6FFBCBCBCFFA8A8
          A8FF8E8E8EFF878787FF686868EA020202050000000000000000000000000000
          0000000000006F6F6FA9ABABABFFC0C0C0FFBDBDBDFFB5B5B5FFA5A5A5FF9292
          92FF858585FFDCDCDCFF65656583000000000000000000000000000000000000
          0000000000001717171A6F6F6F968D8D8DDA808080FB858585FF868686FFA9A9
          A9FFBBBBBBFF5454547E00000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3C47848484C9747474FF878787FFA5A5
          A5D7292929390000000000000000000000000000000000000000000000000000
          000000000000000000002727275A828282FFA4A4A4FF969696FF7E7E7EFF1E1E
          1E31000000000000000000000000000000000000000000000000000000000000
          00000000000000000000444444A55D5D5DFF878787FF8D8D8DFF727272FF1616
          163D000000000000000000000000000000000000000000000000000000000000
          000000000000000000005E5E5EDA404040FF6E6E6EFF848484FF858585FF3E3E
          3E8D000000000000000000000000000000000000000000000000000000000000
          0000000000000B0B0B0B717171EF4B4B4BFF4B4B4BFF545454FF575757FF4242
          42D1000000000000000000000000000000000000000000000000000000000000
          00000000000003030304949494E8C7C7C7FF797979FF434343FF7E7E7EFF5555
          55E7000000000000000000000000000000000000000000000000000000000000
          00000000000000000000808080A0FFFFFFFFB9B9B9FF5A5A5AFFD0D0D0FF7777
          77BD000000000000000000000000000000000000000000000000000000000000
          000000000000000000000A0A0A0D545454A5555555EC575757F3ABABABC22525
          2525000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000300606063D000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000FFFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000FFFF0000000000000000000000000000
          FFFF0000FFFF0000FFFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000000000
          000000000000000000000000FFFF000000000000000000000000000000000000
          00000000FFFF0000FFFF0000FFFF000000000000000000000000000000000000
          0000000000000000FFFF00000000000000000000000000000000000000000000
          0000000000000000FFFF0000FFFF0000FFFF0000000000000000000000000000
          00000000FFFF0000FFFF00000000000000000000000000000000000000000000
          000000000000000000000000FFFF0000FFFF0000FFFF00000000000000000000
          FFFF0000FFFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000FFFF0000FFFF0000FFFF00000000000000000000
          FFFF0000FFFF0000000000000000000000000000000000000000000000000000
          00000000FFFF0000FFFF0000FFFF0000FFFF0000000000000000000000000000
          00000000FFFF0000FFFF00000000000000000000000000000000000000000000
          FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000000000
          0000000000000000FFFF0000FFFF000000000000000000000000000000000000
          FFFF0000FFFF0000FFFF00000000000000000000000000000000000000000000
          00000000000000000000000000000000FFFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000200000000000101100019222C02222C340216
          1A25000000090000000000000003000000000000000000000000000000000000
          000000000000000000000005060A0758788A0D97D4E60AAAF5FE07ACF8FF0CAB
          EEF91294C0D50A404E5F00000000000000000000000000000000000000000000
          000000000000020F13132597C1C22DC1FFFF30C1FFFF2CBEFEFF21B8FDFF12B0
          FDFF09AEFFFF18BFFFFF14779293000000000000000000000000000000000000
          000000030404359ABEBF47CAFCFF56D4FFFF54D2FEFF4ACDFDFF3EC8FDFF32C1
          FDFF1EB6FDFF09ABFDFF18BCFBFF11667C7D0000000000000000000000000000
          00001849585965D8FEFF51D0F9FF31BFEEFF60D8FAFF7BE3FFFF7AE0FFFF5DD6
          FEFF34C1F7FF15ACF2FF07ABFBFF1CBDF5F704191D1D00000000000000000000
          000048A1BBBC76E1FEFF7FE9FFFF59D1F1FF27B8E2FF46BEE3FF5CC0E4FF38B6
          E2FF24B1E7FF2FBCF8FF14B1FDFF0EB3FCFF0C55696A00000000000000000004
          060665C7E0E186E9FEFF8CEEFEFF9DF7FFFF94F5FFFF71E3F8FF5DDAF5FF5FD8
          F9FF60D9FFFF47CCFEFF25B9FDFF0AADFCFF0D75989A00000000000000000007
          0A0A72CEE3E494F0FEFF98F5FFFFA1FAFFFFADFFFFFFA2FBFFFF96F3FFFF87EC
          FFFF6FE2FFFF4ECFFDFF31C0FDFF0DAEFCFF0A76A0A200000000000000000000
          000071BBCBCCA9F5FFFF9EF9FFFFACFFFFFFBCEAF1FFADF6FBFF91F5FFFFA4EF
          FAFFA6E0F1FF52D3FEFF36C3FDFF11B0FCFF04597B7C00000000000000000000
          000041737E7EB8F6FFFFA7FAFFFF9DFFFFFF5E95B8FF86C8D8FF9CFFFFFF7DD8
          ECFF5F8CAFFF56D6FFFF35C2FDFF13B2FCFF0127343500000000000000000000
          0000071013138BDAE9EAC8FCFFFF9EF8FEFF37B9E3FF82E2F1FF9BF8FFFF58D4
          F5FF3BB6E1FF51D2FFFF2EBEFDFF1382AFB10000000000000000000000000000
          000000000000183A4142B7EBF6F7D2FAFFFFADF7FFFF98F4FFFF85EAFEFF70E1
          FEFF5BD8FFFF4ACBFDFF2AA0CED0040F12120000000000000000000000000000
          00000000000000000000142A30307DAFBABBC0F5FFFFB6F2FEFF9DEAFEFF80E1
          FEFF5BCCF2F42B7C999A030E1010000000000000000000000000000000000000
          00000000000000000000000000000000000015292E2F35565E5E3B5E6868244B
          5656061A1F1F0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000D0D0E186666668964666A8A6C6C6B8A6D6D6C8A6D6D6C8A6E6D6D8A6E6E
          6E8A6F6E6E8A706F6F8A686867850A0A09130000000000000000000000000000
          00001D1E1F2EDBD9D4FFDDDCE0FFEDE8E0FFEFEAE2FFF1EBE3FFF2ECE5FFF3EE
          E6FFF4EFE7FFF7F1E9FFF0ECE6FF171718250000000000000000000000000000
          00001B1C1D2ADAD5CCFADAD6D5FFEBE2D5FFEDE4D6FFEEE4D7FFEFE6D8FFF0E7
          DAFFF1E8DBFFF4EBDCFFE3DDD3F4141515210000000000000000000000000000
          00001C1D1E2BDED7CDFBDAD5D2FFECE1D2FFEEE3D2FFEFE3D4FFF0E4D5FFF0E6
          D6FFF2E7D8FFF3E9D8FFE4DCD0F5151516220000000000000000000000000000
          00001B1C1D2BDCDAD5FBDEDEE3FFF0EBE4FFF2EDE5FFF3EEE7FFF4EFE8FFF6F1
          EAFFF7F2EBFFF9F4EDFFE8E4E0F5151515220000000000000000000000000000
          00001B1C1D2BDBD5CAFBDCD6D1FFEEE2D0FFEFE3D1FFF3E6D3FFFDF1DEFFF7EC
          DCFFF3E7D6FFF5E9D8FFE5DCD0F5151516220000000000000000000000000000
          00001B1C1C2BDDDAD3FBDFDEE2FFF0EAE3FFF5EFE5FFB0B0B2FFA99789FFE5D6
          C7FFFBF7F0FFFBF6EDFFE8E4DDF5141515220000000000000000000000000000
          00001B1C1D2BDDD8CDFBDFDAD7FFF0E6D7FFF7E9D8FFE4E6E2FF429DC8FF8B85
          7CFFD6BDA7FFF1E6D6FFE7E0D4F5151516220000000000000000000000000000
          00001B1C1D2BDEDAD2FBE1DEDDFFF2EADEFFF3EBDEFFFFEFDEFFD3F4F7FF4FBF
          F4FFC8CAC5FFF1E0CCFFE3DDD4F5141516210000000000000000000000000000
          00001A1B1C2BDDDCD8FBE5E6EBFFF6F2ECFFF8F4EEFFF8F5EFFFFFFAEEFFD2F0
          F6FF52C9FFFFDCECEFFFF2E6DBF6141516230000000000000000000000000000
          00001A1B1C2BDBD6CCFBE3DEDAFFF3E9DAFFF5EBDBFFF6ECDCFFF7EDDEFFFFF1
          DCFFC2D9D8FF51BDEFFFB4BBBEEB120C08120000000000000000000000000000
          00001A1A1B2ADEDDDAFAE6E7ECFFF9F4EEFFFBF6F0FFFCF8F1FFFAF6F0FFF6F2
          EBFFF3E4D9FFCFEAF3FF3DACE2E9021724270000000000000000000000000000
          00001C1D1D2EE2E5E7FFEBF0FCFFFDFDFEFFFFFFFFFFFEFEFFFFFAFAFAFFF1F2
          F3FFE2E4E5FF57534E5724424B4E3BA9DFE50019282900000000000000000000
          00001010101989898993888A9195919292949292929491919194909090958B8B
          8B974242424D0000000000000000284752523F95C1C81420292F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002B333A40161B2026}
      end>
  end
  object imgList32: TcxImageList
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 197287
    ImageInfo = <
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
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          000000000001020202050303030805050511101010341010103C0D0D0D3E0B0B
          0B4109090944090909480909094B0808084E0808084F08080850080808500808
          084E0808084C09090949090909460A0A0A420C0C0C3F0F0F0F3D1111113B1212
          12340505050F0202020502020204000000010000000000000000000000000000
          00000000000101010103030303060909091B636363BD8B8B8BE9848484E78383
          83E7858585E8848484E9848484E9838383EA838383EA828282EA828282EA8282
          82EA828282EA838383E9828282E8828282E8828282E7848484E7898989E77070
          70DB272727831010102600000000000000000000000000000000000000000000
          00000000000000000000000000010101010B4F4F4FB0979797FFA3A3A3FFA2A2
          A2FFA0A0A0FF9D9D9DFF9B9B9BFF999999FF979797FF959595FF949494FF9393
          93FF939393FF939393FF949494FF959595FF979797FF999999FF797979FF4E4E
          4EFF434343FF393939C10D0D0D2B010101040101010200000000000000000000
          0000000000000000000000000003000000092B2B2B8C989898FFC6C6C6FFC6C6
          C6FFC1C1C1FFBDBDBDFFB9B9B9FFB6B6B6FFB2B2B2FFAFAFAFFFADADADFFAAAA
          AAFFA9A9A9FFAAAAAAFFADADADFFB0B0B0FFB4B4B4FF9A9A9AFF4A4A4AFF3E3E
          3EFF444444FF404040FF0C0C0C800000000B0000000B00000006000000000707
          0708393939564444447E3030308030303082595959B8969696FFBBBBBBFFC1C1
          C1FFBDBDBDFFBABABAFFB6B6B6FFB4B4B4FFB2B2B2FFAFAFAFFFAEAEAEFFADAD
          ADFFACACACFFADADADFFAEAEAEFFB2B2B2FF979797FF4D4D4DFF3F3F3FFF4343
          43FF414141FF4A4A4AFD3B3B3BAE0A0A0A390101010401010102000000003232
          3245C3C3C3F0EEEEEEFFF0F0F0FFEDEDEDFFD1D1D1FF999999FFABABABFFBABA
          BAFFB8B8B8FFB7B7B7FFB6B6B6FFB5B5B5FFB4B4B4FFB4B4B4FFB3B3B3FFB3B3
          B3FFB3B3B3FFB3B3B3FFB5B5B5FF969696FF505050FF444444FF474747FF4545
          45FF525252FF9E9E9EFEC5C5C5FF767676BF0D0D0D1000000000000000004D4D
          4D72E9E9E9FFF0F0F0FFF1F1F1FFD0D0D0FF7E7E7EFF898989FFC0C0C0FFE0E0
          E0FFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDE
          DEFFDEDEDEFFDFDFDFFFB2B2B2FF525252FF434343FF474747FF454545FF3D3D
          3DFF8E8E8EFFC8C8C8FFC7C7C7FF9E9E9EE72121212A00000000000000005555
          5580EBEBEBFFF0F0F0FFF3F3F3FFB1B1B1FF101010FF1E1E1EFF9B9B9BFFD9D9
          D9FFD7D7D7FFD7D7D7FFD9D9D9FFDCDCDCFFDDDDDDFFDBDBDBFFD7D7D7FFD7D7
          D7FFD9D9D9FFBDBDBDFF585858FF414141FF444444FF424242FF2F2F2FFF1111
          11FF8B8B8BFFC9C9C9FFC6C6C6FFABABABF02E2E2E3700000000000000005858
          5883ECECECFFF0F0F0FFF1F1F1FFCFCFCFFF646464FF595959FF747474FF8181
          81FF707070FF6D6D6DFF8F8F8FFFA5A5A5FFABABABFFA0A0A0FF808080FF6C6C
          6CFF5C5C5CFF434343FF3F3F3FFF424242FF3F3F3FFF505050FF5A5A5AFF5454
          54FFACACACFFC9C9C9FFC6C6C6FFADADADF23030303A00000000000000005959
          5984ECECECFFF0F0F0FFEFEFEFFFF0F0F0FFEFEFEFFFEFEFEFFFEAEAEAFFC8C8
          C8FFB4B4B4FFC1C1C1FFD2D2D2FFDCDCDCFFDDDDDDFFD5D5D5FFC8C8C8FFBBBB
          BBFF777777FF3C3C3CFF3F3F3FFF3D3D3DFF585858FFB7B7B7FFD6D6D6FFD2D2
          D2FFCFCFCFFFC9C9C9FFC7C7C7FFACACACF23131313B00000000000000005959
          5984ECECECFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEDEDEDFFC6C6C6FFBCBC
          BCFFD6D6D6FFE9E9E9FFF5F5F5FFFAFAFAFFFBFBFBFFF7F7F7FFEDEDEDFFDCDC
          DCFFB5B5B5FF5D5D5DFF3A3A3AFF5A5A5AFFBFBFBFFFE0E0E0FFD9D9D9FFD5D5
          D5FFD0D0D0FFCCCCCCFFC9C9C9FFACACACF23131313B00000000000000005959
          5984ECECECFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFD1D1D1FFBEBEBEFFD9D9
          D9FFECECECFFF7F7F7FFF9F9F9FFFBFBFBFFFBFBFBFFF9F9F9FFF7F7F7FFF1F1
          F1FFE1E1E1FFB6B6B6FF7E7E7EFFC1C1C1FFE7E7E7FFE0E0E0FFDCDCDCFFD7D7
          D7FFD3D3D3FFCFCFCFFFCBCBCBFFADADADF23131313B00000000000000005757
          5782EBEBEBFFF0F0F0FFF0F1F1FFF1F2F2FFE6E7E7FFBEBEBEFFD3D3D3FFE4E4
          E5FFF7F7F7FFFAFAFAFFFBFCFCFFFDFDFDFFFDFEFEFFFCFCFCFFF9F9FAFFF6F6
          F7FFEEEEEFFFDADADAFFC1C1C1FFD0D0D1FFE9EAEAFFE4E4E5FFDFE0E1FFDBDB
          DCFFD6D7D8FFD2D2D3FFCECECEFFAFAFAFF13030303A00000000000000005353
          537EEBEBEBFFEDECEAFFE3D8D1FFE0D2C8FFC8BFB9FFC4C4C4FFD4D3D3FFE5DF
          DAFFF1EBE7FFF5F0EDFFF8F5F3FFFCFBFAFFFDFCFCFFFAF7F6FFF6F2EFFFF2EC
          E8FFEBE4DFFFDDDAD7FFCDCDCEFFBDB9B6FFD8CAC0FFD7C9BFFFD4C6BBFFD1C2
          B8FFCEBFB5FFCDC2BBFFCFCDCCFFAEAEAEF02E2E2E3800000000000000004E4E
          4E7AEBECECFFD8C4B5FFB78661FFB4805AFFA78C77FFCDCECFFFCDC5BFFFD6BB
          A8FFDFC9B9FFE7D7CCFFF0E6DFFFF8F4F1FFFBF9F7FFF3EBE6FFEBDDD3FFE2CF
          C1FFD9BFACFFD3C1B4FFD3D3D4FFB4AAA2FFAC7C5AFFB4805AFFB4805AFFB480
          5AFFB3805AFFB5835EFFC4AD9CFFADAEAEEE2B2B2B3400000000000000004F4F
          4F6FE8E8E8FFCFB39FFFBD8F6EFFBB8D6CFFAF9A8CFFD1D2D3FFCDC1B9FFD8BD
          AAFFE0CABBFFE8D8CDFFF0E6DFFFF9F4F2FFFBF9F7FFF3ECE6FFEBDDD4FFE2CF
          C1FFDAC0AEFFD1BCACFFD1D1D1FFB8B2ADFFAC7E5EFFB6825CFFB5825DFFB582
          5DFFB5825DFFB4805AFFC3A691FFA2A4A4E72121212A00000000000000003D3D
          3D54DADADAFAD6BDABFFD3B5A0FFD4B7A3FFBDB0A6FFD1D1D2FFD0C9C4FFE2D0
          C3FFE8D9CFFFEDE2DAFFF3ECE7FFFAF7F5FFFCFAF8FFF5EFEBFFEEE3DCFFE7D7
          CCFFE0CABBFFD6C4B7FFD1D0D0FFBAB5B1FFB58F74FFC09575FFBF9475FFC197
          77FFC29878FFBF9373FFCBB5A6FF909091D51414141900000000000000002121
          212BB6B6B6E4DFCCBFFFE6D4C7FFB0A39BFF76716EFFCFCFCFFFCBC9C8FFCEC9
          C5FFD8D4D1FFE3DFDDFFEDEBE9FFF7F6F6FFFAFAF9FFF1EFEDFFE6E2E0FFDCD6
          D2FFD1C9C4FFCDC7C3FFD3D3D3FFB1AFADFF9B8D82FFA19185FF9F8F83FF7867
          5BFFB09480FFCCA88EFFD0C2B8FF6D6D6EAA0505050600000000000000000404
          040563636391D6CEC9FDE7D8CDFFC8C0BAFF918C89FFC6C5C5FFD0D0D0FFE4E4
          E4FFF0F0F0FFF1F2F2FFF6F6F6FFFBFBFBFFFCFCFCFFF8F8F8FFF4F4F4FFF0F0
          F0FFEAEBEBFFD6D7D7FFD1D1D1FFBDBDBEFFD7D7D8FFE4E5E5FFE1E1E2FF9A94
          90FFC4B0A1FFD3BBAAFFAAA7A4EC3536364D0000000000000000000000000000
          0000101010144E4E4E74747270AA757472B06E6B69BCA5A3A3F6D5D5D5FFD6D7
          D7FFF0F1F1FFF0F0F0FFF5F5F5FFFBFBFBFFFDFDFDFFF9F9F9FFF8F8F8FFF8F8
          F8FFE5E5E6FFD3D3D3FFCBCBCBFFD7D7D7FFEEEEEEFFF0F0F0FFEAEAEAFF8B89
          88D6706C6AAF6E6C6B9F3838384F030303040000000000000000000000000000
          0000000000000000000002020203020202031515162B929292E4CCCCCCFFD5D5
          D5FFDCDCDDFFF0F1F1FFF5F5F5FFF8F8F8FFF9F9F9FFF8F8F8FFF5F5F5FFE8E9
          E9FFD6D6D6FFD2D2D2FFC7C7C7FFE6E6E6FFEAEAEAFFEEEEEEFFE7E7E7FF4A4A
          4A7D010101020101010200000000000000000000000000000000000000000000
          00000000000000000000000000000000000015151526A5A5A5E3D6D6D6FFCCCC
          CCFFD8D8D8FFDDDEDEFFE9EAEBFFF4F5F6FFF7F8F8FFEEEFF0FFE2E3E3FFDBDB
          DBFFD4D4D4FFC0C0C0FFCDCDCDFFD4D4D4FFD7D7D7FFEAEAEAFFE6E6E6FF4C4C
          4C7A000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000014141425A6A6A6E3F2F2F2FFD8D8
          D8FFCACACAFFD2D2D2FFDDDDDDFFE6E6E6FFE9E9E9FFE1E1E1FFDADADAFFCDCD
          CDFFC2C2C2FFCCCCCCFFD1D1D1FFCFCFCFFFD1D1D1FFE0E0E0FFDCDCDCFF4B4B
          4B7A000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000014141425A6A6A6E3F3F3F3FFF0F0
          F0FFE7E7E7FFC9C9C9FFC2C2C2FFC5C5C5FFC6C6C6FFC6C6C6FFC5C5C5FFCACA
          CAFFD1D1D1FFD2D2D2FFD1D1D1FFD0D0D0FFD1D1D1FFDDDDDDFFD6D6D6FF4A4A
          4A7A000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000014141425A6A6A6E3F3F3F3FFEFEF
          EFFFF0F0F0FFE0E0E0FFDBDBDBFFD8D8D8FFD7D7D7FFD6D6D6FFD7D7D7FFD6D6
          D6FFD5D5D5FFDBDBDBFFE0E0E0FFDEDEDEFFDCDCDCFFDCDCDCFFD5D5D5FF4A4A
          4A7B000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000014141425A6A6A6E3F3F3F3FFF0F0
          F0FFF1F1F1FFEBEBEBFFE9E9E9FFE8E8E8FFE6E6E6FFE4E4E4FFE2E2E2FFE1E1
          E1FFDFDFDFFFDEDEDEFFDEDEDEFFE1E1E1FFDFDFDFFFDEDEDEFFD1D1D1FE4444
          446F000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000014141425A6A6A6E3F0F0F0FFF0F0
          F0FFEEEEEEFFDBDBDBFFD6D6D6FFD5D5D5FFD4D4D4FFD2D2D2FFD1D1D1FFCFCF
          CFFFCECECEFFCCCCCCFFD1D1D1FFEBEBEBFFEDEDEDFFE7E7E7FF858585B61616
          161B000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000014141424A4A4A4E3E8E8E8FFEFEF
          EFFFECECECFFDBDBDBFFD6D6D6FFD5D5D5FFD4D4D4FFD2D2D2FFD1D1D1FFD1D1
          D1FFD5D5D5FFD4D4D4FFD7D7D7FFECECECFFECECECFF969696C21E1E1E240000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000014141424A7A7A7E2F3F3F3FFEDED
          EDFFEBEBEBFFE2E2E2FFDFDFDFFFDDDDDDFFDCDCDCFFDADADAFFD8D8D8FFD9D9
          D9FFDDDDDDFFDCDCDCFFDDDDDDFFEAEAEAFF9C9C9CCE2323232E000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000014141424A7A7A7E3F2F2F2FFEDED
          EDFFECECECFFEAEAEAFFE8E8E8FFE7E7E7FFE5E5E5FFE3E3E3FFE1E1E1FFDFDF
          DFFFDDDDDDFFDBDBDBFFDDDDDDFFA9A9A9D92C2C2C3A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001111111B686868AB8E8E8EC28D8D
          8DC08A8A8AC08A8A8AC0888888C0878787C0878787C0858585C0858585C08484
          84C0848484C0838383C17E7E7EB9363636450000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000010A0A0A0C0B0B0B0D0B0B
          0B0D0B0B0B0D0B0B0B0D0B0B0B0D0B0B0B0D0B0B0B0D0B0B0B0D0B0B0B0D0B0B
          0B0D0B0B0B0D0B0B0B0D0909090B000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFCFCFCFFF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF010101FFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCDCDCEFF080707FF474541FF51504AFF4F4D48FF4F4D48FF4F4D
          48FF4F4D48FF4F4D48FF4F4D48FF4F4D48FF4F4D48FF4F4D48FF4F4D48FF4F4D
          48FF4F4D48FF4F4D48FF4F4D48FF4F4D48FF4F4D48FF4F4D48FF4F4D48FF5250
          4AFF484541FF070708FFCDCECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCACACBFF131211FFDED7CAFFFAF2E3FFF3EBDCFFF3EBDCFFF3EB
          DCFFF3EBDCFFF3EBDCFFF3EBDCFFF2EBDCFFF2EADBFFF2EBDCFFF3EBDCFFF3EB
          DCFFF3EBDCFFF3EBDCFFF3EBDCFFF3EBDCFFF3EBDCFFF3EBDCFFF3EBDCFFFAF2
          E2FFDDD6CAFF131212FFCACBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCBCACBFF121110FFCDC7BCFFE7E0D4FFE0D9CDFFE0D9CDFFE0D9
          CDFFE0D9CDFFE0D9CDFFDFD8CCFFE8DCCFFFF3E3D8FFE5DBD0FFDFD8CCFFE0D9
          CDFFE0D9CDFFE0D9CDFFE0D9CDFFE0D9CDFFE0D9CDFFE0D9CDFFE0D9CDFFE7E0
          D3FFCDC7BBFF121110FFCBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCBCACBFF121010FFCEC8BEFFE7E1D6FFE0DAD0FFE0DAD0FFE0DA
          D0FFE0DAD0FFE0DAD0FFE9DDD1FFB7C7BEFF87AEA8FFC7CFC5FFE6DED2FFE0DA
          D0FFE0DAD0FFE0DAD0FFE0DAD0FFE0DAD0FFE0DAD0FFE0DAD0FFE0DAD0FFE7E1
          D7FFCDC8BCFF121110FFCACBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCACACAFF121111FFCFC9BFFFE8E2D6FFE1DBD0FFE1DBD0FFE1DB
          D0FFE1DBD0FFE0DACFFFF6E3D7FFA3BDB2FF006054FF69A69BFFF7E5DAFFE0DB
          D0FFE4DCD1FFE6DCD2FFE0DACFFFE1DBD0FFE1DBD0FFE1DBD0FFE1DBD0FFE8E2
          D7FFCEC7BDFF121111FFCBCBCAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCBCACAFF121111FFCFC9BFFFEAE3D8FFE2DCD1FFE2DCD1FFE1DC
          D0FFE6DDD1FFF6E5DAFFDBDDD6FFD1D6CDFF168275FF2D8D82FFE9E0D6FFE5DD
          D2FFD9D9CDFFD7DBD2FFF6E6DBFFE7DDD2FFE1DBD0FFE2DCD1FFE2DCD1FFE9E3
          D8FFCFC9BFFF121111FFCACBCAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCACACAFF121110FFD0C9C1FFEAE3DAFFE2DCD2FFE7DDD3FFF7E5
          DBFFDFE0D7FF7FB8AFFF1A8A7FFFD0D5CAFF5DA599FF037C70FFC4D1C8FFF7E5
          DBFFBFCEC4FF1B897FFF80B8B0FFE1E1D9FFF7E6DDFFE7DDD3FFE2DCD2FFEAE3
          DAFFD0C9C1FF121110FFCACACAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCACACAFF121111FFD0CBC2FFEAE4DBFFE7DFD6FFE3E0D9FF8BBF
          B7FF219186FF00796AFF0A8475FFDFDDD3FFA0C2B6FF007A6CFF90BEB2FFFEE9
          DFFFCCD4CBFF0A8576FF00786AFF229187FF8BBFB7FFE4E1DAFFE9DFD7FFEAE4
          DBFFCECAC2FF121110FFCACACAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCACACAFF121111FFD1CCC3FFEFE8DEFFDEDCD4FF349D91FF0083
          75FF1B8F81FF5FAA9DFFBCCFC3FFF1E4DCFFCCD5CCFF098979FF51A79AFFF5E5
          DEFFE8E0D7FFBCCFC3FF5DA99EFF1A8E7FFF008375FF369C92FFDFDDD5FFEFE7
          DEFFCECCC3FF121110FFCACACAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCACACAFF131111FFD3CCC4FFF3E9E0FFD3D8CFFF0B8E7FFF0B8D
          7EFF4BAA9EFFDCE4DCFFFFEDE6FFE8E1D7FFEEE3DAFF3CA291FF1D9686FFD9DC
          D4FFECE2D9FFFFEDE6FFDDE3DEFF4AAA9CFF0A8E7DFF0C8E7FFFD3D8CFFFF3E9
          E0FFD1CEC5FF121211FFCACBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCACACAFF121111FFD3CEC6FFEFE9E0FFE9E2D9FF84BDB1FF249C
          8AFF02907FFF18998BFF72BDB0FFE4E0D8FFFCE9E0FF7DBCB0FF008F7EFFB2D0
          C7FFF2E6DEFF73BDB1FF199A88FF018F7EFF229B8DFF82BEB1FFE8E1D9FFEFE9
          E0FFD2CEC6FF121211FFCACBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCACACAFF121211FFD4CFC8FFEEE8E1FFE9E2DAFFFBE8E2FFD8DD
          D4FF77BCAEFF1B9D8CFF00947FFFC7D8CFFFFEE9E3FFB8D1CAFF059782FF80C0
          B3FFD9DDD4FF009381FF1D9D8DFF78BCAFFFD8DCD4FFFAE8E1FFE8E2DBFFEEE8
          E1FFD2CDC8FF111111FFCACBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCACACAFF121211FFD3CFC8FFEDE9E2FFE6E2DBFFE5E2DBFFEEE5
          DEFFFAEAE3FFD1DBD3FF72BDAEFFCAD9CFFFF0E6DEFFE3E1DAFF2FA896FF45B1
          9FFFCFDCD2FF74BDAFFFD2DBD3FFFAEAE3FFEDE5DEFFE6E3DBFFE6E2DBFFEEE9
          E2FFD2CEC9FF121212FFCACBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCACACAFF131211FFD4D0C9FFEDEAE2FFE6E4DBFFE6E4DBFFE6E3
          DBFFE6E3DBFFF0E6DEFFF5E9E1FFE6E4DBFFE5E3DBFFF7E9E2FF69BEADFF10A4
          8FFFC7DBD3FFFFEAE4FFEEE6DEFFE6E3DBFFE6E3DBFFE6E4DBFFE6E4DBFFEEEB
          E3FFD3D0C9FF121212FFCACACBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCACACAFF131211FFD5D2CAFFF0EDE6FFEAE6E0FFEAE6E0FFEAE6
          E0FFEAE6E0FFE9E6E0FFEAE6E0FFEAE6E0FFEAE6E0FFF9EAE5FFA8D4CAFF11AA
          94FF99D0C5FFF9EAE5FFEAE6E0FFEAE6E0FFEAE6E0FFEAE6E0FFEAE6E0FFF0EE
          E5FFD4D1CBFF121212FFCACACBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCECECEFF121211FFD5D3CBFFF3EFEAFFEDE8E6FFEDE8E6FFEDE8
          E6FFEDE8E6FFEDE8E6FFEEE8E6FFEDE8E6FFEDE8E6FFEFE8E6FFEBE9E4FFDAE5
          DCFFDFE6E0FFEFE9E6FFEDE8E6FFEDE8E6FFEDE8E6FFEDE8E6FFEDE8E6FFF2EE
          E7FFD6D1CBFF121212FFCACACBFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFF8F8
          F8FFF9F7F8FFC5C4C4FF131211FFDAD8D0FFF9F6F0FFF4EFECFFF3EEEBFFF3EE
          EBFFF2EDEBFFF2EDEBFFF2EEEBFFF2EDEAFFF1ECE9FFEFEBE8FFF0EAE7FFF6EC
          E9FFF2EBE8FFEEE9E7FFEFEAE7FFEFEAE7FFEFEAE7FFEFEAE7FFEFEAE7FFF4EF
          EBFFD7D2CDFF121212FFCACACAFFFFFFFFFFFFFFFFFFFFFFFFFF252525FF2523
          23FF262121FF1D1818FF0F0808FFBCAC9DFFD8C7B8FFD8C7BBFFDBC9BEFFDDCD
          C3FFE2D2C8FFE6D6CCFFEBDAD1FFF0DFD8FFF0E5DCFFE6E3DBFFEFECE7FFEFEE
          EAFFEFEDE9FFEFEDE9FFEFEDE9FFEFEDE9FFEFEDE9FFEFEDE9FFF0EDEAFFF6F0
          EDFFD6D3CFFF121212FFCACACAFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0018
          15FF00584FFF004F46FF055A51FF267266FF2C786BFF327B70FF2E7A6EFF3A82
          76FF368275FF338275FF308175FF368377FF659D91FFE8E2D9FFF3F0EEFFF1F0
          EFFFF1F0EEFFF1F0EEFFF1F0EEFFF1F0EEFFF1F0EEFFF1F0EEFFF2F1EEFFF7F4
          F1FFD6D6D0FF131212FFCACACAFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0430
          2CFF2CA499FF3CA298FF24988CFF30978FFF349890FF209086FF3E9F97FF0080
          72FF229186FF409F98FF6FB6B1FF4FA59EFF278C7FFFEDE6DFFFF6F2F3FFF5F2
          F2FFF6F2F1FFF5F3F2FFF5F4F2FFF7F5F3FFF8F4F4FFF7F5F5FFF8F6F6FFFBFB
          F7FFDBD9D4FF141312FFCACACAFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0130
          2BFF4FBAACFFBADDD9FF9DD0CAFF6FBEB4FF85C5BDFF53B1A4FF9BD3CCFF7BC2
          B7FF90CDC4FFBBE2DDFFA5D5CFFF41A799FF3BA092FFEFE7E2FFF9F6F6FFF5F2
          EFFFEBE7E0FFE3DED7FFDED9D0FFDAD4CBFFD6CFC5FFD1CABFFFCEC5BBFFCAC3
          B5FFB6ADA0FF0E0D0DFFC9C9C9FFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0437
          2FFF65CEBDFFD2EEE9FFBFE7E1FF98D4CBFFAFDDD7FF8CD0C4FFC1E5DFFFDCF2
          EFFFDFF1EEFFC2E7E1FF85CCC1FF2AA796FF4AB09FFFF1EAE4FFFDFAF9FFF5F3
          EFFFE4DED7FFEAE6E3FFE5E0DBFFDFDBD3FFDBD5CDFFD6CFC6FFD2CBBEFFE8DF
          D0FF7A736AFF000000FFD5D5D5FFFFFFFFFFFFFFFFFFFFFFFFFF000000FF073D
          34FF87E1D3FFB7E4DCFF98DACFFFCDEEE9FFD9F2EEFFD3F0EBFFCDEDE8FF9BDB
          D1FFB8E4DDFFC1E9E3FFAFE2DAFF85D3C8FF58C0ACFFF0EAE5FFFFFEFCFFF7F5
          F2FFDFDAD3FFEEEDEAFFEFEEEAFFF0ECE8FFEDE9E3FFEAE6DEFFFFFDF6FF9C98
          92FF000000FF8F8F90FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF104C
          42FF81FEEAFF9FF6E7FF9AF5E6FF87E6D7FF84E2D4FF84E2D3FF83E1D3FF89E4
          D6FF85E2D4FF83E0D2FF88E2D3FF7FE0D1FF51CDB6FFF1EDE7FFFFFFFFFFF8F7
          F4FFDCD4CCFFEBE7E4FFF2F1EDFFF4EFECFFF3EDEAFFFFFFFFFFA09D98FF0000
          00FF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0013
          10FF035A4FFF005349FF15635AFF60A697FF70B7A5FF75BBAAFF78BFAEFF7AC2
          B2FF7FC8B7FF85CCBDFF89D1C2FF88D6C7FFA4DDD2FFF3EEEBFFFFFFFFFFF9F6
          F3FFD7CEC4FFE9E4DEFFF4F2F0FFF7F4F2FFFFFFFFFFA2A19FFF000000FF8F8F
          8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D5D5DFF5C58
          59FF5B5153FF463C3DFF0F0304FFD5C3BBFFF7E6E0FFFBE9E4FFFCE9E7FFFBEC
          E8FFFEEFEAFFFFF0EEFFFFF3F1FFFFF6F3FFFFF7F6FFFAF8F7FFFFFFFFFFF7F6
          F3FFCFC6BBFFE4DFD8FFF9F7F7FFFFFFFFFFA3A4A3FF000000FF8E8F8FFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFD4D4D4FF141414FFDEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F4
          F1FFC8C0B4FFE2DDD5FFFFFFFFFFA5A5A6FF000000FF8D8D8DFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCACACAFF131313FFDBDCDBFFFEFEFEFFFCFCFCFFFBFBFBFFFBFB
          FBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFDFDFDFFF1F0
          EDFFC2BAACFFFAF4E9FFA2A2A2FF000000FF8D8E8DFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC9C9C9FF141414FFEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF9
          F6FFD1C6B7FF948F88FF000000FF8D8D8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCDCDCDFF070707FF4B4B4BFF585858FF575757FF575757FF5757
          57FF575757FF575757FF575757FF575757FF575757FF575757FF575757FF5655
          54FF3E3A36FF0B0A0AFF969697FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCFCFCFFF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF696969FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000FDFFFFFFFBFB
          FBFFA19E9AFF7C7673FF827D79FF827D79FF827D79FF827D79FF827D7AFF827D
          7AFF827D7AFF827D7AFF827D7AFF827E7AFF827E7AFF827E7AFF837E7AFF837E
          7AFF837E7AFF837E7BFF837E7AFF837E7AFF837E7BFF827E7AFF7C7874FFBFBD
          B9FFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C4
          C4FF857F7AFFA4A199FFA19F96FFA19E96FFA19E96FFA09E95FFA09D95FFA09D
          95FFA09D94FFA09D94FF9F9D94FF9F9C94FF9F9C94FF9F9C94FF9F9B93FF9E9B
          93FF9E9B93FF9E9B93FF9D9A92FF9D9A92FF9D9B92FF9D9C92FF9C9991FF837E
          7AFFE6E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAB
          A9FFA09A93FFEAE3DBFFE0DAD1FFDFD8D0FFDFD8D0FFDED8D0FFDDD7CFFFDCD6
          CEFFD8D4CCFFD7D4CCFFD8D3CCFFD9D2CAFFD8D2CAFFD8D2C9FFD8D1C9FFD6D0
          C7FFD6D0C8FFD6CFC7FFD5CFC6FFD5CFC6FFD4CDC7FFD5CDC8FFD6CFC9FF847F
          79FFD6D3D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1AF
          ACFF9E9790FFE3DBD4FFD9D1CAFFD8D0C9FFD8D0C9FFD8D0C9FFD7CFC8FFD6CE
          C7FFD2CEC6FFD1CEC6FFD2CDC5FFD4CBC4FFD2CAC3FFD2CAC3FFD2CAC3FFD1C8
          C1FFD0C8C1FFD0C8C1FFCFC7C0FFCFC7C0FFCEC6C1FFCFC6C2FFD0C8C3FF8580
          79FFD8D6D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2AF
          ADFF9F9892FFE4DCD5FFDAD2CBFFD9D1CAFFD9D1CAFFD9D1CAFFD8D0C9FFD7CF
          C8FFD4CFC7FFD3CFC7FFD4CEC7FFD4CDC5FFD2CBC4FFD2CAC3FFD2CAC3FFD2CA
          C3FFD1C9C2FFD0C8C1FFD0C8C1FFD0C8C1FFCFC6C1FFD0C7C2FFD0C8C3FF8580
          79FFD8D6D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1AF
          ACFF9E9992FFE5DDD6FFDBD3CCFFDAD2CBFFDAD2CBFFDAD2CBFFD9D1CAFFD8D0
          C9FFD7CFC8FFD7CFC8FFD5CFC8FFD2CFC7FFD1CEC6FFD3CBC4FFD3CAC3FFD2CA
          C3FFD2CAC3FFD1C9C2FFD1C9C2FFD1C9C2FFCFC7C0FFD0C8C1FFD1C9C2FF857F
          79FFD7D6D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1AF
          ACFF9E9992FFE6DED7FFDCD4CDFFDCD4CDFFDCD4CDFFDBD3CCFFDAD2CBFFD9D1
          CAFFD8D0C9FFD8D0C9FFD6D0C9FFD2D0C8FFD1CFC6FFD3CCC5FFD4CBC4FFD3CB
          C4FFD3CBC4FFD2CAC3FFD1C9C2FFD1C9C2FFD0C8C1FFD1C9C2FFD2CAC3FF8580
          79FFD7D6D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1AF
          ABFF9F9992FFE8E0D9FFDDD5CEFFDDD5CEFFDDD5CEFFDCD4CDFFDBD3CCFFDAD2
          CBFFD6D2CAFFD5D2CBFFDAD5CCFFDAD6CFFFE2D6D1FFD6CFCAFFD5CEC9FFD4CD
          C6FFD0CCC5FFCFCCC4FFD2CAC3FFD2CAC3FFD1C9C2FFD2CAC3FFD2CBC3FF8680
          7BFFD7D6D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1AF
          ACFFA19B93FFE9E1DAFFDED6CFFFDED6CFFFDED6CFFFDCD4CDFFDCD4CDFFDBD3
          CCFFD9D5CDFFDAD2CCFF8BA692FF3B8153FF93AA95FFD6D1C8FFDFD2CDFFD4D0
          CAFFD0CEC6FFCFCCC4FFD3CBC4FFD2CAC3FFD2CAC3FFD3CBC4FFD3CBC4FF8680
          7BFFD7D6D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1AF
          ACFFA19B93FFE9E1DAFFE0D8D1FFDFD7D0FFDFD7D0FFDDD5CEFFDDD5CEFFDCD4
          CDFFC9C3BCFFCFC5C0FFA7B1A2FF008740FF0DA15BFF31754CFFAAA59AFFCCC2
          BDFFD0D0C5FFD6D0C8FFD4CBC5FFD2CAC4FFD2CAC4FFD3CBC4FFD3CBC4FF8680
          7BFFD7D6D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0AF
          ABFFA19B94FFEAE2DBFFE2DAD3FFE0D8D1FFE0D8D1FFDFD7D0FFE0D8D1FFC8C0
          B9FFCAC2BBFFDFD5CFFFEADED9FF508F68FF37CD8FFF4FD49FFF0F733CFF8991
          84FFC5B5B5FFCFC7BFFFD7CFCBFFD5CBC9FFD3CBC5FFD4CCC5FFD4CDC5FF8580
          7AFFD7D6D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0AF
          ABFFA19B94FFEBE3DCFFE2DAD3FFE2DAD3FFE1D9D2FFE2DAD3FFD2CAC3FFC2BA
          B3FFDFD7D0FFDCD5CDFFE4D7D4FFCDCABEFF167E46FF64EAB0FF63E1ACFF0A79
          3DFF7C8A7DFFBCAFAAFFC4BEB7FFD5CCC9FFD6CEC8FFD4CCC5FFD5CDC6FF8580
          7AFFD7D6D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0AE
          ACFFA19C94FFEDE5DDFFE3DBD4FFE2DAD3FFE1D9D2FFE4DCD5FFC5BDB6FFCAC2
          BBFFE1D9D2FFDDD5CEFFDAD3CFFFEADED9FFA9B9A2FF077E40FF63EAB1FF64E5
          ACFF0B7B40FF738571FFB6A7A6FFB9B5AFFFCDC6C1FFD8CFCBFFD7CEC9FF8580
          7AFFD7D6D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1AF
          ACFFA29C95FFEEE6DFFFE4DCD5FFE3DBD4FFE2DAD3FFE6DED7FFC9C1BAFFBCB4
          ADFFE7DFD7FFDFD7D0FFDFD5D0FFD8D4CEFFEFE0DDFF9BAD97FF01863EFF64E8
          B1FF5DE3AFFF087D40FF6C806CFFB2A1A2FFB1ACA6FFC9BFBCFFD6CEC9FF8781
          7CFFD7D5D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1AF
          ACFFA39C96FFEFE7E1FFE4DCD5FFE4DCD5FFE4DCD5FFE2DAD3FFE2DAD3FFB1A9
          A2FFC9C0BBFFE8DFDAFFDDD8D1FFDED5CFFFDAD3CFFFF3DEE1FF8EA691FF0086
          44FF58E5A8FF63E1A7FF0D8042FF697C6AFFAB9E9CFFADA79FFFC3BAB5FF857F
          7AFFD8D6D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1AE
          ACFFA39D96FFF1E9E2FFE6DED7FFE4DCD5FFE5DDD6FFE3DBD4FFE5DDD6FFDED6
          CFFFAFA6A2FFBBB2AFFFE1D8D3FFE7DED7FFDDD7D0FFD9D6CCFFF3E1DFFF82A2
          8AFF008643FF44DB97FF57DB9FFF0F8247FF677C67FFA9999BFFABA39DFF807C
          75FFD9D7D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0AE
          ABFFA39D96FFF2EAE3FFE6DED7FFE5DDD6FFE5DDD6FFE4DCD5FFE3DBD5FFE6DE
          D7FFE5DDD8FFC2B8B5FFAFA6A1FFC1B8B1FFD7CEC8FFE2DAD6FFE3DCD4FFF8E2
          E7FF839F88FF008439FF17C775FF42CE8BFF0E8443FF647C68FFA89897FF7B78
          70FFD9D9D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0AE
          ABFFA39D97FFF3EBE4FFE8E0D9FFE7DFD8FFE6DED6FFE5DDD6FFE4DBD6FFE1D8
          D4FFE3DAD6FFE7DEDAFFDDD4D0FFC4BBB7FFB5ACA8FFB6ABA8FFBDB4B0FFCDC7
          C2FFEEDCDCFF779F87FF008139FF08BE64FF31C981FF0D7F43FF677C6AFF8A7A
          79FFD9D9D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0AF
          ACFFA59E98FFF4ECE5FFE9E1DAFFE8E0D9FFE8E0D9FFDED6D0FFB1A8A4FFE4DA
          D7FF9D9490FFC7BEBAFFCDC4C0FFB5ACA8FFCCC3BFFF938A86FFCDC3C0FF958F
          8BFFB1A7A1FFF8E4E6FF7B9B85FF00843AFF11C16CFF30CA85FF0B7E42FF4A67
          51FFEBE1E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0AE
          ACFFA59F98FFF4ECE5FFE9E1DAFFE8E0D9FFE8E0D9FFE6DED7FFE0D8D2FFEFE6
          E0FFA79E99FFD1C8C4FFEBE2DEFFC2B9B5FF9D9490FFC3BAB4FFF4ECE6FFB4AA
          A7FFBEB9B1FFE6DED6FFF2E2E0FF679379FF008E3FFF1FCE80FF3CD38BFF0073
          34FF9BB5A7FFFFFFFFFFFEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0AE
          ABFFA59F98FFF5EDE6FFEBE3DCFFEAE2DBFFEAE2DBFFE8E0D9FFEAE2DBFFF1E9
          E2FFA9A09BFFD4CBC7FFF5ECE8FFC2B9B5FF908783FFEEE6DFFFEDE6DEFFB1A9
          A3FFC3B8B5FFE7E0DCFFEADCD9FFC7C6BAFF047D3EFF0AA656FF2BD584FF45DC
          96FF09753AFFA6C1B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0AE
          ABFFA59F98FFF5EDE6FFEBE3DCFFEAE2DBFFEAE2DBFFEBE3DCFFE0D8D1FFD1C9
          C2FFA79E9AFFC4BBB7FFCDC4C0FF9D9490FFB5ACA8FFCEC5BFFFD1C9C2FFACA4
          9EFFB8AFAAFFCBC1BDFFDCD9D2FFEDE1D8FF85A98CFF006F32FF0B9A4CFF3EE6
          9CFF52E2A1FF077136FFA5C1B2FFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFB0AE
          ABFFA59E98FFF6EEE7FFECE4DDFFEBE3DCFFEBE3DCFFEBE3DCFFE6DED7FFB6AF
          A7FFB0A7A3FFB3AAA6FFAFA6A2FFB2A9A5FFCFC6C1FFB6ADA9FFBCB3B0FFADA5
          9FFFA9A29AFFB2ABA3FFCFC7C0FFCAC1BAFFD9CAC8FF7B9E86FF046F35FF0FA0
          54FF4CF6AEFF58E6ABFF096F32FFA8C3B3FFFFFFFFFFFEFFFFFFFFFFFFFFB0AE
          AAFFA59F98FFF8EFE8FFECE4DDFFECE4DDFFECE4DDFFEAE2DBFFEBE3DCFFEFE7
          E0FFEFE6E2FFEEE5E2FFECE3E0FFECE3DFFFE7DEDAFFE9E0DCFFE8DFDCFFE3DA
          D5FFD4CDC5FFCBC3BCFFBFB7B0FFBBB3ACFFBCB4AEFFD3C2BCFF9CB19EFF1774
          3EFF0FA657FF5EFFC3FF5FE8AEFF0E763BFFB2CEC0FFFFFFFFFFFFFFFFFFB0AE
          ABFFA6A099FFF9F0E9FFEDE5DEFFEDE5DEFFEDE5DEFFECE4DDFFEBE3DCFFEAE2
          DBFFE9E1DBFFE9E1DBFFE7DFD9FFE7DFD9FFE7DFD9FFE6DED8FFE4DBD5FFD5CD
          C7FFC5BDB6FFEDE5DEFFF0E8E1FFF0E8E1FFEEE9E1FFF4EEE7FFF8E6E2FF7B7E
          73FF267F50FF079C51FF57FDBAFF1CA75CFF6A9C7DFFFFFFFFFFFFFFFFFFB0AE
          ABFFA7A099FFF9F0E9FFEEE6DFFFEDE5DEFFEDE5DEFFEDE5DEFFECE4DDFFEBE3
          DCFFEBE3DCFFEBE3DCFFE9E1DAFFE9E1DAFFE9E1DAFFE8E0D9FFE6DED7FFD3CB
          C4FFBEB6AFFFEDE5DEFFEFE7E0FFEFE7DFFFEEE5E1FFFDF3F0FFABA19CFFA599
          9BFFE6EFEBFF619373FF087531FF25814AFFDCE8E1FFFEFFFFFFFFFFFFFFB0AE
          ABFFA7A199FFF9F1EAFFEEE6DFFFEDE5DEFFEDE5DEFFEDE5DEFFECE4DDFFEBE3
          DCFFEBE3DCFFEBE3DCFFE9E1DAFFE9E1DAFFE9E1DAFFE9E1DAFFE6DED7FFD3CB
          C4FFBCB4ADFFEDE5DEFFEFE7E0FFEFE7DFFFF9F0EAFFE0D7D2FF77706BFFDFDE
          DCFFFFFFFFFFFFFFFFFFCBD7CFFFEEF1F0FFFFFFFFFFFAFFFEFFFFFFFFFFAFAD
          ABFFA7A19AFFFAF2EBFFEFE7E0FFEEE6DFFFEEE6DFFFEDE5DEFFEDE5DEFFECE4
          DDFFECE4DDFFECE4DDFFEAE2DBFFEAE2DBFFE9E1DAFFEAE2DBFFE7DFD8FFD4CC
          C5FFBCB4ADFFEDE5DEFFEFE7E0FFF8EFE8FFF5EDE5FF837C75FFAEABAAFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAD
          ABFFA7A19AFFFCF4EDFFEFE7E0FFEFE7E0FFEFE7E0FFEEE6DFFFEEE6DFFFEDE5
          DEFFECE4DDFFECE4DDFFECE4DDFFEBE3DCFFEAE2DBFFEBE3DCFFE7DFD8FFD7CF
          C8FFC0B8B1FFEFE8E0FFFDF5EEFFF1E8E1FF8A837DFF969290FFFDFDFDFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABA8
          A8FFABA4A0FFFFFEF9FFFAF1ECFFF9F0ECFFF9F0ECFFF8EFEBFFF8EFEBFFF7EE
          EAFFF7EEEAFFF7EEE9FFF6EDE8FFF6EDE8FFF5ECE7FFF4EBE6FFF2E9E5FFE5DC
          D8FFD3CBC6FFF9F1ECFFD0C8C0FF7C7670FF9A9897FFFBFBFBFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C4
          C3FF8A837FFFB2AAA6FFAEA5A1FFAEA5A1FFAEA5A1FFAEA5A2FFAEA5A1FFAEA5
          A1FFAEA5A1FFAEA5A1FFAEA5A1FFAEA5A1FFADA4A1FFADA4A0FFADA4A0FFA9A0
          9CFFA69D9AFF9B938EFF85807AFFC2C0BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFBFB
          FBFFA39D99FF7E7470FF847B77FF837A76FF837A76FF847B77FF847B77FF847B
          77FF847B77FF847B77FF857C78FF857C78FF857C78FF857C78FF857C78FF867D
          79FF817874FFA29B97FFF1F0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFCFCFCFFFBFB
          FBFFFBFBFBFFFAFAFAFFFAFAFAFFFAFAFAFFF9F9F9FFF9F9F9FFF9F9F9FFFAFA
          FAFFFAFAFAFFFBFBFBFFFBFBFBFFFBFBFBFFFCFCFCFFFCFCFCFFFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
          FEFFFCFCFCFFF8F8F8FFE7E7E7FFDEDEDEFFD8D8D8FFD2D2D2FFCCCCCCFFC9C9
          C9FFC7C7C7FFC5C5C5FFC4C4C4FFC3C3C3FFC3C2C3FFC2C2C2FFC2C2C2FFC3C3
          C3FFC3C3C3FFC5C5C5FFC7C7C7FFC8C8C8FFCACACAFFCFCECEFFD5D4D5FFDBDB
          DBFFE0E0E0FFECECECFFFAFAFAFFFDFDFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFCFCFCFFE7E7E6FFF1F2F0FFF0F1EFFFF1F2F1FFF2F2F1FFF2F2
          F2FFF2F3F2FFF2F2F1FFF2F2F1FFF1F2F1FFF1F2F1FFF2F2F2FFF2F2F1FFF2F2
          F1FFF2F2F2FFF2F2F2FFF1F2F2FFEFF1F1FFEFF1F0FFEFF1F0FFEFF1F1FFF0F1
          F2FFEEEFF0FFE9E9EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDFFF2EFF2FFFFFDFFFFFFFCFFFFFFFCFFFFFFFCFFFFFFFC
          FFFFFFFCFFFFFFFCFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFC
          FFFFFFFCFFFFFFFCFFFFFFFCFFFFFFFBFFFFFFFBFFFFFFFBFFFFFFFBFFFFFFFB
          FFFFFEF9FEFFF2EEF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFF
          FFFFEEF3EDFFAAC2A5FF94AF8FFF9FBB99FF9FBC9AFFA1BC9BFF9EBB99FF99BA
          95FFA0BD9BFFA1BD9CFF9BBB95FF9EBC9AFF9BBC97FF9CBB97FF9CBA96FF9BBA
          94FF9DBD9BFF9EBB98FF99B894FF9BBA93FFA0BC98FFA1BB9AFFA1BB9AFFA2BB
          9BFFA1BB99FF98B78FFFB2CAAEFFF4F6F5FFFFFFFFFFFFFFFFFFFDFFFFFFFFFF
          FFFF6A9E60FF0A6E00FF158500FF168E00FF159400FF189300FF279F12FF32A0
          1DFF189300FF159300FF2BA01EFF2B9C11FF2F9A1EFF3BA32AFF3AA529FF3DA2
          25FF169402FF1D9808FF46AC33FF3EA728FF159303FF169600FF199600FF1898
          00FF199D00FF179B00FF0F8000FF8BB086FFFFFFFFFFFFFFFFFFFFFFFEFFF8F9
          F7FF3A8A2BFF198200FF239807FF25A008FF24A406FF1EA100FF53B541FFE8F5
          ECFF47AF34FF4AB137FFECF2EBFF51B543FFC2E5C2FFD9EDD9FFCEE5CAFFBBDF
          B8FF4AB03BFFD1E9CFFFD2EAD1FFDEEEDBFF9FD698FF21A104FF24A407FF25A5
          07FF25A508FF229E08FF148700FF68A35CFFFFFFFFFFFFFFFFFFFFFFFFFFF7FA
          F8FF3E8F30FF1A8D00FF229F09FF24A308FF26A509FF27A607FF1AA100FFA2D6
          9AFFCEE7CFFFD3EBCFFF96D18CFF20A203FFDDF0D8FF61BE52FF20A402FF21A3
          03FF66BE56FFAED9A6FF199E00FF60BD51FFECF5EAFF34AB17FF22A503FF26A6
          07FF25A409FF23A007FF138800FF6DA261FFFFFFFFFFFFFFFFFFFFFFFFFFF7FA
          F8FF419432FF1D9100FF24A108FF25A409FF26A50AFF26A607FF23A503FF26A7
          0CFFE3F2E1FFE2F1E4FF26A50EFF25A60BFFDBEFD8FF5DBC4AFF1AA100FF24A6
          04FF23A204FF66BC55FFC6E8C2FFECF4EDFFA1D89DFF24A505FF25A606FF26A6
          07FF24A408FF23A007FF138800FF6DA261FFFFFFFFFFFFFFFFFFFEFFFFFFF8FA
          F8FF419531FF1C9300FF24A208FF26A50AFF26A50AFF27A608FF1DA100FF4DB3
          3AFFEEF5EDFFF0F7EFFF4FB438FF1EA402FFDBEFD8FF5EBC4DFF1CA100FF1FA2
          00FF4EB639FFEFF6F0FF84CA7AFF5CB94BFF50AE3FFF25A407FF26A509FF26A6
          08FF26A307FF259F07FF148600FF69A160FFFFFFFFFFFFFFFFFFFCFFFFFFF8FA
          F8FF409531FF1B9300FF24A208FF26A50AFF27A50AFF23A506FF2BA711FFDAED
          D7FF8ACC7CFF89CB81FFDAECD5FF32A91AFFDBEFDBFF5FBD51FF1DA100FF1FA2
          02FF49B336FFE8F1E9FF92D089FFC9E5C5FFB6DEB1FF20A105FF25A509FF25A5
          09FF26A209FF249B07FF138000FF689E5FFFFFFFFFFFFFFFFFFFFFFFFEFFF8FB
          F7FF3F932DFF189000FF24A205FF24A408FF23A308FF20A104FF3DA921FF74C1
          63FF27A40DFF24A20BFF76C062FF3BAC22FF5DB94CFF37AB1FFF22A104FF24A3
          07FF1FA104FF50B340FF96CF86FF7EC672FF31A718FF20A205FF23A107FF22A1
          05FF219D05FF219205FF0D7400FF699D62FFFFFFFFFFFFFFFFFFFCFEFDFFFFFF
          FFFF89C07EFF1E9506FF28A30BFF28A10CFF269D0CFF249A06FF1E9601FF1693
          00FF1F9602FF209803FF169300FF209804FF189301FF219905FF219804FF2096
          03FF1F9703FF179600FF139500FF119200FF1C9702FF269B0AFF259A09FF2498
          0BFF23910BFF1D8305FF2D7E19FFC5D7C0FFFFFFFFFFFFFFFFFFFEFFFFFFFFFF
          FFFFFCFDFCFFD9EAD8FFC4DCC0FFD4EBD3FFB9CFBAFF9BB199FFC9E1C8FFB6CC
          B5FFC8DFC7FFB3C9B2FFC8E0C8FFADC4ACFFC9E1C9FF97AE96FFB5CCB4FFC9E0
          C8FFC5DDC5FFBDD6BEFFB0C8AFFFC4DCC4FFABC2ABFFA3B7A3FFD4E8D3FFCEE2
          CFFFCDDFCBFFC4D5C0FFE7F0E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDFFF0ECF0FFFFFFFFFFE3E1E3FFB8B3B8FFEBE6EBFFD7D2
          D6FFEAE5EAFFD4CFD3FFEBE6EBFFCDC9CDFFEBE7ECFFB7B3B7FFDBD9DBFFDBD7
          DBFFCBC7CBFFDFDDDFFFB0ACAFFFFFFFFFFFE3E1E3FFC8C3C8FFFFFFFFFFFEFB
          FFFFFBF7FCFFEFEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDFFEAEAEAFFFDFDFDFFDEDEDEFFB9B9B9FFF3F3F3FFDCDC
          DCFFF2F2F2FFD8D8D8FFF3F3F3FFD1D1D1FFF4F4F4FFB7B7B7FFD9D9D9FFB6B6
          B6FFB4B4B4FFA9A9A9FFB5B5B5FFDCDCDCFFD2D2D2FFC3C3C3FFFDFDFDFFF7F7
          F7FFF3F3F3FFEBEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDFFEAEAEAFFFDFDFDFFDFDFDFFFB6B6B6FFEAEAEAFFD5D5
          D5FFE9E9E9FFD1D1D1FFEAEAEAFFCACACAFFEBEBEBFFB2B2B2FFE9E9E9FFFFFF
          FFFFE6E6E6FFC8C8C8FFDDDDDDFFA3A3A3FFD5D5D5FFC4C4C4FFFDFDFDFFF7F7
          F7FFF3F3F3FFEBEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDFFEAEAEAFFFDFDFDFFDEDEDEFFB9B9B9FFF5F5F5FFDEDE
          DEFFF4F4F4FFD9D9D9FFF5F5F5FFD2D2D2FFF7F7F7FFB5B5B5FFD8D8D8FFF1F1
          F1FFEFEFEFFFF1F1F1FFDFDFDFFFC7C7C7FFD1D1D1FFBFBFBFFFFDFDFDFFF6F6
          F6FFF3F3F3FFEBEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDFFEAEAEAFFFCFCFCFFDEDEDEFFB5B5B5FFE7E7E7FFD3D3
          D3FFE6E6E6FFCECECEFFE7E7E7FFCACACAFFE8E8E8FFB0B0B0FFB2B2B2FFBBBB
          BBFFB8B8B8FFB0B0B0FFC2C2C2FFBFBFBFFFB5B5B5FFD5D5D5FFFBFBFBFFF6F6
          F6FFF3F3F3FFEBEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDFFEAEAEAFFFCFCFCFFDEDEDEFFB2B2B2FFDCDCDCFFCBCB
          CBFFDEDEDEFFC6C6C6FFE0E0E0FFC3C3C3FFDDDDDDFFB0B0B0FFE6E6E6FFD8D8
          D8FFA8A8A8FFA9A9A9FFDADADAFFFDFDFDFFFCFCFCFFFBFBFBFFF6F6F6FFF6F6
          F6FFF1F1F1FFE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDFFE9E9E9FFFCFCFCFFE1E1E1FF888888FFB0B0B0FFA5A5
          A5FF8C8C8CFFBEBEBEFF8E8E8EFFA6A6A6FFABABABFF909090FFD3D3D3FF9B9B
          9BFFBCBCBCFFB1B1B1FF9F9F9FFFE7E7E7FFFAFAFAFFF7F7F7FFF6F6F6FFF6F6
          F6FFEAEAEAFFEBEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDFFE9E9E9FFFAFAFAFFE7E7E7FFA2A2A2FFD4D4D4FFC3C3
          C3FF9D9D9DFFE5E5E5FFA3A3A3FFC4C4C4FFC9C9C9FFA7A7A7FFC5C5C5FF9C9C
          9CFFF8F8F8FFE4E4E4FF989898FFE7E7E7FFFAFAFAFFF7F7F7FFF9F9F9FFEFEF
          EFFFDBDBDBFFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDFFE9E9E9FFF7F7F7FFF9F9F9FFF1F1F1FFC4C4C4FFC5C5
          C5FFCDCDCDFFC3C3C3FFD7D7D7FFC8C8C8FFBEBEBEFFF3F3F3FFEEEEEEFF9E9E
          9EFFA1A1A1FF9C9C9CFFAAAAAAFFECECECFFF7F7F7FFF1F1F1FFE3E3E3FFC5C5
          C5FFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDFFE9E9E9FFF6F6F6FFF6F6F6FFF8F8F8FFE7E7E7FFEBEB
          EBFFF7F7F7FFE3E3E3FFF7F7F7FFECECECFFE9E9E9FFFAFAFAFFF7F7F7FFE3E3
          E3FFB8B8B8FFC4C4C4FFE2E2E2FFDCDCDCFFCACACAFFC3C3C3FFB6B6B6FFCFCF
          CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDFFE9E9E9FFF6F6F6FFF5F5F5FFF6F6F6FFF9F9F9FFF9F9
          F9FFF8F8F8FFFBFBFBFFF9F9F9FFFAFAFAFFFBFBFBFFF8F8F8FFF9F9F9FFFBFB
          FBFFF7F7F7FFFDFDFDFFF0F0F0FFBDBDBDFFDFDFDFFFE7E7E7FFDCDCDCFFFCFC
          FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDFFE9E9E9FFF6F6F6FFF5F5F5FFF5F5F5FFF6F6F6FFF6F6
          F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF7F7F7FFF6F6F6FFF6F6F6FFF6F6
          F6FFF7F7F7FFF8F8F8FFEBEBEBFFB1B1B1FFDEDEDEFFDCDCDCFFF5F5F5FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDFFE9E9E9FFF5F5F5FFF4F4F4FFF5F5F5FFF5F5F5FFF5F5
          F5FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
          F6FFF6F6F6FFF6F6F6FFDADADAFFA6A6A6FFD0D0D0FFF2F2F2FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDFFE9E9E9FFF5F5F5FFF4F4F4FFF5F5F5FFF6F6F6FFF5F5
          F5FFF5F5F5FFF6F6F6FFF6F6F6FFF5F5F5FFF5F5F5FFF6F6F6FFF6F6F6FFF5F5
          F5FFF4F4F4FFEBEBEBFFBBBBBBFFAEAEAEFFF2F2F2FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDFFE9E9E9FFF6F6F6FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
          F5FFF5F5F5FFF5F5F5FFF5F5F5FFF6F6F6FFF6F6F6FFF5F5F5FFF5F5F5FFF2F2
          F2FFEAEAEAFFD1D1D1FFC3C3C3FFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDFFE8E8E8FFEFEFEFFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
          EEFFEEEEEEFFEEEEEEFFEEEEEEFFEFEFEFFFEFEFEFFFEEEEEEFFEDEDEDFFEAEA
          EAFFE9E9E9FFEAEAEAFFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF4F4F4FFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
          EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFF0F0F0FFF6F6
          F6FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFD6D6D6FFCBCBCBFFCDCD
          CDFFCDCDCDFFCDCDCDFFCDCDCDFFCECECEFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
          CCFFCCCDCDFFCCCDCDFFCDCDCDFFCCCCCCFFCBCCCCFFCCCCCCFFCCCCCCFFCBCC
          CCFFCBCBCBFFCBCBCBFFC8C8C8FFDBDBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FFD4D4D4FFE8E8E8FFE6E6
          E6FFE6E6E6FFE5E5E5FFE4E4E4FFE4E4E4FFE4E4E4FFE3E3E3FFE3E4E4FFE2E3
          E3FFE1E3E3FFE1E3E3FFE3E3E3FFE3E3E3FFE4E3E3FFE5E3E4FFE5E3E3FFE4E2
          E3FFE2E0E0FFDFDFDFFFE0E0E0FFD1D1D1FFFBFBFBFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FFDBDBDBFFF0F0F0FFEDEC
          EDFFF5EFF3FFF3EFF2FFF1EFF0FFEFEEEEFFEDECECFFEBEAEAFFE9E7E7FFE7E6
          E6FFE4E2E1FFDFDDDEFFDADCDCFFD6D9D8FFD4D5D4FFD2D2D2FFD1D0D0FFCECB
          CBFFDBDBDBFFE8E8E8FFE6E6E6FFD5D5D5FFFBFBFBFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FFDADADAFFF0EFF0FFE9EC
          E9FFC4DFCDFFC2D5C8FFBFCAC4FFCACFCEFFD0D2D1FFD1D0D1FFCDD3D0FFD1D6
          D7FFD2DADCFFD3DDDDFFC9D9D6FFD0DDDFFFD3E2E3FFD4E7E6FFD8EEEBFFBDD3
          D0FFC1C6C5FFECEAEAFFE6E6E6FFD5D5D5FFFBFBFBFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FFDBDAD9FFF3F0F2FFE1EA
          E2FF8BC8A4FFC5DECEFFE3EFEAFFDFEFE8FFDAEFE8FFE3F5F2FFD9F8EFFFC6EA
          DEFFBDE1D2FFB5DCC8FFE9FBF7FFC0E7DBFF9FD5BDFF8DC4AAFF90C6ACFFCAE4
          E1FFC3C6C7FFEDEAEBFFE6E7E7FFD6D6D6FFFAFAFAFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FFDDDBDBFFF4F2F3FFE5ED
          E6FF87C29EFFB0CCBDFFC1E6D8FF80C7A5FF7CC3A2FFB1DECCFFC9E9E0FF6CB5
          90FF5EA67AFF52986CFFD7F1E9FF9AD2BBFF62AF84FF51A071FF59A177FFC9E3
          DFFFC4C7C7FFECEAEAFFE6E6E6FFD7D7D7FFFBFBFBFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FFDDDBDBFFF4F2F3FFE5ED
          E6FF89C39FFF95BDA9FFC5E8DDFF6BBB9AFF72BD9DFFA0D2BCFFD8EEE8FF76BB
          99FF69B089FF5CA077FFCFEBE3FFB6DFD2FF84BFA4FF7EB898FF81B99BFFC9E6
          DEFFC1C7C7FFEDEBEBFFE7E7E8FFD8D8D8FFFBFBFBFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FFDDDBDBFFF4F2F3FFE5ED
          E7FF8DC6A1FF70A786FFEDF9F7FFC9E7DCFFCEECE1FFDBF1EAFFEFFCFAFFE3F8
          F4FFE3F6F4FFDDF5EEFFDDF3ECFFDEF5EEFFD0EDE5FFCEEAE1FFCBE8DDFFCDEA
          E2FFBEC5C4FFEEEDECFFEAEAEBFFD9D9D9FFFBFBFBFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FFDEDCDBFFF7F5F7FFE7EE
          E8FF8FCAA4FF52956BFFF6FBFAFFECFAF8FFEDF9F7FFE6F6F3FFE1F3EFFF8CB0
          9DFF4E885FFF4D7E5CFFC8DDD6FFC2E9DCFF77B999FF66AB86FF599C74FFC0E1
          D5FFC5C9C9FFEEEBEBFFEAEAEBFFD9D9D9FFFBFBFBFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FFDFDEDDFFF9F7F9FFE9F0
          E9FF97CEAAFF458B5EFFE6F3EEFFC0E0D7FF75B999FF7DC09FFF498F6AFF0854
          20FF003F06FF629A74FFFAFEFFFFC0E4DCFF6EB594FF61AA80FF52986FFFB9DE
          D1FFC5CACBFFEDEBEAFFEBEBEBFFD9D9D9FFFBFBFBFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FFDFDEDDFFFAF8F9FFE9F1
          EAFFA0D1AFFF3E8854FFCFE4D8FFFFFFFFFFD1EDE2FF5DA27CFF125822FF0C52
          1BFF659C76FF94C2A9FFC9E6DCFFDFF7F2FFC2E7DCFFC2E4D8FFBDE2D3FFCFEE
          EAFFBEC7C6FFEAEBE8FFECECECFFD9D9D9FFFBFBFBFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F3F3FFE0DEDDFFFBF9FAFFE8F0
          EAFFA3D1B3FF4D9162FFB8D7C4FFFFFFFFFFC9DFD4FF175B26FF00440BFF3277
          47FFAAD3BFFFF3FEFDFFEBFFFBFFD4F1E8FF94CDB4FF85C2A4FF71AF8BFFB6DF
          CFFFC4CDCAFFEBE8E8FFEDEDEDFFD9D9D9FFFBFBFBFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFDFDDDCFFFCFAFBFFE8F0
          EAFFA6D4B4FF689E77FFB5D6C2FFE6EDEBFF2B633BFF06450CFF6D9678FF98CC
          AFFF579C73FF82B798FFE4F3F2FFD6F4EBFF73B996FF5CAA7FFF449160FFA6D2
          BEFFC9D0CEFFEAE7E7FFEEEFEFFFDADADAFFFBFBFBFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFDEDDDDFFFCFBFCFFE9F1
          EBFFAAD8B8FF86B292FFAFCFBBFFF4F9F9FFD7E5DCFFDEECE6FFFFFFFFFFF8FF
          FFFFE1F5F1FFD9EFE8FFE4F6F5FFE4FDF9FFBBE6DAFFB4DECFFFA9D3C0FFC4E9
          DEFFBDCBC9FFE5E5E5FFF0EFEFFFDADADAFFFBFBFBFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFDEDEDEFFFCFBFCFFF2F5
          F2FFAED9BCFFA9CBB4FFA6C6AEFFCBE0D1FFCEE4D5FFCDE2D6FFC6DDD0FFC4DD
          D0FFC6DFD2FFC6DFD2FFC3DCCEFFC2DBCCFFC4DED2FFCFE8DAFFD3ECDEFFE6F1
          F1FFD8DFDFFFECEBEBFFEFEFEFFFDADADAFFFBFBFBFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFDEDEDEFFFBFBFBFFFEFA
          FEFFB5DDBFFFC3DCCBFFB4CEB8FFA9CBAFFFACCBB3FFADCAB3FFADCAB3FFACCB
          B3FFABCBB3FFABCBB3FFADCBB3FFADCBB3FFABC9B1FFB7D3BCFFB3D9BEFFF4F1
          F2FFEEF2F1FFEFEEEFFFEFEFEFFFDBDBDBFFFBFBFBFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFDEDEDEFFFBFBFBFFFBF9
          FAFFE9F2EAFFA1D3B3FFCBE3D2FFD5E3D9FFD1E1D1FFCFDFD1FFCFDFD1FFCFDF
          D1FFCFDFD1FFCFDFD1FFCFDFD1FFCFDED1FFCBDFCFFFD3E4D5FFB4DEC1FFF6F4
          F6FFF0F0F0FFEFEFEFFFF0F0F0FFDADADAFFFBFBFBFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFDEDEDEFFFCFBFBFFF6F6
          F6FFFDFAFFFFE2F1E7FFA9D9BAFFB1DCBCFFBDDFCAFFC0E1CAFFC0E1C9FFC0E1
          C9FFC0E1C9FFC0E1C9FFC0E1C9FFC0E0C9FFC0E1CBFFB8DEC1FFA8D6B9FFFAF6
          F9FFF2F2F2FFF2F2F2FFF2F2F2FFDADADAFFFBFBFBFFFFFFFFFFFFFEFFFFFFFF
          FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F5F6FFE3E2E2FFFFFFFFFFFEFC
          FCFFFCFCFBFFFFFEFFFFFFFFFFFFE9F4EBFFD3EFDDFFD3EDDCFFD5EEDDFFD5EE
          DDFFD5EEDDFFD4EDDDFFD3EDDDFFD3EEDCFFD2EAD9FFCFE4D4FFDEECE4FFF7F5
          F7FFF3F3F3FFF3F3F3FFF4F4F4FFDCDCDCFFFAFAFAFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFEFFFFF5F3F8FFF5F4F9FFFAF5FAFFEDE8EDFFD8D5D8FFF4F0F4FFF1EE
          F2FFF2EEF2FFF2EFF2FFF2EFF2FFF5F0F5FFFAF2F9FFFAF2F9FFF8F0F8FFF8F1
          F8FFF9F1F8FFF8F0F7FFF8F1F5FFF9F0F8FFFDF7FDFFFDF9FCFFFAF7F9FFF4F4
          F4FFF6F6F6FFF5F5F5FFF7F7F7FFDCDCDCFFFAFAFAFFFFFFFFFFFFFFFFFFF8F9
          F7FF75856AFF4B6544FF536C4CFF4F6A45FF526C45FF4D6441FF536B47FF526A
          46FF4D6841FF516B46FF4F6A46FF4C6842FF556D49FF506C46FF556D49FF536B
          47FF506A47FF556E4AFF566E44FF516844FFB7BDB2FFFEFDFEFFF7F7F7FFF7F7
          F7FFF8F8F8FFF8F8F8FFF8F8F8FFDBDBDBFFFAFAFAFFFFFFFFFFFFFFFFFFECEF
          EAFF29511EFF18450CFF1F4A14FF2D5424FF194409FF1F4A15FF29541BFF264F
          1CFF3E6634FF2C551DFF2E5523FF36612EFF134307FF2B5522FF15430AFF1F4B
          14FF245421FF1B4812FF204A10FF144004FF9EA695FFFFFFFFFFF9F9F9FFFAFA
          FAFFFAFAFAFFF8F8F8FFF3F3F3FFD7D7D7FFFAFAFAFFFFFFFFFFFFFFFFFFEDF1
          ECFF355B2BFF224D17FF1B4610FF8DA188FF677C5EFF8DA187FF54754EFF8EA9
          92FF8DA189FF4E6B42FF738D6AFF8BA285FF7B9277FF859A7DFF607B5AFF8DA2
          84FF5B7C53FF1C4A15FF28511CFF1E480FFFA3AB9AFFFFFFFFFFFFFFFFFFFFFF
          FFFFFCFCFCFFF6F6F6FFEEEEEEFFD0D0D0FFFAFAFAFFFFFFFFFFFFFFFFFFEEF1
          ECFF375B2AFF214C17FF264F1CFF254F1CFFC3CEC0FFA1AE98FF0E3D03FFA1B6
          9EFF325623FF17480EFF1E4714FF91A38AFF93A88BFF1B4410FFC8D1C5FF99AC
          94FF15430EFF27531CFF29511BFF1F4910FFA5AD9CFFFFFFFFFFE1E2E2FFDEDE
          DEFFE2E2E2FFDBDBDBFFC8C8C8FFCFCFCFFFFEFEFEFFFFFFFFFFFFFFFFFFEFF2
          EDFF395C2AFF214C17FF254F1CFF294E1AFFC4CFC0FF9CAE9AFF0E3C06FFA6B7
          A1FF3B6032FF1A4811FFAEBFAAFF728C69FF13440BFF24511CFFC9D3C3FF9CAE
          94FF19460CFF26521DFF28511BFF1E4910FFA8B0A0FFFAF8FBFFB4B4B4FFC4C4
          C4FFC6C6C6FFBABABAFFC6C6C6FFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFEFF2
          EDFF375D2BFF234D16FF1B460FFF82987DFF6D8368FF839C7AFF567650FF8EA4
          87FF395E2FFF204911FF92A58AFF88A186FF547149FF819676FF6B8361FF879B
          83FF5E7A57FF1F4915FF29511CFF204811FFA8B0A0FFF3F2F5FFD8D8D8FFFFFF
          FFFFE3E3E3FFD4D4D4FFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF1
          EBFF2A521AFF144207FF1A470DFF214E1AFF13420CFF18470EFF224C18FF1B48
          12FF1B4710FF1A460FFF134207FF305B27FF224F18FF204E14FF144209FF1845
          10FF214D18FF19470AFF19460EFF133B03FFA1AA9AFFF3F1F4FFD1D1D1FFE4E4
          E4FFCECECEFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8
          F7FF738865FF547349FF5B7851FF58774BFF58774CFF547248FF5A774CFF5A78
          4DFF5B794FFF5B794FFF5B794EFF57734CFF5A774FFF5B7A4AFF5D7B4DFF5C7A
          4CFF5B7A4BFF5E7B4FFF5A794EFF5D764CFFCED1C6FFE7E6E8FFC5C5C5FFD5D5
          D5FFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F7F8FFE5E5E6FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F4F6FFCECECEFFC9C9C9FFF7F7
          F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFFDEDEDEFFE1E0E1FFE1E1
          E1FFE1E1E2FFE2E1E2FFE1E1E2FFE2E1E2FFE1E1E1FFE1E1E1FFE2E1E2FFE2E1
          E2FFE2E1E2FFE2E1E2FFE1E0E1FFDEDEDFFFDADADAFFDDDDDDFFF8F8F8FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFF7F7F7FFF7F7
          F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
          F7FFF7F7F7FFF7F7F7FFF8F8F8FFF8F8F8FFFAFAFAFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFCACACAFF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FFCACACAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC8C8C8FF030404FF454541FF504F49FF4E4C47FF4E4D47FF4E4D
          47FF4E4D47FF4E4C47FF4D4D47FF4D4C47FF4D4D47FF4E4D47FF4E4C47FF4E4D
          47FF4E4D47FF4E4D47FF4E4C47FF4E4D47FF4E4C47FF4E4D47FF4E4C47FF504E
          4AFF484542FF050403FFC8C8C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC5C5C5FF0E0D0DFFDCD6CAFFFAF2E3FFF2EADCFFF2EBDCFFF2EB
          DCFFF2EBDCFFF2EADCFFF3EBDCFFF2EADCFFF0EADBFFF0EBDCFFF1EADCFFF1EB
          DCFFF2EBDCFFF2EBDCFFF2EADCFFF2EBDCFFF2EADCFFF2EBDCFFF2EADDFFF9F2
          E4FFDBD6CAFF0F0D0DFFC5C5C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC5C5C6FF0E0C0CFFCDC7BAFFE8E0D2FFE1D9CCFFE1D9CCFFE1D9
          CCFFE1D9CCFFE1D9CCFFE0D7CCFFE9DCD2FFF4E2D9FFE5DBCFFFDDD8CBFFE0D9
          CCFFE1D9CCFFE1D9CCFFE1D9CCFFE1D9CCFFE1D9CCFFE1D9CCFFE1D9CDFFE7E0
          D3FFCAC6BBFF0D0C0CFFC5C5C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC5C5C6FF0E0C0CFFCDC8BDFFE9E1D5FFE1DACEFFE1DACEFFE1DA
          CEFFE3DACEFFE2DACEFFE5DED2FFB4C7BDFF84ADA3FFC7D0C4FFE8DED0FFE1DA
          CDFFE1DACDFFE3DACDFFE1DACEFFE1DACEFFE1DACEFFE1DACEFFE1DACFFFE8E2
          D4FFCBC7BCFF0D0C0CFFC5C5C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC5C5C5FF0D0C0BFFCDC8BFFFE9E2D7FFE1DBD0FFE1DBD0FFE1DB
          D0FFE0DBD0FFE1D9CFFFF5E4D8FFA2BDB4FF005F51FF69A69BFFF5E5DAFFE0DB
          CFFFE1DCD0FFE9DCD0FFE1DACFFFE0DBD0FFE1DBD0FFE1DBD0FFE1DBD0FFEAE2
          D5FFCCC8BDFF0D0C0CFFC5C5C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC5C5C5FF0C0D0CFFCEC9C0FFE9E3D8FFE2DCD1FFE1DCD0FFE0DB
          D0FFE7DCD1FFF0E5DBFFD8DDD2FFCCD6CBFF198177FF2D8D83FFE6E0D7FFE9DB
          D4FFD6D7CEFFCEDBD0FFF6E6DCFFE7DDD1FFE1DBCFFFE2DCD0FFE1DCD1FFEAE3
          D6FFCECABEFF0D0C0CFFC5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC5C6C5FF0D0D0BFFCFCAC0FFEBE4D9FFE0DDD1FFE7DDD2FFF6E4
          DEFFDFDFD6FF7FB9AEFF218A7DFFCED4CDFF61A499FF027D6FFFC3D1C9FFF2E4
          DCFFBDCBC5FF1F8A7AFF7DB7B0FFDFDFD9FFFAE6DCFFE6DED2FFE2DCD2FFE9E3
          D9FFCDCAC2FF0D0D0CFFC5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC4C5C5FF0D0D0CFFD1CCC2FFECE6DAFFE9E0D6FFE5DFDBFF89BF
          B5FF219284FF00786AFF088477FFDCDCD4FFA1C2B7FF007B6BFF8FBDB2FFFCEA
          DFFFC7D5CAFF0D8574FF00796CFF229185FF8BBEB7FFE3E0DCFFE6DFD6FFEAE4
          DBFFCECBC4FF0D0D0CFFC5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC5C5C5FF0C0D0CFFD1CCC4FFF2E8DEFFDCDCD4FF3A9C8FFF0084
          75FF179081FF61AB9CFFBACFC4FFF0E4DCFFC9D7CCFF088A7AFF52A898FFF6E6
          DBFFE7E2D7FFB9D0C5FF62AA9BFF1B8F7FFF008376FF399D8FFFDADCD4FFF1E7
          DEFFCECCC4FF0D0D0CFFC5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC5C5C5FF0C0D0CFFD0CBC6FFF5E9E2FFD4D7D1FF0D8E7CFF098E
          7FFF50A99EFFDCE4DEFFFFEDE6FFE8E0D9FFF2E3DCFF3FA194FF1E9685FFD7DF
          D3FFEDE2D9FFFFECE5FFDEE3DDFF4EA99EFF058D7FFF128E7BFFD3D8CEFFF4EA
          E0FFCECBC4FF0D0D0CFFC5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC5C5C5FF0C0C0CFFD2CDC7FFF2E8E1FFE7E1DAFF85BDB1FF239D
          8AFF0A907EFF1C988BFF73BBB2FFE3E1D8FFF8E9E3FF80BCB0FF018F7CFFAFD1
          C4FFF3E6DEFF73BBB0FF199A8BFF088F7EFF279C8BFF84BCAFFFE6E2D7FFF0EA
          E0FFD0CDC6FF0D0D0CFFC5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC5C5C5FF0C0D0DFFD1CEC8FFECE9E0FFE7E1DBFFFBE7E4FFD6DD
          D5FF79BCAFFF1D9D8CFF06947FFFC4D8CFFFFBE9E2FFBDD3C6FF069781FF81C0
          B4FFD6DED5FF06947DFF219D8BFF77BCAFFFD4DED5FFF4E9E2FFE8E2DAFFEAE9
          E0FFD1CDC9FF0E0D0CFFC5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC5C5C5FF0C0C0DFFD1D0CAFFEDEBE1FFE3E2DBFFE5E2DCFFF0E3
          E0FFF6EBE3FFD0DCD2FF73BDADFFCBD8D1FFF1E6DDFFE1E2D9FF37A795FF44B0
          A0FFC8DCD4FF74BFADFFD1DAD5FFFAE9E4FFEEE5DDFFE6E2DAFFE5E2DAFFECEA
          E1FFD1CECAFF0E0D0CFFC5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC5C5C5FF0C0C0DFFD1CFCBFFEFEAE3FFE7E3DDFFE5E3DEFFE7E2
          DEFFE9E3DBFFECE7DEFFF4E7E3FFE5E2DEFFE3E3DCFFF8E9E0FF68BDAFFF11A4
          90FFC4DBD4FFFFEAE5FFEDE5E1FFE3E3DCFFE5E4DDFFE6E3DDFFE6E3DDFFEEEB
          E4FFD3D0CBFF0E0D0CFFC5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC5C5C5FF0C0D0DFFD2D0CDFFF0ECE7FFEAE6E1FFE9E6E1FFE8E6
          E1FFE8E6E1FFE9E6E1FFE9E6E1FFEAE6E1FFE8E6E1FFFAEBE4FFAAD5CAFF1BA9
          92FF9ED0C5FFF9EBE6FFEAE6E1FFE8E6E1FFE9E6E1FFE9E6E1FFE9E6E1FFEFEC
          E8FFD3D0CBFF0E0D0CFFC5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC9C9C9FF0D0D0DFFD5D1CEFFF4EFEBFFEEE9E5FFECE9E5FFEDE9
          E4FFEDE9E5FFEDE9E4FFECE9E5FFECE9E4FFEDE9E5FFECE9E6FFEBE9E4FFD6E4
          DFFFDFE5E1FFEEEAE4FFEDE9E4FFEBE9E4FFECE9E4FFECE9E4FFECE9E4FFF1EE
          E9FFD3D0CCFF0E0D0CFFC5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFF7F7
          F7FFF7F6F7FFBEBEBEFF0E0D0DFFDAD7D3FFFBF6F0FFF3F0EBFFF1EFEBFFF1EF
          EBFFF0EFE9FFF0F0E8FFF0EFE9FFF1EDEAFFF0ECE9FFEDECE8FFF0EBE7FFF7EC
          E9FFF1EBE8FFECEBE6FFEEEBE7FFEEEBE7FFEEEBE7FFEEEBE7FFEEEBE7FFF3F0
          ECFFD5D2CDFF0E0D0CFFC5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFF242122FF221F
          20FF221D1DFF171214FF0E0607FFB9ABA0FFD5C7B6FFD6C7B9FFD8CABFFFDCCE
          C2FFE1D2C9FFE4D6CCFFE7DAD1FFEDDFD8FFEFE3DCFFE5E2DEFFEFECE8FFF1EE
          EAFFF1EDE9FFF1EDE9FFF1EDE9FFF1EDE9FFF1EEE9FFF1EDE9FFF1EEEAFFF5F2
          EEFFD6D2CEFF0E0D0CFFC5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0017
          13FF09584EFF004C45FF06564EFF207062FF2D7A6BFF2B786AFF378075FF2F7E
          71FF348074FF338075FF398377FF3C8579FF649D8FFFE7E2DCFFF4F1EEFFF2F1
          EEFFF0F0EEFFF0F0EEFFF2F0EDFFF2F0EDFFF2F1EDFFF2F0EDFFF3F1EEFFF6F5
          F0FFD5D6CFFF0E0D0DFFC5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0B33
          2DFF109787FF7EC4BFFF399F94FF71B6B1FF4BA59DFF63B1ABFF007465FF48A6
          9DFF4BA39CFF7ABAB5FFA1C9C6FF50A7A0FF228A79FFEFE5DFFFF8F4F1FFF4F3
          F1FFF4F4F0FFF5F4F1FFF8F3F3FFF8F4F4FFF8F4F5FFF9F5F5FFFAF6F7FFFCFB
          F7FFDAD8D3FF0F0E0EFFC5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0E36
          30FF199E8CFF50AFA0FFE4F3F0FF9AD1C9FF46A697FFBDDDDAFF74BEB3FFACD6
          D0FF8BC9C0FFBEE3DEFF58B0A2FF2D9C8FFF3BA190FFEFE8E1FFFCF7F5FFF5F3
          EFFFE9E6DFFFE2DFD8FFDFD9D1FFD8D3CBFFD4CEC6FFCFC9C0FFCBC4BDFFC7C2
          B5FFB3AFA0FF0A0807FFC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFF000000FF103B
          33FF3FBDA9FF5DBAABFFF0FAFAFF9DD4CCFF58B9A9FFF0F8F7FFDEEFECFFF1F9
          F8FF97D3CAFFC2E5E1FF51B7A7FF3AB19DFF4CB1A1FFEFE9E6FFFCF9F9FFF4F3
          F1FFE1DED8FFE9E6E1FFE5E1D9FFDFDBD3FFDBD5CBFFD8CFC5FFD3CAC1FFE8DF
          D1FF797369FF000000FFD1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFF000000FF103E
          36FF70DBC9FFDAF0EEFFBCE5DEFFD4EFEAFFB2E3DAFFE6F6F3FF99D8CDFFDCF1
          EDFFC1E7E1FFD0EFEAFFA0DCD1FF86D5C8FF5CBFAFFFEDEAE6FFFFFDFDFFF6F6
          F3FFDDDAD5FFF1EEE9FFF0EEEAFFEDECE8FFECE9E3FFECE6DFFFFFFFF6FF9A96
          91FF000000FF8D8E8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF194A
          41FF83FFEBFF9EF9E9FF95F3E2FF8BE7D9FF8CE7DAFF86E2D5FF88E5D8FF87E0
          D4FF89E2D5FF88E1D4FF8AE3D6FF7AE1D1FF58CBB8FFF1ECE8FFFFFFFFFFF7F7
          F5FFDBD5CBFFECE9E1FFF1F1EDFFF0F0ECFFF1EFEAFFFFFFFFFF9F9D98FF0000
          00FF8C8C8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0014
          0FFF0A584AFF075046FF1A6359FF5DA596FF6EB6A4FF73BBABFF77BEADFF7AC2
          B1FF80C7B7FF85CCBDFF87D1C2FF8AD5C6FFA2DED1FFF4EEEAFFFFFFFFFFF6F7
          F5FFD6CFC3FFE8E5DCFFF3F3EFFFF6F6F1FFFFFFFFFFA09F9EFF000000FF8C8C
          8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5D5CFF5B57
          58FF5B5052FF42393AFF0B0102FFD1C0BDFFF7E6DFFFFAE9E4FFFBE9E3FFFEEC
          E7FFFFEDEBFFFFF0EFFFFFF2F0FFFFF5F4FFFFF8F6FFFCF9F6FFFFFFFFFFF6F5
          F3FFCEC7BAFFE4E0D8FFF9F9F6FFFFFFFFFFA1A1A1FF000000FF8B8C8CFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCFCFCFFF0E0F0FFFDDDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F5
          F2FFC9C1B3FFE2DDD4FFFFFFFFFFA3A3A4FF000000FF8C8C8CFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC5C5C5FF0E0E0EFFDCDCDCFFFEFEFEFFFCFCFCFFFCFCFCFFFCFC
          FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFDFDFDFFF1F0
          EDFFC2B9AAFFF8F3EAFF9FA0A0FF000000FF8B8B8BFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC4C4C4FF0F0F0FFFEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF9
          F6FFCCC5B7FF928D85FF000000FF8B8C8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC8C8C8FF040404FF4C4C4CFF585858FF565656FF565656FF5656
          56FF565656FF565656FF565656FF565656FF565656FF565656FF575757FF5654
          55FF3C3B37FF0A0A09FF949494FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCACACAFF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF67686AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end>
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'xls'
    OptionsEx = [ofExNoPlacesBar]
    Left = 608
    Top = 16
  end
end
