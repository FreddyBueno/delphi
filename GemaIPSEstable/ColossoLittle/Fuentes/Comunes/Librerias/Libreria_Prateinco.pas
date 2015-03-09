unit Libreria_Prateinco;

interface

uses DB, SysUtils,Dialogs, Windows,Winsock,Grids,ADODB,IdSMTP,StdCtrls,Variants,DBGrids,
     IdMessage,Classes,Graphics,Printers,Forms,ExtCtrls,Registry,dateutils,math,
     Controls,Buttons,DBCtrls,IniFiles,StrUtils,Shellapi,Vcl.Clipbrd,

       Winapi.Messages,

    Vcl.ImgList, Vcl.ComCtrls;

const
   EAN_izqA : array[0..9] of PChar=('0001101','0011001','0010011','0111101','0100011',
  '0110001','0101111','0111011','0110111','0001011');
   EAN_izqB : array[0..9] of PChar=('0100111','0110011','0011011','0100001','0011101',
  '0111001','0000101','0010001','0001001','0010111');
   EAN_dcha : array[0..9] of PChar=('1110010','1100110','1101100','1000010','1011100',
  '1001110','1010000','1000100','1001000','1110100');
   CodificaIzq : array[0..9] of PChar=('AAAAA','ABABB','ABBAB','ABBBA','BAABB',
 'BBAAB','BBBAA','BABAB','BABBA','BBABA');

type
  TRGBTripleArray = array[0..32767] of TRGBTriple;
  PRGBTripleArray = ^TRGBTripleArray;

var
  postoken:integer;
  arreglovar:array[0..1] of array[0..50] of string;

