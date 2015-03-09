unit CajaEmbell;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Data.Win.ADODB, Vcl.ExtCtrls, Vcl.ComCtrls, JvExComCtrls,
  JvDateTimePicker, JvDBDateTimePicker,dateutils, QuickRpt, QRCtrls;

type
  TFCajaEmbell = class(TForm)
    Panel2: TPanel;
    ADOQFact: TADOQuery;
    DSFact: TDataSource;
    DSCaja: TDataSource;
    ADOQCaja: TADOQuery;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    Panel3: TPanel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    DateTimePicker: TDateTimePicker;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Panel4: TPanel;
    Splitter1: TSplitter;
    Label7: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label8: TLabel;
    DSCierre: TDataSource;
    Label9: TLabel;
    Edit4: TEdit;
    Label10: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label11: TLabel;
    QuickRep1: TQuickRep;
    QRBand5: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRGroup4: TQRGroup;
    Label12: TLabel;
    Edit7: TEdit;
    Label13: TLabel;
    Edit8: TEdit;
    Button2: TButton;
    QRLabel1: TQRLabel;
    ADOQCierre: TADOQuery;
    Label14: TLabel;
    Edit9: TEdit;
    ADOQTF: TADOQuery;
    QRShape13: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRExpr4: TQRExpr;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure DSFactDataChange(Sender: TObject; Field: TField);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCajaEmbell: TFCajaEmbell;

implementation

{$R *.dfm}

uses Libreria_Prateinco;

procedure TFCajaEmbell.Button1Click(Sender: TObject);
begin
  if ADOQCaja.RecordCount = 0 then ADOQCaja.Append
  Else ADOQCaja.Edit;
  ADOQCaja.FieldValues['No_Factura']     := DBLookupComboBox1.KeyValue;
  ADOQCaja.FieldValues['Fecha_Pago']     := DateTimePicker.DateTime;
  ADOQCaja.FieldValues['Valor_Recibido_Efectivo'] := Edit1.Text;
  ADOQCaja.FieldValues['Valor_Recibido_Tarjeta']  := Edit7.Text;
  ADOQCaja.FieldValues['Cambio']         := Edit2.Text;
  ADOQCaja.FieldValues['Faltante']       := Edit3.Text;
  ADOQCaja.Post;

  //Calcula Totales
  ADOQCierre.Close;
  ADOQCierre.Parameters.ParamValues['dia'] := dayof(DateTimePicker1.Date);
  ADOQCierre.Parameters.ParamValues['mes'] := monthof(DateTimePicker1.Date);
  ADOQCierre.Parameters.ParamValues['ano'] := yearof(DateTimePicker1.Date);
  ADOQCierre.Open;

  Edit4.Text := campotoedit(ADOQCierre.FieldValues['VRE']);
  Edit8.Text := campotoedit(ADOQCierre.FieldValues['VRT']);
  Edit5.Text := campotoedit(ADOQCierre.FieldValues['C']);
  Edit6.Text := campotoedit(ADOQCierre.FieldValues['F']);
  Edit9.Text := campotoedit(ADOQCierre.FieldValues['TP']);

  ADOQTF.Close;
  ADOQTF.Parameters.ParamValues['dia'] := dayof(DateTimePicker1.Date);
  ADOQTF.Parameters.ParamValues['mes'] := monthof(DateTimePicker1.Date);
  ADOQTF.Parameters.ParamValues['ano'] := yearof(DateTimePicker1.Date);
  ADOQTF.Open;
end;

procedure TFCajaEmbell.Button2Click(Sender: TObject);
begin
  QRLabel1.Caption := datetostr(DateTimePicker1.DateTime);
  ADOQTF.Close;
  ADOQTF.Parameters.ParamValues['dia'] := dayof(DateTimePicker1.Date);
  ADOQTF.Parameters.ParamValues['mes'] := monthof(DateTimePicker1.Date);
  ADOQTF.Parameters.ParamValues['ano'] := yearof(DateTimePicker1.Date);
  ADOQTF.Open;
  if ADOQTF.RecordCount <> 0 then
  Begin
    QRLabel3.Caption := campotoedit(ADOQTF.FieldValues['Cantidad']);
    QRLabel5.Caption := campotoedit(ADOQTF.FieldValues['Total']);
    QRLabel7.Caption := Edit4.Text;
    QRLabel9.Caption := Edit8.Text;
    QRLabel13.Caption := Edit9.Text;
    QuickRep1.PreviewInitialState := wsMaximized;
   QuickRep1.PreviewModal;
   Close;
  End
  Else Showmessage('ERROR: No ha ingresado pagos para este dia.');
end;

procedure TFCajaEmbell.DSFactDataChange(Sender: TObject; Field: TField);
begin
  if ADOQFact.FieldValues['Numero_Factura'] <> null then
  Begin
    ADOQCaja.Close;
    ADOQCaja.Parameters.ParamValues['fac'] := ADOQFact.FieldValues['Numero_Factura'];
    ADOQCaja.Open;

    Edit1.Text := campotoedit(ADOQCaja.FieldValues['Valor_Recibido_Efectivo']);
    Edit7.Text := campotoedit(ADOQCaja.FieldValues['Valor_Recibido_Tarjeta']);
    Edit2.Text := campotoedit(ADOQCaja.FieldValues['Cambio']);
    Edit3.Text := campotoedit(ADOQCaja.FieldValues['Faltante']);
  End;
end;

procedure TFCajaEmbell.Edit1Exit(Sender: TObject);
begin
  Edit1.Text := ntsfbg(stf(Edit1.Text));
  Edit7.Text := ntsfbg(stf(Edit7.Text));
  Edit2.Text := '0';
  Edit3.Text := '0';

  if stf(DBEdit1.Text) - (stf(Edit1.Text)+stf(Edit7.Text)) > 0 Then
    Edit3.Text := ntsfbg(stf(DBEdit1.Text) - (stf(Edit1.Text)+stf(Edit7.Text)))
  Else
    Edit2.Text := ntsfbg((stf(Edit1.Text)+stf(Edit7.Text)) - stf(DBEdit1.Text));
end;

procedure TFCajaEmbell.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  key:=validanumero(key);
end;

procedure TFCajaEmbell.FormActivate(Sender: TObject);
begin
  DateTimePicker.DateTime := Now;
  DateTimePicker1.DateTime := Now;

  ADOQFact.Close;
  ADOQFact.Parameters.ParamValues['dia'] := dayof(DateTimePicker.Datetime);
  ADOQFact.Parameters.ParamValues['mes'] := monthof(DateTimePicker.Datetime);
  ADOQFact.Parameters.ParamValues['ano'] := yearof(DateTimePicker.Datetime);
  ADOQFact.Open;
  DBLookupComboBox1.KeyValue := ADOQFact.FieldValues['Numero_Factura'];
end;

end.
