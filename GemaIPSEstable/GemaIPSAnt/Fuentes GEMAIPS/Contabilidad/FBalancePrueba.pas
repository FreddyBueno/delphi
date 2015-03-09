unit FBalancePrueba;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, DBCtrls, QuickRpt, QRCtrls, ExtCtrls,
  Grids, DBGrids, QRExport,StrUtils,shellapi,DateUtils;

type
  TFrmLibroBalancePrueba = class(TForm)
    QuickRep1: TQuickRep;
    QRBand3: TQRBand;
    QRShape2: TQRShape;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRExpr1: TQRExpr;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    ADOQuery3: TADOQuery;
    DataSource1: TDataSource;
    QRLabel3: TQRLabel;
    ADOQuery5: TADOQuery;
    ADOQuery6: TADOQuery;
    GroupBox2: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    QRExpr8: TQRExpr;
    QRDBText3: TQRDBText;
    QRExpr9: TQRExpr;
    QRDBText4: TQRDBText;
    QRExpr10: TQRExpr;
    QRDBText5: TQRDBText;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    QRExpr6: TQRExpr;
    QRDBText6: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRGroup4: TQRGroup;
    QRGroup5: TQRGroup;
    QRGroup6: TQRGroup;
    QRGroup1: TQRGroup;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRShape3: TQRShape;
    QRDBImage1: TQRDBImage;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    QRGroup2: TQRGroup;
    QRExpr2: TQRExpr;
    QRDBText7: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel11: TQRLabel;
    QRBand1: TQRBand;
    QRShape4: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel: TQRLabel;
    QRBand4: TQRBand;
    QRShape5: TQRShape;
    QRLabel29: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel47: TQRLabel;
    QRShape6: TQRShape;
    CheckBox7: TCheckBox;
    QRLabel48: TQRLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRGroup4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup6BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRGroup2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand4AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);

 {   procedure CheckBox1Click(Sender: TObject);    }
   { procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);    }
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLibroBalancePrueba: TFrmLibroBalancePrueba;
  Saldo,saldo2:Double;
  Mes_Actual,Mes_Anterior:String;
  Valor,Valor2:Currency;
  filestream:tfilestream;
  iex:integer;

implementation

uses UDataModule1,Libreria_Prateinco;

{$R *.dfm}

procedure TFrmLibroBalancePrueba.Button1Click(Sender: TObject);
begin
  Qrlabel50.Caption := '0';
  Qrlabel51.Caption := '0';

  //Totales
  QRLabel13.Caption := '0';
  QRLabel17.Caption := '0';
  QRLabel18.Caption := '0';
  QRLabel23.Caption := '0';
  QRLabel29.Caption := '0';
  QRLabel31.Caption := '0';
  QRLabel35.Caption := '0';
  QRLabel37.Caption := '0';


  Mes_Actual := DBLookupComboBox1.keyvalue;
  //***********************
  //Calcula el Mes Anterior
  //***********************
  if strtoint(rightstr(Mes_Actual,2)) <> 13 Then
    Mes_Anterior:='01/'+rightstr(Mes_Actual,2)+'/'+leftstr(Mes_Actual,4)
  Else
    Mes_Anterior:='01/12/'+leftstr(Mes_Actual,4);

  if strtoint(rightstr(Mes_Actual,2)) <> 1 Then
  Begin
    if strtoint(rightstr(Mes_Actual,2)) <> 13 Then
    Begin
      if length(inttostr(yearof(strtodate(Mes_Anterior)-5))+inttostr(monthof(strtodatetime(Mes_Anterior)-5))) = 5 then
        Mes_Anterior:=inttostr(yearof(strtodate(Mes_Anterior)-5))+'0'+inttostr(monthof(strtodatetime(Mes_Anterior)-5))
      Else
        Mes_Anterior:=inttostr(yearof(strtodate(Mes_Anterior)-5))+inttostr(monthof(strtodatetime(Mes_Anterior)-5));
    End
    Else Mes_Anterior:=inttostr(yearof(strtodate(Mes_Anterior)-5))+'12';
  End
  Else Mes_Anterior:=inttostr(yearof(strtodate(Mes_Anterior)-5))+'13';
  Mes_Actual := DBLookupComboBox2.keyvalue;

 Saldo2:=0;
 QRLabel9.Caption:=DBLookupComboBox1.keyvalue;
 QRLabel47.Caption:=DBLookupComboBox2.keyvalue;

 ADOQuery1.Close;
 ADOQuery1.Parameters.ParamValues['per']:= DBLookupComboBox2.keyvalue;
 ADOQuery1.Parameters.ParamValues['perant']:= Mes_Anterior;
 ADOQuery1.Open;
 IF ADOQuery1.RecordCount=0 Then
 Begin
   ShowMessage('No hay registros para imprimir este reporte.');
   Exit;
 End;
 ADOQuery6.Close;
 ADOQuery6.SQL.Clear;
 ADOquery6.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = Left('+chr(39)+trim(ADOQuery1.FieldValues['CTA'])+chr(39)+',1)');
 ADOQuery6.Open;

 ADOQuery5.Close;
 ADOQuery5.SQL.Clear;
 ADOquery5.SQL.Add('SELECT Left(CONTCuenta.Cuenta,1) as Tp,CONTCuenta.Naturaleza, Sum(Saldo_Debito) as SD,Sum(Saldo_Credito) AS SC'+
  '   FROM CONTSaldo RIGHT JOIN CONTCuenta ON CONTSaldo.Cuenta = CONTCuenta.Cuenta'+
  '   WHERE Periodo_Proceso >= '+chr(39)+DBLookupComboBox1.Text+chr(39)+ ' AND Periodo_Proceso <= '+chr(39)+DBLookupComboBox2.Text+chr(39)+
  '      AND CONTCuenta.Estado = '+chr(39)+'A'+chr(39)+' AND CONTCuenta.Cuenta like '+chr(39)+trim(ADOQuery6.FieldValues['Cuenta'])+'%'+chr(39)+
  '   GROUP BY Left(CONTCuenta.Cuenta,1),CONTCuenta.Naturaleza');
  ADOQuery5.Open;

  Saldo:=0;
  ADOQuery5.First;
  WHILE NOT ADOQuery5.Eof DO
  Begin
    IF ADOQuery5.FieldValues['Tp'] = '1' Then
    Begin
      Saldo:=Saldo+(ADOQuery5.FieldValues['SD'] - ADOQuery5.FieldValues['SC'])
    End
    Else  IF (ADOQuery5.FieldValues['Tp'] = '2') OR (ADOQuery5.FieldValues['Tp'] = '3') Then Begin
      Saldo:=Saldo+(ADOQuery5.FieldValues['SC'] - ADOQuery5.FieldValues['SD']);
    End
    Else  IF (ADOQuery5.FieldValues['Tp'] = '4') Then Begin
      Saldo:=Saldo+(ADOQuery5.FieldValues['SC'] - ADOQuery5.FieldValues['SD']);
    End
    Else Begin
      Saldo:=Saldo+(ADOQuery5.FieldValues['SD'] - ADOQuery5.FieldValues['SC']);
    End;

    ADOQuery5.Next;
  End;
  If CheckBox1.Checked = True Then QRGroup4.Enabled := True
  Else QRGroup4.Enabled  := False;
  If CheckBox2.Checked = True Then QRGroup5.Enabled  := True
  Else QRGroup5.Enabled  := False;
  If CheckBox3.Checked = True Then QRGroup6.Enabled  := True
  Else QRGroup6.Enabled  := False;
  If CheckBox4.Checked = True Then QRGroup1.Enabled  := True
  Else QRGroup1.Enabled  := False;
  If CheckBox5.Checked = True Then QRBand2.Enabled  := True
  Else QRBand2.Enabled  := False;

  QuickRep1.PreviewInitialState := wsMaximized;
   QuickRep1.PreviewModal;
   Close;
