unit frmproductos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons,Libreria_Prateinco,
  Vcl.ComCtrls;

type
  TProductos = class(TForm)
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ADOTable2: TADOTable;
    DataSource3: TDataSource;
    ADOTable3: TADOTable;
    ADOTable4: TADOTable;
    QryApoyo: TADOQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label12: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label26: TLabel;
    Label31: TLabel;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Edit1: TEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    BitBtn5: TBitBtn;
    BitBtn1: TBitBtn;
    DBComboBox1: TDBComboBox;
    DBComboBox3: TDBComboBox;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    DBEdit26: TDBEdit;
    DBComboBox2: TDBComboBox;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    ADOParamCargo: TADOTable;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure ADOTable1AfterPost(DataSet: TDataSet);
    procedure DBEdit1Exit(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Exit(Sender: TObject);
    procedure BitBtn3Exit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
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
    procedure FormCreate(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
     { Private declarations }
  public
    Solicitud   : string;
    Seccion     : Integer;
    { Public declarations }
  end;

var
  Productos: TProductos;

implementation

uses frmGrupos,  UDataModule1, FAsignaGrupo, CapturaBasica,
  fKardex, FActivarInactivar, CapturaBasica2, FCrearConvenio, FProdxArea,
  Libreria_PrateincoForm;

                                                     
{$R *.dfm}

procedure TProductos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action :=  caFree;
end;

procedure TProductos.FormCreate(Sender: TObject);
begin
  adoparamcargo.Open;
  if ADOParamCargo.FieldValues['Control_ProdxArea'] = 'N' then
    BitBtn9.Visible := False;
end;

procedure TProductos.FormActivate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  adotable1.open;
  adotable2.open;
  adotable3.open;
  Edit1.Text:= Datamodule1.ADOQuery1.FieldValues['Descripcion_Emp'] + ' - '+Datamodule1.ADOQuery1.FieldValues['Descripcion_Area'];
  //ADOTable1.Filter:='Empresa = '+chr(39)+Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja']+chr(39)+' AND Area = '+chr(39)+Datamodule1.ADOQuery1.FieldValues['Area_Trabaja']+chr(39);
  //ADOTable1.Filtered:=True;
end;

procedure TProductos.BitBtn10Click(Sender: TObject);
begin
  Grupos := tGrupos.create(application);
  try
    Datamodule1.MuestraconAcceso(Grupos);
  except
    Grupos.free;
  end;
end;

procedure TProductos.BitBtn11Click(Sender: TObject);
begin
 CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'INIva';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TProductos.BitBtn12Click(Sender: TObject);
begin
  FormCreaConvenios := tFormCreaConvenios.create(application);
  try
    Datamodule1.MuestraconAcceso(FormCreaConvenios);
  except
    FormCreaConvenios.free;
  end;
end;

procedure TProductos.BitBtn13Click(Sender: TObject);
begin
  FrmAI := tFrmAI.create(application);
  FrmAI.Edit4.Text:= 'Estado';
  FrmAI.CB1.Items.Add('A');
  FrmAI.CB2.Items.Add('I');
  FrmAI.Edit1.Text:= 'INProductos';
  try
    Datamodule1.MuestraconAcceso(FrmAI);
  except
    FrmAI.free;
  end;
end;

procedure TProductos.BitBtn14Click(Sender: TObject);
begin
  frmAsignaGrupo := tfrmAsignaGrupo.create(application);
  try
    Datamodule1.MuestraconAcceso(frmAsignaGrupo);
  except
    frmAsignaGrupo.free;
  end;
end;

procedure TProductos.BitBtn1Click(Sender: TObject);
Var Cadena:String;
begin
  ADOTable1.Filtered:=False;
  cadena:=InputBox('Buscar un producto por código.', 'Codigo Producto:', '0');
  ADOTable1.Filter:= 'CD_Producto Like '+chr(39)+'%'+cadena+'%'+chr(39);
  ADOTable1.Filtered:=True;
end;

procedure TProductos.BitBtn2Click(Sender: TObject);
begin
  Grupos := tGrupos.create(application);
  try
    Grupos.show;
  except
    Grupos.free;
  end;
end;

procedure TProductos.BitBtn3Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'INSubgrupo';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TProductos.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  //If (ADOTable1.State = dsEdit) or (ADOTable1.State = dsInsert) then
  //Begin
   // ADOTable1.FieldValues['Empresa'] := Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja'];
  //  ADOTable1.FieldValues['Area'] := Datamodule1.ADOQuery1.FieldValues['Area_Trabaja'];
  //end;
end;

procedure TProductos.ADOTable1AfterPost(DataSet: TDataSet);
begin
  //Graba el LOG.
  Datamodule1.Graba_Logx(01/01/2001,'G','','Producto: '+DBEdit1.text,'INProductos','');

  if Solicitud <> '' then
    begin
      try
        DataModule1.ADOConnection1.BeginTrans;

        QryApoyo.Close;
        QryApoyo.SQL.Clear;
        QryApoyo.SQL.Add('UPDATE CRDetSolicitudes SET TP_PST = ''P'',');
        QryApoyo.SQL.Add('     CD_PST = '''+DBEdit1.text+'''');
        QryApoyo.SQL.Add(' WHERE NO_SOLICITUD = '''+Solicitud+'''');
        QryApoyo.SQL.Add(' AND  SEC_SOLICITUD = '''+IntToStr(Seccion)+'''');
        QryApoyo.ExecSQL;

        DataModule1.ADOConnection1.CommitTrans;
      except
        DataModule1.ADOConnection1.RollbackTrans;
        Application.MessageBox('Error comuniquese con Help Desk','Error',MB_OK+MB_ICONERROR);
      end;
    end;
end;

procedure TProductos.DBEdit1Exit(Sender: TObject);
var porcentaje:integer;
begin
  Memo1.Lines.Clear;

  ADOTable4.Open;
  ADOTable4.First;
  While NOT ADOTable4.Eof DO
  Begin
    if ADOTable4.FieldValues['CD_Producto'] <> ADOTable1.FieldValues['CD_Producto'] then
    begin
      //Busca por nombre
      porcentaje := parecido(DBEdit2.Text,ADOTable4.FieldValues['Descripcion']);
      if (porcentaje > 60) then memo1.Lines.Add(ADOTable4.FieldValues['CD_Producto']+' '+ADOTable4.FieldValues['Descripcion']+' '+inttostr(porcentaje)+'%');
    end;

    ADOTable4.Next;
  End;
  ADOTable4.Close;
  //  ADOTable1.Locate('CD_Producto', VarArrayOf([DBEdit1.Text]), [loPartialKey]);
end;

procedure TProductos.BitBtn5Click(Sender: TObject);
begin
  ReporteadorP('Listado de Productos','SELECT * FROM INProductos','')
end;

procedure TProductos.BitBtn2Exit(Sender: TObject);
begin
  ADOTable2.Close;
  ADOTable2.Open;
end;

procedure TProductos.BitBtn3Exit(Sender: TObject);
begin
  ADOTable3.Close;
  ADOTable3.Open;
end;

procedure TProductos.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  {if ADOTable1.State = dsInsert then
  Begin
    ADOTable1.Edit;
    ADOTable1.FieldValues['Estado'] := 'A';
    ADOTable1.Post;
  End;}
end;

procedure TProductos.DataSource2DataChange(Sender: TObject; Field: TField);
begin
  ADOTable3.Close;
  ADOTable3.Filtered := False;
  ADOTable3.Filter := 'Codigo_Grupo = ' + chr(39)+ ADOTable2.FieldValues['Codigo_Grupo'] + chr(39);
  ADOTable3.Filtered := True;
  ADOTable3.Open;
end;

procedure TProductos.BitBtn4Click(Sender: TObject);
begin
  If DBEdit1.Text <> '' Then Begin
    Kardex := tKardex.create(application);
    try
      Kardex.DBLookupComboBox1.KeyValue:=Datamodule1.ADOQuery1.FieldValues['Almacen_Cargo'];
      Kardex.DBLookupComboBox2.KeyValue:=DBEdit1.Text;
      Kardex.Button1.Click;
      Datamodule1.MuestraconAcceso(Kardex);
    except
      Kardex.free;
    end;
  end
  else Showmessage('Escoga primero un producto.');
end;

procedure TProductos.BitBtn6Click(Sender: TObject);
begin
  FrmAI := tFrmAI.create(application);
  FrmAI.Edit4.Text:= 'Estado';
  FrmAI.CB1.Items.Add('A');
  FrmAI.CB2.Items.Add('I');
  FrmAI.Edit1.Text:= 'INProductos';
  try
    Datamodule1.MuestraconAcceso(FrmAI);
  except
    FrmAI.free;
  end;
end;

procedure TProductos.BitBtn7Click(Sender: TObject);
Var Cadena:String;
begin
  ADOTable1.Filtered:=False;
  cadena:=InputBox('Buscar un producto por Nombre.', 'Codigo Nombre:', '0');
  ADOTable1.Filter:= 'Descripcion Like '+chr(39)+'%'+cadena+'%'+chr(39);
  ADOTable1.Filtered:=True;
end;

procedure TProductos.BitBtn8Click(Sender: TObject);
Var Cadena:String;
begin
  ADOTable1.Filtered:=False;
  cadena:=InputBox('Buscar un producto por Barras.', 'Codigo Barras:', '0');
  ADOTable1.Filter:= 'CD_ProductoBarra Like '+chr(39)+'%'+cadena+'%'+chr(39);
  ADOTable1.Filtered:=True;
end;

procedure TProductos.BitBtn9Click(Sender: TObject);
begin
  FrmProdxArea := tFrmProdxArea.create(application);
  try
    FrmProdxArea.ComboBox1.Text:='P';
    FrmProdxArea.ComboBox1.Enabled:=False;
    Datamodule1.MuestraconAcceso(FrmProdxArea);
  except
    FrmProdxArea.free;
  end;
end;

end.
