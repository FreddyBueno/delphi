unit FPyGPeriodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, DBCtrls, QuickRpt, QRCtrls, ExtCtrls,
  Grids, DBGrids, QRExport,StrUtils, SqlExpr, qrpctrls;

type
  TFormPyGBimestre = class(TForm)
    QuickRep1: TQuickRep;
    QRBand3: TQRBand;
    QRShape2: TQRShape;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRExpr1: TQRExpr;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    ADOQuery3: TADOQuery;
    DataSource1: TDataSource;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRLabel2: TQRLabel;
    ADOQTot1: TADOQuery;
    ADOQTot2: TADOQuery;
    QRLabel5: TQRLabel;
    SQLConnection1: TSQLConnection;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);

 {   procedure CheckBox1Click(Sender: TObject);    }
   { procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);    }
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPyGBimestre: TFormPyGBimestre;
  Saldo,saldo2:Double;

implementation

uses UDataModule1, FPyG;

{$R *.dfm}

procedure TFormPyGBimestre.Button1Click(Sender: TObject);
begin
 if MessageDlg('Desea Imprimir el Informe?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 begin
   QRLabel9.Caption:=DBLookupComboBox1.keyvalue;
   QRLabel14.Caption:=DBLookupComboBox2.keyvalue;

   ADOQuery1.Close;
   ADOQuery1.Parameters.ParamValues['per']:= DBLookupComboBox1.keyvalue;
   ADOQuery1.Parameters.ParamValues['per2']:= DBLookupComboBox2.keyvalue;
   ADOQuery1.Open;
   if FormPyGBimestre.Caption='      P y G' then
   Begin
     ADOQuery1.Filter := 'tp=4 or tp=5 or tp=6';
     ADOQuery1.Filtered := true;
     QrLabel2.Caption := 'Ingresos - Gastos - Costos:';
   End
   Else Begin
     ADOQuery1.Filter := 'tp=1 or tp=2 or tp=3';
     ADOQuery1.Filtered := true;
     QrLabel2.Caption := 'Activos - Pasivos - Patrimonio:';
   End;

   IF ADOQuery1.RecordCount=0 Then
   Begin
     ShowMessage('No hay registros para imprimir este reporte.');
     Exit;
   End;
   QuickRep1.PreviewInitialState := wsMaximized;
  QuickRep1.PreviewModal;
  Close;
 end;
end;

procedure TFormPyGBimestre.FormCreate(Sender: TObject);
begin
  adoquery3.Open;
  adoquery2.Open;
end;

procedure TFormPyGBimestre.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFormPyGBimestre.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var st : currency;
begin
   ADOQTot1.Close;
   ADOQTot1.Parameters.ParamValues['per1'] :=  DBLookupComboBox1.Text;
   ADOQTot1.Parameters.ParamValues['per2'] :=  DBLookupComboBox1.Text;
   ADOQTot1.Parameters.ParamValues['per3'] :=  DBLookupComboBox1.Text;
   ADOQTot1.Open;
   st :=  ADOQtot1.FieldValues['tot'];
   QrLabel6.Caption:= Format('%16.2n',[st]);

   ADOQTot2.Close;
   ADOQTot2.Parameters.ParamValues['per1'] :=  DBLookupComboBox1.Text;
   ADOQTot2.Parameters.ParamValues['per2'] :=  DBLookupComboBox1.Text;
   ADOQTot2.Parameters.ParamValues['per3'] :=  DBLookupComboBox1.Text;
   ADOQTot2.Open;
   if ADOQtot2.FieldValues['tot'] <> Null then
     st :=  ADOQtot2.FieldValues['tot']
   Else
     st := 0;
   QrLabel7.Caption:= Format('%16.2n',[st]);
end;

end.