end;

procedure TFrmLibroBalancePrueba.FormCreate(Sender: TObject);
begin
  adoquery3.Open;
  adoquery2.Open;
end;

procedure TFrmLibroBalancePrueba.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrmLibroBalancePrueba.QRGroup4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel15.Caption := '0';
  QRLabel19.Caption := '0';
  QRLabel21.Caption := '0';
  QRLabel22.Caption := '0';

  ADOQuery6.Close;
  ADOQuery6.SQL.Clear;
  ADOquery6.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = Left('+chr(39)+trim(ADOQuery1.FieldValues['Cta'])+chr(39)+',1)');
  ADOQuery6.Open;
  if ADOQuery6.RecordCount = 0 then
  Begin
    Showmessage('Error: la Cuenta '+ADOQuery1.FieldValues['Cta']+' No tiene sus cuentas mayores, verifiquelas y genere de nuevo');
    Exit;
  End;

  //Saldos Anteriores
  ADOQuery5.Close;
  ADOQuery5.SQL.Clear;
  ADOquery5.SQL.Add('SELECT Left(CONTCuenta.Cuenta,1) as Tp, Sum(Saldo_Debito) as SD,Sum(Saldo_Credito) AS SC'+
   '   FROM CONTSaldo RIGHT JOIN CONTCuenta ON CONTSaldo.Cuenta = CONTCuenta.Cuenta'+
   '   WHERE Periodo_Proceso = '+chr(39)+Mes_Anterior+chr(39)+
   '      AND CONTCuenta.Estado = '+chr(39)+'A'+chr(39)+' AND Left(CONTCuenta.Cuenta,1) = '+chr(39)+trim(ADOQuery6.FieldValues['Cuenta'])+chr(39)+
   '   GROUP BY Left(CONTCuenta.Cuenta,1)');
  ADOQuery5.Open;
  if ADOQuery5.FieldValues['SD'] <> null then saldo:= ADOQuery5.FieldValues['SD'];
  if ADOQuery5.FieldValues['SC'] <> null then saldo2:= ADOQuery5.FieldValues['SC'];

  if ADOQuery5.FieldValues['SD'] <> null then Valor:=ADOQuery5.FieldValues['SD']
  else valor :=0;
  if ADOQuery5.FieldValues['SC'] <> null then Valor2:=ADOQuery5.FieldValues['SC']
  else valor2 :=0;
  IF (Valor - Valor2) > 0 THEN Begin
    Valor  := (Valor - Valor2);
  End
  Else Begin
    Valor := (Valor2 - Valor);
  End;
  QRLabel15.Caption := Format('%16.2n',[Valor]);

  //Movimiento
  ADOQuery5.Close;
  ADOQuery5.SQL.Clear;
  ADOquery5.SQL.Add('SELECT Left(CONTCuenta.Cuenta,1) as Tp , Sum(Valor_Debito) as SD,Sum(Valor_Credito) AS SC'+
    ' FROM CONTCuenta,CONTDetComp,CONTEncComp '+
    ' WHERE CONTEncComp.Estado = '+chr(39)+'G'+chr(39)+' AND CONTDetComp.Tipo_Comprobante = CONTEncComp.Tipo_Comprobante AND '+
    '       CONTDetComp.Numero_Comprobante = CONTEncComp.Numero_Comprobante AND '+
    '       CONTCuenta.Cuenta = CONTDetComp.Cuenta AND '+
    '       Left(CONTCuenta.Cuenta,1) = '+chr(39)+trim(ADOQuery6.FieldValues['Cuenta'])+chr(39)+
    '       AND CONTEncComp.Periodo_Proceso >= '+chr(39)+DBLookupComboBox1.Text+chr(39)+ ' AND CONTEncComp.Periodo_Proceso <= '+chr(39)+DBLookupComboBox2.Text+chr(39)+
    ' GROUP BY Left(CONTCuenta.Cuenta,1) '+
    ' ORDER BY Left(CONTCuenta.Cuenta,1) ');
  ADOQuery5.Open;
  if ADOQuery5.FieldValues['SD'] <> null then saldo:= Saldo+ADOQuery5.FieldValues['SD'];
  if ADOQuery5.FieldValues['SC'] <> null then saldo2:= Saldo2+ADOQuery5.FieldValues['SC'];

  if ADOQuery5.FieldValues['SD'] <> null then Valor:=ADOQuery5.FieldValues['SD']
  else valor :=0;
  if ADOQuery5.FieldValues['SC'] <> null then Valor2:=ADOQuery5.FieldValues['SC']
  else valor2 :=0;
  QRLabel19.Caption := Format('%16.2n',[Valor]);
  QRLabel21.Caption := Format('%16.2n',[Valor2]);
  Qrlabel50.Caption := currtostr(strtocurr(Qrlabel50.Caption) + valor);
  Qrlabel51.Caption := currtostr(strtocurr(Qrlabel51.Caption) + valor2);


  //Saldos Actuales
  ADOQuery5.Close;
  ADOQuery5.SQL.Clear;
  ADOquery5.SQL.Add('SELECT Left(CONTCuenta.Cuenta,1) as Tp, Sum(Saldo_Debito) as SD,Sum(Saldo_Credito) AS SC'+
   '   FROM CONTSaldo RIGHT JOIN CONTCuenta ON CONTSaldo.Cuenta = CONTCuenta.Cuenta'+
   '   WHERE Periodo_Proceso = '+chr(39)+DBLookupComboBox2.Text+chr(39)+
   '      AND CONTCuenta.Estado = '+chr(39)+'A'+chr(39)+' AND Left(CONTCuenta.Cuenta,1) = '+chr(39)+trim(ADOQuery6.FieldValues['Cuenta'])+chr(39)+
   '   GROUP BY Left(CONTCuenta.Cuenta,1)');
   ADOQuery5.Open;

   if ADOQuery5.FieldValues['SD'] <> null then Valor:=ADOQuery5.FieldValues['SD']
   else valor :=0;
   if ADOQuery5.FieldValues['SC'] <> null then Valor2:=ADOQuery5.FieldValues['SC']
   else valor2 :=0;
   IF (Valor - Valor2) > 0 THEN Begin
     Valor  := (Valor - Valor2);
   End
   Else Begin
     Valor := (Valor2 - Valor);
   End;
   QRLabel22.Caption := Format('%16.2n',[Valor]);
