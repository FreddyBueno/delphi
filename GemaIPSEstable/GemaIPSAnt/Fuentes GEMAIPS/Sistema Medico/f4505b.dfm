object frm4505: Tfrm4505
  Left = 0
  Top = 0
  Caption = 'Resoluci'#243'n 4505'
  ClientHeight = 432
  ClientWidth = 603
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object grd4505: TcxGrid
    Left = 0
    Top = 41
    Width = 603
    Height = 391
    Align = alClient
    TabOrder = 0
    RootLevelOptions.DetailTabsPosition = dtpTop
    object tvReg1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      DataController.DataSource = dsReg1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      OptionsBehavior.IncSearch = True
      OptionsBehavior.NavigatorHints = True
      OptionsCustomize.ColumnHiding = True
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsCustomize.DataRowSizing = True
      OptionsCustomize.GroupRowSizing = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.CellMultiSelect = True
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = '<No hay datos para mostrar>'
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.FooterAutoHeight = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupByHeaderLayout = ghlHorizontal
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
      OptionsView.HeaderEndEllipsis = True
      OptionsView.ShowColumnFilterButtons = sfbAlways
      object tvReg1E1: TcxGridDBColumn
        DataBinding.FieldName = 'E1'
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Moving = False
        Options.Sorting = False
        VisibleForCustomization = False
      end
      object tvReg1E2: TcxGridDBColumn
        DataBinding.FieldName = 'E2'
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Moving = False
        Options.Sorting = False
        VisibleForCustomization = False
      end
      object tvReg1E3: TcxGridDBColumn
        DataBinding.FieldName = 'E3'
        RepositoryItem = rpitmFecha
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Moving = False
        Options.Sorting = False
        VisibleForCustomization = False
      end
      object tvReg1E4: TcxGridDBColumn
        DataBinding.FieldName = 'E4'
        RepositoryItem = rpitmFecha
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Moving = False
        Options.Sorting = False
        VisibleForCustomization = False
      end
      object tvReg1E5: TcxGridDBColumn
        DataBinding.FieldName = 'E5'
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Moving = False
        Options.Sorting = False
        VisibleForCustomization = False
      end
    end
    object tvReg2: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = dsreg2
      DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'Registros: 0'
          Kind = skCount
          Column = tvReg2C4
        end>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      OptionsBehavior.IncSearch = True
      OptionsBehavior.NavigatorHints = True
      OptionsBehavior.EditAutoHeight = eahRow
      OptionsCustomize.ColumnHiding = True
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsCustomize.DataRowSizing = True
      OptionsCustomize.GroupRowSizing = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.CellMultiSelect = True
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = '<No hay datos para mostrar>'
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.FooterAutoHeight = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByHeaderLayout = ghlHorizontal
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
      OptionsView.HeaderEndEllipsis = True
      OptionsView.Indicator = True
      OptionsView.ShowColumnFilterButtons = sfbAlways
      object tvReg2C0: TcxGridDBColumn
        DataBinding.FieldName = 'C0'
      end
      object tvReg2C1: TcxGridDBColumn
        DataBinding.FieldName = 'C1'
      end
      object tvReg2C2: TcxGridDBColumn
        DataBinding.FieldName = 'C2'
      end
      object tvReg2C3: TcxGridDBColumn
        DataBinding.FieldName = 'C3'
      end
      object tvReg2C4: TcxGridDBColumn
        DataBinding.FieldName = 'C4'
      end
      object tvReg2C5: TcxGridDBColumn
        DataBinding.FieldName = 'C5'
      end
      object tvReg2C6: TcxGridDBColumn
        DataBinding.FieldName = 'C6'
      end
      object tvReg2C7: TcxGridDBColumn
        DataBinding.FieldName = 'C7'
      end
      object tvReg2C8: TcxGridDBColumn
        DataBinding.FieldName = 'C8'
      end
      object tvReg2C9: TcxGridDBColumn
        DataBinding.FieldName = 'C9'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C10: TcxGridDBColumn
        DataBinding.FieldName = 'C10'
      end
      object tvReg2C11: TcxGridDBColumn
        DataBinding.FieldName = 'C11'
      end
      object tvReg2C12: TcxGridDBColumn
        DataBinding.FieldName = 'C12'
      end
      object tvReg2C13: TcxGridDBColumn
        DataBinding.FieldName = 'C13'
      end
      object tvReg2C14: TcxGridDBColumn
        DataBinding.FieldName = 'C14'
      end
      object tvReg2C15: TcxGridDBColumn
        DataBinding.FieldName = 'C15'
      end
      object tvReg2C16: TcxGridDBColumn
        DataBinding.FieldName = 'C16'
      end
      object tvReg2C17: TcxGridDBColumn
        DataBinding.FieldName = 'C17'
      end
      object tvReg2C18: TcxGridDBColumn
        DataBinding.FieldName = 'C18'
      end
      object tvReg2C19: TcxGridDBColumn
        DataBinding.FieldName = 'C19'
      end
      object tvReg2C20: TcxGridDBColumn
        DataBinding.FieldName = 'C20'
      end
      object tvReg2C21: TcxGridDBColumn
        DataBinding.FieldName = 'C21'
      end
      object tvReg2C22: TcxGridDBColumn
        DataBinding.FieldName = 'C22'
      end
      object tvReg2C23: TcxGridDBColumn
        DataBinding.FieldName = 'C23'
      end
      object tvReg2C24: TcxGridDBColumn
        DataBinding.FieldName = 'C24'
      end
      object tvReg2C25: TcxGridDBColumn
        DataBinding.FieldName = 'C25'
      end
      object tvReg2C26: TcxGridDBColumn
        DataBinding.FieldName = 'C26'
      end
      object tvReg2C27: TcxGridDBColumn
        DataBinding.FieldName = 'C27'
      end
      object tvReg2C28: TcxGridDBColumn
        DataBinding.FieldName = 'C28'
      end
      object tvReg2C29: TcxGridDBColumn
        DataBinding.FieldName = 'C29'
      end
      object tvReg2C30: TcxGridDBColumn
        DataBinding.FieldName = 'C30'
      end
      object tvReg2C31: TcxGridDBColumn
        DataBinding.FieldName = 'C31'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C32: TcxGridDBColumn
        DataBinding.FieldName = 'C32'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C33: TcxGridDBColumn
        DataBinding.FieldName = 'C33'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C34: TcxGridDBColumn
        DataBinding.FieldName = 'C34'
      end
      object tvReg2C35: TcxGridDBColumn
        DataBinding.FieldName = 'C35'
      end
      object tvReg2C36: TcxGridDBColumn
        DataBinding.FieldName = 'C36'
      end
      object tvReg2C37: TcxGridDBColumn
        DataBinding.FieldName = 'C37'
      end
      object tvReg2C38: TcxGridDBColumn
        DataBinding.FieldName = 'C38'
      end
      object tvReg2C39: TcxGridDBColumn
        DataBinding.FieldName = 'C39'
      end
      object tvReg2C40: TcxGridDBColumn
        DataBinding.FieldName = 'C40'
      end
      object tvReg2C41: TcxGridDBColumn
        DataBinding.FieldName = 'C41'
      end
      object tvReg2C42: TcxGridDBColumn
        DataBinding.FieldName = 'C42'
      end
      object tvReg2C43: TcxGridDBColumn
        DataBinding.FieldName = 'C43'
      end
      object tvReg2C44: TcxGridDBColumn
        DataBinding.FieldName = 'C44'
      end
      object tvReg2C45: TcxGridDBColumn
        DataBinding.FieldName = 'C45'
      end
      object tvReg2C46: TcxGridDBColumn
        DataBinding.FieldName = 'C46'
      end
      object tvReg2C47: TcxGridDBColumn
        DataBinding.FieldName = 'C47'
      end
      object tvReg2C48: TcxGridDBColumn
        DataBinding.FieldName = 'C48'
      end
      object tvReg2C49: TcxGridDBColumn
        DataBinding.FieldName = 'C49'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C50: TcxGridDBColumn
        DataBinding.FieldName = 'C50'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C51: TcxGridDBColumn
        DataBinding.FieldName = 'C51'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C52: TcxGridDBColumn
        DataBinding.FieldName = 'C52'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C53: TcxGridDBColumn
        DataBinding.FieldName = 'C53'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C54: TcxGridDBColumn
        DataBinding.FieldName = 'C54'
      end
      object tvReg2C55: TcxGridDBColumn
        DataBinding.FieldName = 'C55'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C56: TcxGridDBColumn
        DataBinding.FieldName = 'C56'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C57: TcxGridDBColumn
        DataBinding.FieldName = 'C57'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C58: TcxGridDBColumn
        DataBinding.FieldName = 'C58'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C59: TcxGridDBColumn
        DataBinding.FieldName = 'C59'
      end
      object tvReg2C60: TcxGridDBColumn
        DataBinding.FieldName = 'C60'
      end
      object tvReg2C61: TcxGridDBColumn
        DataBinding.FieldName = 'C61'
      end
      object tvReg2C62: TcxGridDBColumn
        DataBinding.FieldName = 'C62'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C63: TcxGridDBColumn
        DataBinding.FieldName = 'C63'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C64: TcxGridDBColumn
        DataBinding.FieldName = 'C64'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C65: TcxGridDBColumn
        DataBinding.FieldName = 'C65'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C66: TcxGridDBColumn
        DataBinding.FieldName = 'C66'
      end
      object tvReg2C67: TcxGridDBColumn
        DataBinding.FieldName = 'C67'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C68: TcxGridDBColumn
        DataBinding.FieldName = 'C68'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C69: TcxGridDBColumn
        DataBinding.FieldName = 'C69'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C70: TcxGridDBColumn
        DataBinding.FieldName = 'C70'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C71: TcxGridDBColumn
        DataBinding.FieldName = 'C71'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C72: TcxGridDBColumn
        DataBinding.FieldName = 'C72'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C74: TcxGridDBColumn
        DataBinding.FieldName = 'C74'
      end
      object tvReg2C75: TcxGridDBColumn
        DataBinding.FieldName = 'C75'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C76: TcxGridDBColumn
        DataBinding.FieldName = 'C76'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C77: TcxGridDBColumn
        DataBinding.FieldName = 'C77'
      end
      object tvReg2C78: TcxGridDBColumn
        DataBinding.FieldName = 'C78'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C79: TcxGridDBColumn
        DataBinding.FieldName = 'C79'
      end
      object tvReg2C80: TcxGridDBColumn
        DataBinding.FieldName = 'C80'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C81: TcxGridDBColumn
        DataBinding.FieldName = 'C81'
      end
      object tvReg2C82: TcxGridDBColumn
        DataBinding.FieldName = 'C82'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C83: TcxGridDBColumn
        DataBinding.FieldName = 'C83'
      end
      object tvReg2C84: TcxGridDBColumn
        DataBinding.FieldName = 'C84'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C85: TcxGridDBColumn
        DataBinding.FieldName = 'C85'
      end
      object tvReg2C86: TcxGridDBColumn
        DataBinding.FieldName = 'C86'
      end
      object tvReg2C87: TcxGridDBColumn
        DataBinding.FieldName = 'C87'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C88: TcxGridDBColumn
        DataBinding.FieldName = 'C88'
      end
      object tvReg2C89: TcxGridDBColumn
        DataBinding.FieldName = 'C89'
      end
      object tvReg2C90: TcxGridDBColumn
        DataBinding.FieldName = 'C90'
      end
      object tvReg2C91: TcxGridDBColumn
        DataBinding.FieldName = 'C91'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C92: TcxGridDBColumn
        DataBinding.FieldName = 'C92'
      end
      object tvReg2C93: TcxGridDBColumn
        DataBinding.FieldName = 'C93'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C94: TcxGridDBColumn
        DataBinding.FieldName = 'C94'
      end
      object tvReg2C95: TcxGridDBColumn
        DataBinding.FieldName = 'C95'
      end
      object tvReg2C96: TcxGridDBColumn
        DataBinding.FieldName = 'C96'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C97: TcxGridDBColumn
        DataBinding.FieldName = 'C97'
      end
      object tvReg2C98: TcxGridDBColumn
        DataBinding.FieldName = 'C98'
      end
      object tvReg2C99: TcxGridDBColumn
        DataBinding.FieldName = 'C99'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C100: TcxGridDBColumn
        DataBinding.FieldName = 'C100'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C101: TcxGridDBColumn
        DataBinding.FieldName = 'C101'
      end
      object tvReg2C102: TcxGridDBColumn
        DataBinding.FieldName = 'C102'
      end
      object tvReg2C103: TcxGridDBColumn
        DataBinding.FieldName = 'C103'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C104: TcxGridDBColumn
        DataBinding.FieldName = 'C104'
      end
      object tvReg2C105: TcxGridDBColumn
        DataBinding.FieldName = 'C105'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C106: TcxGridDBColumn
        DataBinding.FieldName = 'C106'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C107: TcxGridDBColumn
        DataBinding.FieldName = 'C107'
      end
      object tvReg2C108: TcxGridDBColumn
        DataBinding.FieldName = 'C108'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C109: TcxGridDBColumn
        DataBinding.FieldName = 'C109'
      end
      object tvReg2C110: TcxGridDBColumn
        DataBinding.FieldName = 'C110'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C111: TcxGridDBColumn
        DataBinding.FieldName = 'C111'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C112: TcxGridDBColumn
        DataBinding.FieldName = 'C112'
        RepositoryItem = rpitmFecha
      end
      object tvReg2C113: TcxGridDBColumn
        DataBinding.FieldName = 'C113'
      end
      object tvReg2C114: TcxGridDBColumn
        DataBinding.FieldName = 'C114'
      end
      object tvReg2C115: TcxGridDBColumn
        DataBinding.FieldName = 'C115'
      end
      object tvReg2C116: TcxGridDBColumn
        DataBinding.FieldName = 'C116'
      end
      object tvReg2C117: TcxGridDBColumn
        DataBinding.FieldName = 'C117'
      end
      object tvReg2C118: TcxGridDBColumn
        DataBinding.FieldName = 'C118'
        RepositoryItem = rpitmFecha
      end
    end
    object lvTipoReg1: TcxGridLevel
      Caption = 'Registro Tipo 1'
      GridView = tvReg1
      Options.DetailTabsPosition = dtpTop
    end
    object lvTipoReg2: TcxGridLevel
      Caption = 'Registros Tipo 2'
      GridView = tvReg2
      Options.DetailTabsPosition = dtpTop
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 603
    Height = 41
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 1
    object btnExportarXLSX: TcxButton
      Left = 511
      Top = 1
      Width = 91
      Height = 39
      Align = alRight
      Caption = 'Exportar a Excel'
      TabOrder = 0
      OnClick = btnExportarXLSXClick
    end
    object btnExpTXT: TcxButton
      Left = 421
      Top = 1
      Width = 90
      Height = 39
      Align = alRight
      Caption = 'Exportar a texto'
      TabOrder = 1
      OnClick = btnExpTXTClick
    end
    object btnGenerar: TcxButton
      Left = 341
      Top = 1
      Width = 80
      Height = 39
      Align = alRight
      Caption = 'Generar 4505'
      TabOrder = 2
      OnClick = btnGenerarClick
      ExplicitLeft = 345
    end
    object grpbxFechaInicial: TcxGroupBox
      Left = 1
      Top = 1
      Align = alLeft
      Caption = 'Fecha Inicial'
      TabOrder = 3
      ExplicitLeft = 0
      ExplicitTop = -4
      Height = 39
      Width = 112
      object edtFechaInicial: TcxDateEdit
        Left = 3
        Top = 13
        Properties.DateButtons = [btnToday]
        Properties.DateOnError = deToday
        Properties.DisplayFormat = 'yyyy-mm-dd'
        Properties.EditFormat = 'yyyy-mm-dd'
        Properties.SaveTime = False
        Properties.ShowTime = False
        Properties.ValidationOptions = [evoRaiseException, evoShowErrorIcon]
        TabOrder = 0
        OnExit = edtFechaInicialExit
        Width = 106
      end
    end
    object grpbxFechafinal: TcxGroupBox
      Left = 113
      Top = 1
      Align = alLeft
      Caption = 'Fecha Final'
      TabOrder = 4
      ExplicitLeft = 137
      ExplicitTop = 2
      Height = 39
      Width = 112
      object edtFechaFinal: TcxDateEdit
        Left = 3
        Top = 15
        Properties.DateButtons = [btnToday]
        Properties.DisplayFormat = 'yyyy-mm-dd'
        Properties.EditFormat = 'yyyy-mm-dd'
        Properties.SaveTime = False
        Properties.ShowTime = False
        Properties.ValidationOptions = [evoRaiseException, evoShowErrorIcon]
        TabOrder = 0
        OnExit = edtFechaFinalExit
        Width = 106
      end
    end
  end
  object dsReg1: TDataSource
    DataSet = tblReg1
    Left = 288
  end
  object dsreg2: TDataSource
    DataSet = tblReg2
    Left = 368
  end
  object tblReg1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'v_FDEncReporte4505'
    Left = 224
  end
  object tblReg2: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'FDReporte4505'
    Left = 320
  end
  object cxEditRepository1: TcxEditRepository
    Left = 248
    Top = 8
    object rpitmFecha: TcxEditRepositoryDateItem
      Properties.DisplayFormat = 'yyyy-mm-dd'
      Properties.EditFormat = 'yyyy-mm-dd'
      Properties.SaveTime = False
      Properties.ShowTime = False
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 184
    Top = 8
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLNCLI11.1;Persist Security Info=False;User ID=sa;pass' +
      'word=espartaguia;Initial Catalog=GemaIPSPijaos;Data Source=VAIO\' +
      'SQLFRC;Initial File Name="";Server SPN="";'
    LoginPrompt = False
    Provider = 'SQLNCLI11.1'
    Left = 200
  end
  object cmdGen4505: TADOCommand
    CommandText = 'dbo.USP_Genera4505'
    CommandTimeout = 0
    CommandType = cmdStoredProc
    Connection = ADOConnection1
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@FechaInicial'
        Attributes = [paNullable]
        DataType = ftDate
      end
      item
        Name = '@FechaFinal'
        Attributes = [paNullable]
        DataType = ftDate
      end>
    Left = 408
    Top = 65528
  end
end
