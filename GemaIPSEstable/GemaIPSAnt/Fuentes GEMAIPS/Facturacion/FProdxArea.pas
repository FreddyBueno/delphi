unit FProdxArea;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, ADODB, StdCtrls, DBCtrls, Buttons, Mask;

type
  TFrmProdxArea = class(TForm)
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
    Label3: TLabel;
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
    GroupBox5: TGroupBox;
    Label13: TLabel;
    DBLookupComboBox7: TDBLookupComboBox;
    GroupBox6: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    DBLookupComboBox11: TDBLookupComboBox;
    DBLookupComboBox12: TDBLookupComboBox;
    DataSource9: TDataSource;
    DataSource10: TDataSource;
    ADOTable7: TADOTable;
    ADOTable8: TADOTable;
    DataSource11: TDataSource;
    ADOQuery3: TADOQuery;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    ADOQuery4: TADOQuery;
    DataSource12: TDataSource;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox8: TDBLookupComboBox;
    Label14: TLabel;
    ADOQuery5: TADOQuery;
    BitBtn3: TBitBtn;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    Edit3: TEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
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
    procedure DBLookupComboBox11Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBLookupComboBox8Exit(Sender: TObject);
    Procedure carga_datos;
    procedure Edit3Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProdxArea: TFrmProdxArea;

implementation

uses UDataModule1, Libreria_PrateincoForm;

{$R *.dfm}

Procedure TFrmProdxArea.carga_datos();
Begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  GroupBox4.Visible:=False;
  GroupBox5.Visible:=False;
  GroupBox6.Visible:=False;
  IF ComboBox1.Text='P' Then
  Begin
    ADOQuery1.SQL.Add('SELECT cd_Producto as cod,* FROM INProductos WHERE Estado = '+chr(39)+'A'+chr(39)+' AND Cd_Producto NOT IN (SELECT Cd_PST FROM SAcargosxarea WHERE Tp_PST='+chr(39)+'P'+chr(39)+' AND Empresa = '+chr(39)+DBLookupComboBox2.KeyValue+chr(39)+' AND Area = '+chr(39)+DBLookupComboBox8.KeyValue+chr(39)+')');
    GroupBox6.Visible:=True;
    DBLookupComboBox11.KeyValue:='';
    DBLookupComboBox12.KeyValue:='';
  End
  ELSE IF ComboBox1.Text='S' Then
  Begin
    ADOQuery1.SQL.Add('SELECT codigo as cod,* FROM SAServicios WHERE Estado = '+chr(39)+'A'+chr(39)+' AND Codigo NOT IN (SELECT Cd_PST FROM SAcargosxarea WHERE Tp_PST='+chr(39)+'S'+chr(39)+' AND Empresa = '+chr(39)+DBLookupComboBox2.KeyValue+chr(39)+' AND Area = '+chr(39)+DBLookupComboBox8.KeyValue+chr(39)+')');
    GroupBox4.Visible:=True;
    DBLookupComboBox3.KeyValue:='';
    DBLookupComboBox4.KeyValue:='';
    DBLookupComboBox5.KeyValue:='';
    DBLookupComboBox6.KeyValue:='';
  End
  ELSE IF ComboBox1.Text='T' Then
  Begin
    ADOQuery1.SQL.Add('SELECT codigo as cod,* FROM SATarifarios WHERE Codigo NOT IN (SELECT Cd_PST FROM SAcargosxarea WHERE Tp_PST='+chr(39)+'T'+chr(39)+' AND Empresa = '+chr(39)+DBLookupComboBox2.KeyValue+chr(39)+' AND Area = '+chr(39)+DBLookupComboBox8.KeyValue+chr(39)+')');
    GroupBox5.Visible:=True;
    DBLookupComboBox7.KeyValue:='';
  End;
  ADOQuery1.Open;

  ADOQuery5.Close;
  ADOQuery5.SQL.Clear;
  ADOQuery5.SQL.Add('SELECT * FROM SACargosxArea WHERE Empresa = '+chr(39)+DBLookupComboBox2.KeyValue+chr(39)+' AND Area = '+chr(39)+DBLookupComboBox8.KeyValue+chr(39));
  ADOQuery5.Open;
End;

procedure TFrmProdxArea.FormActivate(Sender: TObject);
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
end;

procedure TFrmProdxArea.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure TFrmProdxArea.FormCreate(Sender: TObject);
begin
  DBLookupComboBox2.KeyValue := Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja'];
  DBLookupComboBox2.Enabled := False;
