unit MAIN;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  StdCtrls, Dialogs, Buttons, Messages, ExtCtrls, ComCtrls, StdActns,
  ActnList, ToolWin, ImgList,iniFiles, DB, ADODB,xpman, Vcl.Imaging.jpeg,
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
    Capturas1: TMenuItem;
    Consultas1: TMenuItem;
    Datos1: TMenuItem;
    Reportes1: TMenuItem;
    StatusBar1: TStatusBar;
    GeneradordeReportes1: TMenuItem;
    GenerarBackup1: TMenuItem;
    RestaurarBackupenPlanos1: TMenuItem;
    N3: TMenuItem;
    UsuariosdelSistema1: TMenuItem;
    EmpresasCreadas1: TMenuItem;
    N4: TMenuItem;
    Areas1: TMenuItem;
    Cargos1: TMenuItem;
    N5: TMenuItem;
    MenusAsignados1: TMenuItem;
    CrearUsuarios1: TMenuItem;
    CrearEmpresasAreasCargos1: TMenuItem;
    CrearMenus1: TMenuItem;
    N2: TMenuItem;
    LogsdeDatos1: TMenuItem;
    N6: TMenuItem;
    LogsdeDatos2: TMenuItem;
    ActivarInactivarMenus1: TMenuItem;
    ablasPrincipales1: TMenuItem;
    Parametros1: TMenuItem;
    Privilegios1: TMenuItem;
    N8: TMenuItem;
    Validaciones1: TMenuItem;
    UsuariosMultinivel1: TMenuItem;
    UsuariosActivos1: TMenuItem;
    UsuariosInactivos1: TMenuItem;
    LicenciasInstaladas1: TMenuItem;
    Parametros2: TMenuItem;
    Cargos2: TMenuItem;
    Admisiones1: TMenuItem;
    Citas1: TMenuItem;
    N1: TMenuItem;
    Caja1: TMenuItem;
    Compras1: TMenuItem;
    Facturacion1: TMenuItem;
    Inventarios1: TMenuItem;
    UsuariosdeCitasaunUsuario1: TMenuItem;
    img: TImage;
    DiferenciasentreGemaxxxyGemaPrateinco1: TMenuItem;
    N7: TMenuItem;
    CitasMdicas1: TMenuItem;
    Consultorios1: TMenuItem;
    Inventarios2: TMenuItem;
    Contabilidad1: TMenuItem;
    CreacindelFormato1: TMenuItem;
    Formatos1: TMenuItem;
    FormatosporMdico1: TMenuItem;
    CopiarFormatos1: TMenuItem;
    Maestras1: TMenuItem;
    Documentos1: TMenuItem;
    N9: TMenuItem;
    ParametrosdeGrficas1: TMenuItem;
    procedure FileNew1Execute(Sender: TObject);
    procedure FileOpen1Execute(Sender: TObject);
    procedure HelpAbout1Execute(Sender: TObject);
    procedure FileExit1Execute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure GeneradordeReportes1Click(Sender: TObject);
    procedure GenerarBackup1Click(Sender: TObject);
    procedure UsuariosdelSistema1Click(Sender: TObject);
    procedure EmpresasCreadas1Click(Sender: TObject);
    procedure Areas1Click(Sender: TObject);
    procedure Cargos1Click(Sender: TObject);
    procedure MenusAsignados1Click(Sender: TObject);
    procedure Datos1Click(Sender: TObject);
    procedure RestaurarBackupenPlanos1Click(Sender: TObject);
    procedure CrearUsuarios1Click(Sender: TObject);
    procedure CrearEmpresasAreasCargos1Click(Sender: TObject);
    procedure CrearMenus1Click(Sender: TObject);
    procedure LogsdeDatos1Click(Sender: TObject);
    procedure LogsdeDatos2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActivarInactivarMenus1Click(Sender: TObject);
    procedure Parametros1Click(Sender: TObject);
    procedure Privilegios1Click(Sender: TObject);
    procedure Validaciones1Click(Sender: TObject);
    procedure UsuariosMultinivel1Click(Sender: TObject);
    procedure UsuariosActivos1Click(Sender: TObject);
    procedure UsuariosInactivos1Click(Sender: TObject);
    procedure LicenciasInstaladas1Click(Sender: TObject);
    procedure Cargos2Click(Sender: TObject);
    procedure Admisiones1Click(Sender: TObject);
    procedure Citas1Click(Sender: TObject);
    procedure Caja1Click(Sender: TObject);
    procedure Compras1Click(Sender: TObject);
    procedure Facturacion1Click(Sender: TObject);
    procedure Inventarios1Click(Sender: TObject);
    procedure UsuariosdeCitasaunUsuario1Click(Sender: TObject);
    procedure DiferenciasentreGemaxxxyGemaPrateinco1Click(Sender: TObject);
    procedure Formatos1Click(Sender: TObject);
    procedure FormatosporMdico1Click(Sender: TObject);
    procedure CopiarFormatos1Click(Sender: TObject);
    procedure Documentos1Click(Sender: TObject);
    procedure ParametrosdeGrficas1Click(Sender: TObject);
  private
    { Private declarations }
    procedure CreateMDIChild(const Name: string);
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses about, UDataModule1, Reporteador,  UBackup,
 FAdmonTablas, Crear3, SETablas, FCrearMenus,
  Unit1,   FrmAutorizaArea, UnitPrivilegios,
  CapturaBasica2, CapturaBasica, ParamCarg, UParametrosAdmi,
  UnitBuscarCitasCumplidas, ParamInv, UParametrosCaja, CapturaBasica3,ParametFact,
  ParamCompras, SEIngreso, Libreria_PrateincoForm, CreaFormatoD,
  FFormatosxPersona, UCopiaFormatos, GrProg;

