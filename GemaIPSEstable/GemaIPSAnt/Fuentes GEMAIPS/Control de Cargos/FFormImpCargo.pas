unit FFormImpCargo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, QRCtrls, Buttons, ExtCtrls, StdCtrls,
  qrpBaseCtrls, QuickRpt;

type
  TFormImpCargo = class(TForm)
    QuickRep1: TQuickRep;
    ADOQuery1: TADOQuery;
    QRSubDetail2: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    ADOTable1: TADOTable;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBRichText1: TQRDBRichText;
    QRDBText15: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImpCargo: TFormImpCargo;

implementation

{$R *.dfm}

end.
