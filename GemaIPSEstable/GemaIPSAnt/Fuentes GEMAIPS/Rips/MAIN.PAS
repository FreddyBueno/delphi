unit MAIN;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  StdCtrls, Dialogs, Buttons, Messages, ExtCtrls, ComCtrls, StdActns,
  ActnList, ToolWin, ImgList,iniFiles, DB, ADODB, jpeg, XPMan,shellapi;

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
    ComprobantesContables1: TMenuItem;
    Reportes1: TMenuItem;
    StatusBar1: TStatusBar;
    GeneradordeReportes1: TMenuItem;
    N4: TMenuItem;
    GenerarRIPS1: TMenuItem;
    Ayuda1: TMenuItem;
    N2: TMenuItem;
    img: TImage;
    RIPS1: TMenuItem;
    N451: TMenuItem;
    procedure FileNew1Execute(Sender: TObject);
    procedure FileOpen1Execute(Sender: TObject);
    procedure HelpAbout1Execute(Sender: TObject);
    procedure FileExit1Execute(Sender: TObject);
    procedure ComprobantesContables1Click(Sender: TObject);
    procedure Saldos1Click(Sender: TObject);
    procedure Parametros1Click(Sender: TObject);
    procedure SaldosxProducto1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Productos1Click(Sender: TObject);
    procedure Grupos1Click(Sender: TObject);
    procedure Kardex1Click(Sender: TObject);
    procedure GeneradordeReportes1Click(Sender: TObject);
    procedure GenerarRIPS1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Ayuda1Click(Sender: TObject);
    procedure N451Click(Sender: TObject);
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

{$R *.dfm}

uses CHILDWIN, about, FFacturacion1, Factura13,
  fContabilidad6, UDataModule1,  frmproductos,
  frmGrupos, fKardex, 
   Reporteador, urips1, GrabaRips, SEIngreso, Libreria_PrateincoForm, Res4505;

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
  AboutBox.ShowModal;
end;

procedure TMainForm.FileExit1Execute(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.ComprobantesContables1Click(Sender: TObject);
begin
  FormRIPS := tFormRIPS.create(application);
  try
    Datamodule1.MuestraconAcceso(FormRIPS);
  except
   FormRIPS.free;
  end;
end;

procedure TMainForm.Saldos1Click(Sender: TObject);
begin
//  Form5 := tForm5.create(application);
//  try
//    Form5.show;
//  except
//    Form5.free;
//  end;
end;

procedure TMainForm.Parametros1Click(Sender: TObject);
begin
  Form13 := tForm13.create(application);
  try
    Datamodule1.MuestraconAcceso(Form13);
  except
    Form13.free;
  end;
end;

procedure TMainForm.SaldosxProducto1Click(Sender: TObject);
begin
  Form6 := tForm6.create(application);
  try
    Datamodule1.MuestraconAcceso(Form6);
  except
    Form6.free;
  end;
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

procedure TMainForm.Productos1Click(Sender: TObject);
begin
    productos := tproductos.create(application);
  try
    Datamodule1.MuestraconAcceso(productos);
  except
    productos.free;
  end;
end;

procedure TMainForm.Grupos1Click(Sender: TObject);
begin
    grupos := tgrupos.create(application);
  try
    Datamodule1.MuestraconAcceso(grupos);
  except
    grupos.free;
  end;
end;

procedure TMainForm.Kardex1Click(Sender: TObject);
begin
  Kardex := tKardex.create(application);
  try
    Datamodule1.MuestraconAcceso(Kardex);
  except
    Kardex.free;
  end;
end;

procedure TMainForm.N451Click(Sender: TObject);
begin
  F4505 := tF4505.create(application);
  try
    Datamodule1.MuestraconAcceso(F4505);
  except
    F4505.free;
  end;
end;

procedure TMainForm.GeneradordeReportes1Click(Sender: TObject);
begin
  ReporteadorP('','','');
end;

procedure TMainForm.GenerarRIPS1Click(Sender: TObject);
begin
  FormGrabaRIPS := tFormGrabaRIPS.create(application);
  try
    Datamodule1.MuestraconAcceso(FormGrabaRIPS);
  except
    FormGrabaRIPS.free;
  end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  Height := Height * Screen.Height div alto;
  Width := Width * Screen.Width div ancho;
  ScaleBy(Screen.Width, ancho);
  MainForm.Caption := MainForm.Caption +'  ('+Datamodule1.Bd+')';
end;

procedure TMainForm.Ayuda1Click(Sender: TObject);
begin
  shellexecute(handle,'open',pchar('ControlRips.pdf'),'','',sw_shownormal);
end;

end.
