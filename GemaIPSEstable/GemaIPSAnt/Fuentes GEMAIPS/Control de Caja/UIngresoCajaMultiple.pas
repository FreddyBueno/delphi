unit UIngresoCajaMultiple;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, DB, ADODB, Mask,
  ComCtrls, Buttons, Menus,StrUtils,DateUtils,Libreria_Prateinco;

type
  TIngresosFacturaM = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    StringGridCaja: TStringGrid;
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    Memo1: TMemo;
    PopupMenu1: TPopupMenu;
    EliminarRegistro1: TMenuItem;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label5: TLabel;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    DBText2: TDBText;
    Label6: TLabel;
    DBText3: TDBText;
    GroupBox4: TGroupBox;
    Shape1: TShape;
    Label7: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label17: TLabel;
    MaskEditVP: TMaskEdit;
    MaskEditValor: TMaskEdit;
    MaskEditFaltante: TMaskEdit;
    MaskEditTPagado: TMaskEdit;
    DBText1: TDBText;
    Label8: TLabel;
    Label9: TLabel;
    DBText4: TDBText;
    ADOTable3: TADOTable;
    ADOQuery2: TADOQuery;
    ADOQuery1: TADOQuery;
    Label19: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DataSource1: TDataSource;
    DBLookupComboBox3: TDBLookupComboBox;
    ADOQuery3: TADOQuery;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    DBLookupComboBox7: TDBLookupComboBox;
    DataSource2: TDataSource;
    ADOQueryConceptos: TADOQuery;
    Label15: TLabel;
    MaskEditTF: TMaskEdit;
    CheckBox1: TCheckBox;
    Label16: TLabel;
    DBLookupComboBox8: TDBLookupComboBox;
    DataSource3: TDataSource;
    ADOQuery4: TADOQuery;
    Label18: TLabel;
    DBLookupComboBox9: TDBLookupComboBox;
    DataSource4: TDataSource;
    ADOQuery5: TADOQuery;
    Label20: TLabel;
    DBLookupComboBox10: TDBLookupComboBox;
    DataSource6: TDataSource;
    ADOQueryEncFacturas: TADOQuery;
    DataSource5: TDataSource;
    ADOQuery6: TADOQuery;
    ADOConnection1: TADOConnection;
    QryApoyo: TADOQuery;
    ADOQCierres: TADOQuery;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MaskEditValorKeyPress(Sender: TObject; var Key: Char);
    procedure DataSource4DataChange(Sender: TObject; Field: TField);
    procedure EliminarRegistro1Click(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DataSource6DataChange(Sender: TObject; Field: TField);
    procedure MaskEditValorChange(Sender: TObject);
    procedure MaskEditValorClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
    procedure CheckBox1Click(Sender: TObject);
    procedure DBLookupComboBox3Exit(Sender: TObject);
    procedure DBLookupComboBox10Exit(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
  private
       pp:array[1..100] of string;
    {    Private declarations }
  public
    { Public declarations }
  end;

var
  IngresosFacturaM: TIngresosFacturaM;
  ValorTotal : Integer;

implementation

uses UDataModule1, FCajaFormato;


{$R *.dfm}

procedure TIngresosFacturaM.FormActivate(Sender: TObject);
begin
  DateTimePicker1.DateTime:=Now;

  StringGridCaja.Cells[1,0]:= 'Empresa';
  StringGridCaja.Cells[2,0]:= 'Factura';
  StringGridCaja.Cells[3,0]:= 'Valor_a_Pagar';
  StringGridCaja.Cells[4,0]:= 'Concepto';
  StringGridCaja.Cells[5,0]:= 'Descripcion';
  StringGridCaja.Cells[6,0]:= 'Valor';

  StringGridCaja.ColWidths[0]:= 30;
  StringGridCaja.ColWidths[1]:= 30;
  StringGridCaja.ColWidths[2]:= 100;
  StringGridCaja.ColWidths[3]:= 100;
  StringGridCaja.ColWidths[4]:= 100;
  StringGridCaja.ColWidths[5]:= 300;
  StringGridCaja.ColWidths[6]:= 100;
end;

//////////////* Borrar un solo registro */////////////////////////////
procedure GridDelRow(RowNumber : Integer; StringGridCaja : TStringGrid);
var i : Integer;
begin
  RowNumber := StringGridCaja.Row;
  if StringGridCaja.Cells[2,RowNumber] <> '' then
    begin
    StringGridCaja.RowCount := StringGridCaja.RowCount - 1;
    for i := RowNumber To StringGridCaja.RowCount - 1 do
    begin
      StringGridCaja.Rows[i] := StringGridCaja.Rows[i+ 1];
      if  StringGridCaja.Cells[0,i] <> '' then
          StringGridCaja.Cells[0,i] := IntToStr((StrToInt(StringGridCaja.Cells[0,i]))-1);
    end;
    end
    else
    showmessage('No es posible eliminar este campo');
end;
/////////////////////////////////////////////////////////////////////


procedure TIngresosFacturaM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure TIngresosFacturaM.MaskEditValorKeyPress(Sender: TObject; var Key: Char);
Var prb:Extended;
begin
  if (( (key >= char(14)) and (key < '0')) or (key > '9')) and (key <> '.') then
    key := char(0)
  else if (key = '.') and (pos('.',maskeditValor.Text) <> 0) then
    key := char(0)
  else
  begin
    if not (key <= char(14)) then
    begin
      if trystrtofloat(maskeditValor.Text+key,prb) = FALSE then
      begin
        showmessage('Error en el valor digitado');
        maskeditValor.text:='';
      end;
    end;
  end;
end;

procedure TIngresosFacturaM.DataSource4DataChange(Sender: TObject;
  Field: TField);
begin
end;

////////////////** EVENTO ELIMINAR REGISTRO **//////////////////
procedure TIngresosFacturaM.EliminarRegistro1Click(Sender: TObject);
var  RowNumber  : Integer;
     i,m,x, e   : Integer;
     cad        : string;
     fac        : string;
     Val        : string;
begin
//     for x:=1 to 100 do pp[x]:='';
//  MaskeditFaltante.Text:= floattostr(strtofloat(MaskeditFaltante.Text)+strtofloat(StringGridCaja.Cells[5,StringGridCaja.row]));
   fac  := StringGridCaja.Rows[StringGridCaja.Row].Strings[1];
   Val  := StringGridCaja.Rows[StringGridCaja.Row].Strings[10];
   GridDelRow (RowNumber, StringGridCaja);
   i := 1;
   e := 0;
   while i < StringGridCaja.RowCount - 1 do
     begin
       if fac = StringGridCaja.Rows[i].Strings[1] then
         inc(e);
       inc(i);
     end;

   if e = 0 then
     begin
       MaskEditTF.Text:= floattostr(strtofloat(MaskEditTF.Text)-strtofloat(val));
       for x:=1 to 100 do
         begin
           if pp[x]= fac then
             pp[x]:= '';
         end;
     end;

  MaskEditTPagado.Text := '0';
  i := 1;
  while i < StringGridCaja.RowCount - 1 do
    begin
      MaskEditTPagado.Text :=  floattostr(strtofloat(MaskEditTPagado.Text) + strtofloat(StringGridCaja.Rows[i].Strings[5]));
      inc(i);
    end;
  MaskEditTPagado.Text:=Format('%16.2n',[StrToFloat(MaskEditTPagado.Text)]);
   ///
   //   maskeditTF.Text:='0';
   //   MaskeditFaltante.Text:='0';
  {    for m:=1 to StringGridCaja.RowCount-1 do
      Begin
        x:=0;
        repeat
          inc(x);
        until (pp[x] = '') OR (pp[x] = StringGridCaja.Cells[1,m]) or (x>100) ;
        if (pp[x] = '') and (StringGridCaja.Cells[2,m] <> '') Then Begin
          cad:=StringGridCaja.Cells[2,m];
          while Pos(',', cad) > 0 do Delete(cad,Pos(',', cad),1);
          maskeditTF.Text := floattostr(strtofloat(cad) + strtofloat(maskeditTF.Text));
        End;
        IF StringGridCaja.Cells[5,m] <> '' Then MaskeditFaltante.Text:= floattostr(strtofloat(MaskeditFaltante.Text)+strtofloat(StringGridCaja.Cells[5,m]));
        pp[x]:=StringGridCaja.Cells[1,m];
      End;  }
      cad:=MaskEditTPagado.Text;
      while Pos(',', cad) > 0 do Delete(cad,Pos(',', cad),1);
      MaskeditFaltante.Text:= floattostr(strtofloat(cad)-strtofloat(maskeditTF.Text)); ///

  if StringGridCaja.RowCount = 2 then
    begin
      MaskEditTF.Text        := '0';
      MaskEditFaltante.Text  := '0';
    end;
end;

//////////////** LIMPIAR MASKEDIT **///////////////////////////
procedure TIngresosFacturaM.DBLookupComboBox3Click(Sender: TObject);
begin
end;

/////////////////** POPUPMENU SOBRE PUNTERIO **///////////////////
procedure TIngresosFacturaM.PopupMenu1Popup(Sender: TObject);
var pt : Tpoint;
begin
   SetForegroundWindow(Handle);
   GetCursorPos(pt);
   PopupMenu1.Popup(pt.x,pt.y);
end;

procedure TIngresosFacturaM.SpeedButton3Click(Sender: TObject);
Var
  i,m,x:Integer;
  cad:string;
  pp:array[1..100] of string;
  Cad1  : string;
begin
  If DBlookupComboBox8.Text = '' Then
  Begin
    Showmessage('ERROR: No se muede grabar el ingreso sin Documento.');
    exit
  End;

  If DBlookupComboBox9.Text = '' Then
  Begin
    Showmessage('ERROR: No se muede grabar el ingreso sin Tipo Documento.');
    exit
  End;

  for x:=1 to 100 do pp[x]:='';

  maskeditTF.Text:='0';
  MaskeditFaltante.Text:='0';
  for m:=1 to StringGridCaja.RowCount-1 do
  Begin
    x:=0;
    repeat
      inc(x);
    until (pp[x] = '') OR (pp[x] = StringGridCaja.Cells[2,m]) or (x>100) ;
    if (pp[x] = '') and (StringGridCaja.Cells[3,m] <> '') Then Begin
      cad:=StringGridCaja.Cells[3,m];
      while Pos(',', cad) > 0 do Delete(cad,Pos(',', cad),1);
      maskeditTF.Text := floattostr(strtofloat(cad) + strtofloat(maskeditTF.Text));
    End;
    IF StringGridCaja.Cells[6,m] <> '' Then MaskeditFaltante.Text:= floattostr(strtofloat(MaskeditFaltante.Text)+strtofloat(StringGridCaja.Cells[6,m]));
    pp[x]:=StringGridCaja.Cells[2,m];
  End;
  MaskeditFaltante.Text:= floattostr(strtofloat(MaskeditFaltante.Text)-strtofloat(maskeditTF.Text));

  IF MaskEditFaltante.Text <> '0' Then
  Begin
    if MessageDlg('No es totalmente cuadrado, desea grabarlo con Faltantes o Sobrantes?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Else Exit;
  End;

  ADOQuery1.Open;
  ADOTable3.Close;
  ADOTable3.Open;
  If StringGridCaja.RowCount > 2 Then
  Begin
    //Graba el Encabezado
    try
      DataModule1.ADOConnection1.BeginTrans;

      Cad1 := '';
      Cad1 := pchar(DataModule1.ADOQuery1.Fields.FieldByName('EMPRESA_TRABAJA').AsString + '%');
      QryApoyo.Close;
      QryApoyo.SQL.Clear;
      QryApoyo.SQL.Add('SELECT MAX(Numero_Ingreso)+1 as CON');
      QryApoyo.SQL.Add(' FROM CAIngresos');
      QryApoyo.SQL.Add(' WHERE DOCUMENTO = '''+ADOQuery4.Fields.FieldByName('Tipo_Documento').AsString+'''');
      QryApoyo.SQL.Add(' AND NUMERO_INGRESO LIKE '''+Cad1+'''');
      QryApoyo.Open;

      if QryApoyo.Fields.FieldByName('CON').AsString <> '' Then edit1.Text:= alineardatos(QryApoyo.Fields.FieldByName('CON').AsString,6)
      Else Edit1.Text := DataModule1.ADOQuery1.Fields.FieldByName('EMPRESA_TRABAJA').AsString + alineardatos('1',6);

      ADOQuery1.Append;
      ADOQuery1.FieldValues['Documento']      := DBLookupComboBox8.KeyValue;
      ADOQuery1.FieldValues['Numero_Ingreso'] := strtoint(Edit1.text);
      ADOQuery1.FieldValues['Tipo_Documento'] := DBLookupComboBox9.KeyValue;
      ADOQuery1.FieldValues['Fecha']          := datetimepicker1.DateTime;
      ADOQuery1.FieldValues['Doc_Pagador']    := DBLookupComboBox2.Text;
      ADOQuery1.FieldValues['Nombre_Pagador'] := DBLookupComboBox3.Text;
      ADOQuery1.FieldValues['Concepto']       := Memo1.Text;
      ADOQuery1.FieldValues['Id']             := Datamodule1.ADOQuery1.FieldValues['Id'];
      ADOQuery1.FieldValues['Empresa_Graba']  := Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja'];
      ADOQuery1.Post;

      //Graba el Detalle
      For i:=1 TO (StringGridCaja.RowCount-2) Do
      Begin
        ADOQueryEncFacturas.Filter:='Empresa = '+chr(39)+StringGridCaja.Cells[1,i]+chr(39)+' AND Numero_Factura ='+chr(39)+StringGridCaja.Cells[2,i]+chr(39);
        ADOQueryEncFacturas.Filtered:=True;
        If ADOQueryEncFacturas.RecordCount=1 Then
        Begin
          ADOQueryEncFacturas.Edit;
          ADOQueryEncFacturas.FieldValues['Pagada_Total'] :='S';
          ADOQueryEncFacturas.FieldValues['Estado']       :='P';
          ADOQueryEncFacturas.Post;
        End;

        ADOQuery2.Open;
        ADOQuery2.Insert;
        ADOQuery2.FieldValues['Documento']        := DBLookupComboBox8.KeyValue;
        ADOQuery2.FieldValues['Numero_Ingreso']   := strtoint(Edit1.text);
        ADOQuery2.FieldValues['Empresa']          := StringGridCaja.Cells[1,i];
        ADOQuery2.FieldValues['Numero_Factura']   := StringGridCaja.Cells[2,i];
        ADOQuery2.FieldValues['concepto']         := StringGridCaja.Cells[4,i];
        ADOQuery2.FieldValues['Valor']            := strtofloat(StringGridCaja.Cells[6,i]);
        ADOQuery2.Post;
      end;

      DataModule1.ADOConnection1.CommitTrans;
      showmessage('El Ingreso se grabo con el Numero: '+edit1.Text);

      //******************************************************
      //Impresion
      //******************************************************
      if MessageDlg('Desea Imprimir el Ingreso?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        CajaFormato := tCajaFormato.create(application);
        try
          Datamodule1.MuestraconAcceso(CajaFormato);
        except
          CajaFormato.free;
        end;

        CajaFormato.ADOQuery1.Close;
        CajaFormato.ADOQuery1.Parameters.ParamValues['doc']   := DBLookUpComboBox8.KeyValue;
        CajaFormato.ADOQuery1.Parameters.ParamValues['nofact']:= edit1.Text;
        CajaFormato.ADOQuery1.Open;
        CajaFormato.ADOQuery2.Close;
        CajaFormato.ADOQuery2.Parameters.ParamValues['doc']   := DBLookUpComboBox8.KeyValue;
        CajaFormato.ADOQuery2.Parameters.ParamValues['nofact']:= edit1.Text;
        CajaFormato.ADOQuery2.Open;
        CajaFormato.ADOQuery3.Close;
        CajaFormato.ADOQuery3.Parameters.ParamValues['doc']   := DBLookUpComboBox8.KeyValue;
        CajaFormato.ADOQuery3.Parameters.ParamValues['nofact']:= edit1.Text;
        CajaFormato.ADOQuery3.Open;
        IF CajaFormato.ADOQuery2.FieldValues['Valor'] = null then CajaFormato.QRLabel24.Caption:= 'SIN PAGO'
        ELSE CajaFormato.QRLabel24.Caption:= xIntToLletras(CajaFormato.ADOQuery2.FieldValues['Valor'])+ ' Pesos.';
        CajaFormato.QuickRep1.PreviewInitialState := wsMaximized;
        CajaFormato.QuickRep1.PreviewModal;
        CajaFormato.Close;
      end;
      //*****************************************************
      for i:=1 to StringGridCaja.RowCount-1 do
      begin
        StringGridCaja.Cells[1,i] := '';
        StringGridCaja.Cells[2,i] := '';
        StringGridCaja.Cells[3,i] := '';
        StringGridCaja.Cells[4,i] := '';
        StringGridCaja.Cells[5,i] := '';
        StringGridCaja.Cells[6,i] := '';
        MaskEditTPagado.Text := '0';
        MaskEditFaltante.Text := '0';
      end;
      StringGridCaja.RowCount:=2;

      Edit1.Text:='';
      Memo1.Text:='';
      DateTimePicker1.DateTime:=Now;
      Panel2.Enabled:=True;
    except
      DataModule1.ADOConnection1.RollbackTrans;
      raise;
    end;
  end;
end;

procedure TIngresosFacturaM.SpeedButton1Click(Sender: TObject);
Var valor:currency;
    m,n,x,i:integer;
    cad:string;
//    pp:array[1..100] of string;
Begin
  for x:=1 to 100 do pp[x]:='';

  IF DBLookupCombobox6.Text = '' Then Begin
    Showmessage('No se pueden asignar Conceptos sin Cuentas Contables.');
    Exit;
  End;
  IF DBLookupCombobox7.Text = '' Then Begin
    Showmessage('No se pueden asignar Conceptos sin Tipos.');
    Exit;
  End;

  n:=0;
  for m:=1 to StringGridCaja.RowCount-1 do
  Begin
    if checkbox1.Checked = False Then Begin
      if (StringGridCaja.Cells[2,m] = ADOQueryEncFacturas.FieldValues['Numero_Factura']) AND
         (StringGridCaja.Cells[4,m] = DBLookupCombobox4.Text) Then
           n:=1;
    End
    Else Begin
      if (StringGridCaja.Cells[2,m] = 'SIN FACTURA') AND
         (StringGridCaja.Cells[4,m] = DBLookupCombobox4.Text) Then
           n:=1;
    End;
  End;
  IF n=1 Then Begin
    Showmessage('Concepto ya ingresado en esta factura.');
    Exit;
  End;

  IF strtofloat(MaskeditValor.Text) <> 0 Then Begin
    StringGridCaja.Cells[0,StringGridCaja.RowCount-1]  := inttostr(StringGridCaja.RowCount-1);
    StringGridCaja.Cells[1,StringGridCaja.RowCount-1]  := DBLookupCombobox10.Text;
    If checkbox1.Checked = False then StringGridCaja.Cells[2,StringGridCaja.RowCount-1]  := ADOQueryEncFacturas.FieldValues['Numero_Factura']
    Else StringGridCaja.Cells[2,StringGridCaja.RowCount-1]  := 'SIN FACTURA';
    StringGridCaja.Cells[3,StringGridCaja.RowCount-1]  := MaskeditVP.Text;
    StringGridCaja.Cells[4,StringGridCaja.RowCount-1]  := DBLookupCombobox4.Text;
    StringGridCaja.Cells[5,StringGridCaja.RowCount-1]  := DBLookupCombobox5.Text;
    StringGridCaja.Cells[6,StringGridCaja.RowCount-1]  := MaskeditValor.Text;
//&&&&    StringGridCaja.Cells[10,StringGridCaja.RowCount-1] := DBText1.Caption;

    StringGridCaja.RowCount := StringGridCaja.RowCount + 1;

    Try
      cad:=MaskEditTPagado.Text;
      while Pos(',', cad) > 0 do Delete(cad,Pos(',', cad),1);
      valor := strtofloat(cad);
      IF DBLookupComboBox7.Text = 'P' Then valor:= strtofloat(MaskeditValor.Text)+valor;
  //    MaskEditTPagado.Text:=Format('%16.2n',[Valor]);

      MaskEditTPagado.Text := '0';
      i := 1;
      while i < StringGridCaja.RowCount - 1 do
        begin
          MaskEditTPagado.Text :=  floattostr(strtofloat(MaskEditTPagado.Text) + strtofloat(StringGridCaja.Rows[i].Strings[6]));
          inc(i);
        end;
      MaskEditTPagado.Text:=Format('%16.2n',[StrToFloat(MaskEditTPagado.Text)]);

      maskeditTF.Text:='0';
      MaskeditFaltante.Text:='0';
      for m:=1 to StringGridCaja.RowCount-1 do
      Begin
        x:=0;
        repeat
          inc(x);
        until (pp[x] = '') OR (pp[x] = StringGridCaja.Cells[2,m]) or (x>100) ;
        if (pp[x] = '') and (StringGridCaja.Cells[3,m] <> '') Then Begin
          cad:=StringGridCaja.Cells[3,m];
          while Pos(',', cad) > 0 do Delete(cad,Pos(',', cad),1);
          maskeditTF.Text := floattostr(strtofloat(cad) + strtofloat(maskeditTF.Text));
        End;
        IF StringGridCaja.Cells[6,m] <> '' Then MaskeditFaltante.Text:= floattostr(strtofloat(MaskeditFaltante.Text)+strtofloat(StringGridCaja.Cells[6,m]));
        pp[x]:=StringGridCaja.Cells[2,m];
      End;
      MaskeditFaltante.Text:= floattostr(strtofloat(MaskeditFaltante.Text)-strtofloat(maskeditTF.Text));
    except
    end;

//    DBLookupCombobox1.Enabled := False;
//    IF MaskEdit5.Text = '0' Then DBLookupCombobox1.Enabled := True;
    MaskEditValor.Text:= '';
    Panel2.Enabled:=False;
    If DBLookupComboBox1.Enabled then  DBLookupComboBox1.SetFocus;
  End
  Else Showmessage('Ingrese Valores.');
end;

procedure TIngresosFacturaM.SpeedButton2Click(Sender: TObject);
var i:integer;
    cad:string;
begin
  if MessageDlg('Esta seguro de limpiar la Grilla?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    for i:=1 to StringGridCaja.RowCount-1 do
    begin
      StringGridCaja.Cells[1,i]  := '';
      StringGridCaja.Cells[2,i]  := '';
      StringGridCaja.Cells[3,i]  := '';
      StringGridCaja.Cells[4,i]  := '';
      StringGridCaja.Cells[5,i]  := '';
      StringGridCaja.Cells[6,i]  := '';
//      StringGridCaja.Cells[7,i]  := '';
//      StringGridCaja.Cells[8,i]  := '';
//      StringGridCaja.Cells[9,i]  := '';
//      StringGridCaja.Cells[10,i] := '';
//      StringGridCaja.Cells[11,i] := '';
      MaskEditTPagado.Text := '0';
      MaskEditFaltante.Text := '0';
    end;
    StringGridCaja.RowCount:=2;
  end;
end;

procedure TIngresosFacturaM.DataSource6DataChange(Sender: TObject;
  Field: TField);
var valor:currency;
    cad:string;
begin
  Valor := 0;
  IF ADOQueryEncFacturas.RecordCount <> 0 Then Begin
    IF DBText4.Caption <> '' Then Valor:=strtofloat(DBText1.Caption)-strtofloat(DBText4.Caption)
    ELSE IF DBText1.Caption <> '' Then Valor :=strtofloat(DBText1.Caption);
  End;

  IF CheckBox1.Checked <> True Then MaskEditVP.Text:=Format('%16.2n',[Valor]);
end;

procedure TIngresosFacturaM.MaskEditValorChange(Sender: TObject);
begin
  If MaskEditValor.Text='' Then Begin
    MaskEditValor.Text:='0';
    MaskEditValor.SelectAll;
  End;
end;

procedure TIngresosFacturaM.MaskEditValorClick(Sender: TObject);
begin
  MaskeditValor.SelectAll;
end;

procedure TIngresosFacturaM.FormCreate(Sender: TObject);
begin
  ADOQuery1.Parameters.ParamValues['Emp'] := Datamodule1.ADOQuery1.FieldValues['Empresa_trabaja'];
  ADOQuery1.open;
  ADOQuery2.Parameters.ParamValues['Emp'] := Datamodule1.ADOQuery1.FieldValues['Empresa_trabaja'];
  ADOQuery2.open;
  
  ADOQuery4.open;
  ADOQueryConceptos.Open;
  IF Datamodule1.ADOQuery1['Multiempresa'] = 'S' Then DBLookupCombobox10.Enabled := True;
end;

procedure TIngresosFacturaM.DBLookupComboBox2Exit(Sender: TObject);
begin
  if DBLookupCombobox8.KeyValue <> null then
  begin
    ADOQuery5.Close;
    ADOQuery5.Parameters.ParamValues['doc'] := DBLookupCombobox8.KeyValue;
    ADOQuery5.Open;
  end;

  ADOQuery6.Close;
  //ADOQuery6.Parameters.ParamValues['cl']:=ADOQuery3.FieldValues['Numero_Documento'];
  ADOQuery6.Open;

  if (Datamodule1.ADOQuery1['multiempresa'] = 'N') OR (trim(Datamodule1.ADOQuery1['multiempresa']) = '') Then
  Begin
    ADOQuery6.Filtered:= false;
    ADOQuery6.Filter := 'codigo = ' + Datamodule1.ADOQuery1['empresa_trabaja'];
    ADOQuery6.Filtered:= true;
  End;
  IF ADOQuery6.RecordCount <> 0 Then DBLookupComboBox10.KeyValue := ADOQuery6.FieldValues['Codigo'];
  GroupBox1.Enabled := True;
  DBLookupComboBox2.KeyValue := ADOQuery3.FieldValues['Numero_Documento'];
  DBLookupComboBox3.KeyValue := ADOQuery3.FieldValues['Numero_Documento'];
  DBLookupComboBox10Exit(Nil); //Temporal por estar desabilitado las empresas;
end;

procedure TIngresosFacturaM.DataSource2DataChange(Sender: TObject;
  Field: TField);
begin
  DBLookupComboBox5.KeyValue := ADOQueryConceptos.FieldValues['Concepto'];
  DBLookupComboBox4.KeyValue := ADOQueryConceptos.FieldValues['Concepto'];
  DBLookupComboBox6.KeyValue := ADOQueryConceptos.FieldValues['Concepto'];
  DBLookupComboBox7.KeyValue := ADOQueryConceptos.FieldValues['Concepto'];
end;

procedure TIngresosFacturaM.CheckBox1Click(Sender: TObject);
var valor:currency;
    cad:string;
    prb:extended;
begin
  if Checkbox1.Checked = true then begin
    DBLookupComboBox1.Enabled:=False;
    cad:=Inputbox('Valor a Pagar','Valor','0');
    if trystrtofloat(cad,prb) = FALSE then
    begin
      showmessage('Error en el valor digitado');
    end
    else begin
      valor := strtofloat(cad);
      MaskEditVP.Text:=Format('%16.2n',[Valor]);
    end;
  end
  else begin
    DBLookupComboBox1.Enabled:=True;
  end;
end;

procedure TIngresosFacturaM.DBLookupComboBox3Exit(Sender: TObject);
begin
  ADOQuery6.Close;
  //ADOQuery6.Parameters.ParamValues['cl']:=ADOQuery3.FieldValues['Numero_Documento'];
  ADOQuery6.Open;
  IF ADOQuery6.RecordCount <> 0 Then DBLookupComboBox10.KeyValue := ADOQuery6.FieldValues['Codigo'];
  GroupBox1.Enabled := True;
  DBLookupComboBox2.KeyValue := ADOQuery3.FieldValues['Numero_Documento'];
  DBLookupComboBox10Exit(Nil); //Temporal por estar desabilitado las empresas;
end;

procedure TIngresosFacturaM.DBLookupComboBox10Exit(Sender: TObject);
begin
  ADOConnection1.Close;
  ADOConnection1.ConnectionString := Datamodule1.ADOConnection1.ConnectionString;
  ADOConnection1.DefaultDatabase  := ADOQuery6.FieldValues['BaseDatos'];
  ADOConnection1.Open;

  ADOQueryEncFacturas.Close;
  ADOQueryEncFacturas.Parameters.ParamValues['em']:=ADOQuery6.FieldValues['Codigo'];
  ADOQueryEncFacturas.Parameters.ParamValues['cl']:=ADOQuery3.FieldValues['Numero_Documento'];
  ADOQueryEncFacturas.Open;
  IF ADOQueryEncFacturas.RecordCount <> 0 Then DBLookupComboBox1.KeyValue := ADOQueryEncFacturas.FieldValues['Numero_Factura'];
end;

procedure TIngresosFacturaM.DateTimePicker1Change(Sender: TObject);
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
