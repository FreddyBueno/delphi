unit Fcontabilidad9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, ADODB, ExtCtrls, Buttons, Grids,
  DBGrids, ComCtrls;

type
  TFormTiposComp = class(TForm)
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ADOQuery1: TADOQuery;
    Label10: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    DBComboBox1: TDBComboBox;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    ADOQuery2: TADOQuery;
    TabSheet4: TTabSheet;
    GroupBox3: TGroupBox;
    DBGrid3: TDBGrid;
    DataSource4: TDataSource;
    ADOTable4: TADOTable;
    Panel2: TPanel;
    DBNavigator2: TDBNavigator;
    Panel4: TPanel;
    DBNavigator4: TDBNavigator;
    BitBtn2: TBitBtn;
    ADOQueryAux: TADOQuery;
    ADOTable2: TADOQuery;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTiposComp: TFormTiposComp;

implementation

uses UDataModule1, FActivarInactivar, CapturaBasica3,
  Libreria_PrateincoForm;

{$R *.dfm}

procedure TFormTiposComp.FormActivate(Sender: TObject);
begin
  adotable1.open;
  adotable4.open;

  ADOQuery1.Open;
  ADOQuery1.First;
  WHILE NOT ADOQuery1.Eof DO
  Begin
    DBGrid1.Columns[0].PickList.add(ADOQuery1.FieldValues['Cuenta']+'-'+ADOQuery1.FieldValues['Descripcion']);
    DBGrid3.Columns[1].PickList.add(ADOQuery1.FieldValues['Cuenta']+'-'+ADOQuery1.FieldValues['Descripcion']);

    ADOQuery1.Next;
  End;
  ADOQuery1.Close;

  ADOQuery2.Open;
  ADOQuery2.First;
  WHILE NOT ADOQuery2.Eof DO
  Begin
    DBGrid3.Columns[0].PickList.add(ADOQuery2.FieldValues['Tipo_Tercero']+'-'+ADOQuery2.FieldValues['Descripcion']);

    ADOQuery2.Next;
  End;
  ADOQuery2.Close;
end;

procedure TFormTiposComp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action :=  caFree;
end;

procedure TFormTiposComp.BitBtn1Click(Sender: TObject);
begin
  ReporteadorP('Listado de Tipos Comprobantes','SELECT * FROM CONTTIPOCOMP','');
end;

procedure TFormTiposComp.BitBtn2Click(Sender: TObject);
var
  v1,v2: string;
begin
  v1:= InputBox('Cuenta', 'Ingrese la Cuenta Mayor a Copiar', '');
  v2:= InputBox('Tipo', 'Debito o Credito', '');
  ADOQueryAux.Close;
  ADOQueryAux.SQL.Clear;
  ADOQueryAux.SQL.Add('SELECT * FROM CONTCuenta WHERE Estado = '+chr(39)+'A'+chr(39)+' AND Cuenta like '+chr(39)+v1+'%'+chr(39));
  ADOQueryAux.Open;
  ADOQueryAux.First;
  WHILE NOT ADOQueryAux.Eof DO
  Begin
    ADOTable2.Append;
    ADOTable2.FieldValues['Tipo_Comprobante'] := ADOTable1.FieldValues['Tipo_Comprobante'];
    ADOTable2.FieldValues['Cuenta'] := ADOQueryAux.FieldValues['Cuenta'];
    ADOTable2.FieldValues['Debito_Credito'] := v2;
    ADOQueryAux.Next;
  End;
end;

procedure TFormTiposComp.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  adotable2.Close;
  adotable2.Parameters.ParamValues['tp']:=ADOTable1.FieldValues['Tipo_Comprobante'];
  adotable2.open;

end;

procedure TFormTiposComp.BitBtn3Click(Sender: TObject);
begin
  ADOTable2.First;
  WHILE NOT ADOTable2.Eof DO
  Begin
    ADOTable2.Delete;

    ADOTable2.First;
  End;
end;

procedure TFormTiposComp.BitBtn6Click(Sender: TObject);
begin
  FrmAI := tFrmAI.create(application);
  FrmAI.Edit4.Text:= 'Estado';
  FrmAI.CB1.Items.Add('A');
  FrmAI.CB2.Items.Add('I');
  FrmAI.Edit1.Text:= 'CONTTipoComp';
  try
    Datamodule1.MuestraconAcceso(FrmAI);
  except
    FrmAI.free;
  end;
end;

procedure TFormTiposComp.BitBtn4Click(Sender: TObject);
begin
  CapturaB3 := tCapturaB3.create(application);
  CapturaB3.Label11.Caption := 'Tipos de Terceros para un Tipo de Comprobante Especifico'; //Descripción
  CapturaB3.Label1.Caption  := 'CONTTipoComp';           //Tabla Principal
  CapturaB3.Label2.Caption  := 'A.Tipo_Comprobante';     //Campo Llave Principal
  CapturaB3.Label3.Caption  := 'A.Descripcion';          //Desc Principal
  CapturaB3.Label4.Caption  := 'CONTTiTerc';             //Tabla Secundaria
  CapturaB3.Label5.Caption  := 'B.Tipo_Tercero';         //Campo Llave Secundario
  CapturaB3.Label6.Caption  := 'B.Descripcion';          //Desc Secundario
  CapturaB3.Edit3.Text      := 'CONTTipCompxTipTerce';   //Tabla Union
  CapturaB3.Edit8.Text      := 'Tipo_Comprobante';       //Llave Union 1
  CapturaB3.Edit9.Text      := 'Tipo_tercero';           //Llave Union 2
  try
    Datamodule1.MuestraconAcceso(CapturaB3);
  except
    CapturaB3.free;
  end;
end;

end.
