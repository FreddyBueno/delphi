unit FAuxiliarTerceroCta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, DBCtrls, QRCtrls, QuickRpt, ExtCtrls,StrUtils,DateUtils;

type
  TFrmLibroAuxiliarTerceroCta = class(TForm)
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
    QRFooter: TQRBand;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    ADOQuery5: TADOQuery;
    QRShape5: TQRShape;
    QRShape3: TQRShape;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel20: TQRLabel;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    ADOQuery6: TADOQuery;
    DataSource3: TDataSource;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    DataSource5: TDataSource;
    ADOQuery8: TADOQuery;
    CheckBox1: TCheckBox;
    Label3: TLabel;
    QRLabel2: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRShape2: TQRShape;
    QRDBText15: TQRDBText;
    QRLabel25: TQRLabel;
    QRBand1: TQRBand;
    QRLabel26: TQRLabel;
    QRDBText8: TQRDBText;
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
    QRShape4: TQRShape;
    QRLabel24: TQRLabel;
    CheckBox2: TCheckBox;
    Edit1: TEdit;
    Label4: TLabel;
    QRDBImage1: TQRDBImage;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLibroAuxiliarTerceroCta: TFrmLibroAuxiliarTerceroCta;
  Mes_Actual,Mes_Anterior:string;
  saldototal:currency;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TFrmLibroAuxiliarTerceroCta.FormCreate(Sender: TObject);
begin
    adoquery3.Open;
    ADOQuery6.Open;

    ADOQuery8.Open;
end;

procedure TFrmLibroAuxiliarTerceroCta.CheckBox1Click(Sender: TObject);
begin
  if checkbox1.Checked then
  Begin
    Label2.Visible := False;
    DBLookupComboBox2.Visible := False;

    Label3.visible := False;
    Edit1.Visible := False;
    Label4.Visible  := False;
    CheckBox2.Visible := False;
  End
  Else Begin
    Label2.Visible := true;
    DBLookupComboBox2.Visible := True;

    Label3.visible := True;
    Edit1.Visible := True;
    Label4.Visible  := True;
    CheckBox2.Visible := True;
  End;
end;

procedure TFrmLibroAuxiliarTerceroCta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action :=  caFree;
end;

procedure TFrmLibroAuxiliarTerceroCta.Button1Click(Sender: TObject);
begin
  QRLabel9.Caption:=DBLookupComboBox1.keyvalue;

  ADOQuery1.Close;
  ADOQuery1.Parameters.ParamValues['per']:= DBLookupComboBox1.keyvalue;
  IF checkbox2.Checked = False Then ADOQuery1.Parameters.ParamValues['Terce']:= DBLookupComboBox2.keyvalue
  Else ADOQuery1.Parameters.ParamValues['Terce']:= '%';
  IF checkbox1.Checked = False Then ADOQuery1.Parameters.ParamValues['cta']:= Edit1.Text
  Else ADOQuery1.Parameters.ParamValues['cta']:= '%';
  ADOQuery1.Open;

  IF ADOQuery1.RecordCount > 0 Then
  Begin
    ADOQuery2.Close;
    ADOQuery2.Parameters.ParamValues['per']:= DBLookupComboBox1.keyvalue;
    IF checkbox2.Checked = False Then ADOQuery2.Parameters.ParamValues['Terce']:= DBLookupComboBox2.keyvalue
    Else ADOQuery2.Parameters.ParamValues['Terce']:= '%';
    IF checkbox1.Checked = False Then ADOQuery2.Parameters.ParamValues['cta']:= Edit1.Text
    Else ADOQuery2.Parameters.ParamValues['cta']:= '%';
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

    ADOquery5.Close;
    ADOQuery5.Parameters.ParamValues['Per']:=Mes_Anterior;
    ADOQuery5.Parameters.ParamValues['Terce']:=ADOQuery1.FieldValues['Tercero'];
    ADOQuery5.Parameters.ParamValues['cta']:=Edit1.text;
    ADOQuery5.Open;

    QuickRep1.PreviewInitialState := wsMaximized;
   QuickRep1.PreviewModal;
   Close;
  End
  Else Showmessage('No hay datos.');
end;

procedure TFrmLibroAuxiliarTerceroCta.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vr1,vr2:currency;
begin
  ADOquery5.Close;
  ADOQuery5.Parameters.ParamValues['Per']:=Mes_Anterior;
  ADOQuery5.Parameters.ParamValues['terce']:=ADOQuery1.FieldValues['Tercero'];
  ADOQuery5.Parameters.ParamValues['Cta']:=Edit1.Text;
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

procedure TFrmLibroAuxiliarTerceroCta.QRFooterBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var vr1,vr2:currency;  
begin
  ADOquery5.Close;
  ADOQuery5.Parameters.ParamValues['Per']:=DBLookupComboBox1.Text;
  ADOQuery5.Parameters.ParamValues['Terce']:=ADOQuery1.FieldValues['Tercero'];
  ADOQuery5.Parameters.ParamValues['Cta']:=Edit1.Text;
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

procedure TFrmLibroAuxiliarTerceroCta.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  IF ADOQuery1.FieldValues['Naturaleza'] = 'D' Then SaldoTotal:=SaldoTotal + (ADOQuery1.FieldValues['Valor_Debito'] -ADOQuery1.FieldValues['Valor_Credito'])
  ELSE SaldoTotal:=SaldoTotal + (ADOQuery1.FieldValues['Valor_Credito'] -ADOQuery1.FieldValues['Valor_debito']);
  QrLabel21.Caption:= Format('%16.2n',[SaldoTotal]);
end;

procedure TFrmLibroAuxiliarTerceroCta.QRGroup2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var vr1,vr2:currency;
begin
  ADOquery7.Close;
  ADOQuery7.Parameters.ParamValues['Per']:=Mes_Anterior;
  ADOQuery7.Parameters.ParamValues['Terce']:=ADOQuery1.FieldValues['Tercero'];
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

procedure TFrmLibroAuxiliarTerceroCta.QRBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var vr1,vr2:currency;
begin
  ADOquery7.Close;
  ADOQuery7.Parameters.ParamValues['Per']:=DBLookupCombobox1.Text;
  ADOQuery7.Parameters.ParamValues['Terce']:=ADOQuery1.FieldValues['Tercero'];
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
