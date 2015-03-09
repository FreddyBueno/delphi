unit FConfirma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, DB, ADODB, Buttons;

type
  TFrmConfirma = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    DBLookupListBox1: TDBLookupListBox;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ListBox1: TListBox;
    ADOQuery3: TADOQuery;
    ADOQuery4: TADOQuery;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBLookupListBox1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfirma: TFrmConfirma;

implementation

uses UDataModule1, Ffactura1;

{$R *.dfm}

procedure TFrmConfirma.SpeedButton1Click(Sender: TObject);
begin
  ADOQuery1.Edit;
  ADOQuery1.FieldValues['Estado']:= 'G';
  ADOQuery1.Post;
  Listbox1.Items.Add(ADOQuery1.FieldValues['Tipo_Comprobante']+' - '+inttostr(ADOQuery1.FieldValues['Numero_Comprobante']));
  ADOQuery1.Close;
  ADoquery1.Open;
  ADOQuery3.Close;
  ADOQuery3.Parameters.ParamValues['Per']:=ADOQuery1.FieldValues['Periodo_Proceso'];
  ADOQuery3.Open;
  IF ADOQuery3.RecordCount=0 Then
  Begin
    ADOQuery3.Insert;
    ADOQuery3.FieldValues['Periodo_Proceso']:=ADOQuery1.FieldValues['Periodo_Proceso'];
    ADOQuery3.FieldValues['Estado']:='A';
    ADOQuery3.Post;
  End
  Else Begin
    ADOQuery3.Edit;
    ADOQuery3.FieldValues['Estado']:='A';
    ADOQuery3.Post;
  End;
end;

procedure TFrmConfirma.SpeedButton2Click(Sender: TObject);
begin
  ADOQuery1.First;
  WHILE NOT ADOQuery1.Eof DO
  Begin
    ADOQuery1.Edit;
    ADOQuery1.FieldValues['Estado']:= 'G';
    ADOQuery1.Post;
    Listbox1.Items.Add(ADOQuery1.FieldValues['Tipo_Comprobante']+' - '+inttostr(ADOQuery1.FieldValues['Numero_Comprobante']));

    ADOQuery1.Next;
  End;
  ADOQuery1.Close;
  ADoquery1.Open;
end;

procedure TFrmConfirma.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrmConfirma.FormCreate(Sender: TObject);
begin
  ADOQuery1.Open;
  ADOQuery2.Open;
end;

procedure TFrmConfirma.DBLookupListBox1DblClick(Sender: TObject);
begin
  FormImpComp := tFormImpComp.create(application);
  try
    FormImpComp.DBLookupComboBox5.KeyValue := ADOQuery1.FieldValues['Tipo_Comprobante'];
    FormImpComp.DBLookupComboBox1.KeyValue := ADOQuery1.FieldValues['Numero_Comprobante'];
    FormImpComp.show;
  except
    FormImpComp.free;
  end;
end;

end.
