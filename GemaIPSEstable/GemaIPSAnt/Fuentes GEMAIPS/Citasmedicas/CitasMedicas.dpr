program CitasMedicas;

uses
  Forms,
  FAgendaMedica in 'FAgendaMedica.pas' {FAgenda},
  FCitasDia in 'FCitasDia.pas' {CitasDia},
  MAIN in 'MAIN.PAS' {MainForm},
  about in '..\..\..\ColossoLittle\Fuentes\Comunes\about.pas' {AboutBox},
  CapturaBasicaSelect in '..\..\..\ColossoLittle\Fuentes\Comunes\CapturaBasicaSelect.pas' {CapturaBasicaS},
  ImportaPlanos in '..\..\..\ColossoLittle\Fuentes\Comunes\ImportaPlanos.pas' {ImportPlano},
  Reporteador in '..\..\..\ColossoLittle\Fuentes\Comunes\Reporteador.pas' {GenReport},
  UDataModule1 in '..\..\..\ColossoLittle\Fuentes\Comunes\UDataModule1.pas' {DataModule1: TDataModule},
  FComprobantesVarios in '..\..\..\ColossoLittle\Fuentes\Contabilidad\FComprobantesVarios.pas' {ComprobantesVarios},
  FComprobanteEgreso in '..\..\..\ColossoLittle\Fuentes\Contabilidad\FComprobanteEgreso.pas' {ComprobanteEgreso},
  ModuloAdmision in '..\Admisiones\ModuloAdmision.pas' {DatamoduloAdmision: TDataModule},
  SAPAcientesShort in '..\Admisiones\SAPAcientesShort.pas' {FrmIngresoPacientesShort},
  UnitReprogramar in 'UnitReprogramar.pas' {FrmReprogramar},
  UnitBuscarCitasCumplidas in 'UnitBuscarCitasCumplidas.pas' {FrmBuscaCitasCumplidas},
  CapturaBasica2 in '..\..\..\ColossoLittle\Fuentes\Comunes\CapturaBasica2.pas' {CapturaB2},
  FActivarInactivar in '..\..\..\ColossoLittle\Fuentes\Comunes\FActivarInactivar.pas' {FrmAI},
  CapturaBasica3 in '..\..\..\ColossoLittle\Fuentes\Comunes\CapturaBasica3.pas' {CapturaB3},
  Lista_Tablas2 in '..\..\..\ColossoLittle\Fuentes\Comunes\Lista_Tablas2.pas' {FListadoTablasCol},
  CensoUbicaciones in '..\Admisiones\CensoUbicaciones.pas' {FCenso},
  ProgramacionAutomatica in 'ProgramacionAutomatica.pas' {ProgAuto},
  FrameListaTabla2 in '..\..\..\ColossoLittle\Fuentes\Comunes\FrameListaTabla2.pas' {ListaCol: TFrame},
  FrameMenuOpcion in '..\..\..\ColossoLittle\Fuentes\Comunes\FrameMenuOpcion.pas' {FrameMnOp: TFrame},
  ImprimeFormato in '..\..\..\ColossoLittle\Fuentes\Comunes\ImprimeFormato.pas' {ImpFormato},
  SACreaEmpresas in '..\..\..\ColossoLittle\Fuentes\Comunes\SACreaEmpresas.pas' {FrmIngresoEmpresas},
  CapturaBasica in '..\..\..\ColossoLittle\Fuentes\Comunes\CapturaBasica.pas' {CapturaB},
  FAsignaCapitulo in '..\Facturacion\FAsignaCapitulo.pas' {FrmAsignaCapitulo},
  FCrearConvenio in '..\Facturacion\FCrearConvenio.pas' {FormCreaConvenios},
  SAPAcientes2 in '..\Admisiones\SAPAcientes2.pas' {FrmIngresoPacientes},
  Libreria_Prateinco in '..\..\..\ColossoLittle\Fuentes\Comunes\Librerias\Libreria_Prateinco.pas',
  SEIngreso in '..\..\..\ColossoLittle\Fuentes\Menu\SEIngreso.pas' {FIngreso},
  ImportaPlanosPaci in '..\Admisiones\ImportaPlanosPaci.pas' {ImportPlanoAdmi},
  Vcl.Themes,
  Vcl.Styles,
  WebCam in '..\..\..\ColossoLittle\Fuentes\Comunes\WebCam.pas',
  WebCamForm in '..\..\..\ColossoLittle\Fuentes\Comunes\WebCamForm.pas' {WebCamF},
  VerificaHuella in '..\Sistema Medico\VerificaHuella.pas' {FVHuella},
  UingresosAdmisiones in '..\Admisiones\UingresosAdmisiones.pas' {frmAdminsiones},
  Libreria_PrateincoForm in '..\..\..\ColossoLittle\Fuentes\Comunes\Librerias\Libreria_PrateincoForm.pas',
  FHojaAdmision in '..\Admisiones\FHojaAdmision.pas' {FrmHojaAdmision},
  UnitCitasDiarias in '..\Admisiones\UnitCitasDiarias.pas' {FrmCitasDiarias},
  UAdmisiones in '..\Admisiones\UAdmisiones.pas' {frmAdmisiones},
  UnitBusquedas in '..\Admisiones\UnitBusquedas.pas' {FrmBusquedas},
  SAEgresos in '..\Admisiones\SAEgresos.pas' {frmEgresos},
  FImpSolicitud in '..\Control de Cargos\FImpSolicitud.pas' {ImpSolicitud};

{$R *.res}

begin
  Application.Initialize;
  //TStyleManager.TrySetStyle('Amakrits');
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TDatamoduloAdmision, DatamoduloAdmision);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
