unit FCreaTerceros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ImgList, ToolWin, ExtCtrls, StdCtrls, DBCtrls, Buttons,
  jpeg, Menus, DB, ADODB, ScktComp, Grids, DBGrids,Libreria_Prateinco;

type
    TFrmCrearTerceros = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    Label10: TLabel;
    Label11: TLabel;
    Edit7: TEdit;
    Label13: TLabel;
    Label15: TLabel;
    Edit8: TEdit;
    OpenDialog1: TOpenDialog;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    ADOQuery4: TADOQuery;
    GroupBox5: TGroupBox;
    Memo1: TMemo;
    ADOQTerceros: TADOQuery;
    ADOQTTxTerce: TADOQuery;
    DataSource1: TDataSource;
    DataSource3: TDataSource;
    ADOTiter: TADOTable;
    Edit1: TEdit;
    DBLookupComboBox33: TDBLookupComboBox;
    ADOQTT: TADOQuery;
    DataSource2: TDataSource;
    DataSource4: TDataSource;
    ADOTipDoc: TADOQuery;
    Label5: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Label8: TLabel;
    Edit9: TEdit;
    procedure FormCreate(Sender: TObject);
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
    procedure BitBtn6Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn7Click(Sender: TObject);
    procedure Edit9Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCrearTerceros: TFrmCrearTerceros;
  pacanterior:string;
  
implementation

uses ModuloAdmision, UDataModule1, FActivarInactivar,
  CapturaBasica3, Libreria_PrateincoForm;

{$R *.dfm}

procedure TFrmCrearTerceros.FormCreate(Sender: TObject);
begin
  DatamoduloAdmision.qryGE_Departamentos.Open;
  DatamoduloAdmision.QryCiudad.Open;
  ADOTiter.Open;
  ADOTipDoc.Open;
end;

procedure TFrmCrearTerceros.BitBtn2Click(Sender: TObject);
begin
  DBLookupComboBox33.KeyValue := '';
  DBLookupComboBox6.KeyValue := '';
  DBLookupComboBox7.KeyValue := '';
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  Edit5.Text := '';
  Edit7.Text := '';
  Edit8.Text := '';
  Edit1.SetFocus;
end;

function TFrmCrearTerceros.validardatos: Boolean;
begin
  validardatos := false;

  if DBLookupComboBox33.text = '' then
  begin
    MessageDlg('Seleccione  el  tipo documento', mtInformation, [mbOk], 0);
    DBLookupComboBox33.SetFocus;
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

procedure TFrmCrearTerceros.BitBtn1Click(Sender: TObject);
begin
 if validardatos = TRUE then
 begin
   Datamodule1.ADOConnection1.BeginTrans;

   ADOQTerceros.Close;
   ADOQTerceros.Parameters[0].Value := trim(Edit1.Text);
   ADOQTerceros.Parameters[1].Value := trim(Edit9.Text);
   ADOQTerceros.Open;
   if ADOQTerceros.RecordCount = 0  then
   begin
     ADOQTerceros.Insert;
     ADOQTerceros.FieldValues['NUMERO_DOCUMENTO'] := TRIM(Edit1.Text);
     ADOQTerceros.FieldValues['Sucursal'] := TRIM(Edit9.Text);
   end
   else begin
     ADOQTerceros.Edit;
   end;
   ADOQTerceros.FieldValues['TIPO_DOCUMENTO']   := DBLookupComboBox33.KeyValue;
   ADOQTerceros.FieldValues['PRIMER_APELLIDO']  := TRIM(Edit2.Text);
   ADOQTerceros.FieldValues['SEGUNDO_APELLIDO'] := TRIM(Edit3.Text);
   ADOQTerceros.FieldValues['PRIMER_NOMBRE']    := TRIM(Edit4.Text);
   ADOQTerceros.FieldValues['SEGUNDO_NOMBRE']   := TRIM(Edit5.Text);
   ADOQTerceros.FieldValues['DIRECCION']        := TRIM(Edit7.Text);
   ADOQTerceros.FieldValues['TELEFONO']         := TRIM(Edit8.Text);
   ADOQTerceros.FieldValues['COD_DEPARTAMENTO'] := DBLookupComboBox6.KeyValue;
   ADOQTerceros.FieldValues['COD_MUNICIPIO']    := DBLookupComboBox7.KeyValue;
   ADOQTerceros.FieldValues['ESTADO']           := 'A';
   ADOQTerceros.Post;

   Datamodule1.ADOConnection1.CommitTrans;
   MessageDlg('Los datos del tercero fueron grabados satisfactoriamente', mtInformation	,[mbOk], 0);
   BitBtn2.Click;
 end;
