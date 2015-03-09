unit Ffactura1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, DBCtrls, ExtCtrls;

type
  TFormImpComp = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Button1: TButton;
    DBLookupComboBox5: TDBLookupComboBox;
    Label6: TLabel;
    ADOTable1: TADOTable;
    DataSource4: TDataSource;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBLookupComboBox5Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImpComp: TFormImpComp;

implementation

uses UDataModule1, FComprobanteEgreso, FComprobantesVarios;

{$R *.dfm}

procedure TFormImpComp.Button1Click(Sender: TObject);
begin
 if ADOTable1.FieldValues['Reporte'] = '2' then
 Begin
   ComprobanteEgreso := tComprobanteEgreso.create(application);
   try
     Datamodule1.MuestraconAcceso(ComprobanteEgreso);
   except
     ComprobanteEgreso.free;
   end;

   ComprobanteEgreso.ADOQuery1.Close;
   ComprobanteEgreso.ADOQuery1.Parameters.ParamValues['tipcomp']:= DBLookupComboBox5.keyvalue;
   ComprobanteEgreso.ADOQuery1.Parameters.ParamValues['emp']:= strtoint(ADOQuery1.FieldValues['empresa']);
   ComprobanteEgreso.ADOQuery1.Parameters.ParamValues['ncomp']:= strtoint(ADOQuery1.FieldValues['Numero_Comprobante']);
   ComprobanteEgreso.ADOQuery1.Open;

   ComprobanteEgreso.ADOQuery2.Close;
   ComprobanteEgreso.ADOQuery2.Parameters.ParamValues['tipcomp']:= DBLookupComboBox5.keyvalue;
   ComprobanteEgreso.ADOQuery2.Parameters.ParamValues['ncomp']:= strtoint(ADOQuery1.FieldValues['Numero_Comprobante']);
   ComprobanteEgreso.ADOQuery2.Open;

   ComprobanteEgreso.QuickRep1.PreviewInitialState := wsMaximized;
   ComprobanteEgreso.QuickRep1.PreviewModal;
   ComprobanteEgreso.Close;
 End
 Else begin
   ComprobantesVarios := tComprobantesVarios.create(application);
   try
     Datamodule1.MuestraconAcceso(ComprobantesVarios);
   except
     ComprobantesVarios.free;
   end;

   ComprobantesVarios.ADOQuery1.Close;
   ComprobantesVarios.ADOQuery1.Parameters.ParamValues['tipcomp']:= DBLookupComboBox5.keyvalue;
   ComprobantesVarios.ADOQuery1.Parameters.ParamValues['emp']:= strtoint(ADOQuery1.FieldValues['Empresa']);
   ComprobantesVarios.ADOQuery1.Parameters.ParamValues['ncomp']:= strtoint(ADOQuery1.FieldValues['Numero_Comprobante']);
   ComprobantesVarios.ADOQuery1.Open;

   ComprobantesVarios.ADOQuery2.Close;
   ComprobantesVarios.ADOQuery2.Parameters.ParamValues['tipcomp']:= DBLookupComboBox5.keyvalue;
   ComprobantesVarios.ADOQuery2.Parameters.ParamValues['ncomp']:= strtoint(ADOQuery1.FieldValues['Numero_Comprobante']);
   ComprobantesVarios.ADOQuery2.Open;

   ComprobantesVarios.QuickRep1.PreviewInitialState := wsMaximized;
   ComprobantesVarios.QuickRep1.PreviewModal;
   ComprobantesVarios.Close;
 end;
end;

procedure TFormImpComp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Action :=  caFree;
end;

procedure TFormImpComp.FormCreate(Sender: TObject);
begin
  adotable1.Open;
end;

procedure TFormImpComp.Edit1Change(Sender: TObject);
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT *,convert(varchar,Numero_Comprobante) + Empresa as llave ');
  ADOQuery1.SQL.Add(' FROM CONTEncComp ');
  ADOQuery1.SQL.Add(' WHERE Tipo_Comprobante = '+chr(39)+DBLookupComboBox5.KeyValue+chr(39));
  if Datamodule1.ADOQuery1.FieldValues['Multiempresa'] <> 'S' Then
    ADOQuery1.SQL.Add(' AND Empresa = '+chr(39)+Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja']+chr(39));
  ADOQuery1.SQL.Add('  AND Numero_Comprobante like '+chr(39)+Edit1.Text+'%'+chr(39));
  ADOQuery1.Open;
  ADOQuery1.First;

  DBLookupComboBox1.KeyValue := ADOQuery1.FieldValues['llave'];
end;

procedure TFormImpComp.DBLookupComboBox5Exit(Sender: TObject);
begin
  if DBLookupComboBox5.KeyValue <> null then
  Begin
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT *,convert(varchar,Numero_Comprobante) + Empresa as llave ');
    ADOQuery1.SQL.Add(' FROM CONTEncComp ');
    ADOQuery1.SQL.Add(' WHERE Tipo_Comprobante = '+chr(39)+DBLookupComboBox5.KeyValue+chr(39));
    if Datamodule1.ADOQuery1.FieldValues['Multiempresa'] <> 'S' Then
      ADOQuery1.SQL.Add(' AND Empresa = '+chr(39)+Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja']+chr(39));
    ADOQuery1.SQL.Add('  AND Numero_Comprobante like '+chr(39)+Edit1.Text+'%'+chr(39));
    ADOQuery1.Open;
  End;
  DBLookupComboBox1.KeyValue := ADOQuery1.FieldValues['llave'];
end;

end.
