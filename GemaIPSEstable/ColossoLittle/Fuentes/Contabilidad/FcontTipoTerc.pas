unit FcontTipoTerc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, ComCtrls,
  Grids, DBGrids;

type
  TFormTipoTerc = class(TForm)
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    DataSource8: TDataSource;
    ADOTable8: TADOTable;
    DataSource2: TDataSource;
    ADOTable2: TADOTable;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    BitBtn1: TBitBtn;
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    BitBtn2: TBitBtn;
    DBComboBox1: TDBComboBox;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn7: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
    procedure DataSource8DataChange(Sender: TObject; Field: TField);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTipoTerc: TFormTipoTerc;

implementation

uses UDataModule1, FConceptosxTipo, FActivarInactivar,
  CapturaBasica3, Libreria_PrateincoForm;

{$R *.dfm}

procedure TFormTipoTerc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Action :=  caFree;
end;

procedure TFormTipoTerc.FormActivate(Sender: TObject);
begin
  adotable1.open;
  adotable2.open;
  adotable8.open;
end;

procedure TFormTipoTerc.BitBtn1Click(Sender: TObject);
begin
  ReporteadorP('Listado de Tipos de Terceros','SELECT * FROM CONTTITERC','');
end;

procedure TFormTipoTerc.DataSource2DataChange(Sender: TObject;
  Field: TField);
begin
    DBLookupComboBox1.KeyValue:= ADOTable2.FieldValues['Cuenta'];
end;

procedure TFormTipoTerc.DataSource8DataChange(Sender: TObject;
  Field: TField);
begin
  DBLookupComboBox3.KeyValue:= ADOTable8.FieldValues['Cuenta'];
end;

procedure TFormTipoTerc.BitBtn2Click(Sender: TObject);
begin
  FConcexTipo := tFConcexTipo.create(application);
  try
    FConcexTipo.DBLookupComboBox1.KeyValue := ADOTable1.FieldValues['Tipo_Tercero'];
    FConcexTipo.DBLookupComboBox2.KeyValue := ADOTable1.FieldValues['Tipo_Tercero'];
    Datamodule1.MuestraconAcceso(FConcexTipo);
  except
    FConcexTipo.free;
  end;
end;

procedure TFormTipoTerc.BitBtn6Click(Sender: TObject);
begin
  FrmAI := tFrmAI.create(application);
  FrmAI.Edit4.Text:= 'Estado';
  FrmAI.CB1.Items.Add('A');
  FrmAI.CB2.Items.Add('I');
  FrmAI.Edit1.Text:= 'CONTTiTerc';
  try
    Datamodule1.MuestraconAcceso(FrmAI);
  except
    FrmAI.free;
  end;
end;

procedure TFormTipoTerc.BitBtn4Click(Sender: TObject);
begin
  CapturaB3 := tCapturaB3.create(application);
  CapturaB3.Label11.Caption := 'Tipos de Comprobante para un Tipo de Tercero Especifico'; //Descripción
  CapturaB3.Label1.Caption  := 'CONTTiTerc';           //Tabla Principal
  CapturaB3.Label2.Caption  := 'A.Tipo_Tercero';     //Campo Llave Principal
  CapturaB3.Label3.Caption  := 'A.Descripcion';          //Desc Principal
  CapturaB3.Label4.Caption  := 'CONTTipoComp';             //Tabla Secundaria
  CapturaB3.Label5.Caption  := 'B.Tipo_Comprobante';         //Campo Llave Secundario
  CapturaB3.Label6.Caption  := 'B.Descripcion';          //Desc Secundario
  CapturaB3.Edit3.Text      := 'CONTTipCompxTipTerce';   //Tabla Union
  CapturaB3.Edit8.Text      := 'Tipo_Tercero';       //Llave Union 1
  CapturaB3.Edit9.Text      := 'Tipo_Comprobante';           //Llave Union 2
  try
    Datamodule1.MuestraconAcceso(CapturaB3);
  except
    CapturaB3.free;
  end;
end;

procedure TFormTipoTerc.BitBtn7Click(Sender: TObject);
begin
  CapturaB3 := tCapturaB3.create(application);
  CapturaB3.Label11.Caption := 'Terceros para un Tipos de Tercero Especifico'; //Descripción
  CapturaB3.Label1.Caption  := 'CONTTiTerc';           //Tabla Principal
  CapturaB3.Label2.Caption  := 'A.Tipo_Tercero';     //Campo Llave Principal
  CapturaB3.Label3.Caption  := 'A.Descripcion';     //Desc Principal
  CapturaB3.Label4.Caption  := 'CONTTerce';             //Tabla Secundaria
  CapturaB3.Label5.Caption  := 'B.Numero_Documento';         //Campo Llave Secundario
  CapturaB3.Label6.Caption  := 'B.Primer_Apellido+'+chr(39)+' '+chr(39)+'+B.Primer_Nombre';          //Desc Secundario
  CapturaB3.Edit3.Text      := 'CONTTipTercexTerce';   //Tabla Union
  CapturaB3.Edit8.Text      := 'Tipo_Tercero';       //Llave Union 1
  CapturaB3.Edit9.Text      := 'Tercero';           //Llave Union 2
  try
    Datamodule1.MuestraconAcceso(CapturaB3);
  except
    CapturaB3.free;
  end;
end;

end.
