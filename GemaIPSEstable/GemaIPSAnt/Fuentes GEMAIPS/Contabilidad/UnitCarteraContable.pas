unit UnitCarteraContable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvBitBtn, Grids, JvStringGrid, ExtCtrls, DB,
  ADODB, ComCtrls, JvComCtrls, JvBevel, JvLabel, shellapi,
  JvDateTimePicker, Mask, JvExGrids, JvExButtons, JvExComCtrls, JvExExtCtrls,
  JvExControls,Libreria_Prateinco;

type
  TFrmCarteraContable = class(TForm)
    QryG: TADOQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    BtnSalir: TJvBitBtn;
    Menos: TImage;
    Mas: TImage;
    Qry1: TADOQuery;
    JvLabel1: TJvLabel;
    LblNit: TJvLabel;
    LblDescripcion: TJvLabel;
    JvBevel1: TJvBevel;
    LblDoc: TJvLabel;
    JvLabel3: TJvLabel;
    JvBevel2: TJvBevel;
    BtnExportar: TJvBitBtn;
    SGDatos: TJvStringGrid;
    JvLabel2: TJvLabel;
    DTPFecha: TJvDateTimePicker;
    BtnCargar: TJvBitBtn;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    procedure FormShow(Sender: TObject);
    procedure LimpiarGrillas(Grilla : TJvStringGrid; Col : Integer);
    procedure SGDatosDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure SGDatosDblClick(Sender: TObject);
    procedure TotalesxCliente;
    procedure Totales;
    procedure SGDatosClick(Sender: TObject);
    procedure BtnExportarClick(Sender: TObject);
    procedure TotalesCol;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSalirClick(Sender: TObject);
    procedure BuscaDatos;
    procedure DTPFechaChange(Sender: TObject);
    procedure BtnCargarClick(Sender: TObject);
  private
    FecAc  : TDateTime;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCarteraContable: TFrmCarteraContable;

implementation

uses StrUtils, UDataModule1, MAIN, UnitDetalleComprobantes;

{$R *.dfm}

procedure TFrmCarteraContable.FormShow(Sender: TObject);
begin
  DTPFecha.DateTime  := Now;
  FecAc              := Now;
  BuscaDatos;
end;

procedure TFrmCarteraContable.LimpiarGrillas(Grilla : TJvStringGrid; Col : Integer);
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

procedure TFrmCarteraContable.SGDatosDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var e,i   : integer;
    sCad  : String;
begin
   for e := 1 to SGDatos.RowCount - 1 do
     begin
       if Arow = e then
         begin
           if (SGDatos.Cells[0,e] = '.') or (SGDatos.Cells[0,e] = '-')then
             begin
               SGDatos.Canvas.Font.Color  := clBlue;
               SGDatos.Canvas.Brush.Color := $009CDEF7;
               SGDatos.Canvas.TextRect(Rect, Rect.Left, Rect.Top, SGDatos.Cells[Acol,Arow]);
             end;

           if (SGDatos.Cells[0,e] = '·') then
             begin
               SGDatos.Canvas.Font.Size   := 10;
               SGDatos.Canvas.Font.Color  := clBlue;
               SGDatos.Canvas.Brush.Color := $00B8C2FE;
               SGDatos.Canvas.TextRect(Rect, Rect.Left, Rect.Top, SGDatos.Cells[Acol,Arow]);
             end;


           if (SGDatos.Cells[0,e] = '_') then
             begin
               SGDatos.Canvas.Font.Size     := 8;
               SGDatos.Canvas.Font.Color    := clWhite;
               SGDatos.Canvas.Brush.Color   := $00DF9600;
               SGDatos.Canvas.TextRect(Rect, Rect.Left, Rect.Top, SGDatos.Cells[Acol,Arow]);
             end;

           if (SGDatos.Cells[ACol,0] = 'TOTALES') then
             begin
               SGDatos.Canvas.Font.Size     := 8;
               SGDatos.Canvas.Font.Color    := clWhite;
               SGDatos.Canvas.Brush.Color   := $00F39118;
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

           if (SGDatos.Cells[ACol,0] <> '') and (SGDatos.Cells[ACol,0] <> 'TOTALES') and (SGDatos.Cells[ACol,0] <> 'Facturas') and
              (SGDatos.Cells[ACol,0] <> 'Terceros') and (ACol > 34) and(ARow >= 1) and  (ACol < 65) and (SGDatos.Cells[0, Arow] = '') and (Arow <> SGDatos.RowCount-1) then
             begin
               SGDatos.Canvas.Font.Size     := 8;
               SGDatos.Canvas.Font.Color    := clBlack;
               SGDatos.Canvas.Brush.Color   := $00F2EDD2;
               SGDatos.Canvas.TextRect(Rect, Rect.Left, Rect.Top, SGDatos.Cells[Acol,Arow]);
             end;

           if (SGDatos.Cells[ACol,0] <> '') and (SGDatos.Cells[ACol,0] <> 'TOTALES') and (SGDatos.Cells[ACol,0] <> 'Facturas') and
              (SGDatos.Cells[ACol,0] <> 'Terceros') and (ACol > 65) and(ARow >= 1) and  (ACol < 96) and (SGDatos.Cells[0, Arow] = '') and (Arow <> SGDatos.RowCount-1) then
             begin
               SGDatos.Canvas.Font.Size     := 8;
               SGDatos.Canvas.Font.Color    := clBlack;
               SGDatos.Canvas.Brush.Color   := $00CDBB52;
               SGDatos.Canvas.TextRect(Rect, Rect.Left, Rect.Top, SGDatos.Cells[Acol,Arow]);
             end;

           if (SGDatos.Cells[ACol,0] <> '') and (SGDatos.Cells[ACol,0] <> 'TOTALES') and (SGDatos.Cells[ACol,0] <> 'Facturas') and
              (SGDatos.Cells[ACol,0] <> 'Terceros') and (ACol > 96) and(ARow >= 1) and  (ACol < 128) and (SGDatos.Cells[0, Arow] = '') and (Arow <> SGDatos.RowCount-1) then
             begin
               SGDatos.Canvas.Font.Size     := 8;
               SGDatos.Canvas.Font.Color    := clBlack;
               SGDatos.Canvas.Brush.Color   := $00DFF2B3;
               SGDatos.Canvas.TextRect(Rect, Rect.Left, Rect.Top, SGDatos.Cells[Acol,Arow]);
             end;

         end;
     end;

 if ARow < 1 then exit;
 if SGDatos.cells[ACol,ARow] = '' then exit;

 if (ACol = 0) and (SGDatos.Cells[Acol,Arow] = '-') then
   with SGDatos.Canvas do
     Draw(Rect.Left, Rect.Top,Mas.Picture.Graphic);

  if (ACol = 0) and (SGDatos.Cells[Acol,Arow] = '.') then
   with SGDatos.Canvas do
     Draw(Rect.Left, Rect.Top,Menos.Picture.Graphic);

  if SGDatos.Cells[ACol,ARow] <> '' then
    begin
      if   (ACol > 3) and(ARow >= 1)  then
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

