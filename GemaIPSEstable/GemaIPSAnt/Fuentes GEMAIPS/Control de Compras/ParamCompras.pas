unit ParamCompras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ComCtrls, ExtCtrls, DB, ADODB, Mask;

type
  TParametrosCompras = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label14: TLabel;
    DBComboBox2: TDBComboBox;
    Label12: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    DataSource2: TDataSource;
    ADOTable3: TADOTable;
    DataSource3: TDataSource;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    ADOQuery1: TADOQuery;
    Label2: TLabel;
    DBComboBox3: TDBComboBox;
    Label1: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Memo1: TMemo;
    DataSource4: TDataSource;
    ADOTable2: TADOTable;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSource5: TDataSource;
    ADOTable4: TADOTable;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ParametrosCompras: TParametrosCompras;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TParametrosCompras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=  caFree;
  ADOTable1.Post;
end;

procedure TParametrosCompras.FormActivate(Sender: TObject);
begin
  ADOQuery1.Open;
  ADOTable3.Open;
  ADOTable1.Open;
  ADOTable2.Open;
  ADOTable4.Open;
  ADOTable1.Edit;
end;

end.
