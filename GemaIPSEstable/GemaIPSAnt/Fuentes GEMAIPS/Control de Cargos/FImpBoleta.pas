unit FImpBoleta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, DBCtrls, ExtCtrls, frxClass, frxDBSet,
  frxPreview, Vcl.Grids, Vcl.DBGrids, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxLayoutContainer, dxLayoutControl,
  dxLayoutControlAdapters;

type
  TImpBoleta = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Button1: TButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    ADOQuery2: TADOQuery;
    ADOTable1: TADOTable;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImpBoleta: TImpBoleta;

implementation

uses  MAIN, UDataModule1;

{$R *.dfm}

procedure TImpBoleta.Button1Click(Sender: TObject);
begin
  ADOQuery2.Close;
  ADOQuery2.Parameters.ParamValues['nofact']:= DBLookupCombobox1.KeyValue;
  ADOQuery2.Open;
  ADOTable1.Open;

  frxReport1.ShowReport;
end;

procedure TImpBoleta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Action :=  caFree;
end;

procedure TImpBoleta.FormActivate(Sender: TObject);
begin
  adoquery1.Open;
end;

end.

