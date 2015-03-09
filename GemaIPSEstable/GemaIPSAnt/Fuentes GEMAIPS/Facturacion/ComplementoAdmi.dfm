object FCompAdm: TFCompAdm
  Left = 313
  Top = 331
  BorderStyle = bsSingle
  Caption = 'Complemento y/o Modificaci'#243'n de la Admisi'#243'n'
  ClientHeight = 320
  ClientWidth = 813
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
  object GroupBox2: TGroupBox
    Left = 0
    Top = 114
    Width = 813
    Height = 206
    Align = alClient
    Caption = 'Datos a Modificar:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 16
      Top = 31
      Width = 98
      Height = 13
      Caption = 'Estado Admisi'#243'n:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 16
      Top = 68
      Width = 92
      Height = 13
      Caption = 'Empresa/Conv.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 16
      Top = 102
      Width = 99
      Height = 13
      Caption = 'No. Autorizaci'#243'n:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 296
      Top = 102
      Width = 110
      Height = 13
      Caption = 'Duraci'#243'n Admisi'#243'n:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit2: TDBEdit
      Left = 131
      Top = 28
      Width = 38
      Height = 21
      TabStop = False
      DataField = 'EST_ADMINSION'
      DataSource = DataSource7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 624
      Top = 131
      Width = 161
      Height = 54
      Caption = 'Grabar'
      TabOrder = 1
      OnClick = Button1Click
    end
    object DBLookupComboBox11: TDBLookupComboBox
      Left = 131
      Top = 60
      Width = 617
      Height = 21
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'key2'
      ListField = 'Descripcion'
      ListSource = DatamoduloAdmision.DTSConvenios
      ParentFont = False
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 131
      Top = 98
      Width = 153
      Height = 21
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object ComboBox1: TComboBox
      Left = 424
      Top = 98
      Width = 137
      Height = 21
      TabOrder = 4
      Text = 'Factura'
      Items.Strings = (
        'Factura'
        'Permanente')
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 0
    Width = 813
    Height = 114
    Align = alTop
    Caption = 'Admisi'#243'n:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label5: TLabel
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
    object Label6: TLabel
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
    object Label1: TLabel
      Left = 8
      Top = 90
      Width = 43
      Height = 13
      Caption = 'Contrato:'
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
    object DBEdit1: TDBEdit
      Left = 336
      Top = 87
      Width = 137
      Height = 21
      TabStop = False
      DataField = 'No_Contrato'
      DataSource = DataSource7
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdit3: TDBEdit
      Left = 192
      Top = 87
      Width = 137
      Height = 21
      TabStop = False
      DataField = 'Aseguradora'
      DataSource = DataSource7
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      
        'SELECT No_Admision,Observaciones,SAAdmisiones.Tp_Ident_Usuar,SAA' +
        'dmisiones.Nr_Ident_Usuar,Primer_Apellido,Segundo_Apellido,Primer' +
        '_Nombre,Segundo_Nombre,'
      
        '            Est_Adminsion,SAAdmisiones.Aseguradora,SAAdmisiones.' +
        'No_Contrato,No_Autorizacion,Duracion'
      'FROM SAAdmisiones,SAPacientes'
      
        'WHERE SAAdmisiones.Tp_Ident_Usuar = SAPacientes.Tp_Ident_Usuar A' +
        'ND'
      '      SAAdmisiones.Nr_Ident_Usuar = SAPacientes.Nr_Ident_Usuar  '
      'ORDER BY No_Admision')
    Left = 768
    Top = 56
  end
  object DataSource7: TDataSource
    DataSet = ADOQuery1
    OnDataChange = DataSource7DataChange
    Left = 721
    Top = 57
  end
end
