unit MAIN;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  StdCtrls, Dialogs, Buttons, Messages, ExtCtrls, ComCtrls, StdActns,
  ActnList, ToolWin, ImgList,IniFiles, DB, ADODB, jpeg, XPMan,shellapi,
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
    StatusBar: TStatusBar;
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
    Consultas1: TMenuItem;
    Movimientos1: TMenuItem;
    Reportes1: TMenuItem;
    StatusBar1: TStatusBar;
    GeneradordeReportes1: TMenuItem;
    N2: TMenuItem;
    Pacientes1: TMenuItem;
    Citas1: TMenuItem;
    BoletadeAdmisin1: TMenuItem;
    HojadeAdmisinconPedidos1: TMenuItem;
    N3: TMenuItem;
    Facturas1: TMenuItem;
    N6: TMenuItem;
    Cargos1: TMenuItem;
    Hojadeautorizacindeservicios1: TMenuItem;
    N7: TMenuItem;
    AdmisionesconCargosyFacturas1: TMenuItem;
    Ayuda1: TMenuItem;
    N8: TMenuItem;
    HojadeAdmisionconCargos21: TMenuItem;
    ReimprimirFacturaPOS1: TMenuItem;
    Procesos1: TMenuItem;
    Descargos1: TMenuItem;
    ReimprimirFacturaMediaCarta1: TMenuItem;
    img: TImage;
    Alertas1: TMenuItem;
    procedure FileNew1Execute(Sender: TObject);
    procedure FileOpen1Execute(Sender: TObject);
    procedure HelpAbout1Execute(Sender: TObject);
    procedure FileExit1Execute(Sender: TObject);
    procedure Movimientos1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PlandeCuentas1Click(Sender: TObject);
    procedure iposdeComprobantes1Click(Sender: TObject);
    procedure AdmisionesconCitas1Click(Sender: TObject);
    procedure Admisiones1Click(Sender: TObject);
    procedure Retiro1Click(Sender: TObject);
    procedure Sexo1Click(Sender: TObject);
    procedure EstadosCiviles1Click(Sender: TObject);
    procedure GruposEtnicos1Click(Sender: TObject);
    procedure Ocupacion1Click(Sender: TObject);
    procedure Parentescos1Click(Sender: TObject);
    procedure Nacionalidades1Click(Sender: TObject);
    procedure Ciudad1Click(Sender: TObject);
    procedure Regimenes1Click(Sender: TObject);
    procedure iposdeConsulta1Click(Sender: TObject);
    procedure Mdicos1Click(Sender: TObject);
    procedure Prestadores1Click(Sender: TObject);
    procedure Se1Click(Sender: TObject);
    procedure iposdeCamas1Click(Sender: TObject);
    procedure Camas2Click(Sender: TObject);
    procedure GeneradordeReportes1Click(Sender: TObject);
    procedure Pacientes1Click(Sender: TObject);
    procedure Citas1Click(Sender: TObject);
    procedure BoletadeAdmisin1Click(Sender: TObject);
    procedure IngresarPaciente1Click(Sender: TObject);
    procedure SubirBaseDatosdePacientes1Click(Sender: TObject);
    procedure HojadeAdmisinconPedidos1Click(Sender: TObject);
    procedure EstadosdeEgresos1Click(Sender: TObject);
    procedure iposdeAfiliadoSegnRIPS1Click(Sender: TObject);
    procedure iposdeUsuariosRegimen1Click(Sender: TObject);
    procedure Facturas1Click(Sender: TObject);
    procedure Cargos1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Hojadeautorizacindeservicios1Click(Sender: TObject);
    procedure AdmisionesconCargosyFacturas1Click(Sender: TObject);
    procedure Compoder1Click(Sender: TObject);
    procedure Soft471Click(Sender: TObject);
    procedure Ayuda1Click(Sender: TObject);
    procedure HojadeAdmisionconCargos21Click(Sender: TObject);
    procedure ReimprimirFacturaPOS1Click(Sender: TObject);
    procedure Descargos1Click(Sender: TObject);
    procedure ModificaAdmisiones1Click(Sender: TObject);
    procedure ReimprimirFacturaMediaCarta1Click(Sender: TObject);
    procedure Alertas1Click(Sender: TObject);
  private
    { Private declarations }
    procedure CreateMDIChild(const Name: string);
  public
    { Public declarations }
  end;
