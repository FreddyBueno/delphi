object FormConsultaSaldos: TFormConsultaSaldos
  Left = 257
  Top = 263
  Caption = 'Saldos Contables'
  ClientHeight = 455
  ClientWidth = 964
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
    Width = 964
    Height = 129
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 29
      Width = 96
      Height = 13
      Caption = 'Mes de Proceso:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 351
      Top = 29
      Width = 42
      Height = 21
      DataField = 'Estado'
      DataSource = DataSource2
    end
    object Label2: TLabel
      Left = 739
      Top = 101
      Width = 75
      Height = 13
      Caption = 'Total Debito:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 923
      Top = 101
      Width = 78
      Height = 13
      Caption = 'Total Credito:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 831
      Top = 101
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'Saldo_Debito'
      DataSource = DataSource2
    end
    object Label4: TLabel
      Left = 231
      Top = 29
      Width = 112
      Height = 13
      Caption = 'Estado del Periodo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 1015
      Top = 101
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'Saldo_Credito'
      DataSource = DataSource2
    end
    object Label5: TLabel
      Left = 424
      Top = 29
      Width = 78
      Height = 13
      Caption = 'Nivel Cuenta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 372
      Top = 101
      Width = 75
      Height = 13
      Caption = 'Total Debito:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 555
      Top = 101
      Width = 78
      Height = 13
      Caption = 'Total Credito:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 647
      Top = 101
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'Saldo_Credito'
      DataSource = DataSource3
    end
    object DBText5: TDBText
      Left = 464
      Top = 101
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'Saldo_Debito'
      DataSource = DataSource3
    end
    object Label8: TLabel
      Left = 188
      Top = 101
      Width = 78
      Height = 13
      Caption = 'Total Credito:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 5
      Top = 101
      Width = 75
      Height = 13
      Caption = 'Total Debito:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 96
      Top = 101
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'Saldo_Debito'
      DataSource = DataSource6
    end
    object DBText7: TDBText
      Left = 280
      Top = 101
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'Saldo_Credito'
      DataSource = DataSource6
    end
    object Label10: TLabel
      Left = 848
      Top = 80
      Width = 59
      Height = 13
      Caption = 'CIERRES:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 544
      Top = 80
      Width = 54
      Height = 13
      Caption = 'SALDOS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 96
      Top = 80
      Width = 92
      Height = 13
      Caption = 'MOVIMIENTOS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 111
      Top = 29
      Width = 114
      Height = 21
      KeyField = 'Periodo_Proceso'
      ListSource = DataSource2
      TabOrder = 0
    end
    object ScrollBar1: TScrollBar
      Left = 528
      Top = 29
      Width = 113
      Height = 16
      Max = 10
      PageSize = 0
      Position = 10
      TabOrder = 1
      OnChange = ScrollBar1Change
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 129
    Width = 964
    Height = 326
    Align = alClient
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 537
      Top = 1
      Height = 324
      ExplicitHeight = 322
    end
    object Panel4: TPanel
      Left = 540
      Top = 1
      Width = 423
      Height = 324
      Align = alClient
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 421
        Height = 322
        Align = alClient
        Caption = 'SALDOS FINALES:'
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 417
          Height = 305
          Align = alClient
          DataSource = DataSource1
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Periodo_Proceso'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cuenta'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Descripcion'
              Visible = True
            end
            item
              Color = cl3DLight
              Expanded = False
              FieldName = 'Saldo_Final_Debito'
              Visible = True
            end
            item
              Color = clInactiveBorder
              Expanded = False
              FieldName = 'Saldo_Final_Credito'
              Visible = True
            end>
        end
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 536
      Height = 324
      Align = alLeft
      TabOrder = 1
      object GroupBox2: TGroupBox
        Left = 1
        Top = 1
        Width = 534
        Height = 322
        Align = alClient
        Caption = 'MOVIMIENTO DEL MES:'
        TabOrder = 0
        object DBGrid2: TDBGrid
          Left = 2
          Top = 15
          Width = 530
          Height = 305
          Align = alClient
          DataSource = DataSource4
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Periodo_Proceso'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cuenta'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Descripcion'
              Visible = True
            end
            item
              Color = cl3DLight
              Expanded = False
              FieldName = 'Movimiento_Debito'
              Visible = True
            end
            item
              Color = clInactiveBorder
              Expanded = False
              FieldName = 'Movimiento_Credito'
              Visible = True
            end>
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 624
    Top = 416
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'nv'
        Size = -1
        Value = Null
      end
      item
        Name = 'Periodo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = ''
      end>
    SQL.Strings = (
      
        'SELECT CONTSaldo.Periodo_Proceso,CONTCuenta.Cuenta,Left(CONTcuen' +
        'ta.Descripcion,50) as Descripcion'
      
        '  ,CASE WHEN (sum(CONTSaldo.Saldo_Debito)-Sum(CONTSaldo.Saldo_Cr' +
        'edito))>0 THEN (sum(CONTSaldo.Saldo_Debito)-Sum(CONTSaldo.Saldo_' +
        'Credito)) ELSE 0 END as Saldo_Final_Debito'
      
        '  ,CASE WHEN (Sum(CONTSaldo.Saldo_Credito)-sum(CONTSaldo.Saldo_D' +
        'ebito))>0 THEN (Sum(CONTSaldo.Saldo_Credito)-sum(CONTSaldo.Saldo' +
        '_Debito)) ELSE 0 END as Saldo_Final_Credito'
      'FROM CONTSaldo,CONTcuenta'
      'WHERE left(CONTSaldo.Cuenta,:nv) = CONTCuenta.Cuenta AND'
      
        #9'  CONTSaldo.Periodo_proceso  =  :Periodo AND CONTCuenta.Estado ' +
        '= '#39'A'#39
      
        'GROUP BY CONTSaldo.Periodo_Proceso,CONTCuenta.Cuenta,Left(CONTcu' +
        'enta.Descripcion,50)'
      
        'ORDER BY CONTSaldo.Periodo_Proceso,CONTCuenta.Cuenta,Left(CONTcu' +
        'enta.Descripcion,50)')
    Left = 656
    Top = 416
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    OnDataChange = DataSource2DataChange
    Left = 560
    Top = 416
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM contcierres'
      'WHERE Periodo_Proceso IN (SELECT Periodo_Proceso FROM contsaldo)')
    Left = 592
    Top = 417
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 688
    Top = 416
  end
  object ADOQuery3: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Periodo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = ''
      end>
    SQL.Strings = (
      
        'SELECT sum(CONTSaldo.Saldo_Debito) as Saldo_Debito,Sum(CONTSaldo' +
        '.Saldo_Credito) as Saldo_Credito'
      'FROM CONTSaldo'
      'WHERE   CONTSaldo.Periodo_proceso  =  :Periodo'
      '')
    Left = 720
    Top = 416
  end
  object DataSource6: TDataSource
    DataSet = ADOQuery6
    Left = 752
    Top = 416
  end
  object ADOQuery6: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Periodo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = ''
      end>
    SQL.Strings = (
      
        'SELECT sum(Valor_Debito) as Saldo_Debito,Sum(Valor_Credito) as S' +
        'aldo_Credito'
      '  FROM CONTDetComp,CONTEncComp'
      
        '  WHERE CONTDetComp.Tipo_comprobante = CONTEncComp.Tipo_comproba' +
        'nte AND'
      
        '        CONTDetComp.Numero_Comprobante = CONTEncComp.Numero_Comp' +
        'robante AND'
      '        Estado = '#39'G'#39' AND '
      '        Periodo_proceso  =  :Periodo')
    Left = 784
    Top = 416
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery4
    Left = 840
    Top = 408
  end
  object ADOQuery4: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'nv'
        Size = -1
        Value = Null
      end
      item
        Name = 'Periodo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = ''
      end>
    SQL.Strings = (
      
        'SELECT CONTENCComp.Periodo_Proceso,CONTCuenta.Cuenta,Left(CONTcu' +
        'enta.Descripcion,50) as Descripcion'
      
        '  ,sum(CONTDETComp.Valor_Debito) as Movimiento_Debito,Sum(CONTDE' +
        'TComp.Valor_Credito) as Movimiento_Credito'
      'FROM CONTEncComp,CONTDetComp,CONTcuenta'
      
        'WHERE  (CONTENCComp.Tipo_Comprobante = CONTDETComp.Tipo_Comproba' +
        'nte AND'
      
        '                CONTENCComp.Numero_Comprobante = CONTDETComp.Num' +
        'ero_Comprobante) AND'
      
        '                left(CONTDetComp.Cuenta,:nv) = CONTCuenta.Cuenta' +
        ' AND'
      #9'  CONTEncComp.Periodo_proceso  =  :Periodo  AND'
      '                CONTENCComp.Estado = '#39'G'#39' '
      
        'GROUP BY CONTENCComp.Periodo_Proceso,CONTCuenta.Cuenta,Left(CONT' +
        'cuenta.Descripcion,50)'
      
        'ORDER BY CONTENCComp.Periodo_Proceso,CONTCuenta.Cuenta,Left(CONT' +
        'cuenta.Descripcion,50)')
    Left = 872
    Top = 408
  end
end
