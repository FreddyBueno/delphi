unit WebCamForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Webcam, ExtCtrls, Buttons, StdCtrls;

type
  TWebCamF = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Image2: TImage;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  WebCamF: TWebCamF;
  camera: TWebcam;
const
  str_Connect = 'Encender la camara';
  str_Disconn = 'Apagar la camara';

implementation

{$R *.dfm}

procedure TWebCamF.Button1Click(Sender: TObject);
begin
  if (Sender as TButton).Caption = str_Connect then  begin
    camera.Disconnect;
    camera.Connect;
    camera.Preview(true);
    Camera.PreviewRate(4);
    (Sender as TButton).Caption:=str_Disconn;
  end
  else begin
    camera.Disconnect;
    (Sender as TButton).Caption:=str_Connect;
  end;
end;

procedure TWebCamF.Button2Click(Sender: TObject);
var
  PanelDC: HDC;
begin
  if not Assigned(Image1.Picture.Bitmap) then
    Image1.Picture.Bitmap := TBitmap.Create
  else
  begin
    Image1.Picture.Bitmap.Free;
    Image1.picture.Bitmap := TBitmap.Create;
  end;
  Image1.Picture.Bitmap.Height := Panel1.Height;
  Image1.Picture.Bitmap.Width  := Panel1.Width;
  Image1.Stretch := True;
  PanelDC := GetDC(Panel1.Handle);
  try
    BitBlt(Image1.Picture.Bitmap.Canvas.Handle,
      0,0,Panel1.Width, Panel1.Height, PanelDC, 0,0, SRCCOPY);
  finally
    ReleaseDC(Handle, PanelDC);
  end;
  Image2.Canvas.Brush.Style  := bsSolid;
  Image2.Canvas.Pen.Mode := pmcopy;
  Image2.Canvas.Rectangle(1,1,Image2.Width-1,Image2.Height-1);
  camera.Disconnect;
  Panel1.Visible := false;
end;

procedure TWebCamF.FormActivate(Sender: TObject);
begin
  WebCamF.Width := 640;
  WebCamF.Height := 600;
  Panel1.Width := 640;
  Panel1.Height := 480;
end;

procedure TWebCamF.FormCreate(Sender: TObject);
begin
  camera := TWebcam.Create('WebCaptured', Panel1.Handle, 0, 0, 1000, 1000);
  camera.Disconnect;
  Button1.Caption:=str_Connect;
  Button1Click(Nil);
end;

procedure TWebCamF.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Image2.Top := y;  //+trunc(Image2.Top/2);
  Image2.Left := x; //+trunc(Image2.Left/2);
end;

procedure TWebCamF.Image2Click(Sender: TObject);
var
  DstRect, SrcRect: TRect;
begin
  Image2.Canvas.CopyMode := cmSrcCopy;
  DstRect := Rect(0, 0, Image2.Width, Image2.Height);
  SrcRect := Rect(Image2.Left, Image2.Top, Image2.Width+Image2.Left, Image2.Height+Image2.Top);
  Image2.Canvas.CopyRect(DstRect, Image1.Canvas, SrcRect);

  Close;
end;

end.
