unit fPaciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,  cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, uADStanIntf, uADPhysManager,
  uADPhysODBCBase, uADPhysMSSQL, cxSplitter, Vcl.ExtCtrls, Vcl.ComCtrls,
  uADStanOption, uADStanParam, uADStanError, uADDatSManager, uADPhysIntf,
  uADDAptIntf, uADStanAsync, uADDAptManager, cxContainer, cxEdit, cxGroupBox,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxTextEdit, Vcl.StdCtrls,
  cxPC, Data.DB, uADCompDataSet, uADCompClient, cxImage, cxMRUEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxSpinEdit, Vcl.Menus,
  cxLabel, cxButtons, Vcl.ImgList, Vcl.DBCtrls, Vcl.OleCtrls, DPFPCtlXLib_TLB,DPFPShrXLib_TLB,jpeg,
  dxPrnDev, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPSCore, cxClasses, dxPrnDlg,  dxPSdxLCLnk;

type
  TfrmPaciente = class(TForm)
    tblPaciente: TADTable;
    dsMun: TDataSource;
    tblPacienteNR_IDENT_USUAR: TStringField;
    tblPacienteTP_IDENT_USUAR: TStringField;
    tblPacienteCCHISTORIA: TStringField;
    tblPacientePRIMER_APELLIDO: TStringField;
    tblPacienteSEGUNDO_APELLIDO: TStringField;
    tblPacientePRIMER_NOMBRE: TStringField;
    tblPacienteSEGUNDO_NOMBRE: TStringField;
    tblPacienteTP_USUARIO: TStringField;
    tblPacienteTP_AFILIADO: TStringField;
    tblPacienteOCUPACION: TStringField;
    tblPacienteGRUPO_AT_ESPECIAL: TStringField;
    tblPacienteSEXO: TStringField;
    tblPacienteLUGAR_NACIMIENT: TStringField;
    tblPacienteNACIONALIDAD: TStringField;
    tblPacienteESTADO_CIVIL: TStringField;
    tblPacienteDIR_CASA_PACIEN: TStringField;
    tblPacienteRESIDENCIA_HABITUAL: TStringField;
    tblPacienteZONA_RESIDENCIA: TStringField;
    tblPacienteTEL_CASA_PACIEN: TStringField;
    tblPacienteEMP_TRABAJO_PAC: TStringField;
    tblPacienteDIR_TRABAJO_PAC: TStringField;
    tblPacienteTEL_TRABAJO_PAC: TStringField;
    tblPacienteTP_CED_RESPONSA: TStringField;
    tblPacienteCEDULA_RESPONSA: TStringField;
    tblPacienteNOMBRE_RESPONDE: TStringField;
    tblPacientePARENTESCO_RESP: TStringField;
    tblPacienteDIR_CASA_RESP: TStringField;
    tblPacienteTEL_CASA_RESP: TStringField;
    tblPacienteEMP_TRABAJO_RES: TStringField;
    tblPacienteDIR_TRABAJO_RES: TStringField;
    tblPacienteTEL_TRABAJO_RES: TStringField;
    tblPacienteNOMBRE_CONYUGUE: TStringField;
    tblPacienteEMP_TRABAJO_CYG: TStringField;
    tblPacienteDIR_TRABAJO_CYG: TStringField;
    tblPacienteTEL_TRABAJO_CYG: TStringField;
    tblPacienteNOMBRE_MADRE: TStringField;
    tblPacienteNOMBRE_PADRE: TStringField;
    tblPacienteCOD_DEPARTAMENTO: TStringField;
    tblPacienteCOD_MUNICIPIO: TStringField;
    tblPacienteFEC_NACIMINETO: TSQLTimeStampField;
    tblPacienteASEGURADORA: TStringField;
    tblPacienteFEC_INGRESO: TSQLTimeStampField;
    tblPacienteCOD_USUARIO: TStringField;
    tblPacienteNO_POLIZA: TStringField;
    tblPacienteEstado: TStringField;
    tblPacienteID: TADAutoIncField;
    pgctrlPaciente: TcxPageControl;
    tbshtPaciente: TcxTabSheet;
    dsPaciente: TDataSource;
    pnlSuperiorPac: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    grpbxDocID: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    grpbxNombreCompleto: TcxGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    dbedtPrimerApellido: TcxDBTextEdit;
    dbedtSegundoApellido: TcxDBTextEdit;
    dbedtPrimerNombre: TcxDBTextEdit;
    dbedtSegundoNombre: TcxDBTextEdit;
    grpbxFoto: TcxGroupBox;
    grpbxBasicos: TcxGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    dbdtFechaNac: TcxDBDateEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    pnlMedioPac: TPanel;
    grpbxDomicilio: TcxGroupBox;
    cmbbxSexo: TcxDBLookupComboBox;
    cmbbxNacionalidad: TcxDBLookupComboBox;
    cmbbxEstadoCivil: TcxDBLookupComboBox;
    cmbbxGrupoEtnico: TcxDBLookupComboBox;
    qryHuella: TADQuery;
    qryMun: TADQuery;
    cmbbxTipoDocID: TcxDBLookupComboBox;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    dbedtDireccionRes: TcxDBTextEdit;
    dbedtTelRes: TcxDBTextEdit;
    Label18: TLabel;
    cmbbxET: TcxDBLookupComboBox;
    cmbbxMun: TcxDBLookupComboBox;
    dbedtLugarNac: TcxDBMRUEdit;
    cmbbxZona: TcxDBLookupComboBox;
    dbedtDocID: TcxDBSpinEdit;
    grpbxTrabajoPac: TcxGroupBox;
    lblOcupacion: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    dbedtDirTrabajoPac: TcxDBTextEdit;
    dbedtTelTrabajoPac: TcxDBTextEdit;
    cmbbxOcupacion: TcxDBLookupComboBox;
    Label19: TLabel;
    dbedtEmpresaPac: TcxDBTextEdit;
    imgListDlg32: TcxImageList;
    pnlBottom: TPanel;
    btnCancelar: TcxButton;
    btnAplicar: TcxButton;
    btnGuardar: TcxButton;
    lblMensaje: TcxLabel;
    pgctrlOtros: TcxPageControl;
    tbshtResponsable: TcxTabSheet;
    tbshtFamilia: TcxTabSheet;
    tbshtSeguro: TcxTabSheet;
    pnlRespTop: TPanel;
    grpbxBasicoResp: TcxGroupBox;
    lblNombreResponsable: TLabel;
    lblParentesco: TLabel;
    lblDocIDResponsable: TLabel;
    dbedtResp: TcxDBTextEdit;
    dbedtDocIDResp: TcxDBTextEdit;
    cmbbxParentesco: TcxDBLookupComboBox;
    grpbxRespDomicilio: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    Label14: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label20: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label23: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label24: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label25: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    pnlPadres: TPanel;
    pnlConyuge: TPanel;
    grpbxPadre: TcxGroupBox;
    Label30: TLabel;
    dbedtPadre: TcxDBTextEdit;
    grpbxMadre: TcxGroupBox;
    Label31: TLabel;
    dbedtMadre: TcxDBTextEdit;
    grpbxConyuge: TcxGroupBox;
    dbedtConyuge: TcxDBTextEdit;
    dbedtDireccionCyge: TcxDBTextEdit;
    dbedtEmpresaCyge: TcxDBTextEdit;
    dbedtTelCyge: TcxDBTextEdit;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    dbdtFechaIngreso: TcxDBDateEdit;
    Label35: TLabel;
    dbedtPoliza: TcxDBTextEdit;
    cmbbxAseguradora: TcxDBLookupComboBox;
    cmbbxNitAseguradora: TcxDBLookupComboBox;
    lblNitAseguradora: TLabel;
    pnlSuperior: TPanel;
    grpbxBuscar: TcxGroupBox;
    cmbbxBuscarTipoDocID: TcxLookupComboBox;
    lblBuscarDocID: TcxLabel;
    btnContinuar: TcxButton;
    pnlHistoria: TPanel;
    lblHistoria: TcxLabel;
    dbedtHistoria: TcxDBTextEdit;
    lblBuscarTipoDocID: TcxLabel;
    dbedtBuscarDocID: TcxSpinEdit;
    tblPacienteFOTO_PACIENTE: TBlobField;
    dbimgFoto: TcxImage;
    tbshtHuella: TcxTabSheet;
    Panel1: TPanel;
    Panel3: TPanel;
    btnGuardarHuellas: TButton;
    DPFPEnrollmentControl: TDPFPEnrollmentControl;
    ADPhysMSSQLDriverLink1: TADPhysMSSQLDriverLink;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAplicarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbimgFotoClick(Sender: TObject);
    procedure btnContinuarClick(Sender: TObject);
    procedure cmbbxETExit(Sender: TObject);
    procedure tblPacienteBeforePost(DataSet: TDataSet);
    procedure btnGuardarClick(Sender: TObject);
    procedure CargarFoto;
    procedure btnGuardarHuellasClick(Sender: TObject);

  private
    FID: integer;
    { Private declarations }
    procedure LlenarListaMunicipios;
    function Encrypt(const sSomeString: string): string;
    procedure SetID(const Value: integer);


  published
  public
    { Public declarations }
    property ID: integer read FID write SetID;



  end;

