program SOFTSIG;

uses
  Windows,
  Forms,
  SEIngreso in 'SEIngreso.pas' {FIngreso},
  SEMenu in 'SEMenu.pas' {Form2},
  about in '..\Comunes\about.pas' {AboutBox},
  UDataModule1 in '..\Comunes\UDataModule1.pas' {DataModule1: TDataModule},
  CambiarClave in 'CambiarClave.pas' {Form3},
  Libreria_Prateinco in '..\Comunes\Librerias\Libreria_Prateinco.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
