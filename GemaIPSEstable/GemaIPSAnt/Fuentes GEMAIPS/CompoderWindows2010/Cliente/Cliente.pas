unit Cliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ScktComp, ComCtrls, Buttons,DateUtils;

type
  TCliStatus = (csIdle, csList, csBitmap, csText, csError);

  TFormComprobador = class(TForm)
    ClientSocket1: TClientSocket;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Memo2: TMemo;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit6: TEdit;
    ComboBox1: TComboBox;
    TabSheet3: TTabSheet;
    Label1: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label2: TLabel;
    Edit4: TEdit;
    Image2: TImage;
    Panel8: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button6: TButton;
    Button5: TButton;
    Button4: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button12: TButton;
    Button11: TButton;
    Button10: TButton;
    Timer1: TTimer;
    TabSheet4: TTabSheet;
    Memo1: TMemo;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Button13: TButton;
    Button14: TButton;
    Label7: TLabel;
    Edit1: TEdit;
    Label8: TLabel;
    Edit5: TEdit;
    Label9: TLabel;
    Edit7: TEdit;
    Label10: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Label11: TLabel;
    BitBtn5: TBitBtn;
    Shape1: TShape;
    Image3: TImage;
    procedure FormCreate(Sender: TObject);
    procedure ClientSocket1Connect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket1Disconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    CliStatus: TCliStatus;
    Buffer: array [0..9999] of Char;
  public
    { Public declarations }
  end;

var
  i:integer;
  FormComprobador: TFormComprobador;
  const version='2.0';


implementation

{$R *.dfm}

uses
  CliBmp, CliText, Mensaje;

function encripta(cad:string):string;
var
  i:integer;
  cad2:string;
  c:string;
begin
  cad2:='';
  for i:=0 to (length(cad)-1) do
  begin
     c:=copy(cad,i,1);
     showmessage(c);
     //cad2 := cad2 + chr( ord(c)+8 );
  end;
  encripta:=cad2;
end;

//function desencripta(cad:string):string;
//var
//  i:integer;
//  cad2:string;
//begin
//  cad2:='';
//  for i:=0 to strlen(cad)-1 do cad2 := cad2 + chr(ord(copy(cad,i,1))-8);
//  desencripta:=cad2;
//end;

