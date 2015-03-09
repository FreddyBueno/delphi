unit FListadoPacientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, JvGradient, JvComponent, JvRollOut, ExtCtrls,
  JvItemsPanel, JvFooter, StdCtrls, Buttons, JvBitBtn,
  JvColorBox, JvColorButton, JvCaptionButton, Grids, jpeg,
  JvArrowButton, JvLabel, JvEdit, JvBevel, JvStringGrid, JvSplitter, JvCheckBox,
  JvRadioButton, JvPanel, JvComCtrls, DB, ADODB, DBCtrls, dbcgrids, StrUtils,
  JvSpecialProgress, JvSyncSplitter, JvRichEdit,
  JvDateTimePicker, DateUtils, TeeProcs, TeEngine, Chart, Series,
  JvCombobox, JvListBox, JvCtrls, ExtDlgs, ToolWin, ImgList,shellapi, IniFiles,
  JvExStdCtrls, JvExComCtrls, JvExExtCtrls, JvExGrids, JvExButtons,
  JvExtComponent, JvExControls, JvBackgrounds, Mask, JvExMask, JvToolEdit,
  JvBaseEdits, JvBaseDlg, JvCalc, JvComponentBase, JvInterpreter, JvExForms,
  JvScrollBox, Vcl.Samples.Spin, JvSwitch, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPScxPageControlProducer, dxPScxEditorProducers,
  dxPScxExtEditorProducers, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, cxButtons, dxPSCore, dxPSContainerLnk, dxPSDBCtrlLnks,
  dxPSStdGrLnk, dxPSLbxLnk, dxPSTCLnk, dxPSBaseGridLnk, dxPSGrLnks,
  Vcl.OleCtrls,  dxPSImgLnk,
  dxPSGraphicLnk,Fmx.Printer, JvPrvwDoc, JvPrvwRender, Vcl.DBGrids,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, cxClasses, fDiagnostico,
  fAdmisionesActivas, f4505;

