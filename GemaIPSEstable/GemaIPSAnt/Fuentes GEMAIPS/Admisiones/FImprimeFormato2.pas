unit FImprimeFormato2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, DBCtrls, ExtCtrls, ComCtrls, frxClass, frxDBSet;

type
  TFImprimeFmto2 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DBLookupComboBox5: TDBLookupComboBox;
    Label6: TLabel;
    ADOTable1: TADOTable;
    DataSource4: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    DataSource1: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    ADOQuery1: TADOQuery;
    CheckBox1: TCheckBox;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    ADOQuery4: TADOQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure DBLookupComboBox5Exit(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FImprimeFmto2: TFImprimeFmto2;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TFImprimeFmto2.Button1Click(Sender: TObject);
begin
  //Cuadrar datos de impresión para que se genere igual a lo presentado en pantalla
  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;

   //Codigo nuevo: Compatible con SQL server 2012
   ADOQuery2.SQL.Add('select * from vHistoriasPacientes ' );

   ADOQuery2.SQL.Add('     Where FDInformacion.No_Historia = '+chr(39)+DBLookupComboBox5.keyvalue+chr(39));
   ADOQuery2.SQL.Add('      AND (convert(datetime,FDInformacion.fecha,103) >= convert(datetime,'+chr(39)+(FormatDateTime('DD/MM/YYYY HH:MM:SS',DateTimePicker1.Datetime))+chr(39)+') AND convert(datetime,FDInformacion.fecha,103) <= convert(datetime,'+chr(39)+FormatDateTime('DD/MM/YYYY HH:MM:SS',DateTimePicker2.Datetime)+chr(39)+'))');

   IF CheckBox1.Checked = False Then
    IF DBLookupComboBox1.keyvalue <> null then ADOQuery2.SQL.Add('  AND FDInformacion.Codigo_Formato = '+chr(39)+DBLookupComboBox1.keyvalue+chr(39));

  ADOQuery2.SQL.Add(' ORDER BY FDInformacion.Codigo_Formato,fecha,Usuario,FDInformacion.Codigo_Seccion,FDInformacion.Codigo_Campo,FDInformacion.Codigo_SubCampo ');

  ADOQuery2.Open;
  If ADOQuery2.RecordCount > 0 Then
  Begin
    ADOQuery4.Close;
    ADOQuery4.Parameters.ParamValues['IDE']:=ADOQuery2.FieldValues['Usuario'];
    ADOQuery4.Open;
    frxReport1.ShowReport;
  End
  Else Begin
    Showmessage('No se encuentran Historia Clinica de este Paciente.');
  End;
end;

procedure TFImprimeFmto2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Action :=  caFree;
end;

procedure TFImprimeFmto2.FormActivate(Sender: TObject);
begin
  ADOTable1.Open;

  DateTimePicker1.DateTime := now;
  DateTimePicker2.DateTime := now;
end;

procedure TFImprimeFmto2.DBLookupComboBox5Exit(Sender: TObject);
begin
  ADOQuery1.Close;
  ADOQuery1.Parameters.ParamValues['Hist'] := DBLookupComboBox5.KeyValue;
  ADOQuery1.Open;
end;

procedure TFImprimeFmto2.CheckBox1Click(Sender: TObject);
begin
  IF CheckBox1.Checked = True Then DBLookupComboBox1.Enabled := False
  ELSE DBLookupComboBox1.Enabled := True;
end;

end.
