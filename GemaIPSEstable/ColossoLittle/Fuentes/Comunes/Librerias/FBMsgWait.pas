unit FBMsgWait;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TPrateincoMsgWait = class(TForm)
    Timer1: TTimer;
    Label1: TLabel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrateincoMsgWait: TPrateincoMsgWait;
  i:Integer;

implementation

{$R *.dfm}

procedure TPrateincoMsgWait.Timer1Timer(Sender: TObject);
begin
{  if LinkLabel1.UseVisualStyle Then LinkLabel1.UseVisualStyle := False
  Else LinkLabel1.UseVisualStyle := True;
  PrateincoMsgWait.Refresh;}
end;

end.
