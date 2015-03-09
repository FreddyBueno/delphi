unit ConsultaComp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, DB, ADODB, Mask,
  ComCtrls, Buttons, Menus, StrUtils, DelphiTwain,Math,DateUtils, JvBitBtn,
  JvExButtons;

type
  TFormCapturaComp = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    StringGrid1: TStringGrid;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Edit4: TEdit;
    Label7: TLabel;
    Edit5: TEdit;
    ADOQuery1: TADOQuery;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Button1: TButton;
    Label9: TLabel;
    Label10: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    ADOTable4: TADOTable;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBLookupComboBox8: TDBLookupComboBox;
    Button2: TButton;
    Button3: TButton;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    EliminarRegistro1: TMenuItem;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Panel3: TPanel;
    Splitter1: TSplitter;
    ImageHolder: TImage;
    Panel4: TPanel;
    Button4: TButton;
    ADOQuery4: TADOQuery;
    Label14: TLabel;
    Edit6: TEdit;
    Shape1: TShape;
    BitBtn8: TBitBtn;
    Button5: TButton;
    BtnModificar: TJvBitBtn;
    Modificar1: TMenuItem;
    QryG: TADOQuery;
    QryA: TADOQuery;
    QryG1: TADOQuery;
    QryG2: TADOQuery;
    QryG3: TADOQuery;
    ADOQueryCuenta: TADOQuery;
    ADOQueryTercero: TADOQuery;
    ADOQuery5: TADOQuery;
    ADOQueryTemp: TADOQuery;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DataSource3DataChange(Sender: TObject; Field: TField);
    procedure DataSource4DataChange(Sender: TObject; Field: TField);
    procedure DataSource5DataChange(Sender: TObject; Field: TField);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure EliminarRegistro1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure TwainTwainAcquire(Sender: TObject;
      const Index: Integer; Image: TBitmap; var Cancel: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure BtnModificarClick(Sender: TObject);
    procedure Modificar1Click(Sender: TObject);
    procedure StringGrid1Click(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBox5Exit(Sender: TObject);
    procedure Edit6Exit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit6Enter(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    Modi   : Boolean;
    Fila   : Integer;
    { Private declarations }
  public
    Cambia : Boolean;
    EmpresaM: String;
    vecCambia  : array of array of string;
    { Public declarations }
  end;

var
  FormCapturaComp: TFormCapturaComp;

implementation

uses UDataModule1, MAIN, FComprobanteEgreso,
  FComprobantesVarios, Fcontabilidad11,  Fcontabilidad8,
  UnitBuscaComprobante, FListDocSoporte, FCreaTerceros, Ffactura1, Twain;



{$R *.dfm}

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
    else
    showmessage('No es posible eliminar este campo');
end;
/////////////////////////////////////////////////////////////////////

procedure TFormCapturaComp.FormActivate(Sender: TObject);
begin
  adotable1.Close;
  adotable1.open;
  adotable4.Close;
  if Datamodule1.ADOQuery1.FieldValues['Multiempresa'] = 'S' Then adotable4.Filter := 'Estado ='+chr(39)+'A'+chr(39) 
  Else adotable4.Filter := 'Estado ='+chr(39)+'A'+chr(39) + ' AND Empresa = '+Datamodule1.ADOQuery1.FieldValues['Empresa'];
  adotable4.Filtered := True;
  adotable4.Open;

  ADOQueryTercero.Close;
  ADOQueryTercero.Parameters.ParamValues['TIPComp'] := DBLookupComboBox1.KeyValue;
  ADOQueryTercero.Open;

  adoquerycuenta.Close;
  ADOQueryCuenta.Parameters.ParamValues['Tc'] := DBLookupComboBox1.KeyValue;
  adoquerycuenta.Open;
end;

procedure TFormCapturaComp.Button1Click(Sender: TObject);
var i:extended;
    e : Integer;
    dEV, cRED : Real;
begin
  if ((edit6.Visible) AND (trim(Edit6.Text) = '' )) Then
  Begin
    Showmessage('ERROR: El numero de documento soporte es obligatorio.');
    Exit;
  End;

  if trim(Maskedit1.Text) = '' then Maskedit1.Text:='0';
  if trim(Maskedit2.Text) = '' then Maskedit2.Text:='0';
  if trim(Button5.Caption) = '' then Button5.Caption:='0';
  if (trystrtofloat(maskedit1.Text,i)) AND (trystrtofloat(maskedit2.Text,i)) then
  Begin
    If (DataModule1.ctadet(trim(DBLookupComboBox3.KeyValue))) AND (DBLookupComboBox3.KeyValue <> '') AND ((strtofloat(Maskedit1.Text) - strtofloat(Maskedit2.Text)) <> 0) Then
    Begin
      DBLookupComboBox1.Enabled := False;

      if Modi = False then
        begin
          StringGrid1.Cells[0,StringGrid1.RowCount-1] := inttostr(StringGrid1.RowCount-1);
          StringGrid1.Cells[1,StringGrid1.RowCount-1] := DBLookupCombobox3.Text;
          StringGrid1.Cells[2,StringGrid1.RowCount-1] := DBLookupCombobox4.Text;
          StringGrid1.Cells[3,StringGrid1.RowCount-1] := Maskedit1.Text;
          StringGrid1.Cells[4,StringGrid1.RowCount-1] := Maskedit2.Text;
          Button5.Caption := floattostr(roundto(strtofloat(Button5.Caption),-2) + roundto(strtofloat(Maskedit1.Text),-2) - roundto(strtofloat(Maskedit2.Text),-2));
          IF DBLookupCombobox5.visible Then StringGrid1.Cells[5,StringGrid1.RowCount-1] := DBLookupCombobox5.Text
          ELSE StringGrid1.Cells[5,StringGrid1.RowCount-1] := '';
          IF DBLookupCombobox5.visible Then StringGrid1.Cells[6,StringGrid1.RowCount-1] := DBLookupCombobox7.Text
          ELSE StringGrid1.Cells[6,StringGrid1.RowCount-1] := '';
          StringGrid1.Cells[7,StringGrid1.RowCount-1] := Edit6.Text;
          StringGrid1.RowCount := StringGrid1.RowCount + 1;
          StringGrid1.Cells[1,StringGrid1.RowCount] := '';
          StringGrid1.Cells[2,StringGrid1.RowCount] := '';
          StringGrid1.Cells[3,StringGrid1.RowCount] := '';
          StringGrid1.Cells[4,StringGrid1.RowCount] := '';
          StringGrid1.Cells[5,StringGrid1.RowCount] := '';
        end
      else
        begin
          StringGrid1.Cells[1,Fila]      := DBLookupCombobox3.Text;
          StringGrid1.Cells[2,Fila]      := DBLookupCombobox4.Text;
          StringGrid1.Cells[3,Fila]      := Maskedit1.Text;
          StringGrid1.Cells[4,Fila]      := Maskedit2.Text;
        {  IF DBLookupCombobox5.visible Then StringGrid1.Cells[5,Fila] := DBLookupCombobox5.Text
          ELSE StringGrid1.Cells[5,Fila] := '';
          IF DBLookupCombobox5.visible Then StringGrid1.Cells[6,Fila] := DBLookupCombobox7.Text
          ELSE StringGrid1.Cells[6,Fila] := '';}
          StringGrid1.Cells[5,Fila]      := DBLookupCombobox5.Text;
          StringGrid1.Cells[6,Fila]      := DBLookupCombobox7.Text;
          StringGrid1.Cells[7,Fila]      := Edit6.Text;

          e    := 1;
          dEV  := 0;
          cRED := 0;
          while e < StringGrid1.RowCount - 1 do
            begin
              dEV  := dEV  +  StrToFloat(StringGrid1.Rows[e].Strings[3]);
              cRED := cRED  +  StrToFloat(StringGrid1.Rows[e].Strings[4]);
              inc(e);
            end;

          Button5.Caption := FloatToStr(dEV-cRED);  //floattostr(roundto(strtofloat(Button5.Caption),-2) + roundto(strtofloat(Maskedit1.Text),-2) - roundto(strtofloat(Maskedit2.Text),-2));
          Modi                           := False;
          DBLookupComboBox3.KeyValue     := '';
          DBLookupComboBox4.KeyValue     := '';
          DBLookupComboBox5.KeyValue     := '';
          DBLookupComboBox6.KeyValue     := '';
          DBLookupComboBox7.KeyValue     := '';
          DBLookupComboBox8.KeyValue     := '';
          Edit6.Text                     := '';
          MaskEdit1.Text                 := '0';
          MaskEdit2.Text                 := '0';
          StringGrid1.Enabled            := True;
        end;
    end
    Else Begin
      If NOT DataModule1.ctadet(trim(DBLookupComboBox3.KeyValue)) then
        showmessage('Cuenta debe ser de detalle.')
      Else showmessage('Diligencie los datos correctamente');
    end;
  end
  Else Begin
    showmessage('Error: No se pudo convertir los valores Debito o Crédito a un valor Numerico.');
  end;
  dataModule1.GuardaGrilla(StringGrid1,'GrillaComprobanteCont.txt');
  Maskedit1.Text := '';
  Maskedit2.Text := '';
  DBLookupComboBox3.SetFocus;
end;

procedure TFormCapturaComp.DataSource3DataChange(Sender: TObject; Field: TField);
begin
  if DBLookupComboBox3.Focused then DBLookupComboBox4.KeyValue := DBLookupComboBox3.KeyValue
  else DBLookupComboBox3.KeyValue := DBLookupComboBox4.KeyValue;

  if adoquerycuenta.FieldValues['Tercero']='S' Then
  Begin
    Label12.Visible := True;
    DBLookupComboBox5.Visible := True;
    DBLookupComboBox6.Visible := True;
    BitBtn2.Visible :=True;
  End
  Else Begin
    Label12.Visible := False;
    DBLookupComboBox5.Visible := False;
    DBLookupComboBox6.Visible := False;
    BitBtn2.Visible :=False;
  End;
  if adoquerycuenta.FieldValues['CentroCosto']='S' Then
  Begin
    Label13.Visible := True;
    DBLookupComboBox7.Visible := True;
    DBLookupComboBox8.Visible := True;
    BitBtn3.Visible :=True;
  End
  Else Begin
    Label13.Visible := False;
    DBLookupComboBox7.Visible := False;
    DBLookupComboBox8.Visible := False;
    BitBtn3.Visible :=False;
  End;
  if adoquerycuenta.FieldValues['Documento']='S' Then
  Begin
    Label14.Visible := True;
    Edit6.Visible := True;
    BitBtn4.Visible :=True;
    IF ADOTable1.FieldValues['Tipo'] = '2' then BitBtn5.Visible :=True;
  End
  Else Begin
    Label14.Visible := False;
    Edit6.Visible := False;
    BitBtn4.Visible :=False;
    BitBtn5.Visible :=False;
  End;

  //Nueva validacion de la tabla CONTCTxCTA
  if adoquerycuenta.FieldValues['Debito_Credito']='D' Then
  Begin
    MaskEdit1.Enabled := True;
    MaskEdit2.Enabled := False;
  End
  Else if adoquerycuenta.FieldValues['Debito_Credito']='C' Then
  Begin
    MaskEdit2.Enabled := True;
    MaskEdit1.Enabled := False;
  End
  Else Begin
    MaskEdit2.Enabled := True;
    MaskEdit1.Enabled := True;
  End;
//  if adoquerycuenta.FieldValues['Porcentaje']<>0 Then
//  Begin
//    if adoquerycuenta.FieldValues['Cuenta_Porcentaje']<>'' Then
//    Begin

//    End;
//  End;
end;

procedure TFormCapturaComp.DataSource4DataChange(Sender: TObject; Field: TField);
begin
  if DBLookupComboBox5.Focused then DBLookupComboBox6.KeyValue := DBLookupComboBox5.KeyValue
  else DBLookupComboBox5.KeyValue := DBLookupComboBox6.KeyValue;
end;

procedure TFormCapturaComp.DataSource5DataChange(Sender: TObject; Field: TField);
begin
  if DBLookupComboBox7.Focused then DBLookupComboBox8.KeyValue := DBLookupComboBox7.KeyValue
  else DBLookupComboBox7.KeyValue := DBLookupComboBox8.KeyValue;
end;

procedure TFormCapturaComp.Button2Click(Sender: TObject);
Var i:Integer;
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
    Maskedit1.Text:='';
    Maskedit2.Text:='';
    Button5.Caption:='';
    DBLookupComboBox1.Enabled := True;
    If FileExists('GrillaComprobanteCont.txt') then DELETEFILE('GrillaComprobanteCont.txt'); 

  end;
end;

procedure TFormCapturaComp.Button3Click(Sender: TObject);
Var i,j:Integer;
    grab:String;
begin
  //Validaciones
  If strtoint(rightstr(DBLookupCombobox2.Text,2)) <> monthof(DateTimePicker1.Date) then
  begin
    Showmessage('Error: La fecha debe ser dentro del periodo.');
    exit;
  End;
  If FileExists('GrillaComprobanteCont.txt') then DELETEFILE('GrillaComprobanteCont.txt');

  if Cambia = False then
   begin
     If Button5.Caption = '0' Then
     Begin
     If StringGrid1.RowCount > 2 Then
     Begin
       If (DBLookupComboBox1.KeyValue <> '') AND (DBLookupComboBox2.KeyValue <> '')  Then
       Begin
//         try
//           ADOQuery2.Open;
//         except
//           Showmessage ('ERROR: No se encuentra conectado el servidor, El sistema intentará reconectar. Si no puede, solucione el problema de red y pruebe de nuevo.');
//           ADOQuery2.Connection.Close;
//           ADOQuery2.Connection.Open;
//           ADOQuery2.Open;
//         end;
//         adoquery3.Open;

         //Graba el Encabezado
         try
           DataModule1.ADOConnection1.BeginTrans;
           Edit1.Text:=Datamodule1.Afecta_EncContabilidad(DBLookupComboBox1.KeyValue,Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja'],datetimepicker1.DateTime,Edit2.text,DBLookupComboBox2.KeyValue,Edit3.text,Edit4.text,Edit5.text,'G','');
           FormCapturaComp.Refresh;
           if leftstr(Edit1.Text,5) <> 'ERROR' Then
           Begin
             //Graba la Digitalizacion
             If NOT ImageHolder.Picture.Bitmap.Empty Then
             Begin
               ADOQuery4.Close;
               ADOQuery4.Open;
               ADOQuery4.Append;
               ADOQuery4.FieldValues['Tipo_Comprobante']   := DBLookupComboBox1.KeyValue;
               ADOQuery4.FieldValues['Numero_Comprobante'] := StrToInt(Edit1.text);
               ADOQuery4.FieldByName('Imagen').Assign(ImageHolder.Picture.Bitmap);
               ADOQuery4.Post;
             End;

             //Graba el Detalle
             For i:=1 TO (StringGrid1.RowCount-2) Do
             Begin
               try
                 grab := Datamodule1.Afecta_DetContabilidad(DBLookupComboBox1.KeyValue,Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja'],StrToInt(Edit1.text),StringGrid1.Cells[1,i],strtofloat(StringGrid1.Cells[3,i]),strtofloat(StringGrid1.Cells[4,i]),StringGrid1.Cells[5,i],StringGrid1.Cells[6,i],StringGrid1.Cells[7,i]);
               except
                 DataModule1.ADOConnection1.RollbackTrans;
                 Showmessage('Error al grabar el detalle de las cuentas.');
                 Exit;
               End;
             End;
             if leftstr(Grab,5) <> 'ERROR' Then
             Begin
               DataModule1.ADOConnection1.CommitTrans;
             End
             Else Begin
               DataModule1.ADOConnection1.RollbackTrans;
               Showmessage('ERROR: Comprobante no se pudo Grabar. (Detalle)' + Edit1.Text);
             End;
             
             if MessageDlg('Desea Imprimir el comprobante?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
             begin
               FormImpComp := tFormImpComp.create(application);
               try
                  Datamodule1.MuestraconAcceso(FormImpComp);
                  FormImpComp.DBLookupComboBox5.keyvalue := DBLookupComboBox1.KeyValue;
                  FormImpComp.Edit1.Text:= Edit1.text;
               except
                  FormImpComp.free;
               end;
             end;
           End
           Else Begin
             DataModule1.ADOConnection1.RollbackTrans;
             Showmessage('ERROR: Comprobante no se pudo Grabar. (Encabezado)' + Edit1.Text);
           End;

           For i:=1 TO (StringGrid1.RowCount-2) Do
             For j:=1 TO 6 Do
               StringGrid1.Cells[j,i] := '';
           StringGrid1.RowCount:=2;

           Maskedit1.Text:='';
           Maskedit2.Text:='';
           Button5.Caption:='';
           Edit1.Text:='';
           Edit2.Text:='';
           Edit3.Text:='';
           Edit4.Text:='';
           Edit5.Text:='';
           DateTimePicker1.DateTime:=Now;
           DBLookupComboBox3.keyvalue:='';
           DBLookupComboBox4.keyvalue:='';
           DBLookupComboBox5.keyvalue:='';
           DBLookupComboBox6.keyvalue:='';
           DBLookupComboBox7.keyvalue:='';
           DBLookupComboBox8.keyvalue:='';
           DBLookupComboBox1.Enabled := True;
           DBLookupComboBox1.setfocus;
           except
             DataModule1.ADOConnection1.RollbackTrans;
             Showmessage('ERROR: Comprobante no se pudo Grabar. ' + Edit1.Text);
           raise;
         end;

//         adoquery3.close;
//         adoquery2.close;
       end
       Else Begin
         Showmessage('El comprobante no se puede grabar hasta que se diligencien todos los campos.');
       end;
     end
     Else Begin
       Showmessage('El comprobante no se puede grabar hasta que se le ingresen cuentas');
     end;
     end
     Else Begin
     Showmessage('El comprobante no se puede grabar hasta que no este cuadrado');
     end;
   end ///Cambia = False
 else
   begin
     If StringGrid1.RowCount <= 2 Then
       begin
         Application.MessageBox('El comprobante no se puede grabar hasta que se le ingresen cuentas','Información',MB_OK+MB_ICONINFORMATION);
         Exit;
       end;

     If (DBLookupComboBox1.KeyValue = '') AND (DBLookupComboBox2.KeyValue = '')  Then
       begin
         Application.MessageBox('El comprobante no se puede grabar hasta que se diligencien todos los campos.','Información',MB_OK+MB_ICONINFORMATION);
         Exit;
       end;

   If Button5.Caption <> '0' Then
     begin
       Application.MessageBox('El comprobante no se puede grabar hasta que no este cuadrado','Información',MB_OK+MB_ICONINFORMATION);
       Exit;
     end;
   try
     DataModule1.ADOConnection1.BeginTrans;

     QryG.Close;
     QryG.Parameters.ParamValues['TCom']  := DBLookupComboBox1.KeyValue;
     QryG.Parameters.ParamValues['Ncom']  := Edit1.Text;
     QryG.Open;

     QryG2.Close;
     QryG2.Parameters.ParamValues['TCom']  := DBLookupComboBox1.KeyValue;
     QryG2.Parameters.ParamValues['Ncom']  := Edit1.Text;
     QryG2.Open;


     QryA.Close;
     QryA.SQL.Clear;
     QryA.SQL.ADD('SELECT * FROM CONTTIPOCOMP WHERE Tipo_Comprobante='+chr(39)+DBLookupComboBox1.KeyValue+chr(39));
     QryA.Open;
                         //elimina el encabezado
     QryG1.Close;
     QryG1.Parameters.ParamValues['TCom']  := DBLookupComboBox1.KeyValue;
     QryG1.Parameters.ParamValues['Ncom']  := Edit1.Text;
     QryG1.Parameters.ParamValues['Emp']   := EmpresaM;
     QryG1.ExecSQL;


     QryG.Append;
     QryG.FieldValues['Tipo_Comprobante']   := DBLookupComboBox1.KeyValue;
     QryG.FieldValues['Empresa']            := EmpresaM;
     QryG.FieldValues['Numero_Comprobante'] := Edit1.Text;
     QryG.FieldValues['Fecha_Comprobante']  := DateTimePicker1.DateTime;
     QryG.FieldValues['Descripcion']        := Edit2.Text + pchar(' Modificado en la fecha '+ DateToStr(Date) + ' Por el usuario ' + DataModule1.ADOQuery1.Fields.FieldByName('Id').AsString );
     QryG.FieldValues['Periodo_Proceso']    := DBLookupComboBox2.KeyValue;
     QryG.FieldValues['Informacion_1']      := Edit3.Text;
     QryG.FieldValues['Informacion_2']      := Edit4.Text;
     QryG.FieldValues['Informacion_3']      := Edit5.Text;
     QryG.FieldValues['Estado']             := 'G';
     QryG.FieldValues['Campo1']             := QryA.FieldValues['Campo1'];
     QryG.FieldValues['Campo2']             := QryA.FieldValues['Campo2'];
     QryG.FieldValues['Campo3']             := QryA.FieldValues['Campo3'];
     QryG.FieldValues['Area']               := DataModule1.ADOQuery1.FieldValues['Area_Trabaja'];
     QryG.FieldValues['Persona_Grabo']      := DataModule1.ADOQuery1.FieldValues['Id'];
     QryG.Post;

                     //elimina el detalle
     QryG3.Close;
     QryG3.Parameters.ParamValues['TCom']  := DBLookupComboBox1.KeyValue;
     QryG3.Parameters.ParamValues['Ncom']  := Edit1.Text;
     QryG3.Parameters.ParamValues['Emp']   := EmpresaM;
     QryG3.ExecSQL;


     i := 1;
     while i < StringGrid1.RowCount - 1 do
       begin
         QryG2.Append;
         QryG2.FieldValues['Tipo_Comprobante']   := DBLookupComboBox1.KeyValue;
         QryG2.FieldValues['Empresa']            := EmpresaM;
         QryG2.FieldValues['empresa'] := DataModule1.ADOQuery1.FieldValues['Empresa_Trabaja'];
         QryG2.FieldValues['Numero_Comprobante'] := Edit1.Text;
         QryG2.FieldValues['Cuenta']             := StringGrid1.Cells[1,i];
         QryG2.FieldValues['Tercero']            := StringGrid1.Cells[5,i];
         QryG2.FieldValues['Centro_Costo']       := StringGrid1.Cells[6,i];
         QryG2.FieldValues['Valor_Debito']       := strtofloat(StringGrid1.Cells[3,i]);
         QryG2.FieldValues['Valor_Credito']      := strtofloat(StringGrid1.Cells[4,i]);
         QryG2.FieldValues['DocSoporte']         := StringGrid1.Cells[7,i];
         QryG2.Post;
         inc(i);
       end;
     DataModule1.ADOConnection1.CommitTrans;

     For i:=1 TO (StringGrid1.RowCount-2) Do
       For j:=1 TO 6 Do
         StringGrid1.Cells[j,i] := '';
     StringGrid1.RowCount:=2;

     Modi                           := False;
     DBLookupComboBox3.KeyValue     := '';
     DBLookupComboBox4.KeyValue     := '';
     DBLookupComboBox5.KeyValue     := '';
     DBLookupComboBox6.KeyValue     := '';
     DBLookupComboBox7.KeyValue     := '';
     DBLookupComboBox8.KeyValue     := '';
     Edit6.Text                     := '';
     MaskEdit1.Text                 := '0';
     MaskEdit2.Text                 := '0';
     StringGrid1.Enabled            := True;
     Application.MessageBox('Documento actualizado correctamente','Información',MB_OK+MB_ICONINFORMATION);

   except
     DataModule1.ADOConnection1.RollbackTrans;
     Application.MessageBox('No se pudo actualizar el documento..por favor comuniquese con Help Desk','Error',MB_OK+MB_ICONERROR);
   end;

   end; ///Cambia = False
end;

procedure TFormCapturaComp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure TFormCapturaComp.BitBtn1Click(Sender: TObject);
begin
  FormPlanCta := tFormPlanCta.create(application);
  try
    Datamodule1.MuestraconAcceso(FormPlanCta);
  except
    FormPlanCta.free;
  end;
end;

procedure TFormCapturaComp.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
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

procedure TFormCapturaComp.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
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

procedure TFormCapturaComp.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  label5.Visible:=false;
  label6.Visible:=false;
  label7.Visible:=false;
  Edit3.Visible:=false;
  Edit4.Visible:=false;
  Edit5.Visible:=false;
  if (ADOTable1.FieldValues['campo1'] <> null) AND (trim(ADOTable1.FieldValues['campo1']) <> '') then
  begin
    label5.Visible:=true;
    label5.Caption:=ADOTable1.FieldValues['campo1'];
    Edit3.Visible:=true;
  end;
  if (ADOTable1.FieldValues['campo2'] <> null) AND (trim(ADOTable1.FieldValues['campo2']) <> '') then
  begin
    label6.Visible:=true;
    label6.Caption:=ADOTable1.FieldValues['campo2'];
    Edit4.Visible:=true;
  end;
  if (ADOTable1.FieldValues['campo3'] <> null) AND (trim(ADOTable1.FieldValues['campo3']) <> '') then
  begin
    label7.Visible:=true;
    label7.Caption:=ADOTable1.FieldValues['campo3'];
    Edit5.Visible:=true;
  end;
end;

procedure TFormCapturaComp.EliminarRegistro1Click(Sender: TObject);
var  RowNumber  : Integer;
begin
  Button5.Caption := floattostr(strtofloat(StringGrid1.Cells[3,StringGrid1.Row]) - strtofloat(Button5.Caption));
  Button5.Caption := floattostr(strtofloat(StringGrid1.Cells[4,StringGrid1.Row]) - strtofloat(Button5.Caption));
  GridDelRow(RowNumber, StringGrid1);
end;

procedure TFormCapturaComp.BitBtn2Click(Sender: TObject);
begin
  FrmCrearTerceros := tFrmCrearTerceros.create(application);
  try
    Datamodule1.MuestraconAcceso(FrmCrearTerceros);
  except
    FrmCrearTerceros.free;
  end;
end;

procedure TFormCapturaComp.BitBtn3Click(Sender: TObject);
begin
  FormCentrosCosto := tFormCentrosCosto.create(application);
  try
    Datamodule1.MuestraconAcceso(FormCentrosCosto);
  except
    FormCentrosCosto.free;
  end;
end;

{Acquire into image}
procedure TFormCapturaComp.Button4Click(Sender: TObject);
var
  SelectedSource: Integer;
begin
  {It is always recommended to load library dynamically, never forcing}
  {final user to have twain installed}
//  if Twain.LoadLibrary then
//  begin
//    {Load source manager}
//    Twain.SourceManagerLoaded := TRUE;
//    {Allow user to select source}
//    SelectedSource := Twain.SelectSource;
//    if SelectedSource <> -1 then
//    begin
//      {Load source, select transference method and enable (display interface)}
//      Twain.Source[SelectedSource].Loaded := TRUE;
//      Twain.Source[SelectedSource].TransferMode := ttmMemory;
//      Twain.Source[SelectedSource].Enabled := TRUE;
//    end {if SelectedSource <> -1}

//  end
//  else
    showmessage('Twain is not installed.');
end;

procedure TFormCapturaComp.TwainTwainAcquire(Sender: TObject;
  const Index: Integer; Image: TBitmap; var Cancel: Boolean);
begin
  ImageHolder.Picture.Assign(Image);
  Cancel := TRUE;  {Only want one image}
end;

procedure TFormCapturaComp.FormCreate(Sender: TObject);
var mm:integer;
begin
  DateTimePicker1.DateTime:=Now;
  adoquery1.open;

  StringGrid1.Cells[1,0]:= 'Codigo Cuenta';
  StringGrid1.Cells[2,0]:= 'Descripción';
  StringGrid1.Cells[3,0]:= 'Valor Debito';
  StringGrid1.Cells[4,0]:= 'Valor Credito';
  StringGrid1.Cells[5,0]:= 'Tercero';
  StringGrid1.Cells[6,0]:= 'Centro Costo';
  StringGrid1.Cells[7,0]:= 'Documento Soporte';

  StringGrid1.ColWidths[0]:= 30;
  StringGrid1.ColWidths[1]:= 100;
  StringGrid1.ColWidths[2]:= 300;
  StringGrid1.ColWidths[3]:= 100;
  StringGrid1.ColWidths[4]:= 100;
  StringGrid1.ColWidths[5]:= 100;
  StringGrid1.ColWidths[6]:= 100;
  StringGrid1.ColWidths[7]:= 100;

  Maskedit1.Text:='';
  Maskedit2.Text:='';
  Button5.Caption:='';

  Modi    := False;
  Cambia  := False;
  Fila    := 1;

  dataModule1.RecuperaGrilla(StringGrid1,'GrillaComprobanteCont.txt');
  Button5.Caption := '0';
  For mm:=1 To StringGrid1.RowCount-1 Do
  Begin
    If ((StringGrid1.Cells[3,mm] <> '') and (StringGrid1.Cells[4,mm]<> '')) then Button5.Caption := floattostr(roundto(strtofloat(Button5.Caption),-2) + roundto(strtofloat(StringGrid1.Cells[3,mm]),-2) - roundto(strtofloat(StringGrid1.Cells[4,mm]),-2));
  End;
end;

procedure TFormCapturaComp.BitBtn8Click(Sender: TObject);
begin
{  DataModule1.DataModuleCreate(Nil);
  FormCapturaComp.FormCreate(Nil);
  FormCapturaComp.FormActivate(Nil);}
end;

procedure TFormCapturaComp.Button5Click(Sender: TObject);
begin
  if strtofloat(Button5.Caption) > 0 then Maskedit2.Text := floattostr(abs(strtofloat(Button5.Caption)))
  else Maskedit1.Text := floattostr(abs(strtofloat(Button5.Caption)));
end;

procedure TFormCapturaComp.BtnModificarClick(Sender: TObject);
begin
  if DBLookupComboBox1.Text <> '' Then
  Begin
    FrmBuscarComprobante  := TFrmBuscarComprobante.Create(Self);
    try
      DataModule1.MuestraconAcceso(FrmBuscarComprobante);
    except
      FrmBuscarComprobante.Free;
    end;
  end
  else showmessage('Ingrese primero el tipo de comprobante.');  
end;

procedure TFormCapturaComp.Modificar1Click(Sender: TObject);
begin
  DBLookupComboBox4.KeyValue  := StringGrid1.Rows[StringGrid1.Row].Strings[1];//DBLookupComboBox3.KeyValue;
  DBLookupComboBox3.KeyValue  := DBLookupComboBox4.KeyValue;
  DBLookupComboBox6.KeyValue  := StringGrid1.Rows[StringGrid1.Row].Strings[5];//DBLookupComboBox5.KeyValue;
  DBLookupComboBox5.KeyValue  := DBLookupComboBox6.KeyValue;
  DBLookupComboBox8.KeyValue  := StringGrid1.Rows[StringGrid1.Row].Strings[6];//DBLookupComboBox7.KeyValue;
  DBLookupComboBox7.KeyValue  := DBLookupComboBox8.KeyValue;
  Edit6.Text                  := StringGrid1.Rows[StringGrid1.Row].Strings[7];
  MaskEdit1.Text              := StringGrid1.Rows[StringGrid1.Row].Strings[3];
  MaskEdit2.Text              := StringGrid1.Rows[StringGrid1.Row].Strings[4];
  StringGrid1.Enabled         := False;
  Modi                        := True;
end;

procedure TFormCapturaComp.StringGrid1Click(Sender: TObject);
begin
  Fila  := StringGrid1.Row;
end;

procedure TFormCapturaComp.DBLookupComboBox1Exit(Sender: TObject);
begin
  adoquerycuenta.Close;
  ADOQueryCuenta.Parameters.ParamValues['Tc'] := DBLookupComboBox1.KeyValue;
  adoquerycuenta.Open;

  ADOQueryTercero.Close;
  ADOQueryTercero.Parameters.ParamValues['TIPComp'] := DBLookupComboBox1.KeyValue;
  ADOQueryTercero.Open;
end;

procedure TFormCapturaComp.DBLookupComboBox5Exit(Sender: TObject);
begin
  ADOQuery5.Close;
  ADOQuery5.Parameters.ParamValues['TIPComp']   := DBLookupComboBox1.KeyValue;
  ADOQuery5.Parameters.ParamValues['TIPTerce']  := ADOQueryTercero.FieldValues['Tipo_Tercero'];
  ADOQuery5.Parameters.ParamValues['Cta']       := DBLookupComboBox3.KeyValue;
  ADOQuery5.Open;
  If ADOQuery5.RecordCount = 1 Then
  Begin
      if strtofloat(Button5.Caption) > 0 then Maskedit1.Text := floattostr(abs(strtofloat(Button5.Caption)*ADOQuery5.FieldValues['porcentaje']/100))
      else Maskedit2.Text := floattostr(abs(strtofloat(Button5.Caption)*ADOQuery5.FieldValues['porcentaje']/100));
  End;
  Edit6.Text := '';
  IF ADOTable1.FieldValues['Tipo'] = '2' Then Edit6.Enabled := false
  else Edit6.Enabled := true;
end;

procedure TFormCapturaComp.Edit6Exit(Sender: TObject);
begin
  IF ADOTable1.FieldValues['Tipo'] = '1' Then
  Begin
    ADOQueryTemp.Close;
    ADOQueryTemp.SQL.Clear;
    ADOQueryTemp.SQL.Add('SELECT * FROM CONTDetComp WHERE Tipo_Comprobante = '+chr(39)+ DBLookupComboBox1.Text +chr(39)+' AND Tercero = '+chr(39)+ DBLookupComboBox5.Text +chr(39)+' AND DocSoporte = '+chr(39)+trim(Edit6.Text)+chr(39));
    ADOQueryTemp.Open;
    if ADOQueryTemp.RecordCount > 0 Then
    Begin
      Showmessage('ERROR: Este numero de documento '+ trim(Edit6.Text) +' ya existe para este Tercero en un Tipo de Comprobante igual, Verifique que no haya ingresado ya el documento.');
      Edit6.Text := '';
    End;
  End
  Else IF ADOTable1.FieldValues['Tipo'] = '2' Then Begin
    ADOQueryTemp.Close;
    ADOQueryTemp.SQL.Clear;
    ADOQueryTemp.SQL.Add('SELECT * FROM CONTDetComp,CONTTipoComp WHERE CONTDetComp.Tipo_Comprobante = CONTTipoComp.Tipo_Comprobante AND Tipo = '+chr(39)+ '1' +chr(39)+' AND Tercero = '+chr(39)+ DBLookupComboBox5.Text +chr(39)+' AND DocSoporte = '+chr(39)+trim(Edit6.Text)+chr(39));
    ADOQueryTemp.Open;
    if ADOQueryTemp.RecordCount = 0 Then
    Begin
      Showmessage('ERROR: Este numero de documento '+ trim(Edit6.Text) +' NO existe para este Tercero en un Comprobante de Causación, Verifique que haya ingresado el documento correcto.');
      Edit6.Text := '';
    End
    Else Begin
      ADOQueryTemp.Close;
      ADOQueryTemp.SQL.Clear;
      ADOQueryTemp.SQL.Add('SELECT * FROM CONTDetComp,CONTTipoComp WHERE CONTDetComp.Tipo_Comprobante = CONTTipoComp.Tipo_Comprobante AND Tipo = '+chr(39)+ '2' +chr(39)+' AND Tercero = '+chr(39)+ DBLookupComboBox5.Text +chr(39)+' AND DocSoporte = '+chr(39)+trim(Edit6.Text)+chr(39));
      ADOQueryTemp.Open;
      if ADOQueryTemp.RecordCount > 0 Then
      Begin
        Showmessage('PREVENCION: Este numero de documento '+ trim(Edit6.Text) +' YA existe para este Tercero en un Comprobante de Pago, Verifique que haya ingresado el documento correcto.');
      End;
    End;
  End;
end;

procedure TFormCapturaComp.BitBtn4Click(Sender: TObject);
begin
  if DBLookupComboBox5.Text <> '' Then
  Begin
    FListDocSop := tFListDocSop.create(application);
    try
      FListDocSop.ADOQuery1.Close;
      FListDocSop.ADOQuery1.SQL.Clear;
      FListDocSop.ADOQuery1.SQL.Add('SELECT Left(A.Tipo_Comprobante+'+chr(39)+'-'+chr(39)+'+convert(varchar,A.Numero_Comprobante),15) As Comprob,left(B.Descripcion,25) as Descripcion,Cuenta,Left(A.DocSoporte,15) as DocSoporte,A.Valor_Debito,A.Valor_Credito, ');
      FListDocSop.ADOQuery1.SQL.Add('  (SELECT sum(C.Valor_Debito) - sum(C.Valor_Credito) ');
	    FListDocSop.ADOQuery1.SQL.Add('   FROM CONTDetComp as C,CONTTipoComp as D ');
	    FListDocSop.ADOQuery1.SQL.Add('   WHERE C.Tipo_Comprobante = D.Tipo_Comprobante ');
	    FListDocSop.ADOQuery1.SQL.Add('   AND C.DocSoporte = A.DocSoporte ');
	    FListDocSop.ADOQuery1.SQL.Add('   AND D.Tipo = '+chr(39)+ '2' +chr(39));
	    FListDocSop.ADOQuery1.SQL.Add('   AND C.Tercero = '+chr(39)+ DBLookupComboBox5.Text +chr(39));
 	    FListDocSop.ADOQuery1.SQL.Add('   AND C.Cuenta = '+chr(39)+ DBLookupComboBox3.Text +chr(39)+') AS Total_Egresado ');
      FListDocSop.ADOQuery1.SQL.Add(' FROM CONTDetComp as A,CONTTipoComp as B' );
      FListDocSop.ADOQuery1.SQL.Add(' WHERE A.Tipo_Comprobante = B.Tipo_Comprobante');
      FListDocSop.ADOQuery1.SQL.Add(' AND A.DocSoporte <> '+chr(39)+chr(39));
      FListDocSop.ADOQuery1.SQL.Add(' AND Tipo = '+chr(39)+ '1' +chr(39));
      FListDocSop.ADOQuery1.SQL.Add(' AND A.Tercero = '+chr(39)+ DBLookupComboBox5.Text +chr(39));
      FListDocSop.ADOQuery1.SQL.Add(' AND A.Cuenta = '+chr(39)+ DBLookupComboBox3.Text +chr(39));
      FListDocSop.ADOQuery1.Open;
      //FlistDocSop.DBGrid1.Columns.Items[7].Color := clInactiveCaption;
      
      Datamodule1.MuestraconAcceso(FormCapturaComp);
    except
      FormCapturaComp.free;
    end;
  end
  Else Showmessage('Debe ingresar primero el Tercero.');
end;

procedure TFormCapturaComp.Edit6Enter(Sender: TObject);
begin
  If DBlookupComboBox5.Text = '' Then
  Begin
    Showmessage('ERROR: Ingrese primero el tercero.');
    DBLookupComboBox5.SetFocus;
  End;
end;

procedure TFormCapturaComp.BitBtn5Click(Sender: TObject);
begin
  if edit6.Text <> '' then
  begin
    FListDocSop := tFListDocSop.create(application);
    try
      FListDocSop.ADOQuery1.Close;
      FListDocSop.ADOQuery1.SQL.Clear;
      FListDocSop.ADOQuery1.SQL.Add('SELECT CONTDetComp.Tipo_Comprobante+'+chr(39)+'-'+chr(39)+'+convert(varchar,CONTDetComp.Numero_Comprobante) As Comprob,left(CONTTipoComp.Descripcion,25) as Descripcion,Cuenta,Left(DocSoporte,15) as DocSoporte,Valor_Debito,Valor_Credito FROM CONTDetComp,CONTTipoComp ' +
       ' WHERE CONTDetComp.Tipo_Comprobante = CONTTipoComp.Tipo_Comprobante AND Tipo = '+
        chr(39)+ '2' +chr(39)+' AND Tercero = '+chr(39)+ DBLookupComboBox5.Text +chr(39)+' AND DocSoporte = '+chr(39)+ edit6.text +chr(39));
      FListDocSop.ADOQuery1.Open;

      Datamodule1.MuestraconAcceso(FormCapturaComp);
    except
      FormCapturaComp.free;
    end;
  end
  else showmessage('Seleccione primero un documento de causación.');  
end;

end.
