unit FTableroContable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Grids, DB, ADODB,StrUtils, DateUtils,Buttons,shellapi,Libreria_Prateinco,
  Vcl.DBGrids;

type
  TFTabContables = class(TForm)
    ADOQuery1: TADOQuery;
    Panel2: TPanel;
    ADOQuery2: TADOQuery;
    Timer1: TTimer;
    ADOQuery3: TADOQuery;
    PageControl1: TPageControl;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    ADOQuerySaldo: TADOQuery;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    StringGrid1: TStringGrid;
    ADOQMov: TADOQuery;
    SG2: TStringGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ScrollBar1: TScrollBar;
    Edit4: TEdit;
    Label7: TLabel;
    Edit5: TEdit;
    Label8: TLabel;
    Edit6: TEdit;
    Button1: TButton;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure StringGrid1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SG2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTabContables: TFTabContables;

implementation
Uses FAuxiliarCta, UDataModule1, ConsultaComp, UnitBuscaComprobante;

{$R *.dfm}

procedure TFTabContables.FormActivate(Sender: TObject);
Var i,j:Integer;
    valor:currency;
    cad,Mes_Actual,Mes_Anterior:String;
begin
  Pagecontrol1.ActivePageIndex := 0;

  //Limpiar toda la grilla y ajustarle al minimo tamaño.
  For i:=0 To StringGrid1.ColCount-1 Do
    For j:=0 To StringGrid1.RowCount-1 Do
    Begin
      StringGrid1.Cells[i,j]:='';
    End;
  StringGrid1.ColCount:=2;
  StringGrid1.RowCount:=2;

  //Colocar los Periodos como Titulos de las Columnas.
  ADOQuery2.Close;
  ADOQuery2.Parameters.ParamValues['per']:=Edit1.Text;
  ADOQuery2.Open;
  ADOQuery2.First;
  Mes_Actual := ADOQuery2.FieldValues['Periodo_Proceso'];
  While NOT ADOQuery2.Eof Do
  Begin
    i:=1;
    Repeat
      Inc(i);
      if i >= (StringGrid1.ColCount-1) Then StringGrid1.ColCount := StringGrid1.ColCount + 1;
    Until (StringGrid1.Cells[i,0] = ADOQuery2.FieldValues['Periodo_Proceso']) OR (StringGrid1.Cells[i,0] = '');
    StringGrid1.Cells[i,0] := ADOQuery2.FieldValues['Periodo_Proceso'];

    ADOquery2.Next;
  End;
  StringGrid1.Cells[1,0]:= 'Saldo Inicial';

  //***********************
  //Calcula el Mes Anterior
  //***********************
  if strtoint(rightstr(Mes_Actual,2)) <> 13 Then
    Mes_Anterior:='01/'+rightstr(Mes_Actual,2)+'/'+leftstr(Mes_Actual,4)
  Else
    Mes_Anterior:='01/12/'+leftstr(Mes_Actual,4);

  if strtoint(rightstr(Mes_Actual,2)) <> 1 Then
  Begin
    if strtoint(rightstr(Mes_Actual,2)) <> 13 Then
    Begin
      if length(inttostr(yearof(strtodate(Mes_Anterior)-5))+inttostr(monthof(strtodatetime(Mes_Anterior)-5))) = 5 then
        Mes_Anterior:=inttostr(yearof(strtodate(Mes_Anterior)-5))+'0'+inttostr(monthof(strtodatetime(Mes_Anterior)-5))
      Else
        Mes_Anterior:=inttostr(yearof(strtodate(Mes_Anterior)-5))+inttostr(monthof(strtodatetime(Mes_Anterior)-5));
    End
    Else Mes_Anterior:=inttostr(yearof(strtodate(Mes_Anterior)-5))+'12';
  End
  Else Mes_Anterior:=inttostr(yearof(strtodate(Mes_Anterior)-5))+'13';

  //Arma los Movimientos de Todos Los Meses
  ADOQuery1.Close;
  ADOQuery1.Parameters.ParamValues['per']:=Edit1.Text;
  ADOQuery1.Parameters.ParamValues['tp'] :=Edit2.Text;
  ADOQuery1.Parameters.ParamValues['tpcom'] :=Edit3.Text;
  ADOQuery1.Parameters.ParamValues['ter'] :=Edit4.Text;
  ADOQuery1.Parameters.ParamValues['nv'] :=ScrollBar1.Position;
  ADOQuery1.Open;
  ADOQuery1.First;
  While NOT ADOQuery1.Eof Do
  Begin
    i:=1;
    j:=0;
    Repeat
      inc(j);
      if j >= (StringGrid1.RowCount-1) Then StringGrid1.RowCount := StringGrid1.RowCount + 1;
    Until (StringGrid1.Cells[0,j] = ADOQuery1.FieldValues['Cta']) OR (StringGrid1.Cells[0,j] = '');

    Repeat
      Inc(i);
      if i >= (StringGrid1.ColCount-1) Then StringGrid1.ColCount := StringGrid1.ColCount + 1;
    Until (StringGrid1.Cells[i,0] = ADOQuery1.FieldValues['Periodo_Proceso']) OR (StringGrid1.Cells[i,0] = '');

    StringGrid1.Cells[0,j] := ADOQuery1.FieldValues['Cta'];

    If StringGrid1.ColWidths[0] < length(ADOQuery1.FieldValues['Cta'])*6 Then
      StringGrid1.ColWidths[0] := length(ADOQuery1.FieldValues['Cta'])*6;

    StringGrid1.Cells[i,0] := ADOQuery1.FieldValues['Periodo_Proceso'];
    if ADOQuery1.FieldValues['Naturaleza'] = 'D' Then Valor := ADOQuery1.FieldValues['Debito']-ADOQuery1.FieldValues['Credito']
    else Valor := ADOQuery1.FieldValues['Credito']-ADOQuery1.FieldValues['Debito'];
    StringGrid1.Cells[i,j] := Format('%16.2n',[Valor]);

    ADOquery1.Next;
  End;

  //Arma la Primera Columna con los Saldos Iniciales
  ADOQuerySaldo.Close;
  ADOQuerySaldo.Parameters.ParamValues['per']:=Mes_Anterior;
  ADOQuerySaldo.Parameters.ParamValues['tp'] :=Edit2.Text;
  ADOQuerySaldo.Parameters.ParamValues['tpcom'] :=Edit3.Text;
  ADOQuerySaldo.Parameters.ParamValues['ter'] :=Edit4.Text;
  ADOQuerySaldo.Parameters.ParamValues['nv'] :=ScrollBar1.Position;
  ADOQuerySaldo.Open;
  ADOQuerySaldo.First;
  While NOT ADOQuerySaldo.Eof Do
  Begin
    j:=0;
    Repeat
      inc(j);
      if j >= (StringGrid1.RowCount-1) Then StringGrid1.RowCount := StringGrid1.RowCount + 1;
    Until (StringGrid1.Cells[0,j] = ADOQuerySaldo.FieldValues['Cta']) OR (StringGrid1.Cells[0,j] = '');
    StringGrid1.Cells[0,j] := ADOQuerySaldo.FieldValues['Cta'];

    If StringGrid1.ColWidths[0] < length(ADOQuerySaldo.FieldValues['Cta'])*7 Then
      StringGrid1.ColWidths[0] := length(ADOQuerySaldo.FieldValues['Cta'])*7;

    if ADOQuerySaldo.FieldValues['Naturaleza'] = 'D' Then Valor := ADOQuerySaldo.FieldValues['Debito']-ADOQuerySaldo.FieldValues['Credito']
    else Valor := ADOQuerySaldo.FieldValues['Credito']-ADOQuerySaldo.FieldValues['Debito'];
    StringGrid1.Cells[1,j] := Format('%16.2n',[Valor]);

    ADOquerySaldo.Next;
  End;

  //******************
  //CALCULO DE TOTALES
  //******************
  //Total Fila
  StringGrid1.Cells[StringGrid1.ColCount-1,0]:='TOTAL';
  For j:=1 To StringGrid1.RowCount-2 Do
  Begin
    Valor:=0;
    For i:=1 To StringGrid1.ColCount-2 Do
    Begin
      cad:=StringGrid1.Cells[i,j];
      while Pos(',', cad) > 0 do Delete(cad,Pos(',', cad),1);

      if cad<>'' then valor:=valor+strtofloat(cad);
    End;
    StringGrid1.Cells[StringGrid1.ColCount-1,j]:=Format('%16.2n',[Valor]);
  End;

  //Total Columna
  StringGrid1.Cells[0,StringGrid1.RowCount-1]:='TOTAL';
  For i:=1 To StringGrid1.ColCount-1 Do
  Begin
    Valor:=0;
    For j:=1 To StringGrid1.RowCount-2 Do
    Begin
      cad:=StringGrid1.Cells[i,j];
      while Pos(',', cad) > 0 do Delete(cad,Pos(',', cad),1);

      if cad<>'' then valor:=valor+strtofloat(cad);
    End;
    StringGrid1.Cells[i,StringGrid1.RowCount-1]:=Format('%16.2n',[Valor]);
    StringGrid1.ColWidths[i] := length(StringGrid1.Cells[i,StringGrid1.RowCount-1])*7;
  End;
  SG2.RowCount:=2;
