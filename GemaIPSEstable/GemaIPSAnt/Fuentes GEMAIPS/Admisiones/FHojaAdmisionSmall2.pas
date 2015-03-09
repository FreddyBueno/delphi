unit FHojaAdmisionSmall2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, DB, ADODB, QuickRpt, ExtCtrls, DBCtrls, StdCtrls,
  Buttons, frxClass, frxDBSet;

type
  TFrmHojaAdmisionSmall2 = class(TForm)
    ADOQuery1: TADOQuery;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    ADOTable1: TADOTable;
    DBLookupComboBox2: TDBLookupComboBox;
    ADOTable3: TADOTable;
    DataSource2: TDataSource;
    Label1: TLabel;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PageHeaderBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure PageFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmHojaAdmisionSmall2: TFrmHojaAdmisionSmall2;

implementation

uses UDataModule1,Libreria_Prateinco;

{$R *.dfm}

procedure TFrmHojaAdmisionSmall2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure TFrmHojaAdmisionSmall2.PageFooterBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  {//QRLabel32.Caption := ntsfbg(stf(QRLabel32.Caption) - stf(QRLabel32.Caption));
  QRLabel31.Caption := ntsfbg(stf(QRLabel32.Caption) / 1.16);
  QRLabel27.Caption := ntsfbg((stf(QRLabel32.Caption) - stf(QRLabel31.Caption)));
  QRLabel25.Caption := ntsfbg(stf(QRLabel27.Caption) * 0.16);
  QRLabel23.Caption := ntsfbg(stf(QRLabel27.Caption) + stf(QRLabel25.Caption));}
end;

procedure TFrmHojaAdmisionSmall2.PageHeaderBand1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  //QRLabel23.Caption := '0';
  //QRLabel32.Caption := '0';
end;

procedure TFrmHojaAdmisionSmall2.SpeedButton1Click(Sender: TObject);
begin
   ADOQuery1.Parameters.ParamValues['NoSol']:=DBLookupComboBox2.KeyValue;
   ADOQuery1.Open;
   //QuickRep1.PreviewInitialState := wsMaximized;
   frxReport1.ShowReport;
   Close;
end;

procedure TFrmHojaAdmisionSmall2.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  {if ADOQuery1.FieldValues['Valor_Liquidado'] <> null then
    QRLabel23.Caption := ntsfbg(stf(QRLabel23.Caption) + stf(ADOQuery1.FieldValues['Valor_Liquidado']));}
  if ADOQuery1.FieldValues['Precio'] <> null then
    //QRLabel32.Caption := ntsfbg(stf(QRLabel32.Caption) + (stf(ADOQuery1.FieldValues['VRTotal'])));
end;

procedure TFrmHojaAdmisionSmall2.FormActivate(Sender: TObject);
begin
  ADOTable1.Open;
  ADOTable1.First;
  ADOTable3.Open;
end;

end.
