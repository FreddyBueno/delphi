object ParametrosInv: TParametrosInv
  Left = 315
  Top = 233
  BorderStyle = bsSingle
  Caption = 'Par'#225'metros'
  ClientHeight = 210
  ClientWidth = 607
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 607
    Height = 210
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Parametrizaci'#243'n Contable'
      object Label6: TLabel
        Left = 13
        Top = 11
        Width = 101
        Height = 13
        Caption = 'Afecta Contabilidad?:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 11
        Top = 49
        Width = 150
        Height = 13
        Caption = 'Tipo de Comprobante Contable:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 13
        Top = 83
        Width = 133
        Height = 13
        Caption = 'Vencimientos Automaticos?:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 13
        Top = 123
        Width = 118
        Height = 13
        Caption = 'Colocar Tercero en Lote:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBComboBox3: TDBComboBox
        Left = 168
        Top = 8
        Width = 73
        Height = 21
        DataField = 'Afecta_Contabilidad'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Si'
          'No')
        ParentFont = False
        TabOrder = 0
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 168
        Top = 44
        Width = 425
        Height = 21
        DataField = 'Tipo_Comp_Contable'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'Tipo_Comprobante'
        ListField = 'Descripcion'
        ListSource = DataSource2
        ParentFont = False
        TabOrder = 1
      end
      object DBComboBox1: TDBComboBox
        Left = 168
        Top = 80
        Width = 73
        Height = 21
        DataField = 'Vencim_Automa'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Si'
          'No')
        ParentFont = False
        TabOrder = 2
      end
      object DBComboBox2: TDBComboBox
        Left = 168
        Top = 120
        Width = 73
        Height = 21
        DataField = 'TerceroComoLote'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Si'
          'No')
        ParentFont = False
        TabOrder = 3
      end
    end
  end
  object ADOTable1: TADOTable
    Connection = DataModule1.ADOConnection1
    TableName = 'INParametros'
    Left = 576
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 544
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 544
    Top = 32
  end
  object ADOTable2: TADOTable
    Connection = DataModule1.ADOConnection1
    TableName = 'CONTTipoComp'
    Left = 576
    Top = 32
  end
end
