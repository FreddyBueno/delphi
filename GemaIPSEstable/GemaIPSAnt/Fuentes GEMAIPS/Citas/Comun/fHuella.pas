unit fHuella;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fDlgBase, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit,
  Vcl.ImgList, cxLabel, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxStyles,
  cxCustomData, Data.DB, cxDBData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxLayoutContainer, cxGridCustomView, cxGridCustomTableView,
  cxGridCustomLayoutView, cxGridLayoutView, cxGridDBLayoutView, cxClasses,
  cxGridLevel, cxGrid, cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.ComCtrls,
  Vcl.OleCtrls, DPFPCtlXLib_TLB, cxGroupBox, uADStanIntf, uADStanOption,
  uADStanParam, uADStanError, uADDatSManager, uADPhysIntf, uADDAptIntf,
  uADStanAsync, uADDAptManager, uADCompDataSet, uADCompClient, DCPsha256, DPFPShrXLib_TLB,
  DCPrijndael, DPFPEngXLib_TLB, cxImage, cxEditRepositoryItems;

type
  TfrmHuella = class(TfrmDlgBase)
    gbx: TcxGroupBox;
    DPFPVerificationControl: TDPFPVerificationControl;
    pnlContent: TPanel;
    cxGroupBox1: TcxGroupBox;
    rchedtHuella: TRichEdit;
    edtDocID: TcxSpinEdit;
    cxLabel1: TcxLabel;
    btnBuscar: TcxButton;
    grdPaciente: TcxGrid;
    lvPaciente: TcxGridLevel;
    lvwPacienteGroup_Root: TdxLayoutGroup;
    lvwPaciente: TcxGridDBLayoutView;
    qryHuella: TADQuery;
    qryPaciente: TADQuery;
    dsHuella: TDataSource;
    dsPaciente: TDataSource;
    lvwPacienteLayoutItem1: TcxGridLayoutItem;
    lvwPacienteID1: TcxGridDBLayoutViewItem;
    lvwPacienteLayoutItem2: TcxGridLayoutItem;
    lvwPacienteTipoDocID1: TcxGridDBLayoutViewItem;
    lvwPacienteLayoutItem3: TcxGridLayoutItem;
    lvwPacienteDocID1: TcxGridDBLayoutViewItem;
    lvwPacienteLayoutItem4: TcxGridLayoutItem;
    lvwPacientePaciente1: TcxGridDBLayoutViewItem;
    lvwPacienteLayoutItem5: TcxGridLayoutItem;
    lvwPacienteFechaNacimiento1: TcxGridDBLayoutViewItem;
    lvwPacienteLayoutItem6: TcxGridLayoutItem;
    lvwPacienteEdad1: TcxGridDBLayoutViewItem;
    lvwPacienteLayoutItem7: TcxGridLayoutItem;
    lvwPacienteSEXO1: TcxGridDBLayoutViewItem;
    lvwPacienteLayoutItem8: TcxGridLayoutItem;
    lvwPacienteFoto1: TcxGridDBLayoutViewItem;
    lvwPacienteLayoutItem9: TcxGridLayoutItem;
    lvwPacienteTelResidencia1: TcxGridDBLayoutViewItem;
    lvwPacienteLayoutItem10: TcxGridLayoutItem;
    lvwPacienteTelTrabajo1: TcxGridDBLayoutViewItem;
    lvwPacienteLayoutItem11: TcxGridLayoutItem;
    lvwPacienteResponsable1: TcxGridDBLayoutViewItem;
    lvwPacienteLayoutItem12: TcxGridLayoutItem;
    lvwPacienteTelCasaResp1: TcxGridDBLayoutViewItem;
    lvwPacienteLayoutItem13: TcxGridLayoutItem;
    lvwPacienteNITAseguradora1: TcxGridDBLayoutViewItem;
    lvwPacienteLayoutItem14: TcxGridLayoutItem;
    lvwPacienteNombreAseguradora1: TcxGridDBLayoutViewItem;
    lvwPacienteGroup1: TdxLayoutGroup;
    lvwPacienteGroup2: TdxLayoutGroup;
    lvwPacienteGroup3: TdxLayoutGroup;
    lvwPacienteGroup5: TdxLayoutGroup;
    lvwPacienteGroup6: TdxLayoutGroup;
    lvwPacienteGroup7: TdxLayoutGroup;
    lvwPacienteGroup8: TdxLayoutGroup;
    lvwPacienteGroup9: TdxLayoutGroup;
    cxEditRepository1: TcxEditRepository;
    rpitmFoto: TcxEditRepositoryImageItem;
    procedure btnBuscarClick(Sender: TObject);
    procedure DPFPVerificationControlComplete(ASender: TObject;
      const pFeatureSet, pStatus: IDispatch);
    procedure FormCreate(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
  private
    FDocID: string;
    procedure SetDocID(const Value: string);
    { Private declarations }
    function VerifyString(const pFeatureSet: IDispatch;
      const Template: string): boolean;

    function VerifyTemplate(const pFeatureSet: IDispatch;
      const Template: DPFPShrXLib_TLB.DPFPTemplate): boolean;

   function Decrypt(const sSomeString: string): string;
  public
    { Public declarations }
    property DocID: string read FDocID write SetDocID;
  end;

var
  frmHuella: TfrmHuella;
  verifier : DPFPEngXLib_TLB.DPFPVerification;
  regTemplate1:DPFPShrXLib_TLB.DPFPTemplate;
  clientEncryptionKey: string;

implementation

{$R *.dfm}

uses dGIPSci;

procedure TfrmHuella.btnBuscarClick(Sender: TObject);
begin
  inherited;
    if (edtDocID.Text ='') or (edtDocID.Text='0') then  exit;
    FDocID:=edtDocID.EditValue;
    if qryPaciente.Active then  qryPaciente.Close;
    qryPaciente.SQL.clear;
    qryPaciente.SQL.Add('select * from vPacientesparanuevacita where DocID='''+FDocID+'''');
    qryPaciente.Open();
    grdPaciente.Visible:=true;
    btnGuardar.Enabled:=true;



end;


procedure TfrmHuella.btnGuardarClick(Sender: TObject);
begin
  inherited;
 Close;
end;

function TfrmHuella.Decrypt(const sSomeString: string): string;
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

procedure TfrmHuella.DPFPVerificationControlComplete(ASender: TObject;
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

procedure TfrmHuella.FormCreate(Sender: TObject);
begin
  inherited;
  verifier:= CoDPFPVerification.Create;  //Para Huella.
end;

procedure TfrmHuella.SetDocID(const Value: string);
begin
  FDocID := Value;
end;

function TfrmHuella.VerifyString(const pFeatureSet: IDispatch;
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

function TfrmHuella.VerifyTemplate(const pFeatureSet: IDispatch;
  const Template: DPFPShrXLib_TLB.DPFPTemplate): boolean;
begin
  result := DPFPEngXLib_TLB.DPFPVerificationResult(verifier.Verify(pFeatureSet,
    regTemplate1)).Verified;
end;



end.
