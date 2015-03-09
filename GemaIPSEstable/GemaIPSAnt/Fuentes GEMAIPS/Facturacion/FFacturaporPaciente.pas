unit FFacturaporPaciente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, DB, ADODB, Mask,
  ComCtrls, Buttons, Menus,StrUtils,dateutils,Libreria_Prateinco, JvExControls,
  JvSwitch;

type
  TFacturaDirectaxPac = class(TForm)
    DataSource3: TDataSource;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    DataSource1: TDataSource;
    ADOQueryPacientes: TADOQuery;
    DataSource4: TDataSource;
    DataSource2: TDataSource;
    ADOQueryCrucServHomo: TADOQuery;
    PopupMenu2: TPopupMenu;
    EliminarRegistro1: TMenuItem;
    ADOQueryProd: TADOQuery;
    ADOQueryServ: TADOQuery;
    DataSourceSVencim: TDataSource;
    ADOQuerySVencim: TADOQuery;
    DataSourceEncAgrupa: TDataSource;
    ADOQueryEncAgrupa: TADOQuery;
    ADOQueryDetAgrupa: TADOQuery;
    CambiarlaCantidad1: TMenuItem;
    DataSource7: TDataSource;
    ADOQuery9: TADOQuery;
    ADOQuery8: TADOQuery;
    ADOQuery7: TADOQuery;
    ADOTable1: TADOTable;
    ADOQTemp: TADOQuery;
    ADOQueryAdmin: TADOQuery;
    ADOTableParam: TADOTable;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    TabSheet3: TTabSheet;
    Panel3: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    DateTimePicker1: TDateTimePicker;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    Memo1: TMemo;
    BitBtn4: TBitBtn;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label21: TLabel;
    Label25: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox9: TDBLookupComboBox;
    BitBtn5: TBitBtn;
    DBLookupComboBox12: TDBLookupComboBox;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    DBEdit6: TDBEdit;
    Panel4: TPanel;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    StringGrid1: TStringGrid;
    TabSheet5: TTabSheet;
    GroupBox5: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label7: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    ListBox1: TListBox;
    GroupBox4: TGroupBox;
    Label4: TLabel;
    Label1: TLabel;
    Label17: TLabel;
    DBEdit3: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBLookupComboBox10: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    DBEdit2: TDBEdit;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    ListBox2: TListBox;
    GroupBox6: TGroupBox;
    Label18: TLabel;
    DBEdit17: TDBEdit;
    DataSource8: TDataSource;
    ADOQueryAseguradora: TADOQuery;
    DBLookupComboBox11: TDBLookupComboBox;
    Label5: TLabel;
    GroupBox7: TGroupBox;
    StringGridCaja: TStringGrid;
    GroupBox8: TGroupBox;
    BitBtn3: TBitBtn;
    TabSheet6: TTabSheet;
    Label23: TLabel;
    DBLookupComboBox13: TDBLookupComboBox;
    Label24: TLabel;
    MaskEdit4: TMaskEdit;
    DBEdit5: TDBEdit;
    DataSource9: TDataSource;
    ADOQueryCargos: TADOQuery;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    DataSource10: TDataSource;
    ADOQueryConceptos: TADOQuery;
    Panel5: TPanel;
    SpeedButton2: TSpeedButton;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    Label13: TLabel;
    DBLookupComboBox7: TDBLookupComboBox;
    DBEdit11: TDBEdit;
    DataSource11: TDataSource;
    GroupBox10: TGroupBox;
    Shape1: TShape;
    Label26: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    MaskEditVP: TMaskEdit;
    MaskEditValor: TMaskEdit;
    MaskEditTPagado: TMaskEdit;
    DBLookupComboBox8: TDBLookupComboBox;
    DBLookupComboBox14: TDBLookupComboBox;
    DBLookupComboBox15: TDBLookupComboBox;
    DBLookupComboBox16: TDBLookupComboBox;
    ADOQueryAlmacen: TADOQuery;
    Label6: TLabel;
    MaskEdit5: TMaskEdit;
    DBEdit12: TDBEdit;
    Label12: TLabel;
    Label19: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Label20: TLabel;
    MaskEdit6: TMaskEdit;
    Label22: TLabel;
    DateTimePicker2: TDateTimePicker;
    GroupBox9: TGroupBox;
    Memo2: TMemo;
    Label28: TLabel;
    MaskEdit7: TMaskEdit;
    Label33: TLabel;
    MaskEdit8: TMaskEdit;
    Label34: TLabel;
    MaskEdit9: TMaskEdit;
    Label35: TLabel;
    MaskEdit10: TMaskEdit;
    Label36: TLabel;
    MaskEdit11: TMaskEdit;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    DBLookupComboBox17: TDBLookupComboBox;
    DBLookupComboBox18: TDBLookupComboBox;
    Label37: TLabel;
    DataSource5: TDataSource;
    ADOTableCentroC: TADOTable;
    ADOQueryAdmisiones: TADOQuery;
    GroupBox11: TGroupBox;
    Label39: TLabel;
    DBLookupComboBox20: TDBLookupComboBox;
    Label38: TLabel;
    MaskEdit12: TMaskEdit;
    Label40: TLabel;
    DBEdit14: TDBEdit;
    Label41: TLabel;
    MaskEdit13: TMaskEdit;
    ADOQueryCargos2: TADOQuery;
    ADOTable2: TADOTable;
    QryG: TADOQuery;
    CheckBox1: TCheckBox;
    ProgressBar1: TProgressBar;
    ADOQCierres: TADOQuery;
    BitBtn15: TBitBtn;
    ADOParamCargo: TADOTable;
    MaskEdit1: TEdit;
    DSVendedor: TDataSource;
    ADOQVendedor: TADOQuery;
    DBLookupComboBox19: TDBLookupComboBox;
    Label42: TLabel;
    MaskEdit14: TMaskEdit;
    ADOQIngCaj: TADOQuery;
    QryApoyo: TADOQuery;
    ADOParamCaja: TADOTable;
    ADOQDetCaja: TADOQuery;
    Label43: TLabel;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    chk: TCheckBox;
    pnl: TPanel;
    Sw1: TJvSwitch;
    Sw2: TJvSwitch;
    Sw3: TJvSwitch;
    Sw4: TJvSwitch;
    procedure DataSource3DataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure MaskEdit2Change(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox3Exit(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure DataSource4DataChange(Sender: TObject; Field: TField);
    procedure ComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBox9Exit(Sender: TObject);
    procedure MaskEdit1Click(Sender: TObject);
    procedure EliminarRegistro1Click(Sender: TObject);
    procedure PopupMenu2Popup(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure CambiarlaCantidad1Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DataSource10DataChange(Sender: TObject; Field: TField);
    procedure MaskEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn13Click(Sender: TObject);
    procedure DateTimePicker1Exit(Sender: TObject);
    procedure DataSource5DataChange(Sender: TObject; Field: TField);
    procedure PageControl1Change(Sender: TObject);
    procedure DBLookupComboBox11Exit(Sender: TObject);
    procedure DataSource8DataChange(Sender: TObject; Field: TField);
    procedure DBLookupComboBox20Exit(Sender: TObject);
    procedure MaskEdit6Exit(Sender: TObject);
    procedure LimpiaGrilla(Grilla : TStringGrid; Col : Integer);
    procedure DataSource9DataChange(Sender: TObject; Field: TField);
    procedure MaskEdit6Change(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure MaskEdit1Change(Sender: TObject);
    procedure DBLookupComboBox5Exit(Sender: TObject);
    procedure DBLookupComboBox19Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FacturaDirectaxPac: TFacturaDirectaxPac;
  x:integer;
  yagrupo:boolean;

implementation

uses UDataModule1, MAIN, frmproductos,FrmCalculoTarifa, fKardex,
  ModuloAdmision, SAPAcientesShort, FImpresionFactura, FImpresionFacturaSmall2,
  FImpresionFacturaSmall, FCajaFormato, Libreria_PrateincoForm;

{$R *.dfm}

procedure TFacturaDirectaxPac.DataSource3DataChange(Sender: TObject; Field: TField);
begin
  if DBLookupComboBox3.Focused then DBLookupComboBox4.KeyValue := DBLookupComboBox3.KeyValue
  else DBLookupComboBox3.KeyValue := DBLookupComboBox4.KeyValue;
end;

procedure TFacturaDirectaxPac.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if StringGrid1.RowCount > 2 then
 Begin
   if MessageDlg('Esta seguro de Salir?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
    Action :=  caFree;
   End;
 End;
end;

procedure TFacturaDirectaxPac.BitBtn1Click(Sender: TObject);
begin
  If Combobox1.Text<>'' Then
  Begin
    If Combobox1.Text='P' Then ReporteadorP('Listado de Productos','SELECT * FROM INProductos','')
    Else If Combobox1.Text='S' Then ReporteadorP('Listado de SAServicios','SELECT * FROM SAServicios','')
    Else If Combobox1.Text='T' Then ReporteadorP('Listado de SATarifarios','SELECT * FROM SATarifarios','');
  end;
end;

procedure TFacturaDirectaxPac.MaskEdit2Change(Sender: TObject);
begin
  if maskedit1.Text = '' then maskedit1.Text := '0';
  if maskedit2.Text = '' then maskedit2.Text := '0';
  IF ADOQueryServ.FieldValues['Porcentaje'] <> null Then
  Begin
    maskedit12.Text:= ((stf(maskedit2.text)*ADOQueryServ.FieldValues['Porcentaje'])/100);
    //Else maskedit12.Text:= ntsfbg( ((stf(maskedit2.text)) / (1+(stf(DBEdit12.Text)/100)))  * ((((ADOQueryProd.FieldValues['Porcentaje'])/100))) );
  End
  else Begin
    IF ADOQueryProd.FieldValues['Porcentaje'] <> null Then
    Begin
      maskedit12.Text:= ((stf(maskedit2.text)*ADOQueryProd.FieldValues['Porcentaje'])/100)
      //maskedit12.Text:= ntsfbg( ((stf(maskedit2.text)) / (1+(stf(DBEdit12.Text)/100)))  * ((((ADOQueryProd.FieldValues['Porcentaje'])/100))) );
    End
    ELSE maskedit12.Text:= '0';
  End;
  if DBEdit12.Text = '' Then maskedit5.Text:='0'
  ELSE Begin
    maskedit5.Text:=ntsfbg((stf(maskedit1.Text)*stf(maskedit12.Text)*(stf(DBEdit12.Text)/100)));
  End;
  maskedit3.Text:=ntsfbg(stf(maskedit1.Text)*stf(maskedit12.text) + stf(maskedit5.Text));
end;

procedure TFacturaDirectaxPac.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
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

procedure TFacturaDirectaxPac.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
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

procedure TFacturaDirectaxPac.DBLookupComboBox3Exit(Sender: TObject);
begin
  IF (ADOQueryProd.FieldValues['Precio_Venta_Pesos'] = NULL) Then MaskEdit2.Text:='0'
  ELSE MaskEdit2.Text:=ADOQueryProd.FieldValues['Precio_Venta_Pesos'];

  IF DBLookupComboBox3.text <> '' Then Begin
    ADOQuerySVencim.Close;
    ADOQuerySVencim.Parameters.ParamValues['Alma']:=Datamodule1.ADOQuery1.FieldValues['Almacen_Cargo'];
    ADOQuerySVencim.Parameters.ParamValues['Produ']:=DBLookupComboBox3.text;
    ADOQuerySVencim.Open;
    DBLookupComboBox12.KeyValue:=ADOQuerySVencim.FieldValues['Llave'];
  End;
end;

procedure TFacturaDirectaxPac.DBLookupComboBox5Exit(Sender: TObject);
begin
  DBLookupComboBox19.KeyValue := ADOQVendedor.FieldValues['Numero_Documento'];
end;

procedure TFacturaDirectaxPac.ComboBox1Change(Sender: TObject);
begin
  If Combobox1.Text='P' Then
  Begin
    DBlookupComboBox3.Visible:=True;
    DBlookupComboBox4.Visible:=True;
    DBlookupComboBox2.Visible:=False;
    DBlookupComboBox6.Visible:=False;
    DBlookupComboBox9.Visible:=False;
    Label14.Visible:=False;
    Label15.Visible:=False;
    Label16.Visible:=False;
    BitBtn6.Visible:=True;
    BitBtn7.Visible:=True;
    BitBtn1.Visible:=True;

    DBlookupComboBox12.Visible:=True;
    Label21.Visible:=True;
    Label9.Visible :=True;
    Label10.Visible:=True;
    Label11.Visible:=True;
    MaskEdit1.Visible:=True;
    MaskEdit2.Visible:=True;
    MaskEdit3.Visible:=True;
    BitBtn5.Visible:=False;

    Label25.Visible:=True;
    DbEdit6.Visible:=True;

    Label12.Visible:=True;
    DbEdit12.Visible:=True;
    Label6.Visible:=True;
    MaskEdit5.Visible:=True;
    DBEdit12.DataSource := datasource3;
  End
  Else If Combobox1.Text='S' Then
  Begin
    DBlookupComboBox3.Visible:=False;
    DBlookupComboBox4.Visible:=False;
    DBlookupComboBox2.Visible:=True;
    DBlookupComboBox6.Visible:=True;
    DBlookupComboBox9.Visible:=False;
    Label14.Visible:=False;
    Label15.Visible:=False;
    Label16.Visible:=False;
    BitBtn6.Visible:=False;
    BitBtn7.Visible:=False;
    BitBtn1.Visible:=True;

    DBlookupComboBox12.Visible:=False;
    Label21.Visible:=False;
    Label9.Visible :=True;
    Label10.Visible:=True;
    Label11.Visible:=True;
    MaskEdit1.Visible:=True;
    MaskEdit2.Visible:=True;
    MaskEdit3.Visible:=True;
    BitBtn5.Visible:=True;

    Label25.Visible:=False;
    DBEdit6.Visible:=False;

    Label12.Visible:=True;
    DbEdit12.Visible:=True;
    Label6.Visible:=True;
    MaskEdit5.Visible:=True;
    DBEdit12.DataSource := datasource4;
  End;
end;

procedure TFacturaDirectaxPac.DBLookupComboBox2Exit(Sender: TObject);
begin
  MaskEdit2.Text:='0';

  if AdoqueryServ.FieldValues['Valor_Pesos'] = 0 then  // En caso de tener un valor de la tabla de servicios no pide tarifa
  Begin
    DBlookupComboBox9.Visible:=True;
    Label14.Visible:=True;
    Label15.Visible:=True;
    Label16.Visible:=True;

    IF (DBLookupComboBox2.Text <> '') Then Begin
      ADOQueryCrucServHomo.Close;
      ADOQueryCrucServHomo.Parameters.ParamValues['tbl']:='CUP';
      ADOQueryCrucServHomo.Parameters.ParamValues['Cod']:=DBLookupCombobox2.Text;
      ADOQueryCrucServHomo.Open;
      Label15.Caption:=ADOQueryServ.FieldValues['Tarifa'];
      Label16.Caption:=ADOQueryServ.FieldValues['Año'];
      ADOQueryCrucServHomo.Filter:='tb = '+chr(39)+ADOQueryServ.FieldValues['Tarifa']+chr(39)+' AND Año ='+chr(39)+ADOQueryServ.FieldValues['Año']+chr(39);
      ADOQueryCrucServHomo.Filtered:=True;
      DBlookupComboBox9.KeyValue:=ADOQueryCrucServHomo.FieldValues['Cod'];
      IF ADOQueryCrucServHomo.RecordCount=1 Then Begin
        DBLookupComboBox9.Enabled:=False;
        IF ADOqueryCrucServHomo.FieldValues['Valor'] <> NULL Then Maskedit2.Text:=ntsfbg(ADOqueryCrucServHomo.FieldValues['Valor']);
      End
      ELSE DBLookupComboBox9.Enabled:=True;
      maskedit12.Text:= ((stf(maskedit2.text)*ADOQueryServ.FieldValues['Porcentaje'])/100);
      maskedit3.Text := ntsfbg(stf(maskedit1.Text)*stf(maskedit12.text));
    End;
  End
  Else Begin
    DBlookupComboBox9.Visible:=False;
    Label14.Visible:=False;
    Label15.Visible:=False;
    Label16.Visible:=False;

    if AdoqueryServ.FieldValues['Valor_Pesos'] <> null then
      MaskEdit2.Text := AdoqueryServ.FieldValues['Valor_Pesos']
    Else
      MaskEdit2.Text := '0';

    if maskedit1.Text = '' then maskedit1.Text := '0';
    if maskedit2.Text = '' then maskedit2.Text := '0';
    IF maskedit5.text <> '' Then
      maskedit12.Text:= ntsfbg((stf(maskedit2.text)*stf(maskedit5.text))/100);

    if ADOQueryServ.FieldValues['Porcentaje'] <> null then
      MaskEdit5.Text := ntsfbg(ADOQueryServ.FieldValues['Porcentaje'])
    Else
      MaskEdit5.Text := '0';
    IF maskedit12.text <> '' Then maskedit3.Text := ntsfbg(stf(maskedit1.Text)*stf(maskedit12.text));
  End;
end;

procedure TFacturaDirectaxPac.DataSource4DataChange(Sender: TObject; Field: TField);
begin
  if DBLookupComboBox2.Focused then DBLookupComboBox6.KeyValue := DBLookupComboBox2.KeyValue
  else DBLookupComboBox2.KeyValue := DBLookupComboBox6.KeyValue;
end;

procedure TFacturaDirectaxPac.ComboBox1Exit(Sender: TObject);
begin
  If Combobox1.Text='P' Then Begin
    DBlookupComboBox3.setfocus;
    DBlookupComboBox12.Visible:=True;
    Label21.Visible:=True;
  End
  Else If Combobox1.Text='S' Then Begin
    DBlookupComboBox2.setfocus;
    DBlookupComboBox12.Visible:=False;
    Label21.Visible:=False;
  End
end;

procedure TFacturaDirectaxPac.DBLookupComboBox9Exit(Sender: TObject);
begin
  IF DBLookupComboBox9.text <> '' Then
  Begin
    IF ADOqueryCrucServHomo.FieldValues['Valor'] <> NULL Then Maskedit2.Text:=ntsfbg(ADOqueryCrucServHomo.FieldValues['Valor']);
  End;
  Maskedit1.SetFocus;
end;

procedure TFacturaDirectaxPac.MaskEdit1Change(Sender: TObject);
begin
  if maskedit1.Text = '' then maskedit1.Text := '0';
  if maskedit2.Text = '' then maskedit2.Text := '0';
end;

procedure TFacturaDirectaxPac.MaskEdit1Click(Sender: TObject);
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

procedure TFacturaDirectaxPac.EliminarRegistro1Click(Sender: TObject);
var  RowNumber  : Integer;
begin
   GridDelRow (RowNumber, StringGrid1);
   //Calcula Totales
    MaskEdit7.Text  := '0';
    MaskEdit8.Text  := '0';
    MaskEdit9.Text  := '0';
    MaskEdit13.Text  := '0';
    ListBox1.Clear;
    For x:=1 To StringGrid1.RowCount-1 Do Begin
      IF StringGrid1.Cells[22,x] <> 'S' Then  //Si es capitacion no toma el item
      Begin
        IF stf(StringGrid1.Cells[13,x]) <> 0 Then Begin
          if listbox1.Items.IndexOf(StringGrid1.Cells[16,x]+StringGrid1.Cells[12,x])<0 Then yagrupo:=False  // Agrupa por el Nombre del Grupo.
          Else yagrupo:=true;
          IF NOT yagrupo Then
          Begin
            MaskEdit13.Text  := ntsfbg(stf(MaskEdit13.Text)  + (stf(StringGrid1.Cells[13,x])*stf(StringGrid1.Cells[14,x])));
            ListBox1.Items.Add(StringGrid1.Cells[16,x]+StringGrid1.Cells[12,x]);
          End;
        End;

        if StringGrid1.Cells[6 ,x] <> '' Then MaskEdit7.Text  := ntsfbg(stf(MaskEdit7.Text)  + (stf(StringGrid1.Cells[5 ,x])*stf(StringGrid1.Cells[4 ,x])));
        if StringGrid1.Cells[17 ,x] <> '' Then MaskEdit8.Text  := ntsfbg(stf(MaskEdit8.Text)  + stf(StringGrid1.Cells[17,x]));
        if StringGrid1.Cells[18 ,x] <> '' Then MaskEdit9.Text  := ntsfbg(stf(MaskEdit9.Text)  + stf(StringGrid1.Cells[18,x]));
      End;
    End;
    MaskEdit10.Text   := MaskEdit6.Text;
    MaskEdit11.Text   := ntsfbg(stf(MaskEdit13.Text)  + stf(MaskEdit8.Text)  + stf(MaskEdit9.Text) - stf(MaskEdit10.Text));
    MaskEditVP.text   := ntsfbg(stf(MaskEdit11.Text) - stf(MaskEdit10.Text));
end;

//////////////* PopUpMenu sobe el puntero *///////////////////////////
procedure TFacturaDirectaxPac.PopupMenu2Popup(Sender: TObject);
var pt : Tpoint;
begin
    SetForegroundWindow(Handle);
    GetCursorPos(pt);
    PopupMenu2.Popup(pt.x,pt.y);
end;

procedure TFacturaDirectaxPac.DBLookupComboBox1Exit(Sender: TObject);
begin
  DBlookupComboBox10.KeyValue:=ADOqueryPacientes.FieldValues['NR_IDENT_USUAR']+ADOqueryPacientes.FieldValues['TP_IDENT_USUAR']+ADOqueryPacientes.FieldValues['NO_ADMISION'];
end;

procedure TFacturaDirectaxPac.BitBtn2Click(Sender: TObject);
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
      StringGrid1.Cells[9,i] := '';
      StringGrid1.Cells[10,i] := '';
      StringGrid1.Cells[11,i] := '';
      StringGrid1.Cells[12,i] := '';
      StringGrid1.Cells[13,i] := '';
      StringGrid1.Cells[14,i] := '';
      StringGrid1.Cells[15,i] := '';
      StringGrid1.Cells[16,i] := '';
      StringGrid1.Cells[17,i] := '';
      StringGrid1.Cells[18,i] := '';
      StringGrid1.Cells[19,i] := '';
      StringGrid1.Cells[20,i] := '';
      StringGrid1.Cells[21,i] := '';
      StringGrid1.Cells[22,i] := '';
    end;
    StringGrid1.RowCount:=2;
    Maskedit1.Text:='';
    Maskedit2.Text:='';
    Maskedit3.Text:='';

    //Calcula Totales
    MaskEdit7.Text  := '0';
    MaskEdit8.Text  := '0';
    MaskEdit9.Text  := '0';
    MaskEdit13.Text := '0';
    ListBox1.Clear;

    MaskEdit10.Text   := '0';
    MaskEdit11.Text   := '0';
    MaskEditVP.text   := ntsfbg(stf(MaskEdit11.Text) - stf(MaskEdit10.Text));
  end;
end;

procedure TFacturaDirectaxPac.BitBtn3Click(Sender: TObject);
var i:extended;
    CantVenc,CantFalt: Integer;
begin
  If (Combobox1.Text='') Then
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
  Else If (DBLookupComboBox18.Text='') Then
  Begin
    Showmessage('ERROR: No ha seleccionado ningun Centro de Costo');
    exit;
  End;

  If(Combobox1.Text='P') Then Begin
    if ADOTable1.FieldValues['Valida_Existencias'] = 'S' then
    Begin
      if DBEdit6.Text <> '' Then
      Begin
        If strtoint(MaskEdit1.Text) > strtoint(DBEdit6.Text) Then
        Begin
          Showmessage('ERROR: No puede proveer mas productos de los que tiene.');
          exit;
        End;
      End
      Else Begin
        Showmessage('ERROR: No Cargar este producto ya que no tiene existencias.');
        exit;
      End;
    End;
  End;

  if trim(Maskedit1.Text) = '' then Maskedit1.Text:='0';
  if trim(Maskedit2.Text) = '' then Maskedit2.Text:='0';
  if trim(Maskedit3.Text) = '' then Maskedit3.Text:='0';
  if (trystrtofloat(floattostr(stf(maskedit1.Text)),i)) AND (trystrtofloat(floattostr(stf(maskedit2.Text)),i)) AND (trystrtofloat(floattostr(stf(maskedit3.Text)),i)) then
  Begin
    If MaskEdit1.Text <> '0' Then
    Begin
      StringGrid1.Cells[0,StringGrid1.RowCount-1] := inttostr(StringGrid1.RowCount-1);
      StringGrid1.Cells[1,StringGrid1.RowCount-1] := Combobox1.Text;

      If Combobox1.Text='P' Then
      Begin
        StringGrid1.Cells[2,StringGrid1.RowCount-1] := DBLookupCombobox3.Text;
        StringGrid1.Cells[3,StringGrid1.RowCount-1] := DBLookupCombobox4.Text;
      End
      Else If Combobox1.Text='S' Then
      Begin
        StringGrid1.Cells[2,StringGrid1.RowCount-1] := DBLookupCombobox2.Text;
        IF DBLookupComboBox9.Text<>'' Then
        Begin
          StringGrid1.Cells[3,StringGrid1.RowCount-1] := DBLookupComboBox9.Text;
          StringGrid1.Cells[7,StringGrid1.RowCount-1] := ADOQueryCrucServHomo.FieldValues['cc'];
          StringGrid1.Cells[8,StringGrid1.RowCount-1] := ADOQueryCrucServHomo.FieldValues['tb'];
          StringGrid1.Cells[9,StringGrid1.RowCount-1] := ADOQueryCrucServHomo.FieldValues['año'];
        End
        Else StringGrid1.Cells[3,StringGrid1.RowCount-1] := DBLookupComboBox6.Text;
      End;

      if ADOTable1.FieldValues['ConvenioComoDescuento'] = 'S' then
      Begin
        StringGrid1.Cells[4,StringGrid1.RowCount-1] := Maskedit1.Text;
        StringGrid1.Cells[5,StringGrid1.RowCount-1] := Maskedit2.Text;
        StringGrid1.Cells[6,StringGrid1.RowCount-1] := ntsfbg(stf(Maskedit1.Text) * stf(Maskedit2.Text));
        StringGrid1.Cells[18,StringGrid1.RowCount-1] :=Maskedit5.Text;
      End
      Else Begin
        StringGrid1.Cells[4,StringGrid1.RowCount-1] := Maskedit1.Text;
        StringGrid1.Cells[5,StringGrid1.RowCount-1] := Maskedit2.Text;
        StringGrid1.Cells[6,StringGrid1.RowCount-1] := ntsfbg(stf(Maskedit1.Text) * stf(Maskedit2.Text));
        StringGrid1.Cells[18,StringGrid1.RowCount-1] :=Maskedit5.Text;
      End;
      StringGrid1.Cells[16,StringGrid1.RowCount-1] :='STD999999';

      IF ComboBox1.Text = 'P' Then Begin
        IF ADOQuerySVencim.FieldValues['Fecha_Vencim'] <> null Then StringGrid1.Cells[10,StringGrid1.RowCount-1] := datetostr(ADOQuerySVencim.FieldValues['Fecha_Vencim'])
        ELSE StringGrid1.Cells[10,StringGrid1.RowCount-1] := '30/12/1899';
        IF ADOQuerySVencim.FieldValues['Lote'] <> null Then StringGrid1.Cells[11,StringGrid1.RowCount-1] := ADOQuerySVencim.FieldValues['Lote']
        ELSE StringGrid1.Cells[11,StringGrid1.RowCount-1] := '0';
        StringGrid1.Cells[30,StringGrid1.RowCount-1]  := 'S';
      End;
      IF ComboBox1.Text = 'S' Then
        begin
          StringGrid1.Cells[12,StringGrid1.RowCount-1] := DBLookupCombobox6.Text;
          StringGrid1.Cells[30,StringGrid1.RowCount-1]  := 'N';
        end
      ELSE StringGrid1.Cells[12,StringGrid1.RowCount-1] := DBLookupCombobox4.Text;
      StringGrid1.Cells[17,StringGrid1.RowCount-1] := ntsfbg((stf(Maskedit12.Text)*stf(Maskedit1.Text)));
      StringGrid1.Cells[13,StringGrid1.RowCount-1] := '0';
      StringGrid1.Cells[19,StringGrid1.RowCount-1] := Memo2.Text;
      StringGrid1.Cells[20,StringGrid1.RowCount-1] := DBLookupCombobox18.Text;

      //Calcula Totales
      MaskEdit7.Text   := '0';
      MaskEdit8.Text   := '0';
      MaskEdit9.Text   := '0';
      MaskEdit13.Text  := '0';
      ListBox1.Clear;
      For x:=1 To StringGrid1.RowCount-1 Do Begin
        IF StringGrid1.Cells[22,x] <> 'S' Then  //Si es capitacion no toma el item
        Begin
            IF stf(StringGrid1.Cells[13,x]) <> 0 Then Begin
              if listbox1.Items.IndexOf(StringGrid1.Cells[16,x]+StringGrid1.Cells[12,x])<0 Then yagrupo:=False  // Agrupa por el Nombre del Grupo.
              Else yagrupo:=true;

              IF NOT yagrupo Then
              Begin
                MaskEdit13.Text  := ntsfbg(stf(MaskEdit13.Text)  + (stf(StringGrid1.Cells[13,x])*stf(StringGrid1.Cells[14,x])));
                ListBox1.Items.Add(StringGrid1.Cells[16,x]+StringGrid1.Cells[12,x]);
              End;
            End;
            if ADOTable1.FieldValues['ConvenioComoDescuento'] = 'S' then
            Begin
              MaskEdit7.Text  := ntsfbg(stf(MaskEdit7.Text)  + stf(StringGrid1.Cells[6,x]));
              MaskEdit8.Text  := ntsfbg(stf(MaskEdit8.Text)  + stf(StringGrid1.Cells[17,x]));
              MaskEdit9.Text  := ntsfbg(stf(MaskEdit9.Text)  + stf(StringGrid1.Cells[18,x]));
            End
            Else Begin
              MaskEdit7.Text  := ntsfbg(stf(MaskEdit7.Text)  + stf(StringGrid1.Cells[6,x]));
              MaskEdit8.Text  := ntsfbg(stf(MaskEdit8.Text)  + stf(StringGrid1.Cells[17,x]));
              MaskEdit9.Text  := ntsfbg(stf(MaskEdit9.Text)  + stf(StringGrid1.Cells[18,x]));
            End;
        End;
      End;
      if ADOTable1.FieldValues['ConvenioComoDescuento'] = 'S' then
      Begin
        MaskEdit10.Text   := ntsfbg(stf(MaskEdit7.Text) - stf(MaskEdit8.Text)) ;
        MaskEdit11.Text   := ntsfbg(stf(MaskEdit7.Text)); // - stf(MaskEdit10.Text));
        MaskEditVP.text   := ntsfbg(stf(MaskEdit11.Text) - stf(MaskEdit10.Text)); // + stf(MaskEdit9.Text)
      End
      Else Begin
        MaskEdit10.Text   := ntsfbg(stf(MaskEdit6.Text)) ;
        MaskEdit11.Text   := ntsfbg(stf(MaskEdit7.Text));//  + stf(MaskEdit9.Text)); // - stf(MaskEdit10.Text));
        MaskEditVP.text   := MaskEdit11.Text;
      End;

      StringGrid1.Cells[1,StringGrid1.RowCount] := '';
      StringGrid1.Cells[2,StringGrid1.RowCount] := '';
      StringGrid1.Cells[3,StringGrid1.RowCount] := '';
      StringGrid1.Cells[4,StringGrid1.RowCount] := '';
      StringGrid1.Cells[5,StringGrid1.RowCount] := '';
      StringGrid1.Cells[6,StringGrid1.RowCount] := '';
      StringGrid1.Cells[7,StringGrid1.RowCount] := '';
      StringGrid1.Cells[8,StringGrid1.RowCount] := '';
      StringGrid1.Cells[9,StringGrid1.RowCount] := '';
      StringGrid1.Cells[10,StringGrid1.RowCount] := '';
      StringGrid1.Cells[11,StringGrid1.RowCount] := '';
      StringGrid1.Cells[12,StringGrid1.RowCount] := '';
      StringGrid1.Cells[13,StringGrid1.RowCount] := '';
      StringGrid1.Cells[14,StringGrid1.RowCount] := '';
      StringGrid1.Cells[15,StringGrid1.RowCount] := '';
      StringGrid1.Cells[16,StringGrid1.RowCount] := '';
      StringGrid1.Cells[17,StringGrid1.RowCount] := '';
      StringGrid1.Cells[18,StringGrid1.RowCount] := '';
      StringGrid1.Cells[19,StringGrid1.RowCount] := '';
      StringGrid1.Cells[20,StringGrid1.RowCount] := '';
      StringGrid1.Cells[21,StringGrid1.RowCount] := '';
      StringGrid1.Cells[22,StringGrid1.RowCount] := '';

      StringGrid1.RowCount := StringGrid1.RowCount + 1;
      Memo2.Text := '';
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
    DBLookupCombobox2.SetFocus;
end;

procedure TFacturaDirectaxPac.BitBtn4Click(Sender: TObject);
Var
  it,n, m:Integer;
  nrinventa,vr1:String;
  i,x,e:Integer;
  ConsAdm:Integer;
  ConsAdm2:String;
  Admision:String;
  daFact:integer;
  Cad1  : string;
begin
  IF Maskedit6.Text = '' Then Maskedit6.Text := '0';

  IF RadioButton1.Checked = True then
  Begin
    if DBLookupComboBox11.Text = '' then
    begin
      ShowMessage('Debe Escoger una Empresa..');
      Exit;
    end;
  End;
  IF RadioButton1.Checked = False then
  Begin
    if DBLookupComboBox10.Text = '' then
    begin
      ShowMessage('Debe Escoger un Paciente..');
      Exit;
    end;
  End;


  if (DBLookupComboBox5.Text = '') then
    begin
      Showmessage('Ingrese el vendedor Primero.');
      Exit;
    end;

  if (stf(MaskEdit10.Text) > (stf(MaskEdit13.Text)+ stf(MaskEdit8.Text)+stf(MaskEdit9.Text)))then
    begin
      Application.MessageBox('No se puede grabar la factura con un valor negativo...revise los valores','Información',MB_OK+MB_ICONINFORMATION);
      Exit;
    end;

  IF RadioButton1.Checked = True Then Begin
    IF DBLookupCombobox11.Text = '' Then Begin
      Showmessage('ERROR: Seleccione la empresa a facturar.');
      Exit;
    End;
  End
  Else Begin
    IF ListBox2.Items.Count < 1 Then Begin
      Showmessage('ERROR: Seleccione la persona a facturar.');
      Exit;
    End;
  End;

  If StringGrid1.RowCount > 2 Then
  Begin
    ADOQuery2.Close;
    adoquery2.Parameters.ParamValues['Emp'] := Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja'];
    adoquery2.Open;
    adoquery3.Open;

    IF ADOQuery9.FieldValues['Consecutivo'] = NULL THEN
    BEGIN
      Showmessage('No se ha creado el consecutivo de facturación en la tabla de parametrización.');
      Showmessage('Proceso suspendido...');
      Exit;
    END;

    if StringGridCaja.RowCount = 2 then
    begin
      if Application.MessageBox('El detalle del pago no ha sido ingresado, ¿desea grabar la factura de todos modos?','Pregunta',MB_YESNO+MB_ICONQUESTION) = IdNo then
        Exit;
    end;

    //Comienza un cliclo de 2 para facturas Adicionales por descuento
    dafact := 0;
    Repeat
      if (dafact = 1) then CheckBox1.checked := False;

      //Graba el Encabezado
      try
        DataModule1.ADOConnection1.BeginTrans;

        ADOQTemp.Close;
        ADOQTemp.SQL.Clear;
        ADOQTemp.SQL.Add('SELECT TOP 1 Numero_Factura');
        ADOQTemp.SQL.Add('FROM INEncFacturacion');
        ADOQTemp.SQL.Add('WHERE Empresa='+chr(39)+Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja']+chr(39));
        ADOQTemp.SQL.Add('ORDER BY Numero_Factura DESC ');
        ADOQTemp.Open;
        if ADOQTemp.FieldValues['Numero_Factura'] <> Null then
          edit1.Text := alineardatos(inttostr(strtoint(ADOQTemp.FieldValues['Numero_Factura'])+1),10)
        Else
          edit1.Text := alineardatos('1',10);

        ADOQuery9.Edit;
        ADOQuery9.FieldValues['Consecutivo']:=Edit1.text;
        ADOQuery9.Post;

        //Crea un PACIENTE Estandard para las facturas directas si no existe.
        ADOQTemp.Close;
        ADOQTemp.SQL.Clear;
        ADOQTemp.SQL.Add('SELECT * FROM SAPacientes WHERE Nr_Ident_Usuar='+chr(39)+'Particular'+chr(39));
        ADOQTemp.Open;
        IF ADOQTemp.RecordCount = 0 Then
        Begin
          ADOQTemp.Append;
          ADOQTemp.FieldValues['Tp_Ident_Usuar']    := 'CC';
          ADOQTemp.FieldValues['Nr_Ident_Usuar']    := 'Particular';
          ADOQTemp.FieldValues['Primer_Apellido']   := '.';
          ADOQTemp.FieldValues['Segundo_Apellido']  := '.';
          ADOQTemp.FieldValues['Primer_Nombre']     := 'Particular';
          ADOQTemp.FieldValues['Segundo_Nombre']    := '.';
          ADOQTemp.Post;
        End;

        //Crea una ADMISION Estandard para las facturas directas si no existe.
        ADOQTemp.Close;
        ADOQTemp.SQL.Clear;
        ADOQTemp.SQL.Add('SELECT * FROM SAAdmisiones WHERE No_Admision='+chr(39)+'STDADM99'+chr(39));
        ADOQTemp.Open;
        IF ADOQTemp.RecordCount = 0 Then
        Begin
          ADOQTemp.Append;
          ADOQTemp.FieldValues['No_Admision']       := 'STDADM99';
          ADOQTemp.FieldValues['fec_Admision']      := now;
          ADOQTemp.FieldValues['Tp_Ident_Usuar']    := 'CC';
          ADOQTemp.FieldValues['Nr_Ident_Usuar']    := 'Particular';
          ADOQTemp.FieldValues['Est_Adminsion']     := 'E';
          ADOQTemp.FieldValues['Observaciones']     := 'Esta admisión es creada para efectos de la Facturación Directa.';
          ADOQTemp.Post;
        End;

        //Crea un Cargo Estandard para las facturas directas si no existe.
        ADOQTemp.Close;
        ADOQTemp.SQL.Clear;
        ADOQTemp.SQL.Add('SELECT * FROM CREncCargos WHERE No_Cargo='+chr(39)+'STD999999'+chr(39));
        ADOQTemp.Open;
        IF ADOQTemp.RecordCount = 0 Then
        Begin
          ADOQTemp.Append;
          ADOQTemp.FieldValues['No_Cargo']    := 'STD999999';
          ADOQTemp.FieldValues['fecha']       := now;
          ADOQTemp.FieldValues['No_Admision'] := 'STDADM99';
          ADOQTemp.FieldValues['Estado']      := 'M';
          ADOQTemp.Post;
        End;

        IF RadioButton2.Checked = True Then
        Begin
          //Graba el paciente como Cliente
          ADOQTemp.Close;
          ADOQTemp.SQL.Clear;
          ADOQTemp.SQL.Add('SELECT * FROM CONTTerce WHERE Numero_Documento='+chr(39)+DBLookupComboBox10.Text+chr(39));
          ADOQTemp.Open;
          IF ADOQTemp.RecordCount = 0 Then
          Begin
            ADOQTemp.Append;
            ADOQTemp.FieldValues['Numero_Documento']    :=DBLookupComboBox10.Text;
            ADOQTemp.FieldValues['Sucursal']            :='001';
            ADOQTemp.FieldValues['Primer_Apellido']     :=DBEdit7.Text;
            ADOQTemp.FieldValues['Segundo_Apellido']    :=DBEdit8.Text;
            ADOQTemp.FieldValues['Primer_Nombre']       :=DBEdit9.Text;
            ADOQTemp.FieldValues['Segundo_Nombre']      :=DBEdit10.Text;
            ADOQTemp.FieldValues['Direccion']           :=campotoedit(ADOQueryPacientes.FieldValues['Dir_Casa_Pacien']);
            ADOQTemp.FieldValues['Telefono']            :=campotoedit(ADOQueryPacientes.FieldValues['Tel_Casa_Pacien']);
            ADOQTemp.Post;
          End;

          //Graba el Tipo de Tercero
          ADOQTemp.Close;
          ADOQTemp.SQL.Clear;
          ADOQTemp.SQL.Add('SELECT * FROM CONTTipTercexTerce WHERE Tipo_Tercero = '+chr(39)+ADOTable1.FieldValues['Tipo_Tercero_Particular']+chr(39)+' AND Tercero ='+chr(39)+DBLookupComboBox10.Text+chr(39));
          ADOQTemp.Open;
          IF ADOQTemp.RecordCount = 0 Then
          Begin
            ADOQTemp.Append;
            ADOQTemp.FieldValues['Tercero']       :=DBLookupComboBox10.Text;
            ADOQTemp.FieldValues['Tipo_Tercero']  :=ADOTable1.FieldValues['Tipo_Tercero_Particular'];
            ADOQTemp.Post;
          End;
        End;

        adoquery2.Append;
        adoquery2.FieldValues['Empresa']        := DBLookupComboBox1.Text;
        adoquery2.FieldValues['Numero_Factura'] := Edit1.text;
        adoquery2.FieldValues['Fecha']          := datetimepicker1.DateTime;
        adoquery2.FieldValues['Fec_Vence']      := datetimepicker2.DateTime;
        IF RadioButton1.Checked = True Then adoquery2.FieldValues['Cliente'] := DBLookupComboBox11.Text
        ELSE adoquery2.FieldValues['Cliente']   := DBLookupComboBox10.Text+'001';
        adoquery2.FieldValues['No_Contrato']    := DBLookupComboBox20.KeyValue;
        adoquery2.FieldValues['Descripcion']    := Memo1.text;
        if DBLookupComboBox5.KeyValue <> null then adoquery2.FieldValues['Vendedor'] := DBLookupComboBox5.KeyValue;
        adoquery2.FieldValues['SegundaFactura'] := dafact;
        adoquery2.Post;

        it:=0;
        ListBox1.Clear;
        ProgressBar1.Max := StringGrid1.RowCount;
        //Graba el Detalle
        For i:=1 TO (StringGrid1.RowCount-2) Do
        Begin
          ProgressBar1.Position := ProgressBar1.Position +1;
          IF stf(StringGrid1.Cells[13,i]) <> 0 Then Begin  // Valor del Paquete es diferente de 0 entons es paquete.
            IF StringGrid1.Cells[22,i] <> 'S' Then  //Si es capitacion no toma el item
            Begin
                // Procedimiento para Agrupar cargos bajo un solo concepto en la facturación
                if listbox1.Items.IndexOf(StringGrid1.Cells[16,i]+StringGrid1.Cells[12,i])<0 Then yagrupo:=False  // Agrupa por el Nombre del Grupo.
                Else yagrupo:=true;

                IF NOT yagrupo Then
                Begin
                  it:=it+1;
                  adoquery3.Append;
                  adoquery3.FieldValues['Empresa']         := DBLookupComboBox1.Text;
                  adoquery3.FieldValues['Numero_Factura']  := Edit1.text;
                  adoquery3.FieldValues['Item']            := it;
                  adoquery3.FieldValues['Tipo_PST']        := 'G';
                  adoquery3.FieldValues['Codigo_Producto'] := 'PAQUETE';
                  adoquery3.FieldValues['Nombre']          := StringGrid1.Cells[12,i];
                  adoquery3.FieldValues['Cantidad']        := stf(StringGrid1.Cells[14,i]);
                  adoquery3.FieldValues['Valor_Unitario']  := round(stf(StringGrid1.Cells[13,i]));
                  adoquery3.FieldValues['Valor_Total']     := round(stf(StringGrid1.Cells[14,i])*stf(StringGrid1.Cells[13,i]));
                  //adoquery3.FieldValues['Valor_IVA']       := stf(StringGrid1.Cells[18,i]);
                  adoquery3.FieldValues['No_Cargo']        := StringGrid1.Cells[16,i];
                  adoquery3.FieldValues['Centro_Costo']    := StringGrid1.Cells[20,i];
                  adoquery3.FieldValues['Numero_Transaccion_Inventario'] := StringGrid1.Cells[21,i];
                  adoquery3.Post;

                  ListBox1.Items.Add(StringGrid1.Cells[16,i]+StringGrid1.Cells[12,i]);
                End;
            End;
            //Actualiza el Cargo
            IF StringGrid1.Cells[16,i] <> '' Then Begin
              ADOQueryCargos2.Close;
              ADOQueryCargos2.SQL.Clear;
              ADOQueryCargos2.SQL.Add('SELECT *');
              ADOQueryCargos2.SQL.Add(' FROM  CRDetCargos');
              ADOQueryCargos2.SQL.Add(' WHERE CRDetCargos.No_Cargo = ' +chr(39)+StringGrid1.Cells[16,i] +chr(39)+' AND');
              ADOQueryCargos2.SQL.Add('       CRDetCargos.Sec_Cargo = ' +chr(39)+StringGrid1.Cells[0,i] +chr(39)+' AND');
              ADOQueryCargos2.SQL.Add('       CRDetCargos.Factura is Null ');
              ADOQueryCargos2.Open;
              IF ADOQueryCargos2.RecordCount = 1 Then
              Begin
                ADOQueryCargos2.Edit;
                ADOQueryCargos2.FieldValues['Emp_Factura'] :=DBLookupComboBox1.Text;
                ADOQueryCargos2.FieldValues['Factura']     :=Edit1.text;
                ADOQueryCargos2.FieldValues['Status']      :='F';
                ADOQueryCargos2.Post;
              End;
            End;
          End
          Else Begin
            IF StringGrid1.Cells[22,i] <> 'S' Then  //Si es capitacion no toma el item
            Begin
                it:=it+1;
                adoquery3.Append;
                adoquery3.FieldValues['Empresa']        := DBLookupComboBox1.Text;
                adoquery3.FieldValues['Numero_Factura'] := Edit1.text;
                adoquery3.FieldValues['Item']           := it;
                adoquery3.FieldValues['Tipo_PST']       := StringGrid1.Cells[1,i];
                adoquery3.FieldValues['Codigo_Producto'] := StringGrid1.Cells[2,i];
                adoquery3.FieldValues['Nombre']         := StringGrid1.Cells[3,i];
                adoquery3.FieldValues['Cantidad']       := stf(StringGrid1.Cells[4,i]);
                If StringGrid1.Cells[4,i] = '0' Then Begin
                  Showmessage('ERROR: El item ' + StringGrid1.Cells[2,i]+' ' +StringGrid1.Cells[3,i]+' No tiene cantidad asignada. Finalizada la Facturación.');
                  Close;
                End;
                if ADOTable1.FieldValues['ConvenioComoDescuento'] = 'S' then
                Begin
                  adoquery3.FieldValues['Valor_Unitario'] := round(stf(StringGrid1.Cells[5,i]));
                  adoquery3.FieldValues['Valor_Total']    := round(stf(StringGrid1.Cells[6,i]));
                  adoquery3.FieldValues['Valor_IVA']      := round(stf(StringGrid1.Cells[18,i]));
                End
                Else Begin
                  adoquery3.FieldValues['Valor_Unitario'] := round(stf(StringGrid1.Cells[17,i])/stf(StringGrid1.Cells[4,i]));
                  adoquery3.FieldValues['Valor_Total']    := round(stf(StringGrid1.Cells[17,i]));
                  adoquery3.FieldValues['Valor_IVA']      := round(stf(StringGrid1.Cells[18,i]));
                End;
                adoquery3.FieldValues['No_Cargo']       := StringGrid1.Cells[16,i];
                adoquery3.FieldValues['Centro_Costo']    := StringGrid1.Cells[20,i];
                If StringGrid1.Cells[21,i] <> '' Then adoquery3.FieldValues['Numero_Transaccion_Inventario']    := stf(StringGrid1.Cells[21,i]);

                if CheckBox1.Checked = False Then
                Begin
                  IF StringGrid1.Cells[15,i] <> '' Then
                  Begin
                    Admision                                := StringGrid1.Cells[15,i];
                    ADOQueryAdmisiones.Close;
                    ADOQueryAdmisiones.Parameters.ParamValues['Adm'] :=Admision;
                    ADOQueryAdmisiones.Open;
                    ADOQueryAdmisiones.Edit;

                    IF ADOQueryAdmisiones.FieldValues['Duracion'] = 'F' Then ADOQueryAdmisiones.FieldValues['EST_ADMINSION']:='F'
                    ELSE ADOQueryAdmisiones.FieldValues['EST_ADMINSION']:='A';
                    ADOQueryAdmisiones.Post;
                  End;
                End;

                IF StringGrid1.Cells[1,i] = 'S' Then Begin
                  ADOQuery8.Close;
                  ADOQuery8.Parameters.ParamValues['Cod']:=StringGrid1.Cells[1,i];
                  ADOquery8.Open;
                  IF (ADOQuery8.RecordCount = 1) AND (ADOQuery8.FieldValues['Capitulo']<>NULL) Then
                  Begin
                    ADOQuery7.Close;
                    ADOQuery7.Parameters.ParamValues['Cap']:=ADOQuery8.FieldValues['Capitulo'];
                    ADOQuery7.Open;
                    adoquery3.FieldValues['Agrupacion'] := ADOQuery7.FieldValues['Descripcion'];
                  End
                  Else adoquery3.FieldValues['Agrupacion']:='SERVICIOS O PROCEDIMIENTOS';
                End
                ELSE IF StringGrid1.Cells[1,i] = 'P' Then Begin
                  adoquery3.FieldValues['Agrupacion'] := 'MEDICAMENTOS O MATERIALES';
                End
                ELSE IF StringGrid1.Cells[1,i] = 'T' Then Begin
                  adoquery3.FieldValues['Agrupacion'] := 'TARIFAS';
                End
                ELSE IF StringGrid1.Cells[1,i] = 'G' Then Begin
                  adoquery3.FieldValues['Agrupacion'] := 'PAQUETES';
                End;
                adoquery3.Post;
            End;

            //Actualiza el Cargo
            IF StringGrid1.Cells[16,i] <> '' Then Begin
              ADOQueryCargos2.Close;
              ADOQueryCargos2.SQL.Clear;
              ADOQueryCargos2.SQL.Add('SELECT *');
              ADOQueryCargos2.SQL.Add(' FROM  CRDetCargos');
              ADOQueryCargos2.SQL.Add(' WHERE CRDetCargos.No_Cargo = ' +chr(39)+StringGrid1.Cells[16,i] +chr(39)+' AND');
              ADOQueryCargos2.SQL.Add('       CRDetCargos.Sec_Cargo = ' +chr(39)+StringGrid1.Cells[0,i] +chr(39)+' AND');
              ADOQueryCargos2.SQL.Add('       CRDetCargos.Factura is Null ');
              ADOQueryCargos2.Open;
              IF ADOQueryCargos2.RecordCount = 1 Then
              Begin
                ADOQueryCargos2.Edit;
                ADOQueryCargos2.FieldValues['Emp_Factura'] :=DBLookupComboBox1.Text;
                ADOQueryCargos2.FieldValues['Factura']     :=Edit1.text;
                ADOQueryCargos2.FieldValues['Status']      :='F';
                ADOQueryCargos2.Post;
              End;
            End;
          end;
        End;
        adoquery2.Edit;
        adoquery2.FieldValues['Valor_Subtotal']  := Round(stf(MaskEdit7.Text));
        adoquery2.FieldValues['Valor_IVA']       := Round(stf(MaskEdit9.Text));
        adoquery2.FieldValues['Valor_Total']     := Round(stf(MaskEdit11.Text));
        adoquery2.FieldValues['Valor_Conceptos'] := 0;//Round(stf(MaskEditTPagado.Text));
        if (dafact = 1) then
        Begin
          adoquery2.FieldValues['Valor_Descuento'] := Round(strtofloat(MaskEdit11.Text))-Round(strtofloat(MaskEdit10.Text));
          //adoquery2.FieldValues['Valor_Descuento'] := Round(stf(MaskEdit10.Text));
        End
        Else Begin
          adoquery2.FieldValues['Valor_Descuento'] := Round(stf(MaskEdit10.Text));
        End;
        //adoquery2.FieldValues['No_Admision']     := Admision;
        adoquery2.Post;

        //**************************
        //Graba el Detalle del Pago.
        //**************************
        ADOQIngCaj.Close;
        ADOQIngCaj.Parameters.ParamValues['Emp'] := Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja'];
        ADOQIngCaj.Open;
        ADOParamCaja.Close;
        ADOParamCaja.Open;
        If StringGridCaja.RowCount > 2 Then
        Begin
          Cad1 := '';
          Cad1 := pchar(DataModule1.ADOQuery1.Fields.FieldByName('EMPRESA_TRABAJA').AsString + '%');
          QryApoyo.Close;
          QryApoyo.SQL.Clear;
          QryApoyo.SQL.Add('SELECT MAX(Numero_Ingreso)+1 as CON');
          QryApoyo.SQL.Add(' FROM CAIngresos');
          QryApoyo.SQL.Add(' WHERE DOCUMENTO = '''+'RE'+'''');  // El Documento RE es fijo para Recibo de Caja
          QryApoyo.SQL.Add(' AND NUMERO_INGRESO LIKE '''+Cad1+'''');
          QryApoyo.Open;

          if QryApoyo.Fields.FieldByName('CON').AsString <> '' Then Edit2.Text:= alineardatos(QryApoyo.Fields.FieldByName('CON').AsString,6)
          Else Edit2.Text := DataModule1.ADOQuery1.Fields.FieldByName('EMPRESA_TRABAJA').AsString + alineardatos('1',6);

          ADOQIngCaj.Append;
          ADOQIngCaj.FieldValues['Documento']        := 'RE';
          ADOQIngCaj.FieldValues['Numero_Ingreso']   := strtoint(Edit2.text);
          ADOQIngCaj.FieldValues['Tipo_Documento']   := 'RE';
          ADOQIngCaj.FieldValues['Fecha']            := datetimepicker1.DateTime;
          IF RadioButton1.Checked = True Then Begin
            ADOQIngCaj.FieldValues['Doc_Pagador']    := DBLookupComboBox11.Text;
            ADOQIngCaj.FieldValues['Nombre_Pagador'] := DBEdit17.Text;
            ADOQIngCaj.FieldValues['Concepto']       := DBLookupComboBox10.Text + ' - ' + DBEdit7.Text + ' ' + DBEdit9.Text;
          End
          ELSE Begin
            ADOQIngCaj.FieldValues['Doc_Pagador']    := DBLookupComboBox10.Text+'001';
            ADOQIngCaj.FieldValues['Nombre_Pagador'] := DBEdit7.Text + ' ' + DBEdit9.Text;
            ADOQIngCaj.FieldValues['Concepto']       := DBLookupComboBox11.Text + ' - ' + DBEdit17.Text;
          End;
          ADOQIngCaj.FieldValues['Id']               := Datamodule1.ADOQuery1.FieldValues['Id'];
          ADOQIngCaj.FieldValues['Empresa_Graba']    := Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja'];
          ADOQIngCaj.Post;

          ADOQDetCaja.Open;
          //Graba el Detalle
          For i:=1 TO (StringGridCaja.RowCount-2) Do
          Begin
            ADOQDetCaja.Insert;
            ADOQDetCaja.FieldValues['Documento']        := 'RE';
            ADOQDetCaja.FieldValues['Numero_Ingreso']   := strtoint(Edit2.text);
            ADOQDetCaja.FieldValues['Empresa']          := DBLookupComboBox1.Text;
            ADOQDetCaja.FieldValues['Numero_Factura']   := Edit1.text;
            ADOQDetCaja.FieldValues['Concepto']         := StringGridCaja.Cells[1,i];
            ADOQDetCaja.FieldValues['Valor']            := round(stf(StringGridCaja.Cells[3,i]));
            ADOQDetCaja.Post;
          end;
          //*****************************************************
        end;

        {For i:=1 TO (StringGridCaja.RowCount-2) Do
        Begin
          ADOQIngCaj.Append;
          ADOQIngCaj.FieldValues['Empresa']         := DBLookupComboBox1.Text;
          ADOQIngCaj.FieldValues['Numero_Factura']  := Edit1.text;
          ADOQIngCaj.FieldValues['Concepto']        := StringGridCaja.Cells[1,i];
          ADOQIngCaj.FieldValues['Valor']           := round(stf(StringGridCaja.Cells[3,i]));
          ADOQIngCaj.Post;
        End;}
        //********************************
        //Fin de la Grabacion del Pago
        //********************************

        //Graba  los Inventarios
        e := 0;
        i := 1;
        while i < StringGrid1.RowCount - 1 do
          begin
            if StringGrid1.Rows[i].Strings[30] = 'S' then
              inc(e);
            inc(i);
          end;
        if e <> 0 then
          begin
            ADOTable2.Open;
            NrInventa:=Datamodule1.Afecta_EncInventarios(ADOTable2.FieldValues['Tipo_Doc_Inventario'],DateTimePicker1.DateTime,ADOQueryAlmacen.FieldValues['CD_Almacen'],null,'Generado por factura No.:'+Edit1.text,DBLookupComboBox10.KeyValue);
            For i:=1 TO (StringGrid1.RowCount-2) Do
            Begin
                if StringGrid1.Rows[i].Strings[30] = 'S' then
                    Datamodule1.Afecta_DetInventarios('V',ADOTable2.FieldValues['Tipo_Doc_Inventario'],strtoint(NrInventa),strtoint(StringGrid1.Cells[0,i]),StringGrid1.Cells[2,i],stf(StringGrid1.Cells[4,i]),stf(StringGrid1.Cells[5,i]),ADOQueryAlmacen.FieldValues['CD_Almacen'] ,null,strtodate(StringGrid1.Cells[10,i]),StringGrid1.Cells[11,i],DateTimePicker1.DateTime);
                End;
            end;

            m := 1;
            while m < StringGrid1.RowCount - 1 do
              begin
                if (StringGrid1.Rows[m].Strings[15] <> '') and (StringGrid1.Rows[m].Strings[16] <> '') then
                  begin
                    QryG.Close;
                    QryG.SQL.Clear;
                    QryG.SQL.Add('UPDATE CRCargos_DetServDET SET ');
                    QryG.SQL.Add(' FACTURA = '''+Edit1.text+''',');
                    QryG.SQL.Add(' EMPRESA = '''+DBLookupComboBox1.Text+'''');
                    QryG.SQL.Add(' WHERE Admision = '''+StringGrid1.Rows[m].Strings[15]+'''');
                    QryG.SQL.Add(' AND   Cargo    = '''+StringGrid1.Rows[m].Strings[16]+''' ');
                    QryG.SQL.Add(' AND   Servicio = '''+StringGrid1.Rows[m].Strings[2]+''' ');
                    QryG.ExecSQL;
                  end;
                inc(m);
              end;

        DataModule1.ADOConnection1.CommitTrans;
        showmessage('La Factura se grabo con el Numero: '+edit1.Text);

        //Genera una segunda Factura a Particular en caso de tener un Descuento
        if CheckBox1.Checked Then
        Begin
          RadioButton2.Checked := True;
          TabSheet1.Enabled := True;
          PageControl1.ActivePage := TabSheet1;
          RadioButton2Click(Nil);
          BitBtn8Click(Nil);
          dafact := 1;
        End;
      except
        DataModule1.ADOConnection1.RollbackTrans;
        raise;
      end;
    until NOT CheckBox1.Checked;

    //Impresiòn de la Factura.
    if ADOTAble1.FieldValues['Tipo_Factura']= '2' then
    Begin
        FImprimeFacturaSmall := tFImprimeFacturaSmall.create(application);
      try
        FImprimeFacturaSmall.DBLookupComboBox1.KeyValue := DBLookupComboBox1.Text+edit1.Text;
        Datamodule1.MuestraconAcceso(FImprimeFacturaSmall);
      except
        FImprimeFacturaSmall.free;
      end;
    End
    Else if ADOTAble1.FieldValues['Tipo_Factura']= '3' then
    Begin
        FImprimeFacturaSmall2 := tFImprimeFacturaSmall2.create(application);
      try
        FImprimeFacturaSmall2.DBLookupComboBox1.KeyValue := DBLookupComboBox1.Text+edit1.Text;
        Datamodule1.MuestraconAcceso(FImprimeFacturaSmall2);
      except
        FImprimeFacturaSmall2.free;
      end;
    End
    Else Begin
      FImprimeFactura := tFImprimeFactura.create(application);
      try
        FImprimeFactura.DBLookupComboBox2Exit(Nil);
        FImprimeFactura.DBLookupComboBox1.KeyValue := DBLookupComboBox1.Text+edit1.Text;
        FImprimeFactura.DBLookupComboBox3.KeyValue := DBLookupComboBox1.Text+edit1.Text;
        FImprimeFactura.DateTimePicker1.DateTime := DateTimePicker1.DateTime;
        Datamodule1.MuestraconAcceso(FImprimeFactura);
        FImprimeFactura.SpeedButton2Click(Nil);
      except
        FImprimeFactura.free;
      end;
    End;

    //******************************************************
    //Impresion del Recibo de Caja
    //******************************************************
    if chk.Checked then
    Begin
      if (MessageDlg('Desea Imprimir el Ingreso No:'+edit2.Text, mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      begin
        CajaFormato := tCajaFormato.create(application);
        try
          Datamodule1.MuestraconAcceso(CajaFormato);
        except
          CajaFormato.free;
        end;

        CajaFormato.ADOQuery1.Close;
        CajaFormato.ADOQuery1.Parameters.ParamValues['doc']   := 'RE';
        CajaFormato.ADOQuery1.Parameters.ParamValues['nofact']:= edit2.Text;
        CajaFormato.ADOQuery1.Open;
        CajaFormato.ADOQuery2.Close;
        CajaFormato.ADOQuery2.Parameters.ParamValues['doc']   := 'RE';
        CajaFormato.ADOQuery2.Parameters.ParamValues['nofact']:= edit2.Text;
        CajaFormato.ADOQuery2.Open;
        CajaFormato.ADOQuery3.Close;
        CajaFormato.ADOQuery3.Parameters.ParamValues['doc']   := 'RE';
        CajaFormato.ADOQuery3.Parameters.ParamValues['nofact']:= edit2.Text;
        CajaFormato.ADOQuery3.Open;
        IF CajaFormato.ADOQuery2.FieldValues['Valor'] = null then CajaFormato.QRLabel24.Caption:= 'SIN PAGO'
        ELSE CajaFormato.QRLabel24.Caption:= xIntToLletras(CajaFormato.ADOQuery2.FieldValues['Valor'])+ ' Pesos.';
        CajaFormato.QuickRep1.PreviewInitialState := wsMaximized;
        CajaFormato.QuickRep1.PreviewModal;
        CajaFormato.Close;
      end;
    End;

    StringGrid1.RowCount:=2;
    StringGrid1.Cells[1,1] := '';
    StringGrid1.Cells[2,1] := '';
    StringGrid1.Cells[3,1] := '';
    StringGrid1.Cells[4,1] := '';
    StringGrid1.Cells[5,1] := '';
    StringGrid1.Cells[6,1] := '';
    StringGrid1.Cells[7,i] := '';
    StringGrid1.Cells[8,i] := '';
    StringGrid1.Cells[9,i] := '';
    StringGrid1.Cells[10,i] := '';
    StringGrid1.Cells[11,i] := '';
    StringGrid1.Cells[12,i] := '';
    StringGrid1.Cells[13,i] := '';
    StringGrid1.Cells[14,i] := '';
    StringGrid1.Cells[15,i] := '';
    StringGrid1.Cells[16,i] := '';
    StringGrid1.Cells[17,i] := '';
    StringGrid1.Cells[18,i] := '';
    StringGrid1.Cells[19,i] := '';
    StringGrid1.Cells[20,i] := '';
    StringGrid1.Cells[21,i] := '';
    StringGrid1.Cells[22,i] := '';
    DateTimePicker1.DateTime:=Now;
    DateTimePicker2.DateTime:=Now+30;
    Maskedit1.Text:='0';
    Maskedit2.Text:='0';
    Maskedit3.Text:='0';

    MaskEdit7.Text   := '0';
    MaskEdit13.Text  := '0';
    MaskEdit8.Text   := '0';
    MaskEdit9.Text   := '0';
    MaskEdit10.Text  := '0';
    MaskEdit11.Text  := '0';
    MaskEdit6.Text   := '0';

    ListBox2.Clear;

    ADOQueryPacientes.Close;
    ADOQueryCargos.Close;

    ADOQuerySVencim.Close;
    Edit1.Text:='';
    Memo1.Text:='';
    DBLookupComboBox3.keyvalue:='';
    DBLookupComboBox4.keyvalue:='';
    LimpiaGrilla(StringGridCaja, 20);
    LimpiaGrilla(StringGrid1, 30);

    adoquery3.close;
    adoquery2.close;
    Close;
  End
  Else Begin
    Showmessage('La Factura no se puede grabar hasta que se le ingresen Items');
  end;
end;

procedure TFacturaDirectaxPac.BitBtn5Click(Sender: TObject);
begin
  If(MaskEdit2.Text = '0') and (DBLookupComboBox9.Text <> '') Then
  Begin
    FCalculoTarifa := tFCalculoTarifa.create(application);
    try
      FCalculoTarifa.Edit1.Text := ComboBox1.Text;
      FCalculoTarifa.Edit2.Text := DBLookupComboBox2.Text;
      FCalculoTarifa.Edit3.Text := DBLookupComboBox6.Text;
      FCalculoTarifa.Edit4.Text := DBLookupComboBox9.Text;
      IF ADOQueryCrucServHomo.FieldValues['tb'] <> NULL Then FCalculoTarifa.Edit15.Text := ADOQueryCrucServHomo.FieldValues['tb'];
      IF ADOQueryCrucServHomo.FieldValues['tbaño'] <> NULL Then FCalculoTarifa.Edit16.Text := ADOQueryCrucServHomo.FieldValues['tbaño'];

//      IF ADOQueryCrucServHomo.FieldValues['TrUVR'] <> NULL Then FCalculoTarifa.MaskEdit14.Text := ADOQueryCrucServHomo.FieldValues['TrUVR'];
//      IF ADOQueryCrucServHomo.FieldValues['TrValor'] <> NULL Then FCalculoTarifa.MaskEdit15.Text := ADOQueryCrucServHomo.FieldValues['TrValor'];
//      IF ADOQueryCrucServHomo.FieldValues['DSala'] <> NULL Then FCalculoTarifa.Edit5.Text := ADOQueryCrucServHomo.FieldValues['DSala'];
//      IF ADOQueryCrucServHomo.FieldValues['MSala'] <> NULL Then FCalculoTarifa.Edit6.Text := ADOQueryCrucServHomo.FieldValues['MSala'];
//      IF ADOQueryCrucServHomo.FieldValues['MedEsp'] <> NULL Then FCalculoTarifa.Edit7.Text := ADOQueryCrucServHomo.FieldValues['MedEsp'];
//      IF ADOQueryCrucServHomo.FieldValues['Anest'] <> NULL Then FCalculoTarifa.Edit8.Text := ADOQueryCrucServHomo.FieldValues['Anest'];
//      IF ADOQueryCrucServHomo.FieldValues['Medico_Aux'] <> NULL Then FCalculoTarifa.Edit9.Text := ADOQueryCrucServHomo.FieldValues['Medico_Aux'];


      Datamodule1.MuestraconAcceso(FCalculoTarifa);
    except
      FCalculoTarifa.free;
    end;
  End
  Else Showmessage('Para calcular el valor debe estar en 0 y con una tarifa asignada.');
end;

procedure TFacturaDirectaxPac.FormCreate(Sender: TObject);
begin
  DatamoduloAdmision.ADOQueryConvenios.Open;

  PageControl1.ActivePageIndex := 0;
  PageControl2.ActivePageIndex := 0;
  DateTimePicker1.DateTime:=Now;
  DateTimePicker2.DateTime:=Now+30;
  ADOQueryAseguradora.open;
  DBlookupComboBox11.KeyValue:=ADOqueryAseguradora.FieldValues['Numero_Documento'];

  ADOQueryEncAgrupa.Open;
  //IF NOT ADOQueryEncAgrupa.Locate('Codigo', 'Sin Agrupacion', [loPartialKey]) Then
  //Begin
  //  ADOQueryEncAgrupa.Append;
  //  ADOQueryEncAgrupa.FieldValues['Codigo']:='Sin Agrupacion';
  //  ADOQueryEncAgrupa.FieldValues['Valor']:= '0';
  //  ADOQueryEncAgrupa.Post;
  //End;
  DBLookupComboBox13.KeyValue:=ADOQueryEncAgrupa.FieldValues['Codigo'];
  DBLookupComboBox5.KeyValue:=Datamodule1.ADOQuery1.FieldValues['Id'];

  if Datamodule1.ADOQuery1.FieldValues['Almacen_Cargo'] <> null then
  Begin
    ADOQueryAlmacen.Parameters.ParamValues['CDA']:=Datamodule1.ADOQuery1.FieldValues['Almacen_Cargo'];
    ADOQueryAlmacen.Open;
    IF ADOQueryAlmacen.RecordCount = 0 then Begin
      ADOQueryAlmacen.Edit;
      ADOQueryAlmacen.FieldValues['CD_ALMACEN'] := '001';
      ADOQueryAlmacen.FieldValues['DESCRIPCION'] :=  'Almacen Principal';
      ADOQueryAlmacen.Post;
    End;
    DBLookupComboBox7.KeyValue:=ADOQueryAlmacen.FieldValues['CD_Almacen'];
  end
  Else Begin
    Showmessage('ERRROR: El almacen de inventarios de este usuario no esta asignado en el Area.');
    Close;
  End;

  ADOTableCentroC.Open;

  StringGrid1.Cells[1,0]:= 'Tipo';
  StringGrid1.Cells[2,0]:= 'Producto/Servicio/Tarifa';
  StringGrid1.Cells[3,0]:= 'Descripción';
  StringGrid1.Cells[4,0]:= 'Cantidad';
  StringGrid1.Cells[5,0]:= 'Valor Unitario';
  StringGrid1.Cells[6,0]:= 'Valor Total';
  StringGrid1.Cells[7,0]:= 'Tabla';
  StringGrid1.Cells[8,0]:= 'Año';
  StringGrid1.Cells[9,0]:= 'Codigo';
  StringGrid1.Cells[10,0]:= 'Fecha_Vence';
  StringGrid1.Cells[11,0]:= 'Lote';
  StringGrid1.Cells[12,0]:= 'Agrupacion';
  StringGrid1.Cells[13,0]:= 'VrAgrupacion';
  StringGrid1.Cells[14,0]:= 'CantAgrupacion';
  StringGrid1.Cells[15,0]:= 'No_Admision';
  StringGrid1.Cells[16,0]:= 'No_Cargo';
  StringGrid1.Cells[17,0]:= 'Vr_Liquidado';
  StringGrid1.Cells[18,0]:= 'IVA';
  StringGrid1.Cells[19,0]:= 'Descripcion';
  StringGrid1.Cells[20,0]:= 'Centro_Costo';
  StringGrid1.Cells[21,0]:= 'Numero_Transaccion_Inventario';
  StringGrid1.Cells[22,0]:= 'Capitacion';

  StringGrid1.ColWidths[0]:= 30;
  StringGrid1.ColWidths[1]:= 50;
  StringGrid1.ColWidths[2]:= 100;
  StringGrid1.ColWidths[3]:= 300;
  StringGrid1.ColWidths[4]:= 100;
  StringGrid1.ColWidths[5]:= 100;
  StringGrid1.ColWidths[6]:= 100;
  StringGrid1.ColWidths[7]:= 100;
  StringGrid1.ColWidths[8]:= 100;
  StringGrid1.ColWidths[9]:= 100;
  StringGrid1.ColWidths[10]:= 100;
  StringGrid1.ColWidths[11]:= 100;
  StringGrid1.ColWidths[12]:= 100;
  StringGrid1.ColWidths[13]:= 100;
  StringGrid1.ColWidths[14]:= 100;
  StringGrid1.ColWidths[15]:= 100;
  StringGrid1.ColWidths[16]:= 100;
  StringGrid1.ColWidths[17]:= 100;
  StringGrid1.ColWidths[18]:= 100;
  StringGrid1.ColWidths[18]:= 300;
  StringGrid1.ColWidths[19]:= 100;
  StringGrid1.ColWidths[20]:= 100;
  StringGrid1.ColWidths[21]:= 100;
  StringGrid1.ColWidths[22]:= 100;

  Maskedit1.Text:='';
  Maskedit2.Text:='';
  Maskedit3.Text:='';
  DBlookupComboBox3.Visible:=False;
  DBlookupComboBox4.Visible:=False;
  DBlookupComboBox2.Visible:=False;
  DBlookupComboBox6.Visible:=False;
  DBlookupComboBox9.Visible:=False;

  StringGridCaja.Cells[1,0]:= 'Concepto';
  StringGridCaja.Cells[2,0]:= 'Descripcion';
  StringGridCaja.Cells[3,0]:= 'Valor';

  StringGridCaja.ColWidths[0]:= 30;
  StringGridCaja.ColWidths[1]:= 100;
  StringGridCaja.ColWidths[2]:= 300;
  StringGridCaja.ColWidths[3]:= 100;
  ListBox1.Clear;
  ADOTable1.Open;
  ADOParamCargo.Open;
  ADOQVendedor.Open;
  ADOQueryConceptos.Open;

  IF ADOTable1.FieldValues['Valida_Existencias'] = 'S' Then sw1.StateOn := true
  ELSE sw1.StateOn := false;

  IF ADOParamCargo.FieldValues['Control_ProdxArea'] = 'S' Then sw2.StateOn := true
  ELSE sw2.StateOn := false;

  IF ADOParamCargo.FieldValues['Valida_Homologacion'] = 'S' Then sw3.StateOn := true
  ELSE sw3.StateOn := false;

  IF ADOTable1.FieldValues['ConvenioComoDescuento'] = 'S' Then sw4.StateOn := true
  ELSE sw4.StateOn := false;
end;

procedure TFacturaDirectaxPac.BitBtn6Click(Sender: TObject);
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

procedure TFacturaDirectaxPac.BitBtn7Click(Sender: TObject);
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

procedure TFacturaDirectaxPac.FormActivate(Sender: TObject);
begin
  ADOQuery9.Close;
  ADOQuery9.Parameters.ParamValues['Emp'] := Datamodule1.ADOQuery1.FieldValues['empresa_trabaja'];
  ADOQuery9.Open;
  DBLookupComboBox1.KeyValue:=Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja'];
  IF ADOQueryProd.State = dsOpening then
  Begin
    ADOQueryProd.Close;
    ADOQueryProd.Open;
  end;
  IF ADOQueryServ.State = dsOpening then
  Begin
    ADOQueryServ.Close;
    ADOQueryServ.Open;
  end;
  DBLookupComboBox5.KeyValue := ADOQVendedor.FieldValues['Numero_documento'];
  DBLookupComboBox19.KeyValue := ADOQVendedor.FieldValues['Numero_documento'];
end;

procedure TFacturaDirectaxPac.MaskEdit1Exit(Sender: TObject);
begin
  if stf(Maskedit1.Text) > 0 Then Begin
    MaskEdit2.Enabled:=True;
    MaskEdit2.SetFocus;
  End
  Else Begin
    MaskEdit2.Enabled:=False;
    MaskEdit2.Text := '0';
  End;
  DBLookupComboBox18.KeyValue := ADOTableCentroC.FieldValues['Centro_Costo'];
  DBLookupComboBox17.KeyValue := ADOTableCentroC.FieldValues['Centro_Costo'];
end;

procedure TFacturaDirectaxPac.CambiarlaCantidad1Click(Sender: TObject);
var
  InputString: string;
begin
//  InputString:= InputBox('Nueva Cantidad del Item', 'Cantidad', '1');
end;

procedure TFacturaDirectaxPac.BitBtn9Click(Sender: TObject);
begin
  DBLookupComboBox11.Enabled  := True;
  DBEdit17.Enabled            := True;

  ListBox2.Clear;
end;

procedure TFacturaDirectaxPac.BitBtn8Click(Sender: TObject);
Var i:Integer;
    lista:String;
begin
  If RadioButton2.Checked = True Then
    If ListBox2.Items.Count >= 1 Then Begin
      Showmessage('ERROR: Solo se puede adicionar un paciente a facturar.');
      exit;
    End;

  ListBox2.Items.Add(DBLookUpComboBox10.KeyValue);
  ADOQueryCargos.Close;
  ADOQueryCargos.SQL.Clear;
  ADOQueryCargos.SQL.Add('SELECT CREncCargos.No_Cargo,CRDetCargos.Sec_Cargo,CREncCargos.No_Admision,Duracion,CREncCargos.Fecha,Tp_Pst,Cd_Pst,Descripcion,Unidades-Unidades_Desc as Unidades,Precio,');
  ADOQueryCargos.SQL.Add('(Valor_Liquidado/Unidades)*(Unidades-Unidades_Desc) as Valor_Liquidado,CD_Tarifa,TB_Tarifa,Año_Tarifa,Capitacion,Agrupacion,CantAgrupacion,VrAgrupacion,');
  ADOQueryCargos.SQL.Add(' fecha_vence,lote,SAAdmisiones.Centro_Costo,SAAdmisiones.Aseguradora,SAAdmisiones.No_contrato,Numero_Transaccion_Inventario');
  ADOQueryCargos.SQL.Add(' FROM  CREncCargos,CRDetCargos,SAAdmisiones');
  ADOQueryCargos.SQL.Add(' WHERE CREncCargos.No_Cargo = CRDetCargos.No_Cargo AND');
  ADOQueryCargos.SQL.Add('    CREncCargos.No_Admision = SAAdmisiones.No_Admision AND');
  ADOQueryCargos.SQL.Add('    CREncCargos.Estado is NULL AND');
  ADOQueryCargos.SQL.Add('    (CRDetCargos.Factura is Null or CRDetCargos.Factura =  '+chr(39)+chr(39)+')');
  Lista:= '(';
  For i:=0 To Listbox2.Items.Count-1 Do
     IF ListBox2.Items.Strings[i] <> null then Lista:=Lista+chr(39)+ ListBox2.Items.Strings[i] +chr(39)+',';
  Lista:= Lista+chr(39)+chr(39)+')';
  ADOQueryCargos.SQL.Add('    AND Nr_Ident_Usuar+Tp_Ident_Usuar in '+lista);
  ADOQueryCargos.Open;

  DBLookupComboBox20Exit(Nil);

  DBLookupComboBox11.Enabled  := False;
  DBEdit17.Enabled            := False;
end;

procedure TFacturaDirectaxPac.RadioButton2Click(Sender: TObject);
begin
  ADOQueryPacientes.Close;
  ADOQueryPacientes.SQL.Clear;
  ADOQueryPacientes.SQL.Add(' SELECT  DISTINCT SAPacientes.Primer_Apellido+'+chr(39)+' '+chr(39)+'+SAPacientes.Segundo_Apellido+'+chr(39)+' '+chr(39)+'+SAPacientes.Primer_Nombre+'+chr(39)+' '+chr(39)+'+SAPacientes.Segundo_Nombre as Nom,');
  ADOQueryPacientes.SQL.Add(' SAPacientes.Primer_Apellido,SAPacientes.Segundo_Apellido,SAPacientes.Primer_Nombre, SAPacientes.Segundo_Nombre, FEC_NACIMINETO,');
  ADOQueryPacientes.SQL.Add(' SAPacientes.nr_ident_usuar+SAPacientes.tp_ident_usuar as key2, CONTTerce.Numero_Documento as Num_Documento,');
  ADOQueryPacientes.SQL.Add(' SAPacientes.NR_IDENT_USUAR, SAPacientes.TP_IDENT_USUAR, CONTTerce.Primer_Apellido+CONTTerce.Primer_Nombre as NOM_EPS,');
  ADOQueryPacientes.SQL.Add(' SAPacientes.ASEGURADORA, DIR_CASA_PACIEN, Direccion as DIR_EPS, Telefono as TEL_EPS, TEL_CASA_PACIEN, EMP_TRABAJO_PAC,');
  ADOQueryPacientes.SQL.Add(' DIR_TRABAJO_PAC, TEL_TRABAJO_PAC');
  ADOQueryPacientes.SQL.Add(' FROM SAPacientes , CONTTerce');
  ADOQueryPacientes.SQL.Add(' WHERE SAPacientes.NR_IDENT_USUAR+'+chr(39)+'001'+chr(39)+' = (CONTTerce.Numero_Documento+CONTTerce.Sucursal)');
  ADOQueryPacientes.SQL.Add(' ORDER BY SAPacientes.NR_IDENT_USUAR');
  ADOQueryPacientes.open;

  //DatamoduloAdmision.ADOQueryConvenios.Filtered := False;
  GroupBox6.Visible := False;
  ListBox2.Clear;
  DBLookUpComboBox10.Enabled := True;
end;

procedure TFacturaDirectaxPac.RadioButton1Click(Sender: TObject);
begin
  ADOQueryPacientes.Close;
  ADOQueryPacientes.SQL.Clear;
  ADOQueryPacientes.SQL.Add(' SELECT  DISTINCT SAPacientes.Primer_Apellido+'+chr(39)+' '+chr(39)+'+SAPacientes.Segundo_Apellido+'+chr(39)+' '+chr(39)+'+SAPacientes.Primer_Nombre+'+chr(39)+' '+chr(39)+'+SAPacientes.Segundo_Nombre as Nom,');
  ADOQueryPacientes.SQL.Add(' SAPacientes.Primer_Apellido,SAPacientes.Segundo_Apellido,SAPacientes.Primer_Nombre, SAPacientes.Segundo_Nombre, FEC_NACIMINETO,');
  ADOQueryPacientes.SQL.Add(' SAPacientes.nr_ident_usuar+SAPacientes.tp_ident_usuar as key2, CONTTerce.Numero_Documento as Num_Documento,');
  ADOQueryPacientes.SQL.Add(' SAPacientes.NR_IDENT_USUAR, SAPacientes.TP_IDENT_USUAR, CONTTerce.Primer_Apellido+CONTTerce.Primer_Nombre as NOM_EPS,');
  ADOQueryPacientes.SQL.Add(' SAPacientes.ASEGURADORA, DIR_CASA_PACIEN, Direccion as DIR_EPS, Telefono as TEL_EPS, TEL_CASA_PACIEN, EMP_TRABAJO_PAC,');
  ADOQueryPacientes.SQL.Add(' DIR_TRABAJO_PAC, TEL_TRABAJO_PAC');
  ADOQueryPacientes.SQL.Add(' FROM SAPacientes , SAAdmisiones,CONTTerce');
  ADOQueryPacientes.SQL.Add(' WHERE SAAdmisiones.Aseguradora = (CONTTerce.Numero_Documento+CONTTerce.Sucursal) AND');
  ADOQueryPacientes.SQL.Add('       SAAdmisiones.TP_IDENT_USUAR = SAPacientes.TP_IDENT_USUAR AND');
  ADOQueryPacientes.SQL.Add('       SAAdmisiones.Aseguradora like '+chr(39)+ADOQueryAseguradora.FieldValues['codterce']+chr(39)+' AND');
  ADOQueryPacientes.SQL.Add('       SAAdmisiones.NR_IDENT_USUAR = SAPacientes.NR_IDENT_USUAR');
  ADOQueryPacientes.open;

  {DatamoduloAdmision.ADOQueryConvenios.Filtered := False;
  DatamoduloAdmision.ADOQueryConvenios.Filter   := 'Aseguradora = '+chr(39)+ADOQueryAseguradora.FieldValues['codterce']+chr(39);
  DatamoduloAdmision.ADOQueryConvenios.Filtered := True;}

  DBLookUpComboBox10.Enabled := True;
  DBlookupComboBox10.KeyValue:=ADOqueryPacientes.FieldValues['NR_IDENT_USUAR']+ADOqueryPacientes.FieldValues['TP_IDENT_USUAR'];
  GroupBox6.Visible := True;
  DBLookupComboBox11.Enabled  := True;
  ListBox2.Clear;
end;

procedure TFacturaDirectaxPac.BitBtn12Click(Sender: TObject);
var i:extended;
    CantVenc,CantFalt: Integer;
begin
  If DBLookupComboBox13.Text='' Then
  Begin
    Showmessage('ERROR: Se necesita seleccionar un Paquete.');
    exit;
  End;

  ADOQueryDetAgrupa.Parameters.ParamValues['Cod']:=ADOQueryEncAgrupa.FieldValues['Codigo'];
  ADOQueryDetAgrupa.Open;
  ADOQueryDetAgrupa.First;
  While NOT ADOQueryDetAgrupa.eof DO
  Begin
    IF ADOQueryDetAgrupa.FieldValues['TP_PST'] = 'P' Then Begin
      CantFalt:=ADOQueryDetAgrupa.FieldValues['UNIDADES']*strtoint(MaskEdit4.text);

      ADOQuerySVencim.Close;
      ADOQuerySVencim.Parameters.ParamValues['Alma']:=Datamodule1.ADOQuery1.FieldValues['Almacen_Cargo'];
      ADOQuerySVencim.Parameters.ParamValues['Produ']:=ADOQueryDetAgrupa.FieldValues['CD_PST'];
      ADOQuerySVencim.Open;
      ADOQuerySVencim.First;
      While (NOT ADOQuerySVencim.Eof) AND (CantFalt <>0) DO
      Begin
        IF ADOQuerySVencim.FieldValues['Cantidad'] > 0 Then
        Begin
          Repeat
            CantVenc:= strtoint(InputBox('Ingrese la Cantidad para este Vencimiento','Prod: '+ADOQueryDetAgrupa.FieldValues['Descripcion']+' Fecha: '+datetostr(ADOQuerySVencim.FieldValues['Fecha_Vencim'])+' Lote: '+ADOQuerySVencim.FieldValues['Lote']+' Cant: '+inttostr(ADOQuerySVencim.FieldValues['Cantidad']), inttostr(CantFalt)));
            IF CantVenc > CantFalt Then ShowMessage('Error: La cantidad seleccionada es mayor a la del paquete.');
          until CantVenc <=CantFalt;
          CantFalt:=CantFalt-CantVenc;

          IF CantVenc <> 0 Then
          Begin
            StringGrid1.Cells[0,StringGrid1.RowCount-1] := inttostr(StringGrid1.RowCount-1);
            StringGrid1.Cells[1,StringGrid1.RowCount-1] := ADOQueryDetAgrupa.FieldValues['TP_PST'];
            StringGrid1.Cells[2,StringGrid1.RowCount-1] := ADOQueryDetAgrupa.FieldValues['CD_PST'];
            StringGrid1.Cells[3,StringGrid1.RowCount-1] := ADOQueryDetAgrupa.FieldValues['DESCRIPCION'];
            IF ADOQueryDetAgrupa.FieldValues['CD_TARIFA'] <> null then StringGrid1.Cells[7,StringGrid1.RowCount-1] := ADOQueryDetAgrupa.FieldValues['CD_TARIFA'];
            IF ADOQueryDetAgrupa.FieldValues['TB_TARIFA'] <> null then StringGrid1.Cells[8,StringGrid1.RowCount-1] := ADOQueryDetAgrupa.FieldValues['TB_TARIFA'];
            IF ADOQueryDetAgrupa.FieldValues['AÑO_TARIFA'] <> null then StringGrid1.Cells[9,StringGrid1.RowCount-1] := ADOQueryDetAgrupa.FieldValues['AÑO_TARIFA'];
            StringGrid1.Cells[4,StringGrid1.RowCount-1] := inttostr(CantVenc);
            StringGrid1.Cells[5,StringGrid1.RowCount-1] := ADOQueryDetAgrupa.FieldValues['PRECIO'];
            StringGrid1.Cells[6,StringGrid1.RowCount-1] := ADOQueryDetAgrupa.FieldValues['PRECIO']*ADOQueryDetAgrupa.FieldValues['UNIDADES'];
            IF ADOQuerySVencim.FieldValues['Fecha_Vencim'] <> null Then StringGrid1.Cells[10,StringGrid1.RowCount-1] := datetostr(ADOQuerySVencim.FieldValues['Fecha_Vencim']);
            IF ADOQuerySVencim.FieldValues['Lote'] <> null Then StringGrid1.Cells[11,StringGrid1.RowCount-1] := ADOQuerySVencim.FieldValues['Lote'];
            StringGrid1.Cells[12,StringGrid1.RowCount-1] := DBLookupCombobox13.Text;
            StringGrid1.Cells[13,StringGrid1.RowCount-1] := DBEdit5.Text;
            StringGrid1.Cells[14,StringGrid1.RowCount-1] := MaskEdit4.Text;

            StringGrid1.RowCount := StringGrid1.RowCount + 1;
          End;
        End;

        ADOquerySVencim.Next;
      End;
      IF CantFalt > 0 Then Begin
        Showmessage('No fue posible cargar por no haber existencias del Producto '+ADOQueryDetAgrupa.FieldValues['Descripcion']+' por la Cantidad: '+inttostr(CantFalt));
      End;
    End
    Else Begin
      StringGrid1.Cells[0,StringGrid1.RowCount-1] := inttostr(StringGrid1.RowCount-1);
      StringGrid1.Cells[1,StringGrid1.RowCount-1] := ADOQueryDetAgrupa.FieldValues['TP_PST'];
      StringGrid1.Cells[2,StringGrid1.RowCount-1] := ADOQueryDetAgrupa.FieldValues['CD_PST'];
      StringGrid1.Cells[3,StringGrid1.RowCount-1] := ADOQueryDetAgrupa.FieldValues['DESCRIPCION'];
      IF ADOQueryDetAgrupa.FieldValues['CD_TARIFA'] <> null then StringGrid1.Cells[7,StringGrid1.RowCount-1] := ADOQueryDetAgrupa.FieldValues['CD_TARIFA'];
      IF ADOQueryDetAgrupa.FieldValues['TB_TARIFA'] <> null then StringGrid1.Cells[8,StringGrid1.RowCount-1] := ADOQueryDetAgrupa.FieldValues['TB_TARIFA'];
      IF ADOQueryDetAgrupa.FieldValues['AÑO_TARIFA'] <> null then StringGrid1.Cells[9,StringGrid1.RowCount-1] := ADOQueryDetAgrupa.FieldValues['AÑO_TARIFA'];
      StringGrid1.Cells[4,StringGrid1.RowCount-1] := ADOQueryDetAgrupa.FieldValues['UNIDADES'];
      StringGrid1.Cells[5,StringGrid1.RowCount-1] := ADOQueryDetAgrupa.FieldValues['PRECIO'];
      StringGrid1.Cells[6,StringGrid1.RowCount-1] := ADOQueryDetAgrupa.FieldValues['PRECIO']*ADOQueryDetAgrupa.FieldValues['UNIDADES'];
      StringGrid1.Cells[12,StringGrid1.RowCount-1] := DBLookupCombobox13.Text;
      StringGrid1.Cells[13,StringGrid1.RowCount-1] := DBEdit5.Text;
      StringGrid1.Cells[14,StringGrid1.RowCount-1] := MaskEdit4.Text;

      StringGrid1.RowCount := StringGrid1.RowCount + 1;
    End;

    ADOQueryDetAgrupa.Next;
  End;
  ADOQueryDetAgrupa.Close;

  //Calcula Totales
  MaskEdit7.Text  := '0';
  MaskEdit8.Text  := '0';
  MaskEdit9.Text  := '0';
  MaskEdit13.Text  := '0';
  ListBox1.Clear;
  For x:=1 To StringGrid1.RowCount-1 Do Begin
    IF StringGrid1.Cells[22,x] <> 'S' Then  //Si es capitacion no toma el item
    Begin
        IF stf(StringGrid1.Cells[13,x]) <> 0 Then Begin
          if listbox1.Items.IndexOf(StringGrid1.Cells[16,x]+StringGrid1.Cells[12,x])<0 Then yagrupo:=False  // Agrupa por el Nombre del Grupo.
          Else yagrupo:=true;
          IF NOT yagrupo Then
          Begin
            MaskEdit13.Text  := ntsfbg(stf(MaskEdit13.Text)  + (stf(StringGrid1.Cells[13,x])*stf(StringGrid1.Cells[14,x])));
            ListBox1.Items.Add(StringGrid1.Cells[16,x]+StringGrid1.Cells[12,x]);
          End;
        End;

        MaskEdit7.Text  := ntsfbg(stf(MaskEdit7.Text)  + stf(StringGrid1.Cells[17,x]));
        MaskEdit8.Text  := ntsfbg(stf(MaskEdit8.Text)  + stf(StringGrid1.Cells[17,x]));
        MaskEdit9.Text  := ntsfbg(stf(MaskEdit9.Text)  + stf(StringGrid1.Cells[18,x]));
    End;
  End;
  MaskEdit10.Text   := MaskEdit6.Text;
  MaskEdit11.Text   := ntsfbg(stf(MaskEdit13.Text)  + stf(MaskEdit8.Text)  + stf(MaskEdit9.Text) - stf(MaskEdit10.Text));
  MaskEditVP.text   := ntsfbg(stf(MaskEdit11.Text) - stf(MaskEdit10.Text));
end;

procedure TFacturaDirectaxPac.BitBtn10Click(Sender: TObject);
var i : Integer;
    mensaje  : string;
begin
  i := 1;
  while i < StringGrid1.RowCount - 1 do
    begin
      if  StringGrid1.Rows[i].Strings[40] = IntToStr( ADOQueryCargos.RecNo) then
        begin
          mensaje  := ADOQueryCargos.FieldValues['Descripcion'];
          Application.MessageBox(pchar('Este items '+ mensaje+ ' ya fue agregado, no se puede agregar nuevamente'),'Información',MB_OK+MB_ICONINFORMATION);
   //       Break;
          Exit;
        end;
      inc(i);
    end;

  IF ADOQueryCargos.FieldValues['Unidades'] < 1 Then
  Begin
    Showmessage('Unidades de '+ADOQueryCargos.FieldValues['Descripcion']+' deben ser mayor a 0');
    Exit;
  End;

  IF ADOQueryCargos.FieldValues['Valor_Liquidado'] <> null Then
  Begin
    if ADOQueryCargos.FieldValues['Tp_PST'] = 'P' then
    Begin
      ADOQueryProd.Close;
      ADOQueryProd.SQL.Clear;
      ADOQueryProd.SQL.Add(' SELECT * ');
      ADOQueryProd.SQL.Add(' FROM INProductos ');
      ADOQueryProd.SQL.Add(' inner join INGrupo on INProductos.cd_grupo = INGrupo.Codigo_Grupo ');
      ADOQueryProd.SQL.Add(' inner join FAConvenios on INProductos.CD_Producto   = FAConvenios.CD_PST');
      ADOQueryProd.SQL.Add(' inner join CONTTerce  on FAConvenios.Aseguradora =  CONTTerce.Numero_Documento+CONTTerce.Sucursal ');
      ADOQueryProd.SQL.Add(' left outer join INIVA on INGrupo.Codigo_IVA   = INIVA.Codigo_IVA ');

      ADOQueryProd.SQL.Add(' WHERE FAConvenios.TP_PST = '+chr(39)+'P'+chr(39)+' AND ');
      ADOQueryProd.SQL.Add('       FAConvenios.Aseguradora = '+chr(39)+DatamoduloAdmision.ADOQueryConvenios.FieldValues['Aseguradora']+chr(39)+' AND ');
      ADOQueryProd.SQL.Add('       FAConvenios.No_Contrato = '+chr(39)+DatamoduloAdmision.ADOQueryConvenios.FieldValues['No_Contrato']+chr(39)+' AND ');
      ADOQueryProd.SQL.Add('       INPRODUCTOS.ESTADO   = '+chr(39)+'A'+chr(39)+'  ');
      if ADOParamCargo.FieldValues['Control_ProdxArea'] = 'S' then
      Begin
        ADOQueryProd.SQL.Add('       AND INProductos.CD_Producto IN (SELECT CD_PST FROM SACargosxArea WHERE Tp_PST = '+chr(39)+'P'+chr(39)+' ');
        ADOQueryProd.SQL.Add('                                AND Empresa = '+chr(39)+Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja']+chr(39)+' ');
        ADOQueryProd.SQL.Add('                                AND Area = '+chr(39)+Datamodule1.ADOQuery1.FieldValues['Area_Trabaja']+chr(39)+') ');
      End;
      ADOQueryProd.SQL.Add('       AND INPRODUCTOS.CD_Producto = '+chr(39)+ADOQueryCargos.FieldValues['Cd_PST']+chr(39));
      ADOQueryProd.SQL.Add(' ORDER BY INPRODUCTOS.Descripcion ');
 // Código viejo no compatible con SQL server 2012
{
      ADOQueryProd.SQL.Add(' SELECT * ');
      ADOQueryProd.SQL.Add(' FROM INProductos,INGrupo,INIVA,FAConvenios,CONTTerce ');
      ADOQueryProd.SQL.Add(' WHERE INProductos.cd_grupo = INGrupo.Codigo_Grupo AND ');
      ADOQueryProd.SQL.Add('       INGrupo.Codigo_IVA   * = INIVA.Codigo_IVA AND ');
      ADOQueryProd.SQL.Add('       INProductos.CD_Producto   = FAConvenios.CD_PST AND ');
      ADOQueryProd.SQL.Add('       FAConvenios.TP_PST = '+chr(39)+'P'+chr(39)+' AND ');
      ADOQueryProd.SQL.Add('       FAConvenios.Aseguradora = (CONTTerce.Numero_Documento+CONTTerce.Sucursal) AND ');
      ADOQueryProd.SQL.Add('       FAConvenios.Aseguradora = '+chr(39)+DatamoduloAdmision.ADOQueryConvenios.FieldValues['Aseguradora']+chr(39)+' AND ');
      ADOQueryProd.SQL.Add('       FAConvenios.No_Contrato = '+chr(39)+DatamoduloAdmision.ADOQueryConvenios.FieldValues['No_Contrato']+chr(39)+' AND ');
      ADOQueryProd.SQL.Add('       INPRODUCTOS.ESTADO   = '+chr(39)+'A'+chr(39)+'  ');
      if ADOParamCargo.FieldValues['Control_ProdxArea'] = 'S' then
      Begin
        ADOQueryProd.SQL.Add('       AND INProductos.CD_Producto IN (SELECT CD_PST FROM SACargosxArea WHERE Tp_PST = '+chr(39)+'P'+chr(39)+' ');
        ADOQueryProd.SQL.Add('                                AND Empresa = '+chr(39)+Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja']+chr(39)+' ');
        ADOQueryProd.SQL.Add('                                AND Area = '+chr(39)+Datamodule1.ADOQuery1.FieldValues['Area_Trabaja']+chr(39)+') ');
      End;
      ADOQueryProd.SQL.Add('       AND INPRODUCTOS.CD_Producto = '+chr(39)+ADOQueryCargos.FieldValues['Cd_PST']+chr(39));
      ADOQueryProd.SQL.Add(' ORDER BY INPRODUCTOS.Descripcion ');

}
      ADOQueryProd.Open;
    End
    Else Begin
      ADOQueryServ.Close;
      ADOQueryServ.SQL.Clear;
      ADOQueryServ.SQL.Add(' SELECT TABLA,CODIGO,SAServicios.DESCRIPCION,Capitulo,Tarifa,año,Porcentaje,Valor_Pesos,Valor_Pesos as Valor ');
      ADOQueryServ.SQL.Add(' FROM  SAServicios,SACapituloCups,INIVA,FAConvenios,CONTTerce ');
      ADOQueryServ.SQL.Add(' WHERE SAServicios.Capitulo = SACapituloCups.Cod_Capitulo AND ');
      ADOQueryServ.SQL.Add('      SAServicios.Codigo = FAConvenios.CD_PST AND ');
      ADOQueryServ.SQL.Add('      SACapituloCups.Codigo_IVA = INIVA.Codigo_IVA AND ');
      ADOQueryServ.SQL.Add('      FAConvenios.Aseguradora = (CONTTerce.Numero_Documento+CONTTerce.Sucursal) AND ');
      ADOQueryServ.SQL.Add('      FAConvenios.TP_PST = '+chr(39)+'S'+chr(39)+' AND ');
      ADOQueryServ.SQL.Add('      SAServicios.Estado = '+chr(39)+'A'+chr(39)+' AND ');
      ADOQueryServ.SQL.Add('      FAConvenios.Aseguradora = '+chr(39)+DatamoduloAdmision.ADOQueryConvenios.FieldValues['Aseguradora']+chr(39)+' AND ');
      ADOQueryServ.SQL.Add('      FAConvenios.No_Contrato = '+chr(39)+DatamoduloAdmision.ADOQueryConvenios.FieldValues['No_Contrato']+chr(39)+' ');

      if ADOParamCargo.FieldValues['Control_ProdxArea'] = 'S' then
      Begin
        ADOQueryServ.SQL.Add(' AND     SAServicios.Codigo IN (SELECT CD_PST ');
        ADOQueryServ.SQL.Add('                             FROM SACargosxArea ');
        ADOQueryServ.SQL.Add('                             WHERE Tp_PST = '+chr(39)+'S'+chr(39)+' ');
        ADOQueryServ.SQL.Add('                               AND Empresa =  '+chr(39)+Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja']+chr(39)+' ');
        ADOQueryServ.SQL.Add('                               AND Area =  '+chr(39)+Datamodule1.ADOQuery1.FieldValues['Area_Trabaja']+chr(39)+') ');
      End;

  {      ADOQueryServ.SQL.Add('      SAServicios.Codigo IN (SELECT Codigo_Servicio ');
      ADOQueryServ.SQL.Add('                             FROM SAServiciosxTpAdm ');
      ADOQueryServ.SQL.Add('                             WHERE Tp_Admision = '+chr(39)+DBLookupCombobox11.keyvalue+chr(39)+') AND '); }

      if ADOParamCargo.FieldValues['Valida_Homologacion'] = 'S' then
      Begin
        ADOQueryServ.SQL.Add('      AND SAServicios.TABLA+SAServicios.CODIGO IN (SELECT SAHomologacion.Tabla1 + SAHomologacion.Codigo1 ');
        ADOQueryServ.SQL.Add('					FROM SAHomologacion,SATarifarios,SATarifasDetalle ');
        ADOQueryServ.SQL.Add('					WHERE SAHomologacion.Tabla2 = SATarifarios.Tabla ');
        ADOQueryServ.SQL.Add('					AND SAHomologacion.Codigo2 = SATarifarios.Codigo ');
        ADOQueryServ.SQL.Add('					AND SATarifarios.Tabla = SATarifasDetalle.Tabla   ');
        ADOQueryServ.SQL.Add('					AND SATarifarios.Codigo = SATarifasDetalle.Codigo ');
        ADOQueryServ.SQL.Add('					AND SATarifarios.TABLA = FAConvenios.Tarifa  ');
        ADOQueryServ.SQL.Add('					AND SATarifasDetalle.Año = FAConvenios.Año) ');
      End;
      ADOQueryServ.SQL.Add('       AND SAServicios.Codigo = '+chr(39)+ADOQueryCargos.FieldValues['Cd_PST']+chr(39));
      ADOQueryServ.SQL.Add(' ORDER BY SAServicios.Codigo ');
      ADOQueryServ.Open;
    End;

    StringGrid1.Cells[0,StringGrid1.RowCount-1] := ADOQueryCargos.FieldValues['Sec_Cargo'];
    StringGrid1.Cells[1,StringGrid1.RowCount-1] := ADOQueryCargos.FieldValues['Tp_PST'];
    StringGrid1.Cells[2,StringGrid1.RowCount-1] := ADOQueryCargos.FieldValues['Cd_PST'];
    StringGrid1.Cells[3,StringGrid1.RowCount-1] := ADOQueryCargos.FieldValues['Descripcion'];
    StringGrid1.Cells[4,StringGrid1.RowCount-1] := ADOQueryCargos.FieldValues['Unidades'];
    StringGrid1.Cells[5,StringGrid1.RowCount-1] := ADOQueryCargos.FieldValues['Precio'];
    StringGrid1.Cells[6,StringGrid1.RowCount-1] := ADOQueryCargos.FieldValues['Unidades']*ADOQueryCargos.FieldValues['Precio'];
    StringGrid1.Cells[7,StringGrid1.RowCount-1] := ADOQueryCargos.FieldValues['CD_Tarifa'];
    StringGrid1.Cells[8,StringGrid1.RowCount-1] := ADOQueryCargos.FieldValues['TB_Tarifa'];
    StringGrid1.Cells[9,StringGrid1.RowCount-1] := ADOQueryCargos.FieldValues['Año_Tarifa'];
    if ADOQueryCargos.FieldValues['Fecha_Vence'] <> null then StringGrid1.Cells[10,StringGrid1.RowCount-1] := datetostr(ADOQueryCargos.FieldValues['Fecha_Vence'])
    else StringGrid1.Cells[10,StringGrid1.RowCount-1] := '0';
    if ADOQueryCargos.FieldValues['Lote'] <> null then StringGrid1.Cells[11,StringGrid1.RowCount-1] := ADOQueryCargos.FieldValues['Lote']
    else StringGrid1.Cells[11,StringGrid1.RowCount-1] := '0';
    StringGrid1.Cells[12,StringGrid1.RowCount-1] := campotoedit(ADOQueryCargos.FieldValues['Agrupacion']);
    StringGrid1.Cells[13,StringGrid1.RowCount-1] := campotoedit(ADOQueryCargos.FieldValues['VrAgrupacion']);
    StringGrid1.Cells[14,StringGrid1.RowCount-1] := campotoedit(ADOQueryCargos.FieldValues['CantAgrupacion']);
    StringGrid1.Cells[15,StringGrid1.RowCount-1] := campotoedit(ADOQueryCargos.FieldValues['No_Admision']);
    StringGrid1.Cells[16,StringGrid1.RowCount-1] := ADOQueryCargos.FieldValues['No_Cargo'];
    StringGrid1.Cells[17,StringGrid1.RowCount-1] := campotoedit(ADOQueryCargos.FieldValues['Valor_Liquidado']);
    if ADOQueryCargos.FieldValues['Tp_PST'] = 'P' then
    Begin
      if ADOQueryProd.FieldValues['Valor'] = null then
        StringGrid1.Cells[18,StringGrid1.RowCount-1] := '0'
      Else StringGrid1.Cells[18,StringGrid1.RowCount-1] := ntsfbg(stf(StringGrid1.Cells[6,StringGrid1.RowCount-1]*ADOQueryProd.FieldValues['Valor'])/100);
    End
    Else Begin
      StringGrid1.Cells[18,StringGrid1.RowCount-1] := '0'; // En caso de los servicios esta pendiente el calculo del IVA.....
    End;
    StringGrid1.Cells[20,StringGrid1.RowCount-1] := campotoedit(ADOQueryCargos.FieldValues['Centro_Costo']);
    StringGrid1.Cells[21,StringGrid1.RowCount-1] := campotoedit(ADOQueryCargos.FieldValues['Numero_Transaccion_Inventario']);
    StringGrid1.Cells[22,StringGrid1.RowCount-1] := campotoedit(ADOQueryCargos.FieldValues['Capitacion']);
    StringGrid1.Cells[40, StringGrid1.RowCount-1] := IntToStr( ADOQueryCargos.RecNo);

    //Calcula Totales
    MaskEdit7.Text  := '0';
    MaskEdit8.Text  := '0';
    MaskEdit9.Text  := '0';
    MaskEdit13.Text  := '0';
    ListBox1.Clear;
    For x:=1 To StringGrid1.RowCount-1 Do Begin
      IF StringGrid1.Cells[22,x] <> 'S' Then  //Si es capitacion no toma el item
      Begin
          IF stf(StringGrid1.Cells[13,x]) <> 0 Then Begin
            if listbox1.Items.IndexOf(StringGrid1.Cells[16,x]+StringGrid1.Cells[12,x])<0 Then yagrupo:=False  // Agrupa por el Nombre del Grupo.
            Else yagrupo:=true;
            IF NOT yagrupo Then
            Begin
              MaskEdit13.Text  := ntsfbg(stf(MaskEdit13.Text)  + (stf(StringGrid1.Cells[13,x])*stf(StringGrid1.Cells[14,x])));
              ListBox1.Items.Add(StringGrid1.Cells[16,x]+StringGrid1.Cells[12,x]);
            End;
          End;

          if ADOTable1.FieldValues['ConvenioComoDescuento'] = 'S' then
          Begin
            MaskEdit7.Text  := ntsfbg(stf(MaskEdit7.Text)  + stf(StringGrid1.Cells[6,x]));
            MaskEdit8.Text  := ntsfbg(stf(MaskEdit8.Text)  + stf(StringGrid1.Cells[17,x]));
            MaskEdit9.Text  := ntsfbg(stf(MaskEdit9.Text)  + stf(StringGrid1.Cells[18,x]));
          End
          Else Begin
            MaskEdit7.Text  := ntsfbg(stf(MaskEdit7.Text)  + stf(StringGrid1.Cells[6,x]));
            MaskEdit8.Text  := ntsfbg(stf(MaskEdit8.Text)  + stf(StringGrid1.Cells[17,x]));
            MaskEdit9.Text  := ntsfbg(stf(MaskEdit9.Text)  + stf(StringGrid1.Cells[18,x]));
          End;
        end;
    End;
    if ADOTable1.FieldValues['ConvenioComoDescuento'] = 'S' then
    Begin
      MaskEdit10.Text   := MaskEdit6.Text;
      //MaskEdit11.Text   := ntsfbg(stf(MaskEdit13.Text)  + stf(MaskEdit8.Text)  + stf(MaskEdit9.Text) - stf(MaskEdit10.Text));
      //MaskEditVP.text   := ntsfbg(stf(MaskEdit11.Text) - stf(MaskEdit10.Text));

      MaskEdit11.Text   := MaskEdit7.Text;
      MaskEditVP.text   := ntsfbg(stf(MaskEdit11.Text));
    End
    Else Begin
      MaskEdit10.Text   := MaskEdit6.Text;
      //MaskEdit11.Text   := ntsfbg(stf(MaskEdit13.Text)  + stf(MaskEdit8.Text)  + stf(MaskEdit9.Text) - stf(MaskEdit10.Text));
      //MaskEditVP.text   := ntsfbg(stf(MaskEdit11.Text) - stf(MaskEdit10.Text));

      MaskEdit11.Text   := ntsfbg(stf(MaskEdit8.Text)  + stf(MaskEdit9.Text));
      MaskEditVP.text   := ntsfbg(stf(MaskEdit11.Text));
    End;

    StringGrid1.Cells[1,StringGrid1.RowCount] := '';
    StringGrid1.Cells[2,StringGrid1.RowCount] := '';
    StringGrid1.Cells[3,StringGrid1.RowCount] := '';
    StringGrid1.Cells[4,StringGrid1.RowCount] := '';
    StringGrid1.Cells[5,StringGrid1.RowCount] := '';
    StringGrid1.Cells[6,StringGrid1.RowCount] := '';
    StringGrid1.Cells[7,StringGrid1.RowCount] := '';
    StringGrid1.Cells[8,StringGrid1.RowCount] := '';
    StringGrid1.Cells[9,StringGrid1.RowCount] := '';
    StringGrid1.Cells[10,StringGrid1.RowCount] := '';
    StringGrid1.Cells[11,StringGrid1.RowCount] := '';
    StringGrid1.Cells[12,StringGrid1.RowCount] := '';
    StringGrid1.Cells[13,StringGrid1.RowCount] := '';
    StringGrid1.Cells[14,StringGrid1.RowCount] := '';
    StringGrid1.Cells[15,StringGrid1.RowCount] := '';
    StringGrid1.Cells[16,StringGrid1.RowCount] := '';
    StringGrid1.Cells[17,StringGrid1.RowCount] := '';
    StringGrid1.Cells[18,StringGrid1.RowCount] := '';
    StringGrid1.Cells[19,StringGrid1.RowCount] := '';
    StringGrid1.Cells[20,StringGrid1.RowCount] := '';
    StringGrid1.Cells[21,StringGrid1.RowCount] := '';
    StringGrid1.Cells[22,StringGrid1.RowCount] := '';

    StringGrid1.RowCount := StringGrid1.RowCount + 1;
  End
  Else Begin
    Showmessage('ERROR: El cargo no se encuentra preliquidado.');
  End;
end;

procedure TFacturaDirectaxPac.BitBtn11Click(Sender: TObject);
begin
  ADOQueryCargos.First;
  While NOT ADOQueryCargos.Eof DO
  Begin
    FacturaDirectaxPac.BitBtn10Click(nil);

    ADOQueryCargos.Next;
  End;
end;

procedure TFacturaDirectaxPac.SpeedButton2Click(Sender: TObject);
var i:integer;
    cad:string;
begin
  if MessageDlg('Esta seguro de limpiar la Grilla?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    for i:=1 to StringGridCaja.RowCount-1 do
    begin
      StringGridCaja.Cells[1,i] := '';
      StringGridCaja.Cells[2,i] := '';
      StringGridCaja.Cells[3,i] := '';
      StringGridCaja.Cells[4,i] := '';
      StringGridCaja.Cells[5,i] := '';
      MaskEditTPagado.Text := '0';
    end;
    StringGridCaja.RowCount:=2;
  end;
end;

procedure TFacturaDirectaxPac.SpeedButton1Click(Sender: TObject);
Var valor:currency;
    m,n,x:integer;
    cad:string;
    pp:array[1..100] of string;
Begin
  for x:=1 to 100 do pp[x]:='';

  IF DBLookupCombobox15.Text = '' Then Begin
    Showmessage('No se pueden asignar Conceptos sin Cuentas Contables.');
    Exit;
  End;
  IF DBLookupCombobox16.Text = '' Then Begin
    Showmessage('No se pueden asignar Conceptos sin Tipos.');
    Exit;
  End;

  n:=0;
  for m:=1 to StringGridCaja.RowCount-1 do
  Begin
    if (StringGridCaja.Cells[1,m] = DBLookupCombobox8.Text) Then
         n:=1;
  End;
  IF n=1 Then Begin
    Showmessage('Concepto ya ingresado en esta factura.');
    Exit;
  End;

  IF stf(MaskeditValor.Text) <> 0 Then Begin
    StringGridCaja.Cells[0,StringGridCaja.RowCount-1]  := inttostr(StringGridCaja.RowCount-1);
    StringGridCaja.Cells[1,StringGridCaja.RowCount-1]  := DBLookupCombobox8.Text;
    StringGridCaja.Cells[2,StringGridCaja.RowCount-1]  := DBLookupCombobox14.Text;
    StringGridCaja.Cells[3,StringGridCaja.RowCount-1]  := MaskeditValor.Text;
    StringGridCaja.RowCount := StringGridCaja.RowCount + 1;

    cad:=MaskEditTPagado.Text;
    while Pos(',', cad) > 0 do Delete(cad,Pos(',', cad),1);
    valor := stf(cad);
    valor:= stf(MaskeditValor.Text)+valor;
    MaskEditTPagado.Text:=Format('%16.2n',[Valor]);

    MaskEdit14.Text := ntsfbg(stf(MaskEditTPagado.Text) - stf(MaskEditVP.Text));

    MaskEditValor.Text:= '';
    Panel2.Enabled:=False;
    If DBLookupComboBox1.Enabled then  DBLookupComboBox1.SetFocus;
  End
  Else Showmessage('Ingrese Valores.');
end;

procedure TFacturaDirectaxPac.DataSource10DataChange(Sender: TObject;
  Field: TField);
begin
  IF ADOQueryConceptos.RecordCount <> 0 Then
  Begin
    DBLookupComboBox8.KeyValue := ADOQueryConceptos.FieldValues['Concepto'];
    DBLookupComboBox14.KeyValue := ADOQueryConceptos.FieldValues['Concepto'];
    DBLookupComboBox15.KeyValue := ADOQueryConceptos.FieldValues['Concepto'];
    DBLookupComboBox16.KeyValue := ADOQueryConceptos.FieldValues['Concepto'];
    MaskEditValor.Text := ntsfbg(stf(MaskEditVp.Text) * (stf(DBEdit14.Text)/100));
  End;
end;

procedure TFacturaDirectaxPac.MaskEdit6KeyPress(Sender: TObject;
  var Key: Char);
Var prb:Extended;
begin
  if (( (key >= char(14)) and (key < '0')) or (key > '9')) and (key <> '.') then
    key := char(0)
  else if (key = '.') and (pos('.',maskedit6.Text) <> 0) then
    key := char(0)
  else
  begin
    if not (key <= char(14)) then
    begin
      if trystrtofloat(maskedit6.Text+key,prb) = FALSE then
      begin
        showmessage('Error en el valor digitado');
        maskedit6.text:='';
      end;
    end;
  end;
end;

procedure TFacturaDirectaxPac.BitBtn13Click(Sender: TObject);
Var Adm:String;
begin
  Adm := ADOQueryCargos.FieldValues['No_Admision'];
  
  ADOQueryCargos.First;
  While NOT ADOQueryCargos.Eof DO
  Begin
    IF adm = ADOQueryCargos.FieldValues['No_Admision'] Then FacturaDirectaxPac.BitBtn10Click(nil);

    ADOQueryCargos.Next;
  End;
end;

procedure TFacturaDirectaxPac.BitBtn15Click(Sender: TObject);
begin
  frmingresopacientesshort := tfrmingresopacientesshort.create(application);
  try
    Datamodule1.MuestraconAcceso(frmingresopacientesshort);
  except
    frmingresopacientesshort.free;
  end;
end;

procedure TFacturaDirectaxPac.DateTimePicker1Exit(Sender: TObject);
begin
  DateTimePicker2.DateTime := DateTimePicker1.DateTime + 30;
end;

procedure TFacturaDirectaxPac.DataSource5DataChange(Sender: TObject;
  Field: TField);
begin
  if DBLookupComboBox18.Focused then DBLookupComboBox17.KeyValue := DBLookupComboBox18.KeyValue
  else DBLookupComboBox18.KeyValue := DBLookupComboBox17.KeyValue;
end;

procedure TFacturaDirectaxPac.PageControl1Change(Sender: TObject);
begin
  If PageControl1.ActivePageIndex = 1 Then
  Begin
    if ADOQueryCargos.RecordCount = 0 then PageControl2.Pages[0].TabVisible:= False;

    If (DBLookupCombobox20.Text = '') Then
    Begin
      PageControl1.ActivePageIndex := 0;
      Showmessage('Debe ingresar primero los campos de la pestaña A QUIEN');
    End
    Else Begin
      ADOQueryProd.Close;
      ADOQueryProd.SQL.Clear;

      ADOQueryProd.SQL.Add(' SELECT * ');
      ADOQueryProd.SQL.Add(' FROM INProductos ');
      ADOQueryProd.SQL.Add(' inner join INGrupo on INProductos.cd_grupo = INGrupo.Codigo_Grupo ');
      ADOQueryProd.SQL.Add(' inner join FAConvenios on INProductos.CD_Producto   = FAConvenios.CD_PST');
      ADOQueryProd.SQL.Add(' inner join  CONTTerce on FAConvenios.Aseguradora = CONTTerce.Numero_Documento+CONTTerce.Sucursal');
      ADOQueryProd.SQL.Add(' left outer join INIVA on INGrupo.Codigo_IVA   = INIVA.Codigo_IVA');

      ADOQueryProd.SQL.Add(' WHERE FAConvenios.TP_PST = '+chr(39)+'P'+chr(39)+' AND ');
      ADOQueryProd.SQL.Add('       FAConvenios.Aseguradora = '+chr(39)+DatamoduloAdmision.ADOQueryConvenios.FieldValues['Aseguradora']+chr(39)+' AND ');
      ADOQueryProd.SQL.Add('       FAConvenios.No_Contrato = '+chr(39)+DatamoduloAdmision.ADOQueryConvenios.FieldValues['No_Contrato']+chr(39)+' AND ');
      ADOQueryProd.SQL.Add('       INPRODUCTOS.ESTADO   = '+chr(39)+'A'+chr(39)+'  ');
      if ADOParamCargo.FieldValues['Control_ProdxArea'] = 'S' then
      Begin
        ADOQueryProd.SQL.Add('       AND INProductos.CD_Producto IN (SELECT CD_PST FROM SACargosxArea WHERE Tp_PST = '+chr(39)+'P'+chr(39)+' ');
        ADOQueryProd.SQL.Add('                                AND Empresa = '+chr(39)+Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja']+chr(39)+' ');
        ADOQueryProd.SQL.Add('                                AND Area = '+chr(39)+Datamodule1.ADOQuery1.FieldValues['Area_Trabaja']+chr(39)+') ');
      End;
      ADOQueryProd.SQL.Add(' ORDER BY INPRODUCTOS.Descripcion ');
  // código viejo no compatible con SQL server 2012
 {
      ADOQueryProd.SQL.Add(' SELECT * ');
      ADOQueryProd.SQL.Add(' FROM INProductos,INGrupo,INIVA,FAConvenios,CONTTerce ');
      ADOQueryProd.SQL.Add(' WHERE INProductos.cd_grupo = INGrupo.Codigo_Grupo AND ');
      ADOQueryProd.SQL.Add('       INGrupo.Codigo_IVA   * = INIVA.Codigo_IVA AND ');
      ADOQueryProd.SQL.Add('       INProductos.CD_Producto   = FAConvenios.CD_PST AND ');
      ADOQueryProd.SQL.Add('       FAConvenios.TP_PST = '+chr(39)+'P'+chr(39)+' AND ');
      ADOQueryProd.SQL.Add('       FAConvenios.Aseguradora = (CONTTerce.Numero_Documento+CONTTerce.Sucursal) AND ');
      ADOQueryProd.SQL.Add('       FAConvenios.Aseguradora = '+chr(39)+DatamoduloAdmision.ADOQueryConvenios.FieldValues['Aseguradora']+chr(39)+' AND ');
      ADOQueryProd.SQL.Add('       FAConvenios.No_Contrato = '+chr(39)+DatamoduloAdmision.ADOQueryConvenios.FieldValues['No_Contrato']+chr(39)+' AND ');
      ADOQueryProd.SQL.Add('       INPRODUCTOS.ESTADO   = '+chr(39)+'A'+chr(39)+'  ');
      if ADOParamCargo.FieldValues['Control_ProdxArea'] = 'S' then
      Begin
        ADOQueryProd.SQL.Add('       AND INProductos.CD_Producto IN (SELECT CD_PST FROM SACargosxArea WHERE Tp_PST = '+chr(39)+'P'+chr(39)+' ');
        ADOQueryProd.SQL.Add('                                AND Empresa = '+chr(39)+Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja']+chr(39)+' ');
        ADOQueryProd.SQL.Add('                                AND Area = '+chr(39)+Datamodule1.ADOQuery1.FieldValues['Area_Trabaja']+chr(39)+') ');
      End;
      ADOQueryProd.SQL.Add(' ORDER BY INPRODUCTOS.Descripcion ');

 }
      ADOQueryProd.Open;

      ADOQueryServ.Close;
      ADOQueryServ.SQL.Clear;
      ADOQueryServ.SQL.Add(' SELECT TABLA,CODIGO,SAServicios.DESCRIPCION,Capitulo,Tarifa,año,Porcentaje,Valor_Pesos, INIVA.Valor as Valor ');
      ADOQueryServ.SQL.Add(' FROM  SAServicios ');
      ADOQueryServ.SQL.Add(' inner join SACapituloCups on SAServicios.Capitulo = SACapituloCups.Cod_Capitulo');
      ADOQueryServ.SQL.Add(' inner join FAConvenios on SAServicios.Codigo = FAConvenios.CD_PST ');
      ADOQueryServ.SQL.Add(' inner join CONTTerce on FAConvenios.Aseguradora = CONTTerce.Numero_Documento+CONTTerce.Sucursal');
      ADOQueryServ.SQL.Add(' left outer join INIVA on SACapituloCups.Codigo_IVA = INIVA.Codigo_IVA ');
      ADOQueryServ.SQL.Add(' WHERE FAConvenios.TP_PST = '+chr(39)+'S'+chr(39)+' AND ');
      ADOQueryServ.SQL.Add('      SAServicios.Estado = '+chr(39)+'A'+chr(39)+' AND ');
      ADOQueryServ.SQL.Add('      FAConvenios.Aseguradora = '+chr(39)+DatamoduloAdmision.ADOQueryConvenios.FieldValues['Aseguradora']+chr(39)+' AND ');
      ADOQueryServ.SQL.Add('      FAConvenios.No_Contrato = '+chr(39)+DatamoduloAdmision.ADOQueryConvenios.FieldValues['No_Contrato']+chr(39)+' ');

      if ADOParamCargo.FieldValues['Control_ProdxArea'] = 'S' then
      Begin
        ADOQueryServ.SQL.Add('   AND   SAServicios.Codigo IN (SELECT CD_PST ');
        ADOQueryServ.SQL.Add('                             FROM SACargosxArea ');
        ADOQueryServ.SQL.Add('                             WHERE Tp_PST = '+chr(39)+'S'+chr(39)+' ');
        ADOQueryServ.SQL.Add('                               AND Empresa =  '+chr(39)+Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja']+chr(39)+' ');
        ADOQueryServ.SQL.Add('                               AND Area =  '+chr(39)+Datamodule1.ADOQuery1.FieldValues['Area_Trabaja']+chr(39)+') ');
      End;
      if ADOParamCargo.FieldValues['Valida_Homologacion'] = 'S' then
      Begin
        ADOQueryServ.SQL.Add('      AND SAServicios.TABLA+SAServicios.CODIGO IN (SELECT SAHomologacion.Tabla1 + SAHomologacion.Codigo1 ');
        ADOQueryServ.SQL.Add('					FROM SAHomologacion,SATarifarios,SATarifasDetalle ');
        ADOQueryServ.SQL.Add('					WHERE SAHomologacion.Tabla2 = SATarifarios.Tabla ');
        ADOQueryServ.SQL.Add('					AND SAHomologacion.Codigo2 = SATarifarios.Codigo ');
        ADOQueryServ.SQL.Add('					AND SATarifarios.Tabla = SATarifasDetalle.Tabla   ');
        ADOQueryServ.SQL.Add('					AND SATarifarios.Codigo = SATarifasDetalle.Codigo ');
        ADOQueryServ.SQL.Add('					AND SATarifarios.TABLA = FAConvenios.Tarifa  ');
        ADOQueryServ.SQL.Add('					AND SATarifasDetalle.Año = FAConvenios.Año) ');
      End;
      ADOQueryServ.SQL.Add(' ORDER BY SAServicios.Codigo ');
  //    Código viejo no compatible con SQL server 2012
  {
        ADOQueryServ.SQL.Add(' SELECT TABLA,CODIGO,SAServicios.DESCRIPCION,Capitulo,Tarifa,año,Porcentaje,Valor_Pesos, INIVA.Valor as Valor ');
      ADOQueryServ.SQL.Add(' FROM  SAServicios,SACapituloCups,INIVA,FAConvenios,CONTTerce ');
      ADOQueryServ.SQL.Add(' WHERE SAServicios.Capitulo = SACapituloCups.Cod_Capitulo AND ');
      ADOQueryServ.SQL.Add('      SAServicios.Codigo = FAConvenios.CD_PST AND ');
      ADOQueryServ.SQL.Add('      SACapituloCups.Codigo_IVA * = INIVA.Codigo_IVA AND ');
      ADOQueryServ.SQL.Add('      FAConvenios.Aseguradora = (CONTTerce.Numero_Documento+CONTTerce.Sucursal) AND ');
      ADOQueryServ.SQL.Add('      FAConvenios.TP_PST = '+chr(39)+'S'+chr(39)+' AND ');
      ADOQueryServ.SQL.Add('      SAServicios.Estado = '+chr(39)+'A'+chr(39)+' AND ');
      ADOQueryServ.SQL.Add('      FAConvenios.Aseguradora = '+chr(39)+DatamoduloAdmision.ADOQueryConvenios.FieldValues['Aseguradora']+chr(39)+' AND ');
      ADOQueryServ.SQL.Add('      FAConvenios.No_Contrato = '+chr(39)+DatamoduloAdmision.ADOQueryConvenios.FieldValues['No_Contrato']+chr(39)+' ');

      if ADOParamCargo.FieldValues['Control_ProdxArea'] = 'S' then
      Begin
        ADOQueryServ.SQL.Add('      SAServicios.Codigo IN (SELECT CD_PST ');
        ADOQueryServ.SQL.Add('                             FROM SACargosxArea ');
        ADOQueryServ.SQL.Add('                             WHERE Tp_PST = '+chr(39)+'S'+chr(39)+' ');
        ADOQueryServ.SQL.Add('                               AND Empresa =  '+chr(39)+Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja']+chr(39)+' ');
        ADOQueryServ.SQL.Add('                               AND Area =  '+chr(39)+Datamodule1.ADOQuery1.FieldValues['Area_Trabaja']+chr(39)+') ');
      End;
      if ADOParamCargo.FieldValues['Valida_Homologacion'] = 'S' then
      Begin
        ADOQueryServ.SQL.Add('      AND SAServicios.TABLA+SAServicios.CODIGO IN (SELECT SAHomologacion.Tabla1 + SAHomologacion.Codigo1 ');
        ADOQueryServ.SQL.Add('					FROM SAHomologacion,SATarifarios,SATarifasDetalle ');
        ADOQueryServ.SQL.Add('					WHERE SAHomologacion.Tabla2 = SATarifarios.Tabla ');
        ADOQueryServ.SQL.Add('					AND SAHomologacion.Codigo2 = SATarifarios.Codigo ');
        ADOQueryServ.SQL.Add('					AND SATarifarios.Tabla = SATarifasDetalle.Tabla   ');
        ADOQueryServ.SQL.Add('					AND SATarifarios.Codigo = SATarifasDetalle.Codigo ');
        ADOQueryServ.SQL.Add('					AND SATarifarios.TABLA = FAConvenios.Tarifa  ');
        ADOQueryServ.SQL.Add('					AND SATarifasDetalle.Año = FAConvenios.Año) ');
      End;
      ADOQueryServ.SQL.Add(' ORDER BY SAServicios.Codigo ');

    }
      ADOQueryServ.Open;
    End;
  End
  Else If PageControl1.ActivePageIndex = 0 Then
  Begin
    IF StringGrid1.RowCount > 2 Then TabSheet1.Enabled := False;
  End
  Else If PageControl1.ActivePageIndex = 2 Then
  Begin
    MaskeditValor.SetFocus;
  End;
end;

procedure TFacturaDirectaxPac.DBLookupComboBox11Exit(Sender: TObject);
begin
  ADOQueryPacientes.Close;
  ADOQueryPacientes.SQL.Clear;
  ADOQueryPacientes.SQL.Add(' SELECT  DISTINCT SAPacientes.Primer_Apellido+'+chr(39)+' '+chr(39)+'+SAPacientes.Segundo_Apellido+'+chr(39)+' '+chr(39)+'+SAPacientes.Primer_Nombre+'+chr(39)+' '+chr(39)+'+SAPacientes.Segundo_Nombre as Nom,');
  ADOQueryPacientes.SQL.Add(' SAPacientes.Primer_Apellido,SAPacientes.Segundo_Apellido,SAPacientes.Primer_Nombre, SAPacientes.Segundo_Nombre, FEC_NACIMINETO,');
  ADOQueryPacientes.SQL.Add(' SAPacientes.nr_ident_usuar+SAPacientes.tp_ident_usuar as key2, CONTTerce.Numero_Documento as Num_Documento,');
  ADOQueryPacientes.SQL.Add(' SAPacientes.NR_IDENT_USUAR, SAPacientes.TP_IDENT_USUAR, CONTTerce.Primer_Apellido+CONTTerce.Primer_Nombre as NOM_EPS,');
  ADOQueryPacientes.SQL.Add(' SAPacientes.ASEGURADORA, DIR_CASA_PACIEN, Direccion as DIR_EPS, Telefono as TEL_EPS, TEL_CASA_PACIEN, EMP_TRABAJO_PAC,');
  ADOQueryPacientes.SQL.Add(' DIR_TRABAJO_PAC, TEL_TRABAJO_PAC');
  ADOQueryPacientes.SQL.Add(' FROM SAPacientes , SAAdmisiones,CONTTerce');
  ADOQueryPacientes.SQL.Add(' WHERE SAAdmisiones.Aseguradora = (CONTTerce.Numero_Documento+CONTTerce.Sucursal) AND');
  ADOQueryPacientes.SQL.Add('       SAAdmisiones.TP_IDENT_USUAR = SAPacientes.TP_IDENT_USUAR AND');
  ADOQueryPacientes.SQL.Add('       SAAdmisiones.Aseguradora like '+chr(39)+ADOQueryAseguradora.FieldValues['codterce']+chr(39)+' AND');
  ADOQueryPacientes.SQL.Add('       SAAdmisiones.NR_IDENT_USUAR = SAPacientes.NR_IDENT_USUAR');
  ADOQueryPacientes.open;
  IF ADOQueryPacientes.RecordCount > 0 Then
  Begin
    DatamoduloAdmision.ADOQueryConvenios.Filtered := False;
    DatamoduloAdmision.ADOQueryConvenios.Filter   := 'Aseguradora = '+chr(39)+ADOQueryAseguradora.FieldValues['codterce']+chr(39);
    DatamoduloAdmision.ADOQueryConvenios.Filtered := True;
    IF DatamoduloAdmision.ADOQueryConvenios.RecordCount > 0 Then
    Begin
      DBlookupComboBox10.KeyValue:=ADOqueryPacientes.FieldValues['NR_IDENT_USUAR']+ADOqueryPacientes.FieldValues['TP_IDENT_USUAR'];
      ListBox2.Clear;

      //IF ADOQueryAseguradora.FieldValues['Tipo_Tercero'] <> null Then
      //Begin
        //ADOQueryConceptos.Close;
        //ADOQueryConceptos.Parameters.ParamValues['TTerce'] := ADOQueryAseguradora.FieldValues['Tipo_Tercero'];
        ADOQueryConceptos.Open;
        IF ADOQueryConceptos.RecordCount <> 0 Then GroupBox7.Visible := True
        ELSE GroupBox7.Visible := False;
      //End
      //Else GroupBox7.Visible := False;
    End
    Else Showmessage('ERROR: Esta Empresa no tiene Convenios.');
  End
  Else Showmessage('ERROR: Esta Empresa no tiene Admisiones Asignadas.');
end;

procedure TFacturaDirectaxPac.DBLookupComboBox19Exit(Sender: TObject);
begin
  DBLookupComboBox5.KeyValue := ADOQVendedor.FieldValues['Numero_Documento'];
end;

procedure TFacturaDirectaxPac.DataSource8DataChange(Sender: TObject;
  Field: TField);
begin
  DBLookupComboBox20.KeyValue := '';
end;

procedure TFacturaDirectaxPac.DBLookupComboBox20Exit(Sender: TObject);
begin
  IF ADOQueryCargos.State <> dsInactive	 Then
  Begin
    ADOQueryCargos.Filtered := False;
    ADOQueryCargos.Filter   := 'No_Contrato = ' + chr(39)+ DataModuloAdmision.ADOQueryConvenios.FieldValues['No_Contrato'] + chr(39);
    ADOQueryCargos.Filtered := True;
  End
  else begin
    PageControl2.ActivePageIndex := 1;
    PageControl2.Pages[0].Enabled := false;
  end;
end;

procedure TFacturaDirectaxPac.MaskEdit6Exit(Sender: TObject);
begin
  if MaskEdit6.Text = '' then
    MaskEdit6.Text  := '0';

  MaskEdit10.Text   := MaskEdit6.Text;
  MaskEditVP.text   := ntsfbg(stf(MaskEdit11.Text) - stf(MaskEdit10.Text)); // + stf(MaskEdit9.Text)
end;


procedure TFacturaDirectaxPac.LimpiaGrilla(Grilla : TStringGrid; Col : Integer);
var i, e : Integer;
begin
  i := 1;
  while i < Grilla.RowCount do
    begin
      e := 0;
      while e < Col do
        begin
          Grilla.Cells[e,i] := '';
          inc(e);
        end;
      inc(i);
    end;
 Grilla.RowCount  := 2;
end;

procedure TFacturaDirectaxPac.DataSource9DataChange(Sender: TObject;
  Field: TField);
begin
  IF ADOQueryCargos.FieldValues['Duracion'] = 'F' Then
  Begin
    BitBtn10.Visible := False;
  End
  Else BitBtn10.Visible := True;
end;

procedure TFacturaDirectaxPac.MaskEdit6Change(Sender: TObject);
begin
  if MaskEdit6.Text <> '0' Then CheckBox1.Enabled := True
  Else CheckBox1.Enabled := False;
end;

procedure TFacturaDirectaxPac.DateTimePicker1Change(Sender: TObject);
var periodo:string;
begin
  Periodo := inttostr(yearof(DateTimePicker1.Date));
  if length(inttostr(monthof(DateTimePicker1.Date))) = 1 Then Periodo:=Periodo+'0'+ inttostr(monthof(DateTimePicker1.Date))
  else Periodo:=Periodo+ inttostr(monthof(DateTimePicker1.Date));

  ADOQCierres.Close;
  ADOQCierres.Parameters.ParamValues['Per'] := Periodo;
  ADOQCierres.Open;
  If ADOQCierres.FieldValues['Estado'] <> 'A' Then
  Begin
    Showmessage('ERROR: El periodo contable esta cerrado.');
    DateTimePicker1.DateTime := Now;
  End;
end;

end.

