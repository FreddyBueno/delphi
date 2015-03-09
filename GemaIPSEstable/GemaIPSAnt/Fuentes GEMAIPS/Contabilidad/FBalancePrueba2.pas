unit FBalancePrueba2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, DBCtrls, QuickRpt, QRCtrls, ExtCtrls,
  Grids, DBGrids, QRExport,StrUtils,shellapi,DateUtils;

type
  TFrmLibroBalancePrueba2 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand3: TQRBand;
    QRShape2: TQRShape;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel11: TQRLabel;
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
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRGroup4: TQRGroup;
    QRGroup5: TQRGroup;
    QRGroup6: TQRGroup;
    QRGroup1: TQRGroup;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRShape3: TQRShape;
    QRDBImage1: TQRDBImage;
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

 {   procedure CheckBox1Click(Sender: TObject);    }
   { procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);    }
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLibroBalancePrueba2: TFrmLibroBalancePrueba2;
  Saldo,saldo2:Double;
  Mes_Actual,Mes_Anterior:String;
  Valor,Valor2:Currency;
  filestream:tfilestream;
  iex:integer;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TFrmLibroBalancePrueba2.Button1Click(Sender: TObject);
begin
  Qrlabel48.Caption := '0';
  Qrlabel49.Caption := '0';
  Qrlabel50.Caption := '0';
  Qrlabel51.Caption := '0';
  Qrlabel52.Caption := '0';
  Qrlabel53.Caption := '0';

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

 Saldo2:=0;
 QRLabel9.Caption:=DBLookupComboBox1.keyvalue;

 ADOQuery1.Close;
 ADOQuery1.Parameters.ParamValues['per']:= DBLookupComboBox1.keyvalue;
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
  '   WHERE Periodo_Proceso = '+chr(39)+DBLookupComboBox1.Text+chr(39)+
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

procedure TFrmLibroBalancePrueba2.FormCreate(Sender: TObject);
begin
  adoquery3.Open;
end;

procedure TFrmLibroBalancePrueba2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrmLibroBalancePrueba2.QRGroup4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel15.Caption := '0';
  QRLabel18.Caption := '0';
  QRLabel19.Caption := '0';
  QRLabel21.Caption := '0';
  QRLabel22.Caption := '0';
  QRLabel23.Caption := '0';

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
    Valor2 := 0;
  End
  Else Begin
    Valor2 := (Valor2 - Valor);
    Valor  := 0;
  End;
  QRLabel15.Caption := Format('%16.2n',[Valor]);
  QRLabel18.Caption := Format('%16.2n',[Valor2]);
  Qrlabel48.Caption := currtostr(strtocurr(Qrlabel48.Caption) + valor);
  Qrlabel49.Caption := currtostr(strtocurr(Qrlabel49.Caption) + valor2);

  //Movimiento
  ADOQuery5.Close;
  ADOQuery5.SQL.Clear;
  ADOquery5.SQL.Add('SELECT Left(CONTCuenta.Cuenta,1) as Tp , Sum(Valor_Debito) as SD,Sum(Valor_Credito) AS SC'+
    ' FROM CONTCuenta,CONTDetComp,CONTEncComp '+
    ' WHERE CONTEncComp.Estado = '+chr(39)+'G'+chr(39)+' AND CONTDetComp.Tipo_Comprobante = CONTEncComp.Tipo_Comprobante AND '+
    '       CONTDetComp.Numero_Comprobante = CONTEncComp.Numero_Comprobante AND '+
    '       CONTCuenta.Cuenta = CONTDetComp.Cuenta AND '+
    '       Left(CONTCuenta.Cuenta,1) = '+chr(39)+trim(ADOQuery6.FieldValues['Cuenta'])+chr(39)+
    '       AND CONTEncComp.Periodo_Proceso = '+chr(39)+DBLookupComboBox1.Text+chr(39)+
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
   '   WHERE Periodo_Proceso = '+chr(39)+DBLookupComboBox1.Text+chr(39)+
   '      AND CONTCuenta.Estado = '+chr(39)+'A'+chr(39)+' AND Left(CONTCuenta.Cuenta,1) = '+chr(39)+trim(ADOQuery6.FieldValues['Cuenta'])+chr(39)+
   '   GROUP BY Left(CONTCuenta.Cuenta,1)');
   ADOQuery5.Open;

   if ADOQuery5.FieldValues['SD'] <> null then Valor:=ADOQuery5.FieldValues['SD']
   else valor :=0;
   if ADOQuery5.FieldValues['SC'] <> null then Valor2:=ADOQuery5.FieldValues['SC']
   else valor2 :=0;
   IF (Valor - Valor2) > 0 THEN Begin
     Valor  := (Valor - Valor2);
     Valor2 := 0;
   End
   Else Begin
     Valor2 := (Valor2 - Valor);
     Valor  := 0;
   End;
   QRLabel22.Caption := Format('%16.2n',[Valor]);
   QRLabel23.Caption := Format('%16.2n',[Valor2]);
   Qrlabel52.Caption := currtostr(strtocurr(Qrlabel52.Caption) + valor);
   Qrlabel53.Caption := currtostr(strtocurr(Qrlabel53.Caption) + valor2);
