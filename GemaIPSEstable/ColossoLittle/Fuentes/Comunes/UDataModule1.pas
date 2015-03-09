unit UDataModule1;

interface

uses
  SysUtils, Classes, DB, ADODB, IniFiles,Variants ,dialogs,Controls, Forms,DateUtils,
  ExtCtrls,Windows,ShellApi,Grids,Libreria_Prateinco,strutils,
  Vcl.Themes,
  Vcl.Styles;

type
  TDataModule1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    ADOQEncInventa: TADOQuery;
    ADOQDetInventa: TADOQuery;
    ADOQDocInventa: TADOQuery;
    ADOQSaldoInventa: TADOQuery;
    ADOQProducto: TADOQuery;
    ADOPlan: TADOQuery;
    ADOQuery3: TADOQuery;
    ADOQCosto: TADOQuery;
    ADOQCostoCOSTO_PROM_PESOS: TIntegerField;
    ADOQCostoCOSTO_PROM_EXTR: TIntegerField;
    ADOQCostoULT_COSTO_PESOS: TIntegerField;
    ADOQCostoULT_COSTO_EXTR: TIntegerField;
    ADOQEncConta: TADOQuery;
    ADOQDocConta: TADOQuery;
    ADODetConta: TADOQuery;
    ADOQuery4: TADOQuery;
    ADOQuery5: TADOQuery;
    ADOQContcierre: TADOQuery;
    ADOParamGeneral: TADOQuery;
    ADOQSaldoVence: TADOQuery;
    ADOLogs: TADOQuery;
    DataSource1: TDataSource;
    ADOQSaldoPeriodo: TADOQuery;
    ADOQSaldoPeriodoAnt: TADOQuery;
    ADOQtmp: TADOQuery;
    ADOQFormas: TADOQuery;
    ADOQtmp2: TADOQuery;
    ADOPrateinco: TADOConnection;
    ADOQValPrateinco: TADOQuery;
    ADOComunes: TADOConnection;
    ADOQVal: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    nit,nom,Bd,Usuario,Password, emp,host,Conex :String;

    Estilo:TStyleManager;
    lEstilos: array [0..50] of string;
    NoStyle:Integer;
    Function Afecta_EncInventarios(TpDoc:String;Fch:Tdatetime;AlmOri:Variant;AlmDest:Variant;Mem1:string;identificacion:string):String;
    Procedure Afecta_DetInventarios(ttran:char;TpDoc:String;NrDoc:Integer;Sec:Integer;NrProd:String;Cantidad:Extended;Costo:Extended;AlmOri:Variant;AlmDest:Variant;FecVence:tdatetime;Lote:String;fectran:tdatetime);
    function ctadet(cta: string): Boolean;
    Procedure Graba_Logx(Fch:TDateTime;Tipo:Variant;VrA:Variant;VrN:Variant;Tbl:Variant;Camp:Variant);
    Function Afecta_EncContabilidad(TpDoc:String;EmpT:String;Fch:TDateTime;Desc:Variant;Per:Variant;I1:Variant;I2:Variant;I3:Variant;Est:String;DocSop:Variant):String;
    Function Afecta_DetContabilidad(TpDoc:String;EmpT:String;NrDoc:Integer;Cta:Variant;VrDeb:Extended;VrCred:Extended;Terc:Variant;CentC:Variant;DocSop:Variant):String;
    Procedure  MuestraconAcceso(Sender:TObject);
    Procedure Mensaje(Id_De:integer;Id_Para:integer;Mensaje:string;Importancia:string);
    Procedure GuardaGrilla(gr:TObject;NomArch:string);
    Procedure RecuperaGrilla(gr:TObject;NomArch:string);

    { Public declarations }
  end;

var
  DataModule1: TDataModule1;
  NroCompConta:String;

implementation

uses About,NB30;

{$R *.dfm}
Procedure TdataModule1.GuardaGrilla(gr:TObject;NomArch:string);
var
  F1: TextFile;
  i,j:integer;
  Forma : TStringGrid;
begin
  Forma := gr as TStringGrid;
  if Assigned(Forma) then
  begin
    AssignFile(F1, NomArch);
    Rewrite(F1);
    For i:=1 TO forma.RowCount-1 do
    Begin
      For j:=1 TO forma.ColCount-1 do Write(F1,forma.Cells[j,i],',');
      WriteLN(F1);
    End;
    Close(F1);
  End;
End;

Procedure TdataModule1.RecuperaGrilla(gr:TObject;NomArch:string);
var
  F1: TextFile;
  i,j:integer;
  Forma : TStringGrid;

  cadena,cadena2:string;
  ind,k:integer;
begin
  Forma := gr as TStringGrid;
  if Assigned(Forma) then
  begin
    If fileexists(NomArch) Then
    Begin
      AssignFile(F1, NomArch);
      Reset(F1);
      k:=1;
      While NOT eof(F1) do
      Begin
        j:=1;
        cadena2:='';
        forma.Cells[0,k] := inttostr(k);
        Readln(F1, cadena);
        For i:=1 TO length(cadena) do
        Begin
          if (copy(cadena,i,1) = ',') then
          begin
            forma.Cells[j,k] :=cadena2;
            cadena2:='';
            j:=j+1;
          end
          else cadena2:=cadena2+copy(cadena,i,1);
        end;
        inc(k);
        if k > 2 then forma.RowCount:=k;
      End;
      Close(F1);
    End;
  End;
End;

