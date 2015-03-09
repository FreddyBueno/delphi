unit Fcontabilidad8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons;

type
  TFormCentrosCosto = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    BitBtn6: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCentrosCosto: TFormCentrosCosto;

implementation

uses UDataModule1, FActivarInactivar, Libreria_PrateincoForm;

{$R *.dfm}

procedure TFormCentrosCosto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action :=  caFree;
end;

procedure TFormCentrosCosto.FormActivate(Sender: TObject);
begin
  adotable1.open;
end;

procedure TFormCentrosCosto.BitBtn1Click(Sender: TObject);
begin
  ReporteadorP('Listado de Centros de Costo','SELECT * FROM CONTCentros','');
end;

procedure TFormCentrosCosto.BitBtn6Click(Sender: TObject);
begin
  FrmAI := tFrmAI.create(application);
  FrmAI.Edit4.Text:= 'Estado';
  FrmAI.CB1.Items.Add('A');
  FrmAI.CB2.Items.Add('I');
  FrmAI.Edit1.Text:= 'CONTCentros';
  try
    Datamodule1.MuestraconAcceso(FrmAI);
  except
    FrmAI.free;
  end;
end;

end.
