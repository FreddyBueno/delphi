unit UnitInformePresupuestoM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, JvStringGrid, ExtCtrls, StdCtrls, JvEdit, JvCombobox,
  JvLabel, Buttons, JvBitBtn, DB, ADODB, JvBevel, Menus, ComCtrls, StdActns,
  ActnList, ToolWin,IniFiles,shellapi, TeeProcs, Chart, DbChart,StrUtils,DateUtils,
  ImgList, Series, TeEngine, JvExGrids, JvExButtons, JvExStdCtrls,
  JvExExtCtrls, JvExControls,Libreria_Prateinco;

type
  TFrmInformePresupuestoM = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    CBMes: TJvComboBox;
    EditAno: TJvEdit;
    BtnCargar: TJvBitBtn;
    QryG: TADOQuery;
    Edit1: TJvEdit;
    Edit2: TJvEdit;
    Lbl1: TJvLabel;
    Edit3: TJvEdit;
    Edit4: TJvEdit;
    Lbl2: TJvLabel;
    Edit5: TJvEdit;
    Edit6: TJvEdit;
    Lbl3: TJvLabel;
    Edit7: TJvEdit;
    Edit8: TJvEdit;
    Lbl4: TJvLabel;
    Edit9: TJvEdit;
    Edit10: TJvEdit;
    Lbl5: TJvLabel;
    Bevel1: TJvBevel;
    Bevel2: TJvBevel;
    Bevel3: TJvBevel;
    Bevel4: TJvBevel;
    Bevel5: TJvBevel;
    T5: TJvLabel;
    QryA1: TADOQuery;
    JvBitBtn1: TJvBitBtn;
    SGDatos: TJvStringGrid;
    procedure BtnCargarClick(Sender: TObject);
    procedure LlenaVectorAnos;
    procedure FormShow(Sender: TObject);
    procedure TotalesCol;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure SGDatosDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure LimpiaText;
    procedure LimpiarGrillas(Grilla : TJvStringGrid; Col : Integer);
    procedure TotalesxCliente;
  private
    vecAnos   : array of array of string;
    vecFechas : array of array of string;
    vecDatos  : array of array of string;
    vecEmp    : array of array of string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInformePresupuestoM: TFrmInformePresupuestoM;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TFrmInformePresupuestoM.BtnCargarClick(Sender: TObject);
var periodo    : string;
    TotFec     : Integer;
    i,e,m,c,p  : Integer;
    Usuario    : string;
