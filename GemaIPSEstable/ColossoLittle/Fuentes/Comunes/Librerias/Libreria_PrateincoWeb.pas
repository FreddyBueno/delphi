unit Libreria_PrateincoWeb;

interface

uses DB, SysUtils,Dialogs, Windows,Winsock,Grids,ADODB,IdSMTP,StdCtrls,Variants,
     IdMessage,Classes,Graphics,Printers,Forms,ExtCtrls,IWExtCtrls,Registry;

procedure DegradesIW(Forma: TObject;r,g,b,ir,ig,ib:Integer;Sentido:integer;Estilo:TBrushStyle);
procedure DegradesLineal(Forma: TObject;Color,ColorFijo:Integer);
procedure IWButtonRed(i:TObject;Brushb:TBrushStyle;tam,desp,color,x,y:integer);

implementation
uses NB30;

procedure IWButtonRed(i:TObject;Brushb:TBrushStyle;tam,desp,color,x,y:integer);
begin
  if i is TIWImage then
  Begin
    TIWImage(i).Picture.Bitmap.Width  := TIWImage(i).Width;
    TIWImage(i).Picture.Bitmap.Height := TIWImage(i).Height;
    TIWImage(i).Picture.Bitmap.Canvas.Brush.Style := Brushb;
    //TIWImage(i).Picture.Bitmap.Canvas.Brush.Color := color;
    TIWImage(i).Picture.Bitmap.Canvas.Pen.Width := tam;
    TIWImage(i).Picture.Bitmap.Canvas.Pen.Color := color;
    TIWImage(i).Picture.Bitmap.Canvas.RoundRect(desp,desp, TIWImage(i).Width-desp,TIWImage(i).Height-desp,x,y);
  End
  Else if i is TIWImageButton then
  Begin
    TIWImageButton(i).Picture.Bitmap.Width  := TIWImageButton(i).Width;
    TIWImageButton(i).Picture.Bitmap.Height := TIWImageButton(i).Height;
    TIWImageButton(i).Picture.Bitmap.Canvas.Brush.Style := Brushb;
    TIWImageButton(i).Picture.Bitmap.Canvas.Pen.Width := tam;
    TIWImageButton(i).Picture.Bitmap.Canvas.RoundRect(0,0, TIWImageButton(i).Width,TIWImageButton(i).Height,x,y);
  End;
end;

procedure DegradesLineal(Forma: TObject;Color,ColorFijo:Integer);
var Row, Ht: Word ;
begin
  if forma is TIWImage then
  Begin
    TIWImage(Forma).Picture.Bitmap.Width  := TIWImage(Forma).Width;
    TIWImage(Forma).Picture.Bitmap.Height := TIWImage(Forma).Height;
    Ht := (TIWImage(Forma).ClientHeight + 255) div 256 ;
    for Row := 0 to 255 do
      with TIWImage(Forma).Picture.Bitmap.Canvas do
      begin
         if odd(row) then Brush.Color := Color+Row
         else Brush.Color := ColorFijo;

         FillRect(Rect(0, Row * Ht, TIWImage(Forma).ClientWidth, ((Row + 1) * Ht)));
      end;
  End;
end;

procedure DegradesIW(Forma: TObject;r,g,b,ir,ig,ib:Integer;Sentido:integer;Estilo:TBrushStyle);
var Row, Ht,j: Word ;
begin
  if forma is TIWImage then
  Begin
    TIWImage(Forma).Picture.Bitmap.Width  := TIWImage(Forma).Width;
    TIWImage(Forma).Picture.Bitmap.Height := TIWImage(Forma).Height;
    //bsSolid, bsClear, bsHorizontal, bsVertical,bsFDiagonal, bsBDiagonal, bsCross, bsDiagCross
    TIWImage(Forma).Picture.Bitmap.Canvas.Brush.Style := Estilo;
    Ht := (TIWImage(Forma).ClientHeight + 255) div 256 ;
    for Row := 0 to 255 do
    Begin
      if sentido = 0 then j:=Row
      else j:= (255-Row);

      with TIWImage(Forma).Picture.Bitmap.Canvas do
      begin
        Brush.Color := rgb(r+(j*ir),g+(j*ig),b+(j*ib));

        FillRect(Rect(0, row * Ht, TIWImage(Forma).ClientWidth, ((row + 1) * Ht)));
      end;
    End;
  End;
end;


end.

