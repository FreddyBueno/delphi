unit MAIN;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  StdCtrls, Dialogs, Buttons, Messages, ExtCtrls, ComCtrls, StdActns,
  ActnList, ToolWin, ImgList,IniFiles, DB, ADODB, jpeg,xpman,shellapi,
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
    StatusBar1: TStatusBar;
    Copy1: TMenuItem;
    HistoriaClinica1: TMenuItem;
    N3: TMenuItem;
    Programas1: TMenuItem;
    Image1: TImage;
    N2: TMenuItem;
    GeneradordeReportes1: TMenuItem;
    Ayuda1: TMenuItem;
    N4: TMenuItem;
    ReportedeHistiriaClinica1: TMenuItem;
    ReportedeOrden1: TMenuItem;
    StatusBar: TStatusBar;
    ReimprimirSolicitud1: TMenuItem;
    Timer1: TTimer;
    procedure FileNew1Execute(Sender: TObject);
    procedure FileOpen1Execute(Sender: TObject);
    procedure HelpAbout1Execute(Sender: TObject);
    procedure FileExit1Execute(Sender: TObject);
    procedure PlandeCuentas1Click(Sender: TObject);
    procedure iposdeComprobantes1Click(Sender: TObject);
    procedure Sexo1Click(Sender: TObject);
    procedure EstadosCiviles1Click(Sender: TObject);
    procedure GruposEtnicos1Click(Sender: TObject);
    procedure Ocupacion1Click(Sender: TObject);
    procedure Parentescos1Click(Sender: TObject);
    procedure Nacionalidades1Click(Sender: TObject);
    procedure Ciudad1Click(Sender: TObject);
    procedure Regimenes1Click(Sender: TObject);
    procedure iposdeAfiliados1Click(Sender: TObject);
    procedure iposdeAdmision1Click(Sender: TObject);
    procedure Mdicos1Click(Sender: TObject);
    procedure Prestadores1Click(Sender: TObject);
    procedure Se1Click(Sender: TObject);
    procedure iposdeCamas1Click(Sender: TObject);
    procedure Camas2Click(Sender: TObject);
    procedure GeneradordeReportes1Click(Sender: TObject);
    procedure Admisiones2Click(Sender: TObject);
    procedure EstadodeCamasoSillas1Click(Sender: TObject);
    procedure otalesporTipodeAdmisin1Click(Sender: TObject);
    procedure otalesporGrupoEtareo1Click(Sender: TObject);
    procedure otalesporEstadoCivil1Click(Sender: TObject);
    procedure raslados1Click(Sender: TObject);
    procedure SaldosxProducto1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure HistoriaClinica1Click(Sender: TObject);
    procedure Circular301Click(Sender: TObject);
    procedure Programas1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Ayuda1Click(Sender: TObject);
    procedure ReportedeHistiriaClinica1Click(Sender: TObject);
    procedure ReportedeOrden1Click(Sender: TObject);
    procedure ReimprimirSolicitud1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    procedure CreateMDIChild(const Name: string);
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  
const
  ancho = 1280; // Ancho del diseño
  alto = 1024;  // Alto del diseño

implementation

uses CHILDWIN, about,   UDataModule1,
  CapturaBasica, Reporteador,
   Circular30, FListadoPacientes,
  FImprimeFormato, CapturaBasica2, CreaFormatoD, FFormatosxPersona,
  UCopiaFormatos, SEIngreso, FImprimeFormato2, Libreria_PrateincoForm,
  FImpSolicitud;

{$R *.dfm}


procedure TMainForm.CreateMDIChild(const Name: string);
var
  Child: TMDIChild;
begin
  { create a new MDI child window }
  Child := TMDIChild.Create(Application);
  Child.Caption := Name;
  if FileExists(Name) then Child.Memo1.Lines.LoadFromFile(Name);
end;

procedure TMainForm.FileNew1Execute(Sender: TObject);
begin
  CreateMDIChild('NONAME' + IntToStr(MDIChildCount + 1));
