unit UingresosAdmisiones;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, ADODB, Mask, ExtCtrls, Buttons, ComCtrls,StrUtils,
  ScktComp, Grids, variants,Libreria_Prateinco;

type
  TCliStatus = (csIdle, csList, csBitmap, csText, csError);

  TfrmAdminsiones = class(TForm)
    ScrollBox: TScrollBox;
    DataSource1: TDataSource;
    Panel2: TPanel;
    QryAdmisiones: TADOQuery;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label9: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label13: TLabel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    DBLookupComboBox4: TDBLookupComboBox;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    ADOQuery1: TADOQuery;
    qrySA_Pacientes: TADOQuery;
    DBLookupComboBox6: TDBLookupComboBox;
    Label1: TLabel;
    QryCitasMedicas: TADOQuery;
    Memo1: TMemo;
    Label11: TLabel;
    DBLookupComboBox11: TDBLookupComboBox;
    DateTimePicker1: TDateTimePicker;
    SpeedButton1: TSpeedButton;
    GroupBox2: TGroupBox;
    RadioGroup1: TRadioGroup;
    Label14: TLabel;
    DBLookupComboBox9: TDBLookupComboBox;
    Label21: TLabel;
    DBLookupComboBox10: TDBLookupComboBox;
    Label10: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label5: TLabel;
    QryCitasMedicasTP_IDENT_USUAR: TWideStringField;
    QryCitasMedicasNR_IDENT_USUAR: TWideStringField;
    QryCitasMedicasTP_IDENT_MEDICO: TWideStringField;
    QryCitasMedicasNR_IDENT_MEDICO: TWideStringField;
    QryCitasMedicasNombre: TWideStringField;
    QryCitasMedicasFECHA: TDateTimeField;
    QryCitasMedicasTIPO_CONSULTA: TWideStringField;
    QryCitasMedicasTIEMPO: TWideStringField;
    QryCitasMedicasNOTA: TWideStringField;
    QryCitasMedicasCD_CAMA: TWideStringField;
    QryCitasMedicasCD_SECCION: TWideStringField;
    QryCitasMedicasCD_TIPO: TWideStringField;
    ADOQuery2: TADOQuery;
    BitBtn4: TBitBtn;
    Label7: TLabel;
    ADOTable1: TADOTable;
    BitBtn2: TBitBtn;
    GroupBox3: TGroupBox;
    DBLookupComboBox7: TDBLookupComboBox;
    Label12: TLabel;
    Label2: TLabel;
    DBLookupComboBox8: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    Label8: TLabel;
    Panel1: TPanel;
    Image1: TImage;
    Label6: TLabel;
    Label15: TLabel;
    Edit3: TEdit;
    DateTimePicker2: TDateTimePicker;
    Edit4: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    ComboBox1: TComboBox;
    ClientSocket1: TClientSocket;
    Label18: TLabel;
    DBLookupComboBox14: TDBLookupComboBox;
    DBLookupComboBox15: TDBLookupComboBox;
    DataSource5: TDataSource;
    ADOTable4: TADOTable;
    EditDiagING: TEdit;
    Edit6: TEdit;
    BitBtn5: TBitBtn;
    PnlBusca: TPanel;
    SGDatos: TStringGrid;
    Panel4: TPanel;
    EditPalabra: TEdit;
    Label19: TLabel;
    BtnBuscar: TBitBtn;
    QryGeneralDiag: TADOQuery;
    QryApoyo: TADOQuery;
    BitBtn6: TBitBtn;
    ADOQAutoriza: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    PROCEDURE APPMESSAGE(VAR MSG: TMSG; VAR HANDLED: BOOLEAN);
    procedure Edit1Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    function Cantidad:double;
    procedure DBLookupComboBox9Exit(Sender: TObject);
    procedure DBLookupComboBox8Exit(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    function validardatos : Boolean;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn2Exit(Sender: TObject);
    procedure ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
    procedure DataSource5DataChange(Sender: TObject; Field: TField);
    procedure BtnBuscarClick(Sender: TObject);
    procedure LimpiaGrilla(Grilla : TStringGrid; Col : Integer);
    procedure BitBtn5Click(Sender: TObject);
    procedure SGDatosDblClick(Sender: TObject);
    procedure EditDiagINGExit(Sender: TObject);
    procedure ClientSocket1Error(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure BitBtn6Click(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox6Enter(Sender: TObject);
    procedure DBLookupComboBox7Enter(Sender: TObject);
    procedure DBLookupComboBox8Enter(Sender: TObject);
    procedure DBLookupComboBox5Enter(Sender: TObject);
    procedure DBLookupComboBox14Enter(Sender: TObject);
    procedure DBLookupComboBox15Enter(Sender: TObject);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DBLookupComboBox11Enter(Sender: TObject);
    procedure VerificarSiEstaAdmitido;
  private
    CliStatus: TCliStatus;
    Buffer: array [0..9999] of Char;
  public
    ConCita    : Boolean;
    { public declarations }
  end;

var
  frmAdminsiones: TfrmAdminsiones;
  modifica : boolean;

implementation

uses ModuloAdmision,  SAPAcientes2, UDataModule1,
  FHojaAdmision, UnitCitasDiarias, Reporteador, MAIN, Libreria_PrateincoForm,FImpSolicitud;

{$R *.DFM}

procedure TfrmAdminsiones.FormCreate(Sender: TObject);
var Cad : string;
begin
  DatamoduloAdmision.qryGE_Departamentos.Open;
  DatamoduloAdmision.QryCiudad.Open;
  DatamoduloAdmision.QryTipodocumento.Open;
  DatamoduloAdmision.QrytipoAdmision.Open;
  DatamoduloAdmision.QryNacionalidad.Open;
  DatamoduloAdmision.QryEgresos.Open;
  DatamoduloAdmision.Qrytipoconsulta.Open;
  DatamoduloAdmision.QryTipoCama.Open;
  DatamoduloAdmision.QrySecciones.Open;
  DatamoduloAdmision.QryAseguradora.Open;
  DatamoduloAdmision.ADOQueryConvenios.Open;
  DatamoduloAdmision.QryTipoAfiliado.Open;
  DatamoduloAdmision.qryEstadosCiviles.Open;
  DatamoduloAdmision.QryGrupoEtnico.Open;
  DatamoduloAdmision.QryZona.Open;
  DatamoduloAdmision.qryOcupacion.Open;
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

//  ADOTable4.Filtered  := True;
//  Cad := pchar('ESTADO = ''A'' AND CENTRO_COSTO LIKE '+''''+DataModule1.ADOQuery1.Fields.FieldByName('EMPRESA_TRABAJA').AsString+''+'%''');
 // ADOTable4.Filter := Cad;

  ADOTable4.Open;

  APPLICATION.ONMESSAGE := APPMESSAGE;
  DateTimePicker2.DateTime:=now;

  //********************************************************
  // CONECTA EL SOCKET SI SE PUEDE
  //********************************************************
  //if clientsocket1.Socket.Connected then
  //else begin
  //  clientSocket1.Port:=15000;
  //  clientSocket1.Host:= 'prateinco.dyndns.org';
  //  clientsocket1.Open;
  //end;

  ADOTable1.Open;
  IF ADOTable1.FieldValues['Bloquea_Fecha_admi'] = 'S' Then DateTimePicker2.Enabled := False
  ELSE DateTimePicker2.Enabled := True;

  if ADOTable1.FieldValues['DiagnosticoAdmHC'] = 'H' then
  Begin
    Label7.Visible := False;
    EditDiagING.Visible := False;
    Edit6.Visible := False;
    BitBtn5.Visible := False;
    BitBtn2.Visible := False;
  End
  Else Begin
    Label7.Visible := True;
    EditDiagING.Visible := True;
    Edit6.Visible := True;
    BitBtn5.Visible := True;
    BitBtn2.Visible := True;
  End;
end;

procedure TfrmAdminsiones.BitBtn3Click(Sender: TObject);
begin
            DBLookupComboBox1.KeyValue := '';
            DBLookupComboBox2.KeyValue := '';
            DBLookupComboBox3.KeyValue := '';
            DBLookupComboBox4.KeyValue := '';
            DBLookupComboBox5.KeyValue := '';
            DBLookupComboBox6.KeyValue := '';
            DBLookupComboBox7.KeyValue := '';
            DBLookupComboBox8.KeyValue := '';
            DBLookupComboBox9.KeyValue := '';
            DBLookupComboBox10.KeyValue := '';
            DBLookupComboBox11.KeyValue := '';
            Edit1.text := '';
            frmAdminsiones.Close;
end;

procedure TfrmAdminsiones.APPMESSAGE(var MSG: TMSG; var HANDLED: BOOLEAN);
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
                IF ((SCREEN.ACTIVECONTROL) IS TMASKEDIT) THEN
                MSG.WPARAM := VK_TAB;
                IF ((SCREEN.ACTIVECONTROL) IS TDBLOOKUPCOMBOBOX) THEN
                MSG.WPARAM := VK_TAB;
       END;
end;

procedure TfrmAdminsiones.Edit1Exit(Sender: TObject);
begin
  VerificarSiEstaAdmitido;

end;

procedure TfrmAdminsiones.Edit4Exit(Sender: TObject);
begin
  if Edit4.Text <> '' then
  Begin
    ADOQAutoriza.Close;
    ADOQAutoriza.Parameters.ParamValues['no'] := Edit4.Text;
    ADOQAutoriza.Open;
    if ADOQAutoriza.RecordCount <> 0 then
    Begin
      Showmessage('Ya existen '+ inttostr(ADOQAutoriza.RecordCount) +' Autorizaciónes con este numero. Si lo graba quedara doble');
    End;
  End;
end;

procedure TfrmAdminsiones.BitBtn1Click(Sender: TObject);
var numero : string;
    Mesg   : string;
begin
  if validardatos = true  then
  begin
    if ComboBox1.Text = 'Permanente' then
      begin
        QryApoyo.Close;
        QryApoyo.SQL.Clear;
        QryApoyo.SQL.Add('SELECT NO_ADMISION FROM SAAdmisiones');
        QryApoyo.SQL.Add('WHERE TP_IDENT_USUAR = '''+DBLookupComboBox4.Text+'''');
        QryApoyo.SQL.Add('      AND NR_IDENT_USUAR = '''+Edit1.Text+'''');
        QryApoyo.SQL.Add('      AND DURACION = ''P''');
        QryApoyo.Open;

        if not QryApoyo.Eof then
          begin
            Mesg := '';
            while not QryApoyo.Eof do
              begin
                Mesg  := Mesg + '-' + QryApoyo.Fields.FieldByName('NO_ADMISION').AsString;
                QryApoyo.Next;
              end;

             Application.MessageBox(pchar('Este paciente ya tiene Admisión(es) permanentes esta(s) es(son) ' + Mesg),'Información',MB_OK+MB_ICONINFORMATION);
             Exit;
          end;
      end;

    if modifica then numero := Edit3.Text
    Else numero := alineardatos(floatToStr(Cantidad),6);
    edit3.text:=numero;
    DatamoduloAdmision.QryAdmisiones.Close;
    DatamoduloAdmision.QryAdmisiones.Parameters[0].Value := numero;
    DatamoduloAdmision.QryAdmisiones.Open;
    TRY
           Datamodule1.ADOConnection1.BeginTrans;
           if DatamoduloAdmision.QryAdmisiones.RecordCount = 0 then DatamoduloAdmision.QryAdmisiones.Insert
           else DatamoduloAdmision.QryAdmisiones.Edit;

           DatamoduloAdmision.QryAdmisionesNO_ADMISION.Value :=numero;
           DatamoduloAdmision.QryAdmisionesFEC_ADMISION.Value := DateTimePicker2.DateTime;
           DatamoduloAdmision.QryAdmisionesTP_ADMISION.Value := DBLookupComboBox1.KeyValue;
           DatamoduloAdmision.QryAdmisionesTP_IDENT_USUAR.Value := DBLookupComboBox4.KeyValue;
           DatamoduloAdmision.QryAdmisionesNR_IDENT_USUAR.Value := trim(Edit1.Text);
           DatamoduloAdmision.QryAdmisionesUN_MEDIDA_EDAD.Value := 'A';
           DatamoduloAdmision.QryAdmisionesVALOR_EDAD.Value := 0;
           DatamoduloAdmision.QryAdmisionesTIP_CONSULTA.Value := DBLookupComboBox6.KeyValue;
           DatamoduloAdmision.QryAdmisionesTIP_CONSULTORIO.Value :=  DBLookupComboBox7.KeyValue;
           DatamoduloAdmision.QryAdmisiones.FieldValues['ASEGURADORA'] :=  DatamoduloAdmision.ADOQueryConvenios.FieldValues['Aseguradora'];
           DatamoduloAdmision.QryAdmisiones.FieldValues['NO_CONTRATO'] :=  DatamoduloAdmision.ADOQueryConvenios.FieldValues['NO_CONTRATO'];
           DatamoduloAdmision.QryAdmisionesTIP_SECCION.Value := DBLookupComboBox8.KeyValue;
           DatamoduloAdmision.QryAdmisionesNO_CAMA.Value := DBLookupComboBox5.KeyValue;
           DatamoduloAdmision.QryAdmisionesTP_IDENT_MEDICO.Value := DatamoduloAdmision.qryMedicosTP_IDENT_MEDICO.Value;
           DatamoduloAdmision.QryAdmisionesNR_IDENT_MEDICO.Value := DatamoduloAdmision.qryMedicosNR_IDENT_MEDICO.Value;
           if DBLookupComboBox3.Text <> '' then
           DatamoduloAdmision.QryAdmisionesMEDICO_HOSPITAL.Value :=  DBLookupComboBox3.KeyValue;
           if DBLookupComboBox9.Text <> '' then
           DatamoduloAdmision.QryAdmisionesDEP_REMISION.Value :=  DBLookupComboBox9.KeyValue;
           if DBLookupComboBox10.Text <> '' then
           DatamoduloAdmision.QryAdmisionesMUNICIPIO_REMISION.Value :=  DBLookupComboBox9.KeyValue;

           DatamoduloAdmision.QryAdmisionesREMITIDO.Value :=  IntToStr(RadioGroup1.ItemIndex);
           DatamoduloAdmision.QryAdmisionesOBSERVACIONES.Value :=  trim(Memo1.Text);
           IF DBLookupComboBox1.KeyValue = 'C' Then DatamoduloAdmision.QryAdmisionesEST_ADMINSION.Value := 'C'
           ELSE DatamoduloAdmision.QryAdmisionesEST_ADMINSION.Value := 'A';
           DatamoduloAdmision.QryAdmisiones.FieldValues['DIAGNOSTICO'] :=  EditDiagING.Text;   //DBLookupComboBox12.KeyValue;
           DatamoduloAdmision.QryAdmisiones.FieldValues['NO_AUTORIZACION'] :=  Edit4.Text;
           DatamoduloAdmision.QryAdmisiones.FieldValues['DURACION'] :=  ComboBox1.Text;
           DatamoduloAdmision.QryAdmisiones.FieldValues['CENTRO_COSTO'] :=  DBLookupComboBox14.KeyValue;

           DatamoduloAdmision.QryCitas.Close;
           DatamoduloAdmision.QryCitas.Parameters[0].Value := DatamoduloAdmision.QryAdmisionesTP_IDENT_USUAR.Value;
           DatamoduloAdmision.QryCitas.Parameters[1].Value := DatamoduloAdmision.QryAdmisionesNR_IDENT_USUAR.Value;
           DatamoduloAdmision.QryCitas.Parameters[2].Value := DatamoduloAdmision.QryAdmisionesTP_IDENT_MEDICO.Value;
           DatamoduloAdmision.QryCitas.Parameters[3].Value := DatamoduloAdmision.QryAdmisionesNR_IDENT_MEDICO.Value;
           DatamoduloAdmision.QryCitas.Parameters[4].Value := DateTimePicker1.DateTime;
           DatamoduloAdmision.QryCitas.Parameters[5].Value := DatamoduloAdmision.QryAdmisionesTIP_CONSULTA.Value;
           DatamoduloAdmision.QryCitas.Open;
           IF DatamoduloAdmision.QryCitas.RecordCount = 1 then
           begin
             DatamoduloAdmision.QryCitas.Edit;
             DatamoduloAdmision.QryCitasESTADO.Value := 'C';
             DatamoduloAdmision.QryCitas.Post;
           end;
           DatamoduloAdmision.QryAdmisiones.Post;
           Datamodule1.ADOConnection1.CommitTrans;

           //********************************************************
           // GRABA LA INFORMACION DEL INGRESO EN EL SERVIDOR CENTRAL
           //********************************************************
           {if clientsocket1.Socket.Connected then
           begin
             ClientSocket1.Socket.SendText('COMPR'+DBLookupComboBox4.KeyValue+'%$'+Edit1.Text+'%$'+Datamodule1.ADOQuery1.FieldValues['Nit']+'%$'+Datamodule1.ADOQuery1.FieldValues['Descripcion_Emp']+'%$'+Datamodule1.ADOQuery1.FieldValues['Direccion']);
             //ClientSocket1.Socket.SendText('GRABAAfiliados%$ %$'+combobox1.Text+'%$'+Edit6.Text+'%$'+Edit10.Text+'%$'+Edit11.Text+'%$'+Edit12.Text+'%$'+Edit13.Text+'%$'+Edit14.Text+'%$'+Edit15.Text+'%$'+Edit17.Text+'%$'+Edit18.Text+'%$'+Edit19.Text+'%$'+'0%$'+'C%$'+'1%$'+'1%$'+'CC%$'+'79500567%$'+'6%$'+'0%$'+'0%$'+'0%$'+'0%$'+'0%$'+'0%$'+'0%$'+'0%$'+'0%$'+'0%$'+'AC%$'+'0%$'+'0%$'+'0%$'+'0%$'+'0%$'+'0%$');
           end;
           if clientSocket1.Socket.Connected then clientsocket1.Close;   }
           //********************************************************
           // Final del Proceso de Grabación
           //********************************************************
          { if ConCita = True then
             FrmCitasDiarias.sW  := True
           else
             FrmCitasDiarias.sW  := False;  }
           showmessage ('Admisión grabada con el número: ' + numero);

           ADOTable1.Open;
           ADOTable1.First;

           //Graba el LOG.

           DBLookupComboBox1.KeyValue := '';
           DBLookupComboBox2.KeyValue := '';
           DBLookupComboBox3.KeyValue := '';
           DBLookupComboBox4.KeyValue := '';
           DBLookupComboBox5.KeyValue := '';
           DBLookupComboBox6.KeyValue := '';
           DBLookupComboBox7.KeyValue := '';
           DBLookupComboBox8.KeyValue := '';
           DBLookupComboBox9.KeyValue := '';
           DBLookupComboBox10.KeyValue := '';
           DBLookupComboBox11.KeyValue := '';
           Edit1.text := '';
           modifica := False;
           BitBtn6.Font.Style := [];
    EXCEPT
              Datamodule1.ADOConnection1.RollbackTrans;
              MessageDlg('No se  puede  grabar  la admision del paciente', mtInformation, [mbOk], 0);
    END;
    frmAdminsiones.Close;
  end;

  IF ADOTable1.FieldValues['Bloquea_Fecha_admi'] = 'S' Then DateTimePicker2.Enabled := False
  ELSE DateTimePicker2.Enabled := True;
end;

function TfrmAdminsiones.Cantidad: double;
var Cad : string;
begin
 Cad := pchar(DataModule1.ADOQuery1.Fields.FieldByName('EMPRESA_TRABAJA').AsString+'%');
 ADOQuery1.Close;
 ADOQuery1.SQL.Clear;
 ADOQuery1.sql.Add('SELECT MAX(No_Admision) AS No_Admision  FROM SAAdmisiones');
 ADOQuery1.sql.Add('WHERE No_Admision Like '''+Cad+'''');
// ADOQuery1.sql.Add(' ORDER BY No_Admision');
 ADOQuery1.Open;
 ADOQuery1.Last;
 IF ADOQuery1.FieldValues['No_Admision'] <> NULL then
 Begin
   IF ADOQuery1.RecordCount > 0 Then Cantidad := strtoint(ADOQuery1.FieldValues['No_Admision']) +1
   Else Cantidad:=strtoint(DataModule1.ADOQuery1.Fields.FieldByName('EMPRESA_TRABAJA').AsString+alineardatos('1',6));
 end
 else begin
   Cantidad:=strtoint(DataModule1.ADOQuery1.Fields.FieldByName('EMPRESA_TRABAJA').AsString+alineardatos('1',6));
 end;
end;

procedure TfrmAdminsiones.DBLookupComboBox9Exit(Sender: TObject);
begin
       DatamoduloAdmision.qryCiudad.Close;
       DatamoduloAdmision.qryCiudad.Open;
end;

procedure TfrmAdminsiones.DBLookupComboBox11Enter(Sender: TObject);
begin
  DBLookupComboBox11.KeyValue := DBLookupComboBox11.ListSource.DataSet.FieldValues[DBLookupComboBox11.KeyField];
end;

procedure TfrmAdminsiones.DBLookupComboBox14Enter(Sender: TObject);
begin
  DBLookupComboBox14.KeyValue := DBLookupComboBox14.ListSource.DataSet.FieldValues[DBLookupComboBox14.KeyField];
end;

procedure TfrmAdminsiones.DBLookupComboBox15Enter(Sender: TObject);
begin
  DBLookupComboBox15.KeyValue := DBLookupComboBox15.ListSource.DataSet.FieldValues[DBLookupComboBox15.KeyField];
end;

procedure TfrmAdminsiones.DBLookupComboBox1Enter(Sender: TObject);
begin
  DBLookupComboBox1.KeyValue := DBLookupComboBox1.ListSource.DataSet.FieldValues[DBLookupComboBox1.KeyField];
end;

procedure TfrmAdminsiones.DBLookupComboBox2Enter(Sender: TObject);
begin
  DBLookupComboBox2.KeyValue := DBLookupComboBox2.ListSource.DataSet.FieldValues[DBLookupComboBox2.KeyField];
end;

procedure TfrmAdminsiones.DBLookupComboBox5Enter(Sender: TObject);
begin
  DBLookupComboBox5.KeyValue := DBLookupComboBox5.ListSource.DataSet.FieldValues[DBLookupComboBox5.KeyField];
end;

procedure TfrmAdminsiones.DBLookupComboBox6Enter(Sender: TObject);
begin
  DBLookupComboBox6.KeyValue := DBLookupComboBox6.ListSource.DataSet.FieldValues[DBLookupComboBox6.KeyField];
end;

procedure TfrmAdminsiones.DBLookupComboBox7Enter(Sender: TObject);
begin
  DBLookupComboBox7.KeyValue := DBLookupComboBox7.ListSource.DataSet.FieldValues[DBLookupComboBox7.KeyField];
end;

procedure TfrmAdminsiones.DBLookupComboBox8Enter(Sender: TObject);
begin
  DBLookupComboBox8.KeyValue := DBLookupComboBox8.ListSource.DataSet.FieldValues[DBLookupComboBox8.KeyField];
end;

procedure TfrmAdminsiones.DBLookupComboBox8Exit(Sender: TObject);
begin
IF DBLookupComboBox8.Text <> '' THEN
BEGIN
     DatamoduloAdmision.QryCamas.Close;
     DatamoduloAdmision.QryCamas.Parameters[0].Value :=  DBLookupComboBox7.KeyValue;
     DatamoduloAdmision.QryCamas.Parameters[1].Value :=  DBLookupComboBox8.KeyValue;
     DatamoduloAdmision.QryCamas.open;
END;
end;

procedure TfrmAdminsiones.RadioGroup1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex = 0 then
begin
DBLookupComboBox9.Enabled := false;
DBLookupComboBox3.Enabled := false;
DBLookupComboBox10.Enabled := false;
end;

if RadioGroup1.ItemIndex = 1 then
begin
DBLookupComboBox9.Enabled := true;
DBLookupComboBox3.Enabled := true;
DBLookupComboBox10.Enabled := true;
end;

end;

function TfrmAdminsiones.validardatos: Boolean;
begin
validardatos := false;

 if DBLookupComboBox1.text = '' then
 begin
   MessageDlg('Seleccione  el tipo de Admision', mtInformation, [mbOk], 0);
   DBLookupComboBox1.SetFocus;
   exit;
 end;

 if DBLookupComboBox14.text = '' then
 begin
   MessageDlg('Seleccione el Centro de Costo', mtInformation, [mbOk], 0);
   DBLookupComboBox14.SetFocus;
   exit;
 end;

 if DBLookupComboBox2.text = '' then
 begin
   MessageDlg('Seleccione  el  Medico Tratante', mtInformation, [mbOk], 0);
   DBLookupComboBox2.SetFocus;
   exit;
 end;

 if DBLookupComboBox6.text = '' then
 begin
   MessageDlg('Seleccione  el tipo de consulta', mtInformation, [mbOk], 0);
   DBLookupComboBox6.SetFocus;
   exit;
 end;

 if DBLookupComboBox7.text = '' then
 begin
   MessageDlg('Seleccione  el tipo de  consultorio', mtInformation, [mbOk], 0);
   DBLookupComboBox7.SetFocus;
   exit;
 end;

 if DBLookupComboBox8.text = '' then
 begin
   MessageDlg('Seleccione  la  seccion ', mtInformation, [mbOk], 0);
   DBLookupComboBox8.SetFocus;
   exit;
 end;

 if DBLookupComboBox5.text = '' then
 begin
   MessageDlg('Seleccione la cama  o  silla', mtInformation, [mbOk], 0);
   DBLookupComboBox5.SetFocus;
   exit;
 end;

  if DBLookupComboBox11.text = '' then
   begin
     MessageDlg('Entidad responsable Cuenta', mtInformation, [mbOk], 0);
     DBLookupComboBox11.SetFocus;
     exit;
   end;

 if RadioGroup1.ItemIndex = 1 then
 begin

   if DBLookupComboBox9.text = '' then
   begin
   MessageDlg('Seleccione El departamento  donde es remitido el paciente', mtInformation, [mbOk], 0);
   DBLookupComboBox9.SetFocus;
   exit;
   end;

   if DBLookupComboBox10.text = '' then
   begin
   MessageDlg('Seleccione El Municipio  donde es remitido el paciente', mtInformation, [mbOk], 0);
   DBLookupComboBox10.SetFocus;
   exit;
   end;

   if DBLookupComboBox3.text = '' then
   begin
   MessageDlg('Seleccione El Hospital  o  clinica donde es remitido el paciente', mtInformation, [mbOk], 0);
   DBLookupComboBox3.SetFocus;
   exit;
   end;

 end;



validardatos := true;

end;

procedure TfrmAdminsiones.VerificarSiEstaAdmitido;
Var mem:string;
begin
 IF (DBLookupComboBox4.Text <> '') AND (trim(Edit1.Text) <> '') Then
 Begin
  QrySA_Pacientes.Close;
  qrySA_Pacientes.Parameters[0].Value := DBLookupComboBox4.KeyValue;
  qrySA_Pacientes.Parameters[1].Value := trim(Edit1.Text);
  qrySA_Pacientes.Open;
  if qrySA_Pacientes.RecordCount <> 0 then
  begin
    ADOQuery2.Close;
    ADOQuery2.Parameters.ParamValues['TPUSU']:=DBLookupComboBox4.KeyValue;
    ADOQuery2.Parameters.ParamValues['NRUSU']:=trim(Edit1.Text);
    ADOQuery2.Open;
    IF ADOQuery2.RecordCount <> 0 then
    Begin
      mem:= '';
      ADOQuery2.First;
      While NOT ADOQuery2.Eof DO
      Begin
        mem := mem + ADOQuery2.FieldValues['No_Admision']+', ';
        ADOQuery2.Next;
      End;
      if ADOTable1.FieldValues['MultiplesAdmisiones']  = 'N' then Close;
      if (MessageBox(0, 'El paciente ya se encuentra admitido.  Si usted graba esta admisión quedarán activas varias hasta su egreso. ¿Desea cancelar la operación?', 'Cuidado!', MB_ICONWARNING or MB_YESNO or MB_DEFBUTTON1) =MrYes) then
          Close;
      dbLookUpComboBox1.SetFocus;

    END;

    //IF qrySA_Pacientes.FieldValues['FOTO_PACIENTE'] <> '' then
    //  IF FileExists(qrySA_Pacientes.FieldValues['FOTO_PACIENTE']) then Image1.Picture.LoadFromFile(qrySA_Pacientes.FieldValues['FOTO_PACIENTE']);
    Edit2.Text :=  TRiM(qrySA_Pacientes.FieldValues['PRIMER_APELLIDO']) + ' '+ TRIM(qrySA_Pacientes.FieldValues['SEGUNDO_APELLIDO']) + ' '+ TRIM(qrySA_Pacientes.FieldValues['PRIMER_NOMBRE']) + ' '+ TRIM(qrySA_Pacientes.FieldValues['SEGUNDO_NOMBRE']);

    //*****************************************
    //  BUSCAR  SI TIENE  CITAS  EL DIA  DE HOY
    //*****************************************
    QryCitasMedicas.Close;
    QryCitasMedicas.Parameters[0].Value := DBLookupComboBox4.KeyValue;
    QryCitasMedicas.Parameters[1].Value := trim(Edit1.Text);
    QryCitasMedicas.Open;
    if QryCitasMedicas.RecordCount <> 0 then
    begin
      if MessageDlg('El paciente  tiene  una  cita para el dia  de hoy  por '+ QryCitasMedicasTIPO_CONSULTA.Value + ' ¿ Esta  cumpliendo  esta ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        DBLookupComboBox9.Enabled := false;
        DBLookupComboBox3.Enabled := false;
        DBLookupComboBox10.Enabled := false;
        DBLookupComboBox5.KeyValue := QryCitasMedicasCD_CAMA.Value;
        DBLookupComboBox2.KeyValue  :=  QryCitasMedicasNR_IDENT_MEDICO.Value;
        DBLookupComboBox6.KeyValue  :=  QryCitasMedicasTIPO_CONSULTA.Value;
        DBLookupComboBox7.KeyValue  :=  QryCitasMedicasCD_TIPO.Value;
        DBLookupComboBox8.KeyValue  :=  QryCitasMedicasCD_SECCION.Value;
        DatamoduloAdmision.QryCamas.Close;
        DatamoduloAdmision.QryCamas.Parameters[0].Value :=  QryCitasMedicasCD_TIPO.Value;
        DatamoduloAdmision.QryCamas.Parameters[1].Value :=  QryCitasMedicasCD_SECCION.Value;
        DatamoduloAdmision.QryCamas.open;
        DBLookupComboBox5.KeyValue := QryCitasMedicasCD_CAMA.Value;
        if DBLookupComboBox5.text <>'' then DBLookupComboBox5.Enabled := false;
        if DBLookupComboBox2.text <>'' then DBLookupComboBox2.Enabled := false;
        if DBLookupComboBox6.text <>'' then DBLookupComboBox6.Enabled := false;
        if DBLookupComboBox7.text <>'' then DBLookupComboBox7.Enabled := false;
        if DBLookupComboBox8.text <>'' then DBLookupComboBox8.Enabled := false;
        if DBLookupComboBox1.text <>'' then DBLookupComboBox1.Enabled := false;
        DBLookupComboBox9.KeyValue := qrySA_Pacientes.FieldValues['COD_DEPARTAMENTO'];
        DatamoduloAdmision.qryCiudad.Close;
        DatamoduloAdmision.qryCiudad.Open;
        DBLookupComboBox10.KeyValue := qrySA_Pacientes.FieldValues['COD_MUNICIPIO'];
      END;
    END;
    //**********************************************
  END
  ELSE BEGIN
    DBLookupComboBox4.SetFocus;
    frmingresopacientes := tfrmingresopacientes.create(application);
    frmingresopacientes.DBLookupComboBox4.KeyValue := DBLookupComboBox4.KeyValue;
    frmingresopacientes.Edit1.Text := Edit1.Text;
    try
      Datamodule1.MuestraconAcceso(frmingresopacientes);
      frmingresopacientes.Edit1.SetFocus;
    except
      frmingresopacientes.free;
    end;
  end;
 End;

end;

procedure TfrmAdminsiones.SpeedButton1Click(Sender: TObject);
begin
  frmingresopacientes := tfrmingresopacientes.create(application);
  try
    Datamodule1.MuestraconAcceso(frmingresopacientes);
  except
    frmingresopacientes.free;
  end;
  Edit1.setfocus;
end;

procedure TfrmAdminsiones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action :=  caFree;
end;

procedure TfrmAdminsiones.BitBtn4Click(Sender: TObject);
Var
  xx,xx2:String;
begin
  xx:= InputBox('Buscar por Apellido', 'Apellido', 'NN');
  IF xx='NN' Then Exit;
  xx2:= InputBox('Buscar por Nombre', 'Nombre', 'NN');
  IF xx2='NN' Then Exit;

  ReporteadorP(MainForm.Caption,'SELECT * FROM SAPacientes WHERE PRIMER_APELLIDO LIKE '+chr(39)+'%'+xx+'%'+chr(39)+' AND PRIMER_NOMBRE LIKE '+chr(39)+'%'+xx2+'%'+chr(39),'');
end;

procedure TfrmAdminsiones.BitBtn2Click(Sender: TObject);
Var
  xx:String;
begin
  xx:= InputBox('Buscar por Palabra Intermedia', 'Palabra', 'NN');
  IF xx='NN' Then Exit;

  ReporteadorP(MainForm.Caption,'SELECT * FROM Comunes..GEDiagnosticos WHERE NOM_DIAGNSOTICO LIKE '+chr(39)+'%'+xx+'%'+chr(39),'');
end;

procedure TfrmAdminsiones.BitBtn2Exit(Sender: TObject);
begin
  DatamoduloAdmision.QryDignosticos.Close;
  DatamoduloAdmision.QryDignosticos.Open;
end;

procedure TfrmAdminsiones.ClientSocket1Read(Sender: TObject;
  Socket: TCustomWinSocket);
var
  strIn: string;
//  Stream: TMemoryStream;
//  nReceived: Integer;
begin
  case CliStatus of
    // look for data to receive
    csIdle:
    begin
      Socket.ReceiveBuf (Buffer, 5);
      strIn := Copy (Buffer, 1, 5);
      if strIn = 'RCOMP' then
        CliStatus := csText
      else if strIn = 'BITM!' then
        CliStatus := csBitmap
      else if strIn = 'LIST!' then
        CliStatus := csList
      else if strIn = 'ERROR' then
        CliStatus := csError;
    end;

    // show the messages (might actually not be an error)
    csError:
    begin
      ShowMessage (Socket.ReceiveText);
      cliStatus := csIdle;
    end;
    // get a directory listing
    csList:
    begin
     // ListFiles.Items.Text := Socket.ReceiveText;
      cliStatus := csIdle;
    end;
    // read a text file
    csText:
    begin
      cliStatus := csIdle;
    end;
    // read a bitmap file
    csBitmap:
 end; // case
end;

procedure TfrmAdminsiones.DataSource5DataChange(Sender: TObject;
  Field: TField);
begin
  if DBLookupComboBox14.Focused then DBLookupComboBox15.KeyValue := DBLookupComboBox14.KeyValue
  else DBLookupComboBox14.KeyValue := DBLookupComboBox15.KeyValue;
end;

procedure TfrmAdminsiones.BtnBuscarClick(Sender: TObject);
var i : integer;
begin
  QryGeneralDiag.Close;
  QryGeneralDiag.SQL.Clear;
  QryGeneralDiag.SQL.Add('Select top(30)*');
  QryGeneralDiag.SQL.Add('from GEDiagnosticos');
  QryGeneralDiag.SQL.Add('where NOM_DIAGNSOTICO LIKE '''+'%'+EditPalabra.Text+'%'+'''');
  QryGeneralDiag.SQL.Add('and Estado = ''A''');
  QryGeneralDiag.SQL.Add('order by NOM_DIAGNSOTICO');
  QryGeneralDiag.Open;

  LimpiaGrilla(SGDatos, 4);
  i := 1;
  while not QryGeneralDiag.Eof do
    begin
      SGDatos.Cells[1,i] := QryGeneralDiag.Fields.FieldByName('Cod_diagnostico').AsString;
      SGDatos.Cells[2,i] := QryGeneralDiag.Fields.FieldByName('NOM_DIAGNSOTICO').AsString;
      QryGeneralDiag.Next;
      inc(i);
    end;
  SGDatos.RowCount  := i + 1;
end;

procedure TfrmAdminsiones.LimpiaGrilla(Grilla : TStringGrid; Col : Integer);
var i, e : Integer;
begin
  i := 1;
  while i < Grilla.RowCount do
    begin
      e := 0;
      while e <= Col do
        begin
          Grilla.Cells[e, i] := '';
          inc(e);
        end;
      inc(i);
    end;
  Grilla.RowCount  := 2;
end;


procedure TfrmAdminsiones.BitBtn5Click(Sender: TObject);
begin
  SGDatos.Cells[1,0] := 'Código';
  SGDatos.Cells[2,0] := 'Descripción';

  if PnlBusca.Height = 0 then
    begin
      LimpiaGrilla(SGDatos, 3);
      PnlBusca.Height   := 200;
      EditPalabra.Text     := '';
      EditPalabra.SetFocus;
    end
  else
    PnlBusca.Height  := 0;
end;

procedure TfrmAdminsiones.SGDatosDblClick(Sender: TObject);
begin
  EditDiagING.Text        := SGDatos.Rows[SGDatos.Row].Strings[1];
  Edit6.Text        := SGDatos.Rows[SGDatos.Row].Strings[2];
  PnlBusca.Height  := 0;
end;

procedure TfrmAdminsiones.EditDiagINGExit(Sender: TObject);
begin
  if EditDiagING.Text <> '' then
    begin
      QryGeneralDiag.Close;
      QryGeneralDiag.SQL.Clear;
      QryGeneralDiag.SQL.Add('Select *');
      QryGeneralDiag.SQL.Add('from GEDiagnosticos');
      QryGeneralDiag.SQL.Add('where Cod_DIAGNOsTICO = '''+EditDiagING.Text+'''');
      QryGeneralDiag.SQL.Add('and Estado = ''A''');
      QryGeneralDiag.SQL.Add('order by NOM_DIAGNSOTICO');
      QryGeneralDiag.Open;

      if not QryGeneralDiag.Eof then
        begin
          Edit6.Text  := QryGeneralDiag.Fields.FieldByName('NOM_DIAGNSOTICO').AsString;
        end
      else
        begin
          Application.MessageBox('El Código solicitado no fue encontrado','Información',MB_OK+MB_ICONINFORMATION);
          EditDiagING.Text  := '';
          EditDiagING.SetFocus;
        end;
    end;
end;

procedure TfrmAdminsiones.ClientSocket1Error(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
  var ErrorCode: Integer);
begin
  ErrorCode  := 0;
end;

procedure TfrmAdminsiones.BitBtn6Click(Sender: TObject);
var
  InputString: string;
begin
  InputString:= InputBox('Admision', 'Ingrese el Numero Admisión a Modificar:', '');
  DatamoduloAdmision.QryAdmisiones.Close;
  DatamoduloAdmision.QryAdmisiones.Parameters[0].Value := InputString;
  DatamoduloAdmision.QryAdmisiones.Open;
  IF DatamoduloAdmision.QryAdmisiones.RecordCount = 1 Then
  Begin
    IF DatamoduloAdmision.QryAdmisiones.FieldValues['Est_Adminsion'] <> 'F' Then
    Begin
      modifica := true;
      BitBtn6.Font.Style := [fsBold];
      Edit3.Text := InputString;

      DateTimePicker2.DateTime   := DatamoduloAdmision.QryAdmisionesFEC_ADMISION.Value;
      DBLookupComboBox1.KeyValue := DatamoduloAdmision.QryAdmisionesTP_ADMISION.Value;
      DBLookupComboBox4.KeyValue := DatamoduloAdmision.QryAdmisionesTP_IDENT_USUAR.Value;
      Edit1.Text                 := DatamoduloAdmision.QryAdmisionesNR_IDENT_USUAR.Value;
      Edit1Exit(Nil);
      DBLookupComboBox6.KeyValue := DatamoduloAdmision.QryAdmisionesTIP_CONSULTA.Value;
      DBLookupComboBox7.KeyValue := DatamoduloAdmision.QryAdmisionesTIP_CONSULTORIO.Value;
      DBLookupComboBox11.KeyValue :=DatamoduloAdmision.QryAdmisiones.FieldValues['ASEGURADORA'] +DatamoduloAdmision.QryAdmisiones.FieldValues['NO_CONTRATO'];
      DBLookupComboBox8.KeyValue := DatamoduloAdmision.QryAdmisionesTIP_SECCION.Value;
      DBLookupComboBox8Exit(Nil);
      DBLookupComboBox5.KeyValue := DatamoduloAdmision.QryAdmisionesNO_CAMA.Value;
      DBLookupComboBox2.KeyValue := DatamoduloAdmision.QryAdmisionesNR_IDENT_MEDICO.Value;
      DBLookupComboBox3.KeyValue := DatamoduloAdmision.QryAdmisionesMEDICO_HOSPITAL.Value;
      DBLookupComboBox9.KeyValue := DatamoduloAdmision.QryAdmisionesDEP_REMISION.Value;
      DBLookupComboBox9.KeyValue := DatamoduloAdmision.QryAdmisionesMUNICIPIO_REMISION.Value;

      //RadioGroup1.ItemIndex      := DatamoduloAdmision.QryAdmisionesREMITIDO.Value;
      Memo1.Text                 := DatamoduloAdmision.QryAdmisionesOBSERVACIONES.Value;
      DBLookupComboBox1.KeyValue := DatamoduloAdmision.QryAdmisionesEST_ADMINSION.Value;
      EditDiagING.Text           := DatamoduloAdmision.QryAdmisiones.FieldValues['DIAGNOSTICO'];
      EditDiagINGExit(Nil);
      Edit4.Text                 := DatamoduloAdmision.QryAdmisiones.FieldValues['NO_AUTORIZACION'];
      ComboBox1.Text             := DatamoduloAdmision.QryAdmisiones.FieldValues['DURACION'];
      DBLookupComboBox14.KeyValue :=DatamoduloAdmision.QryAdmisiones.FieldValues['CENTRO_COSTO'];
      DBLookupComboBox15.KeyValue :=DatamoduloAdmision.QryAdmisiones.FieldValues['CENTRO_COSTO'];
    End
    Else Begin
      ShowMessage('Admisiones facturadas no pueden ser modificadas.');
    End;
  End;
end;

end.

