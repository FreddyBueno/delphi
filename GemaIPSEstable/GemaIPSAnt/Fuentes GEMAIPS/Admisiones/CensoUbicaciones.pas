unit CensoUbicaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DBCtrls, StdCtrls, ExtCtrls, Grids, DB, ADODB;

type
  TFCenso = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DrawGrid1: TDrawGrid;
    Shape1: TShape;
    Label1: TLabel;
    Shape2: TShape;
    Label2: TLabel;
    Shape3: TShape;
    Label3: TLabel;
    Shape4: TShape;
    Label4: TLabel;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    StatusBar1: TStatusBar;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    procedure DrawGrid1DblClick(Sender: TObject);
    procedure DrawGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    function refresca():string;
    procedure FormCreate(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCenso: TFCenso;
  Columna,Fila: Integer;
  mt : array[0..24,1..31] of integer;

implementation

{$R *.dfm}

function TFCenso.refresca():string;
Var i:Integer;
    aRect: TRect;
begin
  DrawGrid1.ColCount := ADOQuery2.RecordCount+1;
  DrawGrid1.RowCount := ADOQuery3.RecordCount+1;
  i:=1;
  ADOQuery2.First;
  While NOT ADOQuery2.Eof DO
  Begin
    DrawGrid1.Col := i;
    DrawGrid1.Row := 0;
    aRect:=DrawGrid1.CellRect(DrawGrid1.Col, DrawGrid1.Row);
    DrawGrid1.Canvas.Brush.Color:=clBtnFace;
    DrawGrid1.Canvas.Rectangle(aRect.Left,aRect.Top,aRect.Right,aRect.Bottom);
    DrawGrid1.Canvas.Rectangle(aRect);
    DrawGrid1.Canvas.TextOut(aRect.Left + trunc((aRect.Right-aRect.Left)/2),aRect.Top + trunc((aRect.Bottom-aRect.Top)/2),Adoquery2.FieldValues['CD_Cama']);

    inc(i);
    ADOQuery2.Next;
  End;

  i:=1;
  ADOQuery3.First;
  While NOT ADOQuery3.Eof DO
  Begin
    DrawGrid1.Col := 0;
    DrawGrid1.Row := i;
    aRect:=DrawGrid1.CellRect(DrawGrid1.Col, DrawGrid1.Row);
    DrawGrid1.Canvas.Brush.Color:=clBtnFace;
    DrawGrid1.Canvas.Rectangle(aRect.Left,aRect.Top,aRect.Right,aRect.Bottom);
    DrawGrid1.Canvas.Rectangle(aRect);
    DrawGrid1.Canvas.TextOut(1,aRect.Top + trunc((aRect.Bottom-aRect.Top)/2),Adoquery3.FieldValues['Descripcion']);

    inc(i);
    ADOQuery3.Next;
  End;

  //For i:= 1 To 24 Do
  //Begin
  //  For j:= 1 To 7 Do
  //  Begin
  //    DrawGrid1.Col := i;
  //    DrawGrid1.Row := j;
  //    aRect:=DrawGrid1.CellRect(DrawGrid1.Col, DrawGrid1.Row);
  //    DrawGrid1.Canvas.Brush.Color:=clSkyBlue;
      //DrawGrid1.Canvas.Rectangle(aRect.Left,aRect.Top,aRect.Right,aRect.Bottom);
  //    DrawGrid1.Canvas.Rectangle(aRect);
  //  End;
  //End;
End;

procedure TFCenso.DrawGrid1DblClick(Sender: TObject);
begin
  if (Columna <> 0) and (Fila <> 0) Then
  Begin
    //mt[Columna,dayof(Calendario.Date-1)+fila] := 1;
    refresca();
  End;
end;

procedure TFCenso.DrawGrid1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  DrawGrid1.MouseToCell(X,Y, Columna, Fila);
  statusbar1.panels[0].text:='El Cursor esta en la Fila: ' + inttostr(Fila) + ', Columna: ' + inttostr(Columna);
end;

procedure TFCenso.FormCreate(Sender: TObject);
begin
  ADOQuery3.Open;
  ADOQuery1.Open;
end;

procedure TFCenso.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  ADOQuery2.Close;
  ADOQuery2.Parameters.ParamValues['tp'] := ADOQuery1.FieldValues['cd_tipo'];
  ADOQuery2.Open;
  refresca();
end;

procedure TFCenso.FormActivate(Sender: TObject);
begin
  refresca();
end;

procedure TFCenso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFCenso.FormResize(Sender: TObject);
begin
  refresca();
end;

end.