end;

procedure TFrmLibroBalancePrueba2.QRGroup5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel24.Caption := '0';
  QRLabel25.Caption := '0';
  QRLabel26.Caption := '0';
  QRLabel27.Caption := '0';
  QRLabel28.Caption := '0';
  QRLabel29.Caption := '0';

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
      Valor2 := 0;
    End
    Else Begin
      Valor2 := (Valor2 - Valor);
      Valor  := 0;
    End;
    QRLabel24.Caption := Format('%16.2n',[Valor]);
    QRLabel25.Caption := Format('%16.2n',[Valor2]);
  End
  Else Begin
    QRLabel24.Caption := '0';
    QRLabel25.Caption := '0';
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
    '       AND CONTCuenta.Estado = '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Periodo_Proceso = '+chr(39)+DBLookupComboBox1.Text+chr(39)+
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
   '   WHERE Periodo_Proceso = '+chr(39)+DBLookupComboBox1.Text+chr(39)+
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
       Valor2 := 0;
     End
     Else Begin
       Valor2 := (Valor2 - Valor);
       Valor  := 0;
     End;
     QRLabel28.Caption := Format('%16.2n',[Valor]);
     QRLabel29.Caption := Format('%16.2n',[Valor2]);
   End
   Else Begin
    QRLabel28.Caption := '0';
    QRLabel29.Caption := '0';
  End;
end;

procedure TFrmLibroBalancePrueba2.QRGroup6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel30.Caption := '0';
  QRLabel31.Caption := '0';
  QRLabel32.Caption := '0';
  QRLabel33.Caption := '0';
  QRLabel34.Caption := '0';
  QRLabel35.Caption := '0';

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
      Valor2 := 0;
    End
    Else Begin
      Valor2 := (Valor2 - Valor);
      Valor  := 0;
    End;
    QRLabel30.Caption := Format('%16.2n',[Valor]);
    QRLabel31.Caption := Format('%16.2n',[Valor2]);
  End
  Else Begin
    QRLabel30.Caption := '0';
    QRLabel31.Caption := '0';
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
    '       AND CONTCuenta.Estado = '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Periodo_Proceso = '+chr(39)+DBLookupComboBox1.Text+chr(39)+
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
   '   WHERE Periodo_Proceso = '+chr(39)+DBLookupComboBox1.Text+chr(39)+
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
      Valor2 := 0;
    End
    Else Begin
      Valor2 := (Valor2 - Valor);
      Valor  := 0;
    End;
    QRLabel34.Caption := Format('%16.2n',[Valor]);
    QRLabel35.Caption := Format('%16.2n',[Valor2]);
  End
  Else Begin
    QRLabel34.Caption := '0';
    QRLabel35.Caption := '0';
  End;