var
  frmPaciente: TfrmPaciente;
  clientEncryptionKey: string;
   regTemplate: array[0..10] of DPFPShrXLib_TLB.DPFPTemplate;
implementation

{$R *.dfm}

uses dGIPSci, dcomun, WebCamForm, DCPrijndael, DCPsha256;

procedure TfrmPaciente.btnAplicarClick(Sender: TObject);
begin
  inherited;
if (tblPaciente.State = dsEdit) or (tblPaciente.State = dsInsert) then
  tblPaciente.Post;
  tbshtHuella.Enabled:=true;
end;

procedure TfrmPaciente.btnCancelarClick(Sender: TObject);
begin
  inherited;
try
   close;
finally
   release;
end; //finally
end;

procedure TfrmPaciente.btnContinuarClick(Sender: TObject);
begin
  inherited;
  if not dspaciente.DataSet.Active then dspaciente.DataSet.Open;

  if  tblPaciente.Locate('TP_IDENT_USUAR;NR_IDENT_USUAR',VarArrayOf([cmbbxBuscarTipoDocID.EditValue,dbedtBuscarDocID.EditValue])) then
    begin
      LlenarListaMunicipios;
      tblPaciente.Edit;
      CargarFoto;
      tbshtHuella.Enabled:=true;
    end
   else
    begin
      tblPaciente.Append;
      cmbbxTipoDocID.EditValue:=cmbbxBuscarTipoDocID.EditValue;
      dbedtDocID.EditValue:= dbedtBuscarDocID.EditValue;
      dbedtHistoria.EditValue:= trim(cmbbxBuscarTipoDocID.EditValue)+trim(dbedtBuscarDocID.EditValue);
      tbshtHuella.Enabled:=false;
    end;
  grpbxBuscar.visible:=false;
  pnlHistoria.Visible:=true;
  pgctrlPaciente.Visible:=true;
  dbedtPrimerApellido.SetFocus;


