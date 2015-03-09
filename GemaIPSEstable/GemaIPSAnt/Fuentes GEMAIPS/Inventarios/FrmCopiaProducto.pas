unit FrmCopiaProducto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, DBCtrls, Buttons, Mask, ComCtrls;

type
  TFCopiaProductos = class(TForm)
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Edit1: TEdit;
    DBEdit1: TDBEdit;
    ADOQuery2: TADOQuery;
    Memo1: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCopiaProductos: TFCopiaProductos;

implementation


{$R *.dfm}

procedure TFCopiaProductos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFCopiaProductos.FormCreate(Sender: TObject);
begin
  ADOquery1.Open;
  DBLookupComboBox1.KeyValue := ADOQuery1.FieldValues['CD_Producto'];
end;

procedure TFCopiaProductos.SpeedButton1Click(Sender: TObject);
var sisepuede:integer;
begin
  sisepuede:=0;

  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('SELECT * FROM INProductos WHERE CD_Producto = '+ chr(39) + Edit1.Text + chr(39));
  ADOQuery2.Open;
  IF ADOQuery2.RecordCount > 0 Then
  Begin
    sisepuede:=1;
    if MessageDlg('El registro al cual va a cambiar la información ya existe, desea agregarle datos a este Producto? '+ ADOQuery2.FieldValues['Descripcion'],mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      if MessageDlg('Esta Totalmente Seguro?  Va a reemplazar el Producto '+DBLookupCombobox1.Text +' por el documento no: '+ Edit1.Text + ' de ' + ADOQuery2.FieldValues['Descripcion'],mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      Else Exit;
    end
    Else Exit;
  End;

  //****************************************
  //Agrupaciones
  //*****************************************
  memo1.Lines.Add('Agrupaciones');
  FCopiaProductos.Refresh;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('UPDATE CRDetAgrupacion SET CD_PST = ' + chr(39) + Edit1.Text + chr(39));
  ADOQuery2.SQL.Add('  WHERE TP_PST = '+chr(39)+'P'+chr(39)+'AND CD_PST = '+ chr(39) + DBLookupComboBox1.Text + chr(39));
  ADOQuery2.ExecSQL;

  //****************************************
  //Detalle de Cargos
  //*****************************************
  memo1.Lines.Add('Detalle de Cargos');
  FCopiaProductos.Refresh;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('UPDATE CRDetCargos SET CD_PST = ' + chr(39) + Edit1.Text + chr(39));
  ADOQuery2.SQL.Add(' WHERE TP_PST = '+chr(39)+'P'+chr(39)+'AND CD_PST = '+ chr(39) + DBLookupComboBox1.Text + chr(39));
  ADOQuery2.ExecSQL;

  //****************************************
  //Detalle de Solicitudes
  //*****************************************
  memo1.Lines.Add('Solicitudes');
  FCopiaProductos.Refresh;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('UPDATE CRDetSolicitudes SET CD_PST = ' + chr(39) + Edit1.Text + chr(39));
  ADOQuery2.SQL.Add(' WHERE TP_PST = '+chr(39)+'P'+chr(39)+'AND CD_PST = '+ chr(39) + DBLookupComboBox1.Text + chr(39));
  ADOQuery2.ExecSQL;

  //****************************************
  //Detalle de Convenios
  //*****************************************
  memo1.Lines.Add('Convenios');
  if (sisepuede =0) then
  begin
    FCopiaProductos.Refresh;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('UPDATE FAConvenios SET CD_PST = ' + chr(39) + Edit1.Text + chr(39));
    ADOQuery2.SQL.Add(' WHERE TP_PST = '+chr(39)+'P'+chr(39)+'AND CD_PST = '+ chr(39) + DBLookupComboBox1.Text + chr(39));
    ADOQuery2.ExecSQL;
  end;

  //****************************************
  //Detalle de Compras
  //*****************************************
  memo1.Lines.Add('Compras');
  FCopiaProductos.Refresh;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('UPDATE INDetCompras SET Codigo_Producto = ' + chr(39) + Edit1.Text + chr(39));
  ADOQuery2.SQL.Add(' WHERE Codigo_Producto = '+ chr(39) + DBLookupComboBox1.Text + chr(39));
  ADOQuery2.ExecSQL;

  //****************************************
  //Detalle de Facturacion
  //*****************************************
  memo1.Lines.Add('Detalle de Facturacion');
  FCopiaProductos.Refresh;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('UPDATE INDetFacturacion SET Codigo_Producto = ' + chr(39) + Edit1.Text + chr(39));
  ADOQuery2.SQL.Add(' WHERE Tipo_PST = '+chr(39)+'P'+chr(39)+' AND Codigo_Producto = '+ chr(39) + DBLookupComboBox1.Text + chr(39));
  ADOQuery2.ExecSQL;

  //****************************************
  //Detalle de Transaccions
  //*****************************************
  memo1.Lines.Add('Detalle de Transacciones');
  FCopiaProductos.Refresh;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('UPDATE INTransacciones_Det SET CD_Producto = ' + chr(39) + Edit1.Text + chr(39));
  ADOQuery2.SQL.Add(' WHERE CD_Producto = '+ chr(39) + DBLookupComboBox1.Text + chr(39));
  ADOQuery2.ExecSQL;

  //Productos
  memo1.Lines.Add('Productos');
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('SELECT * FROM INProductos WHERE CD_Producto = '+ chr(39) + Edit1.Text + chr(39));
  ADOQuery2.Open;
  IF ADOQuery2.RecordCount > 0 Then
  Begin
     ADOQuery2.Delete;

     ADOquery1.Edit;
     ADOQuery1.FieldValues['CD_Producto']:= Edit1.Text;
     ADOQuery1.Post;
  End
  Else Begin
     ADOquery1.Edit;
     ADOQuery1.FieldValues['CD_Producto']:= Edit1.Text;
     ADOQuery1.Post;
  End;
  ADOQuery2.Close;
  //****************************************

  showmessage('Proceso Terminado.');
  ADOQuery1.Close;
  ADOQuery1.Open;
  DBLookupComboBox1.KeyValue := ADOQuery1.FieldValues['CD_producto'];
  Edit1.Text := '';
  Close;
end;

end.
