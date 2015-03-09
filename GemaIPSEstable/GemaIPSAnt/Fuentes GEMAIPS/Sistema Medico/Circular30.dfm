object FCirc30: TFCirc30
  Left = 345
  Top = 89
  BorderStyle = bsSingle
  Caption = 'Circular 30 - 19May2006'
  ClientHeight = 610
  ClientWidth = 801
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 801
    Height = 161
    Align = alTop
    TabOrder = 0
    object Label19: TLabel
      Left = 8
      Top = 107
      Width = 39
      Height = 13
      Caption = 'Periodo:'
    end
    object Label20: TLabel
      Left = 232
      Top = 107
      Width = 22
      Height = 13
      Caption = 'A'#241'o:'
    end
    object Label21: TLabel
      Left = 8
      Top = 131
      Width = 21
      Height = 13
      Caption = 'NIT:'
    end
    object Label23: TLabel
      Left = 216
      Top = 131
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label24: TLabel
      Left = 392
      Top = 107
      Width = 33
      Height = 13
      Caption = 'Fecha:'
    end
    object ComboBox1: TComboBox
      Left = 56
      Top = 104
      Width = 113
      Height = 21
      ItemHeight = 13
      TabOrder = 1
    end
    object ComboBox2: TComboBox
      Left = 264
      Top = 104
      Width = 113
      Height = 21
      ItemHeight = 13
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 56
      Top = 128
      Width = 113
      Height = 21
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 176
      Top = 128
      Width = 33
      Height = 21
      TabOrder = 4
    end
    object Edit3: TEdit
      Left = 264
      Top = 128
      Width = 113
      Height = 21
      TabOrder = 5
    end
    object DateTimePicker1: TDateTimePicker
      Left = 440
      Top = 104
      Width = 209
      Height = 20
      Date = 39289.409387476850000000
      Time = 39289.409387476850000000
      TabOrder = 6
    end
    object GroupBox4: TGroupBox
      Left = 8
      Top = 8
      Width = 793
      Height = 89
      Caption = 'Admisi'#243'n:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label25: TLabel
        Left = 8
        Top = 27
        Width = 45
        Height = 13
        Caption = 'Admisi'#243'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 8
        Top = 55
        Width = 45
        Height = 13
        Caption = 'Paciente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 72
        Top = 24
        Width = 113
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'NO_ADMISION'
        ListField = 'NO_ADMISION'
        ListSource = DataSource7
        ParentFont = False
        TabOrder = 0
        OnExit = DBLookupComboBox1Exit
      end
      object DBEdit5: TDBEdit
        Left = 72
        Top = 52
        Width = 25
        Height = 21
        TabStop = False
        DataField = 'TP_IDENT_USUAR'
        DataSource = DataSource7
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit6: TDBEdit
        Left = 99
        Top = 52
        Width = 84
        Height = 21
        TabStop = False
        DataField = 'NR_IDENT_USUAR'
        DataSource = DataSource7
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit7: TDBEdit
        Left = 192
        Top = 52
        Width = 137
        Height = 21
        TabStop = False
        DataField = 'PRIMER_APELLIDO'
        DataSource = DataSource7
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit8: TDBEdit
        Left = 336
        Top = 52
        Width = 137
        Height = 21
        TabStop = False
        DataField = 'SEGUNDO_APELLIDO'
        DataSource = DataSource7
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit9: TDBEdit
        Left = 480
        Top = 52
        Width = 137
        Height = 21
        TabStop = False
        DataField = 'PRIMER_NOMBRE'
        DataSource = DataSource7
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
      object DBEdit10: TDBEdit
        Left = 624
        Top = 52
        Width = 161
        Height = 21
        TabStop = False
        DataField = 'SEGUNDO_NOMBRE'
        DataSource = DataSource7
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
      object DBMemo1: TDBMemo
        Left = 192
        Top = 24
        Width = 593
        Height = 21
        DataField = 'OBSERVACIONES'
        DataSource = DataSource7
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 161
    Width = 801
    Height = 449
    Align = alClient
    TabOrder = 1
    TabStop = True
    object Label1: TLabel
      Left = 8
      Top = 11
      Width = 364
      Height = 13
      Caption = 
        'I.1.1.0 - Oportunidad de la asignaci'#243'n de citas en la consulta m' +
        #233'dica general:'
    end
    object Label2: TLabel
      Left = 8
      Top = 34
      Width = 384
      Height = 13
      Caption = 
        'I.1.2.1 - Oportunidad de la asignaci'#243'n de citas en la consulta d' +
        'e medicina interna:'
    end
    object Label3: TLabel
      Left = 8
      Top = 58
      Width = 381
      Height = 13
      Caption = 
        'I.1.2.2 - Oportunidad de la asignaci'#243'n de citas en la consulta d' +
        'e ginecobstetricia:'
    end
    object Label4: TLabel
      Left = 8
      Top = 81
      Width = 349
      Height = 13
      Caption = 
        'I.1.2.3 -Oportunidad de la asignaci'#243'n de citas  en la consulta d' +
        'e pediatr'#237'a:'
    end
    object Label5: TLabel
      Left = 8
      Top = 105
      Width = 381
      Height = 13
      Caption = 
        'I.1.2.4 - Oportunidad de la asignaci'#243'n de citas en la consulta d' +
        'e cirug'#237'a general :'
    end
    object Label6: TLabel
      Left = 8
      Top = 129
      Width = 274
      Height = 13
      Caption = 'I.1.3.0 -Proporci'#243'n de cancelaci'#243'n de cirugia programada:'
    end
    object Label7: TLabel
      Left = 8
      Top = 152
      Width = 306
      Height = 13
      Caption = 
        'I.1.4.0. - Oportunidad en la atenci'#243'n en la consulta de urgencia' +
        's:'
    end
    object Label8: TLabel
      Left = 8
      Top = 176
      Width = 314
      Height = 13
      Caption = 
        'I.1.5.0 - Oportunidad en la atenci'#243'n en servicios de imagenolog'#237 +
        'a.:'
    end
    object Label9: TLabel
      Left = 8
      Top = 199
      Width = 341
      Height = 13
      Caption = 
        'I.1.6.0 - Oportunidad en la atenci'#243'n en consulta de odontolog'#237'a ' +
        'general:'
    end
    object Label10: TLabel
      Left = 8
      Top = 223
      Width = 287
      Height = 13
      Caption = 'I.1.7.0 - Oportunidad en la realizaci'#243'n de cirugia programada:'
    end
    object Label11: TLabel
      Left = 8
      Top = 247
      Width = 260
      Height = 13
      Caption = 'I.2.1.0 - Tasa de reingreso de pacientes hospitalizados:'
    end
    object Label12: TLabel
      Left = 8
      Top = 270
      Width = 327
      Height = 13
      Caption = 
        'I.2.2.0 - Proporci'#243'n de pacientes con Hipertensi'#243'n arterial cont' +
        'rolada:'
    end
    object Label13: TLabel
      Left = 8
      Top = 294
      Width = 310
      Height = 13
      Caption = 
        'I.3.1.0 - Tasa de mortalidad intrahospitalaria despues de 48 hor' +
        'as:'
    end
    object Label14: TLabel
      Left = 8
      Top = 317
      Width = 203
      Height = 13
      Caption = 'I.3.2.0 - Tasa de infecci'#243'n intrahospitalaria:'
    end
    object Label15: TLabel
      Left = 8
      Top = 341
      Width = 263
      Height = 13
      Caption = 'I.3.3.0 - Proporci'#243'n de vigilancia de enventos adversos:'
    end
    object Label16: TLabel
      Left = 8
      Top = 365
      Width = 171
      Height = 13
      Caption = 'I.4.1.0 - Tasa de satisfacci'#243'n global:'
    end
    object Label17: TLabel
      Left = 8
      Top = 408
      Width = 55
      Height = 13
      Caption = 'Numerador:'
    end
    object Label18: TLabel
      Left = 8
      Top = 432
      Width = 66
      Height = 13
      Caption = 'Denominador:'
    end
    object Shape1: TShape
      Left = 8
      Top = 392
      Width = 785
      Height = 1
    end
    object Button1: TButton
      Left = 600
      Top = 344
      Width = 177
      Height = 33
      Caption = 'Grabar Datos'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit4: TEdit
      Left = 400
      Top = 8
      Width = 129
      Height = 21
      TabOrder = 1
    end
    object Edit5: TEdit
      Left = 400
      Top = 32
      Width = 129
      Height = 21
      TabOrder = 2
    end
    object Edit6: TEdit
      Left = 400
      Top = 56
      Width = 129
      Height = 21
      TabOrder = 3
    end
    object Edit7: TEdit
      Left = 400
      Top = 80
      Width = 129
      Height = 21
      TabOrder = 4
    end
    object Edit8: TEdit
      Left = 400
      Top = 104
      Width = 129
      Height = 21
      TabOrder = 5
    end
    object Edit9: TEdit
      Left = 400
      Top = 128
      Width = 129
      Height = 21
      TabOrder = 6
    end
    object Edit10: TEdit
      Left = 400
      Top = 152
      Width = 129
      Height = 21
      TabOrder = 7
    end
    object Edit11: TEdit
      Left = 400
      Top = 176
      Width = 129
      Height = 21
      TabOrder = 8
    end
    object Edit12: TEdit
      Left = 400
      Top = 200
      Width = 129
      Height = 21
      TabOrder = 9
    end
    object Edit13: TEdit
      Left = 400
      Top = 224
      Width = 129
      Height = 21
      TabOrder = 10
    end
    object Edit14: TEdit
      Left = 400
      Top = 248
      Width = 129
      Height = 21
      TabOrder = 11
    end
    object Edit15: TEdit
      Left = 400
      Top = 272
      Width = 129
      Height = 21
      TabOrder = 12
    end
    object Edit16: TEdit
      Left = 400
      Top = 296
      Width = 129
      Height = 21
      TabOrder = 13
    end
    object Edit17: TEdit
      Left = 400
      Top = 320
      Width = 129
      Height = 21
      TabOrder = 14
    end
    object Edit18: TEdit
      Left = 400
      Top = 344
      Width = 129
      Height = 21
      TabOrder = 15
    end
    object Edit19: TEdit
      Left = 400
      Top = 368
      Width = 129
      Height = 21
      TabOrder = 16
    end
  end
  object DataSource7: TDataSource
    DataSet = ADOQuery1
    Left = 737
    Top = 17
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM SAAdmisiones,SAPacientes'
      
        'WHERE SAAdmisiones.Tp_Ident_Usuar = SAPacientes.Tp_Ident_Usuar A' +
        'ND'
      '      SAAdmisiones.Nr_Ident_Usuar = SAPacientes.Nr_Ident_Usuar  '
      'ORDER BY No_Admision')
    Left = 768
    Top = 16
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'adm'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM HIC30'
      'WHERE No_Admision = :adm')
    Left = 768
    Top = 144
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery2
    Left = 737
    Top = 145
  end
end
