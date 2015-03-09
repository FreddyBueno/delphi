unit fcontabilidad6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, DB, DBCtrls, TeEngine, Series, TeeProcs, Chart, DbChart,
  ExtCtrls, StdCtrls, TeeFunci, ComCtrls, Mask,StrUtils;

type
  TFormGraf1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    DataSource1: TDataSource;
    Label1: TLabel;
    ADOQuery2: TADOQuery;
    DBLookupComboBox1: TDBLookupComboBox;
    ADOQuery3: TADOQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBLookupComboBox2: TDBLookupComboBox;
    Label2: TLabel;
    DataSource3: TDataSource;
    ADOQuery4: TADOQuery;
    MaskEdit1: TMaskEdit;
    Label3: TLabel;
    ADOQuery5: TADOQuery;
    DBChart2: TDBChart;
    BarSeries1: TPieSeries;
    ADOQuery6: TADOQuery;
    DBChart3: TDBChart;
    PieSeries1: TPieSeries;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGraf1: TFormGraf1;

implementation

{$R *.dfm}

procedure TFormGraf1.FormActivate(Sender: TObject);
begin
  adoquery4.Open;
  adoquery3.Open;
end;

procedure TFormGraf1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure TFormGraf1.DBLookupComboBox2Exit(Sender: TObject);
begin
  adoquery2.close;
  adoquery2.Parameters.ParamValues['cuenta'] := DBLookupComboBox1.KeyValue;
  adoquery2.Parameters.ParamValues['per']    := leftstr(DBLookupComboBox2.KeyValue,4);
  adoquery2.Open;

  adoquery5.close;
  adoquery5.SQL.Clear;
  adoquery5.SQL.Add('DROP TABLE xxgr '+
     ' SELECT CONTTerce.Primer_Apellido as Nombre,sum(Saldo_Debito -Saldo_credito) as saldo '+
     ' INTO xxgr '+
     ' FROM  CONTSaldo,CONTTerce,CONTCuenta '+
     ' WHERE CONTSaldo.tercero = CONTTerce.Numero_Documento+CONTTerce.Sucursal AND '+
     '       CONTSaldo.cuenta  = CONTCUENTA.cuenta AND '+
     '       Periodo_Proceso = '+chr(39)+DBLookupComboBox2.KeyValue +chr(39)+'  AND '+
     '       CONTSaldo.Cuenta like rtrim( '+chr(39)+DBLookupComboBox1.KeyValue +chr(39)+'  )+ '+chr(39)+'%' +chr(39)+' AND '+
     '       CONTCuenta.estado = '+chr(39)+'A' +chr(39)+
     ' GROUP BY CONTTerce.Primer_Apellido '+
     ' HAVING  sum(Saldo_Debito -Saldo_credito) < ' +Maskedit1.Text+
     ' ORDER BY saldo  Desc '+
     ' SELECT Left(CONTTerce.Primer_Apellido,25) as Nombre2,sum(Saldo_Debito -Saldo_credito) as saldo '+
     ' FROM  CONTSaldo,CONTTerce,CONTCuenta '+
     ' WHERE CONTSaldo.tercero = CONTTerce.Numero_Documento+CONTTerce.Sucursal AND '+
     '       CONTSaldo.cuenta  = CONTCUENTA.cuenta AND '+
     '       Periodo_Proceso = '+chr(39)+DBLookupComboBox2.KeyValue +chr(39)+'  AND '+
     '       CONTSaldo.Cuenta like rtrim( '+chr(39)+DBLookupComboBox1.KeyValue +chr(39)+'  )+ '+chr(39)+'%' +chr(39)+' AND '+
     '       CONTCuenta.estado = '+chr(39)+'A' +chr(39)+
     ' GROUP BY Left(CONTTerce.Primer_Apellido,25) '+
     ' HAVING  sum(Saldo_Debito -Saldo_credito) > ' + Maskedit1.Text+
     ' UNION '+
     ' SELECT '+chr(39)+'OTROS' +chr(39)+' as Nombre2,sum(saldo) as Saldo '+
     ' FROM xxgr '+
     ' WHERE (Nombre <> null or Nombre <> '+chr(39)+'' +chr(39)+') '+
     ' UNION '+
     ' SELECT '+chr(39)+'SIN FACTURA' +chr(39)+' as Nombre2,sum(saldo) as Saldo '+
     ' FROM xxgr '+
     ' WHERE (Nombre = NULL or Nombre = '+chr(39)+'' +chr(39)+')');
  adoquery5.Open;

  adoquery6.close;
  adoquery6.Parameters.ParamValues['per']:=DBLookupComboBox2.KeyValue;
  adoquery6.Parameters.ParamValues['cta']:=DBLookupComboBox1.KeyValue;
  adoquery6.Open;
end;

end.
