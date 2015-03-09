unit SAEgresos;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, ADODB, Mask, ExtCtrls, Buttons, ComCtrls,StrUtils,
  Grids, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxDBEdit, FImpSolicitud, mxOutlookBar;

type
  TfrmEgresos = class(TForm)
    ScrollBox: TScrollBox;
    DataSource1: TDataSource;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    EditNO_CAMA: TDBEdit;
    Label9: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label13: TLabel;
    DBMemo1: TDBMemo;
    DBLookupComboBox4: TDBLookupComboBox;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Edit2: TEdit;
    ADOQuery1: TADOQuery;
    DBEdit1: TDBEdit;
    QryAdmisiones: TADOQuery;
    Label6: TLabel;
    QryAdmisionesNO_ADMISION: TStringField;
    QryAdmisionesFEC_ADMISION: TDateTimeField;
    QryAdmisionesTP_ADMISION: TStringField;
    QryAdmisionesTP_IDENT_USUAR: TStringField;
    QryAdmisionesNR_IDENT_USUAR: TStringField;
    QryAdmisionesUN_MEDIDA_EDAD: TStringField;
    QryAdmisionesVALOR_EDAD: TIntegerField;
    QryAdmisionesNO_CAMA: TStringField;
    QryAdmisionesTP_IDENT_MEDICO: TStringField;
    QryAdmisionesNR_IDENT_MEDICO: TStringField;
    QryAdmisionesMEDICO_HOSPITAL: TStringField;
    QryAdmisionesREMITIDO: TStringField;
    QryAdmisionesDEP_REMISION: TStringField;
    QryAdmisionesMUNICIPIO_REMISION: TStringField;
    QryAdmisionesOBSERVACIONES: TMemoField;
    QryAdmisionesEST_ADMINSION: TStringField;
    QryAdmisionesTIP_CONSULTA: TStringField;
    QryAdmisionesTIP_SECCION: TStringField;
    QryAdmisionesTIP_CONSULTORIO: TStringField;
    QryAdmisionesCOD_USUARIO: TStringField;
    QryAdmisionesFEC_INGRESO: TDateTimeField;
    QryAdmisionesASEGURADORA: TStringField;
    QryAdmisionesDIAGNOSTICO: TStringField;
    QryAdmisionesNO_AUTORIZACION: TStringField;
    QryAdmisionesFEC_EGRESO: TDateTimeField;
    QryAdmisionesDIAGN_P_EGRESO: TStringField;
    QryAdmisionesDIAGN_E_REL1: TStringField;
    QryAdmisionesDIAGN_E_REL2: TStringField;
    QryAdmisionesDIAGN_E_REL3: TStringField;
    QryAdmisionesDIAGN_COMPL: TStringField;
    QryAdmisionesDIAGN_MUERTE: TStringField;
    QryAdmisionesEST_SALIDA: TStringField;
    QryAdmisionesDIAGN_I_REL1: TStringField;
    QryAdmisionesDIAGN_I_REL2: TStringField;
    QryAdmisionesDIAGN_I_REL3: TStringField;
    QryAdmisionesTP_DIAGN_PPAL: TStringField;
    QryAdmisionesFINALIDAD_CONS: TStringField;
    QryAdmisionesCAUSA_EXTERNA: TStringField;
    QryAdmisionesRN_EDAD: TIntegerField;
    QryAdmisionesRN_CONTROL: TStringField;
    QryAdmisionesRN_PESO: TIntegerField;
    QryAdmisionesRN_SEXO: TStringField;
    QryAdmisionesRN_FECNAC: TDateTimeField;
    QryAdmisionesMOTIVO_EGRESO: TStringField;
    QryGeneralDiag: TADOQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    DateTimePicker2: TDateTimePicker;
    BitBtn2: TBitBtn;
    ComboBox1: TComboBox;
    EditCodP: TEdit;
    EditDesP: TEdit;
    BitBtn3: TBitBtn;
    EditCodR1: TEdit;
    EditDesR1: TEdit;
    EditCodR2: TEdit;
    EditDesR2: TEdit;
    EditCodR3: TEdit;
    EditDesR3: TEdit;
    EditCodCom: TEdit;
    EditDesComp: TEdit;
    EditCodMue: TEdit;
    EditDesMue: TEdit;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    Label18: TLabel;
    Bevel1: TBevel;
    GroupBox3: TGroupBox;
    Panel3: TPanel;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Panel4: TPanel;
    BtnSiguiente: TBitBtn;
    BtnSiguiente1: TBitBtn;
    Label19: TLabel;
    Label20: TLabel;
    TabSheet6: TTabSheet;
    BtnAtras1: TBitBtn;
    Label22: TLabel;
    EditECodP: TEdit;
    EditEDesP: TEdit;
    Label23: TLabel;
    BitBtn18: TBitBtn;
    EditECodR1: TEdit;
    EditEDesR1: TEdit;
    BitBtn19: TBitBtn;
    Label24: TLabel;
    EditECodR2: TEdit;
    EditEDesR2: TEdit;
    BitBtn20: TBitBtn;
    Label25: TLabel;
    EditECodR3: TEdit;
    EditEDesR3: TEdit;
    BitBtn21: TBitBtn;
    Label26: TLabel;
    Bevel2: TBevel;
    GroupBox4: TGroupBox;
    Panel5: TPanel;
    BtnSiguiente2: TBitBtn;
    BtnAtras2: TBitBtn;
    Bevel3: TBevel;
    GroupBox5: TGroupBox;
    Panel6: TPanel;
    BtnSiguiente3: TBitBtn;
    BtnAtras3: TBitBtn;
    Label21: TLabel;
    Bevel4: TBevel;
    GroupBox6: TGroupBox;
    Panel7: TPanel;
    BtnSiguiente4: TBitBtn;
    BtnAtras4: TBitBtn;
    PnlBusqueda: TPanel;
    SGDatos: TStringGrid;
    Panel1: TPanel;
    Label17: TLabel;
    EditPalabra: TEdit;
    BtnBuscar: TBitBtn;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    ListFinalidadConsulta: TListBox;
    ListDestinoUsuario: TListBox;
    ListCausaExterna: TListBox;
    ListViaIngreso: TListBox;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    ListAmbito: TListBox;
    ListPersona: TListBox;
    ListFinalidadP: TListBox;
    ListForma: TListBox;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Bevel5: TBevel;
    CBEdadG: TComboBox;
    CBPeso: TComboBox;
    CBControlPre: TComboBox;
    DTPFecNaci: TDateTimePicker;
    DTPHoraNaci: TDateTimePicker;
    CBSexo: TComboBox;
    BitBtn1: TBitBtn;
    Panel8: TPanel;
    mxOutlookBar1: TmxOutlookBar;
    HEgreso: TmxOutlookBarHeader;
    HIngreso: TmxOutlookBarHeader;
    HCUH: TmxOutlookBarHeader;
    HProcedimientos: TmxOutlookBarHeader;
    HRecienNacido: TmxOutlookBarHeader;
    QryGeneral: TADOQuery;
    CBMotivoEgreso: TComboBox;
    EditMotivoEgreso: TEdit;
    EditFechaEgreso: TEdit;
    EditCodP1: TEdit;
    EditDesP1: TEdit;
    EditCodR11: TEdit;
    EditDesR11: TEdit;
    EditCodR21: TEdit;
    EditDesR21: TEdit;
    EditCodR31: TEdit;
    EditDesR31: TEdit;
    EditCodCom1: TEdit;
    EditDesCom1: TEdit;
    EditEsalida: TEdit;
    EditCodMue1: TEdit;
    EditDesMue1: TEdit;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    EditTipoDiag: TEdit;
    EditECodP1: TEdit;
    EditEDesP1: TEdit;
    EditECodR11: TEdit;
    EditEDesR11: TEdit;
    EditECodR21: TEdit;
    EditEDesR21: TEdit;
    EditECodR31: TEdit;
    EditEDesR31: TEdit;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    EditFinalidadConsulta: TEdit;
    EditCausaExterna: TEdit;
    EditDestinoUsuario: TEdit;
    EditViaIngreso: TEdit;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    EditAmbito: TEdit;
    EditFinalidadP: TEdit;
    EditPersonaAtiende: TEdit;
    EditFormaDeR: TEdit;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    EditEdadG: TEdit;
    EditPeso: TEdit;
    EditFecNaci: TEdit;
    EditHoraNaci: TEdit;
    EditControlPre: TEdit;
    EditSexo: TEdit;
    BtnCancelar: TBitBtn;
    Panel9: TPanel;
    BtnCancelar0: TBitBtn;
    Lbl1: TLabel;
    Timer1: TTimer;
    Lbl2: TLabel;
    Lbl3: TLabel;
    Lbl4: TLabel;
    ADOQCargos: TADOQuery;
    ADOQCargosTipoAdmision: TStringField;
    CBDiagPrincipal: TComboBox;
    procedure FormCreate(Sender: TObject);
    PROCEDURE APPMESSAGE(VAR MSG: TMSG; VAR HANDLED: BOOLEAN);
    procedure Edit1Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BtnBuscarClick(Sender: TObject);
    procedure LimpiaGrilla(Grilla : TStringGrid; Col : Integer);
    procedure BitBtn3Click(Sender: TObject);
    procedure Amplia(e1, e2 : TEdit; T, L : Integer);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure SGDatosDblClick(Sender: TObject);
    procedure BuscarPorCodigo(e1 : TEdit; e2 : TEdit);
    procedure EditCodPExit(Sender: TObject);
    procedure EditCodR1Exit(Sender: TObject);
    procedure EditCodR2Exit(Sender: TObject);
    procedure EditCodR3Exit(Sender: TObject);
    procedure EditCodComExit(Sender: TObject);
    procedure EditCodMueExit(Sender: TObject);
    procedure EditPalabraKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure LLenaVactores;
    procedure LLenaListas1;
    procedure TabSheet3Show(Sender: TObject);
    procedure ListFinalidadConsultaClick(Sender: TObject);
    procedure ListCausaExternaClick(Sender: TObject);
    procedure ListDestinoUsuarioClick(Sender: TObject);
    procedure ListViaIngresoClick(Sender: TObject);
    procedure LLenaListas2;
    procedure FormShow(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure DTPFecNaciChange(Sender: TObject);
    procedure DTPHoraNaciChange(Sender: TObject);
    procedure BtnSiguienteClick(Sender: TObject);
    procedure BtnAtras1Click(Sender: TObject);
    procedure BtnSiguiente1Click(Sender: TObject);
    procedure BtnAtras2Click(Sender: TObject);
    procedure BtnSiguiente2Click(Sender: TObject);
    procedure BtnAtras3Click(Sender: TObject);
    procedure BtnSiguiente3Click(Sender: TObject);
    procedure BtnAtras4Click(Sender: TObject);
    procedure BtnSiguiente4Click(Sender: TObject);
    procedure HEgresoClick(Sender: TObject);
    procedure HIngresoClick(Sender: TObject);
    procedure HCUHClick(Sender: TObject);
    procedure HProcedimientosClick(Sender: TObject);
    procedure HRecienNacidoClick(Sender: TObject);
    procedure LimpiaEdit;
    procedure TabSheet6Show(Sender: TObject);
    procedure BtnCancelar1Click(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure EditECodPExit(Sender: TObject);
    procedure EditECodR1Exit(Sender: TObject);
    procedure EditECodR2Exit(Sender: TObject);
    procedure EditECodR3Exit(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure BtnCancelar0Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CBMotivoEgresoEnter(Sender: TObject);
    procedure CBDiagPrincipalEnter(Sender: TObject);
    procedure EditECodPEnter(Sender: TObject);
    procedure EditECodR1Enter(Sender: TObject);
    procedure EditECodR2Enter(Sender: TObject);
    procedure EditECodR3Enter(Sender: TObject);
  private
    { private declarations }
    vECFinalidad   : array of array of string;
    vECCausaEx     : array of array of string;
    vECDestino     : array of array of string;
    vECViaIngreso  : array of array of string;
    vECAmbitoDiag  : array of array of string;
    vECFinaProce   : array of array of string;
    vECPersona     : array of array of string;
    vECForma       : array of array of string;
    vECMotivoEgreso : array of string;
  public
    EditCod   :  TEdit;
    EditDes   :  TEdit;
    { public declarations }
  end;

var
  frmEgresos: TfrmEgresos;
  tipoadm: string;

implementation

uses ModuloAdmision, UDataModule1;

{$R *.DFM}

procedure TfrmEgresos.FormCreate(Sender: TObject);
begin
//  DatamoduloAdmision.QryEgresos.Open;
//  DatamoduloAdmision.QryDignosticos.Open;
  DatamoduloAdmision.QryTipodocumento.Open;
  DatamoduloAdmision.QrytipoAdmision.Open;
  DatamoduloAdmision.qryMedicos.Open;
  APPLICATION.ONMESSAGE := APPMESSAGE;
  datetimepicker2.Date:=now;

  SGDatos.Cells[1,0] := 'Código';
  SGDatos.Cells[2,0] := 'Descripción';
  Pagecontrol1.ActivePageIndex := 0;
end;

procedure TfrmEgresos.APPMESSAGE(var MSG: TMSG; var HANDLED: BOOLEAN);
begin
IF MSG.WPARAM = VK_RETURN THEN
       BEGIN
        IF ((SCREEN.ACTIVECONTROL) IS TCOMBOBOX) THEN
             MSG.WPARAM := VK_TAB;
            IF (((SCREEN.ACTIVECONTROL) IS TEDIT)) THEN
                MSG.WPARAM := VK_TAB;
                IF ((SCREEN.ACTIVECONTROL) IS TDBEDIT) THEN
                MSG.WPARAM := VK_TAB;
                IF ((SCREEN.ACTIVECONTROL) IS TDATETIMEPICKER) THEN
                MSG.WPARAM := VK_TAB;
                IF ((SCREEN.ACTIVECONTROL) IS TMASKEDIT) THEN
                MSG.WPARAM := VK_TAB;
                IF ((SCREEN.ACTIVECONTROL) IS TDBLOOKUPCOMBOBOX) THEN
                MSG.WPARAM := VK_TAB;
       END;
end;

procedure TfrmEgresos.Edit1Exit(Sender: TObject);
begin
 if DBLookupComboBox4.text = '' then
 begin
   MessageDlg('Ingrese el  tipo documento', mtInformation, [mbOk], 0);
   DBLookupComboBox1.SetFocus;
   exit;
 end;
end;

//Boton de Grabar
procedure TfrmEgresos.BitBtn1Click(Sender: TObject);
var
  qrySol: TADOQuery;
begin

 {  if DBLookupComboBox5.Text <> '' then
   begin
     try
     Datamodule1.ADOConnection1.BeginTrans;
     QryAdmisiones.Edit;
     QryAdmisiones.FieldValues['EST_ADMINSION']   := 'E';
     QryAdmisiones.FieldValues['MOTIVO_EGRESO']   := DBLookupComboBox5.KeyValue;
     QryAdmisiones.FieldValues['FEC_EGRESO']      := DateTimePicker2.datetime ;
     QryAdmisiones.FieldValues['DIAGN_P_EGRESO']  := EditCodP.Text;
     QryAdmisiones.FieldValues['DIAGN_E_REL1']    :=   EditCodR1.Text;
     QryAdmisiones.FieldValues['DIAGN_E_REL2']    :=   EditCodR2.Text;
     QryAdmisiones.FieldValues['DIAGN_E_REL3']    :=   EditCodR3.Text;
     QryAdmisiones.FieldValues['DIAGN_COMPL']     :=    EditCodCom.Text;
     QryAdmisiones.FieldValues['DIAGN_MUERTE']    :=   EditCodMue.Text;
     QryAdmisiones.FieldValues['EST_SALIDA']      := leftstr(ComboBox1.text,1);
     IF DBLookupComboBox5.Text = 'Definitivo' Then QryAdmisiones.FieldValues['Estado'] := 'X';
     QryAdmisiones.Post;


     Datamodule1.ADOConnection1.CommitTrans;
     except
       showmessage('ERROR: Al grabar el Egreso.');
       Datamodule1.ADOConnection1.RollbackTrans;
     end;
     DBLookupComboBox5.KeyValue := '';
     QryAdmisiones.close;
     frmEgresos.Close;
   end
   Else Begin
     ShowMessage('Debe Ingresar el Motivo.');
   End;}

  try


    if not DataModule1.ADOConnection1.InTransaction then
       DataModule1.ADOConnection1.BeginTrans;

      QryGeneral.Close;
      QryGeneral.SQL.Clear;
      QryGeneral.SQL.Add('UPDATE SAAdmisiones SET ');
      QryGeneral.SQL.Add(' EST_ADMINSION  = ''E'',');
      QryGeneral.SQL.Add(' MOTIVO_EGRESO = '''+vECMotivoEgreso[CBMotivoEgreso.ItemIndex]+''',');
      QryGeneral.SQL.Add(' FEC_EGRESO = '''+FormatDateTime('DD/MM/YYYY', DateTimePicker2.DateTime)+''',');
      QryGeneral.SQL.Add(' DIAGN_P_EGRESO = '''+EditCodP.Text+''',');
      if EditCodR1.Text <> '' then
        QryGeneral.SQL.Add(' DIAGN_E_REL1 = '''+EditCodR1.Text+''',')
      else
        QryGeneral.SQL.Add(' DIAGN_E_REL1 = null, ');

      if EditCodR2.Text <> '' then
        QryGeneral.SQL.Add(' DIAGN_E_REL2 = '''+EditCodR2.Text+''',')
      else
        QryGeneral.SQL.Add(' DIAGN_E_REL2 = null,');

      if EditCodR3.Text <> '' then
        QryGeneral.SQL.Add(' DIAGN_E_REL3 = '''+EditCodR3.Text+''',')
      else
        QryGeneral.SQL.Add(' DIAGN_E_REL3 = null,');

      if EditCodCom.Text <> '' then
        QryGeneral.SQL.Add(' DIAGN_COMPL  = '''+EditCodCom.Text+''',')
      else
        QryGeneral.SQL.Add(' DIAGN_COMPL  = null,');

      if EditCodMue.Text <> '' then
        QryGeneral.SQL.Add(' DIAGN_MUERTE = '''+EditCodMue.Text+''',')
      else
        QryGeneral.SQL.Add(' DIAGN_MUERTE = null,');


      if ComboBox1.ItemIndex = 0 then
        QryGeneral.SQL.Add(' EST_SALIDA = ''1'',')
      else
        QryGeneral.SQL.Add(' EST_SALIDA = ''2'',');


      QryGeneral.SQL.Add(' TP_DIAGN_PPAL = '''+copy(CBDiagPrincipal.Text, 1,1)+''',');
      QryGeneral.SQL.Add(' DIAGNOSTICO = '''+EditECodP.Text+''',');

      if EditECodR1.Text  <> '' then
        QryGeneral.SQL.Add(' DIAGN_I_REL1 = '''+EditECodR1.Text+''',')
      else
        QryGeneral.SQL.Add(' DIAGN_I_REL1 = null,');

      if EditECodR2.Text <> '' then
        QryGeneral.SQL.Add(' DIAGN_I_REL2 = '''+EditECodR2.Text+''',')
      else
        QryGeneral.SQL.Add(' DIAGN_I_REL2 = null,');

      if EditECodR3.Text <> '' then
        QryGeneral.SQL.Add(' DIAGN_I_REL3 = '''+EditECodR3.Text+''',')
      else
        QryGeneral.SQL.Add(' DIAGN_I_REL3 = null,');

      if ListFinalidadConsulta.ItemIndex <> -1 then
        QryGeneral.SQL.Add(' FINALIDAD_CONS = '''+vECFinalidad[ListFinalidadConsulta.ItemIndex,1]+''',')
      else
        QryGeneral.SQL.Add(' FINALIDAD_CONS = null,');

      if ListCausaExterna.ItemIndex <> -1 then
        QryGeneral.SQL.Add(' CAUSA_EXTERNA = '''+vECCausaEx[ListCausaExterna.ItemIndex,1]+''',')
      else
        QryGeneral.SQL.Add(' CAUSA_EXTERNA = null,');

      if ListDestinoUsuario.ItemIndex <> -1 then
      Begin
        if vECDestino[ListDestinoUsuario.ItemIndex,1] = '4' then QryGeneral.SQL.Add(' DESTINO_USUARIO = '''+''+''',')
        else QryGeneral.SQL.Add(' DESTINO_USUARIO = '''+vECDestino[ListDestinoUsuario.ItemIndex,1]+''',');
      End
      else
        QryGeneral.SQL.Add(' DESTINO_USUARIO = null,');

      if ListViaIngreso.ItemIndex <> -1 then
      Begin
        if vECViaIngreso[ListViaIngreso.ItemIndex,1] = '5' then QryGeneral.SQL.Add(' VIA_INGRESO = '''+''+''',')
        else QryGeneral.SQL.Add(' VIA_INGRESO = '''+vECViaIngreso[ListViaIngreso.ItemIndex,1]+''',');
      End
      else
        QryGeneral.SQL.Add(' VIA_INGRESO = null,');

      if ListAmbito.ItemIndex <> -1 then
        begin
          QryGeneral.SQL.Add(' PROC_AMBITO = '''+vECAmbitoDiag[ListAmbito.ItemIndex,1]+''',');
          QryGeneral.SQL.Add(' PROC_FINALIDAD = '''+vECFinaProce[ListFinalidadP.ItemIndex,1]+''',');
          if vECPersona[ListPersona.ItemIndex,1] = '6' then QryGeneral.SQL.Add(' PROC_ATIENDE = '''+''+''',')
          else QryGeneral.SQL.Add(' PROC_ATIENDE = '''+vECPersona[ListPersona.ItemIndex,1]+''',');
          if vECForma[ListForma.ItemIndex,1] = '6' then QryGeneral.SQL.Add(' PROC_FORMA = '''+''+''',')
          else QryGeneral.SQL.Add(' PROC_FORMA = '''+vECForma[ListForma.ItemIndex,1]+''',')

        end
      else
        begin
          QryGeneral.SQL.Add(' PROC_AMBITO = null,');
          QryGeneral.SQL.Add(' PROC_FINALIDAD = null,');
          QryGeneral.SQL.Add(' PROC_ATIENDE = null,');
          QryGeneral.SQL.Add(' PROC_FORMA = null,');
        end;

      if CBEdadG.ItemIndex <> -1 then
        begin
          QryGeneral.SQL.Add(' RN_EDAD = '''+CBEdadG.Text+''',');
          QryGeneral.SQL.Add(' RN_PESO = '''+CBPeso.Text+''',');
          QryGeneral.SQL.Add(' RN_CONTROL = '''+copy(CBControlPre.Text,1,1)+''',');
          QryGeneral.SQL.Add(' RN_SEXO  = '''+copy(CBSexo.Text, 1,1)+''',');
          QryGeneral.SQL.Add(' RN_FECNAC = '''+FormatDateTime('DD/MM/YYYY hh:mm', DTPHoraNaci.DateTime)+chr(39));
        end
      else
        begin
          QryGeneral.SQL.Add(' RN_EDAD = null,');
          QryGeneral.SQL.Add(' RN_PESO = null,');
          QryGeneral.SQL.Add(' RN_CONTROL = null,');
          QryGeneral.SQL.Add(' RN_SEXO  = null,');
          QryGeneral.SQL.Add(' RN_FECNAC = null');
        end;

      QryGeneral.SQL.Add('where NO_ADMISION = '''+QryAdmisiones.Fields.FieldByName('NO_ADMISION').AsString+'''');
      //Showmessage(QryGeneral.SQL.Text );
      QryGeneral.ExecSQL;

    if DataModule1.ADOConnection1.InTransaction then
      DataModule1.ADOConnection1.CommitTrans;

    Application.MessageBox('Datos grabados satisfactoriamente','Información',MB_OK+MB_ICONINFORMATION);
  //  ModalResult  := MrOk;

               //Imprimir

       qrySol:= TADOQuery.Create(self);
       qrySol.Connection:=datamodule1.ADOConnection1;
       qrySol.SQL.Add('select No_Solicitud from crencSolicitudes where No_Admision='+quotedstr(QryAdmisiones.Fields.FieldByName('NO_ADMISION').AsString));
       qrySol.Open;
{       while not  qrySol.eof  do
          begin
            FormImpSolicitud := tFormImpSolicitud.create(application);
            try
              FormImpSolicitud.ADOQuery1.Close;
              FormImpSolicitud.ADOQuery1.Parameters.ParamValues['nofact']:= qrySol.FieldByName('No_Solicitud').AsString;
              FormImpSolicitud.ADOQuery1.Open;
              FormImpSolicitud.ADOTable1.Open;

              FormImpSolicitud.QuickRep1.PreviewInitialState := wsMaximized;
              FormImpSolicitud.QuickRep1.PreviewModal;
              FormImpSolicitud.Close;
              //FormImpSolicitud.Show;
            finally
               qrySol.Next ;
            end;
       end;}

       qrySol.Close;
       qrySol.free;
    Close;
  except
    if DataModule1.ADOConnection1.InTransaction then
      DataModule1.ADOConnection1.RollbackTrans;

    Application.MessageBox('Error al momento de grabar los datos...por favor comuníquese con el Help Desk','Error',MB_OK+MB_ICONERROR);
    Exit;
  end;
end;

procedure TfrmEgresos.BtnBuscarClick(Sender: TObject);
var i : Integer;
begin
  QryGeneralDiag.Close;
  QryGeneralDiag.SQL.Clear;
  QryGeneralDiag.SQL.Add('Select top(30)*');
  QryGeneralDiag.SQL.Add('from GEDiagnosticos');
  QryGeneralDiag.SQL.Add('where NOM_DIAGNSOTICO LIKE '''+'%'+EditPalabra.Text+'%'+'''');
  QryGeneralDiag.SQL.Add('and Estado = ''A''');
  QryGeneralDiag.SQL.Add('order by NOM_DIAGNSOTICO');
  QryGeneralDiag.Open;

  LimpiaGrilla(SGDatos, 4);
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

procedure TfrmEgresos.LimpiaGrilla(Grilla : TStringGrid; Col : Integer);
var i, e : Integer;
begin
  i := 1;
  while i < Grilla.RowCount do
    begin
      e := 0;
      while e <= Col do
        begin
          Grilla.Cells[e, i] := '';
          inc(e);
        end;
      inc(i);
    end;
  Grilla.RowCount  := 2;
end;

procedure TfrmEgresos.BitBtn3Click(Sender: TObject);
begin
  Amplia(EditCodP, EditDesP, 300, 139);
end;

procedure TfrmEgresos.Amplia(e1, e2 : TEdit; T, L : Integer);
begin
  PnlBusqueda.Top   := T;
  PnlBusqueda.Left  := L;
  EditCod  := e1;
  EditDes  := e2;

  if PnlBusqueda.Height = 0 then
    begin
      LimpiaGrilla(SGDatos, 3);
      PnlBusqueda.Height   := 195;
      EditPalabra.Text     := '';
      EditPalabra.SetFocus;
    end
  else
    PnlBusqueda.Height  := 0;
end;

procedure TfrmEgresos.BitBtn4Click(Sender: TObject);
begin
  Amplia(EditCodR1, EditDesR1, 331, 139);
end;

procedure TfrmEgresos.BitBtn8Click(Sender: TObject);
begin
    Amplia(EditCodMue, EditDesMue, 271, 139);
end;

procedure TfrmEgresos.BitBtn5Click(Sender: TObject);
begin
    Amplia(EditCodR2, EditDesR2, 363, 139);
end;

procedure TfrmEgresos.BitBtn7Click(Sender: TObject);
begin
    Amplia(EditCodCom, EditDesComp, 428, 139);
end;

procedure TfrmEgresos.BitBtn6Click(Sender: TObject);
begin
    Amplia(EditCodR3, EditDesR3, 396, 139);
end;

procedure TfrmEgresos.SGDatosDblClick(Sender: TObject);
begin
  EditCod.Text        := SGDatos.Rows[SGDatos.Row].Strings[1];
  EditDes.Text        := SGDatos.Rows[SGDatos.Row].Strings[2];
  PnlBusqueda.Height  := 0;
end;

procedure TfrmEgresos.BuscarPorCodigo(e1 : TEdit; e2 : TEdit);
begin
  if e1.Text  <> '' then
    begin
      QryGeneralDiag.Close;
      QryGeneralDiag.SQL.Clear;
      QryGeneralDiag.SQL.Add('select * from GEDiagnosticos');
      QryGeneralDiag.SQL.Add('where cod_diagnostico = '''+e1.Text+'''');
      QryGeneralDiag.SQL.Add('and Estado = ''A''');
      QryGeneralDiag.Open;

      if not QryGeneralDiag.Eof then
        e2.Text   :=  QryGeneralDiag.Fields.FieldByName('NOM_DIAGNSOTICO').AsString
      else
        begin
          Application.MessageBox('El código no fue encontrado','Información',MB_OK+MB_ICONINFORMATION);
          e2.Text  := '';
        end;
    end;
end;

procedure TfrmEgresos.EditCodPExit(Sender: TObject);
begin
  BuscarPorCodigo(EditCodP, EditDesP);
end;

procedure TfrmEgresos.EditCodR1Exit(Sender: TObject);
begin
  BuscarPorCodigo(EditCodR1, EditDesR1);
end;

procedure TfrmEgresos.EditCodR2Exit(Sender: TObject);
begin
  BuscarPorCodigo(EditCodR2, EditDesR2);
end;

procedure TfrmEgresos.EditCodR3Exit(Sender: TObject);
begin
  BuscarPorCodigo(EditCodR3, EditDesR3);
end;

procedure TfrmEgresos.EditCodComExit(Sender: TObject);
begin
  BuscarPorCodigo(EditCodCom, EditDesComp);
end;

procedure TfrmEgresos.EditCodMueExit(Sender: TObject);
begin
  BuscarPorCodigo(EditCodMue, EditDesMue);
end;

procedure TfrmEgresos.EditPalabraKeyPress(Sender: TObject; var Key: Char);
begin
  if EditPalabra.Text <> '' then
    if key = #13 then
      BtnBuscarClick(Self);
end;

procedure TfrmEgresos.CBDiagPrincipalEnter(Sender: TObject);
begin
  CBDiagPrincipal.ItemIndex := 0;
end;

procedure TfrmEgresos.CBMotivoEgresoEnter(Sender: TObject);
begin
  CBMotivoEgreso.ItemIndex := 0;
end;

procedure TfrmEgresos.ComboBox1Click(Sender: TObject);
begin
  if ComboBox1.ItemIndex = 0 then
    EditCodMue.ReadOnly  := True
  else
    begin
      EditCodMue.ReadOnly  := False;
      EditCodMue.SetFocus;
    end;
end;

procedure TfrmEgresos.BitBtn18Click(Sender: TObject);
begin
  Amplia(EditECodP, EditEDesP, 315, 140);
end;

procedure TfrmEgresos.BitBtn19Click(Sender: TObject);
begin
  Amplia(EditECodR1, EditEDesR1, 354, 140);
end;

procedure TfrmEgresos.BitBtn20Click(Sender: TObject);
begin
  Amplia(EditECodR2, EditEDesR2, 382, 140);
end;

procedure TfrmEgresos.BitBtn21Click(Sender: TObject);
begin
  Amplia(EditECodR3, EditEDesR3, 410, 140);
end;

procedure TfrmEgresos.LLenaVactores;
begin
  SetLength(vECFinalidad, 10,3);
  SetLength(vECCausaEx, 15, 3);
  SetLength(vECDestino, 4,3);
  SetLength(vECViaIngreso, 5,3);

  vECFinalidad[0,0]  := '01- Atención del parto (puerperio)';
  vECFinalidad[0,1]  := '01';
  vECFinalidad[1,0]  := '02- Atención del recién nacido';
  vECFinalidad[1,1]  := '02';
  vECFinalidad[2,0]  := '03- Atención en planificación familiar';
  vECFinalidad[2,1]  := '03';
  vECFinalidad[3,0]  := '04- Detección de alteraciones de crecimiento y desarrollo del menor de 10 años';
  vECFinalidad[3,1]  := '04';
  vECFinalidad[4,0]  := '05- Detección de alteraciones del desarrollo joven';
  vECFinalidad[4,1]  := '05';
  vECFinalidad[5,0]  := '06- Detección de alteraciones del embarazo';
  vECFinalidad[5,1]  := '06';
  vECFinalidad[6,0]  := '07- Detección de alteraciones del adulto';
  vECFinalidad[6,1]  := '07';
  vECFinalidad[7,0]  := '08- Detección de alteraciones de agudeza visual';
  vECFinalidad[7,1]  := '08';
  vECFinalidad[8,0]  := '09- Detección de enfermedad profesional';
  vECFinalidad[8,1]  := '09';
  vECFinalidad[9,0]  := '10- No aplica';
  vECFinalidad[9,1]  := '10';
  vECFinalidad[9,2]  := 'X';


  vECCausaEx[0,0]    := '01- Accidente de trabajo';
  vECCausaEx[0,1]    := '01';
  vECCausaEx[1,0]    := '02- Accidente de tránsito';
  vECCausaEx[1,1]    := '02';
  vECCausaEx[2,0]    := '03- Accidente rábico';
  vECCausaEx[2,1]    := '03';
  vECCausaEx[3,0]    := '04- Accidente de ofídico';
  vECCausaEx[3,1]    := '04';
  vECCausaEx[4,0]    := '05- Otro tipo de accidente';
  vECCausaEx[4,1]    := '05';
  vECCausaEx[5,0]    := '06- Evento catastrófico';
  vECCausaEx[5,1]    := '06';
  vECCausaEx[6,0]    := '07- Lesión por agresión';
  vECCausaEx[6,1]    := '07';
  vECCausaEx[7,0]    := '08- Lesión auto infligida';
  vECCausaEx[7,1]    := '08';
  vECCausaEx[8,0]    := '09- Sospecha de maltrato físico';
  vECCausaEx[8,1]    := '09';
  vECCausaEx[9,0]    := '10- Sospecha de abuso sexual';
  vECCausaEx[9,1]    := '10';
  vECCausaEx[10,0]   := '11- Sospecha de violencia sexual';
  vECCausaEx[10,1]   := '11';
  vECCausaEx[11,0]   := '12- Sospecha de maltrato emocional';
  vECCausaEx[11,1]   := '12';
  vECCausaEx[12,0]   := '13- Enfermedad general';
  vECCausaEx[12,1]   := '13';
  vECCausaEx[12,2]   := 'X';
  vECCausaEx[13,0]   := '14- Enfermedad profesional';
  vECCausaEx[13,1]   := '14';
  vECCausaEx[14,0]   := '15- Otra';
  vECCausaEx[14,1]   := '15';


  vECDestino[0,0]    := '1- Alta de urgencias';
  vECDestino[0,1]    := '1';
  vECDestino[1,0]    := '2- Remisión a otro nivel de complejidad';
  vECDestino[1,1]    := '2';
  vECDestino[3,2]    := 'X';
  vECDestino[2,0]    := '3- Hospitalización';
  vECDestino[2,1]    := '3';
  vECDestino[3,0]    := '4- No Aplica';
  vECDestino[3,1]    := '4';

  vECViaIngreso[0,0] := '1- Urgencias';
  vECViaIngreso[0,1] := '1';
  vECViaIngreso[1,0] := '2- Consulta externa ó programada';
  vECViaIngreso[1,1] := '2';
  vECViaIngreso[2,0] := '3- Remitido';
  vECViaIngreso[2,1] := '3';
  vECViaIngreso[4,2] := 'X';
  vECViaIngreso[3,0] := '4- Nacido en la institución';
  vECViaIngreso[3,1] := '4';
  vECViaIngreso[4,0] := '5- No Aplica';
  vECViaIngreso[4,1] := '5';

  SetLength(vECAmbitoDiag, 3,3);
  SetLength(vECFinaProce, 5,3);
  SetLength(vECPersona, 6, 3);
  SetLength(vECForma, 6, 3);


  vECAmbitoDiag[0,0] := '1- Ambulatorio';
  vECAmbitoDiag[0,1] := '1';
  vECAmbitoDiag[1,0] := '2- Hospitalario';
  vECAmbitoDiag[1,1] := '2';
  vECAmbitoDiag[0,2] := 'X';
  vECAmbitoDiag[2,0] := '3- En urgencias';
  vECAmbitoDiag[2,1] := '3';

  vECFinaProce[0,0] := '1- Diagnóstico';
  vECFinaProce[0,1] := '1';
  vECFinaProce[0,2] := 'X';
  vECFinaProce[1,0] := '2- Terapéutico';
  vECFinaProce[1,1] := '2';
  vECFinaProce[2,0] := '3- Protección específica';
  vECFinaProce[2,1] := '3';
  vECFinaProce[3,0] := '4- Detección temprana de enfermedad general';
  vECFinaProce[3,1] := '4';
  vECFinaProce[4,0] := '5- Detección temprana de enfermedad profesional';
  vECFinaProce[4,1] := '5';

  vECPersona[0,0]   := '1- Médico (a) especialista';
  vECPersona[0,1]   := '1';
  vECPersona[1,2]   := 'X';
  vECPersona[1,0]   := '2- Médico (a) general';
  vECPersona[1,1]   := '2';
  vECPersona[2,0]   := '3- Enfermera (o)';
  vECPersona[2,1]   := '3';
  vECPersona[3,0]   := '4- Auxiliar de enfermería';
  vECPersona[3,1]   := '4';
  vECPersona[4,0]   := '5- Otro';
  vECPersona[4,1]   := '5';
  vECPersona[5,0]   := '6- No Aplica';
  vECPersona[5,1]   := '6';

  vECForma[0,0]     := '1- Unico o unilateral';
  vECForma[0,1]     := '1';
  vECForma[0,2]     := 'X';
  vECForma[1,0]     := '2- Múltiple o bilateral, misma vía, diferente especialidad';
  vECForma[1,1]     := '2';
  vECForma[2,0]     := '3- Múltiple o bilateral, misma vía, igual especialidad';
  vECForma[2,1]     := '3';
  vECForma[3,0]     := '4- Múltiple o bilateral, diferente vía, diferente especialidad';
  vECForma[3,1]     := '4';
  vECForma[4,0]     := '5- Múltiple o bilateral, diferente vía, igual especialidad';
  vECForma[4,1]     := '5';
  vECForma[5,0]     := '6- No Aplica';
  vECForma[5,1]     := '6';
end;

procedure TfrmEgresos.LLenaListas1;
var i : Integer;
begin
  i := 0;
  ListFinalidadConsulta.Clear;
  while i < Length(vECFinalidad) do
    begin
      ListFinalidadConsulta.Items.Add(vECFinalidad[i,0]);
      if vECFinalidad[i,2] = 'X' then
        ListFinalidadConsulta.ItemIndex  := i;
      inc(i);
    end;

  i := 0;
  ListCausaExterna.Clear;
  while i < Length(vECCausaEx) do
    begin
      ListCausaExterna.Items.Add(vECCausaEx[i,0]);
      if vECCausaEx[i,2] = 'X' then
        ListCausaExterna.ItemIndex  := i;
      inc(i);
    end;

  i := 0;
  ListDestinoUsuario.Clear;
  while i < Length(vECDestino) do
    begin
      ListDestinoUsuario.Items.Add(vECDestino[i,0]);
      if vECDestino[i,2] = 'X' then
        ListDestinoUsuario.ItemIndex  := i;
      inc(i);
    end;

  i := 0;
  ListViaIngreso.Clear;
  while i < Length(vECViaIngreso) do
    begin
      ListViaIngreso.Items.Add(vECViaIngreso[i,0]);
      if vECViaIngreso[i,2] = 'X' then
        ListViaIngreso.ItemIndex  := i;
      inc(i);
    end;
end;

procedure TfrmEgresos.TabSheet3Show(Sender: TObject);
begin
  LLenaListas1;
end;

procedure TfrmEgresos.ListFinalidadConsultaClick(Sender: TObject);
var i : Integer;
begin
  i := 0;
  while i < Length(vECFinalidad) do
    begin
      vECFinalidad[i,2] := '';
      inc(i);
    end;

  vECFinalidad[ListFinalidadConsulta.ItemIndex,2] := 'X';
end;

procedure TfrmEgresos.ListCausaExternaClick(Sender: TObject);
var i : Integer;
begin
  i := 0;
  while i < Length(vECCausaEx) do
    begin
      vECCausaEx[i,2] := '';
      inc(i);
    end;

  vECCausaEx[ListCausaExterna.ItemIndex, 2] := 'X';
end;

procedure TfrmEgresos.ListDestinoUsuarioClick(Sender: TObject);
var i : Integer;
begin
  i := 0;
  while i < Length(vECDestino) do
    begin
      vECDestino[i,2] := '';
      inc(i);
    end;

  vECDestino[ListDestinoUsuario.ItemIndex, 2] := 'X';
end;

procedure TfrmEgresos.ListViaIngresoClick(Sender: TObject);
var i : Integer;
begin
  i := 0;
  while i < Length(vECViaIngreso) do
    begin
      vECViaIngreso[i,2] := '';
      inc(i);
    end;

  vECViaIngreso[ListViaIngreso.ItemIndex, 2] := 'X';
end;

procedure TfrmEgresos.LLenaListas2;
var i : Integer;
begin
  i := 0;
  ListAmbito.Clear;
  while i < Length(vECAmbitoDiag) do
    begin
      ListAmbito.Items.Add(vECAmbitoDiag[i,0]);
      if vECAmbitoDiag[i,2] = 'X' then
        ListAmbito.ItemIndex  := i;
      inc(i);
    end;

  i := 0;
  ListFinalidadP.Clear;
  while i < Length(vECFinaProce) do
    begin
      ListFinalidadP.Items.Add(vECFinaProce[i,0]);
      if vECFinaProce[i,2] = 'X' then
        ListFinalidadP.ItemIndex  := i;
      inc(i);
    end;

  i := 0;
  ListPersona.Clear;
  while i < Length(vECPersona) do
    begin
      ListPersona.Items.Add(vECPersona[i,0]);
      if vECPersona[i,2] = 'X' then
        ListPersona.ItemIndex  := i;
      inc(i);
    end;

  i := 0;
  ListForma.Clear;
  while i < Length(vECForma) do
    begin
      ListForma.Items.Add(vECForma[i,0]);
      if vECForma[i,2] = 'X' then
        ListForma.ItemIndex  := i;
      inc(i);
    end;
end;

procedure TfrmEgresos.FormShow(Sender: TObject);
var i : Integer;
begin
  QryGeneral.Close;
  QryGeneral.SQL.Clear;
  QryGeneral.SQL.Add('select * from GEEstados');
  QryGeneral.Open;

  SetLength(vECMotivoEgreso, QryGeneral.RecordCount);
  i := 0;
  while not QryGeneral.Eof do
    begin
      CBMotivoEgreso.Items.Add(QryGeneral.Fields.FieldByName('DS_ESTADO').AsString);
      vECMotivoEgreso[i] := QryGeneral.Fields.FieldByName('CD_ESTADO').AsString;
      QryGeneral.Next;
      inc(i);
    end;

  DTPFecNaci.DateTime  :=now;
  DTPHoraNaci.DateTime :=now;

  LLenaVactores;


  EditCodP.Text     := QryAdmisiones.FieldValues['DIAGNOSTICO'];
  EditCodPExit(Self);
end;

procedure TfrmEgresos.TabSheet4Show(Sender: TObject);
begin
  LLenaListas2;
end;

procedure TfrmEgresos.DTPFecNaciChange(Sender: TObject);
begin
  DTPHoraNaci.DateTime  := DTPFecNaci.DateTime;
end;

procedure TfrmEgresos.DTPHoraNaciChange(Sender: TObject);
begin
  DTPFecNaci.DateTime  := DTPHoraNaci.DateTime;
end;

procedure TfrmEgresos.BtnSiguienteClick(Sender: TObject);
begin
  if QryAdmisiones.FieldValues['FEC_ADMISION'] > DateTimePicker2.Date + 1 then
    begin
      Application.MessageBox('La fecha de egreso no puede ser menor a la fecha de ingreso...por favor verifique las fechas','Información',MB_OK+MB_ICONINFORMATION);
      DateTimePicker2.SetFocus;
      Exit;
    end;

  if EditCodP.Text = '' then
    begin
      Application.MessageBox('No puede grabar el egreso sin el diagnóstico principal','Información',MB_OK+MB_ICONINFORMATION);
      EditCodP.SetFocus;
      Exit;
    end;

  PageControl1.ActivePageIndex   := 1;
end;

procedure TfrmEgresos.BtnAtras1Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex   := 0;
end;

procedure TfrmEgresos.BtnSiguiente1Click(Sender: TObject);
var i:char;
begin
  if CBDiagPrincipal.ItemIndex = -1 then
    begin
      Application.MessageBox('Debe seleccionar el tipo de diagnóstico principal del ingreso','Información',MB_OK+MB_ICONINFORMATION);
      CBDiagPrincipal.SetFocus;
      Exit;
    end;

  if EditECodP.Text = '' then
    begin
      Application.MessageBox('Debe ingresar el diagnóstico principal','Información',MB_OK+MB_ICONINFORMATION);
      EditECodP.SetFocus;
      Exit;
    end;


 { if (QryAdmisiones.FieldValues['TP_ADMISION'] = 'C')  or (QryAdmisiones.FieldValues['TP_ADMISION'] = 'U')
    or (QryAdmisiones.FieldValues['TP_ADMISION'] = 'H') then
      begin
        PageControl1.ActivePageIndex   := 2;
      end
    else
      if (QryAdmisiones.FieldValues['TP_ADMISION'] = 'P') then
        begin
          PageControl1.ActivePageIndex   := 3;
        end
      else
        if (QryAdmisiones.FieldValues['TP_ADMISION'] = 'R') then
          begin
            PageControl1.ActivePageIndex   := 4;
          end
        else
          PageControl1.ActivePageIndex     := 5;}
    ADOQCargos.Close;
    ADOQCargos.Parameters.ParamValues['adm'] := QRYAdmisiones.FieldValues['No_Admision'];
    ADOQCargos.Open;
    ADOQCargos.First;

    tipoadm := '';

    while NOT ADOQCargos.Eof do
    Begin
      if  trim(ADOQCargos.FieldValues['TipoAdmision']) =  'C' then tipoadm := tipoadm + 'C'
      else Begin
        if trim(ADOQCargos.FieldValues['TipoAdmision']) =  'U' then tipoadm := tipoadm + 'U'
        else Begin
          if trim(ADOQCargos.FieldValues['TipoAdmision']) =  'H' then tipoadm := tipoadm + 'H'
          else Begin
            if trim(ADOQCargos.FieldValues['TipoAdmision']) =  'P' then tipoadm := tipoadm + 'P'
            else if trim(ADOQCargos.FieldValues['TipoAdmision']) =  'R' then tipoadm := tipoadm + 'R';
          End;
        End;
      End;

      ADOQcargos.Next;
    End;

    if (posex('C',tipoadm)<>0) or (posex('U',tipoadm)<>0) or (posex('H',tipoadm)<>0) Then
    Begin
      PageControl1.ActivePageIndex   := 2;
    End
    Else Begin
      if ((posex('P',tipoadm)<>0)) Then PageControl1.ActivePageIndex   := 3
      Else if ((posex('R',tipoadm)<>0)) Then PageControl1.ActivePageIndex   := 4
      Else PageControl1.ActivePageIndex   := 5;
    End;
end;

procedure TfrmEgresos.BtnAtras2Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex  := 1;
end;

procedure TfrmEgresos.BtnSiguiente2Click(Sender: TObject);
begin
  if ListFinalidadConsulta.ItemIndex  = -1 then
    begin
      Application.MessageBox('Debe seleccionar la finalidad de la consulta para continuar','Información',MB_OK+MB_ICONINFORMATION);
      ListFinalidadConsulta.SetFocus;
      Exit;
    end;

  if ListCausaExterna.ItemIndex  = -1 then
    begin
      Application.MessageBox('Debe seleccionar la causa externa para continuar','Información',MB_OK+MB_ICONINFORMATION);
      ListCausaExterna.SetFocus;
      Exit;
    end;

  if ListDestinoUsuario.ItemIndex = -1 then
    begin
      Application.MessageBox('Debe seleccionar el destino del usuario para continuar','Información',MB_OK+MB_ICONINFORMATION);
      ListDestinoUsuario.SetFocus;
      Exit;
    end;

  if ListViaIngreso.ItemIndex = -1 then
    begin
      Application.MessageBox('Debe seleccionar la vía de ingreso para continuar','Información',MB_OK+MB_ICONINFORMATION);
      ListViaIngreso.SetFocus;
      Exit;
    end;

    if ((posex('P',tipoadm)<>0)) Then PageControl1.ActivePageIndex   := 3
    Else if ((posex('R',tipoadm)<>0)) Then PageControl1.ActivePageIndex   := 4
    Else PageControl1.ActivePageIndex   := 5;
end;

procedure TfrmEgresos.BtnAtras3Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex  := 1;
end;

procedure TfrmEgresos.BtnSiguiente3Click(Sender: TObject);
begin
  if ListAmbito.ItemIndex  = -1 then
    begin
      Application.MessageBox('Debe seleccionar el ambito de realización para continuar','Información',MB_OK+MB_ICONINFORMATION);
      ListAmbito.SetFocus;
      Exit;
    end;

  if ListFinalidadP.ItemIndex  = -1 then
    begin
      Application.MessageBox('Debe seleccionar la finalidad del procedimiento para continuar','Información',MB_OK+MB_ICONINFORMATION);
      ListFinalidadP.SetFocus;
      Exit;
    end;

  if ListPersona.ItemIndex = -1 then
    begin
      Application.MessageBox('Debe seleccionar la persona que atiende para continuar','Información',MB_OK+MB_ICONINFORMATION);
      ListPersona.SetFocus;
      Exit;
    end;

  if ListForma.ItemIndex = -1 then
    begin
      Application.MessageBox('Debe seleccionar la forma de realización para continuar','Información',MB_OK+MB_ICONINFORMATION);
      ListForma.SetFocus;
      Exit;
    end;

   if ((posex('R',tipoadm)<>0)) Then PageControl1.ActivePageIndex   := 4
   Else PageControl1.ActivePageIndex   := 5;

  //PageControl1.ActivePageIndex  := 5;
end;

procedure TfrmEgresos.BtnAtras4Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex  := 1;
end;

procedure TfrmEgresos.BtnSiguiente4Click(Sender: TObject);
begin
  if CBEdadG.ItemIndex  = -1 then
    begin
      Application.MessageBox('Debe seleccionar la edad gestacional para continuar','Información',MB_OK+MB_ICONINFORMATION);
      CBEdadG.SetFocus;
      Exit;
    end;

  if CBPeso.ItemIndex  = -1 then
    begin
      Application.MessageBox('Debe seleccionar el peso para continuar','Información',MB_OK+MB_ICONINFORMATION);
      CBPeso.SetFocus;
      Exit;
    end;

  if CBControlPre.ItemIndex  = -1 then
    begin
      Application.MessageBox('Debe seleccionar si o no en el control prenatal para continuar','Información',MB_OK+MB_ICONINFORMATION);
      CBControlPre.SetFocus;
      Exit;
    end;

  if CBSexo.ItemIndex  = -1 then
    begin
      Application.MessageBox('Debe seleccionar el sexo para continuar','Información',MB_OK+MB_ICONINFORMATION);
      CBSexo.SetFocus;
      Exit;
    end;

  PageControl1.ActivePageIndex  := 5;
end;

procedure TfrmEgresos.HEgresoClick(Sender: TObject);
begin
  EditMotivoEgreso.Text  := CBMotivoEgreso.Text;
  EditCodP1.Text         := EditCodP.Text;
  EditDesP1.Text         := EditDesP.Text;
  EditCodR11.Text        := EditCodR1.Text;
  EditDesR11.Text        := EditDesR1.Text;
  EditCodR21.Text        := EditCodR2.Text;
  EditDesR21.Text        := EditDesR2.Text;
  EditCodR31.Text        := EditCodR3.Text;
  EditDesR31.Text        := EditDesR3.Text;
  EditCodCom1.Text       := EditCodCom.Text;
  EditDesCom1.Text       := EditDesComp.Text;
  EditEsalida.Text       := ComboBox1.Text;
  EditCodMue1.Text       := EditCodMue.Text;
  EditDesMue1.Text       := EditDesMue.Text;
  EditFechaEgreso.Text   := DateToStr(DateTimePicker2.Date);
end;

procedure TfrmEgresos.HIngresoClick(Sender: TObject);
begin
  EditECodP1.Text    := EditECodP.Text;
  EditEDesP1.Text    := EditEDesP.Text;
  EditECodR11.Text   := EditECodR1.Text;
  EditEDesR11.Text   := EditEDesR1.Text;
  EditECodR21.Text   := EditECodR2.Text;
  EditEDesR21.Text   := EditEDesR2.Text;
  EditECodR31.Text   := EditECodR3.Text;
  EditEDesR31.Text   := EditEDesR3.Text;
  EditTipoDiag.Text  := CBDiagPrincipal.Text;
end;

procedure TfrmEgresos.HCUHClick(Sender: TObject);
begin
  if ListFinalidadConsulta.ItemIndex <> -1 then
    begin
      EditFinalidadConsulta.Text  := ListFinalidadConsulta.Items.Strings[ListFinalidadConsulta.ItemIndex];
      EditCausaExterna.Text       := ListCausaExterna.Items.Strings[ListCausaExterna.ItemIndex];
      EditDestinoUsuario.Text     := ListDestinoUsuario.Items.Strings[ListDestinoUsuario.ItemIndex];
      EditViaIngreso.Text         := ListViaIngreso.Items.Strings[ListViaIngreso.ItemIndex];
    end;
end;

procedure TfrmEgresos.HProcedimientosClick(Sender: TObject);
begin
  if ListAmbito.ItemIndex <> -1 then
    begin
      EditAmbito.Text          := ListAmbito.Items.Strings[ListAmbito.ItemIndex];
      EditFinalidadP.Text      := ListFinalidadP.Items.Strings[ListFinalidadP.ItemIndex];
      EditPersonaAtiende.Text  := ListPersona.Items.Strings[ListPersona.ItemIndex];
      EditFormaDeR.Text        := ListForma.Items.Strings[ListForma.ItemIndex];
    end;
end;

procedure TfrmEgresos.HRecienNacidoClick(Sender: TObject);
begin
  EditEdadG.Text       := CBEdadG.Text;
  EditPeso.Text        := CBPeso.Text;
  EditControlPre.Text  := CBControlPre.Text;
  EditFecNaci.Text     := DateToStr(DTPFecNaci.Date);
  EditHoraNaci.Text    := TimeToStr(DTPHoraNaci.Time);
  EditSexo.Text        := CBSexo.Text;
end;

procedure TfrmEgresos.LimpiaEdit;
begin
  EditMotivoEgreso.Text       := '';
  EditCodP1.Text              := '';
  EditDesP1.Text              := '';
  EditCodR11.Text             := '';
  EditDesR11.Text             := '';
  EditCodR21.Text             := '';
  EditDesR21.Text             := '';
  EditCodR31.Text             := '';
  EditDesR31.Text             := '';
  EditCodCom1.Text            := '';
  EditDesCom1.Text            := '';
  EditEsalida.Text            := '';
  EditCodMue1.Text            := '';
  EditDesMue1.Text            := '';
  EditFechaEgreso.Text        := '';
  EditECodP1.Text             := '';
  EditEDesP1.Text             := '';
  EditECodR11.Text            := '';
  EditEDesR11.Text            := '';
  EditECodR21.Text            := '';
  EditEDesR21.Text            := '';
  EditECodR31.Text            := '';
  EditEDesR31.Text            := '';
  EditTipoDiag.Text           := '';
  EditFinalidadConsulta.Text  := '';
  EditCausaExterna.Text       := '';
  EditDestinoUsuario.Text     := '';
  EditViaIngreso.Text         := '';
  EditAmbito.Text             := '';
  EditFinalidadP.Text         := '';
  EditPersonaAtiende.Text     := '';
  EditFormaDeR.Text           := '';
  EditEdadG.Text              := '';
  EditPeso.Text               := '';
  EditControlPre.Text         := '';
  EditFecNaci.Text            := '';
  EditHoraNaci.Text           := '';
  EditSexo.Text               := '';
end;

procedure TfrmEgresos.TabSheet6Show(Sender: TObject);
begin
  LimpiaEdit;
  HCUH.Visible             := False;
  HProcedimientos.Visible  := False;
  HRecienNacido.Visible    := False;

  if ((posex('C',tipoadm)<>0)) or ((posex('U',tipoadm)<>0)) or ((posex('H',tipoadm)<>0)) Then
  Begin
    HCUH.Visible             := True;
  End;
  if ((posex('P',tipoadm)<>0)) Then
  Begin
    HProcedimientos.Visible  := True;
  End;
  if ((posex('R',tipoadm)<>0)) Then
  Begin
    HRecienNacido.Visible    := True;
  End;

  HEgresoClick(Self);
end;

procedure TfrmEgresos.BtnCancelar1Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex  := 0;
end;

procedure TfrmEgresos.BtnCancelarClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex  := 0;
end;

procedure TfrmEgresos.Timer1Timer(Sender: TObject);
begin
  if lbl1.Font.Color = clRed then
    begin
      lbl1.Font.Color  := clBlue;
      lbl2.Font.Color  := clBlue;
      lbl3.Font.Color  := clBlue;
      lbl4.Font.Color  := clBlue;
    end
  else
    begin
      lbl1.Font.Color  := clRed;
      lbl2.Font.Color  := clRed;
      lbl3.Font.Color  := clRed;
      lbl4.Font.Color  := clRed;
    end;
end;

procedure TfrmEgresos.EditECodPEnter(Sender: TObject);
begin
  if EditECodP.Text = '' Then EditECodP.Text := EditCodp.Text;
end;

procedure TfrmEgresos.EditECodPExit(Sender: TObject);
begin
  BuscarPorCodigo(EditECodP, EditEDesP);
end;

procedure TfrmEgresos.EditECodR1Enter(Sender: TObject);
begin
  if EditECodR1.Text = '' Then EditECodR1.Text := EditCodR1.Text;
end;

procedure TfrmEgresos.EditECodR1Exit(Sender: TObject);
begin
  BuscarPorCodigo(EditECodR1, EditEDesR1);
end;

procedure TfrmEgresos.EditECodR2Enter(Sender: TObject);
begin
  if EditECodR2.Text = '' Then EditECodR2.Text := EditCodR2.Text;
end;

procedure TfrmEgresos.EditECodR2Exit(Sender: TObject);
begin
  BuscarPorCodigo(EditECodR2, EditEDesR2);
end;

procedure TfrmEgresos.EditECodR3Enter(Sender: TObject);
begin
  if EditECodR3.Text = '' Then EditECodR3.Text := EditCodR3.Text;
end;

procedure TfrmEgresos.EditECodR3Exit(Sender: TObject);
begin
  BuscarPorCodigo(EditECodR3, EditEDesR3);
end;

procedure TfrmEgresos.TabSheet2Show(Sender: TObject);
begin
  EditECodP.Text  := QryAdmisiones.FieldValues['DIAGNOSTICO'];
  EditECodPExit(Self);
end;

procedure TfrmEgresos.BtnCancelar0Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmEgresos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action     := cafree;
  frmEgresos := nil;
end;

end.
