unit FAsignaGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, ADODB, Buttons, ComCtrls, ExtCtrls;

type
  TFrmAsignaGrupo = class(TForm)
    Panel1: TPanel;
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
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DataSource3: TDataSource;
    ADOQuery3: TADOQuery;
    DataSource4: TDataSource;
    ADOQuery4: TADOQuery;
    Edit1: TEdit;
    BitBtn3: TBitBtn;
    procedure DataSource3DataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAsignaGrupo: TFrmAsignaGrupo;

implementation

uses frmGrupos, UDataModule1;

{$R *.dfm}

procedure TFrmAsignaGrupo.DataSource3DataChange(Sender: TObject;
  Field: TField);
begin
  ADOQuery4.Close;
  ADOQuery4.Parameters.ParamValues['Grp']:=ADOQuery3.FieldValues['codigo_grupo'];
  ADOQuery4.Open;
end;

procedure TFrmAsignaGrupo.FormCreate(Sender: TObject);
begin
  ADOQuery3.Open;
  ADOQuery2.Open;
  DBLookupComboBox2.KeyValue:=ADOQuery3.FieldValues['Codigo_Grupo'];
end;

procedure TFrmAsignaGrupo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TFrmAsignaGrupo.Edit1Change(Sender: TObject);
begin
  IF edit1.Text <> '' Then Begin
    ADOQuery2.Filter:='Descripcion like '+chr(39)+'%'+edit1.Text+'%'+chr(39);
    ADOQuery2.Filtered:=True;
  End
  Else ADOQuery2.Filtered:=False;
end;

procedure TFrmAsignaGrupo.SpeedButton1Click(Sender: TObject);
begin
  ADOQuery2.Edit;
  ADOQuery2.FieldValues['cd_grupo']:=DBLookupComboBox2.KeyValue;
  ADOQuery2.Post;
  ADOQuery2.Close;
  ADOquery2.Open;
  ADOQuery4.Close;
  ADOquery4.Open;
end;

procedure TFrmAsignaGrupo.SpeedButton2Click(Sender: TObject);
begin
  ADOQuery2.First;
  WHILE NOT ADOQuery2.Eof DO
  Begin
    ADOQuery2.Edit;
    ADOQuery2.FieldValues['cd_grupo']:=DBLookupComboBox2.KeyValue;
    ADOQuery2.Post;

    ADOQuery2.Next;
  End;
  ADOQuery2.Close;
  ADOquery2.Open;
  ADOQuery4.Close;
  ADOquery4.Open;
end;

procedure TFrmAsignaGrupo.SpeedButton3Click(Sender: TObject);
begin
  ADOQuery4.First;
  WHILE NOT ADOQuery4.Eof DO
  Begin
    ADOQuery4.Edit;
    ADOQuery4.FieldValues['cd_grupo']:='';
    ADOQuery4.Post;

    ADOQuery4.Next;
  End;
  ADOQuery2.Close;
  ADOquery2.Open;
  ADOQuery4.Close;
  ADOquery4.Open;
end;

procedure TFrmAsignaGrupo.SpeedButton4Click(Sender: TObject);
begin
  ADOQuery4.Edit;
  ADOQuery4.FieldValues['cd_grupo']:='';
  ADOQuery4.Post;
  ADOQuery2.Close;
  ADOquery2.Open;
  ADOQuery4.Close;
  ADOquery4.Open;
end;

procedure TFrmAsignaGrupo.BitBtn3Click(Sender: TObject);
begin
  Grupos := tGrupos.create(application);
  try
    Datamodule1.MuestraconAcceso(Grupos);
  except
    Grupos.free;
  end;
end;

end.
