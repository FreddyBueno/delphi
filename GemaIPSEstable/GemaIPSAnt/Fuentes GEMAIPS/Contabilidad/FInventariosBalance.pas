unit FInventariosBalance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, DBCtrls, QuickRpt, QRCtrls, ExtCtrls,
  Grids, DBGrids, QRExport,StrUtils,shellapi,DateUtils;

type
  TFrmLibroInventariosBalance = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    ADOQuery3: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery5: TADOQuery;
    GroupBox2: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    ADOQuery6: TADOQuery;
    QuickRep1: TQuickRep;
    QRBand3: TQRBand;
    QRShape2: TQRShape;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel14: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRExpr1: TQRExpr;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRGroup4: TQRGroup;
    QRExpr8: TQRExpr;
    QRDBText3: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRGroup5: TQRGroup;
    QRExpr9: TQRExpr;
    QRDBText4: TQRDBText;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRGroup6: TQRGroup;
    QRExpr10: TQRExpr;
    QRDBText5: TQRDBText;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRGroup1: TQRGroup;
    QRExpr6: TQRExpr;
    QRDBText6: TQRDBText;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
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

 {   procedure CheckBox1Click(Sender: TObject);    }
   { procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);    }
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLibroInventariosBalance: TFrmLibroInventariosBalance;
  Saldo,saldo2:Extended;
  Mes_Actual,Mes_Anterior:String;
  Valor,Valor2:Currency;
  filestream:tfilestream;
  iex:integer;

implementation

uses UDataModule1,Libreria_Prateinco;

{$R *.dfm}

procedure TFrmLibroInventariosBalance.Button1Click(Sender: TObject);
begin
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

procedure TFrmLibroInventariosBalance.FormCreate(Sender: TObject);
begin
  adoquery3.Open;
end;

procedure TFrmLibroInventariosBalance.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrmLibroInventariosBalance.QRGroup4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel22.Caption := '';
  QRLabel23.Caption := '';

  ADOQuery6.Close;
  ADOQuery6.SQL.Clear;
  ADOquery6.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = Left('+chr(39)+trim(ADOQuery1.FieldValues['Cta'])+chr(39)+',1)');
  ADOQuery6.Open;

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
   Qrlabel52.Caption := currtostr(stf(Qrlabel52.Caption) + valor);
   Qrlabel53.Caption := currtostr(stf(Qrlabel53.Caption) + valor2);
end;

procedure TFrmLibroInventariosBalance.QRGroup5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel28.Caption := '';
  QRLabel29.Caption := '';

  ADOQuery6.Close;
  ADOQuery6.SQL.Clear;
  ADOquery6.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = Left('+chr(39)+trim(ADOQuery1.FieldValues['Cta'])+chr(39)+',2)');
  ADOQuery6.Open;

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
    QRLabel28.Caption := '';
    QRLabel29.Caption := '';
  End;
end;

procedure TFrmLibroInventariosBalance.QRGroup6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel34.Caption := '';
  QRLabel35.Caption := '';

  ADOQuery6.Close;
  ADOQuery6.SQL.Clear;
  ADOquery6.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = Left('+chr(39)+trim(ADOQuery1.FieldValues['Cta'])+chr(39)+',4)');
  ADOQuery6.Open;

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
    QRLabel34.Caption := '';
    QRLabel35.Caption := '';
  End;
end;

procedure TFrmLibroInventariosBalance.QRGroup1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabel40.Caption := '';
  QRLabel41.Caption := '';

  ADOQuery6.Close;
  ADOQuery6.SQL.Clear;
  ADOquery6.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = '+chr(39)+trim(ADOQuery1.FieldValues['Cta'])+chr(39));
  ADOQuery6.Open;

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
    QRLabel40.Caption := '';
    QRLabel41.Caption := '';
  End;
end;

procedure TFrmLibroInventariosBalance.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel46.Caption := '';
  QRLabel47.Caption := '';

 If ADOQuery1.FieldValues['Numero_Documento'] <> null Then
 Begin
  ADOQuery6.Close;
  ADOQuery6.SQL.Clear;
  ADOquery6.SQL.Add('SELECT * FROM CONTTerce WHERE Numero_Documento = '+chr(39)+trim(ADOQuery1.FieldValues['Numero_Documento'])+chr(39));
  ADOQuery6.Open;

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
    QRLabel46.Caption := '';
    QRLabel47.Caption := '';
  End;
 End;
end;

procedure TFrmLibroInventariosBalance.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   Qrlabel52.Caption := Format('%16.2n',[stf(Qrlabel52.Caption)]);
   Qrlabel53.Caption := Format('%16.2n',[stf(Qrlabel53.Caption)]);
end;

end.
