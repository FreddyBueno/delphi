unit fContabilidad6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, DB, DBCtrls, TeEngine, Series, TeeProcs, Chart, DbChart,
  ExtCtrls, StdCtrls, TeeFunci;

type
  TForm6 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Panel4: TPanel;
    DBChart1: TDBChart;
    DBChart2: TDBChart;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Label1: TLabel;
    ADOQuery2: TADOQuery;
    Series1: TBarSeries;
    Series2: TBarSeries;
    DBLookupComboBox1: TDBLookupComboBox;
    ADOQuery3: TADOQuery;
    Series3: TBarSeries;
    TeeFunction1: TAddTeeFunction;
    Series4: TBarSeries;
    Series5: TBarSeries;
    TeeFunction2: TAddTeeFunction;
    TeeFunction3: TSubtractTeeFunction;
    procedure FormActivate(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.FormActivate(Sender: TObject);
begin
  adoquery1.Open;
  adoquery3.Open;
end;

procedure TForm6.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  adoquery2.close;
  adoquery2.Parameters.ParamValues['cuenta']:= DBLookupComboBox1.KeyValue;
  adoquery2.Open;
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=  caFree;
end;

end.
