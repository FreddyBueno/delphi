object FormAjusteSaldos: TFormAjusteSaldos
  Left = 668
  Top = 137
  BorderStyle = bsSingle
  Caption = 'Proceso de Ajuste de Saldos'
  ClientHeight = 489
  ClientWidth = 514
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 514
    Height = 121
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 11
      Width = 116
      Height = 13
      Caption = 'Periodo de Proceso:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 1
      Top = 35
      Width = 121
      Height = 33
      Caption = 'Abrir Periodo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 128
      Top = 35
      Width = 121
      Height = 33
      Caption = 'Cerrar Periodo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = Button2Click
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 128
      Top = 8
      Width = 379
      Height = 21
      KeyField = 'Periodo_Proceso'
      ListField = 'Periodo_Proceso'
      ListSource = DataSource1
      TabOrder = 2
      TabStop = False
    end
    object ProgressBar1: TProgressBar
      Left = 1
      Top = 104
      Width = 512
      Height = 16
      Align = alBottom
      TabOrder = 3
    end
    object Button3: TButton
      Left = 382
      Top = 35
      Width = 121
      Height = 33
      Caption = 'Inactivar Periodo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      TabStop = False
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 255
      Top = 35
      Width = 121
      Height = 33
      Caption = 'Cerrar Periodos Fin'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      TabStop = False
      OnClick = Button4Click
    end
    object Edit1: TEdit
      Left = 8
      Top = 77
      Width = 25
      Height = 21
      ReadOnly = True
      TabOrder = 6
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 121
    Width = 514
    Height = 368
    Align = alClient
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 512
      Height = 366
      ActivePage = TabSheet1
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Periodos y sus Movimientos'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 504
          Height = 338
          Align = alClient
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Consulta de Saldos por Cuenta'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object DBGrid2: TDBGrid
          Left = 0
          Top = 0
          Width = 504
          Height = 338
          Align = alClient
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQCierresAjuste
    OnDataChange = DataSource1DataChange
    Left = 32
    Top = 184
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM contsaldo'
      'ORDER BY periodo_proceso,cuenta')
    Left = 112
    Top = 241
  end
  object ADOQComproAjuste: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM contdetcomp')
    Left = 432
    Top = 193
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 32
    Top = 241
  end
  object ADOQTmpAjuste: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    Left = 432
    Top = 249
  end
  object ADOQCierresAjuste: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT *,saldo_debito-saldo_credito as Diferencia '
      'FROM contcierres '
      'ORDER BY periodo_proceso')
    Left = 120
    Top = 184
  end
  object ADOQueryCuenta: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'cta'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM CONTCuenta'
      'WHERE Cuenta = :cta')
    Left = 304
    Top = 249
  end
end
