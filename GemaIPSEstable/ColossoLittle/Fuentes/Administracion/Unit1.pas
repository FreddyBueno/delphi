unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ComCtrls, Mask, DBCtrls, Buttons, ExtDlgs;

type
  Tfrmparametros = class(TForm)
    PageControl1: TPageControl;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    OpenPictureDialog2: TOpenPictureDialog;
    TabSheet2: TTabSheet;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    OpenDialog1: TOpenDialog;
    TabSheet3: TTabSheet;
    Label5: TLabel;
    DBComboBox1: TDBComboBox;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmparametros: Tfrmparametros;

implementation

{$R *.dfm}

procedure Tfrmparametros.FormActivate(Sender: TObject);
begin
  ADOTable1.Open;
  ADOTable1.Edit;
end;

procedure Tfrmparametros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Adotable1.Post;
  action:=cafree;
end;

end.