begin
  LimpiarGrillas(SGDatos, 150);

  periodo  := EditAno.Text + vecAnos[CBMes.ItemIndex,1];
  LimpiaText;
  QryG.Close;
  QryG.SQL.Clear;
  QryG.SQL.Add('SELECT distinct fecha_inicio, Fecha_Fin');
  QryG.SQL.Add('FROM CONTDetSolGiro');
  QryG.SQL.Add('WHERE Periodo = '''+periodo+'''');
  QryG.Open;

  TotFec  := QryG.RecordCount;

  if TotFec = 1 then
    begin
      Edit1.Visible      := True;
      Edit2.Visible      := True;
      Edit3.Visible      := False;
      Edit4.Visible      := False;
      Edit5.Visible      := False;
      Edit6.Visible      := False;
      Edit7.Visible      := False;
      Edit8.Visible      := False;
      Edit9.Visible      := False;
      Edit10.Visible     := False;
      Lbl1.Visible       := True;
      Lbl2.Visible       := False;
      Lbl3.Visible       := False;
      Lbl4.Visible       := False;
      Lbl5.Visible       := False;
      Bevel1.Visible     := True;
      Bevel2.Visible     := False;
      Bevel3.Visible     := False;
      Bevel4.Visible     := False;
      Bevel5.Visible     := False;
      SGDatos.ColCount   := 4;
    end
  else
    if TotFec = 2 then
      begin
        Edit1.Visible      := True;
        Edit2.Visible      := True;
        Edit3.Visible      := True;
        Edit4.Visible      := True;
        Edit5.Visible      := False;
        Edit6.Visible      := False;
        Edit7.Visible      := False;
        Edit8.Visible      := False;
        Edit9.Visible      := False;
        Edit10.Visible     := False;
        Lbl1.Visible       := True;
        Lbl2.Visible       := True;
        Lbl3.Visible       := False;
        Lbl4.Visible       := False;
        Lbl5.Visible       := False;
        Bevel1.Visible     := True;
        Bevel2.Visible     := True;
        Bevel3.Visible     := False;
        Bevel4.Visible     := False;
        Bevel5.Visible     := False;
        SGDatos.ColCount   := 5;
      end
    else
      if TotFec = 3 then
        begin
          Edit1.Visible      := True;
          Edit2.Visible      := True;
          Edit3.Visible      := True;
          Edit4.Visible      := True;
          Edit5.Visible      := True;
          Edit6.Visible      := True;
          Edit7.Visible      := False;
          Edit8.Visible      := False;
          Edit9.Visible      := False;
          Edit10.Visible     := False;
          Lbl1.Visible       := True;
          Lbl2.Visible       := True;
          Lbl3.Visible       := True;
          Lbl4.Visible       := False;
          Lbl5.Visible       := False;
          Bevel1.Visible     := True;
          Bevel2.Visible     := True;
          Bevel3.Visible     := True;
          Bevel4.Visible     := False;
          Bevel5.Visible     := False;
          SGDatos.ColCount   := 6;
        end
      else
        if TotFec = 4 then
          begin
            Edit1.Visible      := True;
            Edit2.Visible      := True;
            Edit3.Visible      := True;
            Edit4.Visible      := True;
            Edit5.Visible      := True;
            Edit6.Visible      := True;
            Edit7.Visible      := True;
            Edit8.Visible      := True;
            Edit9.Visible      := False;
            Edit10.Visible     := False;
            Lbl1.Visible       := True;
            Lbl2.Visible       := True;
            Lbl3.Visible       := True;
            Lbl4.Visible       := True;
            Lbl5.Visible       := False;
            Bevel1.Visible     := True;
            Bevel2.Visible     := True;
            Bevel3.Visible     := True;
            Bevel4.Visible     := True;
            Bevel5.Visible     := False;
            SGDatos.ColCount   := 7;
          end
        else
          if TotFec = 5 then
            begin
              Edit1.Visible      := True;
              Edit2.Visible      := True;
              Edit3.Visible      := True;
              Edit4.Visible      := True;
              Edit5.Visible      := True;
              Edit6.Visible      := True;
              Edit7.Visible      := True;
              Edit8.Visible      := True;
              Edit9.Visible      := True;
              Edit10.Visible     := True;
              Lbl1.Visible       := True;
              Lbl2.Visible       := True;
              Lbl3.Visible       := True;
              Lbl4.Visible       := True;
              Lbl5.Visible       := True;
              Bevel1.Visible     := True;
              Bevel2.Visible     := True;
              Bevel3.Visible     := True;
              Bevel4.Visible     := True;
              Bevel5.Visible     := True;
              SGDatos.ColCount   := 8;
            end;

  SetLength(vecFechas, QryG.RecordCount,2);
  i := 2;
  while not QryG.Eof do
    begin
      if i = 2 then
        begin
          Edit1.Text  := FormatDateTime('DD', QryG.Fields.FieldByName('Fecha_Inicio').AsDateTime);
          Edit2.Text  := FormatDateTime('DD', QryG.Fields.FieldByName('Fecha_Fin').AsDateTime);
        end
      else
        if i = 3 then
          begin
            Edit3.Text  := FormatDateTime('DD', QryG.Fields.FieldByName('Fecha_Inicio').AsDateTime);
            Edit4.Text  := FormatDateTime('DD', QryG.Fields.FieldByName('Fecha_Fin').AsDateTime);
          end
        else
          if i = 4 then
            begin
              Edit5.Text  := FormatDateTime('DD', QryG.Fields.FieldByName('Fecha_Inicio').AsDateTime);
              Edit6.Text  := FormatDateTime('DD', QryG.Fields.FieldByName('Fecha_Fin').AsDateTime);
            end
          else
            if i = 5 then
              begin
                Edit7.Text  := FormatDateTime('DD', QryG.Fields.FieldByName('Fecha_Inicio').AsDateTime);
                Edit8.Text  := FormatDateTime('DD', QryG.Fields.FieldByName('Fecha_Fin').AsDateTime);
              end
            else
              if i = 6 then
                begin
                  Edit9.Text  := FormatDateTime('DD', QryG.Fields.FieldByName('Fecha_Inicio').AsDateTime);
                  Edit10.Text := FormatDateTime('DD', QryG.Fields.FieldByName('Fecha_Fin').AsDateTime);
                end;
      vecFechas[i-2,0] := FormatDateTime('DD/MM/YYYY', QryG.Fields.FieldByName('Fecha_Inicio').AsDateTime);
      vecFechas[i-2,1] := FormatDateTime('DD/MM/YYYY', QryG.Fields.FieldByName('Fecha_Fin').AsDateTime);
      QryG.Next;
      inc(i);
    end;


  QryG.Close;
  QryG.SQL.Clear;
  QryG.SQL.Add('SELECT distinct Empresa');
  QryG.SQL.Add('  FROM CONTDetSolGiro');
  QryG.SQL.Add('  WHERE Periodo = '''+periodo+'''');
  QryG.Open;

  while not QryG.Eof do
    begin
      QryA1.Close;
      QryA1.SQL.Clear;
      QryA1.SQL.Add('SELECT * FROM SEEmpresas');
      QryA1.SQL.Add('WHERE Codigo = '''+QryG.Fields.FieldByName('Empresa').AsString+'''');
      QryA1.Open;

      if not QryA1.Eof then
        begin
          SetLength(vecEmp, Length(vecEmp)+1,4);
          vecEmp[Length(vecEmp)-1,0] := QryA1.Fields.FieldByName('Descripcion_Emp').AsString;
          vecEmp[Length(vecEmp)-1,1] := QryA1.Fields.FieldByName('Nit').AsString;
          vecEmp[Length(vecEmp)-1,2] := QryA1.Fields.FieldByName('Codigo').AsString;
        end;
      QryG.Next
    end;

  p := 0;
  i := 1;
  while p < Length(vecEmp) do
    begin
      QryG.Close;
      QryG.SQL.Clear;
      QryG.SQL.Add('SELECT CONTEncTitulosSolGiro.Descripcion as Des, CONTDetTitulosSolGiro.DEscripcion,');
      QryG.SQL.Add('CONTEncTitulosSolGiro.Codigo_Titulo, Codigo_SubTitulo');
      QryG.SQL.Add(' FROM CONTEncTitulosSolGiro, CONTDetTitulosSolGiro');
      QryG.SQL.Add('WHERE CONTDetTitulosSolGiro.Estado = ''A''');
      QryG.SQL.Add('  AND CONTEncTitulosSolGiro.Codigo_Titulo = CONTDetTitulosSolGiro.Codigo_Titulo');
      QryG.SQL.Add('ORDER BY CONTEncTitulosSolGiro.Codigo_Titulo, Codigo_SubTitulo');
      QryG.Open;

      if p = 0 then
        begin
          SGDatos.Cells[1,p]      :=  vecEmp[p,0];
          SGDatos.Cells[0,p]      :=  '.';
          SGDatos.Cells[23,p]     := vecEmp[p,2];
        end
      else
        begin
          SGDatos.Cells[1,i+4]    :=  vecEmp[p,0];
          SGDatos.Cells[0,i+4]    :=  '.';
          SGDatos.Cells[23,i+4]   := vecEmp[p,2];
          SGDatos.Cells[24,i+1]   :=  'X';
          SGDatos.Cells[25,i+2]   :=  'T';
          i := i + 4;
        end;

       while not QryG.Eof do
         begin
           if i = 1 then
             begin
             //  SGDatos.Cells[0,i]   :=  '.';
               SGDatos.Cells[0,i]   :=  '·';
               SGDatos.Cells[1,i]   := QryG.Fields.FieldByName('Des').AsString;
               SGDatos.Cells[20,i]  := QryG.Fields.FieldByName('Codigo_Titulo').AsString;
               e := i;
               inc(i);
               SGDatos.Cells[1,i]   := QryG.Fields.FieldByName('Descripcion').AsString;
               SGDatos.Cells[20,i]  := QryG.Fields.FieldByName('Codigo_Titulo').AsString;
               SGDatos.Cells[21,i]  := QryG.Fields.FieldByName('Codigo_SubTitulo').AsString;
               SGDatos.Cells[22,i]  := '*';
               SGDatos.Cells[23,i]  := vecEmp[p,2];
             end
           else
             begin
               if QryG.Fields.FieldByName('Codigo_Titulo').AsString = SGDatos.Rows[e].Strings[20] then
                 begin
                   SGDatos.Cells[1,i]   := QryG.Fields.FieldByName('Descripcion').AsString;
                   SGDatos.Cells[20,i]  := QryG.Fields.FieldByName('Codigo_Titulo').AsString;
                   SGDatos.Cells[21,i]  := QryG.Fields.FieldByName('Codigo_SubTitulo').AsString;
                   SGDatos.Cells[22,i]  := '*';
                   SGDatos.Cells[23,i]  := vecEmp[p,2];
                 end
               else
                 begin
                   inc(i);
                   inc(i);
                //   SGDatos.Cells[0,i]   :=  '.';
                   SGDatos.Cells[0,i]   :=  '·';
                   SGDatos.Cells[1,i]   := QryG.Fields.FieldByName('Des').AsString;
                   SGDatos.Cells[20,i]  := QryG.Fields.FieldByName('Codigo_Titulo').AsString;
                   e := i;

                   inc(i);
                   SGDatos.Cells[1,i]   := QryG.Fields.FieldByName('Descripcion').AsString;
                   SGDatos.Cells[20,i]  := QryG.Fields.FieldByName('Codigo_Titulo').AsString;
                   SGDatos.Cells[21,i]  := QryG.Fields.FieldByName('Codigo_SubTitulo').AsString;
                   SGDatos.Cells[22,i]  := '*';
                   SGDatos.Cells[23,i]  := vecEmp[p,2];
                 end;
             end;
               QryG.Next;
           inc(i);
         end;
         inc(p);
    end;
   SGDatos.Cells[24,i+1]   :=  'X';
   SGDatos.Cells[25,i+2]   :=  'T';
   SGDatos.RowCount        := i + 4;

  QryG.Close;
  QryG.SQL.Clear;
  QryG.SQL.Add('SELECT * FROM CONTDetSolGiro');
  QryG.SQL.Add('WHERE PERIODO = '''+periodo+'''');
  QryG.SQL.Add('ORDER BY EMPRESA');
  QryG.Open;

  while not QryG.Eof do
    begin
      i := 0;
      while i < SGDatos.RowCount do
        begin
          if (QryG.Fields.FieldByName('Codigo_Titulo').AsString = SGDatos.Rows[i].Strings[20])
              and (QryG.Fields.FieldByName('Codigo_SubTitulo').AsString = SGDatos.Rows[i].Strings[21])
              and (QryG.Fields.FieldByName('Empresa').AsString = SGDatos.Rows[i].Strings[23]) then
            begin
              if (FormatDateTime('DD',QryG.Fields.FieldByName('Fecha_Inicio').AsDateTime) = Edit1.Text) and (FormatDateTime('DD',QryG.Fields.FieldByName('Fecha_Fin').AsDateTime) = Edit2.Text) then
                SGDatos.Rows[i].Strings[2] := FloatToStr(QryG.Fields.FieldByName('Valor').AsFloat)
              else
                if (FormatDateTime('DD',QryG.Fields.FieldByName('Fecha_Inicio').AsDateTime) = Edit3.Text) and (FormatDateTime('DD',QryG.Fields.FieldByName('Fecha_Fin').AsDateTime) = Edit4.Text) then
                  SGDatos.Rows[i].Strings[3] := FloatToStr(QryG.Fields.FieldByName('Valor').AsFloat)
                else
                  if (FormatDateTime('DD',QryG.Fields.FieldByName('Fecha_Inicio').AsDateTime) = Edit5.Text) and (FormatDateTime('DD',QryG.Fields.FieldByName('Fecha_Fin').AsDateTime) = Edit6.Text) then
                    SGDatos.Rows[i].Strings[4] := FloatToStr(QryG.Fields.FieldByName('Valor').AsFloat)
                  else
                    if (FormatDateTime('DD',QryG.Fields.FieldByName('Fecha_Inicio').AsDateTime) = Edit7.Text) and (FormatDateTime('DD',QryG.Fields.FieldByName('Fecha_Fin').AsDateTime) = Edit8.Text) then
                      SGDatos.Rows[i].Strings[5] := FloatToStr(QryG.Fields.FieldByName('Valor').AsFloat)
                    else
                      if (FormatDateTime('DD',QryG.Fields.FieldByName('Fecha_Inicio').AsDateTime) = Edit9.Text) and (FormatDateTime('DD',QryG.Fields.FieldByName('Fecha_Fin').AsDateTime) = Edit10.Text) then
                        SGDatos.Rows[i].Strings[6] := FloatToStr(QryG.Fields.FieldByName('Valor').AsFloat)
            end;
          inc(i);
        end;
        QryG.Next;
    end;


   e := 2;
   while e < SGDatos.ColCount do
     begin
       SGDatos.ColWidths[e] := 121;
       inc(e);
     end;


    TotalesCol;
    TotalesxCliente;
{








































  QryG.Close;
  QryG.SQL.Clear;
  QryG.SQL.Add('SELECT  CONTDetSolGiro.Periodo, CONTDetSolGiro.Codigo_Detalle, Fecha_Inicio, Fecha_Fin, Valor, CONTTitulosSolGiro.descripcion');
  QryG.SQL.Add('FROM CONTEncSolGiro, CONTDetSolGiro, CONTTitulosSolGiro');
  QryG.SQL.Add('WHERE CONTEncSolGiro.periodo = '''+periodo+'''');
  QryG.SQL.Add('      AND CONTEncSolGiro.Periodo = CONTDetSolGiro.Periodo');
  QryG.SQL.Add('      AND CONTDetSolGiro.Codigo_Detalle  = CONTTitulosSolGiro.Codigo');
  QryG.SQL.Add('GROUP BY CONTDetSolGiro.Periodo, CONTDetSolGiro.Codigo_Detalle, Fecha_Inicio, Fecha_Fin, Valor, CONTTitulosSolGiro.descripcion');
  QryG.SQL.Add('ORDER BY Fecha_Inicio, CONTDetSolGiro.Codigo_Detalle');
  QryG.Open;

  SetLength(vecDatos, QryG.RecordCount, 7);
  i := 0;
  while not QryG.Eof do
    begin
      vecDatos[i,0] := QryG.Fields.FieldByName('Codigo_Detalle').AsString;
      vecDatos[i,1] := FormatDateTime('DD/MM/YYYY', QryG.Fields.FieldByName('Fecha_Inicio').AsDateTime);
      vecDatos[i,2] := FormatDateTime('DD/MM/YYYY', QryG.Fields.FieldByName('Fecha_Fin').AsDateTime);
      vecDatos[i,3] := FloatToStr(QryG.Fields.FieldByName('Valor').AsFloat);
      vecDatos[i,4] := QryG.Fields.FieldByName('Periodo').AsString;
      vecDatos[i,5] := QryG.Fields.FieldByName('Descripcion').AsString;
      inc(i);
      QryG.Next;
    end;
  c := 0;
  i := 0;
  while i < Length(vecDatos) do
    begin
      if (vecDatos[i,0] <> vecDatos[c,0]) and (vecDatos[i,6] = '') then
        SGDatos.RowCount  := SGDatos.RowCount + 1;
      e := 0;
      while e < Length(vecDatos) do
        begin
          if (vecDatos[i,0] = vecDatos[e,0]) and (vecDatos[e,6] = '') then
            begin
              vecDatos[e,6] := '*';
              m := 0;
              while m < Length(vecFechas) do
                begin
                  if (vecDatos[e,1] = vecFechas[m,0]) and (vecDatos[e,2] = vecFechas[m,1]) then
                    begin
                      SGDatos.Cells[0,i] := vecDatos[e,0] +'-'+vecDatos[e,5];
                      SGDatos.Cells[m+1,i] := vecDatos[e,3];
                      SGDatos.ColWidths[m+1] := 112;
                    end;
                  inc(m);
                end;
            end;
          inc(e);
        end;
      c := i;
      inc(i);
    end;

 TotalesCol;

  QryG.Close;
  QryG.SQL.Clear;
  QryG.SQL.Add('SELECT Usuario');
  QryG.SQL.Add('FROM CONTEncSolGiro');
  QryG.SQL.Add('WHERE Periodo = '''+periodo+'''');
  QryG.Open;

  if not QryG.Eof then
    Usuario  := QryG.Fields.FieldByName('Usuario').AsString;

  QryA1.Close;
  QryA1.SQL.Clear;
  QryA1.SQL.Add('SELECT Primer_Apellido, Segundo_Apellido, Nombres');
  QryA1.SQL.Add('FROM SEPersonas');
  QryA1.SQL.Add('WHERE id = '''+Usuario+'''');
  QryA1.Open;

  if not QryA1.Eof then
    EditUsuario.Text  := QryA1.Fields.FieldByName('Primer_Apellido').AsString +' '+
                         QryA1.Fields.FieldByName('Segundo_Apellido').AsString +' '+
                         QryA1.Fields.FieldByName('Nombres').AsString;   }
end;

procedure TFrmInformePresupuestoM.LlenaVectorAnos;
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

procedure TFrmInformePresupuestoM.FormShow(Sender: TObject);
var i,e : Integer;
begin
{  QryG.Close;
  QryG.SQL.Clear;
  QryG.SQL.Add('SELECT CONTEncTitulosSolGiro.Descripcion as Des, CONTDetTitulosSolGiro.DEscripcion,');
  QryG.SQL.Add('CONTEncTitulosSolGiro.Codigo_Titulo, Codigo_SubTitulo');
  QryG.SQL.Add(' FROM CONTEncTitulosSolGiro, CONTDetTitulosSolGiro');
  QryG.SQL.Add('WHERE CONTDetTitulosSolGiro.Estado = ''A''');
  QryG.SQL.Add('  AND CONTEncTitulosSolGiro.Codigo_Titulo = CONTDetTitulosSolGiro.Codigo_Titulo');
  QryG.SQL.Add('ORDER BY CONTEncTitulosSolGiro.Codigo_Titulo, Codigo_SubTitulo');
  QryG.Open;

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
   SGDatos.RowCount      := i + 1;   }



  LlenaVectorAnos;