end;

procedure TFrmLibroBalancePrueba.QRGroup5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel24.Caption := '0';
  QRLabel26.Caption := '0';
  QRLabel27.Caption := '0';
  QRLabel28.Caption := '0';

  ADOQuery6.Close;
  ADOQuery6.SQL.Clear;
  ADOquery6.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = Left('+chr(39)+trim(ADOQuery1.FieldValues['Cta'])+chr(39)+',2)');
  ADOQuery6.Open;
  if ADOQuery6.RecordCount = 0 then
  Begin
    Showmessage('Error: la Cuenta '+ADOQuery1.FieldValues['Cta']+' No tiene sus cuentas mayores, verifiquelas y genere de nuevo');
    Exit;
  End;

  //Saldos Anteriores
  ADOQuery5.Close;
  ADOQuery5.SQL.Clear;
  ADOquery5.SQL.Add('SELECT Left(CONTCuenta.Cuenta,2) as Tp, Sum(Saldo_Debito) as SD,Sum(Saldo_Credito) AS SC'+
   '   FROM CONTSaldo RIGHT JOIN CONTCuenta ON CONTSaldo.Cuenta = CONTCuenta.Cuenta'+
   '   WHERE Periodo_Proceso = '+chr(39)+Mes_Anterior+chr(39)+
   '      AND CONTCuenta.Estado = '+chr(39)+'A'+chr(39)+' AND Left(CONTCuenta.Cuenta,2) = '+chr(39)+trim(ADOQuery6.FieldValues['Cuenta'])+chr(39)+
   '   GROUP BY Left(CONTCuenta.Cuenta,2)');
  ADOQuery5.Open;
  If ADOQuery5.RecordCount <>0 Then
  Begin
    if ADOQuery5.FieldValues['SD'] <> null then saldo:= ADOQuery5.FieldValues['SD'];
    if ADOQuery5.FieldValues['SC'] <> null then saldo2:= ADOQuery5.FieldValues['SC'];

    if ADOQuery5.FieldValues['SD'] <> null then Valor:=ADOQuery5.FieldValues['SD']
    else valor :=0;
    if ADOQuery5.FieldValues['SC'] <> null then Valor2:=ADOQuery5.FieldValues['SC']
    else valor2 :=0;
    IF (Valor - Valor2) > 0 THEN Begin
      Valor  := (Valor - Valor2);
    End
    Else Begin
      Valor := (Valor2 - Valor);
    End;
    QRLabel24.Caption := Format('%16.2n',[Valor]);
  End
  Else Begin
    QRLabel24.Caption := '0';
  End;

  //Movimiento
  ADOQuery5.Close;
  ADOQuery5.SQL.Clear;
  ADOquery5.SQL.Add('SELECT Left(CONTCuenta.Cuenta,2) as Tp , Sum(Valor_Debito) as SD,Sum(Valor_Credito) AS SC'+
    ' FROM CONTCuenta,CONTDetComp,CONTEncComp '+
    ' WHERE CONTEncComp.Estado = '+chr(39)+'G'+chr(39)+' AND CONTDetComp.Tipo_Comprobante = CONTEncComp.Tipo_Comprobante AND '+
    '       CONTDetComp.Numero_Comprobante = CONTEncComp.Numero_Comprobante AND '+
    '       CONTCuenta.Cuenta = CONTDetComp.Cuenta AND '+
    '       Left(CONTCuenta.Cuenta,2) = '+chr(39)+trim(ADOQuery6.FieldValues['Cuenta'])+chr(39)+
    '       AND CONTCuenta.Estado = '+chr(39)+'A'+chr(39)+
    ' AND CONTEncComp.Periodo_Proceso >= '+chr(39)+DBLookupComboBox1.Text+chr(39)+
    ' AND CONTEncComp.Periodo_Proceso <= '+chr(39)+DBLookupComboBox2.Text+chr(39)+
    ' GROUP BY Left(CONTCuenta.Cuenta,2) '+
    ' ORDER BY Left(CONTCuenta.Cuenta,2) ');
  ADOQuery5.Open;
  If ADOQuery5.RecordCount <>0 Then
  Begin
    if ADOQuery5.FieldValues['SD'] <> null then saldo:= Saldo+ADOQuery5.FieldValues['SD'];
    if ADOQuery5.FieldValues['SC'] <> null then saldo2:= Saldo2+ADOQuery5.FieldValues['SC'];

    Valor:=ADOQuery5.FieldValues['SD'];
    Valor2:=ADOQuery5.FieldValues['SC'];
    QRLabel26.Caption := Format('%16.2n',[Valor]);
    QRLabel27.Caption := Format('%16.2n',[Valor2]);
  End
  Else Begin
    QRLabel26.Caption := '0';
    QRLabel27.Caption := '0';
  End;

  //Saldos Actuales
  ADOQuery5.Close;
  ADOQuery5.SQL.Clear;
  ADOquery5.SQL.Add('SELECT Left(CONTCuenta.Cuenta,2) as Tp, Sum(Saldo_Debito) as SD,Sum(Saldo_Credito) AS SC'+
   '   FROM CONTSaldo RIGHT JOIN CONTCuenta ON CONTSaldo.Cuenta = CONTCuenta.Cuenta'+
   '   WHERE Periodo_Proceso = '+chr(39)+DBLookupComboBox2.Text+chr(39)+
   '      AND CONTCuenta.Estado = '+chr(39)+'A'+chr(39)+' AND Left(CONTCuenta.Cuenta,2) = '+chr(39)+trim(ADOQuery6.FieldValues['Cuenta'])+chr(39)+
   '   GROUP BY Left(CONTCuenta.Cuenta,2)');
   ADOQuery5.Open;
  If ADOQuery5.RecordCount <>0 Then
  Begin
     if ADOQuery5.FieldValues['SD'] <> null then Valor:=ADOQuery5.FieldValues['SD']
     else valor :=0;
     if ADOQuery5.FieldValues['SC'] <> null then Valor2:=ADOQuery5.FieldValues['SC']
     else valor2 :=0;
     IF (Valor - Valor2) > 0 THEN Begin
       Valor  := (Valor - Valor2);
     End
     Else Begin
       Valor := (Valor2 - Valor);
     End;
     QRLabel28.Caption := Format('%16.2n',[Valor]);
   End
   Else Begin
    QRLabel28.Caption := '0';
  End;
