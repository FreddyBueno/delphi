unit CapturaBasica2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ComCtrls, Buttons, ExtCtrls, DBCtrls, Grids,
  Mask, DBGrids, dateutils;

type
  TCapturaB2 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    ADOTablePpalxx: TADOTable;
    StringGrid1: TStringGrid;
    DataSource1: TDataSource;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    Edit2: TMaskEdit;
    Edit3: TEdit;
    BitBtn5: TBitBtn;
    ADOQueryCVal: TADOQuery;
    ADOQueryVal: TADOQuery;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSource2: TDataSource;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn7: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn4: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Panel4: TPanel;
    BitBtn16: TBitBtn;
    DataSource3: TDataSource;
    ADOQueryAudita: TADOQuery;
    DBGrid1: TDBGrid;
    Button2: TButton;
    TabSheet4: TTabSheet;
    DataSource4: TDataSource;
    ADOQuery2: TADOQuery;
    DataSource5: TDataSource;
    ADOQuery4: TADOQuery;
    Panel5: TPanel;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Splitter1: TSplitter;
    Panel8: TPanel;
    GroupBox6: TGroupBox;
    Button3: TButton;
    Button4: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    BitBtn6: TBitBtn;
    DBText1: TDBText;
    BitBtn8: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn9: TBitBtn;
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure StringGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker1Enter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DateTimePicker1Exit(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure Panel5Enter(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure StringGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CapturaB2: TCapturaB2;

implementation

uses UDataModule1, CapturaBasica,
  Libreria_PrateincoForm;

{$R *.dfm}

procedure TCapturaB2.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  GroupBox1.Caption := StringGrid1.Cells[0,Arow];
end;

procedure TCapturaB2.BitBtn1Click(Sender: TObject);
begin
  CapturaB.ADOTableBasica.Cancel;
  CapturaB.ADOTableBasica.Append;
  StringGrid1.SetFocus;
end;

procedure TCapturaB2.BitBtn2Click(Sender: TObject);
var i:integer;
begin
  For i:=0 TO CapturaB.ADOTableBasica.FieldCount DO
  Begin
    StringGrid1.Cells[2,i+1] := StringGrid1.Cells[1,i+1];
  End;

  CapturaB.ADOTableBasica.Cancel;
  CapturaB.ADOTableBasica.Edit;
  StringGrid1.SetFocus;
end;

procedure TCapturaB2.BitBtn3Click(Sender: TObject);
begin
  if MessageDlg('Desea eliminar el Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    CapturaB.ADOTableBasica.Delete;
  End;

  StringGrid1.SetFocus;
end;

procedure TCapturaB2.BitBtn4Click(Sender: TObject);
var i:integer;
begin
  CapturaB.ADOTableBasica.Cancel;
  CapturaB.ADOTableBasica.Edit;
end;

procedure TCapturaB2.BitBtn5Click(Sender: TObject);
begin
  StringGrid1.SetFocus;
  CapturaB2 := tCapturaB2.create(application);
  CapturaB2.Edit1.Text:= Datamodule1.ADOComunes.DefaultDatabase+'..SEValidaciones';

  CapturaB.ADOTableBasica.Filtered:=False;
  CapturaB.ADOTableBasica.Filter:='campo Like '+chr(39)+'%'+GroupBox1.Caption+'%'+chr(39);
  CapturaB.ADOTableBasica.Filtered:=True;

  try
    Datamodule1.MuestraconAcceso(CapturaB2);
  except
    CapturaB2.free;
  end;
end;

procedure TCapturaB2.BitBtn6Click(Sender: TObject);
begin
  StringGrid1.SetFocus;
end;

procedure TCapturaB2.BitBtn7Click(Sender: TObject);
Var val,i:integer;
begin
  val:=0;
  For i:=0 TO CapturaB.ADOTableBasica.FieldCount DO
  Begin
    if (StringGrid1.Cells[1,i+1]<>StringGrid1.Cells[2,i+1]) then val:=1;
  End;
  if (val=0) then showmessage('No se puede grabar por que no se ha realizado ninguna modificación a la Tabla.');

  For i:=0 TO (CapturaB.ADOTableBasica.FieldCount-1) DO
  Begin
    if (StringGrid1.Cells[2,i+1] = '') then val:=0;
  End;
  if (val=0) then showmessage('ERROR: Todos los campos deben tener información.');

  if (val = 1) then Begin
    For i:=0 TO CapturaB.ADOTableBasica.FieldCount-1 DO
    Begin
      if (StringGrid1.Cells[1,i+1]<>StringGrid1.Cells[2,i+1]) then
      Begin
        CapturaB.ADOTableBasica.FieldValues[CapturaB.ADOTableBasica.FieldDefList.FieldDefs[i].Name] := StringGrid1.Cells[2,i+1];
        //Graba el LOG.
        Datamodule1.Graba_Logx(now,'G',StringGrid1.Cells[1,i+1],StringGrid1.Cells[2,i+1],Edit1.Text,CapturaB.ADOTableBasica.FieldDefList.FieldDefs[i].Name);
      End;
    End;

    try
      CapturaB.ADOTableBasica.Post;
    except
      CapturaB.ADOTableBasica.Cancel;
    end;

  End;
  StringGrid1.SetFocus;
end;

procedure TCapturaB2.Edit1Change(Sender: TObject);
var i:integer;
s:string;
begin
  //ADOTablePpal.Close;
  //ADOTablePpal.TableName := Edit1.Text;
  //ADOTablePpal.Open;

  ADOQueryAudita.Close;
  ADOQueryAudita.Parameters.ParamValues['tb'] := Edit1.Text;
  ADOQueryAudita.Open;

  StringGrid1.RowCount:= CapturaB.ADOTableBasica.FieldCount+1;
  StringGrid1.ColWidths[0]:=200;
  StringGrid1.ColWidths[1]:=200;
  StringGrid1.ColWidths[2]:=200;

  StringGrid1.Cells[0,0] := 'CAMPO';
  StringGrid1.Cells[1,0] := 'Valor_Anterior';
  StringGrid1.Cells[2,0] := 'Valor_Nuevo';

  For i:=1 TO CapturaB.ADOTableBasica.FieldCount DO
  Begin
    StringGrid1.Cells[0,i] := CapturaB.ADOTableBasica.FieldDefList.FieldDefs[i-1].DisplayName;
    //ADOTablePpal.IndexName
//    StringGrid1.Cells[1,i] := vartostr(ADOTablePpal.FieldDefList.FieldDefs[i-1].DataType);
    //StringGrid1.Cells[3,i] := vartostr(ADOTablePpal.FieldDefList.FieldDefs[i-1].Size);
  End;
  GroupBox1.Caption := StringGrid1.Cells[0,StringGrid1.row];
end;

procedure TCapturaB2.StringGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then Begin
    StringGrid1DblClick(Nil);
  End;
end;

procedure TCapturaB2.Button1Click(Sender: TObject);
begin
  StringGrid1.Cells[2,StringGrid1.row] := Edit2.Text;
  if StringGrid1.Row <> StringGrid1.RowCount-1 Then StringGrid1.Row := StringGrid1.Row +1
  else StringGrid1.Row := 1;
  StringGrid1.Enabled := True;
  StringGrid1.SetFocus;
  Panel1.Enabled := True;
  Panel3.Visible := False;
end;

procedure TCapturaB2.Edit2Enter(Sender: TObject);
begin
  IF CapturaB.ADOTableBasica.State = dsEdit Then Edit2.Text:=StringGrid1.Cells[2,StringGrid1.row]
  Else Edit2.Text:='';
  
  Edit2.Color := clWindow;

  if NOT ((CapturaB.ADOTableBasica.State =dsedit) or (CapturaB.ADOTableBasica.State =dsinsert)) Then BitBtn4Click(Nil);
  if (CapturaB.ADOTableBasica.FieldDefList.FieldByName(GroupBox1.Caption).DataType = ftDateTime) then Begin
    if (StringGrid1.Cells[2,StringGrid1.row] <> '') then DateTimePicker1.DateTime := strtodate(StringGrid1.Cells[2,StringGrid1.row]);
    DateTimePicker1.Visible := True;
    Edit2.Visible := False;
    DateTimePicker1.SetFocus;
  end;

  ADOQueryCVal.Close;
  ADOQueryCVal.Parameters.ParamValues['Tp']   := 'G';
  ADOQueryCVal.Parameters.ParamValues['camp'] := GroupBox1.Caption;
  ADOQueryCVal.Open;
  If (ADOQueryCVal.RecordCount > 0) Then Begin
    DBText1.Visible :=True;
    ADOQueryVal.Close;
    ADOQueryVal.SQL.Clear;
    ADOQueryVal.SQL.Add(ADOQueryCVal.FieldValues['Validacion']);
    ADOQueryVal.Open;
    DBLookupComboBox1.KeyValue := ADOQueryVal.FieldValues['Val1'];
    DBLookupComboBox1.Visible := True;
    Edit2.Visible := False;
    DBLookupComboBox1.SetFocus;
  End;

  //ftString Then
  //              ADOQuery1.SQL.Add('ALTER TABLE ['+ListBox2.Items[i]+'] ADD '+ListBox3.Items[k]+' VARCHAR('+inttostr(ADOTable2.FieldDefList.FieldDefs[k].Size)+') NULL')
  //            ELSE IF ADOTable2.FieldDefList.FieldDefs[k].DataType=ftInteger	 Then
  //              ADOQuery1.SQL.Add('ALTER TABLE ['+ListBox2.Items[i]+'] ADD '+ListBox3.Items[k]+' INT NULL')
  //            ELSE IF ADOTable2.FieldDefList.FieldDefs[k].DataType=ftDateTime	 Then
  //              ADOQuery1.SQL.Add('ALTER TABLE ['+ListBox2.Items[i]+'] ADD '+ListBox3.Items[k]+' DATETIME NULL')
  //            ELSE IF ADOTable2.FieldDefList.FieldDefs[k].DataType=ftFixedChar

  Edit2.MaxLength := CapturaB.ADOTableBasica.FieldDefList.FieldByName(GroupBox1.Caption).Size;
  Edit3.Text := inttostr(CapturaB.ADOTableBasica.FieldDefList.FieldByName(GroupBox1.Caption).Size);
end;

procedure TCapturaB2.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then Button1Click(Nil);
end;

procedure TCapturaB2.DataSource1DataChange(Sender: TObject; Field: TField);
Var i:Integer;
begin
  For i:=1 TO CapturaB.ADOTableBasica.FieldCount DO
  Begin
    StringGrid1.Cells[1,i] := vartostr(CapturaB.ADOTableBasica.FieldValues[CapturaB.ADOTableBasica.FieldDefList.FieldDefs[i-1].Name]);
  End;
end;

procedure TCapturaB2.BitBtn8Click(Sender: TObject);
begin
  ReporteadorP(Edit1.Text,Edit1.Text,'');
  StringGrid1.SetFocus;
end;

procedure TCapturaB2.BitBtn9Click(Sender: TObject);
begin
  ReporteadorP(Edit1.Text,'SELECT * FROM ' + Edit1.Text,'');
end;

procedure TCapturaB2.BitBtn10Click(Sender: TObject);
Var Cadena:String;
    campo:String;
begin
  If NOT (CapturaB.ADOTableBasica.Filtered) then
  Begin
    CapturaB.ADOTableBasica.Filtered:=False;
    Campo:=GroupBox1.Caption;
    cadena:=InputBox('Filtrar los registros', Campo, StringGrid1.Cells[1,StringGrid1.row]);
    CapturaB.ADOTableBasica.Filter:=campo+' Like '+chr(39)+'%'+cadena+'%'+chr(39);
    CapturaB.ADOTableBasica.Filtered:=True;
    BitBtn10.Font.Color := clRed;
  End
  Else Begin
    BitBtn10.Font.Color := clBlack;
    CapturaB.ADOTableBasica.Filtered:=False;
  End;

  StringGrid1.SetFocus;
end;

procedure TCapturaB2.DataSource1StateChange(Sender: TObject);
var i:integer;
begin
  BitBtn1.Font.Color := clBlack;
  BitBtn2.Font.Color := clBlack;
  BitBtn4.Font.Color := clBlack;
  BitBtn3.Enabled := False;
  BitBtn7.Enabled := False;
  BitBtn8.Enabled := False;
  BitBtn10.Enabled := False;
  BitBtn9.Enabled := False;

  If (CapturaB.ADOTableBasica.State = dsInsert) then BitBtn1.Font.Color := clRed
  Else If (CapturaB.ADOTableBasica.State = dsEdit) then BitBtn2.Font.Color := clRed;
  if (CapturaB.ADOTableBasica.State =dsedit) or (CapturaB.ADOTableBasica.State =dsinsert) Then BitBtn7.Enabled := True
  else begin
    BitBtn3.Enabled := True;
    BitBtn8.Enabled := True;
    BitBtn10.Enabled := True;
    BitBtn9.Enabled := True;
//    For i:=0 TO ADOTablePpal.FieldCount DO StringGrid1.Cells[2,i+1] := '';
  end;
end;

procedure TCapturaB2.DateTimePicker1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then Begin
    Edit2.Text := datetostr(DateTimePicker1.DateTime);
    Button1Click(Nil);
  End;
end;

procedure TCapturaB2.DateTimePicker1Enter(Sender: TObject);
begin
  DatetimePicker1.DateTime := now;
end;

procedure TCapturaB2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (CapturaB.ADOTableBasica.State =dsedit) or (CapturaB.ADOTableBasica.State =dsinsert) Then
    if MessageDlg('Hay un resgistro pendiente de Grabación, Esta seguro de Salir?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      Exit;
  action:=cafree;
end;

procedure TCapturaB2.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then Begin
    Edit2.Text := ADOQueryVal.FieldValues['val1'];
    Button1Click(Nil);
  End;

end;

procedure TCapturaB2.Edit2Exit(Sender: TObject);
begin
  Edit2.Color := cl3DLight;
end;

procedure TCapturaB2.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  if Datamodule1.ADOQuery1.FieldValues['id'] = 0 then Begin
    GroupBox2.Visible := True;
  End;
end;

procedure TCapturaB2.Button2Click(Sender: TObject);
begin
  StringGrid1.Enabled := True;
  StringGrid1.SetFocus;
  Panel1.Enabled := True;
  Panel3.Visible := False;
end;

procedure TCapturaB2.DateTimePicker1Exit(Sender: TObject);
begin
  DateTimePicker1.Visible := False;
  Edit2.Visible := True;
end;

procedure TCapturaB2.DBLookupComboBox1Exit(Sender: TObject);
begin
  DBLookupComboBox1.Visible := False;
  DBText1.Visible :=False;
  Edit2.Visible := True;
end;

procedure TCapturaB2.Panel5Enter(Sender: TObject);
begin
  GroupBox6.Caption := GroupBox1.Caption;
  Edit5.Text := StringGrid1.Cells[1,StringGrid1.row];
  Edit4.Text := StringGrid1.Cells[2,StringGrid1.row];

  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('SELECT * FROM '+Edit1.Text+' WHERE '+GroupBox1.Caption+' = '+chr(39)+Edit5.Text+chr(39));
  ADOQuery2.Open;

  ADOQuery4.Close;
  ADOQuery4.SQL.Clear;
  ADOQuery4.SQL.Add('SELECT * FROM '+Edit1.Text+' WHERE '+GroupBox1.Caption+' = '+chr(39)+Edit4.Text+chr(39));
  ADOQuery4.Open;
end;

procedure TCapturaB2.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
var i:integer;  
begin
  IF CapturaB.ADOTableBasica.State = dsEdit Then
  Begin
    Showmessage('Modificaciones fueron canceladas, cambiando de Registro.');
  End;
    
  For i:=0 TO CapturaB.ADOTableBasica.FieldCount DO
  Begin
    StringGrid1.Cells[2,i+1] := '';
  End;
end;

procedure TCapturaB2.StringGrid1DblClick(Sender: TObject);
begin
  Panel3.Visible := True;
  StringGrid1.Enabled := False;
  Panel1.Enabled := False;
  edit2.SetFocus;
end;

end.
