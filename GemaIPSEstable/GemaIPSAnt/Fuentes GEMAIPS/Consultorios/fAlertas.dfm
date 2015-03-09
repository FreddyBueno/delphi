object frmAlertas: TfrmAlertas
  Left = 0
  Top = 0
  Caption = 'Alertas'
  ClientHeight = 395
  ClientWidth = 981
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 981
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    Visible = False
    ExplicitLeft = -416
    ExplicitTop = 224
  end
  object grdGrid: TcxGrid
    Left = 0
    Top = 41
    Width = 981
    Height = 354
    Align = alClient
    TabOrder = 1
    ExplicitLeft = -88
    ExplicitTop = 25
    object tvAlerta: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Insert.Visible = False
      Navigator.Visible = True
      DataController.DataSource = dsAlertas
      DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = 'Alertas: 0'
          Kind = skCount
          FieldName = 'ID'
          Column = tvAlertaMensaje
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'Alertas: 0'
          Kind = skCount
          FieldName = 'ID'
          Column = tvAlertaMensaje
        end>
      DataController.Summary.SummaryGroups = <>
      DataController.Summary.Options = [soSelectedRecords]
      FilterRow.Visible = True
      NewItemRow.SeparatorColor = clRed
      NewItemRow.Visible = True
      OptionsBehavior.CellHints = True
      OptionsCustomize.ColumnHiding = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsCustomize.BandsQuickCustomization = True
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.CellMultiSelect = True
      OptionsView.CellEndEllipsis = True
      OptionsView.ShowEditButtons = gsebForFocusedRecord
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.HeaderAutoHeight = True
      OptionsView.HeaderEndEllipsis = True
      OptionsView.Indicator = True
      OptionsView.BandHeaderEndEllipsis = True
      Preview.Column = tvAlertaPreview
      Preview.Visible = True
      Styles.StyleSheet = GridBandedTableViewStyleSheetSlate
      Bands = <
        item
          Caption = 'General'
          Options.HoldOwnColumnsOnly = True
          Options.Moving = False
        end
        item
          Caption = 'Aplicaci'#243'n'
          Options.HoldOwnColumnsOnly = True
          Options.Moving = False
        end
        item
          Caption = 'Edad'
          Options.HoldOwnColumnsOnly = True
          Position.BandIndex = 1
          Position.ColIndex = 0
        end
        item
          Options.HoldOwnColumnsOnly = True
          Position.BandIndex = 1
          Position.ColIndex = 1
        end>
      object tvAlertaID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Options.Editing = False
        Options.Moving = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvAlertaAlerta: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Alerta'
        MinWidth = 100
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvAlertaMensaje: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Mensaje'
        RepositoryItem = rpItmMemo
        MinWidth = 200
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tvAlertaSexo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Sexo'
        RepositoryItem = rpItmSexo
        MinWidth = 50
        Width = 100
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvAlertaEdad_Min: TcxGridDBBandedColumn
        AlternateCaption = '<'
        Caption = 'Min'
        DataBinding.FieldName = 'Edad_Min'
        RepositoryItem = rpitmEdad
        MinWidth = 80
        Options.Moving = False
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvAlertaEdad_Max: TcxGridDBBandedColumn
        AlternateCaption = '<<<<<<<<'
        Caption = 'Max'
        DataBinding.FieldName = 'Edad_Max'
        RepositoryItem = rpitmEdad
        MinWidth = 80
        Options.Moving = False
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvAlertaPreview: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Mensaje'
        RepositoryItem = rpItmDiag
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tvAlertaCod_Diagnostico: TcxGridDBBandedColumn
        Caption = 'Diagn'#243'stico'
        DataBinding.FieldName = 'Cod_Diagnostico'
        RepositoryItem = rpItmDiag
        MinWidth = 200
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object lvAlerta: TcxGridLevel
      GridView = tvAlerta
    end
  end
  object tblDiagnosticos: TADOTable
    Connection = DataModule1.ADOComunes
    CursorType = ctStatic
    TableName = 'GEDiagnosticos'
    Left = 448
    Top = 16
    object tblDiagnosticosCOD_DIAGNOSTICO: TStringField
      FieldName = 'COD_DIAGNOSTICO'
      Size = 10
    end
    object tblDiagnosticosNOM_DIAGNSOTICO: TStringField
      FieldName = 'NOM_DIAGNSOTICO'
      Size = 255
    end
  end
  object tblAlertas: TADOTable
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    TableName = 'SAAlertas'
    Left = 336
    Top = 16
    object tblAlertasID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object tblAlertasSexo: TStringField
      FieldName = 'Sexo'
      FixedChar = True
      Size = 1
    end
    object tblAlertasEdad_Min: TIntegerField
      FieldName = 'Edad_Min'
    end
    object tblAlertasEdad_Max: TIntegerField
      FieldName = 'Edad_Max'
    end
    object tblAlertasAlerta: TStringField
      FieldName = 'Alerta'
      Size = 50
    end
    object tblAlertasMensaje: TStringField
      FieldName = 'Mensaje'
      Size = 200
    end
    object tblAlertasCod_Diagnostico: TStringField
      FieldName = 'Cod_Diagnostico'
      Size = 10
    end
  end
  object dsAlertas: TDataSource
    DataSet = tblAlertas
    Left = 384
    Top = 16
  end
  object dsDiag: TDataSource
    AutoEdit = False
    DataSet = tblDiagnosticos
    Left = 488
    Top = 16
  end
  object tblSexo: TADOTable
    Connection = DataModule1.ADOComunes
    CursorType = ctStatic
    TableName = 'GESexo'
    Left = 544
    Top = 16
    object tblSexoTIP_SEXO: TStringField
      FieldName = 'TIP_SEXO'
      Size = 1
    end
    object tblSexoNOM_SEXO: TStringField
      FieldName = 'NOM_SEXO'
      Size = 50
    end
    object tblSexoEstado: TStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 1
    end
  end
  object dsSexo: TDataSource
    AutoEdit = False
    DataSet = tblSexo
    Left = 592
    Top = 16
  end
  object cxEditRepository1: TcxEditRepository
    Left = 32
    object rpItmSexo: TcxEditRepositoryLookupComboBoxItem
      Properties.KeyFieldNames = 'TIP_SEXO'
      Properties.ListColumns = <
        item
          FieldName = 'NOM_SEXO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsSexo
    end
    object rpItmDiag: TcxEditRepositoryLookupComboBoxItem
      Properties.KeyFieldNames = 'COD_DIAGNOSTICO'
      Properties.ListColumns = <
        item
          FieldName = 'NOM_DIAGNSOTICO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsDiag
    end
    object rpitmEdad: TcxEditRepositorySpinItem
      Properties.ClearKey = 16451
      Properties.MinValue = -1.000000000000000000
      Properties.SpinButtons.ShowFastButtons = True
      Properties.UseCtrlIncrement = True
      Properties.UseDisplayFormatWhenEditing = True
    end
    object rpItmMemo: TcxEditRepositoryBlobItem
      Properties.BlobEditKind = bekMemo
      Properties.BlobPaintStyle = bpsText
      Properties.MemoScrollBars = ssBoth
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 104
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13154717
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 13154717
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14933198
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13154717
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9928789
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4276545
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13154717
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9928789
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13154717
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 9928789
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9928789
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object GridBandedTableViewStyleSheetSlate: TcxGridBandedTableViewStyleSheet
      Caption = 'Slate'
      Styles.Content = cxStyle2
      Styles.ContentEven = cxStyle3
      Styles.ContentOdd = cxStyle4
      Styles.Inactive = cxStyle9
      Styles.Selection = cxStyle12
      Styles.Footer = cxStyle5
      Styles.Group = cxStyle6
      Styles.GroupByBox = cxStyle7
      Styles.Header = cxStyle8
      Styles.Indicator = cxStyle10
      Styles.Preview = cxStyle11
      Styles.BandHeader = cxStyle1
      BuiltIn = True
    end
  end
end
