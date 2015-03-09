unit FormEscaneo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.ComCtrls, DelphiTwain, Vcl.ExtDlgs, Vcl.FileCtrl, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdMessageClient, IdPOP3, IdMailBox,IdAttachment, IdMessage,shellapi,
 Vcl.OleCtrls, SHDocVw, IdHTTP;

type
  TFormDigital = class(TForm)
    ADOQDigitaliza: TADOQuery;
    DSDigitaliza: TDataSource;
    PageControl1: TPageControl;
    Panel1: TPanel;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Panel4: TPanel;
    Label6: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    SpeedButton4: TSpeedButton;
    DBLookupComboBox4: TDBLookupComboBox;
    Edit1: TEdit;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Panel5: TPanel;
    TabSheet2: TTabSheet;
    DelphiTwain1: TDelphiTwain;
    OpenDialog1: TOpenDialog;
    SpeedButton1: TSpeedButton;
    Label5: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    Edit10: TEdit;
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    Edit6: TEdit;
    ComboBox1: TComboBox;
    Label7: TLabel;
    BitBtn2: TBitBtn;
    Label8: TLabel;
    Edit7: TEdit;
    SpeedButton2: TSpeedButton;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Panel3: TPanel;
    ScrollBox1: TScrollBox;
    ImageHolder: TImage;
    Panel6: TPanel;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Edit11: TEdit;
    Label12: TLabel;
    ComboBox2: TComboBox;
    BitBtn1: TBitBtn;
    SpeedButton3: TSpeedButton;
    DBImage1: TDBImage;
    DriveComboBox1: TDriveComboBox;
    procedure SpeedButton4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure DelphiTwain1TwainAcquire(Sender: TObject; const Index: Integer;
      Image: TBitmap; var Cancel: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure Edit10Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FileListBox1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure Edit9Change(Sender: TObject);
    procedure Edit11Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure FileListBox1DblClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DriveComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDigital: TFormDigital;


implementation

Uses UDatamodule1, ModuloAdmision,Libreria_Prateinco,Libreria_PrateincoForm,
  WebCamForm, FEmails;

{$R *.dfm}

procedure TFormDigital.BitBtn1Click(Sender: TObject);
Var pt:string;
    i:Integer;
begin
  if (Edit1.Text <> '') AND (ComboBox1.Text <> '') AND (Edit7.Text <> '') then
  Begin
    pt := Edit10.Text + '\' + trim(DBLookupComboBox4.KeyValue)+trim(Edit1.Text);
    if NOT DirectoryExists(pt) then CreateDir(pt);
    i:=1;

    while FileExists(pt+'\'+trim(DBLookupComboBox4.KeyValue)+trim(Edit1.Text)+'-'+trim(Combobox1.Text)+Edit7.text+'('+inttostr(i)+').bmp') do
      i:=i+1;
    ImageHolder.Picture.SaveToFile(pt+'\'+trim(DBLookupComboBox4.KeyValue)+trim(Edit1.Text)+'-'+trim(Combobox1.Text)+Edit7.text+'('+inttostr(i)+').bmp');

    FileListBox1.Directory := 'c:\';
    if DirectoryExists(Edit10.Text + '\' + trim(DBLookupComboBox4.KeyValue)+trim(Edit1.Text)) then
       FileListBox1.Directory := Edit10.Text + '\' + trim(DBLookupComboBox4.KeyValue)+trim(Edit1.Text);
    FileListBox1.ApplyFilePath(Edit6.Text);
  End
  Else Showmessage('Ingrese primero la Idenficacion, Tipo y Numero.');
end;

procedure TFormDigital.BitBtn2Click(Sender: TObject);
begin
  ComboBox1.Items.Add(Inputbox('Tipos de Documentos','Ingrese un nuevo Tipo:',''));
end;

procedure TFormDigital.BitBtn3Click(Sender: TObject);
begin
  Captura('GETipo_Documentos','');
end;

procedure TFormDigital.BitBtn4Click(Sender: TObject);
begin
  ReporteadorP('Listado de Personas','SELECT * FROM Comunes..SEPersonas','');
end;

procedure TFormDigital.ComboBox1Exit(Sender: TObject);
begin
  ComboBox1.Items.SaveToFile(Edit10.Text+'\TiposDocumentos.LST');
end;

procedure TFormDigital.ComboBox2Change(Sender: TObject);
begin
  FBIni('E','DIGITALIZACION','EmailTipo',ComboBox2.Text);
end;

procedure TFormDigital.DelphiTwain1TwainAcquire(Sender: TObject; const Index: Integer;
  Image: TBitmap; var Cancel: Boolean);
begin
  ImageHolder.Picture.Assign(Image);
  Cancel := TRUE;  {Only want one image}
end;

procedure TFormDigital.DirectoryListBox1Change(Sender: TObject);
begin
  Edit10.Text := DirectoryListBox1.Directory;
  FileListBox1.Directory := DirectoryListBox1.Directory;
end;

procedure TFormDigital.DriveComboBox1Change(Sender: TObject);
begin
  DirectoryListBox1.Drive := DriveComboBox1.Drive;
end;

procedure TFormDigital.Edit10Change(Sender: TObject);
begin
  FBIni('E','DIGITALIZACION','PATH',Edit10.Text);
end;

procedure TFormDigital.Edit11Change(Sender: TObject);
begin
  FBIni('E','DIGITALIZACION','EmailPass',Edit11.Text);
end;

procedure TFormDigital.Edit1Exit(Sender: TObject);
Var
  pt:string;
begin
  if (validacontenido(DBLookupComboBox4.text,'','Tipo Doc Invalido')) then Exit;
  if (validacontenido(Edit1.text,'','Nro Doc Invalido')) then Exit;

  DatamoduloAdmision.qryPacientes.Close;
  DatamoduloAdmision.qryPacientes.Parameters[0].value := DBLookupComboBox4.KeyValue;
  DatamoduloAdmision.qryPacientes.Parameters[1].value := trim(Edit1.Text);
  DatamoduloAdmision.qryPacientes.Open;
  if DatamoduloAdmision.qryPacientes.RecordCount = 1 then
  begin
     PageControl1.ActivePageIndex := 0;
     Edit2.Text := campotoedit(DatamoduloAdmision.QryPacientes.FieldValues['PRIMER_APELLIDO']);
     Edit3.Text := campotoedit(DatamoduloAdmision.QryPacientes.FieldValues['SEGUNDO_APELLIDO']);
     Edit4.Text := campotoedit(DatamoduloAdmision.QryPacientes.FieldValues['PRIMER_NOMBRE']);
     Edit5.Text := campotoedit(DatamoduloAdmision.QryPacientes.FieldValues['SEGUNDO_NOMBRE']);
     //Image1.Picture.Bitmap.Assign(DatamoduloAdmision.QryPacientes.FieldByName('Foto'));

     pt := Edit10.Text + '\' + trim(DBLookupComboBox4.KeyValue)+trim(Edit1.Text);
     if NOT DirectoryExists(pt) then CreateDir(pt);
     FileListBox1.Directory := pt;

     FileListBox1.ApplyFilePath(Edit6.Text);
  end
  else begin
     PageControl1.ActivePageIndex := 0;
  end;
end;

procedure TFormDigital.Edit8Change(Sender: TObject);
begin
  FBIni('E','DIGITALIZACION','EmailHost',Edit8.Text);
end;

procedure TFormDigital.Edit9Change(Sender: TObject);
begin
FBIni('E','DIGITALIZACION','EmailUser',Edit9.Text);
end;

procedure TFormDigital.FileListBox1Click(Sender: TObject);
begin
  try
    ImageHolder.Picture.LoadFromFile(FileListBox1.FileName);
  except
    on Exception do;
  end;
end;

procedure TFormDigital.FileListBox1DblClick(Sender: TObject);
begin
  shellexecute(handle,'open',pchar(FileListBox1.FileName),'','',sw_shownormal);
end;

procedure TFormDigital.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DelphiTwain1.Free;
end;

procedure TFormDigital.FormCreate(Sender: TObject);
begin
  DatamoduloAdmision.QryTipodocumento.Open;
  Edit10.Text := FBIni('L','DIGITALIZACION','PATH','');
  ComboBox2.Text :=  FBIni('L','DIGITALIZACION','EmailTipo','');
  Edit8.Text := FBIni('L','DIGITALIZACION','EmailHost','');
  Edit9.Text := FBIni('L','DIGITALIZACION','EmailUser','');
  Edit11.Text := FBIni('L','DIGITALIZACION','EmailPass','');

  DirectoryListBox1.Directory := Edit10.Text;
  FileListBox1.Directory := DirectoryListBox1.Directory;
  Pagecontrol1.ActivePageIndex := 0;
  if FileExists(Edit10.Text+'\TiposDocumentos.LST') Then  ComboBox1.Items.LoadFromFile(Edit10.Text+'\TiposDocumentos.LST');
end;

procedure TFormDigital.SpeedButton1Click(Sender: TObject);
begin
  openpicturedialog1.Title:='Buscar Foto';
  openpicturedialog1.DefaultExt:='*.*';
  openpicturedialog1.Execute;
  if openpicturedialog1.FileName <> '' then
  BEGIN
    ImageHolder.Picture.LoadFromFile(openpicturedialog1.FileName);
    //RedimensionarImagen(Image1.Picture.Bitmap, Image1.Width,Image1.Height );
  END;
end;

procedure TFormDigital.SpeedButton2Click(Sender: TObject);
begin
  if Edit1.Text <> '' then
  Begin
    FormEmails := tFormEmails.create(application);
    try
      FormEmails.show;
    except
      FormEmails.free;
    end;
  End
  Else Showmessage('Ingrese primero la idenficacion.');
end;

procedure TFormDigital.SpeedButton3Click(Sender: TObject);
var
  SelectedSource: Integer;
begin
  {It is always recommended to load library dynamically, never forcing}
  {final user to have twain installed}
  if DelphiTwain1.LoadLibrary then
  begin
    {Load source manager}
    DelphiTwain1.SourceManagerLoaded := TRUE;
    {Allow user to select source}
    SelectedSource := DelphiTwain1.SelectSource;
    if SelectedSource <> -1 then
    begin
      {Load source, select transference method and enable (display interface)}
      DelphiTwain1.Source[SelectedSource].Loaded := TRUE;
      DelphiTwain1.Source[SelectedSource].TransferMode := ttmMemory;
      DelphiTwain1.Source[SelectedSource].Enabled := TRUE;
    end {if SelectedSource <> -1}

  end
  else showmessage('Twain is not installed.');
end;

procedure TFormDigital.SpeedButton4Click(Sender: TObject);
var
  DstRect, SrcRect: TRect;
begin
  WebCamF := tWebCamF.create(application);
  try
    WebCamF.showmodal;

    ImageHolder.Picture.Bitmap.Assign(WebCamF.Image1.Picture.Bitmap);
    {Image1.Canvas.CopyMode := cmSrcCopy;
    DstRect := Rect(0, 0, Image1.Width, Image1.Height);
    SrcRect := Rect(0, 0, Image1.Picture.Bitmap.Width, Image1.Picture.Bitmap.Height);
    Image1.Canvas.CopyRect(DstRect, Image1.Canvas, SrcRect);}

  //  RedimensionarImagen(Image1.Picture.Bitmap, Image1.Width,Image1.Height);
  except
    WebCamF.free;
  end;
end;

end.
