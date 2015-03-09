unit Lista_Tablas2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Grids, DBGrids, ExtCtrls,shellapi, ImgList,
  ComCtrls, ToolWin, Buttons, Menus;

type
  TFListadoTablasCol = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Edit5: TEdit;
    ImageList1: TImageList;
    ADOQuery1: TADOQuery;
    GroupBox3: TGroupBox;
    Edit6: TEdit;
    Edit7: TEdit;
    GroupBox4: TGroupBox;
    SpeedButton5: TSpeedButton;
    Edit9: TEdit;
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    ADOQTabla: TADOQuery;
    StringGrid1: TStringGrid;
    SpeedButton2: TSpeedButton;
    ProgressBar1: TProgressBar;
    SpeedButton4: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure refresca();
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListadoTablasCol: TFListadoTablasCol;

implementation

Uses ImportaPlanos, UDataModule1, MAIN, Libreria_PrateincoForm;

{$R *.dfm}

procedure TFListadoTablasCol.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure TFListadoTablasCol.refresca();
var i,j:Integer;
Begin
  For i:=0 To StringGrid1.ColCount-1 Do For j:=0 To StringGrid1.RowCount-1 Do StringGrid1.Cells[i,j] := '';
  StringGrid1.ColCount := 2;
  StringGrid1.RowCount := 2;

  ProgressBar1.Max := ADOQTabla.RecordCount;
  ADOQTabla.First;
  While NOT ADOQTabla.Eof DO
  Begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    FListadoTablasCol.Refresh;
     
    i:=1;
    While (StringGrid1.Cells[0,i] <> ADOQTabla.Fields.Fields[0].asstring) and (StringGrid1.RowCount-1 <> i) Do inc(i);
    j:=1;
    While (StringGrid1.Cells[j,0] <> ADOQTabla.Fields.Fields[1].asstring) and (StringGrid1.ColCount-1 <> j) Do inc(j);

    StringGrid1.Cells[0,i] := ADOQTabla.Fields.Fields[0].asstring;
    StringGrid1.Cells[j,0] := ADOQTabla.Fields.Fields[1].asstring;
    If StringGrid1.Cells[j,i] = '' Then StringGrid1.Cells[j,i] := ADOQTabla.Fields.Fields[2].asstring
    Else StringGrid1.Cells[j,i] := floattostr(strtofloat(StringGrid1.Cells[j,i]) + strtofloat(ADOQTabla.Fields.Fields[2].asstring));

    if (StringGrid1.RowCount-1 = i) then StringGrid1.RowCount := StringGrid1.RowCount + 1;
    if (StringGrid1.ColCount-1 = j) then StringGrid1.ColCount := StringGrid1.ColCount + 1;

    ADOQTabla.Next;
  End;
  //Recalcula el Tamaño de las Columnas
  For i:=0 To StringGrid1.ColCount-1 Do Begin
    For j:=0 To StringGrid1.RowCount-1 Do if StringGrid1.ColWidths[i]<length(StringGrid1.Cells[i,j])*6 then StringGrid1.ColWidths[i] := length(StringGrid1.Cells[i,j])*6;
  End;
End;

procedure TFListadoTablasCol.Edit1Change(Sender: TObject);
begin
  If Edit1.Text <> '' then
  Begin
    IF Edit7.Text='C' Then ADOQTabla.Connection := DataModule1.ADOComunes
    ELSE ADOQTabla.Connection := DataModule1.ADOConnection1;
    ADOQTabla.Close;
    ADOQTabla.SQL.Clear;
    ADOQTabla.SQL.Add(Edit1.Text);
    //try
      ADOQTabla.Open;
      Refresca();
    {except
      Showmessage ('ERROR: No se encuentra conectado el servidor, El sistema intentará reconectar. Si no puede, solucione el problema de red y pruebe de nuevo.');
      ADOQTabla.Connection.Close;
      ADOQTabla.Connection.Open;
      ADOQTabla.Open;
    end;}
    Edit2.Text:=inttostr(ADOQTabla.RecordCount);
    Edit3.Text:=inttostr(ADOQTabla.RecordSize);
    Edit4.Text:=inttostr(ADOQTabla.FieldCount);
    Edit5.Text:=inttostr(ADOQTabla.IndexFieldCount);
  End;
end;

procedure TFListadoTablasCol.SpeedButton3Click(Sender: TObject);
begin
  ReporteadorP(Edit1.Text,Edit1.Text,'');
end;

procedure TFListadoTablasCol.SpeedButton5Click(Sender: TObject);
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

procedure TFListadoTablasCol.FormActivate(Sender: TObject);
begin
  if ADOQTabla.State = dsbrowse Then
  Begin
    ADOQTabla.Close;
    ADOQTabla.Open;
    refresca();
  End;
end;

procedure TFListadoTablasCol.SpeedButton2Click(Sender: TObject);
begin
  IF ADOQTabla.Filtered Then ADOQTabla.Filtered := False
  Else Begin
    ADOQTabla.Filtered  := False;
    ADOQTabla.Filter    := ADOQTabla.FieldDefList.FieldDefs[1].DisplayName +' LIKE '+chr(39)+'%'+Edit6.Text+'%'+chr(39);
    ADOQTabla.Filtered  := True;
  End;
  refresca();
end;

procedure TFListadoTablasCol.FormDeactivate(Sender: TObject);
begin
  Close;
end;

procedure TFListadoTablasCol.SpeedButton4Click(Sender: TObject);
begin
  Close;
end;

end.
