unit FAuxiliarCtaTercero;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, DBCtrls, QRCtrls, QuickRpt, ExtCtrls,StrUtils,DateUtils;

type
  TFrmLibroAuxiliarCtaTercero = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel13: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRExpr1: TQRExpr;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery4: TADOQuery;
    DataSource2: TDataSource;
    QRFooter: TQRBand;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel14: TQRLabel;
    ADOQuery5: TADOQuery;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel20: TQRLabel;
    ADOQuery6: TADOQuery;
    DataSource3: TDataSource;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRShape2: TQRShape;
    QRLabel25: TQRLabel;
    QRBand1: TQRBand;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    ADOQuery7: TADOQuery;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    Label4: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRDBImage1: TQRDBImage;
    ADOQuery8: TADOQuery;
    DataSource4: TDataSource;
    ADOQuery9: TADOQuery;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    ADOQuery10: TADOQuery;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    CheckBox3: TCheckBox;
    CheckBox1: TCheckBox;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    CheckBox2: TCheckBox;
    CheckBox4: TCheckBox;
    Edit1: TEdit;
    Label5: TLabel;
    Edit2: TEdit;
    Label7: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Edit4: TEdit;
    Label10: TLabel;
    QRLabel40: TQRLabel;
    CheckBox5: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRFooterBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLibroAuxiliarCtaTercero: TFrmLibroAuxiliarCtaTercero;
  Mes_Actual,Mes_Anterior:string;
  saldototal:currency;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TFrmLibroAuxiliarCtaTercero.FormCreate(Sender: TObject);
begin
    adoquery3.Open;
    adoquery4.Open;
    ADOQuery6.Open;
    adoquery8.Open;
    adoquery9.Open;
    ADOQuery10.Open;
end;

procedure TFrmLibroAuxiliarCtaTercero.CheckBox1Click(Sender: TObject);
begin
  if checkbox1.Checked then
  Begin
    Label3.Visible := False;
    Label5.Visible := False;
    Edit1.Visible := False;

    Label9.Visible := False;
    Label10.Visible := False;
    Edit4.Visible := False;
  End
  Else Begin
    Label3.Visible := True;
    Label5.Visible := True;
    Edit1.Visible := True;

    Label9.Visible := True;
    Label10.Visible := True;
    Edit4.Visible := True;
  End;
end;

procedure TFrmLibroAuxiliarCtaTercero.CheckBox4Click(Sender: TObject);
begin
  if checkbox4.Checked then
  Begin
    Label2.Visible := False;
    Label7.Visible := False;
    Edit2.Visible := False;

    Label6.Visible := False;
    Label8.Visible := False;
    Edit3.Visible := False;
  End
  Else Begin
    Label2.Visible := True;
    Label7.Visible := True;
    Edit2.Visible := True;

    Label6.Visible := True;
    Label8.Visible := True;
    Edit3.Visible := True;
  End;
end;

procedure TFrmLibroAuxiliarCtaTercero.CheckBox5Click(Sender: TObject);
begin
  if checkbox5.Checked then
  Begin
    QRBand2.Enabled := True;
  End
  Else Begin
    QRBand2.Enabled := False;
  End;
end;

procedure TFrmLibroAuxiliarCtaTercero.Edit2Change(Sender: TObject);
begin
  if Edit2.Text <> '' then Edit3.Text := '';  
end;

procedure TFrmLibroAuxiliarCtaTercero.Edit3Change(Sender: TObject);
begin
  if Edit3.Text <> '' then Edit2.Text := '';
end;

procedure TFrmLibroAuxiliarCtaTercero.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action :=  caFree;
end;

