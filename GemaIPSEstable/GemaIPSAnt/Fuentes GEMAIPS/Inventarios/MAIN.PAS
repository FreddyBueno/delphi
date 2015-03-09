unit MAIN;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  StdCtrls, Dialogs, Buttons, Messages, ExtCtrls, ComCtrls, StdActns,
  ActnList, ToolWin, ImgList,iniFiles, DB, ADODB, Grids,shellapi,
  Variants,
  jpeg, XPMan, System.Actions;

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
    Capturas1: TMenuItem;
    Consultas1: TMenuItem;
    PlandeCuentas1: TMenuItem;
    ComprobantesContables1: TMenuItem;
    Movimientos1: TMenuItem;
    Reportes1: TMenuItem;
    Factura1: TMenuItem;
    Productos2: TMenuItem;
    Grupos1: TMenuItem;
    Subrupos1: TMenuItem;
    StatusBar1: TStatusBar;
    Kardex1: TMenuItem;
    N2: TMenuItem;
    GeneradordeReportes1: TMenuItem;
    N4: TMenuItem;
    RegeneraSaldos1: TMenuItem;
    N5: TMenuItem;
    ListadodeExistencias1: TMenuItem;
    otalesdeCostosyVentas1: TMenuItem;
    ListadodeExistenciasporAlmacn1: TMenuItem;
    ListadodeExistenciaporCdigoProducto1: TMenuItem;
    ListadodeExistenciaporDescripcinProducto1: TMenuItem;
    otalesporTipodeDocumento1: TMenuItem;
    AnularTransacciones1: TMenuItem;
    N6: TMenuItem;
    ListadodeTransaccionesAnuladas1: TMenuItem;
    N7: TMenuItem;
    Vencimientos1: TMenuItem;
    PorVencerenelMes1: TMenuItem;
    N8: TMenuItem;
    ActualizaInventarios1: TMenuItem;
    N3: TMenuItem;
    DepurarProductos1: TMenuItem;
    Vencidos1: TMenuItem;
    ListadoTotaldeVencimientos1: TMenuItem;
    ListadodeExistenciasporPeriodo1: TMenuItem;
    Existencias1: TMenuItem;
    Movimiento1: TMenuItem;
    Eventosadversos1: TMenuItem;
    QryReporte: TADOQuery;
    N10: TMenuItem;
    ActualizacionInventariosCompras1: TMenuItem;
    CopiarProductos1: TMenuItem;
    Listadodetodoslosproductos1: TMenuItem;
    ListadodeMedicamentos1: TMenuItem;
    N9: TMenuItem;
    Ayuda1: TMenuItem;
    N12: TMenuItem;
    CapturadeInventarioFisico1: TMenuItem;
    InformedeDiferenciasconelInventarioFisico1: TMenuItem;
    InformedeDiferenciasFaltanenSistema1: TMenuItem;
    N13: TMenuItem;
    Gri1: TMenuItem;
    KardexporLote1: TMenuItem;
    img: TImage;
    Productos1: TMenuItem;
    procedure FileNew1Execute(Sender: TObject);
    procedure FileOpen1Execute(Sender: TObject);
    procedure HelpAbout1Execute(Sender: TObject);
    procedure FileExit1Execute(Sender: TObject);
    procedure ComprobantesContables1Click(Sender: TObject);
    procedure Saldos1Click(Sender: TObject);
    procedure Movimientos1Click(Sender: TObject);
    procedure Factura1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PlandeCuentas1Click(Sender: TObject);
    procedure Productos1Click(Sender: TObject);
    procedure Grupos1Click(Sender: TObject);
    procedure Subrupos1Click(Sender: TObject);
    procedure Kardex1Click(Sender: TObject);
    procedure GeneradordeReportes1Click(Sender: TObject);
    procedure RegeneraSaldos1Click(Sender: TObject);
    procedure ListadodeExistencias1Click(Sender: TObject);
    procedure otalesdeCostosyVentas1Click(Sender: TObject);
    procedure ListadodeExistenciasporAlmacn1Click(Sender: TObject);
    procedure ListadodeExistenciaporCdigoProducto1Click(Sender: TObject);
    procedure ListadodeExistenciaporDescripcinProducto1Click(
      Sender: TObject);
    procedure otalesporTipodeDocumento1Click(Sender: TObject);
    procedure AnularTransacciones1Click(Sender: TObject);
    procedure ListadodeTransaccionesAnuladas1Click(Sender: TObject);
    procedure Vencidos1Click(Sender: TObject);
    procedure PorVencerenelMes1Click(Sender: TObject);
    procedure ActualizaInventarios1Click(Sender: TObject);
    procedure DepurarProductos1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListadodeExistenciasporPeriodo1Click(Sender: TObject);
    procedure Movimiento1Click(Sender: TObject);
    procedure ActivarInactivarProductos1Click(Sender: TObject);
    procedure ActivarInactivarxArea1Click(Sender: TObject);
    procedure ConveniosxProducto1Click(Sender: TObject);
    procedure ActualizacionInventariosCompras1Click(Sender: TObject);
    procedure CopiarProductos1Click(Sender: TObject);
    procedure Listadodetodoslosproductos1Click(Sender: TObject);
    procedure ListadodeMedicamentos1Click(Sender: TObject);
    procedure Ayuda1Click(Sender: TObject);
    procedure CapturadeInventarioFisico1Click(Sender: TObject);
    procedure InformedeDiferenciasconelInventarioFisico1Click(
      Sender: TObject);
    procedure InformedeDiferenciasFaltanenSistema1Click(Sender: TObject);
    procedure Gri1Click(Sender: TObject);
    procedure KardexporLote1Click(Sender: TObject);
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
  fContabilidad6, UDataModule1,  frmproductos,
  frmGrupos,  fKardex, 
  Reporteador, RecalculaSaldo, frmAnulacion,
  ActLote, FImpriTransacc,   ParamInv, FProdxArea, FCrearConvenio,
  ActLoteCompras, FrmCopiaProducto, CapturaBasica2, CapturaBasica,
  FActivarInactivar, Lista_Tablas3, FrmKardex, SEIngreso,
  Libreria_PrateincoForm;

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
  Transacciones := tTransacciones.create(application);
  try
    Datamodule1.MuestraconAcceso(Transacciones);
  except
    Transacciones.free;
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

