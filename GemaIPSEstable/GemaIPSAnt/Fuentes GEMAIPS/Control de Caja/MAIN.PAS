unit MAIN;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  StdCtrls, Dialogs, Buttons, Messages, ExtCtrls, ComCtrls, StdActns,
  ActnList, ToolWin, ImgList,IniFiles, DB, ADODB, jpeg, Grids, DBGrids,shellapi,
  DBCtrls,XPMan;

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
    Procesos1: TMenuItem;
    Consultas1: TMenuItem;
    Movimientos1: TMenuItem;
    Reportes1: TMenuItem;
    Factura1: TMenuItem;
    PrefacturacinporCargos1: TMenuItem;
    StatusBar1: TStatusBar;
    N2: TMenuItem;
    GeneradordeReportes1: TMenuItem;
    ListadodeFacturas1: TMenuItem;
    N5: TMenuItem;
    ValoresFacturadosporMeses1: TMenuItem;
    ValoresFacturadosporAos1: TMenuItem;
    N3: TMenuItem;
    FacturasPendientesdePago1: TMenuItem;
    otalesporCliente1: TMenuItem;
    otalesporClienteMes1: TMenuItem;
    CarteraporEdades1: TMenuItem;
    N6: TMenuItem;
    IngresosDiariosporUsuario1: TMenuItem;
    IngresosTotales1: TMenuItem;
    ArqueodeCaja1: TMenuItem;
    ListadodeIngresosAnulados1: TMenuItem;
    Conceptos1: TMenuItem;
    IngresosxFactura1: TMenuItem;
    N7: TMenuItem;
    CarteraporEdadesposterioraMayo20081: TMenuItem;
    CarteraAnterioraMayo20081: TMenuItem;
    CrucedeFacturasconRecibosdeCaja1: TMenuItem;
    N8: TMenuItem;
    ValoresdeFacturasPagadasdeMas1: TMenuItem;
    Union1: TMenuItem;
    Documentos1: TMenuItem;
    Documentos2: TMenuItem;
    iposdeDocumentos1: TMenuItem;
    ListadodeIngresosporDocumento1: TMenuItem;
    IngresosporCliente1: TMenuItem;
    FacturasPendientesdePago2: TMenuItem;
    BusquedadeFacturas1: TMenuItem;
    GroupBox1: TGroupBox;
    Splitter1: TSplitter;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    ADOQRecCon: TADOQuery;
    DataSource1: TDataSource;
    Panel2: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSource2: TDataSource;
    ADOQFec: TADOQuery;
    Ayuda1: TMenuItem;
    N9: TMenuItem;
    Ingr1: TMenuItem;
    GroupBox3: TGroupBox;
    DBGrid2: TDBGrid;
    GroupBox4: TGroupBox;
    DBGrid3: TDBGrid;
    DataSource3: TDataSource;
    ADOQRecDet: TADOQuery;
    Splitter2: TSplitter;
    img: TImage;
    procedure FileNew1Execute(Sender: TObject);
    procedure FileOpen1Execute(Sender: TObject);
    procedure HelpAbout1Execute(Sender: TObject);
    procedure FileExit1Execute(Sender: TObject);
    procedure Movimientos1Click(Sender: TObject);
    procedure Factura1Click(Sender: TObject);
    procedure SaldosxProducto1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure GeneradordeReportes1Click(Sender: TObject);
    procedure MantenimientodeFacturas1Click(Sender: TObject);
    procedure ListadodeFacturas1Click(Sender: TObject);
    procedure ValoresFacturadosporMeses1Click(Sender: TObject);
    procedure ValoresFacturadosporAos1Click(Sender: TObject);
    procedure FacturasPendientesdePago1Click(Sender: TObject);
    procedure otalesporCliente1Click(Sender: TObject);
    procedure otalesporClienteMes1Click(Sender: TObject);
    procedure CarteraporEdades1Click(Sender: TObject);
    procedure IngresosDiariosporUsuario1Click(Sender: TObject);
    procedure IngresosTotales1Click(Sender: TObject);
    procedure ArqueodeCaja1Click(Sender: TObject);
    procedure ListadodeIngresosAnulados1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure IngresoporCajacontraFacturasMultiple1Click(Sender: TObject);
    procedure Conceptos1Click(Sender: TObject);
    procedure IngresosxFactura1Click(Sender: TObject);
    procedure CarteraporEdadesposterioraMayo20081Click(Sender: TObject);
    procedure CarteraAnterioraMayo20081Click(Sender: TObject);
    procedure CrucedeFacturasconRecibosdeCaja1Click(Sender: TObject);
    procedure ValoresdeFacturasPagadasdeMas1Click(Sender: TObject);
    procedure Union1Click(Sender: TObject);
    procedure Documentos2Click(Sender: TObject);
    procedure iposdeDocumentos1Click(Sender: TObject);
    procedure ListadodeIngresosporDocumento1Click(Sender: TObject);
    procedure IngresosporCliente1Click(Sender: TObject);
    procedure FacturasPendientesdePago2Click(Sender: TObject);
    procedure BusquedadeFacturas1Click(Sender: TObject);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
    procedure FormDeactivate(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure Ayuda1Click(Sender: TObject);
    procedure Ingr1Click(Sender: TObject);
  private
    { Private declarations }
    procedure CreateMDIChild(const Name: string);
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses CHILDWIN,about, Ffactura1,
  fContabilidad6,
  UDataModule1, Reporteador,  EMantFactura,
  FArqueoCaja,
  UIngresoCajaMultiple, CapturaBasica, UParametrosCaja, CapturaBasica2,
  SEIngreso, Libreria_PrateincoForm;

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

procedure TMainForm.Movimientos1Click(Sender: TObject);
begin
  ReporteadorP('','SELECT * '+
    ' FROM  CAIngresos,CADetFacturas '+
    ' WHERE CAIngresos.Documento = CADetFacturas.Documento AND '+
    '  CAIngresos.Numero_Ingreso = CADetFacturas.Numero_Ingreso','');
end;

procedure TMainForm.Factura1Click(Sender: TObject);
begin
  FImpReciboCaja := tFImpReciboCaja.create(application);
  try
    Datamodule1.MuestraconAcceso(FImpReciboCaja);
  except
    FImpReciboCaja.free;
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

procedure TMainForm.GeneradordeReportes1Click(Sender: TObject);
begin
  ReporteadorP('','','');
end;

procedure TMainForm.MantenimientodeFacturas1Click(Sender: TObject);
begin
  FEditFactura := tFEditFactura.create(application);
  try
    Datamodule1.MuestraconAcceso(FEditFactura);
  except
    FEditFactura.free;
  end;
end;

procedure TMainForm.ListadodeFacturas1Click(Sender: TObject);
begin
  ReporteadorP(' Ingresos','SELECT CAIngresos.Documento+convert(varchar,CAIngresos.Numero_Ingreso) as No_Doc,left(Fecha,12) as Fecha,Id,Doc_Pagador+'+chr(39)+' '+chr(39)+'+ Nombre_Pagador as Pagador,CAIngresos.Concepto,CAIngresos.Estado,Numero_Comprobante_Contable as Comp,Empresa+'+chr(39)+'-'+chr(39)+'+Numero_Factura as Factura,CADetFacturas.Concepto,Valor '+
    ' FROM  CAIngresos,CADetFacturas '+
    ' WHERE CAIngresos.Documento = CADetFacturas.Documento AND '+
    '      CAIngresos.Numero_Ingreso = CADetFacturas.Numero_Ingreso AND '+
    '     (Estado <> '+chr(39)+'A'+chr(39)+' OR ESTADO IS NULL) ','');
end;

procedure TMainForm.ValoresFacturadosporMeses1Click(Sender: TObject);
begin
  ReporteadorP('Ingresos Mes y Año','SELECT Year(Fecha)As AÑO,Month(Fecha) As MES,CADetFacturas.Concepto,CAConceptos.Descripcion,CAConceptos.Tipo,sum(valor) as Total'+
  ' FROM CAIngresos inner join CADetFacturas on ' +
  '      CAIngresos.Numero_Ingreso = CADetFacturas.Numero_Ingreso  '   +
  ' left outer join CAConceptos on '+
  '      CADetFacturas.Concepto = CAConceptos.Concepto ' +
  ' WHERE (Estado <> '+chr(39)+'A'+chr(39)+' OR ESTADO IS NULL) '+
  ' GROUP BY Year(Fecha),Month(Fecha),CADetFacturas.Concepto,CAConceptos.Descripcion,CAConceptos.Tipo '+
  ' ORDER BY Year(Fecha),Month(Fecha),CADetFacturas.Concepto,CAConceptos.Descripcion,CAConceptos.Tipo ','');
  {
    ReporteadorP('Ingresos Mes y Año','SELECT Year(Fecha)As AÑO,Month(Fecha) As MES,CADetFacturas.Concepto,CAConceptos.Descripcion,CAConceptos.Tipo,sum(valor) as Total'+
  ' FROM CAIngresos,CADetFacturas,CAConceptos'+
  ' WHERE (Estado <> '+chr(39)+'A'+chr(39)+' OR ESTADO IS NULL) '+
  ' AND CAIngresos.Numero_Ingreso = CADetFacturas.Numero_Ingreso AND  CADetFacturas.Concepto * = CAConceptos.Concepto'+
  ' GROUP BY Year(Fecha),Month(Fecha),CADetFacturas.Concepto,CAConceptos.Descripcion,CAConceptos.Tipo'+
  ' ORDER BY Year(Fecha),Month(Fecha),CADetFacturas.Concepto,CAConceptos.Descripcion,CAConceptos.Tipo','');

  }

end;

procedure TMainForm.ValoresFacturadosporAos1Click(Sender: TObject);
begin
  ReporteadorP('Ingresos Año','SELECT Year(Fecha)As A_Ñ_O,CADetFacturas.Concepto,CAConceptos.Descripcion,CAConceptos.Tipo,sum(valor) as Total'+
  ' FROM CAIngresos inner join CADetFacturas on ' +
    '    CAIngresos.Numero_Ingreso = CADetFacturas.Numero_Ingreso  ' +
  ' left outer join CAConceptos on '+
  '      CADetFacturas.Concepto = CAConceptos.Concepto '+
  ' WHERE (Estado <> '+chr(39)+'A'+chr(39)+' OR ESTADO IS NULL) '+
  ' GROUP BY Year(Fecha),CADetFacturas.Concepto,CAConceptos.Descripcion,CAConceptos.Tipo'+
  ' ORDER BY Year(Fecha),CADetFacturas.Concepto,CAConceptos.Descripcion,CAConceptos.Tipo','');
  {
    ReporteadorP('Ingresos Año','SELECT Year(Fecha)As A_Ñ_O,CADetFacturas.Concepto,CAConceptos.Descripcion,CAConceptos.Tipo,sum(valor) as Total'+
  ' FROM CAIngresos,CADetFacturas,CAConceptos'+
  ' WHERE (Estado <> '+chr(39)+'A'+chr(39)+' OR ESTADO IS NULL) '+
  ' AND CAIngresos.Numero_Ingreso = CADetFacturas.Numero_Ingreso AND  CADetFacturas.Concepto * = CAConceptos.Concepto'+
  ' GROUP BY Year(Fecha),CADetFacturas.Concepto,CAConceptos.Descripcion,CAConceptos.Tipo'+
  ' ORDER BY Year(Fecha),CADetFacturas.Concepto,CAConceptos.Descripcion,CAConceptos.Tipo','');

  }

end;

procedure TMainForm.FacturasPendientesdePago1Click(Sender: TObject);
begin
  ReporteadorP('Cuentas por Cobrar','SELECT Cliente,Left(Nombre,35) As Nombre,Left(Direccion,30) As Direccion,Left(Telefono,15) as Telefono,Numero_Factura,Left(Fecha,12) AS Fecha_de_Factura,Valor_Total'+
'  FROM INEncFacturacion,CONTTerce'+
' WHERE INEncFacturacion.Cliente = CONTTerce.Numero_Documento AND (Estado <> '+chr(39)+'A'+chr(39)+' OR ESTADO IS NULL) AND'+
'      Numero_Factura NOT IN (SELECT Numero_Factura FROM CADetFacturas)'+
' ORDER BY Cliente,Numero_Factura,Fecha','');
end;

procedure TMainForm.otalesporCliente1Click(Sender: TObject);
begin
  ReporteadorP('Cuentas por Cobrar','SELECT Cliente,Left(Nombre,30) As Nombre,Left(Direccion,30) As Direccion,Telefono,Sum(Valor_Total) As Total_CXC'+
' FROM INEncFacturacion,CONTTerce '+
' WHERE INEncFacturacion.Cliente = CONTTerce.Numero_Documento AND (Estado <> '+chr(39)+'A'+chr(39)+' OR ESTADO IS NULL) AND '+
'       Numero_Factura NOT IN (SELECT Numero_Factura FROM CADetFacturas)'+
' GROUP BY Cliente,Nombre,Direccion,Telefono','');
end;

procedure TMainForm.otalesporClienteMes1Click(Sender: TObject);
begin
  ReporteadorP('Cuentas por Cobrar','SELECT Cliente,Left(Nombre,30) As Nombre,Left(Direccion,30) As Direccion,Telefono,Year(Fecha) AS A_Ñ_O,Month(Fecha) AS M_E_S,Sum(Valor_Total) As Total_CXC'+
' FROM INEncFacturacion,CONTTerce '+
' WHERE INEncFacturacion.Cliente = CONTTerce.Numero_Documento AND (Estado <> '+chr(39)+'A'+chr(39)+' OR ESTADO IS NULL) AND '+
'       Numero_Factura NOT IN (SELECT Numero_Factura FROM CADetFacturas)'+
' GROUP BY Cliente,Nombre,Direccion,Telefono,Year(Fecha),Month(Fecha)','');
end;

procedure TMainForm.CarteraporEdades1Click(Sender: TObject);
begin
ReporteadorP('Cuentas por Cobrar','SELECT Year(Fecha) AS A_Ñ_O,Month(Fecha) AS M_E_S,Cliente,Left(Nombre,30) As Nombre,Left(Direccion,30) As Direccion,Telefono,Sum(Valor_Total) As Total_CXC'+
' FROM INEncFacturacion,CONTTerce '+
' WHERE INEncFacturacion.Cliente = CONTTerce.Numero_Documento AND (Estado <> '+chr(39)+'A'+chr(39)+' OR ESTADO IS NULL) AND '+
'       Numero_Factura NOT IN (SELECT Numero_Factura FROM CADetFacturas)'+
' GROUP BY Year(Fecha),Month(Fecha),Cliente,Nombre,Direccion,Telefono','');
end;

procedure TMainForm.IngresosDiariosporUsuario1Click(Sender: TObject);
begin
  ReporteadorP(' Ingresos','SELECT Id as Cajero,Tipo_Concepto AS Tipo,CAIngresos.Concepto as Descripcion,CAIngresos.Numero_Ingreso, '+
      ' Left(Fecha,11) As Fecha,CADetFacturas.Concepto,CAConceptos.Descripcion,Valor AS Valor,Doc_Pagador,Nombre_Pagador'+
      ' FROM   CAIngresos,CADetFacturas,CAConceptos'+
      ' WHERE  CAIngresos.Numero_Ingreso = CADetFacturas.Numero_Ingreso AND'+
      ' CADetFacturas.Concepto = CAConceptos.Concepto AND'+
      ' (Estado <> '+chr(39)+'A'+chr(39)+' OR ESTADO IS NULL) AND Left(Fecha,11) = Left(getdate(),11) AND Id= '+chr(39)+floattostr(Datamodule1.ADOQuery1.FieldValues['Id'])+Chr(39)+
      ' ORDER BY Id,Fecha','');
end;

procedure TMainForm.IngresosTotales1Click(Sender: TObject);
begin
  ReporteadorP(' Ingresos','SELECT Id as Cajero,Tipo_Concepto AS Tipo,CAIngresos.Concepto as Descripcion,CAIngresos.Numero_Ingreso, '+
      ' Left(Fecha,11) As Fecha,CADetFacturas.Concepto,CAConceptos.Descripcion,Valor AS Valor,Doc_Pagador,Nombre_Pagador'+
      ' FROM   CAIngresos,CADetFacturas,CAConceptos'+
      ' WHERE  CAIngresos.Numero_Ingreso = CADetFacturas.Numero_Ingreso AND'+
      ' CADetFacturas.Concepto = CAConceptos.Concepto AND'+
      ' (Estado <> '+chr(39)+'A'+chr(39)+' OR ESTADO IS NULL)  AND Id= '+chr(39)+floattostr(Datamodule1.ADOQuery1.FieldValues['Id'])+Chr(39)+
      ' ORDER BY Id,Fecha','');
end;

procedure TMainForm.ArqueodeCaja1Click(Sender: TObject);
begin
  ArqueoCaja := tArqueoCaja.create(application);
  try
    Datamodule1.MuestraconAcceso(ArqueoCaja);
  except
    ArqueoCaja.free;
  end;
end;

procedure TMainForm.ListadodeIngresosAnulados1Click(Sender: TObject);
begin
  ReporteadorP(' Ingresos','SELECT * FROM CAIngresos WHERE (Estado = '+chr(39)+'A'+chr(39)+')','');
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  MainForm.Caption := MainForm.Caption +'  ('+Datamodule1.Bd+')';
  DBLookupComboBox1.KeyValue := datetostr(now);
  ADOQFec.Open;
  ADOQFec.Last;
  DBLookupComboBox1.KeyValue := ADOQFec.FieldValues['Fecha'];
end;

procedure TMainForm.IngresoporCajacontraFacturasMultiple1Click(
  Sender: TObject);
begin
  IngresosFacturaM := tIngresosFacturaM.create(application);
  try
    Datamodule1.MuestraconAcceso(IngresosFacturaM);
  except
    IngresosFacturaM.free;
  end;
end;

procedure TMainForm.Conceptos1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'CAConceptos';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TMainForm.IngresosxFactura1Click(Sender: TObject);
var v,v2:string;
begin
  v2:=Inputbox('Facturacion','Empresa','1');
  v:=Inputbox('Facturacion','Numero_Factura','1');

  ReporteadorP(' Ingresos','SELECT CAIngresos.Numero_Ingreso,Id as Cajero, '+
      ' Left(Fecha,11) As Fecha,CADetFacturas.Concepto,CAConceptos.Descripcion,Valor AS Valor,Doc_Pagador,Nombre_Pagador'+
      ' FROM   CAIngresos inner join CADetFacturas on ' +
      ' CAIngresos.Numero_Ingreso = CADetFacturas.Numero_Ingreso '+
     ' left outer join CAConceptos  on '+
       ' CADetFacturas.Concepto = CAConceptos.Concepto '+
      ' WHERE   (Estado <> '+chr(39)+'A'+chr(39)+' OR ESTADO IS NULL)'+
      ' AND CADetFacturas.Empresa        like '+chr(39)+'%'+v2+chr(39)+
      ' AND CADetFacturas.Numero_Factura like '+chr(39)+'%'+v+chr(39)+
      ' ORDER BY Id,Fecha','');

      {
        ReporteadorP(' Ingresos','SELECT CAIngresos.Numero_Ingreso,Id as Cajero, '+
      ' Left(Fecha,11) As Fecha,CADetFacturas.Concepto,CAConceptos.Descripcion,Valor AS Valor,Doc_Pagador,Nombre_Pagador'+
      ' FROM   CAIngresos,CADetFacturas,CAConceptos'+
      ' WHERE  CAIngresos.Numero_Ingreso = CADetFacturas.Numero_Ingreso AND'+
      ' CADetFacturas.Concepto * = CAConceptos.Concepto AND'+
      ' (Estado <> '+chr(39)+'A'+chr(39)+' OR ESTADO IS NULL)'+
      ' AND CADetFacturas.Empresa        like '+chr(39)+'%'+v2+chr(39)+
      ' AND CADetFacturas.Numero_Factura like '+chr(39)+'%'+v+chr(39)+
      ' ORDER BY Id,Fecha','');

      }
end;

procedure TMainForm.CarteraporEdadesposterioraMayo20081Click(
  Sender: TObject);
var
  v1: string;
begin
  v1:= InputBox('Fecha', 'Anterior a:', '01/05/2008');

  ReporteadorP('Cuentas por Cobrar','SELECT Cliente,Left(Nombre,30) As Nombre,Left(Direccion,30) As Direccion,Telefono,Numero_Factura,fecha,'+
  '     CASE WHEN (convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) < 30 THEN Sum(Valor_Total-Valor_Descuento+Valor_IVA-Valor_Conceptos) ELSE 0 END AS Menor_30,'+
  '     CASE WHEN ((convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) >= 30) AND ((convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) < 60) THEN Sum(Valor_Total-Valor_Descuento+Valor_IVA-Valor_Conceptos) ELSE 0 END AS Entre_30y60,'+
  '     CASE WHEN ((convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) >= 60) AND ((convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) < 90) THEN Sum(Valor_Total-Valor_Descuento+Valor_IVA-Valor_Conceptos) ELSE 0 END AS Entre_60y90,'+
  '     CASE WHEN (convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) >= 90 THEN Sum(Valor_Total-Valor_Descuento+Valor_IVA-Valor_Conceptos) ELSE 0 END AS Mayor_90'+
  ' FROM   INEncFacturacion,CONTTerce'+
  ' WHERE  INEncFacturacion.Cliente = CONTTerce.Numero_Documento AND (Estado <> '+chr(39)+'A'+chr(39)+' OR ESTADO IS NULL) AND'+
  '     Numero_Factura NOT IN (SELECT Numero_Factura'+
  '                              FROM CADetFacturas,CAIngresos'+
  '                              WHERE CADetFacturas.Numero_Ingreso = CAIngresos.Numero_Ingreso AND'+
  '                              (Estado <> '+chr(39)+'A'+chr(39)+' or Estado is Null) AND'+
  '                               convert(datetime,fecha,103) < convert(datetime,'+chr(39)+v1+chr(39)+',103))'+
  '     AND convert(datetime,fecha,103) < convert(datetime,'+chr(39)+v1+chr(39)+',103)'+
  ' GROUP BY Cliente,Nombre,Direccion,Telefono,Numero_Factura,fecha'+
  ' ORDER BY Cliente,Nombre,Direccion,Telefono,Numero_Factura,fecha','');
end;

procedure TMainForm.CarteraAnterioraMayo20081Click(Sender: TObject);
var
  v1: string;
begin
  v1:= InputBox('Fecha', 'Anterior a:', '01/05/2008');

  ReporteadorP('Cartera Anterior AME','SELECT Cliente,Left(Nombre,30) As Nombre,Left(Direccion,30) As Direccion,Telefono,INENCFacturacion.Numero_Factura,INENCFacturacion.Fecha,'+
     ' CASE WHEN (convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) < 30 THEN max(Valor_Total+Valor_IVA-Valor_Descuento-Valor_Conceptos)-sum(CADetFacturas.Valor) ELSE 0 END AS Menor_30,'+
     ' CASE WHEN ((convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) >= 30) AND ((convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) < 60) THEN max(Valor_Total+Valor_IVA-Valor_Descuento-Valor_Conceptos)-sum(CADetFacturas.Valor) ELSE 0 END AS Entre_30y60,'+
     ' CASE WHEN ((convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) >= 60) AND ((convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) < 90) THEN max(Valor_Total+Valor_IVA-Valor_Descuento-Valor_Concpetos)-sum(CADetFacturas.Valor) ELSE 0 END AS Entre_60y90,'+
     ' CASE WHEN (convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) >= 90 THEN max(Valor_Total+Valor_IVA-Valor_Descuento-Valor_Conceptos)-sum(CADetFacturas.Valor) ELSE 0 END AS Mayor_90'+
     ' FROM   INENCFacturacion,CADetFacturas,CAConceptos,CONTTerce'+
     ' WHERE  INEncFacturacion.Cliente = CONTTerce.Numero_Documento AND'+
     '  (INENCFacturacion.Empresa = CADetFacturas.Empresa AND'+
     '  INENCFacturacion.Numero_Factura = CADetFacturas.Numero_Factura) AND'+
     '  CADetFacturas.Concepto = CAConceptos.Concepto AND (estado <> '+chr(39)+'A'+chr(39)+' or estado is null) AND'+
     '  CADetFacturas.Numero_Ingreso IN (SELECT Numero_Ingreso FROM CAIngresos WHERE Estado IS null AND'+
     '                               convert(datetime,fecha,103) < convert(datetime,'+chr(39)+v1+chr(39)+',103))'+
     '     AND convert(datetime,fecha,103) < convert(datetime,'+chr(39)+v1+chr(39)+',103)'+
     ' GROUP BY Cliente,Left(Nombre,30),Left(Direccion,30),Telefono,INENCFacturacion.Numero_Factura,INENCFacturacion.Fecha'+
     ' HAVING max(INENCFacturacion.Valor_Total+INENCFacturacion.Valor_IVA-INENCFacturacion.Valor_Descuento-INENCFacturacion.Valor_Conceptos)  <> sum(CADetFacturas.Valor) OR'+
     '  sum(CADetFacturas.Valor) is null','');
end;

procedure TMainForm.CrucedeFacturasconRecibosdeCaja1Click(Sender: TObject);
begin
  ReporteadorP('Cruce FacturasVsCaja','SELECT INEncFacturacion.Empresa,INEncFacturacion.Numero_Factura,INEncFacturacion.Fecha,Cliente,Valor_Total as Subtotal,Valor_Descuento as Descuento, Valor_Total-Valor_Descuento+Valor_IVA-Valor_Concpetos as Total,'+
    '   CAIngresos.Numero_Ingreso,CAIngresos.Fecha,CADetFacturas.Concepto,Valor'+
    ' FROM INEncFacturacion left outer join CADetFacturas on ' +
    '     (INEncFacturacion.Empresa = CADetFacturas.Empresa AND'+
    '      INEncFacturacion.Numero_Factura = CADetFacturas.Numero_Factura )'+
    ' inner join CAIngresos on '+
    '     (CADetFacturas.Documento = CAIngresos.Documento AND ' +
    '      CADetFacturas.Numero_Ingreso = CAIngresos.Numero_Ingreso '+
    ' ORDER BY INEncFacturacion.Empresa,INEncFacturacion.Numero_Factura','');
 {
  ReporteadorP('Cruce FacturasVsCaja','SELECT INEncFacturacion.Empresa,INEncFacturacion.Numero_Factura,INEncFacturacion.Fecha,Cliente,Valor_Total as Subtotal,Valor_Descuento as Descuento, Valor_Total-Valor_Descuento+Valor_IVA-Valor_Concpetos as Total,'+
    '   CAIngresos.Numero_Ingreso,CAIngresos.Fecha,CADetFacturas.Concepto,Valor'+
    ' FROM INEncFacturacion,CADetFacturas,CAIngresos'+
    ' WHERE CADetFacturas.Documento = CAIngresos.Documento AND CADetFacturas.Numero_Ingreso = CAIngresos.Numero_Ingreso AND INEncFacturacion.Empresa * = CADetFacturas.Empresa AND'+
    '  INEncFacturacion.Numero_Factura * = CADetFacturas.Numero_Factura'+
    ' ORDER BY INEncFacturacion.Empresa,INEncFacturacion.Numero_Factura','');

 }

 end;

procedure TMainForm.ValoresdeFacturasPagadasdeMas1Click(Sender: TObject);
begin
  ReporteadorP('Cruce FacturasVsCaja','SELECT INENCFacturacion.Empresa,INENCFacturacion.Numero_Factura,INENCFacturacion.Fecha,Cliente,INENCFacturacion.Estado, '+
     '  Pagada_Total,max(INENCFacturacion.Valor_Total) as Valor_Subtotal,max(INENCFacturacion.Valor_IVA) as Valor_IVA, '+
     '  max(INENCFacturacion.Valor_Descuento) as Valor_Descuento, '+
     '  max(INENCFacturacion.Valor_Total+INENCFacturacion.Valor_IVA-INENCFacturacion.Valor_Descuento-INENCFacturacion.Valor_Conceptos) as Valor_Total, '+
     '  sum(CADetFacturas.Valor) as Valor_Pagado, '+
	   '   max(INENCFacturacion.Valor_Total+INENCFacturacion.Valor_IVA-INENCFacturacion.Valor_Descuento-INENCFacturacion.Valor_Conceptos)- '+
     '  sum(CADetFacturas.Valor) as Diferencia '+
     ' FROM   INENCFacturacion,CADetFacturas,CAConceptos '+
     ' WHERE  (INENCFacturacion.Empresa = CADetFacturas.Empresa AND '+
     '  INENCFacturacion.Numero_Factura = CADetFacturas.Numero_Factura) AND '+
     '  CADetFacturas.Concepto = CAConceptos.Concepto AND (estado <> '+chr(39)+'A'+chr(39)+' or estado is null) AND '+
     '  CADetFacturas.Numero_Ingreso IN (SELECT Numero_Ingreso FROM CAIngresos WHERE Estado IS null) '+
     ' GROUP BY INENCFacturacion.Empresa,INENCFacturacion.Numero_Factura,INENCFacturacion.Fecha,Cliente,INENCFacturacion.Estado,Pagada_Total '+
     ' HAVING max(INENCFacturacion.Valor_Total+INENCFacturacion.Valor_IVA-INENCFacturacion.Valor_Descuento-INENCFacturacion.Valor_Conceptos)  <> sum(CADetFacturas.Valor) OR '+
     '  sum(CADetFacturas.Valor) is null','');
end;

procedure TMainForm.Union1Click(Sender: TObject);
var
  v1: string;
begin
  v1:= InputBox('Fecha', 'Anterior a:', '01/05/2008');

  ReporteadorP('Cuentas por Cobrar','SELECT Cliente,Left(Nombre,30) As Nombre,Left(Direccion,30) As Direccion,Telefono,Numero_Factura,fecha,'+
  '     CASE WHEN (convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) < 30 THEN Sum(Valor_Total-Valor_Descuento+Valor_IVA-INENCFacturacion.Valor_Conceptos) ELSE 0 END AS Menor_30,'+
  '     CASE WHEN ((convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) >= 30) AND ((convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) < 60) THEN Sum(Valor_Total-Valor_Descuento+Valor_IVA-Valor_Conceptos) ELSE 0 END AS Entre_30y60,'+
  '     CASE WHEN ((convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) >= 60) AND ((convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) < 90) THEN Sum(Valor_Total-Valor_Descuento+Valor_IVA-Valor_Conceptos) ELSE 0 END AS Entre_60y90,'+
  '     CASE WHEN (convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) >= 90 THEN Sum(Valor_Total-Valor_Descuento+Valor_IVA-Valor_Conceptos) ELSE 0 END AS Mayor_90'+
  ' FROM   INEncFacturacion left outer join CONTTerce on '+
  '     rtrim(INEncFacturacion.Cliente) = rtrim(CONTTerce.Numero_Documento) '  +
  ' WHERE   (Estado <> '+chr(39)+'A'+chr(39)+' OR ESTADO IS NULL) AND'+
  '     Numero_Factura NOT IN (SELECT Numero_Factura'+
  '                              FROM CADetFacturas,CAIngresos'+
  '                              WHERE CADetFacturas.Numero_Ingreso = CAIngresos.Numero_Ingreso AND'+
  '                              (Estado <> '+chr(39)+'A'+chr(39)+' or Estado is Null) AND'+
  '                               convert(datetime,fecha,103) < convert(datetime,'+chr(39)+v1+chr(39)+',103))'+
  '     AND convert(datetime,fecha,103) < convert(datetime,'+chr(39)+v1+chr(39)+',103)'+
  ' GROUP BY Cliente,Nombre,Direccion,Telefono,Numero_Factura,fecha'+
  ' UNION '+
  'SELECT Cliente,Left(Nombre,30) As Nombre,Left(Direccion,30) As Direccion,Telefono,INENCFacturacion.Numero_Factura,INENCFacturacion.Fecha,'+
  ' CASE WHEN (convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) < 30 THEN max(Valor_Total+Valor_IVA-Valor_Descuento-Valor_Conceptos)-sum(CADetFacturas.Valor) ELSE 0 END AS Menor_30,'+
  ' CASE WHEN ((convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) >= 30) AND ((convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) < 60) THEN max(Valor_Total+Valor_IVA-Valor_Descuento-Valor_Conceptos)-sum(CADetFacturas.Valor) ELSE 0 END AS Entre_30y60,'+
  ' CASE WHEN ((convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) >= 60) AND ((convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) < 90) THEN max(Valor_Total+Valor_IVA-Valor_Descuento-Valor_Conceptos)-sum(CADetFacturas.Valor) ELSE 0 END AS Entre_60y90,'+
  ' CASE WHEN (convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) >= 90 THEN max(Valor_Total+Valor_IVA-Valor_Descuento-Valor_Conceptos)-sum(CADetFacturas.Valor) ELSE 0 END AS Mayor_90'+
  ' FROM   INENCFacturacion,CADetFacturas,CAConceptos,CONTTerce'+
  ' WHERE  rtrim(INEncFacturacion.Cliente) = rtrim(CONTTerce.Numero_Documento) AND'+
  '  (INENCFacturacion.Empresa = CADetFacturas.Empresa AND'+
  '  INENCFacturacion.Numero_Factura = CADetFacturas.Numero_Factura) AND'+
  '  CADetFacturas.Concepto = CAConceptos.Concepto AND (estado <> '+chr(39)+'A'+chr(39)+' or estado is null) AND'+
  '  CADetFacturas.Numero_Ingreso IN (SELECT Numero_Ingreso FROM CAIngresos WHERE Estado IS null AND'+
  '                               convert(datetime,fecha,103) < convert(datetime,'+chr(39)+v1+chr(39)+',103))'+
  '     AND convert(datetime,fecha,103) < convert(datetime,'+chr(39)+v1+chr(39)+',103)'+
  ' GROUP BY Cliente,Left(Nombre,30),Left(Direccion,30),Telefono,INENCFacturacion.Numero_Factura,INENCFacturacion.Fecha'+
  ' HAVING max(INENCFacturacion.Valor_Total+INENCFacturacion.Valor_IVA-INENCFacturacion.Valor_Descuento-Valor_Conceptos)  <> sum(CADetFacturas.Valor) OR'+
  '  sum(CADetFacturas.Valor) is null'+
  ' ORDER BY Cliente,Nombre,Direccion,Telefono,INENCFacturacion.Numero_Factura,INENCFacturacion.fecha','');
  {
    ReporteadorP('Cuentas por Cobrar','SELECT Cliente,Left(Nombre,30) As Nombre,Left(Direccion,30) As Direccion,Telefono,Numero_Factura,fecha,'+
  '     CASE WHEN (convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) < 30 THEN Sum(Valor_Total-Valor_Descuento+Valor_IVA-INENCFacturacion.Valor_Conceptos) ELSE 0 END AS Menor_30,'+
  '     CASE WHEN ((convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) >= 30) AND ((convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) < 60) THEN Sum(Valor_Total-Valor_Descuento+Valor_IVA-Valor_Conceptos) ELSE 0 END AS Entre_30y60,'+
  '     CASE WHEN ((convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) >= 60) AND ((convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) < 90) THEN Sum(Valor_Total-Valor_Descuento+Valor_IVA-Valor_Conceptos) ELSE 0 END AS Entre_60y90,'+
  '     CASE WHEN (convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) >= 90 THEN Sum(Valor_Total-Valor_Descuento+Valor_IVA-Valor_Conceptos) ELSE 0 END AS Mayor_90'+
  ' FROM   INEncFacturacion,CONTTerce'+
  ' WHERE  rtrim(INEncFacturacion.Cliente) * = rtrim(CONTTerce.Numero_Documento) AND (Estado <> '+chr(39)+'A'+chr(39)+' OR ESTADO IS NULL) AND'+
  '     Numero_Factura NOT IN (SELECT Numero_Factura'+
  '                              FROM CADetFacturas,CAIngresos'+
  '                              WHERE CADetFacturas.Numero_Ingreso = CAIngresos.Numero_Ingreso AND'+
  '                              (Estado <> '+chr(39)+'A'+chr(39)+' or Estado is Null) AND'+
  '                               convert(datetime,fecha,103) < convert(datetime,'+chr(39)+v1+chr(39)+',103))'+
  '     AND convert(datetime,fecha,103) < convert(datetime,'+chr(39)+v1+chr(39)+',103)'+
  ' GROUP BY Cliente,Nombre,Direccion,Telefono,Numero_Factura,fecha'+
  ' UNION '+
  'SELECT Cliente,Left(Nombre,30) As Nombre,Left(Direccion,30) As Direccion,Telefono,INENCFacturacion.Numero_Factura,INENCFacturacion.Fecha,'+
  ' CASE WHEN (convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) < 30 THEN max(Valor_Total+Valor_IVA-Valor_Descuento-Valor_Conceptos)-sum(CADetFacturas.Valor) ELSE 0 END AS Menor_30,'+
  ' CASE WHEN ((convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) >= 30) AND ((convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) < 60) THEN max(Valor_Total+Valor_IVA-Valor_Descuento-Valor_Conceptos)-sum(CADetFacturas.Valor) ELSE 0 END AS Entre_30y60,'+
  ' CASE WHEN ((convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) >= 60) AND ((convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) < 90) THEN max(Valor_Total+Valor_IVA-Valor_Descuento-Valor_Conceptos)-sum(CADetFacturas.Valor) ELSE 0 END AS Entre_60y90,'+
  ' CASE WHEN (convert(datetime,'+chr(39)+v1+chr(39)+',103)-fecha) >= 90 THEN max(Valor_Total+Valor_IVA-Valor_Descuento-Valor_Conceptos)-sum(CADetFacturas.Valor) ELSE 0 END AS Mayor_90'+
  ' FROM   INENCFacturacion,CADetFacturas,CAConceptos,CONTTerce'+
  ' WHERE  rtrim(INEncFacturacion.Cliente) = rtrim(CONTTerce.Numero_Documento) AND'+
  '  (INENCFacturacion.Empresa = CADetFacturas.Empresa AND'+
  '  INENCFacturacion.Numero_Factura = CADetFacturas.Numero_Factura) AND'+
  '  CADetFacturas.Concepto = CAConceptos.Concepto AND (estado <> '+chr(39)+'A'+chr(39)+' or estado is null) AND'+
  '  CADetFacturas.Numero_Ingreso IN (SELECT Numero_Ingreso FROM CAIngresos WHERE Estado IS null AND'+
  '                               convert(datetime,fecha,103) < convert(datetime,'+chr(39)+v1+chr(39)+',103))'+
  '     AND convert(datetime,fecha,103) < convert(datetime,'+chr(39)+v1+chr(39)+',103)'+
  ' GROUP BY Cliente,Left(Nombre,30),Left(Direccion,30),Telefono,INENCFacturacion.Numero_Factura,INENCFacturacion.Fecha'+
  ' HAVING max(INENCFacturacion.Valor_Total+INENCFacturacion.Valor_IVA-INENCFacturacion.Valor_Descuento-Valor_Conceptos)  <> sum(CADetFacturas.Valor) OR'+
  '  sum(CADetFacturas.Valor) is null'+
  ' ORDER BY Cliente,Nombre,Direccion,Telefono,INENCFacturacion.Numero_Factura,INENCFacturacion.fecha','');

  }
  end;

procedure TMainForm.Documentos2Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'CADocumentos';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;

end;

procedure TMainForm.iposdeDocumentos1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'CATiposDocumentos';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TMainForm.ListadodeIngresosporDocumento1Click(Sender: TObject);
var v:string;
begin
  v:=Inputbox('Documento','Numero','1');

  ReporteadorP(' Ingresos','SELECT CAIngresos.Documento+convert(varchar,CAIngresos.Numero_Ingreso) as No_Doc,left(Fecha,12) as Fecha,Id,Doc_Pagador+'+chr(39)+' '+chr(39)+'+ Nombre_Pagador as Pagador,CAIngresos.Concepto,CAIngresos.Estado,Numero_Comprobante_Contable as Comp,Empresa+'+chr(39)+'-'+chr(39)+'+Numero_Factura as Factura,CADetFacturas.Concepto,Valor '+
    ' FROM  CAIngresos,CADetFacturas '+
    ' WHERE CAIngresos.Documento = CADetFacturas.Documento AND '+
    '      CAIngresos.Numero_Ingreso = CADetFacturas.Numero_Ingreso AND '+
    '     (Estado <> '+chr(39)+'A'+chr(39)+' OR ESTADO IS NULL)  AND CAIngresos.Documento = '+chr(39)+v+chr(39),'');
end;

procedure TMainForm.IngresosporCliente1Click(Sender: TObject);
var v:string;
begin
  v:=Inputbox('Cliente','Documento','1');

  ReporteadorP(' Ingresos','SELECT CAIngresos.Numero_Ingreso,Id as Cajero, '+
      ' Left(Fecha,11) As Fecha,CADetFacturas.Concepto,CAConceptos.Descripcion,Valor AS Valor,Doc_Pagador,Nombre_Pagador'+
      ' FROM   CAIngresos inner join CADetFacturas on ' +
      '        CAIngresos.Numero_Ingreso = CADetFacturas.Numero_Ingreso '+
      ' left outer join CAConceptos on ' +
      '        CADetFacturas.Concepto = CAConceptos.Concepto '+
      ' WHERE (Estado <> '+chr(39)+'A'+chr(39)+' OR ESTADO IS NULL)'+
      ' AND CAIngresos.Doc_Pagador like '+chr(39)+'%'+v+chr(39)+
      ' ORDER BY Id,Fecha','');

      {
        ReporteadorP(' Ingresos','SELECT CAIngresos.Numero_Ingreso,Id as Cajero, '+
      ' Left(Fecha,11) As Fecha,CADetFacturas.Concepto,CAConceptos.Descripcion,Valor AS Valor,Doc_Pagador,Nombre_Pagador'+
      ' FROM   CAIngresos,CADetFacturas,CAConceptos'+
      ' WHERE  CAIngresos.Numero_Ingreso = CADetFacturas.Numero_Ingreso AND'+
      ' CADetFacturas.Concepto * = CAConceptos.Concepto AND'+
      ' (Estado <> '+chr(39)+'A'+chr(39)+' OR ESTADO IS NULL)'+
      ' AND CAIngresos.Doc_Pagador like '+chr(39)+'%'+v+chr(39)+
      ' ORDER BY Id,Fecha','');

       }

end;

procedure TMainForm.FacturasPendientesdePago2Click(Sender: TObject);
var v:string;
begin
  v:=Inputbox('Cliente','Documento','1');

  ReporteadorP('Cruce FacturasVsCaja','SELECT INEncFacturacion.Empresa,convert(varchar,INEncFacturacion.Numero_Factura)+' +chr(39)+' Est: '+chr(39)+'+INEncFacturacion.Estado as No_Factura,INEncFacturacion.Fecha,Cliente,Valor_Total as Subtotal,Valor_Descuento as Descuento, Valor_Total-Valor_Descuento+Valor_IVA-Valor_Conceptos as Total,'+
    '   convert(varchar,CAIngresos.Numero_Ingreso)+' +chr(39)+' Est: '+chr(39)+'+CAIngresos.Estado as No_Ingreso,CAIngresos.Fecha,CADetFacturas.Concepto,Valor'+
    ' FROM INEncFacturacion left outer join CADetFacturas on ' +
    '    ( INEncFacturacion.Empresa = CADetFacturas.Empresa AND'+
    '      INEncFacturacion.Numero_Factura = CADetFacturas.Numero_Factura )'+
    ' inner join CAIngresos on '+
    '      (CADetFacturas.Documento = CAIngresos.Documento ' +
    '   AND CADetFacturas.Numero_Ingreso = CAIngresos.Numero_Ingreso )' +
    ' WHERE Cliente like '+chr(39)+'%'+v+chr(39)+
    ' ORDER BY INEncFacturacion.Empresa,INEncFacturacion.Numero_Factura','');
    {
  ReporteadorP('Cruce FacturasVsCaja','SELECT INEncFacturacion.Empresa,convert(varchar,INEncFacturacion.Numero_Factura)+' +chr(39)+' Est: '+chr(39)+'+INEncFacturacion.Estado as No_Factura,INEncFacturacion.Fecha,Cliente,Valor_Total as Subtotal,Valor_Descuento as Descuento, Valor_Total-Valor_Descuento+Valor_IVA-Valor_Conceptos as Total,'+
    '   convert(varchar,CAIngresos.Numero_Ingreso)+' +chr(39)+' Est: '+chr(39)+'+CAIngresos.Estado as No_Ingreso,CAIngresos.Fecha,CADetFacturas.Concepto,Valor'+
    ' FROM INEncFacturacion,CADetFacturas,CAIngresos'+
    ' WHERE CADetFacturas.Documento = CAIngresos.Documento AND CADetFacturas.Numero_Ingreso = CAIngresos.Numero_Ingreso AND INEncFacturacion.Empresa * = CADetFacturas.Empresa AND'+
    '  INEncFacturacion.Numero_Factura * = CADetFacturas.Numero_Factura'+
    ' AND Cliente like '+chr(39)+'%'+v+chr(39)+
    ' ORDER BY INEncFacturacion.Empresa,INEncFacturacion.Numero_Factura','');
     }
end;

procedure TMainForm.BusquedadeFacturas1Click(Sender: TObject);
var v,v2:string;
begin
  v2:=Inputbox('Facturacion','Empresa','1');
  v:=Inputbox('Facturacion','Numero_Factura','1');

  ReporteadorP(' Reporte de Facturas','SELECT *'+
      ' FROM   INEncFacturacion,INDetFacturacion'+
      ' WHERE  INEncFacturacion.Empresa = INDetFacturacion.Empresa '+
      ' AND INEncFacturacion.Numero_Factura = INDetFacturacion.Numero_Factura '+
      ' AND INEncFacturacion.Empresa        like '+chr(39)+'%'+v2+chr(39)+
      ' AND INEncFacturacion.Numero_Factura like '+chr(39)+'%'+v+chr(39),'');
end;

procedure TMainForm.DataSource2DataChange(Sender: TObject; Field: TField);
begin
  ADOQRecCon.Close;
  ADOQRecCon.Parameters.ParamValues['Fec'] := DBLookupCombobox1.KeyValue;
  ADOQRecCon.Open;

  ADOQRecDet.Close;
  ADOQRecDet.Parameters.ParamValues['Fec'] := DBLookupCombobox1.KeyValue;
  ADOQRecDet.Open;
end;

procedure TMainForm.FormDeactivate(Sender: TObject);
begin
  GroupBox1.Width:=100;
end;

procedure TMainForm.FormDblClick(Sender: TObject);
begin
  GroupBox1.Width:=MainForm.Width-10;
end;
procedure TMainForm.Ayuda1Click(Sender: TObject);
begin
  shellexecute(handle,'open',pchar('Caja.pdf'),'','',sw_shownormal);
end;

procedure TMainForm.Ingr1Click(Sender: TObject);
begin
  ReporteadorP('','SELECT Documento,Numero_Ingreso,Fecha,Motivo_Anulacion '+
    ' FROM  CAIngresos '+
    ' WHERE Estado = '+chr(39)+'A'+chr(39),'');
end;

end.