end;

procedure TFrmProdxArea.SpeedButton1Click(Sender: TObject);
begin
  ADOQuery5.Append;
  ADOQuery5.FieldValues['Empresa'] := DBLookupComboBox2.KeyValue;
  ADOQuery5.FieldValues['Area']    := DBLookupComboBox8.KeyValue;
  ADOQuery5.FieldValues['Tp_PST']  := ComboBox1.Text;
  ADOQuery5.FieldValues['Descripcion']  := ADOQuery1.FieldValues['Descripcion'];
  IF combobox1.Text='P' Then ADOQuery5.FieldValues['Cd_PST']  := ADOQuery1.FieldValues['Cd_Producto']
  ELSE ADOQuery5.FieldValues['Cd_PST']  := ADOQuery1.FieldValues['Codigo'];
  ADOQuery5.Post;

  carga_datos;
end;

procedure TFrmProdxArea.SpeedButton2Click(Sender: TObject);
begin
  ADOQuery1.First;
  WHILE NOT ADOQuery1.Eof DO
  Begin
    ADOQuery5.Append;
    ADOQuery5.FieldValues['Empresa'] := DBLookupComboBox2.KeyValue;
    ADOQuery5.FieldValues['Area']    := DBLookupComboBox8.KeyValue;
    ADOQuery5.FieldValues['Tp_PST']  := ComboBox1.Text;
    ADOQuery5.FieldValues['Descripcion']  := ADOQuery1.FieldValues['Descripcion'];
    IF combobox1.Text='P' Then ADOQuery5.FieldValues['Cd_PST']  := ADOQuery1.FieldValues['Cd_Producto']
    ELSE ADOQuery5.FieldValues['Cd_PST']  := ADOQuery1.FieldValues['Codigo'];
    ADOQuery5.Post;

    ADOQuery1.Next;
  End;
  carga_datos;
end;

procedure TFrmProdxArea.SpeedButton3Click(Sender: TObject);
begin
  ADOQuery5.First;
  WHILE NOT ADOQuery5.Eof DO
  Begin
    ADOQuery5.Delete;

    ADOQuery5.First;
  End;

  carga_datos;
end;

procedure TFrmProdxArea.SpeedButton4Click(Sender: TObject);
begin
  ADOQuery5.Delete;

  carga_datos;
end;

procedure TFrmProdxArea.ComboBox1Change(Sender: TObject);
begin
  carga_datos;
end;

procedure TFrmProdxArea.Edit1Change(Sender: TObject);
begin
 ADOQuery1.Filtered:=False;
// ADOQuery1.Filter:= 'NOT Descripcion like '+ chr(39)+'%'+Edit2.Text+'%'+ chr(39) + 'AND Descripcion like '+ chr(39)+'%'+Edit1.Text+'%'+ chr(39);
 ADOQuery1.Filter:= 'Descripcion like '+ chr(39)+'%'+Edit1.Text+'%'+ chr(39);
 IF Combobox1.Text = 'P' Then ADOQuery1.Filter:=ADOQuery1.Filter+ ' AND Estado = '+ chr(39)+'A'+ chr(39);
 ADOQuery1.Filtered:=True;
end;

procedure TFrmProdxArea.DBLookupComboBox3Click(Sender: TObject);
begin
  DBLookupComboBox4.KeyValue:='';
  DBLookupComboBox5.KeyValue:='';
  DBLookupComboBox6.KeyValue:='';
end;

procedure TFrmProdxArea.DBLookupComboBox4Click(Sender: TObject);
begin
  DBLookupComboBox5.KeyValue:='';
  DBLookupComboBox6.KeyValue:='';
end;

procedure TFrmProdxArea.DBLookupComboBox5Click(Sender: TObject);
begin
  DBLookupComboBox6.KeyValue:='';
end;

procedure TFrmProdxArea.DBLookupComboBox11Click(Sender: TObject);
begin
  DBLookupComboBox12.KeyValue:='';
end;

procedure TFrmProdxArea.BitBtn1Click(Sender: TObject);
begin
  If Combobox1.Text<>'' Then
  Begin
    If Combobox1.Text='P' Then ReporteadorP('Listado de Productos','SELECT * FROM INProductos','')
    Else If Combobox1.Text='S' Then ReporteadorP('Listado de SAServicios','SELECT * FROM SAServicios','')
    Else If Combobox1.Text='T' Then ReporteadorP('Listado de SATarifarios','SELECT * FROM SATarifarios','');
  end;
