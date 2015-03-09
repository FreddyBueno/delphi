object ParametrosCaja: TParametrosCaja
  Left = 296
  Top = 191
  BorderStyle = bsSingle
  Caption = 'Par'#225'metros'
  ClientHeight = 227
  ClientWidth = 793
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
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 33
    Width = 793
    Height = 194
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
      object Label9: TLabel
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
      object Label4: TLabel
        Left = 11
        Top = 41
        Width = 153
        Height = 13
        Caption = 'Tipo de Tercero para Pacientes:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBComboBox3: TDBComboBox
        Left = 192
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
      object Memo1: TMemo
        Left = 8
        Top = 112
        Width = 761
        Height = 49
        Lines.Strings = (
          
            'El sistema graba automaticamente un comprobante contable si esta' +
            ' activo por esta opci'#243'n y adicionalmente estan diligenciados los' +
            ' '
          
            'campos del Tipo de Comprobante y las Cuentas. Es importante tene' +
            'r encuenta que la afectaci'#243'n contable automatica graba el '
          'Tercero y el Centro de Costo automaticamente.')
        TabOrder = 1
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 192
        Top = 36
        Width = 425
        Height = 21
        DataField = 'Tipo_Tercero_Particular'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'Tipo_Tercero'
        ListField = 'Descripcion'
        ListSource = DataSource5
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 793
    Height = 33
    Align = alTop
    TabOrder = 1
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 572
    Top = 17
  end
  object ADOTable1: TADOTable
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    TableName = 'CAParametros'
    Left = 604
    Top = 17
  end
  object DataSource5: TDataSource
    DataSet = ADOTable4
    Left = 640
    Top = 80
  end
  object ADOTable4: TADOTable
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Filter = 'Modulo = '#39'2'#39
    Filtered = True
    TableName = 'CONTTiTerc'
    Left = 672
    Top = 80
  end
end
