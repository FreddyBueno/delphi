unit CambiarClave;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ADOTable1: TADOTable;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TForm3.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TForm3.FormActivate(Sender: TObject);
begin
  ADOTable1.Open;
  ADOTable1.Filter:='Id = '+floattostr(Datamodule1.ADOQuery1.FieldValues['Id']);
  ADOTable1.Filtered:=True;
end;

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
  IF Edit1.Text=Edit2.Text Then
  Begin
    ADOTable1.Edit;
    ADOTable1.FieldValues['Clave']:=Edit1.Text;
    ADOTable1.Post;
  End
  Else Begin
    Showmessage('La clave es diferente a la confirmación.');
  End;
  Close;
end;

end.