Procedure TdataModule1.Mensaje(Id_De:integer;Id_Para:integer;Mensaje:string;Importancia:string);
Begin
  ADOQtmp.Close;
  ADOQtmp.SQL.Clear;
  ADOQtmp.sql.Add('SELECT * ');
  ADOQtmp.sql.Add(' FROM  '+Datamodule1.ADOComunes.DefaultDatabase+'..SEMensajes_a_Usuarios');
  ADOQtmp.Open;

  ADOQtmp.Append;
  ADOQtmp.FieldValues['Id_De']        :=Id_de;
  ADOQtmp.FieldValues['Id_Para']      :=Id_Para;
  ADOQtmp.FieldValues['Fecha']        :=now;
  ADOQtmp.FieldValues['Mensaje']      :=mensaje;
  ADOQtmp.FieldValues['Importancia']  :=Importancia;
  ADOQtmp.Post;
End;

Procedure TdataModule1.Graba_Logx(Fch:TDateTime;Tipo:Variant;VrA:Variant;VrN:Variant;Tbl:Variant;Camp:Variant);
Begin
  try
    ADOLogs.Append;
    ADOLogs.FieldValues['Fecha']         := now;
    ADOLogs.FieldValues['Id']            := ADOQuery1.FieldValues['Id'];
    ADOLogs.FieldValues['Fecha_Tran']    := Fch;
    ADOLogs.FieldValues['Tipo']          := Tipo;
    ADOLogs.FieldValues['Valor_Anterior']:= VrA;
    ADOLogs.FieldValues['Valor_Nuevo']   := VrN;
    ADOLogs.FieldValues['Tabla']         := Tbl;
    ADOLogs.FieldValues['Campo']         := Camp;
    ADOLogs.Post;
  except
    Showmessage('Ocurrio un error al intentar grabar el LOGs de registros.');
  end;
End;

Function TdataModule1.Afecta_EncContabilidad(TpDoc:String;EmpT:String;Fch:TDateTime;Desc:Variant;Per:Variant;I1:Variant;I2:Variant;I3:Variant;Est:String;DocSop:Variant):String;
var mes_siguiente,mes_actual:string;
    fec_actual:Tdatetime;
Begin
  mes_actual := per;
  Repeat
    ADOQContcierre.Close;
    ADOQContcierre.SQL.Clear;
    ADOQContcierre.SQL.ADD('SELECT * FROM ContCierres WHERE Periodo_Proceso='+chr(39)+mes_actual+chr(39));
    ADOQContcierre.Open;
    IF ADOQContcierre.RecordCount=0 Then Begin
      ADOQContcierre.Append;
      ADOQContcierre.FieldValues['Periodo_Proceso']:=Mes_Actual;
      ADOQContcierre.FieldValues['Estado']:='A';
      ADOQContCierre.Post;
    End
    Else Begin
      ADOQContcierre.Edit;
      ADOQContcierre.FieldValues['Estado']:='A';
      ADOQContcierre.FieldValues['Modificado']:='S';
      ADOQContCierre.Post;
    End;

    //*************************
    //Calcula el Mes Siguiente.
    //*************************
    if strtoint(rightstr(Mes_Actual,2)) <> 13 Then
      Mes_Siguiente:='01/'+rightstr(Mes_Actual,2)+'/'+leftstr(Mes_Actual,4)
    Else
      Mes_Siguiente:='01/12/'+leftstr(Mes_Actual,4);

    if strtoint(rightstr(Mes_Actual,2)) <> 12 Then
    Begin
      if strtoint(rightstr(Mes_Actual,2)) <> 13 Then
      Begin
        if length(inttostr(yearof(strtodate(Mes_Siguiente)+35))+inttostr(monthof(strtodatetime(Mes_Siguiente)+35))) = 5 then
          Mes_Siguiente:=inttostr(yearof(strtodate(Mes_Siguiente)+35))+'0'+inttostr(monthof(strtodatetime(Mes_Siguiente)+35))
        Else
          Mes_Siguiente:=inttostr(yearof(strtodate(Mes_Siguiente)+35))+inttostr(monthof(strtodatetime(Mes_Siguiente)+35));
      End
      Else Mes_Siguiente:=inttostr(yearof(strtodate(Mes_Siguiente)+35))+'01';
    End
    Else Mes_Siguiente:=inttostr(yearof(strtodate(Mes_Siguiente)))+'13';
    mes_actual := Mes_Siguiente;

    if strtoint(rightstr(Mes_Actual,2)) <> 13 Then
      fec_actual:=strtodate('01/'+rightstr(Mes_Actual,2)+'/'+leftstr(Mes_Actual,4))
    Else
      fec_actual:=strtodate('01/12/'+leftstr(Mes_Actual,4));
  UNTIL fec_actual >= now;

  ADOQEncConta.Open;
  ADOQDocConta.Close;
  ADOQDocConta.SQL.Clear;
  ADOQDocConta.SQL.ADD('SELECT * FROM CONTTIPOCOMP WHERE Tipo_Comprobante='+chr(39)+TpDoc+chr(39));
  ADOQDocConta.Open;

  if (DocSop = '') then
  Begin
    ADOQtmp.Close;
    ADOQtmp.SQL.Clear;
    ADOQtmp.sql.Add('SELECT max(Numero_Comprobante) as Ultimo FROM  CONTEncComp');
    ADOQtmp.sql.Add('WHERE Tipo_Comprobante = '+TpDoc);
    ADOQtmp.sql.Add('      AND Empresa = '+EmpT);
    ADOQtmp.Open;
    if (ADOQtmp.FieldValues['Ultimo'] <> Null) then
       DocSop:=alineardatos(inttostr(strtoint(ADOQtmp.FieldValues['Ultimo'])+1),8)
    else
       DocSop:= '1';
  end;

  //Verifica la no Existencia del Documento
  ADOQtmp.Close;
  ADOQtmp.SQL.Clear;
  ADOQtmp.sql.Add('SELECT Numero_Comprobante FROM  CONTEncComp');
  ADOQtmp.sql.Add('WHERE Tipo_Comprobante = '+TpDoc);
  ADOQtmp.sql.Add('      AND Empresa = '+EmpT);
  ADOQtmp.sql.Add('      AND Numero_Comprobante = '+DocSop);
  ADOQtmp.Open;
  IF ADOQtmp.RecordCount > 0 Then
  Begin
    Afecta_EncContabilidad := 'ERROR: El numero de documento asignado a este comprobante ya existe en la Base de Datos.';
  End;

  ADOQEncConta.Append;
  ADOQEncConta.FieldValues['Tipo_Comprobante']   := TpDoc;
  ADOQEncConta.FieldValues['Empresa']            := EmpT;
  ADOQEncConta.FieldValues['Numero_Comprobante'] := DocSop;
  ADOQEncConta.FieldValues['Fecha_Comprobante']  := Fch;
  ADOQEncConta.FieldValues['Descripcion']        := Desc;
  ADOQEncConta.FieldValues['Periodo_Proceso']    := Per;
  ADOQEncConta.FieldValues['Informacion_1']      := I1;
  ADOQEncConta.FieldValues['Informacion_2']      := I2;
  ADOQEncConta.FieldValues['Informacion_3']      := I3;
  ADOQEncConta.FieldValues['Estado']             := Est;
  ADOQEncConta.FieldValues['Campo1']             := ADOQDocConta.FieldValues['Campo1'];
  ADOQEncConta.FieldValues['Campo2']             := ADOQDocConta.FieldValues['Campo2'];
  ADOQEncConta.FieldValues['Campo3']             := ADOQDocConta.FieldValues['Campo3'];
  ADOQEncConta.FieldValues['Area']               := ADOQuery1.FieldValues['Area_Trabaja'];
  ADOQEncConta.FieldValues['Persona_Grabo']      := ADOQuery1.FieldValues['Id'];

  ADOQEncConta.Post;

  Afecta_EncContabilidad:=inttostr(ADOQEncConta.FieldValues['Numero_Comprobante']);
  ADOQEncConta.Close;
