unit fCitaDlg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDialog, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl, cxContainer,
  cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxMemo, cxDropDownEdit, cxCalendar,
  cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxLayoutcxEditAdapters, cxLabel, Vcl.ImgList, cxRichEdit, DateUtils,
  uADStanIntf, uADStanOption, uADStanParam, uADStanError, uADDatSManager,
  uADPhysIntf, uADDAptIntf, uADStanAsync, uADDAptManager, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxDBEditRepository, cxEditRepositoryItems,
  uADCompClient, uADCompDataSet, cxSpinEdit, cxTimeEdit;

type
  TfrmCitaDlg = class(TdlgBase)
    cmbbxHora: TcxLookupComboBox;
    cmbbxProf: TcxLookupComboBox;
    edtFechaCita: TcxDateEdit;
    mmObservaciones: TcxMemo;
    lytitmProf: TdxLayoutItem;
    lytitmTipoCita: TdxLayoutItem;
    cmbbxTipoCita: TcxLookupComboBox;
    lytitmFecha: TdxLayoutItem;
    lytitmHora: TdxLayoutItem;
    lytctrlDlgSpaceItem2: TdxLayoutEmptySpaceItem;
    lytgrpFechaHora: TdxLayoutGroup;
    lytitmObs: TdxLayoutItem;
    lblPaciente: TcxLabel;
    lytitmDatosPaciente: TdxLayoutItem;
    lytctrlDlgSeparatorItem1: TdxLayoutSeparatorItem;
    cmbbxTipoConsulta: TcxLookupComboBox;
    lytitmTipoConsulta: TdxLayoutItem;
    lytgrpTipo: TdxLayoutGroup;
    lytitmAseguradora: TdxLayoutItem;
    lytgrpProfAseg: TdxLayoutGroup;
    cmbbxAseguradora: TcxLookupComboBox;
    dsHorasDisp: TDataSource;
    QryHorasDisp: TADQuery;
    cxEditRepository1: TcxEditRepository;
    rpitmTime: TcxEditRepositoryTimeItem;
    rpitmMemo: TcxEditRepositoryBlobItem;
    rpitmHoras: TcxEditRepositoryLookupComboBoxItem;
    cxGridViewRepository1: TcxGridViewRepository;
    tvHorasDisp: TcxGridDBTableView;
    tvHorasDispHora: TcxGridDBColumn;
    btnHoras: TcxButton;
    lytbtnHora: TdxLayoutItem;
    cmbbxMotivo: TcxLookupComboBox;
    lytitmMotivo: TdxLayoutItem;
    lytgrpObs: TdxLayoutGroup;
    QryMotivo: TADQuery;
    dsMotivo: TDataSource;
    adCommand: TADCommand;
    tblCita: TADTable;
    tblCitaID: TADAutoIncField;
    tblCitaTipoCitaID: TIntegerField;
    tblCitaTipoConsultaID: TIntegerField;
    tblCitaFechaHora: TSQLTimeStampField;
    tblCitaFechaHoraReal: TSQLTimeStampField;
    tblCitaDuracionReal: TIntegerField;
    tblCitaPacienteID: TIntegerField;
    tblCitaProfesionalID: TIntegerField;
    tblCitaObservaciones: TStringField;
    tblCitaEstadoCitaID: TIntegerField;
    tblCitaUsuarioID: TIntegerField;
    tblCitaTurno: TIntegerField;
    tblCitaMotivo: TStringField;
    dsCita: TDataSource;
    lytitmHoraActual: TdxLayoutItem;
    tmedtHora: TcxTimeEdit;
    cmdAccion: TADCommand;
    procedure btnHorasClick(Sender: TObject);
    procedure cmbbxHoraEnter(Sender: TObject);
    procedure cmbbxHoraPropertiesChange(Sender: TObject);
    procedure edtFechaCitaPropertiesChange(Sender: TObject);
    procedure cmbbxProfPropertiesChange(Sender: TObject);
    procedure cmbbxTipoCitaPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbbxMotivoPropertiesChange(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure mmObservacionesPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbbxTipoConsultaPropertiesChange(Sender: TObject);
    procedure cmbbxAseguradoraPropertiesChange(Sender: TObject);
    procedure cmbbxTipoConsultaExit(Sender: TObject);
    procedure cmbbxAseguradoraExit(Sender: TObject);
    procedure cmbbxProfExit(Sender: TObject);
    procedure cmbbxTipoCitaExit(Sender: TObject);
    procedure cmbbxHoraExit(Sender: TObject);
    procedure edtFechaCitaExit(Sender: TObject);
  private
    FObservaciones: string;
    FHora: TTime;
    FUsuarioID: integer;
    FProfesionalID: integer;
    FFecha: TDate;
    FID: integer;
    FFechaHora: TDatetime;
    FMotivoID: integer;
    FPacienteID: integer;
    FTipoConsultaID: integer;
    FTipoCitaID: integer;
    FEstadoCitaID: integer;
    FAccion: integer;
    FDatosPaciente: string;
    FAseguradoraID: integer;
    FTurno: integer;
    FFechaHoraInicial: TDateTime;
    procedure SetEstadoCitaID(const Value: integer);
    procedure SetFecha(const Value: TDate);
    procedure SetFechaHora(const Value: TDatetime);
    procedure SetHora(const Value: TTime);
    procedure SetID(const Value: integer);
    procedure SetMotivoID(const Value: integer);
    procedure SetObservaciones(const Value: string);
    procedure SetPacienteID(const Value: integer);
    procedure SetProfesionalID(const Value: integer);
    procedure SetTipoCitaID(const Value: integer);
    procedure SetTipoConsultaID(const Value: integer);
    procedure SetUsuarioID(const Value: integer);
    procedure SetAccion(const Value: integer);
    procedure SetDatosPaciente(const Value: string);
    procedure LlenaHoras (FechaHoraInicial:TDateTime);
    procedure PreparaAccion(Accion: integer);
    procedure SetAseguradoraID(const Value: integer);
    procedure SetTurno(const Value: integer);
    procedure SetFechaHoraInicial(const Value: TDateTime);
    { Private declarations }
  public
    { Public declarations }

    property Accion: integer read FAccion write SetAccion;
    property ID: integer read FID write SetID;
    property TipoCitaID: integer read FTipoCitaID write SetTipoCitaID;
    property TipoConsultaID: integer read FTipoConsultaID write SetTipoConsultaID;
    property FechaHora: TDatetime read FFechaHora write SetFechaHora;
    property FechaHoraInicial: TDateTime read FFechaHoraInicial write SetFechaHoraInicial;
    property Fecha: TDate read FFecha write SetFecha;
    property Hora: TTime read FHora write SetHora;
    property PacienteID: integer read FPacienteID write SetPacienteID;
    property DatosPaciente: string read FDatosPaciente write SetDatosPaciente;
    property ProfesionalID: integer read FProfesionalID write SetProfesionalID;
    property Observaciones: string read FObservaciones write SetObservaciones;
    property EstadoCitaID: integer read FEstadoCitaID write SetEstadoCitaID;
    property UsuarioID: integer read FUsuarioID write SetUsuarioID;
    property Turno: integer read FTurno write SetTurno;
    property MotivoID: integer read FMotivoID write SetMotivoID;
    property AseguradoraID: integer read FAseguradoraID write SetAseguradoraID;
  end;

var
  frmCitaDlg: TfrmCitaDlg;

implementation

{$R *.dfm}

uses dGIPSci, dcomun, fCitas;

{ TfrmCitaDlg }

procedure TfrmCitaDlg.btnAceptarClick(Sender: TObject);

begin
  inherited;
  try

   with cmdAccion do
      begin
          params[0].AsInteger:=FAccion;
          params[10].AsInteger:=FUsuarioID;
          case FAccion of
            acEditar:     begin
                            params[1].AsInteger:=FID;
                            params[6].AsInteger:=FTipoConsultaID;
                            params[7].AsInteger:=FAseguradoraID;
                            params[9].AsString:=FObservaciones;
                          end;
            acProgramar: begin
                            params[1].AsInteger:=0;
                            params[2].AsDateTime:= FFecha+FHora;
                            params[3].AsInteger:=FPacienteID;
                            params[4].AsInteger:=FProfesionalID;
                            params[5].AsInteger:=FTipoCitaID;
                            params[6].AsInteger:=FTipoConsultaID;
                            params[7].AsInteger:=FAseguradoraID;
                            params[9].AsString:=FObservaciones;
                          end;
             acReprogramar: begin
                            params[1].AsInteger:=FID;
                            params[2].AsDateTime:= FFecha+FHora;
                            params[4].AsInteger:=FProfesionalID;
                            params[7].AsInteger:=FAseguradoraID;
                            params[8].AsInteger:=FMotivoID;
                            params[9].AsString:=FObservaciones;
                           end;
             acNoAtender,acCancelar:
                          begin
                            params[1].AsInteger:=FID;
                            params[8].AsInteger:=FMotivoID;
                            params[9].AsString:=FObservaciones;
                          end;
          end;
          Execute();
      end;

  finally
   // frmCitas.btvCitas.DataController.RefreshExternalData;
    close;
  end;
end;

procedure TfrmCitaDlg.btnHorasClick(Sender: TObject);
var
 QueryHora: TADQuery;
 XFecha: TDateTime;
begin
  inherited;

  if (cmbbxProf.itemindex=-1)  or (cmbbxTipoCita.itemindex=-1) then
  begin
    MessageBox(0, 'Se requieren los datos de Tipo de Cita y Profesional que la atiende.'+chr(13)+'Por favor diligencie  la información faltante e intente de nuevo.', 'Advertencia', MB_ICONWARNING or MB_OK);
    exit;
  end;

QueryHora:=TADQuery.Create(self);
QueryHora.Connection:=dmGipsci.connGIPS;

with QueryHora  do
  Try

    xFecha:=Now;
    SQL.Add('Select dbo.ProximoDisponible(:PFecha,:PTipoCitaID,:PProfesionalID,:PPacienteID) as ProximoTurno');

    Params[0].AsDatetime:=XFecha;
    Params[1].AsInteger:=FTipoCitaID;
    Params[2].AsInteger:=FProfesionalID;
    Params[3].AsInteger:=FPacienteID;
    Open();
    XFecha:= FieldByName('ProximoTurno').AsDateTime;
  //Llena los componentes con los valores de fecha
    edtFechaCita.Date:= Xfecha;
    edtFechaCita.Repaint;
    LlenaHoras(XFecha);

  Finally
    Close;
    Free;
  End;

end;

procedure TfrmCitaDlg.cmbbxAseguradoraExit(Sender: TObject);
begin
  inherited;
   FAseguradoraID:=cmbbxAseguradora.EditValue;
end;

procedure TfrmCitaDlg.cmbbxAseguradoraPropertiesChange(Sender: TObject);
begin
  inherited;

  if FAccion=1 then
    btnAceptar.Enabled:=true;
end;

procedure TfrmCitaDlg.cmbbxHoraEnter(Sender: TObject);
begin
  inherited;
  LlenaHoras(FFecha);
end;

procedure TfrmCitaDlg.cmbbxHoraExit(Sender: TObject);
begin
  inherited;
  FHora:=cmbbxHora.EditValue;
end;

procedure TfrmCitaDlg.cmbbxHoraPropertiesChange(Sender: TObject);
begin
  inherited;
    if cmbbxHora.ItemIndex > -1 then
      btnAceptar.Enabled:=true;
end;

procedure TfrmCitaDlg.cmbbxMotivoPropertiesChange(Sender: TObject);
begin
  inherited;
 if ((FAccion = 3) or (FAccion = 4) )and (cmbbxMotivo.ItemIndex > -1 ) then
  btnAceptar.Enabled:=true;
 if FMotivoID <> cmbbxMotivo.EditValue then
    FMotivoID := cmbbxMotivo.EditValue;

end;

procedure TfrmCitaDlg.cmbbxProfExit(Sender: TObject);
begin
  inherited;
   FProfesionalID:=cmbbxProf.EditValue;
   if FAccion=0 then
    LlenaHoras(Date)
   else
    LlenaHoras(FFecha);
end;

procedure TfrmCitaDlg.cmbbxProfPropertiesChange(Sender: TObject);
begin
  inherited;
  FProfesionalID:=cmbbxProf.EditValue;
  LlenaHoras(FFecha);
end;

procedure TfrmCitaDlg.cmbbxTipoCitaExit(Sender: TObject);
begin
  inherited;
   FTipoCitaID:=cmbbxTipoCita.EditValue;
   if FAccion=0 then
    LlenaHoras(Date)
   else
    LlenaHoras(FFecha);
end;

procedure TfrmCitaDlg.cmbbxTipoCitaPropertiesChange(Sender: TObject);
begin
  inherited;
  FTipoCitaID:=cmbbxTipoCita.EditValue;
  LlenaHoras(FFecha);
end;

procedure TfrmCitaDlg.cmbbxTipoConsultaExit(Sender: TObject);
begin
  inherited;
  FTipoConsultaID:=cmbbxTipoConsulta.EditValue;
end;

procedure TfrmCitaDlg.cmbbxTipoConsultaPropertiesChange(Sender: TObject);
begin
  inherited;

  if FAccion=1 then
    btnAceptar.Enabled:=true;
end;

procedure TfrmCitaDlg.edtFechaCitaExit(Sender: TObject);
begin
  inherited;
  FFecha:=edtFechaCita.EditValue;
  LlenaHoras(FFecha);
end;

procedure TfrmCitaDlg.edtFechaCitaPropertiesChange(Sender: TObject);
begin
  inherited;
  FFecha:=edtFechaCita.EditValue;

end;

procedure TfrmCitaDlg.FormCreate(Sender: TObject);
begin
  inherited;
    //inicializar variables privadas
  FProfesionalID:=0;
  FTipoCitaID:=0;
  FPacienteID:=0;
  FTipoConsultaID:=0;
  FAseguradoraID:=0;
  FMotivoID:=0;
  FObservaciones:='';
  FFecha:=Date;
  // Abrir tablas de lookup si estan cerradas
  if not dmGipsCi.tblTipoCita.Active then  dmGipsCi.tblTipoCita.Open();
  if not dmGipsCi.tblTipoConsulta.Active then dmGipsCi.tblTipoConsulta.Open();
  if not dmGipsCi.tblProf.Active then  dmGipsCi.tblProf.Open();
  if not dmGipsCi.tblAseguradora.Active then  dmGipsCi.tblAseguradora.Open();
end;

procedure TfrmCitaDlg.FormShow(Sender: TObject);
begin
  inherited;
 case FAccion of
  acProgramar: cmbbxTipoCita.SetFocus;
  acEditar: cmbbxTipoConsulta.SetFocus;
  acReprogramar: cmbbxProf.SetFocus;
  acNoAtender,acCancelar:  cmbbxMotivo.SetFocus;
 end;
end;


procedure TfrmCitaDlg.LlenaHoras(FechaHoraInicial: TDateTime);
begin
   if (FProfesionalID >0) and (FTipoCitaID>0)  then
    try
        cmbbxHora.Enabled:=true;
        if qryHorasDisp.Active  then qryHorasDisp.Close;
        qryHorasDisp.Params[0].AsDateTime:=FechaHoraInicial;
        qryHorasDisp.Params[1].AsInteger:=FTipoCitaID;
        qryHorasDisp.Params[2].AsInteger:=FProfesionalID;
        qryHorasDisp.Params[3].AsInteger:=FPacienteID;
        qryHorasDisp.open;
        cmbbxHora.Repaint;
          if not qryHorasDisp.eof then
                 cmbbxHora.ItemIndex:=0;


        btnHoras.Enabled:=true;
    except
    end;

end;

procedure TfrmCitaDlg.mmObservacionesPropertiesChange(Sender: TObject);
begin
  inherited;
  if FAccion=acEditar then
    btnAceptar.Enabled:=true;
    FObservaciones:=mmObservaciones.Text;
end;

procedure TfrmCitaDlg.PreparaAccion(Accion: integer);
var
  SQL: string;
begin
  case Accion of
      acProgramar : begin
                      lblHeader.Caption := 'Nueva Cita';
                      cmbbxMotivo.ItemIndex:=-1;
                      lytitmHeader.CaptionOptions.ImageIndex:=25;
                      lytitmMotivo.Visible:=false;
                      lytitmHoraActual.Visible:=false;
                      FObservaciones:='';
                      exit;
                    end;
      acEditar  :   begin
                      lblHeader.Caption:= 'Edición de la Cita';
                      cmbbxMotivo.ItemIndex:=-1;
                      lytitmHeader.CaptionOptions.ImageIndex:=28;
                      lytitmMotivo.Visible:=false;
                      lytitmTipoCita.Enabled:=false;
                      lytitmProf.Enabled:=false;
                      lytgrpFechaHora.Enabled:=false;
                      lytitmHora.Visible:=false;
                      lytbtnHora.Visible:=false;
                      lytitmHoraActual.Visible:=true;
                      //mmObservaciones.SetFocus;
                      exit;
                    end;
    acReprogramar : begin
                      lblHeader.Caption := 'Reprogramar Cita';
                      SQL:='CausaReprogramacion';
                      lytgrpTipo.Enabled:=false;
                      lytitmHeader.CaptionOptions.ImageIndex:=21;
                    end;
    acNoAtender :   begin
                      lblHeader.Caption := 'Cita No Atendida';
                      SQL:='CausaNoAtencion';
                      lytitmHeader.CaptionOptions.ImageIndex:=27;
                      lytgrpTipo.Enabled:=false;
                      lytgrpProfAseg.Enabled:=false;
                      lytgrpFechaHora.Enabled:=false;
                      lytitmHora.Visible:=false;
                      lytbtnHora.Visible:=false;
                      //cmbbxMotivo.SetFocus;
                    end;
    acCancelar :    begin
                      lblHeader.Caption := 'Cancelar Cita';
                      SQL:='CausaCancelacion';
                      lytitmHeader.CaptionOptions.ImageIndex:=26;
                      lytgrpTipo.Enabled:=false;
                      lytgrpProfAseg.Enabled:=false;
                      lytgrpFechaHora.Enabled:=false;
                      lytitmHora.Visible:=false;
                      lytbtnHora.Visible:=false;
                      //cmbbxMotivo.SetFocus;
                    end;
  end; //case action of
  lytitmHoraActual.Visible:=  not lytitmHora.Visible;
  lytitmMotivo.Visible:=true;
  if QryMotivo.Active then QryMotivo.Close;
  qryMotivo.SQL.Clear;
  qryMotivo.SQL.Add('Select ID,Descripcion from '+SQL);
  qryMotivo.Open();
end;

procedure TfrmCitaDlg.SetAccion(const Value: integer);
begin
  FAccion := Value;
  PreparaAccion(FAccion);

end;

procedure TfrmCitaDlg.SetAseguradoraID(const Value: integer);
begin
  FAseguradoraID := Value;
   if cmbbxAseguradora.EditValue<> FAseguradoraID then
    cmbbxAseguradora.EditValue:=FAseguradoraID;
end;

procedure TfrmCitaDlg.SetDatosPaciente(const Value: string);
begin
  FDatosPaciente := Value;
  lblPaciente.Caption:=FDatosPaciente;
end;




procedure TfrmCitaDlg.SetEstadoCitaID(const Value: integer);
begin
  FEstadoCitaID := Value;
end;

procedure TfrmCitaDlg.SetFecha(const Value: TDate);
 var
  OutDateTime: TcxDateEdit;
begin
  FFecha := Value;
  edtFechaCita.EditValue := FFecha;
  if FFecha <> Dateof(FFechaHora) then
    begin
      OutDateTime:= tcxDateEdit.Create(self);
      OutDateTime.EditValue:=FFecha+Fhora;
      FFechaHora:=OutDateTime.Date;
    end;
end;

procedure TfrmCitaDlg.SetFechaHora(const Value: TDatetime);
begin
  FFechaHora := Value;
  if FFecha <> Dateof(FFechaHora) then
    FFecha :=FFechaHora;
    if FHora <> Timeof(FFechaHora) then
    FHora :=Timeof(FFechaHora);
end;

procedure TfrmCitaDlg.SetFechaHoraInicial(const Value: TDateTime);
begin
  FFechaHoraInicial := Value;
end;

procedure TfrmCitaDlg.SetHora(const Value: TTime);
begin
  FHora := Value;
  tmedtHora.EditValue:=FHora;
  if FHora <> Timeof(FFechaHora) then
      FFechaHora:=FFecha+Fhora;
end;

procedure TfrmCitaDlg.SetID(const Value: integer);
begin
  FID := Value;
end;

procedure TfrmCitaDlg.SetMotivoID(const Value: integer);
begin
  FMotivoID := Value;
 // if FMotivoID <>cmbbxMotivo.EditValue then
  //    cmbbxMotivo.EditValue:=FmotivoID;
end;

procedure TfrmCitaDlg.SetObservaciones(const Value: string);
begin
  FObservaciones := Value;
  if mmObservaciones.Text <> FObservaciones then
    mmObservaciones.Text := FObservaciones

end;

procedure TfrmCitaDlg.SetPacienteID(const Value: integer);
begin
  FPacienteID := Value;
end;

procedure TfrmCitaDlg.SetProfesionalID(const Value: integer);
begin
  FProfesionalID := Value;
  if cmbbxProf.EditValue<> FProfesionalID then
    cmbbxProf.EditValue:=FProfesionalID;
end;

procedure TfrmCitaDlg.SetTipoCitaID(const Value: integer);
begin
  FTipoCitaID := Value;
  if cmbbxTipoCita.EditValue<> FTipoCitaID then
    cmbbxTipoCita.EditValue:=FTipoCitaID;
end;

procedure TfrmCitaDlg.SetTipoConsultaID(const Value: integer);
begin
  FTipoConsultaID := Value;
  if cmbbxTipoConsulta.EditValue<> FTipoConsultaID then
    cmbbxTipoConsulta.EditValue:=FTipoConsultaID;
end;


procedure TfrmCitaDlg.SetTurno(const Value: integer);
begin
  FTurno := Value;
end;

procedure TfrmCitaDlg.SetUsuarioID(const Value: integer);
begin
  FUsuarioID := Value;
end;

end.
