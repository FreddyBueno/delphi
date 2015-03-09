unit VerificaHuella;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, DPFPCtlXLib_TLB,DPFPShrXLib_TLB,DPFPEngXLib_TLB,Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  JvExStdCtrls, JvEdit, JvExControls, JvLabel, Vcl.Buttons, JvExButtons,
  JvBitBtn, Data.DB, Data.Win.ADODB, Vcl.OleCtrls, Vcl.ExtCtrls, Vcl.Grids,
  JvExGrids, JvStringGrid, Vcl.ComCtrls, Vcl.DBCtrls,dateutils;

type
  TFVHuella = class(TForm)
    gbx: TGroupBox;
    GroupBox1: TGroupBox;
    DPFPVerificationControl: TDPFPVerificationControl;
    ADOQHuella: TADOQuery;
    SGPacientes: TJvStringGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    JvLabel11: TJvLabel;
    EditNumeroCedula: TJvEdit;
    BtnBuscarC: TJvBitBtn;
    QryGeneral: TADOQuery;
    JvBitBtn1: TJvBitBtn;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label6: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label8: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Panel3: TPanel;
    Image1: TImage;
    Edit6: TEdit;
    procedure DPFPVerificationControlComplete(ASender: TObject;
      const pFeatureSet, pStatus: IDispatch);
    procedure FormCreate(Sender: TObject);
    function VerifyTemplate(const pFeatureSet: IDispatch; const Template: DPFPShrXLib_TLB.DPFPTemplate): boolean;
    function VerifyString(const pFeatureSet: IDispatch;  const Template: string): boolean;
    procedure BtnBuscarCClick(Sender: TObject);
    procedure LimpiaGrilla(Grilla : TJvStringGrid; Col : Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure SGPacientesClick(Sender: TObject);
    procedure SGPacientesDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVHuella: TFVHuella;
  verifier : DPFPEngXLib_TLB.DPFPVerification;
  regTemplate1:DPFPShrXLib_TLB.DPFPTemplate;
  clientEncryptionKey: string;

implementation

uses DCPrijndael, DCPbase64, DCPsha256, ModuloAdmision;

{$R *.dfm}

function Decrypt(const sSomeString: string): string;
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

function TFVHuella.VerifyTemplate(const pFeatureSet: IDispatch;
  const Template: DPFPShrXLib_TLB.DPFPTemplate): boolean;
begin
  result := DPFPEngXLib_TLB.DPFPVerificationResult(verifier.Verify(pFeatureSet,
    regTemplate1)).Verified;
end;

function TFVHuella.VerifyString(const pFeatureSet: IDispatch;
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

procedure TFVHuella.LimpiaGrilla(Grilla : TJvStringGrid; Col : Integer);
var i, e : Integer;
begin
  i := 1;
  while i < Grilla.RowCount do
    begin
      e := 0;
      while e < Col do
        begin
          Grilla.Cells[e,i] := '';
          inc(e);
        end;
      inc(i);
    end;
  Grilla.RowCount  := 2;
end;

procedure TFVHuella.SGPacientesClick(Sender: TObject);
begin
  Edit6.Text :=  SGPacientes.Rows[SGPacientes.Row].Strings[13];
  Edit1.Text :=  SGPacientes.Rows[SGPacientes.Row].Strings[14];
  Edit1Exit(Nil);
end;

procedure TFVHuella.SGPacientesDblClick(Sender: TObject);
begin
  Close;
end;

procedure TFVHuella.BtnBuscarCClick(Sender: TObject);
var i:integer;
begin
  if EditNumeroCedula.Text = '' then Exit;
QryGeneral.Close;
  QryGeneral.SQL.Clear;
  QryGeneral.SQL.Add('SELECT CCHISTORIA,TP_IDENT_USUAR,NR_IDENT_USUAR, ');
  QryGeneral.SQL.Add(' (rtrim(P.PRIMER_APELLIDO)+ '+chr(39)+' '+chr(39)+ ' + rtrim(isnull(P.SEGUNDO_APELLIDO,''''))+ '+chr(39)+' '+chr(39)+' + rtrim(P.PRIMER_NOMBRE)+ '+chr(39)+' '+chr(39)+' + rtrim(isnull(P.SEGUNDO_NOMBRE,''''))) as Nombre');
  QryGeneral.SQL.Add(' ,P.ASEGURADORA, fec_nacimineto,estado_civil,Dir_Trabajo_Pac,Tel_Trabajo_Pac,sexo,Lugar_Nacimient,Ocupacion,Dir_Casa_Pacien,Tel_Casa_Pacien,Nombre_Responde,Tel_Casa_Resp,CONTTerce.Primer_Apellido as nomterce,');
  QryGeneral.SQL.Add(' min(FDInformacion.fecha) as Primera_Fecha,max(FDInformacion.fecha) as Ultima_Fecha,DS_Ocupacion');
  QryGeneral.SQL.Add('FROM SAPacientes AS P left outer join FDInformacion on ' );
  QryGeneral.SQL.Add('P.CCHistoria = FDInformacion.No_Historia left outer join CONTTerce on ' );
  QryGeneral.SQL.Add('P.Aseguradora = CONTTerce.Numero_Documento left outer join Comunes.dbo.GEOcupacion on ');
  QryGeneral.SQL.Add('P.Ocupacion = comunes.dbo.GEOcupacion.CD_Ocupacion'  );
  QryGeneral.SQL.Add('WHERE 1 = 1  ');
  QryGeneral.SQL.Add('and p.NR_IDENT_USUAR = '''+EditNumeroCedula.Text+'''');
  QryGeneral.SQL.Add('GROUP BY CCHISTORIA,TP_IDENT_USUAR,NR_IDENT_USUAR, ');
  QryGeneral.SQL.Add(' (rtrim(P.PRIMER_APELLIDO)+ '+chr(39)+' '+chr(39)+ ' + rtrim(isnull(P.SEGUNDO_APELLIDO,''''))+ '+chr(39)+' '+chr(39)+' + rtrim(P.PRIMER_NOMBRE)+ '+chr(39)+' '+chr(39)+' + rtrim(isnull(P.SEGUNDO_NOMBRE,''''))) ');
  QryGeneral.SQL.Add(' ,P.ASEGURADORA, fec_nacimineto,sexo,estado_civil,Dir_Trabajo_Pac,Tel_Trabajo_Pac,sexo,Lugar_Nacimient,Ocupacion,Dir_Casa_Pacien,Tel_Casa_Pacien,Nombre_Responde,Tel_Casa_Resp,CONTTerce.Primer_Apellido,DS_Ocupacion');
  QryGeneral.Open;

  i := 1;
  LimpiaGrilla(SGPacientes, 20);
  while not QryGeneral.Eof do
    begin

      SGPacientes.Cells[0,i]  := QryGeneral.Fields.FieldByName('Nombre').AsString;
      SGPacientes.Cells[1,i]  := QryGeneral.Fields.FieldByName('CCHISTORIA').AsString;
      if QryGeneral.Fields.FieldByName('nomterce').AsString <> '' then
        SGPacientes.Cells[2,i]  := QryGeneral.Fields.FieldByName('nomterce').AsString
      Else
        SGPacientes.Cells[2,i]  := 'Cree el Tercero';
      SGPacientes.Cells[3,i]  := QryGeneral.Fields.FieldByName('fec_nacimineto').AsString;
      SGPacientes.Cells[4,i]  := QryGeneral.Fields.FieldByName('sexo').AsString;
      SGPacientes.Cells[5,i]  := QryGeneral.Fields.FieldByName('Primera_Fecha').AsString;
      SGPacientes.Cells[6,i]  := QryGeneral.Fields.FieldByName('Ultima_Fecha').AsString;
      SGPacientes.Cells[7,i]  := QryGeneral.Fields.FieldByName('Dir_Casa_Pacien').AsString;
      SGPacientes.Cells[8,i]  := QryGeneral.Fields.FieldByName('Tel_Casa_Pacien').AsString;
      SGPacientes.Cells[9,i]  := QryGeneral.Fields.FieldByName('Nombre_Responde').AsString;
      SGPacientes.Cells[10,i] := QryGeneral.Fields.FieldByName('Tel_Casa_Resp').AsString;
      SGPacientes.Cells[11,i] := QryGeneral.Fields.FieldByName('DS_Ocupacion').AsString;
      SGPacientes.Cells[12,i] := QryGeneral.Fields.FieldByName('estado_civil').AsString;
      SGPacientes.Cells[13,i] := QryGeneral.Fields.FieldByName('TP_IDENT_USUAR').AsString;
      SGPacientes.Cells[14,i] := QryGeneral.Fields.FieldByName('NR_IDENT_USUAR').AsString;
      SGPacientes.Cells[15,i] := QryGeneral.Fields.FieldByName('Lugar_Nacimient').AsString;
      SGPacientes.Cells[16,i] := QryGeneral.Fields.FieldByName('Dir_Trabajo_Pac').AsString;
      SGPacientes.Cells[17,i] := QryGeneral.Fields.FieldByName('Tel_Trabajo_Pac').AsString;

      QryGeneral.Next;
      inc(i);
    end;
  SGPacientes.RowCount := i + 1;
end;

procedure TFVHuella.DPFPVerificationControlComplete(ASender: TObject;
  const pFeatureSet, pStatus: IDispatch);
var
  Id:integer;
  DBread: string;
begin
  //Busca entre las huellas que tiene la base de datos y las compara con la tomada por el lector
  ADOQHuella.Close;
  ADOQHuella.SQL.Clear;
  ADOQHuella.SQL.Add('Select * from SAFinger,SAPacientes WHERE SAFinger.CCHISTORIA = SAPacientes.CCHISTORIA');
  ADOQHuella.Open;
  while not ADOQHuella.Eof do
  begin
    DBRead:=ADOQHuella.FieldByName('Template').Value;
    //Se desencripta y de compara el template de la base de datos y el tomado por el lector
    if VerifyString(pFeatureSet,DBRead) then
    begin
      EditNumeroCedula.Text := ADOQHuella.FieldByName('Nr_Ident_Usuar').Value;
      BtnBuscarCClick(nil);
      Exit();
    end;
    ADOQHuella.Next;
  end;
end;

procedure TFVHuella.Edit1Exit(Sender: TObject);
begin
 DatamoduloAdmision.qryPacientes.Close;
 DatamoduloAdmision.qryPacientes.Parameters[0].Value := Edit6.Text;
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
   Image1.Picture.Bitmap.Assign(DatamoduloAdmision.QryPacientes.FieldByName('Foto_Paciente'));
 end
 else begin
   Image1.Picture.Metafile;
   DateTimePicker1.Date := date-(360*18);
 end;
end;

procedure TFVHuella.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFVHuella.FormCreate(Sender: TObject);
begin
  verifier:= CoDPFPVerification.Create;  //Para Huella.
end;

procedure TFVHuella.JvBitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
