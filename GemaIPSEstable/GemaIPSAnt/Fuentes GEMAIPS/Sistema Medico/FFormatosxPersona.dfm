object FormFmtoxPersona: TFormFmtoxPersona
  Left = 2
  Top = 2
  BorderStyle = bsSingle
  Caption = 'Formatos x Persona'
  ClientHeight = 412
  ClientWidth = 879
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
    Width = 879
    Height = 412
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 57
      Width = 360
      Height = 354
      Align = alLeft
      Caption = 'Opciones Estandard'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      ExplicitTop = 97
      ExplicitHeight = 314
      object DBLookupListBox1: TDBLookupListBox
        Left = 2
        Top = 15
        Width = 356
        Height = 329
        Align = alClient
        KeyField = 'Descripcion'
        ListField = 'Descripcion;Codigo'
        ListSource = DataSource4
        TabOrder = 0
        ExplicitHeight = 290
      end
    end
    object Panel2: TPanel
      Left = 361
      Top = 57
      Width = 121
      Height = 354
      Align = alLeft
      TabOrder = 2
      ExplicitTop = 97
      ExplicitHeight = 314
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
      Top = 57
      Width = 396
      Height = 354
      Align = alClient
      Caption = 'Formatos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      ExplicitTop = 97
      ExplicitHeight = 314
      object DBLookupListBox2: TDBLookupListBox
        Left = 2
        Top = 15
        Width = 392
        Height = 329
        Align = alClient
        KeyField = 'Formato'
        ListField = 'Formato'
        ListSource = DataSource5
        TabOrder = 0
        ExplicitHeight = 290
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 877
      Height = 56
      Align = alTop
      TabOrder = 0
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
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 64
        Top = 13
        Width = 785
        Height = 21
        KeyField = 'Id'
        ListField = 'Nom'
        ListSource = DataSource1
        TabOrder = 0
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery2
    OnDataChange = DataSource1DataChange
    Left = 753
    Top = 9
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
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'emp'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = ''
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM FDPersonasxFormato'
      'WHERE  Persona= :emp ')
    Left = 449
    Top = 409
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOComunes
    Parameters = <>
    SQL.Strings = (
      'SELECT *,Primer_Apellido+'#39' '#39'+Nombres as nom'
      'FROM SEPersonas,SEEmpleados'
      'WHERE SEPersonas.id = SEEmpleados.id')
    Left = 825
    Top = 9
  end
  object ADOQuery5: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'emp'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM FDFormatos'
      'WHERE Codigo NOT IN (SELECT formato '
      
        '                                          FROM FDPersonasxFormat' +
        'o'
      '                WHERE Persona = :emp)')
    Left = 369
    Top = 105
  end
end