procedure TMainForm.Movimientos1Click(Sender: TObject);
begin
  ReporteadorP('','SELECT * ' +
  ' FROM  INTransacciones_Enc,INTransacciones_Det ' +
  ' WHERE INTransacciones_Enc.CD_Documento =  INTransacciones_Det.CD_Documento AND ' +
  '    INTransacciones_Enc.Consec_Dcto  =  INTransacciones_Det.Consec_Dcto','');
end;

procedure TMainForm.Factura1Click(Sender: TObject);
begin
  FormImpInventa := tFormImpInventa.create(application);
  try
    Datamodule1.MuestraconAcceso(FormImpInventa);
  except
    FormImpInventa.free;
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

procedure TMainForm.PlandeCuentas1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'INAlmacenes';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
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

procedure TMainForm.Gri1Click(Sender: TObject);
begin
  FrmListaF := tFrmListaF.create(application);
  try
    Datamodule1.MuestraconAcceso(FrmListaF);
  except
    FrmListaF.free;
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

procedure TMainForm.Subrupos1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'INSubgrupo';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
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

procedure TMainForm.KardexporLote1Click(Sender: TObject);
begin
  Kardex2 := tKardex2.create(application);
  try
    Datamodule1.MuestraconAcceso(Kardex2);
  except
    Kardex2.free;
  end;
end;

procedure TMainForm.GeneradordeReportes1Click(Sender: TObject);
begin
  ReporteadorP('','','');
end;

procedure TMainForm.RegeneraSaldos1Click(Sender: TObject);
begin
  RegeneraSaldos := tRegeneraSaldos.create(application);
  try
    Datamodule1.MuestraconAcceso(RegeneraSaldos);
  except
    RegeneraSaldos.free;
  end;
end;

procedure TMainForm.ListadodeExistencias1Click(Sender: TObject);
Var
  v1: string;
