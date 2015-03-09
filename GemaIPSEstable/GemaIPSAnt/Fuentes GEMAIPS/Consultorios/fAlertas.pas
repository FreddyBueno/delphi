unit fAlertas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Win.ADODB, Data.DB, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxDBEditRepository, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, cxClasses,
  cxGridLevel, cxGrid, Vcl.ExtCtrls, cxEditRepositoryItems;

type
  TfrmAlertas = class(TForm)
    tblDiagnosticos: TADOTable;
    tblAlertas: TADOTable;
    tblAlertasID: TAutoIncField;
    tblAlertasSexo: TStringField;
    tblAlertasEdad_Min: TIntegerField;
    tblAlertasEdad_Max: TIntegerField;
    tblAlertasAlerta: TStringField;
    tblAlertasMensaje: TStringField;
    tblDiagnosticosCOD_DIAGNOSTICO: TStringField;
    tblDiagnosticosNOM_DIAGNSOTICO: TStringField;
    pnlTop: TPanel;
    lvAlerta: TcxGridLevel;
    grdGrid: TcxGrid;
    tvAlerta: TcxGridDBBandedTableView;
    dsAlertas: TDataSource;
    dsDiag: TDataSource;
    tvAlertaID: TcxGridDBBandedColumn;
    tvAlertaSexo: TcxGridDBBandedColumn;
    tvAlertaEdad_Min: TcxGridDBBandedColumn;
    tvAlertaEdad_Max: TcxGridDBBandedColumn;
    tvAlertaMensaje: TcxGridDBBandedColumn;
    tblSexo: TADOTable;
    tblSexoTIP_SEXO: TStringField;
    tblSexoNOM_SEXO: TStringField;
    tblSexoEstado: TStringField;
    dsSexo: TDataSource;
    cxEditRepository1: TcxEditRepository;
    rpItmSexo: TcxEditRepositoryLookupComboBoxItem;
    rpItmDiag: TcxEditRepositoryLookupComboBoxItem;
    rpitmEdad: TcxEditRepositorySpinItem;
    cxStyleRepository1: TcxStyleRepository;
    GridBandedTableViewStyleSheetSlate: TcxGridBandedTableViewStyleSheet;
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
    rpItmMemo: TcxEditRepositoryBlobItem;
    tvAlertaAlerta: TcxGridDBBandedColumn;
    tvAlertaPreview: TcxGridDBBandedColumn;
    tblAlertasCod_Diagnostico: TStringField;
    tvAlertaCod_Diagnostico: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAlertas: TfrmAlertas;

implementation

{$R *.dfm}

uses UDataModule1;

procedure TfrmAlertas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 //Cerrar archivos
  if  dsAlertas.DataSet.Active then dsAlertas.DataSet.Close;
  if  dsDiag.DataSet.Active    then dsDiag.DataSet.Close;
  if  dsSexo.DataSet.Active    then dsSexo.DataSet.Close;
end;

procedure TfrmAlertas.FormCreate(Sender: TObject);
begin
//Abrir archivos
  screen.Cursor:=crHourglass;
  if not dsSexo.DataSet.Active then    dsSexo.DataSet.Open;
  if not dsDiag.DataSet.Active then    dsDiag.DataSet.Open;
  if not dsAlertas.DataSet.Active then dsAlertas.DataSet.Open;
   screen.Cursor:=crDefault;
end;

end.
