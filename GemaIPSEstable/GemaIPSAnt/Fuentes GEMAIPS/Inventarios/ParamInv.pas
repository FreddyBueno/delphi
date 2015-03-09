unit ParamInv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ComCtrls, ExtCtrls, DB, ADODB;

type
  TParametrosInv = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label6: TLabel;
    DBComboBox3: TDBComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    Label7: TLabel;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ADOTable2: TADOTable;
    Label1: TLabel;
    DBComboBox1: TDBComboBox;
    Label2: TLabel;
    DBComboBox2: TDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ParametrosInv: TParametrosInv;

implementation

{$R *.dfm}

procedure TParametrosInv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ADOTable1.Post;
  Action :=  caFree;
end;

procedure TParametrosInv.FormCreate(Sender: TObject);
begin
  ADOTable1.Open;
  ADOTable2.Open;
  IF ADOTable1.RecordCount = 0 Then ADOTable1.Append
  Else ADOTable1.Edit;
end;

end.
