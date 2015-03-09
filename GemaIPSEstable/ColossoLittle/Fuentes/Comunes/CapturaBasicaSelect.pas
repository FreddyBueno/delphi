unit CapturaBasicaSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, Buttons, DB, ADODB,
  Vcl.Mask;

type
  TCapturaBasicaS = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
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
    ADOSelect: TADOQuery;
    DBEdit1: TDBEdit;
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
  CapturaBasicaS: TCapturaBasicaS;

implementation

uses UDataModule1, CapturaBasica2,
  FActivarInactivar, Reporteador, Libreria_PrateincoForm;

{$R *.dfm}

procedure TCapturaBasicaS.BitBtn1Click(Sender: TObject);
begin
  ReporteadorP(Edit1.Text,Edit1.Text,'');
end;

procedure TCapturaBasicaS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure TCapturaBasicaS.Edit1Change(Sender: TObject);
begin
  ADOSelect.Close;
  ADOSelect.SQL.add(Edit1.Text);
  try
    ADOSelect.Open;
  except
    Showmessage ('ERROR: No se encuentra conectado el servidor, El sistema intentará reconectar. Si no puede, solucione el problema de red y pruebe de nuevo.');
    ADOSelect.Connection.Close;
    ADOSelect.Connection.Open;
    ADOSelect.Open;
  end;

  GroupBox1.Caption:=Edit1.Text;
end;

procedure TCapturaBasicaS.BitBtn2Click(Sender: TObject);
begin
  ReporteadorP(Edit1.Text,Edit1.Text,'');
end;

procedure TCapturaBasicaS.BitBtn3Click(Sender: TObject);
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

procedure TCapturaBasicaS.BitBtn1Exit(Sender: TObject);
begin
  ADOSelect.Close;
  ADOSelect.Open;
end;

procedure TCapturaBasicaS.SpeedButton5Click(Sender: TObject);
begin
  IF ADOSelect.Filtered = True then
  Begin
    ADOSelect.Filtered := False;
  End
  Else Begin
    ADOSelect.Filtered := False;
    ADOSelect.Filter := Edit8.Text+' LIKE %'+Edit9.Text+'%';
    ADOSelect.Filtered := True;
  End;
end;

procedure TCapturaBasicaS.DBGrid1CellClick(Column: TColumn);
begin
    Edit8.Text:=Column.FieldName;
    DBEdit1.DataField := Column.FieldName;
end;

procedure TCapturaBasicaS.BitBtn4Click(Sender: TObject);
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

procedure TCapturaBasicaS.DBGrid1DblClick(Sender: TObject);
begin
  ADOQvalidaciones.Close;
  ADOQvalidaciones.Parameters.ParamValues['cm'] := Edit8.Text;
  ADOQvalidaciones.Open;
  IF ADOQvalidaciones.RecordCount > 0 Then
  begin
    ReporteadorP(ADOQvalidaciones.FieldValues['Campo'],ADOQvalidaciones.FieldValues['Validacion'],'');
  End;
end;

procedure TCapturaBasicaS.DBGrid1Enter(Sender: TObject);
var
  i:integer;
begin
  //Revisa si tiene campos de validacion y les cambia el color
  for i:=0 TO ADOSelect.FieldCount-1 Do
  Begin
    ADOQvalidaciones.Close;
    ADOQvalidaciones.Parameters.ParamValues['cm'] := ADOSelect.Fields.Fields[i].FieldName;
    ADOQvalidaciones.Open;
    IF ADOQvalidaciones.RecordCount > 0 Then
    begin
      DBGrid1.Columns.Items[i].Color := $00D0F9F8;
    End;
  End;
end;

procedure TCapturaBasicaS.FormActivate(Sender: TObject);
begin
  if ADOSelect.State = dsbrowse Then
  Begin
    ADOSelect.Close;
    ADOSelect.Open;
  End;
end;

end.
