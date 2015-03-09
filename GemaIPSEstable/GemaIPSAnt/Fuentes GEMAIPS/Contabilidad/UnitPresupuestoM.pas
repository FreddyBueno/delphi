unit UnitPresupuestoM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, JvStringGrid, DB, ADODB, ExtCtrls, StdCtrls, Buttons,
  JvBitBtn, JvEdit, JvCombobox, JvLabel, JvBevel, shellapi,Mask,
  JvMaskEdit, JvSpin, ComCtrls, JvDateTimePicker, JvExGrids,
  JvExButtons, JvExComCtrls, JvExMask, JvExStdCtrls, JvExExtCtrls, JvExControls,Libreria_Prateinco;

type
  TFrmPresupuestoM = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    QryG: TADOQuery;
    SGDatos: TJvStringGrid;
    BtnGrabar: TJvBitBtn;
    BtnCancelar: TJvBitBtn;
    BtnSalir: TJvBitBtn;
    JvLabel3: TJvLabel;
    JvBevel1: TJvBevel;
    JvLabel1: TJvLabel;
    CBMes: TJvComboBox;
    EditAno: TJvEdit;
    JvLabel2: TJvLabel;
    BtnExcel: TJvBitBtn;
    JvLabel4: TJvLabel;
    SEditSemanas: TJvSpinEdit;
    DTP1: TJvDateTimePicker;
    DTP2: TJvDateTimePicker;
    DTP3: TJvDateTimePicker;
    DTP4: TJvDateTimePicker;
    DTP6: TJvDateTimePicker;
    DTP5: TJvDateTimePicker;
    DTP8: TJvDateTimePicker;
    DTP7: TJvDateTimePicker;
    DTP10: TJvDateTimePicker;
    DTP9: TJvDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure LlenaVectorAnos;
    procedure EditAnoKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure SGDatosKeyPress(Sender: TObject; var Key: Char);
    procedure BtnGrabarClick(Sender: TObject);
    procedure TotalesCol;
    procedure SGDatosSetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: String);
    procedure LlenaCeros;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExcelClick(Sender: TObject);
    procedure BtnSalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SEditSemanasChange(Sender: TObject);
    procedure CBMesClick(Sender: TObject);
    procedure SGDatosDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure LimpiarGrillas(Grilla : TJvStringGrid; Col : Integer);
  private
    vecAnos  : array of array of string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPresupuestoM: TFrmPresupuestoM;

implementation

uses UDataModule1;


{$R *.dfm}

