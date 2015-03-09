unit Crear3;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, ADODB, Mask, ExtCtrls, ComCtrls, ExtDlgs, Grids,
  DBGrids, Buttons, Menus, ToolWin, Variants,jpeg,Libreria_Prateinco;

type
  TFCreaEmpresa = class(TForm)
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBNavigator: TDBNavigator;
    OpenPictureDialog1: TOpenPictureDialog;
    DBNavigator1: TDBNavigator;
    ADOQuery1: TADOQuery;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    DataSource3: TDataSource;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    Label12: TLabel;
    DBEdit6: TDBEdit;
    Label13: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label14: TLabel;
    ADOQuery3: TADOQuery;
    DataSource4: TDataSource;
    ADOQuery4: TADOQuery;
    DataSource5: TDataSource;
    ADOQuery5: TADOQuery;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DataSource6: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    ADOQuery6: TADOQuery;
    Panel1: TPanel;
    Label1: TLabel;
    EditId: TDBEdit;
    Label2: TLabel;
    EditPrimer_Apellido: TDBEdit;
    EditSegundo_Apellido: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    EditNombres: TDBEdit;
    Label6: TLabel;
    EditLugar_Nacimiento: TDBEdit;
    EditFecha_Nacimiento: TDBEdit;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    SpeedButton1: TSpeedButton;
    Label9: TLabel;
    EditClave: TDBEdit;
    Panel2: TPanel;
    OpenPictureDialog2: TOpenPictureDialog;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit2: TDBEdit;
    ADOTable2: TADOTable;
    DataSource7: TDataSource;
    ADOTable2TIP_SEXO: TStringField;
    ADOTable2NOM_SEXO: TStringField;
    DBLookupComboBox4: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    Memo1: TMemo;
    ADOTable3: TADOTable;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label21: TLabel;
    DBComboBox2: TDBComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    ADOQuery7: TADOQuery;
    DataSource8: TDataSource;
    BitBtn3: TBitBtn;
    DBGrid1: TDBGrid;
    TabSheet4: TTabSheet;
    DBGrid2: TDBGrid;
    ADOQuery8: TADOQuery;
    DataSource9: TDataSource;
    ADOTable4: TADOTable;
    GroupBox3: TGroupBox;
    Memo2: TMemo;
    DBComboBox3: TDBComboBox;
    Label23: TLabel;
    DBMemo1: TDBMemo;
    ADOQryG: TADOQuery;
    DBImage1: TDBImage;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Label22: TLabel;
    DBComboBox1: TDBComboBox;
    Label24: TLabel;
    DBComboBox4: TDBComboBox;
    procedure EditIdChange(Sender: TObject);
    procedure DataSource3DataChange(Sender: TObject; Field: TField);
    procedure DataSource4DataChange(Sender: TObject; Field: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TabSheet1Exit(Sender: TObject);
    procedure ADOQuery1BeforePost(DataSet: TDataSet);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure ADOTable1AfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FCreaEmpresa: TFCreaEmpresa;

implementation

uses SETablas, UDataModule1, FActivarInactivar,
  Libreria_PrateincoForm;

{$R *.DFM}

procedure TFCreaEmpresa.EditIdChange(Sender: TObject);
begin
  adoquery5.close;
  adoquery5.Parameters[0].value := adotable1.FieldValues['id'];
  adoquery5.open;

  adoquery1.close;
  adoquery1.Parameters[0].value := adotable1.FieldValues['id'];
  adoquery1.open;

  adoquery2.close;
  adoquery2.open;
  dbedit2.text:=EditId.Text;
end;

procedure TFCreaEmpresa.DataSource3DataChange(Sender: TObject; Field: TField);
begin
  adoquery3.close;
  adoquery3.Parameters[0].value := adoquery5.FieldValues['Empresa_Trabaja'];
  adoquery3.open;
end;

procedure TFCreaEmpresa.DataSource4DataChange(Sender: TObject; Field: TField);
begin
  adoquery4.close;
  adoquery4.Parameters[0].value := adoquery5.FieldValues['Empresa_Trabaja'];
  adoquery4.Parameters[1].value := adoquery5.FieldValues['Area_Trabaja'];
  adoquery4.open;
end;

procedure TFCreaEmpresa.SpeedButton1Click(Sender: TObject);
begin
  if Adotable1.State = dsEdit then
  Begin
    ADOTable3.Open;
    OpenPictureDialog2.initialdir:=ExtractFilePath(paramstr(0))+'Imagenes\';
    OpenPictureDialog2.DefaultExt:='bmp';
    if OpenPictureDialog2.execute then
    begin
      DBImage1.Picture.LoadFromFile(OpenpictureDialog2.filename);
      ADOTable1.FieldByName('Foto').Assign(DBImage1.Picture.Bitmap);
      adotable1.Post;
    end;
    ADOTable3.Close;
  end
  else Showmessage('ERROR: No esta en modo edicion para agregar imagen.');
end;

procedure TFCreaEmpresa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action :=  caFree;
end;

procedure TFCreaEmpresa.TabSheet1Exit(Sender: TObject);
begin
 if (adotable1.State = dsEdit) OR (adotable1.State = dsInsert) then adotable1.Post;
end;

procedure TFCreaEmpresa.ADOQuery1BeforePost(DataSet: TDataSet);
begin
  ADOQuery1.FieldValues['Persona']:=EditId.Text;
end;

procedure TFCreaEmpresa.DBLookupComboBox1Enter(Sender: TObject);
begin
  if adoquery5.RecordCount >= 1 then ADOQuery5.Edit;
end;

procedure TFCreaEmpresa.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  If Button = nbInsert Then DBEdit2.Text:=EditId.Text;
end;

procedure TFCreaEmpresa.ADOTable1AfterPost(DataSet: TDataSet);
begin
  //Graba el LOG.
  Datamodule1.Graba_Logx(01/01/2001,'G','',' Graba Personas: '+EditId.text,'SEPersonas','');
end;

procedure TFCreaEmpresa.BitBtn1Click(Sender: TObject);
begin
  ReporteadorP('Listado de Personas','SELECT * FROM Comunes..SEPersonas','');
end;

procedure TFCreaEmpresa.BitBtn2Click(Sender: TObject);
begin
  ReporteadorP('Listado de Personas','SELECT * FROM Comunes..SEIdentificaciones','');
end;

procedure TFCreaEmpresa.BitBtn3Click(Sender: TObject);
Var Cadena:String;
begin
  ADOTable1.Filtered:=False;
  cadena:=InputBox('Buscar una cuenta por codigo.', 'valor:', '1');
  ADOTable1.Filter:='Id = '+chr(39)+cadena+chr(39);
  ADOTable1.Filtered:=True;
end;

procedure TFCreaEmpresa.DataSource1DataChange(Sender: TObject; Field: TField);
var porcentaje:integer;
begin
  ADOQuery8.Close;
  ADOQuery8.Parameters.ParamValues['Pide_Id'] := ADOTable1.FieldValues['Id'];
  ADOQuery8.Open;

  if ADOTable1.State = dsEdit then Editid.Enabled := false
  else if ADOTable1.State = dsInsert then Editid.Enabled := true;

  Memo2.Lines.Clear;

  ADOTable4.Open;
  ADOTable4.First;
  While NOT ADOTable4.Eof DO
  Begin
    if ADOTable4.FieldValues['Id'] <> ADOTable1.FieldValues['Id'] then
    begin
      //Busca por nombre
      porcentaje := parecido(EditPrimer_Apellido.Text+EditSegundo_Apellido.Text+EditNombres.Text,ADOTable4.FieldValues['Primer_Apellido']+ADOTable4.FieldValues['Segundo_Apellido']+ADOTable4.FieldValues['Nombres']);
      if (porcentaje > 70) then memo2.Lines.Add(floattostr(ADOTable4.FieldValues['Id'])+' '+ADOTable4.FieldValues['Primer_Apellido']+' '+ADOTable4.FieldValues['Segundo_Apellido']+' '+ADOTable4.FieldValues['Nombres']+' '+inttostr(porcentaje)+'%');
    end;

    ADOTable4.Next;
  End;
  ADOTable4.Close;
end;

procedure TFCreaEmpresa.DBGrid2DblClick(Sender: TObject);
begin
  ADOQuery8.Edit;
  If ADOQuery8.FieldValues['Acceso'] = 'S' Then ADOQuery8.FieldValues['Acceso'] := 'N'
  Else ADOQuery8.FieldValues['Acceso'] := 'S';
  ADOQuery8.Post;
end;

procedure TFCreaEmpresa.FormCreate(Sender: TObject);
begin
  ADOTable1.Open;
  ADOTable2.Open;
  ADOQuery7.Open;
  PageControl1.ActivePageIndex :=0;
end;

procedure TFCreaEmpresa.BitBtn4Click(Sender: TObject);
begin
  FrmAI := tFrmAI.create(application);
  FrmAI.Edit4.Text:= 'Estado';
  FrmAI.CB1.Items.Add('A');
  FrmAI.CB2.Items.Add('I');
  FrmAI.Edit1.Text:= 'Comunes..SEPersonas';
  try
    Datamodule1.MuestraconAcceso(FrmAI);
  except
    FrmAI.free;
  end;
end;

procedure TFCreaEmpresa.BitBtn5Click(Sender: TObject);
begin
  If ((DBLookupComboBox1.Text <> '') AND (DBLookupComboBox2.Text <> '') AND (DBLookupComboBox3.Text <> ''))  then
  Begin
    adoquery6.open;
    //adoquery6.Locate('Id', VarArrayOf([adotable1.FieldValues['id']]), [loPartialKey])
    if adoquery6.Locate('Id', adotable1.FieldValues['id'], [loPartialKey]) then
      adoquery6.Edit
    else
      adoquery6.Append;

    adoquery6.FieldValues['id']              := adotable1.FieldValues['id'];
    adoquery6.FieldValues['Empresa_trabaja'] := DBLookupComboBox1.KeyValue;   //adoquery2.FieldValues['codigo'];
    adoquery6.FieldValues['Area_Trabaja']    := DBLookupComboBox2.KeyValue;   //adoquery3.FieldValues['codigo'];
    adoquery6.FieldValues['Cargo_Trabaja']   := DBLookupComboBox3.KeyValue;   //adoquery4.FieldValues['codigo'];
    adoquery6.FieldValues['Multiempresa']    := DBComboBox2.Text;
    adoquery6.FieldValues['Estado']          := DBComboBox3.Text;
    adoquery6.post;
    adoquery6.close;

    adoquery5.close;
    adoquery5.Parameters[0].value := adotable1.FieldValues['id'];
    adoquery5.open;
    PageControl1.ActivePageIndex :=0;
  End;
end;

end.
