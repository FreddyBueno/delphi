object dmGIPSci: TdmGIPSci
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 495
  Width = 278
  object connGIPS: TADConnection
    Params.Strings = (
      'Server=VAIO\SQLFRC'
      'User_Name=sa'
      'Password=espartaguia'
      'Database=GIPSPijaosNatagaima'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 8
  end
  object tblTipoCita: TADTable
    OnCalcFields = tblTipoCitaCalcFields
    IndexFieldNames = 'ID'
    Connection = connGIPS
    UpdateOptions.UpdateTableName = 'GIPSPijaosNatagaima.dbo.AGTipoCita'
    TableName = 'GIPSPijaosNatagaima.dbo.AGTipoCita'
    Left = 40
    Top = 64
    object tblTipoCitaID: TADAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblTipoCitaTipoCita: TStringField
      FieldName = 'TipoCita'
      Origin = 'TipoCita'
      Size = 50
    end
    object tblTipoCitaActivo: TBooleanField
      FieldName = 'Activo'
      Origin = 'Activo'
    end
    object tblTipoCitaDuracion: TIntegerField
      FieldName = 'Duracion'
      Origin = 'Duracion'
    end
    object tblTipoCitaCita: TStringField
      FieldKind = fkCalculated
      FieldName = 'Cita'
      Size = 50
      Calculated = True
    end
  end
  object tblTipoConsulta: TADTable
    Connection = connGIPS
    UpdateOptions.UpdateTableName = 'TipoConsulta'
    TableName = 'TipoConsulta'
    Left = 40
    Top = 120
    object tblTipoConsultaID: TADAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ReadOnly = True
    end
    object tblTipoConsultaDescriptorID: TIntegerField
      FieldName = 'DescriptorID'
      Origin = 'DescriptorID'
      Required = True
    end
    object tblTipoConsultaCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'Codigo'
      ReadOnly = True
      Size = 50
    end
    object tblTipoConsultaDescripcion: TStringField
      FieldName = 'Descripcion'
      Origin = 'Descripcion'
      Size = 50
    end
    object tblTipoConsultaActivo: TBooleanField
      FieldName = 'Activo'
      Origin = 'Activo'
    end
  end
  object tblProf: TADTable
    IndexFieldNames = 'id'
    Connection = connGIPS
    UpdateOptions.UpdateTableName = 'GIPSPijaosNatagaima.dbo.vAGProfesionales'
    TableName = 'GIPSPijaosNatagaima.dbo.vAGProfesionales'
    Left = 39
    Top = 176
    object tblProfid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      Required = True
    end
    object tblProfPrimerApellido: TStringField
      FieldName = 'PrimerApellido'
      Origin = 'PrimerApellido'
    end
    object tblProfSegundoApellido: TStringField
      FieldName = 'SegundoApellido'
      Origin = 'SegundoApellido'
      ReadOnly = True
      Required = True
    end
    object tblProfPrimerNombre: TStringField
      FieldName = 'PrimerNombre'
      Origin = 'PrimerNombre'
      Size = 15
    end
    object tblProfSegundoNombre: TStringField
      FieldName = 'SegundoNombre'
      Origin = 'SegundoNombre'
      ReadOnly = True
      Required = True
      Size = 15
    end
    object tblProfDocIDProf: TStringField
      FieldName = 'DocIDProf'
      Origin = 'DocIDProf'
      Required = True
      Size = 15
    end
    object tblProfFoto: TBlobField
      FieldName = 'Foto'
      Origin = 'Foto'
      Size = 2147483647
    end
    object tblProfEspecialidad: TStringField
      FieldName = 'Especialidad'
      Origin = 'Especialidad'
      Size = 50
    end
    object tblProfProfesional: TStringField
      FieldName = 'Profesional'
      Origin = 'Profesional'
      ReadOnly = True
      Size = 73
    end
  end
  object dsProf: TDataSource
    AutoEdit = False
    DataSet = tblProf
    Left = 120
    Top = 176
  end
  object dsTipoConsulta: TDataSource
    DataSet = tblTipoConsulta
    Left = 120
    Top = 120
  end
  object dsTipoCita: TDataSource
    AutoEdit = False
    DataSet = tblTipoCita
    Left = 120
    Top = 64
  end
  object tblZona: TADTable
    Active = True
    Connection = connGIPS
    UpdateOptions.UpdateTableName = 'GIPSPijaosNatagaima.dbo.GEZona'
    TableName = 'GIPSPijaosNatagaima.dbo.GEZona'
    Left = 40
    Top = 232
  end
  object dsZona: TDataSource
    AutoEdit = False
    DataSet = tblZona
    Left = 112
    Top = 232
  end
  object dsGrupoEtnico: TDataSource
    AutoEdit = False
    DataSet = tblGrupoEtnico
    Left = 112
    Top = 288
  end
  object tblGrupoEtnico: TADTable
    Active = True
    Connection = connGIPS
    UpdateOptions.UpdateTableName = 'GIPSPijaosNatagaima.dbo.GEGrupoEtnico'
    TableName = 'GIPSPijaosNatagaima.dbo.GEGrupoEtnico'
    Left = 40
    Top = 288
  end
  object tblAseguradora: TADTable
    Active = True
    Connection = connGIPS
    UpdateOptions.UpdateTableName = 'GIPSPijaosNatagaima.dbo.GEAseguradoras'
    TableName = 'GIPSPijaosNatagaima.dbo.GEAseguradoras'
    Left = 24
    Top = 344
  end
  object dsAseguradora: TDataSource
    AutoEdit = False
    DataSet = tblAseguradora
    Left = 112
    Top = 344
  end
end
