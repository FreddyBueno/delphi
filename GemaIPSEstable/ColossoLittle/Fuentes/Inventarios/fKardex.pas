unit fKardex;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, DB, Grids, DBGrids, DBCtrls, StdCtrls, ComCtrls, ExtCtrls,
  Mask, shellapi,Buttons,Libreria_Prateinco;

type
  TKardex = class(TForm)
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    ADOQuery1: TADOQuery;
    DataSource3: TDataSource;
    ADOQuery2: TADOQuery;
    DataSource4: TDataSource;
    ADOQuery3: TADOQuery;
    DataSource5: TDataSource;
    GroupBox3: TGroupBox;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    TabSheet3: TTabSheet;
    DBGrid3: TDBGrid;
    Panel3: TPanel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    TabSheet4: TTabSheet;
    DBGrid4: TDBGrid;
    ADOQuery4: TADOQuery;
    DataSource6: TDataSource;
    DBLookupListBox1: TDBLookupListBox;
    DataSource7: TDataSource;
    ADOQuery5: TADOQuery;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Button1: TButton;
    DBText1: TDBText;
    DBText2: TDBText;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    TabSheet5: TTabSheet;
    DBGrid5: TDBGrid;
    DataSource8: TDataSource;
    ADOQuery6: TADOQuery;
    TabSheet6: TTabSheet;
    DataSource9: TDataSource;
    ADOQuery7: TADOQuery;
    Panel5: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    Label4: TLabel;
    DBComboBox3: TDBComboBox;
    Label20: TLabel;
    DBEdit2: TDBEdit;
    DBEdit25: TDBEdit;
    Label21: TLabel;
    DBEdit24: TDBEdit;
    Label30: TLabel;
    Label22: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label31: TLabel;
    DateTimePicker2: TDateTimePicker;
    TabSheet7: TTabSheet;
    DataSource10: TDataSource;
    ADOQuery8: TADOQuery;
    DBGrid6: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DataSource7DataChange(Sender: TObject; Field: TField);
    procedure DataSource6DataChange(Sender: TObject; Field: TField);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Kardex: TKardex;

implementation
Uses FImpriTransacc, UDataModule1;

{$R *.dfm}

procedure TKardex.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action :=  caFree;
end;

procedure TKardex.FormActivate(Sender: TObject);
begin
  ADOTable1.Open;
  ADOquery5.Open;

  ADOTable2.Close;
  //ADOTable2.Filter:='CAPITULO = '+chr(39)+ADOQuery5.FieldValues['COD_CAPITULO']+chr(39);
  //ADOTable2.Filtered:=true;
  ADOTable2.Open;

  DBLookupComboBox1.KeyValue:= ADOTable1.FieldValues['CD_Almacen'];
  DBLookupComboBox2.KeyValue:= ADOTable2.FieldValues['CD_Producto'];
  PageControl1.ActivePageIndex := 0;
end;

procedure TKardex.Button1Click(Sender: TObject);
begin
 { RegeneraSaldos := tRegeneraSaldos.create(application);
  try
    RegeneraSaldos.DBLookupComboBox1.KeyValue := Adotable2.FieldValues['CD_Producto'];
    RegeneraSaldos.Button1Click(nil);
    MuestraconAcceso(RegeneraSaldos);
  except
    RegeneraSaldos.free;
  end; }

  ADOQuery1.Close;
  ADOQuery1.Parameters.ParamValues['Alma1']:=Adotable1.FieldValues['CD_Almacen'];
  ADOQuery1.Parameters.ParamValues['Alma2']:=Adotable1.FieldValues['CD_Almacen'];
  ADOQuery1.Parameters.ParamValues['Produ']:=Adotable2.FieldValues['CD_Producto'];
  ADOQuery1.Open;

  ADOQuery2.Close;
  ADOQuery2.Parameters[0].Value:=DBLookupComboBox2.KeyValue;
  ADOQuery2.Open;

  ADOQuery3.Close;
  ADOQuery3.Parameters[0].Value:=DBLookupComboBox2.KeyValue;
  ADOQuery3.Open;

  ADOQuery4.Close;
  ADOQuery4.Parameters.ParamValues['Alma'] := Adotable1.FieldValues['CD_Almacen'];
  ADOQuery4.Parameters.ParamValues['Produ']:= Adotable2.FieldValues['CD_Producto'];
  ADOQuery4.Open;

  ADOQuery6.Close;
  ADOQuery6.Parameters.ParamValues['Alma'] := Adotable1.FieldValues['CD_Almacen'];
  ADOQuery6.Parameters.ParamValues['Produ']:= Adotable2.FieldValues['CD_Producto'];
  ADOQuery6.Open;

  ADOQuery7.Close;
  ADOQuery7.Parameters.ParamValues['Produ']:= Adotable2.FieldValues['CD_Producto'];
  ADOQuery7.Open;
end;

procedure TKardex.SpeedButton1Click(Sender: TObject);
var Archivo:String;
begin
  Archivo := ExtractFilePath(paramstr(0))+'Reporte\';
  XmlExcelDB(ExtractFilePath(paramstr(0))+'Reporte\','Kardex'+'.xml', ADOQuery1);
  shellexecute(handle,'open',pchar(Archivo+'Kardex'+'.xml'),'','',sw_shownormal);
end;

procedure TKardex.DataSource2DataChange(Sender: TObject; Field: TField);
begin
  Button1Click(Nil);
end;

procedure TKardex.DataSource6DataChange(Sender: TObject; Field: TField);
begin
  if ADOQuery4.FieldValues['Lote'] <> null then
  Begin
    ADOQuery8.Close;
    ADOQuery8.Parameters.ParamValues['Alma1']:= Adotable1.FieldValues['CD_Almacen'];
    ADOQuery8.Parameters.ParamValues['Alma2']:= Adotable1.FieldValues['CD_Almacen'];
    ADOQuery8.Parameters.ParamValues['Produ']:= Adotable2.FieldValues['CD_Producto'];
    ADOQuery8.Parameters.ParamValues['Lote'] := ADOQuery4.FieldValues['Lote'];
    ADOQuery8.Parameters.ParamValues['Fecha_Vencim'] := ADOQuery4.FieldValues['Fecha_Vencim'];
    ADOQuery8.Open;
  End;
end;

procedure TKardex.DataSource7DataChange(Sender: TObject; Field: TField);
begin
  ADOTable2.Close;
  //ADOTable2.Filter:='CAPITULO = '+chr(39)+ADOQuery5.FieldValues['COD_CAPITULO']+chr(39);
  //ADOTable2.Filtered:=true;
  ADOTable2.Open;
end;

procedure TKardex.DBGrid1DblClick(Sender: TObject);
begin
  FormImpInventa := tFormImpInventa.create(application);
  try
    FormImpInventa.show;
    FormImpInventa.DBLookupComboBox5.KeyValue :=  ADOQuery1.FieldValues['CD_Documento'];
    FormImpInventa.DBLookupComboBox1.KeyValue :=  ADOQuery1.FieldValues['Consec_Dcto'];
    FormImpInventa.Button1Click(Nil);
  except
    FormImpInventa.free;
  end;
end;

end.