end;

procedure TFrmCrearTerceros.DBLookupComboBox6Exit(Sender: TObject);
begin
  DatamoduloAdmision.qryCiudad.Close;
  DatamoduloAdmision.qryCiudad.Open;
End;

procedure TFrmCrearTerceros.Edit8KeyPress(Sender: TObject;
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

procedure TFrmCrearTerceros.Edit9Exit(Sender: TObject);
begin
 if trim(Edit1.text) <> '' then
 begin
   ADOQTerceros.Close;
   ADOQTerceros.Parameters[0].Value := trim(Edit1.Text);
   ADOQTerceros.Parameters[1].Value := trim(Edit9.Text);
   ADOQTerceros.Open;
   if ADOQTerceros.RecordCount = 1 then
   begin
     IF ADOQTerceros.FieldValues['TIPO_DOCUMENTO']   <> NULL THEN BEGIN
        DBlookUpComboBox33.KeyValue := ADOTipDoc.FieldValues['Cod_Tipo']
     END;
     IF ADOQTerceros.FieldValues['PRIMER_APELLIDO']  <> NULL THEN Edit2.Text := ADOQTerceros.FieldValues['PRIMER_APELLIDO'];
     IF ADOQTerceros.FieldValues['SEGUNDO_APELLIDO'] <> NULL THEN Edit3.Text := ADOQTerceros.FieldValues['SEGUNDO_APELLIDO'];
     IF ADOQTerceros.FieldValues['PRIMER_NOMBRE']    <> NULL THEN Edit4.Text := ADOQTerceros.FieldValues['PRIMER_NOMBRE'];
     IF ADOQTerceros.FieldValues['SEGUNDO_NOMBRE']   <> NULL THEN Edit5.Text := ADOQTerceros.FieldValues['SEGUNDO_NOMBRE'];
     DBLookupComboBox6.KeyValue := ADOQTerceros.FieldValues['COD_DEPARTAMENTO'];
     DatamoduloAdmision.qryCiudad.Close;
     DatamoduloAdmision.qryCiudad.Open;
     DBLookupComboBox7.KeyValue := ADOQTerceros.FieldValues['COD_MUNICIPIO'];
     IF ADOQTerceros.FieldValues['DIRECCION']        <> NULL THEN Edit7.Text  := ADOQTerceros.FieldValues['DIRECCION'];
     IF ADOQTerceros.FieldValues['TELEFONO']         <> NULL THEN Edit8.Text  := ADOQTerceros.FieldValues['TELEFONO'];

     ADOQTTxTerce.Close;
     ADOQTTxTerce.Parameters.ParamValues['Doc'] := ADOQTerceros.FieldValues['NUMERO_DOCUMENTO'];
     ADOQTTxTerce.Open;
   end
   else Begin
     Edit2.Text := '';
     Edit3.Text := '';
     Edit4.Text := '';
     Edit5.Text := '';
     Edit7.Text := '';
     Edit8.Text := '';
   End;
 end;
end;

procedure TFrmCrearTerceros.Edit13KeyPress(Sender: TObject;
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

procedure TFrmCrearTerceros.DateTimePicker1KeyPress(Sender: TObject;
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

procedure TFrmCrearTerceros.Edit20KeyPress(Sender: TObject;
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

procedure TFrmCrearTerceros.Edit16KeyPress(Sender: TObject;
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

procedure TFrmCrearTerceros.Edit1Exit(Sender: TObject);
begin
if trim(Edit1.text) <> '' then
 begin
   Edit6.Text := inttostr(DigitoVerificacion(Edit1.Text));
 end;
end;

procedure TFrmCrearTerceros.Edit25KeyPress(Sender: TObject;
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

procedure TFrmCrearTerceros.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TFrmCrearTerceros.DBLookupComboBox12Exit(Sender: TObject);
begin
  BitBtn1.setfocus;
end;

procedure TFrmCrearTerceros.FormActivate(Sender: TObject);
begin
   top := 0;
   Left := 0;
   Edit1.SetFocus;
end;

procedure TFrmCrearTerceros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TFrmCrearTerceros.FormShow(Sender: TObject);
begin
  DatamoduloAdmision.QryTipodocumento.Close;
  DatamoduloAdmision.QryTipodocumento.Open;
end;

procedure TFrmCrearTerceros.BitBtn4Click(Sender: TObject);
begin
  ReporteadorP('Listado de Terceros','SELECT * FROM CONTTerce','');
end;

procedure TFrmCrearTerceros.Edit2Exit(Sender: TObject);
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
      if ADOQuery4.FieldValues['Nombre'] <> null Then
      Begin
        if ADOQuery4.FieldValues['Numero_Documento'] <> ADOQTerceros.FieldValues['Numero_Documento'] then
        begin
          //Busca por nombre
          porcentaje := parecido(Edit2.text+' '+Edit3.text+' '+Edit4.text+' '+Edit5.text,ADOQuery4.FieldValues['Nombre']);
          if (porcentaje > 90) then memo1.Lines.Add(ADOQuery4.FieldValues['Numero_Documento']+' '+ADOQuery4.FieldValues['Nombre']+' '+inttostr(porcentaje)+'%');
        end;
      End;
      ADOQuery4.Next;
    End;
    ADOQuery4.Close;
  end;
End;

procedure TFrmCrearTerceros.BitBtn6Click(Sender: TObject);
begin
  FrmAI := tFrmAI.create(application);
  FrmAI.Edit4.Text:= 'Estado';
  FrmAI.CB1.Items.Add('A');
  FrmAI.CB2.Items.Add('I');
  FrmAI.Edit1.Text:= 'CONTTerce';
  try
    Datamodule1.MuestraconAcceso(FrmAI);
  except
    FrmAI.free;
  end;
end;

procedure TFrmCrearTerceros.Edit1KeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmCrearTerceros.BitBtn7Click(Sender: TObject);
begin
  CapturaB3 := tCapturaB3.create(application);
  CapturaB3.Label11.Caption := 'Tipos de Terceros para un Tercero Especifico'; //Descripción
  CapturaB3.Label1.Caption  := 'CONTTerce';           //Tabla Principal
  CapturaB3.Label2.Caption  := 'A.Numero_Documento';     //Campo Llave Principal
  CapturaB3.Label3.Caption  := 'A.Primer_Apellido+'+chr(39)+' '+chr(39)+'+A.Primer_Nombre';     //Desc Principal
  CapturaB3.Label4.Caption  := 'CONTTiTerc';             //Tabla Secundaria
  CapturaB3.Label5.Caption  := 'B.Tipo_Tercero';         //Campo Llave Secundario
  CapturaB3.Label6.Caption  := 'B.Descripcion';          //Desc Secundario
  CapturaB3.Edit3.Text      := 'CONTTipTercexTerce';   //Tabla Union
  CapturaB3.Edit8.Text      := 'Tercero';       //Llave Union 1
  CapturaB3.Edit9.Text      := 'Tipo_Tercero';           //Llave Union 2
  try
    Datamodule1.MuestraconAcceso(CapturaB3);
  except
    CapturaB3.free;
  end;
end;

end.

