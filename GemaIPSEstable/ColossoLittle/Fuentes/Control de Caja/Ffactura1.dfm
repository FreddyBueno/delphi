object FImpReciboCaja: TFImpReciboCaja
  Left = 555
  Top = 291
  BorderStyle = bsSingle
  Caption = 'Impresi'#243'n del Ingreso'
  ClientHeight = 212
  ClientWidth = 499
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 499
    Height = 212
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 63
      Width = 90
      Height = 13
      Caption = 'Recibo de Ingreso:'
    end
    object Label2: TLabel
      Left = 16
      Top = 91
      Width = 80
      Height = 13
      Caption = 'Tipo de Formato:'
    end
    object Label16: TLabel
      Left = 16
      Top = 35
      Width = 69
      Height = 13
      Caption = 'Documento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 328
      Top = 120
      Width = 33
      Height = 13
      Caption = 'Filtro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 117
      Top = 57
      Width = 353
      Height = 21
      KeyField = 'Numero_Ingreso'
      ListField = 'Numero_Ingreso'
      ListSource = DataSource1
      TabOrder = 1
    end
    object Button1: TButton
      Left = 248
      Top = 160
      Width = 233
      Height = 41
      Caption = 'Reimprimir Recibo de Ingreso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
    object ComboBox1: TComboBox
      Left = 117
      Top = 85
      Width = 353
      Height = 21
      TabOrder = 2
      Text = '1-Formato con Facturas'
      Items.Strings = (
        '1-Formato con Facturas'
        '2-Formato sin Facuras')
    end
    object DBLookupComboBox8: TDBLookupComboBox
      Left = 117
      Top = 29
      Width = 353
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'Tipo_Documento'
      ListField = 'Descripcion'
      ListSource = DataSource3
      ParentFont = False
      TabOrder = 0
      OnExit = DBLookupComboBox8Exit
    end
    object Edit1: TEdit
      Left = 369
      Top = 115
      Width = 97
      Height = 21
      TabOrder = 4
      OnChange = Edit1Change
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 160
    Top = 120
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM CAIngresos')
    Left = 216
    Top = 120
  end
  object ADOTable1: TADOTable
    Connection = DataModule1.ADOConnection1
    TableName = 'INConsecFacturas'
    Left = 521
    Top = 1
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery4
    Left = 24
    Top = 120
  end
  object ADOQuery4: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM CADocumentos')
    Left = 93
    Top = 120
  end
end
