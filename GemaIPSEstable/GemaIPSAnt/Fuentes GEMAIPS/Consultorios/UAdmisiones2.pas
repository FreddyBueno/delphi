unit UAdmisiones2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, Menus, ToolWin,
  DB, ADODB, Buttons, Mask, DBCtrls, ImgList, StrUtils, VCLTee.TeEngine,
  VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart, JvExButtons,
  JvBitBtn, Vcl.OleCtrls,
  JvExStdCtrls, JvRadioButton;

type
  TfrmProcAdmision = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    QryCitasMedicas: TADOQuery;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    GroupBox2: TGroupBox;
    ADOQuery1: TADOQuery;
    DataSource2: TDataSource;
    BitBtn5: TBitBtn;
    ADOQuery2: TADOQuery;
    BitBtn10: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn9: TBitBtn;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    Edit2: TEdit;
    BitBtn12: TBitBtn;
    TabSheet3: TTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    BtnBuscar: TBitBtn;
    DataSource1: TDataSource;
    BitBtn3: TBitBtn;
    QRYAdmisiones: TADOQuery;
    lbl: TLabel;
    PageControl3: TPageControl;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    TabSheet4: TTabSheet;
    GroupBox3: TGroupBox;
    DBChart: TDBChart;
    Splitter: TSplitter;
    DataSource3: TDataSource;
    ADOQadm2: TADOQuery;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    tab: TTabSheet;
    Label3: TLabel;
    Edit5: TEdit;
    BitBtn11: TBitBtn;
    Label4: TLabel;
    Edit6: TEdit;
    BitBtn13: TBitBtn;
    RadioButton4: TRadioButton;
    ADOQTmp: TADOQuery;
    GroupBox4: TGroupBox;
    DBGrid2: TDBGrid;
    RadioButton5: TRadioButton;
    BitBtn14: TBitBtn;
    PopupMenu1: TPopupMenu;
    VerFacturasdeestePaciente1: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    TabSheet5: TTabSheet;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    BitBtn21: TBitBtn;
    BitBtn22: TBitBtn;
    BitBtn23: TBitBtn;
    BitBtn24: TBitBtn;
    BitBtn25: TBitBtn;
    BitBtn26: TBitBtn;
    BitBtn27: TBitBtn;
    BitBtn28: TBitBtn;
    BitBtn29: TBitBtn;
    BitBtn30: TBitBtn;
    BitBtn31: TBitBtn;
    JvBitBtn1: TJvBitBtn;
    BitBtn32: TBitBtn;
    PopupMenu3: TPopupMenu;
    Diagnosticos2: TMenuItem;
    CamasCamillasSillasUbicaciones1: TMenuItem;
    NmerodeUbicaciones1: TMenuItem;
    Secciones1: TMenuItem;
    iposdeUbicaciones1: TMenuItem;
    EstadosdeEgresos2: TMenuItem;
    iposdeAfiliadoSegnRIPS2: TMenuItem;
    iposdeUsuariosSegnRegimen1: TMenuItem;
    UbicacinGeografica2: TMenuItem;
    Zonas1: TMenuItem;
    Ciudad2: TMenuItem;
    Departamentos1: TMenuItem;
    Nacionalidades2: TMenuItem;
    ablasBsicas1: TMenuItem;
    Parentescos2: TMenuItem;
    Ocupacion2: TMenuItem;
    GruposEtnicos2: TMenuItem;
    EstadosCiviles2: TMenuItem;
    Sexo2: TMenuItem;
    iposdeDocumentos1: TMenuItem;
    VerConveniodeestaAdmisin1: TMenuItem;
    ADOQHuella: TADOQuery;
    JvBitBtn8: TJvBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BtnBuscarClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure RptMenuI(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure DataSource3DataChange(Sender: TObject; Field: TField);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure RadioButton5Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure VerFacturasdeestePaciente1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure BitBtn26Click(Sender: TObject);
    procedure BitBtn27Click(Sender: TObject);
    procedure BitBtn28Click(Sender: TObject);
    procedure BitBtn29Click(Sender: TObject);
    procedure BitBtn30Click(Sender: TObject);
    procedure BitBtn31Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn32Click(Sender: TObject);
    procedure iposdeDocumentos1Click(Sender: TObject);
    procedure Sexo2Click(Sender: TObject);
    procedure EstadosCiviles2Click(Sender: TObject);
    procedure GruposEtnicos2Click(Sender: TObject);
    procedure Ocupacion2Click(Sender: TObject);
    procedure Parentescos2Click(Sender: TObject);
    procedure Nacionalidades2Click(Sender: TObject);
    procedure Departamentos1Click(Sender: TObject);
    procedure Ciudad2Click(Sender: TObject);
    procedure Zonas1Click(Sender: TObject);
    procedure iposdeUsuariosSegnRegimen1Click(Sender: TObject);
    procedure iposdeAfiliadoSegnRIPS2Click(Sender: TObject);
    procedure EstadosdeEgresos2Click(Sender: TObject);
    procedure iposdeUbicaciones1Click(Sender: TObject);
    procedure Secciones1Click(Sender: TObject);
    procedure NmerodeUbicaciones1Click(Sender: TObject);
    procedure Diagnosticos2Click(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure VerConveniodeestaAdmisin1Click(Sender: TObject);
    procedure JvBitBtn8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProcAdmision: TfrmProcAdmision;
  incst:string;

implementation

uses SAPAcientes2, UingresosAdmisiones, 
  SAEgresos,  ComplementoAdmi,
  FCargos, UIngresoCajaMultiple, UDataModule1, MAIN,
  FFacturaporPaciente, AnulaAdmision,Libreria_Prateinco, Libreria_PrateincoForm, ModuloAdmision,
  Reporteador, FAgendaMedica, frmproductos, CapturaBasica, frmGrupos,
  frmservicios, FDetPaquete, FCreaTerceros, FCrearConvenio, VerificaHuella;

{$R *.dfm}

procedure TfrmProcAdmision.FormCreate(Sender: TObject);
begin
  QryAdmisiones.close;
  QryCitasMedicas.close;
  QryAdmisiones.open;
  QryCitasMedicas.Open;

  incst:=chr(39)+'Y'+chr(39);

  PageControl1.ActivePageIndex := 0;
  PageControl3.ActivePageIndex := 0;

  RadioButton5Click(Nil);
end;

procedure TfrmProcAdmision.GruposEtnicos2Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'GEGrupoEtnico';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TfrmProcAdmision.iposdeAfiliadoSegnRIPS2Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'GETipoAfiliado';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TfrmProcAdmision.iposdeDocumentos1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'COMUNES..GETipo_Documentos';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TfrmProcAdmision.iposdeUbicaciones1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'GETiposCama';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TfrmProcAdmision.iposdeUsuariosSegnRegimen1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'GERegimen';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TfrmProcAdmision.JvBitBtn8Click(Sender: TObject);
begin
  FVHuella := tFVHuella.create(application);
  try
    FVHuella.ShowModal;
    Edit1.Text := FVHuella.Edit1.Text;
    BitBtn9Click(Nil);
  except
    FVHuella.free;
  end;
end;

procedure TfrmProcAdmision.MenuItem1Click(Sender: TObject);
begin
  ReporteadorP(MainForm.Caption,'SELECT * ' +
      ' FROM  CREncCargos,CRDetCargos ' +
      ' WHERE CREncCargos.No_Cargo = CRDetCargos.NO_CARGO AND ' +
      '       No_Admision = '+chr(39)+ADOQAdm2.FieldValues['No_admision']+chr(39),'');
end;

procedure TfrmProcAdmision.Nacionalidades2Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'COMUNES..GENacionalidad';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TfrmProcAdmision.NmerodeUbicaciones1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'SACamas';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TfrmProcAdmision.Ocupacion2Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'COMUNES..GEOcupacion';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TfrmProcAdmision.Parentescos2Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'COMUNES..GEParentesco';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TfrmProcAdmision.RadioButton1Click(Sender: TObject);
begin
  QryAdmisiones.Close;
  QryAdmisiones.SQL.Clear;
  QryAdmisiones.SQL.Add(' SELECT Tp_Ident_Usuar,Nr_Ident_Usuar, ');
  QryAdmisiones.SQL.Add('   Left((rtrim(PRIMER_APELLIDO)+ '+chr(39)+' '+chr(39)+ ' + ');
  QryAdmisiones.SQL.Add('   rtrim(isnull(SEGUNDO_APELLIDO,''''))+ '+chr(39)+' '+chr(39)+ '  + ');
  QryAdmisiones.SQL.Add('   rtrim(PRIMER_NOMBRE)+ '+chr(39)+' '+chr(39)+ '  + ');
  QryAdmisiones.SQL.Add('   rtrim(isnull(SEGUNDO_NOMBRE,''''))),40) as Nombre, Dir_Casa_Pacien,Tel_Casa_Pacien, ');
  QryAdmisiones.SQL.Add('   (SELECT count(*) ');
  QryAdmisiones.SQL.Add('   FROM SAAdmisiones,CREncCargos');
  QryAdmisiones.SQL.Add('   WHERE SAAdmisiones.Tp_Ident_Usuar = SAPacientes.Tp_Ident_Usuar AND ');
  QryAdmisiones.SQL.Add('         SAAdmisiones.Nr_Ident_Usuar = SAPacientes.Nr_Ident_Usuar AND SAAdmisiones.No_Admision = CREncCargos.No_Admision) as Total_Cargos ');
  QryAdmisiones.SQL.Add(' FROM  SAPacientes ');
  QryAdmisiones.SQL.Add(' WHERE (SELECT count(*) ');
  QryAdmisiones.SQL.Add('   FROM SAAdmisiones,CREncCargos');
  QryAdmisiones.SQL.Add('   WHERE SAAdmisiones.Tp_Ident_Usuar = SAPacientes.Tp_Ident_Usuar AND ');
  QryAdmisiones.SQL.Add('         SAAdmisiones.Nr_Ident_Usuar = SAPacientes.Nr_Ident_Usuar AND SAAdmisiones.No_Admision = CREncCargos.No_Admision) > 0 ');
  QryAdmisiones.Open;
end;

procedure TfrmProcAdmision.RadioButton2Click(Sender: TObject);
begin
  QryAdmisiones.Close;
  QryAdmisiones.SQL.Clear;
  QryAdmisiones.SQL.Add(' SELECT Tp_Ident_Usuar,Nr_Ident_Usuar, ');
  QryAdmisiones.SQL.Add('   Left((rtrim(PRIMER_APELLIDO)+ '+chr(39)+' '+chr(39)+ ' + ');
  QryAdmisiones.SQL.Add('   rtrim(isnull(SEGUNDO_APELLIDO,''''))+ '+chr(39)+' '+chr(39)+ '  + ');
  QryAdmisiones.SQL.Add('   rtrim(PRIMER_NOMBRE)+ '+chr(39)+' '+chr(39)+ '  + ');
  QryAdmisiones.SQL.Add('   rtrim(isnull(SEGUNDO_NOMBRE,''''))),40) as Nombre, Dir_Casa_Pacien,Tel_Casa_Pacien, ');
  QryAdmisiones.SQL.Add('   (SELECT count(No_Admision) ');
  QryAdmisiones.SQL.Add('   FROM SAAdmisiones ');
  QryAdmisiones.SQL.Add('   WHERE SAAdmisiones.Tp_Ident_Usuar = SAPacientes.Tp_Ident_Usuar AND ');
  QryAdmisiones.SQL.Add('         SAAdmisiones.Nr_Ident_Usuar = SAPacientes.Nr_Ident_Usuar AND Fec_Egreso is not null) as Tot_Admisiones_Egresadas, ');
  QryAdmisiones.SQL.Add('   (SELECT count(No_Admision) ');
  QryAdmisiones.SQL.Add('   FROM SAAdmisiones ');
  QryAdmisiones.SQL.Add('   WHERE SAAdmisiones.Tp_Ident_Usuar = SAPacientes.Tp_Ident_Usuar AND ');
  QryAdmisiones.SQL.Add('         SAAdmisiones.Nr_Ident_Usuar = SAPacientes.Nr_Ident_Usuar) as Tot_Admisiones_Activas ');
  QryAdmisiones.SQL.Add(' FROM  SAPacientes ');
  QryAdmisiones.SQL.Add(' WHERE (SELECT count(No_Admision) ');
  QryAdmisiones.SQL.Add('   FROM SAAdmisiones ');
  QryAdmisiones.SQL.Add('   WHERE SAAdmisiones.Tp_Ident_Usuar = SAPacientes.Tp_Ident_Usuar AND ');
  QryAdmisiones.SQL.Add('         SAAdmisiones.Nr_Ident_Usuar = SAPacientes.Nr_Ident_Usuar) > 0 ');

  QryAdmisiones.Open;
end;

procedure TfrmProcAdmision.RadioButton3Click(Sender: TObject);
begin
  QryAdmisiones.Close;
  QryAdmisiones.SQL.Clear;
  QryAdmisiones.SQL.Add(' SELECT Tp_Ident_Usuar,Nr_Ident_Usuar, ');
  QryAdmisiones.SQL.Add('   Left((rtrim(PRIMER_APELLIDO)+ '+chr(39)+' '+chr(39)+ ' + ');
  QryAdmisiones.SQL.Add('   rtrim(isnull(SEGUNDO_APELLIDO,''''))+ '+chr(39)+' '+chr(39)+ '  + ');
  QryAdmisiones.SQL.Add('   rtrim(PRIMER_NOMBRE)+ '+chr(39)+' '+chr(39)+ '  + ');
  QryAdmisiones.SQL.Add('   rtrim(isnull(SEGUNDO_NOMBRE,''''))),40) as Nombre, Dir_Casa_Pacien,Tel_Casa_Pacien, ');
  QryAdmisiones.SQL.Add('   (SELECT count(No_Admision) ');
  QryAdmisiones.SQL.Add('   FROM SAAdmisiones ');
  QryAdmisiones.SQL.Add('   WHERE SAAdmisiones.Tp_Ident_Usuar = SAPacientes.Tp_Ident_Usuar AND ');
  QryAdmisiones.SQL.Add('         SAAdmisiones.Nr_Ident_Usuar = SAPacientes.Nr_Ident_Usuar AND Fec_Egreso is not null) as Tot_Admisiones_Egresadas, ');
  QryAdmisiones.SQL.Add('   (SELECT count(No_Admision) ');
  QryAdmisiones.SQL.Add('   FROM SAAdmisiones ');
  QryAdmisiones.SQL.Add('   WHERE SAAdmisiones.Tp_Ident_Usuar = SAPacientes.Tp_Ident_Usuar AND ');
  QryAdmisiones.SQL.Add('         SAAdmisiones.Nr_Ident_Usuar = SAPacientes.Nr_Ident_Usuar) as Tot_Admisiones_Activas ');
  QryAdmisiones.SQL.Add(' FROM  SAPacientes ');
  QryAdmisiones.SQL.Add(' WHERE (SELECT count(No_Admision) ');
  QryAdmisiones.SQL.Add('   FROM SAAdmisiones ');
  QryAdmisiones.SQL.Add('   WHERE SAAdmisiones.Tp_Ident_Usuar = SAPacientes.Tp_Ident_Usuar AND ');
  QryAdmisiones.SQL.Add('         SAAdmisiones.Nr_Ident_Usuar = SAPacientes.Nr_Ident_Usuar) = 0 ');
  QryAdmisiones.Open;
end;

procedure TfrmProcAdmision.RadioButton4Click(Sender: TObject);
begin
  QryAdmisiones.Close;
  QryAdmisiones.SQL.Clear;
  QryAdmisiones.SQL.Add(' SELECT Tp_Ident_Usuar,Nr_Ident_Usuar, ');
  QryAdmisiones.SQL.Add('   Left((rtrim(PRIMER_APELLIDO)+ '+chr(39)+' '+chr(39)+ ' + ');
  QryAdmisiones.SQL.Add('   rtrim(isnull(SEGUNDO_APELLIDO,''''))+ '+chr(39)+' '+chr(39)+ '  + ');
  QryAdmisiones.SQL.Add('   rtrim(PRIMER_NOMBRE)+ '+chr(39)+' '+chr(39)+ '  + ');
  QryAdmisiones.SQL.Add('   rtrim(isnull(SEGUNDO_NOMBRE,''''))),40) as Nombre, Dir_Casa_Pacien,Tel_Casa_Pacien, ');
  QryAdmisiones.SQL.Add('   (SELECT count(*) ');
  QryAdmisiones.SQL.Add('   FROM SAAdmisiones,CREncCargos');
  QryAdmisiones.SQL.Add('   WHERE SAAdmisiones.Tp_Ident_Usuar = SAPacientes.Tp_Ident_Usuar AND ');
  QryAdmisiones.SQL.Add('         SAAdmisiones.Nr_Ident_Usuar = SAPacientes.Nr_Ident_Usuar AND SAAdmisiones.No_Admision = CREncCargos.No_Admision) as Total_Cargos ');
  QryAdmisiones.SQL.Add(' FROM  SAPacientes ');
  QryAdmisiones.Open;
end;

procedure TfrmProcAdmision.RadioButton5Click(Sender: TObject);
begin
  QryAdmisiones.Close;
  QryAdmisiones.SQL.Clear;
  QryAdmisiones.SQL.Add(' SELECT Tp_Ident_Usuar,Nr_Ident_Usuar, ');
  QryAdmisiones.SQL.Add('   Left((rtrim(PRIMER_APELLIDO)+ '+chr(39)+' '+chr(39)+ ' + ');
  QryAdmisiones.SQL.Add('   rtrim(isnull(SEGUNDO_APELLIDO,''''))+ '+chr(39)+' '+chr(39)+ '  + ');
  QryAdmisiones.SQL.Add('   rtrim(PRIMER_NOMBRE)+ '+chr(39)+' '+chr(39)+ '  + ');
  QryAdmisiones.SQL.Add('   rtrim(isnull(SEGUNDO_NOMBRE,''''))),40) as Nombre, Dir_Casa_Pacien,Tel_Casa_Pacien, ');
  QryAdmisiones.SQL.Add('   (SELECT count(No_Admision) ');
  QryAdmisiones.SQL.Add('   FROM SAAdmisiones ');
  QryAdmisiones.SQL.Add('   WHERE SAAdmisiones.Tp_Ident_Usuar = SAPacientes.Tp_Ident_Usuar AND ');
  QryAdmisiones.SQL.Add('         SAAdmisiones.Nr_Ident_Usuar = SAPacientes.Nr_Ident_Usuar AND Fec_Egreso is not null) as Tot_Admisiones_Egresadas, ');
  QryAdmisiones.SQL.Add('   (SELECT count(No_Admision) ');
  QryAdmisiones.SQL.Add('   FROM SAAdmisiones ');
  QryAdmisiones.SQL.Add('   WHERE SAAdmisiones.Tp_Ident_Usuar = SAPacientes.Tp_Ident_Usuar AND ');
  QryAdmisiones.SQL.Add('         SAAdmisiones.Nr_Ident_Usuar = SAPacientes.Nr_Ident_Usuar) as Tot_Admisiones_Activas ');
  QryAdmisiones.SQL.Add(' FROM  SAPacientes ');
  QryAdmisiones.SQL.Add(' WHERE (SELECT count(No_Admision) ');
  QryAdmisiones.SQL.Add('   FROM SAAdmisiones ');
  QryAdmisiones.SQL.Add('   WHERE SAAdmisiones.Tp_Ident_Usuar = SAPacientes.Tp_Ident_Usuar AND ');
  QryAdmisiones.SQL.Add('         SAAdmisiones.Nr_Ident_Usuar = SAPacientes.Nr_Ident_Usuar AND (EST_ADMINSION = '+chr(39)+'A'+chr(39)+ ' OR EST_ADMINSION = '+chr(39)+'C'+chr(39)+'  )) > 0 ');

  QryAdmisiones.Open;
end;

procedure TfrmProcAdmision.Salir1Click(Sender: TObject);
var 
   Mango:integer;
begin
  Mango:=FindWindow(nil,'pacientes');
  if mango=0   then
   else SendMessage(Mango,WM_CLOSE,0,0);
   close
end;

procedure TfrmProcAdmision.Secciones1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'GESecciones';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TfrmProcAdmision.Sexo2Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'COMUNES..GESexo';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TfrmProcAdmision.VerConveniodeestaAdmisin1Click(Sender: TObject);
begin
  FormCreaConvenios := tFormCreaConvenios.create(application);
  try
    FormCreaConvenios.DBLookupComboBox1.KeyValue := ADOQadm2.FieldValues['Aseguradora'];
    FormCreaConvenios.ComboBox2.Text := ADOQadm2.FieldValues['No_Contrato'];
    FormCreaConvenios.ComboBox2Exit(Nil);
    FormCreaConvenios.show;
  except
    FormCreaConvenios.free;
  end;
end;

procedure TfrmProcAdmision.VerFacturasdeestePaciente1Click(Sender: TObject);
begin
  ReporteadorP(MainForm.Caption,'SELECT * ' +
    ' FROM INEncFacturacion ' +
    ' WHERE Cliente =  '+chr(39)+QRYAdmisiones.FieldValues['Nr_Ident_Usuar']+chr(39),'');
end;

procedure TfrmProcAdmision.Zonas1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'GEZona';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TfrmProcAdmision.BitBtn4Click(Sender: TObject);
begin
  frmadminsiones := tfrmadminsiones.create(application);
  try
    If QryAdmisiones.RecordCount <> 0 Then
    Begin
      frmadminsiones.DBLookupComboBox4.KeyValue := QryAdmisiones.FieldValues['Tp_Ident_Usuar'];
      frmadminsiones.Edit1.Text := QryAdmisiones.FieldValues['Nr_Ident_Usuar'];
    End;
    Datamodule1.MuestraconAcceso(frmadminsiones);
    frmadminsiones.Edit1.SetFocus;
    frmadminsiones.DBLookupComboBox1.SetFocus;
  except
    frmadminsiones.free;
  end;
  //DBGrid1.SetFocus;
end;

procedure TfrmProcAdmision.BitBtn6Click(Sender: TObject);
begin
  FCapturaCargo := tFCapturaCargo.create(application);
  try
    FCapturaCargo.ADOQuery1.Parameters.ParamValues['adm'] := ADOQAdm2.FieldValues['No_admision'];
    FCapturaCargo.ADOQuery1.Open;
    FCapturaCargo.DBlookupComboBox1.KeyValue:=FCapturaCargo.ADOquery1.FieldValues['NO_ADMISION'];
    FCapturaCargo.DBlookupComboBox10.KeyValue:=FCapturaCargo.ADOquery1.FieldValues['NR_IDENT_USUAR'];
    FCapturaCargo.DBLookupComboBox11.KeyValue:=FCapturaCargo.ADOQuery1.FieldValues['TP_Admision'];
    IF FCapturaCargo.DBlookupComboBox1.Text <> '' Then
      FCapturaCargo.DBlookupComboBox10.KeyValue:=FCapturaCargo.ADOquery1.FieldValues['NR_IDENT_USUAR']+FCapturaCargo.ADOquery1.FieldValues['TP_IDENT_USUAR']+FCapturaCargo.ADOquery1.FieldValues['NO_ADMISION'];

    FCapturaCargo.DBLookupComboBox1.KeyValue:=ADOQAdm2.FieldValues['No_admision'];
    FCapturaCargo.DBLookupComboBox1Exit(nil);
    Datamodule1.MuestraconAcceso(FCapturaCargo);
    //FCapturaCargo.ComboBox1.SetFocus;
  except
    FCapturaCargo.free;
  end;
end;

procedure TfrmProcAdmision.BitBtn1Click(Sender: TObject);
begin
  FacturaDirectaxPac := tFacturaDirectaxPac.create(application);
  try
    if ADOQAdm2.RecordCount = 0 then
    Begin
      FacturaDirectaxPac.RadioButton2.Checked := True;
      FacturaDirectaxPac.GroupBox5.Visible := False;
      FacturaDirectaxPac.DBLookupComboBox10.KeyValue := QryAdmisiones.FieldValues['NR_IDENT_USUAR']+QryAdmisiones.FieldValues['TP_IDENT_USUAR'];
      FacturaDirectaxPac.RadioButton2Click(nil);
      FacturaDirectaxPac.BitBtn8Click(Nil);
      FacturaDirectaxPac.DBLookupComboBox20.KeyValue := FacturaDirectaxPac.ADOTable1.FieldValues['No_Contrato_Particular'];
    End
    Else IF (ADOQAdm2.FieldValues['Est_Adminsion']<>'A') AND (ADOQAdm2.FieldValues['Est_Adminsion']<>'C') AND (ADOQAdm2.FieldValues['Est_Adminsion']<>'E') then
    Begin
      FacturaDirectaxPac.RadioButton2.Checked := True;
      FacturaDirectaxPac.GroupBox5.Visible := False;
      FacturaDirectaxPac.DBLookupComboBox10.KeyValue := QryAdmisiones.FieldValues['NR_IDENT_USUAR']+QryAdmisiones.FieldValues['TP_IDENT_USUAR'];
      FacturaDirectaxPac.RadioButton2Click(nil);
      FacturaDirectaxPac.BitBtn8Click(Nil);
      FacturaDirectaxPac.DBLookupComboBox20.KeyValue := FacturaDirectaxPac.ADOTable1.FieldValues['No_Contrato_Particular'];
    End
    Else Begin
      FacturaDirectaxPac.RadioButton2.Checked := True;
      FacturaDirectaxPac.DBLookupComboBox10.KeyValue := QryAdmisiones.FieldValues['NR_IDENT_USUAR']+QryAdmisiones.FieldValues['TP_IDENT_USUAR'];
      FacturaDirectaxPac.RadioButton2Click(nil);
      FacturaDirectaxPac.BitBtn8Click(Nil);

      FacturaDirectaxPac.DBLookupComboBox20.KeyValue := ADOQAdm2.FieldValues['No_Contrato'];
      FacturaDirectaxPac.RadioButton1.Checked := True;
      FacturaDirectaxPac.TabSheet5.TabVisible := True;
      FacturaDirectaxPac.DBLookupComboBox11.KeyValue := ADOQAdm2.FieldValues['Aseguradora'];
      FacturaDirectaxPac.DBLookupComboBox11Exit(Nil);
      FacturaDirectaxPac.DBLookupComboBox10.KeyValue := QryAdmisiones.FieldValues['NR_IDENT_USUAR']+QryAdmisiones.FieldValues['TP_IDENT_USUAR'];
      FacturaDirectaxPac.BitBtn8Click(Nil);
      FacturaDirectaxPac.DBLookupComboBox20.KeyValue := ADOQAdm2.FieldValues['No_Contrato'];
      FacturaDirectaxPac.DBLookupComboBox20.Enabled := False;
    End;
    Datamodule1.MuestraconAcceso(FacturaDirectaxPac);
    FacturaDirectaxPac.DBLookupComboBox20Exit(Nil);
  except
    FacturaDirectaxPac.free;
  end;
end;

procedure TfrmProcAdmision.BitBtn20Click(Sender: TObject);
begin
  productos := tproductos.create(application);
  try
    Datamodule1.MuestraconAcceso(productos);
  except
    productos.free;
  end;
end;

procedure TfrmProcAdmision.BitBtn22Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'CRAgrupacion';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TfrmProcAdmision.BitBtn23Click(Sender: TObject);
begin
  FrmDetPaquete := tFrmDetPaquete.create(application);
  try
    Datamodule1.MuestraconAcceso(FrmDetPaquete);
  except
    FrmDetPaquete.free;
  end;
end;

procedure TfrmProcAdmision.BitBtn24Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'INIva';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TfrmProcAdmision.BitBtn25Click(Sender: TObject);
begin
  FormCreaConvenios := tFormCreaConvenios.create(application);
  try
    FormCreaConvenios.show;
  except
    FormCreaConvenios.free;
  end;
end;

procedure TfrmProcAdmision.BitBtn26Click(Sender: TObject);
begin
    grupos := tgrupos.create(application);
  try
    Datamodule1.MuestraconAcceso(grupos);
  except
    grupos.free;
  end;
end;

procedure TfrmProcAdmision.BitBtn27Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'INSubgrupo';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TfrmProcAdmision.BitBtn28Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'SACapituloCups';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TfrmProcAdmision.BitBtn29Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'SAArticulosCups';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TfrmProcAdmision.BitBtn2Click(Sender: TObject);
begin
  IngresosFacturaM := tIngresosFacturaM.create(application);
  try
    case MessageBox(0, 'Ingrese Yes Para Caja de la Persona, No Para Caja de Empresa o Cancel para Salir', '', MB_ICONQUESTION or MB_YESNOCANCEL) of
      idYes: Begin
        IngresosFacturaM.ADOQuery3.Close;
        IngresosFacturaM.ADOQuery3.Parameters.ParamValues['usu']:= QryAdmisiones.FieldValues['Nr_Ident_Usuar']+'001';
        IngresosFacturaM.ADOQuery3.Open;
        IngresosFacturaM.DBLookupComboBox2.KeyValue := IngresosFacturaM.ADOQuery3.FieldValues['Numero_Documento'];
        IngresosFacturaM.DBLookupComboBox3.KeyValue := IngresosFacturaM.ADOQuery3.FieldValues['Numero_Documento'];
      End;
      idNo: Begin
        IngresosFacturaM.ADOQuery3.Close;
        IngresosFacturaM.ADOQuery3.Parameters.ParamValues['usu']:= ADOQadm2.FieldValues['Aseguradora'];
        IngresosFacturaM.ADOQuery3.Open;
        IngresosFacturaM.DBLookupComboBox2.KeyValue := IngresosFacturaM.ADOQuery3.FieldValues['Numero_Documento'];
        IngresosFacturaM.DBLookupComboBox3.KeyValue := IngresosFacturaM.ADOQuery3.FieldValues['Numero_Documento'];
      End;
      idCancel: Begin
      End;
    end;
    IngresosFacturaM.Show;
  except
    IngresosFacturaM.free;
  end;
//  DBGrid1.SetFocus;
end;

procedure TfrmProcAdmision.BitBtn7Click(Sender: TObject);
begin
 if ADOQAdm2.FieldValues['NO_ADMISION'] > '0' then
 begin
    frmEgresos := tfrmEgresos.create(application);
    try
      frmEgresos.QryAdmisiones.Close;
      frmEgresos.QryAdmisiones.Parameters[0].Value := ADOQAdm2.FieldValues['NO_ADMISION'];
      frmEgresos.QryAdmisiones.Open;
      frmEgresos.Edit2.Text:=  QryAdmisiones.FieldValues['Nombre'];
      frmEgresos.Show;
    except
      frmEgresos.free;
    end;
 end;
// DBGrid1.SetFocus;
end;

procedure TfrmProcAdmision.FormActivate(Sender: TObject);
var adm:string;
begin
  top := 0;
  Left := 0;
  WindowState := wsMaximized;

  if ADOQAdm2.State = dsBrowse then
  BEgin
    if ADOQAdm2.FieldValues['no_admision'] <> null then
    Begin
      adm:=ADOQAdm2.FieldValues['no_admision'];
      ADOQAdm2.close;
      ADOQAdm2.Open;
      ADOQAdm2.Locate('No_Admision', adm, [loPartialKey]);
    End;
  End;
  QRYAdmisiones.Close;
  QRYAdmisiones.Open;
end;

procedure TfrmProcAdmision.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  ADOQuery2.Open;

  if (QRyAdmisiones.RecordCount <> 0) then
  Begin
    ADOQAdm2.Close;
    ADOQAdm2.SQL.Clear;
    ADOQAdm2.SQL.Add(' SELECT * FROM SAAdmisiones ');
    ADOQAdm2.SQL.Add(' WHERE Tp_Ident_Usuar = '+chr(39)+QryAdmisiones.FieldValues['Tp_Ident_Usuar'] +chr(39));
    ADOQAdm2.SQL.Add('       AND NR_Ident_Usuar = '+chr(39)+QryAdmisiones.FieldValues['Nr_Ident_Usuar'] +chr(39));
    ADOQAdm2.SQL.Add('       AND Est_Adminsion <> '+chr(39)+'X'+chr(39));
    ADOQAdm2.SQL.Add(' ORDER BY Fec_Admision DESC ');
    ADOQAdm2.Open;
  End
  Else Begin
    Bitbtn10.Enabled:=True;
    Bitbtn4.Enabled:=False;
    Bitbtn6.Enabled:=False;
    Bitbtn7.Enabled:=False;
    Bitbtn1.Enabled:=False;
    Bitbtn2.Enabled:=False;
    Bitbtn5.Enabled:=False;
    Bitbtn3.Enabled:=False;
  End;
end;

procedure TfrmProcAdmision.DataSource3DataChange(Sender: TObject;
  Field: TField);
begin
  IF ADOQAdm2.RecordCount = 0 Then
  Begin
    Bitbtn10.Enabled:=True;
    Bitbtn4.Enabled:=True;
    Bitbtn6.Enabled:=False;
    Bitbtn7.Enabled:=False;
    Bitbtn1.Enabled:=True;
    Bitbtn2.Enabled:=True;
    Bitbtn5.Enabled:=False;
    Bitbtn3.Enabled:=False;
  End
  ELSE IF ADOQAdm2.FieldValues['Est_Adminsion']='F' Then
  Begin
    Bitbtn4.Enabled:=True;
    Bitbtn6.Enabled:=False;
    Bitbtn7.Enabled:=False;
    Bitbtn1.Enabled:=False;
    Bitbtn2.Enabled:=True;
    Bitbtn5.Enabled:=True;
    Bitbtn3.Enabled:=False;
  End
  Else IF (ADOQAdm2.FieldValues['Est_Adminsion']='P') OR (ADOQAdm2.FieldValues['Est_Adminsion']='E') OR (leftstr(ADOQAdm2.FieldValues['Est_Adminsion'],1)='1') OR (leftstr(ADOQAdm2.FieldValues['Est_Adminsion'],1)='2')Then
  Begin
    Bitbtn4.Enabled:=True;
    Bitbtn6.Enabled:=False;
    Bitbtn7.Enabled:=False;
    Bitbtn1.Enabled:=True;
    Bitbtn2.Enabled:=False;
    Bitbtn5.Enabled:=True;
    Bitbtn3.Enabled:=True;
  End
  Else IF (ADOQAdm2.FieldValues['Est_Adminsion']='A') OR (ADOQAdm2.FieldValues['Est_Adminsion']='C') Then
  Begin
    Bitbtn4.Enabled:=True;
    Bitbtn6.Enabled:=True;
    Bitbtn7.Enabled:=True;
    Bitbtn1.Enabled:=True;
    Bitbtn2.Enabled:=True;
    Bitbtn5.Enabled:=False;
    Bitbtn3.Enabled:=True;
  End ELSE IF ADOQAdm2.FieldValues['Est_Adminsion']='X' Then
  Begin
    Bitbtn10.Enabled:=True;
    Bitbtn4.Enabled:=True;
    Bitbtn6.Enabled:=False;
    Bitbtn7.Enabled:=False;
    Bitbtn5.Enabled:=False;
    Bitbtn1.Enabled:=True;
    Bitbtn2.Enabled:=True;
    Bitbtn3.Enabled:=False;
  End Else Begin
    Bitbtn4.Enabled:=True;
    Bitbtn6.Enabled:=True;
    Bitbtn7.Enabled:=True;
    Bitbtn1.Enabled:=False;
    Bitbtn2.Enabled:=True;
    Bitbtn5.Enabled:=False;
    Bitbtn3.Enabled:=False;
  End;
  ADOQuery1.close;
  ADOquery1.Open;
end;

Procedure TfrmProcAdmision.RptMenuI(Sender: TObject);
begin
  ReporteadorP('Afiliaciones',(Sender as TMenuItem).Hint,Busca_Item((Sender as TMenuItem).Caption,1));
end;

procedure TfrmProcAdmision.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  ColorGrillas(TDBGrid(Sender),Rect, DataCol, Column, State);
end;

procedure TfrmProcAdmision.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (ADOQAdm2.FieldValues['Est_Adminsion'] = 'A') OR
     (ADOQAdm2.FieldValues['Est_Adminsion'] = 'C') then
     if (gdFocused in State) then
       DBGrid2.Canvas.Brush.Color := clRed
     else
       DBGrid2.Canvas.Brush.Color := $0085F8FE
  else IF ADOQAdm2.FieldValues['Est_Adminsion']='F' Then
  BEgin
    if (gdFocused in State) then
       DBGrid2.Canvas.Brush.Color := clRed
     else
       DBGrid2.Canvas.Brush.Color := $00FF80FF;
  End
  else
     if (gdFocused in State) then
       DBGrid2.Canvas.Brush.Color := clRed
     else
       DBGrid2.Canvas.Brush.Color := $0079FDB8;
  DBGrid2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TfrmProcAdmision.Departamentos1Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'COMUNES..GEDepartamentos';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TfrmProcAdmision.Diagnosticos2Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'COMUNES..GEDiagnosticos';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TfrmProcAdmision.BitBtn5Click(Sender: TObject);
begin
  FCompAdm := tFCompAdm.create(application);
  try
    FCompAdm.DBLookupComboBox1.KeyValue:=ADOQAdm2.FieldValues['No_admision'];
    FCompAdm.DBEdit2.Text := 'A';
    FCompAdm.show;
    FCompAdm.Button1Click(Nil);
    FCompAdm.Close;
  except
    FCompAdm.free;
  end;
  //DBGrid1.SetFocus;
end;

procedure TfrmProcAdmision.BitBtn10Click(Sender: TObject);
begin
  frmingresopacientes := tfrmingresopacientes.create(application);
  if QryAdmisiones.RecordCount > 0 then
  Begin
    frmingresopacientes.DBLookupComboBox4.KeyValue := QryAdmisiones.FieldValues['Tp_Ident_Usuar'];
    frmingresopacientes.Edit1.Text := QryAdmisiones.FieldValues['Nr_Ident_Usuar'];
  end;  
  try
    Datamodule1.MuestraconAcceso(frmingresopacientes);
  except
    frmingresopacientes.free;
  end;
end;

procedure TfrmProcAdmision.BitBtn9Click(Sender: TObject);
begin
  Edit2.Text:='';

  QryAdmisiones.Close;
  QryAdmisiones.SQL.Clear;
  QryAdmisiones.SQL.Add(' SELECT Tp_Ident_Usuar,Nr_Ident_Usuar, ');
  QryAdmisiones.SQL.Add('   Left((rtrim(PRIMER_APELLIDO)+ '+chr(39)+' '+chr(39)+ ' + ');
  QryAdmisiones.SQL.Add('   rtrim(isnull(SEGUNDO_APELLIDO,''''))+ '+chr(39)+' '+chr(39)+ '  + ');
  QryAdmisiones.SQL.Add('   rtrim(PRIMER_NOMBRE)+ '+chr(39)+' '+chr(39)+ '  + ');
  QryAdmisiones.SQL.Add('   rtrim(isnull(SEGUNDO_NOMBRE,''''))),40) as Nombre, Dir_Casa_Pacien,Tel_Casa_Pacien, ');
  QryAdmisiones.SQL.Add('   (SELECT count(No_Admision) ');
  QryAdmisiones.SQL.Add('   FROM SAAdmisiones ');
  QryAdmisiones.SQL.Add('   WHERE SAAdmisiones.Tp_Ident_Usuar = SAPacientes.Tp_Ident_Usuar AND ');
  QryAdmisiones.SQL.Add('         SAAdmisiones.Nr_Ident_Usuar = SAPacientes.Nr_Ident_Usuar AND Fec_Egreso is not null) as Tot_Admisiones_Egresadas, ');
  QryAdmisiones.SQL.Add('   (SELECT count(No_Admision) ');
  QryAdmisiones.SQL.Add('   FROM SAAdmisiones ');
  QryAdmisiones.SQL.Add('   WHERE SAAdmisiones.Tp_Ident_Usuar = SAPacientes.Tp_Ident_Usuar AND ');
  QryAdmisiones.SQL.Add('         SAAdmisiones.Nr_Ident_Usuar = SAPacientes.Nr_Ident_Usuar) as Tot_Admisiones_Activas ');
  QryAdmisiones.SQL.Add(' FROM  SAPacientes ');
  QryAdmisiones.SQL.Add(' WHERE (Nr_Ident_Usuar like '+chr(39)+'%'+Edit1.Text+'%'+chr(39)+')');
  QryAdmisiones.Open;
end;

procedure TfrmProcAdmision.BitBtn11Click(Sender: TObject);
begin
  QryAdmisiones.Close;
  QryAdmisiones.SQL.Clear;
  QryAdmisiones.SQL.Add(' SELECT Tp_Ident_Usuar,Nr_Ident_Usuar, ');
  QryAdmisiones.SQL.Add('   Left((rtrim(PRIMER_APELLIDO)+ '+chr(39)+' '+chr(39)+ ' + ');
  QryAdmisiones.SQL.Add('   rtrim(isnull(SEGUNDO_APELLIDO,''''))+ '+chr(39)+' '+chr(39)+ '  + ');
  QryAdmisiones.SQL.Add('   rtrim(PRIMER_NOMBRE)+ '+chr(39)+' '+chr(39)+ '  + ');
  QryAdmisiones.SQL.Add('   rtrim(isnull(SEGUNDO_NOMBRE,''''))),40) as Nombre, Dir_Casa_Pacien,Tel_Casa_Pacien, ');
  QryAdmisiones.SQL.Add('   (SELECT count(No_Admision) ');
  QryAdmisiones.SQL.Add('   FROM SAAdmisiones ');
  QryAdmisiones.SQL.Add('   WHERE SAAdmisiones.Tp_Ident_Usuar = SAPacientes.Tp_Ident_Usuar AND ');
  QryAdmisiones.SQL.Add('         SAAdmisiones.Nr_Ident_Usuar = SAPacientes.Nr_Ident_Usuar AND Fec_Egreso is not null) as Tot_Admisiones_Egresadas, ');
  QryAdmisiones.SQL.Add('   (SELECT count(No_Admision) ');
  QryAdmisiones.SQL.Add('   FROM SAAdmisiones ');
  QryAdmisiones.SQL.Add('   WHERE SAAdmisiones.Tp_Ident_Usuar = SAPacientes.Tp_Ident_Usuar AND ');
  QryAdmisiones.SQL.Add('         SAAdmisiones.Nr_Ident_Usuar = SAPacientes.Nr_Ident_Usuar) as Tot_Admisiones_Activas ');
  QryAdmisiones.SQL.Add(' FROM  SAPacientes ');
  QryAdmisiones.SQL.Add(' WHERE (Tp_Usuario like '+chr(39)+'%'+Edit5.Text+'%'+chr(39)+')');
  QryAdmisiones.Open;
end;

procedure TfrmProcAdmision.BitBtn12Click(Sender: TObject);
begin
  Edit1.Text:='';

  QryAdmisiones.Close;
  QryAdmisiones.SQL.Clear;
  QryAdmisiones.SQL.Add(' SELECT Tp_Ident_Usuar,Nr_Ident_Usuar, ');
  QryAdmisiones.SQL.Add('   Left((rtrim(PRIMER_APELLIDO)+ '+chr(39)+' '+chr(39)+ ' + ');
  QryAdmisiones.SQL.Add('   rtrim(isnull(SEGUNDO_APELLIDO,''''))+ '+chr(39)+' '+chr(39)+ '  + ');
  QryAdmisiones.SQL.Add('   rtrim(PRIMER_NOMBRE)+ '+chr(39)+' '+chr(39)+ '  + ');
  QryAdmisiones.SQL.Add('   rtrim(isnull(SEGUNDO_NOMBRE,''''))),40) as Nombre, Dir_Casa_Pacien,Tel_Casa_Pacien, ');
  QryAdmisiones.SQL.Add('   (SELECT count(No_Admision) ');
  QryAdmisiones.SQL.Add('   FROM SAAdmisiones ');
  QryAdmisiones.SQL.Add('   WHERE SAAdmisiones.Tp_Ident_Usuar = SAPacientes.Tp_Ident_Usuar AND ');
  QryAdmisiones.SQL.Add('         SAAdmisiones.Nr_Ident_Usuar = SAPacientes.Nr_Ident_Usuar AND Fec_Egreso is not null) as Tot_Admisiones_Egresadas, ');
  QryAdmisiones.SQL.Add('   (SELECT count(No_Admision) ');
  QryAdmisiones.SQL.Add('   FROM SAAdmisiones ');
  QryAdmisiones.SQL.Add('   WHERE SAAdmisiones.Tp_Ident_Usuar = SAPacientes.Tp_Ident_Usuar AND ');
  QryAdmisiones.SQL.Add('         SAAdmisiones.Nr_Ident_Usuar = SAPacientes.Nr_Ident_Usuar) as Tot_Admisiones_Activas ');
  QryAdmisiones.SQL.Add(' FROM  SAPacientes ');
  QryAdmisiones.SQL.Add(' WHERE (PRIMER_APELLIDO like '+chr(39)+'%'+Edit2.Text+'%'+chr(39)+')');
  QryAdmisiones.Open;

{  QryAdmisiones.SQL.Add(' (left(Est_Adminsion,1) not in (' + incst +'))');
  QryAdmisiones.SQL.Add(' ORDER BY FEC_ADMISION ');
  QryAdmisiones.Open;}
end;

procedure TfrmProcAdmision.BitBtn13Click(Sender: TObject);
begin
  QryAdmisiones.Close;
  QryAdmisiones.SQL.Clear;
  QryAdmisiones.SQL.Add(' SELECT Tp_Ident_Usuar,Nr_Ident_Usuar, ');
  QryAdmisiones.SQL.Add('   Left((rtrim(PRIMER_APELLIDO)+ '+chr(39)+' '+chr(39)+ ' + ');
  QryAdmisiones.SQL.Add('   rtrim(isnull(SEGUNDO_APELLIDO,''''))+ '+chr(39)+' '+chr(39)+ '  + ');
  QryAdmisiones.SQL.Add('   rtrim(PRIMER_NOMBRE)+ '+chr(39)+' '+chr(39)+ '  + ');
  QryAdmisiones.SQL.Add('   rtrim(isnull(SEGUNDO_NOMBRE,''''))),40) as Nombre, Dir_Casa_Pacien,Tel_Casa_Pacien, ');
  QryAdmisiones.SQL.Add('   (SELECT count(No_Admision) ');
  QryAdmisiones.SQL.Add('   FROM SAAdmisiones ');
  QryAdmisiones.SQL.Add('   WHERE SAAdmisiones.Tp_Ident_Usuar = SAPacientes.Tp_Ident_Usuar AND ');
  QryAdmisiones.SQL.Add('         SAAdmisiones.Nr_Ident_Usuar = SAPacientes.Nr_Ident_Usuar AND Fec_Egreso is not null) as Tot_Admisiones_Egresadas, ');
  QryAdmisiones.SQL.Add('   (SELECT count(No_Admision) ');
  QryAdmisiones.SQL.Add('   FROM SAAdmisiones ');
  QryAdmisiones.SQL.Add('   WHERE SAAdmisiones.Tp_Ident_Usuar = SAPacientes.Tp_Ident_Usuar AND ');
  QryAdmisiones.SQL.Add('         SAAdmisiones.Nr_Ident_Usuar = SAPacientes.Nr_Ident_Usuar) as Tot_Admisiones_Activas ');
  QryAdmisiones.SQL.Add(' FROM  SAPacientes ');
  QryAdmisiones.SQL.Add(' WHERE (Tp_Afiliado like '+chr(39)+'%'+Edit6.Text+'%'+chr(39)+')');
  QryAdmisiones.Open;
end;

procedure TfrmProcAdmision.BitBtn14Click(Sender: TObject);
begin
  FAgenda := tFAgenda.create(application);
  try
    Datamodule1.MuestraconAcceso(FAgenda);
  except
    FAgenda.free;
  end;
end;

procedure TfrmProcAdmision.BitBtn15Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'SAMedicos';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TfrmProcAdmision.BitBtn16Click(Sender: TObject);
begin
    servicios := tservicios.create(application);
  try
    Datamodule1.MuestraconAcceso(servicios);
  except
    servicios.free;
  end;
end;

procedure TfrmProcAdmision.BitBtn17Click(Sender: TObject);
begin
  FrmCrearTerceros := tFrmCrearTerceros.create(application);
  try
    Datamodule1.MuestraconAcceso(FrmCrearTerceros);
  except
    FrmCrearTerceros.free;
  end;
end;

procedure TfrmProcAdmision.BitBtn18Click(Sender: TObject);
begin
  FrmIngresoPacientes := TFrmIngresoPacientes.create(application);
  try
    Datamodule1.MuestraconAcceso(FrmIngresoPacientes);
  except
    FrmIngresoPacientes.free;
  end;
end;

procedure TfrmProcAdmision.BitBtn19Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'CITipos_Citas';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TfrmProcAdmision.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    BitBtn12Click(Self);
end;

procedure TfrmProcAdmision.EstadosCiviles2Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'COMUNES..GEEstados_Civiles';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TfrmProcAdmision.EstadosdeEgresos2Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'GEEstados';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TfrmProcAdmision.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    BitBtn9Click(Self);
end;

procedure TfrmProcAdmision.BtnBuscarClick(Sender: TObject);
begin
  QryAdmisiones.Close;
  QryAdmisiones.SQL.Clear;
  QryAdmisiones.SQL.Add(' SELECT Tp_Ident_Usuar,Nr_Ident_Usuar, ');
  QryAdmisiones.SQL.Add('   Left((rtrim(PRIMER_APELLIDO)+ '+chr(39)+' '+chr(39)+ ' + ');
  QryAdmisiones.SQL.Add('   rtrim(isnull(SEGUNDO_APELLIDO,''''))+ '+chr(39)+' '+chr(39)+ '  + ');
  QryAdmisiones.SQL.Add('   rtrim(PRIMER_NOMBRE)+ '+chr(39)+' '+chr(39)+ '  + ');
  QryAdmisiones.SQL.Add('   rtrim(isnull(SEGUNDO_NOMBRE,''''))),40) as Nombre, Dir_Casa_Pacien,Tel_Casa_Pacien, ');
  QryAdmisiones.SQL.Add('   (SELECT count(No_Admision) ');
  QryAdmisiones.SQL.Add('   FROM SAAdmisiones ');
  QryAdmisiones.SQL.Add('   WHERE SAAdmisiones.Tp_Ident_Usuar = SAPacientes.Tp_Ident_Usuar AND ');
  QryAdmisiones.SQL.Add('         SAAdmisiones.Nr_Ident_Usuar = SAPacientes.Nr_Ident_Usuar AND Fec_Egreso is not null) as Tot_Admisiones_Egresadas, ');
  QryAdmisiones.SQL.Add('   (SELECT count(No_Admision) ');
  QryAdmisiones.SQL.Add('   FROM SAAdmisiones ');
  QryAdmisiones.SQL.Add('   WHERE SAAdmisiones.Tp_Ident_Usuar = SAPacientes.Tp_Ident_Usuar AND ');
  QryAdmisiones.SQL.Add('         SAAdmisiones.Nr_Ident_Usuar = SAPacientes.Nr_Ident_Usuar) as Tot_Admisiones_Activas ');
  QryAdmisiones.SQL.Add(' FROM  SAPacientes ');
  QryAdmisiones.SQL.Add(' WHERE (PRIMER_APELLIDO like '+chr(39)+'%'+Edit3.Text+'%'+chr(39)+') AND');
  QryAdmisiones.SQL.Add('       (SEGUNDO_APELLIDO like '+chr(39)+'%'+Edit4.Text+'%'+chr(39)+')');
  QryAdmisiones.Open;
end;

procedure TfrmProcAdmision.Ciudad2Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'COMUNES..GEMunicipios';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TfrmProcAdmision.BitBtn30Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'SATituloICups';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TfrmProcAdmision.BitBtn31Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'SATituloIICups';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TfrmProcAdmision.BitBtn32Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'GEASeguradoras';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TfrmProcAdmision.BitBtn3Click(Sender: TObject);
begin
  FAnulaAdmi := tFAnulaAdmi.create(application);
  try
    FAnulaAdmi.ADOQuery1.Close;
    FAnulaAdmi.ADOQuery1.Parameters.ParamValues['adm'] := ADOQAdm2.FieldValues['No_Admision'];
    FAnulaAdmi.ADOQuery1.Open;

    FAnulaAdmi.DBLookupComboBox1.KeyValue := ADOQAdm2.FieldValues['No_Admision'];
    FAnulaAdmi.Show;
  except
    FAnulaAdmi.free;
  end;
end;

end.

