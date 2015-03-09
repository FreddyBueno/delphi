unit fGIPSMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Vcl.Ribbon,
  Vcl.ActnCtrls, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnMenus, Vcl.RibbonActnMenus,
  Vcl.ComCtrls, cxSplitter, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.ExtCtrls, uADStanIntf, uADPhysManager, uADPhysODBCBase, uADPhysMSSQL,
  Vcl.StdActns, Vcl.ActnList, System.Actions, Vcl.RibbonLunaStyleActnCtrls,
  Vcl.ImgList, cxContainer, cxCheckListBox;

type
  TfrmGIPSMain = class(TForm)
    imglst16gr: TcxImageList;
    imglst32gr: TcxImageList;
    imglst64gr: TcxImageList;
    imglst16: TcxImageList;
    actnmgrGIPS: TActionManager;
    ActionFileCitas: TAction;
    ActionFileConsulta: TAction;
    WindowClose1: TWindowClose;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowArrange1: TWindowArrange;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    ADPhysMSSQLDriverLink1: TADPhysMSSQLDriverLink;
    pnlAdds: TPanel;
    spltrRight: TcxSplitter;
    spltrTop: TcxSplitter;
    stsbrMain: TStatusBar;
    Ribbon: TRibbon;
    rbbnpgInicio: TRibbonPage;
    rbbngrpInicioEditar: TRibbonGroup;
    rbbngrpInicioVentana: TRibbonGroup;
    rbbnpgCita: TRibbonPage;
    rbbngrpCitaMostrar: TRibbonGroup;
    rbbngrpCitaAccion: TRibbonGroup;
    pnlNotify: TPanel;
    grdNotify: TcxGrid;
    tvNotify: TcxGridDBTableView;
    lvNotify: TcxGridLevel;
    imglst32: TcxImageList;
    imglst64: TcxImageList;
    RibbonAppMenuBar: TRibbonApplicationMenuBar;
    RibbonQuickAccessToolbar: TRibbonQuickAccessToolbar;
    FileExit1: TFileExit;
    Action4: TAction;
    rbbngrpCitaImprimir: TRibbonGroup;
    rbbngrpExportarQue: TRibbonGroup;
    rbbnpgExportar: TRibbonPage;
    rbbngrpExportarA: TRibbonGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActionFileCitasExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActionFileConsultaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGIPSMain: TfrmGIPSMain;

implementation

{$R *.dfm}

uses fCitas, dcomun, dGIPSci, fConsulta;

procedure TfrmGIPSMain.ActionFileCitasExecute(Sender: TObject);
Var
  frmCitas: TfrmCitas;
begin
  inherited;
   frmCitas:= TfrmCitas.Create(application);
   try
     frmCitas.Show;
   finally
      frmGipsMain.ActionFileCitas.Enabled:=false;
   end; //finally
end;

procedure TfrmGIPSMain.ActionFileConsultaExecute(Sender: TObject);
Var
  frmConsulta: TfrmConsulta;
begin
  inherited;
   frmConsulta:= TfrmConsulta.Create(application);
   try
     frmConsulta.Show;
   finally
      frmGipsMain.ActionFileConsulta.Enabled:=false;
   end; //finally
end;

procedure TfrmGIPSMain.FormClose(Sender: TObject; var Action: TCloseAction);

var
  cik: integer;
begin
  for cik := MDIChildCount - 1 downto 0 do
    MDIChildren[cik].Close;
  release;

end;

procedure TfrmGIPSMain.FormCreate(Sender: TObject);
begin
  spltrTop.CloseSplitter;
  spltrRight.CloseSplitter;

end;

end.
