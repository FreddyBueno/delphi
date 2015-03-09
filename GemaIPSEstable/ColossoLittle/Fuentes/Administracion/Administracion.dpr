program Administracion;

uses
  Forms,
  MAIN in 'MAIN.PAS' {MainForm},
  about in '..\Comunes\about.pas' {AboutBox},
  CHILDWIN in '..\Comunes\CHILDWIN.PAS' {MDIChild},
  Reporteador in '..\Comunes\Reporteador.pas' {GenReport},
  ImportaPlanos in '..\Comunes\ImportaPlanos.pas' {ImportPlano},
  UDataModule1 in '..\Comunes\UDataModule1.pas' {DataModule1: TDataModule},
  UBackup in 'UBackup.pas' {FBackup},
  FAdmonTablas in 'FAdmonTablas.pas' {FormAdmonTabla},
  CapturaBasicaSelect in '..\Comunes\CapturaBasicaSelect.pas' {CapturaBasicaS},
  Crear3 in 'Crear3.pas' {FCreaEmpresa},
  SETablas in 'SETablas.pas' {FCreaUsuarios},
  frmGrupos in '..\Inventarios\frmGrupos.pas' {Grupos},
  FCrearMenus in 'FCrearMenus.pas' {FormCreaMenus},
  Unit1 in 'Unit1.pas' {frmparametros},
  UnitPrivilegios in 'UnitPrivilegios.pas' {FrmPrivilegios},
  CapturaBasica2 in '..\Comunes\CapturaBasica2.pas' {CapturaB2},
  FActivarInactivar in '..\Comunes\FActivarInactivar.pas' {FrmAI},
  Lista_Tablas2 in '..\Comunes\Lista_Tablas2.pas' {FListadoTablasCol},
  FrameListaTabla2 in '..\Comunes\FrameListaTabla2.pas' {ListaCol: TFrame},
  FrameMenuOpcion in '..\Comunes\FrameMenuOpcion.pas' {FrameMnOp: TFrame},
  ImprimeFormato in '..\Comunes\ImprimeFormato.pas' {ImpFormato},
  SACreaEmpresas in '..\Comunes\SACreaEmpresas.pas' {FrmIngresoEmpresas},
  SAPAcientesShort in '..\..\..\GemaIPSAnt\Fuentes GEMAIPS\Admisiones\SAPAcientesShort.pas' {FrmIngresoPacientesShort},
  Libreria_Prateinco in '..\Comunes\Librerias\Libreria_Prateinco.pas',
  Libreria_PrateincoForm in '..\Comunes\Librerias\Libreria_PrateincoForm.pas',
  ModuloAdmision in '..\..\..\GemaIPSAnt\Fuentes GEMAIPS\Admisiones\ModuloAdmision.pas' {DatamoduloAdmision: TDataModule},
  CapturaBasica in '..\Comunes\CapturaBasica.pas' {CapturaB},
  SAPAcientes2 in '..\..\..\GemaIPSAnt\Fuentes GEMAIPS\Admisiones\SAPAcientes2.pas' {FrmIngresoPacientes},
  ParamCarg in '..\..\..\GemaIPSAnt\Fuentes GEMAIPS\Control de Cargos\ParamCarg.pas' {ParametrosCargo},
  UParametrosAdmi in '..\..\..\GemaIPSAnt\Fuentes GEMAIPS\Admisiones\UParametrosAdmi.pas' {ParametrosAdm},
  UnitBuscarCitasCumplidas in '..\..\..\GemaIPSAnt\Fuentes GEMAIPS\Citasmedicas\UnitBuscarCitasCumplidas.pas' {FrmBuscaCitasCumplidas},
  ParamInv in '..\..\..\GemaIPSAnt\Fuentes GEMAIPS\Inventarios\ParamInv.pas' {ParametrosInv},
  UParametrosCaja in '..\..\..\GemaIPSAnt\Fuentes GEMAIPS\Control de Caja\UParametrosCaja.pas' {ParametrosCaja},
  ParametFact in '..\..\..\GemaIPSAnt\Fuentes GEMAIPS\Facturacion\ParametFact.pas' {ParametrosFact},
  ParamCompras in '..\..\..\GemaIPSAnt\Fuentes GEMAIPS\Control de Compras\ParamCompras.pas' {ParametrosCompras},
  CapturaBasica3 in '..\Comunes\CapturaBasica3.pas' {CapturaB3},
  FrmAutorizaArea in '..\..\..\GemaIPSAnt\Fuentes GEMAIPS\Facturacion\FrmAutorizaArea.pas' {FrmAutorizCargo},
  SEIngreso in '..\Menu\SEIngreso.pas' {FIngreso},
  ImportaPlanosPaci in '..\..\..\GemaIPSAnt\Fuentes GEMAIPS\Admisiones\ImportaPlanosPaci.pas' {ImportPlanoAdmi},
  Vcl.Themes,
  Vcl.Styles,
  WebCam in '..\Comunes\WebCam.pas',
  WebCamForm in '..\Comunes\WebCamForm.pas' {WebCamF},
  CreaFormatoD in '..\..\..\GemaIPSAnt\Fuentes GEMAIPS\Sistema Medico\CreaFormatoD.pas' {FCreacionFormatosD},
  FFormatosxPersona in '..\..\..\GemaIPSAnt\Fuentes GEMAIPS\Sistema Medico\FFormatosxPersona.pas' {FormFmtoxPersona},
  UbicacionXY in '..\..\..\GemaIPSAnt\Fuentes GEMAIPS\Sistema Medico\UbicacionXY.pas' {Ubixy},
  UCopiaFormatos in '..\..\..\GemaIPSAnt\Fuentes GEMAIPS\Sistema Medico\UCopiaFormatos.pas' {FCopiaFMT},
  GrProg in '..\..\..\GemaIPSAnt\Fuentes GEMAIPS\Sistema Medico\GrProg.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TDatamoduloAdmision, DatamoduloAdmision);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
