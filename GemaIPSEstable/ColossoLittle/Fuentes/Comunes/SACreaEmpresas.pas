unit SACreaEmpresas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ImgList, ToolWin, ExtCtrls, StdCtrls, DBCtrls, Buttons,
  jpeg, Menus, DB, ADODB, ScktComp,Grids, DBGrids, Mask,
  JvExStdCtrls, JvEdit, JvDBSearchEdit;

type
    TFrmIngresoEmpresas = class(TForm)
    OpenDialog1: TOpenDialog;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    ADOQuery4: TADOQuery;
    ADOQTipoRol: TADOQuery;
    DSTipoRol: TDataSource;
    ADOQRolxPer: TADOQuery;
    DSRolxPer: TDataSource;
    ADOQSucursal: TADOQuery;
    DSSucursal: TDataSource;
    PageControl1: TPageControl;
    TabSheet4: TTabSheet;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label1: TLabel;
    Panel3: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn4: TBitBtn;
    DBLookupComboBox4: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    Sucursales: TTabSheet;
    SpeedButton2: TSpeedButton;
    Label38: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label40: TLabel;
    Label39: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBNavigator1: TDBNavigator;
    BitBtn10: TBitBtn;
    DBGrid1: TDBGrid;
    DBLookupComboBox15: TDBLookupComboBox;
    BitBtn11: TBitBtn;
    DBLookupComboBox6: TDBLookupComboBox;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    DBLookupComboBox7: TDBLookupComboBox;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit27: TEdit;
    Edit26: TEdit;
    Edit3: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Edit4: TEdit;
    BitBtn3: TBitBtn;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    TabSheet7: TTabSheet;
    DBGrid2: TDBGrid;
    Roles: TTabSheet;
    Label16: TLabel;
    SpeedButton3: TSpeedButton;
    DBLookupComboBox23: TDBLookupComboBox;
    DBGrid5: TDBGrid;
    DBNavigator4: TDBNavigator;
    BitBtn33: TBitBtn;
    Empre: TTabSheet;
    GroupBox5: TGroupBox;
    Memo1: TMemo;
    DBEdit1: TDBEdit;
    BitBtn7: TBitBtn;
    Label12: TLabel;
    Edit9: TEdit;
    ADOQTerce: TADOQuery;
    Image1: TImage;
    procedure Edit1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    PROCEDURE APPMESSAGE(VAR MSG: TMSG; VAR HANDLED: BOOLEAN);
    procedure BitBtn2Click(Sender: TObject);
    function validardatos : Boolean;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBox10Exit(Sender: TObject);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure Edit13KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit20KeyPress(Sender: TObject; var Key: Char);
    procedure Edit13Exit(Sender: TObject);
    procedure Edit20Exit(Sender: TObject);
    procedure Edit16KeyPress(Sender: TObject; var Key: Char);
    procedure Edit25KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox12Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure Edit27KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Limpiar();
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure DBLookupComboBox15Exit(Sender: TObject);
    procedure DBLookupComboBox6Exit(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Image1DblClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmIngresoEmpresas: TFrmIngresoEmpresas;
  pacanterior:string;

implementation

uses ModuloAdmision, UDataModule1, FActivarInactivar,
  Libreria_PrateincoForm,Libreria_Prateinco ;

{$R *.dfm}

procedure TFrmIngresoEmpresas.Edit1Exit(Sender: TObject);
begin
  if (validacontenido(DBLookupComboBox4.text,'','Tipo Doc Invalido')) then Exit;
  if (validacontenido(Edit1.text,'','Nro Doc Invalido')) then Exit;
  Edit2.SetFocus;
  Edit9.Text := inttostr(DigitoVerificacion(Edit1.Text));

  DatamoduloAdmision.QryEmpresas.Close;
  DatamoduloAdmision.QryEmpresas.Parameters[0].value := DBLookupComboBox4.KeyValue;
  DatamoduloAdmision.QryEmpresas.Parameters[1].value := trim(Edit1.Text);
  DatamoduloAdmision.QryEmpresas.Open;
  if DatamoduloAdmision.QryEmpresas.RecordCount = 1 then
  begin
     //Busca Identificaciones
     ADOQSucursal.Close;
     ADOQSucursal.Parameters.ParamValues['Pide_Persona'] := DatamoduloAdmision.QryEmpresas.FieldValues['idE'];
     ADOQSucursal.Open;
     ADOQSucursal.Open;

     //Busca Identificaciones
     ADOQRolxPer.Close;
     ADOQRolxPer.Parameters.ParamValues['Pide_Persona'] := DatamoduloAdmision.QryEmpresas.FieldValues['idE'];
     ADOQRolxPer.Open;
     ADOQTipoRol.Open;

     Roles.Enabled := True;
     Sucursales.Enabled := True;
     Empre.Enabled := True;

     PageControl1.ActivePageIndex := 0;
     Edit2.Text := campotoedit(DatamoduloAdmision.QryEmpresas.FieldValues['DESCRIPCION_EMP']);
     LeaFieldJPG(DatamoduloAdmision.QryEmpresas,Image1,'LOGO');
     //Image1.Picture.Bitmap.Assign(DatamoduloAdmision.QryEmpresas.FieldByName('LOGO'));
  end
  else begin
     Image1.Picture.Metafile;
     PageControl1.ActivePageIndex := 0;
     Roles.Enabled := False;
     Sucursales.Enabled := False;
     Empre.Enabled := False;
     limpiar();
  end;
end;

procedure TFrmIngresoEmpresas.FormCreate(Sender: TObject);
begin
  APPLICATION.ONMESSAGE := APPMESSAGE;
  PageControl1.ActivePageIndex := 0;
  Image1.Picture.Metafile;
end;

procedure TFrmIngresoEmpresas.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if x < 15 then
  Begin
    colocamenu(frmIngresoEmpresas,'SEEmpresas');
  End;
end;

procedure TFrmIngresoEmpresas.APPMESSAGE(var MSG: TMSG;
  var HANDLED: BOOLEAN);
begin
{IF MSG.WPARAM = VK_RETURN THEN
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
       END;}
end;

procedure TFrmIngresoEmpresas.BitBtn20Click(Sender: TObject);
begin
  Captura('GEEstados_Civiles','');
end;

procedure TFrmIngresoEmpresas.BitBtn21Click(Sender: TObject);
begin
  Captura('GESexo','');
end;

procedure TFrmIngresoEmpresas.Limpiar();
begin
  //DBLookupComboBox11.KeyValue := '';
  Edit2.Text := '';
end;

procedure TFrmIngresoEmpresas.BitBtn2Click(Sender: TObject);
begin
  DBLookupComboBox4.KeyValue := '';
  Edit1.Text := '';
  limpiar();
  DBLookupComboBox4.SetFocus;
  PageControl1.ActivePageIndex := 0;
end;

function TFrmIngresoEmpresas.validardatos: Boolean;
begin
  validardatos := false;

  if (validacontenido(DBLookupComboBox4.text,'','Tipo Doc Invalido')) then DBLookupComboBox4.SetFocus
  else if (validacontenido(Edit1.text,'','Nro Doc Invalido')) then Edit1.SetFocus
  else if (validacontenido(Edit2.text,'','Primer Apellido Invalido')) then Edit2.SetFocus
  else if (validacontenido(Edit1.text,'','Nro Doc Invalido')) then Edit1.SetFocus
  //else if (validacontenido(DateTimePicker1.Date,0,'Tipo Doc Invalido')) then DateTimePicker1.SetFocus
  else validardatos := true;
end;

procedure TFrmIngresoEmpresas.BitBtn11Click(Sender: TObject);
begin
  Captura('GEPaises','');
end;

procedure TFrmIngresoEmpresas.BitBtn12Click(Sender: TObject);
begin
  Captura('GEDepartamentos','');
end;

procedure TFrmIngresoEmpresas.BitBtn13Click(Sender: TObject);
begin
  Captura('GEMunicipios','');
end;

procedure TFrmIngresoEmpresas.BitBtn14Click(Sender: TObject);
begin
  Captura('GEPaises','');
end;

procedure TFrmIngresoEmpresas.BitBtn15Click(Sender: TObject);
begin
  Captura('GEZona','');
end;

procedure TFrmIngresoEmpresas.BitBtn16Click(Sender: TObject);
begin
  Captura('SEEmpresas','');
end;

procedure TFrmIngresoEmpresas.BitBtn17Click(Sender: TObject);
begin
  Captura('GETipoAfiliado','');
end;

procedure TFrmIngresoEmpresas.BitBtn18Click(Sender: TObject);
begin
  Captura('GERegimen','');
end;

procedure TFrmIngresoEmpresas.BitBtn19Click(Sender: TObject);
begin
  Captura('GESexo','');
end;

procedure TFrmIngresoEmpresas.BitBtn1Click(Sender: TObject);
begin
   if validardatos = TRUE then
   begin
     Datamodule1.ADOConnection1.BeginTrans;
     DatamoduloAdmision.QryEmpresas.Close;
     DatamoduloAdmision.QryEmpresas.Parameters[0].value := DBLookupComboBox4.KeyValue;
     DatamoduloAdmision.QryEmpresas.Parameters[1].value := trim(Edit1.Text);
     DatamoduloAdmision.QryEmpresas.Open;
     if DatamoduloAdmision.QryEmpresas.RecordCount = 0  then
     begin
       DatamoduloAdmision.QryEmpresas.Insert;
       DatamoduloAdmision.QryEmpresas.FieldValues['TP_DOCUMENTO'] := DBLookupComboBox4.KeyValue;
       DatamoduloAdmision.QryEmpresas.FieldValues['NR_DOCUMENTO'] := TRIM(Edit1.Text);
     end
     else begin
       DatamoduloAdmision.QryEmpresas.Edit;
     end;
     DatamoduloAdmision.QryEmpresas.FieldValues['DESCRIPCION_EMP']  := TRIM(Edit2.Text);
     SalveFieldJPG(DatamoduloAdmision.QryEmpresas,Image1,'LOGO');
     //DatamoduloAdmision.QryEmpresas.FieldByName('LOGO').Assign(Image1.Picture.Bitmap);
     DatamoduloAdmision.QryEmpresas.FieldValues['Observaciones']      := '';
     DatamoduloAdmision.QryEmpresas.FieldValues['Autoretenedor']      := true;
     DatamoduloAdmision.QryEmpresas.FieldValues['Estado']             := 'A';
     DatamoduloAdmision.QryEmpresas.Post;

     Edit1Exit(nil);

     Datamodule1.ADOConnection1.CommitTrans;
     MessageDlg('Los datos de la Empresa fueron grabados satisfactoriamente', mtInformation	,[mbOk], 0);
   end;
end;

procedure TFrmIngresoEmpresas.DBLookupComboBox10Exit(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
end;

procedure TFrmIngresoEmpresas.Edit8KeyPress(Sender: TObject;
  var Key: Char);
begin
  key:=validanumero(key);
end;

procedure TFrmIngresoEmpresas.Edit13KeyPress(Sender: TObject;
  var Key: Char);
begin
  key:=validanumero(key);
end;

procedure TFrmIngresoEmpresas.DateTimePicker1KeyPress(Sender: TObject;
  var Key: Char);
begin
  key:=validanumero(key);
end;

procedure TFrmIngresoEmpresas.Edit20KeyPress(Sender: TObject;
  var Key: Char);
begin
  key:=validanumero(key);
end;

procedure TFrmIngresoEmpresas.Edit13Exit(Sender: TObject);
begin
PageControl1.ActivePageIndex := 1;
end;

procedure TFrmIngresoEmpresas.Edit20Exit(Sender: TObject);
begin
PageControl1.ActivePageIndex := 2;
end;

procedure TFrmIngresoEmpresas.Edit16KeyPress(Sender: TObject;
  var Key: Char);
begin
  key:=validanumero(key);
end;

procedure TFrmIngresoEmpresas.Edit25KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key:=validanumero(key);
end;

procedure TFrmIngresoEmpresas.Edit27KeyPress(Sender: TObject; var Key: Char);
begin
  Key:=validanumero(key);
end;

procedure TFrmIngresoEmpresas.DBLookupComboBox12Exit(Sender: TObject);
begin
BitBtn1.setfocus;
end;

procedure TFrmIngresoEmpresas.DBLookupComboBox15Exit(Sender: TObject);
begin
  DatamoduloAdmision.qryGE_DepartamentosN.Close;
  DatamoduloAdmision.qryGE_DepartamentosN.Parameters.ParamValues['CDPais'] := DBLookupComboBox15.KeyValue;
  DatamoduloAdmision.qryGE_DepartamentosN.Open;
end;

procedure TFrmIngresoEmpresas.DBLookupComboBox6Exit(Sender: TObject);
begin
  DatamoduloAdmision.qryCiudadN.Close;
  DatamoduloAdmision.qryCiudadN.Parameters.ParamValues['CD_Departamento'] := DBLookupComboBox6.KeyValue;
  DatamoduloAdmision.qryCiudadN.Parameters.ParamValues['CDPais'] := DBLookupComboBox15.KeyValue;
  DatamoduloAdmision.qryCiudadN.Open;
end;

procedure TFrmIngresoEmpresas.FormActivate(Sender: TObject);
begin
  top := 0;
  Left := 0;
  PageControl1.ActivePageIndex := 0;

  DatamoduloAdmision.QryCiudad.Open;
  DatamoduloAdmision.QryCiudadN.Open;
  DatamoduloAdmision.QryParentesco.Open;
  DatamoduloAdmision.QryRegimen.Open;
  DatamoduloAdmision.QrySexo.Open;
  DatamoduloAdmision.qryGE_Departamentos.Open;
  DatamoduloAdmision.qryGE_DepartamentosN.Open;
  DatamoduloAdmision.QryTipodocumento.Open;
  DatamoduloAdmision.QryNacionalidad.Open;
  DatamoduloAdmision.QryAseguradora.Open;
  DatamoduloAdmision.QryTipoAfiliado.Open;
  DatamoduloAdmision.qryEstadosCiviles.Open;
  DatamoduloAdmision.QryGrupoEtnico.Open;
  DatamoduloAdmision.QryZona.Open;
  DatamoduloAdmision.qryOcupacion.Open;
  DatamoduloAdmision.QPaises.Open;
  DatamoduloAdmision.QPaisesN.Open;
  DatamoduloAdmision.QryTipoDoc2.Open;
end;

procedure TFrmIngresoEmpresas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DatamoduloAdmision.QryCiudad.Close;
  DatamoduloAdmision.QryCiudadN.Close;
  DatamoduloAdmision.QryParentesco.Close;
  DatamoduloAdmision.QryRegimen.Close;
  DatamoduloAdmision.QrySexo.Close;
  DatamoduloAdmision.qryGE_Departamentos.Close;
  DatamoduloAdmision.qryGE_DepartamentosN.Close;
  DatamoduloAdmision.QryTipodocumento.Close;
  DatamoduloAdmision.QryNacionalidad.Close;
  DatamoduloAdmision.QryAseguradora.Close;
  DatamoduloAdmision.QryTipoAfiliado.Close;
  DatamoduloAdmision.qryEstadosCiviles.Close;
  DatamoduloAdmision.QryGrupoEtnico.Close;
  DatamoduloAdmision.QryZona.Close;
  DatamoduloAdmision.qryOcupacion.Close;
  DatamoduloAdmision.QPaises.Close;
  DatamoduloAdmision.QPaisesN.Close;
  DatamoduloAdmision.QryTipoDoc2.Close;

    Action := caFree;
end;

procedure TFrmIngresoEmpresas.FormShow(Sender: TObject);
begin
  DatamoduloAdmision.QryTipodocumento.Close;
  DatamoduloAdmision.QryTipodocumento.Open;
end;

procedure TFrmIngresoEmpresas.Image1DblClick(Sender: TObject);
begin
  opendialog1.Title:='Buscar Foto';
  opendialog1.DefaultExt:='*.bmp';
  opendialog1.Execute;
  if opendialog1.FileName <> '' then
  BEGIN
    Image1.Picture.LoadFromFile(opendialog1.FileName);
    //RedimensionarImagen(Image1.Picture.Bitmap, Image1.Width,Image1.Height);
  END;
end;

procedure TFrmIngresoEmpresas.SpeedButton2Click(Sender: TObject);
begin
  ADOQSucursal.Append;
  ADOQSucursal.FieldValues['idE']:=DatamoduloAdmision.qryEmpresas.FieldValues['idE'];
  ADOQSucursal.FieldValues['Codigo']:=Edit3.Text;
  ADOQSucursal.FieldValues['Descripcion']:=Edit13.Text;
  ADOQSucursal.FieldValues['CD_Pais']:=DBLookupComboBox15.KeyValue;
  ADOQSucursal.FieldValues['CD_Departamento']:=DBLookupComboBox6.KeyValue;
  ADOQSucursal.FieldValues['CD_Municipio']:=DBLookupComboBox7.KeyValue;
  ADOQSucursal.FieldValues['Direccion']:=Edit7.Text;
  ADOQSucursal.FieldValues['Telefono']:=Edit8.Text;
  ADOQSucursal.FieldValues['Celular']:=Edit27.Text;
  ADOQSucursal.FieldValues['Fax']:=Edit6.Text;
  ADOQSucursal.FieldValues['EMail']:=Edit26.Text;
  if Edit14.Text <> '' then ADOQSucursal.FieldValues['Id_Encargado']:=strtoint(Edit14.Text);
  ADOQSucursal.FieldValues['Prefijo']:=Edit10.Text;
  if Edit11.Text <> '' then ADOQSucursal.FieldValues['Consecutivo']:=strtoint(Edit11.Text);
  ADOQSucursal.FieldValues['Codigo_Salud']:=Edit12.Text;
  ADOQSucursal.Post;

  if (BDBuscar('SELECT * FROM CONTTerce WHERE idE = '+inttostr(DatamoduloAdmision.qryEmpresas.FieldValues['idE'])+' AND Sucursal = '+chr(39)+Edit3.Text+chr(39) ,'idE','idE') = 'ERROR: No hay registros para esta selección') then
  Begin
    ADOQTerce.Open;
    ADOQTerce.Append;
    ADOQTerce.FieldValues['idE']:=DatamoduloAdmision.qryEmpresas.FieldValues['idE'];
    ADOQTerce.FieldValues['Sucursal']:=Edit3.Text;
    ADOQTerce.FieldValues['Estado']:='A';
    ADOQTerce.FieldValues['Nombre']:=TRIM(Edit13.Text);
    ADOQTerce.Post;
    ADOQTerce.Close;
  End;
end;

procedure TFrmIngresoEmpresas.SpeedButton3Click(Sender: TObject);
begin
  ADOQRolxPer.Append;
  ADOQRolxPer.FieldValues['idE']:=DatamoduloAdmision.QryEmpresas.FieldValues['idE'];
  ADOQRolxPer.FieldValues['Tipo_Rol']:=DBLookupComboBox23.KeyValue;
  ADOQRolxPer.Post;
end;

procedure TFrmIngresoEmpresas.BitBtn4Click(Sender: TObject);
begin
  ReporteadorP('Listado de Empresas','SELECT * FROM '+Datamodule1.ADOComunes.DefaultDatabase+'..SEEmpresas','');
  Edit1.SetFocus;
end;

procedure TFrmIngresoEmpresas.Edit2Exit(Sender: TObject);
var porcentaje:integer;
begin
  if pacanterior <> Edit2.text Then
  Begin
    pacanterior := Edit2.text;
    //  Memo1.Lines.Clear;

    ADOQuery4.Open;
    ADOQuery4.First;
    While NOT ADOQuery4.Eof DO
    Begin
      if ADOQuery4.FieldValues['NR_DOCUMENTO'] <> DatamoduloAdmision.QryEmpresas.FieldValues['NR_DOCUMENTO'] then
      begin
        //Busca por nombre
        porcentaje := parecido(Edit2.text,ADOQuery4.FieldValues['Descripcion_Emp']);
        if ADOQuery4.FieldValues['NR_DOCUMENTO'] <> null then
          if (porcentaje > 90) then memo1.Lines.Add(ADOQuery4.FieldValues['NR_DOCUMENTO']+' '+ADOQuery4.FieldValues['Descripcion_Emp']+' '+inttostr(porcentaje)+'%');
      end;

      ADOQuery4.Next;
    End;
    ADOQuery4.Close;
  end;
End;

procedure TFrmIngresoEmpresas.Edit4Exit(Sender: TObject);
begin
  IF Edit4.Text <> '' Then
  Begin
    Edit5.Text := BDBuscar('SELECT *,Primer_Apellido+'' ''+Primer_Nombre as Nom FROM SEPersonas,SEIdentificaciones WHERE SEPersonas.id = SEIdentificaciones.id AND Tipo_Identificacion='+chr(39)+DBLookupComboBox1.KeyValue+chr(39)+' AND No_Identificacion='+chr(39)+trim(Edit4.Text)+chr(39),'Nom','id');
    Edit14.Text := keyBdBuscar;
 End;
end;

procedure TFrmIngresoEmpresas.BitBtn6Click(Sender: TObject);
begin
  FormaAI('SEPersonas');
end;

procedure TFrmIngresoEmpresas.BitBtn7Click(Sender: TObject);
begin
  Captura('GERolEmpresa','');
end;

procedure TFrmIngresoEmpresas.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  ColorGrillas(TDBGrid(Sender),Rect, DataCol, Column, State);
end;

procedure TFrmIngresoEmpresas.DBGrid5DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  ColorGrillas(TDBGrid(Sender),Rect, DataCol, Column, State);
end;

end.