procedure TFormComprobador.FormCreate(Sender: TObject);
var F: TextFile;
    Linea:String;

  function NumeroUnico: String;
  var
     MaxFileNameLength, VolFlags, SerNum,
       Largo          : DWord;
     Nombre         : array [0..100] of char;

  begin
    if GetVolumeInformation(PChar('c:\'), nil, 0,
       @SerNum, MaxFileNameLength, VolFlags, nil, 0)
    then
      Result := IntToHex(SerNum,8)
    else
        Result := '00000000';
    Largo:=100;
  end;

begin
  IF fileexists('Compoder.SET') Then
  Begin
    AssignFile(F, 'Compoder.SET');
    Reset(F);
    ReadLn(F, Linea);
    Edit5.Text := Linea;
    ReadLn(F, Linea);
    Edit7.Text := Linea;
    ReadLn(F, Linea);
    Edit1.Text := Linea;
    CloseFile(F);
    If (Edit5.Text = '') OR (Edit7.Text = '') OR (Edit1.Text = '') Then
    Begin
      Panel5.Enabled := False;
      Edit5.Enabled := True;
      Edit7.Enabled := True;
      Edit1.Enabled := True;
      Image3.Visible := True;
      DeleteFile('Compoder.SET')
    End
    Else Begin
      Panel5.Enabled := True;
      Edit5.Enabled := False;
      Edit7.Enabled := False;
      Edit1.Enabled := False;
      Image3.Visible := False;
    End
  End
  Else Begin
    Panel5.Enabled := False;
    Edit5.Enabled := True;
    Edit7.Enabled := True;
    Edit1.Enabled := True;
    Image3.Visible := True;
  End;

  CliStatus := csIdle;
  i:=1;

  if clientsocket1.Socket.Connected then     // se conecta el ClientSocket1.
    StatusBar1.SimpleText := 'El Socket ya esta conectado . . .'
  else begin
    clientSocket1.Port:=strtoint(edit3.Text);
    clientSocket1.Address:= Edit2.Text;
    clientsocket1.Open;

    Edit8.text := ClientSocket1.Socket.LocalAddress;
    Edit9.text := ClientSocket1.Socket.LocalHost;
  end;
end;

procedure TFormComprobador.ClientSocket1Connect(Sender: TObject; Socket: TCustomWinSocket);
begin
  StatusBar1.SimpleText := 'Cliente Conectado al Servidor '+Socket.RemoteAddress;
end;

procedure TFormComprobador.ClientSocket1Disconnect(Sender: TObject; Socket: TCustomWinSocket);
begin
  StatusBar1.SimpleText := 'Cliente Desconectado al Servidor '+Socket.RemoteAddress;
end;

procedure TFormComprobador.Button1Click(Sender: TObject);
begin
  Edit6.Text:=Edit6.Text + '1';
  Edit6.SetFocus;
end;

procedure TFormComprobador.Button2Click(Sender: TObject);
begin
  Edit6.Text:=Edit6.Text + '2';
  Edit6.SetFocus;
end;

procedure TFormComprobador.Button3Click(Sender: TObject);
begin
  Edit6.Text:=Edit6.Text + '3';
  Edit6.SetFocus;
end;

procedure TFormComprobador.Button4Click(Sender: TObject);
begin
  Edit6.Text:=Edit6.Text + '4';
  Edit6.SetFocus;
end;

procedure TFormComprobador.Button5Click(Sender: TObject);
begin
  Edit6.Text:=Edit6.Text + '5';
  Edit6.SetFocus;
end;

procedure TFormComprobador.Button6Click(Sender: TObject);
begin
  Edit6.Text:=Edit6.Text + '6';
  Edit6.SetFocus;
end;

procedure TFormComprobador.Button7Click(Sender: TObject);
begin
  Edit6.Text:=Edit6.Text + '7';
  Edit6.SetFocus;
end;

procedure TFormComprobador.Button8Click(Sender: TObject);
begin
  Edit6.Text:=Edit6.Text + '8';
  Edit6.SetFocus;
end;

procedure TFormComprobador.Button9Click(Sender: TObject);
begin
  Edit6.Text:=Edit6.Text + '9';
  Edit6.SetFocus;
end;

procedure TFormComprobador.Button10Click(Sender: TObject);
begin
  Edit6.Text:='';
  Edit6.SetFocus;
end;

procedure TFormComprobador.Button11Click(Sender: TObject);
begin
  Edit6.Text:=Edit6.Text + '0';
  Edit6.SetFocus;
end;

procedure TFormComprobador.ComboBox1Change(Sender: TObject);
begin
  Edit6.SetFocus;
end;

procedure TFormComprobador.Button12Click(Sender: TObject);
begin
  if (ComboBox1.Text <> '') and (Edit6.text <> '') Then
  Begin
    if clientsocket1.Socket.Connected then     // se conecta el ClientSocket1.
      StatusBar1.SimpleText := 'El Socket ya esta conectado . . .'
    else begin
      clientSocket1.Port:=strtoint(edit3.Text);
      clientSocket1.Address:= Edit2.Text;
      clientsocket1.Open;
    end;

    if clientsocket1.Socket.Connected then
    begin
      //ClientSocket1.Socket.SendText('VERIF'+inttostr(dayof(now))+inttostr(monthof(now))+inttostr(yearof(now))+inttostr(hourof(now))+version);
      ClientSocket1.Socket.SendText('COMPR'+combobox1.Text+'%$0'+Edit6.Text+'%$1'+Edit5.Text+'%$2'+Edit7.Text+'%$3'+Edit1.Text);
      StatusBar1.SimpleText := 'Enviando...';
      Memo1.Lines.Add(inttostr(i)+') '+datetimetostr(now)+': '+combobox1.Text+' '+Edit6.Text);
      inc(i);
      edit6.SetFocus;
    end
    else
      StatusBar1.SimpleText := 'No se puede enviar.';
  End
  else begin
    showmessage('Complete la información...');
    if (ComboBox1.Text = '') then combobox1.SetFocus
    else edit6.SetFocus;
  end;
end;

procedure TFormComprobador.Edit6KeyPress(Sender: TObject; var Key: Char);
Var prb:Extended;
begin
  if (key = char(13)) Then FormComprobador.Button12Click(Nil);

  if (( (key >= char(14)) and (key < '0')) or (key > '9')) then
    key := char(0)
  else
  begin
    if not (key <= char(14)) then
    begin
      if trystrtofloat(Edit6.Text+key,prb) = FALSE then
      begin
        showmessage('Error en el valor digitado');
        Edit6.text:='';
      end;
    end;
  end;
end;

procedure TFormComprobador.ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
var
  strIn: string;
  Stream: TMemoryStream;
  nReceived: Integer;
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
        CliStatus := csError
      else memo2.Text:=Buffer;
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
      Memo2.Text := Socket.ReceiveText;
      Memo1.Lines.Add(Memo2.Text);
      cliStatus := csIdle;
    end;
    // read a bitmap file
    csBitmap:
 end; // case
end;

procedure TFormComprobador.BitBtn1Click(Sender: TObject);
begin
  StatusBar1.SimpleText := 'Cerrando los socket . . .';
  if clientSocket1.Socket.Connected then
     clientsocket1.Close;

  Close;
end;

procedure TFormComprobador.BitBtn2Click(Sender: TObject);
begin
  Showmessage('Disponible en al versión 3.0');
end;

procedure TFormComprobador.BitBtn3Click(Sender: TObject);
begin
  FormMensaje := tFormMensaje.create(application);
  try
    FormMensaje.show;
  except
    FormMensaje.free;
  end;

end;

procedure TFormComprobador.Button13Click(Sender: TObject);
begin
    Showmessage('Disponible en al versión 3.0');
end;

procedure TFormComprobador.Button14Click(Sender: TObject);
begin
    Showmessage('Disponible en al versión 3.0');
end;

procedure TFormComprobador.BitBtn5Click(Sender: TObject);
var F: TextFile;
  function NumeroUnico: String;
  var
     MaxFileNameLength, VolFlags, SerNum,
       Largo          : DWord;
     Nombre         : array [0..100] of char;

  begin
    if GetVolumeInformation(PChar('c:\'), nil, 0,
       @SerNum, MaxFileNameLength, VolFlags, nil, 0)
    then
      Result := IntToHex(SerNum,8)
    else
        Result := '00000000';
    Largo:=100;
  end;

begin
  ClientSocket1.Socket.SendText('LICEN'+NumeroUnico+'%$'+Edit5.Text+'%$'+Edit7.Text+'%$'+Edit1.Text);
  StatusBar1.SimpleText := 'Enviando Licencia...';

  IF fileexists('Compoder.SET') Then
  Begin
    Showmessage('Licencia ya esta creada.');
  End
  Else Begin
    AssignFile(F, 'Compoder.SET');
    ReWrite(F);
    WriteLn(F, Edit5.Text);
    WriteLn(F, Edit7.Text);
    WriteLn(F, Edit1.Text);
    CloseFile(F);

    Showmessage('Licencia Otorgada. El programa debe ser cargado nuevamente....');
    Halt;
  End;
end;

end.
