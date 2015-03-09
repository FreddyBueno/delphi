program Citas;

uses
  Vcl.Forms,
  dGIPSci in 'dGIPSci.pas' {dmGIPSci: TDataModule},
  fMDIBase in 'Comun\fMDIBase.pas' {frmMDIBase},
  fCitas in 'fCitas.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
