unit fDlgBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  cxControls, cxContainer, cxEdit, cxLabel, Vcl.ImgList;

type
  TfrmDlgBase = class(TForm)
    pnlBottom: TPanel;
    btnCancelar: TcxButton;
    btnAplicar: TcxButton;
    btnGuardar: TcxButton;
    lblMensaje: TcxLabel;
    imgListDlg32: TcxImageList;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDlgBase: TfrmDlgBase;

implementation

{$R *.dfm}

procedure TfrmDlgBase.btnCancelarClick(Sender: TObject);
begin
try
   close;
finally
   release;
end; //finally

end;

procedure TfrmDlgBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 release;
end;

end.