type
    THilo = class(TThread)
      Ejecutar : procedure of object;
      procedure Execute; override;
    end;
  TFrmProcFormatos = class(TForm)
    Panel1: TPanel;
    JvRollout2: TJvRollout;
    JvGradient2: TJvGradient;
    Panel2: TPanel;
    Panel9: TPanel;
    JvGradient11: TJvGradient;
    EditNombreP: TJvEdit;
    JvLabel1: TJvLabel;
    EditEdad: TJvEdit;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    EditSexo: TJvEdit;
    JvLabel4: TJvLabel;
    EditEstadoCivil: TJvEdit;
    EditDireccionCP: TJvEdit;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    EditTelefonoP: TJvEdit;
    JvLabel7: TJvLabel;
    EditOcupacionP: TJvEdit;
    JvLabel8: TJvLabel;
    JvBevel1: TJvBevel;
    EditResponsable: TJvEdit;
    JvLabel10: TJvLabel;
    JvLabel12: TJvLabel;
    EditTelResp: TJvEdit;
    JvLabel13: TJvLabel;
    EditAseguradora: TJvEdit;
    JvGradient13: TJvGradient;
    QryGeneral: TADOQuery;
    EditFecNaci: TJvEdit;
    JvLabel20: TJvLabel;
    EditProfesional: TJvEdit;
    JvLabel21: TJvLabel;
    ADOQueryFormatos: TADOQuery;
    DataSource3: TDataSource;
    QryApoyo: TADOQuery;
    ADOQuery13: TADOQuery;
    ADOQuery5: TADOQuery;
    ADOQuery10: TADOQuery;
    ADOQuery4: TADOQuery;
    ADOQuery9: TADOQuery;
    ADOQuery6: TADOQuery;
    ADOQuery7: TADOQuery;
    ADOQuery11: TADOQuery;
    Panel10: TPanel;
    JvRollout7: TJvRollout;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    JvGradient9: TJvGradient;
    JvBitBtn4: TJvBitBtn;
    JvBitBtn5: TJvBitBtn;
    JvBitBtn6: TJvBitBtn;
    PCOpciones: TPageControl;
    TabSheet2: TTabSheet;
    JvLabel9: TJvLabel;
    Panel17: TPanel;
    JvGradient6: TJvGradient;
    PCBusquedas: TJvPageControl;
    TabSheet19: TTabSheet;
    JvGradient1: TJvGradient;
    JvLabel11: TJvLabel;
    EditNumeroCedula: TJvEdit;
    BtnBuscarC: TJvBitBtn;
    TabSheet20: TTabSheet;
    JvGradient10: TJvGradient;
    JvLabel14: TJvLabel;
    JvLabel15: TJvLabel;
    EditPrimerApellido: TJvEdit;
    EditSegundoApellido: TJvEdit;
    BtnBuscarApe: TJvBitBtn;
    TabSheet21: TTabSheet;
    JvGradient12: TJvGradient;
    JvLabel16: TJvLabel;
    JvLabel17: TJvLabel;
    JvLabel18: TJvLabel;
    JvLabel19: TJvLabel;
    EditPrimerApe: TJvEdit;
    EditSegundoApe: TJvEdit;
    EditPrimerNom: TJvEdit;
    EditSegundoNom: TJvEdit;
    BtnBuscarNom: TJvBitBtn;
    JvPanel1: TJvPanel;
    RBHistoria: TJvRadioButton;
    RBHistoriaSuya: TJvRadioButton;
    ChkOrdena: TJvCheckBox;
    SGPacientes: TJvStringGrid;
    TabSheet4: TTabSheet;
    PageControl2: TPageControl;
    Panel3: TPanel;
    JvLabel25: TJvLabel;
    LblFormato: TJvLabel;
    Panel11: TPanel;
    TabSheet5: TTabSheet;
    JvSyncSplitter2: TJvSyncSplitter;
    Panel5: TPanel;
    JvGradient4: TJvGradient;
    JvPageControl1: TJvPageControl;
    TabSheet6: TTabSheet;
    SGDelDia: TJvStringGrid;
    PnlMensaje1: TPanel;
    Panel16: TPanel;
    JvBitBtn1: TJvBitBtn;
    TabSheet7: TTabSheet;
    JvGradient5: TJvGradient;
    JvLabel22: TJvLabel;
    JvLabel23: TJvLabel;
    DTPDesde: TJvDateTimePicker;
    DTPHasta: TJvDateTimePicker;
    SGPorRango: TJvStringGrid;
    PnlMensaje2: TPanel;
    BtnBuscarRango: TJvBitBtn;
    TabSheet8: TTabSheet;
    SGTodas: TJvStringGrid;
    PnlMensaje3: TPanel;
    Panel13: TPanel;
    JvBitBtn2: TJvBitBtn;
    Panel12: TPanel;
    RichEdit1: TJvRichEdit;
    Panel14: TPanel;
    JvBitBtn3: TJvBitBtn;
    TabSheet17: TTabSheet;
    JvSplitter2: TJvSplitter;
    Panel6: TPanel;
    JvPageControl2: TJvPageControl;
    TabSheet10: TTabSheet;
    Chart2: TChart;
    Series2: TPieSeries;
    TabSheet11: TTabSheet;
    Chart3: TChart;
    Series3: TBarSeries;
    JvGradient15: TJvGradient;
    Timer1: TTimer;
    Panel15: TPanel;
    JvGradient16: TJvGradient;
    LblAdvertencia: TJvLabel;
    PnlAdvertencia: TPanel;
    ListAdvertencias: TJvListBox;
    LblC: TJvLabel;
    QryGeneralDiag: TADOQuery;
    PnlBusca: TPanel;
    Panel18: TPanel;
    Label19: TLabel;
    EditPalabra: TEdit;
    BtnBuscar: TBitBtn;
    SGDatos: TStringGrid;
    QryMensajes: TADOQuery;
    ADOConnection1: TADOConnection;
    JvBitBtn9: TJvBitBtn;
    JvLabel26: TJvLabel;
    JvEdit1: TJvEdit;
    Panel19: TPanel;
    DBCtrlGridPpal1: TDBCtrlGrid;
    PanelPpal6: TPanel;
    DBMemoPpal1: TDBMemo;
    DBImagePpal1: TDBImage;
    Panel20: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    OpenPictureDialog2: TOpenPictureDialog;
    ADOImagenes: TADOQuery;
    DBImage1: TDBImage;
    DataSource1: TDataSource;
    ImageList1: TImageList;
    ColorDialog1: TColorDialog;
    Panel21: TPanel;
    DataSource2: TDataSource;
    QPacientes: TADOQuery;
    DBImage2: TDBImage;
    JvLabel27: TJvLabel;
    JvLabel28: TJvLabel;
    JvLabel29: TJvLabel;
    JvEdit3: TJvEdit;
    JvEdit2: TJvEdit;
    JvBackground1: TJvBackground;
    MonthCalendar1: TMonthCalendar;
    JvInterpreterProgram1: TJvInterpreterProgram;
    CheckBox1: TCheckBox;
    DSGeneral: TDataSource;
    GRResumen: TJvStringGrid;
    Panel22: TPanel;
    BtnIngresar: TJvBitBtn;
    Button1: TButton;
    JvGradient14: TJvGradient;
    ProgressBar1: TJvSpecialProgress;
    DateHC: TDateTimePicker;
    Label7: TLabel;
    ADOQTraeInf: TADOQuery;
    JvBitBtn10: TJvBitBtn;
    JvBitBtn11: TJvBitBtn;
    pnlbusca2: TPanel;
    pnl: TPanel;
    lbl: TLabel;
    EditPalabra2: TEdit;
    btn: TBitBtn;
    SGDatos2: TStringGrid;
    ADOQCUPS: TADOQuery;
    ADOQtmp: TADOQuery;
    SwM: TJvSwitch;
    lbx: TListBox;
    Label2: TLabel;
    TabSheet3: TTabSheet;
    RBCitas: TJvRadioButton;
    fprn: TdxComponentPrinter;
    Panel4: TPanel;
    JvBitBtn14: TJvBitBtn;
    Image1: TImage;
    fprnLink1: TdxImageReportLink;
    gbx: TGroupBox;
    rgp: TRadioGroup;
    ADOQTotal: TADOQuery;
    DSTotal: TDataSource;
    TabSheet12: TTabSheet;
    DBGrid: TDBGrid;
    TabSheet13: TTabSheet;
    DBGrid1: TDBGrid;
    DSTot2: TDataSource;
    ADOQTotalEdSx: TADOQuery;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label4: TLabel;
    DateTimePicker2: TDateTimePicker;
    DSProg: TDataSource;
    ADOGrProg: TADOQuery;
    JvBitBtn13: TJvBitBtn;
    JvBitBtn15: TJvBitBtn;
    Panel24: TPanel;
    ADOQPivot: TADOQuery;
    grd: TStringGrid;
    JvBitBtn8: TJvBitBtn;
    Panel7: TPanel;
    Panel23: TPanel;
    ComboBox1: TComboBox;
    Label21: TLabel;
    chk: TCheckBox;
    JvBitBtn12: TJvBitBtn;
    JvBitBtn16: TJvBitBtn;
    JvBitBtn17: TJvBitBtn;
    Panel25: TPanel;
    BitBtnLimpiar: TBitBtn;
    BitBtnCerrarPnlBusca2: TBitBtn;
    StatusBar1: TStatusBar;
    Timer2: TTimer;
    btnDiag: TJvBitBtn;
    JvLabel24: TJvLabel;
    edtAdmision: TJvEdit;
    btnRes4505: TJvBitBtn;
    TabSheet14: TTabSheet;
    Panel8: TPanel;
    lbl2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Button2: TButton;
    Button3: TButton;
    Chart1: TChart;
    Series1: TLineSeries;
    JvBitBtn7: TJvBitBtn;
    procedure CargarPacientes;
    procedure LimpiaGrilla(Grilla : TJvStringGrid; Col : Integer);
    procedure RBHistoriaClick(Sender: TObject);
    procedure RBHistoriaSuyaClick(Sender: TObject);
    procedure SGPacientesClick(Sender: TObject);
    procedure BuscarPacientes;
    procedure BtnBuscarCClick(Sender: TObject);
    procedure BtnBuscarApeClick(Sender: TObject);
    procedure BtnBuscarNomClick(Sender: TObject);
    procedure ChkOrdenaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBImagePpal1Click(Sender: TObject);
    procedure refrescar(Sender: TObject; var Key: Char);
    procedure BtnIngresarClick(Sender: TObject);
    procedure CargaFormatos;
    procedure CrearHilo;
    procedure JvBitBtn1Click(Sender: TObject);
    procedure BtnBuscarRangoClick(Sender: TObject);
    procedure JvBitBtn2Click(Sender: TObject);
    Procedure imprime(Grilla : TJvStringGrid; st:string);
    procedure SGDelDiaClick(Sender: TObject);
    procedure SGPorRangoClick(Sender: TObject);
    procedure SGTodasClick(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure TabSheet5Show(Sender: TObject);
    procedure AdquiereImagen(Sender: TObject);
    procedure JvBitBtn4Click(Sender: TObject);
    procedure JvBitBtn5Click(Sender: TObject);
    procedure JvBitBtn6Click(Sender: TObject);
    procedure TabSheet17Show(Sender: TObject);
    procedure TabSheet20Show(Sender: TObject);
    procedure TabSheet21Show(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure LblAdvertenciaClick(Sender: TObject);
    procedure EditNumeroCedulaKeyPress(Sender: TObject; var Key: Char);
    procedure EditPrimerApellidoKeyPress(Sender: TObject; var Key: Char);
    procedure EditSegundoApellidoKeyPress(Sender: TObject; var Key: Char);
    procedure EditPrimerApeKeyPress(Sender: TObject; var Key: Char);
    procedure EditSegundoApeKeyPress(Sender: TObject; var Key: Char);
    procedure EditPrimerNomKeyPress(Sender: TObject; var Key: Char);
    procedure EditSegundoNomKeyPress(Sender: TObject; var Key: Char);
    procedure keyall(Sender: TObject; var Key: Char);
    procedure keyNumber(Sender: TObject; var Key: Char);
    procedure LimpiaEdit;
    procedure BtnBuscarClick(Sender: TObject);
    procedure AmpliaPanel(Sender: TObject);
    procedure AmpliaPanelBt3(Sender: TObject);
    procedure SGDatosDblClick(Sender: TObject);
    procedure EditPalabraKeyPress(Sender: TObject; var Key: Char);
    procedure LimpiaGrilla1(Grilla : TStringGrid; Col : Integer);
    procedure SGPacientesDblClick(Sender: TObject);
    procedure BtnIngresarEnter(Sender: TObject);
    procedure BusDiag(Sender: TObject);
    procedure onChangeCod(Sender: TObject);
    procedure onChangeDes(Sender: TObject);
    procedure onKeyPressTex(Sender: TObject;
                             var Key: Char);
    procedure onChangeCan(Sender: TObject);
    procedure JvBitBtn9Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RecuperaHC(Sender: TObject);
    procedure GuardaHC(Sender: TObject);
    procedure JvRollout7Collapse(Sender: TObject);
    procedure JvRollout7Expand(Sender: TObject);
    procedure CalculaFormula(Sender: TObject);
    procedure SGTodasKeyPress(Sender: TObject; var Key: Char);
    procedure LeeDatos(Sender: TObject);
    procedure GRResumenClick(Sender: TObject);
    procedure JvBitBtn10Click(Sender: TObject);
    procedure AmpliaPanelBT(Sender: TObject);
    procedure AmpliaPanelBT2(Sender: TObject);
    procedure JvBitBtn11Click(Sender: TObject);
    procedure btnClick(Sender: TObject);
    procedure SGDatos2DblClick(Sender: TObject);
    procedure lbxClick(Sender: TObject);
    procedure Mousexx(Sender: TObject; Button: TMouseButton;  Shift: TShiftState; X, Y: Integer);
    procedure RBCitasClick(Sender: TObject);
    procedure JvBitBtn14Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure JvBitBtn13Click(Sender: TObject);
    procedure JvBitBtn15Click(Sender: TObject);
    procedure grdClick(Sender: TObject);
    procedure JvBitBtn8Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure JvBitBtn12Click(Sender: TObject);
    procedure JvBitBtn16Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure JvBitBtn17Click(Sender: TObject);
    procedure limpiaCampo(Sender: TObject);
    procedure BitBtnCerrarPnlBusca2Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure btnDiagClick(Sender: TObject);
    procedure btnRes4505Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure JvBitBtn7Click(Sender: TObject);
  private
    ImageHolder       : Timage;
    sW            : Boolean;
    Obj           : String;
    PActiv        : Integer;
    ServCan       : String;
    { Private declarations }



  public
    Hilo     : THilo;
    FN       : TDate;
    Cargue   : Integer;
    Vector   : array of array of string;
    { Public declarations }
  end;

var
  FrmProcFormatos   : TFrmProcFormatos;
  NumeroAdmision    : string;
  PacienteID        : integer;
  Formato           : string;
  Seccion           : string;
  NoC2              : Integer;
  x1,y1,x2,y2       : integer;
  r1,r2             : Trect;
  xcont             : Integer;
  BkHC              : TIniFile;
  txgraf            : String;
  //Componentes para creación en tiempo de ejecución
  TabSheetnuevo     : TTabSheet;
  Textnuevo         : TLabel;
  EditNuevo         : TEdit;
  MemoNuevo         : TMemo;
  DBImageNuevo      : TImage;
  FrameNuevo        : TJVScrollBox;
  PanelNuevo2       : TGroupBox;
  ComboBoxNuevo     : TCombobox;
  CheckBoxNuevo     : TCheckBox;
  DateTimeNuevo     : TDatetimePicker;
  DBLComboNuevo     : TDBLookupComboBox;
  DBLComboNuevo1    : TDBLookupComboBox;
  DBADOQueryNuevo   : TADOQuery;
  DBDatasourceNuevo : TDataSource;
  DBADOConectionNuevo : TAdoConnection;
  RadioNuevo        : TRadioButton;
  NoC,TamMemo       : Integer;
  Fondo             : TJvGradient;
  Panel             : TPanel;
  Panel1            : TPanel;
  Boton             : TBitBtn;
  Boton1            : TBitBtn;
  img               : TImage;
  TextN             : TJvEdit;
  TextN1            : TJvEdit;
  TextN2            : TJvEdit;
  PanelNuevo        : TPanel;

const
  ancho = 1280; // Ancho del diseño
  alto = 1024;  // Alto del diseño

implementation

uses FImprimeFormato, UDataModule1, SAPAcientes2,Libreria_Prateinco,Libreria_PrateincoForm,
  CapturaBasicaSelect, GemaPaint,Reporteador, MAIN,
  SAEgresos, VerificaHuella, FSolicitud, FCargos;

{$R *.dfm}


procedure TFrmProcFormatos.CalculaFormula(Sender: TObject);
Var Formula :Extended;
    param,cadena,FormatoI,SeccionI,CampoI,Condicion: string;
    secc,i,secc2,xcont2: integer;
Begin
  For secc2 := 0 To  PageControl2.ComponentCount-1 Do
  Begin
    For xcont2 := 0 To  PageControl2.Pages[secc2].Components[0].Components[0].ComponentCount-1 Do
    Begin
      If (PageControl2.Pages[secc2].Components[0].Components[0].Components[xcont2] is TEdit) Then
      Begin
        If leftstr((PageControl2.Pages[secc2].Components[0].Components[0].Components[xcont2] as TEdit).Name,2) = 'Fm' Then
        Begin
          //*****************
            i:=1;
            cadena:= (PageControl2.Pages[secc2].Components[0].Components[0].Components[xcont2] as TEdit).TextHint;
            param := Busca_Item((PageControl2.Pages[secc2].Components[0].Components[0].Components[xcont2] as TEdit).TextHint,i);  // Busca los parametros enserados en | Es un mumero de 9 compuesto por formato,seccion,campo
            // Extrae del parametro la porcion encerrada entre {} que es una condicion de seleccion para encontrar un registro especifico de ese campo
            // en caso de encontrar varios registro para esa mima condicion,  devuelve el primero
            // la condicion por defecto es el dia de hoy.
            condicion := Busca_Entre(param,'{','}');
            if condicion <> '' then param := Replace(param, '{'+condicion+'}', '');
            while param <> '' do
            Begin
              FormatoI := leftstr(param,3);
              SeccionI := rightstr(leftstr(param,6),3);
              CampoI   := rightstr(param,3);
              if (FormatoI <> Formato) OR (condicion <> '') then
              Begin
                ADOQTmp.Close;
                ADOQTmp.SQL.Clear;
                ADOQTmp.SQL.Add('SELECT * '+
                             'FROM VHistoriasPacientes '+
                             'WHERE Codigo_Formato = '+chr(39)+FormatoI+chr(39)+' AND '+
                             '      Codigo_Seccion = '+chr(39)+SeccionI+chr(39)+' AND '+
                             '      Codigo_Campo   = '+chr(39)+CampoI+chr(39)+' AND '+
                             '      Codigo_SubCampo= '+chr(39)+'000'+chr(39)+' AND '+
                             '      No_Historia    = '+chr(39)+JvEdit1.Text+chr(39));
                 if condicion <> '' then  ADOQTmp.SQL.Add(' AND ' +Condicion)
                 Else ADOQTmp.SQL.Add(' AND Fecha = getdate()');

                ADOQTmp.Open;
                ADOQtmp.Last;
                cadena := Replace(cadena, '|'+param+'{'+condicion+'}|', ADOQTmp.FieldValues['Valor']);
                if cadena = '' then Cadena := '0';

                // Esta parte esta deshabilitada para desarrollo futuro
                {while NOT ADOQTmp.Eof do
                Begin


                  ADOQTmp.Next;
                End;}
              End
              Else Begin
                //Ubica la Seccion
                For Secc := 0 To  PageControl2.PageCount - 1 Do
                Begin
                  If leftstr(PageControl2.Pages[secc].Caption,3) = SeccionI Then break;
                End;
                //Ubica el Campo
                For xcont := 0 To  PageControl2.Pages[secc].Components[0].Components[0].ComponentCount-1 Do
                Begin
                  If (PageControl2.Pages[secc].Components[0].Components[0].Components[xcont] is TEdit) Then
                  Begin
                    If (PageControl2.Pages[secc].Components[0].Components[0].Components[xcont] as TEdit).Name = 'Nm'+CampoI Then
                    Begin
                      cadena := Replace(cadena, '|'+param+'|', (PageControl2.Pages[secc].Components[0].Components[0].Components[xcont] as TEdit).Text);
                      if cadena = '' then Cadena := '0'
                    End
                    Else If (PageControl2.Pages[secc].Components[0].Components[0].Components[xcont] as TEdit).Name = 'Fm'+CampoI Then
                    Begin
                      cadena := Replace(cadena, '|'+param+'|', (PageControl2.Pages[secc].Components[0].Components[0].Components[xcont] as TEdit).Text);
                      if cadena = '' then Cadena := '0';
                    End;
                  End;
                End;
              End;

              i:=i+1;
              param := Busca_Item((PageControl2.Pages[secc2].Components[0].Components[0].Components[xcont2] as TEdit).TextHint,i);
            End;

            //Evalua Expresión
            if cadena <> '' then begin
              JvInterpreterProgram1.Pas.Clear;
              JvInterpreterProgram1.Pas.Add(cadena);
              try
                JvInterpreterProgram1.Run;
              except
                //Showmessage('ERROR en esta cadena: '+(PageControl2.Pages[secc2].Components[0].Components[0].Components[xcont2] as TEdit).TextHint+' -> '+cadena);
                //Showmessage('Reemplaza en esta: '+' -> '+cadena);
              end;
              if JvInterpreterProgram1.VResult <> null then (PageControl2.Pages[secc2].Components[0].Components[0].Components[xcont2] as TEdit).Text := JvInterpreterProgram1.VResult;
            end;

          //*****************
        End;
      End;
    End;
  End;
End;

procedure TFrmProcFormatos.RecuperaHC(Sender: TObject);
Begin
  if (Sender As TMemo).Text = '' Then
    (Sender As TMemo).Text := BkHC.ReadString('HC', (Sender As TMemo).HelpKeyword, '')
End;

//Procedimiento para Guardar del archivo plano la HC
procedure TFrmProcFormatos.GRResumenClick(Sender: TObject);
begin
  BtnIngresar.Visible := True;
  Button1.Visible := False;
  JvRollout7.Collapsed := True;
  Panel11.Width := 1;

  CrearHilo;

  LeeDatos(Nil);
end;

procedure TFrmProcFormatos.GuardaHC(Sender: TObject);
Begin
  if (Sender As TMemo).Text <> '' Then
    BkHC.WriteString('HC', (Sender As TMemo).HelpKeyword,(Sender As TMemo).Text);
End;

procedure THilo.Execute;
begin
  Ejecutar;
  Terminate;
end;

procedure TFrmProcFormatos.CargarPacientes;
var i : Integer;
    pac:string;
begin
  pac := SGPacientes.Rows[SGPacientes.Row].Strings[0];
  LimpiaEdit;
  if RBHistoria.Checked = True then
    begin
      QryGeneral.Close;
      QryGeneral.SQL.Clear;
      QryGeneral.SQL.Add('SELECT ISNULL(A.NO_ADMISION,'+#39+'--'+#39+') as NO_ADMISION,isnull(TP_ADMISION,'+#39+'--'+#39+') as TP_ADMISION, isnull(A.EST_ADMINSION,'+#39+'--'+#39+') as EST_ADMISION ,CCHISTORIA,p.TP_IDENT_USUAR,p.NR_IDENT_USUAR, ');
      QryGeneral.SQL.Add(' (rtrim(P.PRIMER_APELLIDO)+ '+#39+' '+#39+' + rtrim(isnull(P.SEGUNDO_APELLIDO,'+#39+''+#39+'))+ '+#39+' '+#39+' + rtrim(P.PRIMER_NOMBRE)+ '+#39+' '+#39+' + rtrim(isnull(P.SEGUNDO_NOMBRE,'+#39+''+#39+'))) as Nombre ');
      QryGeneral.SQL.Add(' ,P.ASEGURADORA, fec_nacimineto,sexo,estado_civil,Ocupacion,Dir_Casa_Pacien,Tel_Casa_Pacien,Nombre_Responde,Tel_Casa_Resp,Lugar_Nacimient,Dir_Trabajo_Pac,Tel_Trabajo_Pac,CONTTerce.Primer_Apellido as nomterce, ');
      QryGeneral.SQL.Add(' I.Primera_Fecha,I.Ultima_Fecha,DS_Ocupacion,P.ID ');
      QryGeneral.SQL.Add('FROM SAPacientes AS P left outer join ( select No_Historia,max(Fecha) as Ultima_Fecha, min(fecha) as Primera_Fecha from FDInformacion group by No_Historia ) I  on ');
      QryGeneral.SQL.Add('     P.CCHistoria = I.No_Historia  inner join CONTTerce on ');
      QryGeneral.SQL.Add('     P.Aseguradora = CONTTerce.Numero_Documento  inner join comunes.dbo.GEOcupacion  on ');
      QryGeneral.SQL.Add('      P.Ocupacion = comunes..GEOcupacion.CD_Ocupacion left join SAAdmisiones A on p.TP_IDENT_USUAR = A.TP_IDENT_USUAR and p.NR_IDENT_USUAR=A.NR_IDENT_USUAR ');
      if ChkOrdena.Checked = True then
        QryGeneral.SQL.Add(' order by Ultima_Fecha');
      QryGeneral.Open;
    end;

  if RBHistoriaSuya.Checked = True then
    begin
      QryGeneral.Close;
      QryGeneral.SQL.Clear;
      QryGeneral.SQL.Add('SELECT CCHISTORIA,TP_IDENT_USUAR,NR_IDENT_USUAR, ');
      QryGeneral.SQL.Add(' (rtrim(P.PRIMER_APELLIDO)+ '+chr(39)+' '+chr(39)+ ' + rtrim(isnull(P.SEGUNDO_APELLIDO,''''))+ '+chr(39)+' '+chr(39)+' + rtrim(P.PRIMER_NOMBRE)+ '+chr(39)+' '+chr(39)+' + rtrim(isnull(P.SEGUNDO_NOMBRE,''''))) as Nombre');
      QryGeneral.SQL.Add(' ,P.ASEGURADORA, fec_nacimineto,sexo,estado_civil,Ocupacion,Dir_Casa_Pacien,Tel_Casa_Pacien,Nombre_Responde,Tel_Casa_Resp ,Lugar_Nacimient,Dir_Trabajo_Pac,Tel_Trabajo_Pac,CONTTerce.Primer_Apellido as nomterce,min(FDInformacion.fecha) as Primera_Fecha,');
      QryGeneral.SQL.Add('max(FDInformacion.fecha) as Ultima_Fecha,DS_Ocupacion,P.ID ');
      QryGeneral.SQL.Add('FROM SAPacientes AS P inner join FDInformacion on ' );
      QryGeneral.SQL.Add('    P.CCHistoria = FDInformacion.No_Historia inner join CONTTerce on ' );
      QryGeneral.SQL.Add('    P.Aseguradora = CONTTerce.Numero_Documento inner join '+Datamodule1.ADOComunes.DefaultDatabase+'.dbo.GEOcupacion on ');
      QryGeneral.SQL.Add('    P.Ocupacion = '+Datamodule1.ADOComunes.DefaultDatabase+'.dbo.GEOcupacion.CD_Ocupacion ');
      QryGeneral.SQL.Add(' WHERE FDInformacion.Usuario = '+inttostr(Datamodule1.ADOQuery1.FieldValues['id']));
      QryGeneral.SQL.Add('GROUP BY P.ID,CCHISTORIA,TP_IDENT_USUAR,NR_IDENT_USUAR, ');
      QryGeneral.SQL.Add(' (rtrim(P.PRIMER_APELLIDO)+ '+chr(39)+' '+chr(39)+ ' + rtrim(isnull(P.SEGUNDO_APELLIDO,''''))+ '+chr(39)+' '+chr(39)+' + rtrim(P.PRIMER_NOMBRE)+ '+chr(39)+' '+chr(39)+' + rtrim(isnull(P.SEGUNDO_NOMBRE,''''))) ');
      QryGeneral.SQL.Add(' ,P.ASEGURADORA, fec_nacimineto,sexo,estado_civil,Ocupacion,Dir_Casa_Pacien,Tel_Casa_Pacien,Nombre_Responde,Tel_Casa_Resp,Lugar_Nacimient,Dir_Trabajo_Pac,Tel_Trabajo_Pac,CONTTerce.Primer_Apellido,DS_Ocupacion');
      if ChkOrdena.Checked = True then
        QryGeneral.SQL.Add(' ORDER BY max(FDInformacion.fecha)');
      QryGeneral.Open;
    end;

  if RBCitas.Checked = True then
    begin
      QryGeneral.Close;
      QryGeneral.SQL.Clear;
      QryGeneral.SQL.Add('select * from vPacientesAsignados where ');
      QryGeneral.SQL.Add(' TP_IDENT_MEDICO='+chr(39)+Datamodule1.ADOQuery1.FieldValues['Tipo_Identificacion']+chr(39)+' AND ');
      QryGeneral.SQL.Add(' Nr_Ident_Medico = '+chr(39)+Datamodule1.ADOQuery1.FieldValues['No_Identificacion']+chr(39) );
      if ChkOrdena.Checked = True then
        QryGeneral.SQL.Add(' ORDER BY Primera_Fecha');

      QryGeneral.Open;
    end;

  i := 1;
  LimpiaGrilla(SGPacientes, 20);
  while not QryGeneral.Eof do
    begin
      SGPacientes.Cells[0,i]  := QryGeneral.Fields.FieldByName('Nombre').AsString;
      SGPacientes.Cells[1,i]  := QryGeneral.Fields.FieldByName('CCHISTORIA').AsString;
      SGPacientes.Cells[2,i]  := QryGeneral.Fields.FieldByName('NomTerce').AsString;
      SGPacientes.Cells[3,i]  := QryGeneral.Fields.FieldByName('fec_nacimineto').AsString;
      SGPacientes.Cells[4,i]  := QryGeneral.Fields.FieldByName('sexo').AsString;
      SGPacientes.Cells[5,i]  := QryGeneral.Fields.FieldByName('Primera_Fecha').AsString;
      SGPacientes.Cells[6,i]  := QryGeneral.Fields.FieldByName('Ultima_Fecha').AsString;
      SGPacientes.Cells[7,i]  := QryGeneral.Fields.FieldByName('Dir_Casa_Pacien').AsString;
      SGPacientes.Cells[8,i]  := QryGeneral.Fields.FieldByName('Tel_Casa_Pacien').AsString;
      SGPacientes.Cells[9,i]  := QryGeneral.Fields.FieldByName('Nombre_Responde').AsString;
      SGPacientes.Cells[10,i] := QryGeneral.Fields.FieldByName('Tel_Casa_Resp').AsString;
      SGPacientes.Cells[11,i] := QryGeneral.Fields.FieldByName('DS_Ocupacion').AsString;
      SGPacientes.Cells[12,i] := QryGeneral.Fields.FieldByName('No_Admision').AsString;
      SGPacientes.Cells[13,i] := QryGeneral.Fields.FieldByName('TP_IDENT_USUAR').AsString;
      SGPacientes.Cells[14,i] := QryGeneral.Fields.FieldByName('NR_IDENT_USUAR').AsString;
      SGPacientes.Cells[15,i] := QryGeneral.Fields.FieldByName('Lugar_Nacimient').AsString;
      SGPacientes.Cells[16,i] := QryGeneral.Fields.FieldByName('Dir_Trabajo_Pac').AsString;
      SGPacientes.Cells[17,i] := QryGeneral.Fields.FieldByName('Tel_Trabajo_Pac').AsString;
      SGPacientes.Cells[17,i] := QryGeneral.Fields.FieldByName('Tel_Trabajo_Pac').AsString;
      SGPacientes.Cells[18,i] := QryGeneral.Fields.FieldByName('ID').AsString;
      QryGeneral.Next;
      inc(i);
    end;
  SGPacientes.RowCount := i + 1;
  SGPacientesClick(Self);

  for I := 0 TO SGPacientes.RowCount-1  do
    if SGPacientes.Rows[i].Strings[0] = pac then SGPacientes.Row := i;
end;

procedure TFrmProcFormatos.LimpiaGrilla(Grilla : TJvStringGrid; Col : Integer);
var i, e : Integer;
begin
  i := 1;
  while i < Grilla.RowCount do
    begin
      e := 0;
      while e < Col do
        begin
          Grilla.Cells[e,i] := '';
          inc(e);
        end;
      inc(i);
    end;
  Grilla.RowCount  := 2;
end;

procedure TFrmProcFormatos.RBHistoriaClick(Sender: TObject);
begin
  CargarPacientes;
end;

procedure TFrmProcFormatos.RBHistoriaSuyaClick(Sender: TObject);
begin
  CargarPacientes;
end;

procedure TFrmProcFormatos.SGPacientesClick(Sender: TObject);
var
frmAdmisionesActivas: TfrmAdmisionesActivas;
  qryRiesgos: TADOQuery;
  MensajeAlerta: string;

begin

  if edtAdmision.text='' then
    begin
      edtAdmision.Text:='-';
      exit;
    end;
   if SGPacientes.Rows[SGPacientes.Row].Strings[1]='' then  exit;


  QPacientes.Close;
  QPacientes.SQL.Clear;



  QPacientes.SQL.Add('SELECT foto_paciente FROM SAPacientes WHERE CCHistoria = '+chr(39)+SGPacientes.Rows[SGPacientes.Row].Strings[1]+chr(39));
  try
    QPacientes.Open;
  except
  end;
  if SGPacientes.Rows[SGPacientes.Row].Strings[18] = ''  then
    PacienteID := 0
  else
    PacienteID:=  strtoint(SGPacientes.Rows[SGPacientes.Row].Strings[18]);
  EditFecNaci.Text      := SGPacientes.Rows[SGPacientes.Row].Strings[3];

  EditNombreP.Text      := SGPacientes.Rows[SGPacientes.Row].Strings[0];
  if SGPacientes.Rows[SGPacientes.Row].Strings[3] <> '' then
  Begin
    EditEdad.Text       := CalculaEdadCompleta(strtodate(EditFecNaci.Text));
  End
  else
  Begin
    EditEdad.Text       := '';
  End;
  EditSexo.Text         := SGPacientes.Rows[SGPacientes.Row].Strings[4];
  JVEdit1.Text          := SGPacientes.Rows[SGPacientes.Row].Strings[1];
  EdtAdmision.Text      := SGPacientes.Rows[SGPacientes.Row].Strings[12];
  JVEdit2.Text          := SGPacientes.Rows[SGPacientes.Row].Strings[15];
  JVEdit3.Text          := SGPacientes.Rows[SGPacientes.Row].Strings[16];
  //JVEdit4.Text          := SGPacientes.Rows[SGPacientes.Row].Strings[15];
  EditDireccionCP.Text  := SGPacientes.Rows[SGPacientes.Row].Strings[7];
  EditTelefonoP.Text    := SGPacientes.Rows[SGPacientes.Row].Strings[8];
  EditOcupacionP.Text   := SGPacientes.Rows[SGPacientes.Row].Strings[11];
  EditResponsable.Text  := SGPacientes.Rows[SGPacientes.Row].Strings[9];
  EditTelResp.Text      := SGPacientes.Rows[SGPacientes.Row].Strings[10];
  EditAseguradora.Text  := SGPacientes.Rows[SGPacientes.Row].Strings[2];
  EditProfesional.Text  := DataModule1.ADOQuery1.Fields.FieldByName('Primer_apellido').AsString + ' ' +
                           DataModule1.ADOQuery1.Fields.FieldByName('Segundo_apellido').AsString + ' ' +
                           DataModule1.ADOQuery1.Fields.FieldByName('Nombres').AsString;

  ListAdvertencias.Clear;
  QryGeneral.Close;
  QryGeneral.SQL.Clear;
  QryGeneral.SQL.Add('SELECT *');
  QryGeneral.SQL.Add('FROM   FDInformacion inner join FDSubcampos on ');
  QryGeneral.SQL.Add('       FDInformacion.Codigo_Formato   = FDSubCampos.Codigo_Formato  AND ');
  QryGeneral.SQL.Add('       FDInformacion.Codigo_Seccion     = FDSubCampos.Codigo_Seccion AND');
  QryGeneral.SQL.Add('       FDInformacion.Codigo_Campo       = FDSubCampos.Codigo_Campo AND');
  QryGeneral.SQL.Add('       FDInformacion.Codigo_SubCampo = FDSubCampos.Codigo_Subcampo ');
  QryGeneral.SQL.Add(' WHERE FDInformacion.No_Historia = '''+SGPacientes.Rows[SGPacientes.Row].Strings[1]+''' AND');
  QryGeneral.SQL.Add('       FDSubcampos.Advertencia = ''1''');
  QryGeneral.Open;

  if not QryGeneral.Eof then
    begin
      sW                         := True;
      LblAdvertencia.Font.Color  := clRed;
      LblC.Visible               := True;
      //Flecha.Visible             := True;
      Timer1.Interval            := 1000;
    end
  else
    begin
      sW                         := False;
      LblAdvertencia.Font.Color  := clWhite;
      LblC.Visible               := False;
      //Flecha.Visible             := False;
      Timer1.Interval            := 0;
    end;

  while not QryGeneral.Eof do
    begin
      ListAdvertencias.Items.Add(QryGeneral.Fields.FieldByName('Valor').AsString);
      QryGeneral.Next;
    end;

  QryGeneral.Close;
  QryGeneral.SQL.Clear;
  QryGeneral.SQL.Add('SELECT *');
  QryGeneral.SQL.Add('FROM FDInformacion,FDCampos');
  QryGeneral.SQL.Add('WHERE FDInformacion.Codigo_Formato    = FDCampos.Codigo_Formato AND');
  QryGeneral.SQL.Add('               FDInformacion.Codigo_Seccion     = FDCampos.Codigo_Seccion AND');
  QryGeneral.SQL.Add('               FDInformacion.Codigo_Campo       = FDCampos.Codigo_Campo AND');
  QryGeneral.SQL.Add('               FDInformacion.Codigo_Subcampo = ''000'' AND');
  QryGeneral.SQL.Add('               FDInformacion.No_Historia = '''+SGPacientes.Rows[SGPacientes.Row].Strings[1]+''' AND');
  QryGeneral.SQL.Add('               FDcampos.Advertencia = ''1''');
  QryGeneral.Open;

  while not QryGeneral.Eof do
    begin
      ListAdvertencias.Items.Add(QryGeneral.Fields.FieldByName('Valor').AsString);
      QryGeneral.Next;
    end;
  if SGPacientes.Rows[SGPacientes.Row].Strings[18] <> ''  then
    begin
     qryRiesgos:= TADOQuery.Create(self);
     qryRiesgos.Connection:= datamodule1.ADOConnection1;
     qryRiesgos.SQL.Add('select dbo.RevisaAlertas( '+ quotedstr(SGPacientes.Rows[SGPacientes.Row].Strings[1]) + ','+DataModule1.ADOQuery1.Fields.FieldByName('id').asstring + ') as Mensaje');
     qryRiesgos.Open;
     MensajeAlerta:= qryRiesgos.FieldByName('Mensaje').AsString ;
     qryRiesgos.Close;
     qryRiesgos.Free;
     if MensajeAlerta <>'' then
       begin
          MensajeAlerta:=StringReplace(MensajeAlerta,'|',#13,[rfReplaceAll]);
         MessageBox(0, pchar(MensajeAlerta), pchar('Paciente '+SGPacientes.Rows[SGPacientes.Row].Strings[1]), MB_ICONWARNING or MB_OK);
       end;
    end;


  Screen.Cursor := crHourglass;


     //Mirar si hay notas para alertar
     qryRiesgos:= TADOQuery.Create(self);
     qryRiesgos.Connection:= datamodule1.ADOConnection1;
     qryRiesgos.SQL.Add('select dbo.RevisaNotas( '+ quotedstr(SGPacientes.Rows[SGPacientes.Row].Strings[1]) + ') as Mensaje');
     qryRiesgos.Open;
     MensajeAlerta:= qryRiesgos.FieldByName('Mensaje').AsString ;
     qryRiesgos.Close;
     qryRiesgos.Free;
     if MensajeAlerta <>'' then
     begin
      MensajeAlerta:=StringReplace(MensajeAlerta,'|',#13,[rfReplaceAll]);
       MessageBox(0, pchar(MensajeAlerta), 'Alerta!', MB_ICONWARNING or MB_OK);
     end;


  try
    //Mirar si hay más de una admisión activa
    frmAdmisionesActivas:= TfrmAdmisionesActivas.Create(self);
    frmAdmisionesActivas.CCHistoria:=SGPacientes.Rows[SGPacientes.Row].Strings[1];
    if frmAdmisionesActivas.NumRegistros > 1 then
        frmAdmisionesActivas.ShowModal;
  finally

    NumeroAdmision:=SGPacientes.Rows[SGPacientes.Row].Strings[12];
    //edtAdmision.Text:=NumeroAdmision;
    Screen.Cursor := crDefault;

  end;

end;

procedure TFrmProcFormatos.BuscarPacientes;
var i : Integer;
begin
  RBHistoria.Checked      := False;
  RBHistoriaSuya.Checked  := False;
  QryGeneral.Close;
  QryGeneral.SQL.Clear;
  QryGeneral.SQL.Add('SELECT ISNULL(A.NO_ADMISION,'+#39+'--'+#39+') as NO_ADMISION,isnull(TP_ADMISION,'+#39+'--'+#39+') as TP_ADMISION, isnull(A.EST_ADMINSION,'+#39+'--'+#39+') as EST_ADMISION ,CCHISTORIA,p.TP_IDENT_USUAR,p.NR_IDENT_USUAR, ');
  QryGeneral.SQL.Add(' (rtrim(P.PRIMER_APELLIDO)+ '+#39+' '+#39+' + rtrim(isnull(P.SEGUNDO_APELLIDO,'+#39+''+#39+'))+ '+#39+' '+#39+' + rtrim(P.PRIMER_NOMBRE)+ '+#39+' '+#39+' + rtrim(isnull(P.SEGUNDO_NOMBRE,'+#39+''+#39+'))) as Nombre ');
  QryGeneral.SQL.Add(' ,P.ASEGURADORA, fec_nacimineto,sexo,estado_civil,Ocupacion,Dir_Casa_Pacien,Tel_Casa_Pacien,Nombre_Responde,Tel_Casa_Resp,Lugar_Nacimient,Dir_Trabajo_Pac,Tel_Trabajo_Pac,CONTTerce.Primer_Apellido as nomterce, ');
  QryGeneral.SQL.Add(' I.Primera_Fecha,I.Ultima_Fecha,DS_Ocupacion,P.ID ');
  QryGeneral.SQL.Add('FROM SAPacientes AS P left outer join ( select No_Historia,max(Fecha) as Ultima_Fecha, min(fecha) as Primera_Fecha from FDInformacion group by No_Historia ) I  on ');
  QryGeneral.SQL.Add('     P.CCHistoria = I.No_Historia  inner join CONTTerce on ');
  QryGeneral.SQL.Add('     P.Aseguradora = CONTTerce.Numero_Documento  inner join comunes.dbo.GEOcupacion  on ');
  QryGeneral.SQL.Add('      P.Ocupacion = comunes..GEOcupacion.CD_Ocupacion left join SAAdmisiones A on p.TP_IDENT_USUAR = A.TP_IDENT_USUAR and p.NR_IDENT_USUAR=A.NR_IDENT_USUAR ');

//  QryGeneral.SQL.Add('SELECT CCHISTORIA,TP_IDENT_USUAR,NR_IDENT_USUAR, ');
//  QryGeneral.SQL.Add(' (rtrim(P.PRIMER_APELLIDO)+ '+chr(39)+' '+chr(39)+ ' + rtrim(isnull(P.SEGUNDO_APELLIDO,''''))+ '+chr(39)+' '+chr(39)+' + rtrim(P.PRIMER_NOMBRE)+ '+chr(39)+' '+chr(39)+' + rtrim(isnull(P.SEGUNDO_NOMBRE,''''))) as Nombre');
//  QryGeneral.SQL.Add(' ,P.ASEGURADORA, fec_nacimineto,estado_civil,Dir_Trabajo_Pac,Tel_Trabajo_Pac,sexo,Lugar_Nacimient,Ocupacion,Dir_Casa_Pacien,Tel_Casa_Pacien,Nombre_Responde,Tel_Casa_Resp,CONTTerce.Primer_Apellido as nomterce,');
//  QryGeneral.SQL.Add(' min(FDInformacion.fecha) as Primera_Fecha,max(FDInformacion.fecha) as Ultima_Fecha,DS_Ocupacion,P.ID');
//  QryGeneral.SQL.Add('FROM SAPacientes AS P left outer join FDInformacion on ' );
//  QryGeneral.SQL.Add('P.CCHistoria = FDInformacion.No_Historia left outer join CONTTerce on ' );
//  QryGeneral.SQL.Add('P.Aseguradora = CONTTerce.Numero_Documento left outer join '+Datamodule1.ADOComunes.DefaultDatabase+'.dbo.GEOcupacion on ');
//  QryGeneral.SQL.Add('P.Ocupacion = '+Datamodule1.ADOComunes.DefaultDatabase+'.dbo.GEOcupacion.CD_Ocupacion'  );
  QryGeneral.SQL.Add('WHERE 1 = 1  ');

  case PCBusquedas.ActivePageIndex of
    0 : QryGeneral.SQL.Add('and p.NR_IDENT_USUAR = '''+EditNumeroCedula.Text+'''');
    1 : begin
          if EditPrimerApellido.Text <> '' then
            QryGeneral.SQL.Add(' and (P.PRIMER_APELLIDO like '+chr(39)+'%'+EditPrimerApellido.Text+'%'+chr(39)+')');

          if EditSegundoApellido.Text <> '' then
            QryGeneral.SQL.Add(' and (P.SEGUNDO_APELLIDO like '+chr(39)+'%'+EditSegundoApellido.Text+'%'+chr(39)+')');
        end;
    2 : begin
          if EditPrimerApe.Text <> '' then
            QryGeneral.SQL.Add(' and (P.PRIMER_APELLIDO like '+chr(39)+'%'+EditPrimerApe.Text+'%'+chr(39)+')');

          if EditSegundoApe.Text <> '' then
            QryGeneral.SQL.Add(' and (P.SEGUNDO_APELLIDO like '+chr(39)+'%'+EditSegundoApe.Text+'%'+chr(39)+')');

          if EditPrimerNom.Text <> '' then
            QryGeneral.SQL.Add(' and (P.PRIMER_Nombre like '+chr(39)+'%'+EditPrimerNom.Text+'%'+chr(39)+')');

          if EditSegundoNom.Text <> '' then
            QryGeneral.SQL.Add(' and (P.SEGUNDO_Nombre like '+chr(39)+'%'+EditSegundoNom.Text+'%'+chr(39)+')');
        end;
  end;
//  QryGeneral.SQL.Add('GROUP BY P.ID,CCHISTORIA,P.TP_IDENT_USUAR,P.NR_IDENT_USUAR, ');
//  QryGeneral.SQL.Add(' (rtrim(P.PRIMER_APELLIDO)+ '+chr(39)+' '+chr(39)+ ' + rtrim(isnull(P.SEGUNDO_APELLIDO,''''))+ '+chr(39)+' '+chr(39)+' + rtrim(P.PRIMER_NOMBRE)+ '+chr(39)+' '+chr(39)+' + rtrim(isnull(P.SEGUNDO_NOMBRE,''''))) ');
//  QryGeneral.SQL.Add(' ,P.ASEGURADORA, fec_nacimineto,sexo,estado_civil,Dir_Trabajo_Pac,Tel_Trabajo_Pac,sexo,Lugar_Nacimient,Ocupacion,Dir_Casa_Pacien,Tel_Casa_Pacien,Nombre_Responde,Tel_Casa_Resp,CONTTerce.Primer_Apellido,DS_Ocupacion');
  QryGeneral.Open;

  if QryGeneral.Eof then
    begin
      Application.MessageBox('No fue posible encontrar información...por favor verifique los datos','Información',MB_OK+MB_ICONINFORMATION);
      case PCBusquedas.ActivePageIndex of
        0 : EditNumeroCedula.SetFocus;
        1 : EditPrimerApellido.SetFocus;
        2 : EditPrimerApe.SetFocus;
      end;
      Exit;
    end;

  i := 1;
  LimpiaGrilla(SGPacientes, 20);
  while not QryGeneral.Eof do
    begin

      SGPacientes.Cells[0,i]  := QryGeneral.Fields.FieldByName('Nombre').AsString;
      SGPacientes.Cells[1,i]  := QryGeneral.Fields.FieldByName('CCHISTORIA').AsString;
      if QryGeneral.Fields.FieldByName('nomterce').AsString <> '' then
        SGPacientes.Cells[2,i]  := QryGeneral.Fields.FieldByName('nomterce').AsString
      Else
        SGPacientes.Cells[2,i]  := 'Cree el Tercero';
      SGPacientes.Cells[3,i]  := QryGeneral.Fields.FieldByName('fec_nacimineto').AsString;
      SGPacientes.Cells[4,i]  := QryGeneral.Fields.FieldByName('sexo').AsString;
      SGPacientes.Cells[5,i]  := QryGeneral.Fields.FieldByName('Primera_Fecha').AsString;
      SGPacientes.Cells[6,i]  := QryGeneral.Fields.FieldByName('Ultima_Fecha').AsString;
      SGPacientes.Cells[7,i]  := QryGeneral.Fields.FieldByName('Dir_Casa_Pacien').AsString;
      SGPacientes.Cells[8,i]  := QryGeneral.Fields.FieldByName('Tel_Casa_Pacien').AsString;
      SGPacientes.Cells[9,i]  := QryGeneral.Fields.FieldByName('Nombre_Responde').AsString;
      SGPacientes.Cells[10,i] := QryGeneral.Fields.FieldByName('Tel_Casa_Resp').AsString;
      SGPacientes.Cells[11,i] := QryGeneral.Fields.FieldByName('DS_Ocupacion').AsString;
      SGPacientes.Cells[12,i] := QryGeneral.Fields.FieldByName('NO_ADMISION').AsString;
      SGPacientes.Cells[13,i] := QryGeneral.Fields.FieldByName('TP_IDENT_USUAR').AsString;
      SGPacientes.Cells[14,i] := QryGeneral.Fields.FieldByName('NR_IDENT_USUAR').AsString;
      SGPacientes.Cells[15,i] := QryGeneral.Fields.FieldByName('Lugar_Nacimient').AsString;
      SGPacientes.Cells[16,i] := QryGeneral.Fields.FieldByName('Dir_Trabajo_Pac').AsString;
      SGPacientes.Cells[17,i] := QryGeneral.Fields.FieldByName('Tel_Trabajo_Pac').AsString;
      SGPacientes.Cells[18,i] := QryGeneral.Fields.FieldByName('ID').AsString;
      QryGeneral.Next;
      inc(i);
    end;
  SGPacientes.RowCount := i + 1;
  SGPacientesClick(Self);
end;

procedure TFrmProcFormatos.BtnBuscarCClick(Sender: TObject);
begin
  if EditNumeroCedula.Text = '' then Exit;
  BuscarPacientes;
end;

procedure TFrmProcFormatos.BitBtnCerrarPnlBusca2Click(Sender: TObject);
begin
  pnlbusca2.Height:=0;
end;

procedure TFrmProcFormatos.BtnBuscarApeClick(Sender: TObject);
begin
  if (EditPrimerApellido.Text = '') and (EditSegundoApellido.Text = '')then Exit;
  BuscarPacientes;
end;

procedure TFrmProcFormatos.BtnBuscarNomClick(Sender: TObject);
begin
  if (EditPrimerApe.Text = '') and (EditSegundoApe.Text = '') and (EditPrimerNom.Text = '' ) and (EditSegundoNom.Text = '' ) then Exit;
  BuscarPacientes;
end;

procedure TFrmProcFormatos.ChkOrdenaClick(Sender: TObject);
begin
  if ChkOrdena.Checked = True then
    CargarPacientes;
end;

procedure TFrmProcFormatos.ComboBox1Change(Sender: TObject);
var i,j:integer;
begin
  // Carga los campos por cada Formato
  ADOQPivot.Close;
  ADOQPivot.Parameters.ParamValues['codfmt'] := leftstr(lbx.Items.Strings[lbx.ItemIndex],pos('-',lbx.Items.Strings[lbx.ItemIndex])-1);
  ADOQPivot.Parameters.ParamValues['codSecc'] := leftstr(Combobox1.Text,pos('-',Combobox1.Text)-1);
  ADOQPivot.Parameters.ParamValues['fec1']    := datetostr(datetimepicker1.DateTime);
  ADOQPivot.Parameters.ParamValues['fec2']    := datetostr(datetimepicker2.DateTime);
  ADOQPivot.Parameters.ParamValues['cch1']     := SGPacientes.Rows[SGPacientes.Row].Strings[1];
  ADOQPivot.Open;

  grd.ColCount:=ADOQPivot.FieldCount;
  grd.RowCount:=ADOQPivot.RecordCount;
  for j := 1 to ADOQPivot.FieldCount do
  Begin
    grd.Cells[j-1,0] := ADOQPivot.Fields.FieldByNumber(j).FullName;
  End;

  ADOQPivot.First;
  for I := 1 to ADOQPivot.RecordCount do
  Begin
    for j := 1 to ADOQPivot.FieldCount do
    Begin
      grd.Cells[j-1,i] := ADOQPivot.Fields.FieldByNumber(j).AsString;
    End;
    ADOQPivot.Next;
  End;
end;

procedure TFrmProcFormatos.FormCreate(Sender: TObject);
begin
  BkHC := TIniFile.Create( ExtractFilePath(paramstr(0))+'BackupHC.cfg' );

  DateHC.DateTime       := now;
  PCOpciones.ActivePage := TabSheet2;

  Height := Height * Screen.Height div alto;
  Width  := Width * Screen.Width div ancho;
  ScaleBy(Screen.Width, ancho);

  QryGeneral.Close;
  QryGeneral.SQL.Clear;
  QryGeneral.SQL.Add('select * from FDPersonasxFormato');
  QryGeneral.SQL.Add('where Persona = '''+DataModule1.ADOQuery1.Fields.FieldByName('ID').AsString+'''');
  QryGeneral.Open;
  if QryGeneral.RecordCount = 0 Then
    begin
      Application.MessageBox('Usted no posee formatos asignados','Información',MB_OK+MB_ICONINFORMATION);
      Close;
    end;

  SGPacientes.Cells[0,0]  := 'Nombre';
  SGPacientes.Cells[1,0]  := 'CCHistoria';
  SGPacientes.Cells[2,0]  := 'Aseguradora';
  SGPacientes.Cells[3,0]  := 'Fecha nacimiento';
  SGPacientes.Cells[4,0]  := 'Sexo';
  SGPacientes.Cells[5,0]  := 'Primera fecha';
  SGPacientes.Cells[6,0]  := 'Ultima fecha';
  SGPacientes.Cells[7,0]  := 'Dir. casa pacien';
  SGPacientes.Cells[8,0]  := 'Tel. casa pacien';
  SGPacientes.Cells[9,0]  := 'Nombre responde';
  SGPacientes.Cells[10,0] := 'Tel. casa resp.';

  SGPacientes.Cells[11,0]  := 'Ocupación';
  SGPacientes.Cells[12,0]  := 'No_Admision';
  SGPacientes.Cells[13,0]  := 'TD';
  SGPacientes.Cells[14,0]  := 'DocID';
  SGPacientes.Cells[15,0]  := 'Lugar Nacimiento';
  SGPacientes.Cells[16,0]  := 'Dir. trabajo pac';
  SGPacientes.Cells[17,0]  := 'Tel. trabajo pac';
  SGPacientes.Cells[18,0]  := 'ID';
  SGPacientes.Cells[19,0]  := '';



  SGDelDia.Cells[1,0]     := 'Formato';
  SGDelDia.Cells[2,0]     := 'Fecha';

  SGPorRango.Cells[1,0]   := 'Formato';
  SGPorRango.Cells[2,0]   := 'Fecha';

  SGTodas.Cells[1,0]      := 'Formato';
  SGTodas.Cells[2,0]      := 'Fecha';

  MonthCalendar1.Date            := Date;
  DTPDesde.Date                  := Date - 30;
  DTPHasta.Date                  := Date;

  CargarPacientes;
end;

procedure TFrmProcFormatos.grdClick(Sender: TObject);
var i,j,k:Integer;
    Verr:Integer;
begin
  Application.ProcessMessages;

  ADOQTotalEdSx.Close;
  ADOQTotalEdSx.SQL.Clear;
  ADOQTotalEdSx.SQL.Add('SELECT convert(varchar(100),valor) as Valor, left(dbo.UDF_CalculaEdadNorma(FEC_NACIMINETO),25) as Edad,Sexo,COUNT(*) as Total');
  ADOQTotalEdSx.SQL.Add('FROM   vHistoriasPacientes');
  ADOQTotalEdSx.SQL.Add('WHERE  ');
  ADOQTotalEdSx.SQL.Add(' Fecha between cast ('+chr(39)+datetostr(datetimepicker1.date)+chr(39)+' as date) AND cast ('+chr(39)+datetostr(datetimepicker2.date)+chr(39)+' as date) AND');
  if rgp.ItemIndex = 0 then ADOQTotalEdSx.SQL.Add(' No_Historia = '''+SGPacientes.Rows[SGPacientes.Row].Strings[1]+''' AND');
  ADOQTotalEdSx.SQL.Add('                Codigo_Formato = '''+leftstr(lbx.Items.Strings[lbx.ItemIndex],pos('-',lbx.Items.Strings[lbx.ItemIndex])-1)+''' AND');
  ADOQTotalEdSx.SQL.Add('                Codigo_Seccion = '''+Vector[lbx.ItemIndex,1]+''' AND');
  ADOQTotalEdSx.SQL.Add('                Codigo_Campo = '''+leftstr(grd.Cells[0,grd.Row],pos('-',grd.Cells[0,grd.Row])-1)+'''');
  ADOQTotalEdSx.SQL.Add('GROUP BY convert(varchar(100),valor) , dbo.UDF_CalculaEdadNorma(FEC_NACIMINETO),SEXO');
  ADOQTotalEdSx.SQL.Add('ORDER BY count(*) Desc ');
  ADOQTotalEdSx.Open;

  ADOQTotal.Close;
  ADOQTotal.SQL.Clear;
  ADOQTotal.SQL.Add('SELECT convert(varchar(100),valor) as Campo, count(*) as Total');
  ADOQTotal.SQL.Add('FROM   FDInformacion');
  ADOQTotal.SQL.Add('WHERE  ');
  ADOQTotal.SQL.Add(' Fecha between cast ('+chr(39)+datetostr(datetimepicker1.date)+chr(39)+' as date) AND cast ('+chr(39)+datetostr(datetimepicker2.date)+chr(39)+' as date) AND');
  if rgp.ItemIndex = 0 then ADOQTotal.SQL.Add(' No_Historia = '''+SGPacientes.Rows[SGPacientes.Row].Strings[1]+''' AND');
  ADOQTotal.SQL.Add('                Codigo_Formato = '''+leftstr(lbx.Items.Strings[lbx.ItemIndex],pos('-',lbx.Items.Strings[lbx.ItemIndex])-1)+''' AND');
  ADOQTotalEdSx.SQL.Add('                Codigo_Seccion = '''+Vector[lbx.ItemIndex,1]+''' AND');
  ADOQTotal.SQL.Add('                Codigo_Campo = '''+leftstr(grd.Cells[0,grd.Row],pos('-',grd.Cells[0,grd.Row])-1)+'''');
  ADOQTotal.SQL.Add('GROUP BY convert(varchar(100),valor)');
  ADOQTotal.SQL.Add('ORDER BY count(*) Desc ');
  ADOQTotal.Open;

  {Chart2.Title.Text.Clear;
  Chart2.Title.Text.Add(StringGridCH1.cells[StringGridCH1.Col,0]);
  Chart2.Series[0].Clear;
  For i:=1 To StringGridCH1.RowCount-1 Do
  Begin
   val(SoloNumeros(StringGridCH1.cells[StringGridCH1.Col,i]),k,Verr);
   If (Verr = 0) Then Chart2.Series[0].Add(k,StringGridCH1.cells[0,i]);
  End;

  Chart3.Title.Text.Clear;
  Chart3.Title.Text.Add(StringGridCH1.cells[StringGridCH1.Col,0]);
  Chart3.Series[0].Clear;
  For i:=1 To StringGridCH1.RowCount-1 Do
  Begin
   val(SoloNumeros(StringGridCH1.cells[StringGridCH1.Col,i]),k,Verr);
   If (Verr = 0) Then Chart3.Series[0].Add(k,StringGridCH1.cells[0,i]);
  End;}
end;

procedure TFrmProcFormatos.DBImagePpal1Click(Sender: TObject);
var i : Integer;
    sStatusText: string;
begin
 try
  sStatusText:=mainForm.Statusbar.simpletext;
  mainForm.Statusbar.simpletext:='Por favor espere mientras generamos el documento';
  screen.Cursor:=crHourglass;
  BtnIngresar.Visible := True;
  Button1.Visible := False;
  JvRollout7.Collapsed := True;
  Panel11.Width := 1;
  if Swm.StateOn then
  Begin
    if MessageBox(0, 'Se encontro que realizo una modificación en los datos, Desea abandonar los cambios?', '', MB_ICONQUESTION or MB_YESNO) = 7 Then
      Exit;
  End;

  Swm.StateOn := False;

  CrearHilo;

  //Carga el Resumen
  LimpiaGrilla(GRResumen, 10);
  QryGeneral.Close;
  QryGeneral.SQL.Clear;
  QryGeneral.SQL.Add('SELECT distinct convert(datetime,FDInformacion.fecha,103) as fecha, FDFormatos.descripcion, FDFormatos.codigo');
  QryGeneral.SQL.Add('FROM FDInformacion inner join FDFormatos on ' );
  QryGeneral.SQL.Add('     FDInformacion.Codigo_Formato = FDFormatos.Codigo inner join FDPersonasxFormato on ');
  QryGeneral.SQL.Add('    FDFormatos.Codigo = FDPersonasxFormato.Formato ');
  QryGeneral.SQL.Add('WHERE No_Historia = '+chr(39)+SGPacientes.Rows[SGPacientes.Row].Strings[1]+chr(39));
  QryGeneral.SQL.Add(' AND FDInformacion.Codigo_Formato = '+chr(39)+Formato+chr(39));
  QryGeneral.SQL.Add(' AND FDPersonasxFormato.Persona = '''+DataModule1.ADOQuery1.Fields.FieldByName('ID').AsString+'''');
  QryGeneral.SQL.Add('ORDER BY convert(datetime,FDInformacion.fecha,103) DESC, FDFormatos.descripcion, FDFormatos.codigo');
  QryGeneral.Open;

  i := 1;
  while not QryGeneral.Eof do
    begin
      GRResumen.Cells[1,i] := FormatDateTime('DD/MM/YYYY HH:MM:SS',QryGeneral.Fields.FieldByName('Fecha').AsDateTime);
      GRResumen.Cells[2,i] := QryGeneral.Fields.FieldByName('Descripcion').AsString;
      GRResumen.Cells[3,i] := QryGeneral.Fields.FieldByName('Codigo').AsString;
      QryGeneral.Next;
      inc(i);
    end;
  GRResumen.RowCount  := i + 1;
  finally
   screen.Cursor:=crDefault;
      mainForm.Statusbar.simpletext:=sStatusText;
 end; //finally
 CalculaFormula(Nil);
end;

procedure TFrmProcFormatos.refrescar(Sender: TObject; var Key: Char);
var
  DBLComboNuevo : TDBLookupComboBox;
  v1: string;
begin
  DBLComboNuevo := Sender as TDBLookupComboBox;
  if Assigned(DBLComboNuevo) then
  begin
    v1:= InputBox('FILTROS', 'Palabra intermedia en el Diagnostico:', key);

    DBLComboNuevo.ListSource.DataSet.Filtered:=False;
    DBLComboNuevo.ListSource.DataSet.Filter := 'NomD like ' + chr(39) + '%' +v1+'%' +chr(39);
    DBLComboNuevo.ListSource.DataSet.Filtered:=True;
  end;
end;

procedure TFrmProcFormatos.BtnIngresarClick(Sender: TObject);
var i,x,k,e:integer;
Mensaje  : string;
begin
  if MessageDlg('Esta seguro de Grabar?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
  //Elimina archivo de recuperación de historia
    BkHC.EraseSection('HC');
    //Graba la cita cambiandola como cumplida
    QryGeneral.Close;
    QryGeneral.SQL.Clear;
    QryGeneral.SQL.Add('UPDATE cicitas SET ');
    QryGeneral.SQL.Add('  Cumplida = '''+'1'+'''');
    QryGeneral.SQL.Add('WHERE CAST (FECHA as DATE) = CAST(GETDATE() as date) AND ');
    QryGeneral.SQL.Add('      TP_Ident_Usuar + Nr_Ident_Usuar = '+chr(39)+SGPacientes.Rows[SGPacientes.Row].Strings[1]+chr(39));
    QryGeneral.ExecSQL;

    Swm.StateOn := False;

    FrmProcFormatos.Cursor := crSQLWait;
    //Proceso de Validacion
    try
      ADOQuery6.Open;
    except
      Showmessage ('ERROR: No se encuentra conectado el servidor, El sistema intentará reconectar. Si no puede, solucione el problema de red y pruebe de nuevo.');
      ADOQuery6.Connection.Close;
      ADOQuery6.Connection.Open;
      ADOQuery6.Open;
    end;
    ProgressBar1.Visible  := True;
    For i := 0 To PageControl2.PageCount-1 Do
    Begin
      ProgressBar1.Position :=i;
      For x := 0 To PageControl2.Pages[i].Components[0].Components[0].ComponentCount - 1 Do
      Begin
        If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TGroupBox Then
        Begin
          For k := 0 To PageControl2.Pages[i].Components[0].Components[0].Components[x].ComponentCount - 1 Do
          Begin
            //*************************************************************************************
            //
            //*************************************************************************************
            If PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k] Is TEdit Then
            Begin
              ADOQuery11.Close;
              ADOQuery11.Parameters.ParamValues['CDFmt']:=Formato;
              ADOQuery11.Parameters.ParamValues['CDSecc']:=PageControl2.Pages[i].Hint;
              ADOQuery11.Parameters.ParamValues['CDCamp']:=TEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).HelpKeyword;
              ADOQuery11.Parameters.ParamValues['CDSubCamp']:=TEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Hint;
              ADOQuery11.Open;

              IF TEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Text = '' Then
              Begin
                if TEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Color = clYellow Then Begin
                  Showmessage('No se puede grabar el formulario hasta no diligenciar el campo ' +ADOQuery11.FieldValues['Descripcion']);
                  ProgressBar1.Visible  := False;
                  Exit;
                end;
              End;
            End
            Else If PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k] Is TCombobox Then
            Begin
              ADOQuery11.Close;
              ADOQuery11.Parameters.ParamValues['CDFmt']:=Formato;
              ADOQuery11.Parameters.ParamValues['CDSecc']:=PageControl2.Pages[i].Hint;
              ADOQuery11.Parameters.ParamValues['CDCamp']:=TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).HelpKeyword;
              ADOQuery11.Parameters.ParamValues['CDSubCamp']:=TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Hint;
              ADOQuery11.Open;

              IF TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Text = '' Then
              Begin
                if TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Color = clYellow Then Begin
                  Showmessage('No se puede grabar el formulario hasta no diligenciar el campo ' +ADOQuery11.FieldValues['Descripcion']);
                  ProgressBar1.Visible  := False;
                  Exit;
                end;
              End;
            End;
            //*************************************************************************************
          end;
        End
        Else If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TEdit Then
        Begin
           ADOQuery9.Close;
           ADOQuery9.Parameters.ParamValues['CDFmt']:=Formato;
           ADOQuery9.Parameters.ParamValues['CDSecc']:=PageControl2.Pages[i].Hint;
           ADOQuery9.Parameters.ParamValues['CDCamp']:=TEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Hint;
           ADOQuery9.Open;
           IF TEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text = '' Then
           Begin
             if TEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Color = clYellow Then Begin
               Showmessage('No se puede grabar el formulario hasta no diligenciar el campo ' +ADOQuery9.FieldValues['Descripcion']);
               ProgressBar1.Visible  := False;
               Exit;
             end;
           End;
        End
        Else If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TMemo Then
        Begin
           ADOQuery9.Close;
           ADOQuery9.Parameters.ParamValues['CDFmt']:=Formato;
           ADOQuery9.Parameters.ParamValues['CDSecc']:=PageControl2.Pages[i].Hint;
           ADOQuery9.Parameters.ParamValues['CDCamp']:=TMemo(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Hint;
           ADOQuery9.Open;
           IF TMemo(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text = '' Then
           Begin
             IF TMemo(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Color = clYellow Then Begin
               Showmessage('No se puede grabar el formulario hasta no diligenciar el campo ' +ADOQuery9.FieldValues['Descripcion']);
               ProgressBar1.Visible  := False;
               Exit;
             end;
           End;
        End
        Else If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TCombobox Then
        Begin
           ADOQuery9.Close;
           ADOQuery9.Parameters.ParamValues['CDFmt']:=Formato;
           ADOQuery9.Parameters.ParamValues['CDSecc']:=PageControl2.Pages[i].Hint;
           ADOQuery9.Parameters.ParamValues['CDCamp']:=TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Hint;
           ADOQuery9.Open;
           IF TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text = '' Then
           Begin
             if TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Color = clYellow Then Begin
               Showmessage('No se puede grabar el formulario hasta no diligenciar el campo ' +ADOQuery9.FieldValues['Descripcion']);
               ProgressBar1.Visible  := False;
               Exit;
             end;
           End;
        End
        Else If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TCheckBox Then
        Begin
           IF TCheckBox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Caption <> '' Then
           Begin
           End;
        End
        Else If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TDatetimePicker Then
        Begin
        End
        Else If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TDBLookupComboBox Then
        Begin
           IF TDBLookupComboBox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text <> '' Then
           Begin
           End;
        End;
      End;
    End;
    ADOQuery6.Close;

    ProgressBar1.Visible  := True;
    ProgressBar1.Maximum  := PageControl2.PageCount-1;
    ProgressBar1.Position := 0;

    //Proceso de Grabacion.
    ADOQuery6.Open;
    For i := 0 To PageControl2.PageCount-1 Do
    Begin
      ProgressBar1.Position :=i;
      For x := 0 To PageControl2.Pages[i].Components[0].Components[0].ComponentCount - 1 Do
      Begin
        If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TGroupBox Then
        Begin
          For k := 0 To PageControl2.Pages[i].Components[0].Components[0].Components[x].ComponentCount - 1 Do
          Begin
            //*************************************************************************************
            //
            //*************************************************************************************
            If PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k] Is TEdit Then
            Begin
              ADOQuery11.Close;
              ADOQuery11.Parameters.ParamValues['CDFmt']:=Formato;
              ADOQuery11.Parameters.ParamValues['CDSecc']:=PageControl2.Pages[i].Hint;
              ADOQuery11.Parameters.ParamValues['CDCamp']:=TEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).HelpKeyword;
              ADOQuery11.Parameters.ParamValues['CDSubCamp']:=TEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Hint;
              ADOQuery11.Open;

              IF TEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Text <> '' Then
              Begin
                ADOQuery6.Append;

                ADOQuery6.FieldValues['Codigo_Formato'] := Formato;
                ADOQuery6.FieldValues['Codigo_Seccion'] := PageControl2.Pages[i].Hint;
                ADOQuery6.FieldValues['Codigo_Campo']   := TEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).HelpKeyword;
                ADOQuery6.FieldValues['Codigo_SubCampo']:= TEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Hint;
                ADOQuery6.FieldValues['Usuario']        := Datamodule1.ADOQuery1.FieldValues['Id'];
                ADOQuery6.FieldValues['No_Historia']    := SGPacientes.Rows[SGPacientes.Row].Strings[1];   //Edit2.Text;
                ADOQuery6.FieldValues['Admision']    := SGPacientes.Rows[SGPacientes.Row].Strings[12];   //Edit2.Text;
                ADOQuery6.FieldValues['Fecha']          := DateHC.DateTime;
                ADOQuery6.FieldValues['Descripcion_Campo']:= ADOQuery11.FieldValues['Descripcion'];
                ADOQuery6.FieldValues['Valor']          := trim(TEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Text);
                ADOQuery6.Post;

                TEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Text := '';
              End
            End
            //RadioButton
            Else If PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k] Is TRadioButton Then
            Begin
              ADOQuery11.Close;
              ADOQuery11.Parameters.ParamValues['CDFmt']:=Formato;
              ADOQuery11.Parameters.ParamValues['CDSecc']:=PageControl2.Pages[i].Hint;
              ADOQuery11.Parameters.ParamValues['CDCamp']:=TRadioButton(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).HelpKeyword;
              ADOQuery11.Parameters.ParamValues['CDSubCamp']:=TRadioButton(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Hint;
              ADOQuery11.Open;

              IF TRadioButton(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Checked Then
              Begin
                ADOQuery6.Append;
                ADOQuery6.FieldValues['Codigo_Formato'] := Formato;
                ADOQuery6.FieldValues['Codigo_Seccion'] := PageControl2.Pages[i].Hint;
                ADOQuery6.FieldValues['Codigo_Campo']   := TRadioButton(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).HelpKeyword;
                ADOQuery6.FieldValues['Codigo_SubCampo']:= TRadioButton(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Hint;
                ADOQuery6.FieldValues['Usuario']        := Datamodule1.ADOQuery1.FieldValues['Id'];
                ADOQuery6.FieldValues['No_Historia']    := SGPacientes.Rows[SGPacientes.Row].Strings[1];   //Edit2.Text;
                ADOQuery6.FieldValues['Admision']    := SGPacientes.Rows[SGPacientes.Row].Strings[12];
                ADOQuery6.FieldValues['Fecha']          := DateHC.DateTime;
                ADOQuery6.FieldValues['Descripcion_Campo']:= ADOQuery11.FieldValues['Descripcion'];
                ADOQuery6.FieldValues['Valor']          := 'X';
                ADOQuery6.Post;

                TRadioButton(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Checked := False;
              End
            End
            //CheckBox
            Else If PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k] Is TCheckBox Then
            Begin
              ADOQuery11.Close;
              ADOQuery11.Parameters.ParamValues['CDFmt']:=Formato;
              ADOQuery11.Parameters.ParamValues['CDSecc']:=PageControl2.Pages[i].Hint;
              ADOQuery11.Parameters.ParamValues['CDCamp']:=TCheckBox(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).HelpKeyword;
              ADOQuery11.Parameters.ParamValues['CDSubCamp']:=TCheckBox(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Hint;
              ADOQuery11.Open;

              IF TCheckBox(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Checked Then
              Begin
                ADOQuery6.Append;
                ADOQuery6.FieldValues['Codigo_Formato'] := Formato;
                ADOQuery6.FieldValues['Codigo_Seccion'] := PageControl2.Pages[i].Hint;
                ADOQuery6.FieldValues['Codigo_Campo']   := TCheckBox(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).HelpKeyword;
                ADOQuery6.FieldValues['Codigo_SubCampo']:= TCheckBox(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Hint;
                ADOQuery6.FieldValues['Usuario']        := Datamodule1.ADOQuery1.FieldValues['Id'];
                ADOQuery6.FieldValues['No_Historia']    := SGPacientes.Rows[SGPacientes.Row].Strings[1];   //Edit2.Text;
                ADOQuery6.FieldValues['Admision']    := SGPacientes.Rows[SGPacientes.Row].Strings[12];
                ADOQuery6.FieldValues['Fecha']          := DateHC.DateTime;
                ADOQuery6.FieldValues['Descripcion_Campo']:= ADOQuery11.FieldValues['Descripcion'];
                ADOQuery6.FieldValues['Valor']          := 'X';
                ADOQuery6.Post;

                TCheckBox(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Checked := False;
              End
            End
            //ComboBox
            Else If PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k] Is TCombobox Then
            Begin
               ADOQuery11.Close;
               ADOQuery11.Parameters.ParamValues['CDFmt']:=Formato;
               ADOQuery11.Parameters.ParamValues['CDSecc']:=PageControl2.Pages[i].Hint;
               ADOQuery11.Parameters.ParamValues['CDCamp']:=TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).HelpKeyword;
               ADOQuery11.Parameters.ParamValues['CDSubCamp']:=TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Hint;
               ADOQuery11.Open;

              IF TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Text <> '' Then
              Begin
                ADOQuery6.Append;
                ADOQuery6.FieldValues['Codigo_Formato'] := Formato;
                ADOQuery6.FieldValues['Codigo_Seccion'] := PageControl2.Pages[i].Hint;
                ADOQuery6.FieldValues['Codigo_Campo']   := TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).HelpKeyword;
                ADOQuery6.FieldValues['Codigo_SubCampo']:= TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Hint;
                ADOQuery6.FieldValues['Usuario']        := Datamodule1.ADOQuery1.FieldValues['Id'];
                ADOQuery6.FieldValues['No_Historia']    := SGPacientes.Rows[SGPacientes.Row].Strings[1];   //Edit2.Text;
                ADOQuery6.FieldValues['Admision']    := SGPacientes.Rows[SGPacientes.Row].Strings[12];
                ADOQuery6.FieldValues['Fecha']          := DateHC.DateTime;
                ADOQuery6.FieldValues['Descripcion_Campo']:= ADOQuery11.FieldValues['Descripcion'];
                ADOQuery6.FieldValues['Valor']          := trim(TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Text);
                ADOQuery6.Post;

                TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Text:='';
              End
            End
            //*************************************************************************************
          End;
        End
        Else If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TEdit Then
        Begin
           ADOQuery9.Close;
           ADOQuery9.Parameters.ParamValues['CDFmt']:=Formato;
           ADOQuery9.Parameters.ParamValues['CDSecc']:=PageControl2.Pages[i].Hint;
           ADOQuery9.Parameters.ParamValues['CDCamp']:=TEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Hint;
           ADOQuery9.Open;
           IF TEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text <> '' Then
           Begin
             ADOQuery6.Append;
             ADOQuery6.FieldValues['Codigo_Formato'] := Formato;
             ADOQuery6.FieldValues['Codigo_Seccion'] := PageControl2.Pages[i].Hint;
             ADOQuery6.FieldValues['Codigo_Campo']   := TEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Hint;
             ADOQuery6.FieldValues['Codigo_SubCampo']:= '000';
             ADOQuery6.FieldValues['Usuario']        := Datamodule1.ADOQuery1.FieldValues['Id'];
             ADOQuery6.FieldValues['No_Historia']    := SGPacientes.Rows[SGPacientes.Row].Strings[1];//Edit2.Text;
             ADOQuery6.FieldValues['Admision']    := SGPacientes.Rows[SGPacientes.Row].Strings[12];
             ADOQuery6.FieldValues['Fecha']          := DateHC.DateTime;
             ADOQuery6.FieldValues['Descripcion_Campo']:= ADOQuery9.FieldValues['Descripcion'];
             ADOQuery6.FieldValues['Valor']          := trim(TEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text);
             ADOQuery6.Post;

             TEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text := '';
           End
        End
        Else If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TMemo Then
        Begin
           ADOQuery9.Close;
           ADOQuery9.Parameters.ParamValues['CDFmt']:=Formato;
           ADOQuery9.Parameters.ParamValues['CDSecc']:=PageControl2.Pages[i].Hint;
           ADOQuery9.Parameters.ParamValues['CDCamp']:=TMemo(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Hint;
           ADOQuery9.Open;
           IF TMemo(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text <> '' Then
           Begin
             ADOQuery6.Append;
             ADOQuery6.FieldValues['Codigo_Formato'] := Formato;
             ADOQuery6.FieldValues['Codigo_Seccion'] := PageControl2.Pages[i].Hint;
             ADOQuery6.FieldValues['Codigo_Campo']   := TMemo(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Hint;
             ADOQuery6.FieldValues['Codigo_SubCampo']:= '000';
             ADOQuery6.FieldValues['Usuario']        := Datamodule1.ADOQuery1.FieldValues['Id'];
             ADOQuery6.FieldValues['No_Historia']    := SGPacientes.Rows[SGPacientes.Row].Strings[1]; //Edit2.Text;
             ADOQuery6.FieldValues['Admision']    := SGPacientes.Rows[SGPacientes.Row].Strings[12];
             ADOQuery6.FieldValues['Fecha']          := DateHC.DateTime;
             ADOQuery6.FieldValues['Descripcion_Campo']:= ADOQuery9.FieldValues['Descripcion'];
             ADOQuery6.FieldValues['Valor']          := trim(TMemo(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text);
             ADOQuery6.Post;

             TMemo(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text := '';
           End
        End
        Else If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TCombobox Then
        Begin
           ADOQuery9.Close;
           ADOQuery9.Parameters.ParamValues['CDFmt']:=Formato;
           ADOQuery9.Parameters.ParamValues['CDSecc']:=PageControl2.Pages[i].Hint;
           ADOQuery9.Parameters.ParamValues['CDCamp']:=TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Hint;
           ADOQuery9.Open;
           IF TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text <> '' Then
           Begin
             ADOQuery6.Append;
             ADOQuery6.FieldValues['Codigo_Formato'] := Formato;
             ADOQuery6.FieldValues['Codigo_Seccion'] := PageControl2.Pages[i].Hint;
             ADOQuery6.FieldValues['Codigo_Campo']   := TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Hint;
             ADOQuery6.FieldValues['Codigo_SubCampo']:= '000';
             ADOQuery6.FieldValues['Usuario']        := Datamodule1.ADOQuery1.FieldValues['Id'];
             ADOQuery6.FieldValues['No_Historia']    := SGPacientes.Rows[SGPacientes.Row].Strings[1]; //Edit2.Text;
             ADOQuery6.FieldValues['Admision']    := SGPacientes.Rows[SGPacientes.Row].Strings[12];
             ADOQuery6.FieldValues['Fecha']          := DateHC.DateTime;
             ADOQuery6.FieldValues['Descripcion_Campo']:= ADOQuery9.FieldValues['Descripcion'];
             ADOQuery6.FieldValues['Valor']          := trim(TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text);
             ADOQuery6.Post;

             IF TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Style = csDropDownList Then
                TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).ClearSelection
             Else TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text := '';
           End
        End
        Else If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TCheckBox Then
        Begin
           IF TCheckBox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Caption <> '' Then
           Begin
             ADOQuery9.Close;
             ADOQuery9.Parameters.ParamValues['CDFmt']:=Formato;
             ADOQuery9.Parameters.ParamValues['CDSecc']:=PageControl2.Pages[i].Hint;
             ADOQuery9.Parameters.ParamValues['CDCamp']:=TCheckBox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Hint;
             ADOQuery9.Open;

             ADOQuery6.Append;
             ADOQuery6.FieldValues['Codigo_Formato'] := Formato;
             ADOQuery6.FieldValues['Codigo_Seccion'] := PageControl2.Pages[i].Hint;
             ADOQuery6.FieldValues['Codigo_Campo']   := TCheckBox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Hint;
             ADOQuery6.FieldValues['Codigo_SubCampo']:= '000';
             ADOQuery6.FieldValues['Usuario']        := Datamodule1.ADOQuery1.FieldValues['Id'];
             ADOQuery6.FieldValues['No_Historia']    := SGPacientes.Rows[SGPacientes.Row].Strings[1]; //Edit2.Text;
             ADOQuery6.FieldValues['Admision']    := SGPacientes.Rows[SGPacientes.Row].Strings[12];
             ADOQuery6.FieldValues['Fecha']          := DateHC.DateTime;
             ADOQuery6.FieldValues['Descripcion_Campo']:= ADOQuery9.FieldValues['Descripcion'];
             ADOQuery6.FieldValues['Valor']          := trim(TCheckBox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Caption);
             ADOQuery6.Post;

             TCheckBox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Caption := '';
           End;
        End
        Else If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TDatetimePicker Then
        Begin
           ADOQuery9.Close;
           ADOQuery9.Parameters.ParamValues['CDFmt']:=Formato;
           ADOQuery9.Parameters.ParamValues['CDSecc']:=PageControl2.Pages[i].Hint;
           ADOQuery9.Parameters.ParamValues['CDCamp']:=TDatetimePicker(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Hint;
           ADOQuery9.Open;

           ADOQuery6.Append;
           ADOQuery6.FieldValues['Codigo_Formato'] := Formato;
           ADOQuery6.FieldValues['Codigo_Seccion'] := PageControl2.Pages[i].Hint;
           ADOQuery6.FieldValues['Codigo_Campo']   := TDatetimePicker(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Hint;
           ADOQuery6.FieldValues['Codigo_SubCampo']:= '000';
           ADOQuery6.FieldValues['Usuario']        := Datamodule1.ADOQuery1.FieldValues['Id'];
           ADOQuery6.FieldValues['No_Historia']    := SGPacientes.Rows[SGPacientes.Row].Strings[1]; //Edit2.Text;
           ADOQuery6.FieldValues['Admision']    := SGPacientes.Rows[SGPacientes.Row].Strings[12];
           ADOQuery6.FieldValues['Fecha']          := DateHC.DateTime;
           ADOQuery6.FieldValues['Descripcion_Campo']:= ADOQuery9.FieldValues['Descripcion'];
           ADOQuery6.FieldValues['Valor']          := TDatetimePicker(PageControl2.Pages[i].Components[0].Components[0].Components[x]).DateTime;
           ADOQuery6.Post;

           TDatetimePicker(PageControl2.Pages[i].Components[0].Components[0].Components[x]).DateTime := now;
        End
        Else If (PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TJvEdit) and
              (copy(TJvEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Name, length(TJvEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Name),1) = '2') then
        Begin
           IF TJvEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text <> '' Then
           Begin
             ADOQuery9.Close;
             ADOQuery9.Parameters.ParamValues['CDFmt']:=Formato;
             ADOQuery9.Parameters.ParamValues['CDSecc']:=PageControl2.Pages[i].Hint;
             ADOQuery9.Parameters.ParamValues['CDCamp']:=TJvEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Hint;
             ADOQuery9.Open;

             ADOQuery6.Append;
             ADOQuery6.FieldValues['Codigo_Formato'] := Formato;
             ADOQuery6.FieldValues['Codigo_Seccion'] := PageControl2.Pages[i].Hint;
             ADOQuery6.FieldValues['Codigo_Campo']   := TJvEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Hint;
             ADOQuery6.FieldValues['Codigo_SubCampo']:= '000';
             ADOQuery6.FieldValues['Usuario']        := Datamodule1.ADOQuery1.FieldValues['Id'];
             ADOQuery6.FieldValues['No_Historia']    := SGPacientes.Rows[SGPacientes.Row].Strings[1]; //Edit2.Text;
             ADOQuery6.FieldValues['Admision']    := SGPacientes.Rows[SGPacientes.Row].Strings[12];
             ADOQuery6.FieldValues['Fecha']          := DateHC.DateTime;
             ADOQuery6.FieldValues['Descripcion_Campo']:= ADOQuery9.FieldValues['Descripcion'];
             ADOQuery6.FieldValues['Valor']          := trim(TJvEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text);
             ADOQuery6.Post;
             TDBLookupComboBox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).KeyValue := '';
           End;
        End

        Else If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TDBLookupComboBox Then
        Begin
           IF TDBLookupComboBox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text <> '' Then
           Begin
             if trim(TDBLookupComboBox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text) <>
                trim(TDBLookupComboBox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).keyvalue) then
             Begin
               ADOQuery9.Close;
               ADOQuery9.Parameters.ParamValues['CDFmt']:=Formato;
               ADOQuery9.Parameters.ParamValues['CDSecc']:=PageControl2.Pages[i].Hint;
               ADOQuery9.Parameters.ParamValues['CDCamp']:=TDBLookupComboBox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Hint;
               ADOQuery9.Open;

               ADOQuery6.Append;
               ADOQuery6.FieldValues['Codigo_Formato'] := Formato;
               ADOQuery6.FieldValues['Codigo_Seccion'] := PageControl2.Pages[i].Hint;
               ADOQuery6.FieldValues['Codigo_Campo']   := TDBLookupComboBox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Hint;
               ADOQuery6.FieldValues['Codigo_SubCampo']:= '000';
               ADOQuery6.FieldValues['Usuario']        := Datamodule1.ADOQuery1.FieldValues['Id'];
               ADOQuery6.FieldValues['No_Historia']    := SGPacientes.Rows[SGPacientes.Row].Strings[1]; //Edit2.Text;
               ADOQuery6.FieldValues['Admision']    := SGPacientes.Rows[SGPacientes.Row].Strings[12];
               ADOQuery6.FieldValues['Fecha']          := DateHC.DateTime;


               ADOQuery6.FieldValues['Descripcion_Campo']:= ADOQuery9.FieldValues['Descripcion'];
               //ADOQuery6.FieldValues['Valor']          := ServCan;  //
               ADOQuery6.FieldValues['Valor']          :=trim(TDBLookupComboBox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).keyvalue) + '-'+trim(TDBLookupComboBox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text);
               ADOQuery6.Post;
             End;

             TDBLookupComboBox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).KeyValue := '';
           End;
        End

        Else If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TImage Then
        Begin
           IF TImage(PageControl2.Pages[i].Components[0].Components[0].Components[x]).HelpKeyword <> '' Then
           Begin
             ADOQuery9.Close;
             ADOQuery9.Parameters.ParamValues['CDFmt']:=Formato;
             ADOQuery9.Parameters.ParamValues['CDSecc']:=PageControl2.Pages[i].Hint;
             ADOQuery9.Parameters.ParamValues['CDCamp']:=leftstr(TImage(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Hint,3);
             ADOQuery9.Open;

             ADOQuery6.Append;
             ADOQuery6.FieldValues['Codigo_Formato'] := Formato;
             ADOQuery6.FieldValues['Codigo_Seccion'] := PageControl2.Pages[i].Hint;
             ADOQuery6.FieldValues['Codigo_Campo']   := leftstr(TImage(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Hint,3);
             ADOQuery6.FieldValues['Codigo_SubCampo']:= '000';
             ADOQuery6.FieldValues['Usuario']        := Datamodule1.ADOQuery1.FieldValues['Id'];
             ADOQuery6.FieldValues['No_Historia']    := SGPacientes.Rows[SGPacientes.Row].Strings[1]; //Edit2.Text;
             ADOQuery6.FieldValues['Admision']    := SGPacientes.Rows[SGPacientes.Row].Strings[12];
             ADOQuery6.FieldValues['Fecha']          := DateHC.DateTime;
             ADOQuery6.FieldValues['Descripcion_Campo']:= ADOQuery9.FieldValues['Descripcion'];
             //ADOQuery6.FieldValues['Valor']          := ServCan;  //
             ADOQuery6.FieldValues['Valor']          :=trim(TImage(PageControl2.Pages[i].Components[0].Components[0].Components[x]).HelpKeyword);
             ADOQuery6.Post;

             TImage(PageControl2.Pages[i].Components[0].Components[0].Components[x]).HelpKeyword := '';
           End;
        End

      End;
    End;

    if Formato = '018' then
      begin
        Mensaje  := '';
        try
          Mensaje  := SGPacientes.Rows[SGPacientes.Row].Strings[1] + '-' + SGPacientes.Rows[SGPacientes.Row].Strings[0]+ ' ' + 'Hay un nuevo evento adverso';
          QryMensajes.Close;
          QryMensajes.Parameters.ParamValues['idpara']  := 20;
          QryMensajes.Open;

          QryMensajes.Append;
          QryMensajes.FieldValues['id_de']       := DataModule1.ADOQuery1.Fields.FieldByName('ID').AsFloat;
          QryMensajes.FieldValues['ID_PARA']     := 20;
          QryMensajes.FieldValues['FECHA']       := DateHC.DateTime;
          QryMensajes.FieldValues['MENSAJE']     := Mensaje;
          QryMensajes.FieldValues['Importancia'] := 'A';
          QryMensajes.FieldValues['Modulo']      := 'HC';
          QryMensajes.Post;
        except
          Application.MessageBox('El mensaje del evento adverso no se grabo correctamente, por favor avise de esto a Farmacia','Información',MB_OK+MB_ICONINFORMATION);
        end;
      end;

     ADOQuery7.Close;
     ADOQuery7.Parameters.ParamValues['Hist']:= SGPacientes.Rows[SGPacientes.Row].Strings[1];  //QryAdmisiones.FieldValues['CCHistoria'];
     ADOQuery7.Open;

    ADOQuery6.Close;
    ADOQuery7.Close;
    ADOQuery7.Open;
    ProgressBar1.Position := 0;
    ProgressBar1.Visible  := False;
    DateHC.DateTime       := now;
    For i := 0 To PageControl2.PageCount-1 Do
    Begin
      e := 0;
     while e <  PageControl2.Pages[i].Components[0].Components[0].ComponentCount do
       begin
         if PageControl2.Pages[i].Components[0].Components[0].Components[e] is TJvEdit then
           TJvEdit(PageControl2.Pages[i].Components[0].Components[0].Components[e]).Text  := '';

         if PageControl2.Pages[i].Components[0].Components[0].Components[e] is TEdit then
           TEdit(PageControl2.Pages[i].Components[0].Components[0].Components[e]).Text  := '';

         if PageControl2.Pages[i].Components[0].Components[0].Components[e] is TMemo then
           TMemo(PageControl2.Pages[i].Components[0].Components[0].Components[e]).Lines.Text  := '';

         if PageControl2.Pages[i].Components[0].Components[0].Components[e] is TComboBox then
           TComboBox(PageControl2.Pages[i].Components[0].Components[0].Components[e]).Text  := '';
         inc(e);
       end;
    end;
    DBImagePpal1Click(Nil);
    chk.Checked := False;
  end;
  FrmProcFormatos.Cursor := crDefault;
end;

//Este procedimiento trae la información sobre los campos de los formatos ya sean texto o graficos
procedure TFrmProcFormatos.LeeDatos(Sender: TObject);
var i,x,k,e,xx,yy:integer;
    Mensaje  : string;
    tokengr :string;
    img : Timage;
    SrcRect,SrcRect2 :Trect;
begin
  chk.Checked := True;
  IF (QryGeneral.RecordCount <> 0) AND (MessageDlg('Esta seguro de traer los datos de este dia y este formato?',mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    if Swm.StateOn then
    Begin
      if MessageBox(0, 'Se encontro que realizo una modificación en los datos anteriores, Desea abandonar los cambios?', '', MB_ICONQUESTION or MB_YESNO) = 7 Then
        Exit;
    End;

    //Proceso de Grabacion.
    For i := 0 To PageControl2.PageCount-1 Do
    Begin
      ProgressBar1.Position :=i;
      For x := 0 To PageControl2.Pages[i].Components[0].Components[0].ComponentCount - 1 Do
      Begin
        //Este if es para subcampos (con un control TGroupBox
        If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TGroupBox Then
        Begin
          For k := 0 To PageControl2.Pages[i].Components[0].Components[0].Components[x].ComponentCount - 1 Do
          Begin
            //*************************************************************************************
              ADOQTraeInf.Close;
              ADOQTraeInf.Parameters.ParamValues['CDFmt']     := Formato;
              ADOQTraeInf.Parameters.ParamValues['CDSecc']    := PageControl2.Pages[i].Hint;
              ADOQTraeInf.Parameters.ParamValues['CDCamp']    := TControl(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).HelpKeyword;
              ADOQTraeInf.Parameters.ParamValues['CDSubCamp'] := TControl(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Hint;
              ADOQTraeInf.Parameters.ParamValues['Usu']       := Datamodule1.ADOQuery1.FieldValues['Id'];
              ADOQTraeInf.Parameters.ParamValues['NoHist']    := SGPacientes.Rows[SGPacientes.Row].Strings[1];
              ADOQTraeInf.Parameters.ParamValues['Fec']       := GRResumen.Rows[GRResumen.Row].strings[1];
              ADOQTraeInf.Open;

              IF ADOQTraeInf.RecordCount>0 Then
              Begin
                If (PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k] Is TEdit) OR
                   (PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k] Is TComboBox) Then
                    TCustomEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Text := ADOQTraeInf.FieldValues['Valor'];
                If (PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k] Is TRadioButton) OR
                   (PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k] Is TCheckBox) Then
                    IF ADOQTraeInf.FieldValues['Valor'] = 'X' Then TRadioButton(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Checked := True
                    ELSE TRadioButton(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Checked := False;
              End;
            //*************************************************************************************
          End;
        End
        // Esta Else es para campos
        Else Begin
          if TControl(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Hint <> '' then
          Begin
            ADOQTraeInf.Close;
            ADOQTraeInf.Parameters.ParamValues['CDFmt']     := Formato;
            ADOQTraeInf.Parameters.ParamValues['CDSecc']    := PageControl2.Pages[i].Hint;
            If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TImage Then
               ADOQTraeInf.Parameters.ParamValues['CDCamp']    := leftstr(TImage(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Hint,3)
            Else
               ADOQTraeInf.Parameters.ParamValues['CDCamp']    := TControl(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Hint;
            ADOQTraeInf.Parameters.ParamValues['CDSubCamp'] := '000';
            //ADOQTraeInf.Parameters.ParamValues['Usu']       := Datamodule1.ADOQuery1.FieldValues['Id'];
            ADOQTraeInf.Parameters.ParamValues['NoHist']    := SGPacientes.Rows[SGPacientes.Row].Strings[1];
            ADOQTraeInf.Parameters.ParamValues['Fec']       := GRResumen.Rows[GRResumen.Row].strings[1];
            ADOQTraeInf.Open;

            IF ADOQTraeInf.RecordCount>0 Then
            Begin
              If (PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TEdit) OR
                 (PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TMemo) OR
                 (PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TComboBox) OR
                 (PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TJvEdit) THEN
                  TCustomEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text := ADOQTraeInf.FieldValues['Valor'];
              If (PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TCheckBox) THEN
                  TCheckBox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Caption := ADOQTraeInf.FieldValues['Valor'];
              If (PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TDateTimePicker) THEN
                  TDateTimePicker(PageControl2.Pages[i].Components[0].Components[0].Components[x]).DateTime := strtodatetime(ADOQTraeInf.FieldValues['Valor']);
              If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TImage Then
              Begin
                TImage(PageControl2.Pages[i].Components[0].Components[0].Components[x]).HelpKeyword := ADOQTraeInf.FieldValues['Valor'];

                postoken := 1;
                Repeat
                  tokengr := Busca_Parametro(ADOQTraeInf.FieldValues['Valor'],postoken,',');
                  if fileexists(ExtractFilePath(paramstr(0))+'Imagenes\'+ADOQueryFormatos.FieldValues['Descripcion']+'\'+LeftToken(tokengr,'[')+'.bmp') then
                  Begin
                    TImage(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Canvas.CopyMode := cmSrcCopy;

                    if Busca_Entre(tokengr,'[x','x]') <> '' then
                    Begin
                      xx := strtoint(Busca_Entre(tokengr,'[x','x]'))
                    End
                    else
                    Begin
                      xx := 0;
                    End;

                    if Busca_Entre(tokengr,'[y','y]') <> '' then
                    Begin
                      yy := strtoint(Busca_Entre(tokengr,'[y','y]'))
                    End
                    else Begin
                      yy := 0;
                    End;

                    img := Timage.Create(Application);
                    img.Stretch := False;
                    img.AutoSize := true;
                    img.Transparent := true;

                    img.Picture.LoadFromFile(ExtractFilePath(paramstr(0))+'Imagenes\'+ADOQueryFormatos.FieldValues['Descripcion']+'\'+LeftToken(tokengr,'[')+'.bmp');
                    SrcRect := Rect(0, 0, Img.Width, Img.Height);
                    SrcRect2 := Rect(xx-trunc(Img.Width/2), yy-trunc(Img.Height/2), Img.Width+(xx-trunc(Img.Width/2)), Img.Height+(yy-trunc(Img.Height/2)));
                    TImage(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Canvas.CopyRect(SrcRect2, img.Canvas, SrcRect);
                  End;
                Until postoken = -1;
              End;
              {If (PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TDBLookupComboBox) THEN
                  TDBLookupComboBox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Caption := ADOQTraeInf.FieldValues['Valor'];}
            End;
          End;
        End;
      End;
    End;
  end;
end;


procedure TFrmProcFormatos.CargaFormatos;
var i,j,k,Desp,Desp2,Desp3,ing:integer;
begin
  Formato   := '';
  Seccion   := '';

  if EditNombreP.Text = '' then
  begin
    Application.MessageBox('Debe seleccionar un paciente','Información',MB_OK+MB_ICONINFORMATION);
    JvBitBtn4Click(Nil);
    Exit;
  end
  else begin
    Formato             := ADOQueryFormatos.FieldValues['Codigo'];
    LblFormato.Caption  := uppercase(DBMemoPpal1.Text);
    DBMemoPpal1.Text    := uppercase(DBMemoPpal1.Text);

    For i:=0 To PageControl2.PageCount-1 Do
    Begin
      PageControl2.Pages[0].Destroy;
    End;

    QryGeneral.Close;
    QryGeneral.SQL.Clear;
    QryGeneral.SQL.Add('SELECT *');
    QryGeneral.SQL.Add('FROM FDSecciones');
    QryGeneral.SQL.Add('WHERE Codigo_Formato = '''+Formato+'''');
    QryGeneral.SQL.Add('ORDER BY Codigo_Formato,Codigo_Seccion');
    QryGeneral.Open;

    IF ADOQueryFormatos.FieldValues['MultiLine'] = 'N' Then PageControl2.MultiLine := True
    Else PageControl2.MultiLine := False;

    WindowState := wsMaximized;

    NoC := 0;
    NoC2 := 0;
    tammemo:=0;

    if QryGeneral.RecordCount <> 0 then
    begin
      QryGeneral.First;
      for i:=0 To QryGeneral.RecordCount-1 do
      begin
         TabSheetNuevo              := TTabSheet.Create(PageControl2);
         TabSheetNuevo.PageControl  := PageControl2;
         TabSheetNuevo.Caption      := QryGeneral.FieldValues['Codigo_Seccion']+' - '+QryGeneral.FieldValues['Descripcion'];
         TabSheetNuevo.Hint         := QryGeneral.FieldValues['Codigo_Seccion'];

         Panelnuevo                 := TPanel.Create(TabSheetNuevo);
         Panelnuevo.Parent          := TabSheetNuevo;
         Panelnuevo.BevelInner      := bvLowered;
         Panelnuevo.BevelOuter      := BvRaised;
         Panelnuevo.Color           := clActiveBorder;
         Panelnuevo.Align           := alClient;

         Framenuevo                 := TJVScrollBox.Create(PanelNuevo);
         Framenuevo.Parent          := PanelNuevo;
         Framenuevo.Align           := alClient;
         if tammemo = 0 then tammemo:=FrameNuevo.Width;
         FrameNuevo.AutoScroll      := True;


         DBImageNuevo               := TImage.Create(FrameNuevo);
         DBImageNuevo.Parent        := FrameNuevo;
         DBImageNuevo.Picture.Bitmap.Assign(QryGeneral.FieldByName('Imagen'));
         DBImageNuevo.Transparent   := False;
         DBImageNuevo.AutoSize      := true;
         DBImageNuevo.SendToBack;

         QryApoyo.Connection        := DataModule1.ADOConnection1;

         QryApoyo.Close;
         QryApoyo.SQL.Clear;
         QryApoyo.SQL.Add('SELECT Codigo_Formato+Codigo_Seccion+Codigo_Campo as cod,*');
         QryApoyo.SQL.Add('FROM FDCampos');
         QryApoyo.SQL.Add('WHERE Codigo_Formato = '''+QryGeneral.Fields.FieldByName('Codigo_Formato').AsString+''' AND');
         QryApoyo.SQL.Add('               Codigo_Seccion = '''+QryGeneral.Fields.FieldByName('Codigo_Seccion').AsString+'''');
         QryApoyo.SQL.Add('ORDER BY Codigo_Formato,Codigo_Seccion,Codigo_Campo');
         QryApoyo.Open;

         Desp:=0;
         for j:=0 To QryApoyo.RecordCount-1 do
         begin
           Seccion    := QryApoyo.Fields.FieldByName('Codigo_Seccion').AsString;

           //Verificar Si Solicita el Campo por Edad y Sexo
           Ing:=0;
           if (QryApoyo.FieldValues['Sexo'] <> null) Then
             if (trim(QryApoyo.FieldValues['Sexo']) <> '') Then
               if (QryApoyo.FieldValues['Sexo'] <> leftstr(EditSexo.Text,1)) Then Ing:=1;
           if (QryApoyo.FieldValues['EdadINI'] <> null) AND (QryApoyo.FieldValues['EdadINI'] <> 0) Then
             if (((now  - strtodate(EditFecNaci.Text))/360) <= QryApoyo.FieldValues['EdadINI'] ) Then Ing:=1;
           if (QryApoyo.FieldValues['EdadFIN'] <> null) AND (QryApoyo.FieldValues['EdadFIN'] <> 0) Then
             if (((now  - strtodate(EditFecNaci.Text))/360) >= QryApoyo.FieldValues['EdadFIN'] ) Then Ing:=1;

           if ing=0 then
           begin
             //Aqui se adicionan los controles para solicitar datos segun el tipo de campo.
             //Campo label que muestra el nombre del campo.
             Textnuevo              := TLabel.Create(Framenuevo);
             Textnuevo.Parent       := FrameNuevo;
             if (QryApoyo.FieldValues['Label'] <> 'N')then
             begin
               Textnuevo.Caption      := QryApoyo.FieldValues['Codigo_Campo']+ ' - ' +QryApoyo.FieldValues['Descripcion']+':';
               if QryApoyo.FieldValues['X'] <> 0 then Textnuevo.Left := QryApoyo.FieldValues['X']
               Else Textnuevo.Left := 10;
               if QryApoyo.FieldValues['Y'] <> 0 then Textnuevo.Top := QryApoyo.FieldValues['Y']
               Else Textnuevo.Top := 13+Desp;
               Textnuevo.Hint         := 'Tx'+QryApoyo.FieldValues['Codigo_Formato']+QryApoyo.FieldValues['Codigo_Seccion']+QryApoyo.FieldValues['Codigo_Campo'];
               Textnuevo.AutoSize     := true;
               Textnuevo.Font.Color   := clblack;
               Textnuevo.Transparent  := True;
             end;

             //Campos de TITULO o Descripciones
             if QryApoyo.FieldValues['Tipo'] = 0 Then
             begin
               Textnuevo            := TLabel.Create(Framenuevo);
               Textnuevo.Parent     := FrameNuevo;
               if QryApoyo.FieldValues['X'] <> 0 then Textnuevo.Left := QryApoyo.FieldValues['X']
               Else Textnuevo.Left := 10;
               if QryApoyo.FieldValues['Y'] <> 0 then Textnuevo.Top := QryApoyo.FieldValues['Y']
               Else Textnuevo.Top := 30+Desp;
               if QryApoyo.FieldValues['Tamaño'] <> null then
               Begin
                 Textnuevo.Font.Size  := QryApoyo.FieldValues['Tamaño'];
               End
               Else Textnuevo.Font.Size  := 12;
               Textnuevo.Caption      := QryApoyo.FieldValues['Texto'];
               Textnuevo.Font.Style   := [];
               Textnuevo.Name         := 'Ti'+inttostr(NoC);
               Textnuevo.Hint         := QryApoyo.FieldValues['Codigo_Campo'];
               Textnuevo.AutoSize     := true;
               Textnuevo.Font.Color   := clBlue;
               Textnuevo.Transparent  := True;

               Desp                 := Desp + 30 +Textnuevo.Height;
               inc(NoC);
             end
             else if QryApoyo.FieldValues['Tipo'] = 1 Then
             begin
               //Campo texto que solicita informaciòn.
               EditNuevo            := TEdit.Create(Framenuevo);
               EditNuevo.Parent     := FrameNuevo;
               if QryApoyo.FieldValues['X'] <> 0 then EditNuevo.Left := QryApoyo.FieldValues['X']
               Else EditNuevo.Left := 10;
               if QryApoyo.FieldValues['Y'] <> 0 then EditNuevo.Top := QryApoyo.FieldValues['Y']
               Else EditNuevo.Top := 30+Desp;
               if QryApoyo.FieldValues['Tamaño'] <> null then
               Begin
                 EditNuevo.MaxLength  := QryApoyo.FieldValues['Tamaño'];
                 if (TamanoTexto(QryApoyo.FieldValues['Tamaño'])) > tammemo - 40 Then
                   EditNuevo.Width := tammemo - 40
                 Else
                   EditNuevo.Width := (TamanoTexto(QryApoyo.FieldValues['Tamaño']));
               End;
               EditNuevo.AutoSize := true;
               EditNuevo.Font.Style := [];
               EditNuevo.Name       := 'Ed'+inttostr(NoC);
               EditNuevo.Hint       := QryApoyo.FieldValues['Codigo_Campo'];
               if QryApoyo.FieldValues['Obligatorio'] = '1' then
                 EditNuevo.Color    := clYellow
               else
                 EditNuevo.Color    := clwindow;
               EditNuevo.Text       := QryApoyo.FieldValues['Texto'];
               EditNuevo.OnKeyPress := keyall;
               Desp                 := Desp + 30 +EditNuevo.Height;
               inc(NoC);
             end
             else if QryApoyo.FieldValues['Tipo'] = 2 then
             begin
                 //Campo Memo que solicita informaciòn.
                 MemoNuevo := TMemo.Create(FrameNuevo);
                 MemoNuevo.Parent :=FrameNuevo;
                 if QryApoyo.FieldValues['X'] <> 0 then MemoNuevo.Left := QryApoyo.FieldValues['X']
                 Else MemoNuevo.Left := 10;
                 if QryApoyo.FieldValues['Y'] <> 0 then MemoNuevo.Top := QryApoyo.FieldValues['Y']
                 Else MemoNuevo.Top := 30+Desp;
                 MemoNuevo.Width := tammemo - 40;
                 if QryApoyo.FieldValues['Tamaño'] <> null then
                   MemoNuevo.Height := QryApoyo.FieldValues['Tamaño']
                 Else MemoNuevo.Height := 55;
                 MemoNuevo.Font.Style := [];
                 MemoNuevo.Name := 'Ed'+inttostr(NoC);
                 MemoNuevo.Hint := QryApoyo.FieldValues['Codigo_Campo'];
                 MemoNuevo.HelpKeyword := QryApoyo.FieldValues['Descripcion'];
                 MemoNuevo.OnExit := GuardaHC;
                 MemoNuevo.OnEnter := RecuperaHC;
                 if QryApoyo.FieldValues['Obligatorio'] = '1' then
                   MemoNuevo.Color :=clYellow
                 else
                   MemoNuevo.Color := clwindow;
                 MemoNuevo.Text := '';
                 MemoNuevo.OnKeyPress := keyall;
                 Desp := Desp + MemoNuevo.Height+20;
                 inc(NoC);
             end
             else if QryApoyo.FieldValues['Tipo'] = 3 then
             begin
               //Campo ComboBox Historico.
               ComboBoxNuevo := TComboBox.Create(FrameNuevo);
               ComboBoxNuevo.Parent :=FrameNuevo;
               if QryApoyo.FieldValues['X'] <> 0 then ComboBoxNuevo.Left := QryApoyo.FieldValues['X']
               Else ComboBoxNuevo.Left := Textnuevo.Width + 15;
               if QryApoyo.FieldValues['Y'] <> 0 then ComboBoxNuevo.Top := QryApoyo.FieldValues['Y']
               Else ComboBoxNuevo.Top := 10+Desp;
               ComboBoxNuevo.Font.Style := [];
               ComboBoxNuevo.Name := 'Ed'+inttostr(NoC);
               ComboBoxNuevo.Text:='';
               ComboBoxNuevo.Hint := QryApoyo.FieldValues['Codigo_Campo'];
               ComboBoxNuevo.Style := csDropDown;
               ComboBoxNuevo.OnKeyPress := keyall;
               if QryApoyo.FieldValues['Obligatorio'] = '1' then
                 ComboBoxNuevo.Color := clYellow
               else
                 ComboBoxNuevo.Color :=clwindow;
               ComboBoxNuevo.Width := 20;

               ADOQuery13.Close;
               ADOQuery13.Parameters.ParamValues['CDFmt']     := QryApoyo.FieldValues['Codigo_Formato'];
               ADOQuery13.Parameters.ParamValues['CDSecc']    := QryApoyo.FieldValues['Codigo_Seccion'];
               ADOQuery13.Parameters.ParamValues['CDCamp']    := QryApoyo.FieldValues['Codigo_Campo'];
               ADOQuery13.Parameters.ParamValues['CDSubCamp'] := '000';
               ADOQuery13.Parameters.ParamValues['Hist']      := SGPacientes.Rows[SGPacientes.Row].Strings[1];     //QryAdmisiones.FieldValues['CCHistoria'];
               ADOQuery13.Open;
               ADOQuery13.First;
               while not ADOQuery13.Eof do
               begin
                 ComboBoxNuevo.Items.Add(ADOQuery13.FieldValues['Valor']);
                 ADOQuery13.Next;
               end;

               if QryApoyo.FieldValues['Tamaño'] <> null then
               begin
                 ComboBoxNuevo.Width     := TamanoTexto(QryApoyo.FieldValues['Tamaño']);
                 ComboBoxNuevo.MaxLength := QryApoyo.FieldValues['Tamaño'];
               end;

               Desp := Desp + 30;
               inc(NoC);
             end
             else if QryApoyo.FieldValues['Tipo'] = 4 then
             begin
               //Campo ComboBox que solicita informaciòn.
               ComboBoxNuevo := TComboBox.Create(FrameNuevo);
               ComboBoxNuevo.Parent :=FrameNuevo;
               if QryApoyo.FieldValues['X'] <> 0 then ComboBoxNuevo.Left := QryApoyo.FieldValues['X']
               Else ComboBoxNuevo.Left := Textnuevo.Width + 15;
               if QryApoyo.FieldValues['Y'] <> 0 then ComboBoxNuevo.Top := QryApoyo.FieldValues['Y']
               Else ComboBoxNuevo.Top := 10+Desp;
               ComboBoxNuevo.Font.Style := [];
               ComboBoxNuevo.Name := 'Ed'+inttostr(NoC);
               ComboBoxNuevo.Hint := QryApoyo.FieldValues['Codigo_Campo'];
               ComboBoxNuevo.Style := csDropDown;
               ComboBoxNuevo.OnKeyPress := keyall;
               ComboBoxNuevo.Text  := QryApoyo.FieldValues['Texto'];

               if QryApoyo.FieldValues['Obligatorio'] = '1' then
                 ComboBoxNuevo.Color := clYellow
               else
                 ComboBoxNuevo.Color :=clwindow;
               ComboBoxNuevo.Width := 20;

               ADOQuery5.Close;
               ADOQuery5.Parameters.ParamValues['CDFmt']     := QryApoyo.FieldValues['Codigo_Formato'];
               ADOQuery5.Parameters.ParamValues['CDSecc']    := QryApoyo.FieldValues['Codigo_Seccion'];
               ADOQuery5.Parameters.ParamValues['CDCamp']    := QryApoyo.FieldValues['Codigo_Campo'];
               ADOQuery5.Parameters.ParamValues['CDSubCamp'] := '000';
               ADOQuery5.Open;
               ADOQuery5.First;
               while not ADOQuery5.Eof do
               begin
                 ComboBoxNuevo.Items.Add(ADOQuery5.FieldValues['Valor']);
                 if (TamanoTextoCad(ADOQuery5.FieldValues['Valor'])) > ComboBoxNuevo.Width then
                    ComboBoxNuevo.Width := (TamanoTextoCad(ADOQuery5.FieldValues['Valor']));
                 ADOQuery5.Next;
               end;
               Desp := Desp + 30;
               inc(NoC);
             end
             else if QryApoyo.FieldValues['Tipo'] = 5 then
             begin
               //*******************************************************************************
               //Aqui se adicionan los controles para solicitar datos segun el tipo de SUBCAMPO.
               //*******************************************************************************
               Panelnuevo2 := TGroupBox.Create(FrameNuevo);
               Panelnuevo2.Parent :=FrameNuevo;
               Panelnuevo2.Caption:= QryApoyo.FieldValues['Codigo_Campo']+ ' - ' +QryApoyo.FieldValues['Descripcion']+':';
               Panelnuevo2.Color := clActiveBorder;
               if QryApoyo.FieldValues['X'] <> 0 then Panelnuevo2.Left := QryApoyo.FieldValues['X']
               Else Panelnuevo2.Left := 10;
               if QryApoyo.FieldValues['Y'] <> 0 then Panelnuevo2.Top := QryApoyo.FieldValues['Y']
               Else Panelnuevo2.Top := 13+Desp;
               Panelnuevo2.Width := tammemo - 40;
               Panelnuevo2.Hint  := QryApoyo.FieldValues['Codigo_Campo'];
               Panelnuevo2.Height := 45;
               Desp := Desp + 45;

               ADOQuery10.Close;
               ADOQuery10.Parameters.ParamValues['CDFmt']  :=QryApoyo.FieldValues['Codigo_Formato'];
               ADOQuery10.Parameters.ParamValues['CDSecc'] :=QryApoyo.FieldValues['Codigo_Seccion'];
               ADOQuery10.Parameters.ParamValues['CDCampo']:=QryApoyo.FieldValues['Codigo_Campo'];
               ADOQuery10.Open;
               ADOQuery10.First;
               Desp2:=0;
               Desp3:=15;
               for k:=0 to ADOQuery10.RecordCount-1 do
               begin
                 //Campo label que muestra el nombre del campo.
                 Textnuevo          := TLabel.Create(Panelnuevo2);
                 Textnuevo.Parent   := Panelnuevo2;
                 Textnuevo.Caption  := ADOQuery10.FieldValues['Codigo_SubCampo']+ ' - ' +ADOQuery10.FieldValues['Descripcion']+':';
                 Textnuevo.Hint     := 'Tx'+ADOQuery10.FieldValues['Codigo_Formato']+ADOQuery10.FieldValues['Codigo_Seccion']+ADOQuery10.FieldValues['Codigo_Campo']+ADOQuery10.FieldValues['Codigo_SubCampo'];
                 if QryApoyo.FieldValues['TextoFijo'] = '1' Then
                 Begin
                   Textnuevo.AutoSize := false;
                   Textnuevo.Width    := QryApoyo.FieldValues['Tamaño']*10;
                 End
                 Else Textnuevo.AutoSize := true;

                 if ((Textnuevo.Width + 10+Desp2)> panelnuevo2.Width) OR (ADOQuery10.FieldValues['NLinea'] = '1') then
                 begin
                   Desp2:=0;
                   Panelnuevo2.Height := Panelnuevo2.Height + 30;
                   Desp := Desp + 30;
                   Desp3:= Desp3+ 25;
                 end;
                 Textnuevo.Left     := 10+Desp2;
                 Textnuevo.Top      := Desp3+3;

                 if ADOQuery10.FieldValues['Tipo'] = 1 then
                 begin
                   //Campo texto que solicita informaciòn.
                   EditNuevo := TEdit.Create(Panelnuevo2);
                   EditNuevo.Parent :=Panelnuevo2;
                   if ADOQuery10.FieldValues['Tamaño'] <> null then
                   begin
                     EditNuevo.Width  := TamanoTexto(ADOQuery10.FieldValues['Tamaño']);
                     EditNuevo.MaxLength := ADOQuery10.FieldValues['Tamaño'];

                     if (TamanoTexto(ADOQuery10.FieldValues['Tamaño'])) > Panelnuevo2.Width Then
                       EditNuevo.Width := Panelnuevo2.Width - (Textnuevo.Width + 30 +Desp2)
                     Else
                       EditNuevo.Width := (TamanoTexto(ADOQuery10.FieldValues['Tamaño']));
                   end;

                   if (Textnuevo.Width +EditNuevo.Width + 10+Desp2)> panelnuevo2.Width then
                   begin
                     Desp2:=0;
                     Panelnuevo2.Height := Panelnuevo2.Height + 30;
                     Desp := Desp + 30;
                     Desp3:= Desp3+ 25;
                   end;
                   if ADOQuery10.FieldValues['X'] <> 0 then EditNuevo.Left := ADOQuery10.FieldValues['X']
                   Else EditNuevo.Left := Textnuevo.Width + 10 +Desp2;
                   if ADOQuery10.FieldValues['Y'] <> 0 then EditNuevo.Top := ADOQuery10.FieldValues['Y']
                   Else EditNuevo.Top := Desp3;
                   EditNuevo.Font.Style := [];
                   EditNuevo.Name := 'Ed'+inttostr(NoC);
                   EditNuevo.Hint := ADOQuery10.FieldValues['Codigo_SubCampo'];
                   EditNuevo.HelpKeyword := ADOQuery10.FieldValues['Codigo_Campo'];
                   if ADOQuery10.FieldValues['Obligatorio'] = '1' then
                     EditNuevo.Color := clYellow
                   else
                     EditNuevo.Color := clwindow;
                   EditNuevo.Text := '';
                   EditNuevo.OnKeyPress := keyall;
                   Desp2 := Textnuevo.Width + 10 +Desp2+EditNuevo.Width;
                   inc(NoC);
                 end

                 //RadioButton
                 Else if ADOQuery10.FieldValues['Tipo'] = 15 then
                 begin
                   //Campo texto que solicita informaciòn.
                   RadioNuevo := TRadioButton.Create(Panelnuevo2);
                   RadioNuevo.Parent :=Panelnuevo2;
                   if ADOQuery10.FieldValues['Tamaño'] <> null then
                   begin
                     RadioNuevo.Width  := TamanoTexto(ADOQuery10.FieldValues['Tamaño']);
                   end;

                   if (Textnuevo.Width +RadioNuevo.Width + 10+Desp2)> panelnuevo2.Width then
                   begin
                     Desp2:=0;
                     Panelnuevo2.Height := Panelnuevo2.Height + 30;
                     Desp := Desp + 30;
                     Desp3:= Desp3+ 25;
                   end;
                   if ADOQuery10.FieldValues['X'] <> 0 then RadioNuevo.Left := ADOQuery10.FieldValues['X']
                   Else RadioNuevo.Left := Textnuevo.Width + 10 +Desp2;
                   if ADOQuery10.FieldValues['Y'] <> 0 then RadioNuevo.Top := ADOQuery10.FieldValues['Y']
                   Else RadioNuevo.Top := Desp3;
                   RadioNuevo.Font.Style := [];
                   RadioNuevo.Name := 'Rd'+inttostr(NoC);
                   RadioNuevo.Hint := ADOQuery10.FieldValues['Codigo_SubCampo'];
                   RadioNuevo.HelpKeyword := ADOQuery10.FieldValues['Codigo_Campo'];
                   RadioNuevo.OnKeyPress := keyall;
                   if ADOQuery10.FieldValues['Obligatorio'] = '1' then
                     RadioNuevo.Color := clYellow
                   else
                     RadioNuevo.Color := clwindow;
                   Desp2 := Textnuevo.Width + 10 +Desp2+RadioNuevo.Width;
                   inc(NoC);
                 end

                 //CheckBox
                 Else if ADOQuery10.FieldValues['Tipo'] = 16 then
                 begin
                   //Campo texto que solicita informaciòn.
                   CheckBoxNuevo := TCheckBox.Create(Panelnuevo2);
                   CheckBoxNuevo.Parent :=Panelnuevo2;
                   if ADOQuery10.FieldValues['Tamaño'] <> null then
                   begin
                     CheckBoxNuevo.Width  := TamanoTexto(ADOQuery10.FieldValues['Tamaño']);
                   end;

                   if (Textnuevo.Width +CheckBoxNuevo.Width + 10+Desp2)> panelnuevo2.Width then
                   begin
                     Desp2:=0;
                     Panelnuevo2.Height := Panelnuevo2.Height + 30;
                     Desp := Desp + 30;
                     Desp3:= Desp3+ 25;
                   end;
                   if ADOQuery10.FieldValues['X'] <> 0 then CheckBoxNuevo.Left := ADOQuery10.FieldValues['X']
                   Else CheckBoxNuevo.Left := Textnuevo.Width + 10 +Desp2;
                   if ADOQuery10.FieldValues['Y'] <> 0 then CheckBoxNuevo.Top := ADOQuery10.FieldValues['Y']
                   Else CheckBoxNuevo.Top := Desp3;
                   CheckBoxNuevo.Font.Style := [];
                   CheckBoxNuevo.Name := 'CB'+inttostr(NoC);
                   CheckBoxNuevo.Hint := ADOQuery10.FieldValues['Codigo_SubCampo'];
                   CheckBoxNuevo.HelpKeyword := ADOQuery10.FieldValues['Codigo_Campo'];
                   CheckBoxNuevo.OnKeyPress := keyall;
                   if ADOQuery10.FieldValues['Obligatorio'] = '1' then
                     CheckBoxNuevo.Color := clYellow
                   else
                     CheckBoxNuevo.Color := clwindow;
                   Desp2 := Textnuevo.Width + 10 +Desp2+CheckBoxNuevo.Width;
                   inc(NoC);
                 end

                 else if ADOQuery10.FieldValues['Tipo'] = 3 then
                 begin
                   //Campo ComboBox Historico
                   ComboBoxNuevo := TComboBox.Create(Panelnuevo2);
                   ComboBoxNuevo.Parent :=Panelnuevo2;
                   if (Textnuevo.Width +ComboBoxNuevo.Width + 10+Desp2)> panelnuevo2.Width then
                     begin
                      Desp2:=0;
                      Panelnuevo2.Height := Panelnuevo2.Height + 30;
                      Desp := Desp + 30;
                      Desp3:= Desp3+ 25;
                     end;
                   if ADOQuery10.FieldValues['X'] <> 0 then ComboBoxNuevo.Left := ADOQuery10.FieldValues['X']
                   Else ComboBoxNuevo.Left := Textnuevo.Width + 10 +Desp2;
                   if ADOQuery10.FieldValues['Y'] <> 0 then ComboBoxNuevo.Top := ADOQuery10.FieldValues['Y']
                   Else ComboBoxNuevo.Top := Desp3;
                   ComboBoxNuevo.Font.Style := [];
                   ComboBoxNuevo.Name := 'Ed'+inttostr(NoC);
                   ComboBoxNuevo.Text:='';
                   ComboBoxNuevo.HelpKeyword := ADOQuery10.FieldValues['Codigo_Campo'];
                   ComboBoxNuevo.Hint := ADOQuery10.FieldValues['Codigo_SubCampo'];
                   ComboBoxNuevo.OnKeyPress := keyall;
                   ComboBoxNuevo.Style := csDropDown;
                   if ADOQuery10.FieldValues['Obligatorio'] = '1' then
                     ComboBoxNuevo.Color := clYellow
                   else
                     ComboBoxNuevo.Color :=clwindow;

                   ADOQuery13.Close;
                   ADOQuery13.Parameters.ParamValues['CDFmt']     := ADOQuery10.FieldValues['Codigo_Formato'];
                   ADOQuery13.Parameters.ParamValues['CDSecc']    := ADOQuery10.FieldValues['Codigo_Seccion'];
                   ADOQuery13.Parameters.ParamValues['CDCamp']    := ADOQuery10.FieldValues['Codigo_Campo'];
                   ADOQuery13.Parameters.ParamValues['CDSubCamp'] := ADOQuery10.FieldValues['Codigo_SubCampo'];
                   ADOQuery13.Parameters.ParamValues['Hist']      := SGPacientes.Rows[SGPacientes.Row].Strings[1];  //QryAdmisiones.FieldValues['CCHistoria'];
                   ADOQuery13.Open;
                   ADOQuery13.First;
                   while not ADOQuery13.Eof do
                   begin
                     ComboBoxNuevo.Items.Add(ADOQuery13.FieldValues['Valor']);
                     ADOQuery13.Next;
                   end;

                   if ADOQuery10.FieldValues['Tamaño'] <> null then
                   begin
                     ComboBoxNuevo.Width     := TamanoTexto(ADOQuery10.FieldValues['Tamaño']);
                     ComboBoxNuevo.MaxLength := ADOQuery10.FieldValues['Tamaño'];
                   end;

                   Desp2 := Textnuevo.Width + 10 +Desp2+ComboBoxNuevo.Width;
                   inc(NoC);
                 end
                 else if ADOQuery10.FieldValues['Tipo'] = 4 then
                 begin
                   //Campo ComboBox que solicita informaciòn.
                   ComboBoxNuevo := TComboBox.Create(Panelnuevo2);
                   ComboBoxNuevo.Parent :=Panelnuevo2;
                   if (Textnuevo.Width +ComboBoxNuevo.Width + 10+Desp2)> panelnuevo2.Width then
                   begin
                     Desp2:=0;
                     Panelnuevo2.Height := Panelnuevo2.Height + 30;
                     Desp := Desp + 30;
                     Desp3:= Desp3+ 25;
                   end;
                   if ADOQuery10.FieldValues['X'] <> 0 then ComboBoxNuevo.Left := ADOQuery10.FieldValues['X']
                   Else ComboBoxNuevo.Left := Textnuevo.Width + 10 +Desp2;
                   if ADOQuery10.FieldValues['Y'] <> 0 then ComboBoxNuevo.Top := ADOQuery10.FieldValues['Y']
                   Else ComboBoxNuevo.Top := Desp3;
                   ComboBoxNuevo.Font.Style := [];
                   ComboBoxNuevo.Name := 'Ed'+inttostr(NoC);
                   ComboBoxNuevo.HelpKeyword := ADOQuery10.FieldValues['Codigo_Campo'];
                   ComboBoxNuevo.Hint := ADOQuery10.FieldValues['Codigo_SubCampo'];
                   ComboBoxNuevo.Style := csDropDown;
                   ComboBoxNuevo.text  := '';
                   ComboBoxNuevo.OnKeyPress := keyall;

                   if ADOQuery10.FieldValues['Obligatorio'] = '1' then
                     ComboBoxNuevo.Color := clYellow
                   else
                     ComboBoxNuevo.Color := clWindow;
                   ComboBoxNuevo.Width := 20;

                   ADOQuery5.Close;
                   ADOQuery5.Parameters.ParamValues['CDFmt'] := ADOQuery10.FieldValues['Codigo_Formato'];
                   ADOQuery5.Parameters.ParamValues['CDSecc'] := ADOQuery10.FieldValues['Codigo_Seccion'];
                   ADOQuery5.Parameters.ParamValues['CDCamp'] := ADOQuery10.FieldValues['Codigo_Campo'];
                   ADOQuery5.Parameters.ParamValues['CDSubCamp'] := ADOQuery10.FieldValues['Codigo_SubCampo'];
                   ADOQuery5.Open;
                   ADOQuery5.First;

                   while not ADOQuery5.Eof do
                   begin
                     ComboBoxNuevo.Items.Add(ADOQuery5.FieldValues['Valor']);
                      if (TamanoTextoCad(ADOQuery5.FieldValues['Valor'])) > ComboBoxNuevo.Width then
                        ComboBoxNuevo.Width := (TamanoTextoCad(ADOQuery5.FieldValues['Valor']));
                      ADOQuery5.Next;
                   end;
                   Desp2 := Textnuevo.Width + 10 +Desp2+ComboBoxNuevo.Width;
                   inc(NoC);
                 end;

                 ADOQuery10.Next;
               end;
               //*********************************************
             end
             else if (QryApoyo.FieldValues['Tipo'] = 6) then
             Begin
               //Campo texto que solicita informaciòn.
               EditNuevo := TEdit.Create(FrameNuevo);
               EditNuevo.Parent :=FrameNuevo;
               if QryApoyo.FieldValues['X'] <> 0 then Begin
                 if QryApoyo.FieldValues['Label'] = 'S' then EditNuevo.Left := Textnuevo.Width+QryApoyo.FieldValues['X']
                 Else EditNuevo.Left := QryApoyo.FieldValues['X'];
               End
               Else EditNuevo.Left := Textnuevo.Width + 15;
               if QryApoyo.FieldValues['Y'] <> 0 then BEgin
                 if QryApoyo.FieldValues['Label'] = 'S' then  EditNuevo.Top := QryApoyo.FieldValues['Y']
                 ELSE EditNuevo.Top := QryApoyo.FieldValues['Y']
               End
               Else EditNuevo.Top := 10+Desp;
               if QryApoyo.FieldValues['Tamaño'] <> null then
               Begin
                 EditNuevo.MaxLength  := QryApoyo.FieldValues['Tamaño'];
                 EditNuevo.Width := (TamanoTexto(QryApoyo.FieldValues['Tamaño']));
               End;

               if QryApoyo.FieldValues['Obligatorio'] = '1' then
                EditNuevo.Color := clYellow
               else
                EditNuevo.Color := clWindow;

               EditNuevo.Font.Style := [];
               EditNuevo.Name := 'Fm'+QryApoyo.FieldValues['Codigo_Campo'];
               EditNuevo.TextHint:= QryApoyo.FieldValues['Texto'];
               EditNuevo.Hint       := QryApoyo.FieldValues['Codigo_Campo'];
               EditNuevo.HelpKeyword := QryApoyo.FieldValues['Codigo_Seccion'];
               EditNuevo.OnEnter  := CalculaFormula;
               EditNuevo.ReadOnly := True;
               EditNuevo.Color := cl3DLight;
               EditNuevo.Text := '';
               EditNuevo.OnKeyPress := keyall;
               Desp := Desp + 30;
               inc(NoC);
             end
             else if (QryApoyo.FieldValues['Tipo'] = 7) then
             begin
               if (uppercase(QryApoyo.Fields.FieldByName('Tabla').AsString) = 'GEDIAGNOSTICOS') then
               begin
                  TextN           := TJvEdit.Create(FrameNuevo);//TJvComboBox.Create(FrameNuevo);
                  TextN.Parent    := FrameNuevo;
                  TextN.Name      := 'T' +inttostr(NoC2)+'1';
                  TextN.CharCase  := ecUpperCase;
                  if QryApoyo.FieldValues['X'] <> 0 then TextN.Left := QryApoyo.FieldValues['X']
                  Else TextN.Left := Textnuevo.Width + 15;
                  if QryApoyo.FieldValues['Y'] <> 0 then TextN.Top := QryApoyo.FieldValues['Y']
                  Else TextN.Top := 15+Desp;
                  TextN.Width     := 58;
                  TextN.Hint      := QryApoyo.FieldValues['Codigo_Campo'];
                  TextN.OnExit    := BusDiag;
                  TextN.Text      := '';

                  TextN1          :=  TJvEdit.Create(FrameNuevo);
                  TextN1.Parent   := FrameNuevo;
                  TextN1.Name     := 'T'+ inttostr(NoC2)+'2';
                  TextN1.CharCase := ecUpperCase;
                  if QryApoyo.FieldValues['X'] <> 0 then TextN1.Left := QryApoyo.FieldValues['X'] + TextN.Width
                  Else TextN1.Left := TextN.Width + TextN.Left + 10;
                  if QryApoyo.FieldValues['Y'] <> 0 then TextN1.Top := QryApoyo.FieldValues['Y']
                  Else TextN1.Top := 15+Desp;
                  TextN1.Width    := TamMemo - Textnuevo.Width -150;
                  TextN1.Hint     := QryApoyo.FieldValues['Codigo_Campo'];
                  TextN1.Text     := '';
                  TextN1.OnKeyPress := keyall;

                  if QryApoyo.FieldValues['Obligatorio'] = '1' then
                    TextN1.Color := clYellow
                  else
                    TextN1.Color := clWindow;

                  Boton1          := TBitBtn.Create(FrameNuevo);
                  Boton1.Parent   := FrameNuevo;
                  Boton1.Width    := 27;
                  Boton1.Height   := 21;
                  if QryApoyo.FieldValues['X'] <> 0 then Boton1.Left := QryApoyo.FieldValues['X'] + TextN.Width + TextN1.Width
                  Else Boton1.Left := TextN1.Width + TextN.Width + TextN.Left +15;
                  if QryApoyo.FieldValues['Y'] <> 0 then Boton1.Top := QryApoyo.FieldValues['Y']
                  Else Boton1.Top := 15+Desp;
                  Boton1.Caption  := '...';
                  Boton1.Hint     := 'T'+inttostr(NoC2);
                  Boton1.OnClick  := AmpliaPanel;

                  Desp := Desp + 45;
                  inc(NoC2);
               end
               else begin
                  IF QryApoyo.FieldValues['CampoDesc'] <> null Then
                  Begin
                    //Campo Consulta de Tablas de GemaIPS que solicita informaciòn.
                    DBADOConectionNuevo := TAdoConnection.Create(FrameNuevo);
                    DBADOConectionNuevo.Close;
                    DBADOConectionNuevo.ConnectionString   := Datamodule1.ADOConnection1.ConnectionString;
                    DBADOConectionNuevo.DefaultDatabase    := QryApoyo.Fields.FieldByName('BaseDatos').AsString;
                    DBADOConectionNuevo.KeepConnection     := true;
                    DBADOConectionNuevo.LoginPrompt        := false;
                    DBADOConectionNuevo.Open;

                    DBADOQueryNuevo := TADOQuery.Create(FrameNuevo);
                    DBADOQueryNuevo.Name := 'ADOQ'+inttostr(NoC2);
                    DBADOQueryNuevo.Connection := DBADOConectionNuevo;
                    DBADOQueryNuevo.SQL.Add('SELECT * FROM '+QryApoyo.FieldValues['Tabla']+' WHERE Estado = '+chr(39)+'A'+chr(39)+' ORDER BY '+QryApoyo.FieldValues['CampoDesc']);
                    DBDatasourceNuevo         := TDataSource.Create(FrameNuevo);
                    DBDatasourceNuevo.Name    := 'DataS'+inttostr(NoC2);
                    DBDatasourceNuevo.DataSet := DBADOQueryNuevo;

                    //Combo de la Descripcion
                    DBLComboNuevo             := TDBLookupComboBox.Create(FrameNuevo);
                    DBLComboNuevo.Parent      := FrameNuevo;
                    if QryApoyo.FieldValues['X'] <> 0 then DBLComboNuevo.Left := QryApoyo.FieldValues['X']
                    Else DBLComboNuevo.Left := Textnuevo.Width + 15;
                    if QryApoyo.FieldValues['Y'] <> 0 then DBLComboNuevo.Top := QryApoyo.FieldValues['Y']
                    Else DBLComboNuevo.Top := 15+Desp;
                    DBLComboNuevo.Font.Style  := [];
                    DBLComboNuevo.Name        := 'TT'+inttostr(NoC2)+'1';
                    DBLComboNuevo.Hint        := QryApoyo.FieldValues['Codigo_Campo'];
                    DBLComboNuevo.ListSource  := DBDatasourceNuevo;
                    DBLComboNuevo.ListField   := QryApoyo.FieldValues['Campo'];
                    DBLComboNuevo.KeyField    := QryApoyo.FieldValues['Campo'];
                    DBLComboNuevo.Width       := 70;//tammemo - Textnuevo.Width-30;
                    DBLComboNuevo.OnClick     := onChangeCod;

                    //Combo de la Descripcion
                    DBLComboNuevo1             := TDBLookupComboBox.Create(FrameNuevo);
                    DBLComboNuevo1.Parent      := FrameNuevo;
                    if QryApoyo.FieldValues['X'] <> 0 then DBLComboNuevo1.Left := QryApoyo.FieldValues['X'] + DBLComboNuevo.Width
                    Else DBLComboNuevo1.Left := Textnuevo.Width + DBLComboNuevo.Width +15;
                    if QryApoyo.FieldValues['Y'] <> 0 then DBLComboNuevo1.Top := QryApoyo.FieldValues['Y']
                    Else DBLComboNuevo1.Top := 15+Desp;
                    DBLComboNuevo1.Font.Style  := [];
                    DBLComboNuevo1.Name        := 'TT'+inttostr(NoC2)+'2';
                    DBLComboNuevo1.Hint        := QryApoyo.FieldValues['Codigo_Campo'];
                    DBLComboNuevo1.ListSource  := DBDatasourceNuevo;
                    DBLComboNuevo1.ListField   := QryApoyo.FieldValues['CampoDesc'];
                    DBLComboNuevo1.KeyField    := QryApoyo.FieldValues['Campo'];
                    DBLComboNuevo1.Width       := TamMemo - Textnuevo.Width -200;//tammemo - Textnuevo.Width-30;
                    DBLComboNuevo1.OnClick     := onChangeDes;
                    if QryApoyo.FieldValues['Obligatorio'] = '1' then
                      DBLComboNuevo1.Color := clYellow
                    else
                      DBLComboNuevo1.Color := clWindow;

                    DBADOQueryNuevo.Open;
                    Desp := Desp + 45;
                    inc(NoC2);
                  End;
               end;
             end
             else if QryApoyo.FieldValues['Tipo'] = 8 then
             begin
               //Campo DateTime que solicita informaciòn.
               DateTimeNuevo := TDateTimePicker.Create(FrameNuevo);
               DateTimeNuevo.Parent :=FrameNuevo;
               if QryApoyo.FieldValues['X'] <> 0 then DateTimeNuevo.Left := QryApoyo.FieldValues['X']
               Else DateTimeNuevo.Left := Textnuevo.Width + 15;
               if QryApoyo.FieldValues['Y'] <> 0 then DateTimeNuevo.Top := QryApoyo.FieldValues['Y']
               Else DateTimeNuevo.Top := 10+Desp;
               //DateTimeNuevo.Left := Textnuevo.Width + 15;
               //DateTimeNuevo.Top  := 10+Desp;
               DateTimeNuevo.Width := 250;
               DateTimeNuevo.Font.Style := [];
               DateTimeNuevo.Name := 'Ed'+inttostr(NoC);
               DateTimeNuevo.Hint := QryApoyo.FieldValues['Codigo_Campo'];
               DateTimeNuevo.DateTime := now;
               DateTimeNuevo.DateFormat := dfLong;
               DateTimeNuevo.OnKeyPress := keyall;
               if QryApoyo.FieldValues['Obligatorio'] = '1' then
                 DateTimeNuevo.Color := clYellow
               else
                 DateTimeNuevo.Color := clWindow;

               Desp := Desp + 30;
               inc(NoC);
             end
             else if (QryApoyo.FieldValues['Tipo'] = 10) then
             Begin
               //Campo texto que solicita informaciòn.
               EditNuevo := TEdit.Create(FrameNuevo);
               EditNuevo.Parent :=FrameNuevo;
               if QryApoyo.FieldValues['X'] <> 0 then EditNuevo.Left := QryApoyo.FieldValues['X']
               Else EditNuevo.Left := Textnuevo.Width + 15;
               if QryApoyo.FieldValues['Y'] <> 0 then EditNuevo.Top := QryApoyo.FieldValues['Y']
               Else EditNuevo.Top := 10+Desp;

               if QryApoyo.FieldValues['Tamaño'] <> null then
               Begin
                 EditNuevo.MaxLength  := QryApoyo.FieldValues['Tamaño'];
                 EditNuevo.Width := (TamanoTexto(QryApoyo.FieldValues['Tamaño']));
               End;
               EditNuevo.Font.Style := [];
               EditNuevo.Name := 'Nm'+QryApoyo.FieldValues['Codigo_Campo'];
               EditNuevo.Hint := QryApoyo.FieldValues['Codigo_Campo'];
               EditNuevo.Alignment := taRightJustify;
               EditNuevo.Text := '0';
               EditNuevo.OnKeyPress := keyNumber;
               EditNuevo.OnExit  := CalculaFormula;
               if QryApoyo.FieldValues['Obligatorio'] = '1' then
                 EditNuevo.Color := clYellow
               else
                 EditNuevo.Color := clWindow;

               Desp := Desp + 30;
               inc(NoC);
             end
             else if QryApoyo.FieldValues['Tipo'] = 12 then
             begin
                 //Campo Memo que solicita informaciòn.
                 MemoNuevo := TMemo.Create(FrameNuevo);
                 MemoNuevo.Parent :=FrameNuevo;
                 if QryApoyo.FieldValues['X'] <> 0 then MemoNuevo.Left := QryApoyo.FieldValues['X']
                 Else MemoNuevo.Left := 10;
                 if QryApoyo.FieldValues['Y'] <> 0 then MemoNuevo.Top := QryApoyo.FieldValues['Y']
                 Else MemoNuevo.Top := 30+Desp;
                 MemoNuevo.Width := tammemo - 40;
                 if QryApoyo.FieldValues['Tamaño'] <> null then
                   MemoNuevo.Height := QryApoyo.FieldValues['Tamaño']
                 Else MemoNuevo.Height := 55;
                 MemoNuevo.Font.Style := [];
                 MemoNuevo.Name := 'Ed'+inttostr(NoC);
                 MemoNuevo.Hint := QryApoyo.FieldValues['Codigo_Campo'];
                 MemoNuevo.HelpKeyword := QryApoyo.FieldValues['Descripcion'];
                 MemoNuevo.OnExit := GuardaHC;
                 MemoNuevo.OnEnter := RecuperaHC;
                 if QryApoyo.FieldValues['Obligatorio'] = '1' then
                   MemoNuevo.Color :=clYellow
                 else
                   MemoNuevo.Color := clWindow;
                 MemoNuevo.Lines.Clear;
                 MemoNuevo.OnKeyPress := keyall;
                 MemoNuevo.Lines.Add(QryApoyo.FieldValues['Texto']);
                 Desp := Desp + MemoNuevo.Height+20;
                 inc(NoC);
             end

             //En Prueba CheckBox
             Else if QryApoyo.FieldValues['Tipo'] = 13  then
             begin
               //Campo texto que solicita informaciòn.
               CheckBoxNuevo := TCheckBox.Create(Framenuevo);
               CheckBoxNuevo.Parent :=Framenuevo;
               if QryApoyo.FieldValues['Tamaño'] <> null then
               begin
                 CheckBoxNuevo.Width  := TamanoTexto(QryApoyo.FieldValues['Tamaño']);
               end;

               if (Textnuevo.Width +CheckBoxNuevo.Width + 10+Desp)> FrameNuevo.Width then
               begin
                 Desp:=0;
                 FrameNuevo.Height := FrameNuevo.Height + 30;
                 Desp := Desp + 30;
                 Desp3:= Desp3+ 25;
               end;
               if QryApoyo.FieldValues['X'] <> 0 then CheckBoxNuevo.Left := QryApoyo.FieldValues['X']
               Else CheckBoxNuevo.Left := Textnuevo.Width + 10 +Desp;
               if QryApoyo.FieldValues['Y'] <> 0 then CheckBoxNuevo.Top := QryApoyo.FieldValues['Y']
               Else CheckBoxNuevo.Top := Desp3;
               CheckBoxNuevo.Font.Style := [];
               CheckBoxNuevo.OnKeyPress := keyall;
               CheckBoxNuevo.Name := 'CB'+inttostr(NoC);
               CheckBoxNuevo.Hint := QryApoyo.FieldValues['Codigo_Campo'];
               CheckBoxNuevo.HelpKeyword := QryApoyo.FieldValues['Codigo_Campo'];
               if QryApoyo.FieldValues['Obligatorio'] = '1' then
                 CheckBoxNuevo.Color := clYellow
               else
                 CheckBoxNuevo.Color := clwindow;
               Desp := Textnuevo.Width + 10 +Desp+CheckBoxNuevo.Width;
               inc(NoC);
             end
             //Imagenes en posiciones x y y (Odontogramas, Familiogramas, etc)
             Else if QryApoyo.FieldValues['Tipo'] = 14  then
             begin
                img          := TImage.Create(FrameNuevo);
                img.Parent   := FrameNuevo;
                img.AutoSize := true;
                img.Cursor   := crhandpoint;
                img.Transparent := true;
                if QryApoyo.FieldValues['X'] <> 0 then img.Left := QryApoyo.FieldValues['X']
                Else img.Left := Textnuevo.Width + 15;
                if QryApoyo.FieldValues['Y'] <> 0 then img.Top := QryApoyo.FieldValues['Y']
                Else img.Top := 15+Desp;
                FrameNuevo.Color := clwhite;
                if fileexists(ExtractFilePath(paramstr(0))+'Imagenes\'+ADOQueryFormatos.FieldValues['Descripcion']+'\'+QryApoyo.FieldValues['Descripcion']+'.bmp') then
                  img.Picture.LoadFromFile(ExtractFilePath(paramstr(0))+'Imagenes\'+ADOQueryFormatos.FieldValues['Descripcion']+'\'+QryApoyo.FieldValues['Descripcion']+'.bmp')
                Else Showmessage('ERROR: '+ ExtractFilePath(paramstr(0))+'Imagenes\'+ADOQueryFormatos.FieldValues['Descripcion']+'\'+QryApoyo.FieldValues['Descripcion']+'.bmp' + ' No Existe este Archivo..');
                img.Name := 'Im'+inttostr(NoC);
                img.Hint     := QryApoyo.FieldValues['Codigo_Campo']+'-'+QryApoyo.FieldValues['Descripcion'];
                img.ShowHint := true;
                img.OnClick  := AmpliaPanelBt;
                img.OnMouseDown := mousexx;

                Desp := Desp + 45;
                inc(NoC);
             end
             //Boton de Solicitudes
             Else if QryApoyo.FieldValues['Tipo'] = 15  then
             begin
                Boton1          := TBitBtn.Create(FrameNuevo);
                Boton1.Parent   := FrameNuevo;
                Boton1.Width    := 200;
                Boton1.Height   := 40;
                if QryApoyo.FieldValues['X'] <> 0 then img.Left := QryApoyo.FieldValues['X']
                Else Boton1.Left := Textnuevo.Width + 15;
                if QryApoyo.FieldValues['Y'] <> 0 then img.Top := QryApoyo.FieldValues['Y']
                Else Boton1.Top := 15+Desp;
                Boton1.Caption  := QryApoyo.FieldValues['Descripcion'];
                Boton1.Name     := 'PR'+inttostr(NoC);
                Boton1.Hint     := QryApoyo.FieldValues['Texto'];
                Boton1.OnClick  := AmpliaPanelBt2;

                Desp := Desp + 45;
                inc(NoC);
             end
             //Boton de Cargos
             Else if QryApoyo.FieldValues['Tipo'] = 20  then
             begin
                Boton1          := TBitBtn.Create(FrameNuevo);
                Boton1.Parent   := FrameNuevo;
                Boton1.Width    := 200;
                Boton1.Height   := 40;
                if QryApoyo.FieldValues['X'] <> 0 then img.Left := QryApoyo.FieldValues['X']
                Else Boton1.Left := Textnuevo.Width + 15;
                if QryApoyo.FieldValues['Y'] <> 0 then img.Top := QryApoyo.FieldValues['Y']
                Else Boton1.Top := 15+Desp;
                Boton1.Caption  := QryApoyo.FieldValues['Descripcion'];
                Boton1.Name     := 'CR'+inttostr(NoC);
                Boton1.Hint     := QryApoyo.FieldValues['Texto'];
                Boton1.OnClick  := AmpliaPanelBt3;

                Desp := Desp + 45;
                inc(NoC);
             end;
           end;  // Final de Edad y Sexo

           QryApoyo.Next;
         end;  // Final del For

         //Finaliza con un boton de grabar
         {Boton1          := TBitBtn.Create(FrameNuevo);
         Boton1.Parent   := FrameNuevo;
         Boton1.Width    := 200;
         Boton1.Height   := 40;
         Boton1.Left     := 15;
         Boton1.Top      := 15+Desp;
         Boton1.Caption  := 'GRABAR FORMATO';
         Boton1.Name     := 'GR'+inttostr(NoC);
         Boton1.OnClick  := BtnIngresarClick;}

         QryGeneral.Next;
      end;
      ADOQuery4.Close;
      ADOQuery4.Parameters.ParamValues['CDFmt'] :=Formato;
      ADOQuery4.Parameters.ParamValues['CDSecc']:=leftstr(PageControl2.ActivePage.Caption,3);
      ADOQuery4.Open;

      QryApoyo.Close;
      QryApoyo.SQL.Clear;
      QryApoyo.SQL.Add('SELECT Codigo_Formato+Codigo_Seccion+Codigo_Campo as cod,*');
      QryApoyo.SQL.Add('FROM FDCampos');
      QryApoyo.SQL.Add('WHERE Codigo_Formato = '''+QryGeneral.Fields.FieldByName('Codigo_Formato').AsString+''' AND');
      QryApoyo.SQL.Add('               Codigo_Seccion = '''+QryGeneral.Fields.FieldByName('Codigo_Seccion').AsString+'''');
      QryApoyo.SQL.Add('ORDER BY Codigo_Formato,Codigo_Seccion,Codigo_Campo');
      QryApoyo.Open;

      DateHC.DateTime :=now;
      PageControl2Change(Self);
    End;

    try
      show;
    except
      free;
    end;
    PageControl2.ActivePageIndex :=  0;
  end;
end;

procedure TFrmProcFormatos.CrearHilo;
begin
  Hilo   := THilo.Create(True);
  Hilo.Ejecutar   := CargaFormatos;
  Hilo.Priority   := tpNormal;
  Hilo.Execute;
end;

procedure TFrmProcFormatos.JvBitBtn10Click(Sender: TObject);
begin
  {FormDigital := tFormDigital.create(application);
  try
    FormDigital.DBLookupComboBox4.KeyValue := SGPacientes.Rows[SGPacientes.Row].Strings[13];
    FormDigital.Edit1.Text := SGPacientes.Rows[SGPacientes.Row].Strings[14];
    FormDigital.Edit1Exit(Sender);
    FormDigital.show;
  except
    FormDigital.free;
  end;}
end;

procedure TFrmProcFormatos.JvBitBtn11Click(Sender: TObject);
begin
  ReporteadorP('','','');
end;

procedure TFrmProcFormatos.JvBitBtn12Click(Sender: TObject);
var i,x,k,e:integer;
Mensaje  : string;
begin
  //Esta es una nueva opcion de grabar y modificar
  if MessageDlg('Esta seguro de Grabar?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    //Graba la cita cambiandola como cumplida
    QryGeneral.Close;
    QryGeneral.SQL.Clear;
    QryGeneral.SQL.Add('UPDATE cicitas SET ');
    QryGeneral.SQL.Add('  Cumplida = '''+'1'+'''');
    QryGeneral.SQL.Add('WHERE CONVERT (date, FECHA) = CONVERT (date, GETDATE()) AND ');
    QryGeneral.SQL.Add('      TP_Ident_Usuar + Nr_Ident_Usuar = '+chr(39)+SGPacientes.Rows[SGPacientes.Row].Strings[1]+chr(39));
    QryGeneral.ExecSQL;

    Swm.StateOn := False;

    FrmProcFormatos.Cursor := crSQLWait;
    //*********************
    //Proceso de Validacion
    //*********************
    try
      ADOQuery6.Open;
    except
      Showmessage ('ERROR: No se encuentra conectado el servidor, El sistema intentará reconectar. Si no puede, solucione el problema de red y pruebe de nuevo.');
      ADOQuery6.Connection.Close;
      ADOQuery6.Connection.Open;
      ADOQuery6.Open;
    end;
    ProgressBar1.Visible  := True;
    For i := 0 To PageControl2.PageCount-1 Do
    Begin
      ProgressBar1.Position :=i;
      For x := 0 To PageControl2.Pages[i].Components[0].Components[0].ComponentCount - 1 Do
      Begin
        If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TGroupBox Then
        Begin
          For k := 0 To PageControl2.Pages[i].Components[0].Components[0].Components[x].ComponentCount - 1 Do
          Begin
            //*************************************************************************************
            //
            //*************************************************************************************
            ADOQuery11.Close;
            ADOQuery11.Parameters.ParamValues['CDFmt']:=Formato;
            ADOQuery11.Parameters.ParamValues['CDSecc']:=PageControl2.Pages[i].Hint;
            ADOQuery11.Parameters.ParamValues['CDCamp']:=TControl(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).HelpKeyword;
            ADOQuery11.Parameters.ParamValues['CDSubCamp']:=TControl(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Hint;
            ADOQuery11.Open;

            If PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k] Is TEdit Then
            Begin
              IF TEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Text = '' Then
              Begin
                if TEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Color = clYellow Then Begin
                  Showmessage('No se puede grabar el formulario hasta no diligenciar el campo ' +ADOQuery11.FieldValues['Descripcion']);
                  ProgressBar1.Visible  := False;
                  Exit;
                end;
              End;
            End
            Else If PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k] Is TCombobox Then
            Begin
              IF TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Text = '' Then
              Begin
                if TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Color = clYellow Then Begin
                  Showmessage('No se puede grabar el formulario hasta no diligenciar el campo ' +ADOQuery11.FieldValues['Descripcion']);
                  ProgressBar1.Visible  := False;
                  Exit;
                end;
              End;
            End;
            //*************************************************************************************
          end;
        End
        Else Begin
          ADOQuery9.Close;
          ADOQuery9.Parameters.ParamValues['CDFmt'] :=Formato;
          ADOQuery9.Parameters.ParamValues['CDSecc']:=PageControl2.Pages[i].Hint;
          ADOQuery9.Parameters.ParamValues['CDCamp']:=TControl(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Hint;
          ADOQuery9.Open;
          If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TEdit Then
          Begin
             IF TEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text = '' Then
             Begin
               if TEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Color = clYellow Then Begin
                 Showmessage('No se puede grabar el formulario hasta no diligenciar el campo ' +ADOQuery9.FieldValues['Descripcion']);
                 ProgressBar1.Visible  := False;
                 Exit;
               end;
             End;
          End
          Else If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TMemo Then
          Begin
             IF TMemo(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text = '' Then
             Begin
               IF TMemo(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Color = clYellow Then Begin
                 Showmessage('No se puede grabar el formulario hasta no diligenciar el campo ' +ADOQuery9.FieldValues['Descripcion']);
                 ProgressBar1.Visible  := False;
                 Exit;
               end;
             End;
          End
          Else If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TCombobox Then
          Begin
             IF TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text = '' Then
             Begin
               if TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Color = clYellow Then Begin
                 Showmessage('No se puede grabar el formulario hasta no diligenciar el campo ' +ADOQuery9.FieldValues['Descripcion']);
                 ProgressBar1.Visible  := False;
                 Exit;
               end;
             End;
          End
          Else If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TCheckBox Then
          Begin
             IF TCheckBox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Caption <> '' Then
             Begin
             End;
          End
          Else If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TDatetimePicker Then
          Begin
          End
          Else If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TDBLookupComboBox Then
          Begin
             IF TDBLookupComboBox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text <> '' Then
             Begin
             End;
          End;
        End;
      End;
    End;
    ADOQuery6.Close;

    ProgressBar1.Visible  := True;
    ProgressBar1.Maximum  := PageControl2.PageCount-1;
    ProgressBar1.Position := 0;

    //*********************
    //Proceso de Grabacion.
    //*********************
    ADOQuery6.Open;
    For i := 0 To PageControl2.PageCount-1 Do
    Begin
      ProgressBar1.Position :=i;
      For x := 0 To PageControl2.Pages[i].Components[0].Components[0].ComponentCount - 1 Do
      Begin
        If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TGroupBox Then
        Begin
          For k := 0 To PageControl2.Pages[i].Components[0].Components[0].Components[x].ComponentCount - 1 Do
          Begin
            //*************************************************************************************
            //
            //*************************************************************************************
            ADOQuery11.Close;
            ADOQuery11.Parameters.ParamValues['CDFmt']    :=Formato;
            ADOQuery11.Parameters.ParamValues['CDSecc']   :=PageControl2.Pages[i].Hint;
            ADOQuery11.Parameters.ParamValues['CDCamp']   :=TControl(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).HelpKeyword;
            ADOQuery11.Parameters.ParamValues['CDSubCamp']:=TControl(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Hint;
            ADOQuery11.Open;

            ADOQTraeInf.Close;
            ADOQTraeInf.Parameters.ParamValues['CDFmt']     := Formato;
            ADOQTraeInf.Parameters.ParamValues['CDSecc']    := PageControl2.Pages[i].Hint;
            ADOQTraeInf.Parameters.ParamValues['CDCamp']    := TControl(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).HelpKeyword;
            ADOQTraeInf.Parameters.ParamValues['CDSubCamp'] := TControl(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Hint;
            ADOQTraeInf.Parameters.ParamValues['Usu']       := Datamodule1.ADOQuery1.FieldValues['Id'];
            ADOQTraeInf.Parameters.ParamValues['NoHist']    := SGPacientes.Rows[SGPacientes.Row].Strings[1];
            ADOQTraeInf.Parameters.ParamValues['Fec']       := GRResumen.Rows[GRResumen.Row].strings[1];
            ADOQTraeInf.Open;

            if ADOQTraeInf.RecordCount = 0 then
            Begin
              ADOQuery6.Append
            End
            Else Begin
              DateHC.DateTime := strtodatetime(GRResumen.Rows[GRResumen.Row].strings[1]);
              ADOQuery6.Edit;
            End;

            ADOQuery6.FieldValues['Codigo_Formato'] := Formato;
            ADOQuery6.FieldValues['Codigo_Seccion'] := PageControl2.Pages[i].Hint;
            ADOQuery6.FieldValues['Codigo_Campo']   := TControl(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).HelpKeyword;
            ADOQuery6.FieldValues['Codigo_SubCampo']:= TControl(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Hint;
            ADOQuery6.FieldValues['Usuario']        := Datamodule1.ADOQuery1.FieldValues['Id'];
            ADOQuery6.FieldValues['No_Historia']    := SGPacientes.Rows[SGPacientes.Row].Strings[1];   //Edit2.Text;
            ADOQuery6.FieldValues['Fecha']          := DateHC.DateTime;
            ADOQuery6.FieldValues['Descripcion_Campo']:= ADOQuery11.FieldValues['Descripcion'];
            //Edit
            If PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k] Is TEdit Then
            Begin
              IF TEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Text <> '' Then
              Begin
                ADOQuery6.FieldValues['Valor']          := trim(TEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Text);
                ADOQuery6.Post;

                TEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Text := '';
              End
            End
            //RadioButton
            Else If PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k] Is TRadioButton Then
            Begin
              IF TRadioButton(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Checked Then
              Begin
                ADOQuery6.FieldValues['Valor']          := 'X';
                ADOQuery6.Post;

                TRadioButton(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Checked := False;
              End
            End
            //CheckBox
            Else If PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k] Is TCheckBox Then
            Begin
              IF TCheckBox(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Checked Then
              Begin
                ADOQuery6.FieldValues['Valor']          := 'X';
                ADOQuery6.Post;

                TCheckBox(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Checked := False;
              End
            End
            //ComboBox
            Else If PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k] Is TCombobox Then
            Begin
              IF TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Text <> '' Then
              Begin
                ADOQuery6.FieldValues['Valor']          := trim(TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Text);
                ADOQuery6.Post;

                TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Text:='';
              End
            End
            //*************************************************************************************
          End;
        End
        Else Begin
          ADOQuery9.Close;
          ADOQuery9.Parameters.ParamValues['CDFmt'] :=Formato;
          ADOQuery9.Parameters.ParamValues['CDSecc']:=PageControl2.Pages[i].Hint;
          ADOQuery9.Parameters.ParamValues['CDCamp']:=TControl(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Hint;
          ADOQuery9.Open;

          ADOQTraeInf.Close;
          ADOQTraeInf.Parameters.ParamValues['CDFmt']     := Formato;
          ADOQTraeInf.Parameters.ParamValues['CDSecc']    := PageControl2.Pages[i].Hint;
          ADOQTraeInf.Parameters.ParamValues['CDCamp']    := TControl(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).HelpKeyword;
          ADOQTraeInf.Parameters.ParamValues['CDSubCamp'] := TControl(PageControl2.Pages[i].Components[0].Components[0].Components[x].Components[k]).Hint;
          ADOQTraeInf.Parameters.ParamValues['Usu']       := Datamodule1.ADOQuery1.FieldValues['Id'];
          ADOQTraeInf.Parameters.ParamValues['NoHist']    := SGPacientes.Rows[SGPacientes.Row].Strings[1];
          ADOQTraeInf.Parameters.ParamValues['Fec']       := GRResumen.Rows[GRResumen.Row].strings[1];
          ADOQTraeInf.Open;

          if ADOQTraeInf.RecordCount = 0 then
          Begin
            ADOQuery6.Append
          End
          Else Begin
            DateHC.DateTime := strtodatetime(GRResumen.Rows[GRResumen.Row].strings[1]);
            ADOQuery6.Edit;
          End;

          ADOQuery6.FieldValues['Codigo_Formato'] := Formato;
          ADOQuery6.FieldValues['Codigo_Seccion'] := PageControl2.Pages[i].Hint;
          ADOQuery6.FieldValues['Codigo_Campo']   := TControl(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Hint;
          ADOQuery6.FieldValues['Codigo_SubCampo']:= '000';
          ADOQuery6.FieldValues['Usuario']        := Datamodule1.ADOQuery1.FieldValues['Id'];
          ADOQuery6.FieldValues['No_Historia']    := SGPacientes.Rows[SGPacientes.Row].Strings[1];//Edit2.Text;
          ADOQuery6.FieldValues['Fecha']          := DateHC.DateTime;
          ADOQuery6.FieldValues['Descripcion_Campo']:= ADOQuery9.FieldValues['Descripcion'];

          If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TEdit Then
          Begin
             IF TEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text <> '' Then
             Begin
               ADOQuery6.FieldValues['Valor']          := trim(TEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text);
               ADOQuery6.Post;

               TEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text := '';
             End
          End
          Else If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TMemo Then
          Begin
             IF TMemo(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text <> '' Then
             Begin
               ADOQuery6.FieldValues['Valor']          := trim(TMemo(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text);
               ADOQuery6.Post;

               TMemo(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text := '';
             End
          End
          Else If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TCombobox Then
          Begin
             IF TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text <> '' Then
             Begin
               ADOQuery6.FieldValues['Valor']          := trim(TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text);
               ADOQuery6.Post;

               IF TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Style = csDropDownList Then
                  TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).ClearSelection
               Else TCombobox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text := '';
             End
          End
          Else If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TCheckBox Then
          Begin
             IF TCheckBox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Caption <> '' Then
             Begin
               ADOQuery6.FieldValues['Valor']          := trim(TCheckBox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Caption);
               ADOQuery6.Post;

               TCheckBox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Caption := '';
             End;
          End
          Else If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TDatetimePicker Then
          Begin
             ADOQuery6.FieldValues['Valor']          := TDatetimePicker(PageControl2.Pages[i].Components[0].Components[0].Components[x]).DateTime;
             ADOQuery6.Post;

             TDatetimePicker(PageControl2.Pages[i].Components[0].Components[0].Components[x]).DateTime := now;
          End
          Else If (PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TJvEdit) and
                (copy(TJvEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Name, length(TJvEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Name),1) = '2') then
          Begin
             IF TJvEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text <> '' Then
             Begin
               ADOQuery6.FieldValues['Valor']          := trim(TJvEdit(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text);
               ADOQuery6.Post;
               TDBLookupComboBox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).KeyValue := '';
             End;
          End

          Else If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TDBLookupComboBox Then
          Begin
             IF TDBLookupComboBox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text <> '' Then
             Begin
               if trim(TDBLookupComboBox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text) <>
                  trim(TDBLookupComboBox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).keyvalue) then
               Begin
                 ADOQuery6.FieldValues['Valor']          :=trim(TDBLookupComboBox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).keyvalue) + '-'+trim(TDBLookupComboBox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).Text);
                 ADOQuery6.Post;
               End;

               TDBLookupComboBox(PageControl2.Pages[i].Components[0].Components[0].Components[x]).KeyValue := '';
             End;
          End

          Else If PageControl2.Pages[i].Components[0].Components[0].Components[x] Is TImage Then
          Begin
             IF TImage(PageControl2.Pages[i].Components[0].Components[0].Components[x]).HelpKeyword <> '' Then
             Begin
               ADOQuery6.FieldValues['Valor']          :=trim(TImage(PageControl2.Pages[i].Components[0].Components[0].Components[x]).HelpKeyword);
               ADOQuery6.Post;

               TImage(PageControl2.Pages[i].Components[0].Components[0].Components[x]).HelpKeyword := '';
             End;
          End
        End;
      End;
    End;


    //*************************************************************
    if Formato = '018' then
    begin
      Mensaje  := '';
      try
        Mensaje  := SGPacientes.Rows[SGPacientes.Row].Strings[1] + '-' + SGPacientes.Rows[SGPacientes.Row].Strings[0]+ ' ' + 'Hay un nuevo evento adverso';
        QryMensajes.Close;
        QryMensajes.Parameters.ParamValues['idpara']  := 20;
        QryMensajes.Open;

        QryMensajes.Append;
        QryMensajes.FieldValues['id_de']       := DataModule1.ADOQuery1.Fields.FieldByName('ID').AsFloat;
        QryMensajes.FieldValues['ID_PARA']     := 20;
        QryMensajes.FieldValues['FECHA']       := DateHC.DateTime;
        QryMensajes.FieldValues['MENSAJE']     := Mensaje;
        QryMensajes.FieldValues['Importancia'] := 'A';
        QryMensajes.FieldValues['Modulo']      := 'HC';
        QryMensajes.Post;
      except
        Application.MessageBox('El mensaje del evento adverso no se grabo correctamente, por favor avise de esto a Farmacia','Información',MB_OK+MB_ICONINFORMATION);
      end;
    end;

    ADOQuery7.Close;
    ADOQuery7.Parameters.ParamValues['Hist']:= SGPacientes.Rows[SGPacientes.Row].Strings[1];
    ADOQuery7.Open;

    ADOQuery6.Close;
    ADOQuery7.Close;
    ADOQuery7.Open;
    ProgressBar1.Position := 0;
    ProgressBar1.Visible  := False;
    DateHC.DateTime       := now;
    For i := 0 To PageControl2.PageCount-1 Do
    Begin
      e := 0;
     while e <  PageControl2.Pages[i].Components[0].Components[0].ComponentCount do
       begin
         if PageControl2.Pages[i].Components[0].Components[0].Components[e] is TJvEdit then
           TJvEdit(PageControl2.Pages[i].Components[0].Components[0].Components[e]).Text  := '';

         if PageControl2.Pages[i].Components[0].Components[0].Components[e] is TEdit then
           TEdit(PageControl2.Pages[i].Components[0].Components[0].Components[e]).Text  := '';

         if PageControl2.Pages[i].Components[0].Components[0].Components[e] is TMemo then
           TMemo(PageControl2.Pages[i].Components[0].Components[0].Components[e]).Lines.Text  := '';

         if PageControl2.Pages[i].Components[0].Components[0].Components[e] is TComboBox then
           TComboBox(PageControl2.Pages[i].Components[0].Components[0].Components[e]).Text  := '';
         inc(e);
       end;
    end;
    DBImagePpal1Click(Nil);
    chk.Checked := False;
  end;
  FrmProcFormatos.Cursor := crDefault;
end;

procedure TFrmProcFormatos.JvBitBtn13Click(Sender: TObject);
begin
  rgp.ItemIndex := 0;
  if SGPacientes.Cells[5,SGPacientes.Row] <> '' Then DateTimePicker1.Date := strtodate(leftstr(SGPacientes.Cells[5,SGPacientes.Row],10));
  if SGPacientes.Cells[6,SGPacientes.Row] <> '' Then DateTimePicker2.Date := strtodate(leftstr(SGPacientes.Cells[6,SGPacientes.Row],10))+1;

  JvPageControl2.ActivePageIndex := 0;

  ADOGrProg.Close;
  ADOGrProg.SQL.Clear;
  ADOGrProg.SQL.Add('SELECT *');
  ADOGrProg.SQL.Add(' FROM FDGRProg');
  ADOGrProg.SQL.Add(' WHERE Cond_Sexo = '+chr(39)+EditSexo.Text+chr(39));
  ADOGrProg.SQL.Add('  AND dbo.UDF_CalculaEdadNumeroRef('+chr(39)+SGPacientes.Rows[SGPacientes.Row].Strings[3]+chr(39)+',Getdate(),1) >= Cond_EdadIni');
  ADOGrProg.SQL.Add('  AND dbo.UDF_CalculaEdadNumeroRef('+chr(39)+SGPacientes.Rows[SGPacientes.Row].Strings[3]+chr(39)+',Getdate(),1) < Cond_EdadFin');
  ADOGrProg.Open;

  DBLookupComboBox1.KeyValue := ADOGrProg.FieldValues['Nombre'];
  PCOpciones.ActivePageIndex  := 3;
  JVPageControl2.Pages[0].TabVisible := true;
  JVPageControl2.Pages[1].TabVisible := true;
  JVPageControl2.Pages[3].TabVisible := True;
  JVPageControl2.Pages[2].TabVisible := true;
  JVPageControl2.Pages[4].TabVisible := true;
//  JVPageControl2.Pages[5].TabVisible := true;
  Panel6.Visible := true;
end;

procedure TFrmProcFormatos.JvBitBtn14Click(Sender: TObject);
var H,V,totH,totV,totcH,totcV:integer;
    SrcRect,DstRect : TRect;
    img:Timage;
begin
  totcH := FrameNuevo.Width -25 ; //Original 938 - Restamos 25 por que calculamos que eso mide el scrollbox
  totcV := FrameNuevo.Height-25 ; //Original 475
  totH  := FrameNuevo.HorzScrollBar.Range;
  totV  := FrameNuevo.VertScrollBar.Range;
  //img := Timage.Create(application);
  if totcH > totH then totcH := totH;
  if totcV > totV then totcV := totV;


  Image1.Width  := totH;
  Image1.Height := totV;

  H:=0;
  while H<=totH  do
  Begin
    FrameNuevo.HorzScrollBar.Position := H;

    V:=0;
    While V < totV do
    Begin
      FrameNuevo.VertScrollBar.Position := V;
      FrameNuevo.Repaint;


      if  H+totcH > totH Then
      Begin
        if V+totcV > totV Then Begin
          SrcRect := Rect((H+totcH)-totH,(V+totcV)-totV, totcH, totcV);
          DstRect := Rect(totH - (TotH-H),totV - (TotV-V), totH, totV)
        End
        Else Begin
          SrcRect := Rect((H+totcH)-totH, 0, totcH, totcV);
          DstRect := Rect(totH - (TotH-H), V, totH, totcV+V);
        End;
        Image1.Canvas.CopyRect(DstRect, FrameNuevo.Canvas, SrcRect);
      End
      Else Begin
        if V+totcV > totV Then Begin
          SrcRect := Rect(0,(V+totcV)-totV, totcH, totcV);
          DstRect := Rect(H,totV - (TotV-V), totcH+H, totV)
        End
        Else Begin //Bien Comprobado
          SrcRect := Rect(0, 0, totcH, totcV);
          DstRect := Rect(H, V, totcH+H, totcV+V);
        End;
        Image1.Canvas.CopyRect(DstRect, FrameNuevo.Canvas, SrcRect);
      End;


      V:=V+totcV;
    End;

    H:=H+totcH;
  End;
  FrameNuevo.HorzScrollBar.Position := 0;
  FrameNuevo.VertScrollBar.Position := 0;
  fprn.Preview(true);
end;

procedure TFrmProcFormatos.JvBitBtn15Click(Sender: TObject);
var adm:string;
begin
  adm:=SGPacientes.Cells[12,SGPacientes.Row];
  if adm <> '--' then
  Begin
    FCapturaCargo := tFCapturaCargo.create(application);
    try
      FCapturaCargo.ADOQuery1.Parameters.ParamValues['adm'] := adm;
      FCapturaCargo.ADOQuery1.Open;
      FCapturaCargo.DBlookupComboBox1.KeyValue:=FCapturaCargo.ADOquery1.FieldValues['NO_ADMISION'];
      FCapturaCargo.DBlookupComboBox10.KeyValue:=FCapturaCargo.ADOquery1.FieldValues['NR_IDENT_USUAR'];
      FCapturaCargo.DBLookupComboBox11.KeyValue:=FCapturaCargo.ADOQuery1.FieldValues['TP_Admision'];
      IF FCapturaCargo.DBlookupComboBox1.Text <> '' Then
        FCapturaCargo.DBlookupComboBox10.KeyValue:=FCapturaCargo.ADOquery1.FieldValues['NR_IDENT_USUAR']+FCapturaCargo.ADOquery1.FieldValues['TP_IDENT_USUAR']+FCapturaCargo.ADOquery1.FieldValues['NO_ADMISION'];

      FCapturaCargo.DBLookupComboBox1.KeyValue:=adm;
      FCapturaCargo.DBLookupComboBox1Exit(nil);
      Datamodule1.MuestraconAcceso(FCapturaCargo);
      //FCapturaCargo.ComboBox1.SetFocus;
    except
      FCapturaCargo.free;
    end;
  End
  Else Showmessage('ERROR: No existen admisiones activas para poder realizar los registros de Salida.');
End;

procedure TFrmProcFormatos.JvBitBtn16Click(Sender: TObject);
begin
  ReporteadorP(MainForm.Caption,'SELECT Fecha,Nom_Cama,Nombre_Usuario '+
        ' FROM CICitas,SACamas '+
        ' WHERE CICitas.cd_tipo = SACamas.cd_tipo AND '+
        '    CICitas.cd_seccion = SACamas.cd_seccion AND '+
        '    day(fecha)  = '+inttostr(dayof(DateHC.Date)) +
        '    AND month(fecha)= '+inttostr(monthof(DateHC.Date)) +
        '    AND year(fecha) = '+inttostr(yearof(DateHC.Date)) +
        '    AND (SELECT count(*) '+
        '         FROM '+Datamodule1.ADOComunes.DefaultDatabase+'..SEIdentificaciones as Id, '+
        '              '+Datamodule1.ADOComunes.DefaultDatabase+'..SEPersonas as Per, '+
        '              '+Datamodule1.ADOComunes.DefaultDatabase+'..SEEmpleados as emp, '+
        '              CIUsuarios as A '+
        '         WHERE  Per.id = Id.Persona '+
        '                and A.id_Asigna = ' +floattostr(datamodule1.ADOQuery1.FieldValues['id'])+
        '                and A.id_Agenda = Per.id '+
        '                and emp.id = Per.id ' +
        '                and emp.empresa_trabaja = '+chr(39)+ DataModule1.ADOQuery1.Fields.FieldByName('EMPRESA_TRABAJA').AsString+chr(39)+ ') > 0' ,'');

end;

procedure TFrmProcFormatos.JvBitBtn17Click(Sender: TObject);
var
  adm:string;

  qryRiesgos: TADOQuery;
  MensajeAlerta: string;

begin
     qryRiesgos:= TADOQuery.Create(self);
     qryRiesgos.Connection:= datamodule1.ADOConnection1;
     qryRiesgos.SQL.Add('select dbo.RevisaRequisitos( '+ quotedstr(SGPacientes.Rows[SGPacientes.Row].Strings[1]) +','+DataModule1.ADOQuery1.Fields.FieldByName('id').asstring + ') as Mensaje');
     qryRiesgos.Open;
     MensajeAlerta:= qryRiesgos.FieldByName('Mensaje').AsString ;
     qryRiesgos.Close;
     qryRiesgos.Free;
     if MensajeAlerta <>'' then
     begin
      MensajeAlerta:=StringReplace(MensajeAlerta,'|',#13,[rfReplaceAll]);
       MessageBox(0, pchar(MensajeAlerta), 'Falta información', MB_ICONWARNING or MB_OK);
       exit;
     end;

 try
   if NumeroAdmision='' then
     begin
         MessageBox(0, 'Se requiere un paciente con admisión antes de cerrarla!.', 'Falta Admisión', MB_ICONWARNING or MB_OK);
        Screen.Cursor := crDefault;
     end
 else

 // adm:=BDBuscar('SELECT * FROM SAAdmisiones WHERE NR_Ident_Usuar = '+chr(39)+SGPacientes.Cells[14,SGPacientes.Row]+chr(39)+' AND (EST_ADMINSION = '+chr(39)+'A'+chr(39)+' OR EST_ADMINSION = '+chr(39)+'C'+chr(39)+')','No_Admision','No_Admision');
 // if adm <> 'ERROR: No hay registros para esta selección' then
  Begin
    //Showmessage('Se ingresaran los egresos a la Admision No: '+ adm);
    frmEgresos := tfrmEgresos.create(application);

    frmEgresos.QryAdmisiones.Close;
    frmEgresos.QryAdmisiones.Parameters[0].Value := NumeroAdmision;
    frmEgresos.QryAdmisiones.Open;
    frmEgresos.Edit2.Text:=  SGPacientes.Cells[0,SGPacientes.Row];
    try
      frmEgresos.Show;
    except
      frmEgresos.free;
    end;

  End;

 finally
        Screen.Cursor := crDefault;
 end;//finally
end;

procedure TFrmProcFormatos.JvBitBtn1Click(Sender: TObject);
var i : Integer;
begin
  LimpiaGrilla(SGDelDia, 10);
  PnlMensaje1.Visible  := True;
  Application.ProcessMessages;
  QryGeneral.Close;
  QryGeneral.SQL.Clear;
  QryGeneral.SQL.Add('SELECT distinct convert(datetime,FDInformacion.fecha,103) as fecha, FDFormatos.descripcion, FDFormatos.codigo ');
  QryGeneral.SQL.Add(' FROM FDInformacion inner join FDFormatos on ' );
  QryGeneral.SQL.Add('      FDInformacion.Codigo_Formato = FDFormatos.Codigo inner join FDPersonasxFormato on ');
  QryGeneral.SQL.Add('      FDFormatos.Codigo = FDPersonasxFormato.Formato ');

  QryGeneral.SQL.Add('  WHERE No_Historia = '+chr(39)+SGPacientes.Rows[SGPacientes.Row].Strings[1]+chr(39));
  QryGeneral.SQL.Add(' AND day(fecha)  = '+inttostr(dayof(MonthCalendar1.Date)));
  QryGeneral.SQL.Add(' AND month(fecha)= '+inttostr(monthof(MonthCalendar1.Date)));
  QryGeneral.SQL.Add(' AND year(fecha) = '+inttostr(yearof(MonthCalendar1.Date)));

  QryGeneral.SQL.Add(' AND FDPersonasxFormato.Persona = '''+DataModule1.ADOQuery1.Fields.FieldByName('ID').AsString+'''');

  QryGeneral.SQL.Add(' ORDER BY  convert(datetime,FDInformacion.fecha,103) DESC, FDFormatos.descripcion, FDFormatos.codigo');
  QryGeneral.Open;

  i := 1;
  while not QryGeneral.Eof do
    begin
      SGDelDia.Cells[1,i] := QryGeneral.Fields.FieldByName('Descripcion').AsString;
      SGDelDia.Cells[2,i] := FormatDateTime('DD/MM/YYYY HH:MM:SS',QryGeneral.Fields.FieldByName('Fecha').AsDateTime);
      SGDelDia.Cells[3,i] := QryGeneral.Fields.FieldByName('Codigo').AsString;
      QryGeneral.Next;
      inc(i);
    end;
  SGDelDia.RowCount  := i + 1;
  PnlMensaje1.Visible  := False;

  //Muestra las Imagenes
  PnlMensaje1.Visible  := True;
  Application.ProcessMessages;
  QryGeneral.Close;
  QryGeneral.SQL.Clear;
  QryGeneral.SQL.Add('SELECT convert(varchar(10),FDImagenes.fecha, 103) as fecha, Descripcion, indice as Codigo');
  QryGeneral.SQL.Add(' FROM FDImagenes ');
  QryGeneral.SQL.Add('  WHERE No_Historia = '+chr(39)+SGPacientes.Rows[SGPacientes.Row].Strings[1]+chr(39));
  QryGeneral.SQL.Add(' AND day(fecha)  = '+inttostr(dayof(MonthCalendar1.Date)));
  QryGeneral.SQL.Add(' AND month(fecha)= '+inttostr(monthof(MonthCalendar1.Date)));
  QryGeneral.SQL.Add(' AND year(fecha) = '+inttostr(yearof(MonthCalendar1.Date)));
  QryGeneral.Open;

  while not QryGeneral.Eof do
    begin
      SGDelDia.Cells[1,i] := QryGeneral.Fields.FieldByName('Descripcion').AsString;
      SGDelDia.Cells[2,i] := FormatDateTime('DD/MM/YYYY',QryGeneral.Fields.FieldByName('Fecha').AsDateTime);
      SGDelDia.Cells[3,i] := QryGeneral.Fields.FieldByName('Codigo').AsString;
      QryGeneral.Next;
      inc(i);
    end;
  SGDelDia.RowCount  := i + 1;
  PnlMensaje1.Visible  := False;
end;

procedure TFrmProcFormatos.BtnBuscarRangoClick(Sender: TObject);
var i : Integer;
begin
  QryGeneral.Close;
  QryGeneral.SQL.Clear;
  QryGeneral.SQL.Add('SELECT distinct convert(datetime,FDInformacion.fecha, 103) as fecha, FDFormatos.descripcion, FDFormatos.codigo');
  QryGeneral.SQL.Add(' FROM FDInformacion inner join FDFormatos on ' );
  QryGeneral.SQL.Add('      FDInformacion.Codigo_Formato = FDFormatos.Codigo inner join FDPersonasxFormato on');
  QryGeneral.SQL.Add('      FDFormatos.Codigo = FDPersonasxFormato.Formato ');

  QryGeneral.SQL.Add('WHERE No_Historia = '+chr(39)+SGPacientes.Rows[SGPacientes.Row].Strings[1]+chr(39));
  QryGeneral.SQL.Add('and fecha <= '''+FormatDateTime('DD/MM/YYYY', DTPHasta.Date)+'''');
  QryGeneral.SQL.Add('and fecha >= '''+FormatDateTime('DD/MM/YYYY', DTPDesde.Date)+'''');

  QryGeneral.SQL.Add(' AND FDPersonasxFormato.Persona = '''+DataModule1.ADOQuery1.Fields.FieldByName('ID').AsString+'''');
  if CheckBox1.Checked then
  Begin
    QryGeneral.SQL.Add(' AND FDFormatos.Codigo = '+chr(39)+Formato+chr(39));
  End;
  QryGeneral.SQL.Add('ORDER BY convert(datetime,FDInformacion.fecha, 103) DESC, FDFormatos.descripcion, FDFormatos.codigo');
  QryGeneral.Open;
  QryGeneral.first;

  LimpiaGrilla(SGPorRango, 10);
  PnlMensaje2.Visible  := True;
  Application.ProcessMessages;

  i := 1;
  while not QryGeneral.Eof do
    begin
      SGPorRango.Cells[1,i] := QryGeneral.Fields.FieldByName('Descripcion').AsString;
      SGPorRango.Cells[2,i] := FormatDateTime('DD/MM/YYYY HH:MM:SS',QryGeneral.Fields.FieldByName('Fecha').AsDateTime);
      SGPorRango.Cells[3,i] := QryGeneral.Fields.FieldByName('Codigo').AsString;
      QryGeneral.Next;
      inc(i);
    end;
  SGPorRango.RowCount  := i + 1;
  PnlMensaje2.Visible  := False;

  if SGPorRango.RowCount = 2 then Exit;
  if SGPorRango.Rows[SGPorRango.Row].Strings[1] = '' then Exit;

  imprime(SGPorRango,'T');
end;

procedure TFrmProcFormatos.btnClick(Sender: TObject);
var i : integer;
begin
  ADOQCUPS.Close;
  ADOQCUPS.SQL.Clear;
  ADOQCUPS.SQL.Add('SELECT *');
  ADOQCUPS.SQL.Add('FROM FDOpciones');
  ADOQCUPS.SQL.Add('WHERE Valor LIKE '''+'%'+EditPalabra2.Text+'%'+'''');
  ADOQCUPS.SQL.Add('and Codigo_Formato = '+chr(39)+Formato+chr(39)+' and ');
 //ADOQCUPS.SQL.Add('Codigo_Seccion = '+chr(39)+QryApoyo.FieldValues['Codigo_Seccion']+chr(39)+' and ');
  ADOQCUPS.SQL.Add('Codigo_Seccion = '+chr(39)+PageControl2.ActivePage.Hint+chr(39)+' and ');
  ADOQCUPS.SQL.Add('Codigo_Campo = '+chr(39)+midstr(SGDatos2.Cells[1,0],9,3)+chr(39)+' and ');
  ADOQCUPS.SQL.Add('Codigo_Subcampo = '+chr(39)+'000'+chr(39)+' ');
  ADOQCUPS.Open;

  LimpiaGrilla1(SGDatos2, 4);
  i := 1;
  while not ADOQCUPS.Eof do
    begin
      SGDatos2.Cells[1,i] := ADOQCUPS.Fields.FieldByName('Codigo_Campo').AsString;
      SGDatos2.Cells[2,i] := ADOQCUPS.Fields.FieldByName('Valor').AsString;
      ADOQCUPS.Next;
      inc(i);
    end;
  SGDatos2.RowCount  := i + 1;
end;

procedure TFrmProcFormatos.btnDiagClick(Sender: TObject);
var

frmDiagnostico : TfrmDiagnostico;
begin
  Screen.Cursor := crHourglass;

 if NumeroAdmision='' then
     begin
         MessageBox(0, 'Se requiere un paciente con admisión antes de diagnosticarle!.', 'Falta Admisión', MB_ICONWARNING or MB_OK);
        Screen.Cursor := crDefault;
     end
 else
  try
    frmDiagnostico:= TFrmDiagnostico.Create(self);
    frmDiagnostico.NumeroAdmision:= NumeroAdmision;
    frmDiagnostico.ProfesionalID:=datamodule1.ADOQuery1.FieldByName('ID').asinteger;
    frmDiagnostico.ShowModal;
  except
   Screen.Cursor := crDefault;
  end; //except
end;

procedure TFrmProcFormatos.JvBitBtn2Click(Sender: TObject);
var i : Integer;
begin
  LimpiaGrilla(SGTodas, 10);
  PnlMensaje3.Visible  := True;
  Application.ProcessMessages;


  QryGeneral.Close;
  QryGeneral.SQL.Clear;
  //Ojo se quito nuevamente el tema de ajuste de fechas de ame por solicitud del dr beltran
  //QryGeneral.SQL.Add('SELECT distinct convert(datetime,convert(varchar(10),FDInformacion.fecha, 103)) as fecha, FDFormatos.descripcion, FDFormatos.codigo');
  QryGeneral.SQL.Add('SELECT distinct convert(datetime,FDInformacion.fecha,103) as fecha, FDFormatos.descripcion, FDFormatos.codigo');
  QryGeneral.SQL.Add('FROM FDInformacion inner join FDFormatos on ' );
  QryGeneral.SQL.Add('     FDInformacion.Codigo_Formato = FDFormatos.Codigo inner join FDPersonasxFormato on ');
  QryGeneral.SQL.Add('     FDFormatos.Codigo = FDPersonasxFormato.Formato ');

  QryGeneral.SQL.Add('WHERE No_Historia = '+chr(39)+SGPacientes.Rows[SGPacientes.Row].Strings[1]+chr(39));

  QryGeneral.SQL.Add(' AND FDPersonasxFormato.Persona = '''+DataModule1.ADOQuery1.Fields.FieldByName('ID').AsString+'''');
  QryGeneral.SQL.Add('ORDER BY convert(datetime,FDInformacion.fecha,103) DESC, FDFormatos.descripcion, FDFormatos.codigo');
  QryGeneral.Open;

  i := 1;
  while not QryGeneral.Eof do
    begin
      SGTodas.Cells[1,i] := QryGeneral.Fields.FieldByName('Descripcion').AsString;
      SGTodas.Cells[2,i] := FormatDateTime('DD/MM/YYYY HH:MM:SS',QryGeneral.Fields.FieldByName('Fecha').AsDateTime);
      SGTodas.Cells[3,i] := QryGeneral.Fields.FieldByName('Codigo').AsString;
      QryGeneral.Next;
      inc(i);
    end;
  SGTodas.RowCount  := i + 1;
  PnlMensaje3.Visible  := False;
end;

Procedure TFrmProcFormatos.imprime(Grilla : TJvStringGrid;st : string);
var fmtAnt,SeccAnt,CamAnt,idAnt,texto:String;
    fecAnt:TDatetime;
Begin
  QryGeneral.Close;
  QryGeneral.SQL.Clear;
  QryGeneral.SQL.Add('SELECT * FROM FDInformacion WHERE');
  if (st <> 'T') then
  Begin
    QryGeneral.SQL.Add(' Codigo_Formato = '+chr(39)+Grilla.Rows[Grilla.Row].strings[3]+chr(39)+'AND');
  End;
  QryGeneral.SQL.Add('No_Historia = '+chr(39)+SGPacientes.Rows[SGPacientes.Row].Strings[1]+chr(39));
  QryGeneral.SQL.Add(' AND FORMAT(fecha,'+chr(39)+'dd/MM/yyyy HH:mm:ss'+chr(39)+', '+chr(39)+'en-US'+chr(39)+')  = '''+Grilla.Rows[Grilla.Row].strings[2]+'''');
  QryGeneral.SQL.Add(' ORDER BY Fecha,Usuario,Codigo_Seccion,Codigo_Campo ');
  QryGeneral.Open;

  IF QryGeneral.RecordCount <> 0 Then
  Begin
    RichEdit1.Paragraph.FirstIndent:=10;
    RichEdit1.Paragraph.LeftIndent:=0;
    RichEdit1.Paragraph.RightIndent:=100;

    CamAnt:='';
    SeccAnt:='';
    IdAnt:='';
    FecAnt:=0;
    FmtAnt:='';
    RichEdit1.Clear;

    QryGeneral.First;
    While NOT QryGeneral.Eof Do
    Begin
      RichEdit1.Paragraph.FirstIndent:=10;
      If (QryGeneral.FieldValues['Codigo_SubCampo'] = '000') or (QryGeneral.FieldValues['Codigo_Campo'] <> CamAnt) Then   RichEdit1.SelText:=chr(13)+chr(10);

      //Imprime el Nombre del Formato
      If FmtAnt <> QryGeneral.FieldValues['Codigo_Formato'] Then
      Begin
       { ADOQueryFmtSel.Close;
        ADOQueryFmtSel.Parameters.ParamValues['CDFmto']:= QryGeneral.FieldValues['Codigo_Formato'];
        ADOQueryFmtSel.Open;  }

        RichEdit1.Paragraph.Alignment :=paLeftJustify;
        RichEdit1.SelAttributes.Size := 14;
        RichEdit1.SelAttributes.Style := [fsBold];
     //   If ADOQueryFmtSel.FieldValues['Descripcion'] <> null Then RichEdit1.SelText:=ADOQueryFmtSel.FieldValues['Descripcion']+chr(13)+chr(10);
        RichEdit1.SelText:=Grilla.Rows[Grilla.Row].Strings[1]+chr(13)+chr(10);

        FmtAnt:=QryGeneral.FieldValues['Codigo_Formato'];
        CamAnt:='';
        SeccAnt:='';
        IdAnt:='';
        FecAnt:=0;
      End;

      //Imprime la Fecha
      If comparedatetime(FecAnt,QryGeneral.FieldValues['Fecha']) <> 0 Then
      Begin
        RichEdit1.SelAttributes.Size := 12;
        RichEdit1.SelText :='________________________________________________________________________'+chr(13)+chr(10);
        RichEdit1.SelAttributes.Style := [fsBold];
        RichEdit1.SelText:=Label7.Caption+' ';
        RichEdit1.SelText:=datetimetostr(QryGeneral.FieldValues['Fecha'])+chr(13)+chr(10);

        FecAnt := QryGeneral.FieldValues['Fecha'];
        CamAnt:='';
        SeccAnt:='';
        IdAnt:='';
      End;

      //Imprime el Medico
      If inttostr(QryGeneral.FieldValues['Usuario']) <> idAnt Then Begin
       { ADOQuery15.Close;
        ADOQuery15.Parameters.ParamValues['idm']:= QryGeneral.FieldValues['Usuario'];
        ADOQuery15.Open; }


        QryApoyo.Connection   := DataModule1.ADOComunes;

        QryApoyo.Close;
        QryApoyo.SQL.Clear;
        QryApoyo.SQL.Add('SELECT *');
        QryApoyo.SQL.Add('FROM SEPersonas');
        QryApoyo.SQL.Add('WHERE id = '''+QryGeneral.Fields.FieldByName('usuario').AsString+'''');
        QryApoyo.Open;

        RichEdit1.SelAttributes.Style := [fsBold];
        texto:= '';
        IF QryApoyo.FieldValues['Primer_Apellido']<> null then texto:=texto + QryApoyo.FieldValues['Primer_Apellido'] + ' ';
        IF QryApoyo.FieldValues['Segundo_Apellido'] <> null then texto:=texto + QryApoyo.FieldValues['Segundo_Apellido'] + ' ';
        IF QryApoyo.FieldValues['Nombres'] <> null then texto:=texto + QryApoyo.FieldValues['Nombres'];
        RichEdit1.SelText:='Profes.: '+texto +chr(13)+chr(10);

        IdAnt:=QryGeneral.FieldValues['Usuario'];
        CamAnt:='';
        SeccAnt:='';
      End;

      //Imprime la Seccion
      If QryGeneral.FieldValues['Codigo_Seccion'] <> SeccAnt Then Begin
        ADOQuery4.Close;
        ADOQuery4.Parameters.ParamValues['CDFmt']  := QryGeneral.FieldValues['Codigo_Formato'];
        ADOQuery4.Parameters.ParamValues['CDSecc'] := QryGeneral.FieldValues['Codigo_Seccion'];
        ADOQuery4.Open;
        RichEdit1.SelAttributes.Style := [fsBold];
        if ADOQuery4.FieldValues['Descripcion'] <> null then
           RichEdit1.SelText := chr(13)+chr(10)+'------'+ADOQuery4.FieldValues['Descripcion']+'-------'+chr(13)+chr(10);

        SeccAnt:=QryGeneral.FieldValues['Codigo_Seccion'];
        CamAnt:='';
      End;

      //Imprime el Campo
      If QryGeneral.FieldValues['Codigo_Campo'] <> CamAnt Then Begin
        ADOQuery9.Close;
        ADOQuery9.Parameters.ParamValues['CDFmt']  := QryGeneral.FieldValues['Codigo_Formato'];
        ADOQuery9.Parameters.ParamValues['CDSecc'] := QryGeneral.FieldValues['Codigo_Seccion'];
        ADOQuery9.Parameters.ParamValues['CDCamp'] := QryGeneral.FieldValues['Codigo_Campo'];
        ADOQuery9.Open;
        RichEdit1.SelAttributes.Style := [];
        if ADOQuery9.FieldValues['Descripcion'] <> null then
          RichEdit1.SelText := ADOQuery9.FieldValues['Descripcion']+ ':'+ chr(9);
        If QryGeneral.FieldValues['Codigo_SubCampo'] = '000' Then Begin
          RichEdit1.SelText:= trim(QryGeneral.FieldValues['Valor']);
        End;
//        RichEdit1.SelText:= chr(13)+chr(10);

        CamAnt:= QryGeneral.FieldValues['Codigo_Campo'];
      End;

      If QryGeneral.FieldValues['Codigo_SubCampo'] <> '000' Then Begin
        RichEdit1.SelAttributes.Style := [];
        IF QryGeneral.FieldValues['Descripcion_Campo'] <> null then
          RichEdit1.SelText :=QryGeneral.FieldValues['Descripcion_Campo'] + ':'
        ELSE RichEdit1.SelText := 'SUBCAMPO ELIMINADO:';
        RichEdit1.SelText:= trim(QryGeneral.FieldValues['Valor'])+ chr(9);
      End;

      QryGeneral.Next;
    End;

    RichEdit1.SelText :=chr(13)+chr(10)+'________________________________________________________________________'+chr(13)+chr(10);
  End;
End;

procedure TFrmProcFormatos.SGDelDiaClick(Sender: TObject);
begin
  if SGDelDia.RowCount = 2 then Exit;
  if SGDelDia.Rows[SGDelDia.Row].Strings[1] = '' then Exit;
  if Leftstr(SGDelDia.Rows[SGDelDia.Row].Strings[1],7) = 'Imagen:' Then
  Begin
    RichEdit1.Visible := False;
    DBImage1.Visible := True;

    ADOImagenes.Close;
    ADOImagenes.SQL.Clear;
    ADOImagenes.SQL.Add('SELECT *');
    ADOImagenes.SQL.Add(' FROM FDImagenes');
    ADOImagenes.SQL.Add(' WHERE No_Historia ='+chr(39)+JvEdit1.Text+chr(39)+' AND indice = '+SGDelDia.Rows[SGDelDia.Row].Strings[3]);
    ADOImagenes.Open;
  End
  Else Begin
    RichEdit1.Visible := True;
    DBImage1.Visible := False;
    imprime(SGDelDia,'');
  End;
end;

procedure TFrmProcFormatos.SGPorRangoClick(Sender: TObject);
begin
  if SGPorRango.RowCount = 2 then Exit;
  if SGPorRango.Rows[SGPorRango.Row].Strings[1] = '' then Exit;

  imprime(SGPorRango,'');
end;

procedure TFrmProcFormatos.SGTodasClick(Sender: TObject);
begin
  if SGTodas.RowCount = 2 then Exit;
  if SGTodas.Rows[SGTodas.Row].Strings[1] = '' then Exit;

  imprime(SGTodas,'');
end;

procedure TFrmProcFormatos.SGTodasKeyPress(Sender: TObject; var Key: Char);
begin
 if key = 'D' then
 Begin
   if MessageDlg('Usted pretende eliminar todo el registro de la Historia Clinica, Esta seguro?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
     if (InputBox('Clave de Seguridad', 'Clave', '') = 'BORRARfbgXftY50702345') then
     Begin
       QryGeneral.Close;
       QryGeneral.SQL.Clear;
       QryGeneral.SQL.Add('BACKUP DATABASE ['+chr(39)+Datamodule1.ADOConnection1.DefaultDatabase+chr(39)+']');
       QryGeneral.SQL.Add('TO  DISK = N'+chr(39)+'C:\BkGema'+chr(39));
       QryGeneral.SQL.Add('WITH NOFORMAT, INIT,  NAME = N'+chr(39)+'Comunes-Completa Base de datos Copia de seguridad'+chr(39)+', SKIP,');
       QryGeneral.SQL.Add('NOREWIND, NOUNLOAD,  STATS = 10');

       //OJO esta rutina elimina un registro en la historia clinica es muy delicado.
       QryGeneral.Close;
       QryGeneral.SQL.Clear;
       QryGeneral.SQL.Add('SELECT * FROM FDInformacion WHERE');
       QryGeneral.SQL.Add(' Codigo_Formato = '+chr(39)+SGTodas.Rows[SGTodas.Row].strings[3]+chr(39)+'AND');
       QryGeneral.SQL.Add(' No_Historia = '+chr(39)+SGPacientes.Rows[SGPacientes.Row].Strings[1]+chr(39));
       QryGeneral.SQL.Add(' AND fecha  = '''+SGTodas.Rows[SGTodas.Row].strings[2]+'''');
       QryGeneral.SQL.Add(' ORDER BY Fecha,Usuario,Codigo_Seccion,Codigo_Campo ');
       QryGeneral.Open;

       QryGeneral.First;
       while NOT QryGeneral.Eof do
       Begin
         QryGeneral.Delete;

         QryGeneral.First;
       End;
     end;
   end;
 End
 Else if key = 'C' then
 Begin
   if MessageDlg('Usted pretende Cambiar el registro de la Historia Clinica, Esta seguro?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
     if (InputBox('Clave de Seguridad', 'Clave', '') = 'MODIFICAXftY50702345') then
     Begin
        CapturaBasicaS := tCapturaBasicaS.create(application);
        CapturaBasicaS.Edit1.Text:= ('SELECT * FROM FDInformacion WHERE Codigo_Formato = '+chr(39)+SGTodas.Rows[SGTodas.Row].strings[3]+chr(39)+' AND ' +
                     ' No_Historia = '+chr(39)+SGPacientes.Rows[SGPacientes.Row].Strings[1]+chr(39) +
                     ' AND fecha  = '+chr(39)+SGTodas.Rows[SGTodas.Row].strings[2]+chr(39)+
                     ' ORDER BY Fecha,Usuario,Codigo_Seccion,Codigo_Campo ');
        try
          CapturaBasicaS.Show;
        except
          CapturaBasicaS.free;
        end;
     end;
   end;
 End;

end;

procedure TFrmProcFormatos.PageControl2Change(Sender: TObject);
begin
 { ADOQuery4.Close;
  ADOQuery4.Parameters.ParamValues['CDFmt'] :=Formato;
  ADOQuery4.Parameters.ParamValues['CDSecc']:=leftstr(PageControl2.ActivePage.Caption,3);
  ADOQuery4.Open;


  ADOQueryCampos.Close;
  ADOQueryCampos.Parameters.ParamValues['CDFmt'] :=ADOQuery4.FieldValues['Codigo_Formato'];
  ADOQueryCampos.Parameters.ParamValues['CDSecc']:=ADOQuery4.FieldValues['Codigo_Seccion'];
  ADOQueryCampos.Open;   }

  PActiv  := PageControl2.ActivePageIndex;
  PageControl2.Refresh;
end;

procedure TFrmProcFormatos.JvBitBtn3Click(Sender: TObject);
begin
  if RichEdit1.Text <> '' Then
  Begin
    //Cuadrar datos de impresión para que se genere igual a lo presentado en pantalla
    FImprimeFmto := tFImprimeFmto.create(application);
    try
      Datamodule1.MuestraconAcceso(FImprimeFmto);
      FImprimeFmto.Edit1.Text := JVEdit1.Text;
      if JVPageControl1.ActivePageIndex = 0 Then
      Begin
        FImprimeFmto.CheckBox1.Checked := False;
        FImprimeFmto.DBLookupComboBox1.KeyValue := SGTodas.Rows[SGTodas.Row].Strings[3];
        FImprimeFmto.DateTimePicker1.DateTime := strtodatetime(SGTodas.Rows[SGTodas.Row].Strings[2]);
        FImprimeFmto.DateTimePicker2.DateTime := strtodatetime(SGTodas.Rows[SGTodas.Row].Strings[2]);
        FImprimeFmto.Button1.SetFocus;
      End
      Else if JVPageControl1.ActivePageIndex = 1 Then
      Begin
        FImprimeFmto.CheckBox1.Checked := False;
        FImprimeFmto.DBLookupComboBox1.KeyValue := SGDelDia.Rows[SGDelDia.Row].Strings[3];
        FImprimeFmto.DateTimePicker1.DateTime := strtodatetime(SGDelDia.Rows[SGDelDia.Row].Strings[2]);
        FImprimeFmto.DateTimePicker2.DateTime := strtodatetime(SGDelDia.Rows[SGDelDia.Row].Strings[2]);
        FImprimeFmto.Button1.SetFocus;
      End
      Else if JVPageControl1.ActivePageIndex = 2 Then
      Begin
        FImprimeFmto.CheckBox1.Checked := False;
        FImprimeFmto.DBLookupComboBox1.KeyValue := SGPorRango.Rows[SGPorRango.Row].Strings[3];
        FImprimeFmto.DateTimePicker1.DateTime := strtodatetime(SGPorRango.Rows[SGPorRango.Row].Strings[2]);
        FImprimeFmto.DateTimePicker2.DateTime := strtodatetime(SGPorRango.Rows[SGPorRango.Row].Strings[2]);
        FImprimeFmto.Button1.SetFocus;
      End
    except
      FImprimeFmto.free;
    end;
  End
  Else Showmessage('No hay datos.');
end;

procedure TFrmProcFormatos.TabSheet2Show(Sender: TObject);
begin
  EditNumeroCedula.SetFocus;
end;

procedure TFrmProcFormatos.TabSheet4Show(Sender: TObject);
begin
  if EditNombreP.Text = '' then
    begin
      Application.MessageBox('Debe seleccionar un paciente','Información',MB_OK+MB_ICONINFORMATION);
      PCOpciones.ActivePageIndex  := 0;
      Exit;
    end;
end;

procedure TFrmProcFormatos.TabSheet5Show(Sender: TObject);
begin
  LimpiaGrilla(SGDelDia, 10);
  LimpiaGrilla(SGTodas, 10);
  LimpiaGrilla(SGPorRango, 10);
  RichEdit1.Clear;

  if EditNombreP.Text = '' then
    begin
      Application.MessageBox('Debe seleccionar un paciente','Información',MB_OK+MB_ICONINFORMATION);
      JvBitBtn4Click(self);
      Exit;
    end;
end;

procedure TFrmProcFormatos.AdquiereImagen(Sender: TObject);
var
  SelectedSource: Integer;
begin
{
  if LoadLibrary() then
  begin
    SourceManagerLoaded() := TRUE;
    SelectedSource := Twain.SelectSource;
    if SelectedSource <> -1 then
    begin
      Twain.Source[SelectedSource].Loaded := TRUE;
      Twain.Source[SelectedSource].TransferMode := ttmMemory;
      Twain.Source[SelectedSource].Enabled := TRUE;
    end

  end
  else
  showmessage('Twain is not installed.');}
end;

procedure TFrmProcFormatos.JvBitBtn4Click(Sender: TObject);
begin
  PCOpciones.ActivePageIndex  := 0;
  CargarPacientes;
end;

procedure TFrmProcFormatos.JvBitBtn5Click(Sender: TObject);
begin
  JvBitBtn5.Caption := 'Cargando Formatos...';

  ADOQueryFormatos.Close;
  ADOQueryFormatos.SQL.Clear;
  ADOQueryFormatos.SQL.Add('SELECT * ');
  ADOQueryFormatos.SQL.Add('FROM FDFormatos,FDPersonasxFormato');
  ADOQueryFormatos.SQL.Add('WHERE FDFormatos.Codigo = FDPersonasxFormato.Formato AND');
  ADOQueryFormatos.SQL.Add('      FDPersonasxFormato.Persona = '''+DataModule1.ADOQuery1.Fields.FieldByName('id').AsString+'''');
  ADOQueryFormatos.SQL.Add('      AND (FDFormatos.Sexo = ' +chr(39)+ EditSexo.Text +chr(39)+ ' OR FDFormatos.Sexo = '+chr(39)+chr(39)+')');
  ADOQueryFormatos.SQL.Add('      AND FDFormatos.EdadINI <= dbo.UDF_CalculaEdadNumero(' +chr(39)+ SGPacientes.Cells[3,SGPacientes.Row] +chr(39) +',1) ');
  ADOQueryFormatos.SQL.Add('      AND FDFormatos.EdadFIN >= dbo.UDF_CalculaEdadNumero(' +chr(39)+ SGPacientes.Cells[3,SGPacientes.Row] +chr(39) +',1) ');
  ADOQueryFormatos.SQL.Add('ORDER BY Codigo');
  ADOQueryFormatos.Open;
  JvBitBtn5.Caption := 'Historia Clinica';

  BtnIngresar.Visible := True;
  Button1.Visible := False;
  PCOpciones.ActivePageIndex  := 1;
end;

procedure TFrmProcFormatos.JvBitBtn6Click(Sender: TObject);
begin
    PCOpciones.ActivePageIndex  := 2;
    JvBitBtn2Click(Nil);
end;

procedure TFrmProcFormatos.JvBitBtn7Click(Sender: TObject);
begin
  ADOGrProg.Close;
  ADOGrProg.SQL.Clear;
  ADOGrProg.SQL.Add('SELECT *');
  ADOGrProg.SQL.Add(' FROM FDGRProg');
  ADOGrProg.SQL.Add(' WHERE Cond_Sexo = '+chr(39)+EditSexo.Text+chr(39));
  ADOGrProg.SQL.Add('  AND dbo.UDF_CalculaEdadNumeroRef('+chr(39)+SGPacientes.Rows[SGPacientes.Row].Strings[3]+chr(39)+',Getdate(),1) >= Cond_EdadIni');
  ADOGrProg.SQL.Add('  AND dbo.UDF_CalculaEdadNumeroRef('+chr(39)+SGPacientes.Rows[SGPacientes.Row].Strings[3]+chr(39)+',Getdate(),1) < Cond_EdadFin');
  ADOGrProg.Open;

  DBLookupComboBox1.KeyValue := ADOGrProg.FieldValues['Nombre'];
  PCOpciones.ActivePageIndex  := 4;
end;

procedure TFrmProcFormatos.JvBitBtn8Click(Sender: TObject);
begin
  FVHuella := tFVHuella.create(application);
  try
    FVHuella.ShowModal;
    EditNumeroCedula.Text := FVHuella.Edit1.Text;
    BtnBuscarCClick(Nil);
  except
    FVHuella.free;
  end;
end;

procedure TFrmProcFormatos.TabSheet17Show(Sender: TObject);
var i, j : Integer;
begin
  if EditNombreP.Text = '' then
  begin
    Application.MessageBox('Debe seleccionar un paciente','Información',MB_OK+MB_ICONINFORMATION);
    JvBitBtn4Click(self);
    Exit;
  end;

  seccion   := '';
  i := 0;
  while i < PageControl2.PageCount do
    begin
      Seccion  :=  Seccion + ''''+leftstr(PageControl2.Pages[i].Caption,3) +''''+ ',';
      inc(i);
    end;
  Delete(Seccion, 1,1);
  Delete(Seccion, Length(Seccion)-1,2);
 // seccion   := leftstr(PageControl2.ActivePage.Caption,3);

  //Limpia Vector
  if  Length(Vector) > 0 then
  begin
    i := 0;
    while i < Length(Vector) do
      begin
        Vector[i,0] := '';
        Vector[i,1] := '';
        Vector[i,2] := '';
        inc(i);
      end;
  end;

  //Inicializa el ListBox con Formatos
  QryGeneral.Close;
  QryGeneral.SQL.Clear;
  QryGeneral.SQL.Add('SELECT Codigo,Descripcion');
  QryGeneral.SQL.Add('FROM FDFormatos ');
  QryGeneral.Open;
  i := 0;
  lbx.Clear;
  while not QryGeneral.Eof do
  begin
    lbx.Items.Add(QryGeneral.Fields.FieldByName('Codigo').AsString+'-'+QryGeneral.Fields.FieldByName('Descripcion').AsString);

    QryGeneral.Next;
    inc(i);
  end;
end;

procedure TFrmProcFormatos.TabSheet20Show(Sender: TObject);
begin
  EditPrimerApellido.SetFocus;
end;

procedure TFrmProcFormatos.TabSheet21Show(Sender: TObject);
begin
  EditPrimerApe.SetFocus;
end;

procedure TFrmProcFormatos.Timer1Timer(Sender: TObject);
begin
  If LblAdvertencia.Font.Color = clWhite then
    begin
      LblAdvertencia.Font.Color  := clRed;
      LblC.Visible               := True;
      //Flecha.Visible             := True;
    end
  else
    begin
      LblAdvertencia.Font.Color  := clWhite;
      LblC.Visible               := False;
      //Flecha.Visible             := False;
    end;
end;

procedure TFrmProcFormatos.Timer2Timer(Sender: TObject);
begin
  Statusbar1.SimpleText:=DateTimeToStr(Now);
end;

procedure TFrmProcFormatos.LblAdvertenciaClick(Sender: TObject);
begin
  if sW  = False then Exit;
  if PnlAdvertencia.Height = 0 then
    PnlAdvertencia.Height  := 217
  else
    PnlAdvertencia.Height  := 0;
end;

procedure TFrmProcFormatos.lbxClick(Sender: TObject);
Var i,j:Integer;
Begin
  QryGeneral.SQL.Clear;
  QryGeneral.SQL.Add('SELECT Codigo_Seccion+'+chr(39)+'-'+chr(39)+'+Descripcion AS Des');
  QryGeneral.SQL.Add('FROM FDSecciones');
  QryGeneral.SQL.Add('WHERE Codigo_Formato = '''+leftstr(lbx.Items.Strings[lbx.ItemIndex],pos('-',lbx.Items.Strings[lbx.ItemIndex])-1)+'''');
  QryGeneral.Open;
  QryGeneral.First;
  Combobox1.Text := QryGeneral.FieldValues['Des'];
  ComboBox1.Items.Clear;
  While NOT QryGeneral.Eof DO
  Begin
    ComboBox1.Items.Add(QryGeneral.FieldValues['Des']);

    QryGeneral.Next;
  End;

  // Carga los campos por cada Formato
  try
    ADOQPivot.Close;
    ADOQPivot.Parameters.ParamValues['codfmt']  := leftstr(lbx.Items.Strings[lbx.ItemIndex],pos('-',lbx.Items.Strings[lbx.ItemIndex])-1);
    ADOQPivot.Parameters.ParamValues['codSecc'] := leftstr(Combobox1.Text,pos('-',Combobox1.Text)-1);
    ADOQPivot.Parameters.ParamValues['codfmt1']  := leftstr(lbx.Items.Strings[lbx.ItemIndex],pos('-',lbx.Items.Strings[lbx.ItemIndex])-1);
    ADOQPivot.Parameters.ParamValues['codSecc1'] := leftstr(Combobox1.Text,pos('-',Combobox1.Text)-1);
    ADOQPivot.Parameters.ParamValues['fec1']    := datetostr(datetimepicker1.DateTime);
    ADOQPivot.Parameters.ParamValues['fec2']    := datetostr(datetimepicker2.DateTime);
    ADOQPivot.Parameters.ParamValues['cch1']     := SGPacientes.Rows[SGPacientes.Row].Strings[1];
    ADOQPivot.Parameters.ParamValues['cch2']     := SGPacientes.Rows[SGPacientes.Row].Strings[1];
    ADOQPivot.Open;

    grd.ColCount:=ADOQPivot.FieldCount;
    grd.RowCount:=ADOQPivot.RecordCount;
    for j := 1 to ADOQPivot.FieldCount do
    Begin
      grd.Cells[j-1,0] := ADOQPivot.Fields.FieldByNumber(j).FullName;
    End;

    ADOQPivot.First;
    for I := 1 to ADOQPivot.RecordCount do
    Begin
      for j := 1 to ADOQPivot.FieldCount do
      Begin
        grd.Cells[j-1,i] := ADOQPivot.Fields.FieldByNumber(j).AsString;
      End;
      ADOQPivot.Next;
    End;
  except
    Showmessage('No hay datos para mostrar en esta sección');
  end;
end;

procedure TFrmProcFormatos.Edit1Exit(Sender: TObject);
begin
 lbxClick(sender);
end;

procedure TFrmProcFormatos.EditNumeroCedulaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    BtnBuscarCClick(Self);
end;

procedure TFrmProcFormatos.EditPrimerApellidoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    BtnBuscarApeClick(Self);
end;

procedure TFrmProcFormatos.EditSegundoApellidoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    BtnBuscarApeClick(Self);
end;

procedure TFrmProcFormatos.EditPrimerApeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    BtnBuscarNomClick(Self);
end;

procedure TFrmProcFormatos.EditSegundoApeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    BtnBuscarNomClick(Self);
end;

procedure TFrmProcFormatos.EditPrimerNomKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    BtnBuscarNomClick(Self);
end;

procedure TFrmProcFormatos.EditSegundoNomKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    BtnBuscarNomClick(Self);
end;

procedure TFrmProcFormatos.LimpiaEdit;
begin
  EditNumeroCedula.Text      := '';
  EditPrimerApellido.Text    := '';
  EditSegundoApellido.Text   := '';
  EditPrimerApe.Text         := '';
  EditSegundoApe.Text        := '';
  EditPrimerNom.Text         := '';
  EditSegundoNom.Text        := '';
end;

procedure TFrmProcFormatos.BtnBuscarClick(Sender: TObject);
var i : integer;
begin
  QryGeneralDiag.Close;
  QryGeneralDiag.SQL.Clear;
  QryGeneralDiag.SQL.Add('Select top(30)*');
  QryGeneralDiag.SQL.Add('from GEDiagnosticos');
  QryGeneralDiag.SQL.Add('where NOM_DIAGNSOTICO LIKE '''+'%'+EditPalabra.Text+'%'+'''');
  QryGeneralDiag.SQL.Add('and Estado = ''A''');
  QryGeneralDiag.SQL.Add('order by NOM_DIAGNSOTICO');
  QryGeneralDiag.Open;

  LimpiaGrilla1(SGDatos, 4);
  i := 1;
  while not QryGeneralDiag.Eof do
    begin
      SGDatos.Cells[1,i] := QryGeneralDiag.Fields.FieldByName('Cod_diagnostico').AsString;
      SGDatos.Cells[2,i] := QryGeneralDiag.Fields.FieldByName('NOM_DIAGNSOTICO').AsString;
      QryGeneralDiag.Next;
      inc(i);
    end;
  SGDatos.RowCount  := i + 1;
end;

procedure TFrmProcFormatos.AmpliaPanel(Sender: TObject);
begin
  BtnIngresar.Visible := True;
  Button1.Visible := False;
  JvRollout7.Collapsed := True;
  Panel11.Width := 1;

  SGDatos.Cells[1,0] := 'Código ';
  SGDatos.Cells[2,0] := 'Descripción';

  LimpiaGrilla1(SGDatos, 5);
  {PnlBusca.Top   := (Sender As TBitBtn).Top + 180;
  PnlBusca.Left  := (Sender As TBitBtn).Left - PnlBusca.Width;}
  PnlBusca.Top   := 10;
  PnlBusca.Left  := 10;

  Obj            := (Sender As TBitBtn).Hint;
  if PnlBusca.Height = 0 then
    begin
      LimpiaGrilla1(SGDatos, 3);
      PnlBusca.Height   := 200;
      EditPalabra.Text     := '';
      EditPalabra.SetFocus;
    end
  else
    PnlBusca.Height  := 0;
end;

procedure TFrmProcFormatos.AmpliaPanelBT(Sender: TObject);
begin
  SGDatos2.ColWidths[1] := 65;
  SGDatos2.ColWidths[2] := 170;
  SGDatos2.ColWidths[3] := 65;

  SGDatos2.Cells[0,0] := (Sender As TImage).Name;
  SGDatos2.Cells[1,0] := 'Código: ' + (Sender As TImage).Hint;
  SGDatos2.Cells[2,0] := 'Descripción';
  SGDatos2.Cells[3,0] := 'Valor';

  LimpiaGrilla1(SGDatos2, 5);
  PnlBusca2.Top   := PageControl2.top + (Sender As TImage).Top + 60;
  if (Sender As TImage).Left + PnlBusca2.Width > PageControl2.Width then
    PnlBusca2.Left  := PageControl2.Width - PnlBusca2.Width - 10
  Else
    PnlBusca2.Left  := (Sender As TImage).Left+60;

  Obj            := (Sender As TImage).Hint;
  if PnlBusca2.Height = 0 then
    begin
      LimpiaGrilla1(SGDatos2, 3);
      PnlBusca2.Height   := 200;
      EditPalabra2.Text     := '';
      EditPalabra2.SetFocus;
    end
  else
    PnlBusca2.Height  := 0;

  //Trae los CUPS por el momento odontologicos
   EditPalabra2.Text     := '%';
   btnClick(sender);
end;

procedure TFrmProcFormatos.AmpliaPanelBT3(Sender: TObject);
var adm:string;
begin
//  adm:=BDBuscar('SELECT * FROM SAAdmisiones WHERE No_Admision= '''+NumeroAdmision+''''); //NR_Ident_Usuar = '+chr(39)+SGPacientes.Cells[14,SGPacientes.Row]+chr(39)+' AND (EST_ADMINSION = '+chr(39)+'A'+chr(39)+' OR EST_ADMINSION = '+chr(39)+'C'+chr(39)+')','No_Admision','No_Admision');
 // if adm <> 'ERROR: No hay registros para esta selección' then
 if NumeroAdmision <>'' then

  Begin
    //Showmessage('Se ingresaran los egresos a la Admision No: '+ adm);
    FSolicitaCargo := TFSolicitaCargo.create(application);
    try
      FSolicitaCargo.ADOQuery1.Close;
      FSolicitaCargo.ADOQuery1.Parameters[0].Value := NumeroAdmision;
      FSolicitaCargo.ADOQuery1.Open;
      FSolicitaCargo.DBLookupComboBox1.KeyValue := NumeroAdmision;//FSolicitaCargo.ADOQuery1.FieldValues['No_Admision'];
      FSolicitaCargo.Panel2.Enabled := False;
      FSolicitaCargo.ComboBox1.Text := (Sender as TBitBtn).Hint;
      FSolicitaCargo.ComboBox1.Enabled := False;
      FSolicitaCargo.ComboBox1Change(Nil);
      FSolicitaCargo.ComboBox1Exit(Nil);
      Datamodule1.MuestraconAcceso(FSolicitaCargo);
    except
      FSolicitaCargo.free;
    end;
  End
  Else Showmessage('ERROR: No existen admisiones activas para poder realizar los registros de Salida.');
end;

procedure TFrmProcFormatos.AmpliaPanelBT2(Sender: TObject);
var adm:string;
begin
//  adm:=BDBuscar('SELECT * FROM SAAdmisiones WHERE No_Admision= '''+NumeroAdmision+''''); //NR_Ident_Usuar = '+chr(39)+SGPacientes.Cells[14,SGPacientes.Row]+chr(39)+' AND (EST_ADMINSION = '+chr(39)+'A'+chr(39)+' OR EST_ADMINSION = '+chr(39)+'C'+chr(39)+')','No_Admision','No_Admision');
//  if adm <> 'ERROR: No hay registros para esta selección' then
if NumeroAdmision <>'' then

  Begin
    //Showmessage('Se ingresaran los egresos a la Admision No: '+ adm);
    FSolicitaCargo := TFSolicitaCargo.create(application);
    try
      FSolicitaCargo.ADOQuery1.Close;
      FSolicitaCargo.ADOQuery1.Parameters[0].Value := NumeroAdmision;
      FSolicitaCargo.ADOQuery1.Open;
      FSolicitaCargo.DBLookupComboBox1.KeyValue := NumeroAdmision; //FSolicitaCargo.ADOQuery1.FieldValues['No_Admision'];
      FSolicitaCargo.Panel2.Enabled := False;
      FSolicitaCargo.ComboBox1.Text := (Sender as TBitBtn).Hint;
      FSolicitaCargo.ComboBox1.Enabled := False;
      FSolicitaCargo.ComboBox1Change(Nil);
      FSolicitaCargo.ComboBox1Exit(Nil);
      Datamodule1.MuestraconAcceso(FSolicitaCargo);
    except
      FSolicitaCargo.free;
    end;
  End
  Else Showmessage('ERROR: No existen admisiones activas para poder realizar los registros de Salida.');
end;

procedure TFrmProcFormatos.SGDatos2DblClick(Sender: TObject);
var i : Integer;
    img : TImage;
    SrcRect,SrcRect2 : TRect;
    sValor, sValorAnterior: string;
begin
   i := 0;

   while i <  PageControl2.Pages[PActiv].Components[0].Components[0].ComponentCount do
     begin
       if PageControl2.Pages[PActiv].Components[0].Components[0].Components[i] is TImage then
         begin
           if TImage(PageControl2.Pages[PActiv].Components[0].Components[0].Components[i]).Name = SGDatos2.Cells[0,0] then
             Begin
               //Graba las selecciones sobre el Timage para que al grabar el formato este quede en el campo valor de FD Informacion
              //La cadena debe permitir validar escogencias sobre la misma imagen por cuanto el formato es el siguiente:
              //Seleccion[x]|y|,seleccion2[x]|y|,........
              sValor:= SGDatos2.Rows[SGDatos2.Row].Strings[2]+'[x'+inttostr(x1)+'x][y'+inttostr(y1)+'y]';
              sValorAnterior:=  TImage(PageControl2.Pages[PActiv].Components[0].Components[0].Components[i]).HelpKeyword;
              if sValorAnterior <>'' then
                sValor:=sValorAnterior+','+sValor;
              TImage(PageControl2.Pages[PActiv].Components[0].Components[0].Components[i]).HelpKeyword  :=sValor;
             //Repinta la figura original
             {if fileexists(ExtractFilePath(paramstr(0))+'Imagenes\'+ADOQueryFormatos.FieldValues['Descripcion']+'\'+RightToken(TImage(PageControl2.Pages[PActiv].Components[0].Components[0].Components[i]).Hint,'-')+'.bmp') then
                TImage(PageControl2.Pages[PActiv].Components[0].Components[0].Components[i]).Picture.LoadFromFile(ExtractFilePath(paramstr(0))+'Imagenes\'+ADOQueryFormatos.FieldValues['Descripcion']+'\'+RightToken(TImage(PageControl2.Pages[PActiv].Components[0].Components[0].Components[i]).Hint,'-')+'.bmp');}

             if fileexists(ExtractFilePath(paramstr(0))+'Imagenes\'+ADOQueryFormatos.FieldValues['Descripcion']+'\'+SGDatos2.Rows[SGDatos2.Row].Strings[2]+'.bmp') then
             Begin
                Timage(PageControl2.Pages[PActiv].Components[0].Components[0].Components[i]).Canvas.CopyMode := cmSrcCopy;

                img := Timage.Create(Application);
                img.Stretch := False;
                img.AutoSize := true;
                img.Transparent := true;
                img.Picture.LoadFromFile(ExtractFilePath(paramstr(0))+'Imagenes\'+ADOQueryFormatos.FieldValues['Descripcion']+'\'+SGDatos2.Rows[SGDatos2.Row].Strings[2]+'.bmp');
                SrcRect := Rect(0, 0, Img.Width, Img.Height);
                SrcRect2 := Rect(x1-trunc(Img.Width/2), y1-trunc(Img.Height/2), Img.Width+(x1-trunc(Img.Width/2)), Img.Height+(y1-trunc(Img.Height/2)));
                Timage(PageControl2.Pages[PActiv].Components[0].Components[0].Components[i]).Canvas.CopyRect(SrcRect2, img.Canvas, SrcRect);
             End;
           End;
         end;
       inc(i);
     end;
  PnlBusca2.Height  := 0;
end;

procedure TFrmProcFormatos.Mousexx(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  x1:=x;
  y1:=y;
end;

procedure TFrmProcFormatos.SGDatosDblClick(Sender: TObject);
var i : Integer;
begin
   i := 0;
   while i <  PageControl2.Pages[PActiv].Components[0].Components[0].ComponentCount do
     begin
       if PageControl2.Pages[PActiv].Components[0].Components[0].Components[i] is TJvEdit then
         begin
           if TJvEdit(PageControl2.Pages[PActiv].Components[0].Components[0].Components[i]).Name = Obj + '1' then
             TJvEdit(PageControl2.Pages[PActiv].Components[0].Components[0].Components[i]).Text  := SGDatos.Rows[SGDatos.Row].Strings[1];

           if (PageControl2.Pages[PActiv].Components[0].Components[0].Components[i]).Name = Obj + '2' then
             TJvEdit(PageControl2.Pages[PActiv].Components[0].Components[0].Components[i]).Text  := SGDatos.Rows[SGDatos.Row].Strings[2]+' - '+ SGDatos.Rows[SGDatos.Row].Strings[1];
         end;
       inc(i);
     end;
  PnlBusca.Height  := 0;
end;

procedure TFrmProcFormatos.EditPalabraKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    BtnBuscarClick(Self);
end;

procedure TFrmProcFormatos.LimpiaGrilla1(Grilla : TStringGrid; Col : Integer);
var i, e : Integer;
begin
  i := 1;
  while i < Grilla.RowCount do
    begin
      e := 0;
      while e < Col do
        begin
          Grilla.Cells[e,i] := '';
          inc(e);
        end;
      inc(i);
    end;
  Grilla.RowCount  := 2;
end;

procedure TFrmProcFormatos.BusDiag(Sender: TObject);
var i : Integer;
begin
  if (Sender As TJvEdit).Text <> '' then
    begin
      QryGeneralDiag.Close;
      QryGeneralDiag.SQL.Clear;
      QryGeneralDiag.SQL.Add('Select *');
      QryGeneralDiag.SQL.Add('from GEDiagnosticos');
      QryGeneralDiag.SQL.Add(' where Cod_DIAGNOsTICO = '''+(Sender As TJvEdit).Text+'''');
      QryGeneralDiag.SQL.Add(' and Estado = ''A''');
      QryGeneralDiag.SQL.Add(' order by NOM_DIAGNSOTICO');
      QryGeneralDiag.Open;

      if not QryGeneralDiag.Eof then
        begin
          i := 0;
          while i <  PageControl2.Pages[PActiv].Components[0].Components[0].ComponentCount do
            begin
              if PageControl2.Pages[PActiv].Components[0].Components[0].Components[i] is TJvEdit then
                begin
                  if (PageControl2.Pages[PActiv].Components[0].Components[0].Components[i]).Name = COPY((Sender As TJvEdit).Name,1,length((Sender As TJvEdit).Name)-1)  + '2' then
                    TJvEdit(PageControl2.Pages[PActiv].Components[0].Components[0].Components[i]).Text  := QryGeneralDiag.Fields.FieldByName('NOM_DIAGNSOTICO').AsString + ' - ' + QryGeneralDiag.Fields.FieldByName('COD_DIAGNOSTICO').AsString;
                end;
              inc(i);
            end;
        end
      else
        begin
          Application.MessageBox('El Código solicitado no fue encontrado','Información',MB_OK+MB_ICONINFORMATION);
          (Sender As TJvEdit).Text  := '';
          (Sender As TJvEdit).SetFocus;
        end;
    end;
end;

procedure TFrmProcFormatos.SGPacientesDblClick(Sender: TObject);
begin
  JvBitBtn5Click(Self);

  //Alertas
   VerificaAlerta(SGPacientes.Cells[13,SGPacientes.Row],SGPacientes.Cells[14,SGPacientes.Row]);
end;

procedure TFrmProcFormatos.BtnIngresarEnter(Sender: TObject);
begin
  DateHC.DateTime  := now;
end;

procedure TFrmProcFormatos.btnRes4505Click(Sender: TObject);
var

frm4505 : Tfrm4505;
begin
  Screen.Cursor := crHourglass;
  try
    frm4505:= Tfrm4505.Create(self);
    frm4505.Show;

  finally
   Screen.Cursor := crDefault;
  end; //except
end;

procedure TFrmProcFormatos.keyall(Sender: TObject; var Key: Char);
begin
  Swm.StateOn := True;
end;

procedure TFrmProcFormatos.keyNumber(Sender: TObject; var Key: Char);
Var prb:Extended;
begin
  if (( (key >= char(14)) and (key < '0')) or (key > '9')) and (key <> '.') then
    key := char(0)
  else if (key = '.') and (pos('.',(sender AS TEdit).Text) <> 0) then
    key := char(0)
  else
  begin
    if not (key <= char(14)) then
    begin
      if trystrtofloat((sender AS TEdit).Text+key,prb) = FALSE then
      begin
        showmessage('Error en el valor digitado');
        (sender AS TEdit).Text:='';
      end;
    end;
  end;
  Swm.StateOn := True;
end;

procedure TFrmProcFormatos.onChangeCod(Sender: TObject);
var i : Integer;
begin
  i := 0;
  while i <  PageControl2.Pages[PActiv].Components[0].Components[0].ComponentCount do
    begin
      if PageControl2.Pages[PActiv].Components[0].Components[0].Components[i] is TDBLookupComboBox then
        begin
          if (PageControl2.Pages[PActiv].Components[0].Components[0].Components[i]).Name = COPY((Sender As TDBLookupComboBox).Name,1,length((Sender As TDBLookupComboBox).Name)-1)  + '2' then
            begin
              TDBLookupComboBox(PageControl2.Pages[PActiv].Components[0].Components[0].Components[i]).KeyValue  := (Sender As TDBLookupComboBox).KeyValue;   //QryGeneralDiag.Fields.FieldByName('NOM_DIAGNSOTICO').AsString;
              ServCan :=  (Sender As TDBLookupComboBox).Text + '  -  '+ TDBLookupComboBox(PageControl2.Pages[PActiv].Components[0].Components[0].Components[i]).Text;
            end;
        end;
      inc(i);
    end;
end;

procedure TFrmProcFormatos.onChangeDes(Sender: TObject);
var i : Integer;
begin
  i := 0;
  while i <  PageControl2.Pages[PActiv].Components[0].Components[0].ComponentCount do
    begin
      if PageControl2.Pages[PActiv].Components[0].Components[0].Components[i] is TDBLookupComboBox then
        begin
          if (PageControl2.Pages[PActiv].Components[0].Components[0].Components[i]).Name = COPY((Sender As TDBLookupComboBox).Name,1,length((Sender As TDBLookupComboBox).Name)-1)  + '1' then
            begin
              TDBLookupComboBox(PageControl2.Pages[PActiv].Components[0].Components[0].Components[i]).KeyValue  := (Sender As TDBLookupComboBox).KeyValue;   //QryGeneralDiag.Fields.FieldByName('NOM_DIAGNSOTICO').AsString;
              ServCan := TDBLookupComboBox(PageControl2.Pages[PActiv].Components[0].Components[0].Components[i]).Text  + '  -  '+  (Sender As TDBLookupComboBox).Text;
            end;
        end;
      inc(i);
    end;
end;

procedure TFrmProcFormatos.onKeyPressTex(Sender: TObject;
  var Key: Char);
begin
  case key of
     #1,#2,#3,#4,#5,#6,#7,#11,#12,#14,#15,#17,#18,#19,#20,#21,#22,#23,#24,#25,#26,#27,#32,#33,#34,#35 : key := #0;
     #36,#37,#38,#39,#40,#41,#42,#43,#44,#45,#46,#47,#58,#59,#60,#61,#62,#63,#64: key := #0;
     #65,#66,#67,#68,#69,#70,#71,#72,#73,#74,#75,#76,#77,#78,#79,#80,#81,#82,#83,#84,#85,#86,#87,#88,#89,#90 : key := #0;
     #91,#92,#93,#94,#95,#96,#97,#98,#99,#100,#101,#102,#103,#104,#105,#106,#107,#108,#109,#110,#111,#112,#113,#114,#115,#116 : key := #0;
     #117,#118,#119,#120,#121,#122,#123,#124,#125,#126,#127,#128,#129,#130,#131,#132,#133,#134,#135,#136,#137,#138,#139,#140,#141,#142 : key := #0;
     'ñ','Ñ','¿','´','°','¨','¡','ç' : key := #0;
   end;
end;

procedure TFrmProcFormatos.onChangeCan(Sender: TObject);
begin
  if (Sender As TJvEdit).Text = '' then
    (Sender as TJvEdit).Text := '1';

  if (Sender As TJvEdit).Text <> '' then
    ServCan  := ServCan + '      '+ (Sender as TJvEdit).Text;
end;

procedure TFrmProcFormatos.JvBitBtn9Click(Sender: TObject);
begin
  frmingresopacientes := tfrmingresopacientes.create(application);
  try
    Datamodule1.MuestraconAcceso(frmingresopacientes);
  except
    frmingresopacientes.free;
  end;
  close;
end;

procedure TFrmProcFormatos.SpeedButton1Click(Sender: TObject);
Var i:Integer;
    TabSheetnuevo     : TTabSheet;
    FrameNuevo        : TFrame;
    PanelNuevo        : TPanel;
    Fondo             : TJvGradient;
    Panel             : TPanel;
begin
  BtnIngresar.Visible := False;
  Button1.Visible := True;

  For i:=0 To PageControl2.PageCount-1 Do
  Begin
    PageControl2.Pages[0].Destroy;
  End;

  WindowState := wsMaximized;

  TabSheetNuevo           := TTabSheet.Create(PageControl2);
  TabSheetNuevo.PageControl := PageControl2;

  Panelnuevo              := TPanel.Create(TabSheetNuevo);
  Panelnuevo.Parent       := TabSheetNuevo;
  Panelnuevo.BevelInner   := bvLowered;
  Panelnuevo.BevelOuter   := BvRaised;
  Panelnuevo.Align        := alClient;

  Framenuevo              := TFrame.Create(Panelnuevo);
  Framenuevo.Parent       := Panelnuevo;
  Framenuevo.Align        := alClient;
  FrameNuevo.AutoScroll   := True;

  ImageHolder             := TImage.Create(Framenuevo);
  ImageHolder.Parent      := Framenuevo;
  ImageHolder.Left        := 0;
  ImageHolder.Top         := 0;
  ImageHolder.Width        := 700;
  ImageHolder.Height       := 900;

  FrmPaint := tFrmPaint.create(application);
  try
    FrmPaint.ShowModal;

    ImageHolder.Picture.Bitmap.Assign(FrmPaint.ImageHolder.Picture.Bitmap);
    ImageHolder.Picture.Bitmap.Width  := ImageHolder.Width;
    ImageHolder.Picture.Bitmap.Height := ImageHolder.Height;
  except
    FrmPaint.free;
  end;
end;

procedure TFrmProcFormatos.Button1Click(Sender: TObject);
var Desc:String;
i:Integer;
begin
  Repeat
    Desc:=UpperCase(InputBox('Información de la Imagen', 'Ingrese una descripción para esta imagen:',''));
  Until Desc <> '';

  ADOImagenes.Open;
  ADOImagenes.Append;
  ADOImagenes.FieldValues['No_Historia']  := JVEdit1.Text;
  ADOImagenes.FieldValues['Descripcion']  := 'Imagen: '+Desc;
  ADOImagenes.FieldValues['Fecha']        := DateHC.DateTime;
  ADOImagenes.FieldByName('Imagen').Assign(ImageHolder.Picture.Bitmap);
  ADOImagenes.Post;
  ADOImagenes.Close;
  DateHC.DateTime       := now;

  For i:=0 To PageControl2.PageCount-1 Do
  Begin
    PageControl2.Pages[0].Destroy;
  End;
end;

procedure TFrmProcFormatos.Button2Click(Sender: TObject);
var k,Verr,I:Integer;
begin
   if not ADOGrProg.FieldByName('Plantilla').IsNull then
     chart1.BackImage.Bitmap.Assign(ADOGrProg.FieldByName('Plantilla'));

   Chart1.MarginTop           := ADOGrProg.FieldValues['Margen_Arriba'];
   Chart1.MarginLeft          := ADOGrProg.FieldValues['Margen_Izquierda'];
   Chart1.MarginRight         := ADOGrProg.FieldValues['Margen_Derecha'];
   Chart1.MarginBottom        := ADOGrProg.FieldValues['Margen_Abajo'];
   Chart1.LeftAxis.Minimum    := ADOGrProg.FieldValues['Pl_MinX'];
   Chart1.BottomAxis.Minimum  := ADOGrProg.FieldValues['Pl_MinY'];
   Chart1.LeftAxis.Maximum    := ADOGrProg.FieldValues['Pl_MaxX'];
   Chart1.BottomAxis.Maximum  := ADOGrProg.FieldValues['Pl_MaxY'];

   ADOQTmp.Close;
   ADOQTmp.SQL.Clear;
   ADOQTmp.SQL.Add('SELECT dbo.UDF_CalculaEdadNumeroRef(FEC_NACIMINETO,Fecha,1) as Edad,Valor');
   ADOQTmp.SQL.Add('FROM vHistoriasPacientes');
   ADOQTmp.SQL.Add('WHERE Descripcion_Campo like '+chr(39)+'%'+ADOGrProg.FieldValues['Cond_CampoY']+'%'+chr(39)+' AND SEXO = '+chr(39)+ADOGrProg.FieldValues['Cond_Sexo']+chr(39));
   ADOQTmp.SQL.Add(' AND CCHistoria = '+chr(39)+SGPacientes.Rows[SGPacientes.Row].Strings[1]+chr(39));
   ADOQTmp.SQL.Add(' AND dbo.UDF_CalculaEdadNumeroRef(FEC_NACIMINETO,Fecha,1) >= '+inttostr(ADOGrProg.FieldValues['Cond_EdadIni']));
   ADOQTmp.SQL.Add(' AND dbo.UDF_CalculaEdadNumeroRef(FEC_NACIMINETO,Fecha,1) < '+inttostr(ADOGrProg.FieldValues['Cond_EdadFin']));
   ADOQTmp.SQL.Add('ORDER BY Descripcion_Campo DESC');
   ADOQTmp.Open;

   ADOQtmp.First;
   //Chart1.Title.Text.Clear;
   //Chart1.Title.Text.Add(StringGridCH1.cells[StringGridCH1.Col,0]);
   Chart1.Series[0].Clear;
   while NOT ADOQTmp.Eof do
   Begin
     val(SoloNumeros(ADOQtmp.FieldValues['Valor']),k,Verr);
     //OJO quiete la validacion de error (Verr = 0) and
     //If  (k<>0) Then Chart1.Series[0].Add(k,ADOQtmp.FieldValues['Edad']);
     Chart1.Series[0].Addxy(ADOQtmp.FieldValues['Edad'],k);

     ADOQtmp.Next;
   End;
end;

procedure TFrmProcFormatos.Button3Click(Sender: TObject);
begin
  Chart1.Print;
end;

procedure TFrmProcFormatos.FormActivate(Sender: TObject);
begin
//  CargarPacientes;
end;

procedure TFrmProcFormatos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BkHC.free;
  action := cafree;
end;

procedure TFrmProcFormatos.RBCitasClick(Sender: TObject);
begin
  CargarPacientes;
end;

procedure TFrmProcFormatos.JvRollout7Collapse(Sender: TObject);
begin
  Panel19.Height:= 0;
  Panel11.Width := 1;
end;

procedure TFrmProcFormatos.JvRollout7Expand(Sender: TObject);
begin
  Panel19.Height:= 105;
  Panel11.Width := 221;
end;

procedure TFrmProcFormatos.limpiaCampo(Sender: TObject);
var
  i: integer;
   img : TImage;
   sImageName : String;
begin
if (MessageDlg('Desea limpiar el contenido de este campo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
     //Eliminar novedades para este campo y este paciente
     i := 0;
     while i <  PageControl2.Pages[PActiv].Components[0].Components[0].ComponentCount do
       begin
         if PageControl2.Pages[PActiv].Components[0].Components[0].Components[i] is TImage then
           begin
              sImageName:=TImage(PageControl2.Pages[PActiv].Components[0].Components[0].Components[i]).Name;
             if sImageName = SGDatos2.Cells[0,0] then
              Begin
                 //Repinta la figura original
                if fileexists(ExtractFilePath(paramstr(0))+'Imagenes\'+ADOQueryFormatos.FieldValues['Descripcion']+'\'+RightToken(TImage(PageControl2.Pages[PActiv].Components[0].Components[0].Components[i]).Hint,'-')+'.bmp') then
                    TImage(PageControl2.Pages[PActiv].Components[0].Components[0].Components[i]).Picture.LoadFromFile(ExtractFilePath(paramstr(0))+'Imagenes\'+ADOQueryFormatos.FieldValues['Descripcion']+'\'+RightToken(TImage(PageControl2.Pages[PActiv].Components[0].Components[0].Components[i]).Hint,'-')+'.bmp');
                 TImage(PageControl2.Pages[PActiv].Components[0].Components[0].Components[i]).HelpKeyword:='';
              end;  //TImage(PageControl2...
           end;  //PageControl2.Pages
         inc(i);
       end; //while

  end; //messagedlg
end;

end.