end;

procedure TFrmInformePresupuestoM.TotalesCol;
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
          if (SGDatos.Rows[i].Strings[e] <> '')  then
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


procedure TFrmInformePresupuestoM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
  FrmInformePresupuestoM := nil;
end;

procedure TFrmInformePresupuestoM.JvBitBtn1Click(Sender: TObject);
Var Archivo:String;
begin
  Archivo := ExtractFilePath(paramstr(0))+'Reportes\';
  XmlExcel(ExtractFilePath(paramstr(0))+'Reportes\','ReporteGiro.xml', SGDatos);
  shellexecute(handle,'open',pchar(Archivo+'ReporteGiro.xml'),'','',sw_shownormal);
end;

procedure TFrmInformePresupuestoM.SGDatosDrawCell(Sender: TObject; ACol,
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
               SGDatos.Canvas.Font.Color  := clWindow;
               SGDatos.Canvas.Brush.Color := clActiveCaption;//$009CDEF7;
               SGDatos.Canvas.TextRect(Rect, Rect.Left, Rect.Top, SGDatos.Cells[Acol,Arow]);
             end;

           if (SGDatos.Cells[0,e] = '·') then
             begin
               SGDatos.Canvas.Font.Color  := clWindow;
               SGDatos.Canvas.Brush.Color := $00C89331;
               SGDatos.Canvas.TextRect(Rect, Rect.Left, Rect.Top, SGDatos.Cells[Acol,Arow]);
             end;


           if (SGDatos.Cells[0,e] = '_') then
             begin
               SGDatos.Canvas.Font.Size     := 10;
               SGDatos.Canvas.Font.Color    := clWhite;
               SGDatos.Canvas.Brush.Color   := $00DF9600;
               SGDatos.Canvas.TextRect(Rect, Rect.Left, Rect.Top, SGDatos.Cells[Acol,Arow]);
             end;

           if (SGDatos.Cells[ACol,0] <> '') and (SGDatos.Cells[ACol,0] <> 'TOTALES') and (SGDatos.Cells[ACol,0] <> 'Facturas') and
              (SGDatos.Cells[ACol,0] <> 'Terceros') and (ACol > 3) and(ARow >= 1) and  (ACol < 34) and (SGDatos.Cells[0, Arow] = '') and (Arow <> SGDatos.RowCount-1) then
             begin
               SGDatos.Canvas.Font.Size     := 8;
               SGDatos.Canvas.Font.Color    := clBlack;
               SGDatos.Canvas.Brush.Color   := $00DAF0FA;
               SGDatos.Canvas.TextRect(Rect, Rect.Left, Rect.Top, SGDatos.Cells[Acol,Arow]);
             end;

           if (SGDatos.Cells[1,ARow] = 'TOTAL REGIONAL') then
             begin
               SGDatos.Canvas.Font.Size     := 10;
               SGDatos.Canvas.Font.Color    := clWhite;
               SGDatos.Canvas.Brush.Color   := $0093710B;//$00F39118;
               SGDatos.Canvas.TextRect(Rect, Rect.Left, Rect.Top, SGDatos.Cells[Acol,Arow]);
             end;

           if (SGDatos.Cells[1,ARow] = '4 x MIL') then
             begin
               SGDatos.Canvas.Font.Size     := 8;
               SGDatos.Canvas.Font.Color    := clWhite;
               SGDatos.Canvas.Brush.Color   := $00C99B10;//$00F39118;
               SGDatos.Canvas.TextRect(Rect, Rect.Left, Rect.Top, SGDatos.Cells[Acol,Arow]);
             end;
         end;
     end;

  if (SGDatos.Cells[ACol,ARow] <> '') and (SGDatos.Cells[22,ARow] <> '') then
    begin
      if   (ACol >= 2) and(ARow >= 0)  then
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

procedure TFrmInformePresupuestoM.LimpiaText;
begin
  Edit1.Text  := '';
  Edit2.Text  := '';
  Edit3.Text  := '';
  Edit4.Text  := '';
  Edit5.Text  := '';
  Edit6.Text  := '';
  Edit7.Text  := '';
  Edit8.Text  := '';
  Edit9.Text  := '';
  Edit10.Text := '';
end;

procedure TFrmInformePresupuestoM.LimpiarGrillas(Grilla : TJvStringGrid; Col : Integer);
var i, e : Integer;
begin
  i := 0;
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
  Grilla.RowCount  := 1;
end;

procedure TFrmInformePresupuestoM.TotalesxCliente;
var  i, e, c, p  : Integer;
     Suma        : Real;
     CxMil       : Real;
begin
  i := 2;
  while i < SGDatos.ColCount do
    begin
      e     := 0;
      Suma  := 0;
      while e < SGDatos.RowCount do
        begin
          if (SGDatos.Rows[e].Strings[23] <> '') and (SGDatos.Rows[e].Strings[0] = '.') then
            p := e;

          if (SGDatos.Rows[e].Strings[i] <> '') and (SGDatos.Rows[p].Strings[23] = SGDatos.Rows[e].Strings[23]) and
             (SGDatos.Rows[e].Strings[22] = '*') and (SGDatos.Rows[e].Strings[0] = '')then
            begin
              suma := Suma + StrToFloat(SGDatos.Rows[e].Strings[i]);
            end;

          if (SGDatos.Rows[e].Strings[25] = 'T') then
            begin
              c := e;
              SGDatos.Rows[c].Strings[22] := '*';
              SGDatos.Rows[c].Strings[1]  := 'TOTAL REGIONAL';
              SGDatos.Rows[c].Strings[i]  := FloatToStr(Suma);
              c := e -1;
              SGDatos.Rows[c].Strings[22] := '*';
              SGDatos.Rows[c].Strings[1]  := '4 x MIL';
              SGDatos.Rows[c].Strings[i]  := FloatToStr(round(Suma * 4 / 1000));

              Suma                        := 0;
            end;
          inc(e);
        end;
      inc(i);
    end;

  p := 1;
  while p < SGDatos.RowCount - 1 do
    begin
      if SGDatos.Rows[p].Strings[1] = 'TOTAL REGIONAL' then
        SGDatos.Rows[p].Strings[0]   := ':';
      inc(p);
    end;
end;



end.
