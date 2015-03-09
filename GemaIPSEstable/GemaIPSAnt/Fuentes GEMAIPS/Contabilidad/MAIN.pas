unit MAIN;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  StdCtrls, Dialogs, Buttons, Messages, ExtCtrls, ComCtrls, StdActns,
  ActnList, ToolWin, ImgList,IniFiles, DB, ADODB, DBCtrls, Grids, TeEngine,
  Series, TeeProcs, Chart, DbChart,StrUtils,DateUtils,shellapi,Variants,
  jpeg,XPMan,Libreria_Prateinco, JvBaseDlg, JvJVCLAboutForm, Vcl.DBGrids,
  System.Actions;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    Window1: TMenuItem;
    Help1: TMenuItem;
    WindowCascadeItem: TMenuItem;
    WindowTileItem: TMenuItem;
    WindowArrangeItem: TMenuItem;
    HelpAboutItem: TMenuItem;
    OpenDialog: TOpenDialog;
    WindowMinimizeItem: TMenuItem;
    StatusBar: TStatusBar;
    ActionList1: TActionList;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    FileNew1: TAction;
    FileSave1: TAction;
    FileExit1: TAction;
    FileOpen1: TAction;
    FileSaveAs1: TAction;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowArrangeAll1: TWindowArrange;
    WindowMinimizeAll1: TWindowMinimizeAll;
    HelpAbout1: TAction;
    FileClose1: TWindowClose;
    WindowTileVertical1: TWindowTileVertical;
    WindowTileItem2: TMenuItem;
    ToolBar2: TToolBar;
    ImageList1: TImageList;
    Procesos1: TMenuItem;
    Capturas1: TMenuItem;
    Consultas1: TMenuItem;
    PlandeCuentas1: TMenuItem;
    iposdeComprobantes1: TMenuItem;
    erceros1: TMenuItem;
    CentrosdeCosto1: TMenuItem;
    ComprobantesContables1: TMenuItem;
    Saldos1: TMenuItem;
    Cierres1: TMenuItem;
    Reportes1: TMenuItem;
    Factura1: TMenuItem;
    BalanceGeneral1: TMenuItem;
    PyG1: TMenuItem;
    StatusBar1: TStatusBar;
    N2: TMenuItem;
    GeneradordeReportes1: TMenuItem;
    iposdeTerceros1: TMenuItem;
    ToolButton13: TToolButton;
    ReimpresindelComprobante1: TMenuItem;
    N3: TMenuItem;
    AnulacindeComprobantes1: TMenuItem;
    LibroAuxiliar1: TMenuItem;
    PorEstado1: TMenuItem;
    Confirmadas1: TMenuItem;
    PendientesdeConfirmacin1: TMenuItem;
    Anuladas1: TMenuItem;
    Otras1: TMenuItem;
    PorEmpresa1: TMenuItem;
    PorArea1: TMenuItem;
    LibroDiario1: TMenuItem;
    LibroAuxiliar2: TMenuItem;
    LibroDiario2: TMenuItem;
    LibroAuxiliar3: TMenuItem;
    Resumen1: TMenuItem;
    ResumenTotal1: TMenuItem;
    PorFecha1: TMenuItem;
    IngresosVsEgresos1: TMenuItem;
    FacturacinVsIngresos1: TMenuItem;
    ListadodeComprobantes1: TMenuItem;
    ListadodeComprobantes2: TMenuItem;
    IVA1: TMenuItem;
    ResumenporMeses1: TMenuItem;
    ResumenparaComprobanteEgreso1: TMenuItem;
    N9: TMenuItem;
    InformacinContable1: TMenuItem;
    N14: TMenuItem;
    CuadrodeMovimientosporMes1: TMenuItem;
    Listados3: TMenuItem;
    N15: TMenuItem;
    PorTipoComprobante1: TMenuItem;
    P1: TMenuItem;
    PorTipoComprobante2: TMenuItem;
    PorPeriodo1: TMenuItem;
    PorCuenta4: TMenuItem;
    PorTercero1: TMenuItem;
    PorCentrodeCosto2: TMenuItem;
    PorDocumento1: TMenuItem;
    ListadoTotal1: TMenuItem;
    PorPeriodo2: TMenuItem;
    yDocumento1: TMenuItem;
    yCta1: TMenuItem;
    odos2: TMenuItem;
    odos3: TMenuItem;
    yCuenta2: TMenuItem;
    yTercero1: TMenuItem;
    yCC1: TMenuItem;
    yDocumento2: TMenuItem;
    odos4: TMenuItem;
    yTercero2: TMenuItem;
    yCC2: TMenuItem;
    yDocumento3: TMenuItem;
    odos5: TMenuItem;
    yCC3: TMenuItem;
    yDocumento4: TMenuItem;
    odos6: TMenuItem;
    yDocumento5: TMenuItem;
    PorFecha2: TMenuItem;
    ComprobantesdeunDia1: TMenuItem;
    AnalisiseInconsistencias1: TMenuItem;
    N8: TMenuItem;
    LibrosOficiales1: TMenuItem;
    InformeConsolidado1: TMenuItem;
    InformeConsolidado2: TMenuItem;
    DataSource1: TDataSource;
    ADOQueryBalance: TADOQuery;
    ADOQueryCierres: TADOQuery;
    ToolButton14: TToolButton;
    DBNavigator1: TDBNavigator;
    ToolButton15: TToolButton;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    StringGrid1: TStringGrid;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    ADOQuerySaldoAnt: TADOQuery;
    BitBtn4: TBitBtn;
    Edit5: TEdit;
    ADOQuery1: TADOQuery;
    Panel4: TPanel;
    DBChart1: TDBChart;
    Splitter3: TSplitter;
    Panel5: TPanel;
    DBChart2: TDBChart;
    ADOQuery2: TADOQuery;
    PieSeries1: TBarSeries;
    Series1: TBarSeries;
    AuxiliarporTipoCom1: TMenuItem;
    AuxiliarporCuenta1: TMenuItem;
    AuxiliarporTercero1: TMenuItem;
    AuxiliarporCentrodeCosto1: TMenuItem;
    AuxiliarporCuentayTercero1: TMenuItem;
    AuditoriadeDocumentos1: TMenuItem;
    N16: TMenuItem;
    BalancedePrueba2: TMenuItem;
    AuxiliarporTerceroyCuenta1: TMenuItem;
    N17: TMenuItem;
    General2: TMenuItem;
    Resumido1: TMenuItem;
    DBText2: TDBText;
    Label1: TLabel;
    ToolButton16: TToolButton;
    CuadrodeMovimientosporMesyTercero1: TMenuItem;
    ConsolidadoporTipoComprobante1: TMenuItem;
    SpeedButton1: TSpeedButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    ADOQuerySaldoAct: TADOQuery;
    N4: TMenuItem;
    SubirExtracto1: TMenuItem;
    ConciliarExtracto1: TMenuItem;
    BitBtn5: TBitBtn;
    Edit6: TEdit;
    ADOQueryCom: TADOQuery;
    Memo1: TMemo;
    Procesos2: TMenuItem;
    CierresyAjustedeSaldos1: TMenuItem;
    N5: TMenuItem;
    InferfacesconModulosExternos1: TMenuItem;
    ConfirmaciondeComprobantes1: TMenuItem;
    ImportarPlanosContables1: TMenuItem;
    N6: TMenuItem;
    ConsolidarBasesdeDatosenUna1: TMenuItem;
    Facturacion1: TMenuItem;
    Caja1: TMenuItem;
    ProgressBar1: TProgressBar;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    BaseComprasIVA1: TMenuItem;
    BaseComprasNoGrabadasIVA1: TMenuItem;
    Splitter4: TSplitter;
    ReportesGerenciales1: TMenuItem;
    LibrodeInventariosyB1: TMenuItem;
    Solicituddegiro1: TMenuItem;
    Solicitud1: TMenuItem;
    Reportedesolicitudes1: TMenuItem;
    Consiliaciones1: TMenuItem;
    deCartera1: TMenuItem;
    Facturasaldia1: TMenuItem;
    CxC1: TMenuItem;
    N10: TMenuItem;
    Carteracontable1: TMenuItem;
    PlandeCuentas2: TMenuItem;
    erceros2: TMenuItem;
    AuxiliarCuentaTerceroconBase1: TMenuItem;
    PorEmpresa2: TMenuItem;
    yEmpresa1: TMenuItem;
    yEmpresa2: TMenuItem;
    yEmpresa3: TMenuItem;
    yEmpresa4: TMenuItem;
    yEmpresa5: TMenuItem;
    Edit7: TEdit;
    SpeedButton6: TSpeedButton;
    Label2: TLabel;
    ConciliacindeCausacionesVsEgresos1: TMenuItem;
    Ayuda1: TMenuItem;
    N7: TMenuItem;
    N12: TMenuItem;
    DiferenciasentreM1: TMenuItem;
    ADOQueryCom2: TADOQuery;
    DBLookupComboBox1: TDBLookupComboBox;
    Button1: TButton;
    ADOQCierresAjuste: TADOQuery;
    ADOQSaldoAjuste: TADOQuery;
    ADOQComproAjuste: TADOQuery;
    ADOQueryCuenta: TADOQuery;
    ADOQTmpAjuste: TADOQuery;
    Button2: TBitBtn;
    BalanceconTerceros1: TMenuItem;
    PyGconTerceros1: TMenuItem;
    PyGporPeriodos1: TMenuItem;
    N13: TMenuItem;
    N18: TMenuItem;
    BalanceconPeriodos1: TMenuItem;
    BalancedePrueba1: TMenuItem;
    SpeedButton7: TSpeedButton;
    img: TImage;
    procedure FileNew1Execute(Sender: TObject);
    procedure FileOpen1Execute(Sender: TObject);
    procedure HelpAbout1Execute(Sender: TObject);
    procedure FileExit1Execute(Sender: TObject);
    procedure ComprobantesContables1Click(Sender: TObject);
    procedure Saldos1Click(Sender: TObject);
    procedure Movimientos1Click(Sender: TObject);
    procedure Cierres1Click(Sender: TObject);
    procedure iposdeComprobantes1Click(Sender: TObject);
    procedure PlandeCuentas1Click(Sender: TObject);
    procedure erceros1Click(Sender: TObject);
    procedure CentrosdeCosto1Click(Sender: TObject);
    procedure GeneradordeReportes1Click(Sender: TObject);
    procedure iposdeTerceros1Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure ReimpresindelComprobante1Click(Sender: TObject);
    procedure DocumentosDigitalizados1Click(Sender: TObject);
    procedure AnulacindeComprobantes1Click(Sender: TObject);
    procedure BalanceGeneral1Click(Sender: TObject);
    procedure PyG1Click(Sender: TObject);
    procedure Confirmadas1Click(Sender: TObject);
    procedure PendientesdeConfirmacin1Click(Sender: TObject);
    procedure Anuladas1Click(Sender: TObject);
    procedure Otras1Click(Sender: TObject);
    procedure LibroDiario1Click(Sender: TObject);
    procedure LibroAuxiliar2Click(Sender: TObject);
    procedure LibroDiario2Click(Sender: TObject);
    procedure LibroAuxiliar3Click(Sender: TObject);
    procedure BalancedePrueba1Click(Sender: TObject);
    procedure IngresosVsEgresos1Click(Sender: TObject);
    procedure FacturacinVsIngresos1Click(Sender: TObject);
    procedure ListadodeComprobantes2Click(Sender: TObject);
    procedure IVA1Click(Sender: TObject);
    procedure InformacinContable1Click(Sender: TObject);
    procedure CuadrodeMovimientosporMes1Click(Sender: TObject);
    procedure P1Click(Sender: TObject);
    procedure ListadoTotal1Click(Sender: TObject);
    procedure ResumenTotal1Click(Sender: TObject);
    procedure PorFecha1Click(Sender: TObject);
    procedure Resumen1Click(Sender: TObject);
    procedure yDocumento1Click(Sender: TObject);
    procedure yCta1Click(Sender: TObject);
    procedure odos2Click(Sender: TObject);
    procedure odos3Click(Sender: TObject);
    procedure yCuenta2Click(Sender: TObject);
    procedure yTercero1Click(Sender: TObject);
    procedure yCC1Click(Sender: TObject);
    procedure yDocumento2Click(Sender: TObject);
    procedure yTercero2Click(Sender: TObject);
    procedure yCC2Click(Sender: TObject);
    procedure yDocumento3Click(Sender: TObject);
    procedure odos4Click(Sender: TObject);
    procedure yCC3Click(Sender: TObject);
    procedure yDocumento4Click(Sender: TObject);
    procedure odos5Click(Sender: TObject);
    procedure yDocumento5Click(Sender: TObject);
    procedure odos6Click(Sender: TObject);
    procedure PorDocumento1Click(Sender: TObject);
    procedure yTercero3Click(Sender: TObject);
    procedure odos1Click(Sender: TObject);
    procedure yCuenta1Click(Sender: TObject);
    procedure yTercero4Click(Sender: TObject);
    procedure yCC6Click(Sender: TObject);
    procedure yDocumento9Click(Sender: TObject);
    procedure odos10Click(Sender: TObject);
    procedure yCC5Click(Sender: TObject);
    procedure yDocumento8Click(Sender: TObject);
    procedure odos9Click(Sender: TObject);
    procedure yCC4Click(Sender: TObject);
    procedure yDocumento7Click(Sender: TObject);
    procedure odos8Click(Sender: TObject);
    procedure yDocumento6Click(Sender: TObject);
    procedure odos7Click(Sender: TObject);
    procedure PorDocumento2Click(Sender: TObject);
    procedure ComprobantesdeunDia1Click(Sender: TObject);
    procedure InformeConsolidado1Click(Sender: TObject);
    procedure InformeConsolidado2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure StringGrid1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure AuxiliarporCuentayTercero1Click(Sender: TObject);
    procedure AuxiliarporTipoCom1Click(Sender: TObject);
    procedure AuxiliarporCuenta1Click(Sender: TObject);
    procedure AuxiliarporTercero1Click(Sender: TObject);
    procedure AuxiliarporCentrodeCosto1Click(Sender: TObject);
    procedure AuditoriadeDocumentos1Click(Sender: TObject);
    procedure BalancedePrueba2Click(Sender: TObject);
    procedure AuxiliarporTerceroyCuenta1Click(Sender: TObject);
    procedure General2Click(Sender: TObject);
    procedure Resumido1Click(Sender: TObject);
    procedure odos11Click(Sender: TObject);
    procedure yCuenta4Click(Sender: TObject);
    procedure CuadrodeMovimientosporMesyTercero1Click(Sender: TObject);
    procedure ConceptosxTipoTercero1Click(Sender: TObject);
    procedure ConsolidadoporTipoComprobante1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SubirExtracto1Click(Sender: TObject);
    procedure ConciliarExtracto1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Titulos1;
    procedure CierresyAjustedeSaldos1Click(Sender: TObject);
    procedure Facturacion1Click(Sender: TObject);
    procedure Caja1Click(Sender: TObject);
    procedure ConfirmaciondeComprobantes1Click(Sender: TObject);
    procedure ImportarPlanosContables1Click(Sender: TObject);
    procedure ConsolidarBasesdeDatosenUna1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure BaseComprasIVA1Click(Sender: TObject);
    procedure BaseComprasNoGrabadasIVA1Click(Sender: TObject);
    procedure LibrodeInventariosyB1Click(Sender: TObject);
    procedure Solicitud1Click(Sender: TObject);
    procedure Reportedesolicitudes1Click(Sender: TObject);
    procedure deCartera1Click(Sender: TObject);
    procedure Facturasaldia1Click(Sender: TObject);
    procedure Carteracontable1Click(Sender: TObject);
    procedure PlandeCuentas2Click(Sender: TObject);
    procedure erceros2Click(Sender: TObject);
    procedure AuxiliarCuentaTerceroconBase1Click(Sender: TObject);
    procedure PorEmpresa2Click(Sender: TObject);
    procedure yEmpresa1Click(Sender: TObject);
    procedure yEmpresa2Click(Sender: TObject);
    procedure yEmpresa3Click(Sender: TObject);
    procedure yEmpresa4Click(Sender: TObject);
    procedure yEmpresa5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure ConciliacindeCausacionesVsEgresos1Click(Sender: TObject);
    procedure Ayuda1Click(Sender: TObject);
    procedure DiferenciasentreM1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BalanceconTerceros1Click(Sender: TObject);
    procedure PyGconTerceros1Click(Sender: TObject);
    procedure PyGporPeriodos1Click(Sender: TObject);
    procedure BalanceconPeriodos1Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBLookupComboBox1Click(Sender: TObject);
  private
    { Private declarations }
    procedure CreateMDIChild(const Name: string);
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  Mes_Actual,Mes_Anterior:String;
  TipoRep:Integer;

implementation

{$R *.dfm}

uses CHILDWIN, about, fcontabilidad4, fcontabilidad5,
  fcontabilidad6, fcontabilidad2,  Fcontabilidad9,Fcontabilidad11,  Fcontabilidad8,
  UDataModule1,  Reporteador, Ffactura1,
  FcontTipoTerc, FDigitaliza, FAnulaComp, FLibroDiario, FLibroAuxiliar,
  HomologaCupsVsPush,
  ImportaPlanosContable, ConsultaComp, FPyG, HomologaPaqueteVsPush,
  FAuxiliarTipoComp, FAuxiliarCta, FAuxiliarTercero, FBalancePrueba2,
  FAuxiliarTerceroCta, FAuxiliarCtaTercero, FDiarioTipoyCta,
  FTableroContableTercero, FConsolidar, FConceptosxTipo,
  FAuxiliarCtaTipoComp, ImportaPlanos, FExtractos,
  Fcontabilidad7, FContabCaja, FContabFacturacion, FConfirma, FInventariosBalance,
  UnitPresupuestoM, UnitInformePresupuestoM, CapturaBasica2,
  UnitCarteraContable, FAuxiliarCtaTercero2, FCreaTerceros, FTableroContable,
  FPyGTercero, FPyGPeriodo, FBalancePrueba, SEIngreso, Libreria_PrateincoForm;

procedure TMainForm.CreateMDIChild(const Name: string);
var
  Child: TMDIChild;
begin
  { create a new MDI child window }
  Child := TMDIChild.Create(Application);
  Child.Caption := Name;
  if FileExists(Name) then Child.Memo1.Lines.LoadFromFile(Name);
end;

procedure TMainForm.FileNew1Execute(Sender: TObject);
begin
  CreateMDIChild('NONAME' + IntToStr(MDIChildCount + 1));
end;

procedure TMainForm.FileOpen1Execute(Sender: TObject);
begin
  if OpenDialog.Execute then
    CreateMDIChild(OpenDialog.FileName);
end;

procedure TMainForm.HelpAbout1Execute(Sender: TObject);
begin
  AboutBox := tAboutBox.create(application);
  try
    AboutBox.showModal;
  except
    AboutBox.free;
  end;
end;

