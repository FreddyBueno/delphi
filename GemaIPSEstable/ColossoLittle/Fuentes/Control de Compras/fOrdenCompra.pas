unit fOrdenCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, QRCtrls, QuickRpt, Buttons, ExtCtrls, StdCtrls;

type
  TOrdenCompra = class(TForm)
    ADOQuery1: TADOQuery;
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand1: TQRBand;
    QRShape5: TQRShape;
    QRShape4: TQRShape;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRBand2: TQRBand;
    QRShape8: TQRShape;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel6: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel7: TQRLabel;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape19: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape20: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRShape27: TQRShape;
    QRLabel19: TQRLabel;
    QRShape28: TQRShape;
    QRShape31: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    ADOQuery2: TADOQuery;
    QRShape33: TQRShape;
    QRSysData1: TQRSysData;
    QRLabel23: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRLabel24: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText10: TQRDBText;
    QRShape6: TQRShape;
    QRDBImage1: TQRDBImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrdenCompra: TOrdenCompra;

implementation

{$R *.dfm}

end.
