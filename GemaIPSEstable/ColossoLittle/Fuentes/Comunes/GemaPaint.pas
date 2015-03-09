unit GemaPaint;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvFullColorSpaces, JvExControls,
  JvColorTrackbar, JvFullColorCtrls, JvGammaPanel, Vcl.ExtCtrls, JvDrawImage,
  JvgImage, JvPaintFX, JvSimLogic, JvExExtCtrls, JvShape, Vcl.Buttons,ToolWin,ComCtrls,
  Vcl.ExtDlgs, Vcl.StdCtrls, JvExStdCtrls, JvShapedButton, JvImageRotate,
  JvImageTransform, JvImageSquare, JvSpecialImage, DelphiTwain,ClipBrd;

type
  TFrmPaint = class(TForm)
    Panel2: TPanel;
    JvGammaPanel1: TJvGammaPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    ColorDialog1: TColorDialog;
    OpenPictureDialog2: TOpenPictureDialog;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SavePictureDialog1: TSavePictureDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    TabSheet3: TTabSheet;
    JvSpecialImage1: TJvSpecialImage;
    ComboBox1: TComboBox;
    JvImageSquare1: TJvImageSquare;
    TabSheet4: TTabSheet;
    JvImageTransform1: TJvImageTransform;
    TabSheet5: TTabSheet;
    JvImageRotate1: TJvImageRotate;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Twain: TDelphiTwain;
    ScrollBox1: TScrollBox;
    ImageHolder: TImage;
    SpeedButton17: TSpeedButton;
    procedure ImageHolderMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImageHolderMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImageHolderMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Triangulo(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure JvGammaPanel1ChangeColor(Sender: TObject; Foreground,
      Background: TColor);
    procedure TabSheet2Enter(Sender: TObject);
    procedure TabSheet3Enter(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
  private
    { Private declarations }
    Procedure Capture(x1,y1,x,y: integer);
  public
    { Public declarations }
  end;

var
  FrmPaint     : TFrmPaint;
  toolInUse    : integer;
  holdingArea  : Tbitmap;
  x1,y1,x2,y2  : integer;
  drawingNow   : Boolean;
  txgraf       : String;
  r1,r2        : Trect;
  holdingSomething  : Boolean;

implementation

{$R *.dfm}

uses WebCamForm,Libreria_Prateinco;

Procedure TFrmPaint.Capture(x1,y1,x,y: integer);
begin
  x2 := x; y2 := y; {remember this spot}
  {allocate memory for the holding area and set generous width and height}
  holdingArea := Tbitmap.create;
  holdingArea.width := abs(x2-x1) + 2;
  holdingArea.height := abs(y2-y1) + 2;

  With R1 do {R1 is a rectangle in Image1}
   begin
    {find left & right sides of Image rectangle to capture}
    if x1 < x2 then begin left := x1; right := x2+1 end
               else begin left := x2; right := x1+1 end;
    {find top & bottom of rectangle to capture}
    if y1 < y2 then begin top := y1-1; bottom := y2+1 end
             else begin top := y2-1; bottom := y1+1 end;
   end;
  With R2 do {R2 is a rectangle in the holdingArea}
   begin
     left := 0; top := 0; right := R1.right-R1.left; bottom := R1.bottom-R1.top
   end;
  {copy the area from Image1 to the holdingArea}
  With holdingArea.canvas do copyrect(R2,imageholder.canvas,R1);
  holdingSomething := true;
end;

procedure TFrmPaint.ComboBox1Change(Sender: TObject);
begin
if ComboBox1.Text = 'Espejo' then JvSpecialImage1.Mirrored := true
Else if ComboBox1.Text = 'Invertido' then JvSpecialImage1.Inverted := true
Else if ComboBox1.Text = 'Flipped' then JvSpecialImage1.Flipped := true
Else if ComboBox1.Text = 'FadeIn' then JvSpecialImage1.FadeIn
Else if ComboBox1.Text = 'FadeOut' then JvSpecialImage1.FadeOut;

end;

procedure TFrmPaint.FormCreate(Sender: TObject);
begin
  ImageHolder.Picture.Bitmap.Width  := ImageHolder.Width;
  ImageHolder.Picture.Bitmap.Height := ImageHolder.Height;

  PageControl1.ActivePageIndex:=0;
end;

procedure TFrmPaint.ImageHolderMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ImageHolder.canvas.moveto(x,y);
  x1 := x; y1 := y;
  drawingNow := true;
  ImageHolder.canvas.brush.style := bsClear;
  ImageHolder.Canvas.Pen.Style := pssolid;
  ImageHolder.Canvas.Pen.Width := 3;
end;

procedure TFrmPaint.ImageHolderMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if (toolInUse=2)  and drawingNow then
    ImageHolder.canvas.lineto(x,y);
end;

procedure TFrmPaint.ImageHolderMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  x2 := x; y2 := y;
  drawingNow := false;

  if toolInUse = 1 then
  Begin
    ImageHolder.canvas.lineto(x2,y2);
  End;
  if toolInUse = 2 then
  Begin

  End;
  if toolInUse = 3 then
  Begin
      ImageHolder.canvas.rectangle(x1,y1,x2,y2);
  End;
  if toolInUse = 4 then
  Begin
      ImageHolder.canvas.Ellipse(x1,y1,x2,y2);
  End;
  if toolInUse = 5 then
  Begin
    ImageHolder.Canvas.Font.Size := 10;
    ImageHolder.canvas.TextOut(x2,y2,txgraf);
  End;
  if toolInUse = 6 then
  Begin
    ImageHolder.canvas.lineto(x2,y2);
    ImageHolder.canvas.lineto(x1-(x2-x1),y2);
    ImageHolder.canvas.lineto(x1,y1);
  End;
end;

procedure TFrmPaint.JvGammaPanel1ChangeColor(Sender: TObject; Foreground,
  Background: TColor);
begin
  imageholder.Canvas.pen.color   := Foreground;
  imageholder.Canvas.Brush.color := Background;
end;

procedure TFrmPaint.SpeedButton10Click(Sender: TObject);
begin
  ToolinUse := 4;
end;

procedure TFrmPaint.SpeedButton11Click(Sender: TObject);
begin
  ToolinUse := 6;
end;

procedure TFrmPaint.SpeedButton12Click(Sender: TObject);
begin
  colordialog1.execute;
  imageholder.Canvas.pen.color := colordialog1.color;
end;

procedure TFrmPaint.SpeedButton13Click(Sender: TObject);
var
  s : string;
  Icon: TIcon;
begin
 ImageHolder.Picture.RegisterClipboardFormat(cf_BitMap,TIcon);
 ImageHolder.Picture.Bitmap.LoadFromClipBoardFormat(cf_BitMap,ClipBoard.GetAsHandle(cf_Bitmap),0);
end;

procedure TFrmPaint.SpeedButton14Click(Sender: TObject);
begin
  Degrades(ImageHolder,JvGammaPanel1.ForegroundColor,0,0,0,1,1,0,bsClear);
end;

procedure TFrmPaint.SpeedButton16Click(Sender: TObject);
var
  MyFormat : Word;
  AData : THandle;
  APalette : HPALETTE;
begin
  ImageHolder.Picture.Bitmap.SaveToClipBoardFormat(
      MyFormat,
      AData,
      APalette);
  ClipBoard.SetAsHandle(MyFormat,AData);
end;

procedure TFrmPaint.SpeedButton17Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmPaint.SpeedButton1Click(Sender: TObject);
begin
  OpenPictureDialog2.DefaultExt:='bmp';
  if OpenPictureDialog2.execute then
  begin
    ImageHolder.Picture.LoadFromFile(OpenpictureDialog2.filename);
  end;
end;

procedure TFrmPaint.SpeedButton3Click(Sender: TObject);
var
  SelectedSource: Integer;
begin
  if Twain.LoadLibrary() then
  begin
    SelectedSource := Twain.SelectSource;
    if SelectedSource <> -1 then
    begin
      Twain.Source[SelectedSource].Loaded := TRUE;
      Twain.Source[SelectedSource].TransferMode := ttmMemory;
      Twain.Source[SelectedSource].Enabled := TRUE;
    end
  end
end;

procedure TFrmPaint.TabSheet2Enter(Sender: TObject);
begin
  JvSpecialImage1.Picture.Bitmap.Assign(ImageHolder.Picture.Bitmap);
end;

procedure TFrmPaint.TabSheet3Enter(Sender: TObject);
begin
  //JvImageSquare1. .Picture.Bitmap.Assign(ImageHolder.Picture.Bitmap);
end;

procedure TFrmPaint.Triangulo(Sender: TObject);
begin
  ToolinUse := 1;
end;

procedure TFrmPaint.SpeedButton5Click(Sender: TObject);
begin
  ToolinUse := 2;
end;

procedure TFrmPaint.SpeedButton6Click(Sender: TObject);
begin
  ToolinUse := 3;
end;

procedure TFrmPaint.SpeedButton7Click(Sender: TObject);
begin
  ToolinUse := 5;
  txgraf:= InputBox('Texto', 'Ingrese el Texto a Incluir.', '');
end;

procedure TFrmPaint.SpeedButton8Click(Sender: TObject);
var
  DstRect, SrcRect: TRect;
begin
  WebCamF := tWebCamF.create(application);
  try
    WebCamF.showmodal;

    ImageHolder.Picture.Bitmap.Assign(WebCamF.Image1.Picture.Bitmap);
    ImageHolder.Picture.Bitmap.Width  := ImageHolder.Width;
    ImageHolder.Picture.Bitmap.Height := ImageHolder.Height;
  except
    WebCamF.free;
  end;
end;

procedure TFrmPaint.SpeedButton9Click(Sender: TObject);
  Var x,y,incx,incy,margen,totx,toty:integer;
Begin
  margen                        := 30;
  totx                          := 18;
  toty                          := 76-29;
  ImageHolder.Width             := 600;
  ImageHolder.Height            := 600;
  ImageHolder.Canvas.Pen.Width  := 3;

  //Dibuja Eje x
  ImageHolder.canvas.Moveto(ImageHolder.Left+margen,ImageHolder.Width-margen);
  ImageHolder.canvas.Lineto(ImageHolder.Height-margen,ImageHolder.Width-margen);

  //Dibuja Eje y
  ImageHolder.canvas.Moveto(ImageHolder.Left+margen,ImageHolder.Width-margen);
  ImageHolder.canvas.Lineto(ImageHolder.Left+margen,ImageHolder.Top+margen);

  ImageHolder.Canvas.Pen.Width := 1;
  incx := integer((ImageHolder.Height-(margen*2)) div totx);
  For x:=1 to totx Do
  Begin
    //Dibuja Eje y
    ImageHolder.canvas.Moveto(ImageHolder.Left+margen+(x*incx),ImageHolder.Width-margen);
    ImageHolder.canvas.Lineto(ImageHolder.Left+margen+(x*incx),ImageHolder.Top+margen);

    ImageHolder.Canvas.TextOut((x*incx)+margen,ImageHolder.Height - integer(margen div 2),inttostr(x));
  End;

  incy := integer((ImageHolder.width -(margen*2)) div toty);
  For y:=1 To toty Do
  Begin
    //Dibuja Eje x
    ImageHolder.canvas.Moveto(ImageHolder.Left+margen,ImageHolder.Width-margen-(y*incy));
    ImageHolder.canvas.Lineto(ImageHolder.Height-margen,ImageHolder.Width-margen-(y*incy));

    ImageHolder.Canvas.TextOut(integer(margen div 2),(ImageHolder.Width - y*incy)-margen,inttostr(y+28));
  End;
end;

end.