procedure TMainForm.FileExit1Execute(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.ComprobantesContables1Click(Sender: TObject);
begin
  FormCapturaComp := tFormCapturaComp.create(application);
  try
    FormCapturaComp.DBLookupComboBox2.KeyValue:=DBLookupComboBox1.Text;
    Datamodule1.MuestraconAcceso(FormCapturaComp);
  except
    FormCapturaComp.free;
  end;
end;

procedure TMainForm.Saldos1Click(Sender: TObject);
begin
  FormConsultaSaldos := tFormConsultaSaldos.create(application);
  try
    Datamodule1.MuestraconAcceso(FormConsultaSaldos);
  except
    FormConsultaSaldos.free;
  end;
end;

procedure TMainForm.Movimientos1Click(Sender: TObject);
begin
  FConsultaCompr := tFConsultaCompr.create(application);
  try
    Datamodule1.MuestraconAcceso(FConsultaCompr);
  except
    FConsultaCompr.free;
  end;
end;

procedure TMainForm.Cierres1Click(Sender: TObject);
begin
  FormConsultaCierres := tFormConsultaCierres.create(application);
  try
    Datamodule1.MuestraconAcceso(FormConsultaCierres);
  except
    FormConsultaCierres.free;
  end;
end;

procedure TMainForm.iposdeComprobantes1Click(Sender: TObject);
begin
  FormTiposComp := tFormTiposComp.create(application);
  try
    Datamodule1.MuestraconAcceso(FormTiposComp);
  except
    FormTiposComp.free;
  end;
end;

procedure TMainForm.PlandeCuentas1Click(Sender: TObject);
begin
  FormPlanCta := tFormPlanCta.create(application);
  try
    Datamodule1.MuestraconAcceso(FormPlanCta);
  except
    FormPlanCta.free;
  end;
end;

procedure TMainForm.erceros1Click(Sender: TObject);
begin
  FrmCrearTerceros := tFrmCrearTerceros.create(application);
  try
    Datamodule1.MuestraconAcceso(FrmCrearTerceros);
  except
    FrmCrearTerceros.free;
  end;
end;

procedure TMainForm.CentrosdeCosto1Click(Sender: TObject);
begin
  FormCentrosCosto := tFormCentrosCosto.create(application);
  try
    Datamodule1.MuestraconAcceso(FormCentrosCosto);
  except
    FormCentrosCosto.free;
  end;
end;

procedure TMainForm.GeneradordeReportes1Click(Sender: TObject);
begin
  ReporteadorP('','','');
end;

procedure TMainForm.iposdeTerceros1Click(Sender: TObject);
begin
  FormTipoTerc := tFormTipoTerc.create(application);
  try
    Datamodule1.MuestraconAcceso(FormTipoTerc);
  except
    FormTipoTerc.free;
  end;
end;

procedure TMainForm.ToolButton13Click(Sender: TObject);
begin
  WinExec(PAnsiChar('CALC.EXE '),SW_SHOWNORMAL);
end;

procedure TMainForm.ReimpresindelComprobante1Click(Sender: TObject);
begin
  FormImpComp := tFormImpComp.create(application);
  try
    Datamodule1.MuestraconAcceso(FormImpComp);
  except
    FormImpComp.free;
  end;
end;

procedure TMainForm.DocumentosDigitalizados1Click(Sender: TObject);
begin
  FormDigitaliza := tFormDigitaliza.create(application);
  try
    Datamodule1.MuestraconAcceso(FormDigitaliza);
  except
    FormDigitaliza.free;
  end;
end;

procedure TMainForm.AnulacindeComprobantes1Click(Sender: TObject);
begin
  FormAnulaComp := tFormAnulaComp.create(application);
  try
    Datamodule1.MuestraconAcceso(FormAnulaComp);
  except
    FormAnulaComp.free;
  end;
end;

procedure TMainForm.BalanceGeneral1Click(Sender: TObject);
begin
  FormPyG := tFormPyG.create(application);
  try
    FormPyG.DBLookupComboBox1.KeyValue := DBLookupComboBox1.Text;
    FormPyG.ADOQuery1.Close;
    FormPyG.Caption:=' BALANCE GENERAL';
    FormPyG.QRLabel1.Caption:=' BALANCE GENERAL';
    Datamodule1.MuestraconAcceso(FormPyG);
  except
    FormPyG.free;
  end;
end;

procedure TMainForm.PyG1Click(Sender: TObject);
begin
  FormPyG := tFormPyG.create(application);
  try
    FormPyG.DBLookupComboBox1.KeyValue := DBLookupComboBox1.Text;
    FormPyG.ADOQuery1.Close;
    FormPyG.Caption:='      P y G';
    FormPyG.QRLabel1.Caption:='      P y G';
    Datamodule1.MuestraconAcceso(FormPyG);
  except
    FormPyG.free;
  end;
end;

procedure TMainForm.PyGconTerceros1Click(Sender: TObject);
begin
  FormPyGTercero := tFormPyGTercero.create(application);
  try
    FormPyGTercero.DBLookupComboBox1.KeyValue := DBLookupComboBox1.Text;
    FormPyGTercero.ADOQuery1.Close;
    FormPyGTercero.Caption:='      P y G';
    FormPyGTercero.QRLabel1.Caption:='      P y G';
    Datamodule1.MuestraconAcceso(FormPyGTercero);
  except
    FormPyG.free;
  end;
end;

procedure TMainForm.PyGporPeriodos1Click(Sender: TObject);
begin
  FormPyGBimestre := tFormPyGBimestre.create(application);
  try
    FormPyGBimestre.DBLookupComboBox1.KeyValue := DBLookupComboBox1.Text;
    FormPyGBimestre.ADOQuery1.Close;
    FormPyGBimestre.Caption:='      P y G';
    FormPyGBimestre.QRLabel1.Caption:='      P y G';
    Datamodule1.MuestraconAcceso(FormPyGBimestre);
  except
    FormPyG.free;
  end;
end;

procedure TMainForm.Confirmadas1Click(Sender: TObject);
begin
  ReporteadorP('Comprobantes Confirmados','SELECT Tipo_Comprobante as Tipo,convert(varchar,Numero_Comprobante) as Numero,Convert(varchar,Fecha_Comprobante,103) as Fecha,Periodo_Proceso as Periodo,left(Informacion_1,20) as Inf1,left(Informacion_2,20) as Inf2,'+
    ' left(Informacion_3,20) as Inf3,Descripcion,Estado FROM CONTEncComp WHERE Estado = '+chr(39)+'G'+chr(39),'');
end;

procedure TMainForm.PendientesdeConfirmacin1Click(Sender: TObject);
begin
  ReporteadorP('Comprobantes Pendientes','SELECT * FROM CONTEncComp WHERE Estado = '+chr(39)+'P'+chr(39),'');
end;

procedure TMainForm.Anuladas1Click(Sender: TObject);
begin
  ReporteadorP('Comprobantes Anulados','SELECT * FROM CONTEncComp WHERE Estado = '+chr(39)+'A'+chr(39),'');
end;

procedure TMainForm.Otras1Click(Sender: TObject);
begin
  ReporteadorP('Comprobantes Otros','SELECT * FROM CONTEncComp WHERE Estado <> '+chr(39)+'G'+chr(39)+' AND Estado <> '+chr(39)+'P'+chr(39)+' AND Estado <> '+chr(39)+'A'+chr(39),'');
end;

procedure TMainForm.LibroDiario1Click(Sender: TObject);
begin
  FrmLibro_Diario := tFrmLibro_Diario.create(application);
  FrmLibro_Diario.ADOQuery1.Filter:='Empresa ='+chr(39)+Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja']+chr(39);
  FrmLibro_Diario.ADOquery1.Filtered:=True;
  FrmLibro_Diario.ADOQuery2.close;
  FrmLibro_Diario.ADOQuery2.SQL.Add('AND empresa ='+chr(39)+Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja']+chr(39));
  FrmLibro_Diario.ADOquery2.Open;
  try
    Datamodule1.MuestraconAcceso(FrmLibro_Diario);
  except
    FrmLibro_Diario.free;
  end;
end;

procedure TMainForm.LibroAuxiliar2Click(Sender: TObject);
begin
  FrmLibroAuxiliar := tFrmLibroAuxiliar.create(application);
  FrmLibroAuxiliar.ADOQuery1.Filter:='Empresa ='+chr(39)+Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja']+chr(39);
  FrmLibroAuxiliar.ADOquery1.Filtered:=True;
  FrmLibroAuxiliar.ADOQuery2.close;
  FrmLibroAuxiliar.ADOQuery2.SQL.Add('AND empresa ='+chr(39)+Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja']+chr(39));
  FrmLibroAuxiliar.ADOquery2.Open;
  try
    Datamodule1.MuestraconAcceso(FrmLibroAuxiliar);
  except
    FrmLibroAuxiliar.free;
  end;
end;

procedure TMainForm.LibroDiario2Click(Sender: TObject);
begin
  FrmLibro_Diario := tFrmLibro_Diario.create(application);
  FrmLibro_Diario.ADOQuery1.Filter:='Empresa ='+chr(39)+Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja']+chr(39)+' AND Area ='+chr(39)+Datamodule1.ADOQuery1.FieldValues['Area_Trabaja']+chr(39);
  FrmLibro_Diario.ADOquery1.Filtered:=True;
  FrmLibro_Diario.ADOQuery2.close;
  FrmLibro_Diario.ADOQuery2.SQL.Add('AND empresa ='+chr(39)+Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja']+chr(39)+' AND Area ='+chr(39)+Datamodule1.ADOQuery1.FieldValues['Area_Trabaja']+chr(39));
  FrmLibro_Diario.ADOquery2.Open;
  try
    Datamodule1.MuestraconAcceso(FrmLibro_Diario);
  except
    FrmLibro_Diario.free;
  end;
end;

procedure TMainForm.LibroAuxiliar3Click(Sender: TObject);
begin
  FrmLibroAuxiliar := tFrmLibroAuxiliar.create(application);
  FrmLibroAuxiliar.ADOQuery1.Filter:='Empresa ='+chr(39)+Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja']+chr(39)+' AND Area ='+chr(39)+Datamodule1.ADOQuery1.FieldValues['Area_Trabaja']+chr(39);
  FrmLibroAuxiliar.ADOquery1.Filtered:=True;
  FrmLibroAuxiliar.ADOQuery2.close;
  FrmLibroAuxiliar.ADOQuery2.SQL.Add('AND empresa ='+chr(39)+Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja']+chr(39)+' AND Area ='+chr(39)+Datamodule1.ADOQuery1.FieldValues['Area_Trabaja']+chr(39));
  FrmLibroAuxiliar.ADOquery2.Open;
  try
    Datamodule1.MuestraconAcceso(FrmLibroAuxiliar);
  except
    FrmLibroAuxiliar.free;
  end;
end;

procedure TMainForm.BalanceconPeriodos1Click(Sender: TObject);
begin
  FormPyGBimestre := tFormPyGBimestre.create(application);
  try
    FormPyGBimestre.DBLookupComboBox1.KeyValue := DBLookupComboBox1.Text;
    FormPyGBimestre.ADOQuery1.Close;
    FormPyGBimestre.Caption:=' BALANCE GENERAL';
    FormPyGBimestre.QRLabel1.Caption:=' BALANCE GENERAL';
    Datamodule1.MuestraconAcceso(FormPyGBimestre);
  except
    FormPyGBimestre.free;
  end;
end;

procedure TMainForm.BalanceconTerceros1Click(Sender: TObject);
begin
  FormPyGTercero := tFormPyGTercero.create(application);
  try
    FormPyGTercero.DBLookupComboBox1.KeyValue := DBLookupComboBox1.Text;
    FormPyGTercero.ADOQuery1.Close;
    FormPyGTercero.Caption:=' BALANCE GENERAL';
    FormPyGTercero.QRLabel1.Caption:=' BALANCE GENERAL';
    Datamodule1.MuestraconAcceso(FormPyGTercero);
  except
    FormPyG.free;
  end;
end;

procedure TMainForm.BalancedePrueba1Click(Sender: TObject);
begin
  FrmLibroBalancePrueba := tFrmLibroBalancePrueba.create(application);
  try
    FrmLibroBalancePrueba.DBLookupComboBox1.KeyValue := DBLookupComboBox1.Text;
    Datamodule1.MuestraconAcceso(FrmLibroBalancePrueba);
  except
    FrmLibroBalancePrueba.free;
  end;
end;

procedure TMainForm.IngresosVsEgresos1Click(Sender: TObject);
begin
  ReporteadorP(' Tipo Comp. Ingresos Vs Egresos','SELECT Periodo_Proceso as Periodo,sum(CASE CONTEncComp.Tipo_Comprobante WHEN '+chr(39)+'01'+chr(39)+' THEN CONTDetComp.Valor_Debito ELSE 0 END) as Ing_Debito,sum(CASE CONTEncComp.Tipo_Comprobante WHEN '+chr(39)+'01'+chr(39)+' THEN CONTDetComp.Valor_Credito ELSE 0 END) as Ing_Credito, '+
    ' sum(CASE CONTEncComp.Tipo_Comprobante WHEN '+chr(39)+'02'+chr(39)+' THEN CONTDetComp.Valor_Debito ELSE 0 END) as Eg_Debito,sum(CASE CONTEncComp.Tipo_Comprobante WHEN '+chr(39)+'02'+chr(39)+' THEN CONTDetComp.Valor_Credito ELSE 0 END) as Eg_Credito' +
    ' FROM  CONTEncComp,CONTDetComp'+
    ' WHERE Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    '       CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante' +
    ' AND CONTEncComp.Empresa = CONTDetComp.Empresa'+
    ' GROUP BY Periodo_Proceso'+
    ' ORDER BY Periodo_Proceso','');
end;

procedure TMainForm.FacturacinVsIngresos1Click(Sender: TObject);
begin
  ReporteadorP(' T. Comp 03(Fact) VS T. Comp 01 (Ing.)','SELECT Periodo_Proceso as Periodo,sum(CASE CONTEncComp.Tipo_Comprobante WHEN '+chr(39)+'03'+chr(39)+' THEN CONTDetComp.Valor_Debito ELSE 0 END) as Fact_Debito,sum(CASE CONTEncComp.Tipo_Comprobante WHEN '+chr(39)+'03'+chr(39)+' THEN CONTDetComp.Valor_Credito ELSE 0 END) as Fact_Credito, '+
    ' sum(CASE CONTEncComp.Tipo_Comprobante WHEN '+chr(39)+'01'+chr(39)+' THEN CONTDetComp.Valor_Debito ELSE 0 END) as Ing_Debito,sum(CASE CONTEncComp.Tipo_Comprobante WHEN '+chr(39)+'01'+chr(39)+' THEN CONTDetComp.Valor_Credito ELSE 0 END) as Ing_Credito' +
    ' FROM  CONTEncComp,CONTDetComp'+
    ' WHERE Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    '       CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante' +
    ' AND CONTEncComp.Empresa = CONTDetComp.Empresa'+
    ' GROUP BY Periodo_Proceso'+
    ' ORDER BY Periodo_Proceso','');
end;

procedure TMainForm.ListadodeComprobantes2Click(Sender: TObject);
Var
  v1,v2,v3,v4: string;
begin
  v1:= InputBox('Periodo', 'Primer Periodo', DBLookupComboBox1.Text);
  v4:= InputBox('Periodo', 'Segundo Periodo', DBLookupComboBox1.Text);
  v2:= InputBox('Tipo Comprobante', 'Tipo', '03');
  v3:= InputBox('Cuenta', 'Cuenta', '41%');


  ReporteadorP('BASE PARA EL IVA','SELECT  CONTEncComp.Tipo_Comprobante +'+chr(39)+' - '+chr(39)+'+convert(varchar,CONTEncComp.Numero_Comprobante) as Comprobante,Convert(varchar,Fecha_Comprobante,103) as Fecha,Periodo_Proceso as Periodo'+
    ' ,CONTEncComp.Estado,CONTDetComp.Cuenta,CONTCuenta.Descripcion,Valor_Debito,Valor_Credito,'+chr(39)+' - '+chr(39)+' as P,CONTEncComp.Descripcion '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta'+
    ' WHERE CONTDetComp.cuenta = CONTCuenta.cuenta AND (CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' OR CONTEncComp.ESTADO = NULL) AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    '       CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    ' (CONTEncComp.Periodo_Proceso like ' + chr(39)+v1+chr(39)+ ' OR '+
    ' CONTEncComp.Periodo_Proceso like ' + chr(39)+v4+chr(39)+ ') AND '+
    ' CONTEncComp.Tipo_Comprobante like ' + chr(39)+v2+chr(39)+ ' AND '+
    ' CONTDetComp.Cuenta Like ' + chr(39)+v3+chr(39)+
    ' ORDER BY CONTEncComp.Tipo_Comprobante','');
end;

procedure TMainForm.IVA1Click(Sender: TObject);
Var
  v1,v3,v4: string;
begin
  v1:= InputBox('Periodo', 'Periodo', DBLookupComboBox1.Text);
  v4:= InputBox('Periodo', 'Periodo', DBLookupComboBox1.Text);
  v3:= InputBox('Cuenta', 'Cuenta', '2408%');


  ReporteadorP('IVA DESCONTABLE','SELECT  CONTEncComp.Tipo_Comprobante +'+chr(39)+' - '+chr(39)+'+convert(varchar,CONTEncComp.Numero_Comprobante) as Comprobante,Convert(varchar,Fecha_Comprobante,103) as Fecha,Periodo_Proceso as Periodo'+
    ' ,CONTEncComp.Estado,CONTDetComp.Cuenta,CONTCuenta.Descripcion,Valor_Debito,Valor_Credito,'+chr(39)+' - '+chr(39)+' as P,CONTEncComp.Descripcion '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta'+
    ' WHERE CONTDetComp.cuenta = CONTCuenta.cuenta AND (CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' OR CONTEncComp.ESTADO = NULL) AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    '       CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    ' (CONTEncComp.Periodo_Proceso like ' + chr(39)+v1+chr(39)+ ' OR '+
    ' CONTEncComp.Periodo_Proceso like ' + chr(39)+v4+chr(39)+ ') AND '+
    ' CONTDetComp.Cuenta Like ' + chr(39)+v3+chr(39)+
    ' ORDER BY CONTEncComp.Tipo_Comprobante','');
end;

procedure TMainForm.InformacinContable1Click(Sender: TObject);
begin
  ReporteadorP('','SELECT * FROM CONTEncComp inner join CONTDetComp on '
  +'     ( CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND'
  +'       CONTEncComp.Empresa = CONTDetComp.Empresa AND'
  +'       CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante )'

  +' left outer join CONTCentros on '
   +'       CONTDetComp.Centro_Costo = CONTCentros.Centro_Costo '

  +' left outer  join CONTTerce on '
    +'       CONTDetComp.Tercero = CONTTerce.Numero_Documento+CONTTerce.Sucursal AND'

  +' left outer  join CONTCuenta on '
  +'       CONTDetComp.Cuenta = CONTCuenta.Cuenta','');
  {
    ReporteadorP('','SELECT * FROM CONTEncComp,CONTDetComp,CONTCentros,CONTTerce,CONTCuenta'
  +' WHERE CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND'
  +'       CONTEncComp.Empresa = CONTDetComp.Empresa AND'
  +'       CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND'
  +'       CONTDetComp.Centro_Costo * = CONTCentros.Centro_Costo AND'
  +'       CONTDetComp.Tercero * = CONTTerce.Numero_Documento+CONTTerce.Sucursal AND'
  +'       CONTDetComp.Cuenta * = CONTCuenta.Cuenta','');
  }
end;

procedure TMainForm.CuadrodeMovimientosporMes1Click(Sender: TObject);
begin
  FTabContables := tFTabContables.create(application);
  try
    Datamodule1.MuestraconAcceso(FTabContables);
  except
    FTabContables.free;
  end;
end;

procedure TMainForm.P1Click(Sender: TObject);
begin
  ReporteadorP('Todos','SELECT CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,Periodo_Proceso as Periodo,left(CONTEncComp.Descripcion,20) as Descripcion,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero, left(CONTTerce.Primer_Apellido,30) as NomTercero,'+
    ' left(CONTDetComp.Centro_Costo,6) as CC,left(CONTDetComp.DocSoporte,15) as DocSoporte,CONTDetComp.Valor_Debito,CONTDetComp.Valor_Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta, CONTTerce '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+

    ' CONTDetComp.tercero = CONTTerce.numero_documento+CONTTerce.Sucursal AND '+

    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta '+
    ' ORDER BY fecha_comprobante ','');
end;

procedure TMainForm.ListadoTotal1Click(Sender: TObject);
var
  v1: string;
begin
  v1:= InputBox('Comprobante', 'Tipo', '01');

  ReporteadorP('Por Tipo Comp.','SELECT CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,Periodo_Proceso as Periodo,left(CONTEncComp.Descripcion,20) as Descripcion,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero,left(CONTDetComp.Centro_Costo,6) as CC,left(CONTDetComp.DocSoporte,15) as DocSoporte,CONTDetComp.Valor_Debito,CONTDetComp.Valor_Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+
    ' CONTEncComp.Tipo_Comprobante like ' + chr(39)+v1+chr(39)+
    ' ORDER BY fecha_comprobante ','');
end;

procedure TMainForm.ResumenTotal1Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Comprobante', 'Tipo', '01');
  v2:= InputBox('Comprobante', 'Cuenta', '110505');

  ReporteadorP('Por Tipo Comp. y Cuenta','SELECT CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,Periodo_Proceso as Periodo,left(CONTEncComp.Descripcion,20) as Descripcion,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero,left(CONTDetComp.Centro_Costo,6) as CC,left(CONTDetComp.DocSoporte,15) as DocSoporte,CONTDetComp.Valor_Debito,CONTDetComp.Valor_Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+
    ' CONTEncComp.Tipo_Comprobante Like ' + chr(39)+v1+chr(39) +
    ' AND CONTDetComp.Cuenta Like ' + chr(39)+v2+chr(39)+
    ' ORDER BY fecha_comprobante ','');
end;

procedure TMainForm.PorFecha1Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Comprobante', 'Tipo', '01');
  v2:= InputBox('Comprobante', 'Tercero', '79500567');

  ReporteadorP('Por Tipo Comp. y Tercero','SELECT CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,Periodo_Proceso as Periodo,left(CONTEncComp.Descripcion,20) as Descripcion,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero,left(CONTDetComp.Centro_Costo,6) as CC,left(CONTDetComp.DocSoporte,15) as DocSoporte,CONTDetComp.Valor_Debito,CONTDetComp.Valor_Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+
    ' CONTEncComp.Tipo_Comprobante Like ' + chr(39)+v1+chr(39) +
    ' AND CONTDetComp.Tercero Like ' + chr(39)+v2+chr(39)+
    ' ORDER BY fecha_comprobante ','');
end;

procedure TMainForm.Resumen1Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Comprobante', 'Tipo', '01');
  v2:= InputBox('Comprobante', 'CC', '9901');

  ReporteadorP('Por Tipo Comp. y CC','SELECT CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,Periodo_Proceso as Periodo,left(CONTEncComp.Descripcion,20) as Descripcion,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero,left(CONTDetComp.Centro_Costo,6) as CC,left(CONTDetComp.DocSoporte,15) as DocSoporte,CONTDetComp.Valor_Debito,CONTDetComp.Valor_Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+
    ' CONTEncComp.Tipo_Comprobante Like ' + chr(39)+v1+chr(39) +
    ' AND CONTDetComp.Centro_Costo Like ' + chr(39)+v2+chr(39)+
    ' ORDER BY fecha_comprobante ','');
end;

procedure TMainForm.yDocumento1Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Comprobante', 'Tipo', '01');
  v2:= InputBox('Comprobante', 'Doc. Soporte', '');

  ReporteadorP('Por Tipo Comp. y DocSoporte','SELECT CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,Periodo_Proceso as Periodo,left(CONTEncComp.Descripcion,20) as Descripcion,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero,left(CONTDetComp.Centro_Costo,6) as CC,left(CONTDetComp.DocSoporte,15) as DocSoporte,CONTDetComp.Valor_Debito,CONTDetComp.Valor_Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+
    ' CONTEncComp.Tipo_Comprobante Like ' + chr(39)+v1+chr(39) +
    ' AND CONTDetComp.DocSoporte Like ' + chr(39)+v2+chr(39)+
    ' ORDER BY fecha_comprobante ','');
end;

procedure TMainForm.yCta1Click(Sender: TObject);
var
  v1,v2,v3: string;
begin
  v1:= InputBox('Comprobante', 'Tipo', '01');
  v2:= InputBox('Comprobante', 'Periodo', DBLookupComboBox1.Text);
  v3:= InputBox('Comprobante', 'Cuenta', '110505');

  ReporteadorP('Consolidado Comprobantes','SELECT CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,Periodo_Proceso as Periodo,left(CONTEncComp.Descripcion,30) as Descripcion,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero,left(CONTDetComp.Centro_Costo,6) as CC,CONTDetComp.Valor_Debito,CONTDetComp.Valor_Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+
    ' CONTEncComp.Tipo_Comprobante Like ' + chr(39)+v1+chr(39) +
    ' AND CONTEncComp.Periodo_Proceso Like ' + chr(39)+v2+chr(39) +
    ' AND CONTDetComp.Cuenta Like ' + chr(39)+v3+chr(39),'');
end;

procedure TMainForm.odos2Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Comprobante', 'Tipo', '01');
  v2:= InputBox('Comprobante', 'Periodo', DBLookupComboBox1.Text);

  ReporteadorP('Por Tipo Comp. y Periodo','SELECT CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,Periodo_Proceso as Periodo,left(CONTEncComp.Descripcion,20) as Descripcion,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero,left(CONTDetComp.Centro_Costo,6) as CC,left(CONTDetComp.DocSoporte,15) as DocSoporte,CONTDetComp.Valor_Debito,CONTDetComp.Valor_Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+
    ' CONTEncComp.Tipo_Comprobante Like ' + chr(39)+v1+chr(39) +
    ' AND CONTEncComp.Periodo_Proceso Like ' + chr(39)+v2+chr(39)+
    ' ORDER BY fecha_comprobante ','');
end;

procedure TMainForm.odos3Click(Sender: TObject);
var
  v1: string;
begin
  v1:= InputBox('Comprobante', 'Periodo', DBLookupComboBox1.Text);

  ReporteadorP('Por Periodo Proceso','SELECT Periodo_Proceso as Periodo,CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,left(CONTEncComp.Descripcion,20) as Descripcion,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero, left(CONTTerce.Primer_Apellido,30) as NomTercero '+
    ' ,left(CONTDetComp.Centro_Costo,6) as CC,left(CONTDetComp.DocSoporte,15) as DocSoporte,CONTDetComp.Valor_Debito,CONTDetComp.Valor_Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta, CONTTerce '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+
    ' CONTDetComp.tercero = CONTTerce.numero_documento+CONTTerce.Sucursal AND '+
    ' CONTEncComp.Periodo_Proceso like ' + chr(39)+v1+chr(39) +
    ' ORDER BY fecha_comprobante ','');
end;

procedure TMainForm.yCuenta2Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Comprobante', 'Periodo', DBLookupComboBox1.Text);
  v2:= InputBox('Comprobante', 'Cuenta', '110505');

  ReporteadorP('Por Periodo Proceso y Cuenta','SELECT Periodo_Proceso as Periodo,CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,left(CONTEncComp.Descripcion,20) as Descripcion,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero,left(CONTTerce.Primer_Apellido,30) as NomTercero,left(CONTDetComp.Centro_Costo,6) as CC,'+
    ' left(CONTDetComp.DocSoporte,15) as DocSoporte,CONTDetComp.Valor_Debito,CONTDetComp.Valor_Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta, CONTTerce '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+

    ' CONTDetComp.tercero = CONTTerce.numero_documento+CONTTerce.Sucursal AND '+

    ' CONTEncComp.Periodo_Proceso like ' + chr(39)+v1+chr(39) +
    ' AND CONTDetComp.Cuenta like ' + chr(39)+v2+chr(39) +
    ' ORDER BY fecha_comprobante ','');
end;

procedure TMainForm.yTercero1Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Comprobante', 'Periodo', DBLookupComboBox1.Text);
  v2:= InputBox('Comprobante', 'Tercero', '79500567');

  ReporteadorP('Por Periodo Proceso y Tercero','SELECT Periodo_Proceso as Periodo,CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,left(CONTEncComp.Descripcion,20) as Descripcion,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero, left(CONTTerce.Primer_Apellido,30) as NomTercero ,'+
    ' left(CONTDetComp.Centro_Costo,6) as CC,left(CONTDetComp.DocSoporte,15) as DocSoporte,CONTDetComp.Valor_Debito,CONTDetComp.Valor_Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta, CONTTerce '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+
    ' CONTDetComp.tercero = CONTTerce.numero_documento AND '+
    ' CONTEncComp.Periodo_Proceso like ' + chr(39)+v1+chr(39) +
    ' AND CONTDetComp.Tercero Like ' + chr(39)+v2+chr(39)+
    ' ORDER BY fecha_comprobante ','');
end;

procedure TMainForm.yCC1Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Comprobante', 'Periodo', DBLookupComboBox1.Text);
  v2:= InputBox('Comprobante', 'CC', '9901');

  ReporteadorP('Por Periodo Proceso y CC','SELECT Periodo_Proceso as Periodo,CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,left(CONTEncComp.Descripcion,20) as Descripcion,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero, left(CONTTerce.Primer_Apellido,30) as NomTercero  ,'+
    ' left(CONTDetComp.Centro_Costo,6) as CC,left(CONTDetComp.DocSoporte,15) as DocSoporte,CONTDetComp.Valor_Debito,CONTDetComp.Valor_Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta, CONTTerce '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+
    ' CONTDetComp.tercero = CONTTerce.numero_documento+CONTTerce.Sucursal AND '+
    ' CONTEncComp.Periodo_Proceso like ' + chr(39)+v1+chr(39) +
    ' AND CONTDetComp.Centro_Costo Like ' + chr(39)+v2+chr(39)+
    ' ORDER BY fecha_comprobante ','');
end;

procedure TMainForm.yDocumento2Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Comprobante', 'Periodo', DBLookupComboBox1.Text);
  v2:= InputBox('Comprobante', 'DocSoporte', '');

  ReporteadorP('Por Periodo Proceso y DocSoporte','SELECT Periodo_Proceso as Periodo,CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,left(CONTEncComp.Descripcion,20) as Descripcion,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero, left(CONTTerce.Primer_Apellido,30) as NomTercero, '+
    ' left(CONTDetComp.Centro_Costo,6) as CC,left(CONTDetComp.DocSoporte,15) as DocSoporte,CONTDetComp.Valor_Debito,CONTDetComp.Valor_Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta, CONTTerce '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+
    ' CONTDetComp.tercero = CONTTerce.numero_documento+CONTTerce.Sucursal AND '+
    ' CONTEncComp.Periodo_Proceso like ' + chr(39)+v1+chr(39) +
    ' AND CONTDetComp.DocSoporte Like ' + chr(39)+v2+chr(39)+
    ' ORDER BY fecha_comprobante ','');
end;

procedure TMainForm.yTercero2Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Comprobante', 'Cuenta', '110505');
  v2:= InputBox('Comprobante', 'Tercero', '79500567');

  ReporteadorP('Por Cuenta y Tercero','SELECT Periodo_Proceso as Periodo,CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,left(CONTEncComp.Descripcion,20) as Descripcion,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero, left(CONTTerce.Primer_Apellido,30) as NomTercero,'+
    ' left(CONTDetComp.Centro_Costo,6) as CC,left(CONTDetComp.DocSoporte,15) as DocSoporte,CONTDetComp.Valor_Debito,CONTDetComp.Valor_Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta, CONTTerce '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+

    ' CONTDetComp.tercero = CONTTerce.numero_documento+CONTTerce.Sucursal AND '+

    ' CONTDetComp.Cuenta like ' + chr(39)+v1+chr(39) +
    ' AND CONTDetComp.Tercero Like ' + chr(39)+v2+chr(39)+
    ' ORDER BY fecha_comprobante ','');
end;

procedure TMainForm.yCC2Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Comprobante', 'Cuenta', '110505');
  v2:= InputBox('Comprobante', 'CC', '9901');

  ReporteadorP('Por Cuenta y Centro_Costo','SELECT Periodo_Proceso as Periodo,CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,left(CONTEncComp.Descripcion,20) as Descripcion,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero, left(CONTTerce.Primer_Apellido,30) as NomTercero,'+
    ' left(CONTDetComp.Centro_Costo,6) as CC,left(CONTDetComp.DocSoporte,15) as DocSoporte,CONTDetComp.Valor_Debito,CONTDetComp.Valor_Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta, CONTTerce '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+

    ' CONTDetComp.tercero = CONTTerce.numero_documento+CONTTerce.Sucursal AND '+

    ' CONTDetComp.Cuenta like ' + chr(39)+v1+chr(39) +
    ' AND CONTDetComp.Centro_Costo Like ' + chr(39)+v2+chr(39)+
    ' ORDER BY fecha_comprobante ','');
end;

procedure TMainForm.yDocumento3Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Comprobante', 'Cuenta', '110505');
  v2:= InputBox('Comprobante', 'DocSoporte', '');

  ReporteadorP('Por Cuenta y DocSoporte','SELECT Periodo_Proceso as Periodo,CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,left(CONTEncComp.Descripcion,20) as Descripcion,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero, left(CONTTerce.Primer_Apellido,30) as NomTercero,'+
    ' left(CONTDetComp.Centro_Costo,6) as CC,left(CONTDetComp.DocSoporte,15) as DocSoporte,CONTDetComp.Valor_Debito,CONTDetComp.Valor_Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta, CONTTerce '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+

    ' CONTDetComp.tercero = CONTTerce.numero_documento+CONTTerce.Sucursal AND '+

    ' CONTDetComp.Cuenta like ' + chr(39)+v1+chr(39) +
    ' AND CONTDetComp.DocSoporte Like ' + chr(39)+v2+chr(39)+
    ' ORDER BY fecha_comprobante ','');
end;

procedure TMainForm.odos4Click(Sender: TObject);
var
  v1: string;
begin
  v1:= InputBox('Comprobante', 'Cuenta', '110505');
                                                 //ed
  ReporteadorP('Por Cuenta','SELECT Periodo_Proceso as Periodo,CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,left(CONTEncComp.Descripcion,20) as Descripcion,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero, left(CONTTerce.Primer_Apellido,30) as NomTercero,'+
    'left(CONTDetComp.Centro_Costo,6) as CC,left(CONTDetComp.DocSoporte,15) as DocSoporte,CONTDetComp.Valor_Debito,CONTDetComp.Valor_Credito '+
    ' FROM  CONTEncComp inner join CONTDetComp on ' +
    ' ( CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    '   CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    '   CONTEncComp.Empresa = CONTDetComp.Empresa ) '+

    ' inner join CONTCuenta on ' +
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta  '+

    ' left outer join CONTTerce  on'+
    ' CONTDetComp.tercero = CONTTerce.numero_documento+CONTTerce.Sucursal  '+

    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+
    ' AND CONTDetComp.Cuenta like ' + chr(39)+v1+chr(39) +
    ' ORDER BY fecha_comprobante ','');
    {
      ReporteadorP('Por Cuenta','SELECT Periodo_Proceso as Periodo,CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,left(CONTEncComp.Descripcion,20) as Descripcion,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero, left(CONTTerce.Primer_Apellido,30) as NomTercero,'+
    'left(CONTDetComp.Centro_Costo,6) as CC,left(CONTDetComp.DocSoporte,15) as DocSoporte,CONTDetComp.Valor_Debito,CONTDetComp.Valor_Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta, CONTTerce '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+

    ' CONTDetComp.tercero * = CONTTerce.numero_documento+CONTTerce.Sucursal AND '+


    ' CONTDetComp.Cuenta like ' + chr(39)+v1+chr(39) +
    ' ORDER BY fecha_comprobante ','');
    }

end;

procedure TMainForm.yCC3Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Comprobante', 'Tercero', '79500567');
  v2:= InputBox('Comprobante', 'CC', '9901');

  ReporteadorP('Por Tercero y Centro_Costo','SELECT left(CONTDetComp.Tercero,15) as Tercero, left(CONTTerce.Primer_Apellido,30) as NomTercero,Periodo_Proceso as Periodo,CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,left(CONTEncComp.Descripcion,20) as Descripcion,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Centro_Costo,6) as CC,left(CONTDetComp.DocSoporte,15) as DocSoporte,CONTDetComp.Valor_Debito,CONTDetComp.Valor_Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta, CONTTerce '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+

    ' CONTDetComp.tercero = CONTTerce.numero_documento+CONTTerce.Sucursal AND '+

    ' CONTDetComp.Tercero Like ' + chr(39)+v1+chr(39) +
    ' AND CONTDetComp.Centro_Costo Like ' + chr(39)+v2+chr(39)+
    ' ORDER BY fecha_comprobante ','');
end;

procedure TMainForm.yDocumento4Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Comprobante', 'Tercero', '79500567');
  v2:= InputBox('Comprobante', 'Documento', '');

  ReporteadorP('Por Tercero y Documento','SELECT left(CONTDetComp.Tercero,15) as Tercero, left(CONTTerce.Primer_Apellido,30) as NomTercero,Periodo_Proceso as Periodo,CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,left(CONTEncComp.Descripcion,20) as Descripcion,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Centro_Costo,6) as CC,left(CONTDetComp.DocSoporte,15) as DocSoporte,CONTDetComp.Valor_Debito,CONTDetComp.Valor_Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta, CONTTerce '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+

    ' CONTDetComp.tercero = CONTTerce.numero_documento+CONTTerce.Sucursal AND '+

    ' CONTDetComp.Tercero Like ' + chr(39)+v1+chr(39) +
    ' AND CONTDetComp.DocSoporte Like ' + chr(39)+v2+chr(39)+
    ' ORDER BY fecha_comprobante ','');
end;

procedure TMainForm.odos5Click(Sender: TObject);
var
  v1: string;
begin
  v1:= InputBox('Comprobante', 'Tercero', '79500567');

  ReporteadorP('Por Tercero','SELECT left(CONTDetComp.Tercero,15) as Tercero, left(CONTTerce.Primer_Apellido,30) as NomTercero,Periodo_Proceso as Periodo,CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,left(CONTEncComp.Descripcion,20) as Descripcion,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Centro_Costo,6) as CC,left(CONTDetComp.DocSoporte,15) as DocSoporte,CONTDetComp.Valor_Debito,CONTDetComp.Valor_Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta, CONTTerce '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+

    ' CONTDetComp.tercero = CONTTerce.numero_documento+CONTTerce.Sucursal AND '+

    ' CONTDetComp.Tercero Like ' + chr(39)+v1+chr(39) +
    ' ORDER BY fecha_comprobante ','');
end;

procedure TMainForm.yDocumento5Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Comprobante', 'Centro Costo', '9901');
  v2:= InputBox('Comprobante', 'Documento', '');

  ReporteadorP('Por Centro_Costo y Documento','SELECT left(CONTDetComp.Centro_Costo,6) as CC,CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,Periodo_Proceso as Periodo,left(CONTEncComp.Descripcion,20) as Descripcion,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero, left(CONTTerce.Primer_Apellido,30) as NomTercero,'+
    ' left(CONTDetComp.DocSoporte,15) as DocSoporte,CONTDetComp.Valor_Debito,CONTDetComp.Valor_Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta, CONTTerce '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+

    ' CONTDetComp.tercero = CONTTerce.numero_documento+CONTTerce.Sucursal AND '+

    ' CONTDetComp.Centro_Costo Like ' + chr(39)+v1+chr(39) +
    ' AND CONTDetComp.DocSoporte Like ' + chr(39)+v2+chr(39)+
    ' ORDER BY fecha_comprobante ','');
end;

procedure TMainForm.odos6Click(Sender: TObject);
var
  v1: string;
begin
  v1:= InputBox('Comprobante', 'Centro Costo', '9901');

  ReporteadorP('Por Centro_Costo','SELECT left(CONTDetComp.Centro_Costo,6) as CC,CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,Periodo_Proceso as Periodo,left(CONTEncComp.Descripcion,20) as Descripcion,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero, left(CONTTerce.Primer_Apellido,30) as NomTercero,left(CONTDetComp.DocSoporte,15) as DocSoporte,CONTDetComp.Valor_Debito,CONTDetComp.Valor_Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta, CONTTerce '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+

    ' CONTDetComp.tercero = CONTTerce.numero_documento+CONTTerce.Sucursal AND '+

    ' CONTDetComp.Centro_Costo Like ' + chr(39)+v1+chr(39) +
    ' ORDER BY fecha_comprobante ','');
end;

procedure TMainForm.PorDocumento1Click(Sender: TObject);
var
  v1: string;
begin
  v1:= InputBox('Comprobante', 'Documento', '');

  ReporteadorP('Por Documento','SELECT left(CONTDetComp.Centro_Costo,6) as CC,CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,Periodo_Proceso as Periodo,left(CONTEncComp.Descripcion,20) as Descripcion,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero, left(CONTTerce.Primer_Apellido,30) as NomTercero,'+
    ' left(CONTDetComp.DocSoporte,15) as DocSoporte,CONTDetComp.Valor_Debito,CONTDetComp.Valor_Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta, CONTTerce '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+

    ' CONTDetComp.tercero = CONTTerce.numero_documento+CONTTerce.Sucursal AND '+

    ' CONTDetComp.DocSoporte Like ' + chr(39)+v1+chr(39) +
    ' ORDER BY fecha_comprobante ','');
end;

procedure TMainForm.yTercero3Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Comprobante', 'Cuenta', '110505');
  v2:= InputBox('Comprobante', 'Tercero', '79500567');

  ReporteadorP('Por Cuenta y Tercero','SELECT Periodo_Proceso as Periodo,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero,left(CONTDetComp.Centro_Costo,6) as CC,left(CONTDetComp.DocSoporte,15) as DocSoporte,'+
    ' sum(CONTDetComp.Valor_Debito) as Tot_Debito,sum(CONTDetComp.Valor_Credito) as Tot_Credito'+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+
    ' CONTDetComp.Cuenta Like ' + chr(39)+v1+chr(39) +
    ' AND CONTDetComp.Tercero Like ' + chr(39)+v2+chr(39)+
    ' GROUP BY Periodo_Proceso,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) ,left(CONTDetComp.Tercero,15) ,left(CONTDetComp.Centro_Costo,6) ,CONTDetComp.DocSoporte ','');
end;

procedure TMainForm.odos1Click(Sender: TObject);
begin
  ReporteadorP('Todos','SELECT Periodo_Proceso as Periodo,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero,left(CONTDetComp.Centro_Costo,6) as CC,'+
    ' left(CONTDetComp.DocSoporte,15) as DocSoporte,sum(CONTDetComp.Valor_Debito) as Tot_Debito,sum(CONTDetComp.Valor_Credito) as Tot_Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta '+
    ' GROUP BY Periodo_Proceso,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25),left(CONTDetComp.Tercero,15),left(CONTDetComp.Centro_Costo,6),CONTDetComp.DocSoporte ','');
end;

procedure TMainForm.yCuenta1Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Comprobante', 'Periodo', DBLookupComboBox1.Text);
  v2:= InputBox('Comprobante', 'Cuenta', '110505');

  ReporteadorP('Por Periodo Proceso y Cuenta','SELECT Periodo_Proceso as Periodo,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero,left(CONTDetComp.Centro_Costo,6) as CC,'+
    ' left(CONTDetComp.DocSoporte,15) as DocSoporte,sum(CONTDetComp.Valor_Debito) as Tot_Debito,sum(CONTDetComp.Valor_Credito) as Tot_Credito'+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+
    ' CONTEncComp.Periodo_Proceso Like ' + chr(39)+v1+chr(39) +
    ' AND CONTDetComp.Cuenta Like ' + chr(39)+v2+chr(39)+
    ' GROUP BY Periodo_Proceso,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) ,left(CONTDetComp.Tercero,15) ,left(CONTDetComp.Centro_Costo,6) ,CONTDetComp.DocSoporte ','');
end;

procedure TMainForm.yTercero4Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Comprobante', 'Periodo', DBLookupComboBox1.Text);
  v2:= InputBox('Comprobante', 'Tercero', '79500567');

  ReporteadorP('Por Periodo Proceso y Tercero','SELECT Periodo_Proceso as Periodo,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero,left(CONTDetComp.Centro_Costo,6) as CC,'+
    ' left(CONTDetComp.DocSoporte,15) as DocSoporte,sum(CONTDetComp.Valor_Debito) as Tot_Debito,sum(CONTDetComp.Valor_Credito) as Tot_Credito'+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+
    ' CONTEncComp.Periodo_Proceso Like ' + chr(39)+v1+chr(39) +
    ' AND CONTDetComp.Tercero Like ' + chr(39)+v2+chr(39)+
    ' GROUP BY Periodo_Proceso,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) ,left(CONTDetComp.Tercero,15) ,left(CONTDetComp.Centro_Costo,6) ,CONTDetComp.DocSoporte ','');
end;

procedure TMainForm.yCC6Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Comprobante', 'Periodo', DBLookupComboBox1.Text);
  v2:= InputBox('Comprobante', 'CC', '');

  ReporteadorP('Por Periodo Proceso y CC','SELECT Periodo_Proceso as Periodo,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero,left(CONTDetComp.Centro_Costo,6) as CC,'+
    ' left(CONTDetComp.DocSoporte,15) as DocSoporte,sum(CONTDetComp.Valor_Debito) as Tot_Debito,sum(CONTDetComp.Valor_Credito) as Tot_Credito'+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+
    ' CONTEncComp.Periodo_Proceso Like ' + chr(39)+v1+chr(39) +
    ' AND CONTDetComp.Centro_Costo Like ' + chr(39)+v2+chr(39)+
    ' GROUP BY Periodo_Proceso,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) ,left(CONTDetComp.Tercero,15) ,left(CONTDetComp.Centro_Costo,6) ,CONTDetComp.DocSoporte ','');
end;

procedure TMainForm.yDocumento9Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Comprobante', 'Periodo', DBLookupComboBox1.Text);
  v2:= InputBox('Comprobante', 'DocSoporte', '');

  ReporteadorP('Por Periodo Proceso y DocSoporte','SELECT Periodo_Proceso as Periodo,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero,left(CONTDetComp.Centro_Costo,6) as CC,'+
    ' left(CONTDetComp.DocSoporte,15) as DocSoporte,sum(CONTDetComp.Valor_Debito) as Tot_Debito,sum(CONTDetComp.Valor_Credito) as Tot_Credito'+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+
    ' CONTEncComp.Periodo_Proceso Like ' + chr(39)+v1+chr(39) +
    ' AND CONTDetComp.DocSoporte Like ' + chr(39)+v2+chr(39)+
    ' GROUP BY Periodo_Proceso,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) ,left(CONTDetComp.Tercero,15) ,left(CONTDetComp.Centro_Costo,6) ,CONTDetComp.DocSoporte ','');
end;

procedure TMainForm.odos10Click(Sender: TObject);
var
  v1: string;
begin
  v1:= InputBox('Comprobante', 'Periodo', DBLookupComboBox1.Text);

  ReporteadorP('Por Periodo Proceso','SELECT Periodo_Proceso as Periodo,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero,left(CONTDetComp.Centro_Costo,6) as CC,'+
    ' left(CONTDetComp.DocSoporte,15) as DocSoporte,sum(CONTDetComp.Valor_Debito) as Tot_Debito,sum(CONTDetComp.Valor_Credito) as Tot_Credito'+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+
    ' CONTEncComp.Periodo_Proceso Like ' + chr(39)+v1+chr(39) +
    ' GROUP BY Periodo_Proceso,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) ,left(CONTDetComp.Tercero,15) ,left(CONTDetComp.Centro_Costo,6) ,CONTDetComp.DocSoporte ','');
end;

procedure TMainForm.yCC5Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Comprobante', 'Cuenta', '110505');
  v2:= InputBox('Comprobante', 'CC', '9901');

  ReporteadorP('Por Cuenta y CC','SELECT Periodo_Proceso as Periodo,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero,left(CONTDetComp.Centro_Costo,6) as CC,'+
    ' left(CONTDetComp.DocSoporte,15) as DocSoporte,sum(CONTDetComp.Valor_Debito) as Tot_Debito,sum(CONTDetComp.Valor_Credito) as Tot_Credito'+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+
    ' CONTDetComp.Cuenta Like ' + chr(39)+v1+chr(39) +
    ' AND CONTDetComp.Centro_Costo Like ' + chr(39)+v2+chr(39)+
    ' GROUP BY Periodo_Proceso,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) ,left(CONTDetComp.Tercero,15) ,left(CONTDetComp.Centro_Costo,6) ,CONTDetComp.DocSoporte ','');
end;

procedure TMainForm.yDocumento8Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Comprobante', 'Cuenta', '110505');
  v2:= InputBox('Comprobante', 'DocSoporte', '');

  ReporteadorP('Por Cuenta y DocSoporte','SELECT Periodo_Proceso as Periodo,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero,left(CONTDetComp.Centro_Costo,6) as CC,'+
    ' left(CONTDetComp.DocSoporte,15) as DocSoporte,sum(CONTDetComp.Valor_Debito) as Tot_Debito,sum(CONTDetComp.Valor_Credito) as Tot_Credito'+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+
    ' CONTDetComp.Cuenta Like ' + chr(39)+v1+chr(39) +
    ' AND CONTDetComp.DocSoporte Like ' + chr(39)+v2+chr(39)+
    ' GROUP BY Periodo_Proceso,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) ,left(CONTDetComp.Tercero,15) ,left(CONTDetComp.Centro_Costo,6) ,CONTDetComp.DocSoporte ','');
end;

procedure TMainForm.odos9Click(Sender: TObject);
var
  v1: string;
begin
  v1:= InputBox('Comprobante', 'Cuenta', '110505');

  ReporteadorP('Por Cuenta','SELECT Periodo_Proceso as Periodo,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero,left(CONTDetComp.Centro_Costo,6) as CC,'+
    ' left(CONTDetComp.DocSoporte,15) as DocSoporte,sum(CONTDetComp.Valor_Debito) as Tot_Debito,sum(CONTDetComp.Valor_Credito) as Tot_Credito'+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+
    ' CONTDetComp.Cuenta Like ' + chr(39)+v1+chr(39) +
    ' GROUP BY Periodo_Proceso,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) ,left(CONTDetComp.Tercero,15) ,left(CONTDetComp.Centro_Costo,6) ,CONTDetComp.DocSoporte ','');
end;

procedure TMainForm.yCC4Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Comprobante', 'Tercero', '79500567');
  v2:= InputBox('Comprobante', 'CC', '9901');

  ReporteadorP('Por Tercero y CC','SELECT Periodo_Proceso as Periodo,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero,left(CONTDetComp.Centro_Costo,6) as CC,'+
    ' left(CONTDetComp.DocSoporte,15) as DocSoporte,sum(CONTDetComp.Valor_Debito) as Tot_Debito,sum(CONTDetComp.Valor_Credito) as Tot_Credito'+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+
    ' CONTDetComp.Tercero Like ' + chr(39)+v1+chr(39) +
    ' AND CONTDetComp.Centro_Costo Like ' + chr(39)+v2+chr(39)+
    ' GROUP BY Periodo_Proceso,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) ,left(CONTDetComp.Tercero,15) ,left(CONTDetComp.Centro_Costo,6) ,CONTDetComp.DocSoporte ','');
end;

procedure TMainForm.yDocumento7Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Comprobante', 'Tercero', '79500567');
  v2:= InputBox('Comprobante', 'DocSoporte', '9901');

  ReporteadorP('Por Tercero y DocSoporte','SELECT Periodo_Proceso as Periodo,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero,left(CONTDetComp.Centro_Costo,6) as CC,'+
    'left(CONTDetComp.DocSoporte,15) as DocSoporte,sum(CONTDetComp.Valor_Debito) as Tot_Debito,sum(CONTDetComp.Valor_Credito) as Tot_Credito'+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+
    ' CONTDetComp.Tercero Like ' + chr(39)+v1+chr(39) +
    ' AND CONTDetComp.DocSoporte Like ' + chr(39)+v2+chr(39)+
    ' GROUP BY Periodo_Proceso,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) ,left(CONTDetComp.Tercero,15) ,left(CONTDetComp.Centro_Costo,6) ,CONTDetComp.DocSoporte ','');
end;

procedure TMainForm.odos8Click(Sender: TObject);
var
  v1: string;
begin
  v1:= InputBox('Comprobante', 'Tercero', '79500567');

  ReporteadorP('Por Tercero','SELECT Periodo_Proceso as Periodo,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero,left(CONTDetComp.Centro_Costo,6) as CC,'+
    ' left(CONTDetComp.DocSoporte,15) as DocSoporte,sum(CONTDetComp.Valor_Debito) as Tot_Debito,sum(CONTDetComp.Valor_Credito) as Tot_Credito'+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+
    ' CONTDetComp.Tercero Like ' + chr(39)+v1+chr(39) +
    ' GROUP BY Periodo_Proceso,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) ,left(CONTDetComp.Tercero,15) ,left(CONTDetComp.Centro_Costo,6) ,CONTDetComp.DocSoporte ','');
end;

procedure TMainForm.yDocumento6Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Comprobante', 'Centro Costo', '9901');
  v2:= InputBox('Comprobante', 'DocSoporte', '');

  ReporteadorP('Por Centro Costo y DocSoporte','SELECT Periodo_Proceso as Periodo,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero,left(CONTDetComp.Centro_Costo,6) as CC,'+
    ' left(CONTDetComp.DocSoporte,15) as DocSoporte,sum(CONTDetComp.Valor_Debito) as Tot_Debito,sum(CONTDetComp.Valor_Credito) as Tot_Credito'+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+
    ' CONTDetComp.Centro_Costo Like ' + chr(39)+v1+chr(39) +
    ' AND CONTDetComp.DocSoporte Like ' + chr(39)+v2+chr(39)+
    ' GROUP BY Periodo_Proceso,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) ,left(CONTDetComp.Tercero,15) ,left(CONTDetComp.Centro_Costo,6) ,CONTDetComp.DocSoporte ','');
end;

procedure TMainForm.odos7Click(Sender: TObject);
var
  v1: string;
begin
  v1:= InputBox('Comprobante', 'Centro Costo', '9901');

  ReporteadorP('Por Centro Costo','SELECT Periodo_Proceso as Periodo,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero,left(CONTDetComp.Centro_Costo,6) as CC,'+
    ' left(CONTDetComp.DocSoporte,15) as DocSoporte,sum(CONTDetComp.Valor_Debito) as Tot_Debito,sum(CONTDetComp.Valor_Credito) as Tot_Credito'+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+
    ' CONTDetComp.Centro_Costo Like ' + chr(39)+v1+chr(39) +
    ' GROUP BY Periodo_Proceso,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) ,left(CONTDetComp.Tercero,15) ,left(CONTDetComp.Centro_Costo,6) ,CONTDetComp.DocSoporte ','');
end;

procedure TMainForm.PorDocumento2Click(Sender: TObject);
var
  v2: string;
begin
  v2:= InputBox('Comprobante', 'DocSoporte', '');

  ReporteadorP('Por DocSoporte','SELECT Periodo_Proceso as Periodo,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero,left(CONTDetComp.Centro_Costo,6) as CC,'+
    ' left(CONTDetComp.DocSoporte,15) as DocSoporte,sum(CONTDetComp.Valor_Debito) as Tot_Debito,sum(CONTDetComp.Valor_Credito) as Tot_Credito'+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+
    ' CONTDetComp.DocSoporte Like ' + chr(39)+v2+chr(39)+
    ' GROUP BY Periodo_Proceso,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) ,left(CONTDetComp.Tercero,15) ,left(CONTDetComp.Centro_Costo,6) ,CONTDetComp.DocSoporte ','');
end;

procedure TMainForm.ComprobantesdeunDia1Click(Sender: TObject);
var
  Ano,Mes,Dia: string;
begin
  Ano:= InputBox('Fecha', 'Año', '2007');
  Mes:= InputBox('Fecha', 'Mes', '7');
  Dia:= InputBox('Fecha', 'Dia', '26');

  ReporteadorP('Listado Diario','SELECT CONTENCComp.Tipo_Comprobante as Tp_Comp,CONTENCComp.Numero_Comprobante as No_Comp,Fecha_Comprobante as Fec_Comp,left(Descripcion,40) as Descripcion,Tercero, left(CONTTerce.Primer_Apellido,30),Centro_Costo,Valor_Debito,Valor_Credito'+
    ' FROM CONTDETComp,CONTENCComp, CONTTerce '+
    ' WHERE CONTDETComp.Tipo_Comprobante = CONTENCComp.Tipo_Comprobante AND '+
    ' CONTDetComp.Empresa = CONTencComp.Empresa AND '+
    ' CONTDETComp.Numero_Comprobante = CONTENCComp.Numero_Comprobante AND '+

    ' CONTDetComp.tercero = CONTTerce.numero_documento+CONTTerce.Sucursal AND '+

    ' year(Fecha_Comprobante) Like '+chr(39)+Ano+chr(39)+' AND' +
    ' Month(Fecha_Comprobante) Like '+chr(39)+Mes+chr(39)+' AND' +
    ' Day(Fecha_Comprobante) = '+chr(39)+Dia+chr(39),'');
end;

procedure TMainForm.InformeConsolidado1Click(Sender: TObject);
begin
  ReporteadorP('Resumen IVA','SELECT  Left(Periodo_Proceso,4) as Año,CASE right(Periodo_Proceso,2) WHEN ' + chr(39)+'01'+chr(39)+ ' THEN 1 WHEN ' + chr(39)+'02'+chr(39)+ ' THEN 1 WHEN ' + chr(39)+'03'+chr(39)+ ' THEN 2 WHEN ' + chr(39)+'04'+chr(39)+ ' THEN 2 '+
    ' WHEN ' + chr(39)+'05'+chr(39)+ ' THEN 3 WHEN ' + chr(39)+'06'+chr(39)+ ' THEN 3 WHEN ' + chr(39)+'07'+chr(39)+ ' THEN 4 WHEN ' + chr(39)+'08'+chr(39)+ ' THEN 4 WHEN ' + chr(39)+'09'+chr(39)+
    ' THEN 5 WHEN ' + chr(39)+'10'+chr(39)+ ' THEN 5 WHEN ' + chr(39)+'11'+chr(39)+ ' THEN 6 WHEN ' + chr(39)+'12'+chr(39)+ ' THEN 6 END as Periodo '+
    ' ,sum(case left(cuenta,2) when ' + chr(39)+'41'+chr(39)+ ' then Valor_Debito else 0 end) as Base_Deb_41,sum(case left(cuenta,2) when ' + chr(39)+'41'+chr(39)+ ' then Valor_Credito else 0 end) as Base_Cred_41'+
    ' ,sum(case left(cuenta,4) when ' + chr(39)+'2408'+chr(39)+ ' then Valor_Debito else 0 end) as IVA_Deb_2408,sum(case left(cuenta,6) when ' + chr(39)+'240802'+chr(39)+ ' then Valor_Credito else 0 end) as IVA_Cred_2408'+
    ' ,sum(case left(cuenta,6) when ' + chr(39)+'135517'+chr(39)+ ' then Valor_Debito else 0 end) as ReteIVA_Deb_135517,sum(case left(cuenta,4) when ' + chr(39)+'1355'+chr(39)+ ' then Valor_Credito else 0 end) as ReteIVA_Cred_135517'+
    ' ,sum(case left(cuenta,6) when ' + chr(39)+'511570'+chr(39)+ ' then Valor_Debito else 0 end) as IVADes_Deb_511570,sum(case left(cuenta,4) when ' + chr(39)+'2368'+chr(39)+ ' then Valor_Credito else 0 end) as IVADes_Cred_511570'+
    ' FROM  CONTEncComp,CONTDetComp'+
    ' WHERE (Estado <> '+chr(39)+'A'+chr(39)+' OR ESTADO = NULL) AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    '       CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante'+
    ' AND CONTEncComp.Empresa = CONTDetComp.Empresa '+
    ' GROUP BY Left(Periodo_Proceso,4),CASE right(Periodo_Proceso,2) WHEN ' + chr(39)+'01'+chr(39)+ ' THEN 1 WHEN ' + chr(39)+'02'+chr(39)+ ' THEN 1 WHEN ' + chr(39)+'03'+chr(39)+ ' THEN 2 WHEN ' + chr(39)+'04'+chr(39)+ ' THEN 2 '+
    ' WHEN ' + chr(39)+'05'+chr(39)+ ' THEN 3 WHEN ' + chr(39)+'06'+chr(39)+ ' THEN 3 WHEN ' + chr(39)+'07'+chr(39)+ ' THEN 4 WHEN ' + chr(39)+'08'+chr(39)+ ' THEN 4 WHEN ' + chr(39)+'09'+chr(39)+
    ' THEN 5 WHEN ' + chr(39)+'10'+chr(39)+ ' THEN 5 WHEN ' + chr(39)+'11'+chr(39)+ ' THEN 6 WHEN ' + chr(39)+'12'+chr(39)+ ' THEN 6 END '+
    ' ORDER BY Left(Periodo_Proceso,4),CASE right(Periodo_Proceso,2) WHEN ' + chr(39)+'01'+chr(39)+ ' THEN 1 WHEN ' + chr(39)+'02'+chr(39)+ ' THEN 1 WHEN ' + chr(39)+'03'+chr(39)+ ' THEN 2 WHEN ' + chr(39)+'04'+chr(39)+ ' THEN 2 '+
    ' WHEN ' + chr(39)+'05'+chr(39)+ ' THEN 3 WHEN ' + chr(39)+'06'+chr(39)+ ' THEN 3 WHEN ' + chr(39)+'07'+chr(39)+ ' THEN 4 WHEN ' + chr(39)+'08'+chr(39)+ ' THEN 4 WHEN ' + chr(39)+'09'+chr(39)+
    ' THEN 5 WHEN ' + chr(39)+'10'+chr(39)+ ' THEN 5 WHEN ' + chr(39)+'11'+chr(39)+ ' THEN 6 WHEN ' + chr(39)+'12'+chr(39)+ ' THEN 6 END ','');
end;

procedure TMainForm.InformeConsolidado2Click(Sender: TObject);
begin
  ReporteadorP('Resumen Para Pago de Impuestos','SELECT  Periodo_Proceso as Periodo'+
    ' ,sum(case left(cuenta,2) when ' + chr(39)+'41'+chr(39)+ ' then Valor_Debito else 0 end) as Base_Debito,sum(case left(cuenta,2) when ' + chr(39)+'41'+chr(39)+ ' then Valor_Credito else 0 end) as Base_Credito'+
    ' ,sum(case left(cuenta,6) when ' + chr(39)+'240802'+chr(39)+ ' then Valor_Debito else 0 end) as IVA_Debito,sum(case left(cuenta,6) when ' + chr(39)+'240802'+chr(39)+ ' then Valor_Credito else 0 end) as IVA_Credito'+
    ' ,sum(case left(cuenta,4) when ' + chr(39)+'1355'+chr(39)+ ' then Valor_Debito else 0 end) as ReteFte_Debito,sum(case left(cuenta,4) when ' + chr(39)+'1355'+chr(39)+ ' then Valor_Credito else 0 end) as ReteFte_Credito'+
    ' ,sum(case left(cuenta,4) when ' + chr(39)+'2365'+chr(39)+ ' then Valor_Debito else 0 end) as ICA_Debito,sum(case left(cuenta,4) when ' + chr(39)+'2365'+chr(39)+ ' then Valor_Credito else 0 end) as ICA_Credito'+
    ' FROM  CONTEncComp,CONTDetComp'+
    ' WHERE (Estado <> '+chr(39)+'A'+chr(39)+' OR ESTADO = NULL) AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    '       CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante'+
    ' AND CONTEncComp.Empresa = CONTDetComp.Empresa '+
    ' GROUP BY Periodo_Proceso'+
    ' ORDER BY Periodo_Proceso','');
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  if memo1.Lines.Count <> 0 Then Memo1.Width :=500
  Else Memo1.Width :=0;

  StringGrid1.Cells[0,0]:='Tp';
  StringGrid1.Cells[1,0]:='Comprobante';
  StringGrid1.Cells[2,0]:='S.I. Debito';
  StringGrid1.Cells[3,0]:='S.I. Credito';
  StringGrid1.Cells[4,0]:='Mov Debito';
  StringGrid1.Cells[5,0]:='Mov Credito';
  StringGrid1.Cells[6,0]:='S.F. Debito';
  StringGrid1.Cells[7,0]:='S.F. Credito';

  StringGrid1.ColWidths[0]:=100;
  StringGrid1.ColWidths[1]:=200;
  StringGrid1.ColWidths[2]:=100;
  StringGrid1.ColWidths[3]:=100;
  StringGrid1.ColWidths[4]:=100;
  StringGrid1.ColWidths[5]:=100;
  StringGrid1.ColWidths[6]:=100;
  StringGrid1.ColWidths[7]:=100;

  TipoRep:=1;
end;

procedure TMainForm.BitBtn1Click(Sender: TObject);
Var i,j:Integer;
    valor:currency;
    cad:String;
    balDebito,BalCredito:real;
    salDebito,salCredito:real;
begin
  if memo1.Lines.Count <> 0 Then
  begin
    showmessage('No puedo generar Informes hasta tanto no esten corregidos los errores.');
    exit;
  end;

  StringGrid1.Cells[0,0]:='Cuenta';
  StringGrid1.Cells[1,0]:='Descripcion';
  StringGrid1.Cells[2,0]:='S.I. Debito';
  StringGrid1.Cells[3,0]:='S.I. Credito';
  StringGrid1.Cells[4,0]:='Mov Debito';
  StringGrid1.Cells[5,0]:='Mov Credito';
  StringGrid1.Cells[6,0]:='S.F. Debito';
  StringGrid1.Cells[7,0]:='S.F. Credito';
  StringGrid1.ColCount  := 8;

  TipoRep:=1;
  BitBtn1.Font.Color := clRed;
  BitBtn2.Font.Color := clBlack;
  BitBtn3.Font.Color := clBlack;
  BitBtn4.Font.Color := clBlack;
  BitBtn5.Font.Color := clBlack;

  ADOQueryBalance.Close;
  ADOQueryBalance.SQL.Clear;
  ADOQueryBalance.SQL.Add(' SELECT Periodo_Proceso,ContTipoComp.Tipo_Comprobante,ContTipoComp.Descripcion,sum(Valor_Debito) as Debito,sum(Valor_Credito) as Credito');
  ADOQueryBalance.SQL.Add(' FROM ContTipoComp,ContEncComp,ContDetComp');
  ADOQueryBalance.SQL.Add(' WHERE ContTipoComp.Tipo_Comprobante = ContEncComp.Tipo_Comprobante  AND');
  ADOQueryBalance.SQL.Add('     (ContEncComp.Numero_Comprobante  = ContDetComp.Numero_Comprobante AND');
  ADOQueryBalance.SQL.Add('     ContEncComp.Empresa  = ContDetComp.Empresa AND');
  ADOQueryBalance.SQL.Add('     ContTipoComp.Tipo_Comprobante = ContDetComp.Tipo_Comprobante) AND');
  ADOQueryBalance.SQL.Add('     contenccomp.Estado='+chr(39)+'G'+chr(39)+' AND ');
  ADOQueryBalance.SQL.Add('     Periodo_Proceso = '+chr(39)+ADOQueryCierres.FieldValues['Periodo_Proceso']+chr(39));
  IF Edit2.Text <> '' Then ADOQueryBalance.SQL.Add('     AND ContEncComp.Tipo_Comprobante = '+chr(39)+Edit2.Text+chr(39));
  IF Edit3.Text <> '' Then ADOQueryBalance.SQL.Add('     AND ContDetComp.Cuenta like '+chr(39)+trim(Edit3.Text)+'%'+chr(39));
  IF Edit4.Text <> '' Then ADOQueryBalance.SQL.Add('     AND ContDetComp.Tercero = '+chr(39)+Edit4.Text+chr(39));
  IF Edit5.Text <> '' Then ADOQueryBalance.SQL.Add('     AND ContDetComp.Centro_Costo like '+chr(39)+trim(Edit5.Text)+'%'+chr(39));
  IF Edit7.Text <> '' Then ADOQueryBalance.SQL.Add('     AND ContEncComp.Empresa = '+chr(39)+Edit7.Text+chr(39));
  ADOQueryBalance.SQL.Add(' GROUP BY Periodo_Proceso,ContTipoComp.Tipo_Comprobante,ContTipoComp.Descripcion');
  ADOQueryBalance.SQL.Add(' ORDER BY Periodo_Proceso,ContTipoComp.Tipo_Comprobante,ContTipoComp.Descripcion');
  ADOQueryBalance.Open;

  For i:=0 To StringGrid1.ColCount-1 Do For j:=1 To StringGrid1.RowCount-1 Do StringGrid1.Cells[i,j] := '';
  StringGrid1.RowCount := 2;

  i:=1;
  ProgressBar1.Position := 0;
  ProgressBar1.Max:= ADOQueryBalance.RecordCount;
  ADOQueryBalance.First;
  While Not ADOQueryBalance.Eof Do
  Begin
    ProgressBar1.Position:=ProgressBar1.Position+1;
    if ADOQueryBalance.FieldValues['Debito']  <> null then BalDebito:=ADOQueryBalance.FieldValues['Debito']
    Else BalDebito:= 0;
    if ADOQueryBalance.FieldValues['Credito'] <> null then BalCredito:=ADOQueryBalance.FieldValues['Credito']
    Else BalCredito:= 0;

    //Busca el Periodo_Anterior
    ADOQuerySaldoAnt.Close;
    ADOQuerySaldoAnt.SQL.Clear;
    ADOQuerySaldoAnt.SQL.Add(' SELECT Tipo_Comprobante,');
    ADOQuerySaldoAnt.SQL.Add('        CASE WHEN(sum(Saldo_Debito)-sum(Saldo_Credito))>0  THEN sum(Saldo_Debito) - sum(Saldo_Credito) ELSE 0 END AS Debito,');
    ADOQuerySaldoAnt.SQL.Add('        CASE WHEN(sum(Saldo_Debito)-sum(Saldo_Credito))<=0 THEN sum(Saldo_Credito)- sum(Saldo_Debito)  ELSE 0 END AS Credito');
    ADOQuerySaldoAnt.SQL.Add(' FROM ContSaldo');
    ADOQuerySaldoAnt.SQL.Add(' WHERE Periodo_Proceso = '+chr(39)+Mes_Anterior+chr(39));
    ADOQuerySaldoAnt.SQL.Add('     AND Tipo_Comprobante = '+chr(39)+ADOQueryBalance.FieldValues['Tipo_Comprobante']+chr(39));
    IF Edit3.Text <> '' Then ADOQuerySaldoAnt.SQL.Add('     AND Cuenta = '+chr(39)+trim(Edit3.Text)+chr(39));
    IF Edit4.Text <> '' Then ADOQuerySaldoAnt.SQL.Add('     AND Tercero = '+chr(39)+Edit4.Text+chr(39));
    IF Edit5.Text <> '' Then ADOQuerySaldoAnt.SQL.Add('     AND Centro_Costo like '+chr(39)+trim(Edit5.Text)+'%'+chr(39));
    IF Edit7.Text <> '' Then ADOQuerySaldoAnt.SQL.Add('     AND Empresa = '+chr(39)+Edit7.Text+chr(39));
    ADOQuerySaldoAnt.SQL.Add(' GROUP BY Tipo_Comprobante');
    ADOQuerySaldoAnt.SQL.Add(' ORDER BY Tipo_Comprobante');
    ADOQuerySaldoAnt.Open;
    if ADOQuerySaldoAnt.FieldValues['Debito']  <> null then SalDebito:=ADOQuerySaldoAnt.FieldValues['Debito']
    Else SalDebito:= 0;
    if ADOQuerySaldoAnt.FieldValues['Credito'] <> null then SalCredito:=ADOQuerySaldoAnt.FieldValues['Credito']
    Else SalCredito:= 0;

    StringGrid1.Cells[0,i] := ADOQueryBalance.FieldValues['Tipo_Comprobante'];
    StringGrid1.Cells[1,i] := ADOQueryBalance.FieldValues['Descripcion'];

    //Saldo Anterior
    Valor:=SalDebito;
    StringGrid1.Cells[2,i] := Format('%16.2n',[Valor]);
    Valor:=SalCredito;
    StringGrid1.Cells[3,i] :=Format('%16.2n',[Valor]);

    //Movimiento
    Valor:=BalDebito;
    StringGrid1.Cells[4,i] := Format('%16.2n',[Valor]);
    Valor:=BalCredito;
    StringGrid1.Cells[5,i] :=Format('%16.2n',[Valor]);

    //Nuevo Saldo
    if (SalDebito+BalDebito) - (SalCredito+BalCredito) > 0 Then
    Begin
      Valor:=(SalDebito+BalDebito) - (SalCredito+BalCredito);
      StringGrid1.Cells[6,i] := Format('%16.2n',[Valor]);
      Valor:=0;
      StringGrid1.Cells[7,i] :=Format('%16.2n',[Valor]);
    End
    Else Begin
      Valor:=0;
      StringGrid1.Cells[6,i] := Format('%16.2n',[Valor]);
      Valor:=(SalCredito+BalCredito) - (SalDebito+BalDebito);
      StringGrid1.Cells[7,i] :=Format('%16.2n',[Valor]);
    End;

    if Not((trim(StringGrid1.Cells[2,i]) = '0.00') and (trim(StringGrid1.Cells[3,i]) = '0.00') and
       (trim(StringGrid1.Cells[4,i]) = '0.00') and (trim(StringGrid1.Cells[6,i]) = '0.00') and
       (trim(StringGrid1.Cells[6,i]) = '0.00') and (trim(StringGrid1.Cells[7,i]) = '0.00')) Then inc(i);
    StringGrid1.RowCount := i+1;
    ADOQueryBalance.Next;
  End;
  //Calcula Totales
  StringGrid1.Cells[1,StringGrid1.RowCount-1]:='TOTAL';
  StringGrid1.Cells[0,StringGrid1.RowCount-1]:='';
  For i:=2 To StringGrid1.ColCount-1 Do
  Begin
    Valor:=0;
    For j:=1 To StringGrid1.RowCount-2 Do
    Begin
      cad:=StringGrid1.Cells[i,j];
      while Pos(',', cad) > 0 do Delete(cad,Pos(',', cad),1);

      if cad<>'' then valor:=valor+strtofloat(cad);
    End;
    StringGrid1.Cells[i,StringGrid1.RowCount-1]:=Format('%16.2n',[Valor]);
    StringGrid1.ColWidths[i] := length(StringGrid1.Cells[i,StringGrid1.RowCount-1])*6;
  End;


end;

procedure TMainForm.DBLookupComboBox1Click(Sender: TObject);
begin
   if ADOQueryCierres.FieldValues['Periodo_Proceso'] <> null then
   begin
     DBLookupComboBox1.KeyValue := ADOQueryCierres.FieldValues['Periodo_Proceso'];
     //Muestra el mensaje apropiado en el boton de ajustar
     if ADOQueryCierres.FieldValues['modificado'] = 'S' Then
     Begin
       Button2.Caption := 'Pendiente de Ajuste';
       Button2.Font.Color := clred;
     End
     Else Begin
       Button2.Caption := 'Sin Modificaciones';
       Button2.Font.Color := clBlue;
     End;

     Mes_Actual := ADOQueryCierres.FieldValues['Periodo_Proceso'];
    //***********************
    //Calcula el Mes Anterior
    //***********************
    if strtoint(rightstr(Mes_Actual,2)) <> 13 Then
      Mes_Anterior:='01/'+rightstr(Mes_Actual,2)+'/'+leftstr(Mes_Actual,4)
    Else
      Mes_Anterior:='01/12/'+leftstr(Mes_Actual,4);

    if strtoint(rightstr(Mes_Actual,2)) <> 1 Then
    Begin
      if strtoint(rightstr(Mes_Actual,2)) <> 13 Then
      Begin
        if length(inttostr(yearof(strtodate(Mes_Anterior)-5))+inttostr(monthof(strtodatetime(Mes_Anterior)-5))) = 5 then
          Mes_Anterior:=inttostr(yearof(strtodate(Mes_Anterior)-5))+'0'+inttostr(monthof(strtodatetime(Mes_Anterior)-5))
        Else
          Mes_Anterior:=inttostr(yearof(strtodate(Mes_Anterior)-5))+inttostr(monthof(strtodatetime(Mes_Anterior)-5));
      End
      Else Mes_Anterior:=inttostr(yearof(strtodate(Mes_Anterior)-5))+'12';
    End
    Else Mes_Anterior:=inttostr(yearof(strtodate(Mes_Anterior)-5))+'13';

    IF TipoRep = 1 Then MainForm.BitBtn1Click(Nil)
    ELSE IF TipoRep = 2 Then MainForm.BitBtn2Click(Nil)
    ELSE IF TipoRep = 3 Then MainForm.BitBtn3Click(Nil)
    ELSE IF TipoRep = 4 Then MainForm.BitBtn4Click(Nil)
    ELSE IF TipoRep = 5 Then MainForm.BitBtn5Click(Nil);
    ADOQuery1.Close;
    ADOQuery1.Parameters.ParamValues['Per']:=Mes_Actual;
    ADOQuery1.Open;
    ADOQuery2.Close;
    ADOQuery2.Parameters.ParamValues['Per']:=Mes_Actual;
    ADOQuery2.Open;

    //Calcula el Descuadre si lo hay
    ADOQueryCom.Close;
    ADOQueryCom.SQL.Clear;
    ADOQueryCom.SQL.Add('SELECT ');
    ADOQueryCom.SQL.Add('(SELECT sum(saldo_Debito)- sum(saldo_Credito) ');
    ADOQueryCom.SQL.Add('FROM CONTSaldo ');
    ADOQueryCom.SQL.Add('WHERE Periodo_Proceso = '+chr(39)+Mes_Actual+chr(39)+' AND ');
    ADOQueryCom.SQL.Add('      Cuenta = ''1'') as Activo, ');
    ADOQueryCom.SQL.Add('(SELECT sum(saldo_Credito)- sum(saldo_Debito) ');
    ADOQueryCom.SQL.Add('FROM CONTSaldo ');
    ADOQueryCom.SQL.Add('WHERE Periodo_Proceso = '+chr(39)+Mes_Actual+chr(39)+' AND ');
    ADOQueryCom.SQL.Add('      Cuenta = ''2'') as Pasivo, ');
    ADOQueryCom.SQL.Add('(SELECT sum(saldo_Credito)- sum(saldo_Debito) ');
    ADOQueryCom.SQL.Add('FROM CONTSaldo ');
    ADOQueryCom.SQL.Add('WHERE Periodo_Proceso = '+chr(39)+Mes_Actual+chr(39)+' AND ');
    ADOQueryCom.SQL.Add('      Cuenta = ''3'')  as Patrimonio, ');
    ADOQueryCom.SQL.Add('(SELECT sum(saldo_Credito)- sum(saldo_Debito) ');
    ADOQueryCom.SQL.Add('FROM CONTSaldo ');
    ADOQueryCom.SQL.Add('WHERE Periodo_Proceso = '+chr(39)+Mes_Actual+chr(39)+' AND ');
    ADOQueryCom.SQL.Add('      Cuenta = ''4'')  as Ingresos, ');
    ADOQueryCom.SQL.Add('(SELECT sum(saldo_Debito)- sum(saldo_Credito) ');
    ADOQueryCom.SQL.Add('FROM CONTSaldo ');
    ADOQueryCom.SQL.Add('WHERE Periodo_Proceso = '+chr(39)+Mes_Actual+chr(39)+' AND ');
    ADOQueryCom.SQL.Add('      Cuenta = ''5'')  as Gastos, ');
    ADOQueryCom.SQL.Add('(SELECT sum(saldo_Debito)- sum(saldo_Credito) ');
    ADOQueryCom.SQL.Add('FROM CONTSaldo ');
    ADOQueryCom.SQL.Add('WHERE Periodo_Proceso = '+chr(39)+Mes_Actual+chr(39)+' AND ');
    ADOQueryCom.SQL.Add('      Cuenta = ''6'')  as Costos ');
    ADOQueryCom.Open;

    Statusbar1.Panels[4].Text := '0';
    if ADOQueryCom.FieldValues['Activo'] <> null then Statusbar1.Panels[4].Text := floattostr(strtofloat(Statusbar1.Panels[4].Text) + ADOQueryCom.FieldValues['Activo']);
    if ADOQueryCom.FieldValues['Pasivo'] <> null then Statusbar1.Panels[4].Text := floattostr(strtofloat(Statusbar1.Panels[4].Text) - ADOQueryCom.FieldValues['Pasivo']);
    if ADOQueryCom.FieldValues['Patrimonio'] <> null then Statusbar1.Panels[4].Text := floattostr(strtofloat(Statusbar1.Panels[4].Text) - ADOQueryCom.FieldValues['Patrimonio']);
    if ADOQueryCom.FieldValues['Ingresos'] <> null then Statusbar1.Panels[4].Text := floattostr(strtofloat(Statusbar1.Panels[4].Text) - ADOQueryCom.FieldValues['Ingresos']);
    if ADOQueryCom.FieldValues['Gastos'] <> null then Statusbar1.Panels[4].Text := floattostr(strtofloat(Statusbar1.Panels[4].Text) + ADOQueryCom.FieldValues['Gastos']);
    if ADOQueryCom.FieldValues['Costos'] <> null then Statusbar1.Panels[4].Text := floattostr(strtofloat(Statusbar1.Panels[4].Text) + ADOQueryCom.FieldValues['Costos']);
  end;
  FBIni('E','Contabilidad', 'Periodo', ADOQueryCierres.FieldValues['Periodo_Proceso']);
end;

procedure TMainForm.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  DBLookupComboBox1Click(Nil);
end;

procedure TMainForm.StringGrid1Click(Sender: TObject);
begin
  IF TipoRep = 1 Then Edit2.Text := StringGrid1.Cells[0,StringGrid1.row]
  ELSE IF TipoRep = 2 Then Edit3.Text := StringGrid1.Cells[0,StringGrid1.row]
  ELSE IF TipoRep = 3 Then Edit4.Text := StringGrid1.Cells[0,StringGrid1.row]
  ELSE IF TipoRep = 4 Then Edit5.Text := StringGrid1.Cells[0,StringGrid1.row]
  ELSE IF TipoRep = 5 Then
  Begin
    Edit3.Text := StringGrid1.Cells[0,StringGrid1.row];
    Edit4.Text := StringGrid1.Cells[2,StringGrid1.row];
  End;
end;

procedure TMainForm.BitBtn2Click(Sender: TObject);
Var i,j:Integer;
    cad:String;
begin
  if memo1.Lines.Count <> 0 Then
  begin
    showmessage('No puedo generar Informes hasta tanto no esten corregidos los errores.');
    exit;
  end;

  StringGrid1.Cells[0,0]:='Cuenta';
  StringGrid1.Cells[1,0]:='Descripcion';
  StringGrid1.Cells[2,0]:='Estado';
  StringGrid1.Cells[3,0]:='S.I. Debito';
  StringGrid1.Cells[4,0]:='S.I. Credito';
  StringGrid1.Cells[5,0]:='Mov Debito';
  StringGrid1.Cells[6,0]:='Mov Credito';
  StringGrid1.Cells[7,0]:='S.F. Debito';
  StringGrid1.Cells[8,0]:='S.F. Credito';
  StringGrid1.ColCount  := 9;

  TipoRep:=2;
  BitBtn2.Font.Color := clRed;
  BitBtn1.Font.Color := clBlack;
  BitBtn3.Font.Color := clBlack;
  BitBtn4.Font.Color := clBlack;
  BitBtn5.Font.Color := clBlack;

  For i:=0 To StringGrid1.ColCount-1 Do  For j:=1 To StringGrid1.RowCount-1 Do StringGrid1.Cells[i,j] := '';
  StringGrid1.RowCount := 2;

  ADOQuerySaldoAnt.Close;
  ADOQuerySaldoAnt.SQL.Clear;
  ADOQuerySaldoAnt.SQL.Add(' DROP TABLE xx');
  ADOQuerySaldoAnt.SQL.Add(' SELECT Periodo_Proceso,ContCuenta.Cuenta,ContCuenta.Descripcion,Naturaleza,Estado,');
  ADOQuerySaldoAnt.SQL.Add('      CASE WHEN Periodo_Proceso = '+chr(39)+Mes_Anterior+chr(39)+'  THEN ');
  ADOQuerySaldoAnt.SQL.Add('        (CASE WHEN(sum(Saldo_Debito)-sum(Saldo_Credito))>0  THEN sum(Saldo_Debito) - sum(Saldo_Credito) ELSE 0 END)');
  ADOQuerySaldoAnt.SQL.Add('      ELSE 0 END AS DebitoAnt,');
  ADOQuerySaldoAnt.SQL.Add('      CASE WHEN Periodo_Proceso = '+chr(39)+Mes_Anterior+chr(39)+'  THEN ');
  ADOQuerySaldoAnt.SQL.Add('        (CASE WHEN(sum(Saldo_Debito)-sum(Saldo_Credito))<=0 THEN sum(Saldo_Credito)- sum(Saldo_Debito)  ELSE 0 END)');
  ADOQuerySaldoAnt.SQL.Add('      ELSE 0 END AS CreditoAnt,');
  ADOQuerySaldoAnt.SQL.Add('      CASE WHEN Periodo_Proceso = '+chr(39)+Mes_Actual+chr(39)+'  THEN ');
  ADOQuerySaldoAnt.SQL.Add('        (CASE WHEN(sum(Saldo_Debito)-sum(Saldo_Credito))>0  THEN sum(Saldo_Debito) - sum(Saldo_Credito) ELSE 0 END)');
  ADOQuerySaldoAnt.SQL.Add('      ELSE 0 END AS DebitoAct,');
  ADOQuerySaldoAnt.SQL.Add('      CASE WHEN Periodo_Proceso = '+chr(39)+Mes_Actual+chr(39)+'  THEN ');
  ADOQuerySaldoAnt.SQL.Add('        (CASE WHEN(sum(Saldo_Debito)-sum(Saldo_Credito))<=0 THEN sum(Saldo_Credito)- sum(Saldo_Debito)  ELSE 0 END)');
  ADOQuerySaldoAnt.SQL.Add('      ELSE 0 END AS CreditoAct');
  ADOQuerySaldoAnt.SQL.Add(' INTO xx');
  ADOQuerySaldoAnt.SQL.Add(' FROM   ContSaldo,ContCuenta');
  ADOQuerySaldoAnt.SQL.Add(' WHERE  ContSaldo.Cuenta = ContCuenta.Cuenta AND');
  ADOQuerySaldoAnt.SQL.Add('        (Periodo_Proceso = '+chr(39)+Mes_Anterior+chr(39)+' OR Periodo_Proceso = '+chr(39)+Mes_Actual+chr(39)+')');
  IF Edit2.Text <> '' Then ADOQuerySaldoAnt.SQL.Add('     AND Tipo_Comprobante = '+chr(39)+Edit2.Text+chr(39));
  IF Edit3.Text <> '' Then ADOQuerySaldoAnt.SQL.Add('     AND ContSaldo.Cuenta like '+chr(39)+trim(Edit3.Text)+'%'+chr(39));
  IF Edit4.Text <> '' Then ADOQuerySaldoAnt.SQL.Add('     AND ContSaldo.Tercero = '+chr(39)+Edit4.Text+chr(39));
  IF Edit5.Text <> '' Then ADOQuerySaldoAnt.SQL.Add('     AND ContSaldo.Centro_Costo like '+chr(39)+trim(Edit5.Text)+'%'+chr(39));
  IF Edit7.Text <> '' Then ADOQuerySaldoAnt.SQL.Add('     AND ContSaldo.Empresa = '+chr(39)+Edit7.Text+chr(39));
  ADOQuerySaldoAnt.SQL.Add(' GROUP BY Periodo_Proceso,ContCuenta.Cuenta,ContCuenta.Descripcion,Naturaleza,Estado');
  ADOQuerySaldoAnt.SQL.Add(' ORDER BY Periodo_Proceso,ContCuenta.Cuenta,ContCuenta.Descripcion,Naturaleza,Estado');
  ADOQuerySaldoAnt.ExecSQL;

  ADOQuerySaldoAnt.Close;
  ADOQuerySaldoAnt.SQL.Clear;
  ADOQuerySaldoAnt.SQL.Add('SELECT Cuenta,Descripcion,Naturaleza,Estado,sum(DebitoAnt) as DebitoAnt,sum(CreditoAnt) as CreditoAnt,sum(DebitoAct) as DebitoAct,sum(CreditoAct) as CreditoAct');
  ADOQuerySaldoAnt.SQL.Add(' FROM xx ');
  ADOQuerySaldoAnt.SQL.Add(' GROUP BY Cuenta,Descripcion,Naturaleza,Estado');
  ADOQuerySaldoAnt.Open;

  ProgressBar1.Position := 0;
  ProgressBar1.Max:= ADOQuerySaldoAnt.RecordCount;
  i:=1;
  ADOQuerySaldoAnt.First;
  While Not ADOQuerySaldoAnt.Eof Do
  Begin
    ProgressBar1.Position:=ProgressBar1.Position+1;

    ADOQueryBalance.Close;
    ADOQueryBalance.SQL.Clear;
    ADOQueryBalance.SQL.Add(' SELECT sum(Valor_Debito) as Debito,sum(Valor_Credito) as Credito');
    ADOQueryBalance.SQL.Add(' FROM   ContEncComp,ContDetComp');
    ADOQueryBalance.SQL.Add(' WHERE (ContEncComp.Numero_Comprobante  = ContDetComp.Numero_Comprobante AND');
    ADOQueryBalance.SQL.Add('     ContEncComp.Empresa  = ContDetComp.Empresa AND');
    ADOQueryBalance.SQL.Add('     ContEncComp.Tipo_Comprobante = ContDetComp.Tipo_Comprobante) AND');
    ADOQueryBalance.SQL.Add('     contenccomp.Estado='+chr(39)+'G'+chr(39)+' AND ');
    ADOQueryBalance.SQL.Add('     Periodo_Proceso = '+chr(39)+ADOQueryCierres.FieldValues['Periodo_Proceso']+chr(39));
    ADOQueryBalance.SQL.Add(' AND ContDetComp.Cuenta like '+chr(39)+trim(ADOQuerySaldoAnt.FieldValues['Cuenta']) +'%'+chr(39));
    IF Edit2.Text <> '' Then ADOQueryBalance.SQL.Add(' AND ContDetComp.Tipo_Comprobante = '+chr(39)+Edit2.Text+chr(39));
    IF Edit4.Text <> '' Then ADOQueryBalance.SQL.Add(' AND ContDetComp.Tercero = '+chr(39)+Edit4.Text+chr(39));
    IF Edit5.Text <> '' Then ADOQueryBalance.SQL.Add(' AND ContDetComp.Centro_Costo like '+chr(39)+trim(Edit5.Text)+'%'+chr(39));
    IF Edit7.Text <> '' Then ADOQueryBalance.SQL.Add(' AND ContencComp.Empresa = '+chr(39)+Edit7.Text+chr(39));
    ADOQueryBalance.Open;

    StringGrid1.Cells[0,i] := ADOQuerySaldoAnt.FieldValues['Cuenta'];
    StringGrid1.Cells[1,i] := ADOQuerySaldoAnt.FieldValues['Descripcion'];
    if datamodule1.ctadet(trim(ADOQuerySaldoAnt.FieldValues['Cuenta'])) then
    Begin
      if ADOQuerySaldoAnt.FieldValues['Estado'] <> null Then StringGrid1.Cells[2,i] := ADOQuerySaldoAnt.FieldValues['Estado']
      Else StringGrid1.Cells[2,i] := '';
      if  ADOQuerySaldoAnt.FieldValues['Naturaleza'] <> null then
      Begin
        if  ADOQuerySaldoAnt.FieldValues['Naturaleza'] = 'D' then StringGrid1.Cells[2,i] := StringGrid1.Cells[2,i] + ' (Debito)'
        Else StringGrid1.Cells[2,i] := StringGrid1.Cells[2,i] + ' (Credito)';
      End;
    End
    Else StringGrid1.Cells[2,i] := '';

    //Saldo Anterior
    Valor:=ADOQuerySaldoAnt.FieldValues['DebitoAnt'];
    StringGrid1.Cells[3,i] := Format('%16.2n',[Valor]);
    Valor:=ADOQuerySaldoAnt.FieldValues['CreditoAnt'];
    StringGrid1.Cells[4,i] := Format('%16.2n',[Valor]);

    //Saldo Movimiento
    if ADOQueryBalance.FieldValues['Debito'] <> null then Valor:=ADOQueryBalance.FieldValues['Debito']
    else valor:=0;
    StringGrid1.Cells[5,i] := Format('%16.2n',[Valor]);
    if ADOQueryBalance.FieldValues['Credito'] <> null then Valor:=ADOQueryBalance.FieldValues['Credito']
    else valor:=0;
    StringGrid1.Cells[6,i] := Format('%16.2n',[Valor]);
    
    //Saldo Actual
    Valor:=ADOQuerySaldoAnt.FieldValues['DebitoAct'];
    StringGrid1.Cells[7,i] := Format('%16.2n',[Valor]);
    Valor:=ADOQuerySaldoAnt.FieldValues['CreditoAct'];
    StringGrid1.Cells[8,i] := Format('%16.2n',[Valor]);

    inc(i);
    StringGrid1.RowCount := i+1;
    ADOQuerySaldoAnt.Next;
  End;

  //Calcula Totales
  StringGrid1.Cells[1,StringGrid1.RowCount-1]:='TOTAL';
  StringGrid1.Cells[0,StringGrid1.RowCount-1]:='';
  For i:=3 To StringGrid1.ColCount-1 Do
  Begin
    Valor:=0;
    For j:=1 To StringGrid1.RowCount-2 Do
    Begin
      cad:=StringGrid1.Cells[i,j];
      while Pos(',', cad) > 0 do Delete(cad,Pos(',', cad),1);

      if cad<>'' then Begin
        if leftstr(StringGrid1.Cells[2,j],1) = 'A' Then valor:=valor+strtofloat(cad);
      End
    End;
    StringGrid1.Cells[i,StringGrid1.RowCount-1]:=Format('%16.2n',[Valor]);
    StringGrid1.ColWidths[i] := length(StringGrid1.Cells[i,StringGrid1.RowCount-1])*6;
  End;
end;

procedure TMainForm.BitBtn3Click(Sender: TObject);
Var i,j:Integer;
    valor:currency;
    cad:String;
begin
  if memo1.Lines.Count <> 0 Then
  begin
    showmessage('No puedo generar Informes hasta tanto no esten corregidos los errores.');
    exit;
  end;

  StringGrid1.Cells[0,0]:='Cuenta';
  StringGrid1.Cells[1,0]:='Descripcion';
  StringGrid1.Cells[2,0]:='S.I. Debito';
  StringGrid1.Cells[3,0]:='S.I. Credito';
  StringGrid1.Cells[4,0]:='Mov Debito';
  StringGrid1.Cells[5,0]:='Mov Credito';
  StringGrid1.Cells[6,0]:='S.F. Debito';
  StringGrid1.Cells[7,0]:='S.F. Credito';
  StringGrid1.ColCount  := 8;
  TipoRep:=3;
  BitBtn3.Font.Color := clRed;
  BitBtn2.Font.Color := clBlack;
  BitBtn1.Font.Color := clBlack;
  BitBtn4.Font.Color := clBlack;
  BitBtn5.Font.Color := clBlack;

  ADOQuerySaldoAnt.Close;
  ADOQuerySaldoAnt.SQL.Clear;
  ADOQuerySaldoAnt.SQL.Add(' DROP TABLE xx');
  ADOQuerySaldoAnt.SQL.Add(' SELECT Periodo_Proceso,ContSaldo.Tercero,Primer_Apellido,');
  ADOQuerySaldoAnt.SQL.Add('      CASE WHEN Periodo_Proceso = '+chr(39)+Mes_Anterior+chr(39)+'  THEN ');
  ADOQuerySaldoAnt.SQL.Add('        (CASE WHEN(sum(Saldo_Debito)-sum(Saldo_Credito))>0  THEN sum(Saldo_Debito) - sum(Saldo_Credito) ELSE 0 END)');
  ADOQuerySaldoAnt.SQL.Add('      ELSE 0 END AS DebitoAnt,');
  ADOQuerySaldoAnt.SQL.Add('      CASE WHEN Periodo_Proceso = '+chr(39)+Mes_Anterior+chr(39)+'  THEN ');
  ADOQuerySaldoAnt.SQL.Add('        (CASE WHEN(sum(Saldo_Debito)-sum(Saldo_Credito))<=0 THEN sum(Saldo_Credito)- sum(Saldo_Debito)  ELSE 0 END)');
  ADOQuerySaldoAnt.SQL.Add('      ELSE 0 END AS CreditoAnt,');
  ADOQuerySaldoAnt.SQL.Add('      CASE WHEN Periodo_Proceso = '+chr(39)+Mes_Actual+chr(39)+'  THEN ');
  ADOQuerySaldoAnt.SQL.Add('        (CASE WHEN(sum(Saldo_Debito)-sum(Saldo_Credito))>0  THEN sum(Saldo_Debito) - sum(Saldo_Credito) ELSE 0 END)');
  ADOQuerySaldoAnt.SQL.Add('      ELSE 0 END AS DebitoAct,');
  ADOQuerySaldoAnt.SQL.Add('      CASE WHEN Periodo_Proceso = '+chr(39)+Mes_Actual+chr(39)+'  THEN ');
  ADOQuerySaldoAnt.SQL.Add('        (CASE WHEN(sum(Saldo_Debito)-sum(Saldo_Credito))<=0 THEN sum(Saldo_Credito)- sum(Saldo_Debito)  ELSE 0 END)');
  ADOQuerySaldoAnt.SQL.Add('      ELSE 0 END AS CreditoAct');
  ADOQuerySaldoAnt.SQL.Add(' INTO xx');
  ADOQuerySaldoAnt.SQL.Add(' FROM   ContSaldo,ContTerce');
  ADOQuerySaldoAnt.SQL.Add(' WHERE  ContSaldo.Tercero = ContTerce.Numero_Documento+CONTTerce.Sucursal AND');
  ADOQuerySaldoAnt.SQL.Add('        (Periodo_Proceso = '+chr(39)+Mes_Anterior+chr(39)+' OR Periodo_Proceso = '+chr(39)+Mes_Actual+chr(39)+')');
  IF Edit2.Text <> '' Then ADOQuerySaldoAnt.SQL.Add('     AND Tipo_Comprobante = '+chr(39)+Edit2.Text+chr(39));
  IF Edit3.Text <> '' Then ADOQuerySaldoAnt.SQL.Add('     AND ContSaldo.Cuenta like '+chr(39)+trim(Edit3.Text)+'%'+chr(39));
  IF Edit5.Text <> '' Then ADOQuerySaldoAnt.SQL.Add('     AND Centro_Costo like '+chr(39)+trim(Edit5.Text)+'%'+chr(39));
  IF Edit7.Text <> '' Then ADOQuerySaldoAnt.SQL.Add('     AND ContSaldo.Empresa = '+chr(39)+Edit7.Text+chr(39));
  ADOQuerySaldoAnt.SQL.Add(' GROUP BY Periodo_Proceso,ContSaldo.Tercero,Primer_Apellido');
  ADOQuerySaldoAnt.SQL.Add(' ORDER BY Periodo_Proceso,ContSaldo.Tercero,Primer_Apellido');
  ADOQuerySaldoAnt.ExecSQL;

  ADOQuerySaldoAnt.Close;
  ADOQuerySaldoAnt.SQL.Clear;
  ADOQuerySaldoAnt.SQL.Add('SELECT Tercero,Primer_Apellido,sum(DebitoAnt) as DebitoAnt,sum(CreditoAnt) as CreditoAnt,sum(DebitoAct) as DebitoAct,sum(CreditoAct) as CreditoAct');
  ADOQuerySaldoAnt.SQL.Add(' FROM xx ');
  ADOQuerySaldoAnt.SQL.Add(' GROUP BY Tercero,Primer_Apellido');
  ADOQuerySaldoAnt.Open;

  ProgressBar1.Position := 0;
  ProgressBar1.Max:= ADOQuerySaldoAnt.RecordCount;
  i:=1;
  ADOQuerySaldoAnt.First;
  While Not ADOQuerySaldoAnt.Eof Do
  Begin
    ProgressBar1.Position:=ProgressBar1.Position+1;

    StringGrid1.Cells[0,i] := ADOQuerySaldoAnt.FieldValues['Tercero'];
    StringGrid1.Cells[1,i] := ADOQuerySaldoAnt.FieldValues['Primer_Apellido'];

    //Saldo Anterior
    Valor:=ADOQuerySaldoAnt.FieldValues['DebitoAnt'];
    StringGrid1.Cells[2,i] := Format('%16.2n',[Valor]);
    Valor:=ADOQuerySaldoAnt.FieldValues['CreditoAnt'];
    StringGrid1.Cells[3,i] := Format('%16.2n',[Valor]);
    //Saldo Movimiento
    Valor:=ADOQuerySaldoAnt.FieldValues['DebitoAct']-ADOQuerySaldoAnt.FieldValues['DebitoAnt'];
    StringGrid1.Cells[4,i] := Format('%16.2n',[Valor]);
    Valor:=ADOQuerySaldoAnt.FieldValues['CreditoAct']-ADOQuerySaldoAnt.FieldValues['CreditoAnt'];
    StringGrid1.Cells[5,i] := Format('%16.2n',[Valor]);
    //Saldo Actual
    Valor:=ADOQuerySaldoAnt.FieldValues['DebitoAct'];
    StringGrid1.Cells[6,i] := Format('%16.2n',[Valor]);
    Valor:=ADOQuerySaldoAnt.FieldValues['CreditoAct'];
    StringGrid1.Cells[7,i] := Format('%16.2n',[Valor]);

    inc(i);
    StringGrid1.RowCount := i+1;
    ADOQuerySaldoAnt.Next;
  End;

  //Calcula Totales
  StringGrid1.Cells[1,StringGrid1.RowCount-1]:='TOTAL';
  StringGrid1.Cells[0,StringGrid1.RowCount-1]:='';
  For i:=2 To StringGrid1.ColCount-1 Do
  Begin
    Valor:=0;
    For j:=1 To StringGrid1.RowCount-2 Do
    Begin
      cad:=StringGrid1.Cells[i,j];
      while Pos(',', cad) > 0 do Delete(cad,Pos(',', cad),1);

      if cad<>'' then Begin
         valor:=valor+strtofloat(cad);
      End
    End;
    StringGrid1.Cells[i,StringGrid1.RowCount-1]:=Format('%16.2n',[Valor]);
    StringGrid1.ColWidths[i] := length(StringGrid1.Cells[i,StringGrid1.RowCount-1])*6;
  End;
end;

procedure TMainForm.BitBtn4Click(Sender: TObject);
Var i,j:Integer;
    valor:currency;
    cad:String;
begin
  if memo1.Lines.Count <> 0 Then
  begin
    showmessage('No puedo generar Informes hasta tanto no esten corregidos los errores.');
    exit;
  end;

  StringGrid1.Cells[0,0]:='Cuenta';
  StringGrid1.Cells[1,0]:='Descripcion';
  StringGrid1.Cells[2,0]:='S.I. Debito';
  StringGrid1.Cells[3,0]:='S.I. Credito';
  StringGrid1.Cells[4,0]:='Mov Debito';
  StringGrid1.Cells[5,0]:='Mov Credito';
  StringGrid1.Cells[6,0]:='S.F. Debito';
  StringGrid1.Cells[7,0]:='S.F. Credito';
  StringGrid1.ColCount  := 8;
  TipoRep:=4;
  BitBtn4.Font.Color := clRed;
  BitBtn2.Font.Color := clBlack;
  BitBtn3.Font.Color := clBlack;
  BitBtn1.Font.Color := clBlack;
  BitBtn5.Font.Color := clBlack;

  ADOQuerySaldoAnt.Close;
  ADOQuerySaldoAnt.SQL.Clear;
  ADOQuerySaldoAnt.SQL.Add(' DROP TABLE xx');
  ADOQuerySaldoAnt.SQL.Add(' SELECT Periodo_Proceso,ContSaldo.Centro_Costo,Descripcion,');
  ADOQuerySaldoAnt.SQL.Add('      CASE WHEN Periodo_Proceso = '+chr(39)+Mes_Anterior+chr(39)+'  THEN ');
  ADOQuerySaldoAnt.SQL.Add('        (CASE WHEN(sum(Saldo_Debito)-sum(Saldo_Credito))>0  THEN sum(Saldo_Debito) - sum(Saldo_Credito) ELSE 0 END)');
  ADOQuerySaldoAnt.SQL.Add('      ELSE 0 END AS DebitoAnt,');
  ADOQuerySaldoAnt.SQL.Add('      CASE WHEN Periodo_Proceso = '+chr(39)+Mes_Anterior+chr(39)+'  THEN ');
  ADOQuerySaldoAnt.SQL.Add('        (CASE WHEN(sum(Saldo_Debito)-sum(Saldo_Credito))<=0 THEN sum(Saldo_Credito)- sum(Saldo_Debito)  ELSE 0 END)');
  ADOQuerySaldoAnt.SQL.Add('      ELSE 0 END AS CreditoAnt,');
  ADOQuerySaldoAnt.SQL.Add('      CASE WHEN Periodo_Proceso = '+chr(39)+Mes_Actual+chr(39)+'  THEN ');
  ADOQuerySaldoAnt.SQL.Add('        (CASE WHEN(sum(Saldo_Debito)-sum(Saldo_Credito))>0  THEN sum(Saldo_Debito) - sum(Saldo_Credito) ELSE 0 END)');
  ADOQuerySaldoAnt.SQL.Add('      ELSE 0 END AS DebitoAct,');
  ADOQuerySaldoAnt.SQL.Add('      CASE WHEN Periodo_Proceso = '+chr(39)+Mes_Actual+chr(39)+'  THEN ');
  ADOQuerySaldoAnt.SQL.Add('        (CASE WHEN(sum(Saldo_Debito)-sum(Saldo_Credito))<=0 THEN sum(Saldo_Credito)- sum(Saldo_Debito)  ELSE 0 END)');
  ADOQuerySaldoAnt.SQL.Add('      ELSE 0 END AS CreditoAct');
  ADOQuerySaldoAnt.SQL.Add(' INTO xx');
  ADOQuerySaldoAnt.SQL.Add(' FROM   ContSaldo,ContCentros');
  ADOQuerySaldoAnt.SQL.Add(' WHERE  ContSaldo.Centro_Costo = ContCentros.Centro_Costo AND');
  ADOQuerySaldoAnt.SQL.Add('        (Periodo_Proceso = '+chr(39)+Mes_Anterior+chr(39)+' OR Periodo_Proceso = '+chr(39)+Mes_Actual+chr(39)+')');
  IF Edit2.Text <> '' Then ADOQuerySaldoAnt.SQL.Add('     AND Tipo_Comprobante = '+chr(39)+Edit2.Text+chr(39));
  IF Edit3.Text <> '' Then ADOQuerySaldoAnt.SQL.Add('     AND ContSaldo.Cuenta like '+chr(39)+trim(Edit3.Text)+'%'+chr(39));
  IF Edit4.Text <> '' Then ADOQuerySaldoAnt.SQL.Add('     AND Tercero = '+chr(39)+Edit4.Text+chr(39));
  IF Edit7.Text <> '' Then ADOQuerySaldoAnt.SQL.Add('     AND ContSaldo.Empresa = '+chr(39)+Edit7.Text+chr(39));
  ADOQuerySaldoAnt.SQL.Add(' GROUP BY Periodo_Proceso,ContSaldo.Centro_Costo,Descripcion');
  ADOQuerySaldoAnt.SQL.Add(' ORDER BY Periodo_Proceso,ContSaldo.Centro_Costo,Descripcion');
  ADOQuerySaldoAnt.ExecSQL;

  ADOQuerySaldoAnt.Close;
  ADOQuerySaldoAnt.SQL.Clear;
  ADOQuerySaldoAnt.SQL.Add('SELECT Centro_Costo,Descripcion,sum(DebitoAnt) as DebitoAnt,sum(CreditoAnt) as CreditoAnt,sum(DebitoAct) as DebitoAct,sum(CreditoAct) as CreditoAct');
  ADOQuerySaldoAnt.SQL.Add(' FROM xx ');
  ADOQuerySaldoAnt.SQL.Add(' GROUP BY Centro_Costo,Descripcion');
  ADOQuerySaldoAnt.Open;

  ProgressBar1.Position := 0;
  ProgressBar1.Max:= ADOQuerySaldoAnt.RecordCount;
  i:=1;
  ADOQuerySaldoAnt.First;
  While Not ADOQuerySaldoAnt.Eof Do
  Begin
    ProgressBar1.Position:=ProgressBar1.Position+1;

    StringGrid1.Cells[0,i] := ADOQuerySaldoAnt.FieldValues['Centro_Costo'];
    StringGrid1.Cells[1,i] := ADOQuerySaldoAnt.FieldValues['Descripcion'];

    //Saldo Anterior
    Valor:=ADOQuerySaldoAnt.FieldValues['DebitoAnt'];
    StringGrid1.Cells[2,i] := Format('%16.2n',[Valor]);
    Valor:=ADOQuerySaldoAnt.FieldValues['CreditoAnt'];
    StringGrid1.Cells[3,i] := Format('%16.2n',[Valor]);
    //Saldo Movimiento
    Valor:=ADOQuerySaldoAnt.FieldValues['DebitoAct']-ADOQuerySaldoAnt.FieldValues['DebitoAnt'];
    StringGrid1.Cells[4,i] := Format('%16.2n',[Valor]);
    Valor:=ADOQuerySaldoAnt.FieldValues['CreditoAct']-ADOQuerySaldoAnt.FieldValues['CreditoAnt'];
    StringGrid1.Cells[5,i] := Format('%16.2n',[Valor]);
    //Saldo Actual
    Valor:=ADOQuerySaldoAnt.FieldValues['DebitoAct'];
    StringGrid1.Cells[6,i] := Format('%16.2n',[Valor]);
    Valor:=ADOQuerySaldoAnt.FieldValues['CreditoAct'];
    StringGrid1.Cells[7,i] := Format('%16.2n',[Valor]);

    inc(i);
    StringGrid1.RowCount := i+1;
    ADOQuerySaldoAnt.Next;
  End;

  //Calcula Totales
  StringGrid1.Cells[1,StringGrid1.RowCount-1]:='TOTAL';
  StringGrid1.Cells[0,StringGrid1.RowCount-1]:='';
  For i:=2 To StringGrid1.ColCount-1 Do
  Begin
    Valor:=0;
    For j:=1 To StringGrid1.RowCount-2 Do
    Begin
      cad:=StringGrid1.Cells[i,j];
      while Pos(',', cad) > 0 do Delete(cad,Pos(',', cad),1);

      if cad<>'' then Begin
         valor:=valor+strtofloat(cad);
      End
    End;
    StringGrid1.Cells[i,StringGrid1.RowCount-1]:=Format('%16.2n',[Valor]);
    StringGrid1.ColWidths[i] := length(StringGrid1.Cells[i,StringGrid1.RowCount-1])*6;
  End;
end;

procedure TMainForm.StringGrid1DblClick(Sender: TObject);
begin
  IF TipoRep = 1 Then Begin
    if RadioButton1.Checked Then
    Begin
      FrmLibroDiarioResum := tFrmLibroDiarioResum.create(application);
      try
        FrmLibroDiarioResum.Top:=0;
        FrmLibroDiarioResum.Left:=0;
        FrmLibroDiarioResum.DBLookupComboBox1.KeyValue := DBLookupComboBox1.Text;
        IF StringGrid1.Cells[0,StringGrid1.row] = '' Then FrmLibroDiarioResum.CheckBox1.Checked := True
        Else FrmLibroDiarioResum.DBLookupComboBox2.KeyValue := StringGrid1.Cells[0,StringGrid1.row];
        Datamodule1.MuestraconAcceso(FrmLibroDiarioResum);
      except
        FrmLibroDiarioResum.free;
      end;
    End
    Else Begin
      FrmLibroAuxiliarxTipoComp := tFrmLibroAuxiliarxTipoComp.create(application);
      try
        FrmLibroAuxiliarxTipoComp.Top:=0;
        FrmLibroAuxiliarxTipoComp.Left:=0;
        FrmLibroAuxiliarxTipoComp.DBLookupComboBox1.KeyValue := DBLookupComboBox1.Text;
        IF StringGrid1.Cells[0,StringGrid1.row] = '' Then FrmLibroAuxiliarxTipoComp.CheckBox1.Checked := True
        Else FrmLibroAuxiliarxTipoComp.DBLookupComboBox2.KeyValue := StringGrid1.Cells[0,StringGrid1.row];
        Datamodule1.MuestraconAcceso(FrmLibroAuxiliarxTipoComp);
      except
        FrmLibroAuxiliarxTipoComp.free;
      end;
    End;
  End
  ELSE IF TipoRep = 2 Then Begin
    IF Edit4.Text = '' Then
    Begin
      FrmLibroAuxiliarCtaTercero := tFrmLibroAuxiliarCtaTercero.create(application);
      try
        FrmLibroAuxiliarCtaTercero.DBLookupComboBox1.KeyValue := DBLookupComboBox1.KeyValue;
        FrmLibroAuxiliarCtaTercero.DBLookupComboBox4.KeyValue := DBLookupComboBox1.KeyValue;
        FrmLibroAuxiliarCtaTercero.Edit1.Text := Edit3.Text;
        FrmLibroAuxiliarCtaTercero.CheckBox1.Checked := False;
        FrmLibroAuxiliarCtaTercero.CheckBox1Click(Nil);
        FrmLibroAuxiliarCtaTercero.CheckBox4.Checked := True;
        FrmLibroAuxiliarCtaTercero.DBLookupComboBox1.KeyValue := DBLookupComboBox1.Text;
        Datamodule1.MuestraconAcceso(FrmLibroAuxiliarCtaTercero);
        FrmLibroAuxiliarCtaTercero.Button1Click(Nil);
      except
        FrmLibroAuxiliarCtaTercero.free;
      end;
    end
    Else Begin
      FrmLibroAuxiliarCtaTercero := tFrmLibroAuxiliarCtaTercero.create(application);
      try
        FrmLibroAuxiliarCtaTercero.DBLookupComboBox1.KeyValue := DBLookupComboBox1.KeyValue;
        FrmLibroAuxiliarCtaTercero.DBLookupComboBox4.KeyValue := DBLookupComboBox1.KeyValue;
        FrmLibroAuxiliarCtaTercero.Edit1.Text := Edit3.Text;
        FrmLibroAuxiliarCtaTercero.Edit2.Text := Edit4.Text;
        FrmLibroAuxiliarCtaTercero.CheckBox1.Checked := False;
        FrmLibroAuxiliarCtaTercero.CheckBox1Click(Nil);
        FrmLibroAuxiliarCtaTercero.CheckBox4.Checked := False;
        FrmLibroAuxiliarCtaTercero.CheckBox4Click(Nil);
        FrmLibroAuxiliarCtaTercero.DBLookupComboBox1.KeyValue := DBLookupComboBox1.Text;
        Datamodule1.MuestraconAcceso(FrmLibroAuxiliarCtaTercero);
        FrmLibroAuxiliarCtaTercero.Button1Click(Nil);
      except
        FrmLibroAuxiliarCtaTercero.free;
      end;
    End;
  End
  ELSE IF TipoRep = 3 Then Begin
    IF Edit3.Text = '' Then
    Begin
      FrmLibroAuxiliarTercero := tFrmLibroAuxiliarTercero.create(application);
      try
        FrmLibroAuxiliarTercero.Top:=0;
        FrmLibroAuxiliarTercero.Left:=0;
        FrmLibroAuxiliarTercero.DBLookupComboBox1.KeyValue := DBLookupComboBox1.Text;
        FrmLibroAuxiliarTercero.DBLookupComboBox2.KeyValue := Edit4.Text;

        Datamodule1.MuestraconAcceso(FrmLibroAuxiliarTercero);
      except
        FrmLibroAuxiliarTercero.free;
      end;
    end
    Else Begin
      FrmLibroAuxiliarTerceroCta := tFrmLibroAuxiliarTerceroCta.create(application);
      try
        FrmLibroAuxiliarTerceroCta.Top:=0;
        FrmLibroAuxiliarTerceroCta.Left:=0;
        FrmLibroAuxiliarTerceroCta.DBLookupComboBox1.KeyValue := DBLookupComboBox1.Text;
        FrmLibroAuxiliarTerceroCta.Edit1.Text := Edit3.Text;
        FrmLibroAuxiliarTerceroCta.DBLookupComboBox2.KeyValue := Edit4.Text;
        IF FrmLibroAuxiliarTerceroCta.DBLookupComboBox2.Text = '' Then FrmLibroAuxiliarTerceroCta.CheckBox1.Checked:=true;
        IF FrmLibroAuxiliarTerceroCta.Edit1.Text = '' Then FrmLibroAuxiliarTerceroCta.CheckBox2.Checked:=true;

        Datamodule1.MuestraconAcceso(FrmLibroAuxiliarTerceroCta);
      except
        FrmLibroAuxiliarTerceroCta.free;
      end;
    End;
  End
  ELSE IF TipoRep = 4 Then
  Begin
    Edit5.Text := '';
  End
  ELSE IF TipoRep = 5 Then
  Begin
    FrmLibroAuxiliarCtaTercero := tFrmLibroAuxiliarCtaTercero.create(application);
    try
      FrmLibroAuxiliarCtaTercero.DBLookupComboBox1.KeyValue := DBLookupComboBox1.KeyValue;
      FrmLibroAuxiliarCtaTercero.DBLookupComboBox4.KeyValue := DBLookupComboBox1.KeyValue;
      FrmLibroAuxiliarCtaTercero.Edit1.Text := Edit3.Text;
      FrmLibroAuxiliarCtaTercero.Edit2.Text := Edit4.Text;
      FrmLibroAuxiliarCtaTercero.CheckBox1.Checked := False;
      FrmLibroAuxiliarCtaTercero.CheckBox1Click(Nil);
      FrmLibroAuxiliarCtaTercero.CheckBox4.Checked := False;
      FrmLibroAuxiliarCtaTercero.CheckBox4Click(Nil);
      FrmLibroAuxiliarCtaTercero.DBLookupComboBox1.KeyValue := DBLookupComboBox1.Text;
      Datamodule1.MuestraconAcceso(FrmLibroAuxiliarCtaTercero);
      FrmLibroAuxiliarCtaTercero.Button1Click(Nil);
    except
      FrmLibroAuxiliarCtaTercero.free;
    end;
  End;
end;

procedure TMainForm.FormActivate(Sender: TObject);
Var xx:String;
begin
  xx := FBIni('L','Contabilidad', 'Periodo', '');

  if datamodule1.ADOQuery1.State = dsInactive then
  Begin
    FIngreso := TFIngreso.create(application);
    FIngreso.showmodal;
  End;
  MainForm.statusbar1.Panels[0].Width := 300;
  MainForm.statusbar1.Panels[0].Text := Datamodule1.adoquery1.FieldValues['Primer_Apellido']+ ' ' +Datamodule1.adoquery1.FieldValues['Nombres'];
  MainForm.statusbar1.Panels[1].Width := 500;
  MainForm.statusbar1.Panels[1].Text := Datamodule1.adoquery1.FieldValues['Descripcion_Emp']+' ('+Datamodule1.bd+')';
  MainForm.statusbar1.Panels[2].Width := 300;
  MainForm.statusbar1.Panels[2].Text := Datamodule1.adoquery1.FieldValues['Descripcion_Area'];
  MainForm.statusbar1.Panels[3].Width := 300;
  MainForm.statusbar1.Panels[3].Text := Datamodule1.adoquery1.FieldValues['Descripcion_Cargo'];

  Datamodule1.ADOConnection1.Execute('dbo.CreaCierreMes');

  ADOQueryCierres.Close;
  ADOQueryCierres.Open;
  DBLookupComboBox1.KeyValue := ADOQueryCierres.FieldValues['Periodo_Proceso'];

  Edit7.Text := Datamodule1.ADOQuery1.FieldValues['Empresa_trabaja'];
  MainForm.Caption := MainForm.Caption +'  ('+Datamodule1.Bd+')';
  DBLookupComboBox1.KeyValue := xx;
  DBLookupComboBox1Click(Nil);

  MainForm.Refresh;
end;

procedure TMainForm.FormDeactivate(Sender: TObject);
begin
  GroupBox1.Width:=100;
end;

procedure TMainForm.FormDblClick(Sender: TObject);
begin
  GroupBox1.Width:=MainForm.Width-100;
end;

procedure TMainForm.AuxiliarporCuentayTercero1Click(Sender: TObject);
begin
  FrmLibroAuxiliarCtaTercero := tFrmLibroAuxiliarCtaTercero.create(application);
  try
    FrmLibroAuxiliarCtaTercero.DBLookupComboBox1.KeyValue := DBLookupComboBox1.Text;
    Datamodule1.MuestraconAcceso(FrmLibroAuxiliarCtaTercero);
  except
    FrmLibroAuxiliarCtaTercero.free;
  end;
end;

procedure TMainForm.AuxiliarporTipoCom1Click(Sender: TObject);
begin
  FrmLibroAuxiliarxTipoComp := tFrmLibroAuxiliarxTipoComp.create(application);
  try
    FrmLibroAuxiliarxTipoComp.DBLookupComboBox1.KeyValue := DBLookupComboBox1.Text;
    Datamodule1.MuestraconAcceso(FrmLibroAuxiliarxTipoComp);
  except
    FrmLibroAuxiliarxTipoComp.free;
  end;
end;

procedure TMainForm.AuxiliarporCuenta1Click(Sender: TObject);
begin
  FrmLibroAuxiliarxCta := tFrmLibroAuxiliarxCta.create(application);
  try
    FrmLibroAuxiliarxCta.DBLookupComboBox1.KeyValue := DBLookupComboBox1.Text;
    Datamodule1.MuestraconAcceso(FrmLibroAuxiliarxCta);
  except
    FrmLibroAuxiliarxCta.free;
  end;
end;

procedure TMainForm.AuxiliarporTercero1Click(Sender: TObject);
begin
  FrmLibroAuxiliarTercero := tFrmLibroAuxiliarTercero.create(application);
  try
    FrmLibroAuxiliarTercero.DBLookupComboBox1.KeyValue := DBLookupComboBox1.Text;
    Datamodule1.MuestraconAcceso(FrmLibroAuxiliarTercero);
  except
    FrmLibroAuxiliarTercero.free;
  end;
end;

procedure TMainForm.AuxiliarporCentrodeCosto1Click(Sender: TObject);
begin
//  FrmLibroAuxiliarCC := tFrmLibroAuxiliarCC.create(application);
//  try
//    Datamodule1.MuestraconAcceso(FrmLibroAuxiliarCC);
//  except
//    FrmLibroAuxiliarCC.free;
//  end;
end;

procedure TMainForm.AuditoriadeDocumentos1Click(Sender: TObject);
var
  v1: string;
begin
  v1:= InputBox('Comprobante', 'Periodo', DBLookupComboBox1.Text);

  ReporteadorP('Por Periodo Proceso',' SELECT CONTEncComp.Tipo_Comprobante,CONTTipoComp.Descripcion,min(CONTEncComp.Numero_Comprobante) as Primer_Doc,max(CONTEncComp.Numero_Comprobante) as Ultimo_Documento,count(*) as Tot_Doc, '+
    '   convert(integer,(max(CONTEncComp.Numero_Comprobante) - min(CONTEncComp.Numero_Comprobante))-count(*)) as Faltan,sum(Valor_Debito) as Debitos, sum(Valor_Credito) as Creditos '+
    ' FROM  CONTEncComp,CONTDetComp,CONTTipoComp '+
    ' WHERE Estado = '+ chr(39)+'G'+ chr(39)+' AND '+
    '   CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    '   CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    '   CONTEncComp.Tipo_Comprobante = CONTTipoComp.Tipo_Comprobante AND '+
    '   CONTEncComp.Periodo_Proceso like ' + chr(39)+v1+chr(39) +
    ' GROUP BY CONTEncComp.Tipo_Comprobante,CONTTipoComp.Descripcion '+
    ' ORDER BY CONTEncComp.Tipo_Comprobante,CONTTipoComp.Descripcion ','');
end;

procedure TMainForm.BalancedePrueba2Click(Sender: TObject);
begin
  FrmLibroBalancePrueba2 := tFrmLibroBalancePrueba2.create(application);
  try
    FrmLibroBalancePrueba2.DBLookupComboBox1.KeyValue := DBLookupComboBox1.Text;
    Datamodule1.MuestraconAcceso(FrmLibroBalancePrueba2);
  except
    FrmLibroBalancePrueba2.free;
  end;
end;

procedure TMainForm.AuxiliarporTerceroyCuenta1Click(Sender: TObject);
begin
  FrmLibroAuxiliarTerceroCta := tFrmLibroAuxiliarTerceroCta.create(application);
  try
    FrmLibroAuxiliarTerceroCta.DBLookupComboBox1.KeyValue := DBLookupComboBox1.Text;
    Datamodule1.MuestraconAcceso(FrmLibroAuxiliarTerceroCta);
  except
    FrmLibroAuxiliarTerceroCta.free;
  end;
end;

procedure TMainForm.General2Click(Sender: TObject);
begin
  FrmLibro_Diario := tFrmLibro_Diario.create(application);
  try
    FrmLibro_Diario.DBLookupComboBox1.KeyValue := DBLookupComboBox1.Text;
    Datamodule1.MuestraconAcceso(FrmLibro_Diario);
  except
    FrmLibro_Diario.free;
  end;
end;

procedure TMainForm.Resumido1Click(Sender: TObject);
begin
  FrmLibroDiarioResum := tFrmLibroDiarioResum.create(application);
  try
    FrmLibroDiarioResum.DBLookupComboBox1.KeyValue := DBLookupComboBox1.Text;
    Datamodule1.MuestraconAcceso(FrmLibroDiarioResum);
  except
    FrmLibroDiarioResum.free;
  end;
end;

procedure TMainForm.odos11Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Comprobante', 'Tipo', '01');
  v2:= InputBox('Comprobante', 'Periodo', DBLookupComboBox1.Text);

  ReporteadorP('Por Tipo Comp.:'+v1+' y Periodo:'+v2,'SELECT CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,left(CONTEncComp.Descripcion,35) as Descripcion,left(CONTDetComp.Tercero,15) as Tercero,left(CONTDetComp.DocSoporte,15) as DocSoporte,'+
    ' left(CONTTerce.Primer_Apellido,30),sum(CONTDetComp.Valor_Debito) as Debito,sum(CONTDetComp.Valor_Credito) as Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTTerce '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+
    ' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTDetComp.Tercero = CONTTerce.Numero_Documento+CONTTerce.Sucursal AND '+
    ' CONTEncComp.Tipo_Comprobante Like ' + chr(39)+v1+chr(39) +
    ' AND CONTEncComp.Periodo_Proceso Like ' + chr(39)+v2+chr(39)+
    ' GROUP BY CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) ,Convert(varchar,Fecha_Comprobante,103) ,left(CONTEncComp.Descripcion,35),left(CONTDetComp.Tercero,15),left(CONTDetComp.DocSoporte,15),left(CONTTerce.Primer_Apellido,30) '+
    ' ORDER BY CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) ,Convert(varchar,Fecha_Comprobante,103) ,left(CONTEncComp.Descripcion,35),left(CONTDetComp.Tercero,15),left(CONTDetComp.DocSoporte,15),left(CONTTerce.Primer_Apellido,30) ','');
end;

procedure TMainForm.yCuenta4Click(Sender: TObject);
var
  v1,v2,v3: string;
begin
  v1:= InputBox('Comprobante', 'Tipo', '01');
  v2:= InputBox('Comprobante', 'Periodo', DBLookupComboBox1.Text);
  v3:= InputBox('Comprobante', 'Cuenta', '1');

  ReporteadorP('Por Tipo Comp.:'+v1+' y Periodo:'+v2,'SELECT CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,left(CONTEncComp.Descripcion,35) as Descripcion,left(CONTDetComp.Tercero,15) as Tercero,left(CONTDetComp.DocSoporte,15) as DocSoporte,'+
    ' left(CONTTerce.Primer_Apellido,30),sum(CONTDetComp.Valor_Debito) as Debito,sum(CONTDetComp.Valor_Credito) as Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTTerce '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+
    ' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTDetComp.Tercero = CONTTerce.Numero_Documento+CONTTerce.Sucursal AND '+
    ' CONTEncComp.Tipo_Comprobante Like ' + chr(39)+v1+chr(39) +
    ' AND CONTEncComp.Periodo_Proceso like  ' + chr(39)+v2+chr(39)+
    ' AND CONTDetComp.Cuenta like ' + chr(39)+v3+chr(39)+
    ' GROUP BY CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) ,Convert(varchar,Fecha_Comprobante,103) ,left(CONTEncComp.Descripcion,35),left(CONTDetComp.Tercero,15),left(CONTDetComp.DocSoporte,15),left(CONTTerce.Primer_Apellido,30) '+
    ' ORDER BY CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) ,Convert(varchar,Fecha_Comprobante,103) ,left(CONTEncComp.Descripcion,35),left(CONTDetComp.Tercero,15),left(CONTDetComp.DocSoporte,15),left(CONTTerce.Primer_Apellido,30) ','');
end;

procedure TMainForm.CuadrodeMovimientosporMesyTercero1Click(
  Sender: TObject);
begin
  FTabContablesTercero := tFTabContablesTercero.create(application);
  try
    Datamodule1.MuestraconAcceso(FTabContablesTercero);
  except
    FTabContablesTercero.free;
  end;
end;

procedure TMainForm.ConceptosxTipoTercero1Click(Sender: TObject);
begin
  FConcexTipo := tFConcexTipo.create(application);
  try
    Datamodule1.MuestraconAcceso(FConcexTipo);
  except
    FConcexTipo.free;
  end;
end;

procedure TMainForm.ConsolidadoporTipoComprobante1Click(Sender: TObject);
begin
  FrmLibroAuxiliarxCtaTipoComp := tFrmLibroAuxiliarxCtaTipoComp.create(application);
  try
    FrmLibroAuxiliarxCtaTipoComp.DBLookupComboBox1.KeyValue := DBLookupComboBox1.Text;
    Datamodule1.MuestraconAcceso(FrmLibroAuxiliarxCtaTipoComp);
  except
    FrmLibroAuxiliarxCtaTipoComp.free;
  end;
end;

procedure TMainForm.SpeedButton1Click(Sender: TObject);
Var Archivo:String;
begin
  Archivo := ExtractFilePath(paramstr(0))+'Reportes\';
  XmlExcel(ExtractFilePath(paramstr(0))+'Reportes\','Contabilidad.xml', StringGrid1);
  shellexecute(handle,'open',pchar(Archivo+'Contabilidad.xml'),'','',sw_shownormal);
end;

procedure TMainForm.SubirExtracto1Click(Sender: TObject);
begin
  ShowMessage('Al subir el Extracto diligencie el campo Tipo (Consignacion o Pago) Correctamente.');
  ReporteadorP('Listado de Extractos','SELECT * FROM CONTExtracto','');
end;

procedure TMainForm.ConciliarExtracto1Click(Sender: TObject);
begin
  FormExtracto := tFormExtracto.create(application);
  try
    Datamodule1.MuestraconAcceso(FormExtracto);
  except
    FormExtracto.free;
  end;
end;

procedure TMainForm.BitBtn5Click(Sender: TObject);
Var i,j:Integer;
    valor1,valor2:currency;
    cad:String;
begin
  if memo1.Lines.Count <> 0 Then
  begin
    showmessage('No puedo generar Informes hasta tanto no esten corregidos los errores.');
    exit;
  end;

  Titulos1;
  StringGrid1.ColCount  := 11;
  TipoRep:=5;
  BitBtn2.Font.Color := clBlack;
  BitBtn1.Font.Color := clBlack;
  BitBtn3.Font.Color := clBlack;
  BitBtn4.Font.Color := clBlack;
  BitBtn5.Font.Color := clRed;

  ADOQuerySaldoAnt.Close;
  ADOQuerySaldoAnt.SQL.Clear;
  ADOQuerySaldoAnt.SQL.Add(' DROP TABLE xx');
  ADOQuerySaldoAnt.SQL.Add(' SELECT Periodo_Proceso,ContCuenta.Cuenta,ContCuenta.Descripcion,ContSaldo.Tercero,Primer_Apellido,CONTCuenta.Estado,');
  ADOQuerySaldoAnt.SQL.Add('      CASE WHEN Periodo_Proceso = '+chr(39)+Mes_Anterior+chr(39)+'  THEN ');
  ADOQuerySaldoAnt.SQL.Add('        (CASE WHEN(sum(Saldo_Debito)-sum(Saldo_Credito))>0  THEN sum(Saldo_Debito) - sum(Saldo_Credito) ELSE 0 END)');
  ADOQuerySaldoAnt.SQL.Add('      ELSE 0 END AS DebitoAnt,');
  ADOQuerySaldoAnt.SQL.Add('      CASE WHEN Periodo_Proceso = '+chr(39)+Mes_Anterior+chr(39)+'  THEN ');
  ADOQuerySaldoAnt.SQL.Add('        (CASE WHEN(sum(Saldo_Debito)-sum(Saldo_Credito))<=0 THEN sum(Saldo_Credito)- sum(Saldo_Debito)  ELSE 0 END)');
  ADOQuerySaldoAnt.SQL.Add('      ELSE 0 END AS CreditoAnt,');
  ADOQuerySaldoAnt.SQL.Add('      CASE WHEN Periodo_Proceso = '+chr(39)+Mes_Actual+chr(39)+'  THEN ');
  ADOQuerySaldoAnt.SQL.Add('        (CASE WHEN(sum(Saldo_Debito)-sum(Saldo_Credito))>0  THEN sum(Saldo_Debito) - sum(Saldo_Credito) ELSE 0 END)');
  ADOQuerySaldoAnt.SQL.Add('      ELSE 0 END AS DebitoAct,');
  ADOQuerySaldoAnt.SQL.Add('      CASE WHEN Periodo_Proceso = '+chr(39)+Mes_Actual+chr(39)+'  THEN ');
  ADOQuerySaldoAnt.SQL.Add('        (CASE WHEN(sum(Saldo_Debito)-sum(Saldo_Credito))<=0 THEN sum(Saldo_Credito)- sum(Saldo_Debito)  ELSE 0 END)');
  ADOQuerySaldoAnt.SQL.Add('      ELSE 0 END AS CreditoAct');
  ADOQuerySaldoAnt.SQL.Add(' INTO xx');
  ADOQuerySaldoAnt.SQL.Add(' FROM   ContSaldo inner join ContCuenta on ');
   ADOQuerySaldoAnt.SQL.Add('       ContSaldo.Cuenta = ContCuenta.Cuenta ');
 ADOQuerySaldoAnt.SQL.Add('left outer join ContTerce on ');
  ADOQuerySaldoAnt.SQL.Add('        ContSaldo.Tercero = ContTerce.Numero_Documento+CONTTerce.Sucursal ');
  ADOQuerySaldoAnt.SQL.Add(' WHERE   (Periodo_Proceso = '+chr(39)+Mes_Anterior+chr(39)+' OR Periodo_Proceso = '+chr(39)+Mes_Actual+chr(39)+')');
  IF Edit2.Text <> '' Then ADOQuerySaldoAnt.SQL.Add('     AND Tipo_Comprobante = '+chr(39)+Edit2.Text+chr(39));
  IF Edit3.Text <> '' Then ADOQuerySaldoAnt.SQL.Add('     AND ContSaldo.Cuenta like '+chr(39)+trim(Edit3.Text)+'%'+chr(39));
  IF Edit4.Text <> '' Then ADOQuerySaldoAnt.SQL.Add('     AND ContSaldo.Tercero = '+chr(39)+Edit4.Text+chr(39));
  IF Edit5.Text <> '' Then ADOQuerySaldoAnt.SQL.Add('     AND Centro_Costo like '+chr(39)+trim(Edit5.Text)+'%'+chr(39));
  IF Edit7.Text <> '' Then ADOQuerySaldoAnt.SQL.Add('     AND ContSaldo.Empresa = '+chr(39)+Edit7.Text+chr(39));
  ADOQuerySaldoAnt.SQL.Add(' GROUP BY Periodo_Proceso,ContCuenta.Cuenta,ContCuenta.Descripcion,ContSaldo.Tercero,Primer_Apellido,CONTCuenta.Estado');
  ADOQuerySaldoAnt.SQL.Add(' ORDER BY Periodo_Proceso,ContCuenta.Cuenta,ContCuenta.Descripcion,ContSaldo.Tercero,Primer_Apellido,CONTCuenta.Estado');
  ADOQuerySaldoAnt.ExecSQL;

  ADOQuerySaldoAnt.Close;
  ADOQuerySaldoAnt.SQL.Clear;
  ADOQuerySaldoAnt.SQL.Add('SELECT Cuenta,Descripcion,Estado,Tercero,Primer_Apellido,sum(DebitoAnt) as DebitoAnt,sum(CreditoAnt) as CreditoAnt,sum(DebitoAct) as DebitoAct,sum(CreditoAct) as CreditoAct');
  ADOQuerySaldoAnt.SQL.Add(' FROM xx ');
  ADOQuerySaldoAnt.SQL.Add(' GROUP BY Cuenta,Descripcion,Estado,Tercero,Primer_Apellido');
  ADOQuerySaldoAnt.Open;

  ProgressBar1.Position := 0;
  ProgressBar1.Max:= ADOQuerySaldoAnt.RecordCount;
  i:=1;
  ADOQuerySaldoAnt.First;
  While Not ADOQuerySaldoAnt.Eof Do
  Begin
    ProgressBar1.Position:=ProgressBar1.Position+1;

    StringGrid1.Cells[0,i] := ADOQuerySaldoAnt.FieldValues['Cuenta'];
    StringGrid1.Cells[1,i] := ADOQuerySaldoAnt.FieldValues['Descripcion'];
    StringGrid1.Cells[2,i] := ADOQuerySaldoAnt.FieldValues['Tercero'];
    if ADOQuerySaldoAnt.FieldValues['Primer_Apellido'] <> null then StringGrid1.Cells[3,i] := ADOQuerySaldoAnt.FieldValues['Primer_Apellido']
    else StringGrid1.Cells[3,i] := 'Sin tercero.';
    if ADOQuerySaldoAnt.FieldValues['Estado'] <> null Then StringGrid1.Cells[4,i] := ADOQuerySaldoAnt.FieldValues['Estado']
     Else StringGrid1.Cells[4,i] := '';

    //Saldo Anterior
    Valor:=ADOQuerySaldoAnt.FieldValues['DebitoAnt'];
    StringGrid1.Cells[5,i] := Format('%16.2n',[Valor]);
    Valor:=ADOQuerySaldoAnt.FieldValues['CreditoAnt'];
    StringGrid1.Cells[6,i] := Format('%16.2n',[Valor]);

    //Saldo Movimiento
    Valor1:=ADOQuerySaldoAnt.FieldValues['DebitoAct']-ADOQuerySaldoAnt.FieldValues['DebitoAnt'];
    Valor2:=ADOQuerySaldoAnt.FieldValues['CreditoAct']-ADOQuerySaldoAnt.FieldValues['CreditoAnt'];

    if Valor1 < 0 Then begin
      Valor2:=Valor2-Valor1;
      Valor1:=0;
    end;
    if Valor2 < 0 Then begin
      Valor1:=Valor1-Valor2;
      Valor2:=0;
    end;
    StringGrid1.Cells[7,i] := Format('%16.2n',[Valor1]);
    StringGrid1.Cells[8,i] := Format('%16.2n',[Valor2]);
    //Saldo Actual
    Valor:=ADOQuerySaldoAnt.FieldValues['DebitoAct'];
    StringGrid1.Cells[9,i] := Format('%16.2n',[Valor]);
    Valor:=ADOQuerySaldoAnt.FieldValues['CreditoAct'];
    StringGrid1.Cells[10,i] := Format('%16.2n',[Valor]);

    inc(i);
    StringGrid1.RowCount := i+1;
    ADOQuerySaldoAnt.Next;
  End;

  //Calcula Totales
  StringGrid1.Cells[1,StringGrid1.RowCount-1]:='TOTAL';
  StringGrid1.Cells[0,StringGrid1.RowCount-1]:='';
  For i:=5 To StringGrid1.ColCount-1 Do
  Begin
    Valor:=0;
    For j:=1 To StringGrid1.RowCount-2 Do
    Begin
      cad:=StringGrid1.Cells[i,j];
      while Pos(',', cad) > 0 do Delete(cad,Pos(',', cad),1);

      if cad<>'' then Begin
        if StringGrid1.Cells[4,j] = 'A' Then valor:=valor+strtofloat(cad);
      End
    End;
    StringGrid1.Cells[i,StringGrid1.RowCount-1]:=Format('%16.2n',[Valor]);
    StringGrid1.ColWidths[i] := length(StringGrid1.Cells[i,StringGrid1.RowCount-1])*6;
  End;
end;


procedure TMainForm.Button1Click(Sender: TObject);
begin
  Memo1.Lines.Clear;

  //Validaciones
  ADOQueryCom.Close;
  ADOQueryCom.SQL.Clear;
  ADOQueryCom.SQL.Add('SELECT CONTDetComp.Tipo_Comprobante,CONTDetComp.Empresa,CONTDetComp.Numero_Comprobante,sum(Valor_Debito) as Valor_Debito,sum(Valor_Credito) as Valor_Credito,sum(Valor_Debito)- sum(Valor_Credito) as Diferencia');
  ADOQueryCom.SQL.Add(' FROM CONTDetComp,CONTEncComp');
  ADOQueryCom.SQL.Add(' WHERE CONTDetComp.Tipo_Comprobante = CONTEncComp.Tipo_Comprobante AND CONTEncComp.Tipo_Comprobante <> '+chr(39)+'99'+chr(39)+' AND ');
  ADOQueryCom.SQL.Add('       CONTDetComp.Empresa = CONTEncComp.Empresa AND');
  ADOQueryCom.SQL.Add('       CONTDetComp.Numero_Comprobante = CONTEncComp.Numero_Comprobante AND CONTEncComp.Estado <> '+chr(39)+'A'+chr(39));
  ADOQueryCom.SQL.Add(' GROUP BY CONTDetComp.Tipo_Comprobante,CONTDetComp.Empresa,CONTDetComp.Numero_Comprobante');
  ADOQueryCom.SQL.Add(' HAVING sum(Valor_Debito)- sum(Valor_Credito) <> 0');
  ADOQueryCom.Open;
  ADOQueryCom.First;
  WHILE NOT ADOQueryCom.Eof DO
  Begin
    Memo1.Lines.Add('ERROR: Comprobante descuadrado: Tipo Comp('+ADOQuerycom.FieldValues['Tipo_Comprobante']+') Empresa('+ADOQuerycom.FieldValues['Empresa']+') Numero('+inttostr(ADOQuerycom.FieldValues['Numero_Comprobante'])+')');

    ADOQueryCom.Next;
  End;

  ADOQueryCom.Close;
  ADOQueryCom.SQL.Clear;
  ADOQueryCom.SQL.Add('SELECT tercero ');
  ADOQueryCom.SQL.Add('FROM CONTDetComp ');
  ADOQueryCom.SQL.Add('WHeRE rtrim(tercero) not in (SELECT numero_documento+sucursal FROM CONTTerce)  ');
  ADOQueryCom.Open;
  ADOQueryCom.First;
  WHILE NOT ADOQueryCom.Eof DO
  Begin
    if ADOQuerycom.FieldValues['tercero'] <> '' Then Begin
      Memo1.Lines.Add('ERROR: Tercero no existe: '+ADOQuerycom.FieldValues['tercero']);
    End;

    ADOQueryCom.Next;
  End;

  ADOQueryCom.Close;
  ADOQueryCom.SQL.Clear;
  ADOQueryCom.SQL.Add('SELECT * ');
  ADOQueryCom.SQL.Add('FROM CONTDetComp  ');
  ADOQueryCom.SQL.Add('WHeRE cuenta not in (SELECT cuenta FROM CONTCuenta)');
  ADOQueryCom.Open;
  ADOQueryCom.First;
  WHILE NOT ADOQueryCom.Eof DO
  Begin
    Memo1.Lines.Add('ERROR: Cuenta no existe: '+ADOQuerycom.FieldValues['cuenta']+' En el Comprobante: '+ADOQuerycom.FieldValues['Tipo_Comprobante']+' - '+floattostr(ADOQuerycom.FieldValues['Numero_Comprobante']));

    ADOQueryCom.Next;
  End;

  ADOQueryCom.Close;
  ADOQueryCom.SQL.Clear;
  ADOQueryCom.SQL.Add('SELECT *');
  ADOQueryCom.SQL.Add('FROM  CONTCuenta,CONTDetcomp');
  ADOQueryCom.SQL.Add('WHERE CONTCuenta.Cuenta = CONTDetcomp.Cuenta AND');
  ADOQueryCom.SQL.Add('     Estado is NULL');
  ADOQueryCom.Open;
  ADOQueryCom.First;
  WHILE NOT ADOQueryCom.Eof DO
  Begin
    Memo1.Lines.Add('ERROR: Niveles Mayores con Movimiento: '+ADOQuerycom.FieldValues['cuenta']+' En el Comprobante: '+ADOQuerycom.FieldValues['Tipo_Comprobante']+' - '+floattostr(ADOQuerycom.FieldValues['Numero_Comprobante']));

    ADOQueryCom.Next;
  End;

  ADOQueryCom.Close;
  ADOQueryCom.SQL.Clear;
  ADOQueryCom.SQL.Add('SELECT *');
  ADOQueryCom.SQL.Add(' FROM  CONTDetcomp');
  ADOQueryCom.SQL.Add(' WHERE Valor_debito is NULL');
  ADOQueryCom.Open;
  ADOQueryCom.First;
  WHILE NOT ADOQueryCom.Eof DO
  Begin
    Memo1.Lines.Add('ERROR: Existen valores Debitos en el detalle de Comprobantes con NULOS. Esto causa descuadres.: '+ADOQuerycom.FieldValues['cuenta']+' En el Comprobante: '+ADOQuerycom.FieldValues['Tipo_Comprobante']+' - '+floattostr(ADOQuerycom.FieldValues['Numero_Comprobante']));

    ADOQueryCom.Next;
  End;

  ADOQueryCom.Close;
  ADOQueryCom.SQL.Clear;
  ADOQueryCom.SQL.Add('SELECT *');
  ADOQueryCom.SQL.Add(' FROM  CONTDetcomp');
  ADOQueryCom.SQL.Add(' WHERE Valor_credito is NULL');
  ADOQueryCom.Open;
  ADOQueryCom.First;
  WHILE NOT ADOQueryCom.Eof DO
  Begin
    Memo1.Lines.Add('ERROR: Existen valores Debitos en el detalle de Comprobantes con NULOS. Esto causa descuadres.: '+ADOQuerycom.FieldValues['cuenta']+' En el Comprobante: '+ADOQuerycom.FieldValues['Tipo_Comprobante']+' - '+floattostr(ADOQuerycom.FieldValues['Numero_Comprobante']));

    ADOQueryCom.Next;
  End;

  //Validacion de existencia de cuentas mayores en plan de cuentas
  ADOQueryCom2.Close;
  ADOQueryCom2.SQL.Clear;
  ADOQueryCom2.SQL.Add('SELECT *');
  ADOQueryCom2.SQL.Add(' FROM  CONTCuenta as A');
  ADOQueryCom2.Open;
  ADOQueryCom2.First;
  WHILE NOT ADOQueryCom2.Eof DO
  Begin
    if length(trim(ADOQueryCom2.FieldValues['Cuenta'])) = 2  then
    Begin
      ADOQueryCom.Close;
      ADOQueryCom.SQL.Clear;
      ADOQueryCom.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = Left('+chr(39)+trim(ADOQueryCom2.FieldValues['Cuenta'])+chr(39)+',1)');
      ADOQueryCom.Open;
      if ADOQueryCom.RecordCount = 0 then
      Begin
        Memo1.Lines.Add('Error: la Cuenta '+ADOQueryCom2.FieldValues['Cuenta']+' No tiene sus cuentas mayores, verifiquelas y genere de nuevo');
      End;
    End;

    if length(trim(ADOQueryCom2.FieldValues['Cuenta'])) = 4  then
    Begin
      ADOQueryCom.Close;
      ADOQueryCom.SQL.Clear;
      ADOQueryCom.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = Left('+chr(39)+trim(ADOQueryCom2.FieldValues['Cuenta'])+chr(39)+',1)');
      ADOQueryCom.Open;
      if ADOQueryCom.RecordCount = 0 then
      Begin
        Memo1.Lines.Add('Error: la Cuenta '+ADOQueryCom2.FieldValues['Cuenta']+' No tiene sus cuentas mayores, verifiquelas y genere de nuevo');
      End;

      ADOQueryCom.Close;
      ADOQueryCom.SQL.Clear;
      ADOQueryCom.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = Left('+chr(39)+trim(ADOQueryCom2.FieldValues['Cuenta'])+chr(39)+',2)');
      ADOQueryCom.Open;
      if ADOQueryCom.RecordCount = 0 then
      Begin
        Memo1.Lines.Add('Error: la Cuenta '+ADOQueryCom2.FieldValues['Cuenta']+' No tiene sus cuentas mayores, verifiquelas y genere de nuevo');
      End;
    End;

    if length(trim(ADOQueryCom2.FieldValues['Cuenta'])) = 6  then
    Begin
      ADOQueryCom.Close;
      ADOQueryCom.SQL.Clear;
      ADOQueryCom.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = Left('+chr(39)+trim(ADOQueryCom2.FieldValues['Cuenta'])+chr(39)+',1)');
      ADOQueryCom.Open;
      if ADOQueryCom.RecordCount = 0 then
      Begin
        Memo1.Lines.Add('Error: la Cuenta '+ADOQueryCom2.FieldValues['Cuenta']+' No tiene sus cuentas mayores, verifiquelas y genere de nuevo');
      End;

      ADOQueryCom.Close;
      ADOQueryCom.SQL.Clear;
      ADOQueryCom.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = Left('+chr(39)+trim(ADOQueryCom2.FieldValues['Cuenta'])+chr(39)+',2)');
      ADOQueryCom.Open;
      if ADOQueryCom.RecordCount = 0 then
      Begin
        Memo1.Lines.Add('Error: la Cuenta '+ADOQueryCom2.FieldValues['Cuenta']+' No tiene sus cuentas mayores, verifiquelas y genere de nuevo');
      End;

      ADOQueryCom.Close;
      ADOQueryCom.SQL.Clear;
      ADOQueryCom.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = Left('+chr(39)+trim(ADOQueryCom2.FieldValues['Cuenta'])+chr(39)+',4)');
      ADOQueryCom.Open;
      if ADOQueryCom.RecordCount = 0 then
      Begin
        Memo1.Lines.Add('Error: la Cuenta '+ADOQueryCom2.FieldValues['Cuenta']+' No tiene sus cuentas mayores, verifiquelas y genere de nuevo');
      End;
    End;

    if length(trim(ADOQueryCom2.FieldValues['Cuenta'])) > 6  then
    Begin
      ADOQueryCom.Close;
      ADOQueryCom.SQL.Clear;
      ADOQueryCom.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = Left('+chr(39)+trim(ADOQueryCom2.FieldValues['Cuenta'])+chr(39)+',1)');
      ADOQueryCom.Open;
      if ADOQueryCom.RecordCount = 0 then
      Begin
        Memo1.Lines.Add('Error: la Cuenta '+ADOQueryCom2.FieldValues['Cuenta']+' No tiene sus cuentas mayores, verifiquelas y genere de nuevo');
      End;

      ADOQueryCom.Close;
      ADOQueryCom.SQL.Clear;
      ADOQueryCom.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = Left('+chr(39)+trim(ADOQueryCom2.FieldValues['Cuenta'])+chr(39)+',2)');
      ADOQueryCom.Open;
      if ADOQueryCom.RecordCount = 0 then
      Begin
        Memo1.Lines.Add('Error: la Cuenta '+ADOQueryCom2.FieldValues['Cuenta']+' No tiene sus cuentas mayores, verifiquelas y genere de nuevo');
      End;

      ADOQueryCom.Close;
      ADOQueryCom.SQL.Clear;
      ADOQueryCom.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = Left('+chr(39)+trim(ADOQueryCom2.FieldValues['Cuenta'])+chr(39)+',4)');
      ADOQueryCom.Open;
      if ADOQueryCom.RecordCount = 0 then
      Begin
        Memo1.Lines.Add('Error: la Cuenta '+ADOQueryCom2.FieldValues['Cuenta']+' No tiene sus cuentas mayores, verifiquelas y genere de nuevo');
      End;

      ADOQueryCom.Close;
      ADOQueryCom.SQL.Clear;
      ADOQueryCom.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = Left('+chr(39)+trim(ADOQueryCom2.FieldValues['Cuenta'])+chr(39)+',6)');
      ADOQueryCom.Open;
      if ADOQueryCom.RecordCount = 0 then
      Begin
        Memo1.Lines.Add('Error: la Cuenta '+ADOQueryCom2.FieldValues['Cuenta']+' No tiene sus cuentas mayores, verifiquelas y genere de nuevo');
      End;
    End;

    ADOQueryCom2.Next;
  End;

  if memo1.lines.count > 0 then Memo1.Width := 100;

  showmessage('Fin de la Validación');
end;

procedure TMainForm.Button2Click(Sender: TObject);
begin
  FormAjusteSaldos := tFormAjusteSaldos.create(application);
  try
    FormAjusteSaldos.DBLookupComboBox1.KeyValue := DBLookupComboBox1.KeyValue;
    Datamodule1.MuestraconAcceso(FormAjusteSaldos);
  except
    FormAjusteSaldos.free;
  end;
end;

procedure TMainForm.Titulos1;
begin
  StringGrid1.Cells[0,0]:='Cuenta';
  StringGrid1.Cells[1,0]:='Descripcion';
  StringGrid1.Cells[2,0]:='Doc. Terce';
  StringGrid1.Cells[3,0]:='Nom Terce';
  StringGrid1.Cells[4,0]:='Tipo';
  StringGrid1.Cells[5,0]:='S.I. Debito';
  StringGrid1.Cells[6,0]:='S.I. Credito';
  StringGrid1.Cells[7,0]:='Mov Debito';
  StringGrid1.Cells[8,0]:='Mov Credito';
  StringGrid1.Cells[9,0]:='S.F. Debito';
  StringGrid1.Cells[10,0]:='S.F. Credito';
end;

procedure TMainForm.CierresyAjustedeSaldos1Click(Sender: TObject);
begin
  FormAjusteSaldos := tFormAjusteSaldos.create(application);
  try
    Datamodule1.MuestraconAcceso(FormAjusteSaldos);
  except
    FormAjusteSaldos.free;
  end;
end;

procedure TMainForm.Facturacion1Click(Sender: TObject);
begin
  frmcontabfacturacion := tfrmcontabfacturacion.create(application);
  try
    Datamodule1.MuestraconAcceso(frmcontabfacturacion);
  except
    frmcontabfacturacion.free;
  end;
end;

procedure TMainForm.Caja1Click(Sender: TObject);
begin
  frmcontabcaj := tfrmcontabcaj.create(application);
  try
    Datamodule1.MuestraconAcceso(frmcontabcaj);
  except
    frmcontabcaj.free;
  end;
end;

procedure TMainForm.ConfirmaciondeComprobantes1Click(Sender: TObject);
begin
  FrmConfirma := tFrmConfirma.create(application);
  try
    Datamodule1.MuestraconAcceso(FrmConfirma);
  except
    FrmConfirma.free;
  end;
end;

procedure TMainForm.ImportarPlanosContables1Click(Sender: TObject);
begin
  ImportPlanoContable := tImportPlanoContable.create(application);
  try
    Datamodule1.MuestraconAcceso(ImportPlanoContable);
  except
    ImportPlanoContable.free;
  end;
end;

procedure TMainForm.ConsolidarBasesdeDatosenUna1Click(Sender: TObject);
begin
  FormConsolidar := tFormConsolidar.create(application);
  try
    Datamodule1.MuestraconAcceso(FormConsolidar);
  except
    FormConsolidar.free;
  end;
end;

procedure TMainForm.SpeedButton2Click(Sender: TObject);
begin
  Edit2.Text:='';
end;

procedure TMainForm.SpeedButton3Click(Sender: TObject);
begin
   Edit3.Text:='';
end;

procedure TMainForm.SpeedButton4Click(Sender: TObject);
begin
  Edit4.Text:='';
end;

procedure TMainForm.SpeedButton5Click(Sender: TObject);
begin
  Edit5.Text:='';
end;

procedure TMainForm.BaseComprasIVA1Click(Sender: TObject);
Var
  v1,v2,v3,v4,v5: string;
begin
  v1:= InputBox('Periodo', 'Primer Periodo', DBLookupComboBox1.Text);
  v4:= InputBox('Periodo', 'Segundo Periodo', DBLookupComboBox1.Text);
  v2:= InputBox('Tipo Comprobante', 'Tipo', '02');
  v3:= InputBox('Cuenta del Gasto', 'Cuenta', '51%');
  v5:= InputBox('Cuenta del IVA', 'Cuenta', '2408%');


  ReporteadorP('BASE GASTOS GRAVADOS','SELECT  CONTEncComp.Tipo_Comprobante +'+chr(39)+' - '+chr(39)+'+convert(varchar,CONTEncComp.Numero_Comprobante) as Comprobante,Convert(varchar,Fecha_Comprobante,103) as Fecha,Periodo_Proceso as Periodo'+
    ' ,CONTEncComp.Estado,CONTDetComp.Cuenta,CONTCuenta.Descripcion,Valor_Debito,Valor_Credito,'+chr(39)+' - '+chr(39)+' as P,CONTEncComp.Descripcion '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta'+
    ' WHERE CONTDetComp.cuenta = CONTCuenta.cuenta AND (CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' OR CONTEncComp.ESTADO = NULL) AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    '       CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    '   CONTDetComp.Tipo_Comprobante+convert(varchar,CONTDetComp.Numero_Comprobante) IN '+
    '  (SELECT Tipo_Comprobante+convert(varchar,Numero_Comprobante) '+
    '   FROM CONTDetComp '+
    '   WHERE Cuenta Like ' + chr(39)+v5+chr(39)+') AND'+
    ' (CONTEncComp.Periodo_Proceso like ' + chr(39)+v1+chr(39)+ ' OR '+
    ' CONTEncComp.Periodo_Proceso like ' + chr(39)+v4+chr(39)+ ') AND '+
    ' CONTEncComp.Tipo_Comprobante like ' + chr(39)+v2+chr(39)+ ' AND '+
    ' CONTDetComp.Cuenta Like ' + chr(39)+v3+chr(39)+
    ' ORDER BY CONTEncComp.Tipo_Comprobante','');
end;

procedure TMainForm.BaseComprasNoGrabadasIVA1Click(Sender: TObject);
Var
  v1,v2,v3,v4,v5: string;
begin
  v1:= InputBox('Periodo', 'Primer Periodo', DBLookupComboBox1.Text);
  v4:= InputBox('Periodo', 'Segundo Periodo', DBLookupComboBox1.Text);
  v2:= InputBox('Tipo Comprobante', 'Tipo', '02');
  v3:= InputBox('Cuenta del Gasto', 'Cuenta', '51%');
  v5:= InputBox('Cuenta del IVA', 'Cuenta', '2408%');


  ReporteadorP('BASE GASTOS GRAVADOS','SELECT  CONTEncComp.Tipo_Comprobante +'+chr(39)+' - '+chr(39)+'+convert(varchar,CONTEncComp.Numero_Comprobante) as Comprobante,Convert(varchar,Fecha_Comprobante,103) as Fecha,Periodo_Proceso as Periodo'+
    ' ,CONTEncComp.Estado,CONTDetComp.Cuenta,CONTCuenta.Descripcion,Valor_Debito,Valor_Credito,'+chr(39)+' - '+chr(39)+' as P,CONTEncComp.Descripcion '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta'+
    ' WHERE CONTDetComp.cuenta = CONTCuenta.cuenta AND (CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' OR CONTEncComp.ESTADO = NULL) AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    '       CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    '   CONTDetComp.Tipo_Comprobante+convert(varchar,CONTDetComp.Numero_Comprobante) NOT IN '+
    '  (SELECT CONTDetComp.Tipo_Comprobante+convert(varchar,CONTDetComp.Numero_Comprobante) '+
    '   FROM CONTDetComp '+
    '   WHERE Cuenta Like ' + chr(39)+v5+chr(39)+') AND'+
    ' (CONTEncComp.Periodo_Proceso like ' + chr(39)+v1+chr(39)+ ' OR '+
    ' CONTEncComp.Periodo_Proceso like ' + chr(39)+v4+chr(39)+ ') AND '+
    ' CONTEncComp.Tipo_Comprobante like ' + chr(39)+v2+chr(39)+ ' AND '+
    ' CONTDetComp.Cuenta Like ' + chr(39)+v3+chr(39)+
    ' ORDER BY CONTEncComp.Tipo_Comprobante','');
end;

procedure TMainForm.LibrodeInventariosyB1Click(Sender: TObject);
begin
  FrmLibroInventariosBalance := tFrmLibroInventariosBalance.create(application);
  try
    FrmLibroInventariosBalance.DBLookupComboBox1.KeyValue := DBLookupComboBox1.Text;
    Datamodule1.MuestraconAcceso(FrmLibroInventariosBalance);
  except
    FrmLibroInventariosBalance.free;
  end;
end;

procedure TMainForm.Solicitud1Click(Sender: TObject);
begin
  FrmPresupuestoM  := TFrmPresupuestoM.Create(Application);
  try
    Datamodule1.MuestraconAcceso(FrmPresupuestoM);
  except
    FrmPresupuestoM.free;
  end;
end;

procedure TMainForm.Reportedesolicitudes1Click(Sender: TObject);
begin
  FrmInformePresupuestoM  := TFrmInformePresupuestoM.Create(Application);
  try
    Datamodule1.MuestraconAcceso(FrmInformePresupuestoM);
  except
    FrmInformePresupuestoM.free;
  end;
end;

procedure TMainForm.deCartera1Click(Sender: TObject);
begin
  ReporteadorP('Conciliación de Cuentas por Cobrar.','SELECT CONTDetComp.Tercero,CONTTerce.Primer_Apellido,CONTDetComp.Cuenta,DocSoporte,sum(Valor_Debito) as Debito,sum(Valor_Credito) as Credito,sum(Valor_Debito) - sum(Valor_Credito) as Diferencia '+
  ' FROM CONTEncComp,CONTDetComp,CONTTerce '+
  ' WHERE CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
  ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
  '    CONTDetComp.tercero = CONTTerce.Numero_Documento+CONTTerce.Sucursal AND '+
  '    CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
  '    CONTEncComp.Estado ='+chr(39)+ 'G'+chr(39)+ ' AND CONTDetComp.Cuenta like '+chr(39)+ '1305%'+chr(39)+
  ' GROUP BY CONTDetComp.Tercero,CONTTerce.Primer_Apellido,CONTDetComp.Cuenta,DocSoporte '+
  ' Having sum(Valor_Debito) - sum(Valor_Credito) <> 0 '+
  ' ORDER BY CONTDetComp.Tercero,CONTTerce.Primer_Apellido,CONTDetComp.Cuenta,DocSoporte ','');
end;

procedure TMainForm.Facturasaldia1Click(Sender: TObject);
begin
  ReporteadorP('Conciliación de Cuentas por Cobrar.','SELECT CONTDetComp.Tercero,CONTTerce.Primer_Apellido,CONTDetComp.Cuenta,DocSoporte,sum(Valor_Debito) as Debito,sum(Valor_Credito) as Credito,sum(Valor_Debito) - sum(Valor_Credito) as Diferencia '+
  ' FROM CONTEncComp,CONTDetComp,CONTTerce '+
  ' WHERE CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
  ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
  '    CONTDetComp.tercero = CONTTerce.Numero_Documento+CONTTerce.Sucursal AND '+
  '    CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
  '    CONTEncComp.Estado ='+chr(39)+ 'G'+chr(39)+ ' AND CONTDetComp.Cuenta like '+chr(39)+ '1305%'+chr(39)+
  ' GROUP BY CONTDetComp.Tercero,CONTTerce.Primer_Apellido,CONTDetComp.Cuenta,DocSoporte '+
  ' Having sum(Valor_Debito) - sum(Valor_Credito) = 0 '+
  ' ORDER BY CONTDetComp.Tercero,CONTTerce.Primer_Apellido,CONTDetComp.Cuenta,DocSoporte ','');
end;

procedure TMainForm.Carteracontable1Click(Sender: TObject);
begin
  FrmCarteraContable  := TFrmCarteraContable.Create(Self);
  FrmCarteraContable.Show;
end;

procedure TMainForm.PlandeCuentas2Click(Sender: TObject);
begin
  ReporteadorP('Listado de Cuentas Contables','SELECT * FROM CONTCuenta','');
end;

procedure TMainForm.erceros2Click(Sender: TObject);
begin
  ReporteadorP('Listado de Terceros','SELECT * FROM CONTTerce','');
end;

procedure TMainForm.AuxiliarCuentaTerceroconBase1Click(Sender: TObject);
begin
{  FrmLibroAuxiliarCtaTercero2 := tFrmLibroAuxiliarCtaTercero2.create(application);
  try
    FrmLibroAuxiliarCtaTercero2.DBLookupComboBox1.KeyValue := DBLookupComboBox1.Text;
    Datamodule1.MuestraconAcceso(FrmLibroAuxiliarCtaTercero2);
  except
    FrmLibroAuxiliarCtaTercero2.free;
  end;}
end;

procedure TMainForm.PorEmpresa2Click(Sender: TObject);
var
  v1: string;
begin
  v1:= InputBox('Empresa', 'Cod Empresa', '');

  ReporteadorP('Por Empresa','SELECT left(CONTDetComp.Centro_Costo,6) as CC,CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,Periodo_Proceso as Periodo,left(CONTEncComp.Descripcion,20) as Descripcion,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero, left(CONTTerce.Primer_Apellido,30) as NomTercero,'+
    ' left(CONTDetComp.DocSoporte,15) as DocSoporte,CONTDetComp.Valor_Debito,CONTDetComp.Valor_Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta, CONTTerce '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+

    ' CONTDetComp.tercero = CONTTerce.numero_documento+CONTTerce.Sucursal AND '+

    ' CONTEncComp.Empresa Like ' + chr(39)+v1+chr(39) +
    ' ORDER BY fecha_comprobante ','');
end;

procedure TMainForm.yEmpresa1Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Comprobante', 'Tipo', '01');
  v2:= InputBox('Comprobante', 'Empresa', '');

  ReporteadorP('Por Tipo Comp. y Empresa','SELECT CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,Periodo_Proceso as Periodo,left(CONTEncComp.Descripcion,20) as Descripcion,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero,left(CONTDetComp.Centro_Costo,6) as CC,left(CONTDetComp.DocSoporte,15) as DocSoporte,CONTDetComp.Valor_Debito,CONTDetComp.Valor_Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+
    ' CONTEncComp.Tipo_Comprobante Like ' + chr(39)+v1+chr(39) +
    ' AND CONTEncComp.Empresa Like ' + chr(39)+v2+chr(39)+
    ' ORDER BY fecha_comprobante ','');
end;

procedure TMainForm.yEmpresa2Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Comprobante', 'Periodo', DBLookupComboBox1.Text);
  v2:= InputBox('Comprobante', 'Empresa', '');

  ReporteadorP('Por Periodo Proceso y Empresa','SELECT Periodo_Proceso as Periodo,CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,left(CONTEncComp.Descripcion,20) as Descripcion,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero, left(CONTTerce.Primer_Apellido,30) as NomTercero, '+
    ' left(CONTDetComp.Centro_Costo,6) as CC,left(CONTDetComp.DocSoporte,15) as DocSoporte,CONTDetComp.Valor_Debito,CONTDetComp.Valor_Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta, CONTTerce '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+
    ' CONTDetComp.tercero = CONTTerce.numero_documento+CONTTerce.Sucursal AND '+
    ' CONTEncComp.Periodo_Proceso like ' + chr(39)+v1+chr(39) +
    ' AND CONTEncComp.Empresa Like ' + chr(39)+v2+chr(39)+
    ' ORDER BY fecha_comprobante ','');
end;

procedure TMainForm.yEmpresa3Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Comprobante', 'Cuenta', '110505');
  v2:= InputBox('Comprobante', 'Empresa', '');

  ReporteadorP('Por Cuenta y Empresa','SELECT Periodo_Proceso as Periodo,CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,left(CONTEncComp.Descripcion,20) as Descripcion,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero, left(CONTTerce.Primer_Apellido,30) as NomTercero,'+
    ' left(CONTDetComp.Centro_Costo,6) as CC,left(CONTDetComp.DocSoporte,15) as DocSoporte,CONTDetComp.Valor_Debito,CONTDetComp.Valor_Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta, CONTTerce '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+

    ' CONTDetComp.tercero = CONTTerce.numero_documento+CONTTerce.Sucursal AND '+

    ' CONTDetComp.Cuenta like ' + chr(39)+v1+chr(39) +
    ' AND CONTEncComp.Empresa Like ' + chr(39)+v2+chr(39)+
    ' ORDER BY fecha_comprobante ','');
end;

procedure TMainForm.yEmpresa4Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Comprobante', 'Tercero', '79500567');
  v2:= InputBox('Comprobante', 'Empresa', '');

  ReporteadorP('Por Tercero y Empresa','SELECT left(CONTDetComp.Tercero,15) as Tercero, left(CONTTerce.Primer_Apellido,30) as NomTercero,Periodo_Proceso as Periodo,CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,left(CONTEncComp.Descripcion,20) as Descripcion,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Centro_Costo,6) as CC,left(CONTDetComp.DocSoporte,15) as DocSoporte,CONTDetComp.Valor_Debito,CONTDetComp.Valor_Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta, CONTTerce '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+

    ' CONTDetComp.tercero = CONTTerce.numero_documento+CONTTerce.Sucursal AND '+

    ' CONTDetComp.Tercero Like ' + chr(39)+v1+chr(39) +
    ' AND CONTEncComp.Empresa Like ' + chr(39)+v2+chr(39)+
    ' ORDER BY fecha_comprobante ','');
end;

procedure TMainForm.yEmpresa5Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Comprobante', 'Centro Costo', '9901');
  v2:= InputBox('Comprobante', 'Empresa', '');

  ReporteadorP('Por Centro_Costo y Empresa','SELECT left(CONTDetComp.Centro_Costo,6) as CC,CONTEncComp.Tipo_Comprobante +'+chr(39)+'-'+chr(39)+'+ convert(varchar,CONTEncComp.Numero_Comprobante) as Comprob,Convert(varchar,Fecha_Comprobante,103) as Fecha,Periodo_Proceso as Periodo,left(CONTEncComp.Descripcion,20) as Descripcion,rtrim(CONTDetComp.Cuenta) +'+chr(39)+'-'+chr(39)+'+ left(CONTCuenta.Descripcion,25) as Cuenta,left(CONTDetComp.Tercero,15) as Tercero, left(CONTTerce.Primer_Apellido,30) as NomTercero,'+
    ' left(CONTDetComp.DocSoporte,15) as DocSoporte,CONTDetComp.Valor_Debito,CONTDetComp.Valor_Credito '+
    ' FROM  CONTEncComp,CONTDetComp,CONTCuenta, CONTTerce '+
    ' WHERE CONTEncComp.Estado <> '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Tipo_Comprobante = CONTDetComp.Tipo_Comprobante AND '+
    ' CONTEncComp.Numero_Comprobante = CONTDetComp.Numero_Comprobante AND '+
    ' CONTEncComp.Empresa = CONTDetComp.Empresa AND '+
    ' CONTDetComp.Cuenta = CONTCuenta.Cuenta AND '+

    ' CONTDetComp.tercero = CONTTerce.numero_documento+CONTTerce.Sucursal AND '+

    ' CONTDetComp.Centro_Costo Like ' + chr(39)+v1+chr(39) +
    ' AND CONTEncComp.Empresa Like ' + chr(39)+v2+chr(39)+
    ' ORDER BY fecha_comprobante ','');
end;

procedure TMainForm.SpeedButton6Click(Sender: TObject);
begin
  Edit7.Text:='';
end;

procedure TMainForm.SpeedButton7Click(Sender: TObject);
begin
  StrToClipboardSG(StringGrid1);
end;

procedure TMainForm.ConciliacindeCausacionesVsEgresos1Click(
  Sender: TObject);
begin
  ReporteadorP('','SELECT Left(A.Tipo_Comprobante+'+chr(39)+'-'+chr(39)+'+convert(varchar,A.Numero_Comprobante),20) As Comprob,A.Cuenta,X.Descripcion,A.Tercero,Y.Primer_Apellido,Left(A.DocSoporte,20) as DocSoporte,A.Valor_Debito as TotalDebito_Causacion,A.Valor_Credito as TotalCredito_Causacion,'
  +'  (SELECT sum(C.Valor_Debito) '
  +' 	FROM CONTDetComp as C,CONTTipoComp as D '
  +' 	WHERE C.Tipo_Comprobante = D.Tipo_Comprobante '
  +' 	AND C.DocSoporte = A.DocSoporte '
  +' 	AND D.Tipo = '+chr(39)+ '2' +chr(39)
  +' 	AND C.Tercero = A.Tercero '
  +' 	AND C.Cuenta = A.Cuenta) AS TotalDebito_Egresado, '
  +' 	(SELECT sum(C.Valor_Credito) '
  +' 	FROM CONTDetComp as C,CONTTipoComp as D '
  +' 	WHERE C.Tipo_Comprobante = D.Tipo_Comprobante '
  +' 	AND C.DocSoporte = A.DocSoporte '
  +' 	AND D.Tipo = '+chr(39)+ '2' +chr(39)
  +' 	AND C.Tercero = A.Tercero '
  +' 	AND C.Cuenta = A.Cuenta) AS TotalCredito_Egresado '
  +' FROM  CONTDetComp as A,CONTTipoComp as B,CONTCuenta as X,CONTTerce as Y '
  +' WHERE A.Tipo_Comprobante = B.Tipo_Comprobante '
  +'       AND A.Cuenta = X.Cuenta '
  +'       AND A.Tercero = Y.Numero_Documento '
  +' 	  AND A.DocSoporte <> '+chr(39)+chr(39)
  +' 	  AND Tipo = '+chr(39)+ '1' +chr(39)
  +' ORDER BY A.Tipo_Comprobante, A.Numero_Comprobante','');

end;

procedure TMainForm.Ayuda1Click(Sender: TObject);
begin
  shellexecute(handle,'open',pchar('Contabilidad.pdf'),'','',sw_shownormal);
end;

procedure TMainForm.DiferenciasentreM1Click(Sender: TObject);
begin
  ReporteadorP('Dif. entre Prueba y Oficial','SELECT * '+
    ' FROM  GemaIPSPrueba..CONTDetComp '+
    ' WHERE Tipo_Comprobante+Empresa+convert(varchar,Numero_comprobante)+Cuenta+Tercero+Centro_Costo+convert(varchar,Valor_Debito)+convert(varchar,Valor_Credito) NOT IN '+
    ' (SELECT Tipo_Comprobante+Empresa+convert(varchar,Numero_comprobante)+Cuenta+Tercero+Centro_Costo+convert(varchar,Valor_Debito)+convert(varchar,Valor_Credito) '+
    ' FROM  CONTDetComp)','');
end;

end.