end;

procedure TfrmPaciente.btnGuardarClick(Sender: TObject);
begin
  inherited;
 if (tblPaciente.State = dsEdit) or (tblPaciente.State = dsInsert) then
    tblPaciente.Post;
 try
   close;
  finally
     release;
  end; //finally
end;

procedure TfrmPaciente.btnGuardarHuellasClick(Sender: TObject);
  var
  i:Integer;
begin
  if  tblPaciente.FieldValues['CCHISTORIA'] = null Then
  Begin
    MessageDlg('Debe ingresar un paciente primero...', mtError, [mbCancel], 0);
    pgctrlPaciente.ActivePageIndex:=0;
    exit();
  End;

  for i := 0 to 10 do
  if regTemplate[i] <> nil then  //Se revisa que solo los campos que tengan informacion se agregen a la bases de datos
  begin
  //Reviso si existe algun una huella ya registrada
    qryHuella.Close;
    qryHuella.SQL.Clear;
    qryHuella.SQL.Add('Select * from SAFinger where cchistoria = '+chr(39)+tblPaciente.FieldValues['CCHISTORIA']+chr(39)+' AND dedo ='+inttostr(i));
    qryHuella.Open;
    if qryHuella.Eof then
    begin
      qryHuella.Append;
      qryHuella.FieldValues['cchistoria']:=tblPaciente.FieldValues['CCHISTORIA'];
      qryHuella.FieldValues['dedo']:=i;
      qryHuella.FieldValues['Template']:=Encrypt(regTemplate[i].Serialize);
      qryHuella.Post;
    end
    Else Begin
      qryHuella.Edit;
      qryHuella.FieldValues['cchistoria']:=tblPaciente.FieldValues['CCHISTORIA'];
      qryHuella.FieldValues['dedo']:=i;
      qryHuella.FieldValues['Template']:=Encrypt(regTemplate[i].Serialize);
      qryHuella.Post;
    End;
  end;

  pgctrlPaciente.ActivePageIndex := 0;

