unit FCrearConvenio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, ADODB, StdCtrls, DBCtrls, Buttons, Mask, ComCtrls,StrUtils,
  Grids, DBGrids, Menus;

type
  TFormCreaConvenios = class(TForm)
    DataSource1: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    ADOQuery1: TADOQuery;
    DataSource3: TDataSource;
    DataSource6: TDataSource;
    DataSource7: TDataSource;
    DataSource8: TDataSource;
    ADOTable2: TADOTable;
    ADOTable3: TADOTable;
    ADOTable4: TADOTable;
    ADOTable6: TADOTable;
    DataSource9: TDataSource;
    DataSource10: TDataSource;
    ADOTable7: TADOTable;
    ADOTable8: TADOTable;
    DataSource11: TDataSource;
    ADOQuery3: TADOQuery;
    ADOQFacturasxCon: TADOQuery;
    ADOQTarifConv: TADOQuery;
    ADOQueryConv: TADOQuery;
    QryApoyo1: TADOQuery;
    ADOQuery5: TADOQuery;
    Panel3: TPanel;
    Label1: TLabel;
    Label14: TLabel;
    Label22: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    ComboBox2: TComboBox;
    BitBtn4: TBitBtn;
    GroupBox7: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label8: TLabel;
    Label19: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label21: TLabel;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker1: TDateTimePicker;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    ProgressBar1: TProgressBar;
    GroupBox3: TGroupBox;
    GroupBox6: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    DBLookupComboBox11: TDBLookupComboBox;
    DBLookupComboBox12: TDBLookupComboBox;
    GroupBox4: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    GroupBox8: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label20: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Edit3: TEdit;
    DBGrid2: TDBGrid;
    Panel4: TPanel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    PopupMenu1: TPopupMenu;
    EliminarRegistrodelConvenio1: TMenuItem;
    SpeedButton5: TSpeedButton;
    DBLookupComboBox2: TDBLookupComboBox;
    DataSource2: TDataSource;
    ADOQEmpresas: TADOQuery;
    Edit4: TEdit;
    EliminartodoslosRegistros1: TMenuItem;
    Splitter1: TSplitter;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure DBLookupComboBox4Click(Sender: TObject);
    procedure DBLookupComboBox5Click(Sender: TObject);
    procedure DBLookupComboBox11Click(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    Procedure refrescacon();
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox2Exit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure EliminarRegistrodelConvenio1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure EliminartodoslosRegistros1Click(Sender: TObject);
    procedure DBLookupComboBox3Exit(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCreaConvenios: TFormCreaConvenios;

implementation

uses UDataModule1, FActivarInactivar,
  Reporteador, MAIN, Libreria_PrateincoForm;

{$R *.dfm}

Procedure TFormCreaConvenios.refrescacon();
Begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  GroupBox4.Visible:=False;
  GroupBox6.Visible:=False;
  IF ComboBox1.Text='P' Then
  Begin
//    DBLookupListBox1.ListField  := 'cod;descripcion';
    ADOQuery1.SQL.Add('SELECT Descripcion,Cd_Producto as cod,* FROM INProductos ');
    ADOQuery1.SQL.Add(' WHERE Estado = '+chr(39)+'A'+chr(39)+' AND Cd_Producto NOT IN (SELECT cd_PST FROM FaConvenios WHERE Aseguradora = '+chr(39)+DBLookupComboBox1.KeyValue+chr(39));
    ADOQuery1.SQL.Add(' AND No_Contrato = '+chr(39)+ComboBox2.text+chr(39));
    ADOQuery1.SQL.Add(' AND Empresa = '+chr(39)+DBLookupComboBox2.KeyValue+chr(39));
    ADOQuery1.SQL.Add(' AND Tp_PST = '+chr(39)+ComboBox1.text+chr(39)+')');
    GroupBox6.Visible:=True;
    DBLookupComboBox11.KeyValue:='';
    DBLookupComboBox12.KeyValue:='';
  End
  ELSE IF ComboBox1.Text='S' Then
  Begin
//    DBLookupListBox1.ListField  := 'cod;descripcion';
    ADOQuery1.SQL.Add('SELECT Descripcion +'+chr(39)+' - '+chr(39)+'+ Codigo as Descripcion ,Codigo as cod,* FROM SAServicios');
    ADOQuery1.SQL.Add(' WHERE Estado = '+chr(39)+'A'+chr(39)+' AND ');
    ADOQuery1.SQL.Add(' Codigo IN (SELECT Codigo1 FROM SAHomologacion WHERE Tabla2 = '+chr(39)+Leftstr(ComboBox3.Text,length(ComboBox3.Text)-4)+chr(39)+') AND ');
    ADOQuery1.SQL.Add(' Codigo NOT IN (SELECT cd_PST FROM FaConvenios ');
    ADOQuery1.SQL.Add('    WHERE Aseguradora = '+chr(39)+DBLookupComboBox1.KeyValue+chr(39));
    ADOQuery1.SQL.Add('    AND Empresa = '+chr(39)+DBLookupComboBox2.KeyValue+chr(39));
    ADOQuery1.SQL.Add('    AND No_Contrato = '+chr(39)+ComboBox2.text+chr(39));
    ADOQuery1.SQL.Add('    AND Tp_PST = '+chr(39)+ComboBox1.text+chr(39)+')');
    GroupBox4.Visible:=True;
    DBLookupComboBox3.KeyValue:='';
    DBLookupComboBox4.KeyValue:='';
    DBLookupComboBox5.KeyValue:='';
    DBLookupComboBox6.KeyValue:='';
  End
  ELSE IF ComboBox1.Text='PAQUETE' Then
  Begin
//    DBLookupListBox1.ListField  := 'descripcion';
    ADOQuery1.SQL.Add('SELECT descripcion,* FROM CRAgrupacion');
    ADOQuery1.SQL.Add(' WHERE Estado = '+chr(39)+'A'+chr(39)+' AND rtrim(Codigo) NOT IN (SELECT rtrim(cd_PST) FROM FaConvenios WHERE Aseguradora = '+chr(39)+DBLookupComboBox1.KeyValue+chr(39));
    ADOQuery1.SQL.Add(' AND Empresa = '+chr(39)+DBLookupComboBox2.KeyValue+chr(39));
    ADOQuery1.SQL.Add(' AND No_Contrato = '+chr(39)+ComboBox2.text+chr(39));
    ADOQuery1.SQL.Add(' AND Tp_PST = '+chr(39)+leftstr(ComboBox1.text,3)+chr(39)+')');
  //  GroupBox5.Visible:=True;
  //  DBLookupComboBox7.KeyValue:='';
  End;


  ADOQuery1.Open;
End;

procedure TFormCreaConvenios.FormActivate(Sender: TObject);
begin
  ADOQEmpresas.Open;
  DBLookupComboBox2.KeyValue := Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja'];

  if DataModule1.ADOQuery1.Fields.FieldByName('Multiempresa').AsString = 'S' then
    DBLookupComboBox2.Enabled  := True
  else
    DBLookupComboBox2.Enabled  := False;

 ADOQuery5.Open;
 if ADOQuery5.FieldValues['codterce'] = null then
 Begin
   MessageBox(0, 'No encuentra terceros con el tipo de tercero de cliente, Por favor ingrese a asignar a los terceros el tipo cliente.', '', MB_ICONSTOP or MB_OK);
   Close;
   Exit;
 End;


 ADOTable2.Open;
 ADOTable3.Open;
 ADOTable4.Open;
 ADOTable6.Open;
 ADOTable7.Open;
 ADOTable8.Open;
 ADOQuery3.Open;
 GroupBox4.Visible:=True;

 ADOQTarifConv.Open;
 ADOQTarifConv.First;
 While NOT ADOQTarifConv.Eof Do
 Begin
   ComboBox3.Items.Add(ADOQTarifConv.FieldValues['tb']);
   ADOQTarifConv.Next;
 End;
 ADOQueryConv.Close;
 ADOQueryConv.Parameters.ParamValues['Doc']:=ADOQuery5.FieldValues['codterce'];
 ADOQueryConv.Parameters.ParamValues['Cont']:=ComboBox2.Text;
 ADOQueryConv.Open;

 DBLookupComboBox1.KeyValue:=ADOQuery5.FieldValues['codterce'];
 DateTimePicker1.DateTime:=now;
 DateTimePicker2.DateTime:=now+365;
 refrescacon();
end;

procedure TFormCreaConvenios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure TFormCreaConvenios.SpeedButton1Click(Sender: TObject);
begin
  IF Combobox3.Text = '' Then
  Begin
    Showmessage('Debe diligenciar la Tarifa');
    Exit;
  End;

  IF Combobox2.Text = '' Then
  Begin
    Showmessage('Debe diligenciar el Contrato');
    Exit;
  End;

  If MaskEdit1.Text='' Then MaskEdit1.Text:='0';
  If MaskEdit2.Text='' Then MaskEdit2.Text:='0';
  ADOQueryConv.Insert;
  ADOQueryConv.FieldValues['Empresa']      := DBLookupComboBox2.KeyValue;
  ADOQueryConv.FieldValues['Aseguradora']  := DBLookupComboBox1.KeyValue;
  ADOQueryConv.FieldValues['Tp_PST']       := ComboBox1.Text;
  IF Combobox1.Text = 'P' Then ADOQueryConv.FieldValues['CD_PST'] := ADOQuery1.FieldValues['CD_Producto']
  ELSE ADOQueryConv.FieldValues['CD_PST']  := ADOQuery1.FieldValues['Codigo'];
  ADOQueryConv.FieldValues['Descripcion']  := ADOQuery1.FieldValues['Descripcion'];
  ADOQueryConv.FieldValues['Porcentaje']   := strtofloat(MaskEdit1.text);
  ADOQueryConv.FieldValues['No_Contrato']  := ComboBox2.Text;
  ADOQueryConv.FieldValues['Fecha_Ini']    := DateTimePicker1.DateTime;
  ADOQueryConv.FieldValues['Fecha_Fin']    := DateTimePicker2.DateTime;
  ADOQueryConv.FieldValues['Tarifa']       := Leftstr(ComboBox3.Text,length(ComboBox3.Text)-4);
  ADOQueryConv.FieldValues['Año']          := Rightstr(ComboBox3.Text,4);
  ADOQueryConv.FieldValues['Capitacion']   := ComboBox4.Text;
  ADOQueryConv.FieldValues['Posible_Pago'] := MaskEdit2.Text;
  ADOQueryConv.FieldValues['Estado']       := 'A';
  ADOQueryConv.Post;

  ComboBox4.Text:='No';
  IF DBLookupComboBox1.Text <> '' Then refrescacon();
end;

procedure TFormCreaConvenios.SpeedButton2Click(Sender: TObject);
begin
  IF Combobox3.Text = '' Then
  Begin
    Showmessage('Debe diligenciar la Tarifa');
    Exit;
  End;

  IF Combobox2.Text = '' Then
  Begin
    Showmessage('Debe diligenciar el Contrato');
    Exit;
  End;

  Progressbar1.Max := ADOQuery1.RecordCount;
  Progressbar1.Position:=0;

  If MaskEdit1.Text='' Then MaskEdit1.Text:='0';
  If MaskEdit2.Text='' Then MaskEdit2.Text:='0';
  ADOQuery1.First;
  WHILE NOT ADOQuery1.Eof DO
  Begin
    Progressbar1.Position := Progressbar1.Position + 1;
    FormCreaConvenios.Refresh;

    ADOQueryConv.Insert;
    ADOQueryConv.FieldValues['Empresa']      := DBLookupComboBox2.KeyValue;
    ADOQueryConv.FieldValues['Aseguradora']  := DBLookupComboBox1.KeyValue;
    ADOQueryConv.FieldValues['Tp_PST']       := ComboBox1.Text;
    IF Combobox1.Text = 'P' Then ADOQueryConv.FieldValues['CD_PST'] := ADOQuery1.FieldValues['CD_Producto']
    ELSE ADOQueryConv.FieldValues['CD_PST']  := ADOQuery1.FieldValues['Codigo'];
    ADOQueryConv.FieldValues['Descripcion']  := ADOQuery1.FieldValues['Descripcion'];
    ADOQueryConv.FieldValues['Porcentaje']   := strtofloat(MaskEdit1.text);
    ADOQueryConv.FieldValues['No_Contrato']  := ComboBox2.Text;
    ADOQueryConv.FieldValues['Fecha_Ini']    := DateTimePicker1.DateTime;
    ADOQueryConv.FieldValues['Fecha_Fin']    := DateTimePicker2.DateTime;
    ADOQueryConv.FieldValues['Tarifa']       := Leftstr(ComboBox3.Text,length(ComboBox3.Text)-4);
    ADOQueryConv.FieldValues['Año']          := Rightstr(ComboBox3.Text,4);
    ADOQueryConv.FieldValues['Capitacion']   := ComboBox4.Text;
    ADOQueryConv.FieldValues['Posible_Pago'] := MaskEdit2.Text;
    ADOQueryConv.FieldValues['Estado']       := 'A';
    ADOQueryConv.Post;

    ADOQuery1.Next;
  End;

  ComboBox4.Text:='No';
  IF DBLookupComboBox1.Text <> '' Then refrescacon();
end;

procedure TFormCreaConvenios.Edit1Change(Sender: TObject);
begin
  If Edit1.Text <> '' Then Begin
   ADOQuery1.Filtered:=False;
  // ADOQuery1.Filter:= 'NOT Descripcion like '+ chr(39)+'%'+Edit2.Text+'%'+ chr(39) + 'AND Descripcion like '+ chr(39)+'%'+Edit1.Text+'%'+ chr(39);
   ADOQuery1.Filter:= 'Descripcion like '+ chr(39)+'%'+Edit1.Text+'%'+ chr(39);
   ADOQuery1.Filtered:=True;
 End
 Else ADOQuery1.Filtered:=False;
end;

procedure TFormCreaConvenios.DBLookupComboBox3Click(Sender: TObject);
begin
  DBLookupComboBox4.KeyValue:='';
  DBLookupComboBox5.KeyValue:='';
  DBLookupComboBox6.KeyValue:='';
end;

procedure TFormCreaConvenios.DBLookupComboBox4Click(Sender: TObject);
begin
  DBLookupComboBox5.KeyValue:='';
  DBLookupComboBox6.KeyValue:='';
end;

procedure TFormCreaConvenios.DBLookupComboBox5Click(Sender: TObject);
begin
  DBLookupComboBox6.KeyValue:='';
end;

procedure TFormCreaConvenios.DBLookupComboBox11Click(Sender: TObject);
begin
  DBLookupComboBox12.KeyValue:='';
end;

procedure TFormCreaConvenios.DBLookupComboBox1Exit(Sender: TObject);
begin
  ADOQueryConv.Close;
  ADOQueryConv.Parameters.ParamValues['Doc']:=ADOQuery5.FieldValues['codterce'];
  ADOQueryConv.Parameters.ParamValues['Cont']:=ComboBox2.Text;
  ADOQueryConv.Open;
  IF DBLookupComboBox1.Text <> '' Then
  Begin
    ComboBox2.Items.Clear;
    QryApoyo1.Close;
    QryApoyo1.SQL.Clear;
    QryApoyo1.SQL.Add('SELECT distinct No_Contrato');
    QryApoyo1.SQL.Add('FROM FAConvenios');
    QryApoyo1.SQL.Add('WHERE Estado = '+chr(39)+'A'+chr(39)+' AND Aseguradora = '''+ADOQuery5.FieldValues['codterce']+'''');
    QryApoyo1.SQL.Add('AND Empresa = '''+trim(DBLookupComboBox2.KeyValue)+'''');
    QryApoyo1.Open;

    if not QryApoyo1.Eof then
      begin
        while not QryApoyo1.Eof do
          begin
            ComboBox2.Items.Add(QryApoyo1.Fields.FieldByName('No_Contrato').AsString);
            QryApoyo1.Next;
          end;
      end
    else

  End;
  IF DBLookupComboBox1.Text <> '' Then refrescacon();
end;

procedure TFormCreaConvenios.ComboBox1Change(Sender: TObject);
begin
  refrescacon();
end;

procedure TFormCreaConvenios.Edit3Change(Sender: TObject);
begin
 If Edit3.Text <> '' Then Begin
   ADOQuery1.Filtered:=False;
   ADOQuery1.Filter:= 'Codigo like '+ chr(39)+'%'+Edit3.Text+'%'+ chr(39);
   ADOQuery1.Filtered:=True;
 End
 Else ADOQuery1.Filtered:=False;
end;

procedure TFormCreaConvenios.MaskEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  case key of
     #1,#2,#3,#4,#5,#6,#7,#11,#12,#14,#15,#17,#18,#19,#20,#21,#22,#23,#24,#25,#26,#27,#32,#33,#34,#35 : key := #0;
     #36,#37,#38,#39,#40,#41,#42,#43,#44,#45,#46,#47,#58,#59,#60,#61,#62,#63,#64: key := #0;
     #65,#66,#67,#68,#69,#70,#71,#72,#73,#74,#75,#76,#77,#78,#79,#80,#81,#82,#83,#84,#85,#86,#87,#88,#89,#90 : key := #0;
     #91,#92,#93,#94,#95,#96,#97,#98,#99,#100,#101,#102,#103,#104,#105,#106,#107,#108,#109,#110,#111,#112,#113,#114,#115,#116 : key := #0;
     #117,#118,#119,#120,#121,#122,#123,#124,#125,#126,#127,#128,#129,#130,#131,#132,#133,#134,#135,#136,#137,#138,#139,#140,#141,#142 : key := #0;
     'ñ','Ñ','¿','´','°','¨','¡','ç' : key := #0;
   end;
end;

procedure TFormCreaConvenios.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
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

procedure TFormCreaConvenios.ComboBox2Exit(Sender: TObject);
begin
  ADOQFacturasxCon.Close;
  ADOQFacturasxCon.Parameters.ParamValues['emp'] := DBLookupCombobox2.KeyValue;
  ADOQFacturasxCon.Parameters.ParamValues['cli'] := DBLookupCombobox1.KeyValue;
  ADOQFacturasxCon.Parameters.ParamValues['con'] := Combobox2.Text;
  ADOQFacturasxCon.Open;
  Edit4.Text := inttostr(ADOQFacturasxCon.FieldValues['Total']);

  ADOQueryConv.Close;
  ADOQueryConv.Parameters.ParamValues['Doc']:=ADOQuery5.FieldValues['codterce'];
  ADOQueryConv.Parameters.ParamValues['Cont']:=ComboBox2.Text;
  ADOQueryConv.Open;
  IF DBLookupComboBox1.Text <> '' Then refrescacon();
end;

procedure TFormCreaConvenios.ComboBox3Change(Sender: TObject);
begin
 refrescacon();
end;

procedure TFormCreaConvenios.BitBtn4Click(Sender: TObject);
begin
  FrmAI := tFrmAI.create(application);
  FrmAI.Edit4.Text:= 'Estado';
  FrmAI.CB1.Items.Add('A');
  FrmAI.CB2.Items.Add('I');
  FrmAI.Edit1.Text:= 'FAConvenios';
  try
    Datamodule1.MuestraconAcceso(FrmAI);
  except
    FrmAI.free;
  end;
end;

procedure TFormCreaConvenios.EliminarRegistrodelConvenio1Click(
  Sender: TObject);
begin
  if strtoint(edit4.text) = 0 Then
  Begin
    ADOQueryConv.Delete;
    IF DBLookupComboBox1.Text <> '' Then refrescacon();
  End
  Else Begin
    Showmessage('ERROR: No es posible eliminar o modificar un convenio con facturas.');
  End;
end;

procedure TFormCreaConvenios.SpeedButton5Click(Sender: TObject);
begin
 ReporteadorP(MainForm.Caption,'SELECT * '+
    ' FROM  INEncFacturacion,INDetFacturacion '+
    ' WHERE INEncFacturacion.Empresa = INDetFacturacion.Empresa AND '+
    '  INEncFacturacion.Numero_Factura = INDetFacturacion.Numero_Factura AND'+
    ' INEncFacturacion.Empresa = '+chr(39)+trim(DBLookupComboBox2.KeyValue)+chr(39)+' AND '+
    ' INEncFacturacion.Cliente = '+chr(39)+DBLookupCombobox1.KeyValue+chr(39)+' AND '+
    ' INEncFacturacion.No_Contrato = '+chr(39)+ComboBox2.Text+chr(39),'');
end;

procedure TFormCreaConvenios.EliminartodoslosRegistros1Click(
  Sender: TObject);
begin
  if strtoint(edit4.text) = 0 Then
  Begin
    Progressbar1.Max := ADOQueryConv.RecordCount;
    Progressbar1.Position:=0;

    ADOQueryConv.First;
    WHILE NOT ADOQueryConv.Eof DO
    Begin
      Progressbar1.Position := Progressbar1.Position + 1;
      FormCreaConvenios.Refresh;

      ADOQueryConv.Delete;

      ADOQueryConv.First;
    End;
    IF DBLookupComboBox1.Text <> '' Then refrescacon();
  End
  Else Begin
    Showmessage('ERROR: No es posible eliminar o modificar un convenio con facturas.');
  End;
end;

procedure TFormCreaConvenios.DBLookupComboBox3Exit(Sender: TObject);
begin
  IF ComboBox1.Text='S' Then
  Begin
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT Descripcion,Codigo as cod,* FROM SAServicios ');
    ADOQuery1.SQL.Add(' WHERE Estado = '+chr(39)+'A'+chr(39)+' AND ');
    ADOQuery1.SQL.Add(' Codigo IN (SELECT Codigo FROM Satarifarios WHERE Tabla = '+chr(39)+Leftstr(ComboBox3.Text,length(ComboBox3.Text)-4)+chr(39)+') AND ');
    ADOQuery1.SQL.Add(' Codigo NOT IN (SELECT cd_PST FROM FaConvenios ');
    ADOQuery1.SQL.Add('    WHERE Aseguradora = '+chr(39)+DBLookupComboBox1.KeyValue+chr(39));
    ADOQuery1.SQL.Add('    AND Empresa = '+chr(39)+DBLookupComboBox2.KeyValue+chr(39));
    ADOQuery1.SQL.Add('    AND No_Contrato = '+chr(39)+ComboBox2.text+chr(39));
    ADOQuery1.SQL.Add('    AND Tp_PST = '+chr(39)+ComboBox1.text+chr(39)+')');


    IF DBLookupComboBox3.Text <> '' Then ADOQuery1.SQL.Add('   AND Capitulo = '+ chr(39)+DBLookupComboBox3.KeyValue+ chr(39));
    IF DBLookupComboBox4.Text <> '' Then ADOQuery1.SQL.Add('   AND Articulo = '+ chr(39)+DBLookupComboBox4.KeyValue+ chr(39));
    IF DBLookupComboBox5.Text <> '' Then ADOQuery1.SQL.Add('   AND Titulo1  = '+ chr(39)+DBLookupComboBox5.KeyValue+ chr(39));
    IF DBLookupComboBox6.Text <> '' Then ADOQuery1.SQL.Add('   AND Titulo2  = '+ chr(39)+DBLookupComboBox6.KeyValue+ chr(39));

    ADOQuery1.Open;
  End
  ELSE IF ComboBox1.Text='P' Then
  Begin
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT Descripcion,Cd_Producto as cod,* FROM INProductos ');
    ADOQuery1.SQL.Add(' WHERE Estado = '+chr(39)+'A'+chr(39)+' AND Cd_Producto  NOT IN (SELECT cd_PST FROM FaConvenios WHERE Aseguradora = '+chr(39)+DBLookupComboBox1.KeyValue+chr(39));
    ADOQuery1.SQL.Add(' AND No_Contrato = '+chr(39)+ComboBox2.text+chr(39));
    ADOQuery1.SQL.Add(' AND Tp_PST = '+chr(39)+ComboBox1.text+chr(39)+')');

    IF DBLookupComboBox11.Text <> '' Then ADOQuery1.SQL.Add(' AND cd_grupo = '+ chr(39)+DBLookupComboBox11.KeyValue+ chr(39));
    IF DBLookupComboBox12.Text <> '' Then ADOQuery1.SQL.Add(' AND cd_subgrupo = '+ chr(39)+DBLookupComboBox12.KeyValue+ chr(39));
    ADOQuery1.Open;
  End
end;

end.




