object FormDigitaliza: TFormDigitaliza
  Left = 172
  Top = 105
  Caption = 'Incluir Documentos Digitalizados a los Comprobantes.'
  ClientHeight = 444
  ClientWidth = 680
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
    Width = 680
    Height = 444
    Align = alClient
    Caption = 'Comprobante Contable:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 688
    ExplicitHeight = 446
    object GroupBox3: TGroupBox
      Left = 2
      Top = 129
      Width = 676
      Height = 313
      Align = alClient
      Caption = 'Lista de Documentos Anexos:'
      TabOrder = 0
      ExplicitWidth = 684
      ExplicitHeight = 315
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 680
        Height = 298
        Align = alClient
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnCellClick = DBGrid1CellClick
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 15
      Width = 676
      Height = 114
      Align = alTop
      TabOrder = 1
      ExplicitWidth = 684
      object Label6: TLabel
        Left = 7
        Top = 11
        Width = 58
        Height = 13
        Caption = 'Documento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 7
        Top = 44
        Width = 78
        Height = 13
        Caption = 'No. Documento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 88
        Top = 8
        Width = 273
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'Tipo_Comprobante'
        ListField = 'Descripcion'
        ListSource = DataSource4
        ParentFont = False
        TabOrder = 0
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 88
        Top = 41
        Width = 129
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'Numero_Comprobante'
        ListField = 'Numero_Comprobante'
        ListSource = DataSource1
        ParentFont = False
        TabOrder = 1
        OnExit = DBLookupComboBox1Exit
      end
      object Button2: TButton
        Left = 8
        Top = 80
        Width = 161
        Height = 25
        Caption = 'Anexar Documento'
        TabOrder = 2
        OnClick = Button2Click
      end
    end
  end
  object DataSource4: TDataSource
    DataSet = ADOTable1
    OnDataChange = DataSource4DataChange
    Left = 593
    Top = 9
  end
  object ADOTable1: TADOTable
    Connection = DataModule1.ADOConnection1
    TableName = 'CONTTipoComp'
    Left = 625
    Top = 9
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 592
    Top = 40
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'doc'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = ''
      end>
    SQL.Strings = (
      'SELECT * FROM CONTEncComp'
      'WHERE Estado IS NULL AND Tipo_Comprobante = :doc')
    Left = 624
    Top = 40
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TPCOMP'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'NRCOMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM CONTDigitaliza'
      'WHERE Tipo_Comprobante = :TPCOMP AND'
      '               Numero_Comprobante = :NRCOMP')
    Left = 552
    Top = 40
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 520
    Top = 40
  end
  object OpenDialog1: TOpenDialog
    Left = 658
    Top = 7
  end
end
