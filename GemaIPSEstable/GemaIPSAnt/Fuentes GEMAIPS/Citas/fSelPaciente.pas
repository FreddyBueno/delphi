unit fSelPaciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fDlgBase, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit,
  uADStanIntf, uADStanOption, uADStanParam, uADStanError, uADDatSManager,
  uADPhysIntf, uADDAptIntf, uADStanAsync, uADDAptManager, cxPC, Data.DB,
  uADCompDataSet, uADCompClient, cxLabel, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, Vcl.Buttons, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxCalendar, cxDBEdit,
  cxGroupBox, cxSpinEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxDBLookupComboBox,
  cxTimeEdit, cxMemo, cxBlobEdit, cxImage, cxGridLevel, Vcl.ImgList,jpeg,
  cxEditRepositoryItems, cxDBEditRepository, cxDBLabel,dateUtils,
  cxGridBandedTableView, cxGridDBBandedTableView, dxLayoutContainer,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutControl, objCita,
  cxGridCustomPopupMenu, cxGridPopupMenu;

type
  TfrmSelPaciente = class(TForm)
    tblAGCita: TADTable;
    tblAGCitaID: TADAutoIncField;
    tblAGCitaTipoCitaID: TIntegerField;
    tblAGCitaTipoConsultaID: TIntegerField;
    tblAGCitaFechaHora: TSQLTimeStampField;
    tblAGCitaFechaHoraReal: TSQLTimeStampField;
    tblAGCitaDuracionReal: TIntegerField;
    tblAGCitaPacienteID: TIntegerField;
    tblAGCitaProfesionalID: TIntegerField;
    tblAGCitaObservaciones: TStringField;
    tblAGCitaEstadoCitaID: TIntegerField;
    tblAGCitaUsuarioID: TIntegerField;
    tblAGCitaTurno: TIntegerField;
    tblAGCitaMotivo: TStringField;
    dsPaciente: TDataSource;
    qryPaciente: TADQuery;
    cxGridViewRepository1: TcxGridViewRepository;
    tvPacientes: TcxGridDBTableView;
    tvPacientesID: TcxGridDBColumn;
    tvPacientesDocID: TcxGridDBColumn;
    tvPacientesPaciente: TcxGridDBColumn;
    qryPacienteID: TIntegerField;
    qryPacienteTipoDocID: TStringField;
    qryPacienteDocID: TStringField;
    qryPacientePaciente: TStringField;
    qryPacienteFechaNacimiento: TSQLTimeStampField;
    qryPacienteSexo: TStringField;
    qryPacienteTelResidencia: TStringField;
    qryPacienteTelTrabajo: TStringField;
    qryPacienteResponsable: TStringField;
    qryPacienteTelCasaResp: TStringField;
    qryPacienteNITAseguradora: TStringField;
    qryPacienteNombreAseguradora: TStringField;
    qryPacienteEdad: TIntegerField;
    cmbbxPaciente: TcxExtLookupComboBox;
    cmbbxDocID: TcxExtLookupComboBox;
    edtFechaNac: TcxDBDateEdit;
    edtTelCasaPac: TcxDBTextEdit;
    edtTelTrabajoPac: TcxDBTextEdit;
    qryPacienteFoto: TBlobField;
    cxEditRepository1: TcxEditRepository;
    rpitmTime: TcxEditRepositoryTimeItem;
    btnHuella: TcxButton;
    btnNuevo: TcxButton;
    dbimgFoto: TcxImage;
    edtPacienteID: TcxDBTextEdit;
    cmbbxSexo: TcxDBLookupComboBox;
    rpitmSexo: TcxEditRepositoryLookupComboBoxItem;
    edtPaciente: TcxDBLabel;
    edtNitAseguradora: TcxDBLabel;
    edtAseguradora: TcxDBLabel;
    edtEdad: TcxDBLabel;
    cmbbxZona: TcxDBLookupComboBox;
    qryPacienteZona: TStringField;
    rpitmMemo: TcxEditRepositoryBlobItem;
    rpitmHoras: TcxEditRepositoryLookupComboBoxItem;
    lblMensaje: TcxLabel;
    imgListDlg32: TcxImageList;
    gridCita: TcxGrid;
    lvCita: TcxGridLevel;
    qryAGCita: TADQuery;
    dsCita: TDataSource;
    btvCitaPac: TcxGridDBBandedTableView;
    qryAGCitaID: TIntegerField;
    qryAGCitaFecha: TDateField;
    qryAGCitaHora: TTimeField;
    qryAGCitaFechaHora: TSQLTimeStampField;
    qryAGCitaDuracionPrevista: TIntegerField;
    qryAGCitaFechaHoraReal: TSQLTimeStampField;
    qryAGCitaDuracionReal: TIntegerField;
    qryAGCitaFechaFinReal: TSQLTimeStampField;
    qryAGCitaTipoCitaID: TIntegerField;
    qryAGCitaTipoCita: TStringField;
    qryAGCitaTipoConsultaID: TIntegerField;
    qryAGCitaTipoConsulta: TStringField;
    qryAGCitaPacienteID: TIntegerField;
    qryAGCitaProfesionalID: TIntegerField;
    qryAGCitaDocIDProf: TStringField;
    qryAGCitaProfesional: TStringField;
    qryAGCitaEstadoCitaID: TIntegerField;
    qryAGCitaEstadoCita: TStringField;
    qryAGCitaTurno: TIntegerField;
    qryAGCitaObservaciones: TStringField;
    qryAGCitaMotivoID: TIntegerField;
    qryAGCitaAseguradoraID: TIntegerField;
    btvCitaPacID1: TcxGridDBBandedColumn;
    btvCitaPacFecha1: TcxGridDBBandedColumn;
    btvCitaPacHora1: TcxGridDBBandedColumn;
    btvCitaPacDuracionPrevista1: TcxGridDBBandedColumn;
    btvCitaPacFechaHoraReal1: TcxGridDBBandedColumn;
    btvCitaPacDuracionReal1: TcxGridDBBandedColumn;
    btvCitaPacFechaFinReal1: TcxGridDBBandedColumn;
    btvCitaPacTipoCita1: TcxGridDBBandedColumn;
    btvCitaPacTipoConsulta1: TcxGridDBBandedColumn;
    btvCitaPacProfesional1: TcxGridDBBandedColumn;
    btvCitaPacEstadoCitaID1: TcxGridDBBandedColumn;
    btvCitaPacTurno1: TcxGridDBBandedColumn;
    btvCitaPacObservaciones1: TcxGridDBBandedColumn;
    btvCitaPacMotivoID1: TcxGridDBBandedColumn;
    btvCitaPacAseguradoraID1: TcxGridDBBandedColumn;
    qryAGCitaLlegada: TSQLTimeStampField;
    qryAGCitaRetardo: TIntegerField;
    qryAGCitaDocIDPaciente: TStringField;
    qryAGCitaPaciente: TStringField;
    btvCitaPacLlegada1: TcxGridDBBandedColumn;
    btvCitaPacRetardo1: TcxGridDBBandedColumn;
    lytctrlSelPacGroup_Root: TdxLayoutGroup;
    lytctrlSelPac: TdxLayoutControl;
    lytgrdCita: TdxLayoutItem;
    lytitmBuscarDocID: TdxLayoutItem;
    lytitmBuscarNombre: TdxLayoutItem;
    lytitmHuella: TdxLayoutItem;
    lytgrpTraerPac: TdxLayoutGroup;
    lytgrpBuscarPac: TdxLayoutGroup;
    lytitmNuevoPac: TdxLayoutItem;
    lytitmTipoDocID: TdxLayoutItem;
    edtTipoDocID: TcxDBLabel;
    lytitmDocID: TdxLayoutItem;
    edtDocID: TcxDBLabel;
    lytgrpDocID: TdxLayoutGroup;
    lytitmPaciente: TdxLayoutItem;
    lytitmID: TdxLayoutItem;
    lytgrpPaciente: TdxLayoutGroup;
    lytSeparatorDatos: TdxLayoutSeparatorItem;
    lytSeparatorGrd: TdxLayoutSeparatorItem;
    lytgrpPacIzqSup: TdxLayoutGroup;
    lytitmTelTrabajo: TdxLayoutItem;
    lytitmTelCasa: TdxLayoutItem;
    lytitmEdad: TdxLayoutItem;
    lytitmZona: TdxLayoutItem;
    lytitmSexo: TdxLayoutItem;
    lytitmFechaNac: TdxLayoutItem;
    lytitmFoto: TdxLayoutItem;
    lytitmAseguradora: TdxLayoutItem;
    lytitmNitAseg: TdxLayoutItem;
    lytgrpPacIzqInf: TdxLayoutGroup;
    lytgrpResponsable: TdxLayoutGroup;
    lytgrpPacIzq: TdxLayoutGroup;
    lytgrpDatosPac: TdxLayoutGroup;
    lytgrpAseguradora: TdxLayoutGroup;
    lytgrpZonaTels: TdxLayoutGroup;
    lytSeparatorNuevo: TdxLayoutSeparatorItem;
    grpNuevoPac: TdxLayoutGroup;
    lytlblMensaje: TdxLayoutItem;
    lytbtnNuevaCita: TdxLayoutItem;
    lytctrlSelPacItem3: TdxLayoutItem;
    lytctrlSelPacItem4: TdxLayoutItem;
    lytgrpBottom: TdxLayoutGroup;
    edtResponsable: TcxDBLabel;
    lytctrlSelPacItem1: TdxLayoutItem;
    edtTelResp: TcxDBLabel;
    lytctrlSelPacItem2: TdxLayoutItem;
    qryAGCitaDemora: TIntegerField;
    btvCitaPacDemora1: TcxGridDBBandedColumn;
    SaveDialog1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    Exportartodo1: TMenuItem;
    explstXLS: TMenuItem;
    explstXLSX: TMenuItem;
    explstHTML: TMenuItem;
    explstXML: TMenuItem;
    explstTXT: TMenuItem;
    Exportarseleccin1: TMenuItem;
    expselXLS: TMenuItem;
    expselXLSX: TMenuItem;
    expselHTML: TMenuItem;
    expselXML: TMenuItem;
    expselTXT: TMenuItem;
    Copiartodoalapizarra1: TMenuItem;
    Copiarseleccinalapizarra1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure cmbbxPacientePropertiesChange(Sender: TObject);
    procedure cmbbxDocIDPropertiesChange(Sender: TObject);
    procedure cmbbxDocIDEnter(Sender: TObject);
    procedure cmbbxPacienteEnter(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnHuellaClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnNuevaCitaClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure explstXLSClick(Sender: TObject);
    procedure explstXLSXClick(Sender: TObject);
    procedure explstHTMLClick(Sender: TObject);
    procedure explstXMLClick(Sender: TObject);
    procedure explstTXTClick(Sender: TObject);
    procedure expselTXTClick(Sender: TObject);
    procedure expselXLSClick(Sender: TObject);
    procedure expselXLSXClick(Sender: TObject);
    procedure expselHTMLClick(Sender: TObject);
    procedure expselXMLClick(Sender: TObject);
    procedure Copiartodoalapizarra1Click(Sender: TObject);
    procedure Copiarseleccinalapizarra1Click(Sender: TObject);

  private
    FpacienteID: integer;
     FUsuarioID: integer;
    FProfesionalID: integer;
    FFecha: TDate;

    procedure SetpacienteID(const Value: integer);

    procedure SetUsuarioID(const Value: integer);
    { Private declarations }
    procedure CargarFoto;
    procedure SetFecha(const Value: TDate);
    procedure SetProfesionalID(const Value: integer);
  public
    { Public declarations }
    property pacienteID:integer read FpacienteID write SetpacienteID;
    property UsuarioID:integer read FUsuarioID write SetUsuarioID;
    property Fecha: TDate read FFecha write SetFecha;
    property ProfesionalID: integer read FProfesionalID write SetProfesionalID;


  end;

var
  frmSelPaciente: TfrmSelPaciente;

implementation

{$R *.dfm}

uses dGIPSci,  fPaciente, fBuscarHuella, fCitas, fCitaDlg;

procedure TfrmSelPaciente.btnCancelarClick(Sender: TObject);
begin
close;
end;

procedure TfrmSelPaciente.btnGuardarClick(Sender: TObject);
begin
  inherited;

close;
end;

procedure TfrmSelPaciente.btnHuellaClick(Sender: TObject);

Var
  frmBuscarHuella: TfrmBuscarHuella;
begin
  inherited;
    Application.CreateForm(TfrmBuscarHuella, frmBuscarHuella);
   //frmBuscarHuella:= frmBuscarHuella.Create(self);
   try
    frmBuscarHuella.ShowModal;
    cmbbxDocID.EditValue:=frmBuscarHuella.DocID;
    cmbbxDocID.Refresh;
   if qryPaciente.Locate('DocID',frmBuscarHuella.DocID)then
        cmbbxDocIDPropertiesChange(nil);
   finally

   end; //finally
end;

procedure TfrmSelPaciente.btnNuevaCitaClick(Sender: TObject);

 Var
  frmCitaDlg: TfrmCitaDlg;
begin
  inherited;
   frmCitaDlg:= TfrmCitaDlg.Create(application);


   frmCitaDlg.PacienteID:=qryPaciente.FieldByName('ID').AsInteger;
   frmCitaDlg.DatosPaciente:=qryPaciente.FieldByName('Paciente').AsString;
   frmCitaDlg.Fecha:=  Dateof(FFecha);
   frmCitaDlg.FechaHora:=FFecha;
   frmCitaDlg.ProfesionalID:= FProfesionalID;
   frmCitaDlg.AseguradoraID:= 0;
   frmCitaDlg.Accion:=acProgramar;
   frmCitaDlg.UsuarioID:=FUsuarioID;
   frmCitaDlg.Show ;
   close;

end;

procedure TfrmSelPaciente.btnNuevoClick(Sender: TObject);
Var
  frmPaciente: TfrmPaciente;
begin
  inherited;
   frmPaciente:= TfrmPaciente.Create(application);
   try
  frmPaciente.Show;
   finally

   end; //finally
end;

procedure TfrmSelPaciente.CargarFoto;
var
AJPEGGraphic: TJPEGImage;
begin
  try
    try
      if (qryPaciente.FieldByName('Foto').AsString='')  then
        begin
          dbImgFoto.Clear;
          exit
        end;
        AJPEGGraphic := TJPEGImage.Create;
        AJPEGGraphic.Assign(qryPaciente.FieldByName('Foto'));
        dbimgFoto.Picture.Graphic:=AJPEGGraphic;
 //       dbimgFoto.Properties.GraphicClassName :='TJPEGImage';
     except
 //       dbimgFoto.Properties.GraphicClassName :='TBitmap';
        dbimgFoto.Picture.Bitmap.Assign(qryPaciente.FieldByName('Foto'));
    end;
   finally
     inherited;
     AJPEGGraphic.Free;

   end;  //finally

end;

procedure TfrmSelPaciente.cmbbxDocIDEnter(Sender: TObject);
begin
  inherited;
   lblMensaje.Caption:='Si no encuentra al paciente haga clic en el botón paciente nuevo para registrale.';

end;

procedure TfrmSelPaciente.cmbbxDocIDPropertiesChange(Sender: TObject);
begin
  inherited;
  cmbbxPaciente.ItemIndex:=cmbbxDocID.ItemIndex;
  lytgrpDatosPac.visible:=true;
  lytgrdCita.Visible:=true;
  lytgrpResponsable.visible:= not (edtResponsable.EditValue = '');
  if not (qryPaciente.FieldByName('Foto').AsString='')  then
    cargarfoto
  else
      dbimgFoto.Clear;
 // else



end;

procedure TfrmSelPaciente.cmbbxPacienteEnter(Sender: TObject);
begin
  inherited;
  lblMensaje.Caption:='Si no encuentra al paciente haga clic en el botón paciente nuevo para registrale.';

end;

procedure TfrmSelPaciente.cmbbxPacientePropertiesChange(Sender: TObject);
begin
  inherited;
    cmbbxDocID.ItemIndex:= cmbbxPaciente.ItemIndex;
    lytgrpDatosPac.visible:=true;
    lytgrdCita.Visible:=true;
end;


procedure TfrmSelPaciente.Copiarseleccinalapizarra1Click(Sender: TObject);
begin
  TcxCustomGridTableView(btvCitaPac).CopyToClipboard(false);
end;

procedure TfrmSelPaciente.Copiartodoalapizarra1Click(Sender: TObject);
begin
  TcxCustomGridTableView(btvCitaPac).CopyToClipboard(True);
end;

procedure TfrmSelPaciente.explstHTMLClick(Sender: TObject);
begin
    Exportar(self,gridCita,'html',true);
end;

procedure TfrmSelPaciente.explstTXTClick(Sender: TObject);
begin
   Exportar(self,gridCita,'txt',true);
end;

procedure TfrmSelPaciente.explstXLSClick(Sender: TObject);
begin
   Exportar(self,gridCita,'xls',true);
end;

procedure TfrmSelPaciente.explstXLSXClick(Sender: TObject);
begin
    Exportar(self,gridCita,'xlsx',true);
end;

procedure TfrmSelPaciente.explstXMLClick(Sender: TObject);
begin
   Exportar(self,gridCita,'xml',true);
end;

procedure TfrmSelPaciente.expselHTMLClick(Sender: TObject);
begin
   Exportar(self,gridCita,'html',false);
end;

procedure TfrmSelPaciente.expselTXTClick(Sender: TObject);
begin
     Exportar(self,gridCita,'txt',false);
end;

procedure TfrmSelPaciente.expselXLSClick(Sender: TObject);
begin
   Exportar(self,gridCita,'xls',false);
end;

procedure TfrmSelPaciente.expselXLSXClick(Sender: TObject);
begin
   Exportar(self,gridCita,'xlsx',false);
end;

procedure TfrmSelPaciente.expselXMLClick(Sender: TObject);
begin
   Exportar(self,gridCita,'xml',false);
end;

procedure TfrmSelPaciente.FormCreate(Sender: TObject);
begin
  inherited;
  //inicializar variables privadas
   FPacienteID:=0;
   FProfesionalID:=0;
   FFecha:=Date;

  if not qryPaciente.Active then   qryPaciente.open();
   if not qryAGCita.Active then   qryAGcita.open();

end;



procedure TfrmSelPaciente.SetFecha(const Value: TDate);
begin
  FFecha := Value;
end;


procedure TfrmSelPaciente.SetpacienteID(const Value: integer);
begin
  FpacienteID := Value;
end;

procedure TfrmSelPaciente.SetProfesionalID(const Value: integer);
begin
  FProfesionalID := Value;
end;

procedure TfrmSelPaciente.SetUsuarioID(const Value: integer);
begin
  FUsuarioID := Value;
end;

end.
