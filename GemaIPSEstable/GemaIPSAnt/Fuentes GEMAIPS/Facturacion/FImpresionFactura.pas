unit FImpresionFactura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, DBCtrls, ExtCtrls, Buttons,strutils,
  ComCtrls, QuickRpt, QRCtrls,Libreria_Prateinco, frxClass, frxDBSet;

type
  TFImprimeFactura = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSource1: TDataSource;
    ADOQueryFacD: TADOQuery;
    ADOTableCF: TADOTable;
    SpeedButton2: TSpeedButton;
    Edit1: TEdit;
    Label15: TLabel;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DataSourceEmp: TDataSource;
    ADOQueryEmp: TADOQuery;
    Label3: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label4: TLabel;
    Edit2: TEdit;
    DataSource3: TDataSource;
    ADOQueryFacH: TADOQuery;
    Label6: TLabel;
    DateTimePicker1: TDateTimePicker;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    ADOQtmp: TADOQuery;
    PrinterSetupDialog1: TPrinterSetupDialog;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DateTimePicker1Exit(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand6AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand6BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FImprimeFactura: TFImprimeFactura;
  c1,c2,c3,c4,c5,c6 : currency;
  t1,t2: string;
  pag:Integer;
  facant:String;

implementation

uses UDataModule1;


{$R *.dfm}

procedure TFImprimeFactura.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Action :=  caFree;
end;

procedure TFImprimeFactura.FormActivate(Sender: TObject);
begin
  adoqueryEmp.Open;
  DBLookupComboBox2.KeyValue := Datamodule1.ADOQuery1.FieldValues['Empresa'];
  IF Datamodule1.ADOQuery1.FieldValues['Multiempresa'] <> 'S' Then
    begin
      DBLookupComboBox2Exit(self);
      DBLookupComboBox2.Enabled := false;
    end;
  adotableCF.Open;
end;

procedure TFImprimeFactura.SpeedButton2Click(Sender: TObject);
var rt : real;
begin
  {IF CheckBox1.Checked Then Begin
    QRGroup5.Enabled := True;
    QRBand2.Enabled := True;
  End;
  IF CheckBox2.Checked Then Begin
    QRGroup3.Enabled := True;
    QRBand3.Enabled := True;
  End;
  IF CheckBox5.Checked Then Begin
    ChildBand1.Enabled := True;
  End;
  IF CheckBox6.Checked Then Begin
    QRBand6.Enabled := True;
    QRGroup4.Enabled := True;
    QRSubDetail1.Height := 0;
  End
  Else Begin
    QRBand6.Enabled := False;
    QRGroup4.Enabled := False;
   QRSubDetail1.Height :=11;
  End;}

  ADOQuery1.Close;
  ADOQuery1.Parameters.ParamValues['emp']:= ADOQueryFacD.FieldValues['Empresa'];
  ADOQuery1.Parameters.ParamValues['nfac']:= ADOQueryFacD.FieldValues['Numero_Factura'];
  ADOQuery1.Parameters.ParamValues['nfac1']:= ADOQueryFacH.FieldValues['Numero_Factura'];
  ADOQuery1.Open;
  If ADOQuery1.RecordCount = 0 Then Begin
    Showmessage('Error: Esta Factura no se puede mostrar por que los datos relacionados fueron eliminados.');
    Halt;
  End;

  //QuickRep1.PreviewInitialState := wsMaximized;
  frxReport1.ShowReport;
  Close;
end;

procedure TFImprimeFactura.Edit1Change(Sender: TObject);
begin
  ADOQueryFacD.Filtered := False;
  ADOQueryFacD.Filter := 'Numero_Factura like ' +chr(39)+'%' +Edit1.Text +'%'+chr(39);
  ADOQueryFacD.Filtered := true;
  if ADOQueryFacD.FieldValues['Cod'] <> null then DBLookupComboBox1.KeyValue := ADOQueryFacD.FieldValues['Cod'];
  Edit2.Text := Edit1.Text;
end;

procedure TFImprimeFactura.DBLookupComboBox2Exit(Sender: TObject);
begin
  adoqueryFacD.Close;
  adoqueryFacD.Parameters.ParamValues['Emp']:=ADOQueryEmp.FieldValues['Codigo'];
  adoqueryFacD.Parameters.ParamValues['Fec']:=DateTimePicker1.DateTime;
  adoqueryFacD.Open;

  adoqueryFacH.Close;
  adoqueryFacH.Parameters.ParamValues['Emp']:=ADOQueryEmp.FieldValues['Codigo'];
  adoqueryFacH.Parameters.ParamValues['Fec']:=DateTimePicker1.DateTime;
  adoqueryFacH.Open;
end;

procedure TFImprimeFactura.Edit2Change(Sender: TObject);
begin
  ADOQueryFacH.Filtered := False;
  ADOQueryFacH.Filter := 'Numero_Factura like ' +chr(39)+'%' +Edit2.Text +'%'+chr(39);
  ADOQueryFacH.Filtered := true;
  if ADOQueryFacH.FieldValues['Cod'] <> null then DBLookupComboBox3.KeyValue := ADOQueryFacH.FieldValues['Cod'];
end;

procedure TFImprimeFactura.FormCreate(Sender: TObject);
begin
  DateTimePicker1.DateTime := now -30;
end;

procedure TFImprimeFactura.DateTimePicker1Exit(Sender: TObject);
begin
  adoqueryFacD.Close;
  adoqueryFacD.Parameters.ParamValues['Emp']:=ADOQueryEmp.FieldValues['Codigo'];
  adoqueryFacD.Parameters.ParamValues['Fec']:=DateTimePicker1.DateTime;
  adoqueryFacD.Open;

  adoqueryFacH.Close;
  adoqueryFacH.Parameters.ParamValues['Emp']:=ADOQueryEmp.FieldValues['Codigo'];
  adoqueryFacH.Parameters.ParamValues['Fec']:=DateTimePicker1.DateTime;
  adoqueryFacH.Open;
end;

procedure TFImprimeFactura.DBLookupComboBox1Exit(Sender: TObject);
begin
  DBLookupComboBox3.KeyValue := DBLookupComboBox1.KeyValue;
end;

procedure TFImprimeFactura.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var valor:currency;
Begin

end;

procedure TFImprimeFactura.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 c1:=0;
 c2:=0;
 c3:=0;
 c4:=0;
 c5:=0;
 c6:=0;
 Pag:=0;
 facant:='';
end;

procedure TFImprimeFactura.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //QRLabel57.Caption := Format('%16.2n',[c4]);
end;

procedure TFImprimeFactura.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  c2 := c2+ADOQuery1.FieldValues['Valor_Total_1'];
  c4 := c4+ADOQuery1.FieldValues['Valor_Total_1'];
  c6 := c6+ADOQuery1.FieldValues['Valor_Total_1'];

  t1 := ADOQuery1.FieldValues['Codigo_producto'];
  t2 := ADOQuery1.FieldValues['Nombrexx'];
  c1 := c1+ADOQuery1.FieldValues['Cantidad'];
  c3 := c3+ADOQuery1.FieldValues['Valor_Unitario'];
  c5 := c5+ADOQuery1.FieldValues['Valor_Total_1'];
end;

procedure TFImprimeFactura.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  c2:=0;
end;

procedure TFImprimeFactura.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  c4:=0;
end;

procedure TFImprimeFactura.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  c6:=0;
end;

procedure TFImprimeFactura.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //QRLabel59.Caption := Format('%16.2n',[c6]);
end;

procedure TFImprimeFactura.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //QRLabel55.Caption := Format('%16.2n',[c2]);
end;

procedure TFImprimeFactura.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var valor:currency;
begin
  //Trae Valores de la Empresa.
  ADOQtmp.Close;
  ADOQtmp.SQL.Clear;
  ADOQtmp.SQL.Add('SELECT * FROM Comunes..SEEmpresas WHERE Codigo = '+chr(39)+ADOQuery1.FieldValues['Empresa']+chr(39));
  ADOQtmp.Open;
  //QRLabel32.Caption := 'NIT: '+campotoedit(ADOQTmp.FieldValues['NIT']);
  //QRLabel46.Caption := campotoedit(ADOQTmp.FieldValues['Descripcion_Emp']);
  //QRLabel47.Caption := campotoedit(ADOQTmp.FieldValues['Direccion']);
  //QRLabel48.Caption := campotoedit(ADOQTmp.FieldValues['Telefono']);
  //QRLabel24.Caption := campotoedit(ADOQTmp.FieldValues['Observ']);
  //QRLabel56.Caption := campotoedit(ADOQTmp.FieldValues['Prefijo']);

  //Trae Valores del Cliente.
  ADOQtmp.Close;
  ADOQtmp.SQL.Clear;
  ADOQtmp.SQL.Add('SELECT * FROM CONTTerce WHERE Numero_Documento  = '+chr(39)+leftstr(ADOQuery1.FieldValues['Cliente'],length(ADOQuery1.FieldValues['Cliente'])-3)+chr(39));
  ADOQtmp.Open;
  //QRLabel10.Caption := campotoedit(ADOQTmp.FieldValues['Numero_Documento']);
  //QRLabel49.Caption := campotoedit(ADOQTmp.FieldValues['Primer_Apellido'])+' '+campotoedit(ADOQTmp.FieldValues['Primer_Nombre']);
  //QRLabel50.Caption := campotoedit(ADOQTmp.FieldValues['Direccion']);
  //QRLabel51.Caption := campotoedit(ADOQTmp.FieldValues['Telefono']);

  //Genera Los valores de Conceptos.
  ADOQuery2.Close;
  ADOQuery2.Parameters.ParamValues['emp']:= ADOQuery1.FieldValues['Empresa'];
  ADOQuery2.Parameters.ParamValues['nfact']:= ADOQuery1.FieldValues['Numero_Factura'];
  ADOQuery2.Open;

  if ADOQuery1.FieldValues['Valor_Conceptos'] <> null then
    //QRLabel22.Caption:= xIntToLletras(ADOQuery1.FieldValues['Valor_Total']+ADOQuery1.FieldValues['Valor_IVA']-ADOQuery1.FieldValues['Valor_Descuento']-ADOQuery1.FieldValues['Valor_Conceptos'])+ ' Pesos.'
  Else
    //QRLabel22.Caption:= xIntToLletras(ADOQuery1.FieldValues['Valor_Total']+ADOQuery1.FieldValues['Valor_IVA']-ADOQuery1.FieldValues['Valor_Descuento'])+ ' Pesos.';

  ADOQuery2.First;
  IF NOT ADOQuery2.Eof Then Begin
    //QRLabel34.Caption := ADOQuery2.FieldValues['Descripcion'];
    Valor:=ADOQuery2.FieldValues['Valor'];
    //QRLabel27.Caption := Format('%16.2n',[Valor]);
  End;
  ADOQuery2.Next;
  IF NOT ADOQuery2.Eof Then Begin
    //QRLabel35.Caption := ADOQuery2.FieldValues['Descripcion'];
    Valor:=ADOQuery2.FieldValues['Valor'];
    //QRLabel38.Caption := Format('%16.2n',[Valor]);
  End;
  ADOQuery2.Next;
  IF NOT ADOQuery2.Eof Then Begin
    //QRLabel37.Caption := ADOQuery2.FieldValues['Descripcion'];
    Valor:=ADOQuery2.FieldValues['Valor'];
    //QRLabel39.Caption := Format('%16.2n',[Valor]);
  End;
  //Valor:=stf(QRExpr3.Value.StringVal) - stf(QRLabel27.Caption) - stf(QRLabel38.Caption) - stf(QRLabel39.Caption) ;
  //QRLabel9.Caption := Format('%16.2n',[Valor]);
end;

procedure TFImprimeFactura.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //Revisa el Consecutivo
  if facant = ADOQuery1.FieldValues['Numero_Factura'] Then begin
    inc(pag);
  end
  else pag:=1;
  //QRLabel54.Caption := inttostr(pag);
  facant := ADOQuery1.FieldValues['Numero_Factura'];
end;

procedure TFImprimeFactura.QRBand6AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
 c1:=0;
 c3:=0;
 c5:=0;
end;

procedure TFImprimeFactura.QRBand6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //QRLabel61.Caption := t1;
  //QRLabel62.Caption := t2;
  //QRLabel63.Caption := Format('%16.0n',[c1]);
  //QRLabel58.Caption := Format('%16.2n',[c3]);
  //QRLabel60.Caption := Format('%16.2n',[c5]);
end;

end.
