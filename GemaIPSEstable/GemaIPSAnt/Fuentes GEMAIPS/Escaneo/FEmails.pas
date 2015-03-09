unit FEmails;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdMessage, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
  IdPOP3, Vcl.StdCtrls, Vcl.ExtCtrls,IdAttachment, Vcl.Grids, Vcl.ComCtrls,idtext;

type
  TFormEmails = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    IdPOP31: TIdPOP3;
    Mail: TIdMessage;
    SG: TStringGrid;
    Panel4: TPanel;
    Memo1: TMemo;
    GroupBox1: TGroupBox;
    Memo2: TMemo;
    Panel5: TPanel;
    ProgressBar1: TProgressBar;
    Button1: TButton;
    Splitter1: TSplitter;
    procedure FormCreate(Sender: TObject);
    procedure SGClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEmails: TFormEmails;

implementation

{$R *.dfm}

uses FormEscaneo;

procedure TFormEmails.Button1Click(Sender: TObject);
var
  x,n,i:integer;
  pt:String;
  f:textfile;
begin
  pt := FormDigital.Edit10.Text + '\' + trim(FormDigital.DBLookupComboBox4.KeyValue)+trim(FormDigital.Edit1.Text);
  if NOT DirectoryExists(pt) then CreateDir(pt);
  i:=1;

  //Conectamos!
  idpop31.Connect;

  Memo2.Clear;
  n:=strtoint(SG.Cells[0,Sg.Row]);
  idpop31.Retrieve(n,mail);
  for x:=0 to Pred(mail.MessageParts.Count) do
  begin
  if (mail.MessageParts.Items[x] is TIdAttachment) then
    begin // si es attchamente lo guardo
       while FileExists(pt+'\'+trim(FormDigital.DBLookupComboBox4.KeyValue)+trim(FormDigital.Edit1.Text)+'-('+inttostr(i)+')'+trim(TIdAttachment(mail.MessageParts.Items[x]).Filename)) do
         i:=i+1;
       TIdAttachment(mail.MessageParts.Items[x]).SaveToFile(pt+'\'+trim(FormDigital.DBLookupComboBox4.KeyValue)+trim(FormDigital.Edit1.Text)+'-('+inttostr(i)+')'+trim(TIdAttachment(mail.MessageParts.Items[x]).Filename));
    end;
    next;
  end;

  while FileExists(pt+'\'+trim(FormDigital.DBLookupComboBox4.KeyValue)+trim(FormDigital.Edit1.Text)+'-('+inttostr(i)+')-Email.txt') do
    i:=i+1;
  AssignFile(F, pt+'\'+trim(FormDigital.DBLookupComboBox4.KeyValue)+trim(FormDigital.Edit1.Text)+'-('+inttostr(i)+')-Email.txt');
  Rewrite(F);
  for I := 1 to Memo1.Lines.Count do
    Writeln(F, Memo1.Lines[i]);
  CloseFile(F);

  FormDigital.FileListBox1.Directory := 'c:\';
  if DirectoryExists(FormDigital.Edit10.Text + '\' + trim(FormDigital.DBLookupComboBox4.KeyValue)+trim(FormDigital.Edit1.Text)) then
     FormDigital.FileListBox1.Directory := FormDigital.Edit10.Text + '\' + trim(FormDigital.DBLookupComboBox4.KeyValue)+trim(FormDigital.Edit1.Text);
  FormDigital.FileListBox1.ApplyFilePath(FormDigital.Edit6.Text);
  idpop31.Disconnect;

  Close;
end;

procedure TFormEmails.FormCreate(Sender: TObject);
var
  n,nummsgs:integer;
  pt:string;
  i:Integer;
begin
  pt := FormDigital.Edit10.Text + '\TemporalMail';
  if NOT DirectoryExists(pt) then CreateDir(pt);

  idPop31.Host := FormDigital.Edit8.Text;
  idPop31.Username := FormDigital.Edit9.Text;
  idPop31.Password := FormDigital.Edit11.Text;
  if FormDigital.ComboBox2.Text = 'patUserPass' Then idPop31.AuthType := patUserPass
  Else if FormDigital.ComboBox2.Text = 'patAPOP' Then idPop31.AuthType := patAPOP
  Else if FormDigital.ComboBox2.Text = 'patSASL' Then idPop31.AuthType := patSASL;

 //Conectamos!
  idpop31.Connect;
  //Obtenemos el numero de emails que tenemos
  NumMsgs:=idpop31.CheckMessages;
  SG.RowCount := NumMsgs + 1;
  Progressbar1.Max := NumMsgs;
  for n:=1 to NumMsgs do
  begin
    Progressbar1.Position := n;
    idpop31.RetrieveHeader(n,mail);
    SG.Cells[0,n] := IntToStr(n); // Email Nº:
    SG.Cells[1,n] := mail.From.Text; //De:
    SG.Cells[2,n] := mail.Subject; //Tema:
    SG.Cells[3,n] := datetostr(mail.Date); //Fecha
    mail.Clear;
  end;
  idpop31.Disconnect;

  SG.Cells[0,0] := 'No:';
  SG.Cells[1,0] := 'De:';
  SG.Cells[2,0] := 'Asunto:';
  SG.Cells[3,0] := 'Fecha:';

  SG.ColWidths[0] := 30;
  SG.ColWidths[1] := 300;
  SG.ColWidths[2] := 300;
  SG.ColWidths[3] := 100;
end;

procedure TFormEmails.SGClick(Sender: TObject);
var
  x,n,i:integer;
begin
   //Conectamos!
  idpop31.Connect;
  n:=strtoint(SG.Cells[0,Sg.Row]);
  idpop31.Retrieve(n,mail);

  Memo1.Clear;
  Memo1.lines.Add('De: ' + SG.Cells[1,n]);
  Memo1.lines.Add('Asunto: ' + SG.Cells[2,n]);
  Memo1.lines.Add('Fecha: ' + SG.Cells[3,n]);
  Memo1.Lines.Add('---------------------------------------------------------');

  //Memo1.Lines := mail.Body;
  for i:=0 to Pred(mail.MessageParts.Count) do
  Begin
    if mail.MessageParts.Items[i] is TIdText then
    begin
      Memo1.Lines.Add(TIdText(mail.MessageParts.Items[i]).Body.Text);
      break;
    end;
  End;

  Memo1.Lines.Add('Archivos Adjuntos.');
  Memo1.Lines.Add('---------------------------------------------------------');
  Memo2.Clear;
  for x:=0 to Pred(mail.MessageParts.Count) do
  begin
  if (mail.MessageParts.Items[x] is TIdAttachment) then
    begin // si es attchamente lo guardo
       Memo2.Lines.Add(TIdAttachment( mail.MessageParts.Items[x]).Filename);
       Memo1.Lines.Add(TIdAttachment( mail.MessageParts.Items[x]).Filename);
       //TIdAttachment(mail.MessageParts.Items[x]).SaveToFile(pt + '\' + TIdAttachment(mail.MessageParts.Items[x]).Filename);
    end;
    next;
  end;

  idpop31.Disconnect;
end;

end.
