unit UParametrosAdmi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, StdCtrls, DBCtrls, ADODB;

type
  TParametrosAdm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    TrackBar1: TTrackBar;
    ADOTable1: TADOTable;
    DBMemo1: TDBMemo;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBComboBox1: TDBComboBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ADOTable2: TADOTable;
    Label8: TLabel;
    DBComboBox2: TDBComboBox;
    Label9: TLabel;
    DBComboBox3: TDBComboBox;
    Label10: TLabel;
    DBComboBox4: TDBComboBox;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TrackBar1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ParametrosAdm: TParametrosAdm;

implementation

{$R *.dfm}

procedure TParametrosAdm.FormActivate(Sender: TObject);
begin
  ADOTable1.Open;
  ADOTable1.First;
  ADOTable1.Edit;
  ADOTable2.Open;
  ADOTable2.First;
  ADOTable2.Edit;
  TrackBar1.Position:=ADOTable2.FieldValues['Intervalo'];
end;

procedure TParametrosAdm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ADOTable2.FieldValues['Intervalo']:=TrackBar1.Position;
  ADOTable1.Post;
  ADOTable2.Post;
  Action :=  caFree;
end;

procedure TParametrosAdm.TrackBar1Exit(Sender: TObject);
begin
  ADOTable2.FieldValues['Intervalo']:=TrackBar1.Position;
end;

end.
