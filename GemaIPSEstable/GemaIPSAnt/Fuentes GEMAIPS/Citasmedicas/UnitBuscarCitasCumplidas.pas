unit UnitBuscarCitasCumplidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvGradient, StdCtrls, Buttons, JvBitBtn, ComCtrls, ExtCtrls,
  JvEdit, JvBevel, JvLabel, JvDateTimePicker, DB, ADODB,strutils, JvExStdCtrls,
  JvExComCtrls, JvExButtons, JvExControls;

type
  TFrmBuscaCitasCumplidas = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    JvGradient1: TJvGradient;
    JvGradient3: TJvGradient;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    Bevel1: TBevel;
    JvLabel4: TJvLabel;
    Panel1: TPanel;
    JvGradient2: TJvGradient;
    BtnAceptar: TJvBitBtn;
    BtnCancelar: TJvBitBtn;
    JvDateTimePicker1: TJvDateTimePicker;
    JvDateTimePicker2: TJvDateTimePicker;
    EditNumDoc: TJvEdit;
    Panel2: TPanel;
    JvGradient4: TJvGradient;
    JvBitBtn1: TJvBitBtn;
    JvBitBtn2: TJvBitBtn;
    JvGradient5: TJvGradient;
    JvGradient6: TJvGradient;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    Bevel2: TBevel;
    JvDateTimePicker3: TJvDateTimePicker;
    JvDateTimePicker4: TJvDateTimePicker;
    Panel3: TPanel;
    RBActivas: TRadioButton;
    RBCanceladas: TRadioButton;
    RBTodas: TRadioButton;
    TabSheet3: TTabSheet;
    Panel4: TPanel;
    JvGradient7: TJvGradient;
    JvBitBtn3: TJvBitBtn;
    JvBitBtn4: TJvBitBtn;
    JvLabel8: TJvLabel;
    Bevel3: TBevel;
    JvGradient8: TJvGradient;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    JvLabel9: TJvLabel;
    JvLabel10: TJvLabel;
    QryGeneral: TADOQuery;
    JvLabel11: TJvLabel;
    JvEdit1: TJvEdit;
    JvEdit2: TJvEdit;
    JvLabel12: TJvLabel;
    JvLabel13: TJvLabel;
    ComboBox1: TComboBox;
    procedure BtnAceptarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBuscaCitasCumplidas: TFrmBuscaCitasCumplidas;

implementation

uses UDataModule1, Libreria_PrateincoForm;

{$R *.dfm}

