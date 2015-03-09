unit CapturaBasica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, Buttons, DB, ADODB,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid;

type
  TCapturaB = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Label1: TLabel;
    ADOTableBasica: TADOTable;
    DataSource1: TDataSource;
    Edit2: TEdit;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    GroupBox4: TGroupBox;
    SpeedButton5: TSpeedButton;
    Edit8: TEdit;
    Edit9: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    ADOQValidaciones: TADOQuery;
    DBGrid1: TJvDBUltimGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Exit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CapturaB: TCapturaB;

implementation

uses UDataModule1, CapturaBasica2,
  FActivarInactivar, Reporteador, Libreria_PrateincoForm;

{$R *.dfm}

procedure TCapturaB.BitBtn1Click(Sender: TObject);
begin
  ReporteadorP(Edit1.Text,Edit1.Text,'');
end;

procedure TCapturaB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure TCapturaB.Edit1Change(Sender: TObject);
begin
  IF Edit2.Text='C' Then ADOTablebasica.Connection  :=DataModule1.ADOComunes
  ELSE ADOTableBasica.Connection:=DataModule1.ADOConnection1;
  ADOTableBasica.Close;
  ADOTableBasica.TableName:=Edit1.Text;
  try
    ADOTableBasica.Open;
    //DBGrid1.EditControls.Items[1].
  except
    Showmessage ('ERROR: No se encuentra conectado el servidor, El sistema intentará reconectar. Si no puede, solucione el problema de red y pruebe de nuevo.');
    ADOTableBasica.Connection.Close;
    ADOTableBasica.Connection.Open;
    ADOTableBasica.Open;
  end;
  GroupBox1.Caption:=Edit1.Text;
end;

procedure TCapturaB.BitBtn2Click(Sender: TObject);
begin
  ReporteadorP(Edit1.Text,'SELECT * FROM ' + Edit1.Text,'');
end;

procedure TCapturaB.BitBtn3Click(Sender: TObject);
begin
  CapturaB2 := tCapturaB2.create(application);
  CapturaB2.Edit1.Text:= Edit1.Text;
  try
    Datamodule1.MuestraconAcceso(CapturaB2);
    CapturaB2.Edit1Change(Nil);
  except
    CapturaB2.free;
  end;
end;

procedure TCapturaB.BitBtn1Exit(Sender: TObject);
begin
  ADOTableBasica.Close;
  ADOTableBasica.Open;
end;

procedure TCapturaB.SpeedButton5Click(Sender: TObject);
begin
  IF ADOTablebasica.Filtered = True then
  Begin
    ADOTableBasica.Filtered := False;
  End
  Else Begin
    ADOTableBasica.Filtered := False;
    ADOTableBasica.Filter := Edit8.Text+' LIKE %'+Edit9.Text+'%';
    ADOTableBasica.Filtered := True;
  End;
end;

procedure TCapturaB.DBGrid1CellClick(Column: TColumn);
begin
    Edit8.Text:=Column.FieldName;
end;

procedure TCapturaB.BitBtn4Click(Sender: TObject);
begin
  FrmAI := tFrmAI.create(application);
  FrmAI.Edit4.Text:= 'Estado';
  FrmAI.CB1.Items.Add('A');
  FrmAI.CB2.Items.Add('I');
  FrmAI.Edit1.Text:= Edit1.Text;
  try
    Datamodule1.MuestraconAcceso(FrmAI);
  except
    FrmAI.free;
  end;
end;

procedure TCapturaB.DBGrid1DblClick(Sender: TObject);
begin
  ADOQvalidaciones.Close;
  ADOQvalidaciones.Parameters.ParamValues['cm'] := Edit8.Text;
  ADOQvalidaciones.Open;
  IF ADOQvalidaciones.RecordCount > 0 Then
  begin
    ReporteadorP(ADOQvalidaciones.FieldValues['Campo'],ADOQvalidaciones.FieldValues['Validacion'],'');
  End;
end;

procedure TCapturaB.DBGrid1Enter(Sender: TObject);
var
  i:integer;
begin
  //Revisa si tiene campos de validacion y les cambia el color
  for i:=0 TO ADOTableBasica.FieldCount-1 Do
  Begin
    ADOQvalidaciones.Close;
    ADOQvalidaciones.Parameters.ParamValues['cm'] := ADOTableBasica.Fields.Fields[i].FieldName;
    ADOQvalidaciones.Open;
    IF ADOQvalidaciones.RecordCount > 0 Then
    begin
      DBGrid1.Columns.Items[i].Color := $00D0F9F8;
    End;
  End;
end;

procedure TCapturaB.FormActivate(Sender: TObject);
begin
  if ADOTableBasica.State = dsbrowse Then
  Begin
    ADOTableBasica.Close;
    ADOTableBasica.Open;
  End;  
end;

end.
