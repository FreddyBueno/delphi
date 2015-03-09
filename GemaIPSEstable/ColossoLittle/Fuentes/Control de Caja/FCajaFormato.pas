unit FCajaFormato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, ADODB, DB;

type
  TCajaFormato = class(TForm)
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    QuickRep1: TQuickRep;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRBand4: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRLabel8: TQRLabel;
    QRShape8: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape18: TQRShape;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText4: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape3: TQRShape;
    QRExpr1: TQRExpr;
    ADOQuery2: TADOQuery;
    QRLabel5: TQRLabel;
    QRExpr2: TQRExpr;
    ADOQuery3: TADOQuery;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRExpr7: TQRExpr;
    QRDBText6: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBImage1: TQRDBImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CajaFormato: TCajaFormato;

implementation

{$R *.dfm}

procedure TCajaFormato.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=  caFree;
end;

end.
