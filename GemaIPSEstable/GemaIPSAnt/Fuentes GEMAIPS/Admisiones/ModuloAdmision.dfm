�
 TDATAMODULOADMISION 0�s  TPF0TDatamoduloAdmisionDatamoduloAdmisionOldCreateOrderOnCreateDataModuleCreateHeight�Width� 	TADOQueryqryGE_Departamentos
ConnectionDataModule1.ADOComunes
CursorTypectStatic
Parameters SQL.Strings	Select * from GEDepartamentosWHERE Estado = 'A'Order BY DS_Departamento Left(Top TStringField"qryGE_DepartamentosCD_Departamento	FieldNameCD_DepartamentoSize  TStringField"qryGE_DepartamentosDS_Departamento	FieldNameDS_DepartamentoSize2  TStringFieldqryGE_DepartamentosEstado	FieldNameEstado	FixedChar	Size   	TADOQuery	qryCiudad
ConnectionDataModule1.ADOComunes
CursorTypectStatic
DataSourcedtsGE_Departamentos
ParametersNameCD_Departamento
Attributes
paNullable DataTypeftWideStringNumericScale� 	Precision� Size�Value   SQL.Strings	Select * from GEMunicipiosWHERE Estado = 'A' AND1              CD_Departamento  = :CD_DepartamentoOrder BY DS_Municipio Left� Top TStringFieldqryCiudadCD_Departamento	FieldNameCD_DepartamentoSize  TStringFieldqryCiudadCD_Municipio	FieldNameCD_MunicipioSize  TStringFieldqryCiudadDS_Municipio	FieldNameDS_MunicipioSize2  TStringFieldqryCiudadCD_Regional	FieldNameCD_RegionalSize  TStringFieldqryCiudadEstado	FieldNameEstado	FixedChar	Size   	TADOQueryqryOcupacion
ConnectionDataModule1.ADOComunes
CursorTypectStatic
Parameters SQL.Strings
Select *  from GEOcupacionWHERE Estado = 'A'Order BY DS_Ocupacion LeftTop TFloatFieldqryOcupacionCD_Ocupacion	FieldNameCD_Ocupacion  TStringFieldqryOcupacionDS_Ocupacion	FieldNameDS_OcupacionSize�   TStringFieldqryOcupacionEstado	FieldNameEstado	FixedChar	Size   TDataSourcedtsGE_DepartamentosDataSetqryGE_DepartamentosLeft(Top@  TDataSource	dtsCiudadDataSet	qryCiudadLeft� Top@  TDataSourceDtsOcupacionDataSetqryOcupacionLeftTop@  	TADOQueryQrySexo
ConnectionDataModule1.ADOComunes
CursorTypectStatic
Parameters SQL.Strings
Select *  from GESexoWHERE Estado = 'A' Left� Top TStringFieldQrySexoTIP_SEXO	FieldNameTIP_SEXOSize  TStringFieldQrySexoNOM_SEXO	FieldNameNOM_SEXOSize2  TStringFieldQrySexoEstado	FieldNameEstado	FixedChar	Size   TDataSourceDtsSexoDataSetQrySexoLeft� Top@  	TADOQueryqryEstadosCiviles
ConnectionDataModule1.ADOComunes
CursorTypectStatic
Parameters SQL.Strings
Select *  from GEEstados_CivilesWHERE Estado = 'A' LeftpTop TStringFieldqryEstadosCivilesCodigo	FieldNameCodigoSize  TStringFieldqryEstadosCivilesDescripcion	FieldNameDescripcionSize2  TStringFieldqryEstadosCivilesEstado	FieldNameEstado	FixedChar	Size   TDataSourceDtsEstadosCivilesDataSetqryEstadosCivilesLeftpTop@  	TADOQueryQryGrupoEtnico
ConnectionDataModule1.ADOConnection1
CursorTypectStatic
Parameters SQL.Strings	Select * from GEGrupoEtnicoWHERE Estado = 'A' Left(Topx TStringFieldQryGrupoEtnicoTIP_GRUPO	FieldName	TIP_GRUPOSize  TStringFieldQryGrupoEtnicoNOM_GRUPO	FieldName	NOM_GRUPOSize  TStringFieldQryGrupoEtnicoEstado	FieldNameEstado	FixedChar	Size   TDataSourceDtsGrupoEtnicoDataSetQryGrupoEtnicoLeft(Top�   	TADOQueryQryZona
ConnectionDataModule1.ADOConnection1
CursorTypectStatic
Parameters SQL.Strings
Select *  from GEZonaWHERE Estado = 'A' Left� Topx TStringFieldQryZonaTIP_ZONA	FieldNameTIP_ZONASize  TStringFieldQryZonaNOM_ZONA	FieldNameNOM_ZONASize  TStringFieldQryZonaEstado	FieldNameEstado	FixedChar	Size   TDataSourceDtsZonaDataSetQryZonaLeft� Top�   	TADOQuery
QryRegimen
ConnectionDataModule1.ADOConnection1
CursorTypectStatic
Parameters SQL.Strings
Select *  from GERegimenWHERE Estado = 'A' Left� Topx TStringFieldQryRegimenCOD_TIPO	FieldNameCOD_TIPOSize  TStringFieldQryRegimenNOM_TIPO	FieldNameNOM_TIPOSize  TStringFieldQryRegimenEstado	FieldNameEstado	FixedChar	Size   TDataSource
DtsRegimenDataSet
QryRegimenLeft� Top�   	TADOQueryQryTipoAfiliado
ConnectionDataModule1.ADOConnection1
CursorTypectStatic
Parameters SQL.Strings
Select *  from GETipoAfiliadoWHERE Estado = 'A' LeftTopx TStringFieldQryTipoAfiliadoCOD_TIPO	FieldNameCOD_TIPOSize  TStringFieldQryTipoAfiliadoNOM_TIPO	FieldNameNOM_TIPOSize  TStringFieldQryTipoAfiliadoEstado	FieldNameEstado	FixedChar	Size   TDataSourcedtsTipoAfiliadoDataSetQryTipoAfiliadoLeftTop�   	TADOQueryQryParentesco
ConnectionDataModule1.ADOComunes
CursorTypectStatic
Parameters SQL.Strings
Select *  from GEParentescoWHERE Estado = 'A' Left Top�  TStringFieldQryParentescoCOD_PARENTESCO	FieldNameCOD_PARENTESCOSize  TStringFieldQryParentescoNOM_PARENTESCO	FieldNameNOM_PARENTESCOSize2  TStringFieldQryParentescoEstado	FieldNameEstado	FixedChar	Size   TDataSourceDtsParentescoDataSetQryParentescoLeft Top   	TADOQueryQryTipodocumento
ConnectionDataModule1.ADOComunes
CursorTypectStatic
Parameters SQL.Strings
Select *  from GETipo_DocumentosWHERE Estado = 'A' LeftpTop�  TStringFieldQryTipodocumentoCOD_TIPO	FieldNameCOD_TIPOSize  TStringFieldQryTipodocumentoNOM_NOMBRE	FieldName
NOM_NOMBRESize2  TStringFieldQryTipodocumentoEstado	FieldNameEstado	FixedChar	Size   TDataSourceDtsTipodocumentoDataSetQryTipodocumentoLeftpTop   	TADOQueryQrytipoAdmision
ConnectionDataModule1.ADOConnection1
CursorTypectStatic
Parameters SQL.Strings
Select *  from SATiposAdmisionWHERE Estado = 'A' Left�Top�  TStringFieldQrytipoAdmisionCD_TIPO_ADMISION	FieldNameCD_TIPO_ADMISIONSize  TStringFieldQrytipoAdmisionDESCRIPCION	FieldNameDESCRIPCIONSize2  TStringFieldQrytipoAdmisionCD_PROD_CARGO	FieldNameCD_PROD_CARGO  TStringFieldQrytipoAdmisionESTADO	FieldNameESTADO	FixedChar	Size   TDataSourceDtstipoAdmisionDataSetQrytipoAdmisionLeft�Top   	TADOQuery
qryMedicos
ConnectionDataModule1.ADOConnection1
CursorTypectStatic
Parameters SQL.StringsSELECTTP_IDENT_MEDICO,>NR_IDENT_MEDICO,PRIMER_APELLIDO+'  ' +PRIMER_NOMBRE  AS NOMBREFROM SAMEDICOSWHERE Estado = 'A'DORDER BY PRIMER_APELLIDO,SEGUND_APELLIDO,PRIMER_NOMBRE,SEGUND_NOMBRE Left(Top�  TStringFieldqryMedicosTP_IDENT_MEDICO	FieldNameTP_IDENT_MEDICOSize  TStringFieldqryMedicosNR_IDENT_MEDICO	FieldNameNR_IDENT_MEDICOSize  TStringFieldqryMedicosNOMBRE	FieldNameNOMBREReadOnly	Size%   TDataSource
dtsmedicosDataSet
qryMedicosLeft(Top   	TADOQueryQryNacionalidad
ConnectionDataModule1.ADOComunes
CursorTypectStatic
Parameters SQL.Strings
Select *  from GENacionalidadWHERE Estado = 'A' LeftxTop�  TStringFieldQryNacionalidadCOD_NACIONALIDA	FieldNameCOD_NACIONALIDASize  TStringFieldQryNacionalidadNOM_NACIONALIAD	FieldNameNOM_NACIONALIADSize2  TStringFieldQryNacionalidadEstado	FieldNameEstado	FixedChar	Size   TDataSourceDtsNacionalidadDataSetQryNacionalidadLeftxTop   	TADOQuery
QryEgresos
ConnectionDataModule1.ADOConnection1
CursorTypectStatic
Parameters SQL.Strings
Select *  from GEEstadosWHERE Estado = 'A' Left� Top�  TStringFieldQryEgresosCD_Estado	FieldName	CD_EstadoSize  TStringFieldQryEgresosDS_Estado	FieldName	DS_EstadoSize  TStringFieldQryEgresosEstado	FieldNameEstado	FixedChar	Size   TDataSource
DtsEgresosDataSet
QryEgresosLeft� Top   	TADOQueryQryCamas
ConnectionDataModule1.ADOConnection1
CursorTypectStatic
ParametersNametipo
Attributes
paNullable DataTypeftWideStringNumericScale� 	Precision� Size�Value  Nameseccion
Attributes
paNullable DataTypeftWideStringNumericScale� 	Precision� Size�Value   SQL.Strings
Select *  from SACamasWHERE Estado = 'A' ANDCD_TIPO = :'tipo'and  CD_SECCION = :'seccion' Left� Top�  TStringFieldQryCamasCD_TIPO	FieldNameCD_TIPOSize  TStringFieldQryCamasCD_SECCION	FieldName
CD_SECCIONSize  TStringFieldQryCamasCD_CAMA	FieldNameCD_CAMASize  TStringFieldQryCamasNOM_CAMA	FieldNameNOM_CAMASize2  TStringFieldQryCamasESTADO_CAMA	FieldNameESTADO_CAMA	FixedChar	Size  TStringFieldQryCamasEXTENSION	FieldName	EXTENSIONSize  TStringFieldQryCamasCD_PROCEDIMIENTO	FieldNameCD_PROCEDIMIENTOSize  TStringFieldQryCamasEstado	FieldNameEstado	FixedChar	Size   TDataSourceDtsCamasDataSetQryCamasLeft� Top   	TADOQueryQrytipoconsulta
ConnectionDataModule1.ADOConnection1
CursorTypectStatic
Parameters SQL.Strings
Select *  from CITipos_CitasWHERE Estado = 'A' LeftTop�  TStringFieldQrytipoconsultaTIPO_CITA	FieldName	TIPO_CITASize2  TStringFieldQrytipoconsultaDESCRIPCION	FieldNameDESCRIPCIONSizeF  TIntegerFieldQrytipoconsultaDURACION	FieldNameDURACION  TStringFieldQrytipoconsultaEstado	FieldNameEstado	FixedChar	Size   TDataSourceDtstipoconsultaDataSetQrytipoconsultaLeftTop   	TADOQueryQryTipoCama
ConnectionDataModule1.ADOConnection1
CursorTypectStaticLockType
ltReadOnly
Parameters SQL.Strings
Select *  from GETiposCamaWHERE Estado = 'A' Left TopX TStringFieldQryTipoCamaCD_TIPO	FieldNameCD_TIPO	FixedChar	Size  TStringFieldQryTipoCamaDESCRIPCION	FieldNameDESCRIPCIONSize2  TStringFieldQryTipoCamaEstado	FieldNameEstado	FixedChar	Size   TDataSourceDtsTipoCamaDataSetQryTipoCamaLeft Top�  	TADOQueryQrySecciones
ConnectionDataModule1.ADOConnection1
CursorTypectStatic
Parameters SQL.Strings
Select *  from GESeccionesWHERE Estado = 'A'     Left`TopX TStringFieldQrySeccionesCD_SECCION	FieldName
CD_SECCION	FixedChar	Size  TStringFieldQrySeccionesDESCRIPCION	FieldNameDESCRIPCIONSize2  TStringFieldQrySeccionesEstado	FieldNameEstado	FixedChar	Size   TDataSourceDtsSeccionesDataSetQrySeccionesLeft`Top�  	TADOQueryQryAdmisiones
ConnectionDataModule1.ADOConnection1
CursorTypectStatic
ParametersNametipo
Attributes
paNullable DataTypeftWideStringNumericScale� 	Precision� Size�Value   SQL.Strings
Select *  from SAAdmisionesWHERE NO_ADMISION = :'tipo'     LeftXTop TStringFieldQryAdmisionesNO_ADMISION	FieldNameNO_ADMISIONSize  TDateTimeFieldQryAdmisionesFEC_ADMISION	FieldNameFEC_ADMISION  TStringFieldQryAdmisionesTP_ADMISION	FieldNameTP_ADMISION	FixedChar	Size  TStringFieldQryAdmisionesTP_IDENT_USUAR	FieldNameTP_IDENT_USUARSize  TStringFieldQryAdmisionesNR_IDENT_USUAR	FieldNameNR_IDENT_USUAR  TStringFieldQryAdmisionesUN_MEDIDA_EDAD	FieldNameUN_MEDIDA_EDAD	FixedChar	Size  TIntegerFieldQryAdmisionesVALOR_EDAD	FieldName
VALOR_EDAD  TStringFieldQryAdmisionesNO_CAMA	FieldNameNO_CAMASize  TStringFieldQryAdmisionesTP_IDENT_MEDICO	FieldNameTP_IDENT_MEDICOSize  TStringFieldQryAdmisionesNR_IDENT_MEDICO	FieldNameNR_IDENT_MEDICO  TStringFieldQryAdmisionesMEDICO_HOSPITAL	FieldNameMEDICO_HOSPITALSize  TStringFieldQryAdmisionesREMITIDO	FieldNameREMITIDO	FixedChar	Size  TStringFieldQryAdmisionesDEP_REMISION	FieldNameDEP_REMISIONSize  TStringFieldQryAdmisionesMUNICIPIO_REMISION	FieldNameMUNICIPIO_REMISIONSize  
TMemoFieldQryAdmisionesOBSERVACIONES	FieldNameOBSERVACIONESBlobTypeftMemo  TStringFieldQryAdmisionesEST_ADMINSION	FieldNameEST_ADMINSIONSize  TStringFieldQryAdmisionesTIP_CONSULTA	FieldNameTIP_CONSULTASize  TStringFieldQryAdmisionesTIP_SECCION	FieldNameTIP_SECCIONSize2  TStringFieldQryAdmisionesTIP_CONSULTORIO	FieldNameTIP_CONSULTORIOSize2  TStringFieldQryAdmisionesCOD_USUARIO	FieldNameCOD_USUARIOSize2  TDateTimeFieldQryAdmisionesFEC_INGRESO	FieldNameFEC_INGRESO  TStringFieldQryAdmisionesASEGURADORA	FieldNameASEGURADORA  TStringFieldQryAdmisionesNO_CONTRATO	FieldNameNO_CONTRATOSize  TStringFieldQryAdmisionesDIAGNOSTICO	FieldNameDIAGNOSTICOSize
  TStringFieldQryAdmisionesNo_Autorizacion	FieldNameNo_Autorizacion  TDateTimeFieldQryAdmisionesFEC_EGRESO	FieldName
FEC_EGRESO  TStringFieldQryAdmisionesDIAGN_P_EGRESO	FieldNameDIAGN_P_EGRESOSize
  TStringFieldQryAdmisionesDIAGN_E_REL1	FieldNameDIAGN_E_REL1Size
  TStringFieldQryAdmisionesDIAGN_E_REL2	FieldNameDIAGN_E_REL2Size
  TStringFieldQryAdmisionesDIAGN_E_REL3	FieldNameDIAGN_E_REL3Size
  TStringFieldQryAdmisionesDIAGN_COMPL	FieldNameDIAGN_COMPLSize
  TStringFieldQryAdmisionesDIAGN_MUERTE	FieldNameDIAGN_MUERTESize
  TStringFieldQryAdmisionesEST_SALIDA	FieldName
EST_SALIDA	FixedChar	Size  TStringFieldQryAdmisionesDIAGN_I_REL1	FieldNameDIAGN_I_REL1Size
  TStringFieldQryAdmisionesDIAGN_I_REL2	FieldNameDIAGN_I_REL2Size
  TStringFieldQryAdmisionesDIAGN_I_REL3	FieldNameDIAGN_I_REL3Size
  TStringFieldQryAdmisionesTP_DIAGN_PPAL	FieldNameTP_DIAGN_PPAL	FixedChar	Size  TStringFieldQryAdmisionesFINALIDAD_CONS	FieldNameFINALIDAD_CONSSize  TStringFieldQryAdmisionesCAUSA_EXTERNA	FieldNameCAUSA_EXTERNASize  TIntegerFieldQryAdmisionesRN_EDAD	FieldNameRN_EDAD  TStringFieldQryAdmisionesRN_CONTROL	FieldName
RN_CONTROL	FixedChar	Size  TIntegerFieldQryAdmisionesRN_PESO	FieldNameRN_PESO  TStringFieldQryAdmisionesRN_SEXO	FieldNameRN_SEXO	FixedChar	Size  TDateTimeFieldQryAdmisionesRN_FECNAC	FieldName	RN_FECNAC  TStringFieldQryAdmisionesMOTIVO_EGRESO	FieldNameMOTIVO_EGRESOSize  TStringFieldQryAdmisionesPROC_AMBITO	FieldNamePROC_AMBITO	FixedChar	Size  TStringFieldQryAdmisionesPROC_FINALIDAD	FieldNamePROC_FINALIDAD	FixedChar	Size  TStringFieldQryAdmisionesPROC_ATIENDE	FieldNamePROC_ATIENDE	FixedChar	Size  TStringFieldQryAdmisionesDESTINO_USUARIO	FieldNameDESTINO_USUARIO	FixedChar	Size  TStringFieldQryAdmisionesVIA_INGRESO	FieldNameVIA_INGRESO	FixedChar	Size  TStringFieldQryAdmisionesPROC_FORMA	FieldName
PROC_FORMA	FixedChar	Size  TStringFieldQryAdmisionesDURACION	FieldNameDURACION	FixedChar	Size  TStringFieldQryAdmisionesCENTRO_COSTO	FieldNameCENTRO_COSTO   TDataSourceDtsAdmisionesDataSetQryAdmisionesLeftXTop@  	TADOQueryQryPacientes
ConnectionDataModule1.ADOConnection1
CursorTypectStatic
ParametersNametipoDataTypeftWideStringNumericScale� 	Precision� SizeValue  NameNumeroDataTypeftWideStringNumericScale� 	Precision� SizeValue   SQL.Strings
Select *  from SAPacientesWHERE TP_IDENT_USUAR = :'tipo'and  NR_IDENT_USUAR = :'Numero' Left�Top TStringFieldQryPacientesNR_IDENT_USUAR	FieldNameNR_IDENT_USUAR  TStringFieldQryPacientesTP_IDENT_USUAR	FieldNameTP_IDENT_USUARSize  TStringFieldQryPacientesCCHISTORIA	FieldName
CCHISTORIASize2  TStringFieldQryPacientesPRIMER_APELLIDO	FieldNamePRIMER_APELLIDO  TStringFieldQryPacientesSEGUNDO_APELLIDO	FieldNameSEGUNDO_APELLIDO  TStringFieldQryPacientesPRIMER_NOMBRE	FieldNamePRIMER_NOMBRESize  TStringFieldQryPacientesSEGUNDO_NOMBRE	FieldNameSEGUNDO_NOMBRESize  TStringFieldQryPacientesTP_USUARIO	FieldName
TP_USUARIO	FixedChar	Size  TStringFieldQryPacientesTP_AFILIADO	FieldNameTP_AFILIADO	FixedChar	Size  TStringFieldQryPacientesOCUPACION	FieldName	OCUPACIONSize  TStringFieldQryPacientesGRUPO_AT_ESPECIAL	FieldNameGRUPO_AT_ESPECIAL	FixedChar	Size  TStringFieldQryPacientesSEXO	FieldNameSEXO	FixedChar	Size  TStringFieldQryPacientesLUGAR_NACIMIENT	FieldNameLUGAR_NACIMIENTSize  TStringFieldQryPacientesNACIONALIDAD	FieldNameNACIONALIDADSize  TStringFieldQryPacientesESTADO_CIVIL	FieldNameESTADO_CIVIL	FixedChar	Size  TStringFieldQryPacientesDIR_CASA_PACIEN	FieldNameDIR_CASA_PACIENSize  TStringFieldQryPacientesRESIDENCIA_HABITUAL	FieldNameRESIDENCIA_HABITUALSize  TStringFieldQryPacientesZONA_RESIDENCIA	FieldNameZONA_RESIDENCIA	FixedChar	Size  TStringFieldQryPacientesTEL_CASA_PACIEN	FieldNameTEL_CASA_PACIENSize  TStringFieldQryPacientesEMP_TRABAJO_PAC	FieldNameEMP_TRABAJO_PACSize  TStringFieldQryPacientesDIR_TRABAJO_PAC	FieldNameDIR_TRABAJO_PACSize  TStringFieldQryPacientesTEL_TRABAJO_PAC	FieldNameTEL_TRABAJO_PACSize  TStringFieldQryPacientesTP_CED_RESPONSA	FieldNameTP_CED_RESPONSASize  TStringFieldQryPacientesCEDULA_RESPONSA	FieldNameCEDULA_RESPONSASize  TStringFieldQryPacientesNOMBRE_RESPONDE	FieldNameNOMBRE_RESPONDESize  TStringFieldQryPacientesPARENTESCO_RESP	FieldNamePARENTESCO_RESPSize
  TStringFieldQryPacientesDIR_CASA_RESP	FieldNameDIR_CASA_RESPSize  TStringFieldQryPacientesTEL_CASA_RESP	FieldNameTEL_CASA_RESPSize  TStringFieldQryPacientesEMP_TRABAJO_RES	FieldNameEMP_TRABAJO_RESSize  TStringFieldQryPacientesDIR_TRABAJO_RES	FieldNameDIR_TRABAJO_RESSize  TStringFieldQryPacientesTEL_TRABAJO_RES	FieldNameTEL_TRABAJO_RESSize  TStringFieldQryPacientesNOMBRE_CONYUGUE	FieldNameNOMBRE_CONYUGUESize  TStringFieldQryPacientesEMP_TRABAJO_CYG	FieldNameEMP_TRABAJO_CYGSize  TStringFieldQryPacientesDIR_TRABAJO_CYG	FieldNameDIR_TRABAJO_CYGSize  TStringFieldQryPacientesTEL_TRABAJO_CYG	FieldNameTEL_TRABAJO_CYGSize  TStringFieldQryPacientesNOMBRE_MADRE	FieldNameNOMBRE_MADRESize  TStringFieldQryPacientesNOMBRE_PADRE	FieldNameNOMBRE_PADRESize  TStringFieldQryPacientesCOD_DEPARTAMENTO	FieldNameCOD_DEPARTAMENTOSize  TStringFieldQryPacientesCOD_MUNICIPIO	FieldNameCOD_MUNICIPIOSize  TDateTimeFieldQryPacientesFEC_NACIMINETO	FieldNameFEC_NACIMINETO  TStringFieldQryPacientesASEGURADORA	FieldNameASEGURADORA  TDateTimeFieldQryPacientesFEC_INGRESO	FieldNameFEC_INGRESO  TStringFieldQryPacientesCOD_USUARIO	FieldNameCOD_USUARIO  TStringFieldQryPacientesNO_POLIZA	FieldName	NO_POLIZASize2  TStringFieldQryPacientesEstado	FieldNameEstado	FixedChar	Size  
TBlobFieldQryPacientesFOTO_PACIENTE	FieldNameFOTO_PACIENTE  TStringFieldQryPacientesEMAIL	FieldNameEMAILSize2   TDataSourceDtsPacientesDataSetQryPacientesLeft�Top@  	TADOQueryQryAseguradora
ConnectionDataModule1.ADOConnection1
CursorTypectStatic
Parameters SQL.Strings
Select *  from GEAseguradorasWHERE Estado = 'A' AND  Clasificacion = 'EPS'Order BY Nom_EPS LefthTopx TStringFieldQryAseguradoraNUM_DOCUMENTO	FieldNameNUM_DOCUMENTO  TStringFieldQryAseguradoraNOM_EPS	FieldNameNOM_EPSSized  TDateTimeFieldQryAseguradoraFEC_INCLUSION	FieldNameFEC_INCLUSION  TStringFieldQryAseguradoraCOD_EPS	FieldNameCOD_EPSSize2  TStringFieldQryAseguradoraDIR_EPS	FieldNameDIR_EPSSize2  TStringFieldQryAseguradoraTEL_EPS	FieldNameTEL_EPSSize2  TStringFieldQryAseguradoraFAX_EPS	FieldNameFAX_EPSSize2  TStringFieldQryAseguradoraEML_EPS	FieldNameEML_EPSSize2  TStringFieldQryAseguradoraESTADO	FieldNameESTADO	FixedChar	Size  TStringFieldQryAseguradoraTIPO_TERCERO	FieldNameTIPO_TERCEROSize  TStringFieldQryAseguradoraClasificacion	FieldNameClasificacionSize   TDataSourceDtsAseguradorasDataSetQryAseguradoraLefthTop�   	TADOQueryQryRespnsable
ConnectionDataModule1.ADOConnection1
CursorTypectStatic
ParametersNameAdmisionDataTypeftStringSizeValue0  SQL.Strings
Select *  from SAAseguradora_por_AdmisionWHERE Estado = 'A' AND NO_ADMISION = :Admision Left(TopX  TDataSourceDtsRespnsableDataSetQryRespnsableLeft(Top�  	TADOQueryQryCitas
ConnectionDataModule1.ADOConnection1
CursorTypectStatic
ParametersNametipo
Attributes
paNullable DataTypeftWideStringNumericScale� 	Precision� Size�Value1 NameNumero
Attributes
paNullable DataTypeftWideStringNumericScale� 	Precision� Size�Value1 Nametipo1DataTypeftStringSizeValue1 NameNumero1DataTypeftStringSizeValue1 NameFECHADataType
ftDateTimeSizeValue      �? NameCONSULTADataTypeftStringSizeValue0  SQL.StringsSelect *  from CICitaswhere  TP_IDENT_USUAR =  :'tipo' and  NR_IDENT_USUAR =  :'Numero' AND  TP_IDENT_MEDICO =  :'tipo1'"and  NR_IDENT_MEDICO =  :'Numero1'AND FECHA = :'FECHA' AND TIPO_CONSULTA =  :'CONSULTA'             Left�Top TLargeintFieldQryCitasNumero	FieldNameNumeroReadOnly	  TStringFieldQryCitasTP_IDENT_MEDICO	FieldNameTP_IDENT_MEDICOSize  TStringFieldQryCitasNR_IDENT_MEDICO	FieldNameNR_IDENT_MEDICO  TDateTimeFieldQryCitasFECHA	FieldNameFECHA  TStringFieldQryCitasTP_IDENT_USUAR	FieldNameTP_IDENT_USUARSize  TStringFieldQryCitasNR_IDENT_USUAR	FieldNameNR_IDENT_USUAR  TStringFieldQryCitasNOMBRE_USUARIO	FieldNameNOMBRE_USUARIOSize�   TStringFieldQryCitasTIPO_CONSULTA	FieldNameTIPO_CONSULTASize2  TStringFieldQryCitasTIEMPO	FieldNameTIEMPOSize2  TStringFieldQryCitasNOTA	FieldNameNOTASize�   TStringFieldQryCitasCD_CAMA	FieldNameCD_CAMASize  TStringFieldQryCitasCD_SECCION	FieldName
CD_SECCIONSize  TStringFieldQryCitasCD_TIPO	FieldNameCD_TIPOSize  TStringFieldQryCitasJORNADA	FieldNameJORNADA	FixedChar	Size  TStringFieldQryCitasESTADO	FieldNameESTADO	FixedChar	Size  TFloatFieldQryCitasUsuario	FieldNameUsuario  TIntegerFieldQryCitasCumplida	FieldNameCumplida  
TMemoFieldQryCitasMotivoCancelacion	FieldNameMotivoCancelacionBlobTypeftMemo   TDataSourceDtsCitasDataSetQryCitasLeft�Top@  	TADOQueryQryDignosticos
ConnectionDataModule1.ADOComunes
CursorTypectStatic
Parameters SQL.Strings
Select *  from GEDiagnosticoswhere Estado = 'A'order by NOM_DIAGNSOTICO     Left�TopX TStringFieldQryDignosticosCOD_DIAGNOSTICO	FieldNameCOD_DIAGNOSTICOSize
  TStringFieldQryDignosticosNOM_DIAGNSOTICO	FieldNameNOM_DIAGNSOTICOSize�   TStringFieldQryDignosticosCOD_GRUPO	FieldName	COD_GRUPOSize2  TStringFieldQryDignosticosRANGO_SEXO	FieldName
RANGO_SEXOSize2  	TBCDFieldQryDignosticosEDA_MININA	FieldName
EDA_MININA	PrecisionSize   	TBCDFieldQryDignosticosEDA_MAXIMA	FieldName
EDA_MAXIMA	PrecisionSize   TStringFieldQryDignosticosESTADO	FieldNameESTADO	FixedChar	Size   TDataSourceDtsDignosticosDataSetQryDignosticosLeft�Top�  	TADOQueryQryPersonal
ConnectionDataModule1.ADOComunes
CursorTypectStaticLockType
ltReadOnly
Parameters SQL.Strings
Select *  from SEPersonasWHERE Estado = 'A'         Left� TopX TFloatFieldQryPersonalId	FieldNameId  TStringFieldQryPersonalPrimer_Apellido	FieldNamePrimer_ApellidoSize2  TStringFieldQryPersonalSegundo_Apellido	FieldNameSegundo_ApellidoSize2  TStringFieldQryPersonalNombres	FieldNameNombresSize2  TDateTimeFieldQryPersonalFecha_Nacimiento	FieldNameFecha_Nacimiento  TStringFieldQryPersonalLugar_Nacimiento	FieldNameLugar_NacimientoSize2  TStringFieldQryPersonalGenero	FieldNameGeneroSize2  
TBlobFieldQryPersonalFoto	FieldNameFoto  TStringFieldQryPersonalClave	FieldNameClaveSize2  TStringFieldQryPersonalCitas	FieldNameCitas	FixedChar	Size  TWideStringFieldQryPersonalCod_Departamento	FieldNameCod_DepartamentoSize  TWideStringFieldQryPersonalCod_Municipio	FieldNameCod_MunicipioSize  TStringFieldQryPersonalDireccion_Residencia	FieldNameDireccion_ResidenciaSize�  TStringFieldQryPersonalTelefono_Residencia	FieldNameTelefono_Residencia  TStringFieldQryPersonalCelular	FieldNameCelular  TStringFieldQryPersonalEmail	FieldNameEmailSized  TStringFieldQryPersonalEstado	FieldNameEstado	FixedChar	Size   TDataSourceDtsPersonalDataSetQryPersonalLeft� Top�  	TADOQueryQryProductos
ConnectionDataModule1.ADOConnection1
CursorTypectStatic
Parameters SQL.Strings
Select *  from INPRODUCTOSWHERE Estado = 'A' LeftTop TStringFieldQryProductosCD_PRODUCTO	FieldNameCD_PRODUCTO  TStringFieldQryProductosCD_PRODUCTOBARRA	FieldNameCD_PRODUCTOBARRA  TStringFieldQryProductosDESCRIPCION	FieldNameDESCRIPCIONSize�   TStringFieldQryProductosDETALLE	FieldNameDETALLESize�   TStringFieldQryProductosCD_GRUPO	FieldNameCD_GRUPO  TStringFieldQryProductosCD_SUBGRUPO	FieldNameCD_SUBGRUPO  TIntegerFieldQryProductosCOSTO_PROM_PESOS	FieldNameCOSTO_PROM_PESOS  TIntegerFieldQryProductosCOSTO_PROM_EXTR	FieldNameCOSTO_PROM_EXTR  TIntegerFieldQryProductosULT_COSTO_PESOS	FieldNameULT_COSTO_PESOS  TIntegerFieldQryProductosULT_COSTO_EXTR	FieldNameULT_COSTO_EXTR  TIntegerFieldQryProductosPRECIO_VENTA_PESOS	FieldNamePRECIO_VENTA_PESOS  TIntegerFieldQryProductosPRECIO_VENTA_EXTR	FieldNamePRECIO_VENTA_EXTR  TIntegerFieldQryProductosSTOCK_MIN	FieldName	STOCK_MIN  TIntegerFieldQryProductosSTOCK_MAX	FieldName	STOCK_MAX  TDateTimeFieldQryProductosFEC_ULT_COMPRA	FieldNameFEC_ULT_COMPRA  TDateTimeFieldQryProductosFEC_ULT_VENTA	FieldNameFEC_ULT_VENTA  TIntegerFieldQryProductosCOD_COMISION	FieldNameCOD_COMISION  TStringFieldQryProductosNOM_GENERICO	FieldNameNOM_GENERICOSize2  TStringFieldQryProductosLABORATORIO	FieldNameLABORATORIOSize2  TIntegerFieldQryProductosREG_INVIMA	FieldName
REG_INVIMA  TStringFieldQryProductosREG_SANIDAD	FieldNameREG_SANIDADSize2  TIntegerFieldQryProductosCOD_UNIDAD_EMP	FieldNameCOD_UNIDAD_EMP  TStringFieldQryProductosFormaFarmaceutica	FieldNameFormaFarmaceuticaSize2  TStringFieldQryProductosconcentracion	FieldNameconcentracionSize2  TStringFieldQryProductosUnidadMedida	FieldNameUnidadMedidaSize2  TStringFieldQryProductosUnidadEmpaque	FieldNameUnidadEmpaqueSize2  TStringFieldQryProductosMarca	FieldNameMarcaSize2  TStringFieldQryProductosPOSC	FieldNamePOSC	FixedChar	Size  TStringFieldQryProductosPOSS	FieldNamePOSS	FixedChar	Size  TStringFieldQryProductosPARTICULAR	FieldName
PARTICULAR	FixedChar	Size  TStringFieldQryProductosINVENTARIO	FieldName
INVENTARIO	FixedChar	Size  TStringFieldQryProductosTabla	FieldNameTablaSize2  TStringFieldQryProductosTipo	FieldNameTipo	FixedChar	Size  TStringFieldQryProductosESTADO	FieldNameESTADO	FixedChar	Size  TStringFieldQryProductosTIPO_RIESGO	FieldNameTIPO_RIESGOSize  TStringFieldQryProductosPrincipio_Activo	FieldNamePrincipio_ActivoSize2  TStringField"QryProductosPresentacion_Comencial	FieldNamePresentacion_ComencialSize2  TStringFieldQryProductosVida_Util	FieldName	Vida_UtilSize2   TDataSourceDtsProductosDataSetQryProductosLeftTop@  TDataSourceDTSConveniosDataSetADOQueryConveniosLeft�Top�   	TADOQueryADOQueryConvenios
ConnectionDataModule1.ADOConnection1
CursorTypectStatic
Parameters SQL.Strings�SELECT DISTINCT Aseguradora,No_Contrato,CONTTerce.Primer_Apellido+' '+CONTTerce.Primer_Nombre + ' Contrato: ' + No_Contrato As Descripcion,Aseguradora+No_Contrato as key2FROM FAConvenios,CONTTerceVWHERE  FAConvenios.Aseguradora = (CONTTerce.Numero_Documento + CONTTerce.Sucursal)AND +               FAConvenios.Estado = 'A' AND*               CONTTerce.Estado = 'A' AND 6               NOT CONTTerce.Primer_Nombre is NULL ANDB               getdate() >= fecha_Ini  AND getdate() <= fecha_Fin ORDER BY descripcion Left�Topx TStringFieldADOQueryConveniosAseguradora	FieldNameAseguradora  TStringFieldADOQueryConveniosNo_Contrato	FieldNameNo_ContratoSize  TStringFieldADOQueryConveniosDescripcion	FieldNameDescripcionReadOnly	Size�   TStringFieldADOQueryConvenioskey2	FieldNamekey2ReadOnly	Size-   TDataSourceDtsTipoDoc2DataSetQryTipoDoc2Left�Top`  	TADOQueryQryTipoDoc2
ConnectionDataModule1.ADOComunes
CursorTypectStatic
Parameters SQL.Strings
Select *  from GETipo_DocumentosWHERE Estado = 'A' Left�Top� TStringFieldStringField1	FieldNameCOD_TIPOSize  TStringFieldStringField2	FieldName
NOM_NOMBRESize2  TStringFieldStringField3	FieldNameEstado	FixedChar	Size   	TADOQueryQryEmpresas
ConnectionDataModule1.ADOConnection1
CursorTypectStatic
ParametersNametipoSize�Value  NameNumeroSize�Value   SQL.Strings
SELECT *  FROM SEEmpresas#WHERE  Tp_Documento = :'tipo' and        Nr_Documento = :'Numero' Left Top�  TDataSource
DSEmpresasDataSetQryEmpresasLeft Top�  	TADOQueryqryGE_DepartamentosN
ConnectionDataModule1.ADOConnection1
CursorTypectStatic
ParametersNameCDPaisDataTypeftStringNumericScale� 	Precision� SizeValue   SQL.Strings	Select * from GEDepartamentosWHERE Estado = 'A' AND              CD_Pais = :CDPaisOrder BY DS_Departamento LeftPTopx  TDataSourcedtsGE_DepartamentosNDataSetqryGE_DepartamentosNLeftPTop�   	TADOQuery
qryCiudadN
ConnectionDataModule1.ADOConnection1
CursorTypectStatic
ParametersNameCD_DepartamentoDataTypeftStringNumericScale� 	Precision� SizeValue  NameCDPaisDataTypeftStringNumericScale� 	Precision� SizeValue   SQL.Strings	Select * from GEMunicipiosWHERE Estado = 'A' AND5              CD_Departamento  = :CD_Departamento AND              CD_Pais = :CDPaisOrder BY DS_Municipio Left�Topx  TDataSource
dtsCiudadNDataSet
qryCiudadNLeft�Top�   	TADOQueryQPaises
ConnectionDataModule1.ADOConnection1
CursorTypectStatic
Parameters SQL.Strings	Select * from GEPaisesWHERE Estado = 'A' Order BY Nombre Left� TopP  	TADOQueryQPaisesN
ConnectionDataModule1.ADOConnection1
CursorTypectStatic
Parameters SQL.Strings	Select * from GEPaisesWHERE Estado = 'A' Order BY Nombre LeftTopP  TDataSource	DSPaisesNDataSetQPaisesNLeftTop�  TDataSourceDSPaisesDataSetQPaisesLeft� Top�   