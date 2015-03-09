unit Fcontabilidad7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ADODB, StdCtrls, DB, Grids, DBGrids,StrUtils,DateUtils,
  DBCtrls, ComCtrls;

type
  TFormAjusteSaldos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DataSource1: TDataSource;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    ADOQComproAjuste: TADOQuery;
    DataSource2: TDataSource;
    ADOQTmpAjuste: TADOQuery;
    ADOQCierresAjuste: TADOQuery;
    Label1: TLabel;
    Button2: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    ProgressBar1: TProgressBar;
    Button3: TButton;
    ADOQueryCuenta: TADOQuery;
    Button4: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAjusteSaldos: TFormAjusteSaldos;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TFormAjusteSaldos.Button1Click(Sender: TObject);
begin
  If DBLookupComboBox1.Text <> '' Then
  Begin
    If ADOQCierresAjuste.locate('Periodo_Proceso', DBLookupComboBox1.text, [loCaseInsensitive]) then
    Begin
      ADOQCierresAjuste.Edit;
    End
    Else Begin
      ADOQCierresAjuste.Append;
      ADOQCierresAjuste.FieldValues['Periodo_Proceso'] := DBLookupComboBox1.text;
    End;
    IF ADOQCierresAjuste.FieldValues['Estado'] = 'C' Then Begin
      ADOQCierresAjuste.FieldValues['Estado'] := 'A';
      ADOQCierresAjuste.Post;
    End
    Else Showmessage('Periodo no esta disponible para abrir.');
  End
  Else Showmessage('Debe tener un periodo señalado.');
end;

procedure TFormAjusteSaldos.FormActivate(Sender: TObject);
begin
  adoquery1.open;
  ADOQCierresAjuste.Open;
  IF ADOQCierresAjuste.RecordCount = 0 Then
  Begin
    ADOQCierresAjuste.Append;
    ADOQCierresAjuste.FieldValues['Periodo_Proceso']:=inttostr(Yearof(date))+'01';
    ADOQCierresAjuste.FieldValues['Estado']:='A';
    ADOQCierresAjuste.Post;
  End;
  //ShortDateFormat := 'd/m/yyyy';
  DBGrid1.SetFocus;
end;

procedure TFormAjusteSaldos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action :=  caFree;
end;


////NUEVOS CAMBIOS OJO
procedure TFormAjusteSaldos.Button2Click(Sender: TObject);
Var
  Mes_Actual,Mes_Siguiente,Mes_Anterior,Numero_Comp,terce,cc,emp:string;
  saldod,saldoc,SaldoCierre:real;
