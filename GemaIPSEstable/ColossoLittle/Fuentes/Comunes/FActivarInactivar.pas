unit FActivarInactivar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, DBCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids;

type
  TFrmAI = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    GroupBox2: TGroupBox;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    DataSource4: TDataSource;
    ADOQuery4: TADOQuery;
    SpeedButton5: TSpeedButton;
    ADOQtmp: TADOQuery;
    SpeedButton6: TSpeedButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    GroupBox4: TGroupBox;
    Edit8: TEdit;
    Edit9: TEdit;
    GroupBox3: TGroupBox;
    Edit2: TEdit;
    Edit3: TEdit;
    Label2: TLabel;
    Edit1: TEdit;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Panel4: TPanel;
    Panel5: TPanel;
    CB1: TComboBox;
    CB2: TComboBox;
    Label1: TLabel;
    Edit4: TEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure CB1Change(Sender: TObject);
    procedure CB2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAI: TFrmAI;

implementation

{$R *.dfm}

procedure TFrmAI.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TFrmAI.SpeedButton1Click(Sender: TObject);
begin
  ADOQuery2.Edit;
  ADOQuery2.FieldValues['Estado']:=CB2.Text;
  ADOQuery2.Post;
  ADOQuery2.Close;
  ADOquery2.Open;
  ADOQuery4.Close;
  ADOquery4.Open;
end;

procedure TFrmAI.SpeedButton2Click(Sender: TObject);
begin
  ADOQuery2.First;
  WHILE NOT ADOQuery2.Eof DO
  Begin
    ADOQuery2.Edit;
    ADOQuery2.FieldValues['Estado']:=CB2.Text;
    ADOQuery2.Post;

    ADOQuery2.Next;
  End;
  ADOQuery2.Close;
  ADOquery2.Open;
  ADOQuery4.Close;
  ADOquery4.Open;
end;

procedure TFrmAI.SpeedButton3Click(Sender: TObject);
begin
  ADOQuery4.First;
  WHILE NOT ADOQuery4.Eof DO
  Begin
    ADOQuery4.Edit;
    ADOQuery4.FieldValues['Estado']:=CB1.Text;
    ADOQuery4.Post;

    ADOQuery4.Next;
  End;
  ADOQuery2.Close;
  ADOquery2.Open;
  ADOQuery4.Close;
  ADOquery4.Open;
end;

procedure TFrmAI.SpeedButton4Click(Sender: TObject);
begin
  ADOQuery4.Edit;
  ADOQuery4.FieldValues['Estado']:=CB1.Text;
  ADOQuery4.Post;
  ADOQuery2.Close;
  ADOquery2.Open;
  ADOQuery4.Close;
  ADOquery4.Open;
end;
procedure TFrmAI.SpeedButton5Click(Sender: TObject);
begin
  ADOQuery4.First;
  WHILE NOT ADOQuery4.Eof DO
  Begin
    ADOQTmp.Close;
    ADOQtmp.SQL.Clear;
    ADOQtmp.SQL.Add('SELECT * FROM CONTDetComp WHERE cuenta ='+chr(39)+ADOQuery4.FieldValues['Cuenta']+chr(39));
    ADOQtmp.Open;
    IF (ADOQtmp.RecordCount = 0) then
    Begin
      ADOQuery4.Edit;
      ADOQuery4.FieldValues['Estado']:='';
      ADOQuery4.Post;
    End;

    ADOQuery4.Next;
  End;
  ADOQuery2.Close;
  ADOquery2.Open;
  ADOQuery4.Close;
  ADOquery4.Open;
end;

procedure TFrmAI.SpeedButton6Click(Sender: TObject);
begin
  ADOQtmp.Close;
  ADOQtmp.SQL.Clear;
  ADOQtmp.SQL.Add('DECLARE @cta char(50), @tot int ');
  ADOQtmp.SQL.Add('DECLARE vendor_cursor CURSOR FOR SELECT Cuenta FROM CONTCuenta ORDER BY Cuenta ');
  ADOQtmp.SQL.Add('OPEN vendor_cursor ');
  ADOQtmp.SQL.Add('FETCH NEXT FROM vendor_cursor INTO @cta  ');
  ADOQtmp.SQL.Add('WHILE @@FETCH_STATUS = 0 ');
  ADOQtmp.SQL.Add('BEGIN ');
  ADOQtmp.SQL.Add('  DECLARE product_cursor CURSOR FOR SELECT count(*) FROM CONTCuenta WHERE cuenta like  rtrim(@cta) + '+ chr(39) +'%'+ chr(39));
  ADOQtmp.SQL.Add('  OPEN product_cursor ');
  ADOQtmp.SQL.Add('  FETCH NEXT FROM product_cursor INTO @tot ');
  ADOQtmp.SQL.Add('  WHILE @@FETCH_STATUS = 0  ');
  ADOQtmp.SQL.Add('  BEGIN ');
  ADOQtmp.SQL.Add('        IF @tot = 1  ');
  ADOQtmp.SQL.Add('            BEGIN  ');
  ADOQtmp.SQL.Add('              UPDATE CONTCuenta ');
  ADOQtmp.SQL.Add('              SET Estado = '+ chr(39) +'A'+ chr(39));
  ADOQtmp.SQL.Add('              WHERE Cuenta = @cta  ');
  ADOQtmp.SQL.Add('            END ');
  ADOQtmp.SQL.Add('            ELSE  ');
  ADOQtmp.SQL.Add('            BEGIN ');
  ADOQtmp.SQL.Add('              UPDATE CONTCuenta ');
  ADOQtmp.SQL.Add('              SET Estado = NULL ');
  ADOQtmp.SQL.Add('              WHERE Cuenta = @cta ');
  ADOQtmp.SQL.Add('            END');
  ADOQtmp.SQL.Add('    FETCH NEXT FROM product_cursor INTO @tot ');
  ADOQtmp.SQL.Add('  END ');
  ADOQtmp.SQL.Add('  CLOSE product_cursor ');
  ADOQtmp.SQL.Add('  DEALLOCATE product_cursor ');
  ADOQtmp.SQL.Add('  FETCH NEXT FROM vendor_cursor INTO @cta ');
  ADOQtmp.SQL.Add('END ');
  ADOQtmp.SQL.Add('CLOSE vendor_cursor ');
  ADOQtmp.SQL.Add('DEALLOCATE vendor_cursor ');
  ADOQtmp.ExecSQL;
