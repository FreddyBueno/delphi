unit FImprimeFormato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, DBCtrls, ExtCtrls, ComCtrls, frxClass, frxDBSet,
  frxGradient;

type
  TFImprimeFmto = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    DataSource1: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    ADOQuery1: TADOQuery;
    CheckBox1: TCheckBox;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label5: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    DataSource3: TDataSource;
    ADOQuery3: TADOQuery;
    Edit1: TEdit;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    ADOQuery4: TADOQuery;
    ADOQuery5: TADOQuery;
    ADOQuery6: TADOQuery;
    frxDBDataset2: TfrxDBDataset;
    frxGradientObject1: TfrxGradientObject;
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
  FImprimeFmto: TFImprimeFmto;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TFImprimeFmto.Button1Click(Sender: TObject);
begin
  //Cuadrar datos de impresión para que se genere igual a lo presentado en pantalla
  ADOQuery4.Close;
  ADOQuery4.SQL.Clear;
  ADOQuery4.SQL.Add('select * from vHistoriasPacientes ' );

  ADOQuery4.SQL.Add('      where No_Historia = '+chr(39)+Edit1.text+chr(39));
  ADOQuery4.SQL.Add(' AND convert(date,fecha,103) between convert(datetime,'+chr(39)+datetostr(datetimepicker1.date)+chr(39)+',103) AND convert(datetime,'+chr(39)+datetostr(datetimepicker2.date)+chr(39)+',103) ');
  //ImprimeFmto.ADOQuery1.SQL.Add('      AND (convert(datetime,fecha,103) >= convert(datetime,'+chr(39)+(FormatDateTime('DD/MM/YYYY HH:MM:SS',DateTimePicker1.Datetime))+chr(39)+') AND convert(datetime,fecha,103) <= convert(datetime,'+chr(39)+FormatDateTime('DD/MM/YYYY HH:MM:SS',DateTimePicker2.Datetime)+chr(39)+'))');

  IF CheckBox1.Checked = False Then
    IF DBLookupComboBox1.keyvalue <> null then
        ADOQuery4.SQL.Add('  AND (Codigo_Formato = '+chr(39)+DBLookupComboBox1.keyvalue+chr(39));

  IF CheckBox1.Checked = False Then
    IF DBLookupComboBox2.keyvalue <> null then
        ADOQuery4.SQL.Add('  OR Codigo_Formato = '+chr(39)+DBLookupComboBox2.keyvalue+chr(39));

  IF CheckBox1.Checked = False Then
    IF DBLookupComboBox3.keyvalue <> null then
        ADOQuery4.SQL.Add('  OR Codigo_Formato = '+chr(39)+DBLookupComboBox3.keyvalue+chr(39));

  IF CheckBox1.Checked = False Then ADOQuery4.SQL.Add(')');

  ADOQuery4.SQL.Add(' ORDER BY Codigo_Formato,fecha,Usuario,Codigo_Seccion,Codigo_Campo,Codigo_SubCampo ');

  ADOQuery4.Open;
  If ADOQuery4.RecordCount > 0 Then
  Begin
    ADOQuery6.Close;
    ADOQuery6.Parameters.ParamValues['IDE']:=ADOQuery4.FieldValues['Usuario'];
    ADOQuery6.Open;
    frxReport1.ShowReport;
  End
  Else Begin
    Showmessage('No se encuentra Historia Clinica de este Paciente.');
  End;
  Close;
end;

procedure TFImprimeFmto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Action :=  caFree;
end;

procedure TFImprimeFmto.FormActivate(Sender: TObject);
begin
//  ADOTable1.Open;

  DateTimePicker1.DateTime := now;
  DateTimePicker2.DateTime := now;
end;

procedure TFImprimeFmto.DBLookupComboBox5Exit(Sender: TObject);
begin
  ADOQuery1.Close;
  ADOQuery1.Parameters.ParamValues['Hist'] := Edit1.Text;
  ADOQuery1.Open;

  ADOQuery2.Close;
  ADOQuery2.Parameters.ParamValues['Hist'] := Edit1.Text;
  ADOQuery2.Open;

  ADOQuery3.Close;
  ADOQuery3.Parameters.ParamValues['Hist'] := Edit1.Text;
  ADOQuery3.Open;
end;

procedure TFImprimeFmto.CheckBox1Click(Sender: TObject);
begin
  IF CheckBox1.Checked = True Then DBLookupComboBox1.Enabled := False
  ELSE DBLookupComboBox1.Enabled := True;
end;

end.
