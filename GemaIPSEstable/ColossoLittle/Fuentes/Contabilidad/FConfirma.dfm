object FrmConfirma: TFrmConfirma
  Left = 285
  Top = 208
  BorderStyle = bsSingle
  Caption = 'Confirmaci'#243'n de Comprobantes'
  ClientHeight = 448
  ClientWidth = 844
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 844
    Height = 448
    Align = alClient
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 408
      Top = 184
      Width = 57
      Height = 25
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333FF3333333333333003333
        3333333333773FF3333333333309003333333333337F773FF333333333099900
        33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
        99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
        33333333337F3F77333333333309003333333333337F77333333333333003333
        3333333333773333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 408
      Top = 216
      Width = 57
      Height = 25
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FF3333333333333447333333333333377FFF33333333333744473333333
        333337773FF3333333333444447333333333373F773FF3333333334444447333
        33333373F3773FF3333333744444447333333337F333773FF333333444444444
        733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
        999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
        33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
        333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
        33333777333333333333CC333333333333337733333333333333}
      NumGlyphs = 2
      OnClick = SpeedButton2Click
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 384
      Height = 446
      Align = alLeft
      Caption = 'Comprobantes sin Confirmar:'
      TabOrder = 0
      object DBLookupListBox1: TDBLookupListBox
        Left = 2
        Top = 15
        Width = 380
        Height = 420
        Align = alClient
        KeyField = 'llave'
        ListField = 'Tipo_Comprobante;Numero_Comprobante;Fecha_Comprobante;Estado'
        ListSource = DataSource1
        TabOrder = 0
        OnDblClick = DBLookupListBox1DblClick
      end
    end
    object GroupBox2: TGroupBox
      Left = 470
      Top = 1
      Width = 373
      Height = 446
      Align = alRight
      Caption = 'Comprobantes Confirmados:'
      TabOrder = 1
      object ListBox1: TListBox
        Left = 2
        Top = 15
        Width = 369
        Height = 429
        Align = alClient
        ItemHeight = 13
        TabOrder = 0
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Tipo_Comprobante+Numero_Comprobante as llave,* '
      'FROM CONTEncComp'
      'WHERE estado = '#39'P'#39)
    Left = 392
    Top = 9
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM CONTEncComp'
      '')
    Left = 456
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 361
    Top = 9
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 488
    Top = 9
  end
  object ADOQuery3: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'Per'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM CONTCierres WHERE Periodo_Proceso = :Per')
    Left = 424
    Top = 72
  end
  object ADOQuery4: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM CONTEncComp'
      '')
    Left = 552
    Top = 8
  end
end