end;

procedure TMainForm.FileOpen1Execute(Sender: TObject);
begin
  if OpenDialog.Execute then
    CreateMDIChild(OpenDialog.FileName);
end;

procedure TMainForm.HelpAbout1Execute(Sender: TObject);
begin
  AboutBox := tAboutBox.create(application);
  try
    AboutBox.showModal;
  except
    AboutBox.free;
  end;
end;

procedure TMainForm.FileExit1Execute(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.PlandeCuentas1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= Datamodule1.ADOComunes.DefaultDatabase+'..GETipo_Documentos';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TMainForm.iposdeComprobantes1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= Datamodule1.ADOComunes.DefaultDatabase+'..GEDepartamentos';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TMainForm.Sexo1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= Datamodule1.ADOComunes.DefaultDatabase+'..GESexo';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TMainForm.Timer1Timer(Sender: TObject);
begin
Statusbar1.Panels[4].Text:=DateTimeToStr(Now);
end;

procedure TMainForm.EstadosCiviles1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= Datamodule1.ADOComunes.DefaultDatabase+'..GEEstados_Civiles';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TMainForm.GruposEtnicos1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'GEGrupoEtnico';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TMainForm.Ocupacion1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= Datamodule1.ADOComunes.DefaultDatabase+'..GEOcupacion';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TMainForm.Parentescos1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= Datamodule1.ADOComunes.DefaultDatabase+'..GEParentesco';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TMainForm.Nacionalidades1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= Datamodule1.ADOComunes.DefaultDatabase+'..GENacionalidad';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TMainForm.Ciudad1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= Datamodule1.ADOComunes.DefaultDatabase+'..GEMunicipios';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TMainForm.Regimenes1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'GERegimen';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TMainForm.ReimprimirSolicitud1Click(Sender: TObject);
begin
  ImpSolicitud := tImpSolicitud.create(application);
  try
    Datamodule1.MuestraconAcceso(ImpSolicitud);
  except
    ImpSolicitud.free;
  end;
end;

procedure TMainForm.ReportedeHistiriaClinica1Click(Sender: TObject);
begin
  FImprimeFmto := tFImprimeFmto.create(application);
  try
    FImprimeFmto.Edit1.Text := FrmProcFormatos.JVEdit1.Text;
    FImprimeFmto.CheckBox1.Checked := False;
    FImprimeFmto.DateTimePicker1.DateTime := now-1;
    FImprimeFmto.DateTimePicker2.DateTime := now;
    FImprimeFmto.Button1.SetFocus;
    Datamodule1.MuestraconAcceso(FImprimeFmto);
  except
    FImprimeFmto.free;
  end;
end;

procedure TMainForm.ReportedeOrden1Click(Sender: TObject);
begin
  FImprimeFmto2 := tFImprimeFmto2.create(application);
  try
    FImprimeFmto2.DBLookupComboBox5.KeyValue := FrmProcFormatos.JVEdit1.Text;
    FImprimeFmto2.CheckBox1.Checked := False;
    FImprimeFmto2.DateTimePicker1.DateTime := now-1;
    FImprimeFmto2.DateTimePicker2.DateTime := now;
    FImprimeFmto2.Button1.SetFocus;
    Datamodule1.MuestraconAcceso(FImprimeFmto2);
  except
    FImprimeFmto2.free;
  end;
end;

procedure TMainForm.iposdeAfiliados1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'GETipoAfiliado';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TMainForm.iposdeAdmision1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'SATiposAdmision';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TMainForm.Mdicos1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'SAMedicos';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TMainForm.Prestadores1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'GEPrestadores';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TMainForm.Se1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'GESecciones';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TMainForm.iposdeCamas1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'GETiposCama';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TMainForm.Camas2Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'SACamas';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TMainForm.GeneradordeReportes1Click(Sender: TObject);
begin
  ReporteadorP('','','');
end;

procedure TMainForm.Admisiones2Click(Sender: TObject);
begin
  ReporteadorP('Admisiones Activas','SELECT left(Fec_Admision,12) as Fec_Adm,Tp_Admision as TP,No_Admision,SAAdmisiones.Tp_Ident_Usuar as Tp_Id,SAAdmisiones.Nr_Ident_Usuar AS Nr_Id,Left(Primer_Apellido,10) as Pr_Apell,Left(Segundo_Apellido,10) as Sg_Apell,Left(Primer_Nombre,10) as Pr_Nom '
  + ',Left(Segundo_Nombre,10) as Sg_Nom From SAAdmisiones,SAPacientes WHERE  SAAdmisiones.Tp_Ident_Usuar =SAPacientes.Tp_Ident_Usuar AND SAAdmisiones.Nr_Ident_Usuar=SAPacientes.Nr_Ident_Usuar And Est_Adminsion= '+chr(39)+'A'+chr(39)+' Order by Fec_Admision,Tp_Admision','');
end;

procedure TMainForm.EstadodeCamasoSillas1Click(Sender: TObject);
begin
  ReporteadorP('Estado de Camas o Sillas','SELECT * FROM SACamas ','');
end;

procedure TMainForm.otalesporTipodeAdmisin1Click(Sender: TObject);
begin
  ReporteadorP('Total x Fec/TpAdm','SELECT left(Fec_Admision,12) As Fecha,TP_Admision As Tipo_Adm,count(*)As Total FROM SAAdmisiones GROUP BY left(Fec_Admision,12) ,TP_Admision ORDER BY left(Fec_Admision,12) ,TP_Admision','');
end;

procedure TMainForm.otalesporGrupoEtareo1Click(Sender: TObject);
begin
  ReporteadorP('Total x Sexo/Etareo','SELECT Sexo As Sx,datediff(year,fec_nacimineto,getdate()) as Ed, count(*) as Total from SAPacientes group by sexo,datediff(year,fec_nacimineto,getdate()) order by sexo,datediff(year,fec_nacimineto,getdate())','');
end;

procedure TMainForm.otalesporEstadoCivil1Click(Sender: TObject);
begin
  ReporteadorP('Total x Estado Civil','SELECT Estado_Civil as EC, count(*) as Tot from SAPacientes group by Estado_Civil order by Estado_Civil','');
end;

procedure TMainForm.raslados1Click(Sender: TObject);
begin
  Showmessage('Opción no disponible en esta versión.');
end;

procedure TMainForm.SaldosxProducto1Click(Sender: TObject);
begin
  Showmessage('Opción no disponible en esta versión.');
end;

procedure TMainForm.Copy1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'SAMedicos';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TMainForm.HistoriaClinica1Click(Sender: TObject);
begin
  FImprimeFmto := tFImprimeFmto.create(application);
  try
    Datamodule1.MuestraconAcceso(FImprimeFmto);
  except
    FImprimeFmto.free;
  end;
end;

procedure TMainForm.Circular301Click(Sender: TObject);
begin
  FCirc30 := tFCirc30.create(application);
  try
    Datamodule1.MuestraconAcceso(FCirc30);
  except
    FCirc30.free;
  end;
end;

procedure TMainForm.Programas1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= Datamodule1.ADOComunes.DefaultDatabase+'..GEDiagnosticos';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  Height := Height * Screen.Height div alto;
  Width := Width * Screen.Width div ancho;
  ScaleBy(Screen.Width, ancho);
end;

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


  frmProcFormatos:= tfrmProcFormatos.create(application);
  try
    Datamodule1.MuestraconAcceso(frmProcFormatos);
  except
    frmProcFormatos.free;
  end;
end;

procedure TMainForm.Ayuda1Click(Sender: TObject);
begin
  shellexecute(handle,'open',pchar('SistemaMedico.pdf'),'','',sw_shownormal);
end;

end.
