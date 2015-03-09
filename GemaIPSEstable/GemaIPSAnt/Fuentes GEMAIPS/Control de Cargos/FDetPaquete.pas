unit FDetPaquete;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, DB, ADODB, Mask,
  ComCtrls, Buttons, Menus;

type
  TFrmDetPaquete = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    DataSource3: TDataSource;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label11: TLabel;
    MaskEdit3: TMaskEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    Label6: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    DataSource5: TDataSource;
    ADOQuery4: TADOQuery;
    ComboBox1: TComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBLookupComboBox8: TDBLookupComboBox;
    DataSource4: TDataSource;
    DataSource6: TDataSource;
    DataSource2: TDataSource;
    ADOQuery7: TADOQuery;
    DBLookupComboBox9: TDBLookupComboBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    ADOQuery10: TADOQuery;
    ADOQuery11: TADOQuery;
    ADOQuery12: TADOQuery;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    Label19: TLabel;
    Label20: TLabel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    procedure DataSource3DataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure MaskEdit2Change(Sender: TObject);
    procedure MaskEdit3Exit(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure DBLookupComboBox7Exit(Sender: TObject);
    procedure DataSource4DataChange(Sender: TObject; Field: TField);
    procedure DataSource6DataChange(Sender: TObject; Field: TField);
    procedure ComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBox4Exit(Sender: TObject);
    procedure DBLookupComboBox6Exit(Sender: TObject);
    procedure DBLookupComboBox8Exit(Sender: TObject);
    procedure DBLookupComboBox9Exit(Sender: TObject);
    procedure MaskEdit1Click(Sender: TObject);
    procedure EliminarRegistro1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DataSource5DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDetPaquete: TFrmDetPaquete;

implementation

uses UDataModule1, MAIN, frmproductos, FrmCalculoTarifa, fKardex, Libreria_PrateincoForm;


{$R *.dfm}

procedure TFrmDetPaquete.DataSource3DataChange(Sender: TObject; Field: TField);
begin
  if DBLookupComboBox3.Focused then DBLookupComboBox4.KeyValue := DBLookupComboBox3.KeyValue
  else DBLookupComboBox3.KeyValue := DBLookupComboBox4.KeyValue;
end;

procedure TFrmDetPaquete.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure TFrmDetPaquete.BitBtn1Click(Sender: TObject);
begin
  If Combobox1.Text<>'' Then
  Begin
    If Combobox1.Text='P' Then ReporteadorP('Listado de Productos','SELECT * FROM INProductos','')
    Else If Combobox1.Text='S' Then ReporteadorP('Listado de SAServicios','SELECT * FROM SAServicios','')
    Else If Combobox1.Text='T' Then ReporteadorP('Listado de SATarifarios','SELECT * FROM SATarifarios','');
  end;
end;

procedure TFrmDetPaquete.MaskEdit2Change(Sender: TObject);
begin
  if maskedit1.Text = '' then maskedit1.Text := '0';
  if maskedit2.Text = '' then maskedit2.Text := '0';
  maskedit3.Text:=floattostr(strtofloat(maskedit1.Text)*strtofloat(maskedit2.text));
end;

procedure TFrmDetPaquete.MaskEdit3Exit(Sender: TObject);
begin
  maskedit2.Text:=floattostr(strtofloat(maskedit3.Text)/strtofloat(maskedit1.text));
end;

procedure TFrmDetPaquete.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
Var prb:Extended;
begin
  if key = '-' Then
  Begin
    key := char(0);
    if strtoint(maskedit1.Text) > 0 Then maskedit1.Text:='-'+maskedit1.Text;
  End;

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

procedure TFrmDetPaquete.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmDetPaquete.MaskEdit3KeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmDetPaquete.ComboBox1Change(Sender: TObject);
begin
  If Combobox1.Text='P' Then
  Begin
    DBlookupComboBox3.Visible:=True;
    DBlookupComboBox4.Visible:=True;
    DBlookupComboBox2.Visible:=False;
    DBlookupComboBox6.Visible:=False;
    DBlookupComboBox7.Visible:=False;
    DBlookupComboBox8.Visible:=False;
    DBlookupComboBox9.Visible:=False;
    Label14.Visible:=False;
    Label15.Visible:=False;
    Label16.Visible:=False;
  End
  Else If Combobox1.Text='S' Then
  Begin
    DBlookupComboBox3.Visible:=False;
    DBlookupComboBox4.Visible:=False;
    DBlookupComboBox2.Visible:=True;
    DBlookupComboBox6.Visible:=True;
    DBlookupComboBox9.Visible:=True;
    Label14.Visible:=True;
    Label15.Visible:=True;
    Label16.Visible:=True;
    DBlookupComboBox7.Visible:=False;
    DBlookupComboBox8.Visible:=False;
  End
  Else If Combobox1.Text='T' Then
  Begin
    DBlookupComboBox3.Visible:=False;
    DBlookupComboBox4.Visible:=False;
    DBlookupComboBox2.Visible:=False;
    DBlookupComboBox6.Visible:=False;
    DBlookupComboBox7.Visible:=True;
    DBlookupComboBox8.Visible:=True;
    DBlookupComboBox9.Visible:=False;
    Label14.Visible:=False;
    Label15.Visible:=False;
    Label16.Visible:=False;
  End;
end;

procedure TFrmDetPaquete.DBLookupComboBox2Exit(Sender: TObject);
begin
  IF (ADOQuery11.FieldValues['Valor_Pesos'] = NULL)  Then MaskEdit2.Text:='0'
  ELSE MaskEdit2.Text:=ADOQuery11.FieldValues['Valor_Pesos'];
  maskedit3.Text:=floattostr(strtofloat(maskedit1.Text)*strtofloat(maskedit2.text));
  IF DBLookupComboBox2.Text <> '' Then Begin
    ADOQuery7.Close;
    ADOQuery7.Parameters.ParamValues['tbl']:='CUP';
    ADOQuery7.Parameters.ParamValues['Cod']:=DBLookupCombobox2.Text;
    ADOQuery7.Open;
  End;
end;

procedure TFrmDetPaquete.DBLookupComboBox7Exit(Sender: TObject);
begin
  IF (ADOQuery12.FieldValues['Valor_Pesos'] = NULL)  Then MaskEdit2.Text:='0'
  ELSE MaskEdit2.Text:=ADOQuery12.FieldValues['Valor_Pesos'];
  maskedit3.Text:=floattostr(strtofloat(maskedit1.Text)*strtofloat(maskedit2.text));
end;

procedure TFrmDetPaquete.DataSource4DataChange(Sender: TObject; Field: TField);
begin
  if DBLookupComboBox2.Focused then DBLookupComboBox6.KeyValue := DBLookupComboBox2.KeyValue
  else DBLookupComboBox2.KeyValue := DBLookupComboBox6.KeyValue;
end;

procedure TFrmDetPaquete.DataSource6DataChange(Sender: TObject; Field: TField);
begin
  if DBLookupComboBox7.Focused then DBLookupComboBox8.KeyValue := DBLookupComboBox7.KeyValue
  else DBLookupComboBox7.KeyValue := DBLookupComboBox8.KeyValue;
end;

procedure TFrmDetPaquete.ComboBox1Exit(Sender: TObject);
begin
  If Combobox1.Text='P' Then Begin
    DBlookupComboBox3.setfocus;
  End
  Else If Combobox1.Text='S' Then Begin
    DBlookupComboBox2.setfocus;
  End
  Else If Combobox1.Text='T' Then DBlookupComboBox7.setfocus;
end;

procedure TFrmDetPaquete.DBLookupComboBox4Exit(Sender: TObject);
begin
  Maskedit1.SetFocus;
end;

procedure TFrmDetPaquete.DBLookupComboBox6Exit(Sender: TObject);
begin
  IF DBLookupComboBox9.Enabled = True Then DBLookupComboBox9.SetFocus
  ELSE MaskEdit1.SetFocus;
  IF DBLookupComboBox2.Text <> '' Then Begin
    ADOQuery7.Close;
    ADOQuery7.Parameters.ParamValues['tbl']:='CUP';
    ADOQuery7.Parameters.ParamValues['Cod']:=DBLookupCombobox2.Text;
    ADOQuery7.Open;
  End;
end;

procedure TFrmDetPaquete.DBLookupComboBox8Exit(Sender: TObject);
begin
  Maskedit1.SetFocus;
end;

procedure TFrmDetPaquete.DBLookupComboBox9Exit(Sender: TObject);
begin
  IF DBLookupComboBox9.text <> '' Then
  Begin
    IF ADOquery7.FieldValues['Valor'] <> NULL Then Maskedit2.Text:=floattostr(ADOquery7.FieldValues['Valor']);
  End;
  Maskedit1.SetFocus;
end;

procedure TFrmDetPaquete.MaskEdit1Click(Sender: TObject);
begin
  MaskEdit1.SelectAll;
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

procedure TFrmDetPaquete.EliminarRegistro1Click(Sender: TObject);
var  RowNumber  : Integer;
begin
  ADOQuery1.Delete;
end;

//////////////* PopUpMenu sobe el puntero *///////////////////////////
procedure TFrmDetPaquete.PopupMenu1Popup(Sender: TObject);
var pt : Tpoint;
begin
    SetForegroundWindow(Handle);
    GetCursorPos(pt);
    PopupMenu1.Popup(pt.x,pt.y);
end;

procedure TFrmDetPaquete.BitBtn3Click(Sender: TObject);
var i:extended;
begin
  If (Combobox1.text='S') and (DBLookupComboBox9.Text='') Then
  Begin
    Showmessage('ERROR: El Código no tiene asignación de Tárifa.');
    exit;
  End
  Else If (Combobox1.Text='') Then
  Begin
    Showmessage('ERROR: No ha seleccionado ningun tipo de Producto/Servicio/Tarifa');
    exit;
  End
  Else If (Combobox1.Text='P') AND (DBLookupComboBox3.Text = '') Then
  Begin
    Showmessage('ERROR: Debe ingresar el Producto.');
    exit;
  End
  Else If (Combobox1.Text='S') AND (DBLookupComboBox2.Text = '') Then
  Begin
    Showmessage('ERROR: Debe ingresar el Servicio.');
    exit;
  End
  Else If(Combobox1.Text='T') AND (DBLookupComboBox7.Text = '') Then
  Begin
    Showmessage('ERROR: Debe ingresar el Tarifa.');
    exit;
  End;

  if trim(Maskedit1.Text) = '' then Maskedit1.Text:='0';
  if trim(Maskedit2.Text) = '' then Maskedit2.Text:='0';
  if trim(Maskedit3.Text) = '' then Maskedit3.Text:='0';
  if (trystrtofloat(maskedit1.Text,i)) AND (trystrtofloat(maskedit2.Text,i)) AND (trystrtofloat(maskedit3.Text,i)) then
  Begin
    If MaskEdit1.Text <> '0' Then
    Begin
      ADOQuery1.Insert;
      ADOQuery1.FieldValues['CODIGO'] := DBLookupComboBox5.KeyValue;
      ADOQuery1.FieldValues['TP_PST'] := Combobox1.Text;

      If Combobox1.Text='P' Then
      Begin
        ADOQuery1.FieldValues['CD_PST'] := DBLookupCombobox3.Text;
        ADOQuery1.FieldValues['DESCRIPCION'] := DBLookupCombobox4.Text;
      End
      Else If Combobox1.Text='S' Then
      Begin
        ADOQuery1.FieldValues['CD_PST'] := DBLookupCombobox2.Text;
        ADOQuery1.FieldValues['DESCRIPCION'] := DBLookupComboBox9.Text;
        IF DBLookupComboBox9.Text<>'' Then
        Begin
          ADOQuery1.FieldValues['CD_TARIFA'] := ADOQuery7.FieldValues['cc'];
          ADOQuery1.FieldValues['TB_TARIFA'] := ADOQuery7.FieldValues['tb'];
          ADOQuery1.FieldValues['AÑO_TARIFA'] := ADOQuery7.FieldValues['año'];
        End;
      End
      Else If Combobox1.Text='T' Then
      Begin
        ADOQuery1.FieldValues['CD_PST'] := DBLookupCombobox7.Text;
        ADOQuery1.FieldValues['DESCRIPCION'] := DBLookupCombobox8.Text;
      End;

      ADOQuery1.FieldValues['UNIDADES'] := Maskedit1.Text;
      ADOQuery1.FieldValues['PRECIO'] := Maskedit2.Text;
      ADOQuery1.Post;

      ADOQuery1.Close;
      ADOQuery1.Parameters.ParamValues['Cod']:= ADOQuery4.FieldValues['Codigo'];
      ADOQuery1.Open;

      Maskedit1.Text:='0';
      Maskedit2.Text:='0';
      Maskedit3.Text:='0';
    end
    Else Begin
      showmessage('Cantidad no puede estar en ceros');
    end;
  end
  Else Begin
    showmessage('Valores Invalidos.');
  end;

  If Combobox1.Text='P' Then
    DBLookupCombobox3.SetFocus
  Else If Combobox1.Text='S' Then
    DBLookupCombobox2.SetFocus
  Else If Combobox1.Text='T' Then
    DBLookupCombobox7.SetFocus;
end;

procedure TFrmDetPaquete.BitBtn5Click(Sender: TObject);
begin
  If(MaskEdit2.Text = '0') and (DBLookupComboBox9.Text <> '') Then
  Begin
    FCalculoTarifa := tFCalculoTarifa.create(application);
    try
      FCalculoTarifa.Edit1.Text := ComboBox1.Text;
      FCalculoTarifa.Edit2.Text := DBLookupComboBox2.Text;
      FCalculoTarifa.Edit3.Text := DBLookupComboBox6.Text;
      FCalculoTarifa.Edit4.Text := DBLookupComboBox9.Text;
      IF ADOQuery7.FieldValues['tb'] <> NULL Then FCalculoTarifa.Edit15.Text := ADOQuery7.FieldValues['tb'];
      IF ADOQuery7.FieldValues['tbaño'] <> NULL Then FCalculoTarifa.Edit16.Text := ADOQuery7.FieldValues['tbaño'];

//      IF ADOQuery7.FieldValues['TrUVR'] <> NULL Then FCalculoTarifa.MaskEdit14.Text := ADOQuery7.FieldValues['TrUVR'];
//      IF ADOQuery7.FieldValues['TrValor'] <> NULL Then FCalculoTarifa.MaskEdit15.Text := ADOQuery7.FieldValues['TrValor'];
//      IF ADOQuery7.FieldValues['DSala'] <> NULL Then FCalculoTarifa.Edit5.Text := ADOQuery7.FieldValues['DSala'];
//      IF ADOQuery7.FieldValues['MSala'] <> NULL Then FCalculoTarifa.Edit6.Text := ADOQuery7.FieldValues['MSala'];
//      IF ADOQuery7.FieldValues['MedEsp'] <> NULL Then FCalculoTarifa.Edit7.Text := ADOQuery7.FieldValues['MedEsp'];
//      IF ADOQuery7.FieldValues['Anest'] <> NULL Then FCalculoTarifa.Edit8.Text := ADOQuery7.FieldValues['Anest'];
//      IF ADOQuery7.FieldValues['Medico_Aux'] <> NULL Then FCalculoTarifa.Edit9.Text := ADOQuery7.FieldValues['Medico_Aux'];

      Datamodule1.MuestraconAcceso(FCalculoTarifa);
    except
      FCalculoTarifa.free;
    end;
  End
  Else Showmessage('Para calcular el valor debe estar en 0 y con una tarifa asignada.');
end;

procedure TFrmDetPaquete.FormCreate(Sender: TObject);
begin
  ADOQuery4.Open;
  DBLookupComboBox5.KeyValue:=ADOQuery4.FieldValues['Codigo'];

  ADOQuery10.Close;
  ADOQuery10.Parameters.ParamValues['Emp']:=Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja'];
  ADOQuery10.Parameters.ParamValues['Area']:=Datamodule1.ADOQuery1.FieldValues['Area_Trabaja'];
  ADOQuery10.Open;
  ADOQuery11.Close;
  ADOQuery11.Parameters.ParamValues['Emp']:=Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja'];
  ADOQuery11.Parameters.ParamValues['Area']:=Datamodule1.ADOQuery1.FieldValues['Area_Trabaja'];
  ADOQuery11.Open;
  ADOQuery12.Close;
  ADOQuery12.Parameters.ParamValues['Emp']:=Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja'];
  ADOQuery12.Parameters.ParamValues['Area']:=Datamodule1.ADOQuery1.FieldValues['Area_Trabaja'];
  ADOQuery12.Open;

  Maskedit1.Text:='';
  Maskedit2.Text:='';
  Maskedit3.Text:='';
  DBlookupComboBox3.Visible:=False;
  DBlookupComboBox4.Visible:=False;
  DBlookupComboBox2.Visible:=False;
  DBlookupComboBox6.Visible:=False;
  DBlookupComboBox7.Visible:=False;
  DBlookupComboBox8.Visible:=False;
  DBlookupComboBox9.Visible:=False;
end;

procedure TFrmDetPaquete.BitBtn6Click(Sender: TObject);
begin
  If DBLookupComboBox3.Text <> '' Then Begin
    Kardex := tKardex.create(application);
    try
      Kardex.DBLookupComboBox1.KeyValue:=Datamodule1.ADOQuery1.FieldValues['Almacen_Cargo'];
      Kardex.DBLookupComboBox2.KeyValue:=DBLookupComboBox3.KeyValue;
      Kardex.Button1.Click;
      Datamodule1.MuestraconAcceso(Kardex);
    except
      Kardex.free;
    end;
  end
  else Showmessage('Escoga primero un producto.');
end;

procedure TFrmDetPaquete.BitBtn7Click(Sender: TObject);
begin
  productos := tproductos.create(application);
  try
    productos.ADOTable1.Filtered:=False;
    productos.ADOTable1.Filter:= 'CD_Producto Like '+chr(39)+'%'+DBLookupComboBox3.Text+'%'+chr(39);
    productos.ADOTable1.Filtered:=True;
    Datamodule1.MuestraconAcceso(productos);
  except
    productos.free;
 end;
end;

procedure TFrmDetPaquete.FormActivate(Sender: TObject);
begin
  ADOQuery10.Close;
  ADOQuery10.Open;
end;

procedure TFrmDetPaquete.DataSource5DataChange(Sender: TObject;
  Field: TField);
begin
  ADOQuery1.Close;
  ADOQuery1.Parameters.ParamValues['Cod']:= ADOQuery4.FieldValues['Codigo'];
  ADOQuery1.Open;
end;

end.

