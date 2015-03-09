unit fWebCam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Webcam, ExtCtrls, Buttons, StdCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus,
  cxButtons, cxImage, Vcl.ImgList;

type
  TfrmWebCam = class(TForm)
    pnlFoto: TPanel;
    pnlBottom: TPanel;
    btnTomarFoto: TcxButton;
    btnEncender: TcxButton;
    imgListDlg32: TcxImageList;
    btnCancelar: TcxButton;
    imgChica: TcxImage;
    imgGrande: TcxImage;
    procedure FormCreate(Sender: TObject);
    procedure btnEncenderClick(Sender: TObject);
    procedure btnTomarFotoClick(Sender: TObject);
    procedure imgGrandeMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure imgChicaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmWebCam: TfrmWebCam;
  camera: TWebcam;
const
  str_Connect = 'Encender la camara';
  str_Disconn = 'Apagar la camara';

implementation

{$R *.dfm}



procedure TfrmWebCam.btnCancelarClick(Sender: TObject);
begin
  try
   close;
  finally
   release;
  end; //finally

end;

procedure TfrmWebCam.btnEncenderClick(Sender: TObject);
begin
  if (Sender as TCXButton).Caption = str_Connect then  begin
    camera.Disconnect;
    camera.Connect;
    camera.Preview(true);
    Camera.PreviewRate(4);
    btnTomarFoto.Visible:=true;
    (Sender as TCXButton).Caption:=str_Disconn;
  end
  else begin
    btnTomarFoto.Visible:=false;
    camera.Disconnect;
    (Sender as TCXButton).Caption:=str_Connect;
  end;
end;

procedure TfrmWebCam.btnTomarFotoClick(Sender: TObject);
var
  PanelDC: HDC;
begin
  if not Assigned(imgGrande.Picture.Bitmap) then
    imgGrande.Picture.Bitmap := TBitmap.Create
  else
  begin
    imgGrande.Picture.Bitmap.Free;
    imgGrande.picture.Bitmap := TBitmap.Create;
  end;
  imgGrande.Picture.Bitmap.Height := pnlFoto.Height;
  imgGrande.Picture.Bitmap.Width  := pnlFoto.Width;
  imgGrande.Properties.Stretch := True;
  PanelDC := GetDC(pnlFoto.Handle);
  try
    BitBlt(imgGrande.Picture.Bitmap.Canvas.Handle,
      0,0,pnlFoto.Width, pnlFoto.Height, PanelDC, 0,0, SRCCOPY);
  finally
    ReleaseDC(Handle, PanelDC);
  end;
  imgChica.Canvas.Brush.Style  := bsSolid;
  imgChica.Canvas.Pen.Mode := pmcopy;
  imgChica.Canvas.Rectangle(1,1,imgChica.Width-1,imgChica.Height-1);
  camera.Disconnect;
  pnlFoto.Visible := false;
end;

procedure TfrmWebCam.FormActivate(Sender: TObject);
begin
  frmWebCam.Width := 640;
  frmWebCam.Height := 600;
// pnlFoto.Width := 640;
// pnlFoto.Height := 480;
end;

procedure TfrmWebCam.FormCreate(Sender: TObject);
begin
  camera := TWebcam.Create('WebCaptured', pnlFoto.Handle, 0, 0, 1000, 1000);
  camera.Disconnect;
  btnEncender.Caption:=str_Connect;
  btnEncenderClick(nil);
end;

procedure TfrmWebCam.imgGrandeMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  imgChica.Top := y;  //+trunc(imgChica.Top/2);
  imgChica.Left := x; //+trunc(imgChica.Left/2);
end;

procedure TfrmWebCam.imgChicaClick(Sender: TObject);
var
  DstRect, SrcRect: TRect;
begin
  imgChica.Canvas.CopyMode := cmSrcCopy;
  DstRect := Rect(0, 0, imgChica.Width, imgChica.Height);
  SrcRect := Rect(imgChica.Left, imgChica.Top, imgChica.Width+imgChica.Left, imgChica.Height+imgChica.Top);
  imgChica.Canvas.Canvas.CopyRect(DstRect, imgGrande.Canvas.Canvas, SrcRect);

  Close;
end;

end.
