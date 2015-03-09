unit Mensaje;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFormMensaje = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Memo1: TMemo;
    BitBtn3: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMensaje: TFormMensaje;

implementation

{$R *.dfm}

procedure TFormMensaje.BitBtn3Click(Sender: TObject);
begin
  Showmessage('Su solicitud fue radicada y le será respondida en los proximos minutos.');
  Close;
end;

end.
