unit ImportaPlanosContable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ExtCtrls, ComCtrls, DB, ADODB, Buttons, DBGrids;

type
  TImportPlanoContable = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    opcopia: TOpenDialog;
    GroupBox2: TGroupBox;
    RadioGroup1: TRadioGroup;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    ADOTable1: TADOTable;
    Memo1: TMemo;
    Edit4: TEdit;
    Panel4: TPanel;
    ListBox1: TListBox;
    ADOTable2: TADOTable;
    ADOQuery1: TADOQuery;
    Edit5: TEdit;
    Splitter2: TSplitter;
    ADOQtmp: TADOQuery;
    ProgressBar1: TProgressBar;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    Splitter1: TSplitter;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StatusBar1: TStatusBar;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DataSource3: TDataSource;
    ADOQueryAudita: TADOQuery;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    BitBtn16: TBitBtn;
    BitBtn5: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure StringGrid2SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImportPlanoContable: TImportPlanoContable;
  ch:char;

implementation

uses UDataModule1, Math, Libreria_PrateincoForm;

{$R *.dfm}

procedure TImportPlanoContable.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure TImportPlanoContable.FormActivate(Sender: TObject);
begin
  ch:=',';
end;

procedure TImportPlanoContable.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 0 then ch:=','
  else ch:=chr(7);
end;

procedure TImportPlanoContable.StringGrid2SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
  InputString:string;
  i:Integer;
begin
  InputString:= InputBox('Columna de la Tabla', 'Digite la columna a copiar', StringGrid1.Cells[Acol,1]);
  IF trystrtoint(InputString,i) Then
    StringGrid1.Cells[strtoint(InputString),2]:=inttostr(ACol)
  ELSE Showmessage('Error al Convertir el Numero.');
end;

procedure TImportPlanoContable.BitBtn1Click(Sender: TObject);
Var
  cadena,cadena2:string;
  i,j,ind,k:integer;
  F1: TextFile;
begin
  StringGrid2.Cells[0,0]:='Consecutivo';
  StringGrid2.Cells[0,1]:='Tamaño';
  opcopia.initialdir:='Reportes\';
  opcopia.DefaultExt:='*.csv';
  if opcopia.execute then
  begin
    Edit5.Text:=opcopia.FileName;
    StatusBar1.panels[0].Text:=opcopia.filename;
    AssignFile(F1, opcopia.filename);
    Reset(F1);
    stringGrid2.rowcount:=3;
    k:=0;
    while (not Eof(F1)) AND (k <100) do
    begin
      inc(k);
      j:=1;
      ind:=0;
      cadena2:='';
      Readln(F1, cadena);
      For i:=1 TO length(cadena) do
      Begin
        if copy(cadena,i,1) = '"' then
        begin
          if ind=0 then ind:=1
          else ind:=0;
        end
        else if (copy(cadena,i,1) = ch) AND (ind = 0) then
        begin
          if stringGrid2.ColCount-1 <= j then
            stringGrid2.ColCount:=j+1;

          StringGrid2.Cells[j,0]:='0';
          StringGrid2.Cells[j,1]:=inttostr(j);

          StringGrid2.Cells[j,stringGrid2.rowcount-1]:=cadena2;
          if stringGrid2.ColWidths[j]<length(cadena2)*6 then stringGrid2.ColWidths[j]:=length(cadena2)*6;
          if strtoint(StringGrid2.Cells[j,0])<length(cadena2) then StringGrid2.Cells[j,0]:=inttostr(length(cadena2));
          cadena2:='';
          j:=j+1;
        end
        else begin
          cadena2:=cadena2+copy(cadena,i,1);
        end;
      end;
      If cadena2 <> '' Then
      Begin
        if stringGrid2.ColCount-1 <= j then
          stringGrid2.ColCount:=j+1;

        StringGrid2.Cells[j,0]:='0';
        StringGrid2.Cells[j,1]:=inttostr(j);

        StringGrid2.Cells[j,stringGrid2.rowcount-1]:=cadena2;
        if stringGrid2.ColWidths[j]<length(cadena2)*6 then stringGrid2.ColWidths[j]:=length(cadena2)*6;
        if strtoint(StringGrid2.Cells[j,0])<length(cadena2) then StringGrid2.Cells[j,0]:=inttostr(length(cadena2));
        cadena2:='';
        j:=j+1;
      End;
      StringGrid2.Cells[0,stringGrid2.rowcount-1]:=inttostr(stringGrid2.rowcount-3);
      stringGrid2.rowcount:=stringGrid2.rowcount+1;
    end;
    edit2.Text:=inttostr(stringGrid2.rowcount-4);
    edit3.Text:=inttostr(stringGrid2.colcount-1);
    CloseFile(F1);
  end;
  StringGrid2.SetFocus;
  if StringGrid2.RowCount > 4 then BitBtn4.Enabled:=true
  Else Showmessage('No Subio Datos.');

  BitBtn1.Enabled:=False;