begin
  ProgressBar1.Max := 8;
  ProgressBar1.Position := 1;
  Edit1.Text := inttostr(ProgressBar1.Position);
  Edit1.Repaint;
  // Verifica facturas pendientes
  ADOQtmpAjuste.Close;
  ADOQtmpAjuste.SQL.Clear;
  ADOQtmpAjuste.SQL.Add('SELECT * ');
  ADOQtmpAjuste.SQL.Add(' FROM   INENCFacturacion ');
  ADOQtmpAjuste.SQL.Add(' WHERE (Numero_Comprobante_Contable IS NULL or Numero_Comprobante_Contable =0) AND ');
  ADOQtmpAjuste.SQL.Add('   (estado <> '+chr(39)+'A'+chr(39)+' OR estado IS Null)');
  ADOQtmpAjuste.SQL.Add('   AND Year(fecha)  = '+inttostr(strtoint(leftstr(DBLookupComboBox1.text,4))));
  ADOQtmpAjuste.SQL.Add('   AND Month(fecha) = '+inttostr(strtoint(Rightstr(DBLookupComboBox1.text,2))));
  ADOQtmpAjuste.Open;
  IF ADOQtmpAjuste.RecordCount > 0 Then
  Begin
    Showmessage('ERROR: Este periodo no se puede cerrar por cuanto tiene Facturas pendientes.');
    Exit;
  End;

  // Verifica INGRESOS pendientes
  ADOQtmpAjuste.Close;
  ADOQtmpAjuste.SQL.Clear;
  ADOQtmpAjuste.SQL.Add('SELECT * ');
  ADOQtmpAjuste.SQL.Add(' FROM   CAIngresos ');
  ADOQtmpAjuste.SQL.Add(' WHERE (Numero_Comprobante_Contable IS NULL or Numero_Comprobante_Contable =0) AND ');
  ADOQtmpAjuste.SQL.Add('   (estado <> '+chr(39)+'A'+chr(39)+' OR estado IS Null)');
  ADOQtmpAjuste.SQL.Add('   AND Year(fecha)  = '+inttostr(strtoint(leftstr(DBLookupComboBox1.text,4))));
  ADOQtmpAjuste.SQL.Add('   AND Month(fecha) = '+inttostr(strtoint(Rightstr(DBLookupComboBox1.text,2))));
  ADOQtmpAjuste.Open;
  IF ADOQtmpAjuste.RecordCount > 0 Then
  Begin
    Showmessage('ERROR: Este periodo no se puede cerrar por cuanto tiene Ingresos pendientes.');
    Exit;
  End;

  // Verifica que no existan periodos sin confirmar
  ADOQtmpAjuste.Close;
  ADOQtmpAjuste.SQL.Clear;
  ADOQtmpAjuste.SQL.Add('SELECT * ');
  ADOQtmpAjuste.SQL.Add(' FROM CONTEncComp ');
  ADOQtmpAjuste.SQL.Add(' WHERE estado = '+chr(39)+'P'+chr(39));
  ADOQtmpAjuste.SQL.Add('   AND periodo_proceso = '+chr(39)+DBLookupComboBox1.text+chr(39));
  ADOQtmpAjuste.Open;
  IF ADOQtmpAjuste.RecordCount > 0 Then
  Begin
    Showmessage('ERROR: Este periodo no se puede cerrar por cuanto tiene comprobantes sin confirmar pendientes.');
    Exit;
  End;

  //Validación
  IF DBLookupComboBox1.text = '' Then
  Begin
    Showmessage('Debe tener un periodo señalado.');
    Exit;
  End;

  IF NOT ((strtoint(leftstr(DBLookupComboBox1.text,4)) > 2000) AND (strtoint(leftstr(DBLookupComboBox1.text,4)) < 2020)) Then
  Begin
    ShowMessage('El formato de fecha es invalido. "AAAAMM"');
    Exit;
  End;

  ProgressBar1.Position := 2;
  Edit1.Text := inttostr(ProgressBar1.Position);
  Edit1.Repaint;

  //Recorre todas las cuentas contables y cambia para que tenga estado A
  ADOQtmpAjuste.Close;
  ADOQtmpAjuste.SQL.Clear;
  ADOQComproAjuste.SQL.Add(' SET NOCOUNT ON ');
  ADOQComproAjuste.SQL.Add(' DECLARE @cta char(50) ');
  ADOQComproAjuste.SQL.Add(' DECLARE Cuentas_Cursor CURSOR FOR SELECT Cuenta FROM CONTCuenta ORDER BY Cuenta ');
  ADOQComproAjuste.SQL.Add(' OPEN Cuentas_Cursor ');
  ADOQComproAjuste.SQL.Add(' FETCH NEXT FROM Cuentas_Cursor INTO @cta ');
  ADOQComproAjuste.SQL.Add(' WHILE @@FETCH_STATUS = 0 ');
  ADOQComproAjuste.SQL.Add(' BEGIN ');
  ADOQComproAjuste.SQL.Add('  UPDATE CONTCuenta ');
  ADOQComproAjuste.SQL.Add('  SET Estado = '+chr(39)+'A'+chr(39));
  ADOQComproAjuste.SQL.Add('  WHERE Cuenta = @cta AND (SELECT count(*) FROM CONTCuenta WHERE cuenta like rtrim(@cta) + '+chr(39)+'%'+chr(39)+') = 1 ');

  ADOQComproAjuste.SQL.Add('  UPDATE CONTCuenta ');
  ADOQComproAjuste.SQL.Add('  SET Estado = NULL ');
  ADOQComproAjuste.SQL.Add('  WHERE Cuenta = @cta AND (SELECT count(*) FROM CONTCuenta WHERE cuenta like rtrim(@cta) + '+chr(39)+'%'+chr(39)+') <> 1 ');

  ADOQComproAjuste.SQL.Add('  FETCH NEXT FROM Cuentas_Cursor INTO @cta ');
  ADOQComproAjuste.SQL.Add(' END ');
  ADOQComproAjuste.SQL.Add(' CLOSE Cuentas_Cursor ');
  ADOQComproAjuste.SQL.Add(' DEALLOCATE Cuentas_Cursor ');
  ADOQComproAjuste.ExecSQL;
  ADOQComproAjuste.Close;
  //***********************************************


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

  //*************************
  //Calcula el Mes Siguiente.
  //*************************
  if strtoint(rightstr(Mes_Actual,2)) <> 13 Then
    Mes_Siguiente:='01/'+rightstr(Mes_Actual,2)+'/'+leftstr(Mes_Actual,4)
  Else
    Mes_Siguiente:='01/12/'+leftstr(Mes_Actual,4);

  if strtoint(rightstr(Mes_Actual,2)) <> 12 Then
  Begin
    if strtoint(rightstr(Mes_Actual,2)) <> 13 Then
    Begin
      if length(inttostr(yearof(strtodate(Mes_Siguiente)+35))+inttostr(monthof(strtodatetime(Mes_Siguiente)+35))) = 5 then
        Mes_Siguiente:=inttostr(yearof(strtodate(Mes_Siguiente)+35))+'0'+inttostr(monthof(strtodatetime(Mes_Siguiente)+35))
      Else
        Mes_Siguiente:=inttostr(yearof(strtodate(Mes_Siguiente)+35))+inttostr(monthof(strtodatetime(Mes_Siguiente)+35));
    End
    Else Mes_Siguiente:=inttostr(yearof(strtodate(Mes_Siguiente)+35))+'01';
  End
  Else Mes_Siguiente:=inttostr(yearof(strtodate(Mes_Siguiente)))+'13';

  If ADOQCierresAjuste.locate('Periodo_Proceso', DBLookupComboBox1.text, [loCaseInsensitive]) then
  Begin
    ADOQCierresAjuste.Edit;
  End
  Else Begin
    ADOQCierresAjuste.Append;
    ADOQCierresAjuste.FieldValues['Periodo_Proceso'] := DBLookupComboBox1.text;
  End;
  ADOQCierresAjuste.FieldValues['Estado'] := 'A';
  ADOQCierresAjuste.FieldValues['Modificado'] := 'S';
  ADOQCierresAjuste.Post;

  //Elimina Saldos del Mes para Recalcularlos
  ADOQtmpAjuste.Close;
  ADOQtmpAjuste.SQL.Clear;
  ADOQtmpAjuste.SQL.Add('DELETE FROM contsaldo WHERE Periodo_Proceso = '+chr(39)+Mes_Actual+chr(39));
  ADOQtmpAjuste.ExecSQL;

  ProgressBar1.Position := 3;
  Edit1.Text := inttostr(ProgressBar1.Position);
  Edit1.Repaint;
  //********************************************************************
  //En caso de ser el Mes 13 Realiza un comprobante automatico de Cierre
  //********************************************************************
  IF RightStr(Mes_Actual,2) = '13' Then
  Begin
    SaldoCierre := 0;

    // Elimina los movimientos creados en este Mes
    ADOQtmpAjuste.Close;
    ADOQtmpAjuste.SQL.Clear;
    ADOQtmpAjuste.SQL.Add('DELETE ');
    ADOQtmpAjuste.SQL.Add(' FROM CONTDetComp ');
    ADOQtmpAjuste.SQL.Add(' WHERE Tipo_Comprobante + Convert(Varchar,Numero_Comprobante) + Empresa IN ');
    ADOQtmpAjuste.SQL.Add('  (SELECT Tipo_Comprobante + Convert(Varchar,Numero_Comprobante) + Empresa FROM CONTEncComp ');
    ADOQtmpAjuste.SQL.Add('  WHERE Periodo_Proceso = '+chr(39)+Mes_Actual+chr(39)+')');
    ADOQtmpAjuste.ExecSQL;

    ADOQtmpAjuste.Close;
    ADOQtmpAjuste.SQL.Clear;
    ADOQtmpAjuste.SQL.Add('DELETE ');
    ADOQtmpAjuste.SQL.Add(' FROM CONTEncComp ');
    ADOQtmpAjuste.SQL.Add('  WHERE Periodo_Proceso = '+chr(39)+Mes_Actual+chr(39));
    ADOQtmpAjuste.ExecSQL;

    //Recorre los Saldos y crea movimientos contrarios en cuenta del Patrimonio
    ADOQtmpAjuste.Close;
    ADOQtmpAjuste.SQL.Clear;
    ADOQtmpAjuste.SQL.Add('SELECT *');
    ADOQtmpAjuste.SQL.Add(' FROM CONTSaldo,CONTCuenta');
    ADOQtmpAjuste.SQL.Add(' WHERE CONTSaldo.Cuenta = CONTCuenta.Cuenta AND ');
    ADOQtmpAjuste.SQL.Add('  CONTCuenta.Estado = '+chr(39)+'A'+chr(39)+' AND ');
    ADOQtmpAjuste.SQL.Add('  Periodo_Proceso  = '+chr(39)+Mes_Anterior+chr(39));
    ADOQtmpAjuste.SQL.Add('  AND NOT LEFT(CONTSaldo.Cuenta,1) IN (1,2,3)');
    ADOQtmpAjuste.Open;
    ADOQtmpAjuste.First;
    if ADOQtmpAjuste.FieldValues['Empresa'] = null then emp := Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja']
    else emp := ADOQtmpAjuste.FieldValues['Empresa'];
    Numero_Comp:=Datamodule1.Afecta_EncContabilidad('99',emp,strtodate('31/'+Rightstr(Mes_Anterior,2)+'/'+Leftstr(Mes_Anterior,4)),'Comprobante de Cierre Automatico (Cancelacion de PyG).',Mes_Actual,'','','','G','');
    While NOT ADOQtmpAjuste.Eof Do
    Begin
      IF ADOQtmpAjuste.FieldValues['Cuenta'] <> '59050501' Then
      Begin
        SaldoCierre := SaldoCierre+(ADOQtmpAjuste.FieldValues['Saldo_Credito']-ADOQtmpAjuste.FieldValues['Saldo_Debito']);
        Datamodule1.Afecta_DetContabilidad('99',emp,StrToInt(Numero_Comp),ADOQtmpAjuste.FieldValues['Cuenta'],ADOQtmpAjuste.FieldValues['Saldo_Credito'],ADOQtmpAjuste.FieldValues['Saldo_Debito'],ADOQtmpAjuste.FieldValues['Tercero'],ADOQtmpAjuste.FieldValues['Centro_Costo'],'0');
        Datamodule1.Afecta_DetContabilidad('99',emp,StrToInt(Numero_Comp),'59050501',ADOQtmpAjuste.FieldValues['Saldo_Debito'],ADOQtmpAjuste.FieldValues['Saldo_Credito'],'','','');
      End;

      ADOQtmpAjuste.Next;
    End;

    Numero_Comp:=Datamodule1.Afecta_EncContabilidad('99',emp,strtodate('01/'+Rightstr(Mes_Siguiente,2)+'/'+Leftstr(Mes_Siguiente,4)),'Comprobante de Cierre Automatico. (Utilidad o Perdida al Patrimonio)',Mes_Actual,'','','','G','');
    IF SaldoCierre > 0 Then Begin
      Datamodule1.Afecta_DetContabilidad('99',emp,StrToInt(Numero_Comp),'59050501',SaldoCierre,0,'','','');
      Datamodule1.Afecta_DetContabilidad('99',emp,StrToInt(Numero_Comp),'360505',0,SaldoCierre,'','','')
    End
    ELSE Begin
      Datamodule1.Afecta_DetContabilidad('99',emp,StrToInt(Numero_Comp),'59050501',0,SaldoCierre*-1,'','','');
      Datamodule1.Afecta_DetContabilidad('99',emp,StrToInt(Numero_Comp),'361005',SaldoCierre*-1,0,'','','')
    End;
  End;
  //*********************************************
  // Fin Mes 13
  //*********************************************

  ProgressBar1.Position := 4;
  Edit1.Text := inttostr(ProgressBar1.Position);
  Edit1.Repaint;
  //Trae los saldos finales del mes anterior y los copia como saldos del mes actual
  ADOQtmpAjuste.Close;
  ADOQtmpAjuste.SQL.Clear;
  ADOQtmpAjuste.SQL.Add('  SET NOCOUNT ON');
  ADOQtmpAjuste.SQL.Add('  DECLARE @Tipo_Comprobante char(50), @Empresa char(50),@Cuenta char(50),@Tercero char(50),@Centro_Costo char(50),@A float, @B float ,@AS float, @BS float');
  ADOQtmpAjuste.SQL.Add('  DECLARE Cuentas_Cursor CURSOR FOR');
  ADOQtmpAjuste.SQL.Add('    SELECT CONTSaldo.Tipo_Comprobante,CONTSaldo.Empresa,CONTSaldo.Cuenta,CONTSaldo.Tercero,CONTSaldo.Centro_Costo,CONTSaldo.Saldo_Debito,CONTSaldo.Saldo_Credito');
  ADOQtmpAjuste.SQL.Add('    FROM contsaldo,contcuenta');
  ADOQtmpAjuste.SQL.Add('    WHERE contsaldo.Cuenta = contcuenta.Cuenta AND');
  ADOQtmpAjuste.SQL.Add('          contcuenta.estado = '+chr(39)+'A'+chr(39)+' AND');
  ADOQtmpAjuste.SQL.Add('          Periodo_Proceso = '+chr(39)+Mes_Anterior+chr(39));
  ADOQtmpAjuste.SQL.Add('  OPEN Cuentas_Cursor');
  ADOQtmpAjuste.SQL.Add('  FETCH NEXT FROM Cuentas_Cursor INTO @Tipo_Comprobante, @Empresa,@Cuenta,@Tercero,@Centro_Costo,@A, @B');
  ADOQtmpAjuste.SQL.Add('  WHILE @@FETCH_STATUS = 0');
  ADOQtmpAjuste.SQL.Add('  BEGIN');
  ADOQtmpAjuste.SQL.Add('	  INSERT CONTSaldo VALUES ('+chr(39)+Mes_Actual+chr(39)+',@Tipo_Comprobante, @Empresa,@Cuenta,@Tercero,@Centro_Costo,@A,@B)');
  ADOQtmpAjuste.SQL.Add('      FETCH NEXT FROM Cuentas_Cursor INTO @Tipo_Comprobante, @Empresa,@Cuenta,@Tercero,@Centro_Costo,@A, @B');
  ADOQtmpAjuste.SQL.Add('  END');
  ADOQtmpAjuste.SQL.Add('  CLOSE Cuentas_Cursor');
  ADOQtmpAjuste.SQL.Add('  DEALLOCATE Cuentas_Cursor ');
  ADOQtmpAjuste.ExecSQL;
  ADOQtmpAjuste.Close;

  ProgressBar1.Position := 5;
  Edit1.Text := inttostr(ProgressBar1.Position);
  Edit1.Repaint;
  //Calcula los totales de la Cuenta de Detalle del mes actual.
  ADOQComproAjuste.SQL.Clear;
  ADOQComproAjuste.SQL.Add('SET NOCOUNT ON ');
  ADOQComproAjuste.SQL.Add('  DECLARE @Tipo_Comprobante char(50), @Empresa char(50),@Cuenta char(50),@Tercero char(50),@Centro_Costo char(50),@A float, @B float ,@AS float, @BS float ');
  ADOQComproAjuste.SQL.Add('  DECLARE Cuentas_Cursor CURSOR FOR ');
  ADOQComproAjuste.SQL.Add('    SELECT contenccomp.Tipo_Comprobante,contenccomp.Empresa,Cuenta,Tercero,Centro_Costo,sum(Valor_Debito) AS A,sum(Valor_Credito) AS B ');
  ADOQComproAjuste.SQL.Add('    FROM contenccomp,contdetcomp ');
  ADOQComproAjuste.SQL.Add('    WHERE contenccomp.Estado ='+chr(39)+'G'+chr(39)+' AND ');
  ADOQComproAjuste.SQL.Add('    contenccomp.Tipo_Comprobante = contdetcomp.Tipo_Comprobante AND ');
  ADOQComproAjuste.SQL.Add('    contenccomp.Numero_Comprobante = contdetcomp.Numero_Comprobante AND ');
  ADOQComproAjuste.SQL.Add('    contenccomp.Empresa = contdetcomp.Empresa AND ');
  ADOQComproAjuste.SQL.Add('    Periodo_Proceso = '+chr(39)+Mes_Actual+chr(39));
  ADOQComproAjuste.SQL.Add('    GROUP BY contenccomp.Tipo_Comprobante,contenccomp.Empresa,Cuenta,Tercero,Centro_Costo ');
  ADOQComproAjuste.SQL.Add('  OPEN Cuentas_Cursor ');
  ADOQComproAjuste.SQL.Add('  FETCH NEXT FROM Cuentas_Cursor INTO @Tipo_Comprobante, @Empresa,@Cuenta,@Tercero,@Centro_Costo,@A, @B ');
  ADOQComproAjuste.SQL.Add('  WHILE @@FETCH_STATUS = 0 ');
  ADOQComproAjuste.SQL.Add('  BEGIN ');
  ADOQComproAjuste.SQL.Add('     IF (SELECT count(*) FROM CONTSaldo WHERE Periodo_Proceso = '+chr(39)+Mes_Actual+chr(39)+' AND Tipo_Comprobante=@Tipo_Comprobante AND Empresa=@Empresa AND Cuenta=@Cuenta AND Tercero=@Tercero AND Centro_Costo=@Centro_Costo) = 0 ');
  ADOQComproAjuste.SQL.Add('     BEGIN');
  ADOQComproAjuste.SQL.Add('       IF (@A - @B) > 0 ');
  ADOQComproAjuste.SQL.Add('         INSERT CONTSaldo VALUES ('+chr(39)+Mes_Actual+chr(39)+',@Tipo_Comprobante, @Empresa,@Cuenta,@Tercero,@Centro_Costo,@A - @B, 0) ');
  ADOQComproAjuste.SQL.Add('       ELSE ');
  ADOQComproAjuste.SQL.Add('         INSERT CONTSaldo VALUES ('+chr(39)+Mes_Actual+chr(39)+',@Tipo_Comprobante, @Empresa,@Cuenta,@Tercero,@Centro_Costo,0, @B - @A) ');
  ADOQComproAjuste.SQL.Add('     END');
  ADOQComproAjuste.SQL.Add('     ELSE BEGIN ');
  ADOQComproAjuste.SQL.Add('       SET @AS = (SELECT Sum(Saldo_Debito)  FROM CONTSaldo WHERE Periodo_Proceso = '+chr(39)+Mes_Actual+chr(39)+' AND Tipo_Comprobante=@Tipo_Comprobante AND Empresa=@Empresa AND Cuenta=@Cuenta AND Tercero=@Tercero AND Centro_Costo=@Centro_Costo) ');
  ADOQComproAjuste.SQL.Add('       SET @BS = (SELECT Sum(Saldo_Credito) FROM CONTSaldo WHERE Periodo_Proceso = '+chr(39)+Mes_Actual+chr(39)+' AND Tipo_Comprobante=@Tipo_Comprobante AND Empresa=@Empresa AND Cuenta=@Cuenta AND Tercero=@Tercero AND Centro_Costo=@Centro_Costo) ');

  ADOQComproAjuste.SQL.Add('       IF ((@AS-@BS)+(@A-@B)) > 0 ');
  ADOQComproAjuste.SQL.Add('         UPDATE CONTSaldo SET Saldo_Debito=((@AS-@BS)+(@A-@B)),Saldo_Credito=0 WHERE Periodo_Proceso = '+chr(39)+Mes_Actual+chr(39)+' AND Tipo_Comprobante=@Tipo_Comprobante AND Empresa=@Empresa AND Cuenta=@Cuenta AND Tercero=@Tercero AND Centro_Costo=@Centro_Costo ');
  ADOQComproAjuste.SQL.Add('       ELSE ');
  ADOQComproAjuste.SQL.Add('         UPDATE CONTSaldo SET Saldo_Debito=0,Saldo_Credito=((@BS-@AS)+(@B-@A)) WHERE Periodo_Proceso = '+chr(39)+Mes_Actual+chr(39)+' AND Tipo_Comprobante=@Tipo_Comprobante AND Empresa=@Empresa AND Cuenta=@Cuenta AND Tercero=@Tercero AND Centro_Costo=@Centro_Costo ');
  ADOQComproAjuste.SQL.Add('     END ');

  ADOQComproAjuste.SQL.Add('     FETCH NEXT FROM Cuentas_Cursor INTO @Tipo_Comprobante, @Empresa,@Cuenta,@Tercero,@Centro_Costo,@A, @B ');
  ADOQComproAjuste.SQL.Add('  END ');
  ADOQComproAjuste.SQL.Add('  CLOSE Cuentas_Cursor ');
  ADOQComproAjuste.SQL.Add('  DEALLOCATE Cuentas_Cursor ');
  ADOQComproAjuste.ExecSQL;
  ADOQComproAjuste.Close;

  ProgressBar1.Position := 6;
  Edit1.Text := inttostr(ProgressBar1.Position);
  Edit1.Repaint;

  //Calcula los Totales a Nivel de Cuentas Mayores
  ADOQComproAjuste.SQL.Clear;
  ADOQComproAjuste.SQL.Add('SET NOCOUNT ON');
  ADOQComproAjuste.SQL.Add(' DECLARE @cta char(50), @tpc char(50),@emp char(4),@totd float, @totc float');
  ADOQComproAjuste.SQL.Add(' DECLARE Cuentas_Cursor CURSOR FOR SELECT Cuenta FROM CONTCuenta WHERE Estado is NULL ORDER BY Cuenta');
  ADOQComproAjuste.SQL.Add(' OPEN Cuentas_Cursor');
  ADOQComproAjuste.SQL.Add(' FETCH NEXT FROM Cuentas_Cursor INTO @cta');
  ADOQComproAjuste.SQL.Add(' WHILE @@FETCH_STATUS = 0');
  ADOQComproAjuste.SQL.Add(' BEGIN');
  ADOQComproAjuste.SQL.Add('  DECLARE Saldos_Cursor CURSOR FOR SELECT Tipo_Comprobante,Empresa,sum(Saldo_Debito),Sum(Saldo_Credito)');
  ADOQComproAjuste.SQL.Add('                                   FROM CONTSaldo');
  ADOQComproAjuste.SQL.Add('                                   WHERE Periodo_Proceso = '+chr(39)+Mes_Actual+chr(39)+' AND Cuenta like rtrim(@cta) + '+chr(39)+'%'+chr(39));
  ADOQComproAjuste.SQL.Add('                                   GROUP BY Tipo_Comprobante,Empresa');
  ADOQComproAjuste.SQL.Add('  OPEN Saldos_Cursor');
  ADOQComproAjuste.SQL.Add('  FETCH NEXT FROM Saldos_Cursor INTO @tpc,@emp,@totd,@totc');
  ADOQComproAjuste.SQL.Add('  WHILE @@FETCH_STATUS = 0');
  ADOQComproAjuste.SQL.Add('  BEGIN');
  ADOQComproAjuste.SQL.Add('    INSERT CONTSaldo VALUES ('+chr(39)+Mes_Actual+chr(39)+',@tpc,@emp,@cta,'+chr(39)+chr(39)+','+chr(39)+chr(39)+',@totd,@totc)');
  ADOQComproAjuste.SQL.Add('    FETCH NEXT FROM Saldos_Cursor INTO @tpc,@emp,@totd,@totc');
  ADOQComproAjuste.SQL.Add('  END');
  ADOQComproAjuste.SQL.Add('  CLOSE Saldos_Cursor');
  ADOQComproAjuste.SQL.Add('  DEALLOCATE Saldos_Cursor');
  ADOQComproAjuste.SQL.Add('  FETCH NEXT FROM Cuentas_Cursor INTO @cta');
  ADOQComproAjuste.SQL.Add(' END');
  ADOQComproAjuste.SQL.Add(' CLOSE Cuentas_Cursor');
  ADOQComproAjuste.SQL.Add(' DEALLOCATE Cuentas_Cursor');
  ADOQComproAjuste.ExecSQL;
  ADOQComproAjuste.Close;

  saldod:= 0;
  saldoc:= 0;
  //Trae los Saldos Totales del Mes Anterior
  If ADOQCierresAjuste.locate('Periodo_Proceso', Mes_Anterior, [loCaseInsensitive]) then
  Begin
    IF ADOQCierresAjuste.FieldValues['Saldo_Debito'] <> NULL  Then saldod:= ADOQCierresAjuste.FieldValues['Saldo_Debito'];
    IF ADOQCierresAjuste.FieldValues['Saldo_Credito'] <> NULL Then saldoc:= ADOQCierresAjuste.FieldValues['Saldo_Credito'];
  End;

  ProgressBar1.Position := 7;
  Edit1.Text := inttostr(ProgressBar1.Position);
  Edit1.Repaint;

  //Calcula y Guarda los Saldos Totales en el mes actual (Tabla de Cierres CONTCIERRES)
  ADOQComproAjuste.SQL.Clear;
  ADOQComproAjuste.SQL.Add('SELECT sum(Valor_Debito) AS A,sum(Valor_Credito) AS B');
  ADOQComproAjuste.SQL.Add(' FROM contenccomp,contdetcomp ');
  ADOQComproAjuste.SQL.Add(' WHERE contenccomp.Estado ='+chr(39)+'G'+chr(39)+' AND ');
  ADOQComproAjuste.SQL.Add('  contenccomp.Tipo_Comprobante = contdetcomp.Tipo_Comprobante ');
  ADOQComproAjuste.SQL.Add('  AND contenccomp.Numero_Comprobante = contdetcomp.Numero_Comprobante ');
  ADOQComproAjuste.SQL.Add('  AND contenccomp.Empresa = contdetcomp.Empresa ');
  ADOQComproAjuste.SQL.Add('  AND Periodo_Proceso = '+chr(39)+Mes_Actual+chr(39));
  ADOQComproAjuste.Open;
  If ADOQCierresAjuste.locate('Periodo_Proceso', Mes_Actual, [loCaseInsensitive]) then
  Begin
    ADOQCierresAjuste.Edit;
  End
  Else Begin
    ADOQCierresAjuste.Append;
    ADOQCierresAjuste.FieldValues['Periodo_Proceso'] := Mes_Actual;
  End;
  ADOQCierresAjuste.FieldValues['Estado'] := 'C';
  ADOQCierresAjuste.FieldValues['Modificado'] := 'N';
  ADOQCierresAjuste.FieldValues['Saldo_Debito']  := saldod+ADOQComproAjuste.FieldValues['A'];
  ADOQCierresAjuste.FieldValues['Saldo_Credito'] := saldoc+ADOQComproAjuste.FieldValues['B'];
  ADOQCierresAjuste.Post;
  ADOQComproAjuste.Close;

  ProgressBar1.Position := 8;
  Edit1.Text := inttostr(ProgressBar1.Position);
  Edit1.Repaint;

  //Abre el Periodo Siguiente
  If ADOQCierresAjuste.locate('Periodo_Proceso', Mes_Siguiente, [loCaseInsensitive]) then
  Begin
    ADOQCierresAjuste.Edit;
  End
  Else Begin
    ADOQCierresAjuste.Append;
    ADOQCierresAjuste.FieldValues['Periodo_Proceso'] := Mes_Siguiente;
  End;
  ADOQCierresAjuste.FieldValues['Estado'] := 'A';
  ADOQCierresAjuste.Post;

  ADOQCierresAjuste.Close;
  ADOQCierresAjuste.Open;
  DBGrid1.SetFocus;
