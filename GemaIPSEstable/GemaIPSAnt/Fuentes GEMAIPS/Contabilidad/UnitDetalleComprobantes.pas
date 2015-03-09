unit UnitDetalleComprobantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvBitBtn, Grids, JvStringGrid, ExtCtrls, DB,
  DBTables, ADODB;

type
  TFrmDetalleComprobantes = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SGDetalle: TJvStringGrid;
    BtnSalir: TJvBitBtn;
    ADOQuery1: TADOQuery;
    procedure LimpiaGrilla(Grilla : TJvStringGrid; Col : Integer);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    TipCom  : string;
    NumCom  : string;
    { Public declarations }
  end;

var
  FrmDetalleComprobantes: TFrmDetalleComprobantes;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TFrmDetalleComprobantes.LimpiaGrilla(Grilla : TJvStringGrid; Col : Integer);
var i,e : Integer;
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
  Grilla.RowCount := 2;
end;

procedure TFrmDetalleComprobantes.FormCreate(Sender: TObject);
begin
  SGDetalle.Cells[0,0] := 'Tipo com';
  SGDetalle.Cells[1,0] := 'Numero com';
  SGDetalle.Cells[2,0] := 'Cuenta';
  SGDetalle.Cells[3,0] := 'Tercero';
  SGDetalle.Cells[4,0] := 'Cen. costo';
  SGDetalle.Cells[5,0] := 'DocSoporte';
  SGDetalle.Cells[6,0] := 'Debito';
  SGDetalle.Cells[7,0] := 'Credito';
end;

end.