end;

procedure TFrmLibroBalancePrueba.QRGroup6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel30.Caption := '0';
  QRLabel32.Caption := '0';
  QRLabel33.Caption := '0';
  QRLabel34.Caption := '0';

  ADOQuery6.Close;
  ADOQuery6.SQL.Clear;
  ADOquery6.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = Left('+chr(39)+trim(ADOQuery1.FieldValues['Cta'])+chr(39)+',4)');
  ADOQuery6.Open;
  if ADOQuery6.RecordCount = 0 then
  Begin
    Showmessage('Error: la Cuenta '+ADOQuery1.FieldValues['Cta']+' No tiene sus cuentas mayores, verifiquelas y genere de nuevo');
    Exit;
  End;

  //Saldos Anteriores
  ADOQuery5.Close;
  ADOQuery5.SQL.Clear;
  ADOquery5.SQL.Add('SELECT Left(CONTCuenta.Cuenta,4) as Tp, Sum(Saldo_Debito) as SD,Sum(Saldo_Credito) AS SC'+
   '   FROM CONTSaldo RIGHT JOIN CONTCuenta ON CONTSaldo.Cuenta = CONTCuenta.Cuenta'+
   '   WHERE Periodo_Proceso = '+chr(39)+Mes_Anterior+chr(39)+
   '      AND CONTCuenta.Estado = '+chr(39)+'A'+chr(39)+' AND Left(CONTCuenta.Cuenta,4) = '+chr(39)+trim(ADOQuery6.FieldValues['Cuenta'])+chr(39)+
   '   GROUP BY Left(CONTCuenta.Cuenta,4)');
  ADOQuery5.Open;
  If ADOQuery5.RecordCount <> 0 Then
  Begin
    if ADOQuery5.FieldValues['SD'] <> null then saldo:= ADOQuery5.FieldValues['SD'];
    if ADOQuery5.FieldValues['SC'] <> null then saldo2:= ADOQuery5.FieldValues['SC'];

    if ADOQuery5.FieldValues['SD'] <> null then Valor:=ADOQuery5.FieldValues['SD']
    else valor :=0;
    if ADOQuery5.FieldValues['SC'] <> null then Valor2:=ADOQuery5.FieldValues['SC']
    else valor2 :=0;
    IF (Valor - Valor2) > 0 THEN Begin
      Valor  := (Valor - Valor2);
    End
    Else Begin
      Valor := (Valor2 - Valor);
    End;
    QRLabel30.Caption := Format('%16.2n',[Valor]);
  End
  Else Begin
    QRLabel30.Caption := '0';
  End;

  //Movimiento
  ADOQuery5.Close;
  ADOQuery5.SQL.Clear;
  ADOquery5.SQL.Add('SELECT Left(CONTCuenta.Cuenta,4) as Tp , Sum(Valor_Debito) as SD,Sum(Valor_Credito) AS SC'+
    ' FROM CONTCuenta,CONTDetComp,CONTEncComp '+
    ' WHERE CONTEncComp.Estado = '+chr(39)+'G'+chr(39)+' AND CONTDetComp.Tipo_Comprobante = CONTEncComp.Tipo_Comprobante AND '+
    '       CONTDetComp.Numero_Comprobante = CONTEncComp.Numero_Comprobante AND '+
    '       CONTCuenta.Cuenta = CONTDetComp.Cuenta AND '+
    '       Left(CONTCuenta.Cuenta,4) = '+chr(39)+trim(ADOQuery6.FieldValues['Cuenta'])+chr(39)+
    '       AND CONTCuenta.Estado = '+chr(39)+'A'+chr(39)+
    ' AND CONTEncComp.Periodo_Proceso >= '+chr(39)+DBLookupComboBox1.Text+chr(39)+
    ' AND CONTEncComp.Periodo_Proceso <= '+chr(39)+DBLookupComboBox2.Text+chr(39)+
    ' GROUP BY Left(CONTCuenta.Cuenta,4) '+
    ' ORDER BY Left(CONTCuenta.Cuenta,4) ');
  ADOQuery5.Open;
  IF ADOQuery5.RecordCount <> 0 Then
  Begin
    if ADOQuery5.FieldValues['SD'] <> null then saldo:= Saldo+ADOQuery5.FieldValues['SD'];
    if ADOQuery5.FieldValues['SC'] <> null then saldo2:= Saldo2+ADOQuery5.FieldValues['SC'];

    Valor:=ADOQuery5.FieldValues['SD'];
    Valor2:=ADOQuery5.FieldValues['SC'];
    QRLabel32.Caption := Format('%16.2n',[Valor]);
    QRLabel33.Caption := Format('%16.2n',[Valor2]);
  End
  Else Begin
    QRLabel32.Caption := '0';
    QRLabel33.Caption := '0';
  End;

  //Saldos Actuales
  ADOQuery5.Close;
  ADOQuery5.SQL.Clear;
  ADOquery5.SQL.Add('SELECT Left(CONTCuenta.Cuenta,4) as Tp, Sum(Saldo_Debito) as SD,Sum(Saldo_Credito) AS SC'+
   '   FROM CONTSaldo RIGHT JOIN CONTCuenta ON CONTSaldo.Cuenta = CONTCuenta.Cuenta'+
   '   WHERE Periodo_Proceso = '+chr(39)+DBLookupComboBox2.Text+chr(39)+
   '      AND CONTCuenta.Estado = '+chr(39)+'A'+chr(39)+' AND Left(CONTCuenta.Cuenta,4) = '+chr(39)+trim(ADOQuery6.FieldValues['Cuenta'])+chr(39)+
   '   GROUP BY Left(CONTCuenta.Cuenta,4)');
   ADOQuery5.Open;
  If ADOQuery5.RecordCount <> 0 Then
  Begin
    if ADOQuery5.FieldValues['SD'] <> null then Valor:=ADOQuery5.FieldValues['SD']
    else valor :=0;
    if ADOQuery5.FieldValues['SC'] <> null then Valor2:=ADOQuery5.FieldValues['SC']
    else valor2 :=0;
    IF (Valor - Valor2) > 0 THEN Begin
      Valor  := (Valor - Valor2);
    End
    Else Begin
      Valor := (Valor2 - Valor);
    End;
    QRLabel34.Caption := Format('%16.2n',[Valor]);
  End
  Else Begin
    QRLabel34.Caption := '0';
  End;

  //Totales
  QRLabel29.Caption := ntsfbg(stf(QRLabel29.Caption) + stf(QRLabel30.Caption));
  QRLabel31.Caption := ntsfbg(stf(QRLabel31.Caption) + stf(QRLabel32.Caption));
  QRLabel35.Caption := ntsfbg(stf(QRLabel35.Caption) + stf(QRLabel33.Caption));
  QRLabel37.Caption := ntsfbg(stf(QRLabel37.Caption) + stf(QRLabel34.Caption));
