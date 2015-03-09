unit MAIN;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  StdCtrls, Dialogs, Buttons, Messages, ExtCtrls, ComCtrls, StdActns,
  ActnList, ToolWin, ImgList,iniFiles, DB, ADODB, jpeg, XPMan,shellapi,
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
    ComprobantesContables1: TMenuItem;
    Movimientos1: TMenuItem;
    Reportes1: TMenuItem;
    Factura1: TMenuItem;
    StatusBar1: TStatusBar;
    N2: TMenuItem;
    GeneradordeReportes1: TMenuItem;
    N3: TMenuItem;
    EliminalaCompra1: TMenuItem;
    N4: TMenuItem;
    ListadodeCompras1: TMenuItem;
    OrdenCompra1: TMenuItem;
    Ayuda1: TMenuItem;
    N6: TMenuItem;
    img: TImage;
    procedure FileNew1Execute(Sender: TObject);
    procedure FileOpen1Execute(Sender: TObject);
    procedure HelpAbout1Execute(Sender: TObject);
    procedure FileExit1Execute(Sender: TObject);
    procedure ComprobantesContables1Click(Sender: TObject);
//    procedure Saldos1Click(Sender: TObject);
    procedure Movimientos1Click(Sender: TObject);
    procedure Factura1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure GeneradordeReportes1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EliminalaCompra1Click(Sender: TObject);
    procedure ListadodeCompras1Click(Sender: TObject);
    procedure OrdenesdeCompra1Click(Sender: TObject);
    procedure OrdenCompra1Click(Sender: TObject);
    procedure Ayuda1Click(Sender: TObject);
  private
    { Private declarations }
    procedure CreateMDIChild(const Name: string);
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses CHILDWIN, about, FFacturacion1,
  fContabilidad6, frmproductos,
  UDataModule1, Reporteador, FElimCompra,
  FCapturaOrdenCompra, ReporteOrden, Ffactura1, ParamCompras,
  CapturaBasica2, CapturaBasica, SEIngreso, Libreria_PrateincoForm;

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

procedure TMainForm.ComprobantesContables1Click(Sender: TObject);
begin
  FormCapturaCompra := tFormCapturaCompra.create(application);
  try
    Datamodule1.MuestraconAcceso(FormCapturaCompra);
  except
    FormCapturaCompra.free;
  end;
end;

procedure TMainForm.Movimientos1Click(Sender: TObject);
begin
  ReporteadorP('','SELECT * '+
    ' FROM  INEncCompras,INDetCompras '+
    ' WHERE INEncCompras.Numero_Compra = INDetCompras.Numero_Compra','');
end;

procedure TMainForm.Factura1Click(Sender: TObject);
begin
  ImpresionCompra := tImpresionCompra.create(application);
  try
    Datamodule1.MuestraconAcceso(ImpresionCompra);
  except
    ImpresionCompra.free;
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

procedure TMainForm.GeneradordeReportes1Click(Sender: TObject);
begin
  ReporteadorP('','','');
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  MainForm.Caption := MainForm.Caption +'  ('+Datamodule1.Bd+')';
end;

procedure TMainForm.EliminalaCompra1Click(Sender: TObject);
begin
  EliminaCompra := tEliminaCompra.create(application);
  try
    Datamodule1.MuestraconAcceso(EliminaCompra);
  except
    EliminaCompra.free;
  end;
end;

procedure TMainForm.ListadodeCompras1Click(Sender: TObject);
begin
  ReporteadorP(' Compras','SELECT INDETCompras.numero_compra as NoCompra, Proveedor+'+chr(39)+' '+chr(39)+'+Nom_Proveedor as Proveedor,Fecha,Numero_Transaccion_Inventario as NoInvent,INDETCompras.Codigo_Producto+INProductos.DESCRIPCION as Producto,INDETCompras.cantidad, INDETCompras.Valor_Unitario,  '+
      ' INDETCompras.Valor_Total, INDETCompras.Valor_IVA ' +
      ' FROM INEncCompras inner join INDETCompras on ' +
      '      INEncCompras.numero_compra=INDETCompras.numero_compra '+
      ' inner join INProductos on ' +
      '  INDETCompras.codigo_producto = INProductos.CD_Producto '   +
      ' left outer join CONTTerce on '+
      '     INEncCompras.Proveedor = CONTTerce.Numero_Documento ','');

  {
   ReporteadorP(' Compras','SELECT INDETCompras.numero_compra as NoCompra, Proveedor+'+chr(39)+' '+chr(39)+'+Nom_Proveedor as Proveedor,Fecha,Numero_Transaccion_Inventario as NoInvent,INDETCompras.Codigo_Producto+INProductos.DESCRIPCION as Producto,INDETCompras.cantidad, INDETCompras.Valor_Unitario,  '+
      ' INDETCompras.Valor_Total, INDETCompras.Valor_IVA FROM INEncCompras, INDETCompras, INProductos,CONTTerce '+
      ' WHERE INEncCompras.numero_compra=INDETCompras.numero_compra '+
      ' AND INEncCompras.Proveedor * = CONTTerce.Numero_Documento '+
      ' AND INDETCompras.codigo_producto = INProductos.CD_Producto ','');
   }
  end;

procedure TMainForm.OrdenesdeCompra1Click(Sender: TObject);
begin
  FormCapOrdenCompra := tFormCapOrdenCompra.create(application);
  try
    Datamodule1.MuestraconAcceso(FormCapOrdenCompra);
  except
    FormCapOrdenCompra.free;
  end;
end;

procedure TMainForm.OrdenCompra1Click(Sender: TObject);
begin
  ImpresionOrden := tImpresionOrden.create(application);
  try
    Datamodule1.MuestraconAcceso(ImpresionOrden);
  except
    ImpresionOrden.free;
  end;
end;

procedure TMainForm.Ayuda1Click(Sender: TObject);
begin
  shellexecute(handle,'open',pchar('Compras.pdf'),'','',sw_shownormal);
end;

end.
