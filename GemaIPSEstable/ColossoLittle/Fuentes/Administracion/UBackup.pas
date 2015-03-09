unit UBackup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,  DateUtils,
  Dialogs, ComCtrls, ToolWin, StdCtrls, DB, ADODB, ImgList,Libreria_Prateinco;

type
  TFBackup = class(TForm)
    GroupBox2: TGroupBox;
    ListBox1: TListBox;
    ToolBar1: TToolBar;
    ToolButton2: TToolButton;
    ToolButton1: TToolButton;
    ADOTable1: TADOTable;
    Label1: TLabel;
    Edit1: TEdit;
    ProgressBar1: TProgressBar;
    Label2: TLabel;
    Label3: TLabel;
    ImageList1: TImageList;
    Memo1: TMemo;
    procedure ToolButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBackup: TFBackup;

implementation

uses UDataModule1, MAIN;

{$R *.dfm}

procedure TFBackup.ToolButton1Click(Sender: TObject);
Var i,j,k:integer;
     F: TextFile;
begin
  showmessage('Advertencia: Se generará un backup de texto en la carpeta REPORTES\BACKUP\.');
  Datamodule1.ADOConnection1.GetTableNames(ListBox1.Items,False);
  ProgressBar1.Max:=ListBox1.Count-1;
  //Comparación de Existencia de Tablas
  For k:=0 To ListBox1.Count-1 Do
  Begin
    ProgressBar1.Position:=k;
    uppercase(trim(ListBox1.Items[k]));
    ADOTable1.close;
    ADOTable1.TableName:=trim(uppercase(trim(ListBox1.Items[k])));
    ADOTable1.Open;

    Edit1.Text:=trim(uppercase(trim(ListBox1.Items[k])));
    Refresh;

    if NOT DirectoryExists(ExtractFilePath(paramstr(0))+'Reporte\'+MainForm.Caption) Then mkdir(ExtractFilePath(paramstr(0))+'Reporte\'+MainForm.Caption);
    AssignFile(F,ExtractFilePath(paramstr(0))+'Reporte\'+MainForm.Caption+'\'+trim(uppercase(trim(ListBox1.Items[k])))+alineardatos(inttostr(dayof(now)),2)+alineardatos(inttostr(monthof(now)),2)+inttostr(yearof(now))+'.CSV');
    Rewrite(F);
    for i:=0 to (ADOTable1.FieldCount-1) do
      Write(F,ADOTable1.Fields.Fields[i].DisplayName+',');
    Writeln(F);

    //Graba el LOG.
    Datamodule1.Graba_Logx(01/01/2001,'B','',' Realizo Bakcup. ','','');

    i:=1;
    ADOTable1.First;
    while NOT ADOTable1.Eof do
    begin
      For j:=0 To (ADOTable1.FieldCount-1) Do
        Write(F,ADOTable1.Fields.Fields[j].AsString+',');

      Writeln(F);
      inc(i);
      ADOTable1.Next;
    end;
    CloseFile(F);
  End;
  close;
end;

procedure TFBackup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=  caFree;
end;

end.
