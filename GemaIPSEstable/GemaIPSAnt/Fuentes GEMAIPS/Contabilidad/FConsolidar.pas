unit FConsolidar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, ComCtrls;

type
  TFormConsolidar = class(TForm)
    Button1: TButton;
    ADOQuery1: TADOQuery;
    ADOConnection1: TADOConnection;
    ADOConnection2: TADOConnection;
    ADOQuery2: TADOQuery;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsolidar: TFormConsolidar;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TFormConsolidar.Button1Click(Sender: TObject);
begin
  ADOConnection1.Close;
  ADOConnection1.DefaultDatabase:='GEMAIpsConsolidado';
  ADOConnection1.ConnectionString:=Datamodule1.ADOConnection1.ConnectionString;
  ADOConnection1.Open;

  Label1.Caption := 'Borrando la Tabla de Detalle de Comprobantes del Consolidado';
  FormConsolidar.Refresh;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('TRUNCATE Table CONTDetComp');
  ADOQuery1.ExecSQL;

  Label1.Caption := 'Borrando la Tabla de Encabezado de Comprobantes del Consolidado';
  FormConsolidar.Refresh;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('TRUNCATE Table CONTEncComp');
  ADOQuery1.ExecSQL;

  Label1.Caption := 'Borrando Los Terceros';
  FormConsolidar.Refresh;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('TRUNCATE Table CONTTerce');
  ADOQuery1.ExecSQL;

  Label1.Caption := 'Borrando la Tabla de Detalle de Comprobantes del Consolidado';
  FormConsolidar.Refresh;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('TRUNCATE Table INEncFacturacion');
  ADOQuery1.ExecSQL;

  Label1.Caption := 'Borrando la Tabla de Detalle de Comprobantes del Consolidado';
  FormConsolidar.Refresh;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('TRUNCATE Table INDetFacturacion');
  ADOQuery1.ExecSQL;



  //***************
  Label1.Caption := 'Copiando el Encabezado de Comprobantes de Bogotá';
  FormConsolidar.Refresh;
  ADOConnection2.Close;
  ADOConnection2.DefaultDatabase:='GEMAIps';
  ADOConnection2.ConnectionString:=Datamodule1.ADOConnection1.ConnectionString;
  ADOConnection2.Open;

  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT * FROM CONTEncComp');
  ADOQuery1.Open;

  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('SELECT * FROM CONTEncComp');
  ADOQuery2.Open;
  Progressbar1.Position:=0;
  Progressbar1.Max:=ADOQuery2.RecordCount;

  ADOQuery2.First;
  WHILE NOT ADOQuery2.Eof DO
  Begin
    Progressbar1.Position := Progressbar1.Position + 1;
    ADOQuery1.Append;
    ADOQuery1.FieldValues['Tipo_Comprobante']   := ADOQuery2.FieldValues['Tipo_Comprobante'];
    ADOQuery1.FieldValues['Empresa']            := ADOQuery2.FieldValues['Empresa'];
    ADOQuery1.FieldValues['Numero_Comprobante'] := 1000000+ADOQuery2.FieldValues['Numero_Comprobante'];
    ADOQuery1.FieldValues['Fecha_Comprobante']  := ADOQuery2.FieldValues['Fecha_Comprobante'];
    ADOQuery1.FieldValues['Descripcion']        := ADOQuery2.FieldValues['Descripcion'];
    ADOQuery1.FieldValues['Periodo_Proceso']    := ADOQuery2.FieldValues['Periodo_Proceso'];
    ADOQuery1.FieldValues['Campo1']            := ADOQuery2.FieldValues['Campo1'];
    ADOQuery1.FieldValues['Informacion_1']      := ADOQuery2.FieldValues['Informacion_1'];
    ADOQuery1.FieldValues['Campo2']            := ADOQuery2.FieldValues['Campo2'];
    ADOQuery1.FieldValues['Informacion_2']      := ADOQuery2.FieldValues['Informacion_2'];
    ADOQuery1.FieldValues['Campo3']            := ADOQuery2.FieldValues['Campo3'];
    ADOQuery1.FieldValues['Informacion_3']      := ADOQuery2.FieldValues['Informacion_3'];
    ADOQuery1.FieldValues['Persona_Grabo']      := ADOQuery2.FieldValues['Persona_Grabo'];
    ADOQuery1.FieldValues['Estado']             := ADOQuery2.FieldValues['Estado'];
    ADOQuery1.FieldValues['Persona_Anulo']      := ADOQuery2.FieldValues['Persona_Anulo'];
    ADOQuery1.FieldValues['Area']               := ADOQuery2.FieldValues['Area'];
    ADOQuery1.Post;

    ADOQuery2.Next;
  End;

  Label1.Caption := 'Copiando el Detalle de Comprobantes de Bogotá';
  FormConsolidar.Refresh;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT * FROM CONTDetComp');
  ADOQuery1.Open;

  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('SELECT * FROM CONTDetComp');
  ADOQuery2.Open;
  Progressbar1.Position:=0;
  Progressbar1.Max:=ADOQuery2.RecordCount;

  ADOQuery2.First;
  WHILE NOT ADOQuery2.Eof DO
  Begin
    Progressbar1.Position := Progressbar1.Position + 1;
    ADOQuery1.Append;
    ADOQuery1.FieldValues['Tipo_Comprobante']   := ADOQuery2.FieldValues['Tipo_Comprobante'];
    ADOQuery1.FieldValues['Empresa']            := ADOQuery2.FieldValues['Empresa'];
    ADOQuery1.FieldValues['Numero_Comprobante'] := 1000000+ADOQuery2.FieldValues['Numero_Comprobante'];
    ADOQuery1.FieldValues['Cuenta']             := ADOQuery2.FieldValues['Cuenta'];
    ADOQuery1.FieldValues['Tercero']            := ADOQuery2.FieldValues['Tercero'];
    ADOQuery1.FieldValues['Centro_Costo']       := ADOQuery2.FieldValues['Centro_Costo'];
    ADOQuery1.FieldValues['DocSoporte']         := ADOQuery2.FieldValues['DocSoporte'];
    ADOQuery1.FieldValues['Valor_Debito']       := ADOQuery2.FieldValues['Valor_Debito'];
    ADOQuery1.FieldValues['Valor_Credito']      := ADOQuery2.FieldValues['Valor_Credito'];
    ADOQuery1.Post;

    ADOQuery2.Next;
  End;

  Label1.Caption := 'Copiando los Terceros';
  FormConsolidar.Refresh;
  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('SELECT * FROM CONTTerce');
  ADOQuery2.Open;
  Progressbar1.Position:=0;
  Progressbar1.Max:=ADOQuery2.RecordCount;

  ADOQuery2.First;
  WHILE NOT ADOQuery2.Eof DO
  Begin
    Progressbar1.Position := Progressbar1.Position + 1;

    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM CONTTerce WHERE Numero_Documento = '+chr(39)+ADOQuery2.FieldValues['Numero_Documento']+chr(39));
    ADOQuery1.Open;
    IF ADOQuery1.RecordCount = 0 Then
    Begin
      ADOQuery1.Append;
      ADOQuery1.FieldValues['Numero_Documento']   := ADOQuery2.FieldValues['Numero_Documento'];
      ADOQuery1.FieldValues['Tipo_Documento']     := ADOQuery2.FieldValues['Tipo_Documento'];
      ADOQuery1.FieldValues['Primer_Apellido']    := ADOQuery2.FieldValues['Primer_Apellido'];
      ADOQuery1.FieldValues['Direccion']          := ADOQuery2.FieldValues['Direccion'];
      ADOQuery1.FieldValues['Telefono']           := ADOQuery2.FieldValues['Telefono'];
      ADOQuery1.FieldValues['Cod_Departamento']   := ADOQuery2.FieldValues['Cod_Departamento'];
      ADOQuery1.FieldValues['Cod_Municipio']      := ADOQuery2.FieldValues['Cod_Municipio'];
      ADOQuery1.Post;
    end;

    ADOQuery2.Next;
  End;
  //*************************

  //***************
  Label1.Caption := 'Copiando el Encabezado de Comprobantes de Caribe';
  FormConsolidar.Refresh;
  ADOConnection2.Close;
  ADOConnection2.DefaultDatabase:='GEMAIpsCaribe';
  ADOConnection2.ConnectionString:=Datamodule1.ADOConnection1.ConnectionString;
  ADOConnection2.Open;

  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT * FROM CONTEncComp');
  ADOQuery1.Open;

  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('SELECT * FROM CONTEncComp');
  ADOQuery2.Open;
  Progressbar1.Position:=0;
  Progressbar1.Max:=ADOQuery2.RecordCount;

  ADOQuery2.First;
  WHILE NOT ADOQuery2.Eof DO
  Begin
    Progressbar1.Position := Progressbar1.Position + 1;
    ADOQuery1.Append;
    ADOQuery1.FieldValues['Tipo_Comprobante']   := ADOQuery2.FieldValues['Tipo_Comprobante'];
    ADOQuery1.FieldValues['Empresa']            := ADOQuery2.FieldValues['Empresa'];
    ADOQuery1.FieldValues['Numero_Comprobante'] := 2000000+ADOQuery2.FieldValues['Numero_Comprobante'];
    ADOQuery1.FieldValues['Fecha_Comprobante']  := ADOQuery2.FieldValues['Fecha_Comprobante'];
    ADOQuery1.FieldValues['Descripcion']        := ADOQuery2.FieldValues['Descripcion'];
    ADOQuery1.FieldValues['Periodo_Proceso']    := ADOQuery2.FieldValues['Periodo_Proceso'];
    ADOQuery1.FieldValues['Campo1']            := ADOQuery2.FieldValues['Campo1'];
    ADOQuery1.FieldValues['Informacion_1']      := ADOQuery2.FieldValues['Informacion_1'];
    ADOQuery1.FieldValues['Campo2']            := ADOQuery2.FieldValues['Campo2'];
    ADOQuery1.FieldValues['Informacion_2']      := ADOQuery2.FieldValues['Informacion_2'];
    ADOQuery1.FieldValues['Campo3']            := ADOQuery2.FieldValues['Campo3'];
    ADOQuery1.FieldValues['Informacion_3']      := ADOQuery2.FieldValues['Informacion_3'];
    ADOQuery1.FieldValues['Persona_Grabo']      := ADOQuery2.FieldValues['Persona_Grabo'];
    ADOQuery1.FieldValues['Estado']             := ADOQuery2.FieldValues['Estado'];
    ADOQuery1.FieldValues['Persona_Anulo']      := ADOQuery2.FieldValues['Persona_Anulo'];
    ADOQuery1.FieldValues['Area']               := ADOQuery2.FieldValues['Area'];
    ADOQuery1.Post;

    ADOQuery2.Next;
  End;

  Label1.Caption := 'Copiando el Detalle de Comprobantes de Caribe';
  FormConsolidar.Refresh;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT * FROM CONTDetComp');
  ADOQuery1.Open;

  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('SELECT * FROM CONTDetComp');
  ADOQuery2.Open;
  Progressbar1.Position:=0;
  Progressbar1.Max:=ADOQuery2.RecordCount;

  ADOQuery2.First;
  WHILE NOT ADOQuery2.Eof DO
  Begin
    Progressbar1.Position := Progressbar1.Position + 1;
    ADOQuery1.Append;
    ADOQuery1.FieldValues['Tipo_Comprobante']   := ADOQuery2.FieldValues['Tipo_Comprobante'];
    ADOQuery1.FieldValues['Empresa']            := ADOQuery2.FieldValues['Empresa'];
    ADOQuery1.FieldValues['Numero_Comprobante'] := 2000000+ADOQuery2.FieldValues['Numero_Comprobante'];
    ADOQuery1.FieldValues['Cuenta']             := ADOQuery2.FieldValues['Cuenta'];
    ADOQuery1.FieldValues['Tercero']            := ADOQuery2.FieldValues['Tercero'];
    ADOQuery1.FieldValues['Centro_Costo']       := ADOQuery2.FieldValues['Centro_Costo'];
    ADOQuery1.FieldValues['DocSoporte']         := ADOQuery2.FieldValues['DocSoporte'];
    ADOQuery1.FieldValues['Valor_Debito']       := ADOQuery2.FieldValues['Valor_Debito'];
    ADOQuery1.FieldValues['Valor_Credito']      := ADOQuery2.FieldValues['Valor_Credito'];
    ADOQuery1.Post;

    ADOQuery2.Next;
  End;

  Label1.Caption := 'Copiando los Terceros';
  FormConsolidar.Refresh;
  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('SELECT * FROM CONTTerce');
  ADOQuery2.Open;
  Progressbar1.Position:=0;
  Progressbar1.Max:=ADOQuery2.RecordCount;

  ADOQuery2.First;
  WHILE NOT ADOQuery2.Eof DO
  Begin
    Progressbar1.Position := Progressbar1.Position + 1;

    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM CONTTerce WHERE Numero_Documento = '+chr(39)+ADOQuery2.FieldValues['Numero_Documento']+chr(39));
    ADOQuery1.Open;
    IF ADOQuery1.RecordCount = 0 Then
    Begin
      ADOQuery1.Append;
      ADOQuery1.FieldValues['Numero_Documento']   := ADOQuery2.FieldValues['Numero_Documento'];
      ADOQuery1.FieldValues['Tipo_Documento']     := ADOQuery2.FieldValues['Tipo_Documento'];
      ADOQuery1.FieldValues['Nombre']             := ADOQuery2.FieldValues['Nombre'];
      ADOQuery1.FieldValues['Direccion']          := ADOQuery2.FieldValues['Direccion'];
      ADOQuery1.FieldValues['Telefono']           := ADOQuery2.FieldValues['Telefono'];
      ADOQuery1.FieldValues['Cod_Departamento']   := ADOQuery2.FieldValues['Cod_Departamento'];
      ADOQuery1.FieldValues['Cod_Municipio']      := ADOQuery2.FieldValues['Cod_Municipio'];
      ADOQuery1.Post;
    end;

    ADOQuery2.Next;
  End;

  //*************************
  //***************
  Label1.Caption := 'Copiando el Encabezado de Comprobantes de Cartagena';
  FormConsolidar.Refresh;
  ADOConnection2.Close;
  ADOConnection2.DefaultDatabase:='GEMAIpsCartagena';
  ADOConnection2.ConnectionString:=Datamodule1.ADOConnection1.ConnectionString;
  ADOConnection2.Open;

  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT * FROM CONTEncComp');
  ADOQuery1.Open;

  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('SELECT * FROM CONTEncComp');
  ADOQuery2.Open;
  Progressbar1.Position:=0;
  Progressbar1.Max:=ADOQuery2.RecordCount;

  ADOQuery2.First;
  WHILE NOT ADOQuery2.Eof DO
  Begin
    Progressbar1.Position := Progressbar1.Position + 1;
    ADOQuery1.Append;
    ADOQuery1.FieldValues['Tipo_Comprobante']   := ADOQuery2.FieldValues['Tipo_Comprobante'];
    ADOQuery1.FieldValues['Empresa']            := ADOQuery2.FieldValues['Empresa'];
    ADOQuery1.FieldValues['Numero_Comprobante'] := 3000000+ADOQuery2.FieldValues['Numero_Comprobante'];
    ADOQuery1.FieldValues['Fecha_Comprobante']  := ADOQuery2.FieldValues['Fecha_Comprobante'];
    ADOQuery1.FieldValues['Descripcion']        := ADOQuery2.FieldValues['Descripcion'];
    ADOQuery1.FieldValues['Periodo_Proceso']    := ADOQuery2.FieldValues['Periodo_Proceso'];
    ADOQuery1.FieldValues['Campo1']            := ADOQuery2.FieldValues['Campo1'];
    ADOQuery1.FieldValues['Informacion_1']      := ADOQuery2.FieldValues['Informacion_1'];
    ADOQuery1.FieldValues['Campo2']            := ADOQuery2.FieldValues['Campo2'];
    ADOQuery1.FieldValues['Informacion_2']      := ADOQuery2.FieldValues['Informacion_2'];
    ADOQuery1.FieldValues['Campo3']            := ADOQuery2.FieldValues['Campo3'];
    ADOQuery1.FieldValues['Informacion_3']      := ADOQuery2.FieldValues['Informacion_3'];
    ADOQuery1.FieldValues['Persona_Grabo']      := ADOQuery2.FieldValues['Persona_Grabo'];
    ADOQuery1.FieldValues['Estado']             := ADOQuery2.FieldValues['Estado'];
    ADOQuery1.FieldValues['Persona_Anulo']      := ADOQuery2.FieldValues['Persona_Anulo'];
    ADOQuery1.FieldValues['Area']               := ADOQuery2.FieldValues['Area'];
    ADOQuery1.Post;

    ADOQuery2.Next;
  End;

  Label1.Caption := 'Copiando el Detalle de Comprobantes de Cartagena';
  FormConsolidar.Refresh;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT * FROM CONTDetComp');
  ADOQuery1.Open;

  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('SELECT * FROM CONTDetComp');
  ADOQuery2.Open;
  Progressbar1.Position:=0;
  Progressbar1.Max:=ADOQuery2.RecordCount;

  ADOQuery2.First;
  WHILE NOT ADOQuery2.Eof DO
  Begin
    Progressbar1.Position := Progressbar1.Position + 1;
    ADOQuery1.Append;
    ADOQuery1.FieldValues['Tipo_Comprobante']   := ADOQuery2.FieldValues['Tipo_Comprobante'];
    ADOQuery1.FieldValues['Empresa']            := ADOQuery2.FieldValues['Empresa'];
    ADOQuery1.FieldValues['Numero_Comprobante'] := 3000000+ADOQuery2.FieldValues['Numero_Comprobante'];
    ADOQuery1.FieldValues['Cuenta']             := ADOQuery2.FieldValues['Cuenta'];
    ADOQuery1.FieldValues['Tercero']            := ADOQuery2.FieldValues['Tercero'];
    ADOQuery1.FieldValues['Centro_Costo']       := ADOQuery2.FieldValues['Centro_Costo'];
    ADOQuery1.FieldValues['DocSoporte']         := ADOQuery2.FieldValues['DocSoporte'];
    ADOQuery1.FieldValues['Valor_Debito']       := ADOQuery2.FieldValues['Valor_Debito'];
    ADOQuery1.FieldValues['Valor_Credito']      := ADOQuery2.FieldValues['Valor_Credito'];
    ADOQuery1.Post;

    ADOQuery2.Next;
  End;

    Label1.Caption := 'Copiando los Terceros';
  FormConsolidar.Refresh;
  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('SELECT * FROM CONTTerce');
  ADOQuery2.Open;
  Progressbar1.Position:=0;
  Progressbar1.Max:=ADOQuery2.RecordCount;

  ADOQuery2.First;
  WHILE NOT ADOQuery2.Eof DO
  Begin
    Progressbar1.Position := Progressbar1.Position + 1;

    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM CONTTerce WHERE Numero_Documento = '+chr(39)+ADOQuery2.FieldValues['Numero_Documento']+chr(39));
    ADOQuery1.Open;
    IF ADOQuery1.RecordCount = 0 Then
    Begin
      ADOQuery1.Append;
      ADOQuery1.FieldValues['Numero_Documento']   := ADOQuery2.FieldValues['Numero_Documento'];
      ADOQuery1.FieldValues['Tipo_Documento']     := ADOQuery2.FieldValues['Tipo_Documento'];
      ADOQuery1.FieldValues['Nombre']             := ADOQuery2.FieldValues['Nombre'];
      ADOQuery1.FieldValues['Direccion']          := ADOQuery2.FieldValues['Direccion'];
      ADOQuery1.FieldValues['Telefono']           := ADOQuery2.FieldValues['Telefono'];
      ADOQuery1.FieldValues['Cod_Departamento']   := ADOQuery2.FieldValues['Cod_Departamento'];
      ADOQuery1.FieldValues['Cod_Municipio']      := ADOQuery2.FieldValues['Cod_Municipio'];
      ADOQuery1.Post;
    end;

    ADOQuery2.Next;
  End;

  //*************************
  //***************
  Label1.Caption := 'Copiando el Encabezado de Comprobantes de Cali';
  FormConsolidar.Refresh;
  ADOConnection2.Close;
  ADOConnection2.DefaultDatabase:='GEMAIpsCali';
  ADOConnection2.ConnectionString:=Datamodule1.ADOConnection1.ConnectionString;
  ADOConnection2.Open;

  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT * FROM CONTEncComp');
  ADOQuery1.Open;

  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('SELECT * FROM CONTEncComp');
  ADOQuery2.Open;
  Progressbar1.Position:=0;
  Progressbar1.Max:=ADOQuery2.RecordCount;

  ADOQuery2.First;
  WHILE NOT ADOQuery2.Eof DO
  Begin
    Progressbar1.Position := Progressbar1.Position + 1;
    ADOQuery1.Append;
    ADOQuery1.FieldValues['Tipo_Comprobante']   := ADOQuery2.FieldValues['Tipo_Comprobante'];
    ADOQuery1.FieldValues['Empresa']            := ADOQuery2.FieldValues['Empresa'];
    ADOQuery1.FieldValues['Numero_Comprobante'] := 4000000+ADOQuery2.FieldValues['Numero_Comprobante'];
    ADOQuery1.FieldValues['Fecha_Comprobante']  := ADOQuery2.FieldValues['Fecha_Comprobante'];
    ADOQuery1.FieldValues['Descripcion']        := ADOQuery2.FieldValues['Descripcion'];
    ADOQuery1.FieldValues['Periodo_Proceso']    := ADOQuery2.FieldValues['Periodo_Proceso'];
    ADOQuery1.FieldValues['Campo1']            := ADOQuery2.FieldValues['Campo1'];
    ADOQuery1.FieldValues['Informacion_1']      := ADOQuery2.FieldValues['Informacion_1'];
    ADOQuery1.FieldValues['Campo2']            := ADOQuery2.FieldValues['Campo2'];
    ADOQuery1.FieldValues['Informacion_2']      := ADOQuery2.FieldValues['Informacion_2'];
    ADOQuery1.FieldValues['Campo3']            := ADOQuery2.FieldValues['Campo3'];
    ADOQuery1.FieldValues['Informacion_3']      := ADOQuery2.FieldValues['Informacion_3'];
    ADOQuery1.FieldValues['Persona_Grabo']      := ADOQuery2.FieldValues['Persona_Grabo'];
    ADOQuery1.FieldValues['Estado']             := ADOQuery2.FieldValues['Estado'];
    ADOQuery1.FieldValues['Persona_Anulo']      := ADOQuery2.FieldValues['Persona_Anulo'];
    ADOQuery1.FieldValues['Area']               := ADOQuery2.FieldValues['Area'];
    ADOQuery1.Post;

    ADOQuery2.Next;
  End;

  Label1.Caption := 'Copiando el Detalle de Comprobantes de Cali';
  FormConsolidar.Refresh;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT * FROM CONTDetComp');
  ADOQuery1.Open;

  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('SELECT * FROM CONTDetComp');
  ADOQuery2.Open;
  Progressbar1.Position:=0;
  Progressbar1.Max:=ADOQuery2.RecordCount;

  ADOQuery2.First;
  WHILE NOT ADOQuery2.Eof DO
  Begin
    Progressbar1.Position := Progressbar1.Position + 1;
    ADOQuery1.Append;
    ADOQuery1.FieldValues['Tipo_Comprobante']   := ADOQuery2.FieldValues['Tipo_Comprobante'];
    ADOQuery1.FieldValues['Empresa']            := ADOQuery2.FieldValues['Empresa'];
    ADOQuery1.FieldValues['Numero_Comprobante'] := 4000000+ADOQuery2.FieldValues['Numero_Comprobante'];
    ADOQuery1.FieldValues['Cuenta']             := ADOQuery2.FieldValues['Cuenta'];
    ADOQuery1.FieldValues['Tercero']            := ADOQuery2.FieldValues['Tercero'];
    ADOQuery1.FieldValues['Centro_Costo']       := ADOQuery2.FieldValues['Centro_Costo'];
    ADOQuery1.FieldValues['DocSoporte']         := ADOQuery2.FieldValues['DocSoporte'];
    ADOQuery1.FieldValues['Valor_Debito']       := ADOQuery2.FieldValues['Valor_Debito'];
    ADOQuery1.FieldValues['Valor_Credito']      := ADOQuery2.FieldValues['Valor_Credito'];
    ADOQuery1.Post;

    ADOQuery2.Next;
  End;

    Label1.Caption := 'Copiando los Terceros';
  FormConsolidar.Refresh;
  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('SELECT * FROM CONTTerce');
  ADOQuery2.Open;
  Progressbar1.Position:=0;
  Progressbar1.Max:=ADOQuery2.RecordCount;

  ADOQuery2.First;
  WHILE NOT ADOQuery2.Eof DO
  Begin
    Progressbar1.Position := Progressbar1.Position + 1;

    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM CONTTerce WHERE Numero_Documento = '+chr(39)+ADOQuery2.FieldValues['Numero_Documento']+chr(39));
    ADOQuery1.Open;
    IF ADOQuery1.RecordCount = 0 Then
    Begin
      ADOQuery1.Append;
      ADOQuery1.FieldValues['Numero_Documento']   := ADOQuery2.FieldValues['Numero_Documento'];
      ADOQuery1.FieldValues['Tipo_Documento']     := ADOQuery2.FieldValues['Tipo_Documento'];
      ADOQuery1.FieldValues['Nombre']             := ADOQuery2.FieldValues['Nombre'];
      ADOQuery1.FieldValues['Direccion']          := ADOQuery2.FieldValues['Direccion'];
      ADOQuery1.FieldValues['Telefono']           := ADOQuery2.FieldValues['Telefono'];
      ADOQuery1.FieldValues['Cod_Departamento']   := ADOQuery2.FieldValues['Cod_Departamento'];
      ADOQuery1.FieldValues['Cod_Municipio']      := ADOQuery2.FieldValues['Cod_Municipio'];
      ADOQuery1.Post;
    end;

    ADOQuery2.Next;
  End;

  //*************************
  //***************
  Label1.Caption := 'Copiando el Encabezado de Comprobantes de Medellin';
  FormConsolidar.Refresh;
  ADOConnection2.Close;
  ADOConnection2.DefaultDatabase:='GEMAIpsMedellin';
  ADOConnection2.ConnectionString:=Datamodule1.ADOConnection1.ConnectionString;
  ADOConnection2.Open;

  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT * FROM CONTEncComp');
  ADOQuery1.Open;

  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('SELECT * FROM CONTEncComp');
  ADOQuery2.Open;
  Progressbar1.Position:=0;
  Progressbar1.Max:=ADOQuery2.RecordCount;

  ADOQuery2.First;
  WHILE NOT ADOQuery2.Eof DO
  Begin
    Progressbar1.Position := Progressbar1.Position + 1;
    ADOQuery1.Append;
    ADOQuery1.FieldValues['Tipo_Comprobante']   := ADOQuery2.FieldValues['Tipo_Comprobante'];
    ADOQuery1.FieldValues['Empresa']            := ADOQuery2.FieldValues['Empresa'];
    ADOQuery1.FieldValues['Numero_Comprobante'] := 5000000+ADOQuery2.FieldValues['Numero_Comprobante'];
    ADOQuery1.FieldValues['Fecha_Comprobante']  := ADOQuery2.FieldValues['Fecha_Comprobante'];
    ADOQuery1.FieldValues['Descripcion']        := ADOQuery2.FieldValues['Descripcion'];
    ADOQuery1.FieldValues['Periodo_Proceso']    := ADOQuery2.FieldValues['Periodo_Proceso'];
    ADOQuery1.FieldValues['Campo1']            := ADOQuery2.FieldValues['Campo1'];
    ADOQuery1.FieldValues['Informacion_1']      := ADOQuery2.FieldValues['Informacion_1'];
    ADOQuery1.FieldValues['Campo2']            := ADOQuery2.FieldValues['Campo2'];
    ADOQuery1.FieldValues['Informacion_2']      := ADOQuery2.FieldValues['Informacion_2'];
    ADOQuery1.FieldValues['Campo3']            := ADOQuery2.FieldValues['Campo3'];
    ADOQuery1.FieldValues['Informacion_3']      := ADOQuery2.FieldValues['Informacion_3'];
    ADOQuery1.FieldValues['Persona_Grabo']      := ADOQuery2.FieldValues['Persona_Grabo'];
    ADOQuery1.FieldValues['Estado']             := ADOQuery2.FieldValues['Estado'];
    ADOQuery1.FieldValues['Persona_Anulo']      := ADOQuery2.FieldValues['Persona_Anulo'];
    ADOQuery1.FieldValues['Area']               := ADOQuery2.FieldValues['Area'];
    ADOQuery1.Post;

    ADOQuery2.Next;
  End;

  Label1.Caption := 'Copiando el Detalle de Comprobantes de Medellin';
  FormConsolidar.Refresh;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT * FROM CONTDetComp');
  ADOQuery1.Open;

  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('SELECT * FROM CONTDetComp');
  ADOQuery2.Open;
  Progressbar1.Position:=0;
  Progressbar1.Max:=ADOQuery2.RecordCount;

  ADOQuery2.First;
  WHILE NOT ADOQuery2.Eof DO
  Begin
    Progressbar1.Position := Progressbar1.Position + 1;
    ADOQuery1.Append;
    ADOQuery1.FieldValues['Tipo_Comprobante']   := ADOQuery2.FieldValues['Tipo_Comprobante'];
    ADOQuery1.FieldValues['Empresa']            := ADOQuery2.FieldValues['Empresa'];
    ADOQuery1.FieldValues['Numero_Comprobante'] := 5000000+ADOQuery2.FieldValues['Numero_Comprobante'];
    ADOQuery1.FieldValues['Cuenta']             := ADOQuery2.FieldValues['Cuenta'];
    ADOQuery1.FieldValues['Tercero']            := ADOQuery2.FieldValues['Tercero'];
    ADOQuery1.FieldValues['Centro_Costo']       := ADOQuery2.FieldValues['Centro_Costo'];
    ADOQuery1.FieldValues['DocSoporte']         := ADOQuery2.FieldValues['DocSoporte'];
    ADOQuery1.FieldValues['Valor_Debito']       := ADOQuery2.FieldValues['Valor_Debito'];
    ADOQuery1.FieldValues['Valor_Credito']      := ADOQuery2.FieldValues['Valor_Credito'];
    ADOQuery1.Post;

    ADOQuery2.Next;
  End;

    Label1.Caption := 'Copiando los Terceros';
  FormConsolidar.Refresh;
  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('SELECT * FROM CONTTerce');
  ADOQuery2.Open;
  Progressbar1.Position:=0;
  Progressbar1.Max:=ADOQuery2.RecordCount;

  ADOQuery2.First;
  WHILE NOT ADOQuery2.Eof DO
  Begin
    Progressbar1.Position := Progressbar1.Position + 1;

    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM CONTTerce WHERE Numero_Documento = '+chr(39)+ADOQuery2.FieldValues['Numero_Documento']+chr(39));
    ADOQuery1.Open;
    IF ADOQuery1.RecordCount = 0 Then
    Begin
      ADOQuery1.Append;
      ADOQuery1.FieldValues['Numero_Documento']   := ADOQuery2.FieldValues['Numero_Documento'];
      ADOQuery1.FieldValues['Tipo_Documento']     := ADOQuery2.FieldValues['Tipo_Documento'];
      ADOQuery1.FieldValues['Nombre']             := ADOQuery2.FieldValues['Nombre'];
      ADOQuery1.FieldValues['Direccion']          := ADOQuery2.FieldValues['Direccion'];
      ADOQuery1.FieldValues['Telefono']           := ADOQuery2.FieldValues['Telefono'];
      ADOQuery1.FieldValues['Cod_Departamento']   := ADOQuery2.FieldValues['Cod_Departamento'];
      ADOQuery1.FieldValues['Cod_Municipio']      := ADOQuery2.FieldValues['Cod_Municipio'];
      ADOQuery1.Post;
    end;

    ADOQuery2.Next;
  End;

  //*************************

  Label1.Caption := 'Abriendo Periodos';
  FormConsolidar.Refresh;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT * FROM CONTCierres');
  ADOQuery1.Open;
  ADOQuery1.First;
  WHILE NOT ADOQuery1.Eof DO
  Begin
    if ADOQuery1.FieldValues['Estado'] = 'C' Then
    Begin
      ADOQuery1.Edit;
      ADOQuery1.FieldValues['Estado'] := 'A';
      ADOQuery1.Post;
    End;

    ADOQuery1.Next;
  End;

  Close;
end;

procedure TFormConsolidar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
