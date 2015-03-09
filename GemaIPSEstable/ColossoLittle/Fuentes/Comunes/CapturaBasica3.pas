unit CapturaBasica3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, Buttons, DBCtrls, DB, ADODB,
  ComCtrls , JvGradient,Vcl.Clipbrd;

type
  TCapturaB3 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Edit3: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    ADOQPpal: TADOQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ADOQSecundaria: TADOQuery;
    DataSource3: TDataSource;
    ADOQUnion: TADOQuery;
    DataSource4: TDataSource;
    ADOQrelacion: TADOQuery;
    Edit8: TEdit;
    Edit9: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    Panel5: TPanel;
    Panel6: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    RB1: TRadioButton;
    RB2: TRadioButton;
    RB3: TRadioButton;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    WherePpal: TLabel;
    WhereSec: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit9Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DataSource4DataChange(Sender: TObject; Field: TField);
    procedure RB1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CapturaB3: TCapturaB3;
  Otros: String;

implementation

{$R *.dfm}

procedure TCapturaB3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TCapturaB3.RB1Click(Sender: TObject);
begin
  //Tabla Secundaria
  ADOQSecundaria.Close;
  ADOQSecundaria.SQL.Clear;
  if WhereSec.Caption = '' then
  Begin
    if RB1.Checked then
    Begin
      ADOQSecundaria.SQL.Add('SELECT *,'+Label6.Caption+' as L6, '+Label5.Caption+' as L5 FROM '+ Label4.Caption+' as B ');
    End
    Else if RB2.Checked then
    Begin
      ADOQSecundaria.SQL.Add('SELECT *,'+Label6.Caption+' as L6, '+Label5.Caption+' as L5 FROM '+ Label4.Caption+' as B WHERE '+Label5.Caption+' NOT IN (SELECT '+Edit9.Text+' FROM '+Edit3.Text+')');
    End
    Else if RB3.Checked then
    Begin
      ADOQSecundaria.SQL.Add('SELECT *,'+Label6.Caption+' as L6, '+Label5.Caption+' as L5 FROM '+ Label4.Caption+' as B WHERE '+Label5.Caption+' NOT IN (SELECT '+Edit9.Text+' FROM '+Edit3.Text+' WHERE '+Edit8.Text+' = '+ADOQPpal.FieldValues['Tipo_Tercero']+')');
    End;
  End
  Else Begin
    if RB1.Checked then
    Begin
      ADOQSecundaria.SQL.Add('SELECT *,'+Label6.Caption+' as L6, '+Label5.Caption+' as L5 FROM '+ Label4.Caption+' as B WHERE '+whereSec.Caption);
    End
    Else if RB2.Checked then
    Begin
      ADOQSecundaria.SQL.Add('SELECT *,'+Label6.Caption+' as L6, '+Label5.Caption+' as L5 FROM '+ Label4.Caption+' as B WHERE '+whereSec.Caption+' AND '+Label5.Caption+' NOT IN (SELECT '+Edit9.Text+' FROM '+Edit3.Text+')');
    End
    Else if RB3.Checked then
    Begin
      ADOQSecundaria.SQL.Add('SELECT *,'+Label6.Caption+' as L6, '+Label5.Caption+' as L5 FROM '+ Label4.Caption+' as B WHERE '+whereSec.Caption+' AND '+Label5.Caption+' NOT IN (SELECT '+Edit9.Text+' FROM '+Edit3.Text+' WHERE '+Edit8.Text+' = '+ADOQPpal.FieldValues['Tipo_Tercero']+')');
    End;
  End;
  ADOQSecundaria.Open;
  //DBListBox1.DataField := 'L6';
end;

procedure TCapturaB3.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  if DBLookupComboBox1.KeyValue <> null then
  Begin
    //Tabla Relacion
    ADOQrelacion.Close;
    ADOQrelacion.SQL.Clear;
    ADOQrelacion.SQL.Add('SELECT ' + Label5.Caption + ' as Codigo, ' + Label6.Caption + ' as Descripcion '+otros);
    ADOQrelacion.SQL.Add(' FROM '+ Label1.Caption+' as A,'+Label4.Caption+' as B,'+Edit3.text+' as C');
    ADOQrelacion.SQL.Add(' WHERE C.' + Edit8.text + ' = ' + Label2.Caption + ' AND ');
    ADOQrelacion.SQL.Add('       C.' + Edit9.text + ' = ' + Label5.Caption + ' AND ');
    if DBLookupComboBox1.ListSource.DataSet.FieldDefList.FieldByName(DBLookupComboBox1.KeyField).DataType in [ftBCD,ftInteger,ftsmallint,ftword,ftfloat,ftcurrency,ftlargeint] then
      ADOQrelacion.SQL.Add('       C.' + Edit8.text + ' = ' + floattostr(DBLookupComboBox1.KeyValue))
    else
      ADOQrelacion.SQL.Add('       C.' + Edit8.text + ' = ' + chr(39) + DBLookupComboBox1.KeyValue + chr(39));
    ADOQrelacion.Open;
  End;
