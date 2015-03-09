program CurvasPr;

uses
  Vcl.Forms,
  Curvas in 'Curvas.pas' {FrmProcFormatos},
  UDataModule1 in '..\..\..\ColossoLittle\Fuentes\Comunes\UDataModule1.pas' {DataModule1: TDataModule},
  Libreria_Prateinco in '..\..\..\ColossoLittle\Fuentes\Comunes\Librerias\Libreria_Prateinco.pas',
  Libreria_PrateincoForm in '..\..\..\ColossoLittle\Fuentes\Comunes\Librerias\Libreria_PrateincoForm.pas',
  about in '..\..\..\ColossoLittle\Fuentes\Comunes\about.pas' {AboutBox},
  DelphiTwain in '..\..\..\..\componentes\Digitalizacion\delphitwain\DelphiTwain.pas',
  Twain in '..\..\..\..\componentes\Digitalizacion\delphitwain\Twain.pas',
  WebCam in '..\Citas\Comun\WebCam.pas',
  FActivarInactivar in '..\..\..\ColossoLittle\Fuentes\Comunes\FActivarInactivar.pas' {FrmAI},
  ImportaPlanos in '..\..\..\ColossoLittle\Fuentes\Comunes\ImportaPlanos.pas' {ImportPlano},
  CapturaBasica2 in '..\..\..\ColossoLittle\Fuentes\Comunes\CapturaBasica2.pas' {CapturaB2},
  CapturaBasica in '..\..\..\ColossoLittle\Fuentes\Comunes\CapturaBasica.pas' {CapturaB},
  Reporteador in '..\..\..\ColossoLittle\Fuentes\Comunes\Reporteador.pas' {genReport},
  FrameMenuOpcion in '..\..\..\ColossoLittle\Fuentes\Comunes\FrameMenuOpcion.pas' {FrameMnOp: TFrame},
  FrameListaTabla2 in '..\..\..\ColossoLittle\Fuentes\Comunes\FrameListaTabla2.pas' {ListaCol: TFrame},
  ImprimeFormato in '..\..\..\ColossoLittle\Fuentes\Comunes\ImprimeFormato.pas' {ImpFormato},
  SACreaEmpresas in '..\..\..\ColossoLittle\Fuentes\Comunes\SACreaEmpresas.pas' {FrmIngresoEmpresas},
  WebCamForm in '..\..\..\ColossoLittle\Fuentes\Comunes\WebCamForm.pas' {WebCamF},
  CapturaBasicaSelect in '..\..\..\ColossoLittle\Fuentes\Comunes\CapturaBasicaSelect.pas' {CapturaBasicaS},
  Vcl.Themes,
  Vcl.Styles,
  SEIngresoCurvas in 'SEIngresoCurvas.pas' {FIngreso};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFIngreso, FIngreso);
  //Application.CreateForm(TFrmProcFormatos, FrmProcFormatos);
  Application.Run;
end.
