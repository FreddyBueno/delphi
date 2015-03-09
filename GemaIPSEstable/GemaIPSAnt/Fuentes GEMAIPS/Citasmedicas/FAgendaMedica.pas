unit FAgendaMedica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, JvComCtrls, StdCtrls, JvLabel, Grids, JvStringGrid,
  ExtCtrls, JvSplitter, mxCalendar, JvGradient, DB, ADODB, JvEdit,
  JvUpDown, Buttons, JvBitBtn, Menus, JvCheckBox, Mask,
  JvMaskEdit, JvSpin, JvButton, JvComponent, JvBalloonHint, JvBevel, JvMemo,
  JvSpeedButton, JvCombobox,dateutils,ClipBrd,Libreria_Prateinco, JvExStdCtrls,
  JvExComCtrls, JvExExtCtrls, JvExGrids, JvExMask, JvExButtons, JvExControls,
  JvTFManager, JvTFGlance, JvTFMonths;

type
  TFAgenda = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    JvLabel1: TJvLabel;
    JvSplitter1: TJvSplitter;
    JvGradient1: TJvGradient;
    Panel6: TPanel;
    JvGradient7: TJvGradient;
    QryGeneral1: TADOQuery;
    BtnNuevaC: TJvBitBtn;
    BtnCancelarC: TJvBitBtn;
    BtnReasignar: TJvBitBtn;
    PopupMenu1: TPopupMenu;
    Citasdelpaciente1: TMenuItem;
    PnlPacientes: TPanel;
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    SGCitas: TJvStringGrid;
    SGCitasP: TStringGrid;
    Panel9: TPanel;
    Label17: TLabel;
    BtnRegresar: TBitBtn;
    TabSheet5: TTabSheet;
    SGCitas1: TStringGrid;
    PageControl2: TPageControl;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    Panel8: TPanel;
    JvLabel2: TJvLabel;
    BtnAsignarCita: TJvBitBtn;
    BtnCancelarCita: TJvBitBtn;
    BtnInformacion: TJvBitBtn;
    JvSpinEdit1: TJvSpinEdit;
    ChkRepDias: TJvCheckBox;
    Panel10: TPanel;
    Label6: TLabel;
    Memo1: TMemo;
    Panel11: TPanel;
    BtnConfirmar: TJvBitBtn;
    JvBitBtn2: TJvBitBtn;
    Label8: TLabel;
    Label1: TLabel;
    PnlDetalle: TPanel;
    Mas: TImage;
    BtnModificarC: TJvBitBtn;
    JvLabel15: TJvLabel;
    JvLabel16: TJvLabel;
    JvLabel17: TJvLabel;
    JvLabel18: TJvLabel;
    JEditFechaC: TJvEdit;
    JEditHoraC: TJvEdit;
    JEditTimpoC: TJvEdit;
    JMmObserC: TJvMemo;
    JvGradient11: TJvGradient;
    JvLabel6: TJvLabel;
    JEditTipoCons: TJvEdit;
    JvLabel12: TJvLabel;
    JvLabel13: TJvLabel;
    JEditNumDocM: TJvEdit;
    JEditTipDocM: TJvEdit;
    JvLabel5: TJvLabel;
    JEditUsuarioAsigna: TJvEdit;
    QryGeneral: TADOQuery;
    Panel12: TPanel;
    JvGradient6: TJvGradient;
    JvLabel9: TJvLabel;
    CBAM: TJvComboBox;
    JvLabel10: TJvLabel;
    JvSpeedButton1: TJvSpeedButton;
    JvLabel11: TJvLabel;
    CBPM: TJvComboBox;
    JvSpeedButton2: TJvSpeedButton;
    PageControl3: TPageControl;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    JvPageControl1: TJvPageControl;
    TabSheet1: TTabSheet;
    JvGradient3: TJvGradient;
    JvLabel3: TJvLabel;
    EditDocumentoM: TJvEdit;
    BtnBuscar1: TJvBitBtn;
    TabSheet2: TTabSheet;
    JvGradient4: TJvGradient;
    JvLabel4: TJvLabel;
    EditPApellidoM: TJvEdit;
    BtnBuscar2: TJvBitBtn;
    SGMedicos: TJvStringGrid;
    Panel5: TPanel;
    JvGradient5: TJvGradient;
    CheckBox1: TRadioButton;
    ChkMedicos: TRadioButton;
    Panel13: TPanel;
    JvGradient8: TJvGradient;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    SGUbicacion: TJvStringGrid;
    QryGeneral2: TADOQuery;
    BitBtn1: TBitBtn;
    Asis: TJvBitBtn;
    NAsis: TJvBitBtn;
    mxCalendar1: TmxCalendar;
    PageControl4: TPageControl;
    TabSheet10: TTabSheet;
    Panel7: TPanel;
    Label7: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label10: TLabel;
    Label16: TLabel;
    JLblHora: TJvLabel;
    CBTiposDoc: TComboBox;
    EditNumDoc: TEdit;
    EditNombrePaciente: TEdit;
    CBTiposCitas: TComboBox;
    BtnOk: TButton;
    EditTiempo: TEdit;
    MmObservaciones: TMemo;
    JvBitBtn8: TJvBitBtn;
    Button1: TBitBtn;
    Ad1: TMenuItem;
    procedure Llenagrid;
    procedure FormShow(Sender: TObject);
    procedure LimpiaGrilla(Grilla : TJvStringGrid; Col : Integer);
    procedure BuscaMedicos;
    procedure BtnBuscar1Click(Sender: TObject);
    procedure BtnBuscar2Click(Sender: TObject);
    procedure EditDocumentoMKeyPress(Sender: TObject; var Key: Char);
    procedure EditPApellidoMKeyPress(Sender: TObject; var Key: Char);
    procedure CancelaCitas(Tiem : Integer);
    procedure SGCitasContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure  TiposCitas;
    procedure  TiposDocumentos;
    procedure BtnOkClick(Sender: TObject);
    procedure EditNumDocExit(Sender: TObject);
    procedure BtnAsignarCitaClick(Sender: TObject);
    procedure CBTiposCitasClick(Sender: TObject);
    procedure BtnCancelarCitaClick(Sender: TObject);
    procedure BtnNuevaCClick(Sender: TObject);
    procedure BuscaCitas;
    procedure SGMedicosClick(Sender: TObject);
    procedure LimpiaGrillaCitas(Grilla : TJvStringGrid; Col : Integer);
    procedure LLenaTiempoCita(Tiem  : Integer; Nfila : Integer);
    procedure mxCalendar1Click(Sender: TObject);
    procedure LimpiaGrillaST(Grilla : TStringGrid; Col : Integer);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure JvBitBtn2Click(Sender: TObject);
    procedure BtnCancelarCClick(Sender: TObject);
    procedure Citasdelpaciente1Click(Sender: TObject);
    procedure BtnRegresarClick(Sender: TObject);
    procedure SGCitasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SGCitasClick(Sender: TObject);
    procedure SGCitasDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure BtnReasignarClick(Sender: TObject);
    procedure BtnModificarCClick(Sender: TObject);
    procedure SGMedicosDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure JvSpeedButton2Click(Sender: TObject);
    procedure JvSpeedButton1Click(Sender: TObject);
    procedure ChkMedicosClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure SGUbicacionClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SGCitas1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SGCitas1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure AsisClick(Sender: TObject);
    procedure NAsisClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure JvBitBtn8Click(Sender: TObject);
    procedure Ad1Click(Sender: TObject);
  private
    HiniM               : String;
    HfinT               : String;
    hinia               : TDateTime;
    ArrayCitas          : Array Of String;
    vecTiposDoc         : array of array of string;
    vecTipoCitas        : array of string;
    T,L : Integer;
    filaActual          : Integer;
    NumCita             : string;
    swReasig            : Boolean;
    MedicoSel           : string;
    Tiempo              : Integer;
    VistaNumero         : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAgenda: TFAgenda;

implementation

uses UDataModule1, Lista_Tablas2, ProgramacionAutomatica, MAIN,Libreria_PrateincoForm,
  SAPAcientes2, VerificaHuella, UingresosAdmisiones;


{$R *.dfm}

procedure TFAgenda.Llenagrid;
var api,apf     : String;
    llenar      : Integer;
    TotHora     : Integer;
    J           : Integer;
    hi,hf,mi,mf : Integer;
    Man, cero   : String;
    MaxTp,TP,inctp : Integer;
begin
  QryGeneral.Close;  //QUERY PARA EXTRAER LOS HORARIOS DE LAS SEDES.
  QryGeneral.SQL.Clear;
  QryGeneral.SQL.Add('SELECT * FROM CIParametros');
  QryGeneral.Open;

  inctp := QryGeneral.FieldByName('Duracion').AsInteger;
  Tiempo := 1;
  MaxTp := trunc(1440/inctp);
  Tp    := QryGeneral.FieldByName('Intervalo').AsInteger;

  HiniM    := Copy(QryGeneral.FieldByName('HORA_INICIO').AsString,12,13);
  hinia    := QryGeneral.FieldByName('HORA_INICIO').AsDateTime;

  if HiniM = '' Then
    begin
      Application.MessageBox('Este equipo no tiene asignado un horario.. consulte con el administrador','Atención',MB_OK+MB_ICONEXCLAMATION);
      Exit;
    end;

  HfinT := Copy(QryGeneral.FieldByName('HORA_FIN').AsString,12,13);
  //SI SALE ERROR AQUI SE DEBE COLOCAR LA HORA con dos digitos en la configuracion Regional
  //De paso dejar . como decimal y , como separador de listas
  hi    := StrToInt(copy(Hinim,0,2));
  hf    := StrToInt(copy(hfint,0,2));
  mi    := StrToInt(copy(Hinim,4,2));
  mf    := StrToInt(copy(hfint,4,2));
  api   := copy(HiniM,length(HiniM)-3,1);
  apf   := copy(Hfint,length(Hfint)-3,1);

  if api = apf then    // p=a
    Begin
      if hi = 12 then    //hora inicial no minutos
        TotHora:=(((12+hf-hi)*Tp)+mf)-mi
      else
        TotHora:=(((hf-hi)*Tp)+mf)-mi
    end
  else
    begin
      if (hi = 12) and (api='p') then
        TotHora :=  abs((hf * Tp) + mf )  -  ((hi * Tp) + mi)
      else
        if (hi = 12) and (api='a') then
          TotHora :=  abs((((hi + hf) * Tp) + mf)-(mi))
        else
          TotHora :=  abs(((12 + hf) * Tp) + mf) -  ((hi * Tp) + mi);
    end;

  TotHora := TotHora +1;
  Setlength(ArrayCitas,trunc(TotHora));
  llenar := 0;
  j:=0;
  While J < trunc(TotHora) do
    begin
      begin
        ArrayCitas[J]:=FormatDateTime('hh:nn ampm',hinia + (llenar/MaxTp));
        llenar := llenar + 1;
        J:= J+1;
      end;
    end;

  LimpiaGrilla(SGCitas, 50);
  SGCitas.RowCount:= trunc(TotHora) + 1;
  j := 0;
  while j < Length(ArrayCitas) do
    begin
      SGCitas.Cells[1,j+1] := ArrayCitas[j];
      if j = Length(ArrayCitas) - 1 then
        begin
          SGCitas.Cells[2,j+1] := 'CIERRE';
          SGCitas.Cells[3,j+1] := 'DEL';
          SGCitas.Cells[4,j+1] := 'DIA';
        end;
      inc(j);
    end;

  j := 0;
  CBAM.Clear;
  CBPM.Clear;
  while j < Length(ArrayCitas) do
    begin
      Man  := copy(ArrayCitas[j], length(ArrayCitas[j])-3,4);
      cero := copy(ArrayCitas[j], length(ArrayCitas[j])-6,2);
      if (cero = '00') and (Man = 'a.m.') then
        CBAM.Items.Add(ArrayCitas[j]);

      if (cero = '00') and (Man = 'p.m.') then
        CBPM.Items.Add(ArrayCitas[j]);
      inc(j);
    end;