end;

procedure TImportPlanoContable.BitBtn2Click(Sender: TObject);
begin
  WinExec(PAnsiChar('Notepad.exe ' + StatusBar1.panels[0].Text),SW_SHOWNORMAL);
  StringGrid1.SetFocus;
end;

procedure TImportPlanoContable.BitBtn3Click(Sender: TObject);
Var
  cadena,cadena2,compant,emp:string;
  i,j,ind,k:integer;
  F1: TextFile;
begin
  ADOTable1.Open;
  ListBox1.Clear;

  if MessageDlg('Esta totalmente seguro de Subir el Archivo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    compant:='';
    ProgressBar1.Position:=0;
    ProgressBar1.Max:=StringGrid1.RowCount-1;
    For j:=3 To (StringGrid1.RowCount-1) Do
    Begin
      ProgressBar1.Position:=j;
      Try
        if compant <> StringGrid1.Cells[1,j]+StringGrid1.Cells[18,j]+StringGrid1.Cells[2,j] Then
        Begin
          ADOTable1.Append;
          For i:=0 To ADOTable1.FieldCount-1 Do
          Begin
           For k:=1 To StringGrid1.ColCount-1 Do
            If ADOTable1.FieldDefList.FieldDefs[i].Name = StringGrid1.Cells[k,0] Then
              ADOTable1.FieldValues[StringGrid1.Cells[k,0]]:=StringGrid1.Cells[k,j];
          End;
          ADOTable1.FieldValues['Estado']:='P';
          ADOTable1.Post;
        End;

        ADOTable2.Append;
        For i:=0 To ADOTable2.FieldCount-1 Do
        Begin
         For k:=1 To StringGrid1.ColCount-1 Do
          If ADOTable2.FieldDefList.FieldDefs[i].Name = StringGrid1.Cells[k,0] Then
            ADOTable2.FieldValues[StringGrid1.Cells[k,0]]:=StringGrid1.Cells[k,j]
        End;
        ADOTable2.Post;

        compant := StringGrid1.Cells[1,j]+StringGrid1.Cells[18,j]+StringGrid1.Cells[2,j];
      except
        ListBox1.Items.Add('Error Linea: '+inttostr(j));
        continue;
      End;
    End;
    Showmessage('Plano importado correctamente.');
  End;
  ADOTable1.Close;

  //Graba el LOG.
  //Datamodule1.Graba_Logx(Fecha_Transaccion;Tipo;Valor_Anterior;Valor_Actual;Tabla;Campo);
  Datamodule1.Graba_Logx(now,'G','Registros Nuevos','Cargo Archivo Plano Contable Tot. Reg:'+inttostr(StringGrid1.RowCount-3),'CONTEncComp','');
  close;
end;

procedure TImportPlanoContable.FormCreate(Sender: TObject);
Var i:Integer;
begin
  ADOTable1.Open;
  ADOTable2.Open;
  ADOQuery1.Open;

  StringGrid1.Cells[0,0]:='Campos Tbl';
  StringGrid1.Cells[0,1]:='         *';

  For i:=1 TO ADOQuery1.FieldCount do
  Begin
    StringGrid1.Cells[i,1]:=inttostr(i);
    Stringgrid1.Cells[i,0]:=ADOQuery1.Fields.Fields[i-1].DisplayName;
    Stringgrid1.ColCount:=i+1;
    Stringgrid1.ColWidths[i]:=length(ADOQuery1.Fields.Fields[i-1].DisplayName)*8;
  end;
end;

procedure TImportPlanoContable.BitBtn4Click(Sender: TObject);
Var
  cadena,cadena2,compant:string;
  i,j,ind,k,err:integer;
  sumi,sumj,tmp, tmp1:real;
  F1: TextFile;
  TempDate : TDateTime;
  emp:String;
begin
  ListBox1.Clear;
  For i:=1 TO StringGrid1.ColCount-1 Do
    For j:=4 TO StringGrid1.RowCount-1 Do
      StringGrid1.Cells[i,j]:='';
  StringGrid1.RowCount:=4;

  AssignFile(F1, Edit5.Text);
  Reset(F1);
  while (not Eof(F1)) do
  begin
    j:=1;
    ind:=0;
    cadena2:='';
    Readln(F1, cadena);
    For i:=1 TO length(cadena) do
    Begin
      if copy(cadena,i,1) = '"' then
      begin
        if ind=0 then ind:=1
        else ind:=0;
      end
      else if (copy(cadena,i,1) = ch) AND (ind = 0) then
      begin
        StringGrid1.Cells[j,1]:=inttostr(j);


        For k:=1 To StringGrid1.ColCount-1 Do
        Begin
          IF StringGrid1.cells[k,2] <> '' Then
            IF strtoint(StringGrid1.cells[k,2]) = j Then
            Begin
              StringGrid1.Cells[k,StringGrid1.rowcount-1]:=trim(cadena2);
              break;
            End;
        End;
        cadena2:='';
        j:=j+1;
      end
      else begin
        cadena2:=cadena2+copy(cadena,i,1);
      end;
    end;
    If cadena2 <> '' Then
    Begin
      StringGrid1.Cells[j,1]:=inttostr(j);

      For k:=1 To StringGrid1.ColCount-1 Do
      Begin
        IF StringGrid1.cells[k,2] <> '' Then
            IF strtoint(StringGrid1.cells[k,2]) = j Then
            Begin
              StringGrid1.Cells[k,StringGrid1.rowcount-1]:=trim(cadena2);
              break;
             End;
       End;
      cadena2:='';
      j:=j+1;
    End;
    StringGrid1.Cells[0,StringGrid1.rowcount-1]:=inttostr(StringGrid1.rowcount-3);
    if Not Eof(F1) Then StringGrid1.rowcount:=StringGrid1.rowcount+1;
  end;
  edit2.Text:=inttostr(StringGrid1.rowcount-4);
  edit3.Text:=inttostr(StringGrid1.colcount-1);
  CloseFile(F1);

  //Validaciones
  //Validacion sobre el Total de Debitos y Creditos debe ser igual.
  Sumi:=0;
  Sumj:=0;
  tmp := 0;
  Edit1.Text := 'Totales Debitos y Creditos';
  ProgressBar1.Position:=0;
  ProgressBar1.Max:=StringGrid1.RowCount-1;
  For j:=3 TO StringGrid1.RowCount-1 Do
  Begin
    ProgressBar1.Position:=j;
    ImportPlanoContable.Refresh;
    val(StringGrid1.Cells[16,j],tmp,err);
    Sumi:= Sumi + tmp;
    if err <> 0 Then ListBox1.Items.Add('ERROR (L:'+StringGrid1.Cells[0,j]+'): Numero Debito Erroneo ('+StringGrid1.Cells[16,j]+')');
    val(StringGrid1.Cells[17,j],tmp,err);
    Sumj:= Sumj + tmp;
    if err <> 0 Then ListBox1.Items.Add('ERROR (L:'+StringGrid1.Cells[0,j]+'): Numero Credito Erroneo ('+StringGrid1.Cells[17,j]+')');
  End;
  IF int(Sumi)<>int(Sumj) Then ListBox1.Items.Add('ERROR: Total de Debitos ('+floattostr(Sumi)+') diferente a Creditos ('+floattostr(Sumj)+')');

  //Validacion sobre el Total de Debitos y Creditos POR COMPROBANTE debe ser igual.
  Edit1.Text := 'Totales por Comprobantes';
  Sumi:=0;
  Sumj:=0;
  CompAnt:='';
  ProgressBar1.Position:=0;
  ProgressBar1.Max:=StringGrid1.RowCount-1;
  For j:=3 TO StringGrid1.RowCount-1 Do
  Begin
    ProgressBar1.Position:=j;
    ImportPlanoContable.Refresh;
    if StringGrid1.Cells[1,j]+StringGrid1.Cells[2,j] = CompAnt Then Begin
      val(StringGrid1.Cells[16,j],tmp,err);
      Sumi:= Sumi + tmp;
      if err <> 0 Then ListBox1.Items.Add('ERROR (L:'+StringGrid1.Cells[0,j]+'): Numero Debito erroneo ('+StringGrid1.Cells[16,j]+')');
      val(StringGrid1.Cells[17,j],tmp,err);
      Sumj:= Sumj + tmp;
      if err <> 0 Then ListBox1.Items.Add('ERROR (L:'+StringGrid1.Cells[0,j]+'): Numero Credito erroneo ('+StringGrid1.Cells[17,j]+')');
    End
    Else Begin
      IF Sumi<>Sumj Then ListBox1.Items.Add('ERROR: Comprobante '+CompAnt+' en Debitos ('+floattostr(Sumi)+') diferente a Creditos ('+floattostr(Sumj)+')');
      Sumi:=0;
      Sumj:=0;
      val(StringGrid1.Cells[16,j],tmp,err);
      Sumi:= Sumi + tmp;
      if err <> 0 Then ListBox1.Items.Add('ERROR (L:'+StringGrid1.Cells[0,j]+'): Numero Debito erroneo ('+StringGrid1.Cells[16,j]+')');
      val(StringGrid1.Cells[17,j],tmp,err);
      Sumj:= Sumj + tmp;
      if err <> 0 Then ListBox1.Items.Add('ERROR (L:'+StringGrid1.Cells[0,j]+'): Numero Credito erroneo ('+StringGrid1.Cells[17,j]+')');
    End;

    CompAnt := StringGrid1.Cells[1,j]+StringGrid1.Cells[2,j];
  End;

  //Validacion de Comprobantes Duplicados en el Archivo Plano.
  Edit1.Text := 'Duplicados en el Plano';
  CompAnt:='';
  ProgressBar1.Position:=0;
  ProgressBar1.Max:=StringGrid1.RowCount-1;
  For j:=3 TO StringGrid1.RowCount-1 Do
  Begin
    ProgressBar1.Position:=j;
    ImportPlanoContable.Refresh;
    if StringGrid1.Cells[1,j]+StringGrid1.Cells[2,j] = CompAnt Then Begin
    End
    Else Begin
      For k:=j TO StringGrid1.RowCount-1 Do
      Begin
        if StringGrid1.Cells[1,k]+StringGrid1.Cells[2,k] = CompAnt Then Begin
           ListBox1.Items.Add('ERROR: Comprobante Duplicado en el Plano ('+StringGrid1.Cells[1,k]+' - '+StringGrid1.Cells[2,k]+')');
        End;
      End;
    End;

    CompAnt := StringGrid1.Cells[1,j]+StringGrid1.Cells[2,j];
  End;

  //Validacion sobre el Registros Duplicados en el Detalle.
  Edit1.Text := 'Totales por Duplicados Detalle';
  ProgressBar1.Position:=0;
  ProgressBar1.Max:=StringGrid1.RowCount-1;
  For j:=3 TO StringGrid1.RowCount-1 Do
  Begin
    ProgressBar1.Position:=j;
    ImportPlanoContable.Refresh;

    For k:=3 TO StringGrid1.RowCount-1 Do
    Begin
      if j <> k Then Begin
        if StringGrid1.Cells[1,j]+StringGrid1.Cells[2,j]+StringGrid1.Cells[12,j]+StringGrid1.Cells[13,j]+StringGrid1.Cells[14,j]+StringGrid1.Cells[15,j] =
           StringGrid1.Cells[1,k]+StringGrid1.Cells[2,k]+StringGrid1.Cells[12,k]+StringGrid1.Cells[13,k]+StringGrid1.Cells[14,k]+StringGrid1.Cells[15,k] Then Begin
             ListBox1.Items.Add('ERROR: Comprobante '+StringGrid1.Cells[2,k]+' Duplicado en Detalle Cta:'+StringGrid1.Cells[12,k]+' T:'+StringGrid1.Cells[13,k]+' CC:'+StringGrid1.Cells[14,k]+' Doc:'+StringGrid1.Cells[15,k]);
        End;
      End;
    End;
  End;

  //Validacion sobre Tipo de Comprobante.
  Edit1.Text := 'Valida el Tipo de Comprobante';
  ProgressBar1.Position:=0;
  ProgressBar1.Max:=StringGrid1.RowCount-1;
  For j:=3 TO StringGrid1.RowCount-1 Do
  Begin
    ProgressBar1.Position:=j;
    ImportPlanoContable.Refresh;
    ADOQtmp.Close;
    ADOQtmp.SQL.Clear;
    ADOQtmp.SQL.Add('SELECT * FROM CONTTipoComp WHERE Tipo_Comprobante = '+chr(39)+StringGrid1.Cells[1,j]+chr(39));
    ADOQtmp.Open;
    if ADOQtmp.RecordCount = 0 Then ListBox1.Items.Add('ERROR: Tipo Comprobante no existe ('+StringGrid1.Cells[1,j]+')');
    if ADOQtmp.FieldValues['Cargue'] <> '3' Then ListBox1.Items.Add('ERROR: Este comprobante no se puede cargar por plano. ('+StringGrid1.Cells[1,j]+')');
  End;

  //Validacion sobre Cuenta.
  Edit1.Text := 'Valida la Cuenta';
  ProgressBar1.Position:=0;
  ProgressBar1.Max:=StringGrid1.RowCount-1;
  For j:=3 TO StringGrid1.RowCount-1 Do
  Begin
    ProgressBar1.Position:=j;
    ImportPlanoContable.Refresh;
    ADOQtmp.Close;
    ADOQtmp.SQL.Clear;
    ADOQtmp.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = '+chr(39)+StringGrid1.Cells[12,j]+chr(39));
    ADOQtmp.Open;
    if ADOQtmp.RecordCount = 0 Then ListBox1.Items.Add('ERROR: La Cuenta no existe ('+StringGrid1.Cells[12,j]+')')
    Else If ADOQtmp.FieldValues['Estado'] <> 'A' Then ListBox1.Items.Add('ERROR: La Cuenta debe estar Activa ('+StringGrid1.Cells[12,j]+')');
  End;

  //Validacion sobre Tercero.
  Edit1.Text := 'Valida el Tercero';
  ProgressBar1.Position:=0;
  ProgressBar1.Max:=StringGrid1.RowCount-1;
  For j:=3 TO StringGrid1.RowCount-1 Do
  Begin
    ProgressBar1.Position:=j;
    ImportPlanoContable.Refresh;
    If StringGrid1.Cells[13,j] <> '' Then
    Begin
      ADOQtmp.Close;
      ADOQtmp.SQL.Clear;
      ADOQtmp.SQL.Add('SELECT * FROM CONTTerce WHERE Numero_Documento = '+chr(39)+StringGrid1.Cells[13,j]+chr(39));
      ADOQtmp.Open;
      if ADOQtmp.RecordCount = 0 Then ListBox1.Items.Add('ERROR: El Tercero no existe ('+StringGrid1.Cells[13,j]+')');
    End;
  End;

  //Validacion sobre Centro de Costo.
  Edit1.Text := 'Valida el C.C.';
  ProgressBar1.Position:=0;
  ProgressBar1.Max:=StringGrid1.RowCount-1;
  For j:=3 TO StringGrid1.RowCount-1 Do
  Begin
    ProgressBar1.Position:=j;
    ImportPlanoContable.Refresh;
    If StringGrid1.Cells[14,j] <> '' Then
    Begin
      ADOQtmp.Close;
      ADOQtmp.SQL.Clear;
      ADOQtmp.SQL.Add('SELECT * FROM CONTCentros WHERE Centro_Costo = '+chr(39)+StringGrid1.Cells[14,j]+chr(39));
      ADOQtmp.Open;
      if ADOQtmp.RecordCount = 0 Then ListBox1.Items.Add('ERROR: El centro de costo no existe ('+StringGrid1.Cells[14,j]+')');
    End;
  End;

  //Validacion sobre la Empresa.
  Edit1.Text := 'Valida la Empresa.';
  ProgressBar1.Position:=0;
  ProgressBar1.Max:=StringGrid1.RowCount-1;
  emp:=StringGrid1.Cells[18,3];
  For j:=3 TO StringGrid1.RowCount-1 Do
  Begin
    ProgressBar1.Position:=j;
    ImportPlanoContable.Refresh;
    If StringGrid1.Cells[18,j] <> emp Then
    Begin
      ListBox1.Items.Add('ERROR: La empresa debe ser la misma en todo el comprobante. ('+StringGrid1.Cells[18,j]+')');
    End;
  End;

  //Validacion sobre el Encabezado Comprobante.
  Edit1.Text := 'Valida Enc. de Comprobante';
  ProgressBar1.Position:=0;
  ProgressBar1.Max:=StringGrid1.RowCount-1;
  For j:=3 TO StringGrid1.RowCount-1 Do
  Begin
    ProgressBar1.Position:=j;
    ImportPlanoContable.Refresh;
    IF (StringGrid1.Cells[2,j] <> '')  Then
    Begin
      val(StringGrid1.Cells[2,j],tmp,err);
      if err <> 0 Then ListBox1.Items.Add('ERROR: Numero Comprobante debe ser Numerico ('+StringGrid1.Cells[2,j]+')')
      else begin
        ADOQtmp.Close;
        ADOQtmp.SQL.Clear;
        ADOQtmp.SQL.Add('SELECT * FROM CONTEncComp WHERE Tipo_Comprobante = '+chr(39)+StringGrid1.Cells[1,j]+chr(39)+' AND Numero_Comprobante = '+StringGrid1.Cells[2,j] +' AND Empresa = '+StringGrid1.Cells[18,j]);
        ADOQtmp.Open;
        if ADOQtmp.RecordCount <> 0 Then ListBox1.Items.Add('ERROR: El Comprobante ya Existe ('+StringGrid1.Cells[2,j]+')');
      end;
    End;
  End;

  //Validacion sobre Periodo Proceso si Existe o esta cerrado.
  Edit1.Text := 'Valida Periodo';
  ProgressBar1.Position:=0;
  ProgressBar1.Max:=StringGrid1.RowCount-1;
  For j:=3 TO StringGrid1.RowCount-1 Do
  Begin
    ProgressBar1.Position:=j;
    ImportPlanoContable.Refresh;
    ADOQtmp.Close;
    ADOQtmp.SQL.Clear;
    ADOQtmp.SQL.Add('SELECT * FROM CONTCierres WHERE Periodo_Proceso = '+chr(39)+StringGrid1.Cells[5,j]+chr(39));
    ADOQtmp.Open;
    if ADOQtmp.RecordCount = 0 Then ListBox1.Items.Add('ERROR: El Periodo no existe ('+StringGrid1.Cells[5,j]+')')
    Else If ADOQtmp.FieldValues['Estado'] <> 'A' Then ListBox1.Items.Add('ERROR: Perido debe estar Abierto ('+StringGrid1.Cells[5,j]+')');
  End;

  //Validacion sobre la Fecha.
  Edit1.Text := 'Valida la Fecha';
  ProgressBar1.Position:=0;
  ProgressBar1.Max:=StringGrid1.RowCount-1;
  For j:=3 TO StringGrid1.RowCount-1 Do
  Begin
    ProgressBar1.Position:=j;
    ImportPlanoContable.Refresh;
    try
      TempDate := StrToDateTime(StringGrid1.Cells[3,j]);
    except
      on E: EConvertError do ListBox1.Items.Add('ERROR: Fecha Invalida ('+StringGrid1.Cells[3,j]+')');
    End;
  End;
  IF ListBox1.Items.Count = 0 Then  BitBtn3.Enabled:=True;
  Showmessage('Proceso Terminado');
end;

procedure TImportPlanoContable.BitBtn5Click(Sender: TObject);
begin
  ADOQueryAudita.Close;
  ADOQueryAudita.Parameters.ParamValues['tb'] := 'Cargo Archivo Plano%';
  ADOQueryAudita.Open;
end;

procedure TImportPlanoContable.BitBtn16Click(Sender: TObject);
begin
  ReporteadorP(Edit1.Text,'SELECT * FROM ' + Edit1.Text,'');
  StringGrid1.SetFocus;
end;

end.

