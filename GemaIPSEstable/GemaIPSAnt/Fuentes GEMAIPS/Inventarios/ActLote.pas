unit ActLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, ComCtrls;

type
  TActualizacionInvent = class(TForm)
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
  ActualizacionInvent: TActualizacionInvent;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TActualizacionInvent.Button1Click(Sender: TObject);
Var
  nrinventa,lote:String;
  FechaVence:tdatetime;
  i:Integer;
begin
  ProgressBar1.Max:=ADOQuery1.RecordCount;
  ProgressBar1.Position:=0;

  ADOQuery1.First;
  WHILE NOT ADOQuery1.Eof DO
  Begin
    Edit3.Text := ADOQuery1.FieldValues['No_Cargo'];
    ActualizacionInvent.Refresh;
    ProgressBar1.Position:=ProgressBar1.Position+1;

    ADOQuery2.Close;
    ADOquery2.Parameters.ParamValues['Carg'] := ADOQuery1.FieldValues['No_Cargo'];
    ADOQuery2.Open;
    IF ADOQuery2.RecordCount > 0 Then Begin
      NrInventa:=Datamodule1.Afecta_EncInventarios(ADOTable1.FieldValues['Tipo_Doc_Inventario'],ADOQuery1.FieldValues['Fecha'],Datamodule1.ADOQuery1.FieldValues['Almacen_Cargo'],'','Generado desde Actualización Aut. Cargos No.: '+ADOQuery1.FieldValues['No_Cargo']+' Usuario: '+inttostr(Datamodule1.ADOQuery1.FieldValues['Id']),ADOQuery1.FieldValues['No_Admision']);
      Edit2.Text := NrInventa;

      ADOQuery2.First;
      WHILE NOT ADOQuery2.Eof DO
      Begin
        IF (ADOQuery2.FieldValues['Fecha_Vence'] = null) Then FechaVence:=0
        Else FechaVence:=ADOQuery2.FieldValues['Fecha_Vence'];
        IF (ADOQuery2.FieldValues['Lote'] = null) Then Lote:=''
        Else Lote:=ADOQuery2.FieldValues['Lote'];

        IF ADOQuery2.FieldValues['Unidades_Desc'] <> null Then Datamodule1.Afecta_DetInventarios('V',ADOTable1.FieldValues['Tipo_Doc_Inventario'],strtoint(NrInventa),ADOQuery2.FieldValues['Sec_Cargo'],ADOQuery2.FieldValues['Cd_PST'],ADOQuery2.FieldValues['Unidades']-ADOQuery2.FieldValues['Unidades_Desc'],ADOQuery2.FieldValues['Precio'],Datamodule1.ADOQuery1.FieldValues['Almacen_Cargo'],Null,FechaVence,Lote,ADOQuery1.FieldValues['Fecha'])
        ELSE Datamodule1.Afecta_DetInventarios('V',ADOTable1.FieldValues['Tipo_Doc_Inventario'],strtoint(NrInventa),ADOQuery2.FieldValues['Sec_Cargo'],ADOQuery2.FieldValues['Cd_PST'],ADOQuery2.FieldValues['Unidades'],ADOQuery2.FieldValues['Precio'],Datamodule1.ADOQuery1.FieldValues['Almacen_Cargo'],Null,FechaVence,Lote,ADOQuery1.FieldValues['Fecha']);

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

procedure TActualizacionInvent.FormCreate(Sender: TObject);
begin
  ADOTable1.Open;
  ADOQuery1.Open;
  Edit1.Text:=inttostr(ADOQuery1.RecordCount);
end;

procedure TActualizacionInvent.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

end.
