unit fMDIBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxSplitter, Vcl.ExtCtrls, Vcl.ComCtrls, uADStanIntf,
  uADPhysManager, uADPhysODBCBase, uADPhysMSSQL, dxLayoutLookAndFeels, dxPrnDev,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPScxPageControlProducer,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, cxClasses, dxPrnDlg,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxLayoutContainer, dxLayoutControl,
  dxLayoutControlAdapters, dxPSdxLCLnk;

type
  TfrmMDIBase = class(TForm)
    stsbrMain: TStatusBar;
    ADPhysMSSQLDriverLink1: TADPhysMSSQLDriverLink;
    prntDlgGIPS: TdxPrintDialog;
    cmpntGIPS: TdxComponentPrinter;
    pnlNotify: TPanel;
    pnlAdds: TPanel;
    spltrTop: TcxSplitter;
    spltrRight: TcxSplitter;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMDIBase: TfrmMDIBase;

implementation

{$R *.dfm}

procedure TfrmMDIBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
release;
end;

procedure TfrmMDIBase.FormCreate(Sender: TObject);
begin
  spltrTop.CloseSplitter;
  spltrRight.CloseSplitter;
end;

end.
