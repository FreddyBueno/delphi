unit FConceptosxTipo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons, Grids, ADODB, DB,
  DBGrids;

type
  TFConcexTipo = class(TForm)
    GroupBox7: TGroupBox;
    DataSource10: TDataSource;
    ADOQueryConceptos: TADOQuery;
    GroupBox10: TGroupBox;
    Shape1: TShape;
    Label27: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label1: TLabel;
    MaskEditValor: TMaskEdit;
    DBLookupComboBox8: TDBLookupComboBox;
    DBLookupComboBox14: TDBLookupComboBox;
    DBLookupComboBox15: TDBLookupComboBox;
    DBLookupComboBox16: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DataSource1: TDataSource;
    ADOQueryTiposT: TADOQuery;
    DBGrid1: TDBGrid;
    DataSource2: TDataSource;
    ADOQuery1: TADOQuery;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure DataSource10DataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConcexTipo: TFConcexTipo;

implementation

{$R *.dfm}

procedure TFConcexTipo.FormCreate(Sender: TObject);
begin
  ADOQueryConceptos.Open;
  ADOQueryTiposT.Open;
  ADOQuery1.Open;
end;

procedure TFConcexTipo.BitBtn1Click(Sender: TObject);
begin
  IF DBLookupComboBox1.Text <> '' Then
  Begin
    IF DBLookupComboBox8.Text <> '' Then
    Begin
      IF strtofloat(MaskEditValor.Text) > 0 Then
      Begin
        ADOQuery1.Append;
        ADOQuery1.FieldValues['Tipo_Tercero'] := ADOQueryTiposT.FieldValues['Tipo_Tercero'];
        ADOQuery1.FieldValues['Concepto']     := ADOQueryConceptos.FieldValues['Concepto'];
        ADOQuery1.FieldValues['Porcentaje']   := strtofloat(MaskEditValor.Text);
        ADOQuery1.Post;
      End
      Else Showmessage('ERROR: Procentaje debe ser mayor a 0');
    End
    Else Showmessage('ERROR: Ingrese el Concepto');
  End
  Else Showmessage('ERROR: Ingrese el Tipo de Tercero');
end;

procedure TFConcexTipo.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  if DBLookupComboBox1.Focused then DBLookupComboBox2.KeyValue := DBLookupComboBox1.KeyValue
  else DBLookupComboBox1.KeyValue := DBLookupComboBox2.KeyValue;
end;

procedure TFConcexTipo.DataSource10DataChange(Sender: TObject;
  Field: TField);
begin
  if DBLookupComboBox8.Focused then DBLookupComboBox14.KeyValue := DBLookupComboBox8.KeyValue
  else DBLookupComboBox8.KeyValue := DBLookupComboBox14.KeyValue;
end;

procedure TFConcexTipo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

end.
