unit ImportaPlanosPaci;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ExtCtrls, ComCtrls, DB, ADODB, Buttons, DBCtrls;

type
  TImportPlanoAdmi = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    StringGrid1: TStringGrid;
    opcopia: TOpenDialog;
    StatusBar1: TStatusBar;
    GroupBox2: TGroupBox;
    RadioGroup1: TRadioGroup;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    Panel3: TPanel;
    ADOTable1: TADOTable;
    Edit4: TEdit;
    StringGrid2: TStringGrid;
    Edit5: TEdit;
    Panel4: TPanel;
    ListBox1: TListBox;
    GroupBox3: TGroupBox;
    Label11: TLabel;
    DBLookupComboBox11: TDBLookupComboBox;
    Edit1: TEdit;
    Splitter1: TSplitter;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Splitter2: TSplitter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure StringGrid2SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImportPlanoAdmi: TImportPlanoAdmi;
  ch:char;

implementation

uses UDataModule1, ModuloAdmision;

{$R *.dfm}

procedure TImportPlanoAdmi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure TImportPlanoAdmi.FormActivate(Sender: TObject);
begin
  ch:=',';
end;

procedure TImportPlanoAdmi.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 0 then ch:=','
  else ch:=chr(7);
end;

procedure TImportPlanoAdmi.Edit1Change(Sender: TObject);
Var i:Integer;
begin
  IF Edit4.Text='C' Then ADOTable1.Connection  :=DataModule1.ADOComunes
  ELSE ADOTable1.Connection:=DataModule1.ADOConnection1;
  Adotable1.TableName:=trim(Edit1.Text);
  Adotable1.Open;

  StringGrid1.Cells[0,0]:='Campos Tbl';
  StringGrid1.Cells[0,1]:='         *';

  For i:=1 TO Adotable1.FieldCount do
  Begin
    StringGrid1.Cells[i,1]:=inttostr(i);
    Stringgrid1.Cells[i,0]:=ADOTable1.Fields.Fields[i-1].DisplayName;
    Stringgrid1.ColCount:=i+1;
    Stringgrid1.ColWidths[i]:=length(ADOTable1.Fields.Fields[i-1].DisplayName)*8;
  end;
  Adotable1.Close;
end;

procedure TImportPlanoAdmi.StringGrid2SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
  InputString:string;
  i:Integer;
begin
  InputString:= InputBox('Columna de la Tabla', 'Digite la columna a copiar', StringGrid1.Cells[Acol,1]);
  IF trystrtoint(InputString,i) Then
    StringGrid1.Cells[strtoint(InputString),2]:=inttostr(ACol)
  ELSE Showmessage('Error al Convertir el Numero.');
end;

procedure TImportPlanoAdmi.BitBtn1Click(Sender: TObject);
Var
  cadena,cadena2:string;
  i,j,ind,k:integer;
  F1: TextFile;
begin
  IF DBLookupComboBox11.Text = '' Then
  Begin
    Showmessage('Ingrese la Aseguradora');
    Exit;
  End;

  StringGrid2.Cells[0,0]:='Consecutivo';
  StringGrid2.Cells[0,1]:='Tamaño';
  opcopia.initialdir:='Reportes\';
  opcopia.DefaultExt:='*.csv';
  if opcopia.execute then
  begin
    Edit5.Text:=opcopia.FileName;
    StatusBar1.panels[0].Text:=opcopia.filename;
    AssignFile(F1, opcopia.filename);
    Reset(F1);
    stringGrid2.rowcount:=3;
    k:=0;
    while (not Eof(F1)) AND (k <100) do
    begin
      inc(k);
      j:=1;
      ind:=0;
      cadena2:='';
      Readln(F1, cadena);
      For i:=1 TO length(cadena) do
      Begin
        if copy(cadena,i,1) = '"' then
        begin
          if ind=0 then ind:=1
          else ind:=0;
        end
        else if (copy(cadena,i,1) = ch) AND (ind = 0) then
        begin
          if stringGrid2.ColCount-1 <= j then
            stringGrid2.ColCount:=j+1;

          StringGrid2.Cells[j,0]:='0';
          StringGrid2.Cells[j,1]:=inttostr(j);

          StringGrid2.Cells[j,stringGrid2.rowcount-1]:=cadena2;
          if stringGrid2.ColWidths[j]<length(cadena2)*6 then stringGrid2.ColWidths[j]:=length(cadena2)*6;
          if strtoint(StringGrid2.Cells[j,0])<length(cadena2) then StringGrid2.Cells[j,0]:=inttostr(length(cadena2));
          cadena2:='';
          j:=j+1;
        end
        else begin
          cadena2:=cadena2+copy(cadena,i,1);
        end;
      end;
      If cadena2 <> '' Then
      Begin
        if stringGrid2.ColCount-1 <= j then
          stringGrid2.ColCount:=j+1;

        StringGrid2.Cells[j,0]:='0';
        StringGrid2.Cells[j,1]:=inttostr(j);

        StringGrid2.Cells[j,stringGrid2.rowcount-1]:=cadena2;
        if stringGrid2.ColWidths[j]<length(cadena2)*6 then stringGrid2.ColWidths[j]:=length(cadena2)*6;
        if strtoint(StringGrid2.Cells[j,0])<length(cadena2) then StringGrid2.Cells[j,0]:=inttostr(length(cadena2));
        cadena2:='';
        j:=j+1;
      End;
      StringGrid2.Cells[0,stringGrid2.rowcount-1]:=inttostr(stringGrid2.rowcount-3);
      stringGrid2.rowcount:=stringGrid2.rowcount+1;
    end;
    edit2.Text:=inttostr(stringGrid2.rowcount-4);
    edit3.Text:=inttostr(stringGrid2.colcount-1);
    CloseFile(F1);
  end;
  StringGrid2.SetFocus;
  if StringGrid2.RowCount > 4 then BitBtn3.Enabled:=true;
  BitBtn1.Enabled:=False;
