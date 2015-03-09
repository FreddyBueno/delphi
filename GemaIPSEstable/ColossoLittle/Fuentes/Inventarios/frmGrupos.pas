unit frmGrupos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, ComCtrls;

type
  TGrupos = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSource2: TDataSource;
    ADOTable2: TADOTable;
    BitBtn3: TBitBtn;
    DataSource4: TDataSource;
    ADOTable4: TADOTable;
    DataSource5: TDataSource;
    ADOTable5: TADOTable;
    ADOTable6: TADOTable;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label5: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DataSource6: TDataSource;
    DataSource3: TDataSource;
    ADOTable3: TADOTable;
    DataSource7: TDataSource;
    ADOTable7: TADOTable;
    TabSheet3: TTabSheet;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    DBLookupComboBox8: TDBLookupComboBox;
    DBLookupComboBox9: TDBLookupComboBox;
    DataSource8: TDataSource;
    ADOTable8: TADOTable;
    DataSource9: TDataSource;
    ADOTable9: TADOTable;
    BitBtn2: TBitBtn;
    DBEdit4: TDBEdit;
    DBEdit3: TDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Grupos: TGrupos;

implementation

uses UDataModule1, CapturaBasica2, Libreria_PrateincoForm;
{$R *.dfm}

procedure TGrupos.FormActivate(Sender: TObject);
begin
  adotable1.open;
  adotable2.open;
  adotable3.open;
  adotable4.open;
  adotable5.open;
  adotable6.open;
  adotable7.open;
  adotable8.open;
  adotable9.open;
end;

procedure TGrupos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action :=  caFree;
end;

procedure TGrupos.BitBtn1Click(Sender: TObject);
begin
  ReporteadorP('Listado de Grupos','SELECT * FROM INGrupo','');
end;

procedure TGrupos.BitBtn3Click(Sender: TObject);
begin
 CapturaB2 := tCapturaB2.create(application);
  CapturaB2.Edit1.Text:= 'INIva';
  try
    Datamodule1.MuestraconAcceso(CapturaB2);
  except
    CapturaB2.free;
  end;
end;

end.
