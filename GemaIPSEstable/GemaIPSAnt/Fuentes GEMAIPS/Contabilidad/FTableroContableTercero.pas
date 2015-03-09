unit FTableroContableTercero;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Grids, DB, ADODB,StrUtils, DateUtils,Buttons,shellapi,Libreria_Prateinco;

type
  TFTabContablesTercero = class(TForm)
    ADOQuery1: TADOQuery;
    Panel2: TPanel;
    ADOQuery2: TADOQuery;
    Timer1: TTimer;
    Label1: TLabel;
    Edit1: TEdit;
    ADOQuery3: TADOQuery;
    Label2: TLabel;
    Edit2: TEdit;
    PageControl1: TPageControl;
    StringGrid1: TStringGrid;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    ADOQuerySaldo: TADOQuery;
    Label6: TLabel;
    Label5: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure StringGrid1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTabContablesTercero: TFTabContablesTercero;

implementation
Uses  FAuxiliarCta, UDataModule1, FAuxiliarTercero,
  FAuxiliarTerceroCta;

{$R *.dfm}

procedure TFTabContablesTercero.FormActivate(Sender: TObject);
Var i,j:Integer;
    valor:currency;
    cad,Mes_Actual,Mes_Anterior:String;
begin
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
    Valor := ADOQuery1.FieldValues['Debito']-ADOQuery1.FieldValues['Credito'];
    StringGrid1.Cells[i,j] := Format('%16.2n',[Valor]);

    ADOquery1.Next;
  End;

  //Arma la Primera Columna con los Saldos Iniciales
  ADOQuerySaldo.Close;
  ADOQuerySaldo.Parameters.ParamValues['per']:=Mes_Anterior;
  ADOQuerySaldo.Parameters.ParamValues['tp'] :=Edit2.Text;
  ADOQuerySaldo.Parameters.ParamValues['tpcom'] :=Edit3.Text;
  ADOQuerySaldo.Parameters.ParamValues['ter'] :=Edit4.Text;
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

    If StringGrid1.ColWidths[0] < length(ADOQuerySaldo.FieldValues['Cta'])*6 Then
      StringGrid1.ColWidths[0] := length(ADOQuerySaldo.FieldValues['Cta'])*6;

    Valor := ADOQuerySaldo.FieldValues['Debito']-ADOQuerySaldo.FieldValues['Credito'];
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
    StringGrid1.ColWidths[i] := length(StringGrid1.Cells[i,StringGrid1.RowCount-1])*6;
  End;
end;

procedure TFTabContablesTercero.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action :=cafree;
end;

procedure TFTabContablesTercero.Edit1Change(Sender: TObject);
begin
  FormActivate(nil);
end;

procedure TFTabContablesTercero.StringGrid1DblClick(Sender: TObject);
Var cta:String;
begin
  cta:=leftstr(StringGrid1.Cells[0,StringGrid1.Row],pos(' ',StringGrid1.Cells[0,StringGrid1.Row])-1);
  FrmLibroAuxiliarTerceroCta := tFrmLibroAuxiliarTerceroCta.create(application);
  try
    FrmLibroAuxiliarTerceroCta.Top:=0;
    FrmLibroAuxiliarTerceroCta.Left:=0;
    FrmLibroAuxiliarTerceroCta.DBLookupComboBox1.KeyValue := StringGrid1.Cells[StringGrid1.col,0];
    FrmLibroAuxiliarTerceroCta.DBLookupComboBox2.KeyValue := cta;
    FrmLibroAuxiliarTerceroCta.Edit1.Text := Edit2.text;
    Datamodule1.MuestraconAcceso(FrmLibroAuxiliarTercero);
  except
    FrmLibroAuxiliarTerceroCta.free;
  end;
end;

procedure TFTabContablesTercero.ScrollBar1Change(Sender: TObject);
begin
  FormActivate(nil);
end;

procedure TFTabContablesTercero.SpeedButton1Click(Sender: TObject);
Begin
  XmlExcel('c:\gemaips\','prueba.xml', StringGrid1);
  shellexecute(handle,'open',pchar('c:\gemaips\prueba.xml'),'','',sw_shownormal);
end;

procedure TFTabContablesTercero.StringGrid1Click(Sender: TObject);
Var cta:String;
begin
  cta:=leftstr(StringGrid1.Cells[0,StringGrid1.Row],pos(' ',StringGrid1.Cells[0,StringGrid1.Row])-1);
  ADOQuery3.Close;
  ADOQuery3.SQL.Clear;
  ADOQuery3.SQL.Add('SELECT * FROM CONTCuenta ');
  ADOQuery3.SQL.Add(' WHERE LEFT('+chr(39)+trim(cta)+chr(39)+',LEN('+chr(39)+trim(cta)+chr(39)+')-1) LIKE RTRIM(LTRIM(cuenta))+'+chr(39)+'%'+chr(39));
  ADOQuery3.Open;

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
