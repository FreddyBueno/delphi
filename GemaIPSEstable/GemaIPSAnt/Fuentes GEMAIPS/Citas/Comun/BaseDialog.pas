unit BaseDialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxLabel, Vcl.ImgList, cxTextEdit, cxMemo, cxRichEdit;

type
  TdlgBase = class(TForm)
    lytctrlDlg: TdxLayoutControl;
    btnCancelar: TcxButton;
    lytgrpRoot: TdxLayoutGroup;
    lytitmOK: TdxLayoutItem;
    btnAceptar: TcxButton;
    lytitmCancel: TdxLayoutItem;
    lytgrpBottom: TdxLayoutGroup;
    lytctrlDlgSpaceItem1: TdxLayoutEmptySpaceItem;
    lytgrpContent: TdxLayoutGroup;
    lytitmHeader: TdxLayoutItem;
    imgListDlg32: TcxImageList;
    lblHeader: TcxLabel;
    imgListDlg16: TcxImageList;
    lytitmMessage: TdxLayoutItem;
    rchedtMessage: TcxRichEdit;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgBase: TdlgBase;

implementation

{$R *.dfm}

procedure TdlgBase.btnCancelarClick(Sender: TObject);
begin
 try
   close;
  finally
     release;
  end; //finally

end;

procedure TdlgBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  release;
end;

end.