end;

procedure TFrmLibroBalancePrueba.QRGroup1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabel36.Caption := '0';
  QRLabel38.Caption := '0';
  QRLabel39.Caption := '0';
  QRLabel40.Caption := '0';

  ADOQuery6.Close;
  ADOQuery6.SQL.Clear;
  ADOquery6.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = Left('+chr(39)+trim(ADOQuery1.FieldValues['Cta'])+chr(39)+',6)');
  ADOQuery6.Open;
  if ADOQuery6.RecordCount = 0 then
  Begin
    Showmessage('Error: la Cuenta '+ADOQuery1.FieldValues['Cta']+' No tiene sus cuentas mayores, verifiquelas y genere de nuevo');
    Exit;
  End;

  //Saldos Anteriores
  ADOQuery5.Close;
  ADOQuery5.SQL.Clear;
  ADOquery5.SQL.Add('SELECT Left(CONTCuenta.Cuenta,6) as Tp, Sum(Saldo_Debito) as SD,Sum(Saldo_Credito) AS SC'+
   '   FROM CONTSaldo RIGHT JOIN CONTCuenta ON CONTSaldo.Cuenta = CONTCuenta.Cuenta'+
   '   WHERE Periodo_Proceso = '+chr(39)+Mes_Anterior+chr(39)+
   '      AND CONTCuenta.Estado = '+chr(39)+'A'+chr(39)+' AND Left(CONTCuenta.Cuenta,6) = '+chr(39)+trim(ADOQuery6.FieldValues['Cuenta'])+chr(39)+
   '   GROUP BY Left(CONTCuenta.Cuenta,6)');
  ADOQuery5.Open;
  If ADOQuery5.RecordCount <> 0 Then
  Begin
    if ADOQuery5.FieldValues['SD'] <> null then saldo:= ADOQuery5.FieldValues['SD'];
    if ADOQuery5.FieldValues['SC'] <> null then saldo2:= ADOQuery5.FieldValues['SC'];

    if ADOQuery5.FieldValues['SD'] <> null then Valor:=ADOQuery5.FieldValues['SD']
    else valor :=0;
    if ADOQuery5.FieldValues['SC'] <> null then Valor2:=ADOQuery5.FieldValues['SC']
    else valor2 :=0;
    IF (Valor - Valor2) > 0 THEN Begin
      Valor  := (Valor - Valor2);
    End
    Else Begin
      Valor := (Valor2 - Valor);
    End;
    QRLabel36.Caption := Format('%16.2n',[Valor]);
  End
  Else Begin
    QRLabel36.Caption := '0';
  End;

  //Movimiento
  ADOQuery5.Close;
  ADOQuery5.SQL.Clear;
  ADOquery5.SQL.Add('SELECT Left(CONTCuenta.Cuenta,6) as Tp , Sum(Valor_Debito) as SD,Sum(Valor_Credito) AS SC'+
    ' FROM CONTCuenta,CONTDetComp,CONTEncComp '+
    ' WHERE CONTEncComp.Estado = '+chr(39)+'G'+chr(39)+' AND CONTDetComp.Tipo_Comprobante = CONTEncComp.Tipo_Comprobante AND '+
    '       CONTDetComp.Numero_Comprobante = CONTEncComp.Numero_Comprobante AND '+
    '       CONTCuenta.Cuenta = CONTDetComp.Cuenta AND '+
    '       Left(CONTCuenta.Cuenta,6) = '+chr(39)+trim(ADOQuery6.FieldValues['Cuenta'])+chr(39)+
    '       AND CONTCuenta.Estado = '+chr(39)+'A'+chr(39)+
    ' AND CONTEncComp.Periodo_Proceso >= '+chr(39)+DBLookupComboBox1.Text+chr(39)+
    ' AND CONTEncComp.Periodo_Proceso <= '+chr(39)+DBLookupComboBox2.Text+chr(39)+
    ' GROUP BY Left(CONTCuenta.Cuenta,6) '+
    ' ORDER BY Left(CONTCuenta.Cuenta,6) ');
  ADOQuery5.Open;
  If ADOQuery5.RecordCount <> 0 Then
  Begin
    if ADOQuery5.FieldValues['SD'] <> null then saldo:= Saldo+ADOQuery5.FieldValues['SD'];
    if ADOQuery5.FieldValues['SC'] <> null then saldo2:= Saldo2+ADOQuery5.FieldValues['SC'];

    if ADOQuery5.FieldValues['SD'] <> null then Valor:=ADOQuery5.FieldValues['SD']
    else valor :=0;
    if ADOQuery5.FieldValues['SC'] <> null then Valor2:=ADOQuery5.FieldValues['SC']
    else valor2 :=0;
    QRLabel38.Caption := Format('%16.2n',[Valor]);
    QRLabel39.Caption := Format('%16.2n',[Valor2]);
  End
  Else Begin
    QRLabel38.Caption := '0';
    QRLabel39.Caption := '0';
  End;

  //Saldos Actuales
  ADOQuery5.Close;
  ADOQuery5.SQL.Clear;
  ADOquery5.SQL.Add('SELECT Left(CONTCuenta.Cuenta,6) as Tp, Sum(Saldo_Debito) as SD,Sum(Saldo_Credito) AS SC'+
   '   FROM CONTSaldo RIGHT JOIN CONTCuenta ON CONTSaldo.Cuenta = CONTCuenta.Cuenta'+
   '   WHERE Periodo_Proceso = '+chr(39)+DBLookupComboBox2.Text+chr(39)+
   '      AND CONTCuenta.Estado = '+chr(39)+'A'+chr(39)+' AND Left(CONTCuenta.Cuenta,6) = '+chr(39)+trim(ADOQuery6.FieldValues['Cuenta'])+chr(39)+
   '   GROUP BY Left(CONTCuenta.Cuenta,6)');
  ADOQuery5.Open;
  If ADOQuery5.RecordCount <> 0 Then
  Begin
    if ADOQuery5.FieldValues['SD'] <> null then Valor:=ADOQuery5.FieldValues['SD']
    else valor :=0;
    if ADOQuery5.FieldValues['SC'] <> null then Valor2:=ADOQuery5.FieldValues['SC']
    else valor2 :=0;
    IF (Valor - Valor2) > 0 THEN Begin
      Valor  := (Valor - Valor2);
    End
    Else Begin
      Valor := (Valor2 - Valor);
    End;
    QRLabel40.Caption := Format('%16.2n',[Valor]);
  End
  Else Begin
    QRLabel40.Caption := '0';
  End;

  if checkbox7.Checked = false then
  Begin
    if checkbox3.Checked = true then
    Begin
      if (stf(QRLabel40.Caption) = 0) THEN
      BEGIN
        QRGroup1.Height := 0;
      END
      ELSE BEGIN
        QRGroup1.Height := 14;
      END
    End
    ELSE QRGroup1.Visible := False;
  End;

  //Totales
  QRLabel13.Caption := ntsfbg(stf(QRLabel13.Caption) + stf(QRLabel36.Caption));
  QRLabel17.Caption := ntsfbg(stf(QRLabel17.Caption) + stf(QRLabel38.Caption));
  QRLabel18.Caption := ntsfbg(stf(QRLabel18.Caption) + stf(QRLabel39.Caption));
  QRLabel23.Caption := ntsfbg(stf(QRLabel23.Caption) + stf(QRLabel40.Caption));
