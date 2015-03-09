program Contabilidad;

uses
  Forms,
  FAnulaComp in '..\..\..\ColossoLittle\Fuentes\Contabilidad\FAnulaComp.pas' {FormAnulaComp},
  FPyGTercero in 'FPyGTercero.pas' {FormPyGTercero},
  FComprobanteEgreso in '..\..\..\ColossoLittle\Fuentes\Contabilidad\FComprobanteEgreso.pas' {ComprobanteEgreso},
  FComprobantesVarios in '..\..\..\ColossoLittle\Fuentes\Contabilidad\FComprobantesVarios.pas' {ComprobantesVarios},
  fcontabilidad2 in '..\..\..\ColossoLittle\Fuentes\Contabilidad\fcontabilidad2.pas' {FormConsultaCierres},
  fcontabilidad4 in '..\..\..\ColossoLittle\Fuentes\Contabilidad\fcontabilidad4.pas' {FConsultaCompr},
  fcontabilidad5 in '..\..\..\ColossoLittle\Fuentes\Contabilidad\fcontabilidad5.pas' {FormConsultaSaldos},
  fcontabilidad6 in '..\..\..\ColossoLittle\Fuentes\Contabilidad\fcontabilidad6.pas' {FormGraf1},
  Fcontabilidad8 in '..\..\..\ColossoLittle\Fuentes\Contabilidad\Fcontabilidad8.pas' {FormCentrosCosto},
  Fcontabilidad9 in '..\..\..\ColossoLittle\Fuentes\Contabilidad\Fcontabilidad9.pas' {FormTiposComp},
  Fcontabilidad11 in '..\..\..\ColossoLittle\Fuentes\Contabilidad\Fcontabilidad11.pas' {FormPlanCta},
  FcontTipoTerc in '..\..\..\ColossoLittle\Fuentes\Contabilidad\FcontTipoTerc.pas' {FormTipoTerc},
  FDigitaliza in '..\..\..\ColossoLittle\Fuentes\Contabilidad\FDigitaliza.pas' {FormDigitaliza},
  Ffactura1 in '..\..\..\ColossoLittle\Fuentes\Contabilidad\Ffactura1.pas' {FormImpComp},
  FLibroAuxiliar in '..\..\..\ColossoLittle\Fuentes\Contabilidad\FLibroAuxiliar.pas' {FrmLibroAuxiliar},
  FLibroDiario in '..\..\..\ColossoLittle\Fuentes\Contabilidad\FLibroDiario.pas' {FrmLibro_Diario},
  FAuxiliarCta in 'FAuxiliarCta.pas' {FrmLibroAuxiliarxCta},
  CapturaBasicaSelect in '..\..\..\ColossoLittle\Fuentes\Comunes\CapturaBasicaSelect.pas' {CapturaBasicaS},
  Reporteador in '..\..\..\ColossoLittle\Fuentes\Comunes\Reporteador.pas' {GenReport},
  UDataModule1 in '..\..\..\ColossoLittle\Fuentes\Comunes\UDataModule1.pas' {DataModule1: TDataModule},
  CHILDWIN in '..\..\..\ColossoLittle\Fuentes\Comunes\CHILDWIN.PAS' {MDIChild},
  about in '..\..\..\ColossoLittle\Fuentes\Comunes\about.pas' {AboutBox},
  MAIN in 'MAIN.pas' {MainForm},
  HomologaPaqueteVsPush in 'HomologaPaqueteVsPush.pas' {HomologaPaquetePush},
  ImportaPlanos in '..\..\..\ColossoLittle\Fuentes\Comunes\ImportaPlanos.pas' {ImportPlano},
  ConsultaComp in 'ConsultaComp.pas' {FormCapturaComp},
  FTableroContable in 'FTableroContable.pas' {FTabContables},
  HomologaCupsVsPush in 'HomologaCupsVsPush.pas' {HomologaCupPush},
  FBalancePrueba in 'FBalancePrueba.pas' {FrmLibroBalancePrueba},
  FDiarioTipoyCta in 'FDiarioTipoyCta.pas' {FrmLibroDiarioResum},
  FAuxiliarCtaTercero in 'FAuxiliarCtaTercero.pas' {FrmLibroAuxiliarCtaTercero},
  FAuxiliarTercero in 'FAuxiliarTercero.pas' {FrmLibroAuxiliarTercero},
  FAuxiliarTerceroCta in 'FAuxiliarTerceroCta.pas' {FrmLibroAuxiliarTerceroCta},
  FAuxiliarTipoComp in 'FAuxiliarTipoComp.pas' {FrmLibroAuxiliarxTipoComp},
  FTableroContableTercero in 'FTableroContableTercero.pas' {FTabContablesTercero},
  FConceptosxTipo in 'FConceptosxTipo.pas' {FConcexTipo},
  FAuxiliarCtaTipoComp in 'FAuxiliarCtaTipoComp.pas' {FrmLibroAuxiliarxCtaTipoComp},
  FAuxiliarCtaResumen in 'FAuxiliarCtaResumen.pas' {FrmLibroAuxiliarxCtaResumen},
  FExtractos in 'FExtractos.pas' {FormExtracto},
  Fcontabilidad7 in '..\..\..\ColossoLittle\Fuentes\Contabilidad\Fcontabilidad7.pas' {FormAjusteSaldos},
  FContabCaja in 'FContabCaja.pas' {FrmContabFacturacion},
  FContabFacturacion in 'FContabFacturacion.pas' {FrmContabCaj},
  frmGrupos in '..\..\..\ColossoLittle\Fuentes\Inventarios\frmGrupos.pas' {Grupos},
  FCapitulos in '..\Facturacion\FCapitulos.pas' {FrmCapitulos},
  Factura13 in '..\..\..\ColossoLittle\Fuentes\Facturacion\Factura13.pas' {Form13},
  FCajaFormato in '..\..\..\ColossoLittle\Fuentes\Control de Caja\FCajaFormato.pas' {CajaFormato},
  FConfirma in '..\..\..\ColossoLittle\Fuentes\Contabilidad\FConfirma.pas' {FrmConfirma},
  UnitBuscaComprobante in 'UnitBuscaComprobante.pas' {FrmBuscarComprobante},
  UnitPrivilegios in '..\..\..\ColossoLittle\Fuentes\Administracion\UnitPrivilegios.pas' {FrmPrivilegios},
  ImportaPlanosContable in 'ImportaPlanosContable.pas' {ImportPlanoContable},
  FConsolidar in 'FConsolidar.pas' {FormConsolidar},
  FInventariosBalance in 'FInventariosBalance.pas' {FrmLibroInventariosBalance},
  UnitPresupuestoM in 'UnitPresupuestoM.pas' {FrmPresupuestoM},
  UnitInformePresupuestoM in 'UnitInformePresupuestoM.pas' {FrmInformePresupuestoM},
  CapturaBasica2 in '..\..\..\ColossoLittle\Fuentes\Comunes\CapturaBasica2.pas' {CapturaB2},
  UnitCarteraContable in 'UnitCarteraContable.pas' {FrmCarteraContable},
  ModuloAdmision in '..\Admisiones\ModuloAdmision.pas' {DatamoduloAdmision: TDataModule},
  FListDocSoporte in 'FListDocSoporte.pas' {FListDocSop},
  UnitDetalleComprobantes in 'UnitDetalleComprobantes.pas' {FrmDetalleComprobantes},
  FAuxiliarCtaTercero2 in 'FAuxiliarCtaTercero2.pas' {FrmLibroAuxiliarCtaTercero2},
  FActivarInactivar in '..\..\..\ColossoLittle\Fuentes\Comunes\FActivarInactivar.pas' {FrmAI},
  FCreaTerceros in 'FCreaTerceros.pas' {FrmCrearTerceros},
  FImpresionFactura in '..\Facturacion\FImpresionFactura.pas' {FImprimeFactura},
  CapturaBasica3 in '..\..\..\ColossoLittle\Fuentes\Comunes\CapturaBasica3.pas' {CapturaB3},
  Lista_Tablas2 in '..\..\..\ColossoLittle\Fuentes\Comunes\Lista_Tablas2.pas' {FListadoTablasCol},
  FrameListaTabla2 in '..\..\..\ColossoLittle\Fuentes\Comunes\FrameListaTabla2.pas' {ListaCol: TFrame},
  FrameMenuOpcion in '..\..\..\ColossoLittle\Fuentes\Comunes\FrameMenuOpcion.pas' {FrameMnOp: TFrame},
  ImprimeFormato in '..\..\..\ColossoLittle\Fuentes\Comunes\ImprimeFormato.pas' {ImpFormato},
  SACreaEmpresas in '..\..\..\ColossoLittle\Fuentes\Comunes\SACreaEmpresas.pas' {FrmIngresoEmpresas},
  SAPAcientesShort in '..\Admisiones\SAPAcientesShort.pas' {FrmIngresoPacientesShort},
  CapturaBasica in '..\..\..\ColossoLittle\Fuentes\Comunes\CapturaBasica.pas' {CapturaB},
  SAPAcientes2 in '..\Admisiones\SAPAcientes2.pas' {FrmIngresoPacientes},
  FPyGPeriodo in 'FPyGPeriodo.pas' {FormPyGBimestre},
  FPyG in 'FPyG.pas' {FormPyG},
  FBalancePrueba2 in 'FBalancePrueba2.pas' {FrmLibroBalancePrueba2},
  FAsignaGrupo in '..\Facturacion\FAsignaGrupo.pas' {FrmAsignaGrupo},
  FBMsgWait in '..\..\..\ColossoLittle\Fuentes\Comunes\Librerias\FBMsgWait.pas' {PrateincoMsgWait},
  Libreria_Prateinco in '..\..\..\ColossoLittle\Fuentes\Comunes\Librerias\Libreria_Prateinco.pas',
  Libreria_PrateincoForm in '..\..\..\ColossoLittle\Fuentes\Comunes\Librerias\Libreria_PrateincoForm.pas',
  DelphiTwain in '..\..\..\Componentes\Digitalizacion\delphitwain\DelphiTwain.pas',
  DelphiTwainUtils in '..\..\..\Componentes\Digitalizacion\delphitwain\DelphiTwainUtils.pas',
  Twain in '..\..\..\Componentes\Digitalizacion\delphitwain\Twain.pas',
  SEIngreso in '..\..\..\ColossoLittle\Fuentes\Menu\SEIngreso.pas' {FIngreso},
  ImportaPlanosPaci in '..\Admisiones\ImportaPlanosPaci.pas' {ImportPlanoAdmi},
  Vcl.Themes,
  Vcl.Styles,
  WebCam in '..\..\..\ColossoLittle\Fuentes\Comunes\WebCam.pas',
  WebCamForm in '..\..\..\ColossoLittle\Fuentes\Comunes\WebCamForm.pas' {WebCamF};

{$R *.res}

begin
  Application.Initialize;
  TStyleManager.TrySetStyle('Amakrits');
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TDatamoduloAdmision, DatamoduloAdmision);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
