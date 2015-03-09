unit FDescargos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, DB, ADODB, Mask,
  ComCtrls, Buttons, Menus,StrUtils;

type
  TDescargos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    DataSource3: TDataSource;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    GroupBox4: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label1: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    ADOQueryProd: TADOQuery;
    DBLookupComboBox10: TDBLookupComboBox;
    Label17: TLabel;
    DBEdit4: TDBEdit;
    Label20: TLabel;
    Label8: TLabel;
    DBLookupComboBox7: TDBLookupComboBox;
    Label9: TLabel;
    MaskEdit1: TMaskEdit;
    BitBtn4: TBitBtn;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit11: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    ADOTable1: TADOTable;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox10Exit(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Descargos: TDescargos;

implementation

uses UDataModule1, MAIN, frmproductos, FrmCalculoTarifa, fKardex;


{$R *.dfm}

procedure TDescargos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure TDescargos.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
Var prb:Extended;
begin
  if (( (key >= char(14)) and (key < '0')) or (key > '9')) and (key <> '.') then
    key := char(0)
  else if (key = '.') and (pos('.',maskedit1.Text) <> 0) then
    key := char(0)
  else
  begin
    if not (key <= char(14)) then
    begin
      if trystrtofloat(maskedit1.Text+key,prb) = FALSE then
      begin
        showmessage('Error en el valor digitado');
        maskedit1.text:='';
      end;
    end;
  end;
end;

procedure GridDelRow(RowNumber : Integer; StringGrid1 : TStringGrid);
begin
end;

procedure TDescargos.DBLookupComboBox10Exit(Sender: TObject);
begin
  DBlookupComboBox1.KeyValue:=ADOquery1.FieldValues['NO_ADMISION'];
end;

procedure TDescargos.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  IF DBlookupComboBox1.Text <> '' Then
  Begin
    DBlookupComboBox10.KeyValue:=ADOquery1.FieldValues['NR_IDENT_USUAR']+ADOquery1.FieldValues['TP_IDENT_USUAR']+ADOquery1.FieldValues['NO_ADMISION'];
    ADOQueryProd.Close;
    ADOQueryProd.Parameters.ParamValues['Adm']:=ADOquery1.FieldValues['NO_ADMISION'];
    ADOQueryProd.Open;
    DBlookupComboBox7.KeyValue:=ADOQueryProd.FieldValues['NO_CARGO']+ADOQueryProd.FieldValues['SEC_CARGO'];
  End;
end;

procedure TDescargos.FormCreate(Sender: TObject);
begin
  ADOQuery1.Open;
  DBlookupComboBox10.KeyValue:=ADOquery1.FieldValues['NR_IDENT_USUAR']+ADOquery1.FieldValues['TP_IDENT_USUAR']+ADOquery1.FieldValues['NO_ADMISION'];
  DBlookupComboBox1.KeyValue:=ADOquery1.FieldValues['NO_ADMISION'];
  ADOQueryProd.Close;
  ADOQueryProd.Parameters.ParamValues['Adm']:=ADOquery1.FieldValues['NO_ADMISION'];
  ADOQueryProd.Open;
  DBlookupComboBox7.KeyValue:=ADOQueryProd.FieldValues['NO_CARGO']+ADOQueryProd.FieldValues['SEC_CARGO'];
  ADOTable1.Open;
end;

procedure TDescargos.BitBtn4Click(Sender: TObject);
var yadesc:integer;
    lote:String;
    FechaVence:tdatetime;
begin
  IF DBLookupComboBox7.Text <> '' Then
  Begin
    IF MaskEdit1.Text <> '' Then
    Begin
      If DBEdit12.Text <> '' Then yadesc := strtoint(DBEdit12.Text)
      Else yadesc:=0;
      IF (strtoint(MaskEdit1.Text)+yadesc) <= strtoint(DBEdit11.Text) Then
      Begin
        ADOQueryProd.Edit;
        IF ADOQueryProd.FieldValues['Unidades_Desc'] <> null Then
          ADOQueryProd.FieldValues['Unidades_Desc'] := ADOQueryProd.FieldValues['Unidades_Desc']+strtoint(MaskEdit1.Text)
        ELSE
          ADOQueryProd.FieldValues['Unidades_Desc'] := strtoint(MaskEdit1.Text);
        ADOQueryProd.Post;

        IF ADOQueryProd.FieldValues['TP_PST'] = 'P' Then Begin
          //Graba el Encabezado
          Edit1.Text:=Datamodule1.Afecta_EncInventarios(ADOTable1.FieldValues['Tipo_Doc_Inventario'],Now,Datamodule1.ADOQuery1.FieldValues['Almacen_Cargo'],Null,'Descargo de Cargos No.' + ADOQueryProd.FieldValues['No_Cargo'],DBLookupComboBox10.KeyValue);
          IF (ADOQueryProd.FieldValues['Fecha_Vence'] = null) Then FechaVence:=0
          Else FechaVence:=ADOQueryProd.FieldValues['Fecha_Vence'];
          IF (ADOQueryProd.FieldValues['Lote'] = null) Then Lote:=''
          Else Lote:=ADOQueryProd.FieldValues['Lote'];
          //Graba el Detalle
          Datamodule1.Afecta_DetInventarios('C',ADOTable1.FieldValues['Tipo_Doc_Inventario'],strtoint(Edit1.Text),1,ADOQueryProd.FieldValues['CD_PST'],strtofloat(Maskedit1.Text)*-1,ADOQueryProd.FieldValues['Precio'],Datamodule1.ADOQuery1.FieldValues['Almacen_Cargo'],Null,FechaVence,Lote,now);
        End;
      End
      Else Begin
        Showmessage('Cantidad debe ser menor o igual a la Cargada.');
      End;
    End
    Else Begin
      Showmessage('Debe seleccionar el cargo.');
    End;
  End;
end;

end.