End;

Function TdataModule1.Afecta_DetContabilidad(TpDoc:String;EmpT:String;NrDoc:Integer;Cta:Variant;VrDeb:Extended;VrCred:Extended;Terc:Variant;CentC:Variant;DocSop:Variant):String;
Begin
  If cta = Null Then
  Begin
    Afecta_DetContabilidad := 'ERROR: (Cuenta en Blanco) No esta completa la PARAMETRIZACION de la Cuenta. El combrobante se grabo descuadrado.';
  End
  Else Begin
    ADOQuery4.Close;
    ADOQuery4.SQL.Clear;
    ADOQuery4.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta='+chr(39)+Cta+chr(39));
    ADOQuery4.Open;
    IF ADOQuery4.RecordCount = 0 Then Begin
       Afecta_DetContabilidad := 'ERROR: La cuenta '+chr(39)+Cta+chr(39)+' enviada no existe en la tabla de cuentas. El combrobante se grabo descuadrado.';
    End
    Else Begin
      IF ADOQuery4.FieldValues['Tercero'] <> 'S' Then Terc :='';
      IF ADOQuery4.FieldValues['CentroCosto'] <> 'S' Then CentC:='';

      IF (VrDeb = 0) AND (VrCred = 0) Then
      Begin
         Afecta_DetContabilidad := 'ERROR: Debe tener valores debito o credito.';
      End
      Else Begin
        ADODetConta.Close;
        ADODetConta.Parameters.ParamValues['TC'] := TpDoc;
        ADODetConta.Parameters.ParamValues['Emp'] := EmpT;
        ADODetConta.Parameters.ParamValues['NC'] := inttostr(NrDoc);
        ADODetConta.Parameters.ParamValues['Cta'] := Cta;
        ADODetConta.Parameters.ParamValues['Terce'] := Terc;
        ADODetConta.Parameters.ParamValues['CC'] := CentC;
        ADODetConta.Parameters.ParamValues['DS'] := DocSop;
        ADODetConta.Open;
        if ADODetConta.RecordCount > 0 Then
        Begin
          ADODetConta.Edit;
          ADODetConta.FieldValues['Valor_Debito']  := ADODetConta.FieldValues['Valor_Debito']+VrDeb;
          ADODetConta.FieldValues['Valor_Credito'] := ADODetConta.FieldValues['Valor_Credito']+VrCred;
        End
        Else Begin
          ADODetConta.Append;
          ADODetConta.FieldValues['Tipo_Comprobante']   := TpDoc;
          ADODetConta.FieldValues['Empresa']            := EmpT;
          ADODetConta.FieldValues['Numero_Comprobante'] := NrDoc;
          ADODetConta.FieldValues['Cuenta']             := trim(Cta);
          ADODetConta.FieldValues['Tercero']            := trim(Terc);
          ADODetConta.FieldValues['Centro_Costo']       := trim(CentC);
          ADODetConta.FieldValues['Valor_Debito']       := VrDeb;
          ADODetConta.FieldValues['Valor_Credito']      := VrCred;
          ADODetConta.FieldValues['DocSoporte']         := DocSop;
        End;

        ADODetConta.Post;
      End;
    End;
  End;
  ADODetConta.close;
End;

