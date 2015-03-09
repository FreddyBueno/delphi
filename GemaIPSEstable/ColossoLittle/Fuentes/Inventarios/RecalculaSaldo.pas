unit RecalculaSaldo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, ComCtrls, DBCtrls,DateUtils;

type
  TRegeneraSaldos = class(TForm)
    Panel1: TPanel;
    Memo1: TMemo;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    ProgressBar1: TProgressBar;
    ADOQSaldoVence: TADOQuery;
    ADOQuery3: TADOQuery;
    ADOQueryProducto: TADOQuery;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DataSource1: TDataSource;
    CheckBox1: TCheckBox;
    ADOQuery4: TADOQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RegeneraSaldos: TRegeneraSaldos;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TRegeneraSaldos.Button1Click(Sender: TObject);
var i:integer;
   Fecha:string;
begin
   //Limpia la Tabla de Saldos por Almacen
  IF CheckBox1.Checked = True Then Begin
    ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('TRUNCATE Table INSaldosxAlmacen');
    ADOQuery2.ExecSQL;

    ADOQuery3.Close;
    ADOQuery3.SQL.Clear;
    ADOQuery3.SQL.Add('TRUNCATE Table INSaldosVencimiento');
    ADOQuery3.ExecSQL;

    ADOQuery3.Close;
    ADOQuery3.SQL.Clear;
    ADOQuery3.SQL.Add('TRUNCATE Table INSaldosxPeriodo');
    ADOQuery3.ExecSQL;
  End
  Else Begin
    ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('DELETE INSaldosxAlmacen WHERE Cd_Producto = '+chr(39)+DBLookupComboBox1.KeyValue+chr(39));
    ADOQuery2.ExecSQL;

    ADOQuery3.Close;
    ADOQuery3.SQL.Clear;
    ADOQuery3.SQL.Add('DELETE INSaldosVencimiento WHERE Cd_Producto = '+chr(39)+DBLookupComboBox1.KeyValue+chr(39));
    ADOQuery3.ExecSQL;

    ADOQuery3.Close;
    ADOQuery3.SQL.Clear;
    ADOQuery3.SQL.Add('DELETE INSaldosxPeriodo WHERE Cd_Producto = '+chr(39)+DBLookupComboBox1.KeyValue+chr(39));
    ADOQuery3.ExecSQL;
  End;

  //Limpia los promedios de los productos
  Datamodule1.ADOQProducto.Open;

  //Limpia Costos de la Tabla de Productos
  IF (CheckBox1.Checked = False)  Then Begin
     ADOQueryProducto.Edit;
     ADOQueryProducto.FieldValues['Costo_Prom_Pesos']:=0;
     ADOQueryProducto.FieldValues['Costo_Prom_Extr']:=0;
     ADOQueryProducto.FieldValues['Ult_Costo_Pesos']:=0;
     ADOQueryProducto.FieldValues['Costo_Prom_Extr']:=0;
     ADOQueryProducto.Post;
  End
  Else Begin
    Datamodule1.ADOQProducto.First;
    While NOT Datamodule1.ADOQProducto.Eof DO
    Begin
      Datamodule1.ADOQProducto.Edit;
      Datamodule1.ADOQProducto.FieldValues['Costo_Prom_Pesos']:=0;
      Datamodule1.ADOQProducto.FieldValues['Costo_Prom_Extr']:=0;
      Datamodule1.ADOQProducto.FieldValues['Ult_Costo_Pesos']:=0;
      Datamodule1.ADOQProducto.FieldValues['Costo_Prom_Extr']:=0;
      //Datamodule1.ADOQProducto.FieldValues['Fec_Ult_Compra']:=0;
      //Datamodule1.ADOQProducto.FieldValues['Fec_Ult_Venta']:=0;
      Datamodule1.ADOQProducto.Post;

      Datamodule1.ADOQProducto.Next;
    End;
    Datamodule1.ADOQProducto.Close;
  End;

  //Recorre las Transacciones recalculando Saldos.
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add(' SELECT * ');
  ADOQuery1.SQL.Add(' FROM INTransacciones_Enc,INTransacciones_Det,INDocumentos ');
  ADOQuery1.SQL.Add(' WHERE INTransacciones_Enc.Cd_Documento = INTransacciones_Det.Cd_Documento AND ');
  ADOQuery1.SQL.Add('       INTransacciones_Enc.Consec_Dcto  = INTransacciones_Det.Consec_Dcto AND ');
  ADOQuery1.SQL.Add('       INTransacciones_Enc.Cd_Documento = INDocumentos.Cd_Documento ');
  IF CheckBox1.Checked = False Then ADOQuery1.SQL.Add(' AND INTransacciones_Det.Cd_Producto = '+chr(39)+DBLookupComboBox1.KeyValue+chr(39));
  ADOQuery1.SQL.Add(' ORDER BY Fch_Hora_Transac ');
  ADOQuery1.Open;
  ProgressBar1.Max:=ADOquery1.RecordCount;
  i:=0;
  ADOQuery1.First;
  While NOT ADOQuery1.Eof DO
  Begin
  IF ADOQuery1.FieldValues['Estado'] <> 'A' Then Begin
    inc(i);
    ProgressBar1.Position:=i;
    //Graba la informacion del producto
    Datamodule1.ADOQProducto.Close;
    Datamodule1.ADOQProducto.SQL.Clear;
    Datamodule1.ADOQproducto.SQL.Add('SELECT * FROM INProductos WHERE CD_PRODUCTO='+chr(39)+ADOQuery1.FieldValues['Cd_Producto']+chr(39));
    Datamodule1.ADOQproducto.Open;
    IF Datamodule1.ADOQProducto.RecordCount = 1 then
    Begin
      Datamodule1.ADOQProducto.Edit;
      if ADOQuery1.FieldValues['EntradaSalida'] = 'E' THEN
      Begin
        If Datamodule1.ADOQProducto.FieldValues['Costo_Prom_Pesos'] <> 0 then
        Begin
          If Datamodule1.ADOQProducto.FieldValues['Costo_Prom_Pesos'] = Null Then Datamodule1.ADOQProducto.FieldValues['Costo_Prom_Pesos'] := ADOQuery1.FieldValues['Valor_Unitario']
          Else Datamodule1.ADOQProducto.FieldValues['Costo_Prom_Pesos'] := (Datamodule1.ADOQProducto.FieldValues['Costo_Prom_Pesos']+ADOQuery1.FieldValues['Valor_Unitario'])/2
        End
        else Datamodule1.ADOQProducto.FieldValues['Costo_Prom_Pesos'] := ADOQuery1.FieldValues['Valor_Unitario'];

        Datamodule1.ADOQProducto.FieldValues['Ult_Costo_Pesos'] := ADOQuery1.FieldValues['Valor_Unitario'];
        Datamodule1.ADOQProducto.FieldValues['Fec_Ult_Compra'] := ADOQuery1.FieldValues['Fch_Hora_Transac'];
      End;
      if ADOQuery1.FieldValues['EntradaSalida'] = 'S' THEN Begin  ///Revisar
        Datamodule1.ADOQProducto.FieldValues['Precio_Venta_Pesos'] := ADOQuery1.FieldValues['Valor_Unitario'];
        Datamodule1.ADOQProducto.FieldValues['Fec_Ult_Venta'] := ADOQuery1.FieldValues['Fch_Hora_Transac'];
      End;
      Datamodule1.ADOQProducto.Post;
    End;
    ADOQuery4.Close;
    ADOQuery4.Parameters.ParamValues['cddoc']  := ADOQuery1.FieldValues['cd_documento'];
    ADOQuery4.Parameters.ParamValues['condoc'] := ADOQuery1.FieldValues['consec_dcto'];
    ADOQuery4.Parameters.ParamValues['secdoc'] := ADOQuery1.FieldValues['secuencia'];
    ADOQuery4.Open;
    ADOQuery4.Edit;
    ADOQuery4.FieldValues['Costo_Promedio']:=Datamodule1.ADOQProducto.FieldValues['Costo_Prom_Pesos'];
    ADOQuery4.Post;
    
    //Graba la Entrada
    if (ADOQuery1.FieldValues['Cd_AlmacenDestino'] <> null) AND (ADOQuery1.FieldValues['Cd_AlmacenDestino'] <> '') then
    Begin
      Datamodule1.ADOQSaldoInventa.Close;
      Datamodule1.ADOQSaldoInventa.SQL.Clear;
      Datamodule1.ADOQSaldoInventa.SQL.ADD('SELECT * FROM INSaldosxAlmacen WHERE CD_Producto='+chr(39)+ADOQuery1.FieldValues['CD_Producto']+chr(39)+' AND CD_Almacen ='+chr(39)+ADOQuery1.FieldValues['Cd_AlmacenDestino']+chr(39));
      Datamodule1.ADOQSaldoInventa.Open;
      IF Datamodule1.ADOQSaldoInventa.recordcount <> 0 then
        Datamodule1.ADOQSaldoInventa.Edit
      else Begin
        Datamodule1.ADOQSaldoInventa.Insert;
        Datamodule1.ADOQSaldoInventa.FieldValues['CD_Producto'] := ADOQuery1.FieldValues['CD_Producto'];
        Datamodule1.ADOQSaldoInventa.FieldValues['Cd_Almacen']  := ADOQuery1.FieldValues['Cd_AlmacenDestino'];
        Datamodule1.ADOQSaldoInventa.FieldValues['Cantidad']    :=0;
        Datamodule1.ADOQSaldoInventa.FieldValues['Costo']       :=0;
      end;
      Datamodule1.ADOQSaldoInventa.FieldValues['Cantidad'] := Datamodule1.ADOQSaldoInventa.FieldValues['Cantidad']+ADOQuery1.FieldValues['Cant_Producto'];
      If Datamodule1.ADOQSaldoInventa.FieldValues['Costo'] <> 0 then Datamodule1.ADOQSaldoInventa.FieldValues['Costo']    := (Datamodule1.ADOQSaldoInventa.FieldValues['Costo']+ADOQuery1.FieldValues['Valor_Unitario'])/2
      Else Datamodule1.ADOQSaldoInventa.FieldValues['Costo'] := ADOQuery1.FieldValues['Valor_Unitario'];
      if ADOQuery1.FieldValues['EntradaSalida'] = 'E' THEN Begin
        Datamodule1.ADOQSaldoInventa.FieldValues['Ultima_Compra'] := ADOQuery1.FieldValues['Fch_Hora_Transac'];
        Datamodule1.ADOQSaldoInventa.FieldValues['Ultimo_Costo'] := ADOQuery1.FieldValues['Valor_Unitario'];
      End;
      Datamodule1.ADOQSaldoInventa.Post;

      //Graba los Saldos por Vencimiento
      IF (ADOQuery1.FieldValues['Fecha_Vence'] <> null) AND (ADOQuery1.FieldValues['Lote'] <> Null) Then Begin
        ADOQSaldoVence.Close;
        ADOQSaldoVence.SQL.Clear;
        ADOQSaldoVence.SQL.ADD('SELECT * FROM INSaldosVencimiento WHERE CD_Producto='+chr(39)+ADOQuery1.FieldValues['CD_Producto']+chr(39)+' AND CD_Almacen ='+chr(39)+ADOQuery1.FieldValues['Cd_AlmacenDestino']+chr(39)+' AND convert (datetime, convert (varchar, Fecha_Vencim, 103), 103) =convert (datetime, convert (varchar,'+chr(39)+datetostr(ADOQuery1.FieldValues['Fecha_Vence'])+chr(39)+',103), 103) AND Lote ='+chr(39)+ADOQuery1.FieldValues['Lote']+chr(39));
        ADOQSaldoVence.Open;
        IF ADOQSaldoVence.recordcount <> 0 then
          ADOQSaldoVence.Edit
        else Begin
          ADOQSaldoVence.Insert;
          ADOQSaldoVence.FieldValues['CD_Producto']  := ADOQuery1.FieldValues['CD_Producto'];
          ADOQSaldoVence.FieldValues['Cd_Almacen']   := ADOQuery1.FieldValues['Cd_AlmacenDestino'];
          ADOQSaldoVence.FieldValues['Fecha_Vencim'] := ADOQuery1.FieldValues['Fecha_Vence'];
          ADOQSaldoVence.FieldValues['Lote']         := ADOQuery1.FieldValues['Lote'];
          ADOQSaldoVence.FieldValues['Cantidad']     := 0;
        end;
        ADOQSaldoVence.FieldValues['Cantidad'] := ADOQSaldoVence.FieldValues['Cantidad']+ADOQuery1.FieldValues['Cant_Producto'];
        ADOQSaldoVence.Post;
      End;

      //Graba los Saldos por Periodo
      if monthof(ADOQuery1.FieldValues['Fch_Hora_Transac']) < 10 then
        fecha:=inttostr(yearof(ADOQuery1.FieldValues['Fch_Hora_Transac']))+'0'+inttostr(monthof(ADOQuery1.FieldValues['Fch_Hora_Transac']))
      Else
        fecha:=inttostr(yearof(ADOQuery1.FieldValues['Fch_Hora_Transac']))+inttostr(monthof(ADOQuery1.FieldValues['Fch_Hora_Transac']));

      Datamodule1.ADOQSaldoPeriodoAnt.Close;
      Datamodule1.ADOQSaldoPeriodoAnt.SQL.Clear;
      Datamodule1.ADOQSaldoPeriodoAnt.SQL.ADD('SELECT * FROM INSaldosxPeriodo WHERE CD_Producto='+chr(39)+ADOQuery1.FieldValues['CD_Producto']+chr(39)+' AND CD_Almacen ='+chr(39)+ADOQuery1.FieldValues['Cd_AlmacenDestino']+chr(39)+' AND convert(integer,Periodo) < '+ fecha +' ORDER BY periodo');
      Datamodule1.ADOQSaldoPeriodoAnt.Open;
      Datamodule1.ADOQSaldoPeriodoAnt.Last;

      Datamodule1.ADOQSaldoPeriodo.Close;
      Datamodule1.ADOQSaldoPeriodo.SQL.Clear;
      Datamodule1.ADOQSaldoPeriodo.SQL.ADD('SELECT * FROM INSaldosxPeriodo WHERE CD_Producto='+chr(39)+ADOQuery1.FieldValues['CD_Producto']+chr(39)+' AND CD_Almacen ='+chr(39)+ADOQuery1.FieldValues['Cd_AlmacenDestino']+chr(39)+' AND Periodo = '+chr(39)+ fecha +chr(39));
      Datamodule1.ADOQSaldoPeriodo.Open;
      IF Datamodule1.ADOQSaldoPeriodo.recordcount <> 0 then
        Datamodule1.ADOQSaldoPeriodo.Edit
      else Begin
        Datamodule1.ADOQSaldoPeriodo.Insert;
        Datamodule1.ADOQSaldoPeriodo.FieldValues['Periodo']      := fecha;
        Datamodule1.ADOQSaldoPeriodo.FieldValues['CD_Producto']  := ADOQuery1.FieldValues['CD_Producto'];
        Datamodule1.ADOQSaldoPeriodo.FieldValues['Cd_Almacen']   := ADOQuery1.FieldValues['Cd_AlmacenDestino'];
        Datamodule1.ADOQSaldoPeriodo.FieldValues['Cantidad']     := 0;
        Datamodule1.ADOQSaldoPeriodo.FieldValues['Costo']        := 0;
        if Datamodule1.ADOQSaldoPeriodoAnt.FieldValues['Costo'] <> null    Then Datamodule1.ADOQSaldoPeriodo.FieldValues['Costo']    := Datamodule1.ADOQSaldoPeriodoAnt.FieldValues['Costo'];
        if Datamodule1.ADOQSaldoPeriodoAnt.FieldValues['Cantidad'] <> null Then Datamodule1.ADOQSaldoPeriodo.FieldValues['Cantidad'] := Datamodule1.ADOQSaldoPeriodoAnt.FieldValues['Cantidad'];
      end;
      Datamodule1.ADOQSaldoPeriodo.FieldValues['Cantidad'] := Datamodule1.ADOQSaldoPeriodo.FieldValues['Cantidad']+ADOQuery1.FieldValues['Cant_Producto'];
      If Datamodule1.ADOQSaldoPeriodo.FieldValues['Costo'] <> 0 then Datamodule1.ADOQSaldoPeriodo.FieldValues['Costo'] := (Datamodule1.ADOQSaldoPeriodo.FieldValues['Costo']+ADOQuery1.FieldValues['Valor_Unitario'])/2
      Else Datamodule1.ADOQSaldoPeriodo.FieldValues['Costo'] := ADOQuery1.FieldValues['Valor_Unitario'];
      if ADOQuery1.FieldValues['EntradaSalida'] = 'E' THEN Begin
        Datamodule1.ADOQSaldoPeriodo.FieldValues['Ultima_Compra'] := ADOQuery1.FieldValues['Fch_Hora_Transac'];
        Datamodule1.ADOQSaldoPeriodo.FieldValues['Ultimo_Costo'] := ADOQuery1.FieldValues['Valor_Unitario'];
      End;
      Datamodule1.ADOQSaldoPeriodo.Post;
    End;

    //Graba la Salida
    if (ADOQuery1.FieldValues['CD_AlmacenOrigen'] <> null) AND (ADOQuery1.FieldValues['CD_AlmacenOrigen'] <> '')then
    Begin
      Datamodule1.ADOQSaldoInventa.Close;
      Datamodule1.ADOQSaldoInventa.SQL.Clear;
      Datamodule1.ADOQSaldoInventa.SQL.ADD('SELECT * FROM INSaldosxAlmacen WHERE CD_Producto='+chr(39)+ADOQuery1.FieldValues['CD_Producto']+chr(39)+' AND CD_Almacen ='+chr(39)+ADOQuery1.FieldValues['CD_AlmacenOrigen']+chr(39));
      Datamodule1.ADOQSaldoInventa.Open;
      IF Datamodule1.ADOQSaldoInventa.recordcount <> 0 then
        Datamodule1.ADOQSaldoInventa.Edit
      else Begin
        Datamodule1.ADOQSaldoInventa.Insert;
        Datamodule1.ADOQSaldoInventa.FieldValues['CD_Producto'] := ADOQuery1.FieldValues['Cd_Producto'];
        Datamodule1.ADOQSaldoInventa.FieldValues['Cd_Almacen']  := ADOQuery1.FieldValues['CD_AlmacenOrigen'];
        Datamodule1.ADOQSaldoInventa.FieldValues['Cantidad']    :=0;
        Datamodule1.ADOQSaldoInventa.FieldValues['Costo']       :=0;
      end;
      Datamodule1.ADOQSaldoInventa.FieldValues['Cantidad'] := Datamodule1.ADOQSaldoInventa.FieldValues['Cantidad']-ADOQuery1.FieldValues['Cant_Producto'];
      if ADOQuery1.FieldValues['EntradaSalida'] = 'S' THEN Datamodule1.ADOQSaldoInventa.FieldValues['Ultima_Venta']  := ADOQuery1.FieldValues['Fch_Hora_Transac'];
      Datamodule1.ADOQSaldoInventa.Post;

      //Graba los Saldos por Vencimiento
      IF (ADOQuery1.FieldValues['Fecha_Vence'] <> null) AND (ADOQuery1.FieldValues['Lote'] <> Null) Then Begin
        ADOQSaldoVence.Close;
        ADOQSaldoVence.SQL.Clear;
        ADOQSaldoVence.SQL.ADD('SELECT * FROM INSaldosVencimiento WHERE CD_Producto='+chr(39)+ADOQuery1.FieldValues['CD_Producto']+chr(39)+' AND CD_Almacen ='+chr(39)+ADOQuery1.FieldValues['CD_AlmacenOrigen']+chr(39)+' AND convert (datetime, convert (varchar, Fecha_Vencim, 103), 103) =convert (datetime, convert (varchar,'+chr(39)+datetostr(ADOQuery1.FieldValues['Fecha_Vence'])+chr(39)+',103), 103) AND Lote ='+chr(39)+ADOQuery1.FieldValues['Lote']+chr(39));
        //showmessage(ADOQSaldoVence.SQL.GetText);
        ADOQSaldoVence.Open;
        IF ADOQSaldoVence.recordcount <> 0 then
          ADOQSaldoVence.Edit
        else Begin
          ADOQSaldoVence.Insert;
          ADOQSaldoVence.FieldValues['CD_Producto']  := ADOQuery1.FieldValues['CD_Producto'];
          ADOQSaldoVence.FieldValues['Cd_Almacen']   := ADOQuery1.FieldValues['CD_AlmacenOrigen'];
          ADOQSaldoVence.FieldValues['Fecha_Vencim'] := ADOQuery1.FieldValues['Fecha_Vence'];
          ADOQSaldoVence.FieldValues['Lote']         := ADOQuery1.FieldValues['Lote'];
          ADOQSaldoVence.FieldValues['Cantidad']     := 0;
        end;
        ADOQSaldoVence.FieldValues['Cantidad'] := ADOQSaldoVence.FieldValues['Cantidad']-ADOQuery1.FieldValues['Cant_Producto'];
        ADOQSaldoVence.Post;
      End;

      //Graba los Saldos por Periodo
      if monthof(ADOQuery1.FieldValues['Fch_Hora_Transac']) < 10 then
        fecha:=inttostr(yearof(ADOQuery1.FieldValues['Fch_Hora_Transac']))+'0'+inttostr(monthof(ADOQuery1.FieldValues['Fch_Hora_Transac']))
      Else
        fecha:=inttostr(yearof(ADOQuery1.FieldValues['Fch_Hora_Transac']))+inttostr(monthof(ADOQuery1.FieldValues['Fch_Hora_Transac']));

      Datamodule1.ADOQSaldoPeriodoAnt.Close;
      Datamodule1.ADOQSaldoPeriodoAnt.SQL.Clear;
      Datamodule1.ADOQSaldoPeriodoAnt.SQL.ADD('SELECT * FROM INSaldosxPeriodo WHERE CD_Producto='+chr(39)+ADOQuery1.FieldValues['CD_Producto']+chr(39)+' AND CD_Almacen ='+chr(39)+ADOQuery1.FieldValues['Cd_AlmacenOrigen']+chr(39)+' AND convert(integer,Periodo) < '+ fecha +' ORDER BY periodo');
      Datamodule1.ADOQSaldoPeriodoAnt.Open;
      Datamodule1.ADOQSaldoPeriodoAnt.Last;

      Datamodule1.ADOQSaldoPeriodo.Close;
      Datamodule1.ADOQSaldoPeriodo.SQL.Clear;
      Datamodule1.ADOQSaldoPeriodo.SQL.ADD('SELECT * FROM INSaldosxPeriodo WHERE CD_Producto='+chr(39)+ADOQuery1.FieldValues['CD_Producto']+chr(39)+' AND CD_Almacen ='+chr(39)+ADOQuery1.FieldValues['CD_AlmacenOrigen']+chr(39)+' AND Periodo = '+chr(39)+ fecha +chr(39));
      Datamodule1.ADOQSaldoPeriodo.Open;
      IF Datamodule1.ADOQSaldoPeriodo.recordcount <> 0 then
        Datamodule1.ADOQSaldoPeriodo.Edit
      else Begin
        Datamodule1.ADOQSaldoPeriodo.Insert;
        Datamodule1.ADOQSaldoPeriodo.FieldValues['Periodo']      := fecha;
        Datamodule1.ADOQSaldoPeriodo.FieldValues['CD_Producto']  := ADOQuery1.FieldValues['CD_Producto'];
        Datamodule1.ADOQSaldoPeriodo.FieldValues['Cd_Almacen']   := ADOQuery1.FieldValues['CD_AlmacenOrigen'];
        Datamodule1.ADOQSaldoPeriodo.FieldValues['Cantidad']     := 0;
        Datamodule1.ADOQSaldoPeriodo.FieldValues['Costo']        := 0;
        if Datamodule1.ADOQSaldoPeriodoAnt.FieldValues['Cantidad'] <> null Then Datamodule1.ADOQSaldoPeriodo.FieldValues['Cantidad'] := Datamodule1.ADOQSaldoPeriodoAnt.FieldValues['Cantidad'];
      end;
      Datamodule1.ADOQSaldoPeriodo.FieldValues['Cantidad'] := Datamodule1.ADOQSaldoPeriodo.FieldValues['Cantidad']-ADOQuery1.FieldValues['Cant_Producto'];
      if Datamodule1.ADOQSaldoPeriodoAnt.FieldValues['Costo'] <> null Then Datamodule1.ADOQSaldoPeriodo.FieldValues['Costo'] := Datamodule1.ADOQSaldoPeriodoAnt.FieldValues['Costo'];
      if ADOQuery1.FieldValues['EntradaSalida'] = 'S' THEN Begin
        Datamodule1.ADOQSaldoPeriodo.FieldValues['Ultima_Venta'] := ADOQuery1.FieldValues['Fch_Hora_Transac'];
        Datamodule1.ADOQSaldoPeriodo.FieldValues['Ultimo_Costo'] := ADOQuery1.FieldValues['Valor_Unitario'];
      End;
      Datamodule1.ADOQSaldoPeriodo.Post;
    End;
  End;
  ADOQuery1.Next;
  End;
  Datamodule1.ADOQSaldoInventa.Close;

  ADOQuery1.close;
  ADOQueryProducto.Close;
  ADOQueryProducto.Open;
  Close;
end;

procedure TRegeneraSaldos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TRegeneraSaldos.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  DBLookupCombobox1.KeyValue := ADOQueryProducto.FieldValues['CD_Producto'];
  DBLookupCombobox2.KeyValue := ADOQueryProducto.FieldValues['CD_Producto'];
end;

procedure TRegeneraSaldos.FormCreate(Sender: TObject);
begin
  ADOQueryProducto.Open;
end;

end.