const
  CM_RESTORE = WM_USER + $1000;

var
  RvHandle : hWnd;
  MainForm: TMainForm;

implementation

uses CHILDWIN, about, SAPAcientes2, UDataModule1,
  CapturaBasica, UAdmisiones, UingresosAdmisiones, SAEgresos,
  Reporteador, FHojaAdmision,
  UParametrosAdmi,  ImportaPlanos, ImportaPlanosPaci,
  FHojaAdmisionSmall, FSolicitud, AnulaAdmision, UAdmisiones2,
  FImpBoleta, ComplementoAdmi, CapturaBasica2,
  FHojaAdmisionSmallAut, FImpresionFactura, Cliente, frmproductos, frmservicios,
  FHojaAdmisionSmall2, FImpresionFacturaSmall2, FDescargos,
  FImpresionFacturaSmall, SEIngreso, Libreria_PrateincoForm, fAlertas;

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

procedure TMainForm.Descargos1Click(Sender: TObject);
begin
  Descargos := tDescargos.create(application);
  try
    Datamodule1.MuestraconAcceso(Descargos);
  except
    Descargos.free;
  end;
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

procedure TMainForm.ModificaAdmisiones1Click(Sender: TObject);
begin
  FCompAdm := tFCompAdm.create(application);
  try
    Datamodule1.MuestraconAcceso(FCompAdm);
  except
    FCompAdm.free;
  end;
end;

procedure TMainForm.Movimientos1Click(Sender: TObject);
begin
  ReporteadorP('Listado de Pacientes','SELECT * FROM SAAdmisiones','');
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

  frmprocadmision := tfrmprocadmision.create(application);
  try
    Datamodule1.MuestraconAcceso(frmprocadmision);
  except
    frmprocadmision.free;
  end;
end;

procedure TMainForm.PlandeCuentas1Click(Sender: TObject);
begin
  capturaB := tcapturaB.create(application);
  capturaB.Edit1.Text:= 'COMUNES..GETipo_Documentos';
  try
    Datamodule1.MuestraconAcceso(capturaB);
  except
    capturaB.free;
  end;
end;

procedure TMainForm.iposdeComprobantes1Click(Sender: TObject);
begin
  capturaB := tcapturaB.create(application);
  capturaB.Edit1.Text:= 'COMUNES..GEDepartamentos';
  try
    Datamodule1.MuestraconAcceso(capturaB);
  except
    capturaB.free;
  end;
end;

procedure TMainForm.AdmisionesconCitas1Click(Sender: TObject);
begin
    frmadmisiones := tfrmadmisiones.create(application);
  try
    Datamodule1.MuestraconAcceso(frmadmisiones);
  except
    frmadmisiones.free;
  end;
end;

procedure TMainForm.Admisiones1Click(Sender: TObject);
begin
  frmadminsiones := tfrmadminsiones.create(application);
  try
    Datamodule1.MuestraconAcceso(frmadminsiones);
  except
    frmadminsiones.free;
  end;
end;

procedure TMainForm.Retiro1Click(Sender: TObject);
begin
  frmegresos := tfrmegresos.create(application);
  try
    Datamodule1.MuestraconAcceso(frmegresos);
  except
    frmegresos.free;
  end;
end;

procedure TMainForm.Sexo1Click(Sender: TObject);
begin
  capturaB := tcapturaB.create(application);
  capturaB.Edit1.Text:= 'COMUNES..GESexo';
  try
    Datamodule1.MuestraconAcceso(capturaB);
  except
    capturaB.free;
  end;