procedure TFrmPresupuestoM.FormShow(Sender: TObject);
var i, e: Integer;
begin
 { QryG.Close;
  QryG.SQL.Clear;
  QryG.SQL.Add('select Codigo, Descripcion from CONTTitulosSolGiro');
  QryG.SQL.Add(' where Estado = ''A''');
  QryG.Open;}

  QryG.Close;
  QryG.SQL.Clear;
  QryG.SQL.Add('SELECT CONTEncTitulosSolGiro.Descripcion as Des, CONTDetTitulosSolGiro.DEscripcion,');
  QryG.SQL.Add('CONTEncTitulosSolGiro.Codigo_Titulo, Codigo_SubTitulo');
  QryG.SQL.Add(' FROM CONTEncTitulosSolGiro, CONTDetTitulosSolGiro');
  QryG.SQL.Add('WHERE CONTDetTitulosSolGiro.Estado = ''A''');
  QryG.SQL.Add('  AND CONTEncTitulosSolGiro.Codigo_Titulo = CONTDetTitulosSolGiro.Codigo_Titulo');
  QryG.SQL.Add('ORDER BY CONTEncTitulosSolGiro.Codigo_Titulo, Codigo_SubTitulo');
  QryG.Open;

 { i := 0;
  while not QryG.Eof do
    begin
      SGDatos.Cells[0,i]  := QryG.Fields.FieldByName('Descripcion').AsString;
      SGDatos.Cells[10,i] := QryG.Fields.FieldByName('Codigo').AsString;
      QryG.Next;
      inc(i);
    end;
  SGDatos.RowCount  := i; }


  LimpiarGrillas(SGDatos, 150);

   i := 0;
   while not QryG.Eof do
     begin
       if i = 0 then
         begin
           SGDatos.Cells[0,i]   :=  '.';
           SGDatos.Cells[1,i]   := QryG.Fields.FieldByName('Des').AsString;
           SGDatos.Cells[20,i]  := QryG.Fields.FieldByName('Codigo_Titulo').AsString;
           e := i;
           inc(i);
           SGDatos.Cells[1,i]   := QryG.Fields.FieldByName('Descripcion').AsString;
           SGDatos.Cells[20,i]  := QryG.Fields.FieldByName('Codigo_Titulo').AsString;
           SGDatos.Cells[21,i]  := QryG.Fields.FieldByName('Codigo_SubTitulo').AsString;
           SGDatos.Cells[22,i]  := '*';
         end
       else
         begin
           if QryG.Fields.FieldByName('Codigo_Titulo').AsString = SGDatos.Rows[e].Strings[20] then
             begin
               SGDatos.Cells[1,i]   := QryG.Fields.FieldByName('Descripcion').AsString;
               SGDatos.Cells[20,i]  := QryG.Fields.FieldByName('Codigo_Titulo').AsString;
               SGDatos.Cells[21,i]  := QryG.Fields.FieldByName('Codigo_SubTitulo').AsString;
               SGDatos.Cells[22,i]  := '*';
             end
           else
             begin
               inc(i);
               inc(i);
               SGDatos.Cells[0,i]   :=  '.';
               SGDatos.Cells[1,i]   := QryG.Fields.FieldByName('Des').AsString;
               SGDatos.Cells[20,i]  := QryG.Fields.FieldByName('Codigo_Titulo').AsString;
               e := i;

               inc(i);
               SGDatos.Cells[1,i]   := QryG.Fields.FieldByName('Descripcion').AsString;
               SGDatos.Cells[20,i]  := QryG.Fields.FieldByName('Codigo_Titulo').AsString;
               SGDatos.Cells[21,i]  := QryG.Fields.FieldByName('Codigo_SubTitulo').AsString;
               SGDatos.Cells[22,i]  := '*';
             end;
         end;
           QryG.Next;
       inc(i);
     end;
   SGDatos.RowCount      := i + 1;

//  LlenaCeros;
  LlenaVectorAnos;
  EditAno.Text   := FormatDateTime('YYYY',Date);
end;

procedure TFrmPresupuestoM.LlenaVectorAnos;
var i : Integer;
begin
  SetLength(vecAnos, 12,2);

  vecAnos[0,0]  := 'Enero';
  vecAnos[0,1]  := '01';
  vecAnos[1,0]  := 'Febrero';
  vecAnos[1,1]  := '02';
  vecAnos[2,0]  := 'Marzo';
  vecAnos[2,1]  := '03';
  vecAnos[3,0]  := 'Abril';
  vecAnos[3,1]  := '04';
  vecAnos[4,0]  := 'Mayo';
  vecAnos[4,1]  := '05';
  vecAnos[5,0]  := 'Junio';
  vecAnos[5,1]  := '06';
  vecAnos[6,0]  := 'Julio';
  vecAnos[6,1]  := '07';
  vecAnos[7,0]  := 'Agosto';
  vecAnos[7,1]  := '08';
  vecAnos[8,0]  := 'Septiembre';
  vecAnos[8,1]  := '09';
  vecAnos[9,0]  := 'Octubre';
  vecAnos[9,1]  := '10';
  vecAnos[10,0] := 'Noviembre';
  vecAnos[10,1] := '11';
  vecAnos[11,0] := 'Diciembre';
  vecAnos[11,1] := '12';

  i := 0;
  while i < Length(vecAnos) do
    begin
      CBMes.Items.Add(vecAnos[i,0]);
      inc(i);
    end;
end;

procedure TFrmPresupuestoM.EditAnoKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmPresupuestoM.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  case key of
     #1,#2,#3,#4,#5,#6,#7,#11,#12,#14,#15,#17,#18,#19,#20,#21,#22,#23,#24,#25,#26,#27,#32,#33,#34,#35 : key := #0;
     #36,#37,#38,#39,#40,#41,#42,#43,#44,#46,#47,#58,#59,#60,#61,#62,#63,#64: key := #0;
     #65,#66,#67,#68,#69,#70,#71,#72,#73,#74,#75,#76,#77,#78,#79,#80,#81,#82,#83,#84,#85,#86,#87,#88,#89,#90 : key := #0;
     #91,#92,#93,#94,#95,#96,#97,#98,#99,#100,#101,#102,#103,#104,#105,#106,#107,#108,#109,#110,#111,#112,#113,#114,#115,#116 : key := #0;
     #117,#118,#119,#120,#121,#122,#123,#124,#125,#126,#127,#128,#129,#130,#131,#132,#133,#134,#135,#136,#137,#138,#139,#140,#141,#142 : key := #0;
     'ñ','Ñ','¿','´','°','¨','¡','ç' : key := #0;
   end;
