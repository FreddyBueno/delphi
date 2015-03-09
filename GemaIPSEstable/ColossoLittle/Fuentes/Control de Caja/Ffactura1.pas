unit Ffactura1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, DBCtrls, ExtCtrls,StrUtils,Libreria_Prateinco;

type
  TFImpReciboCaja = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Button1: TButton;
    ADOTable1: TADOTable;
    ComboBox1: TComboBox;
    Label2: TLabel;
    DataSource3: TDataSource;
    ADOQuery4: TADOQuery;
    Label16: TLabel;
    DBLookupComboBox8: TDBLookupComboBox;
    Label4: TLabel;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure DBLookupComboBox8Exit(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FImpReciboCaja: TFImpReciboCaja;

implementation

uses MAIN, UDataModule1, FCajaFormato;


{$R *.dfm}

procedure TFImpReciboCaja.Button1Click(Sender: TObject);
begin
  IF Leftstr(ComboBox1.Text,1) = '1' Then
  Begin
    CajaFormato := tCajaFormato.create(application);
    try
      CajaFormato.show;
    except
      CajaFormato.free;
    end;

    CajaFormato.ADOQuery1.Close;
    CajaFormato.ADOQuery1.Parameters.ParamValues['doc']   := DBLookUpComboBox8.KeyValue;
    CajaFormato.ADOQuery1.Parameters.ParamValues['nofact']:= DBlookupComboBox1.KeyValue;
    CajaFormato.ADOQuery1.Open;
    CajaFormato.ADOQuery2.Close;
    CajaFormato.ADOQuery2.Parameters.ParamValues['doc']   := DBLookUpComboBox8.KeyValue;
    CajaFormato.ADOQuery2.Parameters.ParamValues['nofact']:= DBlookupComboBox1.KeyValue;
    CajaFormato.ADOQuery2.Open;
    CajaFormato.ADOQuery3.Close;
    CajaFormato.ADOQuery3.Parameters.ParamValues['doc']   := DBLookUpComboBox8.KeyValue;
    CajaFormato.ADOQuery3.Parameters.ParamValues['nofact']:= DBlookupComboBox1.KeyValue;
    CajaFormato.ADOQuery3.Open;
    IF CajaFormato.ADOQuery2.FieldValues['Valor'] = null then CajaFormato.QRLabel24.Caption:= 'SIN PAGO'
    ELSE CajaFormato.QRLabel24.Caption:= xIntToLletras(CajaFormato.ADOQuery2.FieldValues['Valor'])+ ' Pesos.';
    CajaFormato.QuickRep1.PreviewInitialState := wsMaximized;
  CajaFormato.QuickRep1.PreviewModal;
  CajaFormato.Close;
  End;
end;

procedure TFImpReciboCaja.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Action :=  caFree;
end;

procedure TFImpReciboCaja.FormActivate(Sender: TObject);
begin
  adoquery4.Open;
  adotable1.Open;
end;

procedure TFImpReciboCaja.DBLookupComboBox8Exit(Sender: TObject);
begin
  if DBLookupCombobox8.KeyValue <> null then
  begin
    ADOQuery1.close;
    ADOQuery1.Filter := 'Documento = '+chr(39)+DBLookupCombobox8.KeyValue+chr(39);
    ADOQuery1.Filtered := true;
    ADOQuery1.Open;
  end;
end;

procedure TFImpReciboCaja.Edit1Change(Sender: TObject);
begin
  ADOQuery1.Filtered := false;
  ADOQuery1.Filter := 'Numero_Ingreso = ' + Edit1.Text;
  ADOQuery1.Filtered := true;
end;

end.
