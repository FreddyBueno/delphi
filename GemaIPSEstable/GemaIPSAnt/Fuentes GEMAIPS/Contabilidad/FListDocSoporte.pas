unit FListDocSoporte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids;

type
  TFListDocSop = class(TForm)
    DBGrid1: TDBGrid;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListDocSop: TFListDocSop;

implementation

uses ConsultaComp;

{$R *.dfm}

procedure TFListDocSop.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TFListDocSop.FormDeactivate(Sender: TObject);
begin
  FListDocSop.Close;
end;

procedure TFListDocSop.DBGrid1DblClick(Sender: TObject);
begin
  FormCapturaComp.Edit6.text := ADOQuery1.FieldValues['DocSoporte'];
  Close;
end;

end.