procedure TFrmBuscaCitasCumplidas.BtnAceptarClick(Sender: TObject);
begin
  ReporteadorP('Citas Médicas',' SELECT SAMedicos.Tp_Ident_Medico,SAMedicos.Nr_Ident_Medico,SAMedicos.Primer_Apellido+'+chr(39)+' '+chr(39)+'+SAMedicos.Segund_Apellido+'+chr(39)+' '+chr(39)+ '+SAMedicos.Primer_Nombre+'+chr(39)+' '+chr(39)+ '+SAMedicos.Segund_Nombre As Nombre_Medico,Fecha AS Fecha_Hora_Cita,CICitas.Tp_Ident_Usuar,CICitas.Nr_Ident_Usuar,Nombre_Usuario '+
    ' FROM CICitas  ' +
    ' inner join SAMedicos on ' +
    '   ( CICitas.Tp_Ident_Medico = SAMedicos.Tp_Ident_Medico ' +
    '    AND CICitas.Nr_Ident_Medico = SAMedicos.Nr_Ident_Medico )'+
    '  left outer join SAPacientes on  ' +
    '   ( CICitas.Tp_Ident_Usuar = SAPacientes.Tp_Ident_Usuar ' +
    '    AND CICitas.Nr_Ident_Usuar = SAPacientes.Nr_Ident_Usuar )' +
    ' WHERE SAMedicos.Nr_Ident_Medico like '+chr(39)+EditNumDoc.Text+'%'+chr(39) +
    '  AND FECHA >= '''+ FormatDateTime('DD/MM/YYYY',JvDateTimePicker1.Date)+'''' +
    '  AND FECHA <= '''+ FormatDateTime('DD/MM/YYYY',JvDateTimePicker2.Date)+'''' +
    '  AND CICitas.Estado          = ''A'''+
    '  AND CICitas.Cumplida        = 1 '+
    ' ORDER BY Fecha ','');
     // Código viejo no compatible con SQLServer 2012
    {
      ReporteadorP('Citas Médicas',' SELECT SAMedicos.Tp_Ident_Medico,SAMedicos.Nr_Ident_Medico,SAMedicos.Primer_Apellido+'+chr(39)+' '+chr(39)+'+SAMedicos.Segund_Apellido+'+chr(39)+' '+chr(39)+ '+SAMedicos.Primer_Nombre+'+chr(39)+' '+chr(39)+ '+SAMedicos.Segund_Nombre As Nombre_Medico,Fecha AS Fecha_Hora_Cita,CICitas.Tp_Ident_Usuar,CICitas.Nr_Ident_Usuar,Nombre_Usuario '+
    ' FROM CICitas,SAPacientes,SAMedicos ' +
    ' WHERE SAMedicos.Nr_Ident_Medico like '+chr(39)+EditNumDoc.Text+'%'+chr(39) +
    '  AND CICitas.Tp_Ident_Usuar * = SAPacientes.Tp_Ident_Usuar ' +
    '  AND CICitas.Nr_Ident_Usuar * = SAPacientes.Nr_Ident_Usuar ' +
    '  AND CICitas.Tp_Ident_Medico = SAMedicos.Tp_Ident_Medico ' +
    '  AND CICitas.Nr_Ident_Medico = SAMedicos.Nr_Ident_Medico'+
    '  AND FECHA >= '''+ FormatDateTime('DD/MM/YYYY',JvDateTimePicker1.Date)+'''' +
    '  AND FECHA <= '''+ FormatDateTime('DD/MM/YYYY',JvDateTimePicker2.Date)+'''' +
    '  AND CICitas.Estado          = ''A'''+
    '  AND CICitas.Cumplida        = 1 '+
    ' ORDER BY Fecha ','');
    }
end;

procedure TFrmBuscaCitasCumplidas.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmBuscaCitasCumplidas.JvBitBtn1Click(Sender: TObject);
var  cadena : string;
begin
  cadena := ' SELECT SAMedicos.Tp_Ident_Medico,SAMedicos.Nr_Ident_Medico,SAMedicos.Primer_Apellido+'+chr(39)+' '+chr(39)+'+SAMedicos.Segund_Apellido+'+chr(39)+' '+chr(39)+ '+SAMedicos.Primer_Nombre+'+chr(39)+' '+chr(39)+ '+SAMedicos.Segund_Nombre As Nombre_Medico, '+
    ' Fecha AS Fecha_Hora_Cita,CICitas.Tp_Ident_Usuar,CICitas.Nr_Ident_Usuar,Nombre_Usuario';
    if RBCanceladas.Checked = True then
      cadena := cadena +', MotivoCancelacion';

    cadena := cadena + ' FROM CICitas inner join SAMedicos on  ' +
    '  ( CICitas.Tp_Ident_Medico = SAMedicos.Tp_Ident_Medico ' +
    '    AND CICitas.Nr_Ident_Medico = SAMedicos.Nr_Ident_Medico )'+
    ' left outer join SAPacientes on ' +
    ' ( CICitas.Tp_Ident_Usuar = SAPacientes.Tp_Ident_Usuar ' +
    '  AND CICitas.Nr_Ident_Usuar = SAPacientes.Nr_Ident_Usuar )' +
    '  WHERE FECHA >= '''+ FormatDateTime('DD/MM/YYYY',JvDateTimePicker3.Date)+'''' +
    '  AND FECHA <= '''+ FormatDateTime('DD/MM/YYYY',JvDateTimePicker4.Date)+'''';
 {  //Código viejo no compatible con SQLServer 2012
     cadena := cadena + ' FROM CICitas,SAPacientes,SAMedicos ' +
    ' WHERE CICitas.Tp_Ident_Usuar * = SAPacientes.Tp_Ident_Usuar ' +
    '  AND CICitas.Nr_Ident_Usuar * = SAPacientes.Nr_Ident_Usuar ' +
    '  AND CICitas.Tp_Ident_Medico = SAMedicos.Tp_Ident_Medico ' +
    '  AND CICitas.Nr_Ident_Medico = SAMedicos.Nr_Ident_Medico'+
    '  AND FECHA >= '''+ FormatDateTime('DD/MM/YYYY',JvDateTimePicker3.Date)+'''' +
    '  AND FECHA <= '''+ FormatDateTime('DD/MM/YYYY',JvDateTimePicker4.Date)+'''';


 }

    if RBActivas.Checked = True then
      cadena := cadena +  '  AND CICitas.Estado    = ''A'''
    else
      if RBCanceladas.Checked = True then
        cadena := cadena + '  AND CICitas.Estado   = ''C'''
      else
        if RBTodas.Checked = True then
          cadena := cadena + '  AND CICitas.Estado  in (''C'',''A'')';

    cadena := cadena +  ' ORDER BY Fecha ';

   ReporteadorP('Citas Médicas',Cadena,'');
