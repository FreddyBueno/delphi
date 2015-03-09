unit fBuscarHuella;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit,
  uADStanIntf, uADStanOption, uADStanParam, uADStanError, uADDatSManager,
  uADPhysIntf, uADDAptIntf, uADStanAsync, uADDAptManager, Vcl.StdCtrls,
  cxDBLabel, cxImage, cxNavigator, cxDBNavigator, Vcl.ImgList, Data.DB,
  uADCompDataSet, uADCompClient, cxTextEdit, cxMaskEdit, cxSpinEdit,
  Vcl.ComCtrls, Vcl.OleCtrls, DPFPCtlXLib_TLB, DPFPEngXLib_TLB,cxGroupBox, DCPsha256, DPFPShrXLib_TLB,
  DCPrijndael,cxLabel, cxButtons,jpeg,
  Vcl.ExtCtrls;

type
  TfrmBuscarHuella = class(TForm)
    pnlBottom: TPanel;
    btnCancelar: TcxButton;
    btnGuardar: TcxButton;
    lblMensaje: TcxLabel;
    gbx: TcxGroupBox;
    rchedtHuella: TRichEdit;
    pnlContent: TPanel;
    cxGroupBox1: TcxGroupBox;
    edtDocID: TcxSpinEdit;
    cxLabel1: TcxLabel;
    btnBuscar: TcxButton;
    qryHuella: TADQuery;
    qryPaciente: TADQuery;
    dsPaciente: TDataSource;
    dsHuella: TDataSource;
    imgListDlg32: TcxImageList;
    pnlPaciente: TPanel;
    cxDBNavigator1: TcxDBNavigator;
    dbimgFoto: TcxImage;
    cxGroupBox3: TcxGroupBox;
    dbedtTipoDocID: TcxDBLabel;
    dbedtDocID: TcxDBLabel;
    cxLabel3: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    cxGroupBox4: TcxGroupBox;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    dbedtSexo: TcxDBLabel;
    dbedtEdad: TcxDBLabel;
    dbedtFechaNac: TcxDBLabel;
    cxGroupBox5: TcxGroupBox;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    dbedtNitAseguradora: TcxDBLabel;
    dbedtNomAseguradora: TcxDBLabel;
    cxGroupBox2: TcxGroupBox;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    dbedtTelResp: TcxDBLabel;
    dbedtResponsable: TcxDBLabel;
    cxGroupBox6: TcxGroupBox;
    dbedtPaciente: TcxDBLabel;
    DPFPVerificationControl: TDPFPVerificationControl;
    procedure btnBuscarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsPacienteDataChange(Sender: TObject; Field: TField);
    procedure btnCancelarClick(Sender: TObject);
    procedure edtDocIDEnter(Sender: TObject);
    procedure DPFPVerificationControlComplete(ASender: TObject;
      const pFeatureSet, pStatus: IDispatch);
  private
    FDocID: string;
    procedure SetDocID(const Value: string);
    { Private declarations }
    procedure CargarFoto;
    function VerifyString(const pFeatureSet: IDispatch;
      const Template: string): boolean;

    function VerifyTemplate(const pFeatureSet: IDispatch;
      const Template: DPFPShrXLib_TLB.DPFPTemplate): boolean;

   function Decrypt(const sSomeString: string): string;

  public
    { Public declarations }
    property DocID:string read FDocID write SetDocID;
  end;

var
  frmBuscarHuella: TfrmBuscarHuella;
  verifier : DPFPEngXLib_TLB.DPFPVerification;
  regTemplate1:DPFPShrXLib_TLB.DPFPTemplate;
  clientEncryptionKey: string;

implementation

{$R *.dfm}


