unit fcontabilidad4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, DB, ADODB, Mask,
  ComCtrls, Buttons, Menus, StrUtils, DelphiTwain;

type
  TFConsultaCompr = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    DataSource2: TDataSource;
    StringGrid1: TStringGrid;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Edit4: TEdit;
    Label7: TLabel;
    Edit5: TEdit;
    ADOQuery1: TADOQuery;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    PopupMenu1: TPopupMenu;
    EliminarRegistro1: TMenuItem;
    Panel3: TPanel;
    Splitter1: TSplitter;
    DBImage1: TDBImage;
    DataSource3: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultaCompr: TFConsultaCompr;

implementation

uses UDataModule1, MAIN, FComprobanteEgreso,
  FComprobantesVarios, Fcontabilidad11,  Fcontabilidad8, FCreaTerceros;

{$R *.dfm}
procedure TFConsultaCompr.FormActivate(Sender: TObject);
begin
  adotable1.Close;
  adotable1.open;
end;

procedure TFConsultaCompr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure TFConsultaCompr.BitBtn1Click(Sender: TObject);
begin
  FormPlanCta := tFormPlanCta.create(application);
  try
    Datamodule1.MuestraconAcceso(FormPlanCta);
  except
    FormPlanCta.free;
  end;
end;

procedure TFConsultaCompr.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  label5.Visible:=false;
  label6.Visible:=false;
  label7.Visible:=false;
  Edit3.Visible:=false;
  Edit4.Visible:=false;
  Edit5.Visible:=false;
  if (ADOTable1.FieldValues['campo1'] <> null) AND (trim(ADOTable1.FieldValues['campo1']) <> '') then
  begin
    label5.Visible:=true;
    label5.Caption:=ADOTable1.FieldValues['campo1'];
    Edit3.Visible:=true;
  end;
  if (ADOTable1.FieldValues['campo2'] <> null) AND (trim(ADOTable1.FieldValues['campo2']) <> '') then
  begin
    label6.Visible:=true;
    label6.Caption:=ADOTable1.FieldValues['campo2'];
    Edit4.Visible:=true;
  end;
  if (ADOTable1.FieldValues['campo3'] <> null) AND (trim(ADOTable1.FieldValues['campo3']) <> '') then
  begin
    label7.Visible:=true;
    label7.Caption:=ADOTable1.FieldValues['campo3'];
    Edit5.Visible:=true;
  end;
end;

procedure TFConsultaCompr.BitBtn2Click(Sender: TObject);
begin
  FrmCrearTerceros := tFrmCrearTerceros.create(application);
  try
    Datamodule1.MuestraconAcceso(FrmCrearTerceros);
  except
    FrmCrearTerceros.free;
  end;
end;

procedure TFConsultaCompr.BitBtn3Click(Sender: TObject);
begin
  FormCentrosCosto := tFormCentrosCosto.create(application);
  try
    Datamodule1.MuestraconAcceso(FormCentrosCosto);
  except
    FormCentrosCosto.free;
  end;
end;

{Acquire into image}
procedure TFConsultaCompr.FormCreate(Sender: TObject);
begin
  DateTimePicker1.DateTime:=Now;
  adoquery1.open;

  StringGrid1.Cells[1,0]:= 'Codigo Cuenta';
  StringGrid1.Cells[2,0]:= 'Descripción';
  StringGrid1.Cells[3,0]:= 'Valor Debito';
  StringGrid1.Cells[4,0]:= 'Valor Credito';
  StringGrid1.Cells[5,0]:= 'Tercero';
  StringGrid1.Cells[6,0]:= 'Centro Costo';

  StringGrid1.ColWidths[0]:= 30;
  StringGrid1.ColWidths[1]:= 100;
  StringGrid1.ColWidths[2]:= 300;
  StringGrid1.ColWidths[3]:= 100;
  StringGrid1.ColWidths[4]:= 100;
  StringGrid1.ColWidths[5]:= 100;
  StringGrid1.ColWidths[6]:= 100;
end;

procedure TFConsultaCompr.Edit1Exit(Sender: TObject);
begin
  ADOQuery3.Close;
  ADOQuery3.Parameters.ParamValues['TPC'] := DBLookupComboBox1.KeyValue;
  ADOQuery3.Parameters.ParamValues['NC']  := Edit1.Text;
  ADOQuery3.Open;
  IF ADOQuery3.RecordCount <> 0 Then
  Begin

  End;
end;

end.