end;

procedure TMainForm.EstadosCiviles1Click(Sender: TObject);
begin
  capturaB := tcapturaB.create(application);
  capturaB.Edit1.Text:= 'COMUNES..GEEstados_Civiles';
  try
    Datamodule1.MuestraconAcceso(capturaB);
  except
    capturaB.free;
  end;
end;

procedure TMainForm.GruposEtnicos1Click(Sender: TObject);
begin
  capturaB := tcapturaB.create(application);
  capturaB.Edit1.Text:= 'GEGrupoEtnico';
  try
    Datamodule1.MuestraconAcceso(capturaB);
  except
    capturaB.free;
  end;
end;

procedure TMainForm.Ocupacion1Click(Sender: TObject);
begin
  capturaB := tcapturaB.create(application);
  capturaB.Edit1.Text:= 'COMUNES..GEOcupacion';
  try
    Datamodule1.MuestraconAcceso(capturaB);
  except
    capturaB.free;
  end;
end;

procedure TMainForm.Parentescos1Click(Sender: TObject);
begin
  capturaB := tcapturaB.create(application);
  capturaB.Edit1.Text:= 'COMUNES..GEParentesco';
  try
    Datamodule1.MuestraconAcceso(capturaB);
  except
    capturaB.free;
  end;
end;

procedure TMainForm.Nacionalidades1Click(Sender: TObject);
begin
  capturaB := tcapturaB.create(application);
  capturaB.Edit1.Text:= 'COMUNES..GENacionalidad';
  try
    Datamodule1.MuestraconAcceso(capturaB);
  except
    capturaB.free;
  end;
end;

procedure TMainForm.Ciudad1Click(Sender: TObject);
begin
  capturaB := tcapturaB.create(application);
  capturaB.Edit1.Text:= 'COMUNES..GEMunicipios';
  try
    Datamodule1.MuestraconAcceso(capturaB);
  except
    capturaB.free;
  end;
end;

procedure TMainForm.Regimenes1Click(Sender: TObject);
begin
  capturaB := tcapturaB.create(application);
  capturaB.Edit1.Text:= 'GERegimen';
  try
    Datamodule1.MuestraconAcceso(capturaB);
  except
    capturaB.free;
  end;
end;

procedure TMainForm.ReimprimirFacturaMediaCarta1Click(Sender: TObject);
begin
  FImprimeFacturaSmall := tFImprimeFacturaSmall.create(application);
  try
    Datamodule1.MuestraconAcceso(FImprimeFacturaSmall);
  except
    FImprimeFacturaSmall.free;
  end;
end;

procedure TMainForm.ReimprimirFacturaPOS1Click(Sender: TObject);
begin
  FImprimeFacturaSmall2 := tFImprimeFacturaSmall2.create(application);
  try
    Datamodule1.MuestraconAcceso(FImprimeFacturaSmall2);
  except
    FImprimeFacturaSmall2.free;
  end;
end;

procedure TMainForm.iposdeConsulta1Click(Sender: TObject);
begin
  capturaB := tcapturaB.create(application);
  capturaB.Edit1.Text:= 'CITipos_Citas';
  try
    Datamodule1.MuestraconAcceso(capturaB);
  except
    capturaB.free;
  end;
end;

procedure TMainForm.Mdicos1Click(Sender: TObject);
begin
  capturaB := tcapturaB.create(application);
  capturaB.Edit1.Text:= 'SAMedicos';
  try
    Datamodule1.MuestraconAcceso(capturaB);
  except
    capturaB.free;
  end;
end;

procedure TMainForm.Prestadores1Click(Sender: TObject);
begin
  capturaB := tcapturaB.create(application);
  capturaB.Edit1.Text:= 'GEPrestadores';
  try
    Datamodule1.MuestraconAcceso(capturaB);
  except
    capturaB.free;
  end;
end;

