unit FAdmonTablas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TFormAdmonTabla = class(TForm)
    GroupBox2: TGroupBox;
    ListBox1: TListBox;
    Splitter1: TSplitter;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    CheckBox1: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ListBox1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAdmonTabla: TFormAdmonTabla;

implementation

uses UDataModule1, CapturaBasica, CapturaBasica2,
  Libreria_PrateincoForm;

{$R *.dfm}

procedure TFormAdmonTabla.FormActivate(Sender: TObject);
begin
  If checkbox1.Checked = False Then
  Begin
    GroupBox2.Caption:= GroupBox2.Caption + uppercase(Datamodule1.ADOConnection1.DefaultDatabase)+':';
    Datamodule1.ADOConnection1.GetTableNames(ListBox1.Items,False);
  End
  Else Begin
    GroupBox2.Caption:= GroupBox2.Caption + uppercase(Datamodule1.ADOComunes.DefaultDatabase)+':';
    Datamodule1.ADOComunes.GetTableNames(ListBox1.Items,False);
  End;
end;

procedure TFormAdmonTabla.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action :=  caFree;
end;

procedure TFormAdmonTabla.ListBox1Click(Sender: TObject);
begin
Edit1.Text:=ListBox1.Items.Strings[ListBox1.ItemIndex];
end;

procedure TFormAdmonTabla.SpeedButton1Click(Sender: TObject);
begin
  ReporteadorP(Edit1.Text,Edit1.Text,'');
end;

procedure TFormAdmonTabla.SpeedButton2Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  If checkbox1.Checked = False Then CapturaB.Edit2.Text:=''
  ELSE CapturaB.Edit2.Text:='C';
  CapturaB.Edit1.Text:= Edit1.Text;
  try
    CapturaB.show;
  except
    CapturaB.free;
  end;
end;

procedure TFormAdmonTabla.CheckBox1Click(Sender: TObject);
begin
  If checkbox1.Checked = False Then
  Begin
    GroupBox2.Caption:= GroupBox2.Caption + uppercase(Datamodule1.ADOConnection1.DefaultDatabase)+':';
    Datamodule1.ADOConnection1.GetTableNames(ListBox1.Items,False);
  End
  Else Begin
    GroupBox2.Caption:= GroupBox2.Caption + uppercase(Datamodule1.ADOComunes.DefaultDatabase)+':';
    Datamodule1.ADOComunes.GetTableNames(ListBox1.Items,False);
  End;
end;

end.
