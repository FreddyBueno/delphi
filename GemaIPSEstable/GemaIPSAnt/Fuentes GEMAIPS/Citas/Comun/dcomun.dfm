object dmComunes: TdmComunes
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 384
  Width = 464
  object connComunes: TADConnection
    Params.Strings = (
      'Server=VAIO\SQLFRC'
      'User_Name=prateinco'
      'Password=espartaguia'
      'Database=comunes'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object tblSexo: TADTable
    Active = True
    IndexFieldNames = 'TIP_SEXO'
    Connection = connComunes
    UpdateOptions.UpdateTableName = 'dbo.GESexo'
    CatalogName = 'Comunes'
    TableName = 'dbo.GESexo'
    Left = 32
    Top = 80
    object tblSexoTIP_SEXO: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'TIP_SEXO'
      Origin = 'TIP_SEXO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 1
    end
    object tblSexoNOM_SEXO: TStringField
      DisplayLabel = 'G'#233'nero'
      FieldName = 'NOM_SEXO'
      Origin = 'NOM_SEXO'
      Required = True
      Size = 50
    end
    object tblSexoEstado: TStringField
      FieldName = 'Estado'
      Origin = 'Estado'
      FixedChar = True
      Size = 1
    end
  end
  object tblTipoDocID: TADTable
    Active = True
    IndexFieldNames = 'COD_TIPO'
    Connection = connComunes
    UpdateOptions.UpdateTableName = 'Comunes.dbo.GETipo_Documentos'
    TableName = 'Comunes.dbo.GETipo_Documentos'
    Left = 32
    Top = 139
    object tblTipoDocIDCOD_TIPO: TStringField
      FieldName = 'COD_TIPO'
      Origin = 'COD_TIPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object tblTipoDocIDNOM_NOMBRE: TStringField
      FieldName = 'NOM_NOMBRE'
      Origin = 'NOM_NOMBRE'
      Required = True
      Size = 50
    end
    object tblTipoDocIDEstado: TStringField
      FieldName = 'Estado'
      Origin = 'Estado'
      FixedChar = True
      Size = 1
    end
  end
  object dsTipoDoc: TDataSource
    AutoEdit = False
    DataSet = tblTipoDocID
    Left = 96
    Top = 136
  end
  object dsSexo: TDataSource
    AutoEdit = False
    DataSet = tblSexo
    Left = 96
    Top = 80
  end
  object dsParentesco: TDataSource
    AutoEdit = False
    DataSet = tblParentesco
    Left = 224
    Top = 80
  end
  object dsOcupacion: TDataSource
    AutoEdit = False
    DataSet = tblOcupacion
    Left = 224
    Top = 136
  end
  object tblNacionalidad: TADTable
    Active = True
    IndexFieldNames = 'COD_NACIONALIDA'
    Connection = connComunes
    UpdateOptions.UpdateTableName = 'Comunes.dbo.GENacionalidad'
    TableName = 'Comunes.dbo.GENacionalidad'
    Left = 32
    Top = 192
  end
  object tblMun: TADTable
    Active = True
    IndexFieldNames = 'CD_Departamento;CD_Municipio'
    MasterSource = dsET
    MasterFields = 'CD_Departamento'
    DetailFields = 'CD_Departamento'
    Connection = connComunes
    UpdateOptions.UpdateTableName = 'Comunes.dbo.GEMunicipios'
    TableName = 'Comunes.dbo.GEMunicipios'
    Left = 176
    Top = 248
  end
  object tblEstadoCivil: TADTable
    Active = True
    IndexFieldNames = 'Codigo'
    Connection = connComunes
    UpdateOptions.UpdateTableName = 'Comunes.dbo.GEEstados_Civiles'
    TableName = 'Comunes.dbo.GEEstados_Civiles'
    Left = 32
    Top = 248
  end
  object tblParentesco: TADTable
    Active = True
    IndexFieldNames = 'COD_PARENTESCO'
    Connection = connComunes
    UpdateOptions.UpdateTableName = 'Comunes.dbo.GEParentesco'
    TableName = 'Comunes.dbo.GEParentesco'
    Left = 160
    Top = 80
  end
  object tblOcupacion: TADTable
    Active = True
    IndexFieldNames = 'CD_Ocupacion'
    Connection = connComunes
    UpdateOptions.UpdateTableName = 'Comunes.dbo.GEOcupacion'
    TableName = 'Comunes.dbo.GEOcupacion'
    Left = 160
    Top = 136
  end
  object dsET: TDataSource
    AutoEdit = False
    DataSet = tblET
    Left = 232
    Top = 200
  end
  object dsMun: TDataSource
    AutoEdit = False
    DataSet = tblMun
    Left = 224
    Top = 256
  end
  object dsNacionalidad: TDataSource
    AutoEdit = False
    DataSet = tblNacionalidad
    Left = 104
    Top = 200
  end
  object dsEstadoCivil: TDataSource
    AutoEdit = False
    DataSet = tblEstadoCivil
    Left = 104
    Top = 248
  end
  object tblET: TADTable
    Active = True
    IndexFieldNames = 'CD_Departamento'
    DetailFields = 'CD_Departamento'
    Connection = connComunes
    UpdateOptions.UpdateTableName = 'Comunes.dbo.GEDepartamentos'
    TableName = 'Comunes.dbo.GEDepartamentos'
    Left = 176
    Top = 200
  end
end