{$R *.dfm}


procedure TMainForm.CreateMDIChild(const Name: string);
//var
//  Child: TMDIChild;
begin
  { create a new MDI child window }
  //Child := TMDIChild.Create(Application);
  //Child.Caption := Name;
  //if FileExists(Name) then Child.Memo1.Lines.LoadFromFile(Name);
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

procedure TMainForm.Inventarios1Click(Sender: TObject);
begin
  ParametrosInv := tParametrosInv.create(application);
  try
    Datamodule1.MuestraconAcceso(ParametrosInv);
  except
    ParametrosInv.free;
  end;
end;

procedure TMainForm.Facturacion1Click(Sender: TObject);
begin
  ParametrosFact := tParametrosFact.create(application);
  try
    ParametrosFact.show;
  except
    ParametrosFact.free;
  end;
end;

procedure TMainForm.FileExit1Execute(Sender: TObject);
begin
  Close;
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
end;

procedure TMainForm.Formatos1Click(Sender: TObject);
begin
  FCreacionFormatosD := tFCreacionFormatosD.create(application);
  try
    Datamodule1.MuestraconAcceso(FCreacionFormatosD);
  except
    FCreacionFormatosD.free;
  end;
end;

procedure TMainForm.FormatosporMdico1Click(Sender: TObject);
begin
  FormFmtoxPersona := tFormFmtoxPersona.create(application);
  try
    Datamodule1.MuestraconAcceso(FormFmtoxPersona);
  except
    FormFmtoxPersona.free;
  end;
end;

procedure TMainForm.GeneradordeReportes1Click(Sender: TObject);
begin
  ReporteadorP('','','');
end;

procedure TMainForm.Admisiones1Click(Sender: TObject);
begin
  ParametrosAdm := tParametrosAdm.create(application);
  try
    ParametrosAdm.show;
  except
    ParametrosAdm.free;
  end;
end;

procedure TMainForm.GenerarBackup1Click(Sender: TObject);
begin
  FBackup := tFBackup.create(application);
  try
    FBackup.show;
  except
    FBackup.free;
  end;
end;

