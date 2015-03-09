unit ActLoteCompras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, ComCtrls;

type
  TActualizacionCompras = class(TForm)
    Button1: TButton;
    ADOQuery1: TADOQuery;
    ADOTable1: TADOTable;
    ADOQuery2: TADOQuery;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ActualizacionCompras: TActualizacionCompras;

implementation

uses UDataModule1, ActLote;

{$R *.dfm}

procedure TActualizacionCompras.Button1Click(Sender: TObject);
Var
  nrinventa,lote:String;
  FechaVence:tdatetime;
  j:Integer;
begin
  ProgressBar1.Max:=ADOQuery1.RecordCount;
  ProgressBar1.Position:=0;

  j:=0;

  ADOQuery1.First;
  WHILE NOT ADOQuery1.Eof DO
  Begin
    inc(j);
    
    Edit3.Text := ADOQuery1.FieldValues['Numero_Compra'];
    ActualizacionCompras.Refresh;
    ProgressBar1.Position:=ProgressBar1.Position+1;

    ADOQuery2.Close;
    ADOquery2.Parameters.ParamValues['Carg'] := ADOQuery1.FieldValues['Numero_Compra'];
    ADOQuery2.Open;
    IF ADOQuery2.RecordCount > 0 Then Begin
      NrInventa:=Datamodule1.Afecta_EncInventarios(ADOTable1.FieldValues['Tipo_Doc_Inventario'],ADOQuery1.FieldValues['Fecha'],ADOTable1.FieldValues['Almacen_Destino'],'','Generado desde Actualización de Compras No.: '+inttostr(ADOQuery1.FieldValues['Numero_Compra'])+' Usuario: '+inttostr(Datamodule1.ADOQuery1.FieldValues['Id']),ADOQuery1.FieldValues['No_Admision']);
      Edit2.Text := NrInventa;

      ADOQuery2.First;
      WHILE NOT ADOQuery2.Eof DO
      Begin
        IF (ADOQuery2.FieldValues['Fecha_Vence'] = null) Then FechaVence:=0
        Else FechaVence:=ADOQuery2.FieldValues['Fecha_Vence'];
        IF (ADOQuery2.FieldValues['Lote'] = null) Then Lote:=''
        Else Lote:=ADOQuery2.FieldValues['Lote'];

        if ADOQuery2.FieldValues['Valor_IVA'] <> null then Datamodule1.Afecta_DetInventarios('V',ADOTable1.FieldValues['Tipo_Doc_Inventario'],strtoint(NrInventa),j,ADOQuery2.FieldValues['Codigo_Producto'],ADOQuery2.FieldValues['Cantidad'],ADOQuery2.FieldValues['Valor_Unitario']+ADOQuery2.FieldValues['Valor_IVA'],ADOTable1.FieldValues['Almacen_Destino'],Null,FechaVence,Lote,ADOQuery1.FieldValues['Fecha'])
        else Datamodule1.Afecta_DetInventarios('V',ADOTable1.FieldValues['Tipo_Doc_Inventario'],strtoint(NrInventa),j,ADOQuery2.FieldValues['Codigo_Producto'],ADOQuery2.FieldValues['Cantidad'],ADOQuery2.FieldValues['Valor_Unitario'],ADOTable1.FieldValues['Almacen_Destino'],Null,FechaVence,Lote,ADOQuery1.FieldValues['Fecha']);
        ADOQuery2.Next;
      End;
    End
    Else NrInventa := '0';
    adoquery1.Edit;
    adoquery1.FieldValues['Numero_Transaccion_Inventario'] := NrInventa;
    ADOQuery1.Next;
  End;
  Close;
end;

procedure TActualizacionCompras.FormCreate(Sender: TObject);
begin
  ADOTable1.Open;
  ADOQuery1.Open;
  Edit1.Text:=inttostr(ADOQuery1.RecordCount);
end;

procedure TActualizacionCompras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

end.
