unit SAPAcientes2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ImgList, ToolWin, ExtCtrls, StdCtrls, DBCtrls, Buttons,
  jpeg, Menus, DB, ADODB, ScktComp,Libreria_Prateinco,dateutils, Vcl.OleCtrls,
  DPFPCtlXLib_TLB,DPFPShrXLib_TLB,Webcam;

type
    TFrmIngresoPacientes = class(TForm)
    OpenDialog1: TOpenDialog;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    ClientSocket1: TClientSocket;
    ADOQuery4: TADOQuery;
    ADOQTemp: TADOQuery;
    pag: TPageControl;
    tab: TTabSheet;
    tab2: TTabSheet;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label9: TLabel;
    Label37: TLabel;
    Panel3: TPanel;
    DBLookupComboBox4: TDBLookupComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    DateTimePicker1: TDateTimePicker;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    Edit7: TEdit;
    DBLookupComboBox8: TDBLookupComboBox;
    Edit8: TEdit;
    DBLookupComboBox9: TDBLookupComboBox;
    DBLookupComboBox10: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox13: TDBLookupComboBox;
    BitBtn4: TBitBtn;
    Edit23: TEdit;
    GroupBox5: TGroupBox;
    Memo1: TMemo;
    Panel5: TPanel;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    TabSheet3: TTabSheet;
    GroupBox4: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label34: TLabel;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    DBLookupComboBox11: TDBLookupComboBox;
    DBLookupComboBox14: TDBLookupComboBox;
    chk: TCheckBox;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    Label23: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Edit17: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    DBLookupComboBox12: TDBLookupComboBox;
    Edit6: TEdit;
    DPFPEnrollmentControl: TDPFPEnrollmentControl;
    ImageList: TImageList;
    ToolBar: TToolBar;
    ToolButton: TToolButton;
    ADOQHuella: TADOQuery;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    SpeedButton4: TSpeedButton;
    Image1: TImage;
    Label38: TLabel;
    Edit26: TEdit;
    procedure Edit1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    PROCEDURE APPMESSAGE(VAR MSG: TMSG; VAR HANDLED: BOOLEAN);
    procedure BitBtn2Click(Sender: TObject);
    function validardatos : Boolean;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBox6Exit(Sender: TObject);
    procedure DBLookupComboBox10Exit(Sender: TObject);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure Edit13KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit20KeyPress(Sender: TObject; var Key: Char);
    procedure Edit13Exit(Sender: TObject);
    procedure Edit16KeyPress(Sender: TObject; var Key: Char);
    procedure Edit25KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBLookupComboBox12Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Edit21Exit(Sender: TObject);
    procedure Edit17Enter(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure DBImage1DblClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure chkClick(Sender: TObject);
    procedure ToolButtonClick(Sender: TObject);
    procedure DPFPEnrollmentControlEnroll(ASender: TObject;
      lFingerMask: Integer; const pTemplate, pStatus: IDispatch);
    procedure SpeedButton4Click(Sender: TObject);
    
  private
    { Private declarations }
  public
        regTemplate: array[0..10] of DPFPShrXLib_TLB.DPFPTemplate;
  end;

var
  clientEncryptionKey: string;
  FrmIngresoPacientes: TFrmIngresoPacientes;
  pacanterior:string;
  
implementation

uses ModuloAdmision, UDataModule1, FActivarInactivar,
  ImportaPlanosPaci, Libreria_PrateincoForm,DCPrijndael, DCPbase64, DCPsha256,
  WebCamForm;

{$R *.dfm}


function Encrypt(const sSomeString: string): string;
var
  c: TDCP_rijndael;
  vector: string;
  KeyStr: string;
begin
  //Funcion para encriptar el Template
 clientEncryptionKey:='12345678901234567890123456789012';
  KeyStr := clientEncryptionKey;
  c := TDCP_rijndael.Create(nil);
  c.InitStr(KeyStr, TDCP_sha256);
  Result := c.EncryptString(sSomeString);
  c.Reset;
  c.Free;
end;

procedure TFrmIngresoPacientes.Edit1Exit(Sender: TObject);
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
   PageControl1.ActivePageIndex := 0;
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
   DBLookupComboBox8.KeyValue := DatamoduloAdmision.QryPacientesZONA_RESIDENCIA.Value;
   DBLookupComboBox13.KeyValue := DatamoduloAdmision.QryPacientesNACIONALIDAD.Value;
   // familiares
   Edit9.Text := DatamoduloAdmision.QryPacientesNOMBRE_PADRE.Value;
   Edit10.Text := DatamoduloAdmision.QryPacientesNOMBRE_MADRE.Value;
   Edit11.Text := DatamoduloAdmision.QryPacientesNOMBRE_CONYUGUE.Value;
   Edit14.Text := DatamoduloAdmision.QryPacientesEMP_TRABAJO_CYG.Value;
   Edit12.Text := DatamoduloAdmision.QryPacientesDIR_TRABAJO_CYG.Value;
   Edit13.Text := DatamoduloAdmision.QryPacientesTEL_TRABAJO_CYG.Value;
   Edit17.Text := DatamoduloAdmision.QryPacientesEMP_TRABAJO_PAC.Value;
   Edit15.Text := DatamoduloAdmision.QryPacientesDIR_TRABAJO_PAC.Value;
   Edit16.Text := DatamoduloAdmision.QryPacientesTEL_TRABAJO_PAC.Value;
   Edit18.Text := DatamoduloAdmision.QryPacientesEMP_TRABAJO_RES.Value;
   Edit19.Text := DatamoduloAdmision.QryPacientesDIR_TRABAJO_RES.Value;
   Edit20.Text := DatamoduloAdmision.QryPacientesTEL_TRABAJO_RES.Value;
   Edit21.Text := DatamoduloAdmision.QryPacientesCEDULA_RESPONSA.Value;
   Edit22.Text := DatamoduloAdmision.QryPacientesNOMBRE_RESPONDE.Value;
   Edit24.Text := DatamoduloAdmision.QryPacientesDIR_CASA_RESP.Value;
   Edit6.Text  := DatamoduloAdmision.QryPacientes.FieldValues['No_Poliza'];
   IF DatamoduloAdmision.QryPacientes.FieldValues['Email'] <> null Then
      Edit26.Text  := DatamoduloAdmision.QryPacientes.FieldValues['Email'];
   IF DatamoduloAdmision.QryPacientes.FieldValues['Lugar_Nacimient'] <> null Then
     Edit23.Text := DatamoduloAdmision.QryPacientes.FieldValues['Lugar_Nacimient'];
   Edit25.Text := DatamoduloAdmision.QryPacientesTEL_CASA_RESP.Value;
   DBLookupComboBox1.KeyValue := DatamoduloAdmision.QryPacientesTP_USUARIO.Value;
   DBLookupComboBox2.KeyValue := DatamoduloAdmision.QryPacientesTP_AFILIADO.Value;
   IF DatamoduloAdmision.QryPacientesOCUPACION.Value <> '' Then DBLookupComboBox9.KeyValue := DatamoduloAdmision.QryPacientesOCUPACION.Value;
   DBLookupComboBox3.KeyValue := DatamoduloAdmision.QryPacientesESTADO_CIVIL.Value;
   DBLookupComboBox10.KeyValue := DatamoduloAdmision.QryPacientesGRUPO_AT_ESPECIAL.Value;
   DBLookupComboBox14.KeyValue := DatamoduloAdmision.qryPacientes.FieldValues['TP_CED_RESPONSA'];
   DBLookupComboBox6.KeyValue := DatamoduloAdmision.QryPacientesCOD_DEPARTAMENTO.Value;
   DatamoduloAdmision.qryCiudad.Close;
   DatamoduloAdmision.qryCiudad.Open;
   DBLookupComboBox7.KeyValue := DatamoduloAdmision.QryPacientesCOD_MUNICIPIO.Value;
   DBLookupComboBox12.KeyValue := DatamoduloAdmision.QryPacientesASEGURADORA.Value;
   DBLookupComboBox11.KeyValue := DatamoduloAdmision.QryPacientesPARENTESCO_RESP.Value;
   Image1.Picture.Bitmap.Assign(DatamoduloAdmision.QryPacientes.FieldByName('Foto_Paciente'));

   //Alertas
   VerificaAlerta(DBLookupComboBox4.KeyValue,trim(Edit1.Text));
 end
 else begin
   Image1.Picture.Metafile;
   DateTimePicker1.Date := date-(360*18);
   PageControl1.ActivePageIndex := 0;
 end;
end;

procedure TFrmIngresoPacientes.FormCreate(Sender: TObject);
begin
  pacanterior:='';
  APPLICATION.ONMESSAGE := APPMESSAGE;
  PageControl1.ActivePageIndex := 0;
  Pag.ActivePageIndex := 0;
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

procedure TFrmIngresoPacientes.APPMESSAGE(var MSG: TMSG;
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

procedure TFrmIngresoPacientes.BitBtn2Click(Sender: TObject);
begin
DBLookupComboBox1.KeyValue := '';
DBLookupComboBox2.KeyValue := '';
DBLookupComboBox3.KeyValue := '';
DBLookupComboBox4.KeyValue := '';
DBLookupComboBox5.KeyValue := '';
DBLookupComboBox6.KeyValue := '';
DBLookupComboBox7.KeyValue := '';
DBLookupComboBox8.KeyValue := '';
DBLookupComboBox9.KeyValue := 0;
DBLookupComboBox10.KeyValue := '';
DBLookupComboBox11.KeyValue := '';
DBLookupComboBox12.KeyValue := '';
Edit1.Text := '';
Edit2.Text := '';
Edit3.Text := '';
Edit4.Text := '';
Edit5.Text := '';
DBLookupComboBox13.KeyValue := '';
Edit6.Text := '';
Edit7.Text := '';
Edit8.Text := '';
Edit9.Text := '';
Edit10.Text := '';
Edit11.Text := '';
Edit12.Text := '';
Edit13.Text := '';
Edit14.Text := '';
Edit15.Text := '';
Edit16.Text := '';
Edit17.Text := '';
Edit18.Text := '';
Edit19.Text := '';
Edit20.Text := '';
Edit21.Text := '';
Edit22.Text := '';
Edit24.Text := '';
Edit25.Text := '';
//Image1.Picture.Metafile;
PageControl1.ActivePageIndex := 0;
DBLookupComboBox4.SetFocus;
DateTimePicker1.Date := date-(360*18);
end;

function TFrmIngresoPacientes.validardatos: Boolean;
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

 //if DBLookupComboBox9.text = '' then
 //begin
 //  MessageDlg('Seleccione la Ocupacion', mtInformation, [mbOk], 0);
 //  DBLookupComboBox9.SetFocus;
 //  exit;
 //end;


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

   if DBLookupComboBox8.text = '' then
   begin
   MessageDlg('Seleccione La zona  donde es remitido el paciente', mtInformation, [mbOk], 0);
   DBLookupComboBox8.SetFocus;
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

 {if trim(Edit21.text) = '' then
 begin
 MessageDlg('Digite el  numero  de  documento de la persona  responsable del paciente ', mtInformation, [mbOk], 0);
 PageControl1.ActivePageIndex := 1;
 Edit21.SetFocus;
 exit;
 end;

 if trim(Edit22.text) = '' then
 begin
 MessageDlg('Digite el  Nombre  de la persona  responsable del paciente ', mtInformation, [mbOk], 0);
 PageControl1.ActivePageIndex := 1;
 Edit22.SetFocus;
 exit;
 end;


if DBLookupComboBox1.text = '' then
 begin
   MessageDlg('Seleccione  el  tipo de seguridad  social  al que pertenece  el paciente ', mtInformation, [mbOk], 0);
   DBLookupComboBox1.SetFocus;
   exit;
 end; }

if DBLookupComboBox2.text = '' then
 begin
   MessageDlg('Seleccione  el  tipo de Afiliado al que pertenece  el paciente ', mtInformation, [mbOk], 0);
   DBLookupComboBox2.SetFocus;
   exit;
 end;

if DBLookupComboBox2.text <> 'P' then
BEGIN
if DBLookupComboBox12.text = '' then
 begin
   MessageDlg('Seleccione  La  entidad  donde  esta  afiliado el paciente ', mtInformation, [mbOk], 0);
   PageControl1.ActivePageIndex := 2;
   DBLookupComboBox12.SetFocus;
   exit;
 end;
END;

validardatos := true;
end;

procedure TFrmIngresoPacientes.BitBtn1Click(Sender: TObject);
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
   if DBLookupComboBox13.Text <>'' then
     DatamoduloAdmision.QryPacientesNACIONALIDAD.Value := DBLookupComboBox13.KeyValue;
   DatamoduloAdmision.QryPacientesFEC_NACIMINETO.Value := DateTimePicker1.Date;
   if DBLookupComboBox1.Text <>'' then
     DatamoduloAdmision.QryPacientesTP_USUARIO.Value := DBLookupComboBox1.KeyValue;
   DatamoduloAdmision.QryPacientesTP_AFILIADO.Value := DBLookupComboBox2.KeyValue;
   if DBLookupComboBox9.Text <>'' then
     DatamoduloAdmision.QryPacientesOCUPACION.Value := DBLookupComboBox9.KeyValue;
   if  DBLookupComboBox10.text <> '' then
     DatamoduloAdmision.QryPacientesGRUPO_AT_ESPECIAL.Value := DBLookupComboBox10.KeyValue;
   DatamoduloAdmision.QryPacientesSEXO.Value := DBLookupComboBox5.KeyValue;
   if  DBLookupComboBox3.text <> '' then
     DatamoduloAdmision.QryPacientesESTADO_CIVIL.Value := DBLookupComboBox3.KeyValue;
   if  DBLookupComboBox11.text <> '' then
     DatamoduloAdmision.QryPacientesPARENTESCO_RESP.Value := DBLookupComboBox11.KeyValue;
   DatamoduloAdmision.QryPacientesDIR_CASA_PACIEN.Value := TRIM(Edit7.Text);
   DatamoduloAdmision.QryPacientesTEL_CASA_PACIEN.Value := TRIM(Edit8.Text);
   if  DBLookupComboBox8.text <> '' then
     DatamoduloAdmision.QryPacientesZONA_RESIDENCIA.Value := DBLookupComboBox8.KeyValue;
   if TRIM(Edit9.Text) <>'' then
     DatamoduloAdmision.QryPacientesNOMBRE_PADRE.Value := TRIM(Edit9.Text);
   if TRIM(Edit10.Text) <>'' then
     DatamoduloAdmision.QryPacientesNOMBRE_MADRE.Value := TRIM(Edit10.Text);
   if TRIM(Edit11.Text) <>'' then
     DatamoduloAdmision.QryPacientesNOMBRE_CONYUGUE.Value := TRIM(Edit11.Text);
   if TRIM(Edit14.Text) <>'' then
     DatamoduloAdmision.QryPacientesEMP_TRABAJO_CYG.Value := TRIM(Edit14.Text);
   if TRIM(Edit12.Text) <>'' then
     DatamoduloAdmision.QryPacientesDIR_TRABAJO_CYG.Value := TRIM(Edit12.Text);
   if TRIM(Edit13.Text) <>'' then
     DatamoduloAdmision.QryPacientesTEL_TRABAJO_CYG.Value := TRIM(Edit13.Text);
   if TRIM(Edit21.Text) <>'' then
   Begin
     DatamoduloAdmision.qryPacientes.FieldValues['TP_CED_RESPONSA'] := DBLookupComboBox14.KeyValue;
     DatamoduloAdmision.QryPacientesCEDULA_RESPONSA.Value := TRIM(Edit21.Text);
   End;
   DatamoduloAdmision.QryPacientesNOMBRE_RESPONDE.Value := TRIM(Edit22.Text);
   if TRIM(Edit24.Text) <>'' then
     DatamoduloAdmision.QryPacientesDIR_CASA_RESP.Value := TRIM(Edit24.Text);
   if TRIM(Edit25.Text) <>'' then
     DatamoduloAdmision.QryPacientesTEL_CASA_RESP.Value := TRIM(Edit25.Text);
   if TRIM(Edit19.Text) <>'' then
     DatamoduloAdmision.QryPacientesDIR_TRABAJO_RES.Value := TRIM(Edit19.Text);
   if TRIM(Edit18.Text) <>'' then
     DatamoduloAdmision.QryPacientesEMP_TRABAJO_RES.Value := TRIM(Edit18.Text);
   if TRIM(Edit20.Text) <>'' then
     DatamoduloAdmision.QryPacientesTEL_TRABAJO_RES.Value := TRIM(Edit20.Text);
   if TRIM(Edit17.Text) <>'' then
     DatamoduloAdmision.QryPacientesEMP_TRABAJO_PAC.Value := TRIM(Edit17.Text);
   if TRIM(Edit15.Text) <>'' then
     DatamoduloAdmision.QryPacientesDIR_TRABAJO_PAC.Value := TRIM(Edit15.Text);
   if TRIM(Edit16.Text) <>'' then
     DatamoduloAdmision.QryPacientesTEL_TRABAJO_PAC.Value := TRIM(Edit16.Text);
   DatamoduloAdmision.QryPacientesCOD_DEPARTAMENTO.Value := DBLookupComboBox6.KeyValue;
   DatamoduloAdmision.QryPacientesCOD_MUNICIPIO.Value := DBLookupComboBox7.KeyValue;
   DatamoduloAdmision.QryPacientesASEGURADORA.Value := DBLookupComboBox12.KeyValue;
   DatamoduloAdmision.QryPacientes.FieldValues['No_Poliza']:= Edit6.Text;
   DatamoduloAdmision.QryPacientes.FieldValues['Email']:= Edit26.Text;
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

procedure TFrmIngresoPacientes.DBLookupComboBox6Exit(Sender: TObject);
begin
      DatamoduloAdmision.qryCiudad.Close;
      DatamoduloAdmision.qryCiudad.Open;
 end;

procedure TFrmIngresoPacientes.DPFPEnrollmentControlEnroll(ASender: TObject;
  lFingerMask: Integer; const pTemplate, pStatus: IDispatch);
begin
//Asigno el template a un array de 10
  regTemplate[lFingerMask-1] := DPFPShrXLib_TLB.DPFPTemplate(pTemplate);
end;

procedure TFrmIngresoPacientes.DBLookupComboBox10Exit(Sender: TObject);
begin
  //PageControl1.ActivePageIndex := 0;
  //edit9.setfocus;
end;

procedure TFrmIngresoPacientes.Edit8KeyPress(Sender: TObject;
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

procedure TFrmIngresoPacientes.Edit13KeyPress(Sender: TObject;
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

procedure TFrmIngresoPacientes.DateTimePicker1KeyPress(Sender: TObject;
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

procedure TFrmIngresoPacientes.Edit20KeyPress(Sender: TObject;
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

procedure TFrmIngresoPacientes.Edit13Exit(Sender: TObject);
begin
PageControl1.ActivePageIndex := 1;
chk.setfocus;
end;

procedure TFrmIngresoPacientes.Edit16KeyPress(Sender: TObject;
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

procedure TFrmIngresoPacientes.Edit25KeyPress(Sender: TObject;
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

procedure TFrmIngresoPacientes.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TFrmIngresoPacientes.DBLookupComboBox12Exit(Sender: TObject);
begin
  BitBtn1.setfocus;
end;

procedure TFrmIngresoPacientes.FormActivate(Sender: TObject);
begin
    top := 0;
    Left := 0;
    ADOTable1.Open;
end;

procedure TFrmIngresoPacientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action := caFree;
end;

procedure TFrmIngresoPacientes.FormShow(Sender: TObject);
begin
  DatamoduloAdmision.QryTipodocumento.Close;
  DatamoduloAdmision.QryTipodocumento.Open;
end;

procedure TFrmIngresoPacientes.SpeedButton4Click(Sender: TObject);
var
  DstRect, SrcRect: TRect;
begin
  WebCamF := tWebCamF.create(application);
  try
    WebCamF.showmodal;

    Image1.Picture.Bitmap.Assign(WebCamF.Image2.Picture.Bitmap);
    {Image1.Canvas.CopyMode := cmSrcCopy;
    DstRect := Rect(0, 0, Image1.Width, Image1.Height);
    SrcRect := Rect(0, 0, Image1.Picture.Bitmap.Width, Image1.Picture.Bitmap.Height);
    Image1.Canvas.CopyRect(DstRect, Image1.Canvas, SrcRect);}

  //  RedimensionarImagen(Image1.Picture.Bitmap, Image1.Width,Image1.Height);
  except
    WebCamF.free;
  end;
end;

procedure TFrmIngresoPacientes.ToolButtonClick(Sender: TObject);
var
  i:Integer;
begin
  if DatamoduloAdmision.qryPacientes.FieldValues['CCHISTORIA'] = null Then
  Begin
    ShowMessage('ERROR: Debe Ingresar un paciente primero...');
    exit();
  End;

  for i := 0 to 10 do
  if regTemplate[i] <> nil then  //Se revisa que solo los campos que tengan informacion se agregen a la bases de datos
  begin
  //Reviso si existe algun una huella ya registrada
    ADOQHuella.Close;
    ADOQHuella.SQL.Clear;
    ADOQHuella.SQL.Add('Select * from SAFinger where cchistoria = '+chr(39)+DatamoduloAdmision.qryPacientes.FieldValues['CCHISTORIA']+chr(39)+' AND dedo ='+inttostr(i));
    ADOQHuella.Open;
    if ADOQHuella.Eof then
    begin
      ADOQHuella.Append;
      ADOQHuella.FieldValues['cchistoria']:=DatamoduloAdmision.qryPacientes.FieldValues['CCHISTORIA'];
      ADOQHuella.FieldValues['dedo']:=i;
      ADOQHuella.FieldValues['Template']:=Encrypt(regTemplate[i].Serialize);
      ADOQHuella.Post;
    end
    Else Begin
      ADOQHuella.Edit;
      ADOQHuella.FieldValues['cchistoria']:=DatamoduloAdmision.qryPacientes.FieldValues['CCHISTORIA'];
      ADOQHuella.FieldValues['dedo']:=i;
      ADOQHuella.FieldValues['Template']:=Encrypt(regTemplate[i].Serialize);
      ADOQHuella.Post;
    End;
  end;

  Pag.ActivePageIndex := 0;
end;

procedure TFrmIngresoPacientes.Edit21Exit(Sender: TObject);
begin
  IF Edit21.Text <> '' Then Begin
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM SAPacientes WHERE Tp_Ident_Usuar='+chr(39)+DBLookupComboBox14.KeyValue+chr(39)+' AND Nr_Ident_Usuar='+chr(39)+Edit21.Text+chr(39));
    ADOQuery1.Open;
    IF ADOQuery1.RecordCount >= 1 Then
    Begin
      ADOQuery1.First;
      Edit22.Text:=ADOQuery1.FieldValues['Primer_Apellido']+' '+ADOQuery1.FieldValues['Segundo_Apellido']+' '+ADOQuery1.FieldValues['Primer_Nombre']+' '+ADOQuery1.FieldValues['Segundo_Nombre'];
      Edit24.Text:=campotoedit(ADOQuery1.FieldValues['Dir_Casa_Pacien']);
      Edit25.Text:=campotoedit(ADOQuery1.FieldValues['Tel_Casa_Pacien']);
      Edit18.Text:=campotoedit(ADOQuery1.FieldValues['Emp_Trabajo_Pac']);
      Edit19.Text:=campotoedit(ADOQuery1.FieldValues['Dir_Trabajo_Pac']);
      Edit20.Text:=campotoedit(ADOQuery1.FieldValues['Tel_Trabajo_Pac']);
     DBLookupComboBox11.KeyValue:='1';
   End;
 End;    
end;

procedure TFrmIngresoPacientes.Edit17Enter(Sender: TObject);
begin
  If (DBLookupComboBox4.Text = DBLookupComboBox14.Text) AND (Edit1.Text = Edit21.Text) Then
  Begin
    Edit17.Text:= Edit18.Text;
    Edit15.Text:= Edit19.Text;
    Edit16.Text:= Edit20.Text;
  End;
end;

procedure TFrmIngresoPacientes.BitBtn4Click(Sender: TObject);
begin
  ReporteadorP('Listado de Pacientes','SELECT * FROM SAPacientes','')
end;

procedure TFrmIngresoPacientes.BitBtn5Click(Sender: TObject);
var
  TipoDoc,NrDoc: string;
begin
  if MessageDlg('Esta opción Copiará todos los datos del paciente que usted colocara a continuáción al que esta seleccionado, esta seguro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
      TipoDoc:= trim(InputBox('Documento', 'Ingrese el TIPO DE DOCUMENTO', 'CC'));
      NrDoc:= trim(InputBox('Documento', 'Ingrese el NUMERO DE DOCUMENTO', '0'));

      ADOQuery2.Close;
      ADOQuery2.Parameters.ParamValues['TpDoc'] := TipoDoc;
      ADOQuery2.Parameters.ParamValues['NrDoc'] := NrDoc;
      ADOQuery2.Open;
      If ADOQuery2.RecordCount <> 0 Then Begin
         Showmessage('Trasladar Paciente '+ADOQuery2.FieldValues['Tp_Ident_Usuar']+'-'+ADOQuery2.FieldValues['Nr_Ident_Usuar']+': '+ADOQuery2.FieldValues['Primer_Apellido']+' '+ADOQuery2.FieldValues['Primer_Nombre']);
         Showmessage('a el paciente '+DBLookupComboBox4.Text+'-'+Edit1.Text+': '+Edit2.Text+' '+Edit4.Text);
         if MessageDlg('Esta Seguro de Integrar este Paciente?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            ADOQuery3.Close;
            ADOQuery3.SQL.Clear;
            ADOQuery3.SQL.Add('UPDATE saadmisiones SET Tp_Ident_Usuar = '+chr(39)+DBLookupComboBox4.Text+chr(39)+', Nr_Ident_Usuar = '+chr(39)+Edit1.Text+chr(39));
            ADOQuery3.SQL.Add('                 WHERE Tp_Ident_Usuar = '+chr(39)+TipoDoc+chr(39)+' AND Nr_Ident_Usuar = '+chr(39)+NrDoc+chr(39));
            ADOQuery3.ExecSQL;

            ADOQuery3.Close;
            ADOQuery3.SQL.Clear;
            ADOQuery3.SQL.Add('UPDATE fdinformacion SET No_Historia = '+chr(39)+DBLookupComboBox4.Text+Edit1.Text+chr(39));
            ADOQuery3.SQL.Add('                 WHERE No_Historia = '+chr(39)+TipoDoc+NrDoc+chr(39));
            ADOQuery3.ExecSQL;

            ADOQuery3.Close;
            ADOQuery3.SQL.Clear;
            ADOQuery3.SQL.Add('UPDATE crdetcargos SET Registro = '+chr(39)+DBLookupComboBox4.Text+Edit1.Text+chr(39));
            ADOQuery3.SQL.Add('                 WHERE Registro = '+chr(39)+TipoDoc+NrDoc+chr(39));
            ADOQuery3.ExecSQL;

            ADOQuery3.Close;
            ADOQuery3.SQL.Clear;
            ADOQuery3.SQL.Add('UPDATE cicitas SET Tp_Ident_Usuar = '+chr(39)+DBLookupComboBox4.Text+chr(39)+' , Nr_Ident_Usuar = '+chr(39)+Edit1.Text+chr(39));
            ADOQuery3.SQL.Add('                 WHERE Tp_Ident_Usuar = '+chr(39)+TipoDoc+chr(39)+' AND Nr_Ident_Usuar = '+chr(39)+NrDoc+chr(39));
            ADOQuery3.ExecSQL;

            ADOQuery3.Close;
            ADOQuery3.SQL.Clear;
            ADOQuery3.SQL.Add('SELECT * FROM sapacientes WHERE Tp_Ident_Usuar = '+chr(39)+DBLookupComboBox4.Text+chr(39)+' AND Nr_Ident_Usuar = '+chr(39)+Edit1.Text+chr(39));
            ADOQuery3.Open;
            IF ADOQuery3.RecordCount = 0 Then Begin
              ADOQuery3.Close;
              ADOQuery3.SQL.Clear;
              ADOQuery3.SQL.Add('UPDATE sapacientes SET Tp_Ident_Usuar = '+chr(39)+DBLookupComboBox4.Text+chr(39)+' , Nr_Ident_Usuar = '+chr(39)+Edit1.Text+chr(39));
              ADOQuery3.SQL.Add('                 WHERE Tp_Ident_Usuar = '+chr(39)+TipoDoc+chr(39)+' AND Nr_Ident_Usuar = '+chr(39)+NrDoc+chr(39));
              ADOQuery3.ExecSQL;
            End
            Else Begin
              ADOQuery2.Delete;
            End;

            Showmessage('Cedula Integrada.....');
          end;
      end
      else Begin
        Showmessage('El paciente no fue encontrado.');
      End;
      DBLookupComboBox4.SetFocus;
  end;
end;



procedure TFrmIngresoPacientes.Edit2Exit(Sender: TObject);
var porcentaje:integer;
begin
if (edit2.Text>'') and (edit4.Text >'') then

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

procedure TFrmIngresoPacientes.BitBtn6Click(Sender: TObject);
begin
  FrmAI := tFrmAI.create(application);
  FrmAI.Edit4.Text:= 'Estado';
  FrmAI.CB1.Items.Add('A');
  FrmAI.CB2.Items.Add('I');
  FrmAI.Edit1.Text:= 'SAPacientes';
  try
    Datamodule1.MuestraconAcceso(FrmAI);
  except
    FrmAI.free;
  end;
end;

procedure TFrmIngresoPacientes.BitBtn7Click(Sender: TObject);
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

procedure TFrmIngresoPacientes.chkClick(Sender: TObject);
begin
  groupbox4.Visible := chk.Checked;

end;

procedure TFrmIngresoPacientes.DBImage1DblClick(Sender: TObject);
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

