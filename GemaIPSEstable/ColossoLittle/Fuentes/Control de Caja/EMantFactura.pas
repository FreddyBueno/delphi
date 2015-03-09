unit EMantFactura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, DBCtrls, ExtCtrls, DB, ADODB, Grids, DBGrids;

type
  TFEditFactura = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    DataSource1: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    Label3: TLabel;
    Label9: TLabel;
    DBText8: TDBText;
    DataSource3: TDataSource;
    ADOQuery4: TADOQuery;
    Label16: TLabel;
    DBLookupComboBox8: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    DataSource2: TDataSource;
    ADOQuery1: TADOQuery;
    Memo1: TMemo;
    Label4: TLabel;
    ADOTable1: TADOQuery;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBLookupComboBox8Exit(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEditFactura: TFEditFactura;

implementation

{$R *.dfm}

procedure TFEditFactura.FormActivate(Sender: TObject);
begin
  Showmessage('Al realizar cambios a los recibos de caja se generan un registro con la modificación y su usuario.');

  ADOQuery4.Open;
end;

procedure TFEditFactura.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action :=  caFree;
end;

procedure TFEditFactura.SpeedButton1Click(Sender: TObject);
begin
  If DBLookupComboBox1.Text <> '' Then
  Begin
    if MessageDlg('Desea Anular el Recibo de Caja?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
      if (ADOTable1.FieldValues['Numero_Comprobante_Contable'] <> null) or (ADOTable1.FieldValues['Numero_Comprobante_Contable'] <> 0) then
        begin
          ADOTable1.Edit;
          ADOTable1.FieldValues['Estado']:='A';
          ADOTable1.FieldValues['Motivo_Anulacion']:=Memo1.Text;
          ADOTable1.Post;
        end
      else
        begin
          Application.MessageBox('No se puede anular el recibo de caja porque tiene comprobante contable','Información',MB_OK+MB_ICONINFORMATION);
          Exit;
        end;
    End;
  End;
end;

procedure TFEditFactura.DBLookupComboBox8Exit(Sender: TObject);
begin
  if DBLookupCombobox8.KeyValue <> null then
  begin
    ADOTable1.close;
    ADOTable1.Filter := 'Documento = '+chr(39)+DBLookupCombobox8.KeyValue+chr(39);
    ADOTable1.Filtered := true;
    ADOTable1.Open;
  end;
end;

procedure TFEditFactura.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  if (DBLookupCombobox8.KeyValue <> null) and (DBLookupCombobox1.KeyValue <> null) then
  begin
    ADOQuery1.close;
    ADOQuery1.Parameters.ParamValues['doc'] := DBLookupCombobox8.KeyValue;
    ADOQuery1.Parameters.ParamValues['TP'] := ADOTable1.FieldValues['Numero_Ingreso'];
    ADOQuery1.Open;
  end;
end;

end.
