unit fcontabilidad2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, ExtCtrls;

type
  TFormConsultaCierres = class(TForm)
    Panel1: TPanel;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ADOQuery1: TADOQuery;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaCierres: TFormConsultaCierres;

implementation

{$R *.dfm}

procedure TFormConsultaCierres.FormActivate(Sender: TObject);
begin
  adoquery1.Open;
end;

procedure TFormConsultaCierres.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=  caFree;
end;

end.
