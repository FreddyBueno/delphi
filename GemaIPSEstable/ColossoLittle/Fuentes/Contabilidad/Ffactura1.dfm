object FormImpComp: TFormImpComp
  Left = 187
  Top = 322
  BorderStyle = bsSingle
  Caption = 'Impresi'#243'n del Comprobante'
  ClientHeight = 207
  ClientWidth = 507
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
    Width = 507
    Height = 207
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 59
      Width = 78
      Height = 13
      Caption = 'No. Documento:'
    end
    object Label6: TLabel
      Left = 7
      Top = 27
      Width = 58
      Height = 13
      Caption = 'Documento:'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 88
      Top = 56
      Width = 177
      Height = 21
      KeyField = 'llave'
      ListField = 'Numero_Comprobante;Empresa'
      ListSource = DataSource1
      TabOrder = 2
      TabStop = False
    end
    object Button1: TButton
      Left = 264
      Top = 152
      Width = 233
      Height = 49
      Caption = 'Reimprimir el Comprobante'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = Button1Click
    end
    object DBLookupComboBox5: TDBLookupComboBox
      Left = 88
      Top = 24
      Width = 273
      Height = 21
      KeyField = 'Tipo_Comprobante'
      ListField = 'Descripcion'
      ListSource = DataSource4
      TabOrder = 0
      OnExit = DBLookupComboBox5Exit
    end
    object Edit1: TEdit
      Left = 272
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 3
      OnChange = Edit1Change
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 440
    Top = 64
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'doc'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = ''
      end>
    SQL.Strings = (
      'SELECT *,convert(varchar,Numero_Comprobante) +Empresa as llave'
      'FROM CONTEncComp'
      'WHERE  Tipo_Comprobante = :doc')
    Left = 472
    Top = 64
  end
  object ADOTable1: TADOTable
    Connection = DataModule1.ADOConnection1
    TableName = 'CONTTipoComp'
    Left = 473
    Top = 9
  end
  object DataSource4: TDataSource
    DataSet = ADOTable1
    Left = 441
    Top = 9
  end
end