Function TdataModule1.Afecta_EncInventarios(TpDoc:String;Fch:TDateTime;AlmOri:Variant;AlmDest:Variant;Mem1:string;identificacion:string):String;
Var Periodo:String;
Begin
  ADOQEncInventa.Open;
  ADOQDocInventa.Close;
  ADOQDocInventa.SQL.Clear;
  ADOQDocInventa.SQL.ADD('SELECT * FROM INDocumentos WHERE CD_Documento='+chr(39)+tpdoc+chr(39));
  ADOQDocInventa.Open;

  //Graba el Encabezado
  While ADOQEncInventa.Locate('CD_Documento;Consec_Dcto', VarArrayOf([TpDoc,inttostr(ADOQDocInventa.FieldValues['Consecutivo'])]), [loPartialKey]) Do
  Begin
    ADOQDocInventa.Edit;
    ADOQDocInventa.FieldValues['Consecutivo']:=ADOQDocInventa.FieldValues['Consecutivo']+1;
    ADOQDocInventa.Post;
  End;
  ADOQEncInventa.Append;
  ADOQEncInventa.FieldValues['CD_Documento'] := ADOQDocInventa.FieldValues['CD_Documento'];
  ADOQEncInventa.FieldValues['Consec_Dcto']  := inttostr(ADOQDocInventa.FieldValues['Consecutivo']);
  ADOQEncInventa.FieldValues['Fch_hora_Transac'] := Fch;
  ADOQEncInventa.FieldValues['CD_AlmacenOrigen'] := AlmOri;
  ADOQEncInventa.FieldValues['CD_AlmacenDestino'] := AlmDest;
  ADOQEncInventa.FieldValues['Desc_Concepto'] := Mem1;
  ADOQEncInventa.FieldValues['Identificacion'] := Identificacion;
  ADOQEncInventa.Post;

  ADOQEncInventa.close;
  Afecta_EncInventarios:=inttostr(ADOQDocInventa.FieldValues['Consecutivo']);
End;

/////////////////**** MODIFICACION VALOR TOTAL  *********///////////////////

