object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 403
  Width = 564
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Provider = 'SQLNCLI11.1'
    Left = 32
  end
  object ADOQuery1: TADOQuery
    Connection = ADOComunes
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = 6001.000000000000000000
      end>
    SQL.Strings = (
      'SELECT *'
      
        'FROM SEPersonas,SEEmpleados,SEEmpresas,SEAreas,SEIdentificacione' +
        's'
      'WHERE SEPersonas.Id = SEEmpleados.Id'
      ' AND SEEmpleados.Empresa_Trabaja = SEEmpresas.Codigo'
      ' AND (SEEmpleados.Empresa_Trabaja = SEAreas.Empresa AND'
      '     SEEmpleados.Area_TRabaja = SEAreas.Codigo) AND'
      #9' SEPersonas.id = SEIdentificaciones.Persona  AND '
      'SEPersonas.Id = :IdPersona ')
    Left = 344
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = 0.000000000000000000
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM SEPersonas,SEEmpleados,SEEmpresas'
      'WHERE SEPersonas.Id = SEEmpleados.Id'
      ' AND SEEmpleados.Empresa_Trabaja = SEEmpresas.Codigo'
      ' AND SEPersonas.Id = :IdPersona')
    Left = 416
  end
  object ADOQEncInventa: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INTransacciones_Enc')
    Left = 32
    Top = 64
  end
  object ADOQDetInventa: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INTransacciones_Det')
    Left = 112
    Top = 64
  end
  object ADOQDocInventa: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INDocumentos')
    Left = 408
    Top = 64
  end
  object ADOQSaldoInventa: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INSaldosxAlmacen')
    Left = 488
    Top = 64
  end
  object ADOQProducto: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INProductos')
    Left = 32
    Top = 120
  end
  object ADOPlan: TADOQuery
    Connection = ADOConnection1
    Parameters = <
      item
        Name = 'cta'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT count(*) as tot'
      'FROM CONTCuenta '
      'WHERE cuenta like :cta + '#39'%'#39)
    Left = 104
    Top = 120
  end
  object ADOQuery3: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 489
    Top = 1
  end
  object ADOQCosto: TADOQuery
    Connection = ADOConnection1
    Parameters = <
      item
        Name = 'cos'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'Select COSTO_PROM_PESOS, COSTO_PROM_EXTR, ULT_COSTO_PESOS, ULT_C' +
        'OSTO_EXTR '
      'From INProductos'
      'Where CD_PRODUCTO = :cos')
    Left = 32
    Top = 176
    object ADOQCostoCOSTO_PROM_PESOS: TIntegerField
      FieldName = 'COSTO_PROM_PESOS'
    end
    object ADOQCostoCOSTO_PROM_EXTR: TIntegerField
      FieldName = 'COSTO_PROM_EXTR'
    end
    object ADOQCostoULT_COSTO_PESOS: TIntegerField
      FieldName = 'ULT_COSTO_PESOS'
    end
    object ADOQCostoULT_COSTO_EXTR: TIntegerField
      FieldName = 'ULT_COSTO_EXTR'
    end
  end
  object ADOQEncConta: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM contenccomp'
      'WHERE Empresa = '#39#39)
    Left = 473
    Top = 169
  end
  object ADOQDocConta: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CONTTIPOCOMP')
    Left = 265
    Top = 121
  end
  object ADODetConta: TADOQuery
    Connection = ADOConnection1
    Parameters = <
      item
        Name = 'TC'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = ''
      end
      item
        Name = 'Emp'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'NC'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'Cta'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'Terce'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'CC'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'DS'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM contdetcomp'
      'WHERE Tipo_Comprobante = :TC AND'
      '               Empresa = :Emp AND '
      '               Numero_Comprobante = :NC AND'
      '               Cuenta = :Cta AND'
      '               Tercero = :Terce AND'
      '                Centro_Costo = :CC  AND'
      '                DocSoporte = :DS'
      '')
    Left = 481
    Top = 217
  end
  object ADOQuery4: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 32
    Top = 232
  end
  object ADOQuery5: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INParametros')
    Left = 112
    Top = 232
  end
  object ADOQContcierre: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ContCierres'
      '')
    Left = 265
    Top = 177
  end
  object ADOParamGeneral: TADOQuery
    Connection = ADOPrateinco
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM SEParametros')
    Left = 256
    Top = 232
  end
  object ADOQSaldoVence: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INSaldosVencimiento')
    Left = 360
    Top = 176
  end
  object ADOLogs: TADOQuery
    Connection = ADOComunes
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM SEHistorico'
      'WHERE ID = '#39#39)
    Left = 152
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 280
  end
  object ADOQSaldoPeriodo: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM INSaldosxPeriodo')
    Left = 368
    Top = 248
  end
  object ADOQSaldoPeriodoAnt: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM INSaldosxPeriodo')
    Left = 368
    Top = 312
  end
  object ADOQtmp: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INTransacciones_Enc')
    Left = 24
    Top = 320
  end
  object ADOQFormas: TADOQuery
    Connection = ADOComunes
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = 0.000000000000000000
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM SEPersonas,SEEmpleados,SEEmpresas,SEAreas'
      'WHERE SEPersonas.Id = SEEmpleados.Id'
      ' AND SEEmpleados.Empresa_Trabaja = SEEmpresas.Codigo'
      ' AND (SEEmpleados.Empresa_Trabaja = SEAreas.Empresa AND'
      '     SEEmpleados.Area_TRabaja = SEAreas.Codigo)'
      ' AND SEPersonas.Id = :IdPersona')
    Left = 112
    Top = 328
  end
  object ADOQtmp2: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INTransacciones_Enc')
    Left = 200
    Top = 296
  end
  object ADOPrateinco: TADOConnection
    LoginPrompt = False
    Provider = 'SQLOLEDB'
    Left = 200
  end
  object ADOQValPrateinco: TADOQuery
    Connection = ADOPrateinco
    Parameters = <
      item
        Name = 'ser'
        Size = -1
        Value = Null
      end
      item
        Name = 'mac'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM SEValida'
      'WHERE Serial = :ser AND'
      '               Mac  = :mac')
    Left = 456
    Top = 120
  end
  object ADOComunes: TADOConnection
    LoginPrompt = False
    Provider = 'SQLNCLI11.1'
    Left = 112
  end
  object ADOQVal: TADOQuery
    Connection = ADOPrateinco
    Parameters = <
      item
        Name = 'ser'
        Size = -1
        Value = Null
      end
      item
        Name = 'mac'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM SEValida'
      'WHERE Serial = :ser AND'
      '               Mac  = :mac')
    Left = 480
    Top = 304
  end
end