end;

procedure TCapturaB3.BitBtn1Click(Sender: TObject);
var
 k:integer;
begin
  ADOQUnion.Append;
  ADOQUnion.FieldValues[Edit8.text] := DBLookupComboBox1.KeyValue;
  ADOQUnion.FieldValues[Edit9.text] := ADOQSecundaria.FieldValues['L5'];
  For k := 0 To TabSheet2.Components[0].Components[0].ComponentCount - 1 Do
  Begin
    If TabSheet2.Components[0].Components[0].Components[k] Is TEdit Then
    Begin
      If TEdit(TabSheet2.Components[0].Components[0].Components[k]).Hint <> '' Then
        ADOQUnion.FieldValues[TEdit(TabSheet2.Components[0].Components[0].Components[k]).Hint]:=TEdit(TabSheet2.Components[0].Components[0].Components[k]).Text;
    End;
  End;
  ADOQUnion.Post;
  PageControl1.TabIndex := 0;

  DataSource1DataChange(nil,nil);
  RB1Click(Nil);
end;

procedure TCapturaB3.Edit9Change(Sender: TObject);
Var
  j,k,desp:Integer;
  Textnuevo         : TLabel;
  EditNuevo         : TEdit;
  EditNuevo2        : TEdit;
  FrameNuevo        : TFrame;
  PanelNuevo        : TPanel;
begin
  //Tabla Principal
  DBLookupComboBox1.ListField := 'L2;L3';
  DBLookupComboBox1.KeyField  := 'L2';
  ADOQPpal.SQL.Clear;
  if WherePpal.Caption = '' then
  Begin
    ADOQPpal.SQL.Add('SELECT *,'+Label3.Caption+' as L3, '+Label2.Caption+'  as L2 FROM '+ Label1.Caption+' as A WHERE estado = '+chr(39)+'A'+chr(39));
  End
  Else Begin
    ADOQPpal.SQL.Add('SELECT *,'+Label3.Caption+' as L3, '+Label2.Caption+'  as L2 FROM '+ Label1.Caption+' as A WHERE '+WherePpal.Caption+' AND estado = '+chr(39)+'A'+chr(39));
  End;
  ADOQPpal.Open;

  //Tabla Secundaria
  //DBListBox1.DataField  := 'L6';
  ADOQSecundaria.Close;
  ADOQSecundaria.SQL.Clear;
  if WhereSec.Caption = '' then
  Begin
    if RB1.Checked then
    Begin
      ADOQSecundaria.SQL.Add('SELECT *,'+Label6.Caption+' as L6, '+Label5.Caption+' as L5 FROM '+ Label4.Caption+' as B ');
    End
    Else if RB2.Checked then
    Begin
      ADOQSecundaria.SQL.Add('SELECT *,'+Label6.Caption+' as L6, '+Label5.Caption+' as L5 FROM '+ Label4.Caption+' as B WHERE '+Label5.Caption+' NOT IN (SELECT '+Edit9.Text+' FROM '+Edit3.Text+')');
    End
    Else if RB3.Checked then
    Begin
      ADOQSecundaria.SQL.Add('SELECT *,'+Label6.Caption+' as L6, '+Label5.Caption+' as L5 FROM '+ Label4.Caption+' as B WHERE '+Label5.Caption+' NOT IN (SELECT '+Edit9.Text+' FROM '+Edit3.Text+' WHERE '+Edit8.Text+' = '+ADOQPpal.FieldValues['Tipo_Tercero']+')');
    End;
  End
  Else begin
    if RB1.Checked then
    Begin
      ADOQSecundaria.SQL.Add('SELECT *,'+Label6.Caption+' as L6, '+Label5.Caption+' as L5 FROM '+ Label4.Caption+' as B WHERE '+whereSec.Caption);
    End
    Else if RB2.Checked then
    Begin
      ADOQSecundaria.SQL.Add('SELECT *,'+Label6.Caption+' as L6, '+Label5.Caption+' as L5 FROM '+ Label4.Caption+' as B WHERE '+whereSec.Caption+' AND '+Label5.Caption+' NOT IN (SELECT '+Edit9.Text+' FROM '+Edit3.Text+')');
    End
    Else if RB3.Checked then
    Begin
      ADOQSecundaria.SQL.Add('SELECT *,'+Label6.Caption+' as L6, '+Label5.Caption+' as L5 FROM '+ Label4.Caption+' as B WHERE '+whereSec.Caption+' AND '+Label5.Caption+' NOT IN (SELECT '+Edit9.Text+' FROM '+Edit3.Text+' WHERE '+Edit8.Text+' = '+ADOQPpal.FieldValues['Tipo_Tercero']+')');
    End;
  end;
  ADOQSecundaria.Open;

  //Tabla Union
  ADOQUnion.SQL.Clear;
  ADOQUnion.SQL.Add('SELECT * FROM '+ Edit3.text);
  ADOQUnion.Open;

  //Buscar Atributos Adicionales
  Panelnuevo             := TPanel.Create(TabSheet2);
  Panelnuevo.Parent      := TabSheet2;
  Panelnuevo.BevelInner  := bvLowered;
  Panelnuevo.BevelOuter  := BvRaised;
  Panelnuevo.Color       := clActiveBorder;
  Panelnuevo.Align       := alClient;
  Panelnuevo.Font.Size   := 8;

  Framenuevo             := TFrame.Create(PanelNuevo);
  Framenuevo.Parent      := PanelNuevo;
  Framenuevo.Align       := alClient;
  FrameNuevo.AutoScroll  := True;
  FrameNuevo.Color       := clGradientInactiveCaption;

  Desp:=10;
  Otros:='';
  for j:=0 To ADOQUnion.FieldCount-1 Do
  Begin
    if (uppercase(ADOQUnion.Fields.Fields[j].FieldName) <> uppercase(Edit8.Text)) AND (uppercase(ADOQUnion.Fields.Fields[j].FieldName) <> uppercase(Edit9.Text)) Then
    Begin
      Otros := Otros + ',C.'+ADOQUnion.Fields.Fields[j].FieldName;
      EditNuevo              := TEdit.Create(FrameNuevo);
      EditNuevo.Parent       := FrameNuevo;
      EditNuevo.Left         := 10;
      EditNuevo.Top          := Desp;
      EditNuevo.BorderStyle  := bsNone;
      EditNuevo.AutoSize     := true;
      EditNuevo.Font.Style   := [fsBold];
      EditNuevo.Name         := 'Ed'+inttostr(j);
      EditNuevo.Hint         := '';
      EditNuevo.Color        := clWindow;
      EditNuevo.Enabled      := False;
      EditNuevo.Text         := ADOQUnion.Fields.Fields[j].FieldName+':';

      EditNuevo2              := TEdit.Create(FrameNuevo);
      EditNuevo2.Parent       := FrameNuevo;
      EditNuevo2.Left         := EditNuevo.Width + EditNuevo.Left+15;
      EditNuevo2.Top          := Desp;
      EditNuevo2.Width        := ADOQUnion.FieldDefList.FieldDefs[j].Size * 10;
      EditNuevo2.MaxLength    := ADOQUnion.FieldDefList.FieldDefs[j].Size;
      EditNuevo2.Font.Style   := [];
      EditNuevo2.Name         := 'Edi'+inttostr(j);
      EditNuevo2.Hint         := ADOQUnion.Fields.Fields[j].FieldName;
      EditNuevo2.Color        := clWindow;
      EditNuevo2.Text         := '';

      Desp := Desp + EditNuevo.Height + 10;
    End;
  End;
  FrameNuevo.Refresh;