end;

procedure TfrmPaciente.CargarFoto;
var
AJPEGGraphic: TJPEGImage;
begin
  try
    try
        AJPEGGraphic := TJPEGImage.Create;
        AJPEGGraphic.Assign(tblPaciente.FieldByName('Foto_Paciente'));
        dbimgFoto.Picture.Graphic:=AJPEGGraphic;
 //       dbimgFoto.Properties.GraphicClassName :='TJPEGImage';
     except
 //       dbimgFoto.Properties.GraphicClassName :='TBitmap';
        dbimgFoto.Picture.Bitmap.Assign(tblPaciente.FieldByName('Foto_Paciente'));
    end;
   finally
     inherited;
     AJPEGGraphic.Free;

   end;  //finally

end;

procedure TfrmPaciente.cmbbxETExit(Sender: TObject);
begin
  inherited;
  LlenarListaMunicipios;
end;

procedure TfrmPaciente.dbimgFotoClick(Sender: TObject);
Var
  WebCamF: TWebCamF;
begin
  inherited;
   WebCamF:= TWebCamF.Create(application);
   try

  WebCamF.ShowModal;
  dbimgFoto.Properties.GraphicClassName :='TJPEGImage';
  dbimgFoto.Picture.Bitmap.Assign(WebCamF.image2.Picture.Bitmap);
   Except
     WebCamF.Free;
   end; //except
end;

function TfrmPaciente.Encrypt(const sSomeString: string): string;
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

procedure TfrmPaciente.FormCreate(Sender: TObject);
begin
  if not dspaciente.DataSet.Active then dspaciente.DataSet.Open;
  pgctrlpaciente.ActivePageIndex:=0;
  pgctrlOtros.ActivePageIndex:=0;
  inherited;
end;

procedure TfrmPaciente.LlenarListaMunicipios;
begin
  try
    if qryMun.Active  then qryMun.Close;
       qryMun.SQL.Clear;
       if not varisnull(cmbbxET.EditValue) then
          begin
            qryMun.SQL.Add('select cd_Departamento,cd_Municipio,ds_Municipio from GEMunicipios where cd_departamento='''+cmbbxET.EditValue+'''');
            qryMun.open;
          end;
    except
    end;
end;

procedure TfrmPaciente.SetID(const Value: integer);
begin
  FID := Value;
end;


procedure TfrmPaciente.tblPacienteBeforePost(DataSet: TDataSet);
begin
  inherited;
  tblPaciente.FieldByName('Foto_Paciente').Assign(dbimgFoto.Picture.Graphic);
end;

end.