end;

procedure TFAgenda.FormShow(Sender: TObject);
begin
  SGCitas.Cells[1,0]    := 'Horas';
  SGCitas.Cells[2,0]    := 'Paciente';
  SGCitas.Cells[3,0]    := 'Tp';
  SGCitas.Cells[4,0]    := 'Numero Doc';
  SGCitas.Cells[5,0]    := 'TD Med.';
  SGCitas.Cells[6,0]    := 'ND Med.';

  SGMedicos.Cells[0,0]  := 'Tipo';
  SGMedicos.Cells[1,0]  := 'Numero Doc.';
  SGMedicos.Cells[2,0]  := 'Primer apellido';
  SGMedicos.Cells[3,0]  := 'Segundo apellido';
  SGMedicos.Cells[4,0]  := 'Nombres';

  SGUbicacion.Cells[0,0]  := 'Nombre';
  SGUbicacion.Cells[1,0]  := 'Tipo';
  SGUbicacion.Cells[2,0]  := 'Seccion';
  SGUbicacion.Cells[3,0]  := 'Cama';
  SGUbicacion.Cells[4,0]  := 'Estado';


  SGCitas1.Cells[0,0]   := 'Fecha';
  SGCitas1.Cells[1,0]   := 'Hora';
  SGCitas1.Cells[2,0]   := 'Tipo doc. medico';
  SGCitas1.Cells[3,0]   := 'Num_ident_medico';
  SGCitas1.Cells[4,0]   := 'Tipo doc. paciente';
  SGCitas1.Cells[5,0]   := 'Num doc. paciente';
  SGCitas1.Cells[6,0]   := 'Nombre paciente';
  SGCitas1.Cells[7,0]   := 'Tipo consulta';
  SGCitas1.Cells[8,0]   := 'Tiempo';
  SGCitas1.Cells[9,0]   := 'Nota';
  SGCitas1.Cells[10,0]  := 'Estado';
  SGCitas1.Cells[11,0]  := 'Usuario';

  SGCitasP.Cells[0,0]   := 'Fecha';
  SGCitasP.Cells[1,0]   := 'Hora';
  SGCitasP.Cells[2,0]   := 'Tipo doc. medico';
  SGCitasP.Cells[3,0]   := 'Num_ident_medico';
  SGCitasP.Cells[4,0]   := 'Tipo doc. paciente';
  SGCitasP.Cells[5,0]   := 'Num doc. paciente';
  SGCitasP.Cells[6,0]   := 'Nombre paciente';
  SGCitasP.Cells[7,0]   := 'Tipo consulta';
  SGCitasP.Cells[8,0]   := 'Tiempo';
  SGCitasP.Cells[9,0]   := 'Nota';
  SGCitasP.Cells[10,0]  := 'Estado';
  SGCitasP.Cells[11,0]  := 'Usuario';

  mxCalendar1.Date     := now;
  swReasig              := False;
  SGCitas.Options       := [goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine];
  Llenagrid;
  TiposCitas;
  TiposDocumentos;
  BuscaMedicos;
  SGMedicosClick(Sender);
end;

procedure TFAgenda.LimpiaGrilla(Grilla : TJvStringGrid; Col : Integer);
var i,e : Integer;
begin
  i := 1;
  while i < Grilla.RowCount - 1 do
    begin
      e := 0;
      while e <= Col do
        begin
          Grilla.Cells[e,i] := '';
          inc(e);
        end;
      inc(i);
    end;
  Grilla.RowCount := 2;
end;

procedure TFAgenda.BuscaMedicos;
var i : Integer;
begin
  QryGeneral1.Close;
  QryGeneral1.SQL.Clear;
  QryGeneral1.SQL.Add('select distinct Per.Primer_Apellido, Per.Segundo_Apellido,');
  QryGeneral1.SQL.Add('Per.Nombres, Id.Tipo_Identificacion, Id.No_Identificacion');
  QryGeneral1.SQL.Add('from comunes..SEIdentificaciones as Id, comunes..SEPersonas as Per, comunes..SEEmpleados as emp, CIUsuarios as A');
  QryGeneral1.SQL.Add('where Per.id = Id.Persona ');
  QryGeneral1.SQL.Add(' and A.id_Asigna = ' +floattostr(datamodule1.ADOQuery1.FieldValues['id']));
  QryGeneral1.SQL.Add(' and A.id_Agenda = Per.id ');
  QryGeneral1.SQL.Add(' and emp.id = Per.id and emp.empresa_trabaja = '''+DataModule1.ADOQuery1.Fields.FieldByName('EMPRESA_TRABAJA').AsString+'''');////ojo cambiar la empresa
  QryGeneral1.SQL.Add('order by Per.Primer_Apellido');
  QryGeneral1.Open;

  if QryGeneral1.RecordCount = 0 Then
  Begin
    Showmessage('ERROR: No es posible cargar agenda hasta no asignar usuarios disponibles.');
    Close;
  End;

  LimpiaGrilla(SGMedicos, 5);
  i := 1;
  while not QryGeneral1.Eof do
    begin
      SGMedicos.Cells[0,i] := QryGeneral1.Fields.FieldByName('Tipo_Identificacion').AsString;
      SGMedicos.Cells[1,i] := QryGeneral1.Fields.FieldByName('No_Identificacion').AsString;
      SGMedicos.Cells[2,i] := QryGeneral1.Fields.FieldByName('Primer_Apellido').AsString;
      SGMedicos.Cells[3,i] := QryGeneral1.Fields.FieldByName('Segundo_Apellido').AsString;
      SGMedicos.Cells[4,i] := QryGeneral1.Fields.FieldByName('Nombres').AsString;
      QryGeneral1.Next;
      inc(i);
    end;
  SGMedicos.RowCount  := i + 1;

  QryGeneral2.Close;
  QryGeneral2.SQL.Clear;
  QryGeneral2.SQL.Add('select *');
  QryGeneral2.SQL.Add('from SACamas');
//  QryGeneral2.SQL.Add('where Per.id = Id.Persona and Per.Citas = ''S''');
//  QryGeneral2.SQL.Add(' and A.id_Asigna = ' +floattostr(datamodule1.ADOQuery1.FieldValues['id']));
//  QryGeneral2.SQL.Add(' and A.id_Agenda = Per.id ');
//  QryGeneral2.SQL.Add(' and emp.id = Per.id and emp.empresa_trabaja = '''+DataModule1.ADOQuery1.Fields.FieldByName('EMPRESA_TRABAJA').AsString+'''');////ojo cambiar la empresa
//  QryGeneral2.SQL.Add(' and emp.Estado = ''A''');
//  QryGeneral2.SQL.Add('order by Per.Primer_Apellido');
  QryGeneral2.Open;

  if QryGeneral2.RecordCount = 0 Then
  Begin
    Showmessage('ERROR: No es posible cargar agenda hasta no asignar usuarios disponibles.');
    Close;
  End;

  LimpiaGrilla(SGUbicacion, 5);
  i := 1;
  while not QryGeneral2.Eof do
    begin
      SGUbicacion.Cells[0,i] := QryGeneral2.Fields.FieldByName('Nom_Cama').AsString;
      SGUbicacion.Cells[1,i] := QryGeneral2.Fields.FieldByName('Cd_Tipo').AsString;
      SGUbicacion.Cells[2,i] := QryGeneral2.Fields.FieldByName('Cd_Seccion').AsString;
      SGUbicacion.Cells[3,i] := QryGeneral2.Fields.FieldByName('Cd_Cama').AsString;
      SGUbicacion.Cells[4,i] := QryGeneral2.Fields.FieldByName('Estado_Cama').AsString;
      QryGeneral2.Next;
      inc(i);
    end;
  SGUbicacion.RowCount  := i + 1;

end;

procedure TFAgenda.Button1Click(Sender: TObject);
begin
  frmingresopacientes := tfrmingresopacientes.create(application);
  if CBTiposDoc.Text <> null then frmingresopacientes.DBLookupComboBox4.KeyValue := CBTiposDoc.Text;
  if EditNumDoc.Text <> null then frmingresopacientes.Edit1.Text := EditNumDoc.Text;
  try
    Datamodule1.MuestraconAcceso(frmingresopacientes);
  except
    frmingresopacientes.free;
  end;
end;

procedure TFAgenda.BtnBuscar1Click(Sender: TObject);
var
  MyRect  : TGridRect;
  i       : Integer;
begin
  if EditDocumentoM.Text <> '' then
    begin
      i := 1;
      while i < SGMedicos.RowCount - 1 do
        begin
          if SGMedicos.Rows[i].Strings[1] = EditDocumentoM.Text then
            begin
              SGMedicos.TopRow      := i;
              myRect.Left         := 0;
              myRect.Top          := i;
              myRect.Right        := 8;
              myRect.Bottom       := i;
              SGMedicos.Selection := myRect;
              EditDocumentoM.Text   := '';
              exit;
            end;
          inc(i);
        end;
    end;
end;

procedure TFAgenda.BtnBuscar2Click(Sender: TObject);
var
  MyRect  : TGridRect;
  i       : Integer;
begin
  if EditPApellidoM.Text <> '' then
    begin
      i := 1;
      while i < SGMedicos.RowCount - 1 do
        begin
          if SGMedicos.Rows[i].Strings[2] = EditPApellidoM.Text then
            begin
              SGMedicos.TopRow    := i;
              myRect.Left         := 0;
              myRect.Top          := i;
              myRect.Right        := 8;
              myRect.Bottom       := i;
              SGMedicos.Selection := myRect;
              EditPApellidoM.Text := '';
              exit;
            end;
          inc(i);
        end;
    end;
end;

procedure TFAgenda.EditDocumentoMKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    BtnBuscar1Click(Self);
end;

procedure TFAgenda.EditPApellidoMKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    BtnBuscar2Click(Self);
end;

procedure TFAgenda.CancelaCitas(Tiem : Integer);
var  FCont, i, e, R, j : Integer;
     c, H, M           : Integer;
     ampm              : string;
     Hactual           : string;