end;

procedure TCapturaB3.BitBtn2Click(Sender: TObject);
begin
  ADOQUnion.Delete;
  DataSource1DataChange(nil,nil);
  RB1Click(Nil);
end;

procedure TCapturaB3.BitBtn3Click(Sender: TObject);
begin
  ADOQSecundaria.First;
  while NOT ADOQSecundaria.Eof do
  Begin
    BitBtn1Click(Nil);
    ADOQSecundaria.Next;
  End;
end;

procedure TCapturaB3.BitBtn4Click(Sender: TObject);
begin
  ADOQUnion.First;
  while NOT ADOQUnion.Eof do
  Begin
    BitBtn2Click(Nil);

    ADOQUnion.Next;
  End;
end;

procedure TCapturaB3.DataSource4DataChange(Sender: TObject; Field: TField);
begin
  if ADOQRelacion.FieldValues['Codigo'] <> null then
  Begin
    //Tabla Union
    ADOQUnion.Close;
    ADOQUnion.SQL.Clear;
    ADOQUnion.SQL.Add('SELECT * FROM '+ Edit3.text);
    if DBLookupComboBox1.ListSource.DataSet.FieldDefList.FieldByName(DBLookupComboBox1.KeyField).DataType in [ftBCD,ftInteger,ftsmallint,ftword,ftfloat,ftcurrency,ftlargeint] then
      ADOQUnion.SQL.Add(' WHERE ' + Edit8.text + ' = ' + floattostr(DBLookupComboBox1.KeyValue) +' AND ')
    else
      ADOQUnion.SQL.Add(' WHERE ' + Edit8.text + ' = ' + chr(39) + DBLookupComboBox1.KeyValue + chr(39) +' AND ');
//    if DBLookupComboBox1.ListSource.DataSet.FieldDefList.FieldByName(ADOQRelacion.Fields.FieldByName('Codigo').AsString ).DataType in [ftBCD,ftInteger,ftsmallint,ftword,ftfloat,ftcurrency,ftlargeint] then
      //ADOQUnion.SQL.Add('        ' + Edit9.text + ' = ' + floattostr(ADOQRelacion.FieldValues['Codigo']))
  //  else
      ADOQUnion.SQL.Add('        ' + Edit9.text + ' = ' + chr(39) + ADOQRelacion.Fields.FieldByName('Codigo').AsString+ chr(39));
    ADOQUnion.Open;
  End;
end;

end.
