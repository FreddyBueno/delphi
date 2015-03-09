unit FrmKardex;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Win.ADODB, Data.DB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TKardex2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    ADOQLote: TADOQuery;
    DSLote: TDataSource;
    ADOTable5: TADOTable;
    DSProd: TDataSource;
    ADOQProd: TADOQuery;
    DSMov: TDataSource;
    ADOQMov: TADOQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure DSLoteDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Kardex2: TKardex2;


implementation
Uses Libreria_PrateincoForm;

{$R *.dfm}

procedure TKardex2.Button1Click(Sender: TObject);
begin
  ReporteadorP('Cierre de Proveedores',ADOQProd.SQL.Text,'');
end;

procedure TKardex2.DBGrid1DblClick(Sender: TObject);
begin
  ADOQMov.Close;
  ADOQMov.Parameters.ParamValues['Lot']  := ADOQLote.FieldValues['L2'];
  ADOQMov.Parameters.ParamValues['Prod'] := ADOQProd.FieldValues['Cd_Producto'];
  ADOQMov.Open;
  PageControl1.ActivePageIndex:=1;
end;

procedure TKardex2.DSLoteDataChange(Sender: TObject; Field: TField);
begin
  ADOQProd.Close;
  ADOQProd.SQL.Clear;
  ADOQProd.SQL.Add(' SELECT INTransacciones_Det.Cd_Producto,left(INProductos.Descripcion,50) as Descripcion, ');
  ADOQProd.SQL.Add('       (SELECT sum(Cant_Producto) ');
  ADOQProd.SQL.Add('       FROM INTransacciones_Det AS A,INDocumentos,INTransacciones_Enc');
  ADOQProd.SQL.Add('       WHERE A.CD_Producto = INTransacciones_Det.CD_Producto AND');
  ADOQProd.SQL.Add('             A.Cd_Documento = INDocumentos.Cd_Documento AND');
  ADOQProd.SQL.Add('             A.Cd_Documento = INTransacciones_Enc.Cd_Documento AND');
  ADOQProd.SQL.Add('             A.Consec_Dcto = INTransacciones_Enc.Consec_Dcto AND');
  ADOQProd.SQL.Add('             INTransacciones_Enc.Estado is null   AND ');
  ADOQProd.SQL.Add('             EntradaSalida = '+chr(39)+'E'+chr(39)+' AND');
  ADOQProd.SQL.Add('             Lote = '+chr(39)+ADOQLote.FieldValues['L2']+chr(39)+') as Entradas,');
  ADOQProd.SQL.Add('       (SELECT sum(Cant_Producto) ');
  ADOQProd.SQL.Add('       FROM INTransacciones_Det AS A,INDocumentos,INTransacciones_Enc');
  ADOQProd.SQL.Add('       WHERE A.CD_Producto = INTransacciones_Det.CD_Producto AND');
  ADOQProd.SQL.Add('             A.Cd_Documento = INDocumentos.Cd_Documento AND');
  ADOQProd.SQL.Add('             A.Cd_Documento = INTransacciones_Enc.Cd_Documento AND');
  ADOQProd.SQL.Add('             A.Consec_Dcto = INTransacciones_Enc.Consec_Dcto AND');
  ADOQProd.SQL.Add('             INTransacciones_Enc.Estado is null   AND ');
  ADOQProd.SQL.Add('             EntradaSalida = '+chr(39)+'S'+chr(39)+' AND');
  ADOQProd.SQL.Add('             Lote = '+chr(39)+ADOQLote.FieldValues['L2']+chr(39)+') as Salidas,');
  ADOQProd.SQL.Add('       (SELECT sum(Cant_Producto) ');
  ADOQProd.SQL.Add('       FROM INTransacciones_Det AS A,INDocumentos,INTransacciones_Enc');
  ADOQProd.SQL.Add('       WHERE A.CD_Producto = INTransacciones_Det.CD_Producto AND');
  ADOQProd.SQL.Add('             A.Cd_Documento = INDocumentos.Cd_Documento AND');
  ADOQProd.SQL.Add('             A.Cd_Documento = INTransacciones_Enc.Cd_Documento AND');
  ADOQProd.SQL.Add('             A.Consec_Dcto = INTransacciones_Enc.Consec_Dcto AND');
  ADOQProd.SQL.Add('             INTransacciones_Enc.Estado is null  AND ');
  ADOQProd.SQL.Add('             EntradaSalida = '+chr(39)+'E'+chr(39)+' AND');
  ADOQProd.SQL.Add('             Lote = '+chr(39)+ADOQLote.FieldValues['L2']+chr(39)+') - ');
  ADOQProd.SQL.Add('       (SELECT sum(Cant_Producto) ');
  ADOQProd.SQL.Add('       FROM INTransacciones_Det AS A,INDocumentos,INTransacciones_Enc');
  ADOQProd.SQL.Add('       WHERE A.CD_Producto = INTransacciones_Det.CD_Producto AND');
  ADOQProd.SQL.Add('             A.Cd_Documento = INDocumentos.Cd_Documento AND');
  ADOQProd.SQL.Add('             A.Cd_Documento = INTransacciones_Enc.Cd_Documento AND');
  ADOQProd.SQL.Add('             A.Consec_Dcto = INTransacciones_Enc.Consec_Dcto AND');
  ADOQProd.SQL.Add('             INTransacciones_Enc.Estado is null  AND ');
  ADOQProd.SQL.Add('             EntradaSalida = '+chr(39)+'S'+chr(39)+' AND');
  ADOQProd.SQL.Add('             Lote = '+chr(39)+ADOQLote.FieldValues['L2']+chr(39)+') as Total');
  ADOQProd.SQL.Add(' FROM INTransacciones_Det,INProductos');
  ADOQProd.SQL.Add(' WHERE INTransacciones_Det.Cd_Producto = INProductos.Cd_Producto AND');
  ADOQProd.SQL.Add('      Lote = '+chr(39)+ADOQLote.FieldValues['L2']+chr(39));
  ADOQProd.SQL.Add(' GROUP BY INTransacciones_Det.Cd_Producto,left(INProductos.Descripcion,50)');
  ADOQProd.Open;
end;

procedure TKardex2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TKardex2.FormCreate(Sender: TObject);
begin
  ADOTable5.Open;
  IF ADOTable5.FieldValues['TerceroComoLote'] = 'S' then
  Begin
    ADOQLote.Close;
    ADOQLote.SQL.Clear;
    ADOQLote.SQL.Add('SELECT DISTINCT Lote+'+chr(39)+' '+chr(39)+'+Primer_Apellido+'+chr(39)+' '+chr(39)+'+Primer_Nombre as Lote,Lote as L2');
    ADOQLote.SQL.Add('FROM INTransacciones_Det,CONTTerce');
    ADOQLote.SQL.Add('WHERE INTransacciones_Det.Lote = CONTTerce.Numero_Documento');
    ADOQLote.Open;
  End
  Else Begin
    ADOQLote.Close;
    ADOQLote.SQL.Clear;
    ADOQLote.SQL.Add('SELECT DISTINCT Lote,Lote as L2');
    ADOQLote.SQL.Add('FROM INTransacciones_Det');
    ADOQLote.Open;
  End;
  DBLookupComboBox1.KeyValue := ADOQLote.FieldValues['L2'];
end;

end.
