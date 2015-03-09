unit Factura13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ComCtrls, ExtCtrls, DB, ADODB;

type
  TForm13 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label6: TLabel;
    DBComboBox3: TDBComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    Label7: TLabel;
    Memo1: TMemo;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ADOTable2: TADOTable;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

{$R *.dfm}

procedure TForm13.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ADOTable1.Post;
  Action :=  caFree;
end;

procedure TForm13.FormCreate(Sender: TObject);
begin
  ADOTable1.Open;
  ADOTable2.Open;
  IF ADOTable1.RecordCount = 0 Then ADOTable1.Append
  Else ADOTable1.Edit;
end;

end.