procedure TFrmLibroAuxiliarCtaTercero.Button1Click(Sender: TObject);
begin
  QRLabel9.Caption:=DBLookupComboBox1.keyvalue + ' - ' +DBLookupComboBox4.keyvalue;
  ADOQuery1.Filtered := False;
  ADOQuery2.Filtered := False;

  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT contenccomp.empresa as empresa,contenccomp.area as area,contenccomp.Tipo_Comprobante, contenccomp.Numero_Comprobante, contenccomp.Fecha_Comprobante, contenccomp.Descripcion, contenccomp.Periodo_Proceso, ');
  ADOQuery1.SQL.Add(' contdetcomp.Cuenta AS Cuenta, contdetcomp.Tercero AS Tercero, contdetcomp.Centro_Costo AS Centro_Costo, contdetcomp.Valor_Debito AS Valor_Debito, contdetcomp.Valor_Credito AS Valor_Credito, ');
  ADOQuery1.SQL.Add(' contcuenta.Descripcion AS Descripcion_1, contterce.Primer_Apellido +'+chr(39)+' '+chr(39)+'+ contterce.Primer_Nombre AS Nombre,contcuenta.naturaleza as naturaleza ');
  ADOQuery1.SQL.Add(' FROM  contterce left outer join contcuenta on ');
  ADOQuery1.SQL.Add('   contdetcomp.Tercero = contterce.Numero_Documento + contterce.sucursal ');

  ADOQuery1.SQL.Add(' inner join contdetcomp on ');
  ADOQuery1.SQL.Add('    contdetcomp.Cuenta = contcuenta.Cuenta ');

  ADOQuery1.SQL.Add(' inner join contenccomp  on ');
  ADOQuery1.SQL.Add('  (contdetcomp.Tipo_Comprobante = contenccomp.Tipo_Comprobante AND ');
  ADOQuery1.SQL.Add('   contdetcomp.Numero_Comprobante = contenccomp.Numero_Comprobante ) ');

  ADOQuery1.SQL.Add(' WHERE  contenccomp.Periodo_Proceso >= '+DBLookupComboBox1.keyvalue+'  AND ');
  ADOQuery1.SQL.Add('        contenccomp.Periodo_Proceso <=  '+DBLookupComboBox4.keyvalue+'  AND ');
  ADOQuery1.SQL.Add('        contenccomp.Estado='+chr(39)+'G'+chr(39));
  if NOT checkbox4.Checked then
  begin
    if Edit2.Text <> '' then
    Begin
      ADOQuery1.SQL.Add('               AND contdetcomp.Tercero like '+chr(39)+Edit2.text+chr(39));
    End
    Else Begin
      ADOQuery1.SQL.Add('               AND Nombre like '+chr(39)+Edit3.text+chr(39));
    End;
  end;
  if NOT checkbox1.Checked then
  begin
    if Edit1.Text <> '' Then ADOQuery1.SQL.Add('  AND  ');
    if Edit4.Text <> '' Then ADOQuery1.SQL.Add('  ( ');
    if Edit1.Text <> '' Then ADOQuery1.SQL.Add('  contdetcomp.Cuenta Like '+chr(39)+Edit1.text+chr(39));
    if Edit4.Text <> '' Then ADOQuery1.SQL.Add('  OR contdetcomp.Cuenta Like '+chr(39)+Edit4.text+chr(39)+')');
  end;
  ADOQuery1.SQL.Add('  ORDER BY contdetcomp.cuenta,contdetcomp.Tercero,contenccomp.Periodo_Proceso,contenccomp.Fecha_Comprobante ');

 {    //código viejo no compatible con SQL server 2012
   ADOQuery1.SQL.Add('SELECT contenccomp.empresa as empresa,contenccomp.area as area,contenccomp.Tipo_Comprobante, contenccomp.Numero_Comprobante, contenccomp.Fecha_Comprobante, contenccomp.Descripcion, contenccomp.Periodo_Proceso, ');
  ADOQuery1.SQL.Add(' contdetcomp.Cuenta AS Cuenta, contdetcomp.Tercero AS Tercero, contdetcomp.Centro_Costo AS Centro_Costo, contdetcomp.Valor_Debito AS Valor_Debito, contdetcomp.Valor_Credito AS Valor_Credito, ');
  ADOQuery1.SQL.Add(' contcuenta.Descripcion AS Descripcion_1, contterce.Primer_Apellido +'+chr(39)+' '+chr(39)+'+ contterce.Primer_Nombre AS Nombre,contcuenta.naturaleza as naturaleza ');
  ADOQuery1.SQL.Add(' FROM  contterce,contcuenta,contdetcomp,contenccomp ');
  ADOQuery1.SQL.Add(' WHERE contdetcomp.Tipo_Comprobante = contenccomp.Tipo_Comprobante AND ');
  ADOQuery1.SQL.Add('               contdetcomp.Numero_Comprobante = contenccomp.Numero_Comprobante AND ');
  ADOQuery1.SQL.Add('               contdetcomp.Cuenta = contcuenta.Cuenta  AND ');
  ADOQuery1.SQL.Add('               contdetcomp.Tercero * = contterce.Numero_Documento + contterce.sucursal AND ');
  ADOQuery1.SQL.Add('               contenccomp.Periodo_Proceso >= '+DBLookupComboBox1.keyvalue+'  AND ');
  ADOQuery1.SQL.Add('               contenccomp.Periodo_Proceso <=  '+DBLookupComboBox4.keyvalue+'  AND ');
  ADOQuery1.SQL.Add('               contenccomp.Estado='+chr(39)+'G'+chr(39));
  if NOT checkbox4.Checked then
  begin
    if Edit2.Text <> '' then
    Begin
      ADOQuery1.SQL.Add('               AND contdetcomp.Tercero like '+chr(39)+Edit2.text+chr(39));
    End
    Else Begin
      ADOQuery1.SQL.Add('               AND Nombre like '+chr(39)+Edit3.text+chr(39));
    End;
  end;
  if NOT checkbox1.Checked then
  begin
    if Edit1.Text <> '' Then ADOQuery1.SQL.Add('  AND  ');
    if Edit4.Text <> '' Then ADOQuery1.SQL.Add('  ( ');
    if Edit1.Text <> '' Then ADOQuery1.SQL.Add('  contdetcomp.Cuenta Like '+chr(39)+Edit1.text+chr(39));
    if Edit4.Text <> '' Then ADOQuery1.SQL.Add('  OR contdetcomp.Cuenta Like '+chr(39)+Edit4.text+chr(39)+')');
  end;
  ADOQuery1.SQL.Add('  ORDER BY contdetcomp.cuenta,contdetcomp.Tercero,contenccomp.Periodo_Proceso,contenccomp.Fecha_Comprobante ');

 }

  ADOQuery1.Open;


  IF ADOQuery1.RecordCount > 0 Then
  Begin
    ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add(' SELECT Sum(Valor_Debito) AS Vrd, Sum(Valor_Credito) AS Vrc ');
    ADOQuery2.SQL.Add(' FROM  contterce left outer join contcuenta on ' );
     ADOQuery2.SQL.Add('      contdetcomp.Tercero = contterce.Numero_Documento  + contterce.sucursal AND ');

    ADOQuery2.SQL.Add(' inner join contdetcomp on  ' );
    ADOQuery2.SQL.Add('            contdetcomp.Cuenta = contcuenta.Cuenta  ');

    ADOQuery2.SQL.Add(' inner join contenccomp ');
    ADOQuery2.SQL.Add('          ( contdetcomp.Tipo_Comprobante = contenccomp.Tipo_Comprobante AND ');
    ADOQuery2.SQL.Add('            contdetcomp.Numero_Comprobante = contenccomp.Numero_Comprobante  ) ');

    ADOQuery2.SQL.Add('  WHERE     contenccomp.Periodo_Proceso >= '+DBLookupComboBox1.keyvalue+'  AND ');
    ADOQuery2.SQL.Add('            contenccomp.Periodo_Proceso <=  '+DBLookupComboBox4.keyvalue+'  AND ');
    ADOQuery2.SQL.Add('            contenccomp.Estado='+chr(39)+'G'+chr(39));
    if NOT checkbox4.Checked then
    begin
      if Edit2.Text <> '' then
      Begin
        ADOQuery2.SQL.Add('               AND contdetcomp.Tercero like '+chr(39)+Edit2.text+chr(39));
      End
      Else Begin
        ADOQuery2.SQL.Add('               AND Nombre like '+chr(39)+Edit3.text+chr(39));
      End;
    end;
    if NOT checkbox1.Checked then
    begin
      if Edit1.Text <> '' Then ADOQuery2.SQL.Add('  AND  ');
      if Edit4.Text <> '' Then ADOQuery2.SQL.Add('  ( ');
      if Edit1.Text <> '' Then ADOQuery2.SQL.Add('  contdetcomp.Cuenta Like '+chr(39)+Edit1.text+chr(39));
      if Edit4.Text <> '' Then ADOQuery2.SQL.Add('  OR contdetcomp.Cuenta Like '+chr(39)+Edit4.text+chr(39)+')');
    end;
    //   Código viejo no compatible con SQL Server 2012
    {
        ADOQuery2.SQL.Add(' SELECT Sum(Valor_Debito) AS Vrd, Sum(Valor_Credito) AS Vrc ');
    ADOQuery2.SQL.Add(' FROM  contterce,contcuenta,contdetcomp,contenccomp ');
    ADOQuery2.SQL.Add(' WHERE contdetcomp.Tipo_Comprobante = contenccomp.Tipo_Comprobante AND ');
    ADOQuery2.SQL.Add('               contdetcomp.Numero_Comprobante = contenccomp.Numero_Comprobante AND ');
    ADOQuery2.SQL.Add('               contdetcomp.Cuenta = contcuenta.Cuenta  AND ');
    ADOQuery2.SQL.Add('               contdetcomp.Tercero * = contterce.Numero_Documento  + contterce.sucursal AND ');
    ADOQuery2.SQL.Add('               contenccomp.Periodo_Proceso >= '+DBLookupComboBox1.keyvalue+'  AND ');
    ADOQuery2.SQL.Add('               contenccomp.Periodo_Proceso <=  '+DBLookupComboBox4.keyvalue+'  AND ');
    ADOQuery2.SQL.Add('               contenccomp.Estado='+chr(39)+'G'+chr(39));
    if NOT checkbox4.Checked then
    begin
      if Edit2.Text <> '' then
      Begin
        ADOQuery2.SQL.Add('               AND contdetcomp.Tercero like '+chr(39)+Edit2.text+chr(39));
      End
      Else Begin
        ADOQuery2.SQL.Add('               AND Nombre like '+chr(39)+Edit3.text+chr(39));
      End;
    end;
    if NOT checkbox1.Checked then
    begin
      if Edit1.Text <> '' Then ADOQuery2.SQL.Add('  AND  ');
      if Edit4.Text <> '' Then ADOQuery2.SQL.Add('  ( ');
      if Edit1.Text <> '' Then ADOQuery2.SQL.Add('  contdetcomp.Cuenta Like '+chr(39)+Edit1.text+chr(39));
      if Edit4.Text <> '' Then ADOQuery2.SQL.Add('  OR contdetcomp.Cuenta Like '+chr(39)+Edit4.text+chr(39)+')');
    end;

     }

    ADOQuery2.Open;

    Mes_Actual := DBLookupComboBox1.text;
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

    //Revisa el Saldo Anterior por Cuenta - Tercero


    ADOquery5.Close;
    ADOquery5.SQL.Add('SELECT sum(Saldo_Debito) as Saldo_Debito,sum(Saldo_Credito) as Saldo_Credito');
    ADOquery5.SQL.Add('FROM CONTSaldo');
    ADOquery5.SQL.Add('WHERE  Periodo_Proceso = '+chr(39)+Mes_Anterior+chr(39)+'  AND');
    ADOquery5.SQL.Add('               cuenta ='+chr(39)+ADOQuery1.FieldValues['Cuenta']+chr(39));
    if NOT checkbox4.Checked then
    begin
      ADOquery5.SQL.Add('              AND tercero ='+chr(39)+ADOQuery1.FieldValues['Tercero']+chr(39));
    end;
    ADOQuery5.Open;

    QuickRep1.PreviewInitialState := wsMaximized;
   QuickRep1.PreviewModal;
   Close;
  End
  Else Showmessage('No hay datos.');