Procedure TdataModule1.Afecta_DetInventarios(ttran:char;TpDoc:String;NrDoc:Integer;Sec:Integer;NrProd:String;Cantidad:Extended;Costo:Extended;AlmOri:Variant;AlmDest:Variant;FecVence:tdatetime;Lote:String;fectran:tdatetime);
Begin
  ADOQDetInventa.Open;

  //Graba el Detalle
  ADOQDetInventa.Append;
  ADOQDetInventa.FieldValues['CD_Documento']   := ADOQDocInventa.FieldValues['Cd_Documento'];
  ADOQDetInventa.FieldValues['Consec_Dcto']    := inttostr(ADOQDocInventa.FieldValues['Consecutivo']);
  ADOQDetInventa.FieldValues['Secuencia']      := Sec;
  ADOQDetInventa.FieldValues['CD_Producto']    := NrProd;
  ADOQDetInventa.FieldValues['Cant_Producto']  := Cantidad;
  ADOQDetInventa.FieldValues['Valor_Unitario'] := Costo;
  ADOQDetInventa.FieldValues['Valor_Total']    := Costo * Cantidad;
  ADOQDetInventa.FieldValues['Fecha_Vence']    := FecVence;
  ADOQDetInventa.FieldValues['Lote']           := Lote;

  //Graba la informacion del producto
  ADOQProducto.Close;
  ADOQProducto.SQL.Clear;
  ADOQproducto.SQL.Add('SELECT * FROM INProductos WHERE CD_PRODUCTO='+chr(39)+NrProd+chr(39));
  ADOQproducto.Open;
  IF ADOQProducto.RecordCount = 1 then
  Begin
    ADOQProducto.Edit;
    if Ttran = 'C' THEN
    Begin
      If ADOQProducto.FieldValues['Costo_Prom_Pesos'] <> 0 then
      Begin
        If ADOQProducto.FieldValues['Costo_Prom_Pesos'] = Null Then ADOQProducto.FieldValues['Costo_Prom_Pesos'] := costo
        Else ADOQProducto.FieldValues['Costo_Prom_Pesos'] := (ADOQProducto.FieldValues['Costo_Prom_Pesos']+costo)/2
      End
      else ADOQProducto.FieldValues['Costo_Prom_Pesos'] := costo;

      ADOQProducto.FieldValues['Ult_Costo_Pesos'] := costo;
      ADOQProducto.FieldValues['Fec_Ult_Compra'] := fectran;
    End;
    if Ttran = 'V' THEN Begin
      //ADOQProducto.FieldValues['Precio_Venta_Pesos'] := costo;
      ADOQProducto.FieldValues['Fec_Ult_Venta'] := fectran;
    End;
    ADOQProducto.Post;
  End;
  ADOQDetInventa.FieldValues['Costo_Promedio'] := ADOQProducto.FieldValues['Costo_Prom_Pesos'];
  ADOQDetInventa.Post;

  //Graba la Entrada
  if (almdest <> null) AND (almdest <> '') then
  Begin
    // Graba los Saldos Totales
    ADOQSaldoInventa.Close;
    ADOQSaldoInventa.SQL.Clear;
    ADOQSaldoInventa.SQL.ADD('SELECT * FROM INSaldosxAlmacen WHERE CD_Producto='+chr(39)+NrProd+chr(39)+' AND CD_Almacen ='+chr(39)+almdest+chr(39));
    ADOQSaldoInventa.Open;
    IF ADOQSaldoInventa.recordcount <> 0 then
      ADOQSaldoInventa.Edit
    else Begin
      ADOQSaldoInventa.Insert;
      ADOQSaldoInventa.FieldValues['CD_Producto'] := nrProd;
      ADOQSaldoInventa.FieldValues['Cd_Almacen'] := almdest;
      ADOQSaldoInventa.FieldValues['Cantidad'] :=0;
      ADOQSaldoInventa.FieldValues['Costo'] :=0;
    end;
    ADOQSaldoInventa.FieldValues['Cantidad'] := ADOQSaldoInventa.FieldValues['Cantidad']+Cantidad;
    If ADOQSaldoInventa.FieldValues['Costo'] <> 0 then ADOQSaldoInventa.FieldValues['Costo'] := (ADOQSaldoInventa.FieldValues['Costo']+Costo)/2
    Else ADOQSaldoInventa.FieldValues['Costo'] := Costo;
    if Ttran = 'V' THEN Begin
      ADOQSaldoInventa.FieldValues['Ultimo_Costo'] := costo;
      ADOQSaldoInventa.FieldValues['Ultima_Compra'] := fectran;
    End;
    ADOQSaldoInventa.Post;

    //Graba los Saldos por Vencimiento
    IF (FecVence <> null) AND (Lote <> Null) Then
    Begin
      ADOQSaldoVence.Close;
      ADOQSaldoVence.SQL.Clear;
      ADOQSaldoVence.SQL.ADD('SELECT * FROM INSaldosVencimiento WHERE CD_Producto='+chr(39)+NrProd+chr(39)+' AND CD_Almacen ='+chr(39)+almdest+chr(39)+' AND convert (datetime, convert (varchar, Fecha_Vencim, 103), 103) =convert (datetime, convert (varchar,'+chr(39)+datetostr(FecVence)+chr(39)+',103), 103) AND Lote ='+chr(39)+Lote+chr(39));
      ADOQSaldoVence.Open;
      IF ADOQSaldoVence.recordcount <> 0 then
        ADOQSaldoVence.Edit
      else Begin
        ADOQSaldoVence.Insert;
        ADOQSaldoVence.FieldValues['CD_Producto']  := nrProd;
        ADOQSaldoVence.FieldValues['Cd_Almacen']   := almdest;
        ADOQSaldoVence.FieldValues['Fecha_Vencim'] := FecVence;
        ADOQSaldoVence.FieldValues['Lote']         := Lote;
        ADOQSaldoVence.FieldValues['Cantidad']     := 0;
      end;
      ADOQSaldoVence.FieldValues['Cantidad'] := ADOQSaldoVence.FieldValues['Cantidad']+Cantidad;
      ADOQSaldoVence.Post;
    End;
  End;

  //Graba la Salida
  if (almori <> null) AND (almori <> '') then
  Begin
    // Graba los Saldos Totales
    ADOQSaldoInventa.Close;
    ADOQSaldoInventa.SQL.Clear;
    ADOQSaldoInventa.SQL.ADD('SELECT * FROM INSaldosxAlmacen WHERE CD_Producto='+chr(39)+NrProd+chr(39)+' AND CD_Almacen ='+chr(39)+almori+chr(39));
    ADOQSaldoInventa.Open;
    IF ADOQSaldoInventa.recordcount <> 0 then
      ADOQSaldoInventa.Edit
    else Begin
      ADOQSaldoInventa.Insert;
      ADOQSaldoInventa.FieldValues['CD_Producto'] := nrProd;
      ADOQSaldoInventa.FieldValues['Cd_Almacen']  := almori;
      ADOQSaldoInventa.FieldValues['Cantidad']    :=0;
      ADOQSaldoInventa.FieldValues['Costo']       :=0;
    end;
    ADOQSaldoInventa.FieldValues['Cantidad'] := ADOQSaldoInventa.FieldValues['Cantidad']-Cantidad;
    if Ttran = 'C' THEN ADOQSaldoInventa.FieldValues['Ultima_Venta']  := fectran;
    ADOQSaldoInventa.Post;

    //Graba los Saldos por Vencimiento
    IF (FecVence <> null) AND (Lote <> Null) Then
    Begin
      ADOQSaldoVence.Close;
      ADOQSaldoVence.SQL.Clear;
      ADOQSaldoVence.SQL.ADD('SELECT * FROM INSaldosVencimiento WHERE CD_Producto='+chr(39)+NrProd+chr(39)+' AND CD_Almacen ='+chr(39)+almori+chr(39)+' AND convert (datetime, convert (varchar, Fecha_Vencim, 103), 103) =convert (datetime, convert (varchar,'+chr(39)+datetostr(FecVence)+chr(39)+',103), 103) AND Lote ='+chr(39)+Lote+chr(39));
      ADOQSaldoVence.Open;
      IF ADOQSaldoVence.recordcount <> 0 then
        ADOQSaldoVence.Edit
      else Begin
        ADOQSaldoVence.Insert;
        ADOQSaldoVence.FieldValues['CD_Producto']  := nrProd;
        ADOQSaldoVence.FieldValues['Cd_Almacen']   := almori;
        ADOQSaldoVence.FieldValues['Fecha_Vencim'] := FecVence;
        ADOQSaldoVence.FieldValues['Lote']         := Lote;
        ADOQSaldoVence.FieldValues['Cantidad']     := 0;
      end;
      ADOQSaldoVence.FieldValues['Cantidad'] := ADOQSaldoVence.FieldValues['Cantidad']-Cantidad;
      ADOQSaldoVence.Post;
    End;
  End;
  ADOQSaldoInventa.Close;
  ADOQSaldoVence.Close;

  ADOQDetInventa.close;
End;

Procedure TDataModule1.MuestraconAcceso(Sender:Tobject);
var
  Forma : TForm;
