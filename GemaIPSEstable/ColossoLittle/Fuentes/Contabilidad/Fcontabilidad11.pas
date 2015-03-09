unit Fcontabilidad11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, Grids,
  DBGrids, ComCtrls;

type
  TFormPlanCta = class(TForm)
    Panel1: TPanel;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ADOQuery1: TADOQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DataSource3: TDataSource;
    ADOQuery2: TADOQuery;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    DBNavigator1: TDBNavigator;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    DBRadioGroup4: TDBRadioGroup;
    DBText1: TDBText;
    BitBtn6: TBitBtn;
    Label6: TLabel;
    ProgressBar1: TProgressBar;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPlanCta: TFormPlanCta;

implementation

uses UDataModule1, FActivarInactivar, Libreria_PrateincoForm;

{$R *.dfm}

procedure TFormPlanCta.FormActivate(Sender: TObject);
begin
  adotable1.open
end;

procedure TFormPlanCta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure TFormPlanCta.BitBtn1Click(Sender: TObject);
begin
  ReporteadorP('Listado de Cuentas Contables','SELECT * FROM CONTCuenta','');
end;

procedure TFormPlanCta.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  if LENGTH(DBEdit1.Text) > 0 then
  Begin
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM CONTCuenta ');
    ADOQuery1.SQL.Add(' WHERE cuenta like '+chr(39)+trim(DBEdit1.Text)+'%'+chr(39));
    ADOQuery1.Open;

    ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('SELECT * FROM CONTCuenta ');
    ADOQuery2.SQL.Add(' WHERE LEFT('+chr(39)+trim(DBEdit1.Text)+chr(39)+',LEN('+chr(39)+trim(DBEdit1.Text)+chr(39)+')-1) LIKE RTRIM(LTRIM(cuenta))+'+chr(39)+'%'+chr(39));
    ADOQuery2.Open;

    If DataModule1.ctadet(trim(DBEdit1.Text)) then
    Begin
      Label6.Caption:='Cuenta de Detalle';
      DBRadioGroup1.Enabled:=True;
      DBRadioGroup2.Enabled:=True;
      DBRadioGroup3.Enabled:=True;
      DBRadioGroup4.Enabled:=True;
    End
    Else Begin
      Label6.Caption:='';
      DBRadioGroup1.Enabled:=False;
      DBRadioGroup2.Enabled:=False;
      DBRadioGroup3.Enabled:=False;
      DBRadioGroup4.Enabled:=False;
    End;
  end;
end;

procedure TFormPlanCta.BitBtn2Click(Sender: TObject);
Var cadena:string;
begin
  cadena:=InputBox('Buscar una cuenta por codigo.', 'Cuenta:', '1');
  DBNavigator1.Datasource.DataSet.Locate('Cuenta',cadena, [loCaseInsensitive]);
end;

procedure TFormPlanCta.BitBtn6Click(Sender: TObject);
begin
  FrmAI := tFrmAI.create(application);
  FrmAI.Edit4.Text:= 'Estado';
  FrmAI.CB1.Items.Add('A');
  FrmAI.CB2.Items.Add('I');
  FrmAI.Edit1.Text:= 'CONTCuenta';
  try
    Datamodule1.MuestraconAcceso(FrmAI);
  except
    FrmAI.free;
  end;
end;

end.