end;

procedure TFrmPresupuestoM.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  case key of
     #1,#2,#3,#4,#5,#6,#7,#11,#12,#14,#15,#17,#18,#19,#20,#21,#22,#23,#24,#25,#26,#27,#32,#33,#34,#35 : key := #0;
     #36,#37,#38,#39,#40,#41,#42,#43,#44,#46,#47,#58,#59,#60,#61,#62,#63,#64: key := #0;
     #65,#66,#67,#68,#69,#70,#71,#72,#73,#74,#75,#76,#77,#78,#79,#80,#81,#82,#83,#84,#85,#86,#87,#88,#89,#90 : key := #0;
     #91,#92,#93,#94,#95,#96,#97,#98,#99,#100,#101,#102,#103,#104,#105,#106,#107,#108,#109,#110,#111,#112,#113,#114,#115,#116 : key := #0;
     #117,#118,#119,#120,#121,#122,#123,#124,#125,#126,#127,#128,#129,#130,#131,#132,#133,#134,#135,#136,#137,#138,#139,#140,#141,#142 : key := #0;
     'ñ','Ñ','¿','´','°','¨','¡','ç' : key := #0;
   end;
end;

procedure TFrmPresupuestoM.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  case key of
     #1,#2,#3,#4,#5,#6,#7,#11,#12,#14,#15,#17,#18,#19,#20,#21,#22,#23,#24,#25,#26,#27,#32,#33,#34,#35 : key := #0;
     #36,#37,#38,#39,#40,#41,#42,#43,#44,#46,#47,#58,#59,#60,#61,#62,#63,#64: key := #0;
     #65,#66,#67,#68,#69,#70,#71,#72,#73,#74,#75,#76,#77,#78,#79,#80,#81,#82,#83,#84,#85,#86,#87,#88,#89,#90 : key := #0;
     #91,#92,#93,#94,#95,#96,#97,#98,#99,#100,#101,#102,#103,#104,#105,#106,#107,#108,#109,#110,#111,#112,#113,#114,#115,#116 : key := #0;
     #117,#118,#119,#120,#121,#122,#123,#124,#125,#126,#127,#128,#129,#130,#131,#132,#133,#134,#135,#136,#137,#138,#139,#140,#141,#142 : key := #0;
     'ñ','Ñ','¿','´','°','¨','¡','ç' : key := #0;
   end;
end;

procedure TFrmPresupuestoM.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  case key of
     #1,#2,#3,#4,#5,#6,#7,#11,#12,#14,#15,#17,#18,#19,#20,#21,#22,#23,#24,#25,#26,#27,#32,#33,#34,#35 : key := #0;
     #36,#37,#38,#39,#40,#41,#42,#43,#44,#46,#47,#58,#59,#60,#61,#62,#63,#64: key := #0;
     #65,#66,#67,#68,#69,#70,#71,#72,#73,#74,#75,#76,#77,#78,#79,#80,#81,#82,#83,#84,#85,#86,#87,#88,#89,#90 : key := #0;
     #91,#92,#93,#94,#95,#96,#97,#98,#99,#100,#101,#102,#103,#104,#105,#106,#107,#108,#109,#110,#111,#112,#113,#114,#115,#116 : key := #0;
     #117,#118,#119,#120,#121,#122,#123,#124,#125,#126,#127,#128,#129,#130,#131,#132,#133,#134,#135,#136,#137,#138,#139,#140,#141,#142 : key := #0;
     'ñ','Ñ','¿','´','°','¨','¡','ç' : key := #0;
   end;
end;

