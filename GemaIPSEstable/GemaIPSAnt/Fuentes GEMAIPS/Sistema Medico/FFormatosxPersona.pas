unit FFormatosxPersona;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, ADODB, StdCtrls, DBCtrls, Buttons;

type
  TFormFmtoxPersona = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    Panel3: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    DataSource1: TDataSource;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DataSource4: TDataSource;
    DBLookupListBox1: TDBLookupListBox;
    DataSource5: TDataSource;
    DBLookupListBox2: TDBLookupListBox;
    SpeedButton4: TSpeedButton;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    ADOQuery5: TADOQuery;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFmtoxPersona: TFormFmtoxPersona;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TFormFmtoxPersona.FormActivate(Sender: TObject);
begin
 ADOQuery2.Open;
 ADOQuery2.Filter := 'Empresa_Trabaja = ' + Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja'];
 ADOQuery2.Filtered := True;
 DBLookupCombobox1.KeyValue := ADOQuery2.FieldValues['id'];
end;

procedure TFormFmtoxPersona.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure TFormFmtoxPersona.SpeedButton1Click(Sender: TObject);
begin
  ADOQuery1.Insert;
  ADOQuery1.FieldValues['Persona']:= DBLookupComboBox1.KeyValue;
  ADOQuery1.FieldValues['Formato']:= ADOQuery5.FieldValues['Codigo'];
  ADOQuery1.Post;
  ADOQuery5.Close;
  ADOQuery5.Open;
end;

procedure TFormFmtoxPersona.SpeedButton2Click(Sender: TObject);
begin
  ADOQuery5.First;
  WHILE NOT ADOQuery5.Eof DO
  Begin
    ADOQuery1.Insert;
    ADOQuery1.FieldValues['Persona']:= DBLookupComboBox1.KeyValue;
    ADOQuery1.FieldValues['Formato']:= ADOQuery5.FieldValues['Codigo'];
    ADOQuery1.Post;

    ADOQuery5.Next;
  End;
  ADOQuery5.Close;
  ADOQuery5.Open;
end;

procedure TFormFmtoxPersona.SpeedButton3Click(Sender: TObject);
begin
  ADOQuery1.First;
  WHILE NOT ADOQuery1.Eof DO
  Begin
    ADOQuery1.Delete;

    ADOQuery1.First;
  End;
  ADOQuery5.Close;
  ADOQuery5.Open;
end;

procedure TFormFmtoxPersona.SpeedButton4Click(Sender: TObject);
begin
   ADOQuery1.Delete;

   ADOQuery5.Close;
   ADOQuery5.Open;
end;

procedure TFormFmtoxPersona.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  if DBLookupComboBox1.KeyValue <> null then
  Begin
    ADOQuery5.Close;
    ADOQuery5.Parameters.ParamValues['Emp']  :=DBLookupComboBox1.KeyValue;
    ADOQuery5.Open;

    ADOQuery1.Close;
    ADOQuery1.Parameters.ParamValues['Emp']  :=DBLookupComboBox1.KeyValue;
    ADOQuery1.Open;

    SpeedButton1.Enabled:=true;
    SpeedButton2.Enabled:=true;
    SpeedButton3.Enabled:=true;
    SpeedButton4.Enabled:=true;
  End;
end;

end.
