unit HomologaCupsVsPush;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, ADODB, StdCtrls, DBCtrls, Buttons, Mask;

type
  THomologaCupPush = class(TForm)
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
    GroupBox4: TGroupBox;
    DataSource3: TDataSource;
    DataSource6: TDataSource;
    DataSource7: TDataSource;
    DataSource8: TDataSource;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    ADOTable2: TADOTable;
    ADOTable3: TADOTable;
    ADOTable4: TADOTable;
    ADOTable6: TADOTable;
    DataSource9: TDataSource;
    DataSource10: TDataSource;
    ADOTable7: TADOTable;
    ADOTable8: TADOTable;
    DataSource11: TDataSource;
    ADOQuery3: TADOQuery;
    ADOQuery5: TADOQuery;
    BitBtn3: TBitBtn;
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
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure DBLookupComboBox4Click(Sender: TObject);
    procedure DBLookupComboBox5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    Procedure carga_datos;
    procedure Edit3Change(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HomologaCupPush: THomologaCupPush;

implementation

uses UDataModule1, Libreria_PrateincoForm;

{$R *.dfm}

Procedure THomologaCupPush.carga_datos();
Begin
  ADOQuery1.Close;
  ADOQuery1.Open;

  ADOQuery5.Close;
  ADOQuery5.Open;
End;

procedure THomologaCupPush.FormActivate(Sender: TObject);
begin
 ADOTable2.Open;
 ADOTable3.Open;
 ADOTable4.Open;
 ADOTable6.Open;
 ADOTable7.Open;
 ADOTable8.Open;
 ADOQuery3.Open;
 ADOQuery2.Open;
 GroupBox4.Visible:=True;
 carga_datos;
 DBLookupCombobox1.KeyValue:=ADOQuery2.FieldValues['Cuenta'];
end;

procedure THomologaCupPush.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure THomologaCupPush.SpeedButton1Click(Sender: TObject);
begin
  ADOQuery1.Edit;
  ADOQuery1.FieldValues['Cuenta']:=ADOQuery2.FieldValues['Cuenta'];
  ADOQuery1.Post;

  carga_datos;
end;

procedure THomologaCupPush.SpeedButton2Click(Sender: TObject);
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

procedure THomologaCupPush.SpeedButton3Click(Sender: TObject);
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

procedure THomologaCupPush.SpeedButton4Click(Sender: TObject);
begin
  ADOQuery5.Edit;
  ADOQuery5.FieldValues['Cuenta']:='';
  ADOQuery5.Post;

  carga_datos;
end;

procedure THomologaCupPush.ComboBox1Change(Sender: TObject);
begin
  carga_datos;
end;

procedure THomologaCupPush.Edit1Change(Sender: TObject);
begin
 if Edit1.Text <> '' then
 begin
   ADOQuery1.Filtered:=False;
   ADOQuery1.Filter:= 'Descr like '+ chr(39)+'%'+Edit1.Text+'%'+ chr(39);
   ADOQuery1.Filtered:=True;
 end;  
end;

procedure THomologaCupPush.DBLookupComboBox3Click(Sender: TObject);
begin
  DBLookupComboBox4.KeyValue:='';
  DBLookupComboBox5.KeyValue:='';
  DBLookupComboBox6.KeyValue:='';
end;

procedure THomologaCupPush.DBLookupComboBox4Click(Sender: TObject);
begin
  DBLookupComboBox5.KeyValue:='';
  DBLookupComboBox6.KeyValue:='';
end;

procedure THomologaCupPush.DBLookupComboBox5Click(Sender: TObject);
begin
  DBLookupComboBox6.KeyValue:='';
end;

procedure THomologaCupPush.BitBtn1Click(Sender: TObject);
begin
  If Combobox1.Text<>'' Then
  Begin
    If Combobox1.Text='P' Then ReporteadorP('Listado de Productos','SELECT * FROM INProductos','')
    Else If Combobox1.Text='S' Then ReporteadorP('Listado de SAServicios','SELECT * FROM SAServicios','')
    Else If Combobox1.Text='T' Then ReporteadorP('Listado de SATarifarios','SELECT * FROM SATarifarios','');
  end;
end;

procedure THomologaCupPush.BitBtn3Click(Sender: TObject);
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT codigo as cod,SAServicios.descripcion as descr,* ' );
  ADOQuery1.SQL.Add('FROM SAServicios left outer join CONTCuenta on SAServicios.Cuenta = CONTCuenta.Cuenta ');
  ADOQuery1.SQL.Add('WHERE ( CONTCuenta.Estado ='+char(39)+'A'+chr(39)+')' );
  IF DBLookupComboBox3.Text <> '' Then ADOQuery1.SQL.Add(' AND Capitulo = '+ chr(39)+DBLookupComboBox3.KeyValue+ chr(39));
  IF DBLookupComboBox4.Text <> '' Then ADOQuery1.SQL.Add(' AND Articulo = '+ chr(39)+DBLookupComboBox4.KeyValue+ chr(39));
  IF DBLookupComboBox5.Text <> '' Then ADOQuery1.SQL.Add(' AND Titulo1  = '+ chr(39)+DBLookupComboBox5.KeyValue+ chr(39));
  IF DBLookupComboBox6.Text <> '' Then ADOQuery1.SQL.Add(' AND Titulo2  = '+ chr(39)+DBLookupComboBox6.KeyValue+ chr(39));
//  Showmessage(ADOQuery1.SQL.Text);
  ADOQuery1.Open;
end;

procedure THomologaCupPush.Edit3Change(Sender: TObject);
begin
 ADOQuery1.Filtered:=False;
 ADOQuery1.Filter:= 'Codigo like '+ chr(39)+'%'+Edit3.Text+'%'+ chr(39);
 ADOQuery1.Filtered:=True;
end;

procedure THomologaCupPush.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  ADOQuery5.Close;
  ADOQuery5.Parameters.ParamValues['cta']:= ADOQuery2.FieldValues['Cuenta'];
  ADOQuery5.Open;
end;

end.