end;

procedure TFrmAI.Edit1Change(Sender: TObject);
begin
  If Edit1.Text <> '' then
  Begin
    if Edit4.Text = 'Estado' then
    Begin
      ADOQuery4.Close;
      ADOQuery4.SQL.Clear;
      ADOQuery4.SQL.Add('UPDATE '+Edit1.Text+' SET Estado = '+chr(39)+'A'+chr(39)+' WHERE Estado is NULL' );
      ADOQuery4.ExecSQL;
    End;

    ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('SELECT * FROM '+Edit1.Text+' WHERE '+Edit4.Text+' = '+chr(39)+cb1.Text+chr(39));
    ADOQuery2.Open;

    ADOQuery4.Close;
    ADOQuery4.SQL.Clear;
    ADOQuery4.SQL.Add('SELECT * FROM '+Edit1.Text+' WHERE '+Edit4.Text+' = '+chr(39)+cb2.Text+chr(39));
    ADOQuery4.Open;
    CB1.ItemIndex := 0;
    CB2.ItemIndex := 0;
    CB1Change(Nil);
    CB2Change(Nil);
  End;
end;

procedure TFrmAI.DBGrid1DblClick(Sender: TObject);
begin
  Edit9.Text := DBGrid1.SelectedField.AsString;
  SpeedButton7Click(Nil);
end;

procedure TFrmAI.DBGrid2DblClick(Sender: TObject);
begin
  Edit3.Text := DBGrid2.SelectedField.AsString;
  SpeedButton8Click(Nil);
end;

procedure TFrmAI.SpeedButton7Click(Sender: TObject);
begin
  If Edit9.Text <> '' Then
  Begin
    IF ADOQuery2.Filtered Then ADOQuery2.Filtered := False
    Else Begin
      ADOQuery2.Filtered := False;
      ADOQuery2.Filter := Edit8.Text+' LIKE '+chr(39)+'%'+Edit9.Text+'%'+chr(39);
      ADOQuery2.Filtered := True;
    End;
  End;
end;

procedure TFrmAI.SpeedButton8Click(Sender: TObject);
begin
  If Edit3.Text <> '' Then
  Begin
    IF ADOQuery4.Filtered Then ADOQuery4.Filtered := False
    Else Begin
      ADOQuery4.Filtered := False;
      ADOQuery4.Filter := Edit2.Text+' LIKE '+chr(39)+'%'+Edit3.Text+'%'+chr(39);
      ADOQuery4.Filtered := True;
    End;
  End;
end;

procedure TFrmAI.CB1Change(Sender: TObject);
begin
  If Edit1.Text <> '' then
  Begin
    ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('SELECT * FROM '+Edit1.Text+' WHERE '+Edit4.Text+' = '+chr(39)+cb1.Text+chr(39));
    ADOQuery2.Open;

    ADOQuery4.Close;
    ADOQuery4.SQL.Clear;
    ADOQuery4.SQL.Add('SELECT * FROM '+Edit1.Text+' WHERE '+Edit4.Text+' = '+chr(39)+cb2.Text+chr(39));
    ADOQuery4.Open;
  End;
end;

procedure TFrmAI.CB2Change(Sender: TObject);
begin
  If Edit1.Text <> '' then
  Begin
    ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('SELECT * FROM '+Edit1.Text+' WHERE '+Edit4.Text+' = '+chr(39)+cb1.Text+chr(39));
    ADOQuery2.Open;

    ADOQuery4.Close;
    ADOQuery4.SQL.Clear;
    ADOQuery4.SQL.Add('SELECT * FROM '+Edit1.Text+' WHERE '+Edit4.Text+' = '+chr(39)+cb2.Text+chr(39));
    ADOQuery4.Open;
  End;
end;

procedure TFrmAI.DBGrid1CellClick(Column: TColumn);
begin
  Edit8.Text := DBGrid1.SelectedField.FieldName;
end;

procedure TFrmAI.DBGrid2CellClick(Column: TColumn);
begin
  Edit2.Text := DBGrid2.SelectedField.FieldName;
end;

end.
