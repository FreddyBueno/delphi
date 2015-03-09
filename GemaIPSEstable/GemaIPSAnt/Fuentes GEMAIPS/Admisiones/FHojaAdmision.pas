unit FHojaAdmision;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, DB, ADODB, QuickRpt, ExtCtrls, DBCtrls, StdCtrls,
  Buttons, frxClass, frxDBSet;

type
  TFrmHojaAdmision = class(TForm)
    ADOQuery1: TADOQuery;
    Panel1: TPanel;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSource1: TDataSource;
    SpeedButton1: TSpeedButton;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
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
  FrmHojaAdmision: TFrmHojaAdmision;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TFrmHojaAdmision.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure TFrmHojaAdmision.SpeedButton1Click(Sender: TObject);
begin
   ADOQuery1.Parameters.ParamValues['NoAdmi']:=DBLookupComboBox1.KeyValue;
   ADOQuery1.Open;
   //QuickRep1.PreviewInitialState := wsMaximized;
   frxReport1.ShowReport;
   Close;
end;

procedure TFrmHojaAdmision.FormActivate(Sender: TObject);
begin
  ADOTable1.Open;
  ADOTable1.First;
  ADOTable2.Open;
end;

end.
