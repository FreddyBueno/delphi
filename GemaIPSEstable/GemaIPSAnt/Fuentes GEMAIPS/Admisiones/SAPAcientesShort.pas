unit SAPAcientesShort;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ImgList, ToolWin, ExtCtrls, StdCtrls, DBCtrls, Buttons,
  jpeg, Menus, DB, ADODB, ScktComp,Libreria_Prateinco,dateutils;

type
    TFrmIngresoPacientesShort = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    DBLookupComboBox4: TDBLookupComboBox;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    DateTimePicker1: TDateTimePicker;
    DBLookupComboBox5: TDBLookupComboBox;
    Label7: TLabel;
    Label8: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    Label10: TLabel;
    Label11: TLabel;
    Edit7: TEdit;
    Label13: TLabel;
    Label15: TLabel;
    Edit8: TEdit;
    OpenDialog1: TOpenDialog;
    Panel3: TPanel;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    BitBtn4: TBitBtn;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    ClientSocket1: TClientSocket;
    ADOQuery4: TADOQuery;
    GroupBox5: TGroupBox;
    Memo1: TMemo;
    DBImage1: TDBImage;
    Image1: TImage;
    Label37: TLabel;
    Edit23: TEdit;
    ADOQTemp: TADOQuery;
    procedure Edit1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    PROCEDURE APPMESSAGE(VAR MSG: TMSG; VAR HANDLED: BOOLEAN);
    procedure BitBtn2Click(Sender: TObject);
    function validardatos : Boolean;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBox6Exit(Sender: TObject);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure Edit13KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit20KeyPress(Sender: TObject; var Key: Char);
    procedure Edit16KeyPress(Sender: TObject; var Key: Char);
    procedure Edit25KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBLookupComboBox12Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure DBImage1DblClick(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmIngresoPacientesShort: TFrmIngresoPacientesShort;
  pacanterior:string;
  
implementation

uses ModuloAdmision, UDataModule1, FActivarInactivar,
  Libreria_PrateincoForm;

{$R *.dfm}

procedure TFrmIngresoPacientesShort.Edit1Exit(Sender: TObject);
begin
 if DBLookupComboBox4.text = '' then
 begin
   MessageDlg('Selccione  el  tipo documento', mtInformation, [mbOk], 0);
   DBLookupComboBox4.SetFocus;
   exit;
 end;

 if trim(Edit1.text) = '' then
 begin
   MessageDlg('Digite el numero de  documento', mtInformation, [mbOk], 0);
   Edit1.SetFocus;
   exit;
 end;

 DatamoduloAdmision.qryPacientes.Close;
 DatamoduloAdmision.qryPacientes.Parameters[0].Value := DBLookupComboBox4.KeyValue;
 DatamoduloAdmision.qryPacientes.Parameters[1].Value := trim(Edit1.Text);
 DatamoduloAdmision.qryPacientes.Open;
 if DatamoduloAdmision.qryPacientes.RecordCount = 1 then
 begin
   Edit2.Text := DatamoduloAdmision.QryPacientesPRIMER_APELLIDO.Value;
   Edit3.Text := DatamoduloAdmision.QryPacientesSEGUNDO_APELLIDO.Value;
   Edit4.Text := DatamoduloAdmision.QryPacientesPRIMER_NOMBRE.Value;
   Edit5.Text := DatamoduloAdmision.QryPacientesSEGUNDO_NOMBRE.Value;
   if yearof(DatamoduloAdmision.QryPacientesFEC_NACIMINETO.Value) > 1900 then
     DateTimePicker1.Date := DatamoduloAdmision.QryPacientesFEC_NACIMINETO.Value;
   DBLookupComboBox5.KeyValue := DatamoduloAdmision.QryPacientesSEXO.Value;
   DBLookupComboBox6.KeyValue := DatamoduloAdmision.QryPacientesCOD_DEPARTAMENTO.Value;
   DatamoduloAdmision.qryCiudad.Close;
   DatamoduloAdmision.qryCiudad.Open;
   DBLookupComboBox7.KeyValue := DatamoduloAdmision.QryPacientesCOD_MUNICIPIO.Value;
   DBLookupComboBox5.KeyValue := DatamoduloAdmision.QryPacientesSEXO.Value;
   Edit7.Text := DatamoduloAdmision.QryPacientesDIR_CASA_PACIEN.Value;
   Edit8.Text := DatamoduloAdmision.QryPacientesTEL_CASA_PACIEN.Value;
   IF DatamoduloAdmision.QryPacientes.FieldValues['Lugar_Nacimient'] <> null Then
     Edit23.Text := DatamoduloAdmision.QryPacientes.FieldValues['Lugar_Nacimient'];
   DBLookupComboBox6.KeyValue := DatamoduloAdmision.QryPacientesCOD_DEPARTAMENTO.Value;
   DatamoduloAdmision.qryCiudad.Close;
   DatamoduloAdmision.qryCiudad.Open;
   DBLookupComboBox7.KeyValue := DatamoduloAdmision.QryPacientesCOD_MUNICIPIO.Value;
 end
 else begin
   Image1.Picture.Metafile;
   DateTimePicker1.Date := date-(360*18);
 end;
end;

procedure TFrmIngresoPacientesShort.FormCreate(Sender: TObject);
begin
  APPLICATION.ONMESSAGE := APPMESSAGE;
  Image1.Picture.Metafile;

  //********************************************************
  // CONECTA EL SOCKET SI SE PUEDE
  //********************************************************
  //if clientsocket1.Socket.Connected then
  //else begin
  //  clientSocket1.Port:=15000;
  //  clientSocket1.Host:= 'prateinco.dyndns.org';
  //  clientsocket1.Open;
  //end;

  DatamoduloAdmision.QryCiudad.Open;
  DatamoduloAdmision.ADOQueryConvenios.Open;
  DatamoduloAdmision.QryParentesco.Open;
  DatamoduloAdmision.QryRegimen.Open;
  DatamoduloAdmision.QrySexo.Open;

  DatamoduloAdmision.qryGE_Departamentos.Open;
  DatamoduloAdmision.QryTipodocumento.Open;
  DatamoduloAdmision.QrytipoAdmision.Open;
  DatamoduloAdmision.QryNacionalidad.Open;
  DatamoduloAdmision.QryEgresos.Open;
  DatamoduloAdmision.Qrytipoconsulta.Open;
  DatamoduloAdmision.QryTipoCama.Open;
  DatamoduloAdmision.QrySecciones.Open;
  DatamoduloAdmision.QryAseguradora.Open;
  DatamoduloAdmision.QryTipoAfiliado.Open;
  DatamoduloAdmision.qryEstadosCiviles.Open;
  DatamoduloAdmision.QryGrupoEtnico.Open;
  DatamoduloAdmision.QryZona.Open;
  DatamoduloAdmision.qryOcupacion.Open;
  DatamoduloAdmision.QryProductos.Open;
  DatamoduloAdmision.QryDignosticos.Open;
  DatamoduloAdmision.QryPersonal.Open;
  DatamoduloAdmision.qryMedicos.Open;
  DatamoduloAdmision.qryTipoDoc2.Open;
end;

procedure TFrmIngresoPacientesShort.APPMESSAGE(var MSG: TMSG;
  var HANDLED: BOOLEAN);
begin
IF MSG.WPARAM = VK_RETURN THEN
       BEGIN
        IF ((SCREEN.ACTIVECONTROL) IS TCOMBOBOX) THEN
             MSG.WPARAM := VK_TAB;
            IF (((SCREEN.ACTIVECONTROL) IS TEDIT)) THEN
                MSG.WPARAM := VK_TAB;
                IF ((SCREEN.ACTIVECONTROL) IS TDBEDIT) THEN
                MSG.WPARAM := VK_TAB;
                IF ((SCREEN.ACTIVECONTROL) IS TDATETIMEPICKER) THEN
                MSG.WPARAM := VK_TAB;
//                IF ((SCREEN.ACTIVECONTROL) IS TMASKEDIT) THEN
//                MSG.WPARAM := VK_TAB;
                IF ((SCREEN.ACTIVECONTROL) IS TDBLOOKUPCOMBOBOX) THEN
                MSG.WPARAM := VK_TAB;
       END;
end;

procedure TFrmIngresoPacientesShort.BitBtn2Click(Sender: TObject);
begin
DBLookupComboBox4.KeyValue := '';
DBLookupComboBox5.KeyValue := '';
DBLookupComboBox6.KeyValue := '';
DBLookupComboBox7.KeyValue := '';
Edit1.Text := '';
Edit2.Text := '';
Edit3.Text := '';
Edit4.Text := '';
Edit5.Text := '';
Edit7.Text := '';
Edit8.Text := '';
//Image1.Picture.Metafile;
DBLookupComboBox4.SetFocus;
DateTimePicker1.Date := date-(360*18);
end;

function TFrmIngresoPacientesShort.validardatos: Boolean;
begin
validardatos := false;


if DBLookupComboBox4.text = '' then
 begin
   MessageDlg('Seleccione  el  tipo documento', mtInformation, [mbOk], 0);
   DBLookupComboBox4.SetFocus;
   exit;
 end;

 if trim(Edit1.text) = '' then
 begin
 MessageDlg('Digite el numero de  documento', mtInformation, [mbOk], 0);
 Edit1.SetFocus;
 exit;
 end;

 if trim(Edit2.text) = '' then
 begin
 MessageDlg('Digite el Primer Apellido', mtInformation, [mbOk], 0);
 Edit2.SetFocus;
 exit;
 end;

 if trim(Edit4.text) = '' then
 begin
 MessageDlg('Digite el Primer Nombre', mtInformation, [mbOk], 0);
 Edit4.SetFocus;
 exit;
 end;


 if DateTimePicker1.Date > date() then
 begin
   MessageDlg('Digite  la fecha de Nacimineto', mtInformation, [mbOk], 0);
   DateTimePicker1.Date := date();
   DateTimePicker1.SetFocus;
   exit;
 end;

 if DBLookupComboBox4.text = 'CC' then
 begin
  if DateTimePicker1.Date >= (date()-(360*18)) then
 begin
   MessageDlg('El paciente no puede  tener  menos de 18  años con cedula', mtInformation, [mbOk], 0);
   DateTimePicker1.Date := (date()-(360*18));
   DateTimePicker1.SetFocus;
   exit;
 end;
 end;

 if DBLookupComboBox4.text = 'RC' then
 begin
  if DateTimePicker1.Date < (date()-(360*18)) then
 begin
   MessageDlg('El paciente no puede  tener  menos de 18  años con cedula', mtInformation, [mbOk], 0);
   DateTimePicker1.Date := date();
   DateTimePicker1.SetFocus;
   exit;
 end;
 end;

 if DBLookupComboBox5.text = '' then
 begin
   MessageDlg('Seleccione  el Tipo de Sexo', mtInformation, [mbOk], 0);
   DBLookupComboBox5.SetFocus;
   exit;
 end;

   if DBLookupComboBox6.text = '' then
   begin
   MessageDlg('Seleccione El departamento  Residencia del paciente', mtInformation, [mbOk], 0);
   DBLookupComboBox6.SetFocus;
   exit;
   end;

   if DBLookupComboBox7.text = '' then
   begin
   MessageDlg('Seleccione El Municipio  Residencia del paciente', mtInformation, [mbOk], 0);
   DBLookupComboBox7.SetFocus;
   exit;
   end;


 if trim(Edit7.text) = '' then
 begin
 MessageDlg('Digite La direccion del paciente', mtInformation, [mbOk], 0);
 Edit7.SetFocus;
 exit;
 end;


 if trim(Edit8.text) = '' then
 begin
 MessageDlg('Digite el  numero  telefonico ', mtInformation, [mbOk], 0);
 Edit8.SetFocus;
 exit;
 end;

validardatos := true;
end;

procedure TFrmIngresoPacientesShort.BitBtn1Click(Sender: TObject);
begin
 if validardatos = TRUE then
 begin
 try
   Datamodule1.ADOConnection1.BeginTrans;
   DatamoduloAdmision.qryPacientes.Close;
   DatamoduloAdmision.qryPacientes.Parameters[0].Value := DBLookupComboBox4.KeyValue;
   DatamoduloAdmision.qryPacientes.Parameters[1].Value := trim(Edit1.Text);
   DatamoduloAdmision.qryPacientes.Open;
   if DatamoduloAdmision.qryPacientes.RecordCount = 0  then
   begin
     DatamoduloAdmision.qryPacientes.Insert;
     DatamoduloAdmision.QryPacientesTP_IDENT_USUAR.Value := DBLookupComboBox4.KeyValue;
     DatamoduloAdmision.QryPacientesNR_IDENT_USUAR.Value := TRIM(Edit1.Text);
     DatamoduloAdmision.QryPacientesCCHISTORIA.Value := DBLookupComboBox4.KeyValue+TRIM(Edit1.Text);
     DatamoduloAdmision.QryPacientesCOD_USUARIO.Value := Datamodule1.ADOQuery1.FieldValues['Id'];
     DatamoduloAdmision.QryPacientesFEC_INGRESO.Value := now;
   end
   else
   begin
     DatamoduloAdmision.qryPacientes.Edit;
   end;
   DatamoduloAdmision.QryPacientesPRIMER_APELLIDO.Value := TRIM(Edit2.Text);
   DatamoduloAdmision.QryPacientesSEGUNDO_APELLIDO.Value := ' ';
   if TRIM(Edit3.Text) <>'' then
     DatamoduloAdmision.QryPacientesSEGUNDO_APELLIDO.Value := TRIM(Edit3.Text);
   DatamoduloAdmision.QryPacientesPRIMER_NOMBRE.Value := TRIM(Edit4.Text);
   DatamoduloAdmision.QryPacientesSEGUNDO_NOMBRE.Value := ' ';
   if TRIM(Edit5.Text) <>'' then
     DatamoduloAdmision.QryPacientesSEGUNDO_NOMBRE.Value := TRIM(Edit5.Text);
   DatamoduloAdmision.QryPacientesFEC_NACIMINETO.Value := DateTimePicker1.Date;
   DatamoduloAdmision.QryPacientesSEXO.Value := DBLookupComboBox5.KeyValue;
   DatamoduloAdmision.QryPacientesDIR_CASA_PACIEN.Value := TRIM(Edit7.Text);
   DatamoduloAdmision.QryPacientesTEL_CASA_PACIEN.Value := TRIM(Edit8.Text);
   DatamoduloAdmision.QryPacientesCOD_DEPARTAMENTO.Value := DBLookupComboBox6.KeyValue;
   DatamoduloAdmision.QryPacientesCOD_MUNICIPIO.Value := DBLookupComboBox7.KeyValue;
   DatamoduloAdmision.QryPacientes.FieldValues['Estado']:= 'A';
   DatamoduloAdmision.QryPacientes.FieldValues['Lugar_Nacimient']:= Edit23.Text;
   DatamoduloAdmision.QryPacientes.FieldByName('Foto_Paciente').Assign(Image1.Picture.Bitmap);
   DatamoduloAdmision.qryPacientes.Post;

   //Graba el paciente como Tercero
    ADOQTemp.Close;
    ADOQTemp.SQL.Clear;
    ADOQTemp.SQL.Add('SELECT * FROM CONTTerce WHERE Numero_Documento='+chr(39)+trim(Edit1.Text)+chr(39));
    ADOQTemp.Open;
    IF ADOQTemp.RecordCount = 0 Then
    Begin
      ADOQTemp.Append;
      ADOQTemp.FieldValues['Numero_Documento'] :=trim(Edit1.Text);
      ADOQTemp.FieldValues['Sucursal']         :='001';
      ADOQTemp.FieldValues['Primer_Apellido']  :=DatamoduloAdmision.QryPacientesPRIMER_APELLIDO.Value;
      ADOQTemp.FieldValues['Segundo_Apellido'] :=DatamoduloAdmision.QryPacientesSEGUNDO_APELLIDO.Value;
      ADOQTemp.FieldValues['Primer_Nombre']    :=DatamoduloAdmision.QryPacientesPRIMER_NOMBRE.Value;
      ADOQTemp.FieldValues['Segundo_Nombre']   :=DatamoduloAdmision.QryPacientesSEGUNDO_NOMBRE.Value;
      ADOQTemp.FieldValues['Direccion']        :=DatamoduloAdmision.QryPacientesDIR_CASA_PACIEN.Value;
      ADOQTemp.FieldValues['Telefono']         :=DatamoduloAdmision.QryPacientesTEL_CASA_PACIEN.Value;
      ADOQTemp.Post;
    End;
   //********************************************************
   // GRABA LA INFORMACION DEL INGRESO EN EL SERVIDOR CENTRAL
   //********************************************************
   //if clientsocket1.Socket.Connected then
   //begin
   //  ClientSocket1.Socket.SendText('COMPR'+DBLookupComboBox4.KeyValue+'%$'+Edit1.Text+'%$'+Datamodule1.ADOQuery1.FieldValues['Nit']+'%$'+Datamodule1.ADOQuery1.FieldValues['Descripcion_Emp']+'%$'+Datamodule1.ADOQuery1.FieldValues['Direccion']);
   //  ClientSocket1.Socket.SendText('GRABAAfiliados%$ %$'+DBLookupComboBox4.Text+'%$'+Edit1.Text+'%$'+Edit2.Text+'%$'+Edit3.Text+'%$'+Edit4.Text+'%$'+Edit5.Text+'%$'+datetostr(datetimepicker1.date)+'%$'+DBLookupComboBox5.Text+'%$'+Edit7.Text+'%$'+Edit8.Text+'%$'+'0%$'+'0%$'+'C%$'+'1%$'+'1%$'+DBLookupComboBox4.Text+'%$'+Edit1.Text+'%$'+'6%$'+'0%$'+'0%$'+'0%$'+'0%$'+'0%$'+'0%$'+DBLookupComboBox2.Text+'%$'+'0%$'+'0%$'+'0%$'+'AC%$'+'0%$'+'0%$'+'0%$'+'0%$'+'0%$'+'0%$');
   //end;
   //if clientSocket1.Socket.Connected then clientsocket1.Close;
  //********************************************************
  // Final del Proceso de Grabación
  //********************************************************

   //Graba el LOG.

   Datamodule1.ADOConnection1.CommitTrans;
   MessageDlg('Los datos del paciente fueron grabados satisfactoriamente', mtInformation	,[mbOk], 0);
   BitBtn2.Click;
 EXCEPT
   Datamodule1.ADOConnection1.RollbackTrans;
   ShowMessage('No se puede  grabar  los datos del paciente ');
 end;
 end;
end;

procedure TFrmIngresoPacientesShort.DBLookupComboBox6Exit(Sender: TObject);
begin
      DatamoduloAdmision.qryCiudad.Close;
      DatamoduloAdmision.qryCiudad.Open;
 end;

procedure TFrmIngresoPacientesShort.Edit8KeyPress(Sender: TObject;
  var Key: Char);
begin
if not ((Key >='0') and (Key<= '9')) or (Key<= #0) then
      begin
       Key := #0;
      end;
 if (Key<= #8) then
      begin
      Key := #8;
      end;
end;

procedure TFrmIngresoPacientesShort.Edit13KeyPress(Sender: TObject;
  var Key: Char);
begin
if not ((Key >='0') and (Key<= '9')) or (Key<= #0) then
      begin
       Key := #0;
      end;
 if (Key<= #8) then
      begin
      Key := #8;
      end;
end;

procedure TFrmIngresoPacientesShort.DateTimePicker1KeyPress(Sender: TObject;
  var Key: Char);
begin
if not ((Key >='0') and (Key<= '9')) or (Key<= #0) then
      begin
       Key := #0;
      end;
 if (Key<= #8) then
      begin
      Key := #8;
      end;
end;

procedure TFrmIngresoPacientesShort.Edit20KeyPress(Sender: TObject;
  var Key: Char);
begin
if not ((Key >='0') and (Key<= '9')) or (Key<= #0) then
      begin
       Key := #0;
      end;
 if (Key<= #8) then
      begin
      Key := #8;
      end;
end;

procedure TFrmIngresoPacientesShort.Edit16KeyPress(Sender: TObject;
  var Key: Char);
begin
if not ((Key >='0') and (Key<= '9')) or (Key<= #0) then
      begin
       Key := #0;
      end;
 if (Key<= #8) then
      begin
      Key := #8;
      end;
end;

procedure TFrmIngresoPacientesShort.Edit25KeyPress(Sender: TObject;
  var Key: Char);
begin
if not ((Key >='0') and (Key<= '9')) or (Key<= #0) then
      begin
       Key := #0;
      end;
 if (Key<= #8) then
      begin
      Key := #8;
      end;

end;

procedure TFrmIngresoPacientesShort.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TFrmIngresoPacientesShort.DBLookupComboBox12Exit(Sender: TObject);
begin
BitBtn1.setfocus;
end;

procedure TFrmIngresoPacientesShort.FormActivate(Sender: TObject);
begin
    top := 0;
    Left := 0;
    ADOTable1.Open;
end;

procedure TFrmIngresoPacientesShort.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action := caFree;
end;

procedure TFrmIngresoPacientesShort.FormShow(Sender: TObject);
begin
  DatamoduloAdmision.QryTipodocumento.Close;
  DatamoduloAdmision.QryTipodocumento.Open;
end;

procedure TFrmIngresoPacientesShort.BitBtn4Click(Sender: TObject);
begin
  ReporteadorP('Listado de Pacientes','SELECT * FROM SAPacientes','');
end;

procedure TFrmIngresoPacientesShort.Edit2Exit(Sender: TObject);
var porcentaje:integer;
begin
  if pacanterior <> Edit2.text+' '+Edit3.text+' '+Edit4.text+' '+Edit5.text Then
  Begin
    pacanterior := Edit2.text+' '+Edit3.text+' '+Edit4.text+' '+Edit5.text;
    //  Memo1.Lines.Clear;

    ADOQuery4.Open;
    ADOQuery4.First;
    While NOT ADOQuery4.Eof DO
    Begin
      if ADOQuery4.FieldValues['NR_Ident_Usuar'] <> DatamoduloAdmision.qryPacientes.FieldValues['NR_Ident_Usuar'] then
      begin
        //Busca por nombre
        porcentaje := parecido(Edit2.text+' '+Edit3.text+' '+Edit4.text+' '+Edit5.text,ADOQuery4.FieldValues['Nombre']);
        if (porcentaje > 90) then memo1.Lines.Add(ADOQuery4.FieldValues['NR_Ident_Usuar']+' '+ADOQuery4.FieldValues['Nombre']+' '+inttostr(porcentaje)+'%');
      end;

      ADOQuery4.Next;
    End;
    ADOQuery4.Close;
  end;
End;

procedure TFrmIngresoPacientesShort.DBImage1DblClick(Sender: TObject);
begin
  opendialog1.Title:='Buscar Foto';
  opendialog1.DefaultExt:='*.bmp';
  opendialog1.Execute;
  if opendialog1.FileName <> '' then
  BEGIN
    Image1.Picture.LoadFromFile(opendialog1.FileName);
  END;
end;

end.

