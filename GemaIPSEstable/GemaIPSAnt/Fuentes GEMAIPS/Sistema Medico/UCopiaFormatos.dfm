object FCopiaFMT: TFCopiaFMT
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Copiar Formatos'
  ClientHeight = 334
  ClientWidth = 534
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 534
    Height = 334
    Align = alClient
    TabOrder = 0
    object lbl: TLabel
      Left = 16
      Top = 16
      Width = 138
      Height = 13
      Caption = 'Copiar Formato del Servidor:'
    end
    object Label1: TLabel
      Left = 17
      Top = 122
      Width = 107
      Height = 13
      Caption = 'No. Formato a Copiar:'
    end
    object Label2: TLabel
      Left = 16
      Top = 71
      Width = 108
      Height = 13
      Caption = 'Base de Datos Origen:'
    end
    object Label3: TLabel
      Left = 16
      Top = 43
      Width = 132
      Height = 13
      Caption = 'Copiar Formato al Servidor:'
    end
    object Label4: TLabel
      Left = 485
      Top = 16
      Width = 36
      Height = 13
      Caption = 'Origen.'
    end
    object Label5: TLabel
      Left = 485
      Top = 43
      Width = 40
      Height = 13
      Caption = 'Destino.'
    end
    object Label6: TLabel
      Left = 16
      Top = 95
      Width = 112
      Height = 13
      Caption = 'Base de Datos Destino:'
    end
    object Ed: TEdit
      Left = 160
      Top = 13
      Width = 319
      Height = 21
      Color = clInactiveCaption
      TabOrder = 0
      Text = 'clientes.prateinco.com\PRATEINCO'
    end
    object btn: TButton
      Left = 334
      Top = 140
      Width = 187
      Height = 57
      Caption = 'Copiar'
      TabOrder = 5
      OnClick = btnClick
    end
    object PB: TProgressBar
      Left = 3
      Top = 203
      Width = 518
      Height = 24
      TabOrder = 6
    end
    object Edit1: TEdit
      Left = 160
      Top = 40
      Width = 319
      Height = 21
      TabOrder = 1
      Text = 'localhost'
    end
    object mmo: TMemo
      Left = 16
      Top = 248
      Width = 505
      Height = 73
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        'Para poder ejecutar este programa, Usted debe correrlo desde el '
        'Progrma '
        'Destino e indicar el servidor Origen de los datos.')
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object DBLO: TDBLookupComboBox
      Left = 160
      Top = 65
      Width = 168
      Height = 21
      KeyField = 'database_id'
      ListField = 'Name'
      ListSource = DSBDOrigen
      TabOrder = 2
      OnEnter = DBLOEnter
    end
    object EdDest: TEdit
      Left = 160
      Top = 92
      Width = 168
      Height = 21
      Color = clInactiveBorder
      ReadOnly = True
      TabOrder = 3
    end
    object EdFmt: TDBLookupComboBox
      Left = 160
      Top = 119
      Width = 168
      Height = 21
      KeyField = 'Codigo'
      ListField = 'Nombre'
      ListSource = DSFmto
      TabOrder = 4
      OnEnter = EdFmtEnter
    end
    object Edit2: TEdit
      Left = 334
      Top = 65
      Width = 145
      Height = 21
      Color = clInactiveBorder
      ReadOnly = True
      TabOrder = 8
    end
  end
  object ADOC: TADOConnection
    LoginPrompt = False
    Left = 32
    Top = 176
  end
  object ADOQOrigen: TADOQuery
    Connection = ADOC
    Parameters = <>
    Left = 32
    Top = 128
  end
  object ADOQDestino: TADOQuery
    Connection = ADOD
    Parameters = <>
    Left = 136
    Top = 128
  end
  object ADOD: TADOConnection
    LoginPrompt = False
    Left = 136
    Top = 176
  end
  object DSBDOrigen: TDataSource
    AutoEdit = False
    DataSet = ADOQBD
    OnDataChange = DSBDOrigenDataChange
    Left = 368
    Top = 88
  end
  object ADOQBD: TADOQuery
    Connection = ADOC
    Parameters = <>
    SQL.Strings = (
      'SELECT name, database_id, create_date'
      'FROM sys.databases')
    Left = 456
    Top = 88
  end
  object DSFmto: TDataSource
    AutoEdit = False
    DataSet = ADOQFmto
    Left = 216
    Top = 144
  end
  object ADOQFmto: TADOQuery
    Connection = ADOC
    Parameters = <>
    SQL.Strings = (
      'SELECT Codigo, Codigo+'#39' - '#39'+Descripcion as Nombre'
      'FROM FDFormatos')
    Left = 272
    Top = 144
  end
end