function Replace(Dest, SubStr, Str: string): string;
function Tipo_Dato(td: TFieldType): string;
function alineardatos(codigo: string; catidad: integer): string;
function parecido(str1: string; str2: string): integer;
function ParecidoBinario(arch1: string; arch2: string): integer;
function pad(codigo: string; catidad: integer): string;
function EncriptaXOR(cadena,clave : string) : string;
function ObtenerMAC(PCName: string) : string;
function DigitoVerificacion(Nit :string) :Integer;
function xIntToLletras(Numero:LongInt):String;
function ObtenerSerial: String;
function Busca_Parametro(cadena:string;comienzo:integer;token:string):string;
function Reemplaza_Parametro(cadena,defecto:string):string;
function Reemplaza_ParametroArreglo(cadena:string):string;
function Busca_arreglo(cadena:string;matrix:array of string):Boolean;
function Busca_Item(cadena:String;Numero:Integer):string;
function Busca_Entre(cadena,Desde,Hasta:String):string;
function ObtenerNombrePC():String;
procedure XmlExcel(Ubicacion:String; Archivo:String; StringGrid1:TStringGrid);
procedure XmlExcelDB(Ubicacion:String; Archivo:String; ADOQuery:TADOQuery);
procedure EnviarMensaje(sCorreo, sUsuario, sClave, sHost, sAdjunto, sAsunto, sDestino, sMensaje: String;puerto:integer);
procedure Dibujar(canv:Tcanvas;x,y:integer; matrix : string;num:string);
Function CodificaEAN(canv:TCanvas;x,y:integer; num : string) : string;
Function  EANCorrecto(var num : string) : string;
function CalculaEdadCompleta(Fecha:TDateTime):String;
procedure CambiarRegistroWindows(ClaveRoot:HKEY;SubClave,valor:string);
function validanumero(key:char):char;
function validacontenido(contenido:string;invalido:string;msg:string):bool;
function campotoedit(campo:variant):variant;
function validavalor(key:char;valor:string):string;
Procedure ColorGrillas(grid:TDBGrid; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
Function UltimoDiaMes(fec:TDate):Tdate;
Function stf(vr:string):real;
procedure RedimensionarImagen(Imagen:TBitmap; Ancho, Alto: Integer);
Function InputMemo(titulo:string;mm1:String) : String;
procedure Degrades(Forma: TObject;r,g,b,ir,ig,ib:Integer;Sentido:integer;Estilo:TBrushStyle);
Function FBIni(tipo:string;n1,n2,n3:string):string;
Function ntsfbg(vr:Extended):string;
Function ConvertNumerico(cadena:string):String;
function clearMultiByteChar(Text: String): String;
function extractSimbolFromMultiByteChar(Text: PAnsiChar): Char;
procedure StrToClipboard(Grid:TDBGrid);
procedure StrToClipboardSG(SG:TStringGrid);
Function SoloCaracteres(s:string):string;
Function EliminaTildes(s:string):string;
Function SoloNumeros(cadena:string):String;
Function LeftToken(str,token:String):string;
Function RightToken(str,token:String):string;
Procedure VerificaAlerta(Tp_Ident,Nr_Ident:String);
procedure ScreenShotFBG(hWindow: HWND; bm: TBitmap);
Function TamanoTexto(valor:integer):integer;
Function TamanoTextoCad(cad:string):integer;

implementation
uses NB30,udatamodule1;

Function TamanoTextoCad(cad:string):integer;
var
  Bitmap: TBitmap;
begin
  Bitmap := TBitmap.Create;
  TamanoTextoCad:=Bitmap.Canvas.TextWidth(cad)+30;
End;

Function TamanoTexto(valor:integer):integer;
var
  Bitmap: TBitmap;
  i:integer;
  n:string;
begin
{               if QryApoyo.FieldValues['Tamaño'] < 3 then tm := 14
               else if QryApoyo.FieldValues['Tamaño'] < 6 then tm := 12
               else if QryApoyo.FieldValues['Tamaño'] < 9 then tm := 11
               else if QryApoyo.FieldValues['Tamaño'] < 12 then tm := 10
               else if QryApoyo.FieldValues['Tamaño'] < 15 then tm := 9
               else if QryApoyo.FieldValues['Tamaño'] < 20 then tm := 8
               else tm := 7;}


  Bitmap := TBitmap.Create;

  n:='';
  for I := 1 to valor do n:=n+'M';

  TamanoTexto:=Bitmap.Canvas.TextWidth(n);
End;

{**********************************************}
// Capture a window
procedure ScreenShotFBG(hWindow: HWND; bm: TBitmap);
var
  Left, Top, Width, Height: Word;
  R: TRect;
  dc: HDC;
  lpPal: PLOGPALETTE;
begin
  {Check if valid window handle}
  if not IsWindow(hWindow) then Exit;
  {Retrieves the rectangular coordinates of the specified window}
  GetWindowRect(hWindow, R);
  Left := R.Left;
  Top := R.Top;
  Width := R.Right - R.Left;
  Height := R.Bottom - R.Top;
  bm.Width  := Width;
  bm.Height := Height;
  {get the screen dc}
  dc := GetDc(0);
  if (dc = 0) then
  begin
    Exit;
  end;
  {do we have a palette device?}
  if (GetDeviceCaps(dc, RASTERCAPS) and
    RC_PALETTE = RC_PALETTE) then
  begin
    {allocate memory for a logical palette}
    GetMem(lpPal,
      SizeOf(TLOGPALETTE) +
    (255 * SizeOf(TPALETTEENTRY)));
    {zero it out to be neat}
    FillChar(lpPal^,
      SizeOf(TLOGPALETTE) +
    (255 * SizeOf(TPALETTEENTRY)),
      #0);
    {fill in the palette version}
    lpPal^.palVersion := $300;
    {grab the system palette entries}
    lpPal^.palNumEntries :=
      GetSystemPaletteEntries(dc,
      0,
      256,
      lpPal^.palPalEntry);
    if (lpPal^.PalNumEntries <> 0) then
    begin
      {create the palette}
      bm.Palette := CreatePalette(lpPal^);
    end;
    FreeMem(lpPal, SizeOf(TLOGPALETTE) +
    (255 * SizeOf(TPALETTEENTRY)));
  end;
  {copy from the screen to the bitmap}
  BitBlt(bm.Canvas.Handle,
    0,
    0,
    Width,
    Height,
    Dc,
    Left,
    Top,
    SRCCOPY);
  {release the screen dc}
  ReleaseDc(0, dc);
end;

Procedure VerificaAlerta(Tp_Ident,Nr_Ident:String);
Var
  ADOQAlertas,ADOQPacientes:TAdoquery;
  DS:TDatasource;
  A, AA, M, MM, D, DD: Word;
  Anio, Mes, Dia: double;
Begin
  //Abre y Ubica el Paciente
  ADOQPacientes              := TADOQuery.Create(Application);
  ADOQPacientes.Name         := 'ADOQPaceintes';
  ADOQPacientes.Connection   := DataModule1.ADOConnection1;
  ADOQPacientes.SQL.Clear;
  ADOQPacientes.SQL.Add('SELECT * FROM SAPacientes WHERE Tp_Ident_Usuar = '+chr(39)+Tp_Ident+chr(39)+' AND Nr_Ident_Usuar = '+chr(39)+Nr_Ident+chr(39));
  ADOQPacientes.Open;
  if ADOQPacientes.RecordCount > 0 then
  Begin
    //Calcula La Edad en Anio, Mes o Dia
    DecodeDate(ADOQPacientes.fieldvalues['Fec_Nacimineto'], A, M, D);
    DecodeDate(Date, AA, MM, DD);
    Anio := Int(AA - A);
    if( M <= MM ) then Mes := MM - M
    else
    begin
      Mes := MM+12-M;
      Anio := Anio -1;
    end;
    if( D <= DD ) then
      Dia := DD - D
    else
    begin
      Dia:=DD+MonthDays[IsLeapYear(AA),MM]-D;
      Mes := Mes -1;
    end;
    if Mes < 0 then
    begin
      Anio := Anio - 1;
      Mes := 12 + Mes;
    end;

    //Crea y Abre las Alertas
    ADOQAlertas              := TADOQuery.Create(Application);
    ADOQAlertas.Name         := 'ADOQAlertas';
    ADOQAlertas.Connection   := DataModule1.ADOConnection1;
    ADOQAlertas.SQL.Clear;
    ADOQAlertas.SQL.Add('SELECT * FROM SAAlertas');
    ADOQAlertas.Open;
    ADOQAlertas.First;
    while NOT ADOQAlertas.Eof do
    Begin
      if ADOQAlertas.FieldValues['Sexo'] <> '' then
      Begin
        if (Anio >= ADOQAlertas.FieldValues['Edad_Min']) AND
           (Anio <= ADOQAlertas.FieldValues['Edad_Max']) AND
           (ADOQAlertas.FieldValues['sexo'] = ADOQPacientes.FieldValues['sexo']) then
             Showmessage(ADOQAlertas.FieldValues['Alerta']+ ' '+ ADOQAlertas.FieldValues['Mensaje']);
      End
      Else BEgin
        if (Anio >= ADOQAlertas.FieldValues['Edad_Min']) AND
           (Anio <= ADOQAlertas.FieldValues['Edad_Max']) then
             Showmessage(ADOQAlertas.FieldValues['Alerta']+ ' '+ ADOQAlertas.FieldValues['Mensaje']);
      End;

      ADOQAlertas.Next;
    End;
    ADOQAlertas.Close;
    ADOQAlertas.Free;
  End;
  ADOQPacientes.Close;
  ADOQPacientes.Free;
End;

//Devuelve toda la cadena derecha antes del token
//Ej RightToken('Hola mundo - chao','-');  devuelve 'chao'
Function RightToken(str,token:String):string;
Begin
  RightToken:=Rightstr(str,length(str)-pos(token,str));
End;

//Devuelve toda la cadena izquierda antes del token
//Ej LeftToken('Hola mundo - chao','-');  devuelve 'Hola Mundo'
Function LeftToken(str,token:String):string;
Begin
  LeftToken:=Leftstr(str,pos(token,str)-length(token));
End;

Function SoloCaracteres(s:string):string;
var i:Integer;
    z:string;
Begin
  z:=s;
  z:=ReplaceStr(z,'á','a');
  z:=ReplaceStr(z,'é','e');
  z:=ReplaceStr(z,'í','i');
  z:=ReplaceStr(z,'ó','o');
  z:=ReplaceStr(z,'ú','u');
  z:=ReplaceStr(z,'ñ','n');
  z:=ReplaceStr(z,'Á','A');
  z:=ReplaceStr(z,'É','E');
  z:=ReplaceStr(z,'Í','I');
  z:=ReplaceStr(z,'Ó','O');
  z:=ReplaceStr(z,'Ú','U');

  z:=ReplaceStr(z,'-','');
  z:=ReplaceStr(z,'/','');
  z:=ReplaceStr(z,'\','');
  for i := 1 to 31 do
    z:=ReplaceStr(z,chr(i),'');
  for i := 32 to 45 do
    z:=ReplaceStr(z,chr(i),'');
  for i := 58 to 96 do
    z:=ReplaceStr(z,chr(i),'');
  for i := 123 to 255 do
    z:=ReplaceStr(z,chr(i),'');

  SoloCaracteres:=z;
End;

Function EliminaTildes(s:string):string;
var i:Integer;
    z:string;
Begin
  z:=s;
  z:=ReplaceStr(z,'á','a');
  z:=ReplaceStr(z,'é','e');
  z:=ReplaceStr(z,'í','i');
  z:=ReplaceStr(z,'ó','o');
  z:=ReplaceStr(z,'ú','u');
  z:=ReplaceStr(z,'ñ','n');
  z:=ReplaceStr(z,'Á','A');
  z:=ReplaceStr(z,'É','E');
  z:=ReplaceStr(z,'Í','I');
  z:=ReplaceStr(z,'Ó','O');
  z:=ReplaceStr(z,'Ú','U');
  EliminaTildes:=z;
End;

procedure StrToClipboard(Grid:TDBGrid);
Var QueString:String;
    i:Integer;
begin
  ClipBoard.Clear;
  QueString:='';

  Grid.DataSource.DataSet.First;
  while NOT Grid.DataSource.DataSet.Eof do
  Begin
    for I := 0 to Grid.DataSource.DataSet.FieldDefs.Count - 1 do
    Begin
      QueString:= QueString + Grid.DataSource.DataSet.Fields.Fields[i].AsString +#9;
      //QueString:= QueString + Grid.DataSource.DataSet.FieldValues[Grid.DataSource.DataSet.FieldDefs.Items[i].Name]+#9;
    End;
    QueString:= QueString +  #13;

    Grid.DataSource.DataSet.Next;
  End;
  ClipBoard.SetTextBuf(Pchar(QueString));
end;

procedure StrToClipboardSG(SG:TStringGrid);
Var QueString:String;
    i,j:Integer;
begin
  ClipBoard.Clear;
  QueString:='';

  for j := 0 to SG.RowCount do
  Begin
    for i := 0 to SG.ColCount do
    Begin
      QueString:= QueString + SG.Cells[i,j] +#9;
    End;
    QueString:= QueString +  #13;
  End;
  ClipBoard.SetTextBuf(Pchar(QueString));
end;

// Descompone un caracter en 2 partes y retorna solo el caracter, quitando acentos y otros posibles agregados.
function extractSimbolFromMultiByteChar(Text: PAnsiChar): Char;
var
  Buffer: Char;
  Size: Integer;
begin
  Size := MultiByteToWideChar(0,0,Text,-1,nil,0);
  if (Size > 0) then
  begin
    MultiByteToWideChar(0 ,MB_COMPOSITE , Text,-1, @Buffer, Size);
    result:=Buffer;
  end;
end;

//Recorre una cadena caracter a caracter, descomponiendolo y retornando solo el caracter limpio.
function clearMultiByteChar(Text: String): String;
var
  i: Integer;
begin
  result:='';
  for I := 1 to Length(Text) do
    Result:=Result+extractSimbolFromMultiByteChar(PAnsiChar(AnsiString(text[i])));
end;

Function SoloNumeros(cadena:string):String;
var
  xx : Integer;
  res: String;
Begin
  cadena := trim(cadena);
  res:='';
  For xx :=1 TO length(cadena) Do
  Begin
    if (cadena[xx] = '0') or
       (cadena[xx] = '1') or
       (cadena[xx] = '2') or
       (cadena[xx] = '3') or
       (cadena[xx] = '4') or
       (cadena[xx] = '5') or
       (cadena[xx] = '6') or
       (cadena[xx] = '7') or
       (cadena[xx] = '8') or
       (cadena[xx] = '9') or
       (cadena[xx] = '.') then
         res := res + cadena[xx];
  End;
  SoloNumeros := res;
End;

Function ConvertNumerico(cadena:string):String;
var
  xx : Integer;
  res: String;
Begin
  cadena := trim(cadena);
  res:='';
  For xx :=1 TO length(cadena) Do
  Begin
    if (cadena[xx] <> '0') and (cadena[xx] <> '1') and (cadena[xx] <> '2') and (cadena[xx] <> '3') and (cadena[xx] <> '4') and (cadena[xx] <> '5') and (cadena[xx] <> '6') and (cadena[xx] <> '7') and (cadena[xx] <> '8') and (cadena[xx] <> '9') then
      res := res + leftstr(inttostr(Ord(cadena[xx])),1);
  End;
  ConvertNumerico := res;
End;

// Ejemplo: Edit2.Text := FBIni('L','Referencia', 'BD', 'gemaipsprat');
Function FBIni(tipo:string;n1,n2,n3:string):string;
Var Ini: TIniFile;
Begin
  Ini := TIniFile.Create( ExtractFilePath(paramstr(0))+'softips.ini' );
  if tipo='L' Then FBIni:=Ini.ReadString(n1,n2,n3)
  Else Ini.WriteString(n1,n2,n3);
  Ini.Free;
End;

procedure Degrades(Forma: TObject;r,g,b,ir,ig,ib:Integer;Sentido:integer;Estilo:TBrushStyle);
var Row, Ht: Word ;
begin
  if forma is TImage then
  Begin
    TImage(Forma).Picture.Bitmap.Width  := TImage(Forma).Width;
    TImage(Forma).Picture.Bitmap.Height := TImage(Forma).Height;
    //bsSolid, bsClear, bsHorizontal, bsVertical,bsFDiagonal, bsBDiagonal, bsCross, bsDiagCross
    TImage(Forma).Picture.Bitmap.Canvas.Brush.Style := Estilo;
    Ht := (TImage(Forma).ClientHeight + 255) div 256 ;
    for Row := 0 to 255 do
      with TImage(Forma).Picture.Bitmap.Canvas do
      begin
        Brush.Color := rgb(r+(row*ir),g+(row*ig),b+(row*ib));

        FillRect(Rect(0, Row * Ht, TImage(Forma).ClientWidth, ((Row + 1) * Ht)));
      end;
  End;
end;

// Ingresa un Memo
Function InputMemo(titulo:string;mm1:String) : String;
var mm:TMemo;
    ff:TForm;
Begin
  ff := TForm.create(Nil);
  ff.Caption := titulo;
  ff.Top := 10;
  ff.Left := 10;
  ff.Width := 500;
  ff.Height := 300;

  mm := TMemo.Create(ff);
  mm.Parent := ff;
  mm.Align := alClient;
  mm.Text := mm1;

  ff.ShowModal;
  InputMemo := mm.Text;
End;

// Esta cambia el alto y ancho, estirando la imagen si es necesario
procedure RedimensionarImagen(Imagen:TBitmap; Ancho, Alto: Integer);
var
  Bitmap: TBitmap;
  //····························································
  // Procedimiento de Antialiasing con Distancia=1
  procedure Antialiasing(bmp1, bmp2:TBitmap);
  var
    r1,g1,b1:Integer;
    Y, X, j:integer;
    SL1, SL2, SL3: PRGBTripleArray;
  begin
    // Tamaño del bitmap destino
    bmp2.Height := bmp1.Height;
    bmp2.Width := bmp1.Width;
    // SCANLINE
    SL1 := bmp1.ScanLine[0];
    SL2 := bmp1.ScanLine[1];
    SL3 := bmp1.ScanLine[2];

    // reorrido para todos los pixels
    for Y := 1 to (bmp1.Height - 2) do begin
      for X := 1 to (bmp1.Width - 2) do begin
        R1 := 0;  G1 := 0; B1 := 0;
        // los 9 pixels a tener en cuenta
        for j := -1 to 1 do begin
          // FIla anterior
          R1 := R1 + SL1[X+j].rgbtRed    + SL2[X+j].rgbtRed    + SL3[X+j].rgbtRed;
          G1 := G1 + SL1[X+j].rgbtGreen  + SL2[X+j].rgbtGreen  + SL3[X+j].rgbtGreen;
          B1 := B1 + SL1[X+j].rgbtBlue   + SL2[X+j].rgbtBlue   + SL3[X+j].rgbtBlue;
        end;
        // Nuevo color
        R1:=Round(R1 div 9);
        G1:=Round(G1 div 9);
        B1:=Round(B1 div 9);
        // Asignar el nuevo
        bmp2.Canvas.Pixels[X, Y] := RGB(R1,G1,B1);
      end;
      // Siguientes...
      SL1 := SL2;
      SL2 := SL3;
      SL3 := bmp1.ScanLine[Y+1];
    end;
  end;
  //····························································
begin
  if Imagen.Empty then exit;

  Bitmap:= TBitmap.Create;

  // Aplicamos antialiasing
  Antialiasing(Imagen, Bitmap);
  Imagen.Assign(Bitmap);

  // reducir
  try
    Bitmap.Width:= Ancho;
    Bitmap.Height:= Alto;
    Bitmap.Canvas.StretchDraw(Bitmap.Canvas.ClipRect, Imagen);
    Imagen.Assign(Bitmap);
  finally
    Bitmap.Free;
  end;
end;

Function stf(vr:string):real;
Begin
  if (trim(vr) <> '') then
  Begin
    vr:=Replace(vr, ',' , '');
    stf:=strtofloat(vr);
  End
  Else stf := 0;
End;

Function ntsfbg(vr:Extended):string;
var valor:currency;
Begin
  valor := vr;
  ntsfbg:=trim(Format('%16.2n',[Valor]));
End;

Function UltimoDiaMes(fec:TDate):Tdate;
Var fecnew : TDate;
Begin
  fecnew := fec;
  Repeat
    fecnew := fecnew + 1;
  Until (monthof(fec) <> monthof(fecnew));
  UltimoDiaMes := fecnew -1;
End;

Procedure ColorGrillas(grid:TDBGrid; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if Odd(grid.DataSource.DataSet.RecNo) then
     if (gdFocused in State) then
       grid.Canvas.Brush.Color := clRed
     else
       grid.Canvas.Brush.Color := clScrollBar
  else
     if (gdFocused in State) then
       grid.Canvas.Brush.Color := clRed
     else
       grid.Canvas.Brush.Color := clMenuBar;
  grid.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

function validanumero(key:char):char;
Begin
 if not ((Key >='0') and (Key<= '9')) or (Key<= #0) then
      begin
       Key := #0;
      end;
 if (Key<= #8) then
      begin
      Key := #8;
      end;
  validanumero:=key;
End;

function validavalor(key:char;valor:string):string;
Var prb:Extended;
begin
  if (( (key >= char(14)) and (key < '0')) or (key > '9')) and (key <> '.') then
    key := char(0)
  else if (key = '.') and (pos('.',valor) <> 0) then
    key := char(0)
  else
  begin
    if not (key <= char(14)) then
    begin
      if trystrtofloat(valor+key,prb) = FALSE then
      begin
        showmessage('Error en el valor digitado');
        valor:='';
      end;
    end;
  end;
  validavalor:=valor+key;
End;

function validacontenido(contenido:string;invalido:string;msg:string):bool;
Begin
  if (contenido=invalido) then Begin
    Showmessage(msg);
    validacontenido := true;
  End
  Else validacontenido := false;
End;

function campotoedit(campo:variant):variant;
Begin
  if (campo <> null) then campotoedit := campo
  else campotoedit := '';
End;


//  PagInicio = 'www.pagina.com';
//  ClaveRoot = HKEY_CURRENT_USER;
//  SubClave = 'Software\Microsoft\Internet Explorer\Main';
procedure CambiarRegistroWindows(ClaveRoot:HKEY;SubClave,valor:string);
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := ClaveRoot;
    if Reg.Openkey(SubClave, True) then
    try
      Reg.WriteString('Start Page', valor);
    except
      on ERegistryException do
        Abort; //o un mensaje en pantalla indicando que por esta excepción no se pudo escribir el valor.
    end;
  finally
    Reg.Free;
  end;
end;

function CalculaEdadCompleta(Fecha:TDateTime):String;
var A, AA, M, MM, D, DD: Word;
  Anio, Mes, Dia: double;
begin
  DecodeDate(Fecha, A, M, D);
  DecodeDate(Date, AA, MM, DD);
  Anio := Int(AA - A);
  if( M <= MM ) then
     Mes := MM - M
  else
  begin
    Mes := MM+12-M;
    Anio := Anio -1;
  end;
  if( D <= DD ) then
    Dia := DD - D
  else
  begin
    Dia:=DD+MonthDays[IsLeapYear(AA),MM]-D;
    Mes := Mes -1;
  end;
if Mes < 0 then
  begin
    Anio := Anio - 1;
    Mes := 12 + Mes;
  end;
  Result := Format('%.0f Años,%.0f Meses,%.0f  Dias', [Anio, Mes, Dia]);
end;

Function EANCorrecto(var num : string) : string;
var
   i,N : byte;
   sum : integer;
   flag : byte;
begin
   sum:=0;
   N:=Length(num)-1;
   for i:=1 to N do
   begin
     if (i mod 2)=0 then
     begin
       if N=12 then sum:=sum+StrToInt(num[i])*3
       else sum:=sum+StrToInt(num[i]);
     end
     else begin
       if N=12 then sum:=sum+StrToInt(num[i])
       else sum:=sum+StrToInt(num[i])*3;
     end;
   end;
   if sum>99 then Flag:=10-(sum mod 100)
   else Flag:=10-(sum mod 10);
   if Flag=10 then Flag:=0;
   if not(StrToInt(num[N+1])=flag) then EANCorrecto:=copy(num,1,length(num)-1)+IntToStr(Flag);
end;

procedure Dibujar(canv:Tcanvas;x,y:integer; matrix : string;num:string);
var
   i,j : integer;
begin
  with canv do
  begin
    Brush.Color:=clWhite;
    //FillRect(Rect(0,0,Printer.Width,Printer.Height));
    Pen.Color:=clBlack;
    Pen.Width := 5;

    for i:=1 to Length(Matrix) do
    Begin
      j:=i*10;
      if matrix[i]='1' then PolyLine([Point(x+10+j,y+10),Point(x+10+j,y+300)])
      else if matrix[i]='x' then PolyLine([Point(x+10+j,y+10),Point(x+10+j,y+350)]);
    End;

    if Length(num)=13 then
    begin
       TextOut(x+30,y+300,num[1]);
       TextOut(x+170,y+300,copy(num,2,6));
       TextOut(x+630,y+300,copy(num,8,6));
    end
    else if Length(num)=8 then
    begin
       TextOut(x+160,y+300,copy(num,1,4));
       TextOut(x+480,y+300,copy(num,5,4));
    end;
  end;

   //PaintBox1.Picture.SaveToFile('c:\windows\escritorio\BarCode\'+Edit1.Text+'.bmp');
end;

//Coloca un Codigo de Barras EAN de 8 o de 13 Caracteres
//CodificaEAN('123',imagen);  Coloca el Codigo de Barras en la imagen;
Function CodificaEAN(canv:TCanvas;x,y:integer; num : string) : string;
var
   matrix : string;
   i : integer;
begin
   matrix:='';
   Num := Num+inttostr(DigitoVerificacion(Num));
   num := EANCorrecto(num); //quita el digito de verificacion y agrega un numero de control EAN
   if (Length(num) < 8) then num := alineardatos(num,8)
   else if (Length(num) > 8) and (Length(num) < 13) then num:=alineardatos(num,13);
   CodificaEAN := num;

   case Length(num) of
   13: begin
       matrix:=matrix+'x0x'; // barra inicio
       matrix:=matrix+EAN_izqA[StrToInt(num[2])];
       for i:=3 to 7 do
         if CodificaIzq[StrToInt(num[1])][i-3]='A' then
           matrix:=matrix+EAN_izqA[StrToInt(num[i])]
         else
           matrix:=matrix+EAN_izqB[StrToInt(num[i])];
       matrix:=matrix+'0x0x0'; // barra central
       matrix:=matrix+EAN_dcha[StrToInt(num[8])];
       matrix:=matrix+EAN_dcha[StrToInt(num[9])];
       matrix:=matrix+EAN_dcha[StrToInt(num[10])];
       matrix:=matrix+EAN_dcha[StrToInt(num[11])];
       matrix:=matrix+EAN_dcha[StrToInt(num[12])];
       matrix:=matrix+EAN_dcha[StrToInt(num[13])];
       matrix:=matrix+'x0x'; // barra final
       Dibujar(canv,x,y,Matrix,num);
     end;
   8: begin
       matrix:=matrix+'x0x';
       matrix:=matrix+EAN_izqA[StrToInt(num[1])];
       matrix:=matrix+EAN_izqA[StrToInt(num[2])];
       matrix:=matrix+EAN_izqA[StrToInt(num[3])];
       matrix:=matrix+EAN_izqA[StrToInt(num[4])];
       matrix:=matrix+'0x0x0';
       matrix:=matrix+EAN_dcha[StrToInt(num[5])];
       matrix:=matrix+EAN_dcha[StrToInt(num[6])];
       matrix:=matrix+EAN_dcha[StrToInt(num[7])];
       matrix:=matrix+EAN_dcha[StrToInt(num[8])];
       matrix:=matrix+'x0x';
       Dibujar(canv,x,y,Matrix,num);
     end
   else
     ShowMessage('LONGITUD DE CODIGO NO VALIDA');
   end;
end;

//EnviarMensaje( 'juanito33', 'djeuE21', 'smtp.terra.es','c:\documento.zip',
//               'Te envio mi documento','felipe8843@terra.es','Adjunto archivo: documento.zip' );
procedure EnviarMensaje(sCorreo, sUsuario, sClave, sHost, sAdjunto, sAsunto, sDestino, sMensaje: String;puerto:integer);
var SMTP: TIdSMTP;   Mensaje: TIdMessage;
 //   Adjunto: TIdAttachment;
begin
  // Creamos el componente de conexión con el servidor
  SMTP := TIdSMTP.Create( nil );
  SMTP.Username := sUsuario;
  SMTP.Password := sClave;
  SMTP.Host     := sHost;
  SMTP.Port     := puerto;
  SMTP.AuthType := satDefault;

  // Creamos el contenido del mensaje
  Mensaje               := TIdMessage.Create( nil );
  Mensaje.Clear;
  Mensaje.From.Name     := sCorreo;
  Mensaje.From.Address  := sCorreo;
  Mensaje.Subject       := sAsunto;
  Mensaje.Body.Text     := sMensaje;
  Mensaje.Recipients.Add;
  Mensaje.Recipients.Items[0].Address := sDestino;

  // Si hay que meter un archivo adjunto lo creamos y lo asignamos al mensaje
  if sAdjunto <> '' then
  begin
//    if FileExists( sAdjunto ) then Adjunto := TIdAttachment.Create( Mensaje.MessageParts, sAdjunto );
  end
  else
//    Adjunto := nil;
    // Conectamos con el servidor SMTP
    try
      SMTP.Connect;
    except
      raise Exception.Create( 'Error al conectar con el servidor.' );
    end;

    // Si ha conectado enviamos el mensaje y desconectamos
    if SMTP.Connected then
    begin
      try
        SMTP.Send( Mensaje );
      except
        raise Exception.Create( 'Error al enviar el mensaje.' );
      end;

      try
        SMTP.Disconnect;
      except
        raise Exception.Create( 'Error al desconectar del servidor.' );
      end;
    end;

    // Liberamos los objetos creados
//   if Adjunto <> nil then FreeAndNil( Adjunto );
   FreeAndNil( Mensaje );
   FreeAndNil( SMTP );
end;

procedure XmlExcel(Ubicacion:String; Archivo:String; StringGrid1:TStringGrid);
var i,j:integer;
    k:Extended;
    filestream:TextFile;
    opguardar : TSaveDialog;
    strfmt:string;
Begin
  if NOT DirectoryExists(Ubicacion) Then mkdir(Ubicacion);

  opguardar := TSaveDialog.Create(nil);
  opguardar.filename:=Archivo;
  opguardar.initialdir:=Ubicacion;
  opguardar.DefaultExt:='XML';
  if opguardar.execute then
  begin
    AssignFile(filestream, opguardar.filename);
    Rewrite(filestream);
    try
      writeln(filestream,'<?xml version="1.0" encoding="UTF-8"?>');
      writeln(filestream,'<?mso-application progid="Excel.Sheet"?>');
      writeln(filestream,'<Workbook xmlns:c="urn:schemas-microsoft-com:office:component:spreadsheet" xmlns:html="http://www.w3.org/TR/REC-html40" xmlns:o="urn:schemas-microsoft-com:office:office" '+
                          'xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="urn:schemas-microsoft-com:office:spreadsheet" xmlns:x2="http://schemas.microsoft.com/office/excel/2003/xml" '+
                          'xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet" xmlns:x="urn:schemas-microsoft-com:office:excel">');
      writeln(filestream,'<OfficeDocumentSettings xmlns="urn:schemas-microsoft-com:office:office">');
      writeln(filestream,'<Colors>');
      writeln(filestream,'<Color>');
      writeln(filestream,'<Index>3</Index>');
      writeln(filestream,'<RGB>#c0c0c0</RGB>');
      writeln(filestream,'</Color>');
      writeln(filestream,'<Color>');
      writeln(filestream,'<Index>4</Index>');
      writeln(filestream,'<RGB>#ff0000</RGB>');
      writeln(filestream,'</Color>');
      writeln(filestream,'</Colors>');
      writeln(filestream,'</OfficeDocumentSettings>');
      writeln(filestream,'<ExcelWorkbook xmlns="urn:schemas-microsoft-com:office:excel">');
      writeln(filestream,'<WindowHeight>9000</WindowHeight>');
      writeln(filestream,'<WindowWidth>13860</WindowWidth>');
      writeln(filestream,'<WindowTopX>240</WindowTopX>');
      writeln(filestream,'<WindowTopY>75</WindowTopY>');
      writeln(filestream,'<ProtectStructure>False</ProtectStructure>');
      writeln(filestream,'<ProtectWindows>False</ProtectWindows>');
      writeln(filestream,'</ExcelWorkbook>');
      writeln(filestream,'<Styles>');
      writeln(filestream,'<Style ss:ID="Default" ss:Name="Default"/>');
      writeln(filestream,'<Style ss:ID="Result" ss:Name="Result">');
      writeln(filestream,'<Font ss:Bold="1" ss:Italic="1" ss:Underline="Single"/>');
      writeln(filestream,'</Style>');
      writeln(filestream,'<Style ss:ID="Result2" ss:Name="Result2">');
      writeln(filestream,'<Font ss:Bold="1" ss:Italic="1" ss:Underline="Single"/>');
      writeln(filestream,'<NumberFormat ss:Format="Currency"/>');
      writeln(filestream,'</Style>');
      writeln(filestream,'<Style ss:ID="Heading" ss:Name="Heading">');
      writeln(filestream,'<Font ss:Bold="1" ss:Italic="1" ss:Size="16"/>');
      writeln(filestream,'</Style>');
      writeln(filestream,'<Style ss:ID="Heading1" ss:Name="Heading1">');
      writeln(filestream,'<Font ss:Bold="1" ss:Italic="1" ss:Size="16"/>');
      writeln(filestream,'</Style>');
      writeln(filestream,'<Style ss:ID="co1"/>');
      writeln(filestream,'<Style ss:ID="ta1"/>');
      writeln(filestream,'<Style ss:ID="ta_extref"/>');
      writeln(filestream,'</Styles>');
      writeln(filestream,'<ss:Worksheet ss:Name="Hoja1">');
      writeln(filestream,'<Table ss:StyleID="ta1">');
      writeln(filestream,'<Column ss:Span="1" ss:Width="64.2614"/>');
      writeln(filestream,'<Row ss:Height="12.8409">');

      i:=0;
      while i <= StringGrid1.RowCount do
      begin
        For j:=0 To (StringGrid1.ColCount-1) Do
        Begin
          strfmt := trim(replace(StringGrid1.Cells[j,i],',',''));
          if trystrtofloat(strfmt,k) then writeln(filestream,'<Cell><Data ss:Type="Number">'+trim(StringGrid1.Cells[j,i])+'</Data></Cell>')
          Else writeln(filestream,'<Cell><Data ss:Type="String">'+trim(StringGrid1.Cells[j,i])+'</Data></Cell>');
        End;

        writeln(filestream,'</Row>');
        writeln(filestream,'<Row ss:Height="12.8409">');
        inc(i);
      end;
      writeln(filestream,'</Row>');
      writeln(filestream,'</Table>');

      writeln(filestream,'<x:WorksheetOptions/>');
      writeln(filestream,'</ss:Worksheet>');
      writeln(filestream,'<ss:Worksheet ss:Name="Hoja2">');
      writeln(filestream,'<Table ss:StyleID="ta1">');
      writeln(filestream,'<Column ss:Width="64.2614"/>');
      writeln(filestream,'<Row ss:Height="12.8409">');
      writeln(filestream,'<Cell ss:Index="1"/>');
      writeln(filestream,'</Row>');
      writeln(filestream,'</Table>');
      writeln(filestream,'<x:WorksheetOptions/>');
      writeln(filestream,'</ss:Worksheet>');
      writeln(filestream,'<ss:Worksheet ss:Name="Hoja3">');
      writeln(filestream,'<Table ss:StyleID="ta1">');
      writeln(filestream,'<Column ss:Width="64.2614"/>');
      writeln(filestream,'<Row ss:Height="12.8409">');
      writeln(filestream,'<Cell ss:Index="1"/>');
      writeln(filestream,'</Row>');
      writeln(filestream,'</Table>');
      writeln(filestream,'<x:WorksheetOptions/>');
      writeln(filestream,'</ss:Worksheet>');
      writeln(filestream,'</Workbook>');
    finally
      CloseFile(filestream);
      opguardar.Free;
    end;
  end;
End;

procedure XmlExcelDB(Ubicacion:String; Archivo:String; ADOQuery:TADOQuery);
var i,j:integer;
    k:Extended;
    filestream:TextFile;
    opguardar : TSaveDialog;
    strfmt:string;
Begin
  //OJO HAY UN PROBLEMA EN LOS XMLS CUANDO TIENEN TILDES
  if NOT DirectoryExists(Ubicacion) Then mkdir(Ubicacion);

  opguardar := TSaveDialog.Create(nil);
  opguardar.filename:=Archivo;
  opguardar.initialdir:=Ubicacion;
  opguardar.DefaultExt:='XML';
  if opguardar.execute then
  begin
    AssignFile(filestream, opguardar.filename);
    Rewrite(filestream);
    try
      writeln(filestream,'<?xml version="1.0"?>');
      writeln(filestream,'<?mso-application progid="Excel.Sheet"?>');
      writeln(filestream,'<Workbook xmlns="urn:schemas-microsoft-com:office:spreadsheet"');
      writeln(filestream,' xmlns:o="urn:schemas-microsoft-com:office:office"');
      writeln(filestream,' xmlns:x="urn:schemas-microsoft-com:office:excel"');
      writeln(filestream,' xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"');
      writeln(filestream,' xmlns:html="http://www.w3.org/TR/REC-html40">');

      writeln(filestream,'  <Worksheet ss:Name="Hoja1">');
      writeln(filestream,'  <Table>');
      writeln(filestream,'    <Row>');

      for i:=0 to (ADOQuery.FieldCount-1) do
        writeln(filestream,'      <Cell><Data ss:Type="String">'+trim(clearMultiByteChar(ADOQuery.Fields.Fields[i].DisplayName))+'</Data></Cell>');
      writeln(filestream,'    </Row>');
      writeln(filestream,'    <Row>');

      ADOQuery.First;
      while NOT ADOQuery.Eof do
      begin
        For j:=0 To (ADOQuery.FieldCount-1) Do
        Begin
          strfmt := trim(replace(ADOQuery.Fields.Fields[j].AsString,',',''));
          if trystrtofloat(strfmt,k) then writeln(filestream,'      <Cell><Data ss:Type="Number">'+trim(ADOQuery.Fields.Fields[j].AsString)+'</Data></Cell>')
          Else writeln(filestream,'      <Cell><Data ss:Type="String">'+trim(clearMultiByteChar(ADOQuery.Fields.Fields[j].AsString))+'</Data></Cell>');
        End;
        writeln(filestream,'    </Row>');
        writeln(filestream,'    <Row>');
        ADOQuery.Next;
      end;
      writeln(filestream,'    </Row>');
      writeln(filestream,'  </Table>');

      writeln(filestream,' </Worksheet>');
      writeln(filestream,'</Workbook>');
    finally
      CloseFile(filestream);
      opguardar.Free;
    end;
  end;
End;

function ObtenerNombrePC():String;
Var
    wVersionRequested : WORD;
    wsaData : TWSAData;
    p : PHostEnt;
    s : array[0..128] of char;
Begin
   // wVersionRequested := MAKEWORD(1, 1);
  WSAStartup(wVersionRequested, wsaData);
  GetHostName(@s, 128);
  p := GetHostByName(@s);
//  ObtenerNombrePC:=p^.h_Name;
End;

function Busca_arreglo(cadena:string;matrix:array of string):Boolean;
var i:Integer;
Begin
  Busca_arreglo:= False;
  For i:=0 To length(matrix)-1 Do
  Begin
    if cadena = Matrix[i] Then Busca_arreglo := True;
  End;
End;

//Busca todos La palabra que se encuentre desde la cadena "Desde" hasta la cadena "Hasta"
//Ej Busca_Entre('SELECT * FROM pp,hh ii WHERE pp='hola'','FROM','WHERE')
function Busca_Entre(cadena,Desde,Hasta:String):string;
var
  Pos1,Pos2:Integer;
Begin
  Pos1:=Pos(Desde,Cadena);
  if pos1 <> 0 then
  begin
    Pos1:=Pos1+Length(Desde);
    Pos2:=Pos(Hasta,Cadena);
    if Pos2=0 then
      Busca_Entre := ''
    Else
      Busca_Entre := Copy(Cadena,Pos1,Pos2-Pos1);
  end
  Else Busca_Entre := '';
End;

//Busca todos las palabras que esten encerradas entre | y devuelve aquella que coincida con el numero
//Ej "pepito|Juan||pedro|",2    Devuelve pedro
function Busca_Item(cadena:String;Numero:Integer):string;
var
  sw,i,j : Integer;
  cadRep,cadnueva : String;
Begin
   sw := 0;
   j:=0;
   cadRep := '';
   if length(cadena) <> 0 Then Begin
     For i := 0 TO length(cadena) Do
     Begin
        if(cadena[i] = '|') then
        Begin
           if(sw = 0) then
           Begin
              //cadRep := cadRep + cadena[i];
              sw := 1;
           End
           else Begin
              inc(j);
              //cadRep := cadRep + cadena[i];
              Busca_Item := cadRep;
              if j=numero Then Exit;
              CadRep:='';
              sw:=0;
           End
        End
        else
        Begin
           if(sw = 1) then
           Begin
              cadRep := cadRep + cadena[i];
           End
        End
     End;
   End;
   Busca_Item := '';
End;

//Funcion para buscar un parametro apartir de una posicion hasta un token o final de linea.
// Ej Busca_Parametro(cadena,comienzo,token)
// Ej para buscar el primer item de una linea separada por comas Busca_Parametro(cadena,1,',')
// en la variable global "postoken" queda la ubicacion de la ultima busca de parametros y devuelve -1 cuando llega al fin
function Busca_Parametro(cadena:string;comienzo:integer;token:string):string;
var
  i : Integer;
  cadRep,cadnueva : String;
Begin
   cadRep := '';
   For i := comienzo TO length(cadena) Do
   Begin
      if (cadena[i] = token) then
      Begin
        Busca_Parametro := cadRep;
        postoken := i+1;
        Exit;
      End
      else cadRep := cadRep + cadena[i];
   End;
   Busca_Parametro := cadRep;
   postoken := -1;
End;

function Reemplaza_Parametro(cadena,defecto:string):string;
var
  sw,i : Integer;
  cadRep,cadnueva : String;
Begin
   if cadena = '' then Exit;

   sw := 0;
   cadRep := '';
   i:=0;
   While i <= length(cadena) Do
   Begin
      if(cadena[i] = '|') then
      Begin
         if(sw = 0) then
         Begin
            cadRep := cadRep + cadena[i];
            sw := 1;
         End
         else Begin
            cadRep := cadRep + cadena[i];
            cadnueva := InputBox('Ingrese el valor para', cadRep, defecto);
            cadena := Replace( cadena, cadRep, cadnueva);
            cadRep := '';
            sw := 0;
            i:=0;
         End
      End
      else
      Begin
         if(sw = 1) then
         Begin
            cadRep := cadRep + cadena[i];
         End;
      End;
      i:=i+1;
   End;
   Reemplaza_Parametro := cadena;
End;

function Reemplaza_ParametroArreglo(cadena:string):string;
var
  sw,i,x,y : Integer;
  cadRep,cadnueva : String;
Begin
   sw := 0;
   cadRep := '';
   i:=0;
   While i <= length(cadena) Do
   Begin
      if(cadena[i] = '|') then
      Begin
         if(sw = 0) then
         Begin
            cadRep := cadRep + cadena[i];
            sw := 1;
         End
         else Begin
            cadRep := cadRep + cadena[i];
            for x := 0 to 50 do if '|'+trim(arreglovar[0,x])+'|' = trim(cadRep) Then break;
            if x < 50 then
            Begin
              cadnueva := trim(arreglovar[1,x]);
              cadnueva := Replace( cadnueva, ',', '');
              cadena := Replace( cadena, cadRep, cadnueva);
            End;
            cadRep := '';
            sw := 0;
            i:=0;
         End
      End
      else
      Begin
         if(sw = 1) then
         Begin
            cadRep := cadRep + cadena[i];
         End;
      End;
      i:=i+1;
   End;
   Reemplaza_ParametroArreglo := cadena;
End;

//Agrega al campo "Codigo" el numero de Ceros (0) especificacido por la cantidad - la longitud
function alineardatos(codigo: string; catidad: integer): string;
var largo,i : integer;
    valores : string;
begin
  valores :=  codigo;
  largo :=length(codigo);
  for i := largo to  catidad-1 do
    valores := '0'+ valores ;
  alineardatos := valores;
end;

function parecido(str1: string; str2: string): integer;
var i,aciertos : integer;
begin
  if length(str1) > 0 then
  begin
    aciertos:=0;
    for i:=0 to length(str1)-1 do
    begin
      if (Pos(Copy(str1, i, 3),str2) <> 0) then aciertos:=aciertos+1;
    end;
    parecido:=((aciertos * 100) div length(str1));
  end
  else parecido := 0;
end;

function ParecidoBinario(arch1: string; arch2: string): integer;
var xx : longint;
    tx1,tx2:TFileStream;
    BR1,BR2: TBinaryReader;
    buf1,buf2: array [0..4] of char;
    NumRead, NumRead2: Integer;
Begin
  tx1 := TFileStream.Create(arch1, fmOpenRead);
  BR1 := TBinaryReader.Create(tx1, TEncoding.Unicode, false);

  tx2 := TFileStream.Create(arch2, fmOpenRead);
  BR2 := TBinaryReader.Create(tx2, TEncoding.Unicode, false);

  xx:=0;
  Repeat
    BR1.ReadChar;
    Repeat
      BR2.ReadChar;
      if (numread2 > 9) then
      Begin
        if (buf1[0] = buf2[0]) and (buf1[1] = buf2[1]) and (buf1[2] = buf2[2]) and (buf1[3] = buf2[3]) and (buf1[4] = buf2[4]) then
        Begin
          xx:=xx+1;
          break;
        End;
      End;
    Until (NumRead2 = 0);
  Until (NumRead = 0);

//  ParecidoBinario:=((xx * 100) div filesize(tx1));

//  CloseFile(tx1);
//  CloseFile(tx2);
end;

//Introduce un caracter al comienzo de una cadena muchas veces
//PAD('0',10)  Introduce el 0 diez veces
function pad(codigo: string; catidad: integer): string;
var largo,i : integer;
    valores : string;
begin
  valores :=  codigo;
  largo :=length(codigo);
  for i := largo to  catidad-1 do
    valores := valores +' ';
  Pad := valores;
end;

// EncriptaXOR('esta es la frase de ejemplo','claveXXX')
function EncriptaXOR(cadena,clave : string) : string;
var i : integer;
begin
        result:='';
        for i:=1 to length(cadena) do
        result:=result+chr(ord(cadena[i]) xor ord(clave[(i mod length(clave))+1]));
end;

function ObtenerMAC(PCName: string) : string;
type
  TASTAT = packed record
    adapt: nb30.TADAPTERSTATUS;
    NameBuff: array [0..30] of TNAMEBUFFER;
  end;
  var
  NCB: TNCB;
  Tmp: String;
  pASTAT: Pointer;
  AST: TASTAT;
begin
  FillChar(NCB, SizeOf(NCB), 0);
  NCB.ncb_command := Chr(NCBRESET);
  NetBios(@NCB);

  FillChar(NCB, SizeOf(NCB), 0);
  FillChar(NCB.ncb_callname[0], 16, ' ');
  Move(PCName[1], NCB.ncb_callname[0], Length(PCName));
  NCB.ncb_command := Chr(NCBASTAT);

  NCB.ncb_lana_num := #0;
  NCB.ncb_length := SizeOf(AST);

  GetMem(pASTAT, NCB.ncb_length);

  if pASTAT=nil then
  begin
    result := 'memory allocation failed!';
    exit;
  end;
  NCB.ncb_buffer := pASTAT;
  NetBios(@NCB);

  Move(NCB.ncb_buffer, AST, SizeOf(AST));

  with AST.adapt do
    Tmp := Format('%.2x-%.2x-%.2x-%.2x-%.2x-%.2x',
             [ord(adapter_address[0]), ord(adapter_address[1]), ord(adapter_address[2]),
              ord(adapter_address[3]), ord(adapter_address[4]), ord(adapter_address[5])]);

  FreeMem(pASTAT);
  Result := Tmp;
end;

function DigitoVerificacion(Nit :string) :Integer;
var
  i, j, vTotal :Integer;
const
  ValFijos :array[1..15] of Word = (3,7,13,17,19,23,29,37,41,43,47,53,59,67,71);
begin
  vTotal := 0;
  j := 0;
  for i := Length(Nit) downto 1 do
  begin
    inc(j);
    vTotal := vTotal + (StrToInt(Nit[i]) * ValFijos[j]);
  end;
  vTotal := vTotal - (vTotal div 11) * 11;

  if vTotal > 1 then
    vTotal := 11-vTotal;

 Result := vTotal;
end;

function xIntToLletras(Numero:LongInt):String;
   function xxIntToLletras(Valor:LongInt):String;
   const
    aUnidad : array[1..15] of String =
      ('UN','DOS','TRES','CUATRO','CINCO','SEIS',
       'SIETE','OCHO','NUEVE','DIEZ','ONCE','DOCE',
       'TRECE','CATORCE','QUINCE');
    aCentena: array[1..9]  of String =
      ('CIENTO','DOSCIENTOS','TRESCIENTOS',
       'CUATROCIENTOS','QUINIENTOS','SEISCIENTOS',
       'SETECIENTOS','OCHOCIENTOS','NOVECIENTOS');
    aDecena : array[1..9]  of String =
     ('DIECI','VEINTI','TREINTA','CUARENTA','CINCUENTA',
      'SESENTA','SETENTA','OCHENTA','NOVENTA');
   var
    Centena, Decena, Unidad, Doble: LongInt;
    Linea: String;
   begin
    if valor=100 then Linea:=' CIEN '
    else begin
      Linea:='';
      Centena := Valor div 100;
      Doble   := Valor - (Centena*100);
      Decena  := (Valor div 10) - (Centena*10);
      Unidad  := Valor - (Decena*10) - (Centena*100);

      if Centena>0 then Linea := Linea + Acentena[centena]+' ';

      if Doble>0 then begin
        if Doble=20 then Linea := Linea +' VEINTE '
          else begin
           if doble<16 then Linea := Linea + aUnidad[Doble]
             else begin
                  Linea := Linea +' '+ Adecena[Decena];
                  if (Decena>2) and (Unidad<>0) then Linea := Linea+' Y ';
                  if Unidad>0 then Linea := Linea + aUnidad[Unidad];
             end;
          end;
      end;
    end;
    Result := Linea;
   end;

 var
    Millones,Miles,Unidades: Longint;
    Linea : String;
 begin
   {Inicializamos el string que contendrá las letras según el valor
   numérico}
   if numero=0 then Linea := 'CERO'
   else if numero<0 then Linea := 'MENOS '
        else if numero=1 then
             begin
               Linea := 'UN';
               xIntToLletras := Linea;
               exit
             end
             else if numero>1 then Linea := '';

   {Determinamos el Nº de millones, miles y unidades de numero en
   positivo}
   Numero   := Abs(Numero);
   Millones := numero div 1000000;
   Miles     := (numero - (Millones*1000000)) div 1000;
   Unidades  := numero - ((Millones*1000000)+(Miles*1000));

   {Vamos poniendo en el string las cadenas de los números(llamando
   a subfuncion)}
   if Millones=1 then Linea:= Linea + ' UN MILLON '
   else if Millones>1 then Linea := Linea + xxIntToLletras(Millones)
                                    + ' MILLONES ';

   if Miles =1 then Linea:= Linea + ' MIL '
   else if Miles>1 then Linea := Linea + xxIntToLletras(Miles)+
                                 ' MIL ';

   if Unidades >0 then Linea := Linea + xxIntToLletras(Unidades);

   xIntToLletras := Linea;
end;

function ObtenerSerial: String;
  var
     MaxFileNameLength,
     VolFlags,
     SerNum: DWord;
begin
  if GetVolumeInformation(pchar('c:\'), nil, 0,@SerNum, MaxFileNameLength, VolFlags, nil, 0)
  then
    Result := IntToHex(SerNum,8)
  else
      Result := '00000000';
end;

function Replace(Dest, SubStr, Str: string): string;
var
  Position: Integer;
begin
  Repeat
    Position:=Pos(SubStr, Dest);
    If Position <> 0 Then
    Begin
      Delete(Dest, Position, Length(SubStr));
      Insert(Str, Dest, Position);
    End;
  Until Position = 0;
  Result:=Dest;
end;

function Tipo_Dato(td: TFieldType): string;
begin
 case td of
   ftUnknown : Tipo_Dato := 'ftUnknown';
   ftString: Tipo_Dato := 'ftString';
   ftSmallint: Tipo_Dato := 'ftSmallint';
   ftInteger: Tipo_Dato := 'ftInteger';
   ftWord: Tipo_Dato := 'ftWord';
   ftBoolean: Tipo_Dato := 'ftBoolean';
   ftFloat: Tipo_Dato := 'ftFloat';
   ftCurrency: Tipo_Dato := 'ftCurrency';
   ftBCD: Tipo_Dato := 'ftBCD';
   ftDate: Tipo_Dato := 'ftDate';
   ftTime: Tipo_Dato := 'ftTime';
   ftDateTime: Tipo_Dato := 'ftDateTime';
   ftBytes: Tipo_Dato := 'ftBytes';
   ftVarBytes: Tipo_Dato := 'ftVarBytes';
   ftAutoInc: Tipo_Dato := 'ftAutoInc';
   ftBlob: Tipo_Dato := 'ftBlob';
   ftMemo: Tipo_Dato := 'ftMemo';
   ftGraphic: Tipo_Dato := 'ftGraphic';
   ftFmtMemo: Tipo_Dato := 'ftFmtMemo';
   ftParadoxOle: Tipo_Dato := 'ftParadoxOle';
   ftDBaseOle: Tipo_Dato := 'ftDBaseOle';
   ftTypedBinary: Tipo_Dato := 'ftTypedBinary';
   ftCursor: Tipo_Dato := 'ftCursor';
   ftFixedChar: Tipo_Dato := 'ftFixedChar';
   ftWideString: Tipo_Dato := 'ftWideString';
   ftLargeint: Tipo_Dato := 'ftLargeint';
   ftADT: Tipo_Dato := 'ftADT';
   ftArray: Tipo_Dato := 'ftArray';
   ftReference: Tipo_Dato := 'ftReference';
   ftDataSet: Tipo_Dato := 'ftDataSet';
   ftOraBlob: Tipo_Dato := 'ftOraBlob';
   ftOraClob: Tipo_Dato := 'ftOraClob';
   ftVariant: Tipo_Dato := 'ftVariant';
   ftInterface: Tipo_Dato := 'ftInterface';
   ftIDispatch: Tipo_Dato := 'ftIDispatch';
   ftGuid: Tipo_Dato := 'ftGuid';
   ftTimeStamp: Tipo_Dato := 'ftTimeStamp';
   ftFMTBcd: Tipo_Dato := 'ftFMTBcd';
   else Tipo_Dato := 'No Existe';
 end;
end;


end.