begin
  v1:= InputBox('Grupo de Productos', 'Código del Grupo', '%');

  ReporteadorP('ExistenciasxGrupo','SELECT INSaldosxAlmacen.Cd_Producto,INProductos.Laboratorio,INProductos.Marca, CD_Almacen as Alm,left(Descripcion,30) as Descripcion,Cantidad,'+
   ' convert(float,Precio_Venta_Pesos) as Precio_Venta,convert(float,Costo_Prom_Pesos) as Costo_Promedio,convert(float,Costo_Prom_Pesos) * Cantidad AS Tot_Costo_Promedio,'+
   ' convert(float,Ult_Costo_Pesos) as Ultimo_Costo, convert(float,Ult_Costo_Pesos) * Cantidad as Tot_Ult_Costo '+
   ' FROM INSaldosxAlmacen,INProductos'+
   ' WHERE INSaldosxAlmacen.Cd_Producto=INProductos.Cd_Producto '+
   '       AND INProductos.cd_grupo like ' +chr(39)+ v1 +'%'+chr(39)+
   ' ORDER BY INProductos.Cd_Producto','');
end;

procedure TMainForm.otalesdeCostosyVentas1Click(Sender: TObject);
begin
  ReporteadorP(' Totales de Costo y Venta','SELECT Cd_Almacen,sum(Cantidad*Costo_Prom_Pesos) AS Suma_Costos_Promedios,sum(Cantidad*Ult_Costo_Pesos) as Suma_Ultimo_Costo,sum(Cantidad*Precio_Venta_Pesos) as Suma_Precio_Venta'+
    ' FROM INSaldosxAlmacen,INProductos'+
    ' WHERE INSaldosxAlmacen.Cd_Producto=INProductos.Cd_Producto'+
    ' GROUP BY Cd_Almacen','');
end;

procedure TMainForm.ListadodeExistenciasporAlmacn1Click(Sender: TObject);
var InputString:string;
begin
  InputString:= InputBox('Almacen o Bodega', 'Ingrese el Código de Almacen', '01');

  ReporteadorP(' Existencias','SELECT INSaldosxAlmacen.Cd_Producto,left(Descripcion,30) as Descripcion,Cd_Almacen,Cantidad,convert(float,Costo_Prom_Pesos)'+
   ' as Costo_Promedio,convert(float,Ult_Costo_Pesos) as Ultimo_Costo,convert(float,Precio_Venta_Pesos) as Precio_Venta FROM INSaldosxAlmacen,INProductos'+
   ' WHERE INSaldosxAlmacen.Cd_Producto=INProductos.Cd_Producto AND cd_almacen = '+chr(39)+InputString+chr(39),'');
end;

procedure TMainForm.ListadodeExistenciaporCdigoProducto1Click(
  Sender: TObject);
var InputString:string;
begin
  InputString:= InputBox('Producto', 'Ingrese el Código de Producto', '0');

  ReporteadorP(' Existencias','SELECT INSaldosxAlmacen.Cd_Producto,left(Descripcion,30) as Descripcion,Cd_Almacen,Cantidad,convert(float,Costo_Prom_Pesos)'+
   ' as Costo_Promedio,convert(float,Ult_Costo_Pesos) as Ultimo_Costo,convert(float,Precio_Venta_Pesos) as Precio_Venta FROM INSaldosxAlmacen,INProductos'+
   ' WHERE INSaldosxAlmacen.Cd_Producto=INProductos.Cd_Producto AND INProductos.cd_producto = '+chr(39)+InputString+chr(39),'');
end;

procedure TMainForm.ListadodeExistenciaporDescripcinProducto1Click(
  Sender: TObject);
var InputString:string;
begin
  InputString:= InputBox('Producto', 'Ingrese el Código de Producto', '0');

  ReporteadorP(' Existencias','SELECT INSaldosxAlmacen.Cd_Producto,left(Descripcion,30) as Descripcion,Cd_Almacen,Cantidad,convert(float,Costo_Prom_Pesos)'+
   ' as Costo_Promedio,convert(float,Ult_Costo_Pesos) as Ultimo_Costo,convert(float,Precio_Venta_Pesos) as Precio_Venta FROM INSaldosxAlmacen,INProductos'+
   ' WHERE INSaldosxAlmacen.Cd_Producto=INProductos.Cd_Producto AND Descripcion LIKE '+chr(39)+'%'+InputString+'%'+chr(39),'');
end;