begin
  Forma := Sender as TForm;
  if Assigned(Forma) then
  begin
    ADOConnection1.BeginTrans;

    ADOQFormas.Close;
    ADOQFormas.SQL.Clear;
    ADOQFormas.SQL.Add('SELECT * FROM SEFormas WHERE Forma = '+chr(39)+sender.ClassName+chr(39));
    ADOQFormas.Open;
    If ADOQFormas.RecordCount = 1 then
    begin
      ADOQFormas.Edit;
      ADOQFormas.FieldValues['DescripcionForma']   := Forma.Caption;
      ADOQFormas.FieldValues['UltimoAcceso']       := Forma.Owner.Name;
      ADOQFormas.FieldValues['FechaUA']            := now;
      ADOQFormas.FieldValues['UsuarioUA']          := ADOQuery1.FieldValues['id'];
      ADOQFormas.Post;
    end
    else begin
      ADOQFormas.Append;
      ADOQFormas.FieldValues['Forma']              := sender.ClassName;
      ADOQFormas.FieldValues['DescripcionForma']   := Forma.Caption;
      ADOQFormas.FieldValues['UltimoAcceso']       := Forma.Owner.Name;
      ADOQFormas.FieldValues['FechaUA']            := now;
      ADOQFormas.FieldValues['UsuarioUA']          := ADOQuery1.FieldValues['id'];
      ADOQFormas.Post;
    end;
    ADOQFormas.Close;
    ADOQFormas.SQL.Clear;
    ADOQFormas.SQL.Add('SELECT * FROM SEAccesosForma WHERE Forma = '+chr(39)+sender.ClassName+chr(39)+' AND ID = '+floattostr(ADOQuery1.FieldValues['id']));
    ADOQFormas.Open;
    If ADOQFormas.RecordCount = 0 then
    begin
      ADOQFormas.Append;
      ADOQFormas.FieldValues['ID']                 := ADOQuery1.FieldValues['id'];
      ADOQFormas.FieldValues['Forma']              := sender.ClassName;
      ADOQFormas.FieldValues['Acceso']             := ADOParamGeneral.FieldValues['Acceso_Programas'];
      ADOQFormas.Post;
    end;

    ADOConnection1.CommitTrans;

    If (ADOQFormas.FieldValues['Acceso'] = 'S') or (ADOQuery1.FieldValues['id']=0) Then
      Forma.Show
    Else Begin
      Forma.free;
      Showmessage('Lo sentimos, no posee privilegios para ingresar a esta Forma.');
    End;
  end;
end;

function TDataModule1.ctadet(cta: string): Boolean;
begin
  ADOPlan.Close;
  ADOPlan.Parameters.ParamValues['cta']:= trim(cta);
  ADOPlan.Open;
  IF ADOPlan.FieldValues['tot'] = 1 then ctadet:=True
  ELSE ctadet:=False;
end;

procedure TDataModule1.DataModuleCreate(Sender: TObject);
Var Ini: TIniFile;
    Val: TIniFile;
    dip:string;
    mac,serial,nompc,st :string;
    i:Integer;
    FS:TFormatSettings;

