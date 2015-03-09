unit FDigitaliza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, StdCtrls, ExtCtrls, ComCtrls, ToolWin,
  ADODB, DB;

type
  TFormDigitaliza = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    DataSource4: TDataSource;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    Panel1: TPanel;
    Label6: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure DataSource4DataChange(Sender: TObject; Field: TField);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDigitaliza: TFormDigitaliza;

implementation

{$R *.dfm}

procedure TFormDigitaliza.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure TFormDigitaliza.FormActivate(Sender: TObject);
begin
  ADOTable1.open;
  ADOQuery1.Open;
end;

procedure TFormDigitaliza.DataSource4DataChange(Sender: TObject;
  Field: TField);
begin
  ADOQuery1.Close;
  adoquery1.Parameters.ParamValues['doc'] := DBLookupComboBox5.KeyValue;
  ADOQuery1.Open;
end;

procedure TFormDigitaliza.DBGrid1CellClick(Column: TColumn);
var xx:string;
begin
  xx:='digitalizacion\mspview\MSPVIEW.EXE '+dbgrid1.DataSource.DataSet.FieldValues['imagen'];
  WinExec(PAnsiChar(xx),SW_SHOWMAXIMIZED);
end;

procedure TFormDigitaliza.Button2Click(Sender: TObject);
begin
  opendialog1.Title:='Buscar Imagen';
  opendialog1.DefaultExt:='*.tif';
  opendialog1.InitialDir:='digitalizacion\';
  opendialog1.Execute;
  if opendialog1.FileName <> '' then
  BEGIN
     ADOQuery2.Insert;
     ADOQuery2.FieldValues['Imagen']:=opendialog1.FileName;
     ADOQuery2.FieldValues['Tipo_Comprobante']:=DBLookupComboBox5.KeyValue;
     ADOQuery2.FieldValues['Numero_Comprobante']:=DBLookupComboBox1.KeyValue;
     ADOQuery2.Post;
  END;
end;

procedure TFormDigitaliza.DBLookupComboBox1Exit(Sender: TObject);
begin
  ADOQuery2.Close;
  ADOQuery2.Parameters.ParamValues['TPCOMP']:=DBLookupComboBox5.KeyValue;
  ADOQuery2.Parameters.ParamValues['NRCOMP']:=DBLookupComboBox1.KeyValue;
  ADOQuery2.Open;
end;

end.
