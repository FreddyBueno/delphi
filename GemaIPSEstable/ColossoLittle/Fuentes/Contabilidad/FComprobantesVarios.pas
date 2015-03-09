unit FComprobantesVarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, ADODB;

type
  TComprobantesVarios = class(TForm)
    ADOQuery1: TADOQuery;
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRShape5: TQRShape;
    QRLabel25: TQRLabel;
    QRShape27: TQRShape;
    QRDBText3: TQRDBText;
    QRShape21: TQRShape;
    QRDBText4: TQRDBText;
    QRShape22: TQRShape;
    QRShape28: TQRShape;
    QRShape23: TQRShape;
    QRLabel24: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText11: TQRDBText;
    QRShape6: TQRShape;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape26: TQRShape;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape24: TQRShape;
    QRShape9: TQRShape;
    QRLabel15: TQRLabel;
    QRShape10: TQRShape;
    QRLabel16: TQRLabel;
    QRShape11: TQRShape;
    QRLabel17: TQRLabel;
    QRShape12: TQRShape;
    QRLabel18: TQRLabel;
    QRShape13: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText18: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    ADOQuery2: TADOQuery;
    QRLabel1: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel29: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBImage2: TQRDBImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ComprobantesVarios: TComprobantesVarios;

implementation

{$R *.dfm}

end.
