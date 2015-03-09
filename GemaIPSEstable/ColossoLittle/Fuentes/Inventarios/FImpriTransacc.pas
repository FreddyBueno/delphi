unit FImpriTransacc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, DBCtrls, ExtCtrls, frxClass, frxDBSet;

type
  TFormImpInventa = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Button1: TButton;
    DBLookupComboBox5: TDBLookupComboBox;
    Label6: TLabel;
    ADOTable1: TADOTable;
    DataSource4: TDataSource;
    ADOQuery2: TADOQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure DataSource4DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImpInventa: TFormImpInventa;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TFormImpInventa.Button1Click(Sender: TObject);
begin
  //Graba el LOG.
  Datamodule1.Graba_Logx(01/01/2001,'R','','Reimprime Transacción de Inventarios: '+DBLookUpComboBox5.KeyValue+'-'+DBLookUpComboBox1.KeyValue,'Inventarios','');

  if MessageDlg('Desea Imprimir la Transacción de Inventarios?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    ADOQuery1.Close;
    ADOQuery1.Parameters.ParamValues['ncomp']:= DBLookupComboBox1.KeyValue;
    ADOQuery1.Parameters.ParamValues['tipcomp']:= DBLookupComboBox5.KeyValue;
    ADOQuery1.Open;
    frxReport1.ShowReport;
    Close;
  end;
end;

procedure TFormImpInventa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Action :=  caFree;
end;

procedure TFormImpInventa.FormActivate(Sender: TObject);
begin
  adotable1.Open;
  adoquery1.Open;
end;

procedure TFormImpInventa.DataSource4DataChange(Sender: TObject; Field: TField);
begin
  ADOQuery1.Close;
  adoquery1.Parameters.ParamValues['doc'] := DBLookupComboBox5.KeyValue;
  ADOQuery1.Open;
end;

end.
