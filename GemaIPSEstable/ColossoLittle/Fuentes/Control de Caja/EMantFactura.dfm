object FEditFactura: TFEditFactura
  Left = 406
  Top = 188
  BorderStyle = bsDialog
  Caption = 'Mantenimiento de Recibos de Caja.'
  ClientHeight = 400
  ClientWidth = 647
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
    Width = 647
    Height = 105
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 48
      Width = 71
      Height = 13
      Caption = 'Ingreso No.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 80
      Width = 44
      Height = 13
      Caption = 'Estado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 86
      Top = 80
      Width = 65
      Height = 17
      DataField = 'Estado'
      DataSource = DataSource1
    end
    object Label16: TLabel
      Left = 8
      Top = 16
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
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 86
      Top = 45
      Width = 299
      Height = 21
      KeyField = 'Numero_Ingreso'
      ListField = 'Numero_Ingreso;Nombre_Pagador;Fecha'
      ListSource = DataSource1
      TabOrder = 1
    end
    object DBLookupComboBox8: TDBLookupComboBox
      Left = 86
      Top = 13
      Width = 297
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 105
    Width = 647
    Height = 295
    Align = alClient
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 480
      Top = 256
      Width = 161
      Height = 33
      Caption = 'Anulaci'#243'n del Ingreso'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object DBText2: TDBText
      Left = 112
      Top = 8
      Width = 65
      Height = 17
      DataField = 'Fecha'
      DataSource = DataSource1
    end
    object Label3: TLabel
      Left = 8
      Top = 8
      Width = 40
      Height = 13
      Caption = 'Fecha:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 8
      Top = 28
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
    object DBText8: TDBText
      Left = 112
      Top = 28
      Width = 65
      Height = 17
      DataField = 'Doc_Pagador'
      DataSource = DataSource1
    end
    object Label4: TLabel
      Left = 8
      Top = 172
      Width = 43
      Height = 13
      Caption = 'Motivo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 48
      Width = 633
      Height = 121
      Color = cl3DLight
      DataSource = DataSource2
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object Memo1: TMemo
      Left = 8
      Top = 192
      Width = 633
      Height = 57
      ScrollBars = ssVertical
      TabOrder = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    OnDataChange = DataSource1DataChange
    Left = 448
    Top = 8
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery4
    Left = 384
    Top = 8
  end
  object ADOQuery4: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM CADocumentos')
    Left = 413
    Top = 8
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 520
    Top = 8
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'doc'
        Size = -1
        Value = Null
      end
      item
        Name = 'tp'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM CADetFacturas'
      'WHERE Documento = :doc AND'
      '              Numero_Ingreso = :tp')
    Left = 552
    Top = 8
  end
  object ADOTable1: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM CAIngresos'
      
        'WHERE (Numero_Comprobante_Contable IS NULL or Numero_Comprobante' +
        '_Contable =0) AND'
      '       (estado <> '#39'A'#39' OR estado IS Null) '
      'ORDER BY Documento,Numero_Ingreso')
    Left = 480
    Top = 8
  end
end
