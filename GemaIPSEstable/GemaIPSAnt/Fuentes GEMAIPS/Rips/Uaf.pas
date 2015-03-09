unit Uaf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  Tfaf = class(TForm)
    Label1: TLabel;
    StringGrid1: TStringGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  faf: Tfaf;

implementation

{$R *.dfm}

procedure Tfaf.FormCreate(Sender: TObject);
begin
  stringgrid1.Cells[0,0] := 'Prestador';
  stringgrid1.Cells[1,0] := 'Razon Social';
  stringgrid1.Cells[2,0] := 'Tipo_identificacion';
  stringgrid1.Cells[3,0] := 'Numero de Identificacion';
  stringgrid1.Cells[4,0] := 'Factura No.';
  stringgrid1.Cells[5,0] := 'Fecha Factura';
  stringgrid1.Cells[6,0] := 'Fecha_Inicio';
  stringgrid1.Cells[7,0] := 'Fecha_Final';
  stringgrid1.Cells[8,0] := 'Codigo EPS';
  stringgrid1.Cells[9,0] := 'Nombre EPS';
  stringgrid1.Cells[10,0] := 'Contrato No.';
  stringgrid1.Cells[11,0] := 'Plan';
  stringgrid1.Cells[12,0] := 'Poliza';
  stringgrid1.Cells[13,0] := 'Copago';
  stringgrid1.Cells[14,0] := 'Comision';
  stringgrid1.Cells[15,0] := 'Descuentos';
  stringgrid1.Cells[16,0] := 'Neto a Pagar';
  //  while not eof (inputfile) do
 // begin
  //  c1 := 0;
   // c2 := 0;
//    c3 := 0;
//    c4 := 0;
//     readln(inputfile,s);
 //   j:=strlen(pchar(s));
  //  x:=0;
   end;

end.