begin
  Conex := 'SQLOLEDB';
  //Conex := 'SQLNCLI11';
  //Conex := 'SQLNCLI10';

  ADOConnection1.Close;
  ADOComunes.Close;
  ADOConnection1.ConnectionString := '';
  ADOComunes.ConnectionString := '';
  if (pos('SOFTSIG.EXE',uppercase(paramstr(0)))<>0) then
  Begin
    AboutBox := tAboutBox.create(application);
    try
      AboutBox.show;
    except
      AboutBox.free;
    end;
    AboutBox.Refresh;
  End;

  if (pos('SOFTSIG.EXE',uppercase(paramstr(0)))<>0) then AboutBox.ProgressBar1.Position:=AboutBox.ProgressBar1.Position+1;

  //Parametros Generales del Sistema.
  Application.UpDateFormatSettings := false;
  FS.DateSeparator := '/';
  FS.ShortDateFormat := 'dd/mm/yyyy';
  FS.DecimalSeparator := '.';
  FS.ThousandSeparator := ',';
  FS.ShortTimeFormat := 'hh:mm:ss';
  FS.LongTimeFormat := 'hh:mm:ss';
  FS.TimeSeparator := ':';
  FS.ListSeparator := ',';
  FS.LongDateFormat := 'dd/mm/yyyy';
  FS.CurrencyDecimals := 2;

  if (pos('SOFTSIG.EXE',uppercase(paramstr(0)))<>0) then AboutBox.ProgressBar1.Position:=AboutBox.ProgressBar1.Position+1;

  nompc:= ObtenerNombrePC();
  //mac:= ObtenerMac(nompc);
  mac:='XX';
  serial:= ObtenerSerial();

  Ini := TIniFile.Create( ExtractFilePath(paramstr(0))+'softips.ini' );
  Val := TIniFile.Create( ExtractFilePath(paramstr(0))+'sistemagm.cfg' );

  lEstilos[0] := 'Windows';
  lEstilos[1] := 'Amakrits';
  lEstilos[2] := 'Amethyst Kamri';
  lEstilos[3] := 'Aqua Graphite';
  lEstilos[4] := 'Aqua Light Slate';
  lEstilos[5] := 'Auric';
  lEstilos[6] := 'Carbon';
  lEstilos[7] := 'Charcoal Dark Slate';
  lEstilos[8] := 'Cobalt XEMedia';
  lEstilos[9] := 'Cyan Dusk';
  lEstilos[10] := 'Cyan Night';
  lEstilos[11] := 'Emerald Light Slate';
  lEstilos[12] := 'Golden Graphite';
  lEstilos[13] := 'Iceberg Classico';
  lEstilos[14] := 'Lavender Classico';
  lEstilos[15] := 'Light';
  lEstilos[16] := 'Luna';
  lEstilos[17] := 'Metropolis UI Black';
  lEstilos[18] := 'Metropolis UI Blue';
  lEstilos[19] := 'Metropolis UI Dark';
  lEstilos[20] := 'Metropolis UI Green';
  lEstilos[21] := 'Obsidian';
  lEstilos[22] := 'Ruby Graphite';
  lEstilos[23] := 'Sapphire Kamri';
  lEstilos[24] := 'Silver';
  lEstilos[25] := 'Slate Classico';
  lEstilos[26] := 'Smokey Quartz Kamri';
  lEstilos[27] := 'TurQuoise Gray';

  Estilo := TStyleManager.Create;
  try
    st := Ini.ReadString( 'Style', 'Random', 'X');
    if st = 'S' Then NoStyle := Random(27)
    Else if st = 'N' Then NoStyle := strtoint(Ini.ReadString( 'Style', 'NoStyle', '1'));

    if st <> 'X' Then Estilo.SetStyle(lEstilos[NoStyle])
    Else Estilo.SetStyle(lEstilos[0]);
  except
    Estilo.Free;
  end;

  //Crea el archivo softips.ini en caso de no existir
  if NOT fileexists(ExtractFilePath(paramstr(0))+'softips.ini') Then
  Begin
    Repeat
      dip := InputBox('Dirección Base Datos', 'IP', '');
    Until dip <> '';
    Ini.WriteString('Database', 'ServerName', dip);
    Ini.WriteString('Database', 'Motor', 'SQL');
    Ini.WriteString('Database', 'Version', '1');
  End;

  if (pos('SOFTSIG.EXE',uppercase(paramstr(0)))<>0) then AboutBox.ProgressBar1.Position:=AboutBox.ProgressBar1.Position+1;
  if Val.ReadString('Validacion', 'CadenaValida', '0') <>  EncriptaXOR(Serial+Mac+inttostr(yearof(now)),'Prateinco') Then
  Begin
    //Valida cada mes en prateinco
    ADOPrateinco.Close;
    ADOPrateinco.DefaultDatabase:='';
    ADOPrateinco.ConnectionString:='Provider='+chr(39)+conex+chr(39)+';Password=espartaguia;Persist Security Info=True;User ID=prateinco;Initial Catalog=Comunes;Data Source='+ Ini.ReadString( 'Database', 'ServerNamePRATEINCO', 'local');
    try
       ADOPrateinco.Open;
    except
       showmessage('No se ha podido tener acceso al servidor de PRATEINCO para validar su conexión, revise que tenga acceso a Internet.('+Ini.ReadString( 'Database', 'ServerNamePRATEINCO', 'local')+')');
       showmessage('Solicite una clave a traves del teléfono o email con el Serial No: '+Serial+' y el Mac No. '+Mac+' y la Camara de Comercio de su Empresa o Documento de Identificación.');
    end;

    IF ADOPrateinco.State = [stOpen] Then
    Begin
      ADOQVal.Close;
      ADOQVal.Parameters.ParamValues['ser']  := Serial;
      ADOQVal.Parameters.ParamValues['mac']  := Mac;
      ADOQVal.Open;
      if ADOQVal.RecordCount = 0 Then
      Begin
        Showmessage('Esta ingresando a GEMAIPS por primera vez, ingrese los datos de registro y en los próximas horas le autorizaremos el ingreso.');

        //forma de Registro
        Repeat
           Nit:=UpperCase(InputBox('Registro', 'Ingrese el NIT de su Empresa:',''));
        Until Nit <> '';

        ADOQtmp.Connection := ADOPrateinco;
        ADOQtmp.Close;
        ADOQtmp.SQL.Clear;
        ADOQtmp.SQL.Add('SELECT * FROM GemaIPSPrat..CONTTerce WHERE Estado = '+chr(39)+'A'+chr(39) +' AND Numero_Documento = '+chr(39)+trim(Nit)+chr(39));
        ADOQtmp.Open;
        IF ADOQtmp.RecordCount = 0 Then
        Begin
          Showmessage('La empresa no esta ingresada en nuestra Base de Datos o esta Inactiva.');
          Showmessage('Registrese comunicandose con PRATEINCO (Contterce).');
          Halt;
        End
        Else Begin
          Repeat
            Nom := UpperCase(InputBox('Registro', 'Ingrese su Nombre:',''));
          Until Nom <> '';
        End;

        ADOQVal.Append;
        ADOQVal.FieldValues['Serial']        := Serial;
        ADOQVal.FieldValues['Mac']           := Mac;
        ADOQVal.FieldValues['Programa']      := nompc;
        ADOQVal.FieldValues['Nit_Empresa']   := ADOQtmp.FieldValues['Numero_Documento'];
        ADOQVal.FieldValues['Usuario']       := Nom;
        ADOQVal.FieldValues['Ip_Servidor']   := Ini.ReadString( 'Database', 'ServerName', 'local');
        ADOQVal.Post;

        ADOQtmp.Close;
        ADOQtmp.Connection := ADOConnection1;
      End
      Else Begin
        if ADOQVal['Autorizado'] <> 'S' Then Begin
          showmessage('No esta autorizado para ingresar desde este Computador, comuniquese con el area de soporte de PRATEINCO.');
          Halt;
          {showmessage('Se le dejará ingresar '+ inttostr(6-strtoint(Val.ReadString('Validacion', 'Intentos_Conexion', '0'))) +' veces antes de bloquearlo definitivamente.');
          if Val.ReadString('Validacion', 'Intentos_Conexion', '0') > '5' Then Halt
          else Val.WriteString('Validacion', 'Intentos_Conexion', inttostr(strtoint(Val.ReadString('Validacion', 'Intentos_Conexion', '0'))+1));}
        End
        Else Begin
          Val.WriteString('Validacion', 'CadenaValida', EncriptaXOR(Serial+Mac+inttostr(yearof(now)),'Prateinco'));
        End;
      End;
      ADOQVal.Close;
    End;
    ADOParamGeneral.Connection := ADOPrateinco;
    ADOParamGeneral.Open;
    IF ADOParamGeneral.FieldValues['Version'] <> '01022015' Then
    Begin
      Showmessage('Versión:'+Datamodule1.ADOParamGeneral.FieldValues['Version']+', Existe una nueva versión del programa y es necesario copiarlos en esta maquina.');
      Showmessage('Descargue los programas desde el pantalla inicial en el Menu o desde el Icono de Actualización del Escritorio.');
    End;
    ADOParamGeneral.Close;
    ADOPrateinco.Close;
  End;
  Val.Free;

  if (pos('SOFTSIG.EXE',uppercase(paramstr(0)))<>0) then AboutBox.ProgressBar1.Position:=AboutBox.ProgressBar1.Position+1;
  ADOComunes.Close;
  ADOComunes.DefaultDatabase:=Ini.ReadString( 'Database', 'BDComunes', 'comunes');
  ADOComunes.ConnectionString:='Provider='+chr(39)+conex+chr(39)+';Password=espartaguia;Persist Security Info=True;User ID=prateinco;Initial Catalog='+Ini.ReadString( 'Database', 'BDComunes', 'comunes')+';Data Source='+ Ini.ReadString( 'Database', 'ServerName', 'local');
  try
     ADOComunes.Open;
  except
     showmessage('El usuario Prateinco no esta Creado. Creelo con la clave xxxxxx a la BD Comunes y Roles de Administrador');
     showmessage('Revise tambien que este ingresando a la base de datos correcta en el servidor: '+Ini.ReadString( 'Database', 'ServerName', 'local'));
     showmessage('Y por ultimo verifique que el SQL esta permitiendo autenticación por usuario y no por windows desde las propiedades del mismo');
     Halt;
  end;
  host := Ini.ReadString( 'Database', 'ServerName', 'local');

  if (pos('SOFTSIG.EXE',uppercase(paramstr(0)))<>0) then
  Begin
    AboutBox.ProgressBar1.Position:=AboutBox.ProgressBar1.Position+1
  End
  Else Begin
    Usuario := paramstr(2);
    Password := paramstr(4);

    if Usuario <> '' then
    Begin
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add(' SELECT SEEmpresas.Codigo as Empresa_Trabaja,* ');
      ADOQuery1.SQL.Add(' FROM SEPersonas,SEEmpleados,SEEmpresas,SEAreas,SECargos,SEIdentificaciones');
      ADOQuery1.SQL.Add(' WHERE SEPersonas.Id = SEEmpleados.Id');
      ADOQuery1.SQL.Add('   AND SEEmpresas.Codigo  = '+chr(39)+paramstr(1)+chr(39));
      ADOQuery1.SQL.Add('   AND SEAreas.Empresa = SEEmpresas.Codigo');
      ADOQuery1.SQL.Add('   AND SEEmpleados.Area_Trabaja     = SEAreas.Codigo');
      ADOQuery1.SQL.Add('   AND SECargos.Empresa = SEEmpresas.Codigo');
      ADOQuery1.SQL.Add('   AND SEEmpleados.Area_Trabaja     = SECargos.Area');
      ADOQuery1.SQL.Add('   AND SEEmpleados.Cargo_Trabaja     = SECargos.Codigo');
      ADOQuery1.SQL.Add('   AND SEPersonas.id = SEIdentificaciones.Persona');
      ADOQuery1.SQL.Add('   AND SEPersonas.Id = '+chr(39)+Usuario+chr(39));
      try
        ADOQuery1.Open;
      except
        showmessage('No fue posible conectarme con la Base de Datos Principal.');
        Halt;
      end;
      IF ADOQuery1.RecordCount=0 Then Begin
        showmessage('El código enviado por parametros del usuario no existe.');
        Halt;
      End;

      IF ADOQuery1.FieldValues['Clave'] <> password Then Begin
        showmessage('El password no es valido.');
        Halt;
      End;
    End;
  End;

  //Coneccion con el ADOConnection
  Bd := paramstr(3);
  if Bd <> '' then
  Begin
    ADOConnection1.close;
    ADOConnection1.DefaultDatabase:=Bd;
    ADOConnection1.ConnectionString:='Provider='+chr(39)+conex+chr(39)+';Password=espartaguia;Persist Security Info=True;User ID=prateinco;Data Source='+ Ini.ReadString( 'Database', 'ServerName', 'local');
    try
      ADOConnection1.Open;
    except
      showmessage('La Base de Datos '+Bd+' no se ha podido abrir. Verifique que exista o que el usuario Prateinco este creado con la clave correcta.');
      Halt;
    end;
  End;

  if (pos('SOFTSIG.EXE',uppercase(paramstr(0)))<>0) then AboutBox.ProgressBar1.Position:=AboutBox.ProgressBar1.Position+1;
  ADOParamGeneral.Connection := ADOComunes;
  ADOParamGeneral.Open;
  ADOLogs.Open;

  Ini.Free;
  if (pos('SOFTSIG.EXE',uppercase(paramstr(0)))<>0) then AboutBox.Close;
end;

procedure TDataModule1.DataModuleDestroy(Sender: TObject);
begin
  ADOConnection1.Close;
  ADOComunes.Close;
end;

end.
