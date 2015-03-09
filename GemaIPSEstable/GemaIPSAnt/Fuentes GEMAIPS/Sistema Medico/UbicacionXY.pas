unit UbicacionXY;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TUbixy = class(TForm)
    SB: TStatusBar;
    ScrollBox1: TScrollBox;
    procedure FormCreate(Sender: TObject);
    procedure imgMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormResize(Sender: TObject);
    procedure imgClick(Sender: TObject);
    procedure imgDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ubixy: TUbixy;

implementation

{$R *.dfm}

uses CreaFormatoD;

procedure TUbixy.FormCreate(Sender: TObject);
Var x,y:integer;
begin

end;

procedure TUbixy.FormResize(Sender: TObject);
begin
  FormCreate(Nil);
end;

procedure TUbixy.imgClick(Sender: TObject);
begin
  FCreacionFormatosD.Edit12.Text := SB.Panels[0].Text;
  FCreacionFormatosD.Edit13.Text := SB.Panels[1].Text;
end;

procedure TUbixy.imgDblClick(Sender: TObject);
begin
  Close;
end;

procedure TUbixy.imgMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  SB.Panels[0].Text := inttostr(x);
  SB.Panels[1].Text := inttostr(y);
end;

end.
