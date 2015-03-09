unit MAIN;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  StdCtrls, Dialogs, Buttons, Messages, ExtCtrls, ComCtrls, StdActns,
  ActnList, ToolWin, ImgList,iniFiles, DB, ADODB, jpeg, XPMan, shellapi,
  System.Actions;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    Window1: TMenuItem;
    Help1: TMenuItem;
    WindowCascadeItem: TMenuItem;
    WindowTileItem: TMenuItem;
    WindowArrangeItem: TMenuItem;
    HelpAboutItem: TMenuItem;
    OpenDialog: TOpenDialog;
    WindowMinimizeItem: TMenuItem;
    ActionList1: TActionList;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    FileNew1: TAction;
    FileSave1: TAction;
    FileExit1: TAction;
    FileOpen1: TAction;
    FileSaveAs1: TAction;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowArrangeAll1: TWindowArrange;
    WindowMinimizeAll1: TWindowMinimizeAll;
    HelpAbout1: TAction;
    FileClose1: TWindowClose;
    WindowTileVertical1: TWindowTileVertical;
    WindowTileItem2: TMenuItem;
    ImageList1: TImageList;
    Procesos1: TMenuItem;
    Consultas1: TMenuItem;
    Reportes1: TMenuItem;
    StatusBar1: TStatusBar;
    GeneradordeReportes1: TMenuItem;
    CitasdelDia1: TMenuItem;
    iposdeConsulta1: TMenuItem;
    CitasMedicas1: TMenuItem;
    CitasporMedico1: TMenuItem;
    N3: TMenuItem;
    Cumplidas1: TMenuItem;
    Porrangodefechas1: TMenuItem;
    Ayuda1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    CensodeUbicaciones1: TMenuItem;
    img: TImage;
    StatusBar: TStatusBar;
    procedure FormActivate(Sender: TObject);
    procedure GeneradordeReportes1Click(Sender: TObject);
    procedure IngresoPacientes1Click(Sender: TObject);
    procedure CitasdelDia1Click(Sender: TObject);
    procedure iposdeConsulta1Click(Sender: TObject);
    procedure Pacientes1Click(Sender: TObject);
    procedure CitasMedicas1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Porrangodefechas1Click(Sender: TObject);
    procedure Ayuda1Click(Sender: TObject);
    procedure CensodeUbicaciones1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses  about, UDataModule1, Reporteador, SAPAcientes2,
  FCitasDia, CapturaBasica, FAgendaMedica,
  UnitBuscarCitasCumplidas, CapturaBasica2,
  CensoUbicaciones, SEIngreso,libreria_prateincoform;


procedure TMainForm.FormActivate(Sender: TObject);
begin
  if datamodule1.ADOQuery1.State = dsInactive then
  Begin
    FIngreso := TFIngreso.create(application);
    FIngreso.showmodal;
  End;
  MainForm.statusbar1.Panels[0].Width := 300;
  MainForm.statusbar1.Panels[0].Text := Datamodule1.adoquery1.FieldValues['Primer_Apellido']+ ' ' +Datamodule1.adoquery1.FieldValues['Nombres'];
  MainForm.statusbar1.Panels[1].Width := 500;
  MainForm.statusbar1.Panels[1].Text := Datamodule1.adoquery1.FieldValues['Descripcion_Emp']+' ('+Datamodule1.bd+')';
  MainForm.statusbar1.Panels[2].Width := 300;
  MainForm.statusbar1.Panels[2].Text := Datamodule1.adoquery1.FieldValues['Descripcion_Area'];
  MainForm.statusbar1.Panels[3].Width := 300;
  MainForm.statusbar1.Panels[3].Text := Datamodule1.adoquery1.FieldValues['Descripcion_Cargo'];

  FAgenda:= tFAgenda.create(application);
  try
    FAgenda.Show;
  except
    FAgenda.free;
  end;
end;

procedure TMainForm.GeneradordeReportes1Click(Sender: TObject);
begin
  ReporteadorP('','','');
end;

procedure TMainForm.IngresoPacientes1Click(Sender: TObject);
begin
  frmIngresoPacientes := tfrmIngresoPacientes.create(application);
  try
    Datamodule1.MuestraconAcceso(frmIngresoPacientes);
  except
    frmIngresoPacientes.free;
  end;
end;

procedure TMainForm.CitasdelDia1Click(Sender: TObject);
begin
  CitasDia := tCitasDia.create(application);
  try
    Datamodule1.MuestraconAcceso(CitasDia);
  except
    CitasDia.free;
  end;
end;

procedure TMainForm.iposdeConsulta1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'CITipos_Citas';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TMainForm.Pacientes1Click(Sender: TObject);
begin
  frmingresopacientes := tfrmingresopacientes.create(application);
  try
    Datamodule1.MuestraconAcceso(frmingresopacientes);
  except
    frmingresopacientes.free;
  end;
end;

procedure TMainForm.CitasMedicas1Click(Sender: TObject);
begin
  FrmBuscaCitasCumplidas  := TFrmBuscaCitasCumplidas.Create(SelF);
  FrmBuscaCitasCumplidas.PageControl1.ActivePageIndex := 1;
  FrmBuscaCitasCumplidas.Caption  := 'Busca citas';
  try
    DataModule1.MuestraconAcceso(FrmBuscaCitasCumplidas);
  except
    FrmBuscaCitasCumplidas.Free;
  end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  MainForm.Caption := MainForm.Caption +'  ('+Datamodule1.Bd+')';
end;

procedure TMainForm.Porrangodefechas1Click(Sender: TObject);
begin
  FrmBuscaCitasCumplidas  := TFrmBuscaCitasCumplidas.Create(SelF);
  FrmBuscaCitasCumplidas.PageControl1.ActivePageIndex := 0;
  FrmBuscaCitasCumplidas.Caption  := 'Busca citas cumplidas';
  try
    DataModule1.MuestraconAcceso(FrmBuscaCitasCumplidas);
  except
    FrmBuscaCitasCumplidas.Free;
  end;
end;

procedure TMainForm.Ayuda1Click(Sender: TObject);
begin
  shellexecute(handle,'open',pchar('CitasMedicas.pdf'),'','',sw_shownormal);
end;

procedure TMainForm.CensodeUbicaciones1Click(Sender: TObject);
begin
  FCenso := tFCenso.create(application);
  try
    Datamodule1.MuestraconAcceso(FCenso);
  except
    FCenso.free;
  end;
end;

end.
