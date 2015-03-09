unit fMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fMDIBase, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxPrnDev, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPScxPageControlProducer, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPSCore, cxClasses, dxPrnDlg, uADStanIntf,
  uADPhysManager, uADPhysODBCBase, uADPhysMSSQL, cxSplitter, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TfrmMain = class(TfrmMDIBase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

end.