procedure TFrmPresupuestoM.SGDatosKeyPress(Sender: TObject; var Key: Char);
begin
  if SGDatos.Col <= 1 then
    key := #0;

  if SGDatos.Rows[SGDatos.Row].Strings[0] <> '' then
    Key := #0;

  if SGDatos.Rows[SGDatos.Row].Strings[22] = '' then
    Key := #0;
      
  case key of
     #1,#2,#3,#4,#5,#6,#7,#11,#12,#14,#15,#17,#18,#19,#20,#21,#22,#23,#24,#25,#26,#27,#32,#33,#34,#35 : key := #0;
     #36,#37,#38,#39,#40,#41,#42,#43,#44,#45,#46,#47,#58,#59,#60,#61,#62,#63,#64: key := #0;
     #65,#66,#67,#68,#69,#70,#71,#72,#73,#74,#75,#76,#77,#78,#79,#80,#81,#82,#83,#84,#85,#86,#87,#88,#89,#90 : key := #0;
     #91,#92,#93,#94,#95,#96,#97,#98,#99,#100,#101,#102,#103,#104,#105,#106,#107,#108,#109,#110,#111,#112,#113,#114,#115,#116 : key := #0;
     #117,#118,#119,#120,#121,#122,#123,#124,#125,#126,#127,#128,#129,#130,#131,#132,#133,#134,#135,#136,#137,#138,#139,#140,#141,#142 : key := #0;
     'ñ','Ñ','¿','´','°','¨','¡','ç' : key := #0;
   end;
end;

procedure TFrmPresupuestoM.BtnGrabarClick(Sender: TObject);
var i, e      : Integer;
    periodo   : string;
    Col       : Integer;
