program ControlRips;

uses
  Forms,
  Factura13 in '..\..\..\ColossoLittle\Fuentes\Inventarios\Factura13.pas' {Form13},
  fContabilidad6 in '..\..\..\ColossoLittle\Fuentes\Inventarios\fContabilidad6.pas' {Form6},
  FFacturacion1 in '..\..\..\ColossoLittle\Fuentes\Inventarios\FFacturacion1.pas' {Transacciones},
  fKardex in '..\..\..\ColossoLittle\Fuentes\Inventarios\fKardex.pas' {Kardex},
  frmGrupos in '..\..\..\ColossoLittle\Fuentes\Inventarios\frmGrupos.pas' {Grupos},
  frmservicios in '..\Admisiones\frmservicios.pas' {Servicios},
  RecalculaSaldo in '..\..\..\ColossoLittle\Fuentes\Inventarios\RecalculaSaldo.pas' {RegeneraSaldos},
  Uexcel in '..\..\..\ColossoLittle\Fuentes\Comunes\Uexcel.pas',
  about in '..\..\..\ColossoLittle\Fuentes\Comunes\about.pas' {AboutBox},
  CapturaBasicaSelect in '..\..\..\ColossoLittle\Fuentes\Comunes\CapturaBasicaSelect.pas' {CapturaBasicaS},
  CHILDWIN in '..\..\..\ColossoLittle\Fuentes\Comunes\CHILDWIN.PAS' {MDIChild},
  ImportaPlanos in '..\..\..\ColossoLittle\Fuentes\Comunes\ImportaPlanos.pas' {ImportPlano},
  Reporteador in '..\..\..\ColossoLittle\Fuentes\Comunes\Reporteador.pas' {GenReport},
  UDataModule1 in '..\..\..\ColossoLittle\Fuentes\Comunes\UDataModule1.pas' {DataModule1: TDataModule},
  FComprobantesVarios in '..\..\..\ColossoLittle\Fuentes\Contabilidad\FComprobantesVarios.pas' {ComprobantesVarios},
  FComprobanteEgreso in '..\..\..\ColossoLittle\Fuentes\Contabilidad\FComprobanteEgreso.pas' {ComprobanteEgreso},
  MAIN in 'MAIN.PAS' {MainForm},
  Res4505 in 'Res4505.pas' {F4505},
  Uaf in 'Uaf.pas' {faf},
  urips1 in 'urips1.pas' {FormRIPS},
  FImpriTransacc in '..\..\..\ColossoLittle\Fuentes\Inventarios\FImpriTransacc.pas' {FormImpInventa},
  FAsignaGrupo in '..\Facturacion\FAsignaGrupo.pas' {FrmAsignaGrupo},
  CapturaBasica2 in '..\..\..\ColossoLittle\Fuentes\Comunes\CapturaBasica2.pas' {CapturaB2},
  ModuloAdmision in '..\Admisiones\ModuloAdmision.pas' {DatamoduloAdmision: TDataModule},
  FActivarInactivar in '..\..\..\ColossoLittle\Fuentes\Comunes\FActivarInactivar.pas' {FrmAI},
  Lista_Tablas2 in '..\..\..\ColossoLittle\Fuentes\Comunes\Lista_Tablas2.pas' {FListadoTablasCol},
  FrameListaTabla2 in '..\..\..\ColossoLittle\Fuentes\Comunes\FrameListaTabla2.pas' {ListaCol: TFrame},
  FrameMenuOpcion in '..\..\..\ColossoLittle\Fuentes\Comunes\FrameMenuOpcion.pas' {FrameMnOp: TFrame},
  ImprimeFormato in '..\..\..\ColossoLittle\Fuentes\Comunes\ImprimeFormato.pas' {ImpFormato},
  SACreaEmpresas in '..\..\..\ColossoLittle\Fuentes\Comunes\SACreaEmpresas.pas' {FrmIngresoEmpresas},
  SAPAcientesShort in '..\Admisiones\SAPAcientesShort.pas' {FrmIngresoPacientesShort},
  CapturaBasica in '..\..\..\ColossoLittle\Fuentes\Comunes\CapturaBasica.pas' {CapturaB},
  frmproductos in '..\..\..\ColossoLittle\Fuentes\Inventarios\frmproductos.pas' {Productos},
  FProdxArea in '..\Facturacion\FProdxArea.pas' {FrmProdxArea},
  FCrearConvenio in '..\Facturacion\FCrearConvenio.pas' {FormCreaConvenios},
  CapturaBasica3 in '..\..\..\ColossoLittle\Fuentes\Comunes\CapturaBasica3.pas' {CapturaB3},
  FrmAsignaHomo in '..\Facturacion\FrmAsignaHomo.pas' {frmAsignaHomologa},
  FAsignaCapitulo in '..\Facturacion\FAsignaCapitulo.pas' {FrmAsignaCapitulo},
  SAPAcientes2 in '..\Admisiones\SAPAcientes2.pas' {FrmIngresoPacientes},
  FBMsgWait in '..\..\..\ColossoLittle\Fuentes\Comunes\Librerias\FBMsgWait.pas' {PrateincoMsgWait},
  Libreria_Prateinco in '..\..\..\ColossoLittle\Fuentes\Comunes\Librerias\Libreria_Prateinco.pas',
  Libreria_PrateincoForm in '..\..\..\ColossoLittle\Fuentes\Comunes\Librerias\Libreria_PrateincoForm.pas',
  SEIngreso in '..\..\..\ColossoLittle\Fuentes\Menu\SEIngreso.pas' {FIngreso},
  ImportaPlanosPaci in '..\Admisiones\ImportaPlanosPaci.pas' {ImportPlanoAdmi},
  Vcl.Themes,
  Vcl.Styles,
  WebCam in '..\..\..\ColossoLittle\Fuentes\Comunes\WebCam.pas',
  WebCamForm in '..\..\..\ColossoLittle\Fuentes\Comunes\WebCamForm.pas' {WebCamF},
  FImpSolicitud in '..\Control de Cargos\FImpSolicitud.pas' {ImpSolicitud};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDatamoduloAdmision, DatamoduloAdmision);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