procedure TMainForm.Se1Click(Sender: TObject);
begin
  capturaB := tcapturaB.create(application);
  capturaB.Edit1.Text:= 'GESecciones';
  try
    Datamodule1.MuestraconAcceso(capturaB);
  except
    capturaB.free;
  end;
end;

procedure TMainForm.iposdeCamas1Click(Sender: TObject);
begin
  capturaB := tcapturaB.create(application);
  capturaB.Edit1.Text:= 'GETiposCama';
  try
    Datamodule1.MuestraconAcceso(capturaB);
  except
    capturaB.free;
  end;
end;

procedure TMainForm.Camas2Click(Sender: TObject);
begin
  capturaB := tcapturaB.create(application);
  capturaB.Edit1.Text:= 'SACamas';
  try
    Datamodule1.MuestraconAcceso(capturaB);
  except
    capturaB.free;
  end;
end;

procedure TMainForm.GeneradordeReportes1Click(Sender: TObject);
begin
  ReporteadorP('','','');
end;

procedure TMainForm.Pacientes1Click(Sender: TObject);
begin
  ReporteadorP('Listado de Pacientes','SELECT * FROM SAPacientes','');
end;

procedure TMainForm.Citas1Click(Sender: TObject);
begin
  ReporteadorP('Listado de Citas','SELECT * FROM CICitas','');
end;

procedure TMainForm.BoletadeAdmisin1Click(Sender: TObject);
begin
  FrmHojaAdmision := tFrmHojaAdmision.create(application);
  try
    Datamodule1.MuestraconAcceso(FrmHojaAdmision);
  except
    FrmHojaAdmision.free;
  end;
end;

procedure TMainForm.IngresarPaciente1Click(Sender: TObject);
begin
  frmingresopacientes := tfrmingresopacientes.create(application);
  try
    Datamodule1.MuestraconAcceso(frmingresopacientes);
  except
    frmingresopacientes.free;
  end;
end;

procedure TMainForm.SubirBaseDatosdePacientes1Click(Sender: TObject);
begin
  ImportPlanoAdmi := tImportPlanoAdmi.create(application);
  ImportPlanoAdmi.Edit4.Text:='';
  ImportPlanoAdmi.Edit1.Text:='SAPacientes';
  try
    Datamodule1.MuestraconAcceso(ImportPlanoAdmi);
  except
    ImportPlanoAdmi.free;
  end;
end;

procedure TMainForm.HojadeAdmisinconPedidos1Click(Sender: TObject);
begin
    FrmHojaAdmisionSmall := tFrmHojaAdmisionSmall.create(application);
  try
    Datamodule1.MuestraconAcceso(FrmHojaAdmisionSmall);
  except
    FrmHojaAdmisionSmall.free;
  end;
end;

procedure TMainForm.HojadeAdmisionconCargos21Click(Sender: TObject);
begin
    FrmHojaAdmisionSmall2 := tFrmHojaAdmisionSmall2.create(application);
  try
    Datamodule1.MuestraconAcceso(FrmHojaAdmisionSmall2);
  except
    FrmHojaAdmisionSmall2.free;
  end;
end;

procedure TMainForm.EstadosdeEgresos1Click(Sender: TObject);
begin
  capturaB := tcapturaB.create(application);
  capturaB.Edit1.Text:= 'GEEstados';
  try
    Datamodule1.MuestraconAcceso(capturaB);
  except
    capturaB.free;
  end;
end;

procedure TMainForm.iposdeAfiliadoSegnRIPS1Click(Sender: TObject);
begin
  capturaB := tcapturaB.create(application);
  capturaB.Edit1.Text:= 'GETipoAfiliado';
  try
    Datamodule1.MuestraconAcceso(capturaB);
  except
    capturaB.free;
  end;
end;

