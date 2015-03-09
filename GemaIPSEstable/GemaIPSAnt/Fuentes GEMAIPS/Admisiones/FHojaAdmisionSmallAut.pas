unit FHojaAdmisionSmallAut;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, DB, ADODB, QuickRpt, ExtCtrls, DBCtrls, StdCtrls,
  Buttons, frxClass, frxDBSet;

type
  TFrmHojaAdmisionSmallAut = class(TForm)
    ADOQuery5: TADOQuery;
    Panel1: TPanel;
    ADOTable1: TADOTable;
    DBLookupComboBox2: TDBLookupComboBox;
    ADOTable3: TADOTable;
    DataSource2: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    ADOTable2: TADOTable;
    DataSource1: TDataSource;
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
  FrmHojaAdmisionSmallAut: TFrmHojaAdmisionSmallAut;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TFrmHojaAdmisionSmallAut.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure TFrmHojaAdmisionSmallAut.SpeedButton1Click(Sender: TObject);
begin
   ADOQuery5.Parameters.ParamValues['NoSol']:=DBLookupComboBox2.KeyValue;
   ADOQuery5.Open;
   //QRLabel2.Caption   := DBLookupComboBox1.Text;
   //QuickRep1.PreviewInitialState := wsMaximized;
   frxReport1.ShowReport;
   Close;
end;

procedure TFrmHojaAdmisionSmallAut.FormActivate(Sender: TObject);
begin
  ADOTable1.Open;
  ADOTable1.First;
  ADOTable3.Open;
  ADOTable2.Open;
end;

end.