procedure TMainForm.UsuariosdeCitasaunUsuario1Click(Sender: TObject);
begin
  CapturaB3 := tCapturaB3.create(application);
  CapturaB3.Label11.Caption := 'Asignación de Agendas de Usuarios a un Usuario Especifico'; //Descripción
  CapturaB3.Label1.Caption  := 'Comunes..SEPersonas';             //Tabla Principal
  CapturaB3.Label2.Caption  := 'A.Id';                            //Campo Llave Principal
  CapturaB3.Label3.Caption  := 'A.Primer_Apellido+'+chr(39)+' '+chr(39)+'+A.Nombres';     //Desc Principal
  CapturaB3.Label4.Caption  := 'Comunes..SEPersonas';             //Tabla Secundaria
  CapturaB3.Label5.Caption  := 'B.Id';                            //Campo Llave Secundario
  CapturaB3.Label6.Caption  := 'B.Primer_Apellido+'+chr(39)+' '+chr(39)+'+B.Nombres';     //Desc Secundario
  CapturaB3.Edit3.Text      := 'CIUsuarios';                      //Tabla Union
  CapturaB3.Edit8.Text      := 'Id_Asigna';                       //Llave Union 1
  CapturaB3.Edit9.Text      := 'Id_Agenda';                       //Llave Union 2

  try
    Datamodule1.MuestraconAcceso(CapturaB3);
    CapturaB3.DBLookupComboBox1.KeyValue := Datamodule1.ADOQuery1.FieldValues['id'];
  except
    CapturaB3.free;
  end;
end;

procedure TMainForm.UsuariosdelSistema1Click(Sender: TObject);
begin
  ReporteadorP('Listado de Personas','SELECT * FROM Comunes..SEPersonas','');
end;

procedure TMainForm.EmpresasCreadas1Click(Sender: TObject);
begin
  ReporteadorP('Listado de Empresas','SELECT * FROM Comunes..SEEmpresas','');
end;

procedure TMainForm.Areas1Click(Sender: TObject);
begin
  ReporteadorP('Listado de Areas','SELECT * FROM Comunes..SEAreas','');
end;

procedure TMainForm.Caja1Click(Sender: TObject);
begin
  ParametrosCaja := tParametrosCaja.create(application);
  try
    ParametrosCaja.show;
  except
    ParametrosCaja.free;
  end;
end;

procedure TMainForm.Cargos1Click(Sender: TObject);
begin
  ReporteadorP('Listado de Cargos','SELECT * FROM Comunes..SECargos','');
end;

procedure TMainForm.Cargos2Click(Sender: TObject);
begin
  ParametrosCargo := tParametrosCargo.create(application);
  try
    ParametrosCargo.show;
  except
    ParametrosCargo.free;
  end;
end;

procedure TMainForm.Citas1Click(Sender: TObject);
begin
  FrmBuscaCitasCumplidas  := TFrmBuscaCitasCumplidas.Create(SelF);
  FrmBuscaCitasCumplidas.PageControl1.ActivePageIndex := 2;
  FrmBuscaCitasCumplidas.Caption  := 'Parámetros de citas';
  try
    DataModule1.MuestraconAcceso(FrmBuscaCitasCumplidas);
  except
    FrmBuscaCitasCumplidas.Free;
  end;
end;

procedure TMainForm.Compras1Click(Sender: TObject);
begin
  ParametrosCompras := tParametrosCompras.create(application);
  try
    ParametrosCompras.show;
  except
    ParametrosCompras.free;
  end;
end;

procedure TMainForm.CopiarFormatos1Click(Sender: TObject);
begin
  FCopiaFMT := tFCopiaFMT.create(application);
  try
    Datamodule1.MuestraconAcceso(FCopiaFMT);
  except
    FCopiaFMT.free;
  end;
end;

procedure TMainForm.MenusAsignados1Click(Sender: TObject);
begin
  ReporteadorP('Listado de Programas','SELECT * FROM Comunes..SEProgramas','');
end;

procedure TMainForm.Datos1Click(Sender: TObject);
begin
  ReporteadorP('sp_who','','');
end;

procedure TMainForm.DiferenciasentreGemaxxxyGemaPrateinco1Click(
  Sender: TObject);