end;

procedure TFrmLibroAuxiliarCtaTercero.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vr1,vr2:currency;
begin
  QRLabel38.Caption := Mes_Anterior;

  ADOquery5.Close;
  ADOquery5.SQL.Add('SELECT sum(Saldo_Debito) as Saldo_Debito,sum(Saldo_Credito) as Saldo_Credito');
  ADOquery5.SQL.Add('FROM CONTSaldo');
  ADOquery5.SQL.Add('WHERE  Periodo_Proceso = '+chr(39)+Mes_Anterior+chr(39)+'  AND');
  ADOquery5.SQL.Add('               cuenta ='+chr(39)+ADOQuery1.FieldValues['Cuenta']+chr(39));
  if NOT checkbox4.Checked then
  begin
    ADOquery5.SQL.Add('              AND tercero ='+chr(39)+ADOQuery1.FieldValues['Tercero']+chr(39));
  end;
  ADOQuery5.Open;

  IF ADOQuery5.RecordCount > 0 Then
  Begin
    vr1:=0;
    vr2:=0;
    if ADOQuery5.FieldValues['Saldo_Debito'] <> null then begin
      vr1:=ADOQuery5.FieldValues['Saldo_Debito'];
      QrLabel32.Caption:= Format('%16.2n',[vr1]);
    end;

    if ADOQuery5.FieldValues['Saldo_Credito'] <> null then begin
      vr2:=ADOQuery5.FieldValues['Saldo_Credito'];
      QrLabel33.Caption:= Format('%16.2n',[vr2]);
    end;

    IF ADOQuery1.FieldValues['Naturaleza'] = 'D' Then SaldoTotal:=vr1 - vr2
    ELSE SaldoTotal:=vr2 - vr1;
    QrLabel22.Caption:= Format('%16.2n',[SaldoTotal]);
  End;
