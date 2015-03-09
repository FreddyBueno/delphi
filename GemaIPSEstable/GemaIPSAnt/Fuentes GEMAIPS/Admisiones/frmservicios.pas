unit frmservicios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons,Libreria_Prateinco,
  Vcl.ComCtrls;

type
  TServicios = class(TForm)
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ADOTable2: TADOTable;
    DataSource3: TDataSource;
    ADOTable3: TADOTable;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label13: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label31: TLabel;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit13: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn6: TBitBtn;
    DBComboBox2: TDBComboBox;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    Label32: TLabel;
    DBEdit27: TDBEdit;
    Label12: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    BitBtn14: TBitBtn;
    Label33: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    BitBtn15: TBitBtn;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    DataSource4: TDataSource;
    ADOTable5: TADOTable;
    ADOTable6: TADOTable;
    DataSource5: TDataSource;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    ADOParamCargo: TADOTable;
    BitBtn19: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Exit(Sender: TObject);
    procedure BitBtn3Exit(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure DataSource3DataChange(Sender: TObject; Field: TField);
    procedure DataSource4DataChange(Sender: TObject; Field: TField);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
  private
     { Private declarations }
  public
    Solicitud   : string;
    Seccion     : Integer;
    { Public declarations }
  end;

var
  Servicios: TServicios;

implementation

uses frmGrupos,  UDataModule1, FAsignaGrupo,
  fKardex, FActivarInactivar, CapturaBasica2, FCrearConvenio, FProdxArea,
  FAsignaCapitulo, FrmAsignaHomo, CapturaBasica3, CapturaBasica,
  Libreria_PrateincoForm;

                                                     
{$R *.dfm}

procedure TServicios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action :=  caFree;
end;

procedure TServicios.FormCreate(Sender: TObject);
begin
  adoparamcargo.Open;
  if ADOParamCargo.FieldValues['Control_ProdxArea'] = 'N' then
    BitBtn9.Visible := False;
end;

procedure TServicios.FormActivate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  adotable1.open;
  adotable2.open;
  adotable3.open;
  adotable5.open;
  adotable6.open;
end;

procedure TServicios.BitBtn10Click(Sender: TObject);
begin
  FrmAsignaCapitulo := tFrmAsignaCapitulo.create(application);
  try
    Datamodule1.MuestraconAcceso(FrmAsignaCapitulo);
  except
    FrmAsignaCapitulo.free;
  end;
end;

procedure TServicios.BitBtn11Click(Sender: TObject);
begin
  frmAsignaHomologa := tfrmAsignaHomologa.create(application);
  try
    Datamodule1.MuestraconAcceso(frmAsignaHomologa);
  except
    frmAsignaHomologa.free;
  end;
end;

procedure TServicios.BitBtn12Click(Sender: TObject);
begin
  CapturaB3 := tCapturaB3.create(application);
  CapturaB3.Label11.Caption := 'Asignar Servicios a Tipos de Ingresos'; //Descripción
  CapturaB3.Label1.Caption  := 'SATiposAdmision';             //Tabla Principal
  CapturaB3.Label2.Caption  := 'A.Cd_Tipo_Admision';                            //Campo Llave Principal
  CapturaB3.Label3.Caption  := 'A.Descripcion';     //Desc Principal
  CapturaB3.Label4.Caption  := 'SAServicios';             //Tabla Secundaria
  CapturaB3.Label5.Caption  := 'B.Codigo';                            //Campo Llave Secundario
  CapturaB3.Label6.Caption  := 'B.Descripcion';     //Desc Secundario
  CapturaB3.Edit3.Text      := 'SAServiciosxtpadm';                      //Tabla Union
  CapturaB3.Edit8.Text      := 'tp_Admision';                       //Llave Union 1
  CapturaB3.Edit9.Text      := 'Codigo_Servicio';                       //Llave Union 2
  try
    Datamodule1.MuestraconAcceso(CapturaB3);
  except
    CapturaB3.free;
  end;
end;

procedure TServicios.BitBtn13Click(Sender: TObject);
begin
  FrmAI := tFrmAI.create(application);
  FrmAI.Edit4.Text:= 'Estado';
  FrmAI.CB1.Items.Add('A');
  FrmAI.CB2.Items.Add('I');
  FrmAI.Edit1.Text:= 'SAServicios';
  try
    Datamodule1.MuestraconAcceso(FrmAI);
  except
    FrmAI.free;
  end;
end;

procedure TServicios.BitBtn14Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'SATituloICups';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TServicios.BitBtn15Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'SATituloIICups';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TServicios.BitBtn16Click(Sender: TObject);
begin
  FormCreaConvenios := tFormCreaConvenios.create(application);
  try
    Datamodule1.MuestraconAcceso(FormCreaConvenios);
  except
    FormCreaConvenios.free;
  end;
end;

procedure TServicios.BitBtn17Click(Sender: TObject);
begin
  CapturaB3 := tCapturaB3.create(application);
  CapturaB3.Label11.Caption := 'Asignar IVAS a Servicios'; //Descripción
  CapturaB3.Label1.Caption  := 'SACapituloCups';          //Tabla Principal
  CapturaB3.Label2.Caption  := 'A.Cod_Capitulo';         //Campo Llave Principal
  CapturaB3.Label3.Caption  := 'A.Descripcion';     //Desc Principal
  CapturaB3.Label4.Caption  := 'INIVA';             //Tabla Secundaria
  CapturaB3.Label5.Caption  := 'B.Codigo_IVA';                            //Campo Llave Secundario
  CapturaB3.Label6.Caption  := 'B.Valor';     //Desc Secundario
  CapturaB3.Edit3.Text      := 'SACapituloCups';                      //Tabla Union
  CapturaB3.Edit8.Text      := 'Cod_Capitulo';                       //Llave Union 1
  CapturaB3.Edit9.Text      := 'Codigo_IVA';                       //Llave Union 2
  try
    Datamodule1.MuestraconAcceso(CapturaB3);
  except
    CapturaB3.free;
  end;
end;

procedure TServicios.BitBtn18Click(Sender: TObject);
begin
 CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'INIva';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TServicios.BitBtn19Click(Sender: TObject);
begin
  CapturaB3 := tCapturaB3.create(application);
  CapturaB3.Label11.Caption := 'Servicios por Tipo de Admision'; //Descripción
  CapturaB3.Label1.Caption  := 'SATiposAdmision';           //Tabla Principal
  CapturaB3.Label2.Caption  := 'A.CD_Tipo_Admision';     //Campo Llave Principal
  CapturaB3.Label3.Caption  := 'A.Descripcion';          //Desc Principal
  CapturaB3.Label4.Caption  := 'SAServicios';             //Tabla Secundaria
  CapturaB3.Label5.Caption  := 'B.Codigo';         //Campo Llave Secundario
  CapturaB3.Label6.Caption  := 'B.Descripcion';          //Desc Secundario
  CapturaB3.Edit3.Text      := 'SAServiciosxTpAdm';   //Tabla Union
  CapturaB3.Edit8.Text      := 'Tp_Admision';       //Llave Union 1
  CapturaB3.Edit9.Text      := 'Codigo_Servicio';           //Llave Union 2
  try
    Datamodule1.MuestraconAcceso(CapturaB3);
  except
    CapturaB3.free;
  end;
end;

procedure TServicios.BitBtn1Click(Sender: TObject);
Var Cadena:String;
begin
  ADOTable1.Filtered:=False;
  cadena:=InputBox('Buscar un Servicio por código.', 'Codigo Servicio:', '0');
  ADOTable1.Filter:= 'Codigo Like '+chr(39)+'%'+cadena+'%'+chr(39);
  ADOTable1.Filtered:=True;
end;

procedure TServicios.BitBtn2Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'SACapituloCups';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TServicios.BitBtn3Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'SAArticulosCups';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TServicios.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  //If (ADOTable1.State = dsEdit) or (ADOTable1.State = dsInsert) then
  //Begin
   // ADOTable1.FieldValues['Empresa'] := Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja'];
  //  ADOTable1.FieldValues['Area'] := Datamodule1.ADOQuery1.FieldValues['Area_Trabaja'];
  //end;
end;

procedure TServicios.BitBtn5Click(Sender: TObject);
begin
  ReporteadorP('Listado de Servicios','SELECT * FROM SAServicios','');
end;

procedure TServicios.BitBtn2Exit(Sender: TObject);
begin
  ADOTable2.Close;
  ADOTable2.Open;
end;

procedure TServicios.BitBtn3Exit(Sender: TObject);
begin
  ADOTable3.Close;
  ADOTable3.Open;
end;

procedure TServicios.DataSource2DataChange(Sender: TObject; Field: TField);
begin
  ADOTable3.Close;
  ADOTable3.Filtered := False;
  ADOTable3.Filter := 'Cod_Capitulo = ' + chr(39)+ ADOTable2.FieldValues['Cod_Capitulo'] + chr(39);
  ADOTable3.Filtered := True;
  ADOTable3.Open;
end;

procedure TServicios.DataSource3DataChange(Sender: TObject; Field: TField);
begin
  if ADOTable3.FieldValues['Cod_Articulo'] <> null then
  begin
    ADOTable5.Close;
    ADOTable5.Filtered := False;
    ADOTable5.Filter := 'Cod_Capitulo = ' + chr(39)+ ADOTable2.FieldValues['Cod_Capitulo'] + chr(39);
    ADOTable5.Filter := 'Cod_Articulo = ' + chr(39)+ ADOTable3.FieldValues['Cod_Articulo'] + chr(39);
    ADOTable5.Filtered := True;
    ADOTable5.Open;
  end;
end;

procedure TServicios.DataSource4DataChange(Sender: TObject; Field: TField);
begin
  if ADOTable3.FieldValues['Cod_Articulo'] <> null then
  begin
    ADOTable6.Close;
    ADOTable6.Filtered := False;
    ADOTable6.Filter := 'Cod_Capitulo = ' + chr(39)+ ADOTable2.FieldValues['Cod_Capitulo'] + chr(39);
     ADOTable6.Filter := 'Cod_Articulo = ' + chr(39)+ ADOTable3.FieldValues['Cod_Articulo'] + chr(39);
    ADOTable6.Filter := 'Cod_Titulo1 = ' + chr(39)+ ADOTable5.FieldValues['Cod_Titulo1'] + chr(39);
    ADOTable6.Filtered := True;
    ADOTable6.Open;
  end;
end;

procedure TServicios.BitBtn6Click(Sender: TObject);
begin
  FrmAI := tFrmAI.create(application);
  FrmAI.Edit4.Text:= 'Estado';
  FrmAI.CB1.Items.Add('A');
  FrmAI.CB2.Items.Add('I');
  FrmAI.Edit1.Text:= 'SAServicios';
  try
    Datamodule1.MuestraconAcceso(FrmAI);
  except
    FrmAI.free;
  end;
end;

procedure TServicios.BitBtn7Click(Sender: TObject);
Var Cadena:String;
begin
  ADOTable1.Filtered:=False;
  cadena:=InputBox('Buscar un producto por Nombre.', 'Codigo Nombre:', '0');
  ADOTable1.Filter:= 'Descripcion Like '+chr(39)+'%'+cadena+'%'+chr(39);
  ADOTable1.Filtered:=True;
end;

procedure TServicios.BitBtn8Click(Sender: TObject);
Var Cadena:String;
begin
  ADOTable1.Filtered:=False;
  cadena:=InputBox('Buscar un producto por Tabla.', 'Codigo Tabla:', '0');
  ADOTable1.Filter:= 'Tabla Like '+chr(39)+'%'+cadena+'%'+chr(39);
  ADOTable1.Filtered:=True;
end;

procedure TServicios.BitBtn9Click(Sender: TObject);
begin
  FrmProdxArea := tFrmProdxArea.create(application);
  try
    FrmProdxArea.ComboBox1.Text:='S';
    FrmProdxArea.ComboBox1.Enabled:=False;
    Datamodule1.MuestraconAcceso(FrmProdxArea);
  except
    FrmProdxArea.free;
  end;
end;

end.