end;

procedure TFrmLibroBalancePrueba2.QRGroup1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabel36.Caption := '0';
  QRLabel37.Caption := '0';
  QRLabel38.Caption := '0';
  QRLabel39.Caption := '0';
  QRLabel40.Caption := '0';
  QRLabel41.Caption := '0';

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
  ADOquery5.SQL.Add('SELECT CONTCuenta.Cuenta as Tp, Sum(Saldo_Debito) as SD,Sum(Saldo_Credito) AS SC'+
   '   FROM CONTSaldo RIGHT JOIN CONTCuenta ON CONTSaldo.Cuenta = CONTCuenta.Cuenta'+
   '   WHERE Periodo_Proceso = '+chr(39)+Mes_Anterior+chr(39)+
   '      AND CONTCuenta.Estado = '+chr(39)+'A'+chr(39)+' AND CONTCuenta.Cuenta = '+chr(39)+trim(ADOQuery6.FieldValues['Cuenta'])+chr(39)+
   '   GROUP BY CONTCuenta.Cuenta');
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
      Valor2 := 0;
    End
    Else Begin
      Valor2 := (Valor2 - Valor);
      Valor  := 0;
    End;
    QRLabel36.Caption := Format('%16.2n',[Valor]);
    QRLabel37.Caption := Format('%16.2n',[Valor2]);
  End
  Else Begin
    QRLabel36.Caption := '0';
    QRLabel37.Caption := '0';
  End;

  //Movimiento
  ADOQuery5.Close;
  ADOQuery5.SQL.Clear;
  ADOquery5.SQL.Add('SELECT CONTCuenta.Cuenta as Tp , Sum(Valor_Debito) as SD,Sum(Valor_Credito) AS SC'+
    ' FROM CONTCuenta,CONTDetComp,CONTEncComp '+
    ' WHERE CONTEncComp.Estado = '+chr(39)+'G'+chr(39)+' AND CONTDetComp.Tipo_Comprobante = CONTEncComp.Tipo_Comprobante AND '+
    '       CONTDetComp.Numero_Comprobante = CONTEncComp.Numero_Comprobante AND '+
    '       CONTCuenta.Cuenta = CONTDetComp.Cuenta AND '+
    '       CONTCuenta.Cuenta = '+chr(39)+trim(ADOQuery6.FieldValues['Cuenta'])+chr(39)+
    '       AND CONTCuenta.Estado = '+chr(39)+'A'+chr(39)+' AND CONTEncComp.Periodo_Proceso = '+chr(39)+DBLookupComboBox1.Text+chr(39)+
    ' GROUP BY CONTCuenta.Cuenta '+
    ' ORDER BY CONTCuenta.Cuenta ');
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
  ADOquery5.SQL.Add('SELECT CONTCuenta.Cuenta as Tp, Sum(Saldo_Debito) as SD,Sum(Saldo_Credito) AS SC'+
   '   FROM CONTSaldo RIGHT JOIN CONTCuenta ON CONTSaldo.Cuenta = CONTCuenta.Cuenta'+
   '   WHERE Periodo_Proceso = '+chr(39)+DBLookupComboBox1.Text+chr(39)+
   '      AND CONTCuenta.Estado = '+chr(39)+'A'+chr(39)+' AND CONTCuenta.Cuenta = '+chr(39)+trim(ADOQuery6.FieldValues['Cuenta'])+chr(39)+
   '   GROUP BY CONTCuenta.Cuenta');
  ADOQuery5.Open;
  If ADOQuery5.RecordCount <> 0 Then
  Begin
    if ADOQuery5.FieldValues['SD'] <> null then Valor:=ADOQuery5.FieldValues['SD']
    else valor :=0;
    if ADOQuery5.FieldValues['SC'] <> null then Valor2:=ADOQuery5.FieldValues['SC']
    else valor2 :=0;
    IF (Valor - Valor2) > 0 THEN Begin
      Valor  := (Valor - Valor2);
      Valor2 := 0;
    End
    Else Begin
      Valor2 := (Valor2 - Valor);
      Valor  := 0;
    End;
    QRLabel40.Caption := Format('%16.2n',[Valor]);
    QRLabel41.Caption := Format('%16.2n',[Valor2]);
  End
  Else Begin
    QRLabel40.Caption := '0';
    QRLabel41.Caption := '0';
  End;