end;

procedure TFTabContables.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action :=cafree;
end;

procedure TFTabContables.Button1Click(Sender: TObject);
begin
  Edit5.Text := '';
  Edit6.Text := '';
end;

procedure TFTabContables.Edit1Change(Sender: TObject);
begin
  FormActivate(nil);
end;

procedure TFTabContables.StringGrid1DblClick(Sender: TObject);
Var cta:String;
begin
  cta:=leftstr(StringGrid1.Cells[0,StringGrid1.Row],pos(' ',StringGrid1.Cells[0,StringGrid1.Row])-1);
  FrmLibroAuxiliarxCta := tFrmLibroAuxiliarxCta.create(application);
  try
    FrmLibroAuxiliarxCta.Top:=0;
    FrmLibroAuxiliarxCta.Left:=0;
    FrmLibroAuxiliarxCta.DBLookupComboBox1.KeyValue := StringGrid1.Cells[StringGrid1.col,0];
    FrmLibroAuxiliarxCta.DBLookupComboBox2.KeyValue := cta;
    FrmLibroAuxiliarxCta.show;
  except
    FrmLibroAuxiliarxCta.free;
  end;
end;

procedure TFTabContables.ScrollBar1Change(Sender: TObject);
begin
  FormActivate(nil);
end;

procedure TFTabContables.SG2DblClick(Sender: TObject);
begin
  FormCapturaComp := tFormCapturaComp.create(application);
  try
    Datamodule1.MuestraconAcceso(FormCapturaComp);
    FormCapturaComp.DBLookupComboBox1.KeyValue:=SG2.Cells[0,SG2.row];
    FormCapturaComp.BtnModificarClick(Nil);
    FrmBuscarComprobante.Edit1.Text := SG2.Cells[2,SG2.row];
    FrmBuscarComprobante.BtnAceptarClick(Nil);
    //FormCapturaComp.DBLookupComboBox2.KeyValue:=DBText1.Caption;
  except
    FormCapturaComp.free;
  end;