procedure TMainForm.otalesporTipodeDocumento1Click(Sender: TObject);
begin
  ReporteadorP(' Totales de por Tipo Documento',' SELECT cd_documento,count(*) as Numero_Documentos,Min(convert(int,Consec_Dcto)) as Primer_Documento, max(convert(int,Consec_Dcto)) as Ultimo_Documento ' +
    ' FROM INtransacciones_enc GROUP BY cd_documento ','');
end;

procedure TMainForm.AnularTransacciones1Click(Sender: TObject);
begin
  fanula := tfanula.create(application);
  try
    Datamodule1.MuestraconAcceso(fanula);
  except
    fanula.free;
  end;
end;

procedure TMainForm.ListadodeTransaccionesAnuladas1Click(Sender: TObject);
begin
  ReporteadorP(' Transacciones Anuladas',' SELECT Cd_Documento,Consec_Dcto,Fch_Hora_Transac as Fecha,Desc_Concepto ' +
    ' FROM INtransacciones_enc Where Estado = '+chr(39)+'A'+chr(39),'');
end;

procedure TMainForm.Vencidos1Click(Sender: TObject);
begin
  ReporteadorP(' Vencimientos ','SELECT INProductos.cd_producto,left(Descripcion,30) as Descripcion,Cd_Almacen,Lote,Fecha_Vencim,Cantidad,Costo_Prom_Pesos,Ult_Costo_Pesos,Precio_Venta_Pesos ' +
    ' FROM INSaldosVencimiento,INProductos ' +
    ' WHERE INSaldosVencimiento.Cd_Producto = INProductos.Cd_Producto ' +
    '       AND FECHA_VENCIM <= '+ chr(39)+ DateToStr(Now) + chr(39)+
    ' ORDER BY INProductos.cd_producto ','');
end;

procedure TMainForm.PorVencerenelMes1Click(Sender: TObject);
begin
  ReporteadorP(' Vencimientos ','SELECT INProductos.cd_producto,left(Descripcion,30) as Descripcion,Cd_Almacen,Lote,Fecha_Vencim,Cantidad,Costo_Prom_Pesos,Ult_Costo_Pesos,Precio_Venta_Pesos ' +
    ' FROM INSaldosVencimiento,INProductos ' +
    ' WHERE INSaldosVencimiento.Cd_Producto = INProductos.Cd_Producto ' +
    '       AND FECHA_VENCIM <= '+ chr(39)+ DateToStr(Now) + chr(39)+
    ' ORDER BY INProductos.cd_producto ','');
end;

procedure TMainForm.ActualizaInventarios1Click(Sender: TObject);
begin
  ActualizacionInvent := tActualizacionInvent.create(application);
  try
    Datamodule1.MuestraconAcceso(ActualizacionInvent);
  except
    ActualizacionInvent.free;
  end;
end;

