unit Uexcel;

interface

uses classes,Grids, SysUtils, Forms;

type
  thtmlstrings=class(tstringlist)
public
procedure titulo(s:string); // shit+control+c para crear el procedimiento
procedure pie;
procedure exportagrilla(sg:tstringgrid);
end;

Procedure XlsBeginStream(XlsStream: Tstream; const BuildNumber : Word);
Procedure XlsEndStream(XlsStream: Tstream);
Procedure XlsWriteCEllRk(XlsStream: Tstream; const ACol, ARow : Word; const Avalue: Integer );
Procedure XlsWriteCellNumber(XlsStream : Tstream; const ACol, ARow: Word; const Avalue: Double);
Procedure XlsWriteCellLabel(XlsStream: Tstream; const Acol, Arow: Word; const Avalue : string);

implementation

//Const
var
  CxlsBof:  Array[0..5] of Word = ($809, 8, 00, $10, 0, 0);
  CxlsEof:  Array[0..1] of Word = ($0A, 00);
  CxlsLabel:  Array[0..5] of Word = ($204, 0, 0, 0, 0, 0);
  CxlsNumber:  Array[0..4] of Word = ($203, 14, 0, 0, 0);
  CxlsRk:  Array[0..4] of Word = ($27E, 10, 0, 0, 0);


Procedure XlsBeginStream(XlsStream: Tstream; const BuildNumber : Word);
Begin
  CxlsBof[4] := BuildNumber;
  XlsStream.WriteBuffer(CxlsBof, SizeOf(CXlsBof));
End;

Procedure XlsEndStream(XlsStream: Tstream);
Begin
  XlsStream.WriteBuffer(CxlsEof, SizeOf(CXlsEof));
End;

Procedure XlsWriteCEllRk(XlsStream: Tstream; const ACol, ARow : Word; const Avalue: Integer );
Var
  V: integer;
Begin
  CXlsRK[2] := ARow;
  CXlsRK[3] := ACol;
  XlsStream.WriteBuffer(CXlsRk, SizeOf(CXlsRk));
  V := (Avalue shl 2) or 2;
  XlsStream.WriteBuffer(V, 4);
End;
 
Procedure XlsWriteCellNumber(XlsStream : Tstream; const ACol, ARow: Word; const Avalue: Double);
Begin
  CXlsNumber[2] := ARow;
  CXlsNumber[3] := ACol;
  XlsStream.WriteBuffer(CXlsNumber, SizeOf(CXlsNumber));
  XlsStream.WriteBuffer(AValue, 8);
End;

Procedure XlsWriteCellLabel(XlsStream: Tstream; const Acol, Arow: Word; const Avalue : string);
Var
  L : Word;
Begin
  L := Length(Avalue);
  CxlsLabel[1] := 8 + L;
  CxlsLabel[2] := ARow;
  CxlsLabel[3] := ACol;
  CxlsLabel[5] := L;
  XlsStream.WriteBuffer(CXlsLabel, SizeOf(CXlsLabel));
  XlsStream.WriteBuffer(Pointer(Avalue)^, L);
End;

{ thtmlstrings }

procedure thtmlstrings.exportagrilla(sg: tstringgrid);
var i,j:integer;
begin
  add('<TABLE BORDER>');
  for i:=0 to sg.RowCount-1 do
  begin
    add('<TR>');
    for j:=0 to sg.ColCount-1 do
      add('<TD>'+sg.cells[j,i]+'</TD>');
    add('</TR>');
  end;
  add('</TABLE>');
end;

procedure thtmlstrings.pie;
begin
  add('<HR>');
  add('Archivo Generado por:' +  extractfilename(application.exename));
  Add('<Body>');
  Add('</HTML>');
end;

procedure thtmlstrings.titulo(s: string);
begin
  clear;
  add('<html>');
  add('<HEAD>');
  add('<TITLE>' +  s + '</TITLE>');
  add('</HEAD>');
  Add('<Body>');
  Add('<HI> <CENTER>'+ s + '</CENTER> </HI>');
end;

End.

