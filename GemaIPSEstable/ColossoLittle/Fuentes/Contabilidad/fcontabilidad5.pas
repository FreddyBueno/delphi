unit fcontabilidad5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, ComCtrls, ExtCtrls, StdCtrls, DBCtrls,
  Buttons,shellapi;

type
  TFormConsultaSaldos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    DataSource2: TDataSource;
    DBText1: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    DBText2: TDBText;
    Label4: TLabel;
    DBText3: TDBText;
    ADOQuery2: TADOQuery;
    Label5: TLabel;
    ScrollBar1: TScrollBar;
    DataSource3: TDataSource;
    ADOQuery3: TADOQuery;
    Label6: TLabel;
    Label7: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    Label8: TLabel;
    Label9: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    DataSource6: TDataSource;
    ADOQuery6: TADOQuery;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Splitter1: TSplitter;
    Panel4: TPanel;
    DataSource4: TDataSource;
    ADOQuery4: TADOQuery;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ScrollBar1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaSaldos: TFormConsultaSaldos;

implementation

{$R *.dfm}

procedure TFormConsultaSaldos.FormActivate(Sender: TObject);
begin
  adoquery2.Open;
  adoquery1.Open;
end;

procedure TFormConsultaSaldos.DataSource2DataChange(Sender: TObject; Field: TField);
begin
  adoquery1.close;
  adoquery1.Parameters.ParamValues['Periodo']:= DBLookupComboBox1.KeyValue;
  adoquery1.Parameters.ParamValues['nv']:= ScrollBar1.Position;
  adoquery1.Open;

  adoquery4.close;
  adoquery4.Parameters.ParamValues['Periodo']:= DBLookupComboBox1.KeyValue;
  adoquery4.Parameters.ParamValues['nv']:= ScrollBar1.Position;
  adoquery4.Open;

  adoquery3.close;
  adoquery3.Parameters.ParamValues['Periodo']:= DBLookupComboBox1.KeyValue;
  adoquery3.Open;

  adoquery6.close;
  adoquery6.Parameters.ParamValues['Periodo']:= DBLookupComboBox1.KeyValue;
  adoquery6.Open;
end;

procedure TFormConsultaSaldos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action :=  caFree;
end;

procedure TFormConsultaSaldos.ScrollBar1Change(Sender: TObject);
begin
  adoquery1.close;
  adoquery1.Parameters.ParamValues['Periodo']:= DBLookupComboBox1.KeyValue;
  adoquery1.Parameters.ParamValues['nv']:= ScrollBar1.Position;
  adoquery1.Open;

  adoquery4.close;
  adoquery4.Parameters.ParamValues['Periodo']:= DBLookupComboBox1.KeyValue;
  adoquery4.Parameters.ParamValues['nv']:= ScrollBar1.Position;
  adoquery4.Open;
end;

end.