procedure TMainForm.DepurarProductos1Click(Sender: TObject);
Var i,j:integer;
begin
  Showmessage('La depuración de productos consiste en eliminar todos aquellos que esten Inactivos y que no tengan movimiento en Inventarios, Compras o Facturación.');
  if MessageDlg('Esta totalmente seguro? Si no lo esta no ejecute este proceso',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    i:=0;
    j:=0;

    MainForm.Cursor := crHourGlass;

    Datamodule1.ADOQProducto.Close;
    Datamodule1.ADOQProducto.SQL.Clear;
    Datamodule1.ADOQProducto.SQL.Add('SELECT * FROM INProductos WHERE Estado = '+chr(39)+'I'+chr(39));
    Datamodule1.ADOQProducto.Open;
    Datamodule1.ADOQProducto.First;
    While NOT Datamodule1.ADOQProducto.Eof DO
    Begin
      inc(j);
      StatusBar.SimpleText := '  Producto : ' + Datamodule1.ADOQProducto.FieldValues['Cd_Producto']+' Eliminados : '+inttostr(i)+' de : '+inttostr(j);
      mainform.Refresh;

      //Revisa Facturacion.
      Datamodule1.ADOQuery3.Close;
      Datamodule1.ADOQuery3.SQL.Clear;
      Datamodule1.ADOQuery3.SQL.Add('SELECT * FROM INDetFacturacion WHERE Codigo_Producto = '+chr(39)+Datamodule1.ADOQProducto.FieldValues['Cd_Producto'] +chr(39));
      Datamodule1.ADOQuery3.Open;
      IF Datamodule1.ADOQuery3.RecordCount = 0 Then
      Begin
        //Revisa Compras.
        Datamodule1.ADOQuery3.Close;
        Datamodule1.ADOQuery3.SQL.Clear;
        Datamodule1.ADOQuery3.SQL.Add('SELECT * FROM INDetCompras WHERE Codigo_Producto = '+chr(39)+Datamodule1.ADOQProducto.FieldValues['Cd_Producto'] +chr(39));
        Datamodule1.ADOQuery3.Open;
        IF Datamodule1.ADOQuery3.RecordCount = 0 Then
        Begin
          //Revisa Inventarios.
          Datamodule1.ADOQuery3.Close;
          Datamodule1.ADOQuery3.SQL.Clear;
          Datamodule1.ADOQuery3.SQL.Add('SELECT * FROM INTransacciones_Det WHERE CD_Producto = '+chr(39)+Datamodule1.ADOQProducto.FieldValues['Cd_Producto'] +chr(39));
          Datamodule1.ADOQuery3.Open;
          IF Datamodule1.ADOQuery3.RecordCount = 0 Then
          Begin
            Inc(i);

            Datamodule1.ADOQProducto.Delete;
            Datamodule1.ADOQProducto.First;
          End Else Datamodule1.ADOQProducto.Next;
        End Else Datamodule1.ADOQProducto.Next;
      End Else Datamodule1.ADOQProducto.Next;

    End;
    MainForm.Cursor := crDefault;

    Showmessage('Proceso Finalizado, Registros Eliminados: '+inttostr(i));
    StatusBar.SimpleText :='';
    Datamodule1.ADOQProducto.Close;
    Datamodule1.ADOQuery3.Close;
  end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  MainForm.Caption := MainForm.Caption +'  ('+Datamodule1.Bd+')';
end;

procedure TMainForm.ListadodeExistenciasporPeriodo1Click(Sender: TObject);
Var
  v1: string;
begin
  v1:= InputBox('Periodo', 'AÑOMES', '%');

  ReporteadorP('ExistenciasxGrupo','SELECT Periodo,INSaldosxPeriodo.Cd_Producto,left(Descripcion,30) as Descripcion,Cantidad,Costo,Cantidad*Costo as Costo_Tot_Prom,Ultimo_Costo,Ultima_Compra,Ultima_Venta'+
    ' FROM INSaldosxPeriodo,INProductos'+
    ' WHERE INSaldosxPeriodo.Cd_Producto = INProductos.Cd_Producto'+
    '       AND Periodo like ' +chr(39)+ v1 +'%'+chr(39)+
    ' ORDER BY INSaldosxPeriodo.Cd_Producto','');
end;

procedure TMainForm.Movimiento1Click(Sender: TObject);
var v3:string;
var InputString:string;
begin
  InputString:= InputBox('Almacen o Bodega', 'Ingrese el Código de Almacen', '01');
//  v2:= InputBox('Movimiento', 'Almacen', '01');
  v3:= InputBox('Movimiento', 'Año', '2009');

  ReporteadorP(' Movimiento para calculo de Rotaciones','SELECT INTransacciones_Det.CD_Producto+'+chr(39)+' - '+chr(39)+ '+INProductos.Descripcion as Producto,'+
       ' sum(CASE entradasalida WHEN '+chr(39)+'E'+chr(39)+' THEN Cant_Producto ELSE 0 END) as Cantidad_Entrada,'+
       ' sum(CASE entradasalida WHEN '+chr(39)+'S'+chr(39)+' THEN Cant_Producto ELSE 0 END) as Cantidad_Salida'+
       ' FROM  INTransacciones_Enc inner join INTransacciones_Det on ' +
       '     ( INTransacciones_Enc.CD_Documento = INTransacciones_Det.CD_Documento AND'+
       '       INTransacciones_Enc.Consec_Dcto = INTransacciones_Det.Consec_Dcto ) '+
       ' inner join INDocumentos on ' +
       '      INTransacciones_Enc.CD_Documento =INDocumentos.CD_Documento '+
       ' left outer join INProductos on '+
       '      INTransacciones_Det.CD_Producto = INProductos.CD_Producto '+
       '   WHERE     Year(Fch_Hora_Transac) like '+chr(39)+'%'+V3+'%'+chr(39)+
       '       AND (cd_almacenOrigen = '+chr(39)+InputString+chr(39)+
       '       OR  cd_almacenDestino = '+chr(39)+InputString+chr(39)+')'+
       ' GROUP BY INTransacciones_Det.CD_Producto+'+chr(39)+' - '+chr(39)+ '+INProductos.Descripcion'+
       ' ORDER BY sum(CASE entradasalida WHEN '+chr(39)+'S'+chr(39)+' THEN Cant_Producto ELSE 0 END) DESC  ','');
   {
    ReporteadorP(' Movimiento para calculo de Rotaciones','SELECT INTransacciones_Det.CD_Producto+'+chr(39)+' - '+chr(39)+ '+INProductos.Descripcion as Producto,'+
       ' sum(CASE entradasalida WHEN '+chr(39)+'E'+chr(39)+' THEN Cant_Producto ELSE 0 END) as Cantidad_Entrada,'+
       ' sum(CASE entradasalida WHEN '+chr(39)+'S'+chr(39)+' THEN Cant_Producto ELSE 0 END) as Cantidad_Salida'+
       ' FROM  INTransacciones_Enc,INTransacciones_Det,INDocumentos,INProductos'+
       ' WHERE INTransacciones_Enc.CD_Documento = INTransacciones_Det.CD_Documento AND'+
       '       INTransacciones_Enc.Consec_Dcto = INTransacciones_Det.Consec_Dcto AND'+
	     '       INTransacciones_Enc.CD_Documento =INDocumentos.CD_Documento AND'+
       '       INTransacciones_Det.CD_Producto * = INProductos.CD_Producto AND'+
       '       Year(Fch_Hora_Transac) like '+chr(39)+'%'+V3+'%'+chr(39)+
       '       AND (cd_almacenOrigen = '+chr(39)+InputString+chr(39)+
       '       OR  cd_almacenDestino = '+chr(39)+InputString+chr(39)+')'+
       ' GROUP BY INTransacciones_Det.CD_Producto+'+chr(39)+' - '+chr(39)+ '+INProductos.Descripcion'+
       ' ORDER BY sum(CASE entradasalida WHEN '+chr(39)+'S'+chr(39)+' THEN Cant_Producto ELSE 0 END) DESC  ','');

   }

       end;

procedure TMainForm.ActivarInactivarProductos1Click(Sender: TObject);
begin
  FrmAI := tFrmAI.create(application);
  FrmAI.Edit4.Text:= 'Estado';
  FrmAI.CB1.Items.Add('A');
  FrmAI.CB2.Items.Add('I');
  FrmAI.Edit1.Text:= 'INProductos';
  try
    Datamodule1.MuestraconAcceso(FrmAI);
  except
    FrmAI.free;
  end;
end;

procedure TMainForm.ActivarInactivarxArea1Click(Sender: TObject);
begin
  FrmProdxArea := tFrmProdxArea.create(application);
  try
    FrmProdxArea.ComboBox1.Text:='P';
    FrmProdxArea.ComboBox1.Enabled:=False;
    Datamodule1.MuestraconAcceso(FrmProdxArea);
  except
    FrmProdxArea.free;
  end;
end;

procedure TMainForm.ConveniosxProducto1Click(Sender: TObject);
begin
  FormCreaConvenios := tFormCreaConvenios.create(application);
  try
    FormCreaConvenios.ComboBox1.Text:='P';
    FormCreaConvenios.ComboBox1.Enabled:=False;
    Datamodule1.MuestraconAcceso(FormCreaConvenios);
  except
    FormCreaConvenios.free;
  end;
end;

procedure TMainForm.ActualizacionInventariosCompras1Click(Sender: TObject);
begin
  ActualizacionCompras := tActualizacionCompras.create(application);
  try
    Datamodule1.MuestraconAcceso(ActualizacionCompras);
  except
    ActualizacionCompras.free;
  end;
end;

procedure TMainForm.CopiarProductos1Click(Sender: TObject);
begin
  FCopiaProductos := tFCopiaProductos.create(application);
  try
    Datamodule1.MuestraconAcceso(FCopiaProductos);
  except
    FCopiaProductos.free;
  end;
end;

procedure TMainForm.Listadodetodoslosproductos1Click(Sender: TObject);
var InputString:string;
begin
  InputString:= InputBox('Almacen o Bodega', 'Ingrese el Código de Almacen', '01');

  ReporteadorP('ExistenciasxGrupo','SELECT left(Descripcion,30) as Descripcion, Marca, Vida_Util, REG_SANIDAD, TIPO_RIESGO,'+
    ' left(Presentacion_Comencial,30) as Pres_Comercial , LOTE, FECHA_VENCIM'+
    ' FROM  INProductos, INSaldosVencimiento'+
    ' WHERE INProductos.CD_PRODUCTO = INSaldosVencimiento.CD_PRODUCTO'+
    ' AND CD_GRUPO = ''2'''+
    ' AND Estado = ''A'''+
    ' AND cd_almacen = '+chr(39)+InputString+chr(39)+
   ' ORDER BY INProductos.Cd_Producto','');
end;

procedure TMainForm.ListadodeMedicamentos1Click(Sender: TObject);
var InputString:string;
begin
  InputString:= InputBox('Almacen o Bodega', 'Ingrese el Código de Almacen', '01');

  ReporteadorP('ExistenciasxGrupo','SELECT left(Descripcion,30) as Descripcion, Principio_Activo, FormaFarmaceutica,'+
    ' concentracion, REG_SANIDAD, LOTE, FECHA_VENCIM,left(Presentacion_Comencial,30) as Pres_Comercial'+
    ' FROM  INProductos, INSaldosVencimiento'+
    ' WHERE INProductos.CD_PRODUCTO = INSaldosVencimiento.CD_PRODUCTO'+
    ' AND CD_GRUPO = ''1'''+
    ' AND Estado = ''A'''+
    ' AND cd_almacen = '+chr(39)+InputString+chr(39)+
   ' ORDER BY INProductos.Cd_Producto','');
end;

procedure TMainForm.Ayuda1Click(Sender: TObject);
begin
  shellexecute(handle,'open',pchar('Inventarios.pdf'),'','',sw_shownormal);
end;

procedure TMainForm.CapturadeInventarioFisico1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'INInventFisico';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TMainForm.InformedeDiferenciasconelInventarioFisico1Click(
  Sender: TObject);
var InputString,InputString2,alm:string;
begin
  InputString:= InputBox('Mes de la Toma', 'Mes', '');
  InputString2:= InputBox('Año de la Toma', 'Año', '');
  alm:= InputBox('Almacen de la Toma', 'Almacen', '');

  ReporteadorP('','SELECT INInventFisico.CD_Almacen,left(INAlmacenes.Descripcion,25) as des_almacen,INInventFisico.CD_Producto,left(INProductos.Descripcion,35) as Des_Producto,INInventFisico.Lote,'+
      '    INInventFisico.Fecha_Vencim,Cantidad,Cantidad_Fisica,Cantidad-Cantidad_Fisica as Diferencia'+
      ' FROM INSaldosVencimiento left outer join INInventFisico on ' +
      '    ( INInventFisico.CD_Almacen  = INSaldosVencimiento.cd_almacen AND'+
      '      INInventFisico.CD_producto = INSaldosVencimiento.cd_producto AND'+
      '      INInventFisico.lote        = INSaldosVencimiento.Lote AND'+
      '      INInventFisico.Fecha_Vencim  = INSaldosVencimiento.Fecha_Vencim )'+
      ' inner join INAlmacenes on ' +
      '      INInventFisico.CD_Almacen   = INAlmacenes.CD_Almacen '+
      ' inner join INProductos on '+
      '      INInventFisico.CD_producto  = INProductos.CD_Producto '+
      '  WHERE     year(INInventFisico.fecha_toma) =  ' +InputString2 + ' AND month(INInventFisico.fecha_toma) =  ' +InputString+' AND INInventFisico.CD_Almacen = + ' + alm + ' ORDER BY INSaldosVencimiento.cd_producto','');

     {
       ReporteadorP('','SELECT INInventFisico.CD_Almacen,left(INAlmacenes.Descripcion,25) as des_almacen,INInventFisico.CD_Producto,left(INProductos.Descripcion,35) as Des_Producto,INInventFisico.Lote,'+
      '    INInventFisico.Fecha_Vencim,Cantidad,Cantidad_Fisica,Cantidad-Cantidad_Fisica as Diferencia'+
      ' FROM INSaldosVencimiento,INInventFisico,INAlmacenes,INProductos'+
      ' WHERE INInventFisico.CD_Almacen  = INSaldosVencimiento.cd_almacen AND'+
      '       INInventFisico.CD_producto = INSaldosVencimiento.cd_producto AND'+
      '       INInventFisico.lote       * = INSaldosVencimiento.Lote AND'+
      '       INInventFisico.Fecha_Vencim * = INSaldosVencimiento.Fecha_Vencim AND'+
      '       INInventFisico.CD_Almacen   = INAlmacenes.CD_Almacen AND'+
      '       INInventFisico.CD_producto  = INProductos.CD_Producto AND'+
      '       year(INInventFisico.fecha_toma) =  ' +InputString2 + ' AND month(INInventFisico.fecha_toma) =  ' +InputString+' AND INInventFisico.CD_Almacen = + ' + alm + ' ORDER BY INSaldosVencimiento.cd_producto','');

     }

  end;

procedure TMainForm.InformedeDiferenciasFaltanenSistema1Click(
  Sender: TObject);
var InputString,InputString2,alm:string;
begin
  InputString:= InputBox('Mes de la Toma', 'Mes', '');
  InputString2:= InputBox('Año de la Toma', 'Año', '');
  alm:= InputBox('Almacen de la Toma', 'Almacen', '');

  ReporteadorP('','SELECT INSaldosVencimiento.cd_almacen ,left(INAlmacenes.Descripcion,25) as des_almacen,INSaldosVencimiento.cd_producto,left(INProductos.Descripcion,35) as Des_producto,INSaldosVencimiento.Lote,'+
      '  INSaldosVencimiento.Fecha_Vencim,Cantidad,Cantidad_Fisica,Cantidad-Cantidad_Fisica as Diferencia'+
      ' FROM INSaldosVencimiento left outer join INInventFisico on ' +
      '    ( INSaldosVencimiento.cd_almacen = INInventFisico.CD_Almacen AND'+
      '      INSaldosVencimiento.cd_producto = INInventFisico.CD_producto AND'+
      '      INSaldosVencimiento.Lote       = INInventFisico.lote AND'+
      '      INSaldosVencimiento.Fecha_Vencim = INInventFisico.Fecha_Vencim   )'+

      'inner join INAlmacenes on ' +
      '      INSaldosVencimiento.cd_almacen  =   INAlmacenes.CD_Almacen '+
      'inner join INProductos on ' +
      '      INSaldosVencimiento.cd_producto =   INProductos.CD_Producto '+
      ' WHERE      year(INInventFisico.fecha_toma) =  ' +InputString2 + ' AND month(INInventFisico.fecha_toma) =  ' +InputString+' AND INSaldosVencimiento.cd_almacen = ' + alm + ' ORDER BY INSaldosVencimiento.cd_producto','');

      {
   ReporteadorP('','SELECT INSaldosVencimiento.cd_almacen ,left(INAlmacenes.Descripcion,25) as des_almacen,INSaldosVencimiento.cd_producto,left(INProductos.Descripcion,35) as Des_producto,INSaldosVencimiento.Lote,'+
      '  INSaldosVencimiento.Fecha_Vencim,Cantidad,Cantidad_Fisica,Cantidad-Cantidad_Fisica as Diferencia'+
      ' FROM INSaldosVencimiento,INInventFisico,INAlmacenes,INProductos'+
      ' WHERE INSaldosVencimiento.cd_almacen = INInventFisico.CD_Almacen AND'+
      '      INSaldosVencimiento.cd_producto = INInventFisico.CD_producto AND'+
      '      INSaldosVencimiento.Lote       * = INInventFisico.lote AND'+
      '      INSaldosVencimiento.Fecha_Vencim * = INInventFisico.Fecha_Vencim   AND'+
      '      INSaldosVencimiento.cd_almacen  =   INAlmacenes.CD_Almacen AND'+
      '      INSaldosVencimiento.cd_producto =   INProductos.CD_Producto AND'+
      '       year(INInventFisico.fecha_toma) =  ' +InputString2 + ' AND month(INInventFisico.fecha_toma) =  ' +InputString+' AND INSaldosVencimiento.cd_almacen = ' + alm + ' ORDER BY INSaldosVencimiento.cd_producto','');


      }
end;

end.
