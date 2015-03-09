unit HomologaPaqueteVsPush;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, ADODB, StdCtrls, DBCtrls, Buttons, Mask;

type
  THomologaPaquetePush = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DataSource4: TDataSource;
    DBLookupListBox1: TDBLookupListBox;
    DataSource5: TDataSource;
    DBLookupListBox2: TDBLookupListBox;
    SpeedButton4: TSpeedButton;
    Label2: TLabel;
    ComboBox1: TComboBox;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    ADOQuery1: TADOQuery;
    ADOQuery5: TADOQuery;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    Edit3: TEdit;
    Label1: TLabel;
    Panel5: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSource1: TDataSource;
    ADOQuery2: TADOQuery;
    DBEdit1: TDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    Procedure carga_datos;
    procedure Edit3Change(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HomologaPaquetePush: THomologaPaquetePush;

implementation

uses UDataModule1, Libreria_PrateincoForm;

{$R *.dfm}

Procedure THomologaPaquetePush.carga_datos();
Begin
  ADOQuery1.Close;
  ADOQuery1.Open;

  ADOQuery5.Close;
  ADOQuery5.Open;
End;

procedure THomologaPaquetePush.FormActivate(Sender: TObject);
begin
 ADOQuery2.Open;
 carga_datos;
 DBLookupCombobox1.KeyValue:=ADOQuery2.FieldValues['Cuenta'];
end;

procedure THomologaPaquetePush.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure THomologaPaquetePush.SpeedButton1Click(Sender: TObject);
begin
  carga_datos;
end;

procedure THomologaPaquetePush.SpeedButton2Click(Sender: TObject);
begin
  ADOQuery1.First;
  WHILE NOT ADOQuery1.Eof DO
  Begin
    ADOQuery1.Edit;
    ADOQuery1.FieldValues['Cuenta']:=ADOQuery2.FieldValues['Cuenta'];
    ADOQuery1.Post;

    ADOQuery1.Next;
  End;
  carga_datos;
end;

procedure THomologaPaquetePush.SpeedButton3Click(Sender: TObject);
begin
  ADOQuery5.First;
  WHILE NOT ADOQuery5.Eof DO
  Begin
    ADOQuery5.Edit;
    ADOQuery5.FieldValues['Cuenta']:='';
    ADOQuery5.Post;

    ADOQuery5.Next;
  End;

  carga_datos;
end;

procedure THomologaPaquetePush.SpeedButton4Click(Sender: TObject);
begin
  ADOQuery5.Edit;
  ADOQuery5.FieldValues['Cuenta']:='';
  ADOQuery5.Post;

  carga_datos;
end;

procedure THomologaPaquetePush.ComboBox1Change(Sender: TObject);
begin
  carga_datos;
end;

procedure THomologaPaquetePush.Edit1Change(Sender: TObject);
begin
 ADOQuery1.Filtered:=False;
 ADOQuery1.Filter:= 'Descripcion like '+ chr(39)+'%'+Edit1.Text+'%'+ chr(39);
 ADOQuery1.Filtered:=True;
end;

procedure THomologaPaquetePush.BitBtn1Click(Sender: TObject);
begin
  If Combobox1.Text<>'' Then
  Begin
    If Combobox1.Text='P' Then ReporteadorP('Listado de Productos','SELECT * FROM INProductos','')
    Else If Combobox1.Text='S' Then ReporteadorP('Listado de SAServicios','SELECT * FROM SAServicios','')
    Else If Combobox1.Text='T' Then ReporteadorP('Listado de SATarifarios','SELECT * FROM SATarifarios','');
  end;
end;

procedure THomologaPaquetePush.Edit3Change(Sender: TObject);
begin
 ADOQuery1.Filtered:=False;
 ADOQuery1.Filter:= 'Codigo like '+ chr(39)+'%'+Edit3.Text+'%'+ chr(39);
 ADOQuery1.Filtered:=True;
end;

procedure THomologaPaquetePush.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  ADOQuery5.Close;
  ADOQuery5.Parameters.ParamValues['cta']:= ADOQuery2.FieldValues['Cuenta'];
  ADOQuery5.Open;
end;

end.