end;

procedure TImportPlanoAdmi.BitBtn2Click(Sender: TObject);
begin
  WinExec(PAnsiChar('Notepad.exe ' + StatusBar1.panels[0].Text),SW_SHOWNORMAL);
  StringGrid1.SetFocus;
end;

procedure TImportPlanoAdmi.BitBtn3Click(Sender: TObject);
Var
  cadena,cadena2:string;
  i,j,ind,k:integer;
  F1: TextFile;
begin
  ADOTable1.Open;
  StringGrid1.RowCount := 4;

  AssignFile(F1, Edit5.Text);
  Reset(F1);
  while (not Eof(F1)) do
  begin
    j:=1;
    ind:=0;
    cadena2:='';
    Readln(F1, cadena);
    For i:=1 TO length(cadena) do
    Begin
      if copy(cadena,i,1) = '"' then
      begin
        if ind=0 then ind:=1
        else ind:=0;
      end
      else if (copy(cadena,i,1) = ch) AND (ind = 0) then
      begin
        if StringGrid1.ColCount-1 <= j then
          StringGrid1.ColCount:=j+1;

        StringGrid1.Cells[j,1]:=inttostr(j);

        For k:=1 To ADOTable1.FieldCount Do
        Begin
          IF StringGrid1.cells[k,2] <> '' Then
            IF strtoint(StringGrid1.cells[k,2]) = j Then
              StringGrid1.Cells[k,StringGrid1.rowcount-1]:=cadena2;
        End;
        cadena2:='';
        j:=j+1;
      end
      else begin
        cadena2:=cadena2+copy(cadena,i,1);
      end;
    end;
    If cadena2 <> '' Then
    Begin
      if StringGrid1.ColCount-1 <= j then
        StringGrid1.ColCount:=j+1;

      StringGrid1.Cells[j,1]:=inttostr(j);

      For k:=1 To ADOTable1.FieldCount Do
      Begin
        IF StringGrid1.cells[k,2] <> '' Then
            IF strtoint(StringGrid1.cells[k,2]) = j Then
              StringGrid1.Cells[k,StringGrid1.rowcount-1]:=cadena2;
      End;
      cadena2:='';
      j:=j+1;
    End;
    StringGrid1.Cells[0,StringGrid1.rowcount-1]:=inttostr(StringGrid1.rowcount-3);
    StringGrid1.rowcount:=StringGrid1.rowcount+1;
  end;
  edit2.Text:=inttostr(StringGrid1.rowcount-4);
  edit3.Text:=inttostr(StringGrid1.colcount-1);
  CloseFile(F1);

  if MessageDlg('Se Cargaron Registros de Pruebas, Esta totalmente seguro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    ImportPlanoAdmi.Cursor :=crHourGlass;
    For j:=3 To (StringGrid1.RowCount-1) Do
    Begin
      Try
        IF ADOTable1.Locate('Nr_Ident_Usuar;Tp_Ident_Usuar', VarArrayOf([StringGrid1.Cells[1,j], StringGrid1.Cells[2,j]]), [loPartialKey]) Then
          ADOTable1.Edit
        Else ADOTable1.Append;
        ADOTable1.FieldValues['Aseguradora']:=DBLookupComboBox11.KeyValue;
        ADOTable1.FieldValues['Fec_Ingreso']:=now;
        For i:=1 To ADOTable1.FieldCount Do
        Begin
          IF StringGrid1.Cells[i,j] <> '' Then ADOTable1.FieldValues[StringGrid1.Cells[i,0]]:=StringGrid1.Cells[i,j];
        End;
        ADOTable1.FieldValues['CCHistoria']:=ADOTable1.FieldValues['TP_Ident_Usuar']+ADOTable1.FieldValues['NR_Ident_Usuar'];
        ADOTable1.FieldValues['Cod_Usuario']:=Datamodule1.ADOQuery1.FieldValues['Id'];

        ADOTable1.Post;
      except
        ADOtable1.CancelUpdates;
        ListBox1.Items.Add('El registro '+inttostr(j)+' no pudo ser grabado, El proceso continuara.');
        continue;
      End;
    End;
    ImportPlanoAdmi.Cursor :=crDefault;
  End;
  ADOTable1.Close;

  //Graba el LOG.
  Showmessage('Plano importado correctamente.');
end;

end.