end;

procedure TFrmLibroAuxiliarCtaTercero.QRFooterBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vr1,vr2:currency;  
begin
  if CheckBox2.Checked Then QRFooter.Enabled := true
  else QRFooter.Enabled := false;
  
  QRLabel39.Caption := DBLookupComboBox4.Text;

  ADOquery5.Close;
  ADOQuery5.Parameters.ParamValues['Per']:=DBLookupComboBox4.Text;
  ADOQuery5.Parameters.ParamValues['cta']:=ADOQuery1.FieldValues['Cuenta'];
  ADOQuery5.Parameters.ParamValues['Terce']:=ADOQuery1.FieldValues['Tercero'];
  ADOQuery5.Open;

  IF ADOQuery5.RecordCount > 0 Then
  Begin
    vr1:=0;
    vr2:=0;
    if ADOQuery5.FieldValues['Saldo_Debito'] <> null then begin
      vr1:=ADOQuery5.FieldValues['Saldo_Debito'];
      QrLabel34.Caption:= Format('%16.2n',[vr1]);
    end;

    if ADOQuery5.FieldValues['Saldo_Credito'] <> null then begin
      vr2:=ADOQuery5.FieldValues['Saldo_Credito'];
      QrLabel35.Caption:= Format('%16.2n',[vr2]);
    end;

    IF ADOQuery1.FieldValues['Naturaleza'] = 'D' Then SaldoTotal:=vr1 - vr2
    ELSE SaldoTotal:=vr2 - vr1;
    QrLabel23.Caption:= Format('%16.2n',[SaldoTotal]);
  End;
