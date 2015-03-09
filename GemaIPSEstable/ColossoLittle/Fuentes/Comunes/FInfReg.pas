unit FInfReg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DB, ADODB, Buttons, ExtCtrls;

type
  TFormInfReg = class(TForm)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Memo1: TMemo;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInfReg: TFormInfReg;

implementation

{$R *.dfm}

procedure TFormInfReg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure TFormInfReg.Edit1Change(Sender: TObject);
Var i,j:Integer;
    s:string;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add(Edit1.Text);
  ADOQuery1.Open;
  ADOQuery1.First;
  For i:=0 TO ADOquery1.FieldCount-1 Do
  Begin
    s:='';
    For j:=length(Uppercase(ADOQuery1.FieldDefList.FieldDefs[i].Name)) TO 20 Do s:=s+' ';
    Memo1.Lines.Add(Uppercase(ADOQuery1.FieldDefList.FieldDefs[i].Name)+': '+s+ADOQuery1.Fields.Fields[i].AsString);
  End;
end;

procedure TFormInfReg.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

end.
