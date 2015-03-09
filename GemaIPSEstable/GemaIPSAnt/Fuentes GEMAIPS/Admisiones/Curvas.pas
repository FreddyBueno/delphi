unit Curvas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, JvGradient, JvComponent, JvRollOut, ExtCtrls,
  JvItemsPanel, JvFooter, StdCtrls, Buttons, JvBitBtn,
  JvColorBox, JvColorButton, JvCaptionButton, Grids, jpeg,
  JvArrowButton, JvLabel, JvEdit, JvBevel, JvStringGrid, JvSplitter, JvCheckBox,
  JvRadioButton, JvPanel, JvComCtrls, DB, ADODB, DBCtrls, dbcgrids, StrUtils,
  JvSpecialProgress, JvSyncSplitter, JvRichEdit,
  JvDateTimePicker, DateUtils,
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
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, cxClasses, VCLTee.TeEngine,
  VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart;

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
    SGPacientes: TJvStringGrid;
    TabSheet17: TTabSheet;
    JvSplitter2: TJvSplitter;
    JvPageControl2: TJvPageControl;
    TabSheet9: TTabSheet;
    Chart1: TChart;
    Series1: TLineSeries;
    Timer1: TTimer;
    Panel15: TPanel;
    JvGradient16: TJvGradient;
    LblAdvertencia: TJvLabel;
    PnlAdvertencia: TPanel;
    ListAdvertencias: TJvListBox;
    LblC: TJvLabel;
    QryGeneralDiag: TADOQuery;
    QryMensajes: TADOQuery;
    ADOConnection1: TADOConnection;
    JvBitBtn9: TJvBitBtn;
    JvLabel26: TJvLabel;
    JvEdit1: TJvEdit;
    OpenPictureDialog2: TOpenPictureDialog;
    ADOImagenes: TADOQuery;
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
    JvInterpreterProgram1: TJvInterpreterProgram;
    DSGeneral: TDataSource;
    ADOQTraeInf: TADOQuery;
    ADOQCUPS: TADOQuery;
    ADOQtmp: TADOQuery;
    SwM: TJvSwitch;
    fprn: TdxComponentPrinter;
    Image1: TImage;
    fprnLink1: TdxImageReportLink;
    ADOQTotal: TADOQuery;
    DSTotal: TDataSource;
    DSTot2: TDataSource;
    ADOQTotalEdSx: TADOQuery;
    Panel8: TPanel;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    lbl2: TLabel;
    GroupBox4: TGroupBox;
    DSProg: TDataSource;
    ADOGrProg: TADOQuery;
    DBLookupComboBox1: TDBLookupComboBox;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit4: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label17: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label20: TLabel;
    BitBtn2: TBitBtn;
    Edit16: TEdit;
    JvBitBtn13: TJvBitBtn;
    Label18: TLabel;
    ADOQPivot: TADOQuery;
    JvBitBtn8: TJvBitBtn;
    JvBitBtn16: TJvBitBtn;
    StatusBar1: TStatusBar;
    Timer2: TTimer;
    JvLabel24: TJvLabel;
    edtAdmision: TJvEdit;
    procedure CargarPacientes;
    procedure LimpiaGrilla(Grilla : TJvStringGrid; Col : Integer);
    procedure RBHistoriaClick(Sender: TObject);
    procedure RBHistoriaSuyaClick(Sender: TObject);
    procedure SGPacientesClick(Sender: TObject);
    procedure BuscarPacientes;
    procedure BtnBuscarCClick(Sender: TObject);
    procedure BtnBuscarApeClick(Sender: TObject);
    procedure BtnBuscarNomClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure refrescar(Sender: TObject; var Key: Char);
    procedure BtnIngresarClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure JvBitBtn4Click(Sender: TObject);
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
    procedure LimpiaGrilla1(Grilla : TStringGrid; Col : Integer);
    procedure onKeyPressTex(Sender: TObject;
                             var Key: Char);
    procedure onChangeCan(Sender: TObject);
    procedure JvBitBtn9Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RecuperaHC(Sender: TObject);
    procedure GuardaHC(Sender: TObject);
    procedure Mousexx(Sender: TObject; Button: TMouseButton;  Shift: TShiftState; X, Y: Integer);
    procedure RBCitasClick(Sender: TObject);
    procedure JvBitBtn14Click(Sender: TObject);
    procedure DBEdit7Change(Sender: TObject);
    procedure DBEdit8Change(Sender: TObject);
    procedure DBEdit10Change(Sender: TObject);
    procedure DBEdit9Change(Sender: TObject);
    procedure DBEdit3Change(Sender: TObject);
    procedure DBEdit5Change(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure DBEdit6Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DSProgDataChange(Sender: TObject; Field: TField);
    procedure Timer2Timer(Sender: TObject);
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
  CapturaBasicaSelect, Reporteador;

{$R *.dfm}


procedure TFrmProcFormatos.RecuperaHC(Sender: TObject);
Begin
  if (Sender As TMemo).Text = '' Then
    (Sender As TMemo).Text := BkHC.ReadString('HC', (Sender As TMemo).HelpKeyword, '')
End;

//Procedimiento para Guardar del archivo plano la HC
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
  QryGeneral.Close;
  QryGeneral.SQL.Clear;
  QryGeneral.SQL.Add('select * from vPacientesAsignados where ');
  QryGeneral.SQL.Add(' TP_IDENT_MEDICO='+chr(39)+Datamodule1.ADOQuery1.FieldValues['Tipo_Identificacion']+chr(39)+' AND ');
  QryGeneral.SQL.Add(' Nr_Ident_Medico = '+chr(39)+Datamodule1.ADOQuery1.FieldValues['No_Identificacion']+chr(39) );
  QryGeneral.SQL.Add(' ORDER BY Primera_Fecha');
  QryGeneral.Open;

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
      SGPacientes.Cells[12,i] := QryGeneral.Fields.FieldByName('NO_Admision').AsString;
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
//frmAdmisionesActivas: TfrmAdmisionesActivas;
  qryRiesgos: TADOQuery;
  MensajeAlerta: string;

begin

  if edtAdmision.text='' then
    begin
      edtAdmision.Text:='-';
//      exit;
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

  Screen.Cursor := crHourglass;
end;

procedure TFrmProcFormatos.BuscarPacientes;
var i : Integer;
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

procedure TFrmProcFormatos.BitBtn2Click(Sender: TObject);
begin
  OpenPictureDialog2.Title := 'Imagen a mostrar.';
  OpenPictureDialog2.InitialDir := ExtractFilePath(paramstr(0)) +'Imagenes\'  ;
  if OpenPictureDialog2.Execute then begin
    Edit16.Text := OpenPictureDialog2.FileName;
    Chart1.BackImage.Bitmap.LoadFromFile(OpenPictureDialog2.FileName);
    If Edit16.Text <> null then
    Begin
      ADOGrProg.Edit;
      ADOGrProg.FieldByName('Plantilla').Assign(Chart1.BackImage.Bitmap);
      ADOGrProg.Post;
    End;
  end;
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

procedure TFrmProcFormatos.FormCreate(Sender: TObject);
begin

//  DateHC.DateTime       := now;
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

  CargarPacientes;
end;

procedure TFrmProcFormatos.DBEdit10Change(Sender: TObject);
begin
  if DBEdit10.Text <> '' THEN Chart1.MarginTop := strtoint(DBEdit10.Text)
  ELSE DBEdit10.Text := '0';
end;

procedure TFrmProcFormatos.DBEdit3Change(Sender: TObject);
begin
  if DBEdit3.Text <> '' THEN Chart1.LeftAxis.Minimum := strtoint(DBEdit3.Text)
  ELSE DBEdit3.Text := '0';
end;

procedure TFrmProcFormatos.DBEdit4Change(Sender: TObject);
begin
  if DBEdit4.Text <> '' THEN Chart1.BottomAxis.Minimum := strtoint(DBEdit4.Text)
  ELSE DBEdit4.Text := '0';
end;

procedure TFrmProcFormatos.DBEdit5Change(Sender: TObject);
begin
  if DBEdit5.Text <> '' THEN Chart1.LeftAxis.Maximum := strtoint(DBEdit5.Text)
  ELSE DBEdit5.Text := '0';
end;

procedure TFrmProcFormatos.DBEdit6Change(Sender: TObject);
begin
  if DBEdit6.Text <> '' THEN Chart1.BottomAxis.Maximum := strtoint(DBEdit6.Text)
  ELSE DBEdit6.Text := '0';
end;

procedure TFrmProcFormatos.DBEdit7Change(Sender: TObject);
begin
  if DBEdit7.Text <> '' THEN Chart1.MarginLeft := strtoint(DBEdit7.Text)
  ELSE DBEdit7.Text := '0';
end;

procedure TFrmProcFormatos.DBEdit8Change(Sender: TObject);
begin
  if DBEdit8.Text <> '' THEN Chart1.MarginRight := strtoint(DBEdit8.Text)
  ELSE DBEdit8.Text := '0';
end;

procedure TFrmProcFormatos.DBEdit9Change(Sender: TObject);
begin
  if DBEdit9.Text <> '' THEN Chart1.MarginBottom := strtoint(DBEdit9.Text)
  ELSE DBEdit9.Text := '0';
end;

procedure TFrmProcFormatos.DSProgDataChange(Sender: TObject; Field: TField);
var k,Verr:Integer;
begin
   if not ADOGrProg.FieldByName('Plantilla').IsNull then
     chart1.BackImage.Bitmap.Assign(ADOGrProg.FieldByName('Plantilla'));

   ADOQTmp.Close;
   ADOQTmp.SQL.Clear;
   ADOQTmp.SQL.Add('SELECT dbo.UDF_CalculaEdadNumeroRef(FEC_NACIMINETO,Fecha,1) as Edad,Valor');
   ADOQTmp.SQL.Add('FROM vHistoriasPacientes');
   ADOQTmp.SQL.Add('WHERE Descripcion_Campo like '+chr(39)+'%'+ADOGrProg.FieldValues['Cond_CampoY']+'%'+chr(39)+' AND SEXO = '+chr(39)+ADOGrProg.FieldValues['Cond_Sexo']+chr(39));
   ADOQTmp.SQL.Add(' AND CCHistoria = '+chr(39)+SGPacientes.Rows[SGPacientes.Row].Strings[1]+chr(39));
   ADOQTmp.SQL.Add(' AND dbo.UDF_CalculaEdadNumeroRef(FEC_NACIMINETO,Fecha,1) >= '+inttostr(ADOGrProg.FieldValues['Cond_EdadIni']));
   ADOQTmp.SQL.Add(' AND dbo.UDF_CalculaEdadNumeroRef(FEC_NACIMINETO,Fecha,1) < '+inttostr(ADOGrProg.FieldValues['Cond_EdadFin']));
//   ADOQTmp.SQL.Add(' AND Sexo = '+chr(39)+ADOGrProg.FieldValues['Cond_Sexo']+chr(39));
   ADOQTmp.SQL.Add('ORDER BY Descripcion_Campo DESC');
   ADOQTmp.Open;

   ADOQtmp.First;
   Chart1.Title.Text.Clear;
   //Chart1.Title.Text.Add(StringGridCH1.cells[StringGridCH1.Col,0]);
   Chart1.Series[0].Clear;
   while NOT ADOQTmp.Eof do
   Begin
     val(SoloNumeros(ADOQtmp.FieldValues['Valor']),k,Verr);
     If (Verr = 0) and (k<>0) Then Chart1.Series[0].Add(k,ADOQtmp.FieldValues['Edad']);
     ADOQtmp.Next;
   End;
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
begin
end;

//Este procedimiento trae la información sobre los campos de los formatos ya sean texto o graficos
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

procedure TFrmProcFormatos.JvBitBtn4Click(Sender: TObject);
begin
  PCOpciones.ActivePageIndex  := 0;
  CargarPacientes;
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

procedure TFrmProcFormatos.Mousexx(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  x1:=x;
  y1:=y;
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

end.
