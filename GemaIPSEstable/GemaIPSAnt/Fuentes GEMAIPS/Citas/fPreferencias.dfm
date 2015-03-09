object frmPreferencias: TfrmPreferencias
  Left = 0
  Top = 0
  Caption = 'Preferencias'
  ClientHeight = 424
  ClientWidth = 763
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object lytctrlPref: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 763
    Height = 424
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 72
    ExplicitTop = 8
    ExplicitWidth = 300
    ExplicitHeight = 250
    object grdPref: TcxGrid
      Left = 24
      Top = 44
      Width = 250
      Height = 200
      TabOrder = 0
      object btvAgenda: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.NoDataToDisplayInfoText = '<No hay datos para mostrar>'
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderEndEllipsis = True
        OptionsView.Indicator = True
        Bands = <
          item
          end>
      end
      object lvAgenda: TcxGridLevel
        GridView = btvAgenda
      end
    end
    object lytctrlPrefGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = -1
    end
    object lytitmAgenda: TdxLayoutItem
      AlignVert = avClient
      CaptionOptions.Text = '&Agenda del Profesional'
      CaptionOptions.Visible = False
      Parent = lytctrlPrefGroup_Root
      Control = grdPref
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object ADTable1: TADTable
    Left = 360
    Top = 8
  end
end
