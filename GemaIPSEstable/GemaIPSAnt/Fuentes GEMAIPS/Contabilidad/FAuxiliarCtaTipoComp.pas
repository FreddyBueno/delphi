unit FAuxiliarCtaTipoComp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, DBCtrls, QRCtrls, QuickRpt, ExtCtrls,StrUtils,DateUtils;

type
  TFrmLibroAuxiliarxCtaTipoComp = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel13: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRShape1: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRExpr1: TQRExpr;
    QRBand2: TQRBand;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    ADOQuery3: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery4: TADOQuery;
    DataSource2: TDataSource;
    QRLabel16: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText12: TQRDBText;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    ADOQuery6: TADOQuery;
    ADOQuery7: TADOQuery;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    ADOQuery8: TADOQuery;
    CheckBox1: TCheckBox;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    ADOQuery2: TADOQuery;
    QRDBImage1: TQRDBImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLibroAuxiliarxCtaTipoComp: TFrmLibroAuxiliarxCtaTipoComp;
  Mes_Actual,Mes_Anterior:string;
  saldototal:currency;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TFrmLibroAuxiliarxCtaTipoComp.FormCreate(Sender: TObject);
begin
    adoquery3.Open;
    adoquery4.Open;
    ADOQuery6.Open;
    ADOQuery7.Open;
    ADOQuery8.Open;
end;

procedure TFrmLibroAuxiliarxCtaTipoComp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action :=  caFree;
end;

procedure TFrmLibroAuxiliarxCtaTipoComp.Button1Click(Sender: TObject);
begin
  QRLabel9.Caption:=DBLookupComboBox1.keyvalue;

  ADOQuery1.Close;
  ADOQuery1.Parameters.ParamValues['per']:= DBLookupComboBox1.keyvalue;
  IF checkbox1.Checked = False Then ADOQuery1.Parameters.ParamValues['cta']:= DBLookupComboBox2.keyvalue
  Else ADOQuery1.Parameters.ParamValues['cta']:= '%';
  ADOQuery1.Open;

  ADOQuery2.Close;
  ADOQuery2.Parameters.ParamValues['per']:= DBLookupComboBox1.keyvalue;
  ADOQuery2.Open;

  QuickRep1.PreviewInitialState := wsMaximized;
   QuickRep1.PreviewModal;
   Close;
end;



end.
