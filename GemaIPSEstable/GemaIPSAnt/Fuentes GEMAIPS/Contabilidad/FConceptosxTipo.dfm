object FConcexTipo: TFConcexTipo
  Left = 393
  Top = 215
  BorderStyle = bsSingle
  Caption = 'Conceptos x Tipos de Terceros'
  ClientHeight = 505
  ClientWidth = 829
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
  object GroupBox7: TGroupBox
    Left = 0
    Top = 169
    Width = 829
    Height = 336
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -10
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 825
      Height = 319
      Align = alClient
      DataSource = DataSource2
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -10
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
    end
  end
  object GroupBox10: TGroupBox
    Left = 0
    Top = 0
    Width = 829
    Height = 169
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Shape1: TShape
      Left = 4
      Top = 50
      Width = 808
      Height = 55
      Brush.Color = clMenuBar
    end
    object Label27: TLabel
      Left = 24
      Top = 60
      Width = 59
      Height = 13
      Caption = 'Concepto:'
    end
    object Label30: TLabel
      Left = 88
      Top = 84
      Width = 99
      Height = 13
      Caption = 'Cuenta Contable:'
    end
    object Label31: TLabel
      Left = 600
      Top = 84
      Width = 66
      Height = 13
      Caption = 'Porcentaje:'
    end
    object Label32: TLabel
      Left = 392
      Top = 84
      Width = 30
      Height = 13
      Caption = 'Tipo:'
    end
    object Label1: TLabel
      Left = 8
      Top = 21
      Width = 78
      Height = 13
      Caption = 'Tipo Tercero:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object MaskEditValor: TMaskEdit
      Left = 672
      Top = 80
      Width = 127
      Height = 21
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 2
      Text = '0'
    end
    object DBLookupComboBox8: TDBLookupComboBox
      Left = 88
      Top = 56
      Width = 137
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'Concepto'
      ListField = 'Concepto'
      ListSource = DataSource10
      ParentFont = False
      TabOrder = 0
    end
    object DBLookupComboBox14: TDBLookupComboBox
      Left = 225
      Top = 56
      Width = 576
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'Concepto'
      ListField = 'Descripcion'
      ListSource = DataSource10
      ParentFont = False
      TabOrder = 1
    end
    object DBLookupComboBox15: TDBLookupComboBox
      Left = 225
      Top = 80
      Width = 160
      Height = 21
      Color = cl3DLight
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'Concepto'
      ListField = 'Cuenta'
      ListSource = DataSource10
      ParentFont = False
      TabOrder = 3
    end
    object DBLookupComboBox16: TDBLookupComboBox
      Left = 433
      Top = 80
      Width = 160
      Height = 21
      Color = cl3DLight
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'Concepto'
      ListField = 'Tipo'
      ListSource = DataSource10
      ParentFont = False
      TabOrder = 4
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 88
      Top = 19
      Width = 137
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'Tipo_Tercero'
      ListField = 'Tipo_Tercero'
      ListSource = DataSource1
      ParentFont = False
      TabOrder = 5
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 225
      Top = 19
      Width = 576
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'Tipo_Tercero'
      ListField = 'Descripcion'
      ListSource = DataSource1
      ParentFont = False
      TabOrder = 6
    end
    object BitBtn1: TBitBtn
      Left = 5
      Top = 109
      Width = 185
      Height = 53
      Caption = 'Grabar'
      TabOrder = 7
      OnClick = BitBtn1Click
    end
    object DBNavigator1: TDBNavigator
      Left = 200
      Top = 112
      Width = 228
      Height = 49
      DataSource = DataSource2
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbRefresh]
      TabOrder = 8
    end
  end
  object DataSource10: TDataSource
    DataSet = ADOQueryConceptos
    OnDataChange = DataSource10DataChange
    Left = 752
    Top = 48
  end
  object ADOQueryConceptos: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM CAConceptos'
      'ORDER BY Concepto')
    Left = 781
    Top = 48
  end
  object DataSource1: TDataSource
    DataSet = ADOQueryTiposT
    OnDataChange = DataSource1DataChange
    Left = 752
    Top = 16
  end
  object ADOQueryTiposT: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM CONTTiTerc'
      'ORDER BY Descripcion')
    Left = 781
    Top = 16
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 760
    Top = 128
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM CONTConceptosxTipo'
      '')
    Left = 789
    Top = 128
  end
end