begin
      e     := SGCitas.Row;
      FCont := SGCitas.RowCount - 1;
      c     := Tiem + 1;    ///aqui va la duración de la cita en minutos

      j                := SGCitas.RowCount - e - 1;

      SGCitas.RowCount := SGCitas.RowCount + c - 1;

      R                := SGCitas.RowCount- 1;

      i := 1;
      while j >= i do
        begin
          SGCitas.Cells[0,R]   :=   SGCitas.Rows[FCont].Strings[0];
          SGCitas.Cells[1,R]   :=   SGCitas.Rows[FCont].Strings[1];
          SGCitas.Cells[2,R]   :=   SGCitas.Rows[FCont].Strings[2];
          SGCitas.Cells[3,R]   :=   SGCitas.Rows[FCont].Strings[3];
          SGCitas.Cells[4,R]   :=   SGCitas.Rows[FCont].Strings[4];
          SGCitas.Cells[5,R]   :=   SGCitas.Rows[FCont].Strings[5];
          SGCitas.Cells[6,R]   :=   SGCitas.Rows[FCont].Strings[6];
          SGCitas.Cells[7,R]   :=   SGCitas.Rows[FCont].Strings[7];
          SGCitas.Cells[8,R]   :=   SGCitas.Rows[FCont].Strings[8];
          SGCitas.Cells[9,R]   :=   SGCitas.Rows[FCont].Strings[9];
          SGCitas.Cells[10,R]  :=   SGCitas.Rows[FCont].Strings[10];
          SGCitas.Cells[11,R]  :=   SGCitas.Rows[FCont].Strings[11];
          SGCitas.Cells[12,R]  :=   SGCitas.Rows[FCont].Strings[12];
          SGCitas.Cells[13,R]  :=   SGCitas.Rows[FCont].Strings[13];
          SGCitas.Cells[14,R]  :=   SGCitas.Rows[FCont].Strings[14];
          SGCitas.Cells[15,R]  :=   SGCitas.Rows[FCont].Strings[15];
          SGCitas.Cells[16,R]  :=   SGCitas.Rows[FCont].Strings[16];
          SGCitas.Cells[17,R]  :=   SGCitas.Rows[FCont].Strings[17];
          SGCitas.Cells[18,R]  :=   SGCitas.Rows[FCont].Strings[18];
          SGCitas.Cells[19,R]  :=   SGCitas.Rows[FCont].Strings[19];
          SGCitas.Cells[20,R]  :=   SGCitas.Rows[FCont].Strings[20];
          SGCitas.Cells[21,R]  :=   SGCitas.Rows[FCont].Strings[21];
          SGCitas.Cells[22,R]  :=   SGCitas.Rows[FCont].Strings[22];
          SGCitas.Cells[23,R]  :=   SGCitas.Rows[FCont].Strings[23];
          SGCitas.Cells[24,R]  :=   SGCitas.Rows[FCont].Strings[24];
          SGCitas.Cells[25,R]  :=   SGCitas.Rows[FCont].Strings[25];
          SGCitas.Cells[26,R]  :=   SGCitas.Rows[FCont].Strings[26];
          SGCitas.Cells[27,R]  :=   SGCitas.Rows[FCont].Strings[27];
          SGCitas.Cells[28,R]  :=   SGCitas.Rows[FCont].Strings[28];
          SGCitas.Cells[29,R]  :=   SGCitas.Rows[FCont].Strings[29];
          SGCitas.Cells[30,R]  :=   SGCitas.Rows[FCont].Strings[30];

          SGCitas.Rows[FCont].Strings[0]   := '';
          SGCitas.Rows[FCont].Strings[1]   := '';
          SGCitas.Rows[FCont].Strings[2]   := '';
          SGCitas.Rows[FCont].Strings[3]   := '';
          SGCitas.Rows[FCont].Strings[4]   := '';
          SGCitas.Rows[FCont].Strings[5]   := '';
          SGCitas.Rows[FCont].Strings[6]   := '';
          SGCitas.Rows[FCont].Strings[7]   := '';
          SGCitas.Rows[FCont].Strings[8]   := '';
          SGCitas.Rows[FCont].Strings[9]   := '';
          SGCitas.Rows[FCont].Strings[10]  := '';
          SGCitas.Rows[FCont].Strings[11]  := '';
          SGCitas.Rows[FCont].Strings[12]  := '';
          SGCitas.Rows[FCont].Strings[13]  := '';
          SGCitas.Rows[FCont].Strings[14]  := '';
          SGCitas.Rows[FCont].Strings[15]  := '';
          SGCitas.Rows[FCont].Strings[16]  := '';
          SGCitas.Rows[FCont].Strings[17]  := '';
          SGCitas.Rows[FCont].Strings[18]  := '';
          SGCitas.Rows[FCont].Strings[19]  := '';
          SGCitas.Rows[FCont].Strings[20]  := '';
          SGCitas.Rows[FCont].Strings[21]  := '';
          SGCitas.Rows[FCont].Strings[22]  := '';
          SGCitas.Rows[FCont].Strings[23]  := '';
          SGCitas.Rows[FCont].Strings[24]  := '';
          SGCitas.Rows[FCont].Strings[25]  := '';
          SGCitas.Rows[FCont].Strings[26]  := '';
          SGCitas.Rows[FCont].Strings[27]  := '';
          SGCitas.Rows[FCont].Strings[28]  := '';
          SGCitas.Rows[FCont].Strings[29]  := '';
          SGCitas.Rows[FCont].Strings[30]  := '';
          dec(FCont);
          dec(j);
          dec(R);
        end;

  i := 0;
  while i < c - 1 do
    begin
      SGCitas.Rows[e+1].Strings[0] := ArrayCitas[e];
      inc(e);
      inc(i);
    end;
end;

procedure TFAgenda.SGCitasContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  if SGCitas.RowCount = 2 then Exit;

  if   SGCitas.Rows[SGCitas.Row].Strings[2] = '' then
    Citasdelpaciente1.Enabled  := False
  else
    Citasdelpaciente1.Enabled  := True;
end;

procedure  TFAgenda.TiposCitas;
var i : Integer;
begin
  QryGeneral.Close;
  QryGeneral.SQL.Clear;
  QryGeneral.SQL.Add('select * from citipos_citas');
  QryGeneral.SQL.Add('order by tipo_cita');
  QryGeneral.Open;

  SetLength(vecTipoCitas, QryGeneral.RecordCount);
  i := 0;
  CBTiposCitas.Clear;
  while not QryGeneral.Eof do
    begin
      CBTiposCitas.Items.Add(QryGeneral.Fields.FieldByName('DESCRIPCION').AsString);
      vecTipoCitas[i]  :=  QryGeneral.Fields.FieldByName('TIPO_CITA').AsString;
      QryGeneral.Next;
      inc(i);
    end;
end;

procedure  TFAgenda.TiposDocumentos;
var i : Integer;
begin
  QryGeneral1.Close;
  QryGeneral1.SQL.Clear;
  QryGeneral1.SQL.Add('select * from comunes..GETipo_Documentos');
  QryGeneral1.Open;

  SetLength(vecTiposDoc, QryGeneral1.RecordCount, 2);
  i := 0;
  CBTiposDoc.Clear;
  while not QryGeneral1.Eof do
    begin
      CBTiposDoc.Items.Add(QryGeneral1.Fields.FieldByName('nom_nombre').AsString);
      vecTiposDoc[i,0] := QryGeneral1.Fields.FieldByName('Cod_tipo').AsString;
      vecTiposDoc[i,1] := QryGeneral1.Fields.FieldByName('nom_nombre').AsString;
      QryGeneral1.Next;
      inc(i);
    end;
  CBTiposDoc.ItemIndex  := 1;
end;


