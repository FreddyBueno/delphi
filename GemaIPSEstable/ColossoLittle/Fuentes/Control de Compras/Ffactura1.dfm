object ImpresionOrden: TImpresionOrden
  Left = 650
  Top = 161
  BorderStyle = bsSingle
  Caption = 'Impresi'#243'n de las Ordenes de Compra'
  ClientHeight = 207
  ClientWidth = 474
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
    Width = 474
    Height = 207
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 27
      Width = 39
      Height = 13
      Caption = 'Orden:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 64
      Top = 24
      Width = 209
      Height = 21
      KeyField = 'Numero_Orden'
      ListField = 'Numero_Orden'
      ListSource = DataSource1
      TabOrder = 0
    end
    object Button1: TButton
      Left = 232
      Top = 144
      Width = 233
      Height = 49
      Caption = 'Reimprimir Formato de Orden'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 440
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CMENCOrdenes ORDER BY numero_Orden')
    Left = 408
  end
end
