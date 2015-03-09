unit FrmAutorizaArea;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, DBCtrls, Buttons, StdCtrls, ExtCtrls;

type
  TFrmAutorizCargo = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DBLookupListBox1: TDBLookupListBox;
    DBLookupListBox2: TDBLookupListBox;
    ADOQuery1: TADOQuery;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    ADOQuery2: TADOQuery;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAutorizCargo: TFrmAutorizCargo;

implementation

{$R *.dfm}

uses UDataModule1;

procedure TFrmAutorizCargo.FormActivate(Sender: TObject);
begin
  ADOQuery1.Open;
  ADOQuery2.Open;
  ADOQuery1.Filter := 'Empresa = ' + Datamodule1.ADOQuery1.FieldValues['empresa_trabaja'];
  ADOQuery1.Filtered := True;
  ADOQuery2.Filter := 'Empresa = ' + Datamodule1.ADOQuery1.FieldValues['empresa_trabaja'];
  ADOQuery2.Filtered := True;
end;

procedure TFrmAutorizCargo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFrmAutorizCargo.SpeedButton1Click(Sender: TObject);
begin
  ADOQuery1.Edit;
  ADOQuery1.FieldValues['Area_Cargo']:='S';
  ADOQuery1.Post;
  ADOQuery1.Close;
  ADOQuery1.Open;
  ADOQuery2.Close;
  ADOQuery2.Open;
end;

procedure TFrmAutorizCargo.SpeedButton2Click(Sender: TObject);
begin
  ADOQuery1.First;
  While NOT ADOQuery1.Eof DO
  Begin
     ADOQuery1.Edit;
     ADOQuery1.FieldValues['Area_Cargo']:='S';
     ADOQuery1.Post;

    ADOQuery1.Next;
  End;
  ADOQuery1.Close;
  ADOQuery1.Open;
  ADOQuery2.Close;
  ADOQuery2.Open;
end;

procedure TFrmAutorizCargo.SpeedButton3Click(Sender: TObject);
begin
  ADOQuery2.First;
  While NOT ADOQuery2.Eof DO
  Begin
     ADOQuery2.Edit;
     ADOQuery2.FieldValues['Area_Cargo']:='';
     ADOQuery2.Post;

    ADOQuery2.Next;
  End;
  ADOQuery1.Close;
  ADOQuery1.Open;
  ADOQuery2.Close;
  ADOQuery2.Open;
end;

procedure TFrmAutorizCargo.SpeedButton4Click(Sender: TObject);
begin
  ADOQuery2.Edit;
  ADOQuery2.FieldValues['Area_Cargo']:='';
  ADOQuery2.Post;
  ADOQuery1.Close;
  ADOQuery1.Open;
  ADOQuery2.Close;
  ADOQuery2.Open;
end;

end.
