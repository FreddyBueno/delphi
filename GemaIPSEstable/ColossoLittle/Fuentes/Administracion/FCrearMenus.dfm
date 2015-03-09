object FormCreaMenus: TFormCreaMenus
  Left = 146
  Top = 171
  BorderStyle = bsSingle
  Caption = 'Crear Menus a Usuarios'
  ClientHeight = 446
  ClientWidth = 862
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
    Width = 862
    Height = 446
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 97
      Width = 360
      Height = 348
      Align = alLeft
      Caption = 'Opciones Estandard'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object DBLookupListBox1: TDBLookupListBox
        Left = 2
        Top = 15
        Width = 356
        Height = 329
        Align = alClient
        KeyField = 'Descripcion'
        ListField = 'Descripcion'
        ListSource = DataSource4
        TabOrder = 0
      end
    end
    object Panel2: TPanel
      Left = 361
      Top = 97
      Width = 121
      Height = 348
      Align = alLeft
      TabOrder = 1
      object SpeedButton1: TSpeedButton
        Left = 32
        Top = 96
        Width = 57
        Height = 25
        Enabled = False
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
        Left = 32
        Top = 128
        Width = 57
        Height = 25
        Enabled = False
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
      object SpeedButton3: TSpeedButton
        Left = 32
        Top = 160
        Width = 57
        Height = 25
        Enabled = False
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333FF3333333333333744333333333333F773333333333337
          44473333333333F777F3333333333744444333333333F7733733333333374444
          4433333333F77333733333333744444447333333F7733337F333333744444444
          433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
          9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
          C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
          CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
          CCC333333333333777FF33333333333333CC3333333333333773}
        NumGlyphs = 2
        OnClick = SpeedButton3Click
      end
      object SpeedButton4: TSpeedButton
        Left = 32
        Top = 192
        Width = 57
        Height = 25
        Enabled = False
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333FF3333333333333003333333333333F77F33333333333009033
          333333333F7737F333333333009990333333333F773337FFFFFF330099999000
          00003F773333377777770099999999999990773FF33333FFFFF7330099999000
          000033773FF33777777733330099903333333333773FF7F33333333333009033
          33333333337737F3333333333333003333333333333377333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        OnClick = SpeedButton4Click
      end
    end
    object GroupBox2: TGroupBox
      Left = 482
      Top = 97
      Width = 379
      Height = 348
      Align = alClient
      Caption = 'Opciones del Cargo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object DBLookupListBox2: TDBLookupListBox
        Left = 2
        Top = 15
        Width = 375
        Height = 329
        Align = alClient
        KeyField = 'Descripcion_Programa'
        ListField = 'Descripcion_Programa'
        ListSource = DataSource5
        TabOrder = 0
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 860
      Height = 96
      Align = alTop
      TabOrder = 3
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 53
        Height = 13
        Caption = 'Empresa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 8
        Top = 40
        Width = 31
        Height = 13
        Caption = 'Area:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 8
        Top = 64
        Width = 38
        Height = 13
        Caption = 'Cargo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 64
        Top = 13
        Width = 785
        Height = 21
        KeyField = 'Codigo'
        ListField = 'Descripcion_Emp'
        ListSource = DataSource1
        TabOrder = 0
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 64
        Top = 37
        Width = 785
        Height = 21
        KeyField = 'Codigo'
        ListField = 'Descripcion_Area'
        ListSource = DataSource2
        TabOrder = 1
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 64
        Top = 61
        Width = 785
        Height = 21
        KeyField = 'Codigo'
        ListField = 'Descripcion_Cargo'
        ListSource = DataSource3
        TabOrder = 2
        OnClick = DBLookupComboBox3Click
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery2
    OnDataChange = DataSource1DataChange
    Left = 801
    Top = 9
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery3
    OnDataChange = DataSource2DataChange
    Left = 801
    Top = 33
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery4
    OnDataChange = DataSource3DataChange
    Left = 801
    Top = 57
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery5
    Left = 401
    Top = 105
  end
  object DataSource5: TDataSource
    DataSet = ADOQuery1
    Left = 417
    Top = 409
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOComunes
    Parameters = <
      item
        Name = 'emp'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = ''
      end
      item
        Name = 'area'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = ''
      end
      item
        Name = 'cargo'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = ''
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM   SEProgramas'
      'WHERE  SEProgramas.Empresa = :emp  AND'
      #9'SEProgramas.Area    = :area  AND'
      #9'SEProgramas.Cargo  = :cargo'
      'ORDER BY SEProgramas.Submenu , SEProgramas.Programa '
      '')
    Left = 449
    Top = 409
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOComunes
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM SEEmpresas')
    Left = 825
    Top = 9
  end
  object ADOQuery3: TADOQuery
    Connection = DataModule1.ADOComunes
    Parameters = <
      item
        Name = 'emp'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 9
        Value = ''
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM SEAreas'
      'WHERE Empresa =:emp')
    Left = 825
    Top = 33
  end
  object ADOQuery4: TADOQuery
    Connection = DataModule1.ADOComunes
    Parameters = <
      item
        Name = 'emp'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 9
        Value = ''
      end
      item
        Name = 'area'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = ''
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM   SECargos'
      'WHERE  SECargos.Empresa = :emp  AND'
      #9'SECargos.Area    = :area  '
      '')
    Left = 825
    Top = 57
  end
  object ADOQuery5: TADOQuery
    Connection = DataModule1.ADOComunes
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM SEProgramasTemp'
      'WHERE submenu <> '#39'0'#39' AND Estado = '#39'A'#39
      'Order BY submenu')
    Left = 369
    Top = 105
  end
end
