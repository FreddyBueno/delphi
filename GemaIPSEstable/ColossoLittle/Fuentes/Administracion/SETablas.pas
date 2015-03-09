unit SETablas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, DBCtrls, ExtCtrls, Mask, Buttons, ComCtrls,
  ExtDlgs, Grids, DBGrids;

type
  TFCreaUsuarios = class(TForm)
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    OpenPictureDialog2: TOpenPictureDialog;
    ADOTable2: TADOTable;
    ADOTable3: TADOTable;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    SpeedButton1: TSpeedButton;
    Label9: TLabel;
    Label7: TLabel;
    EditId: TDBEdit;
    EditPrimer_Apellido: TDBEdit;
    EditLugar_Nacimiento: TDBEdit;
    EditFecha_Nacimiento: TDBEdit;
    EditClave: TDBEdit;
    Panel2: TPanel;
    DBComboBox1: TDBComboBox;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBNavigator2: TDBNavigator;
    TabSheet3: TTabSheet;
    Panel4: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBNavigator3: TDBNavigator;
    Label14: TLabel;
    DBEdit3: TDBEdit;
    Label15: TLabel;
    DBEdit7: TDBEdit;
    DBEdit10: TDBEdit;
    Label16: TLabel;
    DBEdit11: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label17: TLabel;
    DBComboBox2: TDBComboBox;
    Label18: TLabel;
    DBComboBox3: TDBComboBox;
    Label19: TLabel;
    DBEdit12: TDBEdit;
    Label20: TLabel;
    DataSource4: TDataSource;
    ADOTable4: TADOTable;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    DataSource5: TDataSource;
    ADOQuery1: TADOQuery;
    DBImage1: TDBImage;
    ADOTable1: TADOTable;
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator3Click(Sender: TObject; Button: TNavigateBtn);
    procedure ADOTable2BeforePost(DataSet: TDataSet);
    procedure ADOTable3BeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ADOTable1AfterPost(DataSet: TDataSet);
    procedure ADOTable2AfterPost(DataSet: TDataSet);
    procedure ADOTable3AfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCreaUsuarios: TFCreaUsuarios;

implementation

uses UDataModule1, Libreria_PrateincoForm;

{$R *.dfm}

procedure TFCreaUsuarios.SpeedButton1Click(Sender: TObject);
begin
  if (Adotable1.State = dsEdit) or (Adotable1.State = dsInsert) then
  Begin
    OpenPictureDialog2.initialdir:='IMAGENES';
    OpenPictureDialog2.filename:='Sin Nombre.bmp';
    OpenPictureDialog2.DefaultExt:='bmp';
    if OpenPictureDialog2.execute then
    begin
      DBImage1.Picture.LoadFromFile(OpenpictureDialog2.filename);
      ADOTable1.FieldByName('Logo').Assign(DBImage1.Picture.Bitmap);
      adotable1.Post;
    end;
  end
  else Showmessage('ERROR: No esta en modo edicion para agregar imagen.');
end;

procedure TFCreaUsuarios.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  EditId.SetFocus;
end;

procedure TFCreaUsuarios.DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
begin
  //adotable1.Locate('Codigo',adotable2.fieldvalues['Empresa'], [loPartialKey]);
  DBEdit1.SetFocus;
end;

procedure TFCreaUsuarios.DBNavigator3Click(Sender: TObject; Button: TNavigateBtn);
begin
  //adotable2.Locate('Codigo',adotable3.fieldvalues['Area'], [loPartialKey]);
  //adotable1.Locate('Codigo',adotable3.fieldvalues['Empresa'], [loPartialKey]);
  DBEdit5.SetFocus;
end;

procedure TFCreaUsuarios.ADOTable2BeforePost(DataSet: TDataSet);
begin
//  adotable2.FieldValues['Empresa']:=adotable1.FieldValues['Codigo'];
end;

procedure TFCreaUsuarios.ADOTable3BeforePost(DataSet: TDataSet);
begin
//  adotable3.FieldValues['Empresa']:=adotable1.FieldValues['Codigo'];
//  adotable3.FieldValues['Area']:=adotable2.FieldValues['Codigo'];
end;

procedure TFCreaUsuarios.FormCreate(Sender: TObject);
begin
  AdoTable1.Open;
  AdoTable2.Open;
  AdoTable3.Open;
  AdoTable4.Open;
end;

procedure TFCreaUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action :=  caFree;
end;

procedure TFCreaUsuarios.ADOTable1AfterPost(DataSet: TDataSet);
begin
  //Graba el LOG.
  Datamodule1.Graba_Logx(01/01/2001,'G','',' Graba Empresas: '+EditId.text,'SEEmpresas','');
end;

procedure TFCreaUsuarios.ADOTable2AfterPost(DataSet: TDataSet);
begin
    //Graba el LOG.
  Datamodule1.Graba_Logx(01/01/2001,'G','',' Graba Areas: '+DBEdit1.text,'SEAreas','');
end;

procedure TFCreaUsuarios.ADOTable3AfterPost(DataSet: TDataSet);
begin
    //Graba el LOG.
  Datamodule1.Graba_Logx(01/01/2001,'G','',' Graba Cargos: '+DBEdit5.text,'SEEmpresas','');
end;

procedure TFCreaUsuarios.BitBtn1Click(Sender: TObject);
begin
  ReporteadorP('Listado de Empresas','SELECT * FROM Comunes..SEEmpresas','');
end;

procedure TFCreaUsuarios.BitBtn2Click(Sender: TObject);
begin
  ReporteadorP('Listado de Areas','SELECT * FROM Comunes..SEAreas','');
end;

procedure TFCreaUsuarios.BitBtn3Click(Sender: TObject);
begin
  ReporteadorP('Listado de SECargos','SELECT * FROM Comunes..SECargos','');
end;

procedure TFCreaUsuarios.DataSource2DataChange(Sender: TObject; Field: TField);
begin
  if DBEdit1.Text <> '' Then
  Begin
    ADOQuery1.Close;
    ADOquery1.Parameters.ParamValues['Emp']:=EditId.Text;
    ADOquery1.Parameters.ParamValues['Are']:=DBEdit1.Text;
    ADOQuery1.Open;
  End;
end;

end.
