unit FCargos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, DB, ADODB, Mask,
  ComCtrls, Buttons, Menus,StrUtils,Libreria_Prateinco, JvExStdCtrls, JvEdit,
  JvExControls, JvSwitch;

type
  TFCapturaCargo = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DataSource3: TDataSource;
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    DataSource1: TDataSource;
    Label5: TLabel;
    ADOQuery1: TADOQuery;
    GroupBox4: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label1: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    Edit2: TEdit;
    DataSource4: TDataSource;
    Label13: TLabel;
    DataSource2: TDataSource;
    ADOQueryCrucServHomo: TADOQuery;
    ADOQueryConvenios: TADOQuery;
    PopupMenu2: TPopupMenu;
    EliminarRegistro1: TMenuItem;
    ADOQueryProd: TADOQuery;
    DBLookupComboBox10: TDBLookupComboBox;
    Label17: TLabel;
    DBEdit4: TDBEdit;
    Label18: TLabel;
    DBLookupComboBox11: TDBLookupComboBox;
    QrytipoAdmision: TADOQuery;
    QrytipoAdmisionCD_TIPO_ADMISION: TStringField;
    QrytipoAdmisionDESCRIPCION: TStringField;
    QrytipoAdmisionCD_PROD_CARGO: TStringField;
    DataSource7: TDataSource;
    DataSourceSVencim: TDataSource;
    ADOQuerySVencim: TADOQuery;
    DataSourceEncAgrupa: TDataSource;
    ADOQueryEncAgrupa: TADOQuery;
    ADOQueryDetAgrupa: TADOQuery;
    CambiarlaCantidad1: TMenuItem;
    ADOQueryUlt: TADOQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    StringGrid1: TStringGrid;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Shape1: TShape;
    Label24: TLabel;
    Label25: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    ComboBox1: TComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox9: TDBLookupComboBox;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBLookupComboBox12: TDBLookupComboBox;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    DBLookupComboBox13: TDBLookupComboBox;
    DBEdit5: TDBEdit;
    MaskEdit4: TMaskEdit;
    DBEdit6: TDBEdit;
    DBGrid1: TDBGrid;
    DataSource5: TDataSource;
    ADOQuery4: TADOQuery;
    Label6: TLabel;
    DBEdit11: TDBEdit;
    Label22: TLabel;
    MaskEdit12: TMaskEdit;
    ChkIncluir: TCheckBox;
    Label26: TLabel;
    MaskEdit5: TMaskEdit;
    QryG: TADOQuery;
    QryInv: TADOQuery;
    BitBtn8: TBitBtn;
    Label19: TLabel;
    MaskEdit6: TMaskEdit;
    DataSource6: TDataSource;
    ADOTable4: TADOTable;
    Label28: TLabel;
    BitBtn9: TBitBtn;
    ADOQtmp: TADOQuery;
    ADOQtmp2: TADOQuery;
    ADOTable1: TADOTable;
    BitBtn10: TBitBtn;
    DBEdit12: TDBEdit;
    Label27: TLabel;
    ADOQueryServ: TADOQuery;
    ADOParamCargo: TADOTable;
    ADOTable2: TADOTable;
    EditEdad: TJvEdit;
    PopupMenu: TPopupMenu;
    EliminarCargo1: TMenuItem;
    Descargos1: TMenuItem;
    pnl: TPanel;
    Sw1: TJvSwitch;
    Sw2: TJvSwitch;
    Sw3: TJvSwitch;
    Sw4: TJvSwitch;
    Sw5: TJvSwitch;
    procedure DataSource3DataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MaskEdit2Change(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox3Exit(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure DataSource4DataChange(Sender: TObject; Field: TField);
    procedure ComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBox8Exit(Sender: TObject);
    procedure DBLookupComboBox9Exit(Sender: TObject);
    procedure MaskEdit1Click(Sender: TObject);
    procedure EliminarRegistro1Click(Sender: TObject);
    procedure PopupMenu2Popup(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBox10Exit(Sender: TObject);
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
    procedure BitBtn8Click(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure StringGrid1Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBLookupComboBox11Exit(Sender: TObject);
    procedure DBLookupComboBox11Enter(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure EliminarCargo1Click(Sender: TObject);
    procedure Descargos1Click(Sender: TObject);
  private
        Costo    : Real;
        CostoP   : Real;
        Bloqueo  : Boolean;
        Capitulo : Integer;
        AfecInv  : string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCapturaCargo: TFCapturaCargo;
  modifica:boolean;
  TrInven:String;

implementation

uses UDataModule1, MAIN, frmproductos,
  FrmCalculoTarifa, fKardex, ActLote, frmAnulacion, FProdxArea,
  FrmAsignaHomo, CapturaBasica, FCrearConvenio, FElimSolicitud,
  FImpBoleta;


{$R *.dfm}

procedure TFCapturaCargo.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  if ADOQuery1.FieldValues['Fec_Nacimineto'] <> null then
  Begin
    EditEdad.Text       := CalculaEdadCompleta(strtodate(ADOQuery1.FieldValues['Fec_Nacimineto']));
  End
  else
  Begin
    EditEdad.Text       := '';
  End;
  DBLookupComboBox11.KeyValue:=ADOQuery1.FieldValues['TP_Admision'];
end;

procedure TFCapturaCargo.DataSource3DataChange(Sender: TObject; Field: TField);
begin
  if DBLookupComboBox3.Focused then DBLookupComboBox4.KeyValue := DBLookupComboBox3.KeyValue
  else DBLookupComboBox3.KeyValue := DBLookupComboBox4.KeyValue;
end;

procedure TFCapturaCargo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If StringGrid1.RowCount > 2 Then
  BEgin
     if MessageDlg('Esta seguro de Salir?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
      Action :=  caFree;
     End;
  End;
end;

procedure TFCapturaCargo.MaskEdit2Change(Sender: TObject);
begin
  if maskedit1.Text = '' then maskedit1.Text := '0';
  if maskedit2.Text = '' then maskedit2.Text := '0';
  if maskedit12.Text = '' then maskedit12.Text := '0';
  IF maskedit5.text <> '' Then
    maskedit12.Text:= FloatToStr((strtofloat(maskedit2.text)*strtofloat(maskedit5.text))/100);
  maskedit3.Text:=floattostr(strtofloat(maskedit1.Text)*strtofloat(maskedit12.text));
end;

procedure TFCapturaCargo.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  key:=validanumero(key);
end;

procedure TFCapturaCargo.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  key:=validanumero(key);
end;

procedure TFCapturaCargo.DBLookupComboBox3Exit(Sender: TObject);
var CosProm : Real;
begin
  MaskEdit2.Text:='0';
  if ADOQueryProd.State = dsInactive then exit;

  IF ADOQueryProd.RecordCount <> 0 Then Begin
    IF (ADOQueryProd.FieldValues['Precio_Venta_Pesos'] = NULL) Then MaskEdit2.Text:='0'
    ELSE MaskEdit2.Text:=ADOQueryProd.FieldValues['Precio_Venta_Pesos'];

    if maskedit1.Text = '' then maskedit1.Text := '0';
    if maskedit2.Text = '' then maskedit2.Text := '0';
    IF maskedit5.text <> '' Then
      maskedit12.Text:= FloatToStr((strtofloat(maskedit2.text)*strtofloat(maskedit5.text))/100);

    maskedit3.Text:=floattostr(strtofloat(maskedit1.Text)*strtofloat(maskedit12.text));

    IF DBLookupComboBox3.text <> '' Then Begin
      Label28.Caption := Datamodule1.ADOQuery1.FieldValues['Almacen_Cargo'];
      ADOQuerySVencim.Close;
      ADOQuerySVencim.Parameters.ParamValues['Alma']:=Datamodule1.ADOQuery1.FieldValues['Almacen_Cargo'];
      ADOQuerySVencim.Parameters.ParamValues['Produ']:=DBLookupComboBox3.text;
      ADOQuerySVencim.Open;
      If ADOQuerySVencim.RecordCount = 0 Then Showmessage('Advertencia: Este producto no tiene existencias.');
      DBLookupComboBox12.KeyValue:=ADOQuerySVencim.FieldValues['Llave'];
    End;

    //ed
    if (ADOQueryProd.FieldValues['COSTO_PROM_PESOS'] = NULL) then
       Costo:=0
    else
      begin
        CostoP   := ADOQueryProd.Fields.FieldByName('COSTO_PROM_PESOS').AsFloat;
        CosProm  := (CostoP * ADOQueryProd.FieldValues['Porcentaje']) / 100;
        Costo    := CosProm;
      end;
      MaskEdit6.Text := floattostr(Costo);
    //fin ed
    MaskEdit5.Text := FloatToStr(ADOQueryProd.FieldValues['Porcentaje']);
  End;
 MaskEdit1.SetFocus;
end;

procedure TFCapturaCargo.ComboBox1Change(Sender: TObject);
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

    DBlookupComboBox12.Visible:=True;
    Label21.Visible:=True;
    Label9.Visible :=True;
    Label10.Visible:=True;
    Label11.Visible:=True;
    MaskEdit1.Visible:=True;
    MaskEdit2.Visible:=True;
    MaskEdit3.Visible:=True;
    Label19.Visible:=True;
    MaskEdit6.Visible:=True;
    //BitBtn5.Visible:=False;

    Label23.Visible:=False;
    DBlookupComboBox13.Visible:=False;
    DBEdit5.Visible:=False;
    Label24.Visible:=False;
    MaskEdit4.Visible:=False;
    Label25.Visible:=True;
    DbEdit6.Visible:=True;
    DbEdit12.Visible:=False;
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
    BitBtn6.Visible:=True;
    BitBtn7.Visible:=True;

    DBlookupComboBox12.Visible:=False;
    Label21.Visible:=False;
    Label9.Visible :=True;
    Label10.Visible:=True;
    Label11.Visible:=True;
    MaskEdit1.Visible:=True;
    MaskEdit2.Visible:=True;
    MaskEdit3.Visible:=True;
    Label19.Visible:=True;
    MaskEdit6.Visible:=True;
    //BitBtn5.Visible:=True;

    Label23.Visible:=False;
    DBlookupComboBox13.Visible:=False;
    DBEdit5.Visible:=False;
    Label24.Visible:=False;
    MaskEdit4.Visible:=False;
    Label25.Visible:=False;
    DBEdit6.Visible:=False;
    DbEdit12.Visible:=False;
  End
  Else If Combobox1.Text='T' Then
  Begin
    DBlookupComboBox3.Visible:=False;
    DBlookupComboBox4.Visible:=False;
    DBlookupComboBox2.Visible:=False;
    DBlookupComboBox6.Visible:=False;
    DBlookupComboBox9.Visible:=False;
    Label14.Visible:=False;
    Label15.Visible:=False;
    Label16.Visible:=False;
    BitBtn6.Visible:=True;
    BitBtn7.Visible:=True;

    DBlookupComboBox12.Visible:=True;
    Label21.Visible:=True;
    Label9.Visible :=True;
    Label10.Visible:=True;
    Label11.Visible:=True;
    MaskEdit1.Visible:=True;
    MaskEdit2.Visible:=True;
    MaskEdit3.Visible:=True;
    Label19.Visible:=True;
    MaskEdit6.Visible:=True;
    //BitBtn5.Visible:=True;

    Label23.Visible:=False;
    DBlookupComboBox13.Visible:=False;
    DBEdit5.Visible:=False;
    Label24.Visible:=False;
    MaskEdit4.Visible:=False;
    Label25.Visible:=True;
    DBEdit6.Visible:=True;

  End
  Else If Combobox1.Text='PAQUETE' Then
  Begin
    DBlookupComboBox3.Visible:=False;
    DBlookupComboBox4.Visible:=False;
    DBlookupComboBox2.Visible:=False;
    DBlookupComboBox6.Visible:=False;
    DBlookupComboBox9.Visible:=False;
    Label14.Visible:=False;
    Label15.Visible:=False;
    Label16.Visible:=False;
    BitBtn6.Visible:=False;
    BitBtn7.Visible:=False;

    DBlookupComboBox12.Visible:=False;
    Label21.Visible:=False;
    Label9.Visible :=False;
    Label10.Visible:=False;
    Label11.Visible:=False;
    MaskEdit1.Visible:=False;
    MaskEdit2.Visible:=False;
    MaskEdit3.Visible:=False;
    Label19.Visible:=False;
    MaskEdit6.Visible:=False;
    //BitBtn5.Visible:=False;

    Label23.Visible:=True;
    DBlookupComboBox13.Visible:=True;
    DBEdit5.Visible:=True;
    Label24.Visible:=True;
    MaskEdit4.Visible:=True;
    Label25.Visible:=False;
    DBEdit6.Visible:=False;
    DbEdit12.Visible:=True;
  End;
end;

procedure TFCapturaCargo.DBLookupComboBox2Exit(Sender: TObject);
var valor, total, PorcRes : Real;
begin
  MaskEdit2.Text:='0';

  if AdoqueryServ.FieldValues['Valor_Pesos'] = 0 then  // En caso de tener un valor de la tabla de servicios no pide tarifa
  Begin
    DBlookupComboBox9.Visible:=True;
    Label14.Visible:=True;
    Label15.Visible:=True;
    Label16.Visible:=True;

    Capitulo  := 0;
    IF (DBLookupComboBox2.Text <> '') Then Begin
      ADOQueryCrucServHomo.Close;
      ADOQueryCrucServHomo.Parameters.ParamValues['tbl']:='CUP';
      ADOQueryCrucServHomo.Parameters.ParamValues['Cod']:=DBLookupCombobox2.Text;
      ADOQueryCrucServHomo.Open;

      Capitulo       := ADOQueryServ.Fields.FieldByName('CAPITULO').AsInteger;
      Label15.Caption:= ADOQueryServ.FieldValues['Tarifa'];
      Label16.Caption:= ADOQueryServ.FieldValues['Año'];
      ADOQueryCrucServHomo.Filter:='tb = '+chr(39)+ADOQueryServ.FieldValues['Tarifa']+chr(39)+' AND Año ='+chr(39)+ADOQueryServ.FieldValues['Año']+chr(39);
      ADOQueryCrucServHomo.Filtered:=True;

      DBlookupComboBox9.KeyValue:=ADOQueryCrucServHomo.FieldValues['Cod'];

      IF ADOQueryCrucServHomo.RecordCount>=1 Then Begin
        if Capitulo <> 1 then
          begin
            IF ADOqueryCrucServHomo.FieldValues['Valor'] <> NULL Then
              begin
                if ADOQueryServ.Fields.FieldByName('Porcentaje').AsFloat <> 100 then
                  begin
                    if ADOQueryServ.Fields.FieldByName('Porcentaje').AsFloat > 100 then
                      PorcRes := ADOQueryServ.Fields.FieldByName('Porcentaje').AsFloat - 100
                    else
                      PorcRes := 100 - ADOQueryServ.Fields.FieldByName('Porcentaje').AsFloat;

                    valor := (ADOqueryCrucServHomo.Fields.FieldByName('valor').AsFloat * PorcRes) / 100;

                    if ADOQueryServ.FieldValues['Porcentaje'] > 100 then
                      total := ADOqueryCrucServHomo.Fields.FieldByName('valor').AsFloat + valor
                    else
                      total := ADOqueryCrucServHomo.Fields.FieldByName('valor').AsFloat - valor;
                  end
                else
                  begin
                    total := ADOqueryCrucServHomo.Fields.FieldByName('valor').AsFloat;
                  end;
                Maskedit2.Text:= FloatToStr(ADOqueryCrucServHomo.Fields.FieldByName('valor').AsFloat); //FloatToStr(total);  //floattostr(ADOqueryCrucServHomo.FieldValues['Valor'])
              end;
          end
        else
          Maskedit2.Text:= '0';
      End;
      IF ADOQueryCrucServHomo.RecordCount>1 Then DBLookupComboBox9.Enabled:=True
      ELSE IF ADOQueryCrucServHomo.RecordCount>1 Then DBLookupComboBox9.Enabled:=False;
      if maskedit1.Text = '' then maskedit1.Text := '0';
      if maskedit2.Text = '' then maskedit2.Text := '0';
      IF maskedit5.text <> '' Then
        maskedit12.Text:= FloatToStr((strtofloat(maskedit2.text)*strtofloat(maskedit5.text))/100);

      MaskEdit5.Text := FloatToStr(ADOQueryServ.FieldValues['Porcentaje']);
      IF maskedit12.text <> '' Then maskedit3.Text := floattostr(strtofloat(maskedit1.Text)*strtofloat(maskedit12.text));

      //Para el caso de ser procedimientos quirurgicos muestra los campos del CUPS discriminados
      {if Capitulo = 1 then BitBtn5.Visible := True
      else}
      BitBtn5.Visible := True;
    End;
  End
  Else Begin
    DBlookupComboBox9.Visible:=False;
    Label14.Visible:=False;
    Label15.Visible:=False;
    Label16.Visible:=False;

    MaskEdit2.Text := AdoqueryServ.FieldValues['Valor_Pesos'];
    if maskedit1.Text = '' then maskedit1.Text := '0';
    if maskedit2.Text = '' then maskedit2.Text := '0';
    IF maskedit5.text <> '' Then
      maskedit12.Text:= FloatToStr((strtofloat(maskedit2.text)*strtofloat(maskedit5.text))/100);

    MaskEdit5.Text := FloatToStr(ADOQueryServ.FieldValues['Porcentaje']);
    IF maskedit12.text <> '' Then maskedit3.Text := floattostr(strtofloat(maskedit1.Text)*strtofloat(maskedit12.text));

  End;
end;

procedure TFCapturaCargo.DataSource4DataChange(Sender: TObject; Field: TField);
begin
  if DBLookupComboBox2.Focused then DBLookupComboBox6.KeyValue := DBLookupComboBox2.KeyValue
  else DBLookupComboBox2.KeyValue := DBLookupComboBox6.KeyValue;
end;

procedure TFCapturaCargo.ComboBox1Exit(Sender: TObject);
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
  Else If Combobox1.Text='PAQUETE' Then Begin
    ADOQueryEncAgrupa.Close;
    ADOQueryEncAgrupa.Parameters.ParamValues['ase']  := DBEdit4.Text;
    ADOQueryEncAgrupa.Parameters.ParamValues['cont'] := DBEdit11.Text;
    ADOQueryEncAgrupa.Open;
    //IF NOT ADOQueryEncAgrupa.Locate('Codigo', 'Sin Agrupacion', [loPartialKey]) Then
    //Begin
    //  ADOQueryEncAgrupa.Append;
    //  ADOQueryEncAgrupa.FieldValues['Codigo']:='Sin Agrupacion';
    //  ADOQueryEncAgrupa.FieldValues['Valor']:= '0';
    //  ADOQueryEncAgrupa.Post;
    //End;
    DBLookupComboBox13.KeyValue:=ADOQueryEncAgrupa.FieldValues['Codigo'];
  End;
end;

procedure TFCapturaCargo.DBLookupComboBox8Exit(Sender: TObject);
begin
  Maskedit1.SetFocus;
end;

procedure TFCapturaCargo.DBLookupComboBox9Exit(Sender: TObject);
var valor, total, PorcRes : Real;
begin
  IF DBLookupComboBox9.text <> '' Then
  Begin
    if Capitulo <> 1 then
      begin
        IF ADOqueryCrucServHomo.FieldValues['Valor'] <> NULL Then
          begin
            if ADOQueryServ.Fields.FieldByName('Porcentaje').AsFloat <> 100 then
              begin
                if ADOQueryServ.Fields.FieldByName('Porcentaje').AsFloat > 100 then
                  PorcRes := ADOQueryServ.Fields.FieldByName('Porcentaje').AsFloat - 100
                else
                  PorcRes := 100 - ADOQueryServ.Fields.FieldByName('Porcentaje').AsFloat;

                valor := (ADOqueryCrucServHomo.Fields.FieldByName('valor').AsFloat * PorcRes) / 100;

                if ADOQueryServ.Fields.FieldByName('Porcentaje').AsFloat > 100 then
                  total := ADOqueryCrucServHomo.Fields.FieldByName('valor').AsFloat + valor
                else
                  total := ADOqueryCrucServHomo.Fields.FieldByName('valor').AsFloat - valor;
              end
            else
              begin
                total := ADOqueryCrucServHomo.Fields.FieldByName('valor').AsFloat;
              end;

            Maskedit2.Text:= floattostr(ADOqueryCrucServHomo.Fields.FieldByName('valor').AsFloat);   //floattostr(ADOqueryCrucServHomo.FieldValues['Valor'])
        end
         else
           Maskedit2.Text := '0';
      end;
  End;
  Maskedit1.SetFocus;
end;

procedure TFCapturaCargo.Descargos1Click(Sender: TObject);
begin
  {if ADOQuery4.RecordCount > 0 then
  Begin
    Descargos := tDescargos.create(application);
    try
       Descargos.DBLookupComboBox1.KeyValue := ADOQuery4.FieldValues['No_Admision'];
       Descargos.DBLookupComboBox7.KeyValue := ADOQuery4.FieldValues['No_Cargo']+ADOQuery4.FieldValues['Sec_Cargo'];
       Descargos.DBLookupComboBox1.Enabled := False;
       Datamodule1.MuestraconAcceso(Descargos);
     except
       Descargos.free;
    end;
  End;}
end;

procedure TFCapturaCargo.MaskEdit1Click(Sender: TObject);
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

procedure TFCapturaCargo.EliminarCargo1Click(Sender: TObject);
begin
  if ADOQuery4.RecordCount > 0 then
  Begin
    EliminaCargo := TEliminaCargo.create(application);
    try
     EliminaCargo.DBLookupComboBox1.KeyValue := ADOQuery4.FieldValues['No_Cargo'];
     EliminaCargo.DBLookupComboBox1.Enabled  := False;
     Datamodule1.MuestraconAcceso(EliminaCargo);
    except
      EliminaCargo.free;
    end;
  End;
end;

procedure TFCapturaCargo.EliminarRegistro1Click(Sender: TObject);
var  RowNumber  : Integer;
begin
   GridDelRow (RowNumber, StringGrid1);
end;

//////////////* PopUpMenu sobe el puntero *///////////////////////////
procedure TFCapturaCargo.PageControl1Change(Sender: TObject);
begin
  ADOQuery4.Close;
  ADOQuery4.Parameters.ParamValues['Admin'] := DBlookupComboBox1.KeyValue;
  ADOQuery4.Open;
end;

procedure TFCapturaCargo.PopupMenu2Popup(Sender: TObject);
var pt : Tpoint;
begin
    SetForegroundWindow(Handle);
    GetCursorPos(pt);
    PopupMenu2.Popup(pt.x,pt.y);
end;

procedure TFCapturaCargo.DBLookupComboBox1Exit(Sender: TObject);
begin
  IF DBlookupComboBox1.Text <> '' Then
  Begin
    DBlookupComboBox10.KeyValue:=ADOquery1.FieldValues['NR_IDENT_USUAR']+ADOquery1.FieldValues['TP_IDENT_USUAR']+ADOquery1.FieldValues['NO_ADMISION'];

    ADOQueryProd.Close;
    ADOQueryProd.SQL.Clear;
    ADOQueryProd.SQL.Add(' SELECT * ');
    ADOQueryProd.SQL.Add(' FROM INProductos ');
    ADOQueryProd.SQL.Add(' inner join INGrupo on INProductos.cd_grupo = INGrupo.Codigo_Grupo ');
    ADOQueryProd.SQL.Add(' inner join FAConvenios on  INProductos.CD_Producto   = FAConvenios.CD_PST');
    ADOQueryProd.SQL.Add(' inner join CONTTerce on FAConvenios.Aseguradora = CONTTerce.Numero_Documento+CONTTerce.Sucursal ');
    ADOQueryProd.SQL.Add(' left outer join INIVA  on INGrupo.Codigo_IVA   = INIVA.Codigo_IVA ');
    ADOQueryProd.SQL.Add(' WHERE FAConvenios.TP_PST = '+chr(39)+'P'+chr(39)+' AND ');
    ADOQueryProd.SQL.Add('       FAConvenios.Aseguradora = '+chr(39)+DBEdit4.Text+chr(39)+' AND ');
    ADOQueryProd.SQL.Add('       FAConvenios.No_Contrato = '+chr(39)+DBEdit11.Text+chr(39)+' AND ');
    ADOQueryProd.SQL.Add('       INPRODUCTOS.ESTADO   = '+chr(39)+'A'+chr(39)+'  ');
    if ADOParamCargo.FieldValues['Control_ProdxArea'] = 'S' then
    Begin
      ADOQueryProd.SQL.Add('       AND INProductos.CD_Producto IN (SELECT CD_PST FROM SACargosxArea WHERE Tp_PST = '+chr(39)+'P'+chr(39)+' ');
      ADOQueryProd.SQL.Add('                                AND Empresa = '+chr(39)+Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja']+chr(39)+' ');
      ADOQueryProd.SQL.Add('                                AND Area = '+chr(39)+Datamodule1.ADOQuery1.FieldValues['Area_Trabaja']+chr(39)+') ');
    End;
    ADOQueryProd.SQL.Add(' ORDER BY INPRODUCTOS.Descripcion ');
  //Código viejo no compatible con SQL server 2012
    {
   ADOQueryProd.SQL.Add(' SELECT * ');
    ADOQueryProd.SQL.Add(' FROM INProductos,INGrupo,INIVA,FAConvenios,CONTTerce ');
    ADOQueryProd.SQL.Add(' WHERE INProductos.cd_grupo = INGrupo.Codigo_Grupo AND ');
    ADOQueryProd.SQL.Add('       INGrupo.Codigo_IVA   * = INIVA.Codigo_IVA AND ');
    ADOQueryProd.SQL.Add('       INProductos.CD_Producto   = FAConvenios.CD_PST AND ');
    ADOQueryProd.SQL.Add('       FAConvenios.TP_PST = '+chr(39)+'P'+chr(39)+' AND ');
    ADOQueryProd.SQL.Add('       FAConvenios.Aseguradora = (CONTTerce.Numero_Documento+CONTTerce.Sucursal) AND ');
    ADOQueryProd.SQL.Add('       FAConvenios.Aseguradora = '+chr(39)+DBEdit4.Text+chr(39)+' AND ');
    ADOQueryProd.SQL.Add('       FAConvenios.No_Contrato = '+chr(39)+DBEdit11.Text+chr(39)+' AND ');
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
    ADOQueryServ.SQL.Add(' SELECT TABLA,CODIGO,SAServicios.DESCRIPCION,Capitulo,Tarifa,año,Porcentaje,SAServicios.Valor_Pesos ');
    ADOQueryServ.SQL.Add(' FROM  SAServicios,SACapituloCups,FAConvenios,CONTTerce ');
    ADOQueryServ.SQL.Add(' WHERE SAServicios.Capitulo = SACapituloCups.Cod_Capitulo AND ');
    ADOQueryServ.SQL.Add('      SAServicios.Codigo = FAConvenios.CD_PST AND ');
//    ADOQueryServ.SQL.Add('      SACapituloCups.Codigo_IVA = INIVA.Codigo_IVA AND ');
    ADOQueryServ.SQL.Add('      FAConvenios.Aseguradora = (CONTTerce.Numero_Documento+CONTTerce.Sucursal) AND ');
    ADOQueryServ.SQL.Add('      FAConvenios.TP_PST = '+chr(39)+'S'+chr(39)+' AND ');
    ADOQueryServ.SQL.Add('      SAServicios.Estado = '+chr(39)+'A'+chr(39)+' AND ');
    ADOQueryServ.SQL.Add('      FAConvenios.Aseguradora = '+chr(39)+DBEdit4.Text+chr(39)+' AND ');
    ADOQueryServ.SQL.Add('      FAConvenios.No_Contrato = '+chr(39)+DBEdit11.Text+chr(39)+' ');

    if ADOParamCargo.FieldValues['Control_ProdxArea'] = 'S' then
    Begin
      ADOQueryServ.SQL.Add('      AND  SAServicios.Codigo IN (SELECT CD_PST ');
      ADOQueryServ.SQL.Add('                             FROM SACargosxArea ');
      ADOQueryServ.SQL.Add('                             WHERE Tp_PST = '+chr(39)+'S'+chr(39)+' ');
      ADOQueryServ.SQL.Add('                               AND Empresa =  '+chr(39)+Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja']+chr(39)+' ');
      ADOQueryServ.SQL.Add('                               AND Area =  '+chr(39)+Datamodule1.ADOQuery1.FieldValues['Area_Trabaja']+chr(39)+')  ');
    End;

    if ADOParamCargo.FieldValues['ServiciosxTipoAdmision'] = 'S' then
    Begin
      ADOQueryServ.SQL.Add('      AND  SAServicios.Codigo IN (SELECT Codigo_Servicio ');
      ADOQueryServ.SQL.Add('                             FROM SAServiciosxTpAdm ');
      ADOQueryServ.SQL.Add('                             WHERE Tp_Admision = '+chr(39)+DBLookupCombobox11.keyvalue+chr(39)+')  ');
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
    ADOQueryServ.Open;


    DataSource4.Enabled := true;

    DBlookupComboBox10.KeyValue:=ADOquery1.FieldValues['NR_IDENT_USUAR']+ADOquery1.FieldValues['TP_IDENT_USUAR']+ADOquery1.FieldValues['NO_ADMISION'];
  End;
end;

procedure TFCapturaCargo.DBLookupComboBox10Exit(Sender: TObject);
begin
  DBlookupComboBox1.KeyValue:=ADOquery1.FieldValues['NO_ADMISION'];
end;

procedure TFCapturaCargo.DBLookupComboBox11Enter(Sender: TObject);
begin
  if ADOParamCargo.FieldValues['ServiciosxTipoAdmision'] <> 'S' then
  Begin
    Showmessage('No es posible escoger Tipos de Admisión por que esta deshabilitado por parametros.');
    DBLookupComboBox11.Enabled := False;
  End
  Else Begin
    if StringGrid1.RowCount > 2 then Begin
      Showmessage('Ya se han ingresado Items, Por tanto no se puede cambiar el Tipo de Admisión');
      DBLookupComboBox11.Enabled:= False
    End
    Else DBLookupComboBox11.Enabled := True;
  End;
end;

procedure TFCapturaCargo.DBLookupComboBox11Exit(Sender: TObject);
begin
  {ADOQueryServ.Close;
  ADOQueryServ.SQL.Clear;
  ADOQueryServ.SQL.Add(' SELECT TABLA,CODIGO,SAServicios.DESCRIPCION,Capitulo,Tarifa,año,Porcentaje, SAServicios.Valor_Pesos ');
  ADOQueryServ.SQL.Add(' FROM  SAServicios,SACapituloCups,INIVA,FAConvenios,CONTTerce ');
  ADOQueryServ.SQL.Add(' WHERE SAServicios.Capitulo = SACapituloCups.Cod_Capitulo AND ');
  ADOQueryServ.SQL.Add('      SAServicios.Codigo = FAConvenios.CD_PST AND ');
  ADOQueryServ.SQL.Add('      SACapituloCups.Codigo_IVA = INIVA.Codigo_IVA AND ');
  ADOQueryServ.SQL.Add('      FAConvenios.Aseguradora = (CONTTerce.Numero_Documento+CONTTerce.Sucursal) AND ');
  ADOQueryServ.SQL.Add('      FAConvenios.TP_PST = '+chr(39)+'S'+chr(39)+' AND ');
  ADOQueryServ.SQL.Add('      SAServicios.Estado = '+chr(39)+'A'+chr(39)+' AND ');
  ADOQueryServ.SQL.Add('      FAConvenios.Aseguradora = '+chr(39)+DBEdit4.Text+chr(39)+' AND ');
  ADOQueryServ.SQL.Add('      FAConvenios.No_Contrato = '+chr(39)+DBEdit11.Text+chr(39)+' ');

  if ADOParamCargo.FieldValues['Control_ProdxArea'] = 'S' then
  Begin
    ADOQueryServ.SQL.Add('      AND SAServicios.Codigo IN (SELECT CD_PST ');
    ADOQueryServ.SQL.Add('                             FROM SACargosxArea ');
    ADOQueryServ.SQL.Add('                             WHERE Tp_PST = '+chr(39)+'S'+chr(39)+' ');
    ADOQueryServ.SQL.Add('                               AND Empresa =  '+chr(39)+Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja']+chr(39)+' ');
    ADOQueryServ.SQL.Add('                               AND Area =  '+chr(39)+Datamodule1.ADOQuery1.FieldValues['Area_Trabaja']+chr(39)+') AND ');
  End;

  if ADOParamCargo.FieldValues['ServiciosxTipoAdmision'] = 'S' then
  Begin
    ADOQueryServ.SQL.Add('      AND SAServicios.Codigo IN (SELECT Codigo_Servicio ');
    ADOQueryServ.SQL.Add('                             FROM SAServiciosxTpAdm ');
    ADOQueryServ.SQL.Add('                             WHERE Tp_Admision = '+chr(39)+DBLookupCombobox11.keyvalue+chr(39)+')  ');
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
  ADOQueryServ.Open;}
end;

procedure TFCapturaCargo.BitBtn2Click(Sender: TObject);
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
      StringGrid1.Cells[23,i] := '';
      StringGrid1.Cells[24,i] := '';
      StringGrid1.Cells[25,i] := '';
      StringGrid1.Cells[26,i] := '';
      StringGrid1.Cells[27,i] := '';
      StringGrid1.Cells[28,i] := '';
      StringGrid1.Cells[29,i] := '';
      StringGrid1.Cells[30,i] := '';
      StringGrid1.Cells[31,i] := '';
    end;
    StringGrid1.RowCount:=2;
    Maskedit1.Text:='';
    Maskedit2.Text:='';
    Maskedit3.Text:='';
  end;
end;

procedure TFCapturaCargo.BitBtn3Click(Sender: TObject);
var i:extended;
    CantVenc,CantFalt, k: Integer;
    Descripcion    : string;
    Texto          : string;
begin
  if Bloqueo = False then
    begin
      if chkincluir.Checked Then Begin
        If (DBLookupComboBox13.Text='') or  (DBLookupComboBox13.Text='Sin Agrupacion')Then
        Begin
          Showmessage('ERROR: Se necesita seleccionar un Paquete.');
          exit;
        End;
      End;
      
      If (Combobox1.text='S') and (DBLookupComboBox9.Text='') and (Capitulo <> 1) and (ADOQueryServ.FieldValues['Valor_Pesos'] = 0) Then
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
      End;

      If(Combobox1.Text='P') Then Begin
        if ADOTable1.FieldValues['Control_Existencia'] Then
        Begin
          If DBEdit6.Text <> '' Then
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

       if DBLookupComboBox9.Text <> '' Then Texto   := DBLookupComboBox9.Text
       Else Texto   := DBLookupComboBox6.Text;

       k:=0;
       Repeat
         descripcion := leftstr(Texto,pos('-',Texto)-1);
         Texto:=rightstr(Texto,length(texto) - (pos('-',texto)+1));
         inc(k);
       Until k = 2;
         descripcion  := copy(Texto,5,length(Texto));

      If(Combobox1.Text='P') OR (Combobox1.Text='S') Then
      Begin
        if trim(Maskedit1.Text) = '' then Maskedit1.Text:='0';
        if trim(Maskedit2.Text) = '' then Maskedit2.Text:='0';
        if trim(Maskedit3.Text) = '' then Maskedit3.Text:='0';
        if (trystrtofloat(maskedit1.Text,i)) AND (trystrtofloat(maskedit2.Text,i)) AND (trystrtofloat(maskedit3.Text,i)) then
        Begin
          If MaskEdit1.Text <> '0' Then
          Begin
            StringGrid1.Cells[0,StringGrid1.RowCount-1] := inttostr(StringGrid1.RowCount-1);
            StringGrid1.Cells[1,StringGrid1.RowCount-1] := Combobox1.Text;

            If Combobox1.Text='P' Then
            Begin
              StringGrid1.Cells[2,StringGrid1.RowCount-1]  := DBLookupCombobox3.Text;
              StringGrid1.Cells[3,StringGrid1.RowCount-1]  := DBLookupCombobox4.Text;
            End
            Else If Combobox1.Text='S' Then
            Begin
              StringGrid1.Cells[2,StringGrid1.RowCount-1] := DBLookupCombobox2.Text;
              StringGrid1.Cells[3,StringGrid1.RowCount-1] := DBLookupCombobox6.Text; //Descripcion;//DBLookupComboBox9.Text;
              IF DBLookupComboBox9.Text<>'' Then
              Begin
                StringGrid1.Cells[7,StringGrid1.RowCount-1] := ADOQueryCrucServHomo.FieldValues['cc'];
                StringGrid1.Cells[8,StringGrid1.RowCount-1] := ADOQueryCrucServHomo.FieldValues['tb'];
                StringGrid1.Cells[9,StringGrid1.RowCount-1] := ADOQueryCrucServHomo.FieldValues['año'];
              End;
            End;
            IF ComboBox1.Text = 'S' Then StringGrid1.Cells[12,StringGrid1.RowCount-1] := DBLookupCombobox6.Text
            ELSE StringGrid1.Cells[12,StringGrid1.RowCount-1] := DBLookupCombobox4.Text;
            if chkincluir.Checked Then StringGrid1.Cells[12,StringGrid1.RowCount-1] := DBLookupCombobox13.Text;
            StringGrid1.Cells[4,StringGrid1.RowCount-1] := Maskedit1.Text;
            StringGrid1.Cells[5,StringGrid1.RowCount-1] := Maskedit2.Text;

            if (Capitulo = 1) AND (Assigned(FCalculoTarifa)) then
            begin
              StringGrid1.Cells[25,StringGrid1.RowCount-1] := FCalculoTarifa.CBDSalas.Text;
              StringGrid1.Cells[26,StringGrid1.RowCount-1] := FCalculoTarifa.MaskEdit6.Text;

              StringGrid1.Cells[27,StringGrid1.RowCount-1] := FCalculoTarifa.CBDMateriales.Text;
              StringGrid1.Cells[28,StringGrid1.RowCount-1] := FCalculoTarifa.MaskEdit7.Text;

              StringGrid1.Cells[29,StringGrid1.RowCount-1] := FCalculoTarifa.CBDEspecialista.Text;
              StringGrid1.Cells[30,StringGrid1.RowCount-1] := FCalculoTarifa.MaskEdit8.Text;

              StringGrid1.Cells[31,StringGrid1.RowCount-1] := FCalculoTarifa.CBDAnestesiologo.Text;
              StringGrid1.Cells[32,StringGrid1.RowCount-1] := FCalculoTarifa.MaskEdit9.Text;

              StringGrid1.Cells[33,StringGrid1.RowCount-1] := FCalculoTarifa.CBDMedAux.Text;
              StringGrid1.Cells[34,StringGrid1.RowCount-1] := FCalculoTarifa.MaskEdit10.Text;

              StringGrid1.Cells[35,StringGrid1.RowCount-1] := MaskEdit1.Text;
            end;
            StringGrid1.Cells[6,StringGrid1.RowCount-1] := floattostr(round(strtofloat(Maskedit3.Text)));

            IF ComboBox1.Text = 'P' Then Begin
              IF ADOQuerySVencim.FieldValues['Fecha_Vencim'] <> null Then StringGrid1.Cells[10,StringGrid1.RowCount-1] := datetostr(ADOQuerySVencim.FieldValues['Fecha_Vencim'])
              ELSE StringGrid1.Cells[10,StringGrid1.RowCount-1] := '30/12/1899';
              IF ADOQuerySVencim.FieldValues['Lote'] <> null Then StringGrid1.Cells[11,StringGrid1.RowCount-1] := ADOQuerySVencim.FieldValues['Lote']
              ELSE StringGrid1.Cells[11,StringGrid1.RowCount-1] := '0';
            End;

            StringGrid1.Cells[13,StringGrid1.RowCount-1] :='0';
            StringGrid1.Cells[14,StringGrid1.RowCount-1] :='0';

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

            StringGrid1.RowCount := StringGrid1.RowCount + 1;
            Maskedit1.Text:='0';
            Maskedit2.Text:='0';
            Maskedit3.Text:='0';
            Maskedit4.Text:='0';
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
      End
      Else Begin
        //*************************************
        //Paquetes
        //*************************************
        if MessageDlg('Desea incluir el paquete a este Cargo?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
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
        End;
      End;
    end;
end;

procedure TFCapturaCargo.BitBtn4Click(Sender: TObject);
Var
  i,e,c:Integer;
  Afecta_I:Integer;
  Cad : string;
  IndFact:Integer;
begin
  If StringGrid1.RowCount > 2 Then
  Begin
    If (DBLookupComboBox1.Text <> '') Then
    Begin
      try
        ADOQuery2.Close;
        ADOQuery2.Open;
      except
        Showmessage ('ERROR: No se encuentra conectado el servidor, El sistema intentará reconectar. Si no puede, solucione el problema de red y pruebe de nuevo.');
        ADOQuery2.Connection.Close;
        ADOQuery2.Connection.Open;
        ADOQuery2.Open;
      end;

      adoquery3.Open;
      //Graba el Encabezado
      try
        DataModule1.ADOConnection1.BeginTrans;

        if modifica then
        begin
          //Anulando el movimiento de inventario anterior.
          IF TrInven <> '' Then Begin
            FAnula := tFAnula.create(application);
            try
              FAnula.show;
              FAnula.DBLookupComboBox5.KeyValue := ADOTable1.FieldValues['Tipo_Doc_Inventario'];
              FAnula.DataSource4DataChange(Nil,Nil);
              FAnula.DBLookupComboBox1.KeyValue := TrInven;
              FAnula.Refresh;
              FAnula.SpeedButton1Click(Nil);
            except
              FAnula.free;
            end;
          End;

          //Eliminando el detalle de cargos actuales.
          ADOQtmp.Close;
          ADOQtmp.Parameters.ParamValues['NOCARG']:=Edit1.Text;
          ADOQtmp.Open;
          ADOQtmp.First;
          ADOQtmp.Delete;
          ADOQtmp.Close;

          ADOQtmp2.Close;
          ADOQtmp2.Parameters.ParamValues['NOCARG']:=Edit1.Text;
          ADOQtmp2.Open;
          ADOQtmp2.First;
          While NOT ADOQtmp2.Eof Do
          Begin
            IF ADOQtmp2.FieldValues['Status']='F' Then IndFact:=1;
            ADOQtmp2.Next;
          End;

          IF IndFact <> 0 Then Begin
            Showmessage('ERROR: El cargo fue facturado mientras usted lo modificaba...');
            exit;
          End;

          ADOQtmp2.Close;
          ADOQtmp2.Parameters.ParamValues['NOCARG']:=Edit1.Text;
          ADOQtmp2.Open;
          ADOQtmp2.First;
          While NOT ADOQtmp2.Eof Do
          Begin
            ADOQtmp2.Delete;
            ADOQtmp2.First;
          End;
          ADOQTmp2.Close;
        end
        else begin
          Cad := '';
          Cad := pchar(DataModule1.ADOQuery1.Fields.FieldByName('EMPRESA_TRABAJA').AsString+'%');
          ADOQueryUlt.Close;
          ADOQueryUlt.SQL.Clear;
          ADOQueryUlt.sql.Add('SELECT max(No_Cargo) as Ultimo FROM  CREncCargos');
          ADOQueryUlt.sql.Add('WHERE No_cargo Like '''+Cad+'''');
          ADOQueryUlt.Open;

          if (ADOQueryUlt.FieldValues['Ultimo'] <> Null) then
            edit1.Text:=alineardatos(inttostr(strtoint(ADOQueryUlt.FieldValues['Ultimo'])+1),6)
          else
            edit1.Text:= DataModule1.ADOQuery1.Fields.FieldByName('EMPRESA_TRABAJA').AsString+alineardatos('1',6);
        end;

        adoquery2.Append;
        adoquery2.FieldValues['No_Cargo']         := Edit1.text;
        adoquery2.FieldValues['Fecha']            := datetimepicker1.DateTime;
        adoquery2.FieldValues['No_Admision']      := DBlookupComboBox1.KeyValue;
        adoquery2.FieldValues['Empresa_Producto'] := Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja'];
        adoquery2.FieldValues['Area_Producto']    := Datamodule1.ADOQuery1.FieldValues['Area_Trabaja'];
        adoquery2.FieldValues['TipoAdmision']     := DBlookupComboBox11.KeyValue;
        adoquery2.FieldValues['Id']               := Datamodule1.ADOQuery1.FieldValues['Id'];
        adoquery2.Post;

        //Graba el Detalle
        Afecta_I:=0;
        For i:=1 TO (StringGrid1.RowCount-2) Do
        Begin
          adoquery3.Append;
          adoquery3.FieldValues['No_Cargo']     := Edit1.text;
          adoquery3.FieldValues['Sec_Cargo']    := StringGrid1.Cells[0,i];
          adoquery3.FieldValues['Tp_PST']       := StringGrid1.Cells[1,i];
          adoquery3.FieldValues['Cd_PST']       := StringGrid1.Cells[2,i];
          adoquery3.FieldValues['Descripcion']  := StringGrid1.Cells[3,i];
          adoquery3.FieldValues['Unidades']     := strtofloat(StringGrid1.Cells[4,i]);
          adoquery3.FieldValues['Unidades_Desc'] := 0;
          adoquery3.FieldValues['Precio']       := strtofloat(StringGrid1.Cells[5,i]);
          adoquery3.FieldValues['Valor_Liquidado'] := strtofloat(StringGrid1.Cells[6,i]);
          adoquery3.FieldValues['Cd_Tarifa']    := StringGrid1.Cells[7,i];
          adoquery3.FieldValues['Tb_Tarifa']    := StringGrid1.Cells[8,i];
          adoquery3.FieldValues['Año_Tarifa']     := StringGrid1.Cells[9,i];
          IF StringGrid1.Cells[10,i] <> '' Then adoquery3.FieldValues['Fecha_Vence'] := strtodate(StringGrid1.Cells[10,i])
          ELSE adoquery3.FieldValues['Fecha_Vence'] := 0;
          IF StringGrid1.Cells[11,i] <> '' Then adoquery3.FieldValues['Lote']        := StringGrid1.Cells[11,i]
          ELSE adoquery3.FieldValues['Lote']        := '0';
          adoquery3.FieldValues['Agrupacion']   := StringGrid1.Cells[12,i];
          adoquery3.FieldValues['VrAgrupacion'] := strtofloat(StringGrid1.Cells[13,i]);
          IF StringGrid1.Cells[14,i] <> '' Then adoquery3.FieldValues['CantAgrupacion'] := strtoint(StringGrid1.Cells[14,i]);
          adoquery3.FieldValues['Status']       := '';
          If StringGrid1.Cells[1,i] = 'P' Then Afecta_I:=1;

          adoquery3.Post;

          if (StringGrid1.Rows[i].Strings[25] <> '') then
            begin
              e := 0;
              c := 25;
              while  e < 5 do
                begin
                  QryG.Close;
                  QryG.SQL.Clear;
                  QryG.SQL.Add('INSERT INTO CRCargos_DetServDET (Admision,Cargo, Servicio, SubCodigo, Cantidad, valor )');
                  QryG.SQL.Add('                VALUES (');
                  QryG.SQL.Add(''''+DBLookupComboBox1.Text+''',');
                  QryG.SQL.Add(''''+Edit1.text+''',');
                  QryG.SQL.Add(''''+StringGrid1.Cells[2,i]+''',');


                  QryG.SQL.Add(''''+StringGrid1.Cells[c,i]+''',');
                  QryG.SQL.Add(''''+IntToStr(StrToInt(StringGrid1.Cells[35,i]))+''',');
                  inc(c);
                  QryG.SQL.Add(''''+FloatToStr(StrToFloat(StringGrid1.Cells[c,i]))+''')');
                  inc(c);
                  QryG.ExecSQL;
                  inc(e);
                end;
            end;
        end;
        DataModule1.ADOConnection1.CommitTrans;

        //Actualiza Inventarios
        ActualizacionInvent := tActualizacionInvent.create(application);
        try
          Datamodule1.MuestraconAcceso(ActualizacionInvent);
          ActualizacionInvent.Button1Click(Nil);
        except
          ActualizacionInvent.free;
        end;
        showmessage('El Cargo se grabo con el Numero: '+edit1.Text);

        if MessageDlg('Desea Imprimir el Cargo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          ImpBoleta := tImpBoleta.create(application);
          try
            Datamodule1.MuestraconAcceso(ImpBoleta);
          except
            ImpBoleta.free;
          end;

          ImpBoleta.ADOQuery1.Filter   := 'No_Cargo='+edit1.text;
          ImpBoleta.ADOQuery1.Filtered := true;
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
        StringGrid1.Cells[9,1] := '';
        StringGrid1.Cells[10,1] := '';
        StringGrid1.Cells[11,1] := '';
        StringGrid1.Cells[12,1] := '';
        StringGrid1.Cells[13,1] := '';
        StringGrid1.Cells[14,1] := '';
        modifica := false;
        DateTimePicker1.DateTime:=Now;
        Maskedit1.Text:='0';
        Maskedit2.Text:='0';
        Maskedit3.Text:='0';
        Maskedit4.Text:='0';
        Edit1.Text:='';
        DBLookupComboBox3.keyvalue:='';
        DBLookupComboBox4.keyvalue:='';
        except
          DataModule1.ADOConnection1.RollbackTrans;
        raise;
      end;
      adoquery3.close;
      adoquery2.close;
      ADOQuerySVencim.Close;
    end
    Else Begin
      Showmessage('El cargo no se puede grabar hasta que se diligencien todos los campos.');
    end;
  end
  Else Begin
    Showmessage('El cargo no se puede grabar hasta que se le ingresen cuentas');
  end;
end;

procedure TFCapturaCargo.BitBtn5Click(Sender: TObject);
begin
  If(MaskEdit2.Text = '0') and (DBLookupComboBox9.Text <> '') Then
  Begin
    FCalculoTarifa := tFCalculoTarifa.create(application);
    try
    FCalculoTarifa.ADOQryG.Close;
    FCalculoTarifa.ADOQryG.SQL.Clear;
    FCalculoTarifa.ADOQryG.SQL.Add('SELECT * FROM SAServicios');
    FCalculoTarifa.ADOQryG.SQL.Add('WHERE Estado = ''A''');
    FCalculoTarifa.ADOQryG.Open;

    while not FCalculoTarifa.ADOQryG.Eof do
      begin
        FCalculoTarifa.CBDSalas.Items.Add(FCalculoTarifa.ADOQryG.Fields.FieldByName('Codigo').AsString);
        FCalculoTarifa.CBDMateriales.Items.Add(FCalculoTarifa.ADOQryG.Fields.FieldByName('Codigo').AsString);
        FCalculoTarifa.CBDEspecialista.Items.Add(FCalculoTarifa.ADOQryG.Fields.FieldByName('Codigo').AsString);
        FCalculoTarifa.CBDAnestesiologo.Items.Add(FCalculoTarifa.ADOQryG.Fields.FieldByName('Codigo').AsString);
        FCalculoTarifa.CBDMedAux.Items.Add(FCalculoTarifa.ADOQryG.Fields.FieldByName('Codigo').AsString);
        FCalculoTarifa.ADOQryG.Next;
      end;

      //Para el caso de ser procedimientos quirurgicos muestra los campos del CUPS discriminados
      FCalculoTarifa.ADOQryG.Close;
      FCalculoTarifa.ADOQryG.SQL.Clear;
      FCalculoTarifa.ADOQryG.SQL.Add('SELECT * FROM SATarifasDetalle');
      FCalculoTarifa.ADOQryG.SQL.Add('WHERE CODIGO IN (SELECT Codigo2 FROM SAHomologacion');
      FCalculoTarifa.ADOQryG.SQL.Add('WHERE Tabla1 = ''CUP''');
      FCalculoTarifa.ADOQryG.SQL.Add('   AND Codigo1= '''+DBLookupComboBox2.Text+'''');
      FCalculoTarifa.ADOQryG.SQL.Add('   AND Tabla2 = '''+ADOQueryServ.Fields.FieldByName('TARIFA').AsString+''')');
      FCalculoTarifa.ADOQryG.SQL.Add('   AND Año = '''+ADOQueryServ.Fields.FieldByName('AÑO').AsString+'''');
      FCalculoTarifa.ADOQryG.SQL.Add('   AND Tabla = '''+ADOQueryServ.Fields.FieldByName('TARIFA').AsString+'''');
      FCalculoTarifa.ADOQryG.Open;

      if not FCalculoTarifa.ADOQryG.Eof then
        FCalculoTarifa.MaskEdit11.Text  :=  FloatToStr(FCalculoTarifa.ADOQryG.Fields.FieldByName('Puntaje').AsFloat);

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

procedure TFCapturaCargo.FormCreate(Sender: TObject);
begin
  modifica := false;

  DateTimePicker1.DateTime:=Now;

  StringGrid1.Cells[1,0]:= 'Tipo';
  StringGrid1.Cells[2,0]:= 'Producto/Servicio/Tarifa';
  StringGrid1.Cells[3,0]:= 'Descripción';
  StringGrid1.Cells[4,0]:= 'Cantidad';
  StringGrid1.Cells[5,0]:= 'Valor Unitario';
  StringGrid1.Cells[6,0]:= 'Valor Total Liq.';
  StringGrid1.Cells[7,0]:= 'Tabla';
  StringGrid1.Cells[8,0]:= 'Año';
  StringGrid1.Cells[9,0]:= 'Codigo';
  StringGrid1.Cells[10,0]:= 'Fecha_Vence';
  StringGrid1.Cells[11,0]:= 'Lote';
  StringGrid1.Cells[12,0]:= 'Agrupacion';
  StringGrid1.Cells[13,0]:= 'VrAgrupacion';
  StringGrid1.Cells[14,0]:= 'CantAgrupacion';

  Edit2.Text:= Datamodule1.ADOQuery1.FieldValues['Descripcion_Emp'] + ' - '+Datamodule1.ADOQuery1.FieldValues['Descripcion_Area'];

  QrytipoAdmision.Open;

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

  Maskedit1.Text:='';
  Maskedit2.Text:='';
  Maskedit3.Text:='';
  DBlookupComboBox3.Visible:=False;
  DBlookupComboBox4.Visible:=False;
  DBlookupComboBox2.Visible:=False;
  DBlookupComboBox6.Visible:=False;
  DBlookupComboBox9.Visible:=False;

  IF (Datamodule1.ADOQuery1.FieldValues['Almacen_Cargo'] = '') OR (Datamodule1.ADOQuery1.FieldValues['Almacen_Cargo']= null) then begin
    Showmessage('Esta activo la creación de inventarios, pero no esta asignado un Almacén para el Area de este Usuario.');
    Showmessage('Debe ingresar este Almacén por el módulo de Administración para poder continuar.');
    Halt;
  end;
  ADOTable4.Open;
  ADOTable1.Open;
  ADOTable2.Open;
  adoparamcargo.Open;

  IF ADOTable2.FieldValues['Valida_Existencias'] = 'S' Then sw1.StateOn := true
  ELSE sw1.StateOn := false;

  IF ADOParamCargo.FieldValues['Control_ProdxArea'] = 'S' Then sw2.StateOn := true
  ELSE sw2.StateOn := false;

  IF ADOParamCargo.FieldValues['Valida_Homologacion'] = 'S' Then sw3.StateOn := true
  ELSE sw3.StateOn := false;

  IF ADOTable2.FieldValues['ConvenioComoDescuento'] = 'S' Then sw4.StateOn := true
  ELSE sw4.StateOn := false;

  IF ADOParamCargo.FieldValues['ServiciosxTipoAdmision'] = 'S' Then sw5.StateOn := true
  ELSE sw5.StateOn := false;
end;

procedure TFCapturaCargo.BitBtn6Click(Sender: TObject);
begin
  FormCreaConvenios := tFormCreaConvenios.create(application);
  try
    FormCreaConvenios.DBLookupComboBox2.KeyValue := Datamodule1.ADOQuery1.FieldValues['Empresa_trabaja'];
    FormCreaConvenios.DBLookupComboBox1.KeyValue := DBEdit4.Text;
    FormCreaConvenios.ComboBox2.Text := DBEdit11.Text;
    FormCreaConvenios.ComboBox1.Text := ComboBox1.Text;
    FormCreaConvenios.ComboBox1Change(Nil);

    Datamodule1.MuestraconAcceso(FormCreaConvenios);
  except
    FormCreaConvenios.free;
  end;
  if Combobox1.Text = 'P' Then
  Begin
    ADOQueryProd.Close;
    ADOQueryProd.Open;
  End
  Else Begin
    ADOQueryServ.Close;
    ADOQueryserv.Open;
  End;
end;

procedure TFCapturaCargo.BitBtn7Click(Sender: TObject);
begin
  if ComboBox1.text = 'P' Then
  Begin
    productos := tproductos.create(application);
    try
      if DBLookupComboBox3.Text <> '' Then
      Begin
        productos.ADOTable1.Filtered:=False;
        productos.ADOTable1.Filter:= 'CD_Producto Like '+chr(39)+'%'+DBLookupComboBox3.Text+'%'+chr(39);
        productos.ADOTable1.Filtered:=True;
      End;
      Datamodule1.MuestraconAcceso(productos);
    except
      productos.free;
   end;
 end
 else begin
   CapturaB := tCapturaB.create(application);
   CapturaB.Edit1.Text:= 'SAServicios';
   try
     Datamodule1.MuestraconAcceso(CapturaB);
   except
     CapturaB.free;
   end;
 end;
end;

procedure TFCapturaCargo.FormActivate(Sender: TObject);
begin
  QryInv.Close;
  QryInv.SQL.Clear;
  QryInv.SQL.Add('SELECT Afecta_Inventarios');
  QryInv.SQL.Add('FROM CRParametros');
  QryInv.Open;

  if not QryInv.Eof then
    AfecInv  := QryInv.Fields.FieldByName('Afecta_Inventarios').AsString;

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

  //ComboBox1.SetFocus;
end;

procedure TFCapturaCargo.MaskEdit1Exit(Sender: TObject);
begin
  if strtofloat(Maskedit1.Text) > 0 Then Begin
    MaskEdit2.Enabled:=True;
  End
  Else Begin
    MaskEdit2.Enabled:=False;
    MaskEdit2.Text := '0';
  End;
end;

procedure TFCapturaCargo.CambiarlaCantidad1Click(Sender: TObject);
var
  InputString: string;
begin
  InputString:= InputBox('Nueva Cantidad del Item', 'Cantidad', '1');
end;

procedure TFCapturaCargo.BitBtn8Click(Sender: TObject);
begin
  ImpBoleta := tImpBoleta.create(application);
  try
    Datamodule1.MuestraconAcceso(ImpBoleta);
  except
    ImpBoleta.free;
  end;
end;

procedure TFCapturaCargo.MaskEdit2Exit(Sender: TObject);
var cos, Cos1 : Real;
    Por : Integer;
begin
  Bloqueo  := False;
  if AfecInv = 'S' then
    begin
      if StrToFloat(MaskEdit2.Text) < CostoP then
        begin
          Bloqueo  := False;
          Application.MessageBox('Se ingreso un valor de venta menor al costo promedio. Es solo una advertencia...','Advertencia',MB_OK+MB_ICONWARNING);
        end
      else
        begin
          QryG.Close;
          QryG.SQL.Clear;
          QryG.SQL.Add('select Porcentaje_Venta from CRParametros');
          QryG.Open;

          if not QryG.Eof then
            begin
              Por   := QryG.Fields.FieldByName('Porcentaje_Venta').AsInteger;
              cos   := (Costo * Por) /100;
              Cos1  := Costo + cos;

              if StrToFloat(MaskEdit2.Text) < Cos1 then
                begin
                  Bloqueo  := False;
                  Application.MessageBox(pchar('El valor minimo de venta es : $ '+ FloatToStr(Cos1)+'. Es solo una advertencia...'),'Información',MB_OK+MB_ICONINFORMATION);
                end;
            end;
        end;
    end;
end;

procedure TFCapturaCargo.BitBtn9Click(Sender: TObject);
Var
  InputString:String;
  IndFact:Integer;
begin
 if MessageDlg('Esta por modificar un cargo, Se Anulara el Inventario y se creará una nueva transacción, esta seguro?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 begin
  InputString:= InputBox('Numero del Cargo', 'Cargo a Recuperar', '0');

  IF DBLookupComboBox1.Text <> '' Then
  Begin
    ADOQtmp.Close;
    ADOQtmp.Parameters.ParamValues['NOCARG']:=InputString;
    ADOQtmp.Open;
    If ADOQtmp.RecordCount <> 0 Then
    Begin
      ADOQtmp.First;
      DBLookupComboBox1.KeyValue := ADOQtmp.FieldValues['No_Admision'];
      DateTimePicker1.DateTime   := ADOQtmp.FieldValues['Fecha'];

      //Verifica que encuentre la admisión
      IF DBLookupComboBox1.Text=ADOQtmp.FieldValues['No_Admision'] Then
      Begin
        //Verifica que no existan items facturados, en caso de que existan no deja modificar
        IndFact:=0;
        ADOQtmp2.Close;
        ADOQtmp2.Parameters.ParamValues['NOCARG']:=InputString;
        ADOQtmp2.Open;
        ADOQtmp2.First;
        While NOT ADOQtmp2.Eof Do
        Begin
          IF ADOQtmp2.FieldValues['Status']='F' Then IndFact:=1;
          ADOQtmp2.Next;
        End;

        IF IndFact = 0 Then Begin
          edit1.Text:=InputString;
          modifica := true;

          While NOT ADOQtmp.Eof Do
          Begin
            if ADOQtmp.FieldValues['Numero_Transaccion_Inventario'] <> Null Then TrInven := ADOQtmp.FieldValues['Numero_Transaccion_Inventario']
            Else TrInven := '';

            ADOQtmp2.Close;
            ADOQtmp2.Parameters.ParamValues['NOCARG']:=InputString;
            ADOQtmp2.Open;
            ADOQtmp2.First;
            While NOT ADOQtmp2.Eof Do
            Begin
              StringGrid1.Cells[0,StringGrid1.RowCount-1] := inttostr(StringGrid1.RowCount-1);
              StringGrid1.Cells[1,StringGrid1.RowCount-1] := ADOQtmp2.FieldValues['Tp_PST'];
              StringGrid1.Cells[2,StringGrid1.RowCount-1] := ADOQtmp2.FieldValues['Cd_PST'];
              StringGrid1.Cells[3,StringGrid1.RowCount-1] := ADOQtmp2.FieldValues['Descripcion'];
              StringGrid1.Cells[4,StringGrid1.RowCount-1] := floattostr(ADOQtmp2.FieldValues['Unidades']);
              StringGrid1.Cells[5,StringGrid1.RowCount-1] := floattostr(ADOQtmp2.FieldValues['Precio']);
              StringGrid1.Cells[6,StringGrid1.RowCount-1] := floattostr(ADOQtmp2.FieldValues['Valor_Liquidado']);
              StringGrid1.Cells[7,StringGrid1.RowCount-1] := ADOQtmp2.FieldValues['Tb_Tarifa'];
              StringGrid1.Cells[8,StringGrid1.RowCount-1] := ADOQtmp2.FieldValues['Año_Tarifa'];
              StringGrid1.Cells[9,StringGrid1.RowCount-1] := ADOQtmp2.FieldValues['Cd_Tarifa'];
              StringGrid1.Cells[10,StringGrid1.RowCount-1] := ADOQtmp2.FieldValues['Fecha_Vence'];
              StringGrid1.Cells[11,StringGrid1.RowCount-1] := ADOQtmp2.FieldValues['Lote'];
              StringGrid1.Cells[12,StringGrid1.RowCount-1] := ADOQtmp2.FieldValues['Agrupacion'];
              StringGrid1.Cells[13,StringGrid1.RowCount-1] := ADOQtmp2.FieldValues['VrAgrupacion'];
              StringGrid1.Cells[14,StringGrid1.RowCount-1] := ADOQtmp2.FieldValues['CantAgrupacion'];

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

              StringGrid1.RowCount := StringGrid1.RowCount + 1;
              //ADOQtmp2.Delete;
              ADOQtmp2.Next;
            End;

            //ADOQtmp.Delete;
            ADOQtmp.Next;
          End;
        End
        Else Begin
          Showmessage('Lo Sentimos, Existen Items Facturados para este Cargo.');
        End;
      End
      Else Begin
        Showmessage('Lo Sentimos, Este cargo no encuentra la admision respectiva o esta inactiva.');
      End;
    End
    Else Begin
      Showmessage('No se encontraron Cargos.');
    End;
  End;
 End;
end;

procedure TFCapturaCargo.StringGrid1Click(Sender: TObject);
begin
  DBLookupCombobox13.KeyValue := StringGrid1.Cells[12,StringGrid1.Row];
end;

procedure TFCapturaCargo.BitBtn10Click(Sender: TObject);
begin
  if Combobox1.Text = 'S' Then
  Begin
    frmAsignaHomologa := tfrmAsignaHomologa.create(application);
    try
      frmAsignaHomologa.DBLookupComboBox1.KeyValue := DBLookupComboBox2.KeyValue;
      frmAsignaHomologa.DBLookupComboBox1Exit(Nil);
     Datamodule1.MuestraconAcceso(frmAsignaHomologa);
    except
      frmAsignaHomologa.free;
    end;

    ADOQueryServ.Close;
    ADOQueryserv.Open;
  End;
end;

end.