begin
  periodo  := EditAno.Text + vecAnos[CBMes.ItemIndex,1];

  QryG.Close;
  QryG.SQL.Clear;
  QryG.SQL.Add('select * from CONTEncSolGiro');
  QryG.SQL.Add('where empresa = '''+DataModule1.ADOQuery1.Fields.FieldByName('Empresa').AsString+'''');
  QryG.SQL.Add(' and periodo = '''+periodo+'''');
  QryG.Open;

  if not QryG.Eof then
    begin
      Application.MessageBox('La solicitud de giro del periodo seleccionado ya esta grabada','Información',MB_OK+MB_ICONINFORMATION);
      Exit;
    end;

  if CBMes.ItemIndex = -1 then
    begin
      Application.MessageBox('Debe seleccionar el mes','Información',MB_OK+MB_ICONINFORMATION);
      CBMes.SetFocus;
      Exit;
    end;

  if EditAno.Text = '' then
    begin
      Application.MessageBox('Debe digitar el año para continuar','Información',MB_OK+MB_ICONINFORMATION);
      EditAno.SetFocus;
      Exit;
    end;

  try
     DataModule1.ADOConnection1.BeginTrans;

    QryG.Close;
    QryG.SQL.Clear;
    QryG.SQL.Add('insert into CONTEncSolGiro (Empresa, Periodo, Fecha_Ingreso, Usuario');
    QryG.SQL.Add(') values( ');
 //   QryG.SQL.Add(''''+SGDatos.Rows[i].Strings[10]+''',');
    QryG.SQL.Add(''''+DataModule1.ADOQuery1.Fields.FieldByName('Empresa').AsString+''',');
    QryG.SQL.Add(''''+periodo+''',');
    QryG.SQL.Add(''''+FormatDateTime('DD/MM/YYYY hh:mm:ss',Date)+''',');
    QryG.SQL.Add(''''+DataModule1.ADOQuery1.Fields.FieldByName('ID').AsString+''')');
    QryG.ExecSQL;

    Col := StrToInt(SEditSemanas.Text)+1;
    i   := 0;
    while i < SGDatos.RowCount do
      begin
        if SGDatos.Rows[i].Strings[22] = '*' then
          begin
            e := 2;
            while e <= Col do
              begin
                QryG.Close;
                QryG.SQL.Clear;
                QryG.SQL.Add('insert into CONTDetSolGiro (Codigo_Titulo, Codigo_SubTitulo, Empresa, Periodo, Fecha_Inicio, Fecha_Fin, Valor');
                QryG.SQL.Add(')values (');
                QryG.SQL.Add(''''+SGDatos.Rows[i].Strings[20]+''',');
                QryG.SQL.Add(''''+SGDatos.Rows[i].Strings[21]+''',');
                QryG.SQL.Add(''''+DataModule1.ADOQuery1.Fields.FieldByName('Empresa').AsString+''',');
                QryG.SQL.Add(''''+Periodo+''',');

                if e = 2 then
                  begin
                    QryG.SQL.Add(''''+FormatDateTime('DD/MM/YYYY',DTP1.Date)+''',');
                    QryG.SQL.Add(''''+FormatDateTime('DD/MM/YYYY',DTP2.Date)+''',');
                  end
                else
                  if e = 3 then
                    begin
                      QryG.SQL.Add(''''+FormatDateTime('DD/MM/YYYY',DTP3.Date)+''',');
                      QryG.SQL.Add(''''+FormatDateTime('DD/MM/YYYY',DTP4.Date)+''',');
                    end
                  else
                    if e = 4 then
                      begin
                        QryG.SQL.Add(''''+FormatDateTime('DD/MM/YYYY',DTP5.Date)+''',');
                        QryG.SQL.Add(''''+FormatDateTime('DD/MM/YYYY',DTP6.Date)+''',');
                      end
                    else
                      if e = 5 then
                        begin
                          QryG.SQL.Add(''''+FormatDateTime('DD/MM/YYYY',DTP7.Date)+''',');
                          QryG.SQL.Add(''''+FormatDateTime('DD/MM/YYYY',DTP8.Date)+''',');
                        end
                      else
                        if e = 6 then
                          begin
                            QryG.SQL.Add(''''+FormatDateTime('DD/MM/YYYY',DTP9.Date)+''',');
                            QryG.SQL.Add(''''+FormatDateTime('DD/MM/YYYY',DTP10.Date)+''',');
                          end;
                if SGDatos.Rows[i].Strings[e] <> '' then
                  QryG.SQL.Add(''''+SGDatos.Rows[i].Strings[e]+''')')
                else
                  QryG.SQL.Add('0)');
                QryG.ExecSQL;
                inc(e);
              end;
          end;
        inc(i);
      end;
    DataModule1.ADOConnection1.CommitTrans;
    Application.MessageBox('Datos grabados satisfactoriamente','Información',MB_OK+MB_ICONINFORMATION);
    BtnExcel.Enabled  := True;
  except
    DataModule1.ADOConnection1.RollbackTrans;
    BtnExcel.Enabled  := False;
    Application.MessageBox('Error al momento de grabar los datos...','Error',MB_OK+MB_ICONERROR);
  end;
end;

procedure TFrmPresupuestoM.TotalesCol;
var i, e  : Integer;
    Suma  : Real;
begin
  i := 0;
  while i <= SGDatos.RowCount do
    begin
      e     := 2;
      Suma  := 0;
      while e <= SGDatos.ColCount-2 do
        begin
          if (SGDatos.Rows[i].Strings[e] <> '') and (SGDatos.Rows[i].Strings[22] = '*')  then
            begin
              suma := Suma + StrToFloat(SGDatos.Rows[i].Strings[e]);
            end;

          if e = SGDatos.ColCount -2 then
            begin
              SGDatos.Rows[i].Strings[e+1]  := FloatToStr(Suma);
            end;
          inc(e);
        end;
      inc(i);
    end;
end;

procedure TFrmPresupuestoM.SGDatosSetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: String);
begin
  TotalesCol;
end;

procedure TFrmPresupuestoM.LlenaCeros;
var e,i : Integer;
begin
  e := 0;
  while e <= SGDatos.RowCount do
    begin
      i := 1;
      while i <= SGDatos.ColCount do
        begin
          SGDatos.Cells[i,e] := '0';
          inc(i);
        end;
      inc(e);
    end;
end;

procedure TFrmPresupuestoM.BtnCancelarClick(Sender: TObject);
begin
  BtnExcel.Enabled  := False;
  LlenaCeros;
end;

procedure TFrmPresupuestoM.BtnExcelClick(Sender: TObject);
Var Archivo:String;
begin
  Archivo := ExtractFilePath(paramstr(0))+'Reportes\';
  XmlExcel(ExtractFilePath(paramstr(0))+'Reportes\','SolicitudGiro.xml', SGDatos);
  shellexecute(handle,'open',pchar(Archivo+'SolicitudGiro.xml'),'','',sw_shownormal);
end;

procedure TFrmPresupuestoM.BtnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPresupuestoM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
  FrmPresupuestoM := nil;
end;

procedure TFrmPresupuestoM.SEditSemanasChange(Sender: TObject);
var i : Integer;
begin
  i := StrToInt(SEditSemanas.EditText)+3;
  SGDatos.ColCount        := i;

  SGDatos.ColWidths[i-3]  := 121;
  if i-3 <= 1 then
    SGDatos.ColWidths[1]  := 300;
 // LlenaCeros;

  case SGDatos.ColCount of
    4 : begin
          DTP1.Visible   := True;
          DTP2.Visible   := True;
          DTP3.Visible   := False;
          DTP4.Visible   := False;
          DTP5.Visible   := False;
          DTP6.Visible   := False;
          DTP7.Visible   := False;
          DTP8.Visible   := False;
          DTP9.Visible   := False;
          DTP10.Visible  := False;
        end;
    5 : begin
          DTP1.Visible   := True;
          DTP2.Visible   := True;
          DTP3.Visible   := True;
          DTP4.Visible   := True;
          DTP5.Visible   := False;
          DTP6.Visible   := False;
          DTP7.Visible   := False;
          DTP8.Visible   := False;
          DTP9.Visible   := False;
          DTP10.Visible  := False;
        end;
    6 : begin
          DTP1.Visible   := True;
          DTP2.Visible   := True;
          DTP3.Visible   := True;
          DTP4.Visible   := True;
          DTP5.Visible   := True;
          DTP6.Visible   := True;
          DTP7.Visible   := False;
          DTP8.Visible   := False;
          DTP9.Visible   := False;
          DTP10.Visible  := False;
        end;
    7 : begin
          DTP1.Visible   := True;
          DTP2.Visible   := True;
          DTP3.Visible   := True;
          DTP4.Visible   := True;
          DTP5.Visible   := True;
          DTP6.Visible   := True;
          DTP7.Visible   := True;
          DTP8.Visible   := True;
          DTP9.Visible   := False;
          DTP10.Visible  := False;
        end;
    8 : begin
          DTP1.Visible   := True;
          DTP2.Visible   := True;
          DTP3.Visible   := True;
          DTP4.Visible   := True;
          DTP5.Visible   := True;
          DTP6.Visible   := True;
          DTP7.Visible   := True;
          DTP8.Visible   := True;
          DTP9.Visible   := True;
          DTP10.Visible  := True;
        end;
  end;
end;

procedure TFrmPresupuestoM.CBMesClick(Sender: TObject);
var Fecha   : string;
    incre   : Integer;
    Ano,mes : string;
begin
   if CBMes.ItemIndex <> -1 then
    begin
      Ano        := EditAno.Text;
      mes        := vecAnos[CBMes.ItemIndex,1];
      Fecha      :='01/'+mes+'/'+Ano;
      DTP1.Date  := StrToDate(Fecha);
      DTP2.Date  := StrToDate(Fecha);
      DTP3.Date  := StrToDate(Fecha);
      DTP4.Date  := StrToDate(Fecha);
      DTP5.Date  := StrToDate(Fecha);
      DTP6.Date  := StrToDate(Fecha);
      DTP7.Date  := StrToDate(Fecha);
      DTP8.Date  := StrToDate(Fecha);
      DTP9.Date  := StrToDate(Fecha);
      DTP10.Date := StrToDate(Fecha);
    end;
end;

procedure TFrmPresupuestoM.SGDatosDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var e,i   : integer;
    sCad  : String;
begin
   for e := 0 to SGDatos.RowCount - 1 do
     begin
       if Arow = e then
         begin
           if (SGDatos.Cells[0,e] = '.') or (SGDatos.Cells[0,e] = '-')then
             begin
               SGDatos.Canvas.Font.Color  := clBlue;
               SGDatos.Canvas.Brush.Color := clActiveCaption;//$009CDEF7;
               SGDatos.Canvas.TextRect(Rect, Rect.Left, Rect.Top, SGDatos.Cells[Acol,Arow]);
             end;

           if (SGDatos.Cells[0,e] = '·') then
             begin
               SGDatos.Canvas.Font.Color  := clBlue;
               SGDatos.Canvas.Brush.Color := $00B8C2FE;
               SGDatos.Canvas.TextRect(Rect, Rect.Left, Rect.Top, SGDatos.Cells[Acol,Arow]);
             end;


           if (SGDatos.Cells[0,e] = '_') then
             begin
               SGDatos.Canvas.Font.Size     := 10;
               SGDatos.Canvas.Font.Color    := clWhite;
               SGDatos.Canvas.Brush.Color   := $00DF9600;
               SGDatos.Canvas.TextRect(Rect, Rect.Left, Rect.Top, SGDatos.Cells[Acol,Arow]);
             end;

           if (SGDatos.Cells[ACol,0] = 'TOTALES') then
             begin
               SGDatos.Canvas.Font.Size     := 10;
               SGDatos.Canvas.Font.Color    := clWhite;
               SGDatos.Canvas.Brush.Color   := $00F39118;
               SGDatos.Canvas.TextRect(Rect, Rect.Left, Rect.Top, SGDatos.Cells[Acol,Arow]);
             end;

           if (SGDatos.Cells[ACol,0] <> '') and (SGDatos.Cells[ACol,0] <> 'TOTALES') and (SGDatos.Cells[ACol,0] <> 'Facturas') and
              (SGDatos.Cells[ACol,0] <> 'Terceros') and (ACol > 3) and(ARow >= 1) and  (ACol < 34) and (SGDatos.Cells[0, Arow] = '') and (Arow <> SGDatos.RowCount-1) then
             begin
               SGDatos.Canvas.Font.Size     := 10;
               SGDatos.Canvas.Font.Color    := clBlack;
               SGDatos.Canvas.Brush.Color   := $00DAF0FA;
               SGDatos.Canvas.TextRect(Rect, Rect.Left, Rect.Top, SGDatos.Cells[Acol,Arow]);
             end;

           if (SGDatos.Cells[ACol,0] <> '') and (SGDatos.Cells[ACol,0] <> 'TOTALES') and (SGDatos.Cells[ACol,0] <> 'Facturas') and
              (SGDatos.Cells[ACol,0] <> 'Terceros') and (ACol > 34) and(ARow >= 1) and  (ACol < 65) and (SGDatos.Cells[0, Arow] = '') and (Arow <> SGDatos.RowCount-1) then
             begin
               SGDatos.Canvas.Font.Size     := 10;
               SGDatos.Canvas.Font.Color    := clBlack;
               SGDatos.Canvas.Brush.Color   := $00F2EDD2;
               SGDatos.Canvas.TextRect(Rect, Rect.Left, Rect.Top, SGDatos.Cells[Acol,Arow]);
             end;

           if (SGDatos.Cells[ACol,0] <> '') and (SGDatos.Cells[ACol,0] <> 'TOTALES') and (SGDatos.Cells[ACol,0] <> 'Facturas') and
              (SGDatos.Cells[ACol,0] <> 'Terceros') and (ACol > 65) and(ARow >= 1) and  (ACol < 96) and (SGDatos.Cells[0, Arow] = '') and (Arow <> SGDatos.RowCount-1) then
             begin
               SGDatos.Canvas.Font.Size     := 10;
               SGDatos.Canvas.Font.Color    := clBlack;
               SGDatos.Canvas.Brush.Color   := $00CDBB52;
               SGDatos.Canvas.TextRect(Rect, Rect.Left, Rect.Top, SGDatos.Cells[Acol,Arow]);
             end;

           if (SGDatos.Cells[ACol,0] <> '') and (SGDatos.Cells[ACol,0] <> 'TOTALES') and (SGDatos.Cells[ACol,0] <> 'Facturas') and
              (SGDatos.Cells[ACol,0] <> 'Terceros') and (ACol > 96) and(ARow >= 1) and  (ACol < 128) and (SGDatos.Cells[0, Arow] = '') and (Arow <> SGDatos.RowCount-1) then
             begin
               SGDatos.Canvas.Font.Size     := 10;
               SGDatos.Canvas.Font.Color    := clBlack;
               SGDatos.Canvas.Brush.Color   := $00DFF2B3;
               SGDatos.Canvas.TextRect(Rect, Rect.Left, Rect.Top, SGDatos.Cells[Acol,Arow]);
             end;

         end;
     end;

// if ARow < 1 then exit;
 if SGDatos.cells[ACol,ARow] = '' then exit;

  if (SGDatos.Cells[ACol,ARow] <> '') and (Acol > 1) and (SGDatos.Cells[22,ARow] = '*') then
    begin
      if   (ACol >= 1) and(ARow >= 0)  then
        begin
          sCad := Format('%15.0n',[StrToFloat(SGDatos.Cells[ACol,ARow])]);
          with SGDatos do
            with Canvas,Rect do
              begin
                i:=Right-TextWidth(sCad+' ');
                Canvas.FillRect(Rect);
                Canvas.TextOut(i,Top+2,sCad);
              end;
        end;
    end;
end;

procedure TFrmPresupuestoM.LimpiarGrillas(Grilla : TJvStringGrid; Col : Integer);
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


end.
