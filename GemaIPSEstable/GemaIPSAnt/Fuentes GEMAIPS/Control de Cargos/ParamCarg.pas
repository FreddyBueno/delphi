unit ParamCarg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ComCtrls, ExtCtrls, Buttons, DB, ADODB, Mask;

type
  TParametrosCargo = class(TForm)
    Panel1: TPanel;
    DataSource2: TDataSource;
    ADOTable2: TADOTable;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DataSource3: TDataSource;
    ADOQuery1: TADOQuery;
    DataSource4: TDataSource;
    ADOTable3: TADOTable;
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    Label18: TLabel;
    BitBtn2: TBitBtn;
    DBLookupComboBox5: TDBLookupComboBox;
    TabSheet2: TTabSheet;
    Label14: TLabel;
    Label12: TLabel;
    DBComboBox2: TDBComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    TabSheet4: TTabSheet;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBCheckBox1: TDBCheckBox;
    Label7: TLabel;
    DBComboBox1: TDBComboBox;
    Label8: TLabel;
    DBComboBox3: TDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ParametrosCargo: TParametrosCargo;

implementation

uses UDataModule1, frmGrupos;

{$R *.dfm}

procedure TParametrosCargo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Adotable1.Post;
  Action :=  caFree;
end;

procedure TParametrosCargo.FormActivate(Sender: TObject);
begin
  Adotable1.Open;
  Adotable2.Open;
  Adotable3.Open;
  AdoQuery1.Open;
  Adotable1.Edit;
end;

procedure TParametrosCargo.BitBtn2Click(Sender: TObject);
begin
  grupos := tgrupos.create(application);
  try
    Datamodule1.MuestraconAcceso(grupos);
  except
    grupos.free;
  end;
end;

end.