procedure TfrmBuscarHuella.btnBuscarClick(Sender: TObject);
begin
 try
    if (edtDocID.Text ='') or (edtDocID.Text='0') then  exit;
    FDocID:=edtDocID.EditValue;
    if qryPaciente.Active then  qryPaciente.Close;
    qryPaciente.SQL.clear;
    qryPaciente.SQL.Add('select * from vPacientesparanuevacita where DocID='''+FDocID+'''');
    qryPaciente.Open();
    if qryPaciente.RecordCount >0 then
      begin
      CargarFoto;
        pnlPaciente.Visible:=true;
        btnGuardar.Enabled:=true;

     end
     else
     begin
        pnlPaciente.Visible:=false;
        btnGuardar.Enabled:=false;
        pnlContent.Caption:='Paciente no encontrado'
     end;

 finally

 end;
end;

procedure TfrmBuscarHuella.btnCancelarClick(Sender: TObject);
begin
try
  fDocid:='';
  close;
finally
   release;
end; //finally

end;

procedure TfrmBuscarHuella.btnGuardarClick(Sender: TObject);
begin
try
   close;
finally
   release;
end; //finally

end;

procedure TfrmBuscarHuella.CargarFoto;
var
AJPEGGraphic: TJPEGImage;
begin
  try
    try
        AJPEGGraphic := TJPEGImage.Create;
        AJPEGGraphic.Assign(qryPaciente.FieldByName('Foto'));
        dbimgFoto.Picture.Graphic:=AJPEGGraphic;
 //       dbimgFoto.Properties.GraphicClassName :='TJPEGImage';
     except
 //       dbimgFoto.Properties.GraphicClassName :='TBitmap';
        dbimgFoto.Picture.Bitmap.Assign(qryPaciente.FieldByName('Foto'));
    end;
   finally
     inherited;
     AJPEGGraphic.Free;

   end;  //finally

end;

function TfrmBuscarHuella.Decrypt(const sSomeString: string): string;
var
  c: TDCP_rijndael;
  vector: string;
  KeyStr: string;
begin
  clientEncryptionKey:='12345678901234567890123456789012';
  KeyStr := clientEncryptionKey;
//  vector := _VECTOR;
  c := TDCP_rijndael.Create(nil);
  c.InitStr(KeyStr, TDCP_sha256);
  // c.SetIV(vector);
  result := c.DecryptString(sSomeString);
  c.Reset;
  c.Free;
end;

procedure TfrmBuscarHuella.DPFPVerificationControlComplete(ASender: TObject;
  const pFeatureSet, pStatus: IDispatch);
var
  Id:integer;
  DBread: string;
begin
  //Busca entre las huellas que tiene la base de datos y las compara con la tomada por el lector
  QryHuella.Close;
  QryHuella.SQL.Clear;
  QryHuella.SQL.Add('Select * from SAFinger,SAPacientes WHERE SAFinger.CCHISTORIA = SAPacientes.CCHISTORIA');
  QryHuella.Open;
  while not QryHuella.Eof do
  begin
    DBRead:=QryHuella.FieldByName('Template').Value;
    //Se desencripta y de compara el template de la base de datos y el tomado por el lector
    if VerifyString(pFeatureSet,DBRead) then
    begin
      edtDocID.Text := QryHuella.FieldByName('Nr_Ident_Usuar').Value;
      BtnBuscarClick(nil);
      Exit();
    end;
    QryHuella.Next;
  end;
end;

procedure TfrmBuscarHuella.dsPacienteDataChange(Sender: TObject; Field: TField);
begin
 FDocID:=dbedtDocID.caption;
end;

procedure TfrmBuscarHuella.edtDocIDEnter(Sender: TObject);
begin
   pnlContent.Caption:='';
end;

procedure TfrmBuscarHuella.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=cafree;
end;

procedure TfrmBuscarHuella.SetDocID(const Value: string);
begin
  FDocID := Value;
end;

function TfrmBuscarHuella.VerifyString(const pFeatureSet: IDispatch;
  const Template: string): boolean;
var
  u: string;
begin
  regTemplate1 := DPFPShrXLib_TLB.CoDPFPTemplate.Create();
  //Se desecripta el template de la base de datos
  u := Decrypt(Template);
  regTemplate1.Deserialize(WideBytesOf(u));
  //Se compara con el que fue tomado por el lector
  result := VerifyTemplate(pFeatureSet, regTemplate1);
end;

function TfrmBuscarHuella.VerifyTemplate(const pFeatureSet: IDispatch;
  const Template: DPFPShrXLib_TLB.DPFPTemplate): boolean;
begin
    result := DPFPEngXLib_TLB.DPFPVerificationResult(verifier.Verify(pFeatureSet,
    regTemplate1)).Verified;
end;

end.
