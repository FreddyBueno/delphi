unit fConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,dxCore, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxContainer, cxEdit, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxImage,
  dxLayoutContainer, dxLayoutcxEditAdapters, uADStanIntf, uADStanOption,
  uADStanParam, uADStanError, uADDatSManager, uADPhysIntf, uADDAptIntf,
  uADStanAsync, uADDAptManager, Vcl.ImgList, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCardView, cxGridDBCardView,
  cxGridCustomLayoutView, cxGrid, dxLayoutLookAndFeels, uADCompDataSet,
  uADCompClient, cxEditRepositoryItems, cxClasses, cxGroupBox, cxCheckGroup,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxLabel, cxGridLevel, dxLayoutControl, Vcl.ExtCtrls;

type
  TfrmConsulta = class(TForm)
    pnlRight: TPanel;
    lytctrlConsulta: TdxLayoutControl;
    gridCita: TcxGrid;
    lvCita: TcxGridLevel;
    grdProfs: TcxGrid;
    tvProf: TcxGridDBTableView;
    tvProfNR_IDENT_MEDICO: TcxGridDBColumn;
    tvProfPRIMER_APELLIDO: TcxGridDBColumn;
    tvProfSEGUND_APELLIDO: TcxGridDBColumn;
    tvProfPRIMER_NOMBRE: TcxGridDBColumn;
    tvProfSEGUND_NOMBRE: TcxGridDBColumn;
    lvProfs: TcxGridLevel;
    lblProfs: TcxLabel;
    lblCitas: TcxLabel;
    lygrpRoot: TdxLayoutGroup;
    lytitmCitasGrilla: TdxLayoutItem;
    lytitmProfGrilla: TdxLayoutItem;
    lytitmCitasCaption: TdxLayoutItem;
    lytgrpCitas: TdxLayoutGroup;
    lytspltrCitas: TdxLayoutSplitterItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    cxStyle36: TcxStyle;
    cxStyle37: TcxStyle;
    cxStyle38: TcxStyle;
    cxStyle39: TcxStyle;
    cxStyle40: TcxStyle;
    GridBandedTableViewStyleSheetDevExpress: TcxGridBandedTableViewStyleSheet;
    GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet;
    cxEditRepository1: TcxEditRepository;
    rpitmFoto: TcxEditRepositoryImageItem;
    rpitmFecha: TcxEditRepositoryDateItem;
    rpitmHora: TcxEditRepositoryTimeItem;
    rpitmEstado: TcxEditRepositoryImageComboBoxItem;
    rpitmFechaHora: TcxEditRepositoryDateItem;
    rpitmRangoFecha: TcxEditRepositoryDateItem;
    rpitmBtTurno: TcxEditRepositoryButtonItem;
    qryAGCita: TADQuery;
    dsCita: TDataSource;
    lytLookAndFeellst: TdxLayoutLookAndFeelList;
    dxLayoutOfficeLookAndFeel1: TdxLayoutOfficeLookAndFeel;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxLayoutWebLookAndFeel1: TdxLayoutWebLookAndFeel;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    cxGridViewRepository1: TcxGridViewRepository;
    cvProfs: TcxGridDBCardView;
    cvProfsEspecialidad: TcxGridDBCardViewRow;
    cvProfsFoto: TcxGridDBCardViewRow;
    cvProfsPrimerApellido: TcxGridDBCardViewRow;
    cvProfsSegundoApellido: TcxGridDBCardViewRow;
    cvProfsPrimerNombre: TcxGridDBCardViewRow;
    cvProfsSegundoNombre: TcxGridDBCardViewRow;
    cvProfsDocIDProf: TcxGridDBCardViewRow;
    cvProfsID: TcxGridDBCardViewRow;
    btvCitas: TcxGridDBBandedTableView;
    btvCitasID: TcxGridDBBandedColumn;
    btvCitasTurno: TcxGridDBBandedColumn;
    btvCitasFecha: TcxGridDBBandedColumn;
    btvCitasHora: TcxGridDBBandedColumn;
    btvCitasDuracionPrevista: TcxGridDBBandedColumn;
    btvCitasObservaciones: TcxGridDBBandedColumn;
    btvCitasTipoCitaID: TcxGridDBBandedColumn;
    btvCitasTipoCita: TcxGridDBBandedColumn;
    btvCitasTipoConsulta: TcxGridDBBandedColumn;
    btvCitasEstadoCitaID: TcxGridDBBandedColumn;
    btvCitasDocIDPaciente: TcxGridDBBandedColumn;
    btvCitasPaciente: TcxGridDBBandedColumn;
    btvCitasProfesionalID: TcxGridDBBandedColumn;
    btvCitasDocIDProf: TcxGridDBBandedColumn;
    btvCitasProfesional: TcxGridDBBandedColumn;
    btvCitasAutorizacion: TcxGridDBBandedColumn;
    btvCitasFechaHoraReal: TcxGridDBBandedColumn;
    btvCitasFechaFinReal: TcxGridDBBandedColumn;
    btvCitasDuracionReal: TcxGridDBBandedColumn;
    cxGridViewRepository1DBCardView1: TcxGridDBCardView;
    cxGridViewRepository1DBCardView1Especialidad1: TcxGridDBCardViewRow;
    cxGridViewRepository1DBCardView1PrimerApellido1: TcxGridDBCardViewRow;
    cxGridViewRepository1DBCardView1SegundoApellido1: TcxGridDBCardViewRow;
    cxGridViewRepository1DBCardView1PrimerNombre1: TcxGridDBCardViewRow;
    cxGridViewRepository1DBCardView1SegundoNombre1: TcxGridDBCardViewRow;
    cxGridViewRepository1DBCardView1DocIDProf1: TcxGridDBCardViewRow;
    cxGridViewRepository1DBCardView1Foto1: TcxGridDBCardViewRow;
    cxGridViewRepository1DBCardView1id1: TcxGridDBCardViewRow;
    imgList16: TcxImageList;
    imgList32: TcxImageList;
    SaveDialog1: TSaveDialog;
    lytgrpIzq: TdxLayoutGroup;
    lytitmProfCaption: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsulta: TfrmConsulta;

implementation

{$R *.dfm}

uses fGIPSMain;

procedure TfrmConsulta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  btvCitasFecha.SortOrder:=soNone;
  btvCitasHora.SortOrder:=soNone;
  frmGipsMain.ActionFileConsulta.Enabled:=true;
  release;
end;

end.                       a