end;

procedure TFrmBuscaCitasCumplidas.JvBitBtn3Click(Sender: TObject);
begin
   if Application.MessageBox('Está seguro(a) de cambiar los parámetros?','Pregunta',MB_YESNO+MB_ICONQUESTION) = IdYes then
     begin
      try
          DataModule1.ADOConnection1.BeginTrans;

          QryGeneral.Close;
          QryGeneral.SQL.Clear;
          QryGeneral.SQL.Add('update CIParametros set');
          QryGeneral.SQL.Add('Hora_Inicio = '''+FormatDateTime('DD/MM/YYYY hh:mm:ss',DTP1.DateTime)+''',');
          QryGeneral.SQL.Add('Hora_Fin  = '''+FormatDateTime('DD/MM/YYYY hh:mm:ss',DTP2.DateTime)+''',');
          QryGeneral.SQL.Add('Duracion  = '+JvEdit1.Text+',');
          QryGeneral.SQL.Add('Tipo  = '+Leftstr(ComboBox1.Text,1)+',');
          QryGeneral.SQL.Add('Intervalo = '+JvEdit2.Text);
          QryGeneral.ExecSQL;

          DataModule1.ADOConnection1.CommitTrans;

        Application.MessageBox('Se modificarón los parámetros correctamente','Información',MB_OK+MB_ICONINFORMATION);
        close;
      except
          DataModule1.ADOConnection1.RollbackTrans;

        Application.MessageBox('Error al momento de modificar los parámetros..por favor comuníquese con el Help Desk','Error',MB_OK+MB_ICONERROR);
      end;
    end;

end;

procedure TFrmBuscaCitasCumplidas.TabSheet3Show(Sender: TObject);
begin
  QryGeneral.Close;
  QryGeneral.SQL.Clear;
  QryGeneral.SQL.Add('SELECT * FROM CIPARAMETROS');
  QryGeneral.Open;

  if not QryGeneral.Eof then
    begin
      DTP1.DateTime  := QryGeneral.Fields.FieldByName('Hora_Inicio').AsDateTime;
      DTP2.DateTime  := QryGeneral.Fields.FieldByName('Hora_Fin').AsDateTime;
      JvEdit1.Text  := QryGeneral.Fields.FieldByName('Duracion').AsString;
      JvEdit2.Text  := QryGeneral.Fields.FieldByName('Intervalo').AsString;
      ComboBox1.Text  := QryGeneral.Fields.FieldByName('Tipo').AsString;
    end;
end;

end.
