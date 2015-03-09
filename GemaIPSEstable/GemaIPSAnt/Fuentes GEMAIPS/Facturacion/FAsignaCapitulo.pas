unit FAsignaCapitulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, DBCtrls, StdCtrls, Buttons, ExtCtrls;

type
  TFrmAsignaCapitulo = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    DBLookupListBox1: TDBLookupListBox;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    GroupBox2: TGroupBox;
    DBLookupListBox2: TDBLookupListBox;
    Panel4: TPanel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBLookupComboBox2: TDBLookupComboBox;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    DataSource3: TDataSource;
    ADOQuery3: TADOQuery;
    DataSource4: TDataSource;
    ADOQuery4: TADOQuery;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DataSource3DataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAsignaCapitulo: TFrmAsignaCapitulo;

implementation

{$R *.dfm}

procedure TFrmAsignaCapitulo.DataSource3DataChange(Sender: TObject;
  Field: TField);
begin
  ADOQuery4.Close;
  ADOQuery4.Parameters.ParamValues['Grp']:=ADOQuery3.FieldValues['cod_capitulo'];
  ADOQuery4.Open;
end;

procedure TFrmAsignaCapitulo.FormCreate(Sender: TObject);
begin
  ADOQuery3.Open;
  ADOQuery2.Open;
  DBLookupComboBox2.KeyValue:=ADOQuery3.FieldValues['Cod_Capitulo'];
end;

procedure TFrmAsignaCapitulo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TFrmAsignaCapitulo.Edit1Change(Sender: TObject);
begin
  IF edit1.Text <> '' Then Begin
    ADOQuery2.Filter:='Descripcion like '+chr(39)+'%'+edit1.Text+'%'+chr(39);
    ADOQuery2.Filtered:=True;
  End
  Else ADOQuery2.Filtered:=False;
end;

procedure TFrmAsignaCapitulo.SpeedButton1Click(Sender: TObject);
begin
  ADOQuery2.Edit;
  ADOQuery2.FieldValues['Capitulo']:=DBLookupComboBox2.KeyValue;
  ADOQuery2.Post;
  ADOQuery2.Close;
  ADOquery2.Open;
  ADOQuery4.Close;
  ADOquery4.Open;
end;

procedure TFrmAsignaCapitulo.SpeedButton2Click(Sender: TObject);
begin
  ADOQuery2.First;
  WHILE NOT ADOQuery2.Eof DO
  Begin
    ADOQuery2.Edit;
    ADOQuery2.FieldValues['Capitulo']:=DBLookupComboBox2.KeyValue;
    ADOQuery2.Post;

    ADOQuery2.Next;
  End;
  ADOQuery2.Close;
  ADOquery2.Open;
  ADOQuery4.Close;
  ADOquery4.Open;
end;

procedure TFrmAsignaCapitulo.SpeedButton3Click(Sender: TObject);
begin
  ADOQuery4.First;
  WHILE NOT ADOQuery4.Eof DO
  Begin
    ADOQuery4.Edit;
    ADOQuery4.FieldValues['Capitulo']:='';
    ADOQuery4.Post;

    ADOQuery4.Next;
  End;
  ADOQuery2.Close;
  ADOquery2.Open;
  ADOQuery4.Close;
  ADOquery4.Open;
end;

procedure TFrmAsignaCapitulo.SpeedButton4Click(Sender: TObject);
begin
  ADOQuery4.Edit;
  ADOQuery4.FieldValues['Capitulo']:='';
  ADOQuery4.Post;
  ADOQuery2.Close;
  ADOquery2.Open;
  ADOQuery4.Close;
  ADOquery4.Open;
end;
end.