end;

procedure TFrmLibroBalancePrueba.QRGroup2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel4.Caption := '0';
  QRLabel5.Caption := '0';
  QRLabel6.Caption := '0';
  QRLabel11.Caption := '0';

  ADOQuery6.Close;
  ADOQuery6.SQL.Clear;
  ADOquery6.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = Left('+chr(39)+trim(ADOQuery1.FieldValues['Cta'])+chr(39)+',8)');
  ADOQuery6.Open;
  if ADOQuery6.RecordCount = 0 then
  Begin
    Showmessage('Error: la Cuenta '+ADOQuery1.FieldValues['Cta']+' No tiene sus cuentas mayores, verifiquelas y genere de nuevo');
    Exit;
  End;

  //Saldos Anteriores
  ADOQuery5.Close;
  ADOQuery5.SQL.Clear;
  ADOquery5.SQL.Add('SELECT Left(CONTCuenta.Cuenta,8) as Tp, Sum(Saldo_Debito) as SD,Sum(Saldo_Credito) AS SC'+
   '   FROM CONTSaldo RIGHT JOIN CONTCuenta ON CONTSaldo.Cuenta = CONTCuenta.Cuenta'+
   '   WHERE Periodo_Proceso = '+chr(39)+Mes_Anterior+chr(39)+
   '      AND CONTCuenta.Estado = '+chr(39)+'A'+chr(39)+' AND Left(CONTCuenta.Cuenta,8) = '+chr(39)+trim(ADOQuery6.FieldValues['Cuenta'])+chr(39)+
   '   GROUP BY Left(CONTCuenta.Cuenta,8)');
  ADOQuery5.Open;
  If ADOQuery5.RecordCount <> 0 Then
  Begin
    if ADOQuery5.FieldValues['SD'] <> null then saldo:= ADOQuery5.FieldValues['SD'];
    if ADOQuery5.FieldValues['SC'] <> null then saldo2:= ADOQuery5.FieldValues['SC'];

    if ADOQuery5.FieldValues['SD'] <> null then Valor:=ADOQuery5.FieldValues['SD']
    else valor :=0;
    if ADOQuery5.FieldValues['SC'] <> null then Valor2:=ADOQuery5.FieldValues['SC']
    else valor2 :=0;
    IF (Valor - Valor2) > 0 THEN Begin
      Valor  := (Valor - Valor2);
    End
    Else Begin
      Valor := (Valor2 - Valor);
    End;
    QRLabel4.Caption := Format('%16.2n',[Valor]);
  End
  Else Begin
    QRLabel4.Caption := '0';
  End;

  //Movimiento
  ADOQuery5.Close;
  ADOQuery5.SQL.Clear;
  ADOquery5.SQL.Add('SELECT Left(CONTCuenta.Cuenta,8) as Tp , Sum(Valor_Debito) as SD,Sum(Valor_Credito) AS SC'+
    ' FROM CONTCuenta,CONTDetComp,CONTEncComp '+
    ' WHERE CONTEncComp.Estado = '+chr(39)+'G'+chr(39)+' AND CONTDetComp.Tipo_Comprobante = CONTEncComp.Tipo_Comprobante AND '+
    '       CONTDetComp.Numero_Comprobante = CONTEncComp.Numero_Comprobante AND '+
    '       CONTCuenta.Cuenta = CONTDetComp.Cuenta AND '+
    '       Left(CONTCuenta.Cuenta,8) = '+chr(39)+trim(ADOQuery6.FieldValues['Cuenta'])+chr(39)+
    '       AND CONTCuenta.Estado = '+chr(39)+'A'+chr(39)+
    ' AND CONTEncComp.Periodo_Proceso >= '+chr(39)+DBLookupComboBox1.Text+chr(39)+
    ' AND CONTEncComp.Periodo_Proceso <= '+chr(39)+DBLookupComboBox2.Text+chr(39)+
    ' GROUP BY Left(CONTCuenta.Cuenta,8) '+
    ' ORDER BY Left(CONTCuenta.Cuenta,8) ');
  ADOQuery5.Open;
  If ADOQuery5.RecordCount <> 0 Then
  Begin
    if ADOQuery5.FieldValues['SD'] <> null then saldo:= Saldo+ADOQuery5.FieldValues['SD'];
    if ADOQuery5.FieldValues['SC'] <> null then saldo2:= Saldo2+ADOQuery5.FieldValues['SC'];

    if ADOQuery5.FieldValues['SD'] <> null then Valor:=ADOQuery5.FieldValues['SD']
    else valor :=0;
    if ADOQuery5.FieldValues['SC'] <> null then Valor2:=ADOQuery5.FieldValues['SC']
    else valor2 :=0;
    QRLabel5.Caption := Format('%16.2n',[Valor]);
    QRLabel6.Caption := Format('%16.2n',[Valor2]);
  End
  Else Begin
    QRLabel5.Caption := '0';
    QRLabel6.Caption := '0';
  End;

  //Saldos Actuales
  ADOQuery5.Close;
  ADOQuery5.SQL.Clear;
  ADOquery5.SQL.Add('SELECT Left(CONTCuenta.Cuenta,8) as Tp, Sum(Saldo_Debito) as SD,Sum(Saldo_Credito) AS SC'+
   '   FROM CONTSaldo RIGHT JOIN CONTCuenta ON CONTSaldo.Cuenta = CONTCuenta.Cuenta'+
   '   WHERE Periodo_Proceso = '+chr(39)+DBLookupComboBox2.Text+chr(39)+
   '      AND CONTCuenta.Estado = '+chr(39)+'A'+chr(39)+' AND Left(CONTCuenta.Cuenta,8) = '+chr(39)+trim(ADOQuery6.FieldValues['Cuenta'])+chr(39)+
   '   GROUP BY Left(CONTCuenta.Cuenta,8)');
  ADOQuery5.Open;
  If ADOQuery5.RecordCount <> 0 Then
  Begin
    if ADOQuery5.FieldValues['SD'] <> null then Valor:=ADOQuery5.FieldValues['SD']
    else valor :=0;
    if ADOQuery5.FieldValues['SC'] <> null then Valor2:=ADOQuery5.FieldValues['SC']
    else valor2 :=0;
    IF (Valor - Valor2) > 0 THEN Begin
      Valor  := (Valor - Valor2);
    End
    Else Begin
      Valor := (Valor2 - Valor);
    End;
    QRLabel11.Caption := Format('%16.2n',[Valor]);
  End
  Else Begin
    QRLabel11.Caption := '0';
  End;

  if checkbox7.Checked = false then
  Begin
    if checkbox4.Checked = true then
    Begin
      if (stf(QRLabel11.Caption) = 0) THEN
      BEGIN
        QRGroup2.Height := 0;
      END
      ELSE BEGIN
        QRGroup2.Height := 14;
      END
    End
    ELSE QRGroup2.Visible := False;
  End;

