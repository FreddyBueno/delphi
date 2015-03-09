unit FCrearMenus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, ADODB, StdCtrls, DBCtrls, Buttons;

type
  TFormCreaMenus = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    Panel3: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
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
    ADOQuery3: TADOQuery;
    ADOQuery4: TADOQuery;
    ADOQuery5: TADOQuery;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DataSource3DataChange(Sender: TObject; Field: TField);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
    procedure DBLookupComboBox3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCreaMenus: TFormCreaMenus;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TFormCreaMenus.FormActivate(Sender: TObject);
begin
 ADOQuery2.Open;
 ADOQuery5.Open;
end;

procedure TFormCreaMenus.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure TFormCreaMenus.SpeedButton1Click(Sender: TObject);
begin
  ADOQuery1.Insert;
  ADOQuery1.FieldValues['Empresa']:= DBLookupComboBox1.KeyValue;
  ADOQuery1.FieldValues['Area']:= DBLookupComboBox2.KeyValue;
  ADOQuery1.FieldValues['Cargo']:= DBLookupComboBox3.KeyValue;
  ADOQuery1.FieldValues['Programa']:= ADOQuery5.FieldValues['Programa'];
  ADOQuery1.FieldValues['Submenu']:= ADOQuery5.FieldValues['Submenu'];
  ADOQuery1.FieldValues['Descripcion_Programa']:= ADOQuery5.FieldValues['Descripcion'];
  ADOQuery1.FieldValues['Camino']:= ADOQuery5.FieldValues['Camino'];
  ADOQuery1.Post;

  //Graba el LOG.
  Datamodule1.Graba_Logx(01/01/2001,'G','','Agrega una opción al menú.'+DBLookupComboBox1.KeyValue+'-'+DBLookupComboBox2.KeyValue+'-'+DBLookupComboBox3.KeyValue,'SEProgramas','');
end;

procedure TFormCreaMenus.SpeedButton2Click(Sender: TObject);
begin
  ADOQuery5.First;
  WHILE NOT ADOQuery5.Eof DO
  Begin
    ADOQuery1.Insert;
    ADOQuery1.FieldValues['Empresa']:= DBLookupComboBox1.KeyValue;
    ADOQuery1.FieldValues['Area']:= DBLookupComboBox2.KeyValue;
    ADOQuery1.FieldValues['Cargo']:= DBLookupComboBox3.KeyValue;
    ADOQuery1.FieldValues['Programa']:= ADOQuery5.FieldValues['Programa'];
    ADOQuery1.FieldValues['Submenu']:= ADOQuery5.FieldValues['Submenu'];
    ADOQuery1.FieldValues['Descripcion_Programa']:= ADOQuery5.FieldValues['Descripcion'];
    ADOQuery1.FieldValues['Camino']:= ADOQuery5.FieldValues['Camino'];
    ADOQuery1.Post;

    //Graba el LOG.
    Datamodule1.Graba_Logx(01/01/2001,'G','','Agrega todas las opciones al menú.'+DBLookupComboBox1.KeyValue+'-'+DBLookupComboBox2.KeyValue+'-'+DBLookupComboBox3.KeyValue,'SEProgramas','');

    ADOQuery5.Next;
  End;
end;

procedure TFormCreaMenus.SpeedButton3Click(Sender: TObject);
begin
  ADOQuery1.First;
  WHILE NOT ADOQuery1.Eof DO
  Begin
    ADOQuery1.Delete;

    ADOQuery1.First;
  End;
end;

procedure TFormCreaMenus.SpeedButton4Click(Sender: TObject);
begin
   ADOQuery1.Delete;
end;

procedure TFormCreaMenus.DataSource3DataChange(Sender: TObject;
  Field: TField);
begin
  ADOQuery1.Close;
  ADOQuery1.Parameters.ParamValues['Emp']  :=DBLookupComboBox1.KeyValue;
  ADOQuery1.Parameters.ParamValues['Area'] :=DBLookupComboBox2.KeyValue;
  ADOQuery1.Parameters.ParamValues['Cargo']:=DBLookupComboBox3.KeyValue;
  ADOQuery1.Open;
end;

procedure TFormCreaMenus.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  ADOQuery3.Close;
  ADOQuery3.Parameters.ParamValues['Emp']  :=DBLookupComboBox1.KeyValue;
  ADOQuery3.Open;
end;

procedure TFormCreaMenus.DataSource2DataChange(Sender: TObject;
  Field: TField);
begin
  ADOQuery4.Close;
  ADOQuery4.Parameters.ParamValues['Emp']  :=DBLookupComboBox1.KeyValue;
  ADOQuery4.Parameters.ParamValues['Area'] :=DBLookupComboBox2.KeyValue;
  ADOQuery4.Open;
end;

procedure TFormCreaMenus.DBLookupComboBox3Click(Sender: TObject);
begin
  If DBLookupComboBox3.Text<>'' Then Begin
    SpeedButton1.Enabled:=true;
    SpeedButton2.Enabled:=true;
    SpeedButton3.Enabled:=true;
    SpeedButton4.Enabled:=true;
  End;
end;

end.
