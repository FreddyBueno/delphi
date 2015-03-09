unit FCitasDia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, ComCtrls, StdCtrls, ExtCtrls,DateUtils;

type
  TCitasDia = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    DBGrid1: TDBGrid;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    RadioGroup1: TRadioGroup;
    procedure FormActivate(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CitasDia: TCitasDia;

implementation

{$R *.dfm}

procedure TCitasDia.FormActivate(Sender: TObject);
begin
  DateTimePicker1.DateTime:=now;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  IF RadioGroup1.ItemIndex = 0 Then ADOQuery1.SQL.Add('SELECT * FROM CICitas WHERE Day(Fecha) = '+inttostr(dayof(DateTimePicker1.date)))
  ELSE IF RadioGroup1.ItemIndex = 1 Then ADOQuery1.SQL.Add('SELECT * FROM CICitas WHERE month(Fecha) = '+inttostr(monthof(DateTimePicker1.date)))
  ELSE IF RadioGroup1.ItemIndex = 2 Then ADOQuery1.SQL.Add('SELECT * FROM CICitas WHERE year(Fecha) = '+inttostr(yearof(DateTimePicker1.date)));
  ADOQuery1.Open;
end;

procedure TCitasDia.DateTimePicker1Change(Sender: TObject);
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  IF RadioGroup1.ItemIndex = 0 Then ADOQuery1.SQL.Add('SELECT * FROM CICitas WHERE day(Fecha) = '+inttostr(dayof(DateTimePicker1.date)))
  ELSE IF RadioGroup1.ItemIndex = 1 Then ADOQuery1.SQL.Add('SELECT * FROM CICitas WHERE month(Fecha) = '+inttostr(monthof(DateTimePicker1.date)))
  ELSE IF RadioGroup1.ItemIndex = 2 Then ADOQuery1.SQL.Add('SELECT * FROM CICitas WHERE year(Fecha) = '+inttostr(yearof(DateTimePicker1.date)));
  ADOQuery1.Open;
end;

procedure TCitasDia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action :=  caFree;
end;

procedure TCitasDia.RadioGroup1Click(Sender: TObject);
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  IF RadioGroup1.ItemIndex = 0 Then ADOQuery1.SQL.Add('SELECT * FROM CICitas WHERE Day(Fecha) = '+inttostr(dayof(DateTimePicker1.date)))
  ELSE IF RadioGroup1.ItemIndex = 1 Then ADOQuery1.SQL.Add('SELECT * FROM CICitas WHERE month(Fecha) = '+inttostr(monthof(DateTimePicker1.date)))
  ELSE IF RadioGroup1.ItemIndex = 2 Then ADOQuery1.SQL.Add('SELECT * FROM CICitas WHERE year(Fecha) = '+inttostr(yearof(DateTimePicker1.date)));
  ADOQuery1.Open;
end;

end.