end;

procedure TFrmLibroBalancePrueba.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  //Totales
  QRLabel13.Caption := '0';
  QRLabel17.Caption := '0';
  QRLabel18.Caption := '0';
  QRLabel23.Caption := '0';
end;

procedure TFrmLibroBalancePrueba.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if checkbox7.Checked = false then
  Begin
    if checkbox4.Checked = true then
    Begin
      if (stf(QRLabel23.Caption) = 0) THEN
      BEGIN
        QRBand1.Height := 0;
      END
      ELSE BEGIN
        QRBand1.Height := 22;
      END
    End
    ELSE QRBand1.Visible := False;
  End;
end;

procedure TFrmLibroBalancePrueba.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 QRLabel42.Caption := '0';
 QRLabel44.Caption := '0';
 QRLabel45.Caption := '0';
 QRLabel46.Caption := '0';

 If ADOQuery1.FieldValues['Numero_Documento'] <> null Then
 Begin
  ADOQuery6.Close;
  ADOQuery6.SQL.Clear;
  ADOquery6.SQL.Add('SELECT * FROM CONTTerce WHERE Numero_Documento = '+chr(39)+trim(ADOQuery1.FieldValues['Numero_Documento'])+chr(39));
  ADOQuery6.Open;
    if ADOQuery6.RecordCount = 0 then
  Begin
    Showmessage('Error: la Cuenta '+ADOQuery1.FieldValues['Cta']+' No tiene sus cuentas mayores, verifiquelas y genere de nuevo');
    Exit;
  End;

  //Saldos Anteriores
  ADOQuery5.Close;
  ADOQuery5.SQL.Clear;
  ADOquery5.SQL.Add('SELECT CONTSaldo.Cuenta,CONTSaldo.Tercero, Sum(Saldo_Debito) as SD,Sum(Saldo_Credito) AS SC'+
   '   FROM CONTSaldo RIGHT JOIN CONTCuenta ON CONTSaldo.Cuenta = CONTCuenta.Cuenta'+
   '   WHERE Periodo_Proceso = '+chr(39)+Mes_Anterior+chr(39)+
   '      AND CONTSaldo.Cuenta = '+chr(39)+trim(ADOQuery1.FieldValues['Cta'])+chr(39)+
   '      AND CONTCuenta.Estado = '+chr(39)+'A'+chr(39)+' AND CONTSaldo.Tercero = '+chr(39)+trim(ADOQuery6.FieldValues['Numero_Documento'])+trim(ADOQuery6.FieldValues['Sucursal'])+chr(39)+
   '   GROUP BY CONTSaldo.Cuenta,CONTSaldo.Tercero');
  ADOQuery5.Open;
  If ADOQuery5.RecordCount <> 0 Then
  Begin
    if ADOQuery5.FieldValues['SD'] <> null then saldo:= ADOQuery5.FieldValues['SD'];
    if ADOQuery5.FieldValues['SC'] <> null then saldo2:= ADOQuery5.FieldValues['SC'];

    if ADOQuery5.FieldValues['SD'] <> null then Valor:=ADOQuery5.FieldValues['SD']
    else valor :=0;
    if ADOQuery5.FieldValues['SC'] <> null then Valor2:=ADOQuery5.FieldValues['SC']
    else valor2 :=0;
    IF (Valor - Valor2) > 0 THEN Begin
      Valor  := (Valor - Valor2);
    End
    Else Begin
      Valor := (Valor2 - Valor);
    End;
    QRLabel42.Caption := Format('%16.2n',[Valor]);
  End
  Else Begin
    QRLabel42.Caption := '0';
  End;

  //Movimiento
  ADOQuery5.Close;
  ADOQuery5.SQL.Clear;
  ADOquery5.SQL.Add('SELECT Cuenta, Tercero, Sum(Valor_Debito) as SD,Sum(Valor_Credito) AS SC'+
    ' FROM CONTDetComp,CONTEncComp '+
    ' WHERE CONTEncComp.Estado = '+chr(39)+'G'+chr(39)+' AND CONTDetComp.Tipo_Comprobante = CONTEncComp.Tipo_Comprobante AND '+
    '       CONTDetComp.Numero_Comprobante = CONTEncComp.Numero_Comprobante AND '+
    '       Cuenta = '+chr(39)+trim(ADOQuery1.FieldValues['Cta'])+chr(39)+
    '       AND Tercero = '+chr(39)+trim(ADOQuery6.FieldValues['Numero_Documento'])+trim(ADOQuery6.FieldValues['Sucursal'])+chr(39)+
    '       AND CONTEncComp.Periodo_Proceso = '+chr(39)+DBLookupComboBox1.Text+chr(39)+
    ' GROUP BY Cuenta,Tercero '+
    ' ORDER BY Cuenta,Tercero ');
  ADOQuery5.Open;
  If ADOQuery5.RecordCount <> 0 Then
  Begin
    if ADOQuery5.FieldValues['SD'] <> null then saldo:= Saldo+ADOQuery5.FieldValues['SD'];
    if ADOQuery5.FieldValues['SC'] <> null then saldo2:= Saldo2+ADOQuery5.FieldValues['SC'];

    Valor:=ADOQuery5.FieldValues['SD'];
    Valor2:=ADOQuery5.FieldValues['SC'];
    QRLabel44.Caption := Format('%16.2n',[Valor]);
    QRLabel45.Caption := Format('%16.2n',[Valor2]);
  End
  Else Begin
    QRLabel44.Caption := '0';
    QRLabel45.Caption := '0';
  End;

  //Saldos Actuales
  ADOQuery5.Close;
  ADOQuery5.SQL.Clear;
  ADOquery5.SQL.Add('SELECT CONTSaldo.Cuenta,CONTSaldo.Tercero, Sum(Saldo_Debito) as SD,Sum(Saldo_Credito) AS SC'+
   '   FROM CONTSaldo RIGHT JOIN CONTCuenta ON CONTSaldo.Cuenta = CONTCuenta.Cuenta'+
   '   WHERE Periodo_Proceso = '+chr(39)+DBLookupComboBox1.Text+chr(39)+
   '      AND CONTSaldo.Cuenta = '+chr(39)+trim(ADOQuery1.FieldValues['Cta'])+chr(39)+
   '      AND CONTCuenta.Estado = '+chr(39)+'A'+chr(39)+' AND CONTSaldo.Tercero = '+chr(39)+trim(ADOQuery6.FieldValues['Numero_Documento'])+trim(ADOQuery6.FieldValues['Sucursal'])+chr(39)+
   '   GROUP BY CONTSaldo.Cuenta,CONTSaldo.Tercero');
  ADOQuery5.Open;
  If ADOQuery5.RecordCount <> 0 Then
  Begin
    if ADOQuery5.FieldValues['SD'] <> null then Valor:=ADOQuery5.FieldValues['SD']
    else valor :=0;
    if ADOQuery5.FieldValues['SC'] <> null then Valor2:=ADOQuery5.FieldValues['SC']
    else valor2 :=0;
    IF (Valor - Valor2) > 0 THEN Begin
      Valor  := (Valor - Valor2);
    End
    Else Begin
      Valor := (Valor2 - Valor);
    End;
    QRLabel46.Caption := Format('%16.2n',[Valor]);
  End
  Else Begin
    QRLabel46.Caption := '0';
  End;
 End;

  if checkbox5.Checked = true then
  Begin
    if (stf(QRLabel42.Caption) = 0) AND
       (stf(QRLabel44.Caption) = 0) AND
       (stf(QRLabel45.Caption) = 0) AND
       (stf(QRLabel46.Caption) = 0) THEN
    BEGIN
      QRBand2.Height := 0;
    END
    ELSE BEGIN
      QRBand2.Height := 14;
    END
  End
  ELSE QRBand2.Visible := False;
end;

procedure TFrmLibroBalancePrueba.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   Qrlabel50.Caption := Format('%16.2n',[strtocurr(Qrlabel50.Caption)]);
   Qrlabel51.Caption := Format('%16.2n',[strtocurr(Qrlabel51.Caption)]);
end;

procedure TFrmLibroBalancePrueba.QRBand4AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QRLabel29.Caption := '0';
  QRLabel31.Caption := '0';
  QRLabel35.Caption := '0';
  QRLabel37.Caption := '0';
end;

procedure TFrmLibroBalancePrueba.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if checkbox7.Checked = false then
  Begin
    if checkbox3.Checked = true then
    Begin
      if (stf(QRLabel37.Caption) = 0) THEN
      BEGIN
        QRBand4.Height := 0;
      END
      ELSE BEGIN
        QRBand4.Height := 22;
      END
    End
    ELSE QRBand4.Visible := False;
  End;

end;

procedure TFrmLibroBalancePrueba.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
   Qrlabel50.Caption := '0';
   Qrlabel51.Caption := '0';
end;

end.
