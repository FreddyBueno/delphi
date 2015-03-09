unit FAuxiliarCtaResumen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, DBCtrls, QRCtrls, QuickRpt, ExtCtrls,StrUtils,DateUtils;

type
  TFrmLibroAuxiliarxCtaResumen = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel13: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRShape1: TQRShape;
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
    QRDBText2: TQRDBText;
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
    QRGroup1: TQRGroup;
    QRFooter: TQRBand;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    ADOQuery5: TADOQuery;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRShape5: TQRShape;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRShape3: TQRShape;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel20: TQRLabel;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    ADOQuery6: TADOQuery;
    ADOQuery7: TADOQuery;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    DataSource5: TDataSource;
    ADOQuery8: TADOQuery;
    CheckBox1: TCheckBox;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLibroAuxiliarxCtaResumen: TFrmLibroAuxiliarxCtaResumen;
  Mes_Actual,Mes_Anterior:string;
  saldototal:currency;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TFrmLibroAuxiliarxCtaResumen.FormCreate(Sender: TObject);
begin
    adoquery3.Open;
    adoquery4.Open;
    ADOQuery6.Open;
    ADOQuery7.Open;
    ADOQuery8.Open;
end;

procedure TFrmLibroAuxiliarxCtaResumen.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action :=  caFree;
end;

procedure TFrmLibroAuxiliarxCtaResumen.Button1Click(Sender: TObject);
begin
  QRLabel9.Caption:=DBLookupComboBox1.keyvalue;

  ADOQuery1.Close;
  ADOQuery1.Parameters.ParamValues['per']:= DBLookupComboBox1.keyvalue;
  IF checkbox1.Checked = False Then ADOQuery1.Parameters.ParamValues['cta']:= DBLookupComboBox2.keyvalue
  Else ADOQuery1.Parameters.ParamValues['cta']:= '%';
  ADOQuery1.Open;

  IF ADOQuery1.RecordCount > 0 Then
  Begin
    ADOQuery2.Close;
    ADOQuery2.Parameters.ParamValues['per']:= DBLookupComboBox1.keyvalue;
    IF checkbox1.Checked = False Then ADOQuery2.Parameters.ParamValues['cta']:= DBLookupComboBox2.keyvalue
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
    ADOQuery5.Parameters.ParamValues['Cta']:=ADOQuery1.FieldValues['Cuenta'];
    ADOQuery5.Open;
    QuickRep1.PreviewInitialState := wsMaximized;
   QuickRep1.PreviewModal;
   Close;
  End
  Else Showmessage('No hay datos.');
end;

procedure TFrmLibroAuxiliarxCtaResumen.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  ADOquery5.Close;
  ADOQuery5.Parameters.ParamValues['Per']:=Mes_Anterior;
  ADOQuery5.Parameters.ParamValues['Cta']:=ADOQuery1.FieldValues['Cuenta'];
  ADOQuery5.Open;
  IF ADOQuery5.RecordCount > 0 Then
  Begin
    IF ADOQuery1.FieldValues['Naturaleza'] = 'D' Then SaldoTotal:=ADOQuery5.FieldValues['Saldo_Debito'] -ADOQuery5.FieldValues['Saldo_Credito']
    ELSE SaldoTotal:=ADOQuery5.FieldValues['Saldo_Credito'] -ADOQuery5.FieldValues['Saldo_Debito'];
    QrLabel22.Caption:= Format('%16.2n',[SaldoTotal]);
  End;
end;

procedure TFrmLibroAuxiliarxCtaResumen.QRFooterBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  ADOquery5.Close;
  ADOQuery5.Parameters.ParamValues['Per']:=DBLookupComboBox1.Text;
  ADOQuery5.Parameters.ParamValues['Cta']:=ADOQuery1.FieldValues['Cuenta'];
  ADOQuery5.Open;

  IF ADOQuery1.FieldValues['Naturaleza'] = 'D' Then SaldoTotal:=ADOQuery5.FieldValues['Saldo_Debito'] -ADOQuery5.FieldValues['Saldo_Credito']
  ELSE SaldoTotal:=ADOQuery5.FieldValues['Saldo_Credito'] -ADOQuery5.FieldValues['Saldo_Debito'];
  QrLabel23.Caption:= Format('%16.2n',[SaldoTotal]);
end;

procedure TFrmLibroAuxiliarxCtaResumen.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  IF ADOQuery1.FieldValues['Naturaleza'] = 'D' Then SaldoTotal:=SaldoTotal + (ADOQuery1.FieldValues['Valor_Debito'] -ADOQuery1.FieldValues['Valor_Credito'])
  ELSE SaldoTotal:=SaldoTotal + (ADOQuery1.FieldValues['Valor_Credito'] -ADOQuery1.FieldValues['Valor_debito']);
  QrLabel21.Caption:= Format('%16.2n',[SaldoTotal]);
end;

end.