end;

procedure TFormAjusteSaldos.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  DBLookupComboBox1.KeyValue := ADOQCierresAjuste.FieldValues['Periodo_Proceso'];
end;

procedure TFormAjusteSaldos.Button3Click(Sender: TObject);
begin
  If DBLookupComboBox1.Text <> '' Then
  Begin
    If ADOQCierresAjuste.locate('Periodo_Proceso', DBLookupComboBox1.text, [loCaseInsensitive]) then
    Begin
      ADOQCierresAjuste.Edit;
    End
    Else Begin
      ADOQCierresAjuste.Append;
      ADOQCierresAjuste.FieldValues['Periodo_Proceso'] := DBLookupComboBox1.text;
    End;
    if ADOQCierresAjuste.FieldValues['Estado'] = 'C' Then
    Begin
      ADOQCierresAjuste.FieldValues['Estado'] := 'I';
      ADOQCierresAjuste.Post;
    End
    Else Showmessage('ERROR: El periodo debe estar cerrado;');
  End
  Else Showmessage('Debe tener un periodo señalado.');
end;

procedure TFormAjusteSaldos.Button4Click(Sender: TObject);
var per:string;
    fec_actual:Tdatetime;
begin
  Repeat
    per:=DBLookupComboBox1.Text;
    Button2Click(Nil);
    FormAjusteSaldos.Repaint;
    if per=DBLookupComboBox1.Text then exit;

      if strtoint(rightstr(ADOQCierresAjuste.FieldValues['Periodo_Proceso'],2)) <> 13 Then
      fec_actual:=strtodate('01/'+rightstr(ADOQCierresAjuste.FieldValues['Periodo_Proceso'],2)+'/'+leftstr(ADOQCierresAjuste.FieldValues['Periodo_Proceso'],4))
    Else
      fec_actual:=strtodate('01/12/'+leftstr(ADOQCierresAjuste.FieldValues['Periodo_Proceso'],4));
  UNTIL fec_actual >= now;
end;

procedure TFormAjusteSaldos.FormCreate(Sender: TObject);
begin
    if Datamodule1.ADOQuery1.FieldValues['id'] = 0 then Button3.Visible := True;
end;

end.
