unit GrProg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.ExtCtrls, Data.DB, Data.Win.ADODB, Vcl.ExtDlgs;

type
  TForm4 = class(TForm)
    DSProg: TDataSource;
    ADOGrProg: TADOQuery;
    Panel8: TPanel;
    lbl2: TLabel;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    Label18: TLabel;
    DBEdit4: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    BitBtn2: TBitBtn;
    Edit16: TEdit;
    GroupBox4: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    OpenPictureDialog2: TOpenPictureDialog;
    Image1: TImage;
    DBNavigator1: TDBNavigator;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
  OpenPictureDialog2.Title := 'Imagen a mostrar.';
  OpenPictureDialog2.InitialDir := ExtractFilePath(paramstr(0)) +'Imagenes\'  ;
  if OpenPictureDialog2.Execute then begin
    Edit16.Text := OpenPictureDialog2.FileName;
    Image1.Picture.LoadFromFile(OpenPictureDialog2.FileName);
    If Edit16.Text <> null then
    Begin
      ADOGrProg.Edit;
      ADOGrProg.FieldByName('Plantilla').Assign(Image1.Picture.Bitmap);
      ADOGrProg.Post;
    End;
  end;
end;

procedure TForm4.FormActivate(Sender: TObject);
begin
  ADOGrProg.Open;
end;

end.