end;

procedure TFrmLibroBalancePrueba2.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel42.Caption := '0';
  QRLabel43.Caption := '0';
  QRLabel44.Caption := '0';
  QRLabel45.Caption := '0';
  QRLabel46.Caption := '0';
  QRLabel47.Caption := '0';

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
   '      AND CONTCuenta.Estado = '+chr(39)+'A'+chr(39)+' AND CONTSaldo.Tercero = '+chr(39)+trim(ADOQuery6.FieldValues['Numero_Documento'])+chr(39)+
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
      Valor2 := 0;
    End
    Else Begin
      Valor2 := (Valor2 - Valor);
      Valor  := 0;
    End;
    QRLabel42.Caption := Format('%16.2n',[Valor]);
    QRLabel43.Caption := Format('%16.2n',[Valor2]);
  End
  Else Begin
    QRLabel42.Caption := '0';
    QRLabel43.Caption := '0';
  End;

  //Movimiento
  ADOQuery5.Close;
  ADOQuery5.SQL.Clear;
  ADOquery5.SQL.Add('SELECT Cuenta, Tercero, Sum(Valor_Debito) as SD,Sum(Valor_Credito) AS SC'+
    ' FROM CONTDetComp,CONTEncComp '+
    ' WHERE CONTEncComp.Estado = '+chr(39)+'G'+chr(39)+' AND CONTDetComp.Tipo_Comprobante = CONTEncComp.Tipo_Comprobante AND '+
    '       CONTDetComp.Numero_Comprobante = CONTEncComp.Numero_Comprobante AND '+
    '       Cuenta = '+chr(39)+trim(ADOQuery1.FieldValues['Cta'])+chr(39)+
    '       AND Tercero = '+chr(39)+trim(ADOQuery6.FieldValues['Numero_Documento'])+chr(39)+
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
   '      AND CONTCuenta.Estado = '+chr(39)+'A'+chr(39)+' AND CONTSaldo.Tercero = '+chr(39)+trim(ADOQuery6.FieldValues['Numero_Documento'])+chr(39)+
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
      Valor2 := 0;
    End
    Else Begin
      Valor2 := (Valor2 - Valor);
      Valor  := 0;
    End;
    QRLabel46.Caption := Format('%16.2n',[Valor]);
    QRLabel47.Caption := Format('%16.2n',[Valor2]);
  End
  Else Begin
    QRLabel46.Caption := '0';
    QRLabel47.Caption := '0';
  End;
 End;
end;

procedure TFrmLibroBalancePrueba2.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   Qrlabel48.Caption := Format('%16.2n',[strtocurr(Qrlabel48.Caption)]);
   Qrlabel49.Caption := Format('%16.2n',[strtocurr(Qrlabel49.Caption)]);
   Qrlabel50.Caption := Format('%16.2n',[strtocurr(Qrlabel50.Caption)]);
   Qrlabel51.Caption := Format('%16.2n',[strtocurr(Qrlabel51.Caption)]);
   Qrlabel52.Caption := Format('%16.2n',[strtocurr(Qrlabel52.Caption)]);
   Qrlabel53.Caption := Format('%16.2n',[strtocurr(Qrlabel53.Caption)]);
end;

procedure TFrmLibroBalancePrueba2.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
   Qrlabel48.Caption := '0';
   Qrlabel49.Caption := '0';
   Qrlabel50.Caption := '0';
   Qrlabel51.Caption := '0';
   Qrlabel52.Caption := '0';
   Qrlabel53.Caption := '0';
end;

end.
