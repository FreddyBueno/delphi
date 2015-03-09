object Form13: TForm13
  Left = 326
  Top = 163
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
        ItemHeight = 13
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
      object Memo1: TMemo
        Left = 8
        Top = 71
        Width = 585
        Height = 105
        Lines.Strings = (
          
            'El sistema graba automaticamente un comprobante contable si esta' +
            ' activo por esta opci'#243'n y '
          
            'adicionalmente estan diligenciados los campos del Tipo de Compro' +
            'bante y las cuentas del Grupo de '
          'Productos.'
          
            'Es importante tener encuenta que la afectaci'#243'n contable automati' +
            'ca graba el Tercero y el Centro de '
          'Costo automaticamente.')
        TabOrder = 2
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
