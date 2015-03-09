object frmAdmisionesActivas: TfrmAdmisionesActivas
  Left = 0
  Top = 0
  Caption = 'Admisiones activas para'
  ClientHeight = 230
  ClientWidth = 806
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lytctrlAdmAct: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 806
    Height = 230
    Align = alClient
    TabOrder = 0
    object Grilla: TcxGrid
      Left = 10
      Top = 55
      Width = 769
      Height = 200
      TabOrder = 1
      object tvAdmsionesActivas: TcxGridDBTableView
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
        FilterBox.Visible = fvNever
        OnCellDblClick = tvAdmsionesActivasCellDblClick
        DataController.DataSource = dsAdmisionesAct
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnAddValueItems = False
        Filtering.ColumnMRUItemsList = False
        OptionsBehavior.IncSearch = True
        OptionsBehavior.NavigatorHints = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.ColumnHorzSizing = False
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.DataRowSizing = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideSelection = True
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<No hay datos para mostrar>'
        OptionsView.CellAutoHeight = True
        OptionsView.FooterAutoHeight = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupByBox = False
        OptionsView.GroupByHeaderLayout = ghlHorizontal
        OptionsView.GroupFooterMultiSummaries = True
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
        OptionsView.HeaderEndEllipsis = True
        OptionsView.Indicator = True
        object tvAdmsionesActivasNumero1: TcxGridDBColumn
          Caption = 'N'#250'mero'
          DataBinding.FieldName = 'Numero'
          MinWidth = 60
        end
        object tvAdmsionesActivasFecha1: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
          PropertiesClassName = 'TcxDateEditProperties'
          MinWidth = 80
        end
        object tvAdmsionesActivasTipo1: TcxGridDBColumn
          DataBinding.FieldName = 'Tipo'
          MinWidth = 100
          Width = 100
        end
        object tvAdmsionesActivasEstado1: TcxGridDBColumn
          DataBinding.FieldName = 'Estado'
        end
        object tvAdmsionesActivasProfesional1: TcxGridDBColumn
          DataBinding.FieldName = 'Profesional'
          MinWidth = 200
        end
        object tvAdmsionesActivasCodDiagnostico1: TcxGridDBColumn
          DataBinding.FieldName = 'CodDiagnostico'
          MinWidth = 50
        end
      end
      object lvAdmisionesActivas: TcxGridLevel
        GridView = tvAdmsionesActivas
      end
    end
    object dblblPaciente: TcxDBLabel
      Left = 10
      Top = 10
      DataBinding.DataField = 'Nombre'
      DataBinding.DataSource = dsAdmisionesAct
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.LabelStyle = cxlsRaised
      Style.HotTrack = False
      Height = 21
      Width = 769
      AnchorX = 395
      AnchorY = 21
    end
    object lytctrlAdmActGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lytitmGrilla: TdxLayoutItem
      AlignHorz = ahClient
      CaptionOptions.Text = 'Haga doble clic sobre el registro de admisi'#243'n a trabajar'
      CaptionOptions.Layout = clTop
      Parent = lytctrlAdmActGroup_Root
      Control = Grilla
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lytitmPaciente: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Visible = False
      Parent = lytctrlAdmActGroup_Root
      Control = dblblPaciente
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object dsAdmisionesAct: TDataSource
    AutoEdit = False
    DataSet = qryAdmisionesAct
    Left = 432
  end
  object qryAdmisionesAct: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CCHistoria'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select * from dbo.AdmisionesActivas (:CCHistoria)')
    Left = 592
    Top = 8
  end
end