procedure TFrmCarteraContable.FormCreate(Sender: TObject);
begin
  SGDatos.Cells[1,0]  := 'Nombre';
  SGDatos.Cells[2,0]  := 'Documento';
  SGDatos.Cells[4,0]  := 'Normal';
  SGDatos.Cells[5,0]  := '1 a 30';
  SGDatos.Cells[6,0]  := '31 a 60';
  SGDatos.Cells[7,0]  := '61 a 90';
  SGDatos.Cells[8,0]  := '91 a 180';
  SGDatos.Cells[9,0]  := '181 a 360';
  SGDatos.Cells[10,0] := ' > 360';
end;

procedure TFrmCarteraContable.SGDatosDblClick(Sender: TObject);
var  FCont, i, e, R, j : Integer;
     c, col, y, z      : Integer;
     Suma              : Real;
     Resta             : Real;
     p,w               : Integer;
     Factura           : string;
     F1,Fecha          : TDateTime;
     h,g               :Integer;
     vecDatos          : array of array of string;
     vecUnifica        : array of array of string;
begin

  FCont := SGDatos.RowCount - 1;

  if (SGDatos.Rows[SGDatos.Row].Strings[0] = '') then //Exit;
    begin
      FrmDetalleComprobantes  := TFrmDetalleComprobantes.Create(Self);
      try
        FrmDetalleComprobantes.ADOQuery1.Close;
        FrmDetalleComprobantes.ADOQuery1.SQL.Clear;
        FrmDetalleComprobantes.ADOQuery1.SQL.Add('SELECT *');
        FrmDetalleComprobantes.ADOQuery1.SQL.Add('FROM CONTDetComp');
        FrmDetalleComprobantes.ADOQuery1.SQL.Add('WHERE Tipo_Comprobante = '''+SGDatos.Rows[SGDatos.Row].Strings[30]+'''');
        FrmDetalleComprobantes.ADOQuery1.SQL.Add('      AND Numero_Comprobante = '''+SGDatos.Rows[SGDatos.Row].Strings[31]+'''');
        FrmDetalleComprobantes.ADOQuery1.Open;

        FrmDetalleComprobantes.LimpiaGrilla(FrmDetalleComprobantes.SGDetalle, 10);
        i := 1;
        while not FrmDetalleComprobantes.ADOQuery1.Eof do
          begin
            FrmDetalleComprobantes.SGDetalle.Cells[0,i] :=  FrmDetalleComprobantes.ADOQuery1.Fields.FieldByName('Tipo_Comprobante').AsString;
            FrmDetalleComprobantes.SGDetalle.Cells[1,i] :=  FrmDetalleComprobantes.ADOQuery1.Fields.FieldByName('Numero_Comprobante').AsString;
            FrmDetalleComprobantes.SGDetalle.Cells[2,i] :=  FrmDetalleComprobantes.ADOQuery1.Fields.FieldByName('Cuenta').AsString;
            FrmDetalleComprobantes.SGDetalle.Cells[3,i] :=  FrmDetalleComprobantes.ADOQuery1.Fields.FieldByName('Tercero').AsString;
            FrmDetalleComprobantes.SGDetalle.Cells[4,i] :=  FrmDetalleComprobantes.ADOQuery1.Fields.FieldByName('Centro_Costo').AsString;
            FrmDetalleComprobantes.SGDetalle.Cells[5,i] :=  FrmDetalleComprobantes.ADOQuery1.Fields.FieldByName('DocSoporte').AsString;
            FrmDetalleComprobantes.SGDetalle.Cells[6,i] :=  FrmDetalleComprobantes.ADOQuery1.Fields.FieldByName('Valor_Debito').AsString;
            FrmDetalleComprobantes.SGDetalle.Cells[7,i] :=  FrmDetalleComprobantes.ADOQuery1.Fields.FieldByName('Valor_Credito').AsString;
            inc(i);
            FrmDetalleComprobantes.ADOQuery1.Next;
          end;
        FrmDetalleComprobantes.SGDetalle.RowCount := i + 1;

        DataModule1.MuestraconAcceso(FrmDetalleComprobantes);
      except
        FrmDetalleComprobantes.Free;
      end;
    end;

  if SGDatos.Rows[SGDatos.Row].Strings[0] = '-' then
    begin
      SGDatos.Rows[SGDatos.Row].Strings[0] := '.';
      e     := SGDatos.Row;

      QryG.Close;
      QryG.SQL.Clear;
      QryG.SQL.Add('SELECT Primer_Apellido, Tercero,Cuenta,DocSoporte,CONTEncComp.Fecha_Comprobante,');
      QryG.SQL.Add('CONTDetComp.Tipo_Comprobante, CONTEncComp.Numero_Comprobante,');
      QryG.SQL.Add(' sum(Valor_Debito) as Debito,sum(Valor_Credito) as Credito');
      QryG.SQL.Add('FROM CONTEncComp,CONTDetComp, CONTTerce');
      QryG.SQL.Add('WHERE CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND');
      QryG.SQL.Add('            CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND');
      QryG.SQL.Add('            CONTDetComp.Tercero = CONTTerce.Numero_Documento AND');
      QryG.SQL.Add('            Estado =''G'' AND Cuenta like '+chr(39)+edit1.text+'%'+chr(39)+' AND ');
      QryG.SQL.Add('            Tercero = '''+SGDatos.Rows[SGDatos.Row].Strings[2]+'''');
      QryG.SQL.Add('GROUP BY Tercero,Cuenta,DocSoporte, Nombre, CONTEncComp.Fecha_Comprobante, CONTDetComp.Tipo_Comprobante, CONTEncComp.Numero_Comprobante');
      QryG.SQL.Add('having sum(Valor_Debito) - sum(Valor_Credito) <> 0');
      QryG.SQL.Add('ORDER BY Tercero,Cuenta,DocSoporte');
      QryG.Open;

      SetLength(vecDatos, QryG.RecordCount, 11);

      i := 0;
      while not QryG.Eof do
        begin
          vecDatos[i,0] := QryG.Fields.FieldByName('Primer_Apellido').AsString;
          vecDatos[i,1] := QryG.Fields.FieldByName('Tercero').AsString;
          vecDatos[i,2] := QryG.Fields.FieldByName('Cuenta').AsString;
          vecDatos[i,3] := QryG.Fields.FieldByName('DocSoporte').AsString;
          vecDatos[i,4] := FormatDateTime('DD/MM/YYYY', QryG.Fields.FieldByName('Fecha_Comprobante').AsDateTime);
          vecDatos[i,5] := QryG.Fields.FieldByName('Tipo_Comprobante').AsString;
          vecDatos[i,6] := QryG.Fields.FieldByName('Numero_Comprobante').AsString;
          vecDatos[i,7] := FloatToStr(QryG.Fields.FieldByName('Debito').AsFloat);
          vecDatos[i,8] := FloatToStr(QryG.Fields.FieldByName('Credito').AsFloat);
          inc(i);
          QryG.Next;
        end;

      i := 0;
      while i < Length(vecDatos) do
        begin
          if vecDatos[i,10] <>'X' then
            begin
              vecDatos[i,10] := 'X';
              SetLength(vecUnifica, Length(vecUnifica)+1,10);
              g := 0;
              p := 0;
              while g < Length(vecDatos) do
                begin
                  if (vecDatos[g,3] = vecDatos[i,3]) and (vecDatos[g,1] = vecDatos[i,1])   and (vecDatos[g,10] <>'X') then
                    begin
                      inc(p);
                      vecDatos[g,10]  := 'X';
                      vecUnifica[Length(vecUnifica)-1,0] := vecDatos[i,0];
                      vecUnifica[Length(vecUnifica)-1,1] := vecDatos[i,2];
                      vecUnifica[Length(vecUnifica)-1,2] := vecDatos[i,3];
                      vecUnifica[Length(vecUnifica)-1,3] := vecDatos[i,1];
                      if StrToDate(vecDatos[g,4]) < StrToDate(vecDatos[i,4]) then
                        vecUnifica[Length(vecUnifica)-1,4] := vecDatos[g,4]
                      else
                        vecUnifica[Length(vecUnifica)-1,4] := vecDatos[i,4];

                      vecUnifica[Length(vecUnifica)-1,5] := vecDatos[i,5];
                      vecUnifica[Length(vecUnifica)-1,6] := vecDatos[i,6];
                      if StrToFloat(vecDatos[i,7]) <> 0 then
                        vecUnifica[Length(vecUnifica)-1,7] := FloatToStr(StrToFloat(vecDatos[i,7]) - StrToFloat(vecDatos[g,8]))
                      else
                        vecUnifica[Length(vecUnifica)-1,7] := FloatToStr(StrToFloat(vecDatos[i,8]) - StrToFloat(vecDatos[g,7]));
                    end;
                  inc(g);
                end;
              if p = 0 then
                begin
                  vecDatos[i,10]  := 'X';
                  vecUnifica[Length(vecUnifica)-1,0] := vecDatos[i,0];
                  vecUnifica[Length(vecUnifica)-1,1] := vecDatos[i,2];
                  vecUnifica[Length(vecUnifica)-1,2] := vecDatos[i,3];
                  vecUnifica[Length(vecUnifica)-1,3] := vecDatos[i,1];
                  vecUnifica[Length(vecUnifica)-1,4] := vecDatos[i,4];
                  vecUnifica[Length(vecUnifica)-1,5] := vecDatos[i,5];
                  vecUnifica[Length(vecUnifica)-1,6] := vecDatos[i,6];

                  if StrToFloat(vecDatos[i,7]) <> 0 then
                    vecUnifica[Length(vecUnifica)-1,7] := FloatToStr(StrToFloat(vecDatos[i,7]))
                  else
                    vecUnifica[Length(vecUnifica)-1,7] := FloatToStr(StrToFloat(vecDatos[i,8]));
                end;
            end;
          inc(i);
        end;

      j                := SGDatos.RowCount - e - 1;

      g := 0;
      h := 0;
      while g < Length(vecUnifica) do
        begin
          if StrToFloat(vecUnifica[g,7]) <> 0 then
            inc(h);
          inc(g);
        end;

      SGDatos.RowCount := SGDatos.RowCount + h + 1;//QryG.RecordCount + 1;

      R                := SGDatos.RowCount- 1;

      i := 1;
      while j >= i do
        begin
          SGDatos.Cells[0,R]   :=   SGDatos.Rows[FCont].Strings[0];
          SGDatos.Cells[1,R]   :=   SGDatos.Rows[FCont].Strings[1];
          SGDatos.Cells[2,R]   :=   SGDatos.Rows[FCont].Strings[2];
          SGDatos.Cells[3,R]   :=   SGDatos.Rows[FCont].Strings[3];
          SGDatos.Cells[4,R]   :=   SGDatos.Rows[FCont].Strings[4];
          SGDatos.Cells[5,R]   :=   SGDatos.Rows[FCont].Strings[5];
          SGDatos.Cells[6,R]   :=   SGDatos.Rows[FCont].Strings[6];
          SGDatos.Cells[7,R]   :=   SGDatos.Rows[FCont].Strings[7];
          SGDatos.Cells[8,R]   :=   SGDatos.Rows[FCont].Strings[8];
          SGDatos.Cells[9,R]   :=   SGDatos.Rows[FCont].Strings[9];
          SGDatos.Cells[10,R]  :=   SGDatos.Rows[FCont].Strings[10];
          SGDatos.Cells[11,R]  :=   SGDatos.Rows[FCont].Strings[11];
          SGDatos.Cells[12,R]  :=   SGDatos.Rows[FCont].Strings[12];
          SGDatos.Cells[13,R]  :=   SGDatos.Rows[FCont].Strings[13];
          SGDatos.Cells[14,R]  :=   SGDatos.Rows[FCont].Strings[14];
          SGDatos.Cells[15,R]  :=   SGDatos.Rows[FCont].Strings[15];
          SGDatos.Cells[16,R]  :=   SGDatos.Rows[FCont].Strings[16];
          SGDatos.Cells[17,R]  :=   SGDatos.Rows[FCont].Strings[17];
          SGDatos.Cells[18,R]  :=   SGDatos.Rows[FCont].Strings[18];
          SGDatos.Cells[19,R]  :=   SGDatos.Rows[FCont].Strings[19];
          SGDatos.Cells[20,R]  :=   SGDatos.Rows[FCont].Strings[20];
          SGDatos.Cells[21,R]  :=   SGDatos.Rows[FCont].Strings[21];

          SGDatos.Rows[FCont].Strings[0]   := '';
          SGDatos.Rows[FCont].Strings[1]   := '';
          SGDatos.Rows[FCont].Strings[2]   := '';
          SGDatos.Rows[FCont].Strings[3]   := '';
          SGDatos.Rows[FCont].Strings[4]   := '';
          SGDatos.Rows[FCont].Strings[5]   := '';
          SGDatos.Rows[FCont].Strings[6]   := '';
          SGDatos.Rows[FCont].Strings[7]   := '';
          SGDatos.Rows[FCont].Strings[8]   := '';
          SGDatos.Rows[FCont].Strings[9]   := '';
          SGDatos.Rows[FCont].Strings[10]  := '';
          SGDatos.Rows[FCont].Strings[11]  := '';
          SGDatos.Rows[FCont].Strings[12]  := '';
          SGDatos.Rows[FCont].Strings[13]  := '';
          SGDatos.Rows[FCont].Strings[14]  := '';
          SGDatos.Rows[FCont].Strings[15]  := '';
          SGDatos.Rows[FCont].Strings[16]  := '';
          SGDatos.Rows[FCont].Strings[17]  := '';
          SGDatos.Rows[FCont].Strings[18]  := '';
          SGDatos.Rows[FCont].Strings[19]  := '';
          SGDatos.Rows[FCont].Strings[20]  := '';
          SGDatos.Rows[FCont].Strings[21]  := '';

          dec(FCont);
          dec(j);
          dec(R);
        end;

       i := e + 1;
       g := 0;
      while g < Length(vecUnifica) do
        begin
          if StrToFloat(vecUnifica[g,7]) <> 0 then
            begin
              Fecha  :=  StrToDate(vecUnifica[g,4]);
              F1     := now - Fecha;

             SGDatos.Cells[2,i]  := vecUnifica[g,2];
             SGDatos.Cells[3,i]  := vecUnifica[g,4];

             if (F1 <= 0) then
               begin
                 SGDatos.Cells[4,i] := FloatToStr((StrToFloat(vecUnifica[g,7])));
               end
             else
               if (F1 > 0) and (F1 <=30) then
                 begin
                   SGDatos.Cells[5,i] := FloatToStr((StrToFloat(vecUnifica[g,7])));
                 end
               else
                 if (F1 >= 31) and (F1 <= 60) then
                   begin
                     SGDatos.Cells[6,i] := FloatToStr((StrToFloat(vecUnifica[g,7])));
                   end
                 else
                   if (F1 >= 61) and (F1 <= 90) then
                     begin
                       SGDatos.Cells[7,i] := FloatToStr((StrToFloat(vecUnifica[g,7])));
                     end
                   else
                     if (F1 >= 91) and (F1 <= 180) then
                       begin
                         SGDatos.Cells[8,i] := FloatToStr((StrToFloat(vecUnifica[g,7])));
                       end
                     else
                       if (F1 >= 181) and (F1 <= 360) then
                         begin
                           SGDatos.Cells[9,i] := FloatToStr((StrToFloat(vecUnifica[g,7])));
                         end
                       else
                         if (F1 > 360) then
                           begin
                             SGDatos.Cells[10,i] := FloatToStr((StrToFloat(vecUnifica[g,7])));
                           end;

               SGDatos.Cells[20,i]   := '*';
               inc(i);
            end;
          inc(g);
        end;
      Totales;
      TotalesCol;
    end
  else
    begin
      SGDatos.Rows[SGDatos.Row].Strings[0] := '-';

      e     := SGDatos.Row + 1;

      R := 0;
      j := e;
      while j < SGDatos.RowCount - 1 do
        begin
          if SGDatos.Rows[j].Strings[0] <> '' then
            begin
              R := j - e;
              Break;
            end;

          SGDatos.Cells[0,j]   :=   '';
          SGDatos.Cells[1,j]   :=   '';
          SGDatos.Cells[2,j]   :=   '';
          SGDatos.Cells[3,j]   :=   '';
          SGDatos.Cells[4,j]   :=   '';
          SGDatos.Cells[5,j]   :=   '';
          SGDatos.Cells[6,j]   :=   '';
          SGDatos.Cells[7,j]   :=   '';
          SGDatos.Cells[8,j]   :=   '';
          SGDatos.Cells[9,j]   :=   '';
          SGDatos.Cells[10,j]  :=   '';
          SGDatos.Cells[11,j]  :=   '';
          SGDatos.Cells[12,j]  :=   '';
          SGDatos.Cells[13,j]  :=   '';
          SGDatos.Cells[14,j]  :=   '';
          SGDatos.Cells[15,j]  :=   '';
          SGDatos.Cells[16,j]  :=   '';
          SGDatos.Cells[17,j]  :=   '';
          SGDatos.Cells[18,j]  :=   '';
          SGDatos.Cells[19,j]  :=   '';
          SGDatos.Cells[20,j]  :=   '';
          SGDatos.Cells[21,j]  :=   '';
          inc(j)
        end;

      i := e;
      while i < FCont do
        begin
          if R = 0 then
            j := e + 1;
          SGDatos.Cells[0,i]   :=   SGDatos.Rows[j].Strings[0];
          SGDatos.Cells[1,i]   :=   SGDatos.Rows[j].Strings[1];
          SGDatos.Cells[2,i]   :=   SGDatos.Rows[j].Strings[2];
          SGDatos.Cells[3,i]   :=   SGDatos.Rows[j].Strings[3];
          SGDatos.Cells[4,i]   :=   SGDatos.Rows[j].Strings[4];
          SGDatos.Cells[5,i]   :=   SGDatos.Rows[j].Strings[5];
          SGDatos.Cells[6,i]   :=   SGDatos.Rows[j].Strings[6];
          SGDatos.Cells[7,i]   :=   SGDatos.Rows[j].Strings[7];
          SGDatos.Cells[8,i]   :=   SGDatos.Rows[j].Strings[8];
          SGDatos.Cells[9,i]   :=   SGDatos.Rows[j].Strings[9];
          SGDatos.Cells[10,i]  :=   SGDatos.Rows[j].Strings[10];
          SGDatos.Cells[11,i]  :=   SGDatos.Rows[j].Strings[11];
          SGDatos.Cells[12,i]  :=   SGDatos.Rows[j].Strings[12];
          SGDatos.Cells[13,i]  :=   SGDatos.Rows[j].Strings[13];
          SGDatos.Cells[14,i]  :=   SGDatos.Rows[j].Strings[14];
          SGDatos.Cells[15,i]  :=   SGDatos.Rows[j].Strings[15];
          SGDatos.Cells[16,i]  :=   SGDatos.Rows[j].Strings[16];
          SGDatos.Cells[17,i]  :=   SGDatos.Rows[j].Strings[17];
          SGDatos.Cells[18,i]  :=   SGDatos.Rows[j].Strings[18];
          SGDatos.Cells[19,i]  :=   SGDatos.Rows[j].Strings[19];
          SGDatos.Cells[20,i]  :=   SGDatos.Rows[j].Strings[20];
          SGDatos.Cells[21,i]  :=   SGDatos.Rows[j].Strings[21];
          inc(j);
          inc(i);
        end;

        if R > 0 then
          i  := SGDatos.RowCount - R + 3
        else
          i  := e + 1;

       while i < FCont -1 do
         begin
          SGDatos.Cells[0,i]   :=   '';
          SGDatos.Cells[1,i]   :=   '';
          SGDatos.Cells[2,i]   :=   '';
          SGDatos.Cells[3,i]   :=   '';
          SGDatos.Cells[4,i]   :=   '';
          SGDatos.Cells[5,i]   :=   '';
          SGDatos.Cells[6,i]   :=   '';
          SGDatos.Cells[7,i]   :=   '';
          SGDatos.Cells[8,i]   :=   '';
          SGDatos.Cells[9,i]   :=   '';
          SGDatos.Cells[10,i]  :=   '';
          SGDatos.Cells[11,i]  :=   '';
          SGDatos.Cells[12,i]  :=   '';
          SGDatos.Cells[13,i]  :=   '';
          SGDatos.Cells[14,i]  :=   '';
          SGDatos.Cells[15,i]  :=   '';
          SGDatos.Cells[16,i]  :=   '';
          SGDatos.Cells[17,i]  :=   '';
          SGDatos.Cells[18,i]  :=   '';
          SGDatos.Cells[19,i]  :=   '';
          SGDatos.Cells[20,i]  :=   '';
          SGDatos.Cells[21,i]  :=   '';
          inc(i);
         end;

        if R > 0 then
          SGDatos.RowCount   := (SGDatos.RowCount - R)
        else
          SGDatos.RowCount   := e + 4;
    end;
end;

procedure TFrmCarteraContable.TotalesxCliente;
var  i, e, c  : Integer;
     Suma     : Real;
begin
  i := 4;
  while i < SGDatos.ColCount do
    begin
      e     := 2;
      Suma  := 0;
      while e < SGDatos.RowCount - 1 do
        begin
          if (SGDatos.Rows[e].Strings[20] = '*') and (SGDatos.Rows[e].Strings[i] <> '') and (SGDatos.Rows[e].Strings[0] <> '_') then
            begin
              suma := Suma + StrToFloat(SGDatos.Rows[e].Strings[i]);
            end;
          if (SGDatos.Rows[e].Strings[0] <> '') then
            begin
              c := e -2;
              if c > 0 then
              Begin
                SGDatos.Rows[c].Strings[20] := '*';
                SGDatos.Rows[c].Strings[2]   := 'TOTAL';
                SGDatos.Rows[c].Strings[i]   := FloatToStr(Suma);
              end;  
              Suma                         := 0;
            end;
          inc(e);
        end;
      inc(i);
    end;

  i := 1;
  while i < SGDatos.RowCount - 1 do
    begin
      if SGDatos.Rows[i].Strings[2] = 'TOTAL' then
        SGDatos.Rows[i].Strings[0]   := '·';
      inc(i);
    end;
end;

procedure TFrmCarteraContable.Totales;
var i, e  : Integer;
    Suma  : Real;
begin
  i := 4;
  while i < SGDatos.ColCount do
    begin
      e     := 1;
      Suma  := 0;
      while e < SGDatos.RowCount - 1 do
        begin
          if  (SGDatos.Rows[e].Strings[i] <> '') and (SGDatos.Rows[e].Strings[3] <> '') then    //(SGDatos.Rows[e].Strings[20] = '*') and
            begin
              suma := Suma + StrToFloat(SGDatos.Rows[e].Strings[i]);
            end;
          if e = SGDatos.RowCount -2 then
            begin
              SGDatos.Rows[e].Strings[0]   := '_';
              SGDatos.Rows[e].Strings[20]  := '*';
              SGDatos.Rows[e].Strings[2]   := 'TOTALES';
              SGDatos.Rows[e].Strings[i]   := FloatToStr(Suma);
            end;
          inc(e);
        end;
      inc(i);
    end;
end;

procedure TFrmCarteraContable.SGDatosClick(Sender: TObject);
begin
  if (SGDatos.Rows[SGDatos.Row].Strings[0] = '.')  or (SGDatos.Rows[SGDatos.Row].Strings[0] = '-') then
    begin
      LblNit.Caption          := SGDatos.Rows[SGDatos.Row].Strings[2];
      LblDescripcion.Caption  := SGDatos.Rows[SGDatos.Row].Strings[1];
    end
  else
    if (SGDatos.Rows[SGDatos.Row].Strings[0] = '') then
      LblDoc.Caption          := SGDatos.Rows[SGDatos.Row].Strings[2];
end;

procedure TFrmCarteraContable.BtnExportarClick(Sender: TObject);
Var Archivo:String;
begin
  Archivo := ExtractFilePath(paramstr(0))+'Reportes\';
  XmlExcel(ExtractFilePath(paramstr(0))+'Reportes\','CarteraContable.xml', SGDatos);
  shellexecute(handle,'open',pchar(Archivo+'CarteraContable.xml'),'','',sw_shownormal);
end;

procedure TFrmCarteraContable.TotalesCol;
var i, e : Integer;
    Suma : Real;
begin
  i := 1;
  while i < SGDatos.RowCount - 1 do
    begin
      Suma  := 0;
      e     := 3;
      while e < SGDatos.ColCount - 1 do
        begin
          if (SGDatos.Rows[i].Strings[20] = '*') and (SGDatos.Rows[i].Strings[e] <> '') and (e > 3)  then
            begin
              suma := Suma + StrToFloat(SGDatos.Rows[i].Strings[e]);
            end;

          if e = SGDatos.ColCount - 2 then
            begin
              inc(e);
              SGDatos.Rows[0].Strings[e]  := 'TOTALES';
              SGDatos.ColWidths[e]        := Length('TOTALES')+90;
              SGDatos.Rows[i].Strings[e]  := FloatToStr(Suma);
            end;
          inc(e);
        end;
      inc(i);
    end;
end;


procedure TFrmCarteraContable.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
  FrmCarteraContable := nil;
end;

procedure TFrmCarteraContable.BtnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCarteraContable.BuscaDatos;
var i, e , p    : Integer;
    F1,Fecha    : TDateTime;
    //vecDatos    : array of array of string;
    vecUnifica  : array of array of string;
    Valor:currency;
begin
   QryG.Close;
   QryG.SQL.Clear;
   QryG.SQL.Add('SELECT upper(Tercero) as Tercero,upper(DocSoporte) as DocSoporte,upper(Primer_Apellido) as Nombre,min(Fecha_Comprobante) as Fecha_Comprobante, sum(Valor_Debito) as Debito,sum(Valor_Credito) as Credito');
   QryG.SQL.Add('FROM CONTEncComp,CONTDetComp, CONTTerce');
   QryG.SQL.Add('WHERE CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND');
   QryG.SQL.Add('            CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND');
   QryG.SQL.Add('            CONTEncComp.Empresa = CONTDetComp.Empresa AND');
   QryG.SQL.Add('            CONTDetComp.Tercero = CONTTerce.Numero_Documento AND');
   QryG.SQL.Add('            CONTEncComp.Estado =''G'' AND Cuenta like '+chr(39)+edit1.text+'%'+chr(39));
   QryG.SQL.Add('            AND Fecha_Comprobante <= convert(datetime,'+chr(39)+datetostr(DTPFecha.Date)+' 23:59:59.000'+chr(39)+')');
   QryG.SQL.Add('GROUP BY upper(Tercero),upper(DocSoporte),upper(Primer_Apellido)');
   QryG.SQL.Add('HAVING sum(Valor_Debito) - sum(Valor_Credito) <> 0');
   QryG.SQL.Add('ORDER BY upper(Tercero),upper(DocSoporte)');
   QryG.Open;

   SetLength(vecUnifica, QryG.RecordCount, 8);

   i := 0;
   MaskEdit1.Text := '0';
   while not QryG.Eof do
    begin
      vecUnifica[i,0] := QryG.Fields.FieldByName('Nombre').AsString;
      vecUnifica[i,1] := 'Sin cuenta';//QryG.Fields.FieldByName('Cuenta').AsString;
      vecUnifica[i,2] := QryG.Fields.FieldByName('DocSoporte').AsString;
      vecUnifica[i,3] := QryG.Fields.FieldByName('Tercero').AsString;
      vecUnifica[i,4] := FormatDateTime('DD/MM/YYYY', QryG.Fields.FieldByName('Fecha_Comprobante').AsDateTime);
      vecUnifica[i,5] := 'Sin TP'; //QryG.Fields.FieldByName('Tipo_Comprobante').AsString;
      vecUnifica[i,6] := 'Sin NC'; //QryG.Fields.FieldByName('Numero_Comprobante').AsString;
      vecUnifica[i,7] := FloatToStr(QryG.Fields.FieldByName('Debito').AsFloat - QryG.Fields.FieldByName('Credito').AsFloat);

      MaskEdit1.Text := floattostr(StrtoFloat(MaskEdit1.Text) + (QryG.Fields.FieldByName('Debito').AsFloat-QryG.Fields.FieldByName('Credito').AsFloat));
      inc(i);
      QryG.Next;
    end;
   valor := strtofloat(MaskEdit1.Text);
   MaskEdit1.Text:=Format('%16.2n',[valor]);

   LimpiarGrillas(SGDatos, 50);

   i := 0;
   p := 0;
   while i < Length(vecUnifica) do
     begin
           Fecha  :=  StrToDateTime(vecUnifica[i,4]);
           if FecAc < Fecha then
             F1   := Fecha - FecAc
           else
             F1   := FecAc - Fecha;

           if p = 1 then
             begin
               SGDatos.Cells[0,p]  := '.';
               SGDatos.Cells[1,p]  := vecUnifica[i,0];
               SGDatos.Cells[2,p]  := vecUnifica[i,3];
               e := p;
               inc(p);

               SGDatos.Cells[2,p]  := vecUnifica[i,2];
               SGDatos.Cells[3,p]  := vecUnifica[i,4];

               if (F1 <= 0) then
                 begin
                   SGDatos.Cells[4,p] := FloatToStr((StrToFloat(vecUnifica[i,7])));
                 end
               else
                 if (F1 > 0) and (F1 <=30) then
                   begin
                     SGDatos.Cells[5,p] := FloatToStr((StrToFloat(vecUnifica[i,7])));
                   end
                 else
                   if (F1 >= 31) and (F1 <= 60) then
                     begin
                       SGDatos.Cells[6,p] := FloatToStr((StrToFloat(vecUnifica[i,7])));
                     end
                   else
                     if (F1 >= 61) and (F1 <= 90) then
                       begin
                         SGDatos.Cells[7,p] := FloatToStr((StrToFloat(vecUnifica[i,7])));
                       end
                     else
                       if (F1 >= 91) and (F1 <= 180) then
                         begin
                           SGDatos.Cells[8,p] := FloatToStr((StrToFloat(vecUnifica[i,7])));
                         end
                       else
                         if (F1 >= 181) and (F1 <= 360) then
                           begin
                             SGDatos.Cells[9,p] := FloatToStr((StrToFloat(vecUnifica[i,7])));
                           end
                         else SGDatos.Cells[10,p] := FloatToStr((StrToFloat(vecUnifica[i,7])));


               SGDatos.Cells[20,p]   := '*';
               SGDatos.Cells[30,p]   := vecUnifica[i,5];
               SGDatos.Cells[31,p]   := vecUnifica[i,6];
             end
           else
             begin
               if vecUnifica[i,3] = SGDatos.Rows[e].Strings[2] then
                 begin
                   SGDatos.Cells[2,p]   := vecUnifica[i,2];
                   SGDatos.Cells[3,p]   := vecUnifica[i,4];

                   if (F1 <= 0) then
                     begin
                       SGDatos.Cells[4,p] := FloatToStr((StrToFloat(vecUnifica[i,7])));
                     end
                   else
                     if (F1 > 0) and (F1 <=30) then
                       begin
                         SGDatos.Cells[5,p] := FloatToStr((StrToFloat(vecUnifica[i,7])));
                       end
                     else
                       if (F1 >= 31) and (F1 <= 60) then
                         begin
                           SGDatos.Cells[6,p] := FloatToStr((StrToFloat(vecUnifica[i,7])));
                         end
                       else
                         if (F1 >= 61) and (F1 <= 90) then
                           begin
                             SGDatos.Cells[7,p] := FloatToStr((StrToFloat(vecUnifica[i,7])));
                           end
                         else
                           if (F1 >= 91) and (F1 <= 180) then
                             begin
                               SGDatos.Cells[8,p] := FloatToStr((StrToFloat(vecUnifica[i,7])));
                             end
                           else
                             if (F1 >= 181) and (F1 <= 360) then
                               begin
                                 SGDatos.Cells[9,p] := FloatToStr((StrToFloat(vecUnifica[i,7])));
                               end
                             else SGDatos.Cells[10,p] := FloatToStr((StrToFloat(vecUnifica[i,7])));

                   SGDatos.Cells[20,p]   := '*';
                   SGDatos.Cells[30,p]   := vecUnifica[i,5];
                   SGDatos.Cells[31,p]   := vecUnifica[i,6];
                 end
               else
                 begin
                   inc(p);
                   inc(p);
                   SGDatos.Cells[0,p]  :=  '.';
                   SGDatos.Cells[1,p]  := vecUnifica[i,0];
                   SGDatos.Cells[2,p]  := vecUnifica[i,3];
                   e := p;

                   inc(p);
                   SGDatos.Cells[2,p]  := vecUnifica[i,2];
                   SGDatos.Cells[3,p]  := vecUnifica[i,4];

                   if (F1 <= 0) then
                     begin
                       SGDatos.Cells[4,p] := FloatToStr((StrToFloat(vecUnifica[i,7])));
                     end
                   else
                     if (F1 > 0) and (F1 <=30) then
                       begin
                         SGDatos.Cells[5,p] := FloatToStr((StrToFloat(vecUnifica[i,7])));
                       end
                     else
                       if (F1 >= 31) and (F1 <= 60) then
                         begin
                           SGDatos.Cells[6,p] := FloatToStr((StrToFloat(vecUnifica[i,7])));
                         end
                       else
                         if (F1 >= 61) and (F1 <= 90) then
                           begin
                             SGDatos.Cells[7,p] := FloatToStr((StrToFloat(vecUnifica[i,7])));
                           end
                         else
                           if (F1 >= 91) and (F1 <= 180) then
                             begin
                               SGDatos.Cells[8,p] := FloatToStr((StrToFloat(vecUnifica[i,7])));
                             end
                           else
                             if (F1 >= 181) and (F1 <= 360) then
                               begin
                                 SGDatos.Cells[9,p] := FloatToStr((StrToFloat(vecUnifica[i,7])));
                               end
                             else SGDatos.Cells[10,p] := FloatToStr((StrToFloat(vecUnifica[i,7])));

                   SGDatos.Cells[20,p]   := '*';
                   SGDatos.Cells[30,p]   := vecUnifica[i,5];
                   SGDatos.Cells[31,p]   := vecUnifica[i,6];
                 end;
             end;
           inc(p);
     inc(i);
   end;
   SGDatos.RowCount  := p + 4;
   TotalesxCliente;
   TotalesCol;
   Totales;
end;

procedure TFrmCarteraContable.DTPFechaChange(Sender: TObject);
begin
  FecAc  := DTPFecha.DateTime;
end;

procedure TFrmCarteraContable.BtnCargarClick(Sender: TObject);
begin
  BuscaDatos;
end;

end.
