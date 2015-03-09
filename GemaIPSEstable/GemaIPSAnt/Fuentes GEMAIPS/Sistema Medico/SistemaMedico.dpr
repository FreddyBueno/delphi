program SistemaMedico;

uses
  Forms,
  MAIN in 'MAIN.PAS' {MainForm},
  ModuloAdmision in '..\Admisiones\ModuloAdmision.pas' {DatamoduloAdmision: TDataModule},
  about in '..\..\..\ColossoLittle\Fuentes\Comunes\about.pas' {AboutBox},
  CHILDWIN in '..\..\..\ColossoLittle\Fuentes\Comunes\CHILDWIN.PAS' {MDIChild},
  ImportaPlanos in '..\..\..\ColossoLittle\Fuentes\Comunes\ImportaPlanos.pas' {ImportPlano},
  Reporteador in '..\..\..\ColossoLittle\Fuentes\Comunes\Reporteador.pas' {GenReport},
  Circular30 in 'Circular30.pas' {FCirc30},
  SAPAcientesShort in '..\Admisiones\SAPAcientesShort.pas' {FrmIngresoPacientesShort},
  CapturaBasica2 in '..\..\..\ColossoLittle\Fuentes\Comunes\CapturaBasica2.pas' {CapturaB2},
  CreaFormatoD in 'CreaFormatoD.pas' {FCreacionFormatosD},
  FFormatosxPersona in 'FFormatosxPersona.pas' {FormFmtoxPersona},
  FActivarInactivar in '..\..\..\ColossoLittle\Fuentes\Comunes\FActivarInactivar.pas' {FrmAI},
  Lista_Tablas2 in '..\..\..\ColossoLittle\Fuentes\Comunes\Lista_Tablas2.pas' {FListadoTablasCol},
  Libreria_Prateinco in '..\..\..\ColossoLittle\Fuentes\Comunes\Librerias\Libreria_Prateinco.pas',
  FrameListaTabla2 in '..\..\..\ColossoLittle\Fuentes\Comunes\FrameListaTabla2.pas' {ListaCol: TFrame},
  FrameMenuOpcion in '..\..\..\ColossoLittle\Fuentes\Comunes\FrameMenuOpcion.pas' {FrameMnOp: TFrame},
  ImprimeFormato in '..\..\..\ColossoLittle\Fuentes\Comunes\ImprimeFormato.pas' {ImpFormato},
  SACreaEmpresas in '..\..\..\ColossoLittle\Fuentes\Comunes\SACreaEmpresas.pas' {FrmIngresoEmpresas},
  CapturaBasica in '..\..\..\ColossoLittle\Fuentes\Comunes\CapturaBasica.pas' {CapturaB},
  Libreria_PrateincoForm in '..\..\..\ColossoLittle\Fuentes\Comunes\Librerias\Libreria_PrateincoForm.pas',
  CapturaBasicaSelect in '..\..\..\ColossoLittle\Fuentes\Comunes\CapturaBasicaSelect.pas' {CapturaBasicaS},
  SAPAcientes2 in '..\Admisiones\SAPAcientes2.pas' {FrmIngresoPacientes},
  GemaPaint in '..\..\..\ColossoLittle\Fuentes\Comunes\GemaPaint.pas' {FrmPaint},
  WebCam in '..\..\..\ColossoLittle\Fuentes\Comunes\WebCam.pas',
  WebCamForm in '..\..\..\ColossoLittle\Fuentes\Comunes\WebCamForm.pas' {WebCamF},
  UCopiaFormatos in 'UCopiaFormatos.pas' {FCopiaFMT},
  SEIngreso in '..\..\..\ColossoLittle\Fuentes\Menu\SEIngreso.pas' {FIngreso},
  UDataModule1 in '..\..\..\ColossoLittle\Fuentes\Comunes\UDataModule1.pas' {DataModule1: TDataModule},
  FImprimeFormato2 in '..\Admisiones\FImprimeFormato2.pas' {FImprimeFmto2},
  FImprimeFormato in '..\Admisiones\FImprimeFormato.pas' {FImprimeFmto},
  ImportaPlanosPaci in '..\Admisiones\ImportaPlanosPaci.pas' {ImportPlanoAdmi},
  Vcl.Themes,
  Vcl.Styles,
  FListadoPacientes in '..\Admisiones\FListadoPacientes.pas' {FrmProcFormatos},
  GrabaRips in '..\Rips\GrabaRips.pas' {FormGrabaRIPS},
  SAEgresos in '..\Admisiones\SAEgresos.pas' {frmEgresos},
  VerificaHuella in 'VerificaHuella.pas' {FVHuella},
  FSolicitud in '..\Control de Cargos\FSolicitud.pas' {FSolicitaCargo},
  FImpSolicitud in '..\Control de Cargos\FImpSolicitud.pas' {ImpSolicitud},
  FCargos in '..\Control de Cargos\FCargos.pas' {FCapturaCargo},
  FImpBoleta in '..\Control de Cargos\FImpBoleta.pas' {ImpBoleta},
  FFormImpCargo in '..\Control de Cargos\FFormImpCargo.pas' {FormImpCargo},
  frmproductos in '..\..\..\ColossoLittle\Fuentes\Inventarios\frmproductos.pas' {Productos},
  FProdxArea in '..\Facturacion\FProdxArea.pas' {FrmProdxArea},
  FCrearConvenio in '..\Facturacion\FCrearConvenio.pas' {FormCreaConvenios},
  fKardex in '..\..\..\ColossoLittle\Fuentes\Inventarios\fKardex.pas' {Kardex},
  FImpriTransacc in '..\..\..\ColossoLittle\Fuentes\Inventarios\FImpriTransacc.pas' {FormImpInventa},
  FAsignaGrupo in '..\Facturacion\FAsignaGrupo.pas' {FrmAsignaGrupo},
  frmGrupos in '..\..\..\ColossoLittle\Fuentes\Inventarios\frmGrupos.pas' {Grupos},
  FrmCalculoTarifa in '..\Control de Cargos\FrmCalculoTarifa.pas' {FCalculoTarifa},
  ActLote in '..\Inventarios\ActLote.pas' {ActualizacionInvent},
  frmAnulacion in '..\..\..\ColossoLittle\Fuentes\Inventarios\frmAnulacion.pas' {FAnula},
  RecalculaSaldo in '..\..\..\ColossoLittle\Fuentes\Inventarios\RecalculaSaldo.pas' {RegeneraSaldos},
  FrmAsignaHomo in '..\Facturacion\FrmAsignaHomo.pas' {frmAsignaHomologa},
  FElimSolicitud in '..\Facturacion\FElimSolicitud.pas' {EliminaCargo},
  fAdmisionesActivas in 'fAdmisionesActivas.pas' {frmAdmisionesActivas},
  GrProg in 'GrProg.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDatamoduloAdmision, DatamoduloAdmision);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
