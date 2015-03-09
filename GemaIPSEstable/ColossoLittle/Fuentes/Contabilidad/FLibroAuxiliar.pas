unit FLibroAuxiliar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, DBCtrls, QRCtrls, QuickRpt, ExtCtrls,
  Buttons;

type
  TFrmLibroAuxiliar = class(TForm)
    QuickRep1: TQuickRep;
    QRBand3: TQRBand;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel13: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel3: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRExpr1: TQRExpr;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    ADOQuery4: TADOQuery;
    DataSource2: TDataSource;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel6: TQRLabel;
    QRBand1: TQRBand;
    Label3: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    ADOQuery5: TADOQuery;
    DataSource3: TDataSource;
    QRLabel15: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel19: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel17: TQRLabel;
    QRBand4: TQRBand;
    QRDBText6: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBImage1: TQRDBImage;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLibroAuxiliar: TFrmLibroAuxiliar;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TFrmLibroAuxiliar.Button1Click(Sender: TObject);
begin
 if MessageDlg('Desea Imprimir el Informe?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 begin
   QRLabel9.Caption:=DBLookupComboBox1.keyvalue;
   QRLabel16.Caption:=DBLookupComboBox2.Text;

   ADOQuery1.Close;
   ADOQuery1.Parameters.ParamValues['per']:= DBLookupComboBox1.keyvalue;
   ADOQuery1.Parameters.ParamValues['cta']:= DBLookupComboBox2.keyvalue;
   ADOQuery1.Open;
   IF DBLookupComboBox3.Text <> '' Then
   Begin
      ADOQuery1.Filter:='Tercero = '+chr(39)+ADOQuery5.FieldValues['Numero_Documento']+chr(39);
      ADOQuery1.Filtered:=True;
   End;
   ADOQuery2.Close;
   ADOQuery2.Parameters.ParamValues['per']:= DBLookupComboBox1.keyvalue;
   ADOQuery2.Parameters.ParamValues['cta']:= DBLookupComboBox2.keyvalue;
   IF DBLookupComboBox3.Text <> '' Then
   Begin
     ADOQuery2.SQL.Add(' AND contdetcomp.Tercero = :Terc');
     ADOQuery2.Parameters.ParamValues['Terc']:= ADOQuery5.FieldValues['Numero_Documento'];
   End;
   ADOQuery2.Open;

   QuickRep1.PreviewInitialState := wsMaximized;
   QuickRep1.PreviewModal;
   Close;
 end;
end;

procedure TFrmLibroAuxiliar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure TFrmLibroAuxiliar.FormActivate(Sender: TObject);
begin
    adoquery1.Open;
    adoquery2.Open;
    adoquery3.Open;
    adoquery4.Open;
    ADOQuery5.Open;
end;

end.