end;

procedure TFrmProdxArea.DataSource2DataChange(Sender: TObject;
  Field: TField);
begin
  ADOQuery4.Close;
  ADOQuery4.Parameters.ParamValues['Emp']  :=DBLookupComboBox2.KeyValue;
  ADOQuery4.Open;
end;

procedure TFrmProdxArea.BitBtn3Click(Sender: TObject);
begin
  IF ComboBox1.Text='S' Then
  Begin
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT codigo as cod,* FROM SAServicios WHERE Estado = '+chr(39)+'A'+chr(39));
    IF DBLookupComboBox3.Text <> '' Then ADOQuery1.SQL.Add('   AND Capitulo = '+ chr(39)+DBLookupComboBox3.KeyValue+ chr(39));
    IF DBLookupComboBox4.Text <> '' Then ADOQuery1.SQL.Add('   AND Articulo = '+ chr(39)+DBLookupComboBox4.KeyValue+ chr(39));
    IF DBLookupComboBox5.Text <> '' Then ADOQuery1.SQL.Add('   AND Titulo1  = '+ chr(39)+DBLookupComboBox5.KeyValue+ chr(39));
    IF DBLookupComboBox6.Text <> '' Then ADOQuery1.SQL.Add('   AND Titulo2  = '+ chr(39)+DBLookupComboBox6.KeyValue+ chr(39));
    IF DBLookupComboBox2.Text <> '' Then ADOQuery1.SQL.Add('   AND Codigo NOT IN (SELECT Cd_PST FROM SAcargosxarea WHERE Tp_PST='+chr(39)+'P'+chr(39)+' AND Empresa <> '+chr(39)+DBLookupComboBox2.KeyValue+chr(39)+' AND Area <> '+chr(39)+DBLookupComboBox8.KeyValue+chr(39)+')');
    ADOQuery1.Open;
  End
  ELSE IF ComboBox1.Text='P' Then
  Begin
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT cd_Producto as cod,* FROM INProductos WHERE Estado = '+chr(39)+'A'+chr(39));
    IF DBLookupComboBox11.Text <> '' Then ADOQuery1.SQL.Add(' AND cd_grupo = '+ chr(39)+DBLookupComboBox11.KeyValue+ chr(39));
    IF DBLookupComboBox12.Text <> '' Then ADOQuery1.SQL.Add(' AND cd_subgrupo = '+ chr(39)+DBLookupComboBox12.KeyValue+ chr(39));
    IF DBLookupComboBox2.Text <> '' Then ADOQuery1.SQL.Add('   AND Cd_Producto NOT IN (SELECT Cd_PST FROM SAcargosxarea WHERE Tp_PST='+chr(39)+'S'+chr(39)+' AND Empresa <> '+chr(39)+DBLookupComboBox2.KeyValue+chr(39)+' AND Area <> '+chr(39)+DBLookupComboBox8.KeyValue+chr(39)+')');
    ADOQuery1.Open;
  End
  ELSE IF ComboBox1.Text='T' Then
  Begin
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT codigo as cod,* FROM SATarifarios ');
    IF DBLookupComboBox7.Text <> '' Then ADOQuery1.SQL.Add(' WHERE Tabla = '+ chr(39)+DBLookupComboBox7.KeyValue+ chr(39));
    IF DBLookupComboBox2.Text <> '' Then ADOQuery1.SQL.Add('   AND Codigo NOT IN (SELECT Cd_PST FROM SAcargosxarea WHERE Tp_PST='+chr(39)+'T'+chr(39)+' AND Empresa <> '+chr(39)+DBLookupComboBox2.KeyValue+chr(39)+' AND Area <> '+chr(39)+DBLookupComboBox8.KeyValue+chr(39)+')');
  End;
end;

procedure TFrmProdxArea.DBLookupComboBox8Exit(Sender: TObject);
begin
  IF DBLookupComboBox8.Text <> '' Then
  Begin
    Combobox1.Enabled:=True;
    Carga_Datos;
    ComboBox1.SetFocus;
  End;
end;

procedure TFrmProdxArea.Edit3Change(Sender: TObject);
begin
 ADOQuery1.Filtered:=False;
 ADOQuery1.Filter:= 'Codigo like '+ chr(39)+'%'+Edit3.Text+'%'+ chr(39);
 ADOQuery1.Filtered:=True;
end;

end.