procedure TMainForm.iposdeUsuariosRegimen1Click(Sender: TObject);
begin
  capturaB := tcapturaB.create(application);
  capturaB.Edit1.Text:= 'GERegimen';
  try
    Datamodule1.MuestraconAcceso(capturaB);
  except
    capturaB.free;
  end;
end;

procedure TMainForm.Facturas1Click(Sender: TObject);
begin
  FImprimeFactura := tFImprimeFactura.create(application);
  try
    Datamodule1.MuestraconAcceso(FImprimeFactura);
  except
    FImprimeFactura.free;
  end;
end;

procedure TMainForm.Alertas1Click(Sender: TObject);
begin

  Application.CreateForm(TfrmAlertas, frmAlertas);




end;

procedure TMainForm.Cargos1Click(Sender: TObject);
begin
  ImpBoleta := tImpBoleta.create(application);
  try
    Datamodule1.MuestraconAcceso(ImpBoleta);
  except
    ImpBoleta.free;
  end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  MainForm.Caption := MainForm.Caption +'  ('+Datamodule1.Bd+')';
end;

procedure TMainForm.Hojadeautorizacindeservicios1Click(Sender: TObject);
begin
    FrmHojaAdmisionSmallAut := tFrmHojaAdmisionSmallAut.create(application);
  try
    Datamodule1.MuestraconAcceso(FrmHojaAdmisionSmallAut);
  except
    FrmHojaAdmisionSmallAut.free;
  end;
end;

procedure TMainForm.AdmisionesconCargosyFacturas1Click(Sender: TObject);
begin
  ReporteadorP('Admisiones',' SELECT SAAdmisiones.No_Admision,left(Fec_Admision,12) as Fec_Adm,Tp_Admision as TP, '+
      '   SAAdmisiones.Tp_Ident_Usuar+SAAdmisiones.Nr_Ident_Usuar AS Identificación,'+
      '   Left(Primer_Nombre,10)+ '+chr(39)+'  '+chr(39)+ '+Left(Segundo_Nombre,10) as Nombre,'+
      '   Est_Adminsion as Estado_Adm,CRDetCargos.Emp_Factura,CRDetCargos.Factura as Numero_Fac,INEncFacturacion.Estado as Estado_Factura ,  '+
      '   CREncCargos.No_Cargo,CREncCargos.Fecha '+
      ' From   SAAdmisiones,SAPacientes,CREncCargos,CRDetCargos,INEncFacturacion '+
      ' WHERE  SAAdmisiones.No_Admision = CREncCargos.No_admision AND '+
      ' (SAAdmisiones.Tp_Ident_Usuar  =SAPacientes.Tp_Ident_Usuar AND '+
      ' SAAdmisiones.Nr_Ident_Usuar  =SAPacientes.Nr_Ident_Usuar) AND '+
      ' CREncCargos.No_Cargo = CRDetCargos.No_Cargo AND '+
      ' (CRDetCargos.Emp_Factura = INEncFacturacion.Empresa AND '+
      ' CRDetCargos.Factura = INEncFacturacion.Numero_Factura)  ','');
end;

procedure TMainForm.Compoder1Click(Sender: TObject);
begin
  FormComprobador := tFormComprobador.create(application);
  try
    FormComprobador.Show;
  except
    FormComprobador.free;
  end;
end;


procedure TMainForm.Soft471Click(Sender: TObject);
Begin
  {Si existe otra instancia ya ejecutandose, la activamos}
  {If there's another instance already running, activate that one}
  {RvHandle := FindWindow('MenuSoft47', NIL);
  if RvHandle > 0 then
  begin
    PostMessage(RvHandle, CM_RESTORE, 0, 0);
    Exit;
  end;}

  {FrmMenu := tFrmMenu.create(application);
  try
    FrmMenu.Show;
  except
    FrmMenu.free;
  end;}
end;

procedure TMainForm.Ayuda1Click(Sender: TObject);
begin
  shellexecute(handle,'open',pchar('Consultorios.pdf'),'','',sw_shownormal);
end;

end.
