unit FFacturacion1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, DB, ADODB, Mask,
  ComCtrls, Buttons, ActnList, Menus,DateUtils;

type
  TFormCapOrdenCompra = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    DataSource3: TDataSource;
    ADOTable3: TADOTable;
    StringGrid1: TStringGrid;
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Button1: TButton;
    Label9: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label11: TLabel;
    MaskEdit3: TMaskEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    Button2: TButton;
    Button3: TButton;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    Memo1: TMemo;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    MaskEdit4: TMaskEdit;
    Label5: TLabel;
    PopupMenu2: TPopupMenu;
    EliminarRegistro1: TMenuItem;
    Label4: TLabel;
    ADOQuery1: TADOQuery;
    Label6: TLabel;
    ADOQProv: TADOQuery;
    BitBtn2: TBitBtn;
    Label7: TLabel;
    MaskEdit5: TMaskEdit;
    BitBtn3: TBitBtn;
    ADOQSolicitud: TADOQuery;
    procedure Button1Click(Sender: TObject);
    procedure DataSource3DataChange(Sender: TObject; Field: TField);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure BitBtn1Click(Sender: TObject);

    procedure MaskEdit3Exit(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit4KeyPress(Sender: TObject; var Key: Char);


    procedure UltimocostoPESOS1Click(Sender: TObject);
    procedure UltimocostoEXTERIOR1Click(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure MaskEdit1Change(Sender: TObject);
    procedure PopupMenu2Popup(Sender: TObject);
    procedure EliminarRegistro1Click(Sender: TObject);
    procedure MaskEdit2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBLookupComboBox3Exit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    //procedure GridDelRow(RowNumber : Integer; StringGrid1 : TStringGrid);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCapOrdenCompra: TFormCapOrdenCompra;
  fac : Integer;
  RowNumber  : Integer;
  val_iva : Extended;

implementation

uses UDataModule1, frmproductos, fOrdenCompra,
  Reporteador, MAIN, Libreria_PrateincoForm;

{$R *.dfm}

procedure TFormCapOrdenCompra.Button1Click(Sender: TObject);
var i:extended;
    Porc  : Real;
    Val   : Real;
begin
  ///////////**no permite subir valores en 0 **/////////////////////
  if trim(Maskedit1.Text) = '' then Maskedit1.Text:='0';
  if trim(Maskedit2.Text) = '' then Maskedit2.Text:='0';
  if trim(Maskedit3.Text) = '' then Maskedit3.Text:='0';
  if trim(Maskedit4.Text) = '' then Maskedit4.Text:='0';

  if Maskedit1.Text = '' then  showmessage('El valor del campo "'+label9.Caption+'" no puede ser "0"'){Maskedit1.Text:='0'};
  if Maskedit2.Text = '' then  showmessage('El valor del campo "'+label4.Caption+'" no puede ser "0"'){Maskedit2.Text:='0'};
  if Maskedit3.Text = '' then  showmessage('El valor del campo "'+label11.Caption+'" no puede ser "0"'){Maskedit2.Text:='0'};
  if Maskedit4.Text = '' then  showmessage('El valor del campo "'+label5.Caption+'" no puede ser "0"'){Maskedit4.Text:='0'};
  if (trystrtofloat(maskedit1.Text,i)) AND (trystrtofloat(maskedit2.Text,i)) AND (trystrtofloat(maskedit3.Text,i)) AND (trystrtofloat(maskedit4.Text,i)) then
  Begin
    If (DBLookupComboBox3.KeyValue <> '') Then
    Begin
      Porc  := StrToFloat(MaskEdit4.Text);

      Val   := ((StrToFloat(MaskEdit2.Text)* Porc)/100);

      StringGrid1.Cells[0,StringGrid1.RowCount-1] := inttostr(StringGrid1.RowCount-1);
      StringGrid1.Cells[1,StringGrid1.RowCount-1] := DBLookupCombobox3.Text;
      StringGrid1.Cells[2,StringGrid1.RowCount-1] := DBLookupCombobox4.Text;
      StringGrid1.Cells[3,StringGrid1.RowCount-1] := Maskedit1.Text;
      StringGrid1.Cells[4,StringGrid1.RowCount-1] := Maskedit2.Text;
      StringGrid1.Cells[5,StringGrid1.RowCount-1] := Maskedit3.Text;
      StringGrid1.Cells[6,StringGrid1.RowCount-1] := FloatToStr(Val* StrToFloat(Maskedit1.Text));  //Maskedit4.Text;

      StringGrid1.Cells[1,StringGrid1.RowCount] := '';
      StringGrid1.Cells[2,StringGrid1.RowCount] := '';
      StringGrid1.Cells[3,StringGrid1.RowCount] := '';
      StringGrid1.Cells[4,StringGrid1.RowCount] := '';
      StringGrid1.Cells[5,StringGrid1.RowCount] := '';
      StringGrid1.Cells[6,StringGrid1.RowCount] := '';
      StringGrid1.Cells[7,StringGrid1.RowCount] := '';
      StringGrid1.Cells[8,StringGrid1.RowCount] := '';

      StringGrid1.RowCount := StringGrid1.RowCount + 1;

       /////////////*MODIFICACION* 2 */////////////////
      {Maskedit1.Text:='0';
      Maskedit2.Text:='0';
      Maskedit3.Text:='0';
      Maskedit4.Text:='0';}
    end
    Else Begin
      showmessage('Diligencie los datos correctamente');
    end;
  end
  Else Begin
    showmessage('Valores Invalidos.');
  end;
  DBLookupComboBox3.SetFocus;
end;

procedure TFormCapOrdenCompra.DataSource3DataChange(Sender: TObject; Field: TField);
begin
  if DBLookupComboBox3.Focused then DBLookupComboBox4.KeyValue := DBLookupComboBox3.KeyValue
  else DBLookupComboBox3.KeyValue := DBLookupComboBox4.KeyValue;
end;

procedure TFormCapOrdenCompra.Button2Click(Sender: TObject);
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
      StringGrid1.Cells[8,i] := '';
    end;
    StringGrid1.RowCount:=2;

      /////////////*MODIFICACION* 3 */////////////////
    {Maskedit1.Text:='0';
    Maskedit2.Text:='0';
    Maskedit3.Text:='0';
    Maskedit4.Text:='0';}
  end;
end;

procedure TFormCapOrdenCompra.Button3Click(Sender: TObject);
Var
  i:Integer;
  vr_unitario,vr_iva,vr_total:Real;
  nrinventa,Periodo:String;
begin
    IF DBLookUpComboBox1.Text ='' Then Begin
      Showmessage('Error: Debe seleccionarse un Proveedor para la Orden');
      exit;
    End;
    If StringGrid1.RowCount > 2 Then
    Begin
        adoquery2.Open;
        adoquery3.Open;
        ADOTable1.Close;
        ADOTable1.Open;
        //Graba el Encabezado
        try
          DataModule1.ADOConnection1.BeginTrans;
          While adoquery2.Locate('Numero_Orden', inttostr(adotable1.FieldValues['Consecutivo_Ordenes']), [loPartialKey]) Do
          Begin
            adotable1.Edit;
            adotable1.FieldValues['Consecutivo_Ordenes']:=adotable1.FieldValues['Consecutivo_Ordenes']+1;
            adotable1.Post;
          End;
          edit1.Text:=inttostr(adotable1.FieldValues['Consecutivo_Ordenes']);
          adoquery2.Append;
          adoquery2.FieldValues['Numero_Orden'] := StrToInt(Edit1.text);
          adoquery2.FieldValues['Fecha'] := datetimepicker1.DateTime;
          adoquery2.FieldValues['Proveedor'] := DBlookupComboBox1.KeyValue;
          adoquery2.FieldValues['Descripcion'] := Memo1.text;
          adoquery2.Post;

          //Graba el LOG.
          Datamodule1.Graba_Logx(datetimepicker1.DateTime,'G','','Graba Orden: '+Edit1.text,'Compras','');

          //Graba el Detalle
          vr_unitario:=0;
          vr_iva:=0;
          vr_total:=0;
          For i:=1 TO (StringGrid1.RowCount-2) Do
          Begin
            adoquery3.Append;
            adoquery3.FieldValues['Numero_Orden'] := StrToInt(Edit1.text);
            adoquery3.FieldValues['Codigo_Producto'] := StringGrid1.Cells[1,i];
            adoquery3.FieldValues['Cantidad'] := strtofloat(StringGrid1.Cells[3,i]);
            adoquery3.FieldValues['Valor_Unitario'] := strtofloat(StringGrid1.Cells[4,i]);
            adoquery3.FieldValues['Valor_Total'] := strtofloat(StringGrid1.Cells[5,i]);
            adoquery3.FieldValues['Valor_IVA'] := strtofloat(StringGrid1.Cells[6,i]);

            vr_unitario:=vr_unitario+strtofloat(StringGrid1.Cells[4,i]);
            vr_total:=vr_total+strtofloat(StringGrid1.Cells[5,i]);
            vr_IVA:=vr_IVA+strtofloat(StringGrid1.Cells[6,i]);
            adoquery3.Post;
          end;

          adoquery2.Edit;
          adoquery2.FieldValues['Valor_Subtotal'] := Vr_Total;
          adoquery2.FieldValues['Valor_IVA'] := Vr_IVA;
          adoquery2.FieldValues['Valor_Total'] := Vr_Total + Vr_IVA;
          adoquery2.Post;

          DataModule1.ADOConnection1.CommitTrans;
          showmessage('La Orden se grabo con el Numero: '+edit1.Text);

          if MessageDlg('Desea Imprimir la Orden?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            OrdenCompra := tOrdenCompra.create(application);
            try
              OrdenCompra.show;
            except
              OrdenCompra.free;
            end;

            OrdenCompra.ADOQuery1.Close;
            OrdenCompra.ADOQuery1.Parameters.ParamValues['nofact']:= strtoint(edit1.text);
            OrdenCompra.ADOQuery1.Open;
            OrdenCompra.ADOQuery2.Close;
            OrdenCompra.ADOQuery2.Parameters.ParamValues['nofact']:= strtoint(edit1.text);
            OrdenCompra.ADOQuery2.Open;
            OrdenCompra.QuickRep1.PreviewInitialState := wsMaximized;
  OrdenCompra.QuickRep1.PreviewModal;
  OrdenCompra.Close;
          end;

          StringGrid1.RowCount:=2;
          StringGrid1.Cells[1,1] := '';
          StringGrid1.Cells[2,1] := '';
          StringGrid1.Cells[3,1] := '';
          StringGrid1.Cells[4,1] := '';
          StringGrid1.Cells[5,1] := '';
          StringGrid1.Cells[6,1] := '';
          StringGrid1.Cells[7,1] := '';
          StringGrid1.Cells[8,1] := '';
          DateTimePicker1.DateTime:=Now;

          Edit1.Text:='';
          Memo1.Text:='';
          DBLookupComboBox3.keyvalue:='';
          DBLookupComboBox4.keyvalue:='';
          except
            DataModule1.ADOConnection1.RollbackTrans;
          raise;
        end;
        adoquery3.close;
        adoquery2.close;
      end
    Else Begin
      Showmessage('La Orden no se puede grabar hasta no ingresar porductos.');
    end;
end;

procedure TFormCapOrdenCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure TFormCapOrdenCompra.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  if DBLookupComboBox1.Focused then DBLookupComboBox2.KeyValue := DBLookupComboBox1.KeyValue
  else DBLookupComboBox1.KeyValue := DBLookupComboBox2.KeyValue;
end;

procedure TFormCapOrdenCompra.BitBtn1Click(Sender: TObject);
begin
  Productos := tProductos.create(application);
  try
    productos.ADOTable1.Filtered:=False;
    productos.ADOTable1.Filter:= 'CD_Producto Like '+chr(39)+'%'+DBLookupComboBox3.Text+'%'+chr(39);
    productos.ADOTable1.Filtered:=True;
    productos.show;
  except
    Productos.free;
 end;
end;

procedure TFormCapOrdenCompra.MaskEdit3Exit(Sender: TObject);
begin
  if maskedit1.text <> '0' then maskedit2.Text:=floattostr(strtofloat(maskedit3.Text)/strtofloat(maskedit1.text));
end;

procedure TFormCapOrdenCompra.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
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

procedure TFormCapOrdenCompra.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
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

procedure TFormCapOrdenCompra.MaskEdit3KeyPress(Sender: TObject; var Key: Char);
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

procedure TFormCapOrdenCompra.MaskEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  case key of
     #1,#2,#3,#4,#5,#6,#7,#11,#12,#14,#15,#17,#18,#19,#20,#21,#22,#23,#24,#25,#26,#27,#32,#33,#34,#35 : key := #0;
     #36,#37,#38,#39,#40,#41,#42,#43,#45,#47,#58,#59,#60,#61,#62,#63,#64: key := #0;
     #65,#66,#67,#68,#69,#70,#71,#72,#73,#74,#75,#76,#77,#78,#79,#80,#81,#82,#83,#84,#85,#86,#87,#88,#89,#90 : key := #0;
     #91,#92,#93,#94,#95,#96,#97,#98,#99,#100,#101,#102,#103,#104,#105,#106,#107,#108,#109,#110,#111,#112,#113,#114,#115,#116 : key := #0;
     #117,#118,#119,#120,#121,#122,#123,#124,#125,#126,#127,#128,#129,#130,#131,#132,#133,#134,#135,#136,#137,#138,#139,#140,#141,#142 : key := #0;
     'ñ','Ñ','¿','´','°','¨','¡','ç' : key := #0;
   end;
end;

procedure TFormCapOrdenCompra.UltimocostoPESOS1Click(Sender: TObject);
begin
    datamodule1.ADOQCosto.Close;
    datamodule1.ADOQCosto.Parameters[0].Value := DBLookupComboBox3.KeyValue;
    datamodule1.ADOQCosto.Open;
    maskEdit2.text := IntToStr(datamodule1.ADOQCostoULT_COSTO_PESOS.value);
end;

procedure TFormCapOrdenCompra.UltimocostoEXTERIOR1Click(Sender: TObject);
begin
  	datamodule1.ADOQCosto.Close;
    datamodule1.ADOQCosto.Parameters[0].Value := DBLookupComboBox3.KeyValue;
    datamodule1.ADOQCosto.Open;
    maskEdit2.text := IntToStr(datamodule1.ADOQCostoULT_COSTO_EXTR.value);
end;

//////////////** Limpiar Cuadros de texto ** //////////////////////////////
procedure TFormCapOrdenCompra.DBLookupComboBox3Click(Sender: TObject);
begin
  maskEdit2.TEXT:='0';
  maskEdit1.text:= '1';
  maskEdit3.Text:='0';
end;

procedure TFormCapOrdenCompra.MaskEdit1Change(Sender: TObject);
begin

end;

//////////////* PopUpMenu sobe el puntero *///////////////////////////
procedure TFormCapOrdenCompra.PopupMenu2Popup(Sender: TObject);
var pt : Tpoint;
begin
    SetForegroundWindow(Handle);
    GetCursorPos(pt);
    PopupMenu2.Popup(pt.x,pt.y);
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
      if StringGrid1.Cells[0,i] <> '' then
        StringGrid1.Cells[0,i] := IntToStr((StrToInt(StringGrid1.Cells[0,i]))-1);
    end;
    end
    else
    showmessage('No es posible eliminar este campo');
end;

procedure TFormCapOrdenCompra.EliminarRegistro1Click(Sender: TObject);
var  RowNumber  : Integer;
begin
     GridDelRow (RowNumber, StringGrid1);

end;

procedure TFormCapOrdenCompra.MaskEdit2Change(Sender: TObject);
begin
 MaskEdit3.Text:=floattostr(strtofloat(MaskEdit2.Text)*strtofloat(MaskEdit1.Text));
end;

procedure TFormCapOrdenCompra.FormCreate(Sender: TObject);
begin
  DateTimePicker1.DateTime:=Now;
  adotable1.open;
  ADOQProv.open;
  adotable3.Open;

  StringGrid1.Cells[1,0]:= 'Producto';
  StringGrid1.Cells[2,0]:= 'Descripción';
  StringGrid1.Cells[3,0]:= 'Cantidad';
  StringGrid1.Cells[4,0]:= 'Valor Unitario';
  StringGrid1.Cells[5,0]:= 'Valor Total';
  StringGrid1.Cells[6,0]:= 'Valor IVA';

  StringGrid1.ColWidths[0]:= 30;
  StringGrid1.ColWidths[1]:= 100;
  StringGrid1.ColWidths[2]:= 300;
  StringGrid1.ColWidths[3]:= 60;
  StringGrid1.ColWidths[4]:= 85;
  StringGrid1.ColWidths[5]:= 85;
  StringGrid1.ColWidths[6]:= 85;

  ADOQuery2.Open;
  While adoquery2.Locate('Numero_Orden', inttostr(adotable1.FieldValues['Consecutivo_Ordenes']), [loPartialKey]) Do
  Begin
    adotable1.Edit;
    adotable1.FieldValues['Consecutivo_Ordenes']:=adotable1.FieldValues['Consecutivo_Ordenes']+1;
    adotable1.Post;
  End;
  edit1.Text:=inttostr(adotable1.FieldValues['Consecutivo_Ordenes']);
  ADOQuery2.close;
end;

procedure TFormCapOrdenCompra.FormActivate(Sender: TObject);
begin
  ADOQProv.Close;
  ADOQProv.Open;
  ADOTable3.Close;
  ADOTable3.Open;
end;

procedure TFormCapOrdenCompra.BitBtn2Click(Sender: TObject);
begin
  ReporteadorP('','SELECT Cd_PST,Descripcion, sum(Unidades_Solicitadas) as Unidades_Solicitadas,sum(Unidades_Entregadas) as Unidades_Entregadas '+
      ' FROM CRDetSolicitudes'+
      ' WHERE Tp_PST = '+Chr(39)+'P'+Chr(39)+
      ' GROUP BY Cd_PST,Descripcion'+
      ' ORDER BY CD_Pst','');
end;

procedure TFormCapOrdenCompra.DBLookupComboBox3Exit(Sender: TObject);
begin
  ADOQSolicitud.Close;
  ADOQSolicitud.Parameters.ParamValues['cod'] := DBLookupComboBox3.KeyValue;
  ADOQSolicitud.Open;
  if (ADOQSolicitud.FieldValues['Unidades_Solicitadas'] - ADOQSolicitud.FieldValues['Unidades_Entregadas']) <> null Then
    MaskEdit5.Text := inttostr(ADOQSolicitud.FieldValues['Unidades_Solicitadas'] - ADOQSolicitud.FieldValues['Unidades_Entregadas'])
  Else MaskEdit5.Text := '0';
end;

procedure TFormCapOrdenCompra.BitBtn3Click(Sender: TObject);
begin
  MaskEdit1.Text := MaskEdit5.Text;
end;

end.