begin
  ReporteadorP('', 'SELECT x.name AS nom_tabla, c.name AS nom_columna '
   +'FROM gemaipsprat.sys.columns AS c INNER JOIN gemaipsprat.sys.types AS t '
   +'ON c.user_type_id = t.user_type_id INNER JOIN gemaipsprat.sys.sysobjects AS x '
   +'ON x.id = c.object_id AND x.xtype IN ('+chr(39)+'U'+chr(39)+') LEFT OUTER JOIN '+Datamodule1.ADOQuery1.FieldValues['BaseDatos']+'.sys.sysobjects AS x1 '
   +'ON x.name = x1.name AND x1.xtype IN ('+chr(39)+'U'+chr(39)+') FULL OUTER JOIN '+Datamodule1.ADOQuery1.FieldValues['BaseDatos']+'.sys.columns AS c1 '
   +'ON c1.name = c.name AND x1.id = c1.object_id LEFT OUTER JOIN '+Datamodule1.ADOQuery1.FieldValues['BaseDatos']+'.sys.types AS t1 '
   +'ON c1.user_type_id = t1.user_type_id  WHERE c1.name is null  UNION '

   +'SELECT x.name AS nom_tabla, c.name AS nom_columna '
   +'FROM '+Datamodule1.ADOQuery1.FieldValues['BaseDatos']+'.sys.columns AS c INNER JOIN '+Datamodule1.ADOQuery1.FieldValues['BaseDatos']+'.sys.types AS t '
   +'ON c.user_type_id = t.user_type_id INNER JOIN '+Datamodule1.ADOQuery1.FieldValues['BaseDatos']+'.sys.sysobjects AS x '
   +'ON x.id = c.object_id AND x.xtype IN ('+chr(39)+'U'+chr(39)+') LEFT OUTER JOIN GemaIPSPrat.sys.sysobjects AS x1 '
   +'ON x.name = x1.name AND x1.xtype IN ('+chr(39)+'U'+chr(39)+') FULL OUTER JOIN GemaIPSPrat.sys.columns AS c1 '
   +'ON c1.name = c.name AND x1.id = c1.object_id LEFT OUTER JOIN GemaIPSPrat.sys.types AS t1 '
   +'ON c1.user_type_id = t1.user_type_id  WHERE c1.name is null  ORDER BY x.name,c.name ','');
end;

procedure TMainForm.Documentos1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'INDocumentos';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TMainForm.RestaurarBackupenPlanos1Click(Sender: TObject);
begin
  FormAdmonTabla := tFormAdmonTabla.create(application);
  try
    FormAdmonTabla.Edit1.Text:='';
    FormAdmonTabla.show;
  except
    FormAdmonTabla.free;
  end;
end;

procedure TMainForm.CrearUsuarios1Click(Sender: TObject);
begin
  FCreaEmpresa := tFCreaEmpresa.create(application);
  try
    FCreaEmpresa.show;
  except
    FCreaEmpresa.free;
  end;
end;

procedure TMainForm.CrearEmpresasAreasCargos1Click(Sender: TObject);
begin
  FCreaUsuarios := tFCreaUsuarios.create(application);
  try
    FCreaUsuarios.show;
  except
    FCreaUsuarios.free;
  end;
end;

procedure TMainForm.CrearMenus1Click(Sender: TObject);
begin
  FormCreaMenus := tFormCreaMenus.create(application);
  try
    FormCreaMenus.show;
  except
    FormCreaMenus.free;
  end;
end;

procedure TMainForm.LogsdeDatos1Click(Sender: TObject);
begin
  ReporteadorP('Logs de Datos','SELECT Fecha as Fecha_Modificación,A.Id As Ident,LEFT(Primer_Apellido+'+chr(39)+' '+chr(39)+ '+Segundo_Apellido+'+chr(39)+' '+chr(39)+'+Nombres,35) As Nombre,Tipo,LEFT(Fecha_Tran,10) as Fecha_Tran,LEFT(Valor_Anterior,20) As Valor_Anterior,LEFT(Valor_Nuevo,30) As Calor_Nuevo,LEFT(Tabla,20) As Tabla,Campo FROM Comunes..SEHistorico AS A,SEPersonas AS B '+
  'WHERE A.Id=B.Id Order By Fecha','');
