unit FLibroDiario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, ADODB, DBCtrls, StdCtrls;

type
  TFrmLibro_Diario = class(TForm)
    QuickRep1: TQuickRep;
    QRBand3: TQRBand;
    ADOQuery1: TADOQuery;
    QRLabel2: TQRLabel;
    PageHeaderBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel12: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRBand2: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    ADOQuery2: TADOQuery;
    QRShape2: TQRShape;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    ADOQuery3: TADOQuery;
    DataSource1: TDataSource;
    Button1: TButton;
    QRLabel10: TQRLabel;
    QRLabel9: TQRLabel;
    QRGroup1: TQRGroup;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRFooter: TQRBand;
    QRLabel14: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    ADOQuery4: TADOQuery;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRShape3: TQRShape;
    QRDBImage1: TQRDBImage;
    QRLabel13: TQRLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure QRGroup1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLibro_Diario: TFrmLibro_Diario;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TFrmLibro_Diario.Button1Click(Sender: TObject);
begin
 if MessageDlg('Desea Imprimir el Informe?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 begin
   QRLabel9.Caption:=DBLookupComboBox1.keyvalue;
   ADOQuery1.Close;
   ADOQuery1.Parameters.ParamValues['per']:= DBLookupComboBox1.keyvalue;
   ADOQuery1.Open;
   ADOQuery2.Close;
   ADOQuery2.Parameters.ParamValues['per']:= DBLookupComboBox1.keyvalue;
   ADOQuery2.Open;
   ADOQuery4.Close;
   ADOQuery4.Parameters.ParamValues['tp'] := ADOQuery1.FieldValues['Tipo_Comprobante'];
   ADOQuery4.Parameters.ParamValues['nr'] := ADOQuery1.FieldValues['Numero_Comprobante'];
   ADOQuery4.Open;
   QuickRep1.PreviewInitialState := wsMaximized;
   QuickRep1.PreviewModal;
   Close;
 end;
end;

procedure TFrmLibro_Diario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure TFrmLibro_Diario.FormActivate(Sender: TObject);
begin
    adoquery1.Open;
    adoquery2.Open;
    adoquery3.Open;
end;

procedure TFrmLibro_Diario.QRGroup1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
   ADOQuery4.Close;
   ADOQuery4.Parameters.ParamValues['tp'] := ADOQuery1.FieldValues['Tipo_Comprobante'];
   ADOQuery4.Parameters.ParamValues['nr'] := ADOQuery1.FieldValues['Numero_Comprobante'];
   ADOQuery4.Open;
end;

end.