end;

procedure TFTabContables.SpeedButton1Click(Sender: TObject);
Var Archivo:String;
begin
  Archivo := ExtractFilePath(paramstr(0))+'Reportes\';
  XmlExcel(ExtractFilePath(paramstr(0))+'Reportes\',trim(Edit1.text), StringGrid1);
  shellexecute(handle,'open',pchar(Archivo+trim(Edit1.text)),'','',sw_shownormal);
end;

procedure TFTabContables.StringGrid1Click(Sender: TObject);
Var cta,nat,per:String;
    i,j:integer;
    saldo:extended;
    Mes_Anterior:String;
begin
  cta:=leftstr(StringGrid1.Cells[0,StringGrid1.Row],pos(' ',StringGrid1.Cells[0,StringGrid1.Row])-1);
  per:=StringGrid1.Cells[StringGrid1.col,0];
  ADOQuery3.Close;
  ADOQuery3.SQL.Clear;
  ADOQuery3.SQL.Add('SELECT * FROM CONTCuenta ');
  ADOQuery3.SQL.Add(' WHERE LEFT('+chr(39)+trim(cta)+chr(39)+',LEN('+chr(39)+trim(cta)+chr(39)+')-1) LIKE RTRIM(LTRIM(cuenta))+'+chr(39)+'%'+chr(39));
  ADOQuery3.Open;

  if Edit5.Text = '' then Edit5.Text := Edit5.Text +chr(39)+trim(Per)+chr(39)
  Else Edit5.Text := Edit5.Text + ','+chr(39)+trim(Per)+chr(39);
  if Edit6.Text = '' then Edit6.Text := Edit6.Text + chr(39)+trim(cta)+chr(39)
  Else Edit6.Text := Edit6.Text + ','+ chr(39)+trim(cta)+chr(39);

  ADOQMov.Close;
  ADOQMov.SQL.Clear;
  ADOQMov.SQL.Add(' SELECT CONTEncComp.*,CONTDetComp.Cuenta,CONTCuenta.Descripcion,CONTDetComp.Tercero,CONTTerce.Primer_Apellido + '+chr(39)+' '+chr(39)+' +CONTTerce.Primer_Nombre as Nombre,CONTDetComp.Centro_Costo,CONTDetComp.DocSoporte,Valor_Debito,Valor_Credito ');
  ADOQMov.SQL.Add(' FROM CONTEncComp inner join CONTDetComp on ');
  ADOQMov.SQL.Add('     (  CONTEncComp.Empresa = CONTDetComp.Empresa AND ');
  ADOQMov.SQL.Add('       CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND ');
  ADOQMov.SQL.Add('       CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante ) ');

  ADOQMov.SQL.Add(' left outer join CONTCuenta on ');
  ADOQMov.SQL.Add('       CONTDetComp.Cuenta = CONTCuenta.Cuenta  ');

  ADOQMov.SQL.Add(' left outer join CONTTerce on ');
  ADOQMov.SQL.Add('       CONTDetComp.Tercero = CONTTerce.Numero_Documento + CONTTerce.Sucursal ');

  ADOQMov.SQL.Add(' WHERE CONTDetComp.Cuenta in ('+Edit6.Text+') AND CONTEncComp.Periodo_Proceso in ('+Edit5.Text+')');
  ADOQMov.SQL.Add('       AND CONTEncComp.Periodo_Proceso  like ' + chr(39) +trim(Edit1.Text) + chr(39));
  ADOQMov.SQL.Add('       AND CONTEncComp.Tipo_Comprobante like ' + chr(39) +trim(Edit3.Text) + chr(39));
  ADOQMov.SQL.Add('       AND CONTDetComp.Cuenta like ' + chr(39) +trim(Edit2.Text) + chr(39));
  ADOQMov.SQL.Add('       AND CONTDetComp.Tercero like ' + chr(39) +trim(Edit4.Text) + chr(39));
  ADOQMov.SQL.Add(' ORDER BY CONTEncComp.Fecha_Comprobante ');
 //
 {
   ADOQMov.SQL.Add(' SELECT CONTEncComp.*,CONTDetComp.Cuenta,CONTCuenta.Descripcion,CONTDetComp.Tercero,CONTTerce.Primer_Apellido + '+chr(39)+' '+chr(39)+' +CONTTerce.Primer_Nombre as Nombre,CONTDetComp.Centro_Costo,CONTDetComp.DocSoporte,Valor_Debito,Valor_Credito ');
  ADOQMov.SQL.Add(' FROM CONTEncComp,CONTDetComp,CONTCuenta,CONTTerce ');
  ADOQMov.SQL.Add(' WHERE CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND ');
  ADOQMov.SQL.Add('       CONTEncComp.Empresa = CONTDetComp.Empresa AND ');
  ADOQMov.SQL.Add('       CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND ');
  ADOQMov.SQL.Add('       CONTDetComp.Cuenta * = CONTCuenta.Cuenta AND ');
  ADOQMov.SQL.Add('       CONTDetComp.Tercero * = CONTTerce.Numero_Documento + CONTTerce.Sucursal AND');
  ADOQMov.SQL.Add('       CONTDetComp.Cuenta in ('+Edit6.Text+') AND CONTEncComp.Periodo_Proceso in ('+Edit5.Text+')');
  ADOQMov.SQL.Add('       AND CONTEncComp.Periodo_Proceso  like ' + chr(39) +trim(Edit1.Text) + chr(39));
  ADOQMov.SQL.Add('       AND CONTEncComp.Tipo_Comprobante like ' + chr(39) +trim(Edit3.Text) + chr(39));
  ADOQMov.SQL.Add('       AND CONTDetComp.Cuenta like ' + chr(39) +trim(Edit2.Text) + chr(39));
  ADOQMov.SQL.Add('       AND CONTDetComp.Tercero like ' + chr(39) +trim(Edit4.Text) + chr(39));
  ADOQMov.SQL.Add(' ORDER BY CONTEncComp.Fecha_Comprobante ');

 }
  ADOQMov.Open;

  //***********************
  //Calcula el Mes Anterior
  //***********************
  if strtoint(rightstr(StringGrid1.Cells[StringGrid1.col,0],2)) <> 13 Then
    Mes_Anterior:='01/'+rightstr(StringGrid1.Cells[StringGrid1.col,0],2)+'/'+leftstr(StringGrid1.Cells[StringGrid1.col,0],4)
  Else
    Mes_Anterior:='01/12/'+leftstr(StringGrid1.Cells[StringGrid1.col,0],4);

  if strtoint(rightstr(StringGrid1.Cells[StringGrid1.col,0],2)) <> 1 Then
  Begin
    if strtoint(rightstr(StringGrid1.Cells[StringGrid1.col,0],2)) <> 13 Then
    Begin
      if length(inttostr(yearof(strtodate(Mes_Anterior)-5))+inttostr(monthof(strtodatetime(Mes_Anterior)-5))) = 5 then
        Mes_Anterior:=inttostr(yearof(strtodate(Mes_Anterior)-5))+'0'+inttostr(monthof(strtodatetime(Mes_Anterior)-5))
      Else
        Mes_Anterior:=inttostr(yearof(strtodate(Mes_Anterior)-5))+inttostr(monthof(strtodatetime(Mes_Anterior)-5));
    End
    Else Mes_Anterior:=inttostr(yearof(strtodate(Mes_Anterior)-5))+'12';
  End
  Else Mes_Anterior:=inttostr(yearof(strtodate(Mes_Anterior)-5))+'13';

  if ADOQuery3.FieldValues['Naturaleza'] <> null then nat := ADOQuery3.FieldValues['Naturaleza']
  Else nat := 'D';

  //Arma la Primera Columna con los Saldos Iniciales
  ADOQuerySaldo.Close;
  ADOQuerySaldo.Parameters.ParamValues['per']:=Mes_Anterior;
  ADOQuerySaldo.Parameters.ParamValues['tp'] :=Edit2.Text;
  ADOQuerySaldo.Parameters.ParamValues['tpcom'] :=Edit3.Text;
  ADOQuerySaldo.Parameters.ParamValues['ter'] :=Edit4.Text;
  ADOQuerySaldo.Parameters.ParamValues['nv'] :=ScrollBar1.Position;
  ADOQuerySaldo.Open;
  ADOQuerySaldo.Filter := 'Cta like '+chr(39)+trim(cta)+'%'+chr(39);
  ADOQuerySaldo.Filtered := True;
  ADOQuerySaldo.First;
  Saldo:=0;
  While NOT ADOQuerySaldo.Eof Do
  Begin
    if nat = 'D' Then
      Saldo := Saldo + ADOQuerySaldo.FieldValues['Debito']-ADOQuerySaldo.FieldValues['Credito']
    else
      Saldo := Saldo + ADOQuerySaldo.FieldValues['Credito']-ADOQuerySaldo.FieldValues['Debito'];

    ADOquerySaldo.Next;
  End;

  SG2.ColCount := ADOQMov.FieldCount+1;
  SG2.Cells[ADOQMov.FieldCount,0]:='Saldo';
  SG2.Cells[ADOQMov.FieldCount,1]:=ntsfbg(saldo);
  SG2.ColWidths[ADOQMov.FieldCount] := 150;
  for I := 0 to ADOQMov.FieldCount-1 do
    SG2.Cells[i,0] := ADOQMov.FieldDefList.FieldDefs[i].Name;

  ADOQMov.First;
  j:=2;
  while NOT ADOQMov.Eof do
  Begin
    for I := 0 to ADOQMov.FieldCount-1 do
    Begin
      if Leftstr(ADOQMov.FieldDefList.FieldDefs[i].Name,5) = 'Valor' then
        SG2.Cells[i,j] := ntsfbg(ADOQMov.Fields[i].AsFloat)
      Else
        SG2.Cells[i,j] := ADOQMov.Fields[i].AsString;

      If SG2.ColWidths[i] < length(ADOQMov.Fields[i].AsString)*9 Then
        SG2.ColWidths[i] := length(ADOQMov.Fields[i].AsString)*9;
    End;

    if nat = 'D' Then
      saldo:=Saldo + (ADOQMov.FieldValues['Valor_Debito'] -ADOQMov.FieldValues['Valor_Credito'])
    else
      saldo:=Saldo + (ADOQMov.FieldValues['Valor_Credito'] -ADOQMov.FieldValues['Valor_Debito']);

    SG2.Cells[ADOQMov.FieldCount,j]:=ntsfbg(saldo);

    inc(j);
    SG2.RowCount := j;
    ADOQMov.Next;
  End;

  cta:= '(';
  ADOQuery3.First;
  while NOT ADOQuery3.Eof Do
  Begin
    cta := cta + ADOQuery3.FieldValues['Descripcion'] + ' ';
    ADOQuery3.Next;
  End;
  cta := cta + ')';
  Label6.Caption:= cta;
end;

end.