end;

procedure TMainForm.LogsdeDatos2Click(Sender: TObject);
begin
  ReporteadorP('Listado de Personas','SELECT * FROM Comunes..SEHistorico','');
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  MainForm.Caption := MainForm.Caption +'  ('+Datamodule1.Bd+')';
end;

procedure TMainForm.ActivarInactivarMenus1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  try
    CapturaB.Edit1.Text := 'Comunes..SEProgramasTemp';
    CapturaB.show;
  except
    CapturaB.free;
  end;
end;

procedure TMainForm.Parametros1Click(Sender: TObject);
begin
  FrmParametros := tFrmParametros.create(application);
  try
    FrmParametros.show;
  except
    FrmParametros.free;
  end;
end;

procedure TMainForm.ParametrosdeGrficas1Click(Sender: TObject);
begin
  form4 := tform4.create(application);
  try
    Datamodule1.MuestraconAcceso(form4);
  except
    form4.free;
  end;
end;

procedure TMainForm.Privilegios1Click(Sender: TObject);
begin
  FrmPrivilegios  := TFrmPrivilegios.Create(application);
  try
    FrmPrivilegios.Show;
  except
    FrmPrivilegios.Free;
  end;
end;

procedure TMainForm.Validaciones1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  try
    CapturaB.Edit1.Text := 'Comunes..SEValidaciones';
    CapturaB.show;
  except
    CapturaB.free;
  end;

end;

procedure TMainForm.UsuariosMultinivel1Click(Sender: TObject);
begin
  ReporteadorP('Logs de Datos','SELECT SEEmpleados.ID,Primer_Apellido,Segundo_Apellido,Nombres,Empresa_Trabaja,Area_Trabaja,Cargo_Trabaja,Estado '+
  ' FROM Comunes..SEEmpleados,Comunes..SEPersonas'+
  ' WHERE SEEmpleados.ID = SEPersonas.ID AND Multiempresa = '+chr(39)+'S'+chr(39)+
  ' ORDER BY SEEmpleados.ID','');
end;

procedure TMainForm.UsuariosActivos1Click(Sender: TObject);
begin
  ReporteadorP('Logs de Datos','SELECT SEEmpleados.ID,Primer_Apellido,Segundo_Apellido,Nombres,Empresa_Trabaja,Area_Trabaja,Cargo_Trabaja,Estado '+
  ' FROM Comunes..SEEmpleados,Comunes..SEPersonas'+
  ' WHERE SEEmpleados.ID = SEPersonas.ID AND Estado = '+chr(39)+'A'+chr(39)+
  ' ORDER BY SEEmpleados.ID','');
end;

procedure TMainForm.UsuariosInactivos1Click(Sender: TObject);
begin
  ReporteadorP('Logs de Datos','SELECT SEEmpleados.ID,Primer_Apellido,Segundo_Apellido,Nombres,Empresa_Trabaja,Area_Trabaja,Cargo_Trabaja,Estado '+
  ' FROM Comunes..SEEmpleados,Comunes..SEPersonas'+
  ' WHERE SEEmpleados.ID = SEPersonas.ID AND Estado = '+chr(39)+'I'+chr(39)+
  ' ORDER BY SEEmpleados.ID','');
end;

procedure TMainForm.LicenciasInstaladas1Click(Sender: TObject);
begin
  ReporteadorP('Licencias','SELECT Nit_Empresa,Primer_Apellido,Serial,Mac,Programa,Autorizado,Usuario ' +
    ' FROM Comunes..SEValida,CONTTerce ' +
    ' WHERE Comunes..SEValida.Nit_Empresa =  CONTTerce.Numero_Documento'+
    ' ORDER BY Nit_Empresa','');
end;

end.
