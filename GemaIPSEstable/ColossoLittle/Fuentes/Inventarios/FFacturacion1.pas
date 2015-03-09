unit FFacturacion1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, DB, ADODB, Mask,
  ComCtrls, Buttons, Menus,StrUtils, Vcl.ExtDlgs;

type
  TTransacciones = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    DataSource3: TDataSource;
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label11: TLabel;
    MaskEdit3: TMaskEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    Memo1: TMemo;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label4: TLabel;
    DBLookupComboBox9: TDBLookupComboBox;
    DBLookupComboBox10: TDBLookupComboBox;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    ADOTable4: TADOTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    BitBtn1: TBitBtn;
    DBLookupComboBox5: TDBLookupComboBox;
    Label6: TLabel;
    DataSource4: TDataSource;
    BitBtn2: TBitBtn;
    PopupMenu1: TPopupMenu;
    EliminarRegistro1: TMenuItem;
    ADOTable5: TADOTable;
    ADOTable6: TADOTable;
    ADOTable7: TADOTable;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label5: TLabel;
    Label7: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    DataSource5: TDataSource;
    ADOQuery1: TADOQuery;
    ComboBox1: TComboBox;
    Label12: TLabel;
    Label23: TLabel;
    DBLookupComboBox13: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    DataSource9: TDataSource;
    ADOQuery13: TADOQuery;
    Shape1: TShape;
    MaskEdit4: TMaskEdit;
    Label8: TLabel;
    ADOQuery14: TADOQuery;
    Panel3: TPanel;
    StringGrid1: TStringGrid;
    Panel4: TPanel;
    Label13: TLabel;
    DBLookupComboBox7: TDBLookupComboBox;
    DBLookupComboBox8: TDBLookupComboBox;
    SpeedButton4: TSpeedButton;
    DataSource6: TDataSource;
    ADOQuery2: TADOQuery;
    MaskEdit5: TMaskEdit;
    Label14: TLabel;
    Label15: TLabel;
    MaskEdit6: TMaskEdit;
    OD: TOpenTextFileDialog;
    ADOTable3: TADOQuery;
    procedure FormActivate(Sender: TObject);
    procedure DataSource3DataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
    procedure BitBtn1Click(Sender: TObject);
    procedure MaskEdit1Change(Sender: TObject);
    procedure MaskEdit3Exit(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure DataSource4DataChange(Sender: TObject; Field: TField);
    procedure EliminarRegistro1Click(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure DBLookupComboBox5Click(Sender: TObject);
    procedure BitBtn2Exit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBLookupComboBox5Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBox3Exit(Sender: TObject);
    procedure DBLookupComboBox4Exit(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DataSource6DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Transacciones: TTransacciones;
  ValorTotal : Integer;

implementation

uses UDataModule1, frmproductos, fKardex,Libreria_Prateinco;


{$R *.dfm}

procedure TTransacciones.FormActivate(Sender: TObject);
begin
  DateTimePicker1.DateTime:=Now;
  adotable1.open;
  adotable2.open;
  adotable4.open;
  adoquery2.Close;
  adoquery2.Open;
  adotable3.Close;
  adotable3.Open;
  adotable5.Open;
  adotable5.First;

  StringGrid1.Cells[1,0]:= 'Producto';
  StringGrid1.Cells[2,0]:= 'Descripción';
  StringGrid1.Cells[3,0]:= 'Cantidad';
  StringGrid1.Cells[4,0]:= 'Valor Unitario';
  StringGrid1.Cells[5,0]:= 'Valor Total';
  StringGrid1.Cells[6,0]:= 'Fecha Vence';
  StringGrid1.Cells[7,0]:= 'Lote';

  StringGrid1.ColWidths[0]:= 30;
  StringGrid1.ColWidths[1]:= 100;
  StringGrid1.ColWidths[2]:= 300;
  StringGrid1.ColWidths[3]:= 100;
  StringGrid1.ColWidths[4]:= 100;
  StringGrid1.ColWidths[5]:= 100;
  StringGrid1.ColWidths[6]:= 100;
  StringGrid1.ColWidths[7]:= 100;

  DBLookupCombobox1.KeyValue:=Datamodule1.ADOQuery1.FieldValues['Almacen_Cargo'];
  if DBLookupCombobox1.Text = '' Then
  Begin
    Showmessage('El Area de este Usuario no tiene almacenes asignados.');
    Close;
  End;
  //DBLookupCOmboBox1.KeyValue:=
  /////////////*MODIFICACION* 1 */////////////////
  {Maskedit1.Text:='0';
  Maskedit2.Text:='0';
  Maskedit3.Text:='0';}
end;

//////////////* Borrar un solo registro */////////////////////////////
procedure GridDelRow(RowNumber : Integer; StringGrid1 : TStringGrid);
var i : Integer;
begin
  RowNumber := StringGrid1.Row;
  if StringGrid1.Cells[1,RowNumber] <> '' then
  begin
    stringgrid1.RowCount := stringgrid1.RowCount - 1;
    for i := RowNumber To stringgrid1.RowCount - 1 do
    begin
      stringgrid1.Rows[i] := stringgrid1.Rows[i+ 1];
      if  StringGrid1.Cells[0,i] <> '' then
          StringGrid1.Cells[0,i] := IntToStr((StrToInt(StringGrid1.Cells[0,i]))-1);
    end;
  end
  else showmessage('No es posible eliminar este campo');
end;
/////////////////////////////////////////////////////////////////////


procedure TTransacciones.DataSource3DataChange(Sender: TObject; Field: TField);
begin
    if DBLookupComboBox3.Focused then DBLookupComboBox4.KeyValue := DBLookupComboBox3.KeyValue
  else DBLookupComboBox3.KeyValue := DBLookupComboBox4.KeyValue;
end;

procedure TTransacciones.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure TTransacciones.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  if DBLookupComboBox1.Focused then DBLookupComboBox2.KeyValue := DBLookupComboBox1.KeyValue
  else DBLookupComboBox1.KeyValue := DBLookupComboBox2.KeyValue;
end;

procedure TTransacciones.DataSource2DataChange(Sender: TObject; Field: TField);
begin
  if DBLookupComboBox9.Focused then DBLookupComboBox10.KeyValue := DBLookupComboBox9.KeyValue
  else DBLookupComboBox9.KeyValue := DBLookupComboBox10.KeyValue;
end;

procedure TTransacciones.BitBtn1Click(Sender: TObject);
begin
  If (DBLookupComboBox1.Text <> '')  OR (DBLookupComboBox9.Text <> '') Then Begin
    If DBLookupComboBox3.Text <> '' Then Begin
      Kardex := tKardex.create(application);
      try
        If ADOTable1.FieldValues['EntradaSalida'] = 'S' Then Kardex.DBLookupComboBox1.KeyValue:=DBLookupComboBox1.KeyValue
        ELSE Kardex.DBLookupComboBox1.KeyValue:=DBLookupComboBox9.KeyValue;
        Kardex.DBLookupComboBox2.KeyValue:=DBLookupComboBox3.KeyValue;
        Kardex.Button1.Click;
        Kardex.show;
      except
        Kardex.free;
      end;
    end
    else Showmessage('Escoga primero un producto.');
  end
  else Showmessage('Escoga primero el almacen.');
end;

procedure TTransacciones.MaskEdit3Exit(Sender: TObject);
begin
  if maskedit1.text <> '0' then maskedit2.Text:=floattostr(strtofloat(maskedit3.Text)/strtofloat(maskedit1.text));
end;

procedure TTransacciones.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
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

procedure TTransacciones.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
Var prb:Extended;
begin
  if (( (key >= char(14)) and (key < '0')) or (key > '9')) and (key <> '.') then
    key := char(0)
  else if (key = '.') and (pos('.',maskedit2.Text) <> 0) then
    key := char(0)
  else
  begin
    if not (key <= char(14)) then
    begin
      if trystrtofloat(maskedit2.Text+key,prb) = FALSE then
      begin
        showmessage('Error en el valor digitado');
        maskedit2.text:='';
      end;
    end;
  end;
end;

procedure TTransacciones.MaskEdit3KeyPress(Sender: TObject; var Key: Char);
Var prb:Extended;
begin
  if (( (key >= char(14)) and (key < '0')) or (key > '9')) and (key <> '.') then
    key := char(0)
  else if (key = '.') and (pos('.',maskedit3.Text) <> 0) then
    key := char(0)
  else
  begin
    if not (key <= char(14)) then
    begin
      if trystrtofloat(maskedit3.Text+key,prb) = FALSE then
      begin
        showmessage('Error en el valor digitado');
        maskedit3.text:='';
      end;
    end;
  end;
end;

procedure TTransacciones.BitBtn2Click(Sender: TObject);
begin
  productos := tproductos.create(application);
  try
    productos.ADOTable1.Filtered:=False;
    productos.ADOTable1.Filter:= 'CD_Producto Like '+chr(39)+'%'+DBLookupComboBox3.Text+'%'+chr(39);
    productos.ADOTable1.Filtered:=True;
    productos.show;
  except
    productos.free;
 end;
end;

procedure TTransacciones.DataSource4DataChange(Sender: TObject;
  Field: TField);
begin
  If ADOTable1.FieldValues['EntradaSalida'] = 'E' then
  Begin
    Label1.Visible:=False;
    Label4.Visible:=True;
    DBLookupCombobox1.Visible:=False;
    DBLookupCombobox2.Visible:=False;
    DBLookupCombobox9.Visible:=True;
    DBLookupCombobox10.Visible:=True;
  End
  Else If ADOTable1.FieldValues['EntradaSalida'] = 'S' then
  Begin
    Label1.Visible:=True;
    Label4.Visible:=False;
    DBLookupCombobox1.Visible:=True;
    DBLookupCombobox2.Visible:=True;
    DBLookupCombobox9.Visible:=False;
    DBLookupCombobox10.Visible:=False;
  End
  Else
  Begin
    Label1.Visible:=True;
    Label4.Visible:=True;
    DBLookupCombobox1.Visible:=True;
    DBLookupCombobox2.Visible:=True;
    DBLookupCombobox9.Visible:=True;
    DBLookupCombobox10.Visible:=True;
  End;
end;

procedure TTransacciones.DataSource6DataChange(Sender: TObject; Field: TField);
begin
  if DBLookupComboBox7.Focused then DBLookupComboBox8.KeyValue := DBLookupComboBox7.KeyValue
  else DBLookupComboBox7.KeyValue := DBLookupComboBox8.KeyValue;
end;

////////////////** EVENTO ELIMINAR REGISTRO **//////////////////
procedure TTransacciones.EliminarRegistro1Click(Sender: TObject);
var  j,RowNumber  : Integer;
begin
  GridDelRow (RowNumber, StringGrid1);
  Maskedit5.Text:='0';
  Maskedit6.Text:='0';
  for j := 0 to StringGrid1.RowCount-1 do
  begin
    Maskedit5.Text:= ntsfbg(stf(Maskedit5.Text) + stf(StringGrid1.Cells[4,j]));
    Maskedit6.Text:= ntsfbg(stf(Maskedit6.Text) + stf(StringGrid1.Cells[5,j]));
  end;
end;

//////////////** LIMPIAR MASKEDIT **///////////////////////////
procedure TTransacciones.DBLookupComboBox3Click(Sender: TObject);
Var vr1:string;
begin
    maskEdit2.Clear;
    maskEdit1.text:= '1';
    maskEdit3.Clear;
    if ADOTable5.FieldValues['Metodo_Valoriza'] <> null then
    BEGIN
    IF Leftstr(ADOTable5.FieldValues['Metodo_Valoriza'],1)='C' Then
    Begin
      IF adotable3.FieldValues['Costo_Prom_Pesos'] = NULL Then vr1:='0'
      ELSE vr1:=adotable3.FieldValues['Costo_Prom_Pesos'];
      End Else
      Begin
        IF adotable3.FieldValues['Ult_Costo_Pesos'] =NULL Then vr1:='0'
        ELSE vr1:=adotable3.FieldValues['Ult_Costo_Pesos'];
      End;
    END
    Else vr1 :='0';
    Maskedit2.Text:=Vr1;
end;

/////////////////** POPUPMENU SOBRE PUNTERIO **///////////////////
procedure TTransacciones.PopupMenu1Popup(Sender: TObject);
var pt : Tpoint;
begin
   SetForegroundWindow(Handle);
   GetCursorPos(pt);
   PopupMenu1.Popup(pt.x,pt.y);
end;

///////////////** PROCEDURE CALCULO VALOR TOTAL **/////////////////////
procedure CalculoValorTotal(ValorTotal : Integer);
begin
  if (Transacciones.maskedit1.Text <> '') and (Transacciones.maskedit2.Text <> '') then
    begin
       Transacciones.Maskedit3.Text := currtostr(strtocurr(Transacciones.Maskedit1.Text) * strtocurr(Transacciones.Maskedit2.Text));
    end
end;

//////////////** EVENTO (I) CALCULO VALOR TOTAL **////////////////////////
procedure TTransacciones.MaskEdit1Change(Sender: TObject);
begin
  {if maskedit1.Text = '' then maskedit1.Text := '0';
  if maskedit2.Text = '' then maskedit2.Text := '0';
  maskedit3.Text:=floattostr(strtofloat(maskedit1.Text)*strtofloat(maskedit2.text));}
  CalculoValorTotal(ValorTotal);
end;

procedure TTransacciones.DBLookupComboBox5Click(Sender: TObject);
begin
  DBLookupCombobox1.Enabled:=false;
  DBLookupCombobox2.Enabled:=false;
  DBLookupCombobox9.Enabled:=false;
  DBLookupCombobox10.Enabled:=false;
  DBLookupComboBox1.KeyValue:='';
  DBLookupComboBox2.KeyValue:='';
  DBLookupComboBox9.KeyValue:='';
  DBLookupComboBox10.KeyValue:='';

  IF ADOTable1.FieldValues['EntradaSalida'] = 'E' Then
  Begin
    MaskEdit2.Enabled:=True;
    MaskEdit3.Enabled:=True;
    GroupBox1.Enabled := True;
  End
  Else Begin
    MaskEdit2.Enabled:=False;
    MaskEdit3.Enabled:=False;
    GroupBox1.Enabled := True;
  End;
end;

procedure TTransacciones.BitBtn2Exit(Sender: TObject);
begin
  ADOTable3.Close;
  ADOTable3.Open;
end;

procedure TTransacciones.SpeedButton3Click(Sender: TObject);
Var
  i:Integer;
begin
  ADOTable6.Open;
  IF ADOTable1.FieldValues['CD_Documento'] = ADOTable6.FieldValues['Tipo_Doc_Inventario'] Then
  Begin
    Showmessage('Las Transacciones para este Tipo de Documento deben ser ingresadas por Facturación.');
    Exit;
  End;
  ADOTable6.Close;

  ADOTable7.Open;
  IF ADOTable1.FieldValues['CD_Documento'] = ADOTable7.FieldValues['Tipo_Doc_Inventario'] Then
  Begin
    Showmessage('Las Transacciones para este Tipo de Documento deben ser ingresadas por Compras.');
    Exit;
  End;
  ADOTable7.Close;

  IF DBLookupComboBox5.Text = '' Then
  Begin
    Showmessage('Documento debe ser ingresado.');
    Exit;
  End;

  IF DBLookupComboBox7.Text = '' Then
  Begin
    Showmessage('El Tercero es Obligatorio.');
    Exit;
  End;

  If DBLookupComboBox1.KeyValue <> DBLookupComboBox9.KeyValue Then
  Begin
    If StringGrid1.RowCount > 2 Then
    Begin
      //Graba el Encabezado
      try
        DataModule1.ADOConnection1.BeginTrans;
        Edit1.Text:=Datamodule1.Afecta_EncInventarios(ADOTable1.FieldValues['Cd_Documento'],DateTimePicker1.DateTime,DBLookupComboBox1.KeyValue,DBLookupComboBox9.KeyValue,Memo1.text,DBLookupComboBox7.KeyValue);

        //Graba el Detalle
        For i:=1 TO (StringGrid1.RowCount-2) Do
        Begin
           IF ADOTable1.FieldValues['EntradaSalida'] = 'E' Then
             Datamodule1.Afecta_DetInventarios('C',ADOTable1.FieldValues['Cd_Documento'],ADOTable1.FieldValues['Consecutivo'],strtoint(StringGrid1.Cells[0,i]),StringGrid1.Cells[1,i],strtofloat(StringGrid1.Cells[3,i]),strtofloat(StringGrid1.Cells[4,i]),DBLookupComboBox1.KeyValue,DBLookupComboBox9.KeyValue,strtodate(StringGrid1.Cells[6,i]),StringGrid1.Cells[7,i],DateTimePicker1.DateTime)
           ELSE IF ADOTable1.FieldValues['EntradaSalida'] = 'V' Then
             Datamodule1.Afecta_DetInventarios('V',ADOTable1.FieldValues['Cd_Documento'],ADOTable1.FieldValues['Consecutivo'],strtoint(StringGrid1.Cells[0,i]),StringGrid1.Cells[1,i],strtofloat(StringGrid1.Cells[3,i]),strtofloat(StringGrid1.Cells[4,i]),DBLookupComboBox1.KeyValue,DBLookupComboBox9.KeyValue,strtodate(StringGrid1.Cells[6,i]),StringGrid1.Cells[7,i],DateTimePicker1.DateTime)
           ELSE Datamodule1.Afecta_DetInventarios('O',ADOTable1.FieldValues['Cd_Documento'],ADOTable1.FieldValues['Consecutivo'],strtoint(StringGrid1.Cells[0,i]),StringGrid1.Cells[1,i],strtofloat(StringGrid1.Cells[3,i]),strtofloat(StringGrid1.Cells[4,i]),DBLookupComboBox1.KeyValue,DBLookupComboBox9.KeyValue,strtodate(StringGrid1.Cells[6,i]),StringGrid1.Cells[7,i],DateTimePicker1.DateTime);
        end;
        DataModule1.ADOConnection1.CommitTrans;
        showmessage('La Transaccion se grabo con el Numero: '+edit1.Text);

        StringGrid1.RowCount:=2;
        StringGrid1.Cells[1,1] := '';
        StringGrid1.Cells[2,1] := '';
        StringGrid1.Cells[3,1] := '';
        StringGrid1.Cells[4,1] := '';
        StringGrid1.Cells[5,1] := '';
        StringGrid1.Cells[6,1] := '';
        StringGrid1.Cells[7,1] := '';

        if MessageDlg('Desea Imprimir la Transacción de Inventarios?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          {TransaccionInventario := tTransaccionInventario.create(application);
          try
             TransaccionInventario.show;
          except
             TransaccionInventario.free;
          end;

          TransaccionInventario.ADOQuery1.Close;
          TransaccionInventario.ADOQuery1.Parameters.ParamValues['ncomp']:= strtoint(edit1.text);
          TransaccionInventario.ADOQuery1.Parameters.ParamValues['tipcomp']:= DBLookupComboBox5.KeyValue;
          TransaccionInventario.ADOQuery1.Open;
          TransaccionInventario.QuickRep1.PreviewInitialState := wsMaximized;
  TransaccionInventario.QuickRep1.PreviewModal;
  TransaccionInventario.Close;}
        end;

        Edit1.Text:='';
        Memo1.Text:='';
        DBLookupComboBox3.keyvalue:='';
        DBLookupComboBox4.keyvalue:='';
        DBLookupCombobox1.KeyValue:= '';
        DBLookupCombobox9.KeyValue:= '';
        DateTimePicker1.DateTime:=Now;
        except
          DataModule1.ADOConnection1.RollbackTrans;
        raise;
      end;
    end
    Else Begin
      Showmessage('La transacción no se puede grabar hasta que se le ingresen productos');
    end;
  end
  Else Begin
    Showmessage('Los almacenes no pueden ser iguales.');
  end;
  DBLookupComboBox5.SetFocus;
end;

procedure TTransacciones.SpeedButton4Click(Sender: TObject);
Var
  f : textfile;
  str,itm:string;
  i,j:Integer;
begin
  Showmessage('Esta opción trae los Items de un Plano CSV (1-"P",2-Cod Producto,3-Nom Producto,4-Cantidad,5-Valor Unitario) Ej: P,U4000,PRB,10,2340');
  OD.DefaultExt := '*.CSV';
  OD.Filter := 'Archivos de Excel CSV (*.csv)|*.CSV';
  OD.Title := 'Ingrese el Nombre del Archivo CSV a cargar.';
  OD.FileEditStyle:=fsComboBox;
  if OD.Execute then
  Begin
    Assignfile(f,OD.FileName);
    Reset(f);
    While Not eof(f) do
    Begin
      ReadLn(F,str);

      if Leftstr(str,1) = 'P' then
      Begin
        itm:=Busca_Parametro(str,0,',');
        ComboBox1.Text := 'P';
        ComboBox1Change(Nil);
        ComboBox1Exit(Nil);
        i:=0;
        Repeat
          itm:=Busca_Parametro(str,postoken,',');
          if i=0 then Begin
            DBLookupComboBox3.KeyValue := itm;
            DBLookupComboBox3Exit(Nil);
            if DBLookupComboBox4.KeyValue <> itm then Begin
              Showmessage('Producto No Existe, Archivo no se cargara.');
              Exit;
            End;
          End
          else if i=2 then MaskEdit1.Text := itm
          else if i=3 then MaskEdit2.Text := itm;

          inc(i);
        Until postoken = -1;
        MaskEdit1Change(Nil);

        SpeedButton1Click(Nil);

      End;
    End;
  End;
  Closefile(f);
end;

procedure TTransacciones.SpeedButton1Click(Sender: TObject);
var i:extended;
    CantVenc,CantFalt: Integer;
    ff:string;
    j:integer;
begin
  IF DBLookupComboBox7.Text = '' Then
  Begin
    Showmessage('El Tercero es Obligatorio.');
    Exit;
  End;

  IF (DBLookUpComboBox6.Text = '') AND (ADOTable1.FieldValues['EntradaSalida'] = 'S') then
  Begin
    Showmessage('No es posible ingresar el producto sin una Fecha o Lote.');
    Exit;
  End;
  If ComboBox1.Text = 'P' Then
  Begin
    if trim(Maskedit1.Text) = '' then Maskedit1.Text:='0';
    if trim(Maskedit2.Text) = '' then Maskedit2.Text:='0';
    if trim(Maskedit3.Text) = '' then Maskedit3.Text:='0';

    ///////////**no permite subir valores en 0 **/////////////////////
    if Maskedit1.Text = '' then showmessage('El valor del campo "'+label9.Caption+'" no puede ser "0"');//Maskedit1.Text:='0';
    if Maskedit2.Text = '' then showmessage('El valor del campo "'+label10.Caption+'" no puede ser "0"');//Maskedit2.Text:='0';
    if Maskedit3.Text = '' then showmessage('El valor del campo "'+label11.Caption+'" no puede ser "0"');//Maskedit2.Text:='0';
    if (trystrtofloat(maskedit1.Text,i)) AND (trystrtofloat(maskedit2.Text,i)) AND (trystrtofloat(maskedit3.Text,i)) then
    Begin
      If (DBLookupComboBox3.KeyValue <> '') Then
      Begin
        StringGrid1.Cells[0,StringGrid1.RowCount-1] := inttostr(StringGrid1.RowCount-1);
        StringGrid1.Cells[1,StringGrid1.RowCount-1] := DBLookupCombobox3.Text;
        StringGrid1.Cells[2,StringGrid1.RowCount-1] := DBLookupCombobox4.Text;
        StringGrid1.Cells[3,StringGrid1.RowCount-1] := Maskedit1.Text;
        StringGrid1.Cells[4,StringGrid1.RowCount-1] := Maskedit2.Text;
        StringGrid1.Cells[5,StringGrid1.RowCount-1] := Maskedit3.Text;
        if ADOTable1.FieldValues['EntradaSalida'] = 'E' then
        BEGIN
          IF ADOQuery1.FieldValues['Fecha_Vencim'] <> null Then
            ff:=InputBox('Fecha de Vencimiento', 'Fecha:', datetostr(ADOQuery1.FieldValues['Fecha_Vencim']))
          ELSE
            ff:=InputBox('Fecha de Vencimiento', 'Fecha:', datetostr(0));
          StringGrid1.Cells[6,StringGrid1.RowCount-1] := ff;
        END
        ELSE BEGIN
          IF ADOQuery1.FieldValues['Fecha_Vencim'] <> null Then
            StringGrid1.Cells[6,StringGrid1.RowCount-1] := datetostr(ADOQuery1.FieldValues['Fecha_Vencim'])
          ELSE
            StringGrid1.Cells[6,StringGrid1.RowCount-1] := datetostr(0);
        END;

        if ADOTable1.FieldValues['EntradaSalida'] = 'E' then
        BEGIN
          IF ADOTable5.FieldValues['TerceroComoLote'] = 'S' then
          Begin
            ff:=DBLookupComboBox7.KeyValue;
          End
          Else Begin
            IF ADOQuery1.FieldValues['Lote'] <> null Then
              ff:=InputBox('Lote', 'Lote:', ADOQuery1.FieldValues['Lote'])
            ELSE
              ff:=InputBox('Lote', 'Lote:', '0');
          End;
          StringGrid1.Cells[7,StringGrid1.RowCount-1] := ff;
        END
        ELSE BEGIN
          IF ADOQuery1.FieldValues['Lote'] <> null Then
            StringGrid1.Cells[7,StringGrid1.RowCount-1] := ADOQuery1.FieldValues['Lote']
          ELSE
            StringGrid1.Cells[7,StringGrid1.RowCount-1] := '0';
        END;

        StringGrid1.Cells[1,StringGrid1.RowCount] := '';
        StringGrid1.Cells[2,StringGrid1.RowCount] := '';
        StringGrid1.Cells[3,StringGrid1.RowCount] := '';
        StringGrid1.Cells[4,StringGrid1.RowCount] := '';
        StringGrid1.Cells[5,StringGrid1.RowCount] := '';
        StringGrid1.Cells[6,StringGrid1.RowCount] := '';
        StringGrid1.Cells[7,StringGrid1.RowCount] := '';
        StringGrid1.RowCount := StringGrid1.RowCount + 1;
      end
      Else Begin
        showmessage('Diligencie los datos correctamente');
      end;
    end
    Else Begin
      showmessage('Valores Invalidos.');
    end;
    DBLookupComboBox3.SetFocus;
  End
  Else Begin
    //*************************************
    // Incluir los productos del paquete...
    //*************************************
    if MessageDlg('Desea incluir el paquete a esta Transacción?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      ADOQuery14.Parameters.ParamValues['Cod']:=ADOQuery13.FieldValues['Codigo'];

      ADOQuery14.Open;
      ADOQuery14.First;
      While NOT ADOQuery14.eof DO
      Begin
        CantFalt:=ADOQuery14.FieldValues['UNIDADES'];

        //ADOQuery1.Close;
        //ADOQuery1.Parameters.ParamValues['Alma']:=Datamodule1.ADOQuery1.FieldValues['Almacen_Cargo'];
        //ADOQuery1.Parameters.ParamValues['Produ']:=ADOQuery14.FieldValues['CD_PST'];
        //ADOQuery1.Open;
        ADOQuery1.Close;
        If ADOTable1.FieldValues['EntradaSalida'] = 'S' Then ADOQuery1.Parameters.ParamValues['Alma']:=DBLookupComboBox1.KeyValue
        ELSE If ADOTable1.FieldValues['EntradaSalida'] = 'E' Then ADOQuery1.Parameters.ParamValues['Alma']:=DBLookupComboBox9.KeyValue
        ELSE ADOQuery1.Parameters.ParamValues['Alma']:=DBLookupComboBox1.KeyValue;
        ADOQuery1.Parameters.ParamValues['Produ']:=ADOQuery14.FieldValues['CD_PST'];
        ADOQuery1.Open;

        ADOQuery1.First;
        While (NOT ADOQuery1.Eof) AND (CantFalt <>0) DO
        Begin
          Repeat
            CantVenc:= strtoint(InputBox('Ingrese la Cantidad para este Vencimiento','Prod: '+ADOQuery14.FieldValues['Descripcion']+' Fecha: '+datetostr(ADOQuery1.FieldValues['Fecha_Vencim'])+' Lote: '+ADOQuery1.FieldValues['Lote']+' Cant: '+inttostr(ADOQuery1.FieldValues['Cantidad']), inttostr(CantFalt)));
            IF CantVenc > CantFalt Then ShowMessage('Error: La cantidad seleccionada es mayor a la del paquete.');
          until CantVenc <=CantFalt;
          CantFalt:=CantFalt-CantVenc;

          IF CantVenc <> 0 Then
          Begin
            StringGrid1.Cells[0,StringGrid1.RowCount-1] := inttostr(StringGrid1.RowCount-1);
            StringGrid1.Cells[1,StringGrid1.RowCount-1] := ADOQuery14.FieldValues['CD_PST'];
            StringGrid1.Cells[2,StringGrid1.RowCount-1] := ADOQuery14.FieldValues['DESCRIPCION'];
            StringGrid1.Cells[3,StringGrid1.RowCount-1] := inttostr(CantVenc);
            StringGrid1.Cells[4,StringGrid1.RowCount-1] := ADOQuery14.FieldValues['PRECIO'];
            StringGrid1.Cells[5,StringGrid1.RowCount-1] := ADOQuery14.FieldValues['PRECIO']*ADOQuery14.FieldValues['UNIDADES'];
            IF ADOQuery1.FieldValues['Fecha_Vencim'] <> null Then StringGrid1.Cells[6,StringGrid1.RowCount-1] := datetostr(ADOQuery1.FieldValues['Fecha_Vencim']);
            IF ADOQuery1.FieldValues['Lote'] <> null Then StringGrid1.Cells[7,StringGrid1.RowCount-1] := ADOQuery1.FieldValues['Lote'];

            StringGrid1.RowCount := StringGrid1.RowCount + 1;
          End;

          ADOQuery1.Next;
        End;

        ADOQuery14.Next;
      End;
      ADOQuery14.Close;
    End;
  End;

  Maskedit5.Text:='0';
  Maskedit6.Text:='0';
  for j := 1 to StringGrid1.RowCount-2 do
  begin
    Maskedit5.Text:= ntsfbg(stf(Maskedit5.Text) + stf(StringGrid1.Cells[4,j]));
    Maskedit6.Text:= ntsfbg(stf(Maskedit6.Text) + stf(StringGrid1.Cells[5,j]));
  end;
end;

procedure TTransacciones.SpeedButton2Click(Sender: TObject);
var i:integer;
begin
  if MessageDlg('Esta seguro de limpiar la Grilla?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    for i:=1 to stringgrid1.RowCount do
    begin
      StringGrid1.Cells[1,i] := '';
      StringGrid1.Cells[2,i] := '';
      StringGrid1.Cells[3,i] := '';
      StringGrid1.Cells[4,i] := '';
      StringGrid1.Cells[5,i] := '';
      StringGrid1.Cells[6,i] := '';
      StringGrid1.Cells[7,i] := '';
    end;
    StringGrid1.RowCount:=2;
    {Maskedit1.Text:='0';
    Maskedit2.Text:='0';
    Maskedit3.Text:='0';}
  end;
end;

procedure TTransacciones.DBLookupComboBox5Exit(Sender: TObject);
begin
  IF DBLookupCombobox5.Text <> '' Then Begin
    GroupBox1.Enabled := True;
    If ADOTable1.FieldValues['EntradaSalida'] = 'E' then
    Begin
      DBLookupCombobox9.KeyValue:=Datamodule1.ADOQuery1.FieldValues['Almacen_Cargo'];
      DBLookupCombobox10.KeyValue:=DBLookupCombobox9.KeyValue;
      DBLookupCombobox1.KeyValue:='';
    End
    Else If ADOTable1.FieldValues['EntradaSalida'] = 'S' then
    Begin
      DBLookupCombobox1.KeyValue:=Datamodule1.ADOQuery1.FieldValues['Almacen_Cargo'];
      DBLookupCombobox2.KeyValue:=DBLookupCombobox1.KeyValue;
      DBLookupCombobox9.KeyValue:='';
    End
    Else
    Begin
      DBLookupCombobox1.KeyValue:=Datamodule1.ADOQuery1.FieldValues['Almacen_Cargo'];
      DBLookupCombobox2.KeyValue:=DBLookupCombobox1.KeyValue;
      DBLookupCombobox9.Enabled:=true;
      DBLookupCombobox10.Enabled:=true;
    End;
  End
  Else GroupBox1.Enabled := False;
end;

procedure TTransacciones.FormCreate(Sender: TObject);
begin
  IF (Datamodule1.ADOQuery1.FieldValues['Almacen_Cargo'] = '') OR (Datamodule1.ADOQuery1.FieldValues['Almacen_Cargo']= null) then begin
    Showmessage('Debe ingresar este Almacén por el módulo de Administración para poder continuar.');
    Halt;
  end;
  ADOQuery13.Open;
end;

procedure TTransacciones.DBLookupComboBox3Exit(Sender: TObject);
begin
  IF DBLookupComboBox3.text <> '' Then Begin
    ADOQuery1.Close;
    If ADOTable1.FieldValues['EntradaSalida'] = 'S' Then ADOQuery1.Parameters.ParamValues['Alma']:=DBLookupComboBox1.KeyValue
    ELSE If ADOTable1.FieldValues['EntradaSalida'] = 'E' Then ADOQuery1.Parameters.ParamValues['Alma']:=DBLookupComboBox9.KeyValue
    ELSE ADOQuery1.Parameters.ParamValues['Alma']:=DBLookupComboBox1.KeyValue;
    ADOQuery1.Parameters.ParamValues['Produ']:=DBLookupComboBox3.text;
    ADOQuery1.Open;

    DBLookupComboBox6.KeyValue := ADOQuery1.FieldValues['llave'];
  End;
end;

procedure TTransacciones.DBLookupComboBox4Exit(Sender: TObject);
begin
  IF DBLookupComboBox3.text <> '' Then Begin
    ADOQuery1.Close;
    If ADOTable1.FieldValues['EntradaSalida'] = 'S' Then ADOQuery1.Parameters.ParamValues['Alma']:=DBLookupComboBox1.KeyValue
    ELSE If ADOTable1.FieldValues['EntradaSalida'] = 'E' Then ADOQuery1.Parameters.ParamValues['Alma']:=DBLookupComboBox9.KeyValue
    ELSE ADOQuery1.Parameters.ParamValues['Alma']:=DBLookupComboBox1.KeyValue;
    ADOQuery1.Parameters.ParamValues['Produ']:=DBLookupComboBox3.text;
    ADOQuery1.Open;
    DBLookupComboBox6.KeyValue := ADOQuery1.FieldValues['llave'];
  End;
end;

procedure TTransacciones.ComboBox1Change(Sender: TObject);
begin
  If Combobox1.Text='P' Then
  Begin
    DBlookupComboBox3.Visible:=True;
    DBlookupComboBox4.Visible:=True;
    DBlookupComboBox6.Visible:=True;
    DBlookupComboBox13.Visible:=False;

    BitBtn1.Visible := True;
    BitBtn2.Visible := True;

    DBEdit4.Visible := False;

    Label7.Visible := True;
    Label9.Visible := True;
    Label10.Visible := True;
    Label11.Visible := True;
    Label23.Visible := False;
    Label8.Visible := False;

    Maskedit1.Visible := True;
    Maskedit2.Visible := True;
    Maskedit3.Visible := True;
    Maskedit4.Visible := False;
  End
  Else If Combobox1.Text='PAQUETE' Then
  Begin
    DBlookupComboBox3.Visible:=False;
    DBlookupComboBox4.Visible:=False;
    DBlookupComboBox6.Visible:=False;
    DBlookupComboBox13.Visible:=True;

    BitBtn1.Visible := False;
    BitBtn2.Visible := False;

    DBEdit4.Visible := True;

    Label7.Visible := False;
    Label9.Visible := False;
    Label10.Visible := False;
    Label11.Visible := False;
    Label23.Visible := True;
    Label8.Visible := True;

    Maskedit1.Visible := False;
    Maskedit2.Visible := False;
    Maskedit3.Visible := False;
    Maskedit4.Visible := True;
  End
end;

procedure TTransacciones.ComboBox1Exit(Sender: TObject);
begin
  If Combobox1.Text='P' Then DBlookupComboBox3.setfocus
  Else If Combobox1.Text='PAQUETE' Then DBlookupComboBox13.setfocus;
  DBLookupComboBox5.TabStop := false;
  Memo1.TabStop := false;
  DateTimePicker1.TabStop := false;
end;

end.
