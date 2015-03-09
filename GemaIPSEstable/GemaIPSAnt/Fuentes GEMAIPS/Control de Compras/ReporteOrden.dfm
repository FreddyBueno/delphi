object ImpresionCompra: TImpresionCompra
  Left = 377
  Top = 190
  BorderStyle = bsSingle
  Caption = 'Impresi'#243'n de las Compras'
  ClientHeight = 201
  ClientWidth = 475
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
    Width = 475
    Height = 201
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 24
    ExplicitTop = 8
    ExplicitWidth = 478
    ExplicitHeight = 207
    object Label1: TLabel
      Left = 10
      Top = 27
      Width = 47
      Height = 13
      Caption = 'Compra:'
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
      KeyField = 'Numero_Compra'
      ListField = 'Numero_Compra'
      ListSource = DataSource1
      TabOrder = 0
    end
    object Button1: TButton
      Left = 232
      Top = 144
      Width = 233
      Height = 49
      Caption = 'Reimprimir Formato de Compra'
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
      'SELECT * FROM INENCCompras ORDER BY numero_compra')
    Left = 472
  end
end
