unit FHojaAdmisionSmall;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, DB, ADODB, QuickRpt, ExtCtrls, DBCtrls, StdCtrls,
  Buttons, frxClass, frxDBSet;

type
  TFrmHojaAdmisionSmall = class(TForm)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmHojaAdmisionSmall: TFrmHojaAdmisionSmall;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TFrmHojaAdmisionSmall.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure TFrmHojaAdmisionSmall.SpeedButton1Click(Sender: TObject);
begin
   ADOQuery1.Parameters.ParamValues['NoSol']:=DBLookupComboBox2.KeyValue;
   ADOQuery1.Open;
   //QuickRep1.PreviewInitialState := wsMaximized;
   frxReport1.ShowReport;
   Close;
end;

procedure TFrmHojaAdmisionSmall.FormActivate(Sender: TObject);
begin
  ADOTable1.Open;
  ADOTable1.First;
  ADOTable3.Open;
end;

end.
