unit FElimSolicitud;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, DBCtrls, ExtCtrls, Buttons;

type
  TEliminaCargo = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    ADOQuery3: TADOQuery;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    ADOQuery4: TADOQuery;
    Edit1: TEdit;
    Edit2: TEdit;
    ADOTable1: TADOTable;
    CheckBox1: TCheckBox;
    ADOQuery5: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EliminaCargo: TEliminaCargo;

implementation

uses  MAIN, UDataModule1, RecalculaSaldo;

{$R *.dfm}

procedure TEliminaCargo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Action :=  caFree;
end;

procedure TEliminaCargo.FormActivate(Sender: TObject);
begin
  adoTable1.Open;
  adoquery1.Open;
  DBLookupComboBox1.KeyValue:=ADOQuery1.FieldValues['NO_CARGO'];
      CheckBox1.Checked :=True;
end;

procedure TEliminaCargo.SpeedButton1Click(Sender: TObject);
var i:integer;
begin
  ADOQuery3.Close;
  ADOQuery3.Parameters.ParamValues['Carg']:=DBLookupComboBox1.KeyValue;
  ADOQuery3.Open;
  ADOQuery3.First;
  While NOT ADOQuery3.Eof Do
  Begin
    IF ADOQuery3.FieldValues['Status'] = 'F' Then Begin
      ShowMessage('Este Cargo ya esta facturado. NO PUEDE SER Anulado');
      Exit;
    End;

    ADOQuery3.Next;
  End;

  //Anulando Documento de Inventario
  IF (Edit2.Text <> '') AND (CheckBox1.Checked)  Then
  Begin
    ADOQuery4.Close;
    ADOQuery4.Parameters.ParamValues['Doc'] := Edit1.Text;
    ADOQuery4.Parameters.ParamValues['Nro'] := Edit2.Text;
    ADOQuery4.Open;

    IF ADOQuery4.RecordCount = 1 Then Begin
      ADOQuery4.Edit;
      ADOQuery4.FieldValues['Estado']:= 'A';
      ADOQuery4.Post;

      RegeneraSaldos := tRegeneraSaldos.create(application);
      try
        Datamodule1.MuestraconAcceso(RegeneraSaldos);
        ADOQuery5.Close;
        ADOQuery5.Parameters.ParamValues['DOC'] := ADOQuery4.FieldValues['CD_Documento'];
        ADOQuery5.Parameters.ParamValues['Cs']  := ADOQuery4.FieldValues['Consec_Dcto'];
        ADOQuery5.Open;
        ADOQuery5.First;
        WHILE NOT ADOQuery5.Eof DO Begin
          RegeneraSaldos.Refresh;
          RegeneraSaldos.DBLookupComboBox1.KeyValue := ADOQuery5.FieldValues['CD_Producto'];
          RegeneraSaldos.Button1Click(nil);

          ADOQuery5.Next;
        End;
      except
        RegeneraSaldos.free;
      end;

      i:=0;
    End
    Else i:=1;
  End;

  ADOQuery2.Close;
  ADOQuery2.Parameters.ParamValues['Carg']:=DBLookupComboBox1.KeyValue;
  ADOQuery2.Open;
  ADOQuery2.edit;
  ADOQuery2.FieldValues['Estado'] := 'A';
  ADOQuery2.post;
  ADOQuery1.Close;
  ADOQuery1.Open;
  DBLookupComboBox1.KeyValue:=ADOQuery1.FieldValues['NO_CARGO'];
  Close;
end;

procedure TEliminaCargo.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  Edit1.Text:= ADOTable1.FieldValues['Tipo_Doc_Inventario'];
  If ADOQuery1.FieldValues['Numero_Transaccion_Inventario'] <> null Then Edit2.Text:= ADOQuery1.FieldValues['Numero_Transaccion_Inventario']
  Else  Edit2.Text:= '';
end;

end.
