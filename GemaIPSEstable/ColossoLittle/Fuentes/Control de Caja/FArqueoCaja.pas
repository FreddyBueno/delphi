unit FArqueoCaja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, ADODB, DB, StdCtrls, ComCtrls,
  DBCtrls, Buttons;

type
  TArqueoCaja = class(TForm)
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    QuickRep1: TQuickRep;
    QRSubDetail2: TQRSubDetail;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape6: TQRShape;
    QRLabel11: TQRLabel;
    QRExpr4: TQRExpr;
    QRLabel3: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRLabel23: TQRLabel;
    QRExpr15: TQRExpr;
    QRLabel2: TQRLabel;
    QRExpr5: TQRExpr;
    QRLabel4: TQRLabel;
    QRExpr6: TQRExpr;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRDBText1: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    ADOQuery2: TADOQuery;
    GroupFooterBand1: TQRBand;
    QRGroup1: TQRGroup;
    QRDBText4: TQRDBText;
    QRLabel1: TQRLabel;
    ADOQuery3: TADOQuery;
    QRLabel8: TQRLabel;
    QRShape3: TQRShape;
    QRLabel9: TQRLabel;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr16: TQRExpr;
    QRDBText8: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    ADOQuery4: TADOQuery;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBImage1: TQRDBImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ArqueoCaja: TArqueoCaja;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TArqueoCaja.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure TArqueoCaja.FormActivate(Sender: TObject);
begin
  DateTimePicker1.DateTime:=now;
  DateTimePicker2.DateTime:=now;
  ADOQuery4.Open;
end;

procedure TArqueoCaja.BitBtn1Click(Sender: TObject);
begin
  IF DBLookupComboBox1.Text <> '' Then
  Begin
    QRLabel10.Caption:=datetostr(DateTimePicker1.Date);
    QRLabel13.Caption:=datetostr(DateTimePicker2.Date);

    ADOTable1.Open;
    ADOQuery1.Close;
    ADOquery1.Parameters.ParamValues['IdCa']:=DBLookupComboBox1.Text;
    ADOquery1.Parameters.ParamValues['FecIni']:=datetostr(DatetimePicker1.Date);
    ADOquery1.Parameters.ParamValues['FecFin']:=datetostr(DatetimePicker2.Date);
    ADOQuery1.Open;
    ADOQuery2.Close;
    ADOquery2.Parameters.ParamValues['IdCa']:=DBLookupComboBox1.Text;
    ADOquery2.Parameters.ParamValues['FecIni']:=datetostr(DatetimePicker1.Date);
    ADOquery2.Parameters.ParamValues['FecFin']:=datetostr(DatetimePicker2.Date);
    ADOquery2.Open;
    ADOQuery3.Close;
    ADOquery3.Parameters.ParamValues['FecIni']:=datetostr(DatetimePicker1.Date);
    ADOquery3.Parameters.ParamValues['FecFin']:=datetostr(DatetimePicker2.Date);
    ADOQuery3.Open;
    QuickRep1.PreviewInitialState := wsMaximized;
  QuickRep1.PreviewModal;
  Close;
  End
  Else Showmessage('Debe escoger un Cajero.');
end;

end.
