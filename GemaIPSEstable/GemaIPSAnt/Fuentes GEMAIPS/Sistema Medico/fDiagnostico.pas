unit fDiagnostico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxPC, Vcl.StdCtrls, Vcl.Buttons, cxContainer, cxEdit,
  cxDBEditRepository, cxClasses, Data.DB, Data.Win.ADODB, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxDBEdit, cxGroupBox, cxRadioGroup, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, Vcl.ComCtrls,
  cxListView, Vcl.Menus, cxButtons, dxLayoutContainer, dxLayoutcxEditAdapters,
  dxLayoutControl, dxLayoutControlAdapters, cxLabel, cxDBLabel, cxCalendar,
  dxLayoutLookAndFeels, UDataModule1;

type
  TfrmDiagnostico = class(TForm)
    tblDiagnostico: TADOTable;
    tblAdmision: TADOTable;
    dsDiagnostico: TDataSource;
    dsAdmision: TDataSource;
    cxEditRepository1: TcxEditRepository;
    rpitmDiagC: TcxEditRepositoryLookupComboBoxItem;
    rptimDiagN: TcxEditRepositoryLookupComboBoxItem;
    grdDiag: TcxGrid;
    tvDiag: TcxGridDBTableView;
    tvDiagCOD_DIAGNOSTICO1: TcxGridDBColumn;
    tvDiagNOM_DIAGNSOTICO1: TcxGridDBColumn;
    tvDiagSIVIGILA1: TcxGridDBColumn;
    lvDiag: TcxGridLevel;
    btnAsignaDiagPpal: TcxButton;
    btnAsignaDiagRel3: TcxButton;
    btnAsignaDiagRel2: TcxButton;
    btnAsignaDiagRel1: TcxButton;
    lkcmmbxDiagPpalC: TcxDBLookupComboBox;
    lkcmmbxDiagPpalN: TcxDBLookupComboBox;
    lkpcmbbxDiagRel1C: TcxDBLookupComboBox;
    lkpcmbbxDiagRel1N: TcxDBLookupComboBox;
    lkpcmbbxDiagRel2C: TcxDBLookupComboBox;
    lkpcmbbxDiagRel2N: TcxDBLookupComboBox;
    lkpcmbbxDiagRel3C: TcxDBLookupComboBox;
    lkpcmbbxDiagRel3N: TcxDBLookupComboBox;
    lytctrlDiag: TdxLayoutControl;
    lytgrpRaiz: TdxLayoutGroup;
    lytitmBuscar: TdxLayoutItem;
    lytgrpDiagI: TdxLayoutGroup;
    lytbtnAsignarDiagPpal: TdxLayoutItem;
    lytgrpBuscar: TdxLayoutGroup;
    lytitmDiagPpalC: TdxLayoutItem;
    lytitmDiagPpalN: TdxLayoutItem;
    lytgrpDiagLinea1: TdxLayoutGroup;
    lytitmDiagRel1N: TdxLayoutItem;
    lytitmDiagRel1C: TdxLayoutItem;
    lytgrpDiagPpal: TdxLayoutGroup;
    lytgrpDiagRel1: TdxLayoutGroup;
    lytitmDiagRel2C: TdxLayoutItem;
    lytitmDiagRel2N: TdxLayoutItem;
    lytitmDiagRel3C: TdxLayoutItem;
    lytitmDiagRel3N: TdxLayoutItem;
    lytgrpDiagLinea2: TdxLayoutGroup;
    lytgrpDiagRel2: TdxLayoutGroup;
    lytgrpDiagRel3: TdxLayoutGroup;
    lytbtnGuardar: TdxLayoutItem;
    lytgrpAccion: TdxLayoutGroup;
    btnGuardar: TcxButton;
    lytbtnAsignarDiagRel1: TdxLayoutItem;
    lytgrpAsignar: TdxLayoutGroup;
    lytbtnAsignarDiagRel2: TdxLayoutItem;
    lytbtnAsignarDiagRel3: TdxLayoutItem;
    lytgrpSeleccionar: TdxLayoutGroup;
    lytctrlDiagSplitterItem1: TdxLayoutSplitterItem;
    lytitmDociID: TdxLayoutItem;
    lytgrpNotas: TdxLayoutGroup;
    lytgrpPaciente: TdxLayoutGroup;
    dblblDocID: TcxDBLabel;
    dblblTipoDocID: TcxDBLabel;
    dblblNumAdmision: TcxDBLabel;
    dblblFechaAdmision: TcxDBLabel;
    dblblPaciente: TcxDBLabel;
    dblblTipoEdadRel: TcxDBLabel;
    dblblEdadRelativa: TcxDBLabel;
    lytitmTipoDocID: TdxLayoutItem;
    lytitmPaciente: TdxLayoutItem;
    lytitmNumAdmision: TdxLayoutItem;
    lytitmFechaAdmision: TdxLayoutItem;
    lytitmTipoEdadRel: TdxLayoutItem;
    lytitmEdadRel: TdxLayoutItem;
    lytgrpDocID: TdxLayoutGroup;
    lytgrpPag: TdxLayoutGroup;
    tvNotasPac: TcxGridDBTableView;
    lvNotasPac: TcxGridLevel;
    grdNotasPac: TcxGrid;
    lytitmNotas: TdxLayoutItem;
    tblNotaPaciente: TADOTable;
    tblOpcionNota: TADOTable;
    dsNotasPaciente: TDataSource;
    dsOpcionNota: TDataSource;
    tvNotasPacID1: TcxGridDBColumn;
    tvNotasPacOpcionNotaID1: TcxGridDBColumn;
    tvNotasPacNota1: TcxGridDBColumn;
    tvNotasPacFecha1: TcxGridDBColumn;
    tvNotasPacActivo1: TcxGridDBColumn;
    tvNotasPacUsuarioID1: TcxGridDBColumn;
    rpitmOpcionNota: TcxEditRepositoryLookupComboBoxItem;
    rpitmProf: TcxEditRepositoryLookupComboBoxItem;
    lytgrpAdmision: TdxLayoutGroup;
    dsPaciente: TDataSource;
    lytgrpEdadRel: TdxLayoutGroup;
    lytgrpNombre: TdxLayoutGroup;
    qryPaciente: TADOQuery;
    lytitmPacienteID: TdxLayoutItem;
    lytctrlDiagGroup1: TdxLayoutGroup;
    dblblPacienteID: TcxDBLabel;
    tblUsuario: TADOTable;
    dsUsuario: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
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
    btnCerrar: TcxButton;
    lytbtnCerrar: TdxLayoutItem;
    lytitmTipoDiagPpal: TdxLayoutItem;
    lytgrpDiagPpalCN: TdxLayoutGroup;
    dbrdrpTipoDiagPpal: TcxDBRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAsignaDiagPpalClick(Sender: TObject);
    procedure lkcmmbxDiagPpalCEditing(Sender: TObject; var CanEdit: Boolean);
    procedure lkcmmbxDiagPpalNEditing(Sender: TObject; var CanEdit: Boolean);
    procedure lkcmmbxDiagPpalCPropertiesChange(Sender: TObject);
    procedure lkcmmbxDiagPpalNPropertiesChange(Sender: TObject);
    procedure lkpcmbbxDiagRel1NPropertiesChange(Sender: TObject);
    procedure lkpcmbbxDiagRel1CPropertiesChange(Sender: TObject);
    procedure btnAsignaDiagRel1Click(Sender: TObject);
    procedure lkpcmbbxDiagRel1CEditing(Sender: TObject; var CanEdit: Boolean);
    procedure lkpcmbbxDiagRel1NEditing(Sender: TObject; var CanEdit: Boolean);
    procedure btnAsignaDiagRel2Click(Sender: TObject);
    procedure btnAsignaDiagRel3Click(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure lytgrpBuscarButton0Click(Sender: TObject);
    procedure lytgrpBuscarButton1Click(Sender: TObject);
    procedure tblNotaPacienteAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure tblNotaPacienteBeforePost(DataSet: TDataSet);
    procedure tblNotaPacienteRecordChangeComplete(DataSet: TCustomADODataSet;
      const Reason: TEventReason; const RecordCount: Integer;
      const Error: Error; var EventStatus: TEventStatus);
  private
    FPacienteID: integer;
    FProfesionalID: integer;
    FNumeroAdmision: string;

    procedure SetPacienteID(const Value: integer);
    procedure SetProfesionalID(const Value: integer);
    procedure SetNumeroAdmision(const Value: string);

    { Private declarations }
  public
    { Public declarations }
    property PacienteID: integer read FPacienteID write SetPacienteID;
    property ProfesionalID: integer read FProfesionalID write SetProfesionalID;
    property NumeroAdmision:string  read FNumeroAdmision write SetNumeroAdmision;
  end;

var
  frmDiagnostico: TfrmDiagnostico;

implementation

{$R *.dfm}

procedure TfrmDiagnostico.btnAsignaDiagPpalClick(Sender: TObject);
begin
  if not (dsAdmision.State=dsEdit) then
    dsAdmision.DataSet.Edit;
  dsAdmision.DataSet.FieldByName('DIAGNOSTICO').Value:=tvDiagCOD_DIAGNOSTICO1.EditValue;
  tvDiag.DataController.Filter.Clear ;
end;

procedure TfrmDiagnostico.btnAsignaDiagRel1Click(Sender: TObject);
begin
  if not (dsAdmision.State=dsEdit) then
    dsAdmision.DataSet.Edit;
  dsAdmision.DataSet.FieldByName('DIAGN_I_REL1').Value:=tvDiagCOD_DIAGNOSTICO1.EditValue;
  tvDiag.DataController.Filter.Clear ;
end;

procedure TfrmDiagnostico.btnAsignaDiagRel2Click(Sender: TObject);
begin
  if not (dsAdmision.State=dsEdit) then
    dsAdmision.DataSet.Edit;
  dsAdmision.DataSet.FieldByName('DIAGN_I_REL2').Value:=tvDiagCOD_DIAGNOSTICO1.EditValue;
  tvDiag.DataController.Filter.Clear ;
end;

procedure TfrmDiagnostico.btnAsignaDiagRel3Click(Sender: TObject);
begin
  if not (dsAdmision.State=dsEdit) then
    dsAdmision.DataSet.Edit;
  dsAdmision.DataSet.FieldByName('DIAGN_I_REL3').Value:=tvDiagCOD_DIAGNOSTICO1.EditValue;
  tvDiag.DataController.Filter.Clear ;
end;

procedure TfrmDiagnostico.btnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmDiagnostico.btnGuardarClick(Sender: TObject);
begin
  if not (dsAdmision.State=dsEdit) then
    dsAdmision.DataSet.Edit;
  dsAdmision.DataSet.Post;
end;

procedure TfrmDiagnostico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
   tblUsuario.Close;
   tblOpcionNota.Close;
   tblNotaPaciente.Close;
   tblAdmision.Close;
   tblDiagnostico.Close;
   if QryPaciente.Active then
      qryPaciente.Close;

  finally
       release;
  end;

end;

procedure TfrmDiagnostico.FormCreate(Sender: TObject);
begin
try

   tblDiagnostico.Open;
   tblAdmision.Open;
   tblNotaPaciente.Open;
   tblOpcionNota.Open;
   tblUsuario.Open;

  finally
    lytgrppag.ItemIndex:=0;
  end; //finally
end;

procedure TfrmDiagnostico.lkcmmbxDiagPpalCEditing(Sender: TObject;
  var CanEdit: Boolean);
begin
//  lkcmmbxDiagPpalN.Repaint;
end;

procedure TfrmDiagnostico.lkcmmbxDiagPpalCPropertiesChange(Sender: TObject);
begin
//  lkcmmbxDiagPpalN.Repaint;
end;

procedure TfrmDiagnostico.lkcmmbxDiagPpalNEditing(Sender: TObject;
  var CanEdit: Boolean);
begin
//  lkcmmbxDiagPpalC.Repaint;
end;

procedure TfrmDiagnostico.lkcmmbxDiagPpalNPropertiesChange(Sender: TObject);
begin
  //   lkcmmbxDiagPpalC.Repaint;
end;

procedure TfrmDiagnostico.lkpcmbbxDiagRel1CEditing(Sender: TObject;
  var CanEdit: Boolean);
begin
//lkpcmbbxDiagRel1N.Repaint;
end;

procedure TfrmDiagnostico.lkpcmbbxDiagRel1CPropertiesChange(Sender: TObject);
begin
 //  lkpcmbbxDiagRel1N.Repaint;
end;

procedure TfrmDiagnostico.lkpcmbbxDiagRel1NEditing(Sender: TObject;
  var CanEdit: Boolean);
begin
//lkpcmbbxDiagRel1C.Repaint
end;

procedure TfrmDiagnostico.lkpcmbbxDiagRel1NPropertiesChange(Sender: TObject);
begin
 //lkpcmbbxDiagRel1C.Repaint;
end;

procedure TfrmDiagnostico.lytgrpBuscarButton0Click(Sender: TObject);
begin
    lytgrpBuscar.Expanded:= true;
    lytgrpBuscar.Caption:='Buscar diagnóstico';
    lytgrpBuscar.ButtonOptions.Buttons[0].Visible:=false;
    lytgrpBuscar.ButtonOptions.Buttons[1].Visible:=true;
end;

procedure TfrmDiagnostico.lytgrpBuscarButton1Click(Sender: TObject);
begin
    lytgrpBuscar.Expanded:= false;
    lytgrpBuscar.Caption:='Expanda este recuadro para buscar diagnóstico';
    lytgrpBuscar.ButtonOptions.Buttons[0].Visible:=true;
    lytgrpBuscar.ButtonOptions.Buttons[1].Visible:=false;
end;


procedure TfrmDiagnostico.SetNumeroAdmision(const Value: string);
begin
  FNumeroAdmision := Value;
  tblAdmision.Filter:='NO_ADMISION = '''+FNumeroAdmision+'''';
  tblAdmision.Filtered:=true;
  qryPaciente.SQL.Add('Select * from vPacientes where TP_IDENT_USUAR = '''+ tblAdmision.FieldByName('TP_IDENT_USUAR').AsString+''' AND ');
  qryPaciente.SQL.Add(' NR_IDENT_USUAR = '''+ tblAdmision.FieldByName('NR_IDENT_USUAR').AsString+'''');
  qryPaciente.Open;
  if  Qrypaciente.Eof then
     begin
MessageBox(0, 'Se requiere seleccionar al paciente antes de diagnosticarle!.', 'Falta Paciente', MB_ICONWARNING or MB_OK);
  Screen.Cursor := crDefault;
       close;
       exit;
     end
  else
    begin
      FPacienteID:=  Qrypaciente.FieldByName('ID').AsInteger;
      tblNotaPaciente.Filter:='PacienteID='+Qrypaciente.FieldByName('ID').AsString;
      tblNotaPaciente.Filtered:=true;
    end;

  Screen.Cursor := crDefault;
end;

procedure TfrmDiagnostico.SetPacienteID(const Value: integer);
begin
  FPacienteID := Value;
end;

procedure TfrmDiagnostico.SetProfesionalID(const Value: integer);
begin
  FProfesionalID := Value;
end;

procedure TfrmDiagnostico.tblNotaPacienteAfterInsert(DataSet: TDataSet);
begin
  tblNotaPaciente.FieldByName('PacienteID').AsInteger:=FPacienteID;
  tblNotaPaciente.FieldByName('UsuarioID').AsInteger:=FProfesionalID;
  tblNotaPaciente.FieldByName('Fecha').AsDateTime:=Now;
  tblNotaPaciente.FieldByName('Activo').AsBoolean:=true;
end;

procedure TfrmDiagnostico.tblNotaPacienteBeforePost(DataSet: TDataSet);
begin
 if  not dataset.FieldByName('Activo').AsBoolean then
    begin
        dataset.FieldByName('DesactivoUsuarioID').AsInteger:=FProfesionalID;
        dataset.FieldByName('Desactivado').AsDateTime:=now;
    end;

end;

procedure TfrmDiagnostico.tblNotaPacienteRecordChangeComplete(
  DataSet: TCustomADODataSet; const Reason: TEventReason;
  const RecordCount: Integer; const Error: Error;
  var EventStatus: TEventStatus);
 var
  bMismoUsuario: boolean;
begin
   tvNotasPac.NavigatorButtons.Edit.Enabled:= DataSet.FieldByName('Activo').AsBoolean;
   bMismoUsuario:= DataSet.FieldByName('UsuarioID').AsInteger = FProfesionalID;
   tvNotasPacNota1.Editing:= bMismoUsuario;
   tvNotasPacOpcionNotaID1.Editing:= bMismoUsuario;
end;

end.