end;

procedure TFrmLibroAuxiliarCtaTercero.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  IF ADOQuery1.FieldValues['Naturaleza'] = 'D' Then SaldoTotal:=SaldoTotal + (ADOQuery1.FieldValues['Valor_Debito'] -ADOQuery1.FieldValues['Valor_Credito'])
  ELSE SaldoTotal:=SaldoTotal + (ADOQuery1.FieldValues['Valor_Credito'] -ADOQuery1.FieldValues['Valor_debito']);
  QrLabel21.Caption:= Format('%16.2n',[SaldoTotal]);
end;

procedure TFrmLibroAuxiliarCtaTercero.QRGroup2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var vr1,vr2:currency;
begin
  QRLabel36.Caption := Mes_Anterior;
  
  ADOquery7.Close;
  ADOQuery7.Parameters.ParamValues['Per']:=Mes_Anterior;
  ADOQuery7.Parameters.ParamValues['Cta']:=ADOQuery1.FieldValues['Cuenta'];
  ADOQuery7.Open;
  IF ADOQuery7.RecordCount > 0 Then
  Begin
    vr1:=0;
    vr2:=0;
    if ADOQuery7.FieldValues['Saldo_Debito'] <> null then begin
      vr1:=ADOQuery7.FieldValues['Saldo_Debito'];
      QrLabel28.Caption:= Format('%16.2n',[vr1]);
    end;

    if ADOQuery7.FieldValues['Saldo_Credito'] <> null then begin
      vr2:=ADOQuery7.FieldValues['Saldo_Credito'];
      QrLabel29.Caption:= Format('%16.2n',[vr2]);
    end;

    IF ADOQuery1.FieldValues['Naturaleza'] = 'D' Then SaldoTotal:=vr1 - vr2
    ELSE SaldoTotal:=vr2 - vr1;
    QrLabel25.Caption:= Format('%16.2n',[SaldoTotal]);
  End;
end;

procedure TFrmLibroAuxiliarCtaTercero.QRBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var vr1,vr2:currency;
begin
  if CheckBox3.Checked Then QRBand1.Enabled := true
  else QRBand1.Enabled := false;

  QRLabel37.Caption := DBLookupCombobox4.Text;

  ADOquery7.Close;
  ADOQuery7.Parameters.ParamValues['Per']:=DBLookupCombobox4.Text;
  ADOQuery7.Parameters.ParamValues['Cta']:=ADOQuery1.FieldValues['Cuenta'];
  ADOQuery7.Open;
  IF ADOQuery7.RecordCount > 0 Then
  Begin
    vr1:=0;
    vr2:=0;
    if ADOQuery7.FieldValues['Saldo_Debito'] <> null then begin
      vr1:=ADOQuery7.FieldValues['Saldo_Debito'];
      QrLabel30.Caption:= Format('%16.2n',[vr1]);
    end;

    if ADOQuery7.FieldValues['Saldo_Credito'] <> null then begin
      vr2:=ADOQuery7.FieldValues['Saldo_Credito'];
      QrLabel31.Caption:= Format('%16.2n',[vr2]);
    end;

    IF ADOQuery1.FieldValues['Naturaleza'] = 'D' Then SaldoTotal:=vr1 - vr2
    ELSE SaldoTotal:=vr2 - vr1;
    QrLabel27.Caption:= Format('%16.2n',[SaldoTotal]);
  End;
end;

end.