procedure TFAgenda.BtnOkClick(Sender: TObject);
begin
  QryGeneral.Close;
  QryGeneral.SQL.Clear;
  QryGeneral.SQL.Add('Select *  from SAPacientes');
  QryGeneral.SQL.Add('where TP_IDENT_USUAR = '''+vecTiposDoc[CBTiposDoc.ItemIndex,0]+'''');
  QryGeneral.SQL.Add(' and NR_IDENT_USUAR = '''+EditNumDoc.Text+'''');
  QryGeneral.Open;

  EditNombrePaciente.Text := '';
  if not QryGeneral.Eof then
    EditNombrePaciente.Text  := QryGeneral.Fields.FieldByName('primer_Apellido').AsString + ' ' +
                                QryGeneral.Fields.FieldByName('segundo_Apellido').AsString + ' ' +
                                QryGeneral.Fields.FieldByName('primer_nombre').AsString + ' ' +
                                QryGeneral.Fields.FieldByName('segundo_nombre').AsString
  else
    begin
      EditNombrePaciente.SetFocus;
      Exit;
    end;
end;

procedure TFAgenda.EditNumDocExit(Sender: TObject);
begin
  if EditNumDoc.Text <> '' then
    BtnOkClick(Self);
end;

procedure TFAgenda.BtnAsignarCitaClick(Sender: TObject);
var i,j       : Integer;
    Cad     : string;
    sw      : Boolean;
    fecHor  : TDateTime;
    hA, hC  : string;
begin
    if EditTiempo.Text = '' then
    begin
      Application.MessageBox('Debe Digitar Tiempo en Minutos','Información',MB_OK+MB_ICONINFORMATION);
      EditTiempo.SetFocus;
      Exit;
    end;

  if EditNumDoc.Text = '' then
    begin
      Application.MessageBox('Debe Digitar el numero de documento','Información',MB_OK+MB_ICONINFORMATION);
      EditNumDoc.SetFocus;
      Exit;
    end;

  if CBTiposCitas.ItemIndex = -1 then
    begin
      Application.MessageBox('Debe seleccionar el tipo de consulta','Información',MB_OK+MB_ICONINFORMATION);
      CBTiposCitas.SetFocus;
      Exit;
    end;

  if mxCalendar1.Date < date then
    begin
      Application.MessageBox('La fecha de la cita no puede ser menor a la fecha actual','Información',MB_OK+MB_ICONINFORMATION);
      Exit;
    end;

  hA := FormatDateTime('hh:nn ampm', now);
  hC := SGCitas.Rows[SGCitas.Row].Strings[1];

  if (mxCalendar1.Date = date) and (StrToTime(hC) < StrToTime(hA)) then
    begin
      Application.MessageBox('La hora de la cita no puede ser menor a la hora actual','Información',MB_OK+MB_ICONINFORMATION);
      Exit;
    end;

  i := SGCitas.Row + 1;
  j := 1;
  while i < SGCitas.RowCount - 1 do
    begin
      if (SGCitas.Rows[i].Strings[2] = 'CIERRE') and (SGCitas.Rows[i].Strings[3] = 'DEL') and (SGCitas.Rows[i].Strings[4] = 'DIA') then
        sw := True;

      if SGCitas.Rows[i].Strings[2] = '' then
        j := j +1
      else
        Break;
      inc(i);
    end;

  if j < StrToInt(EditTiempo.Text) then
    begin
      if sw = True then
        Application.MessageBox('No se puede asignar la cita, tiempo restante menor a la duración de la cita','Advertencia',MB_OK+MB_ICONWARNING)
      else
        Application.MessageBox('No se puede asignar la cita, tiempo entre citas menor a la duración de la cita','Advertencia',MB_OK+MB_ICONWARNING);
      Exit;
    end;

  try
    if not DataModule1.ADOConnection1.InTransaction then
      DataModule1.ADOConnection1.BeginTrans;

   //   Sleep(500);

      QryGeneral.Close;
      QryGeneral.SQL.Clear;
      QryGeneral.SQL.Add('insert into cicitas (Tp_Ident_Medico, Nr_Ident_Medico, Tp_Ident_Usuar,');
      QryGeneral.SQL.Add('Nr_Ident_Usuar, Nombre_Usuario, Tipo_Consulta, Nota, Estado, Tiempo, Fecha, Usuario, cd_cama, cd_seccion, cd_tipo, cumplida)');
      QryGeneral.SQL.Add(' values (');
      QryGeneral.SQL.Add(''''+SGMedicos.Rows[SGMedicos.Row].Strings[0]+''',');
      QryGeneral.SQL.Add(''''+SGMedicos.Rows[SGMedicos.Row].Strings[1]+''',');
      QryGeneral.SQL.Add(''''+vecTiposDoc[CBTiposDoc.ItemIndex,0]+''',');
      QryGeneral.SQL.Add(''''+EditNumDoc.Text+''',');
      QryGeneral.SQL.Add(''''+EditNombrePaciente.Text+''',');
      QryGeneral.SQL.Add(''''+vecTipoCitas[CBTiposCitas.ItemIndex]+''',');
      QryGeneral.SQL.Add(''''+MmObservaciones.Lines.Text+''',');
      QryGeneral.SQL.Add('''A'',');
      QryGeneral.SQL.Add(''''+EditTiempo.Text+''',');

      Cad     := '';
      Cad     := FormatDateTime('DD/MM/YYYY',mxCalendar1.Date) + SGCitas.Rows[SGCitas.Row].Strings[1];
      fecHor  := StrToDateTime(Cad);

      QryGeneral.SQL.Add(''''+FormatDateTime('DD/MM/YYYY hh:mm:ss',fecHor)+''',');
      QryGeneral.SQL.Add(''''+DataModule1.ADOQuery1.Fields.FieldByName('ID').AsString+''','); ////OJO CAMBIAR
      QryGeneral.SQL.Add(''''+SGUbicacion.Rows[SGUbicacion.Row].Strings[3]+''',');
      QryGeneral.SQL.Add(''''+SGUbicacion.Rows[SGUbicacion.Row].Strings[2]+''',');
      QryGeneral.SQL.Add(''''+SGUbicacion.Rows[SGUbicacion.Row].Strings[1]+''',');
      QryGeneral.SQL.Add('0)');
      QryGeneral.ExecSQL;

      if ChkRepDias.Checked = True then
        begin
          i := 1;
          while i <= StrToInt(JvSpinEdit1.Text) do
            begin
              fecHor := fecHor + 1;

              QryGeneral.Close;
              QryGeneral.SQL.Clear;
              QryGeneral.SQL.Add('insert into cicitas (Tp_Ident_Medico, Nr_Ident_Medico, Tp_Ident_Usuar,');
              QryGeneral.SQL.Add('Nr_Ident_Usuar, Nombre_Usuario, Tipo_Consulta, Nota, Estado, Tiempo, Fecha, Usuario, cd_cama, cd_seccion, cd_tipo, cumplida)');
              QryGeneral.SQL.Add(' values (');
              QryGeneral.SQL.Add(''''+SGMedicos.Rows[SGMedicos.Row].Strings[0]+''',');
              QryGeneral.SQL.Add(''''+SGMedicos.Rows[SGMedicos.Row].Strings[1]+''',');
              QryGeneral.SQL.Add(''''+vecTiposDoc[CBTiposDoc.ItemIndex,0]+''',');
              QryGeneral.SQL.Add(''''+EditNumDoc.Text+''',');
              QryGeneral.SQL.Add(''''+EditNombrePaciente.Text+''',');
              QryGeneral.SQL.Add(''''+vecTipoCitas[CBTiposCitas.ItemIndex]+''',');
              QryGeneral.SQL.Add(''''+MmObservaciones.Lines.Text+''',');
              QryGeneral.SQL.Add('''A'',');
              QryGeneral.SQL.Add(''''+EditTiempo.Text+''',');
              QryGeneral.SQL.Add(''''+FormatDateTime('DD/MM/YYYY hh:mm:ss', fecHor)+''',');
              QryGeneral.SQL.Add(''''+DataModule1.ADOQuery1.Fields.FieldByName('ID').AsString+''',');///OJO CAMBIAR
              QryGeneral.SQL.Add(''''+SGUbicacion.Rows[SGUbicacion.Row].Strings[3]+''',');
              QryGeneral.SQL.Add(''''+SGUbicacion.Rows[SGUbicacion.Row].Strings[2]+''',');
              QryGeneral.SQL.Add(''''+SGUbicacion.Rows[SGUbicacion.Row].Strings[1]+''',');
              QryGeneral.SQL.Add('0)');
              QryGeneral.ExecSQL;
              inc(i);
            end;
        end;

    if DataModule1.ADOConnection1.InTransaction then
      DataModule1.ADOConnection1.CommitTrans;

    Application.MessageBox('Cita asignada correctamente','Información',MB_OK+MB_ICONINFORMATION);
    LLenaTiempoCita(StrToInt(EditTiempo.Text), SGCitas.Row);
    BtnCancelarCitaClick(Self);
    ChkMedicos.Enabled   := True;
    VistaNumero:=0;
    BuscaCitas;
  except
    if DataModule1.ADOConnection1.InTransaction then
      DataModule1.ADOConnection1.RollbackTrans;

    Application.MessageBox('Error al momento de asignar la cita..por favor comuníquese con el Help Desk','Error',MB_OK+MB_ICONERROR);
    BtnCancelarCitaClick(Self);
    ChkMedicos.Enabled   := True;
    VistaNumero:=0;
    BuscaCitas;
  end;
end;

procedure TFAgenda.CBTiposCitasClick(Sender: TObject);
begin
  QryGeneral.Close;
  QryGeneral.SQL.Clear;
  QryGeneral.SQL.Add('SELECT DURACION FROM CITipos_Citas');
  QryGeneral.SQL.Add('WHERE TIPO_CITA = '''+vecTipoCitas[CBTiposCitas.ItemIndex]+'''');
  QryGeneral.Open;

  //EditTiempo.Text  := '';
  if not QryGeneral.Eof then
  if (QryGeneral.Fields.FieldByName('DURACION').AsString <> null) AND (QryGeneral.Fields.FieldByName('DURACION').AsString <> '0') AND (QryGeneral.Fields.FieldByName('DURACION').AsString <> '') then
    EditTiempo.Text  := QryGeneral.Fields.FieldByName('DURACION').AsString;
end;

procedure TFAgenda.BtnCancelarCitaClick(Sender: TObject);
begin
  SGCitas.Enabled             := True;
  Panel4.Enabled              := True;
  EditNumDoc.Text             := '';
  EditNombrePaciente.Text     := '';
  CBTiposDoc.ItemIndex        := 1;
  CBTiposCitas.ItemIndex      := -1;
  MmObservaciones.Lines.Text  := '';
  EditTiempo.Text             := '';
  BtnNuevaC.Enabled           := True;
  ChkMedicos.Enabled          := True;
  BtnReasignar.Enabled        := False;
  BtnModificarC.Enabled       := False;
  SGCitasClick(Self);

  if swReasig = true then
    begin
      SGCitas.Rows[filaActual].Strings[0] := '';
      BtnReasignar.Caption                := '&Reasignar cita';
      BtnModificarC.Caption               := '&Modificar cita';
      SGCitas.Options                     := [goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine];
      swReasig                            := False;
    end;

  EditNumDoc.Enabled         := True;
  EditNombrePaciente.Enabled := True;
  CBTiposDoc.Enabled         := True;
  BtnAsignarCita.Enabled     := True;
  JLblHora.Caption           := '';

  SGMedicos.Enabled          := True;
  mxCalendar1.Enabled        := True;


  PnlPacientes.Height        := 0;
end;

procedure TFAgenda.BtnNuevaCClick(Sender: TObject);
var i:Integer;
begin
  PageControl4.Visible          := True;
  if SGCitas.Rows[SGCitas.Row].Strings[2] = '' then
    begin
      PageControl2.ActivePageIndex  := 0;

      BtnCancelarC.Enabled          := False;
      ChkMedicos.Enabled            := False;
      BtnModificarC.Enabled         := False;
      BtnConfirmar.Visible          := True;
      ChkMedicos.Checked            := False;
      ChkMedicos.Enabled            := False;
      PnlPacientes.Height           := 270;
      EditTiempo.Text               := inttostr(Tiempo);
      BtnNuevaC.Enabled             := False;
      SGCitas.Enabled               := False;
      SGMedicos.Enabled             := False;
      mxCalendar1.Enabled           := False;
      Panel3.Visible := False;
    end
  else
    begin
      Application.MessageBox('Ya se encuetra asignada una cita en este horario','Información',MB_OK+MB_ICONINFORMATION);
      Exit;
    end;
end;

procedure TFAgenda.BuscaCitas;
var i, e : Integer;
begin
  Llenagrid;
  case VistaNumero of
    0 : begin
          PageControl1.ActivePageIndex  := 0;
          QryGeneral.Close;
          QryGeneral.SQL.Clear;
          QryGeneral.SQL.Add('select * from cicitas ');
          QryGeneral.SQL.Add('where convert(varchar(10),fecha,103) = '''+FormatDateTime('DD/MM/YYYY', mxCalendar1.Date)+'''');
          QryGeneral.SQL.Add(' and tp_ident_medico = '''+trim(SGMedicos.Rows[SGMedicos.Row].Strings[0])+'''');
          QryGeneral.SQL.Add(' and nr_ident_medico = '''+trim(SGMedicos.Rows[SGMedicos.Row].Strings[1])+'''');
          QryGeneral.SQL.Add(' and estado = ''A''');
          QryGeneral.SQL.Add('order by fecha');
          QryGeneral.Open;

          LimpiaGrillaCitas(SGCitas, 30);
          i := 1;
          while not QryGeneral.Eof do
            begin
              e := 1;
              while e < SGCitas.RowCount do
                begin
                  if FormatDateTime('hh:nn ampm', QryGeneral.Fields.FieldByName('Fecha').AsDateTime) =  FormatDateTime('hh:nn ampm',(StrToTime(SGCitas.Rows[e].Strings[1]))) then
                    begin
                      SGCitas.Cells[0,e]  := QryGeneral.Fields.FieldByName('Cumplida').AsString;
                      SGCitas.Cells[2,e]  := QryGeneral.Fields.FieldByName('nombre_usuario').AsString;
                      SGCitas.Cells[3,e]  := QryGeneral.Fields.FieldByName('tp_ident_usuar').AsString;
                      SGCitas.Cells[4,e]  := QryGeneral.Fields.FieldByName('nr_ident_usuar').AsString;
                      SGCitas.Cells[5,e]  := QryGeneral.Fields.FieldByName('tp_ident_medico').AsString;
                      SGCitas.Cells[6,e]  := QryGeneral.Fields.FieldByName('nr_ident_medico').AsString;


                      SGCitas.Cells[8,e]  := QryGeneral.Fields.FieldByName('tipo_consulta').AsString;
                      SGCitas.Cells[9,e]  := QryGeneral.Fields.FieldByName('tiempo').AsString;
                      SGCitas.Cells[10,e]  := QryGeneral.Fields.FieldByName('nota').AsString;
                      SGCitas.Cells[11,e] := QryGeneral.Fields.FieldByName('estado').AsString;
                      SGCitas.Cells[12,e] := QryGeneral.Fields.FieldByName('usuario').AsString;
                      SGCitas.Cells[13,e] := FormatDateTime('DD/MM/YYYY hh:mm:ss', QryGeneral.Fields.FieldByName('Fecha').AsDateTime);
                      SGCitas.Cells[14,e] := QryGeneral.Fields.FieldByName('usuario').AsString;
                      SGCitas.Cells[20,e] := QryGeneral.Fields.FieldByName('numero').AsString;
                      SGCitas.Cells[7,e]  := '.';
                      SGCitas.Cells[21,e] := '*';

                      LLenaTiempoCita(StrToInt(QryGeneral.Fields.FieldByName('tiempo').AsString), e);
                    end;
                  inc(e);
                end;
              QryGeneral.Next;
              inc(i);
            end;
        end;
      1 : begin
            PageControl1.ActivePageIndex  := 2;
            QryGeneral.Close;
            QryGeneral.SQL.Clear;
            QryGeneral.SQL.Add('select * from cicitas ');
            QryGeneral.SQL.Add('where convert(varchar(10),fecha,103) = '''+FormatDateTime('DD/MM/YYYY', mxCalendar1.Date)+'''');
            QryGeneral.SQL.Add(' and estado = ''A''');
            QryGeneral.SQL.Add('order by fecha');
            QryGeneral.Open;

            LimpiaGrillaST(SGCitas1, 22);
            i := 1;
            while not QryGeneral.Eof do
              begin
                SGCitas1.Cells[0,i]  := FormatDateTime('dddd DD ''de'' mmmm ''de'' yyyy', QryGeneral.Fields.FieldByName('Fecha').AsDateTime);
                SGCitas1.Cells[1,i]  := FormatDateTime('hh:mm:ss', QryGeneral.Fields.FieldByName('Fecha').AsDateTime);
                SGCitas1.Cells[2,i]  := QryGeneral.Fields.FieldByName('tp_ident_medico').AsString; // 2
                SGCitas1.Cells[3,i]  := QryGeneral.Fields.FieldByName('nr_ident_medico').AsString; //3
                SGCitas1.Cells[4,i]  := QryGeneral.Fields.FieldByName('tp_ident_usuar').AsString;  //4
                SGCitas1.Cells[5,i]  := QryGeneral.Fields.FieldByName('nr_ident_usuar').AsString; // 5
                SGCitas1.Cells[6,i]  := QryGeneral.Fields.FieldByName('nombre_usuario').AsString;   //6
                SGCitas1.Cells[7,i]  := QryGeneral.Fields.FieldByName('tipo_consulta').AsString;
                SGCitas1.Cells[8,i]  := QryGeneral.Fields.FieldByName('tiempo').AsString;
                SGCitas1.Cells[9,i]  := QryGeneral.Fields.FieldByName('nota').AsString;
                SGCitas1.Cells[10,i] := QryGeneral.Fields.FieldByName('estado').AsString;
                SGCitas1.Cells[11,i] := QryGeneral.Fields.FieldByName('usuario').AsString;
                SGCitas1.Cells[12,i] := FormatDateTime('DD/MM/YYYY hh:mm:ss', QryGeneral.Fields.FieldByName('Fecha').AsDateTime);
                SGCitas1.Cells[13,i] := QryGeneral.Fields.FieldByName('usuario').AsString;
                SGCitas1.Cells[20,i] := QryGeneral.Fields.FieldByName('numero').AsString;
                SGCitas1.Cells[21,i] := FormatDateTime('hh:mm:ss', QryGeneral.Fields.FieldByName('Fecha').AsDateTime);
                QryGeneral.Next;
                inc(i);
              end;
            SGCitas1.RowCount  := i + 1;
          end;
    2 : begin
            PageControl1.ActivePageIndex  := 2;
            QryGeneral.Close;
            QryGeneral.SQL.Clear;
            QryGeneral.SQL.Add('select * from cicitas ');
            QryGeneral.SQL.Add('where convert(varchar(10),fecha,103) = '''+FormatDateTime('DD/MM/YYYY', mxCalendar1.Date)+'''');
            QryGeneral.SQL.Add(' and tp_ident_medico = '''+SGMedicos.Rows[SGMedicos.Row].Strings[0]+'''');
            QryGeneral.SQL.Add(' and nr_ident_medico = '''+SGMedicos.Rows[SGMedicos.Row].Strings[1]+'''');
            QryGeneral.SQL.Add(' and estado = ''A''');
            QryGeneral.SQL.Add('order by fecha');
            QryGeneral.Open;

            LimpiaGrillaST(SGCitas1, 22);
            i := 1;
            while not QryGeneral.Eof do
              begin
                SGCitas1.Cells[0,i]  := FormatDateTime('dddd DD ''de'' mmmm ''de'' yyyy', QryGeneral.Fields.FieldByName('Fecha').AsDateTime);
                SGCitas1.Cells[1,i]  := FormatDateTime('hh:mm:ss', QryGeneral.Fields.FieldByName('Fecha').AsDateTime);
                SGCitas1.Cells[2,i]  := QryGeneral.Fields.FieldByName('tp_ident_medico').AsString;   //2
                SGCitas1.Cells[3,i]  := QryGeneral.Fields.FieldByName('nr_ident_medico').AsString;   //3
                SGCitas1.Cells[4,i]  := QryGeneral.Fields.FieldByName('tp_ident_usuar').AsString;   //4
                SGCitas1.Cells[5,i]  := QryGeneral.Fields.FieldByName('nr_ident_usuar').AsString;   //5
                SGCitas1.Cells[6,i]  := QryGeneral.Fields.FieldByName('nombre_usuario').AsString;   //6
                SGCitas1.Cells[7,i]  := QryGeneral.Fields.FieldByName('tipo_consulta').AsString;
                SGCitas1.Cells[8,i]  := QryGeneral.Fields.FieldByName('tiempo').AsString;
                SGCitas1.Cells[9,i]  := QryGeneral.Fields.FieldByName('nota').AsString;
                SGCitas1.Cells[10,i] := QryGeneral.Fields.FieldByName('estado').AsString;
                SGCitas1.Cells[11,i] := QryGeneral.Fields.FieldByName('usuario').AsString;
                SGCitas1.Cells[12,i] := FormatDateTime('DD/MM/YYYY hh:mm:ss', QryGeneral.Fields.FieldByName('Fecha').AsDateTime);
                SGCitas1.Cells[13,i] := QryGeneral.Fields.FieldByName('usuario').AsString;
                SGCitas1.Cells[20,i] := QryGeneral.Fields.FieldByName('numero').AsString;
                SGCitas1.Cells[21,i] := FormatDateTime('hh:mm:ss', QryGeneral.Fields.FieldByName('Fecha').AsDateTime);
                QryGeneral.Next;
                inc(i);
              end;
            SGCitas1.RowCount  := i + 1;
          end;
    3 : begin
          PageControl1.ActivePageIndex  := 0;
          QryGeneral.Close;
          QryGeneral.SQL.Clear;
          QryGeneral.SQL.Add('select * from cicitas ');
          QryGeneral.SQL.Add('where convert(varchar(10),fecha,103) = '''+FormatDateTime('DD/MM/YYYY', mxCalendar1.Date)+'''');
          QryGeneral.SQL.Add(' and cd_cama = '''+SGUbicacion.Rows[SGUbicacion.Row].Strings[3]+'''');
          QryGeneral.SQL.Add(' and cd_seccion = '''+SGUbicacion.Rows[SGUbicacion.Row].Strings[2]+'''');
          QryGeneral.SQL.Add(' and cd_tipo = '''+SGUbicacion.Rows[SGUbicacion.Row].Strings[1]+'''');
          QryGeneral.SQL.Add(' and estado = ''A''');
          QryGeneral.SQL.Add('order by fecha');
          QryGeneral.Open;

          LimpiaGrillaCitas(SGCitas, 30);
          i := 1;
          while not QryGeneral.Eof do
            begin
              e := 1;
              while e < SGCitas.RowCount do
                begin
                  if FormatDateTime('hh:nn ampm', QryGeneral.Fields.FieldByName('Fecha').AsDateTime) =  FormatDateTime('hh:nn ampm',(StrToTime(SGCitas.Rows[e].Strings[1]))) then
                    begin
                      SGCitas.Cells[2,e]  := QryGeneral.Fields.FieldByName('nombre_usuario').AsString;
                      SGCitas.Cells[3,e]  := QryGeneral.Fields.FieldByName('tp_ident_usuar').AsString;
                      SGCitas.Cells[4,e]  := QryGeneral.Fields.FieldByName('nr_ident_usuar').AsString;
                      SGCitas.Cells[5,e]  := QryGeneral.Fields.FieldByName('tp_ident_medico').AsString;
                      SGCitas.Cells[6,e]  := QryGeneral.Fields.FieldByName('nr_ident_medico').AsString;


                      SGCitas.Cells[8,e]  := QryGeneral.Fields.FieldByName('tipo_consulta').AsString;
                      SGCitas.Cells[9,e]  := QryGeneral.Fields.FieldByName('tiempo').AsString;
                      SGCitas.Cells[10,e]  := QryGeneral.Fields.FieldByName('nota').AsString;
                      SGCitas.Cells[11,e] := QryGeneral.Fields.FieldByName('estado').AsString;
                      SGCitas.Cells[12,e] := QryGeneral.Fields.FieldByName('usuario').AsString;
                      SGCitas.Cells[13,e] := FormatDateTime('DD/MM/YYYY hh:mm:ss', QryGeneral.Fields.FieldByName('Fecha').AsDateTime);
                      SGCitas.Cells[14,e] := QryGeneral.Fields.FieldByName('usuario').AsString;
                      SGCitas.Cells[20,e] := QryGeneral.Fields.FieldByName('numero').AsString;
                      SGCitas.Cells[7,e]  := '.';
                      SGCitas.Cells[21,e] := '*';

                      LLenaTiempoCita(StrToInt(QryGeneral.Fields.FieldByName('tiempo').AsString), e);
                    end;
                  inc(e);
                end;
              QryGeneral.Next;
              inc(i);
            end;
        end;
   end;
end;



procedure TFAgenda.SGMedicosClick(Sender: TObject);
begin
  ChkMedicos.Checked := False;
  MedicoSel          := SGMedicos.Rows[SGMedicos.Row].Strings[1];
  VistaNumero:=0;
  BuscaCitas;
end;

procedure TFAgenda.LimpiaGrillaCitas(Grilla : TJvStringGrid; Col : Integer);
var i,e : Integer;
begin
  i := 1;
  while i < Grilla.RowCount - 1 do
    begin
      e := 2;
      while e <= Col do
        begin
          Grilla.Cells[e,i] := '';
          inc(e);
        end;
      inc(i);
    end;
end;

procedure TFAgenda.LLenaTiempoCita(Tiem  : Integer; Nfila : Integer);
var  FCont, i, e, R, j : Integer;
     sw                : Boolean;
     c, h              : Integer;
begin
  sw    := False;
  e     := Nfila;
  FCont := SGCitas.RowCount - 1;
  c     := Tiem ;    ///aqui va la duración de la cita en minutos

  j                := SGCitas.RowCount - e - 1;

  R                := SGCitas.RowCount- 1;

  i := 1;
  h := c + e;
  while i < SGCitas.RowCount -1 do
    begin
      SGCitas.Cells[0,e+1]   :=   SGCitas.Rows[h].Strings[0];
      SGCitas.Cells[1,e+1]   :=   SGCitas.Rows[h].Strings[1];
      SGCitas.Cells[2,e+1]   :=   SGCitas.Rows[h].Strings[2];
      SGCitas.Cells[3,e+1]   :=   SGCitas.Rows[h].Strings[3];
      SGCitas.Cells[4,e+1]   :=   SGCitas.Rows[h].Strings[4];
      SGCitas.Cells[5,e+1]   :=   SGCitas.Rows[h].Strings[5];
      SGCitas.Cells[6,e+1]   :=   SGCitas.Rows[h].Strings[6];
      SGCitas.Cells[7,e+1]   :=   SGCitas.Rows[h].Strings[7];
      SGCitas.Cells[8,e+1]   :=   SGCitas.Rows[h].Strings[8];
      SGCitas.Cells[9,e+1]   :=   SGCitas.Rows[h].Strings[9];
      SGCitas.Cells[10,e+1]  :=   SGCitas.Rows[h].Strings[10];
      SGCitas.Cells[11,e+1]  :=   SGCitas.Rows[h].Strings[11];
      SGCitas.Cells[12,e+1]  :=   SGCitas.Rows[h].Strings[12];
      SGCitas.Cells[13,e+1]  :=   SGCitas.Rows[h].Strings[13];
      SGCitas.Cells[14,e+1]  :=   SGCitas.Rows[h].Strings[14];
      SGCitas.Cells[15,e+1]  :=   SGCitas.Rows[h].Strings[15];
      SGCitas.Cells[16,e+1]  :=   SGCitas.Rows[h].Strings[16];
      SGCitas.Cells[17,e+1]  :=   SGCitas.Rows[h].Strings[17];
      SGCitas.Cells[18,e+1]  :=   SGCitas.Rows[h].Strings[18];
      SGCitas.Cells[19,e+1]  :=   SGCitas.Rows[h].Strings[19];
      SGCitas.Cells[20,e+1]  :=   SGCitas.Rows[h].Strings[20];
      SGCitas.Cells[21,e+1]  :=   SGCitas.Rows[h].Strings[21];
      SGCitas.Cells[22,e+1]  :=   SGCitas.Rows[h].Strings[22];
      SGCitas.Cells[23,e+1]  :=   SGCitas.Rows[h].Strings[23];
      SGCitas.Cells[24,e+1]  :=   SGCitas.Rows[h].Strings[24];
      SGCitas.Cells[25,e+1]  :=   SGCitas.Rows[h].Strings[25];
      SGCitas.Cells[26,e+1]  :=   SGCitas.Rows[h].Strings[26];
      SGCitas.Cells[27,e+1]  :=   SGCitas.Rows[h].Strings[27];
      SGCitas.Cells[28,e+1]  :=   SGCitas.Rows[h].Strings[28];
      SGCitas.Cells[29,e+1]  :=   SGCitas.Rows[h].Strings[29];
      SGCitas.Cells[30,e+1]  :=   SGCitas.Rows[h].Strings[30];
      inc(i);
      inc(h);
      inc(e);
    end;
  SGCitas.RowCount  := SGCitas.RowCount - c+1;
end;


procedure TFAgenda.mxCalendar1Click(Sender: TObject);
begin
  if PageControl3.ActivePage = TabSheet8 Then
  Begin
    if ChkMedicos.Checked = True then
    VistaNumero:=1
    else
     VistaNumero:=0;
  End
  Else     VistaNumero:=3;

  BuscaCitas;
end;

procedure TFAgenda.NAsisClick(Sender: TObject);
begin
 try
    DataModule1.ADOConnection1.BeginTrans;
    QryGeneral.Close;
    QryGeneral.SQL.Clear;
    QryGeneral.SQL.Add('update cicitas set ');
    QryGeneral.SQL.Add(' Cumplida = '''+'2'+'''');
    QryGeneral.SQL.Add(' where numero = '''+SGCitas.Rows[SGCitas.Row].Strings[20]+'''');
    QryGeneral.ExecSQL;
    DataModule1.ADOConnection1.CommitTrans;

    Application.MessageBox('Cita se marco como NO cumplica','Información',MB_OK+MB_ICONINFORMATION);
      VistaNumero:=0;
      BuscaCitas;
  except
    DataModule1.ADOConnection1.RollbackTrans;

    Application.MessageBox('Error al momento de modificar la cita..por favor comuníquese con el Help Desk','Error',MB_OK+MB_ICONERROR);
    VistaNumero:=0;
    BuscaCitas;
  end;
end;

procedure TFAgenda.LimpiaGrillaST(Grilla : TStringGrid; Col : Integer);
var i,e : Integer;
begin
  i := 1;
  while i < Grilla.RowCount - 1 do
    begin
      e := 0;
      while e <= Col do
        begin
          Grilla.Cells[e,i] := '';
          inc(e);
        end;
      inc(i);
    end;
end;

procedure TFAgenda.BtnConfirmarClick(Sender: TObject);
begin
  if Memo1.Lines.Text = '' then
    begin
      Application.MessageBox('Debe ingresar el motivo de la cancelación','Información',MB_OK+MB_ICONINFORMATION);
      Exit;
    end;

  if Application.MessageBox('Está seguro(a) de cancelar la cita?','Pregunta',MB_YESNO) = idYes then
    begin
      try
        DataModule1.ADOConnection1.BeginTrans;

        QryGeneral.Close;
        QryGeneral.SQL.Clear;
        QryGeneral.SQL.Add('update cicitas set Estado = ''C'',');
        QryGeneral.SQL.Add(' MotivoCancelacion = '''+Memo1.Lines.Text+'''');
        QryGeneral.SQL.Add(' where numero = '''+SGCitas.Rows[SGCitas.Row].Strings[20]+'''');
        QryGeneral.ExecSQL;

        DataModule1.ADOConnection1.CommitTrans;

        Application.MessageBox('Se Cancelo la cita correctamente','Información',MB_OK+MB_ICONINFORMATION);

        VistaNumero:=0;
        BuscaCitas;
        JvBitBtn2Click(Self);
      except
        DataModule1.ADOConnection1.RollbackTrans;

        Application.MessageBox('Error al momento de cancelar la cita..por favor comuníquese con el Help Desk','Error',MB_OK+MB_ICONERROR);
        VistaNumero:=0;
        BuscaCitas;
        JvBitBtn2Click(Self);
      end;
    end;
end;

procedure TFAgenda.JvBitBtn2Click(Sender: TObject);
begin
  Memo1.Lines.Text            := '';
  BtnNuevaC.Enabled           := True;
  BtnCancelarC.Enabled        := True;
  ChkMedicos.Enabled          := True;
  PnlPacientes.Height         := 0;
  SGMedicos.Enabled           := True;
  mxCalendar1.Enabled         := True;
  if swReasig = true then
    begin
      SGCitas.Rows[filaActual].Strings[0] := '';
      BtnReasignar.Caption                := '&Reasignar cita';
      BtnModificarC.Caption               := '&Modificar cita';
      SGCitas.Options                     := [goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine];
      swReasig                            := False;
    end;
  SGCitasClick(Self);
end;

procedure TFAgenda.JvBitBtn8Click(Sender: TObject);
begin
  FVHuella := tFVHuella.create(application);
  try
    FVHuella.ShowModal;
    CBTiposDoc.Text := FVHuella.Edit6.Text;
    EditNumDoc.Text := FVHuella.Edit1.Text;
    BtnOkClick(Self);
  except
    FVHuella.free;
  end;
end;

procedure TFAgenda.BtnCancelarCClick(Sender: TObject);
begin
  BtnNuevaC.Enabled             := False;
  BtnCancelarC.Enabled          := False;
  ChkMedicos.Enabled            := False;
  PageControl2.ActivePageIndex  := 1;
  PageControl4.Visible          := False;
  Memo1.SetFocus;
  swReasig                      := True; 
  PnlPacientes.Height           := 270;
end;

procedure TFAgenda.Citasdelpaciente1Click(Sender: TObject);
var i : Integer;
begin
  if SGCitas.Rows[SGCitas.Row].Strings[1] = '' then Exit;

  QryGeneral.Close;
  QryGeneral.SQL.Clear;
  QryGeneral.SQL.Add('select * from cicitas');
  QryGeneral.SQL.Add(' where tp_ident_usuar = '''+SGCitas.Rows[SGCitas.Row].Strings[3]+'''');
  QryGeneral.SQL.Add(' and nr_ident_usuar = '''+SGCitas.Rows[SGCitas.Row].Strings[4]+'''');
  QryGeneral.SQL.Add(' and estado = ''A''');
  QryGeneral.SQL.Add('order by Month(fecha), day(fecha)');
  QryGeneral.SQL.Add('');
  QryGeneral.SQL.Add('');
  QryGeneral.Open;

  LimpiaGrillaST(SGCitasP, 20);
  i := 1;
  while not QryGeneral.Eof do
    begin
      SGCitasP.Cells[0,i]  := FormatDateTime('dddd DD ''de'' mmmm ''de'' yyyy', QryGeneral.Fields.FieldByName('Fecha').AsDateTime);
      SGCitasP.Cells[1,i]  := FormatDateTime('hh:mm:ss', QryGeneral.Fields.FieldByName('Fecha').AsDateTime);
      SGCitasP.Cells[2,i]  := QryGeneral.Fields.FieldByName('tp_ident_medico').AsString;
      SGCitasP.Cells[3,i]  := QryGeneral.Fields.FieldByName('nr_ident_medico').AsString;
      SGCitasP.Cells[4,i]  := QryGeneral.Fields.FieldByName('tp_ident_usuar').AsString;
      SGCitasP.Cells[5,i]  := QryGeneral.Fields.FieldByName('nr_ident_usuar').AsString;
      SGCitasP.Cells[6,i]  := QryGeneral.Fields.FieldByName('nombre_usuario').AsString;
      SGCitasP.Cells[7,i]  := QryGeneral.Fields.FieldByName('tipo_consulta').AsString;
      SGCitasP.Cells[8,i]  := QryGeneral.Fields.FieldByName('tiempo').AsString;
      SGCitasP.Cells[9,i]  := QryGeneral.Fields.FieldByName('nota').AsString;
      SGCitasP.Cells[10,i] := QryGeneral.Fields.FieldByName('estado').AsString;
      SGCitasP.Cells[11,i] := FormatDateTime('DD/MM/YYYY hh:mm:ss', QryGeneral.Fields.FieldByName('Fecha').AsDateTime);
      SGCitasP.Cells[12,i] := QryGeneral.Fields.FieldByName('usuario').AsString;
      QryGeneral.Next;
      inc(i);
    end;
  SGCitasP.RowCount  := i + 1;
  PageControl1.ActivePageIndex  := 1;
end;

procedure TFAgenda.BtnRegresarClick(Sender: TObject);
begin
  LimpiaGrillaST(SGCitasP, 20);
  PageControl1.ActivePageIndex := 0;
end;

procedure TFAgenda.SGCitasMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 L := Y;
 T  := X;
end;

procedure TFAgenda.SGCitas1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var e  : integer;
begin
   for e := 1 to SGCitas1.RowCount - 1 do
     begin
       if Arow = e then
         begin
           if (SGCitas1.Cells[0,e] = '.') and (SGCitas1.Cells[1,e] <> '') and (SGCitas1.Cells[2,e] <> '') and (SGCitas1.Cells[3,e] <> '')then
             begin
               SGCitas1.Canvas.Font.Color  := clBlue;
               SGCitas1.Canvas.Brush.Color := $009CDEF7;
               SGCitas1.Canvas.TextRect(Rect, Rect.Left, Rect.Top, SGCitas1.Cells[Acol,Arow]);
             end;

           if (SGCitas1.Cells[0,ARow] = '-') then
             begin
               SGCitas1.Canvas.Font.Color    := clWhite;
               SGCitas1.Canvas.Brush.Color   := $0093710B;//$00F39118;
               SGCitas1.Canvas.TextRect(Rect, Rect.Left, Rect.Top, SGCitas1.Cells[Acol,Arow]);
             end;

          end;
     end;

 if ARow < 1 then exit;
 if SGCitas1.cells[ACol,ARow] = '' then exit;

 if (ACol = 7) and (SGCitas1.Cells[Acol,Arow] = '.') then
   with SGCitas1.Canvas do
     Draw(Rect.Left, Rect.Top,Mas.Picture.Graphic);
end;

procedure TFAgenda.SGCitas1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 L := Y;
 T  := X;
end;

procedure TFAgenda.SGCitasClick(Sender: TObject);
var i:Integer;
begin
  if (SGCitas.Col = 7) and (SGCitas.Rows[SGCitas.Row].Strings[21] = '*') then
    begin
      if PnlDetalle.Height = 0 then
        begin
          JEditTipDocM.Text     := SGCitas.Rows[SGCitas.Row].Strings[5];
          JEditNumDocM.Text     := SGCitas.Rows[SGCitas.Row].Strings[6];
          JEditTipoCons.Text    := SGCitas.Rows[SGCitas.Row].Strings[8];
          JEditTimpoC.Text      := SGCitas.Rows[SGCitas.Row].Strings[9];
          JMmObserC.Lines.Text  := SGCitas.Rows[SGCitas.Row].Strings[10];
          JEditFechaC.Text      := FormatDateTime('DD/MM/YYYY', mxCalendar1.Date);
          JEditHoraC.Text       := SGCitas.Rows[SGCitas.Row].Strings[1];

          QryGeneral1.Close;
          QryGeneral1.SQL.Clear;
          QryGeneral1.SQL.Add('SELECT Primer_Apellido, Segundo_Apellido, Nombres');
          QryGeneral1.SQL.Add('FROM comunes..SEPersonas AS A, comunes..SEEmpleados AS B');
          QryGeneral1.SQL.Add('WHERE A.ID =  B.ID');
          QryGeneral1.SQL.Add('      AND B.Empresa_Trabaja = '''+DataModule1.ADOQuery1.Fields.FieldByName('EMPRESA_TRABAJA').AsString+'''');  ///ojo cambiar
          QryGeneral1.SQL.Add('      AND  A.ID = '''+SGCitas.Rows[SGCitas.Row].Strings[14]+''''); ///ojo cambiar
          QryGeneral1.Open;

          if not QryGeneral1.Eof then
            JEditUsuarioAsigna.Text  := QryGeneral1.Fields.FieldByName('Primer_Apellido').AsString + ' ' +
                                        QryGeneral1.Fields.FieldByName('Segundo_Apellido').AsString + ' ' +
                                        QryGeneral1.Fields.FieldByName('Nombres').AsString;

          PnlDetalle.Height        := 185;
          PnlDetalle.Top           := L + SGCitas.Top + Panel3.Height +18 ;
          PnlDetalle.Left          := T + SGCitas.Left-PnlDetalle.Width + Panel4.Width;
        end
      else
        begin
          JEditTipDocM.Text        := '';
          JEditNumDocM.Text        := '';
          JEditTipoCons.Text       := '';
          JEditTimpoC.Text         := '';
          JMmObserC.Lines.Text     := '';
          JEditUsuarioAsigna.Text  := '';
          PnlDetalle.Height        := 0;
        end;
    end;

  if swReasig = False then
    begin
      if (SGCitas.Rows[SGCitas.Row].Strings[14] <> DataModule1.ADOQuery1.Fields.FieldByName('ID').AsString) then
        begin
          BtnReasignar.Enabled  := False;
          BtnModificarC.Enabled := False;
          BtnCancelarC.Enabled  := False;
          Asis.Enabled  := False;
          NAsis.Enabled := False;
        end
      else
        begin
          BtnReasignar.Enabled  := True;
          BtnCancelarC.Enabled  := True;
          BtnModificarC.Enabled := True;
          Asis.Enabled  := True;
          NAsis.Enabled := True;
        end;
    end;

  if (SGCitas.Rows[SGCitas.Row].Strings[0] = '') then
    JLblHora.Caption  := SGCitas.Rows[SGCitas.Row].Strings[1]
  else
    JLblHora.Caption  := '';
end;

procedure TFAgenda.SGCitasDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var e   : integer;
begin

   for e := 1 to SGCitas.RowCount - 1 do
     begin
       if Arow = e then
         begin
           if (SGCitas.Cells[0,e] = '.') and (SGCitas.Cells[1,e] <> '') and (SGCitas.Cells[2,e] <> '') and (SGCitas.Cells[3,e] <> '')then
             begin
               SGCitas.Canvas.Font.Color  := clBlue;
               SGCitas.Canvas.Brush.Color := $009CDEF7;
               SGCitas.Canvas.TextRect(Rect, Rect.Left, Rect.Top, SGCitas.Cells[Acol,Arow]);
             end;

           if (SGCitas.Cells[0,ARow] = '-') then
             begin
               SGCitas.Canvas.Font.Color    := clWhite;
               SGCitas.Canvas.Brush.Color   := $0093710B;//$00F39118;
               SGCitas.Canvas.TextRect(Rect, Rect.Left, Rect.Top, SGCitas.Cells[Acol,Arow]);
             end;

           if (SGCitas.Cells[0,ARow] = '1') then
             begin
               SGCitas.Canvas.Font.Color  := clWhite;
               SGCitas.Canvas.Brush.Color := $00FF8080;
               SGCitas.Canvas.TextRect(Rect, Rect.Left, Rect.Top, SGCitas.Cells[Acol,Arow]);
             end;

           if (SGCitas.Cells[0,ARow] = '2') then
             begin
               SGCitas.Canvas.Font.Color  := clWhite;
               SGCitas.Canvas.Brush.Color := $008080FF;
               SGCitas.Canvas.TextRect(Rect, Rect.Left, Rect.Top, SGCitas.Cells[Acol,Arow]);
             end;
          end;
     end;

 if ARow < 1 then exit;
 if SGCitas.cells[ACol,ARow] = '' then exit;

 if (ACol = 7) and (SGCitas.Cells[Acol,Arow] = '.') then
   with SGCitas.Canvas do
     Draw(Rect.Left, Rect.Top,Mas.Picture.Graphic);
end;

procedure TFAgenda.BtnReasignarClick(Sender: TObject);
var  i,j    : Integer;
    Cad     : string;
    sw      : Boolean;
    fecHor  : TDateTime;
begin
  if swReasig = False then
    begin
      BtnConfirmar.Visible          := False;
      BtnNuevaC.Enabled             := False;
      BtnCancelarC.Enabled          := False;
      ChkMedicos.Enabled            := False;
      BtnModificarC.Enabled         := False;
      BtnReasignar.Caption          := 'Grabar';
      SGCitas.Options               := [goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine, goRowSelect];
      filaActual                    := SGCitas.Row;
      NumCita                       := '';
      NumCita                       := SGCitas.Rows[filaActual].Strings[20];
      SGCitas.Cells[0,filaActual]   := '.';
      PnlPacientes.Height           := 270;
      swReasig                      := True;
      JLblHora.Caption              := '';
      i := 0;
      while i < Length(vecTipoCitas) do
        begin
          if vecTipoCitas[i] = SGCitas.Rows[SGCitas.Row].Strings[8] then
            begin
              CBTiposCitas.ItemIndex  := i;
              Break;
            end;
          inc(i);
        end;

      i := 0;
      while i < Length(vecTiposDoc) do
        begin
          if vecTiposDoc[i,0] = SGCitas.Rows[SGCitas.Row].Strings[3] then
            begin
              CBTiposDoc.ItemIndex  := i;
              Break;
            end;
          inc(i);
        end;

      EditNumDoc.Text            := SGCitas.Rows[SGCitas.Row].Strings[4];
      EditNombrePaciente.Text    := SGCitas.Rows[SGCitas.Row].Strings[2];
      EditTiempo.Text            := SGCitas.Rows[SGCitas.Row].Strings[9];
      MmObservaciones.Lines.Text := SGCitas.Rows[SGCitas.Row].Strings[10];

      EditNumDoc.Enabled         := False;
      EditNombrePaciente.Enabled := False;
      CBTiposDoc.Enabled         := False;
      BtnAsignarCita.Enabled     := False;
    end
  else
    begin

      i := SGCitas.Row + 1;
      j := 1;
      while i < SGCitas.RowCount - 1 do
        begin
          if (SGCitas.Rows[i].Strings[2] = 'CIERRE') and (SGCitas.Rows[i].Strings[3] = 'DEL') and (SGCitas.Rows[i].Strings[4] = 'DIA') then
            sw := True;

          if (SGCitas.Rows[i].Strings[2] = '')then
            j := j +1
          else
            begin
              if (SGCitas.Rows[i].Strings[0] = '.') then
                j := j + 1
              else
                Break;
            end;
          inc(i);
        end;

      if j < StrToInt(EditTiempo.Text) then
        begin
          if sw = True then
            Application.MessageBox('No se puede asignar la cita, tiempo restante menor a la duración de la cita','Advertencia',MB_OK+MB_ICONWARNING)
          else
            Application.MessageBox('No se puede asignar la cita, tiempo entre citas menor a la duración de la cita','Advertencia',MB_OK+MB_ICONWARNING);
          Exit;
        end;

      try
          DataModule1.ADOConnection1.BeginTrans;

          QryGeneral.Close;
          QryGeneral.SQL.Clear;
          QryGeneral.SQL.Add('insert into cicitas (Tp_Ident_Medico, Nr_Ident_Medico, Tp_Ident_Usuar,');
          QryGeneral.SQL.Add('Nr_Ident_Usuar, Nombre_Usuario, Tipo_Consulta, Nota, Estado, Tiempo, Fecha, Usuario,CD_Cama,CD_Seccion,CD_Tipo, cumplida)');
          QryGeneral.SQL.Add(' values (');
          QryGeneral.SQL.Add(''''+SGMedicos.Rows[SGMedicos.Row].Strings[0]+''',');
          QryGeneral.SQL.Add(''''+SGMedicos.Rows[SGMedicos.Row].Strings[1]+''',');
          QryGeneral.SQL.Add(''''+vecTiposDoc[CBTiposDoc.ItemIndex,0]+''',');
          QryGeneral.SQL.Add(''''+EditNumDoc.Text+''',');
          QryGeneral.SQL.Add(''''+EditNombrePaciente.Text+''',');
          QryGeneral.SQL.Add(''''+vecTipoCitas[CBTiposCitas.ItemIndex]+''',');
          QryGeneral.SQL.Add(''''+MmObservaciones.Lines.Text+''',');

          QryGeneral.SQL.Add('''A'',');
          QryGeneral.SQL.Add(''''+EditTiempo.Text+''','); //tiempo

          Cad     := '';
          Cad     := FormatDateTime('DD/MM/YYYY',mxCalendar1.Date) + SGCitas.Rows[SGCitas.Row].Strings[1];
          fecHor  := StrToDateTime(Cad);

          QryGeneral.SQL.Add(''''+FormatDateTime('DD/MM/YYYY hh:mm:ss',fecHor)+''',');
          QryGeneral.SQL.Add(''''+DataModule1.ADOQuery1.Fields.FieldByName('ID').AsString+''',');  //OJO CAMBIAR
          QryGeneral.SQL.Add(''''+SGUbicacion.Rows[SGUbicacion.Row].Strings[3]+''',');
          QryGeneral.SQL.Add(''''+SGUbicacion.Rows[SGUbicacion.Row].Strings[2]+''',');
          QryGeneral.SQL.Add(''''+SGUbicacion.Rows[SGUbicacion.Row].Strings[1]+''',');
          QryGeneral.SQL.Add('0)');
          QryGeneral.ExecSQL;

          QryGeneral.Close;
          QryGeneral.SQL.Clear;
          QryGeneral.SQL.Add('update cicitas set Estado = ''R''');
          QryGeneral.SQL.Add(' where numero = '''+NumCita+'''');
          QryGeneral.ExecSQL;

          DataModule1.ADOConnection1.CommitTrans;

        Application.MessageBox('Se Reasignó la cita correctamente','Información',MB_OK+MB_ICONINFORMATION);
        BtnCancelarCitaClick(Self);
        VistaNumero:=0;
        BuscaCitas;
        SGCitasClick(Self);
      except
          DataModule1.ADOConnection1.RollbackTrans;

        Application.MessageBox('Error al momento de Reasignar la cita..por favor comuníquese con el Help Desk','Error',MB_OK+MB_ICONERROR);
        BtnCancelarCitaClick(Self);
        SGCitasClick(Self);
        VistaNumero:=0;
        BuscaCitas;
      end;
    end;
end;

procedure TFAgenda.BtnModificarCClick(Sender: TObject);
var  i    : Integer;
begin
  PageControl4.Visible          := True;
  if swReasig = False then
    begin
      SGCitas.Enabled               := False;
      Panel4.Enabled                := False;
      BtnNuevaC.Enabled             := False;
      BtnCancelarC.Enabled          := False;
      BtnConfirmar.Visible          := False;
      ChkMedicos.Enabled            := False;
      BtnModificarC.Enabled         := True;
      BtnModificarC.Caption         := 'Grabar';
      SGCitas.Options               := [goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine, goRowSelect];
      filaActual                    := SGCitas.Row;
      NumCita                       := '';
      NumCita                       := SGCitas.Rows[filaActual].Strings[20];
      SGCitas.Cells[0,filaActual]   := '-';
      PnlPacientes.Height           := 270;
      swReasig                      := True;
      JLblHora.Caption              := '';
      i := 0;
      while i < Length(vecTipoCitas) do
        begin
          if vecTipoCitas[i] = SGCitas.Rows[SGCitas.Row].Strings[8] then
            begin
              CBTiposCitas.ItemIndex  := i;
              Break;
            end;
          inc(i);
        end;

      i := 0;
      while i < Length(vecTiposDoc) do
        begin
          if vecTiposDoc[i,0] = SGCitas.Rows[SGCitas.Row].Strings[3] then
            begin
              CBTiposDoc.ItemIndex  := i;
              Break;
            end;
          inc(i);
        end;

      EditNumDoc.Text            := SGCitas.Rows[SGCitas.Row].Strings[4];
      EditNombrePaciente.Text    := SGCitas.Rows[SGCitas.Row].Strings[2];
      EditTiempo.Text            := SGCitas.Rows[SGCitas.Row].Strings[9];
      MmObservaciones.Lines.Text := SGCitas.Rows[SGCitas.Row].Strings[10];

      EditNumDoc.Enabled         := False;
      EditNombrePaciente.Enabled := False;
      CBTiposDoc.Enabled         := False;
      BtnReasignar.Enabled       := False;
      BtnAsignarCita.Enabled     := False;
    end
  else
    begin

      try
          DataModule1.ADOConnection1.BeginTrans;

          QryGeneral.Close;
          QryGeneral.SQL.Clear;
          QryGeneral.SQL.Add('update cicitas set ');
          QryGeneral.SQL.Add(' Tipo_Consulta = '''+vecTipoCitas[CBTiposCitas.ItemIndex]+''',');
          QryGeneral.SQL.Add(' Nota = '''+MmObservaciones.Lines.Text+''',');
          QryGeneral.SQL.Add('Tiempo = '''+EditTiempo.Text+'''');
          QryGeneral.SQL.Add(' where numero = '''+SGCitas.Rows[SGCitas.Row].Strings[20]+'''');
          QryGeneral.ExecSQL;

          DataModule1.ADOConnection1.CommitTrans;

        Application.MessageBox('Se modifico la cita correctamente','Información',MB_OK+MB_ICONINFORMATION);
        BtnCancelarCitaClick(Self);
        VistaNumero:=0;
        BuscaCitas;
      except
        DataModule1.ADOConnection1.RollbackTrans;

        Application.MessageBox('Error al momento de modificar la cita..por favor comuníquese con el Help Desk','Error',MB_OK+MB_ICONERROR);
        BtnCancelarCitaClick(Self);
        VistaNumero:=0;
        BuscaCitas;
    end;
  end;

end;

procedure TFAgenda.SGMedicosDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var e   : integer;
begin
   for e := 1 to SGMedicos.RowCount - 1 do
     begin
       if Arow = e then
         begin
           if (SGMedicos.Cells[6,e] = '.') then
             begin
               SGMedicos.Canvas.Font.Color  := clBlue;
               SGMedicos.Canvas.Brush.Color := $009CDEF7;
               SGMedicos.Canvas.TextRect(Rect, Rect.Left, Rect.Top, SGMedicos.Cells[Acol,Arow]);
             end;
          end;
     end;
end;

procedure TFAgenda.JvSpeedButton2Click(Sender: TObject);
var
  MyRect  : TGridRect;
  i       : Integer;
begin
  if CBPM.ItemIndex <> -1 then
    begin
      i := 1;
      while i < SGCitas.RowCount do
        begin
          if SGCitas.Rows[i].Strings[1] = CBPM.Text then
            begin
              SGCitas.TopRow      := i;
              myRect.Left         := 0;
              myRect.Top          := i;
              myRect.Right        := 8;
              myRect.Bottom       := i;
              SGCitas.Selection   := myRect;
              CBPM.ItemIndex      := -1;
              exit;
            end;
          inc(i);
        end;
    end;
end;

procedure TFAgenda.JvSpeedButton1Click(Sender: TObject);
var
  MyRect  : TGridRect;
  i       : Integer;
begin
  if CBAM.ItemIndex <> -1 then
    begin
      i := 1;
      while i < SGCitas.RowCount - 1 do
        begin
          if SGCitas.Rows[i].Strings[1] = CBAM.Text then
            begin
              SGCitas.TopRow      := i;
              myRect.Left         := 0;
              myRect.Top          := i;
              myRect.Right        := 8;
              myRect.Bottom       := i;
              SGCitas.Selection   := myRect;
              CBAM.ItemIndex      := -1;
              exit;
            end;
          inc(i);
        end;
    end;
end;

procedure TFAgenda.ChkMedicosClick(Sender: TObject);
begin
  if ChkMedicos.Checked = True then
    VistaNumero := 1
  else
    VistaNumero := 0;
  BuscaCitas;
end;

procedure TFAgenda.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked = True then
    VistaNumero := 2
  else
    VistaNumero:=0;
  BuscaCitas;
end;

procedure TFAgenda.SGUbicacionClick(Sender: TObject);
begin
  ChkMedicos.Checked := False;
  MedicoSel          := SGMedicos.Rows[SGMedicos.Row].Strings[1];
  VistaNumero:=3;
  BuscaCitas;
end;

procedure TFAgenda.Ad1Click(Sender: TObject);
begin
  frmadminsiones := tfrmadminsiones.create(application);
  try
    if VistaNumero= 0 then
      begin
        frmadminsiones.DBLookupComboBox4.KeyValue := SGCitas.Rows[SGCitas.Row].Strings[3];
        frmadminsiones.Edit1.Text := SGCitas.Rows[SGCitas.Row].Strings[4];
  //      frmadminsiones.DBLookupComboBox2.KeyValue := SGCitas.Rows[SGCitas.Row].Strings[6];
      end
    else
      begin
        frmadminsiones.DBLookupComboBox4.KeyValue := SGCitas1.Rows[SGCitas1.Row].Strings[4];
        frmadminsiones.Edit1.Text := SGCitas1.Rows[SGCitas1.Row].Strings[5];
  //      frmadminsiones.DBLookupComboBox2.KeyValue := SGCitas1.Rows[SGCitas1.Row].Strings[3];
      end;
    Datamodule1.MuestraconAcceso(frmadminsiones);
    frmadminsiones.VerificarSiEstaAdmitido;

  //  frmadminsiones.Edit1.SetFocus;
   // frmadminsiones.DBLookupComboBox1.SetFocus;
  except
    frmadminsiones.free;
  end;
end;

procedure TFAgenda.AsisClick(Sender: TObject);
begin
  try
    DataModule1.ADOConnection1.BeginTrans;
    QryGeneral.Close;
    QryGeneral.SQL.Clear;
    QryGeneral.SQL.Add('update cicitas set ');
    QryGeneral.SQL.Add(' Cumplida = '''+'1'+'''');
    QryGeneral.SQL.Add(' where numero = '''+SGCitas.Rows[SGCitas.Row].Strings[20]+'''');
    QryGeneral.ExecSQL;
    DataModule1.ADOConnection1.CommitTrans;

    Application.MessageBox('Cita se marco como cumplica','Información',MB_OK+MB_ICONINFORMATION);
    VistaNumero:=0;
    BuscaCitas;
  except
    DataModule1.ADOConnection1.RollbackTrans;

    Application.MessageBox('Error al momento de modificar la cita..por favor comuníquese con el Help Desk','Error',MB_OK+MB_ICONERROR);
    VistaNumero:=0;
    BuscaCitas;
  end;
end;

procedure TFAgenda.BitBtn1Click(Sender: TObject);
begin
  ReporteadorP(MainForm.Caption,'SELECT Fecha,Nom_Cama,Nombre_Usuario '+
        ' FROM CICitas,SACamas '+
        ' WHERE CICitas.cd_tipo = SACamas.cd_tipo AND '+
        '    CICitas.cd_seccion = SACamas.cd_seccion AND '+
        '    CICitas.cd_cama = SACamas.cd_cama AND day(Fecha) = '+inttostr(dayof(mxCalendar1.Date)),'');
end;

procedure TFAgenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFAgenda.FormCreate(Sender: TObject);
begin
  QryGeneral.Close;  //QUERY PARA EXTRAER LOS HORARIOS DE LAS SEDES.
  QryGeneral.SQL.Clear;
  QryGeneral.SQL.Add('SELECT * FROM CIParametros');
  QryGeneral.Open;

  if QryGeneral.FieldByName('Tipo').AsInteger = 1 then
    PageControl3.ActivePage := TabSheet8
  Else
    PageControl3.ActivePage := TabSheet9;

  PnlPacientes.Height           := 0;
end;

end.
