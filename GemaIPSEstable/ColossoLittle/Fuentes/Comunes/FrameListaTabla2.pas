unit FrameListaTabla2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,StdCtrls,Grids,ADODB,
  Data.DB, Vcl.ImgList, Vcl.ComCtrls, shellapi,Vcl.Buttons, Vcl.ExtCtrls;

type
  TListaCol = class(TFrame)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit7: TEdit;
    GroupBox3: TGroupBox;
    SpeedButton2: TSpeedButton;
    Edit6: TEdit;
    GroupBox4: TGroupBox;
    SpeedButton5: TSpeedButton;
    Edit9: TEdit;
    StringGrid1: TStringGrid;
    Panel3: TPanel;
    ProgressBar1: TProgressBar;
    ImageList1: TImageList;
    ADOQuery1: TADOQuery;
    ADOQTabla: TADOQuery;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    procedure refresca();
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}
uses Libreria_Prateinco, UDataModule1;

procedure TListaCol.refresca();
var i,j:Integer;
    valor:Currency;
Begin
  For i:=0 To StringGrid1.ColCount-1 Do For j:=0 To StringGrid1.RowCount-1 Do StringGrid1.Cells[i,j] := '';
  StringGrid1.ColCount := 3;
  StringGrid1.RowCount := 3;
  StringGrid1.Cells[1,1] := 'TOTALES';

  ProgressBar1.Max := ADOQTabla.RecordCount;
  ADOQTabla.First;
  While NOT ADOQTabla.Eof DO
  Begin
    ProgressBar1.Position := ProgressBar1.Position + 1;

    i:=2;
    While (StringGrid1.Cells[0,i] <> ADOQTabla.Fields.Fields[0].asstring) and (StringGrid1.RowCount-1 <> i) Do inc(i);
    j:=2;
    While (StringGrid1.Cells[j,0] <> ADOQTabla.Fields.Fields[1].asstring) and (StringGrid1.ColCount-1 <> j) Do inc(j);

    StringGrid1.Cells[0,i] := ADOQTabla.Fields.Fields[0].asstring;
    StringGrid1.Cells[j,0] := ADOQTabla.Fields.Fields[1].asstring;
    If StringGrid1.Cells[j,i] = '' Then StringGrid1.Cells[j,i] := ADOQTabla.Fields.Fields[2].asstring
    Else StringGrid1.Cells[j,i] := floattostr(stf(StringGrid1.Cells[j,i]) + stf(ADOQTabla.Fields.Fields[2].asstring));

    valor := stf(StringGrid1.Cells[j,i]);
    StringGrid1.Cells[j,i] := Format('%16.2n',[valor]);

    if (StringGrid1.RowCount-1 = i) then StringGrid1.RowCount := StringGrid1.RowCount + 1;
    if (StringGrid1.ColCount-1 = j) then StringGrid1.ColCount := StringGrid1.ColCount + 1;

    ADOQTabla.Next;
  End;
  //Calcula Totales
  for I := 2 to StringGrid1.ColCount-1 do
  Begin
    Valor := 0;
    for j := 2 to StringGrid1.RowCount-1 do Valor := Valor + stf(StringGrid1.Cells[i,j]);
    StringGrid1.Cells[i,1] := Format('%16.2n',[valor]);
  End;
  for j := 2 to StringGrid1.RowCount-1 do
  Begin
    Valor := 0;
    for i := 2 to StringGrid1.ColCount-1 do Valor := Valor + stf(StringGrid1.Cells[i,j]);
    StringGrid1.Cells[1,j] := Format('%16.2n',[valor]);
  End;
  //Recalcula el Tamaño de las Columnas
  For i:=0 To StringGrid1.ColCount-1 Do Begin
    For j:=0 To StringGrid1.RowCount-1 Do if StringGrid1.ColWidths[i]<length(StringGrid1.Cells[i,j])*7 then StringGrid1.ColWidths[i] := length(StringGrid1.Cells[i,j])*7;
  End;
End;

procedure TListaCol.Edit1Change(Sender: TObject);
begin
  If Edit1.Text <> '' then
  Begin
    ADOQTabla.Close;
    ADOQTabla.SQL.Clear;
    ADOQTabla.SQL.Add(Edit1.Text);
    if trim(Edit7.text) <> '' then
    BEgin
      ADOQTabla.Filtered := True;
      ADOQTabla.Filter := Edit7.text;
    End
    Else ADOQTabla.Filtered := False;

    try
      ADOQTabla.Open;
      Refresca();
    except
      Showmessage ('ERROR: No se encuentra conectado el servidor, El sistema intentará reconectar. Si no puede, solucione el problema de red y pruebe de nuevo.');
      ADOQTabla.Connection.Close;
      ADOQTabla.Connection.Open;
      ADOQTabla.Open;
    end;
  End;
end;

procedure TListaCol.SpeedButton1Click(Sender: TObject);
var archivo :string;
begin
  archivo := ExtractFilePath(paramstr(0))+'Reporte\';
  XmlExcel(archivo,'TablasCol.xml', StringGrid1);
  shellexecute(handle,'open',pchar(Archivo+'TablasCol.xml'),'','',sw_shownormal);
end;

procedure TListaCol.SpeedButton2Click(Sender: TObject);
begin
  IF ADOQTabla.Filtered Then ADOQTabla.Filtered := False
  Else Begin
    ADOQTabla.Filtered  := False;
    ADOQTabla.Filter    := ADOQTabla.FieldDefList.FieldDefs[0].DisplayName +' LIKE '+chr(39)+'%'+Edit6.Text+'%'+chr(39);
    ADOQTabla.Filtered  := True;
  End;
  refresca();
end;

procedure TListaCol.SpeedButton5Click(Sender: TObject);
begin
  IF ADOQTabla.Filtered Then ADOQTabla.Filtered := False
  Else Begin
    ADOQTabla.Filtered  := False;
    if ADOQTabla.FieldDefList.FieldDefs[0].DataType in [ftBCD,ftInteger,ftsmallint,ftword,ftfloat,ftcurrency,ftlargeint] then
      ADOQTabla.Filter    := ADOQTabla.FieldDefList.FieldDefs[0].DisplayName +' = '+Edit9.Text
    Else
      ADOQTabla.Filter    := ADOQTabla.FieldDefList.FieldDefs[0].DisplayName +' LIKE '+chr(39)+'%'+Edit9.Text+'%'+chr(39);
    ADOQTabla.Filtered  := True;
  End;
  refresca();
end;

end.
