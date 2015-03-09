unit FExtractos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls,dateutils,strutils,shellapi,Libreria_Prateinco,
  Buttons;

type
  TFormExtracto = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Splitter2: TSplitter;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    Panel4: TPanel;
    ADOQueryCta: TADOQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ADOQueryExtracto: TADOQuery;
    DataSource3: TDataSource;
    ADOQueryPeriodo: TADOQuery;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox4: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    DataSource4: TDataSource;
    ADOQueryCuenta: TADOQuery;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label3: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DataSource5: TDataSource;
    ADOQueryPeriodoExtracto: TADOQuery;
    SpeedButton1: TSpeedButton;
    Button2: TButton;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ADOQueryT: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBLookupComboBox3Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DataSource3DataChange(Sender: TObject; Field: TField);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid2ColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormExtracto: TFormExtracto;

implementation

Uses UDataModule1, FComprobantesVarios, ConsultaComp;

{$R *.dfm}

procedure TFormExtracto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure TFormExtracto.FormCreate(Sender: TObject);
begin
  ADOQueryPeriodo.Open;
  IF ADOQueryPeriodo.RecordCount = 0 Then
  Begin
    Showmessage('ERROR, No hay periodos abiertos.');
    Exit;
  End;

  DBLookupComboBox1.KeyValue := ADOqueryPeriodo.FieldValues['Periodo_Proceso'];
  ADOQueryCuenta.Open;
  DBLookupComboBox2.KeyValue := ADOqueryCuenta.FieldValues['cuenta'];

  ADOQueryCta.close;
  ADOQueryCta.SQL.Clear;
  ADOQueryCta.SQL.Add('SELECT CONTEncComp.Tipo_Comprobante,CONTEncComp.Numero_Comprobante,Fecha_Comprobante,Periodo_Proceso,Cuenta,Tercero,DocSoporte,Informacion_2,Valor_Debito,Valor_Credito,Cruce_Extracto');
  ADOQueryCta.SQL.Add(' FROM CONTEncComp,ContDetComp');
  ADOQueryCta.SQL.Add(' WHERE CONTEncComp.Tipo_Comprobante = ContDetComp.Tipo_Comprobante AND');
  ADOQueryCta.SQL.Add('       CONTEncComp.Numero_Comprobante = ContDetComp.Numero_Comprobante AND Estado <> '+Chr(39) +'A'+Chr(39) +' AND');
  ADOQueryCta.SQL.Add('       Periodo_Proceso = ' +Chr(39) + ADOqueryPeriodo.FieldValues['Periodo_Proceso']+Chr(39) + ' AND Cuenta = ' +Chr(39) + ADOqueryCuenta.FieldValues['Cuenta']+Chr(39));
  ADOQueryCta.SQL.Add(' ORDER BY CONTEncComp.Tipo_Comprobante,CONTEncComp.Numero_Comprobante');
  ADOQueryCta.Open;

  if ADOqueryPeriodoextracto.FieldValues['mes'] <> null then
  begin
    ADOQueryExtracto.close;
    ADOQueryExtracto.SQL.Clear;
    ADOQueryExtracto.SQL.Add('SELECT * ');
    ADOQueryExtracto.SQL.Add(' FROM CONTExtracto ');
    ADOQueryExtracto.SQL.Add(' WHERE year(fecha) = ' +chr(39)+ inttostr(ADOqueryPeriodoextracto.FieldValues['ano'])+chr(39)+ ' AND month(fecha) = ' +chr(39)+ inttostr(ADOqueryPeriodoextracto.FieldValues['mes'])+chr(39));
    ADOQueryExtracto.SQL.Add(' ORDER BY ' + DBGrid2.Columns.Items[0].FieldName);
    ADOQueryExtracto.Open;
  end  
end;

procedure TFormExtracto.DBLookupComboBox1Exit(Sender: TObject);
begin
  ADOQueryCta.close;
  ADOQueryCta.SQL.Clear;
  ADOQueryCta.SQL.Add('SELECT CONTEncComp.Tipo_Comprobante,CONTEncComp.Numero_Comprobante,Fecha_Comprobante,Periodo_Proceso,Cuenta,Tercero,DocSoporte,Informacion_2,Valor_Debito,Valor_Credito,Cruce_Extracto');
  ADOQueryCta.SQL.Add(' FROM CONTEncComp,ContDetComp');
  ADOQueryCta.SQL.Add(' WHERE CONTEncComp.Tipo_Comprobante = ContDetComp.Tipo_Comprobante AND');
  ADOQueryCta.SQL.Add('       CONTEncComp.Numero_Comprobante = ContDetComp.Numero_Comprobante AND Estado <> '+Chr(39) +'A'+Chr(39) +' AND');
  ADOQueryCta.SQL.Add('       Periodo_Proceso = ' +Chr(39) + ADOqueryPeriodo.FieldValues['Periodo_Proceso']+Chr(39) + ' AND Cuenta = ' +Chr(39) + ADOqueryCuenta.FieldValues['Cuenta']+Chr(39));
  ADOQueryCta.SQL.Add(' ORDER BY CONTEncComp.Tipo_Comprobante,CONTEncComp.Numero_Comprobante');
  ADOQueryCta.Open;
  FormExtracto.DBLookupComboBox3Exit(nil);
end;

procedure TFormExtracto.Button1Click(Sender: TObject);
begin
  //Revisando desde los Comprobantes al Extracto
  ADOQuerycta.First;
  WHILE NOT ADOQuerycta.eof DO
  Begin
    IF ADOQuerycta.FieldValues['Cruce_Extracto'] <> 'P' Then
    Begin
        ADOQueryextracto.Filtered:=false;
        ADOQueryextracto.Filter := 'Estado <> '+chr(39)+'P'+chr(39);
        ADOQueryextracto.Filtered:=true;
        WHILE NOT ADOQueryextracto.eof DO
        Begin
          IF ADOQueryextracto.FieldValues['TipoCP'] = 'P' Then
          Begin
            IF ADOQuerycta.FieldValues['Valor_Credito'] = ADOQueryextracto['Valor'] Then
            Begin
              IF (yearof(ADOQuerycta.FieldValues['Fecha_Comprobante']) = yearof(ADOQueryextracto['Fecha'])) and
                 (monthof(ADOQuerycta.FieldValues['Fecha_Comprobante']) = monthof(ADOQueryextracto['Fecha'])) and
                 (dayof(ADOQuerycta.FieldValues['Fecha_Comprobante']) = dayof(ADOQueryextracto['Fecha'])) Then
              Begin
                ADOQuerycta.Edit;
                ADOQuerycta.FieldValues['Cruce_Extracto'] := 'P';
                ADOQuerycta.Post;

                ADOQueryextracto.Edit;
                ADOQueryextracto.FieldValues['Observacion'] := 'Encontro por Valor y Fecha Comprobante No: '+ADOQuerycta.FieldValues['Tipo_Comprobante']+floattostr(ADOQuerycta.FieldValues['Numero_Comprobante']);
                ADOQueryextracto.FieldValues['Estado'] := 'P';
                ADOQueryextracto.Post;
                break;
              End
              ELSE IF (ADOQuerycta.FieldValues['DocSoporte'] = ADOQueryextracto['Doc_Soporte']) Then
              Begin
                ADOQuerycta.Edit;
                ADOQuerycta.FieldValues['Cruce_Extracto'] := 'P';
                ADOQuerycta.Post;

                ADOQueryextracto.Edit;
                ADOQueryextracto.FieldValues['Observacion'] := 'Encontro por Valor y Documento Soporte No: '+ADOQuerycta.FieldValues['Tipo_Comprobante']+floattostr(ADOQuerycta.FieldValues['Numero_Comprobante']);
                ADOQueryextracto.FieldValues['Estado'] := 'P';
                ADOQueryextracto.Post;
              End
              Else IF (trim(ADOQueryextracto['Doc_Soporte']) = leftstr(trim(ADOQuerycta.FieldValues['Informacion_2']),length(trim(ADOQueryextracto['Doc_Soporte'])))) Then
              Begin
                ADOQuerycta.Edit;
                ADOQuerycta.FieldValues['Cruce_Extracto'] := 'P';
                ADOQuerycta.Post;

                ADOQueryextracto.Edit;
                ADOQueryextracto.FieldValues['Observacion'] := 'Encontro por Valor y Soporte 2 No: '+ADOQuerycta.FieldValues['Tipo_Comprobante']+floattostr(ADOQuerycta.FieldValues['Numero_Comprobante']);
                ADOQueryextracto.FieldValues['Estado'] := 'P';
                ADOQueryextracto.Post;
              End
              Else Begin
                ADOQuerycta.Edit;
                ADOQuerycta.FieldValues['Cruce_Extracto'] := 'V';
                ADOQuerycta.Post;

                ADOQueryextracto.Edit;
                ADOQueryextracto.FieldValues['Observacion'] := 'Encontro por Solo Valor No: '+ADOQuerycta.FieldValues['Tipo_Comprobante']+floattostr(ADOQuerycta.FieldValues['Numero_Comprobante']);
                ADOQueryextracto.FieldValues['Estado'] := 'V';
                ADOQueryextracto.Post;
              End;
            End;
          End
          Else Begin
            //Cruce de Valor y Fecha
            IF ADOQuerycta.FieldValues['Valor_Debito'] = ADOQueryextracto['Valor'] Then
            Begin
              IF (yearof(ADOQuerycta.FieldValues['Fecha_Comprobante']) = yearof(ADOQueryextracto['Fecha'])) and
                 (monthof(ADOQuerycta.FieldValues['Fecha_Comprobante']) = monthof(ADOQueryextracto['Fecha'])) and
                 (dayof(ADOQuerycta.FieldValues['Fecha_Comprobante']) = dayof(ADOQueryextracto['Fecha'])) Then
              Begin
                ADOQuerycta.Edit;
                ADOQuerycta.FieldValues['Cruce_Extracto'] := 'P';
                ADOQuerycta.Post;

                ADOQueryextracto.Edit;
                ADOQueryextracto.FieldValues['Observacion'] := 'Encontro por Valor y Fecha Comprobante No: '+ADOQuerycta.FieldValues['Tipo_Comprobante']+floattostr(ADOQuerycta.FieldValues['Numero_Comprobante']);
                ADOQueryextracto.FieldValues['Estado'] := 'P';
                ADOQueryextracto.Post;
                Break;
              End
              Else Begin
                ADOQuerycta.Edit;
                ADOQuerycta.FieldValues['Cruce_Extracto'] := 'V';
                ADOQuerycta.Post;

                ADOQueryextracto.Edit;
                ADOQueryextracto.FieldValues['Observacion'] := 'Encontro por Solo Valor No: '+ADOQuerycta.FieldValues['Tipo_Comprobante']+floattostr(ADOQuerycta.FieldValues['Numero_Comprobante']);
                ADOQueryextracto.FieldValues['Estado'] := 'V';
                ADOQueryextracto.Post;
              End;
            End;
          End;

          ADOQueryextracto.Next;
        End;
    End;

    ADOQuerycta.Next;
  End;
  ADOQueryextracto.Filtered:=false;
end;

procedure TFormExtracto.DBLookupComboBox3Exit(Sender: TObject);
begin
  if ADOqueryPeriodoextracto.RecordCount <> 0 Then
  Begin
    ADOQueryExtracto.close;
    ADOQueryExtracto.SQL.Clear;
    ADOQueryExtracto.SQL.Add('SELECT * ');
    ADOQueryExtracto.SQL.Add(' FROM CONTExtracto ');
    ADOQueryExtracto.SQL.Add(' WHERE year(fecha) = ' +chr(39)+ inttostr(ADOqueryPeriodoextracto.FieldValues['ano'])+chr(39)+ ' AND month(fecha) = ' +chr(39)+ inttostr(ADOqueryPeriodoextracto.FieldValues['mes'])+chr(39));
    ADOQueryExtracto.SQL.Add(' ORDER BY ' + DBGrid2.Columns.Items[0].FieldName);
    ADOQueryExtracto.Open;
  End;  
end;

procedure TFormExtracto.SpeedButton1Click(Sender: TObject);
var Archivo:String;
begin
  Archivo := ExtractFilePath(paramstr(0))+'Reportes\';
  XmlExcelDB(ExtractFilePath(paramstr(0))+'Reportes\','Extracto_Cruzado'+'.xml', ADOQueryExtracto);
  shellexecute(handle,'open',pchar(Archivo+'Extracto_Cruzado'+'.xml'),'','',sw_shownormal);
end;

procedure TFormExtracto.Button2Click(Sender: TObject);
begin
  ADOQueryExtracto.First;
  WHILE Not ADOQueryExtracto.Eof Do
  Begin
    ADOQueryExtracto.Edit;
    ADOQueryExtracto.FieldValues['Observacion'] := '';
    ADOQueryExtracto.FieldValues['Estado'] := '';
    ADOQueryExtracto.Post;

    ADOQueryExtracto.Next;
  End;

  ADOQueryCta.First;
  WHILE Not ADOQueryCta.Eof Do
  Begin
    ADOQueryCta.Edit;
    ADOQueryCta.FieldValues['Cruce_Extracto'] := '';
    ADOQueryCta.Post;

    ADOQueryCta.Next;
  End;
end;

procedure TFormExtracto.DBGrid1DblClick(Sender: TObject);
begin
    ComprobantesVarios := tComprobantesVarios.create(application);
    try
      Datamodule1.MuestraconAcceso(ComprobantesVarios);
    except
      ComprobantesVarios.free;
    end;

    ComprobantesVarios.ADOQuery1.Close;
    ComprobantesVarios.ADOQuery1.Parameters.ParamValues['tipcomp']:= ADOQueryCta.FieldValues['Tipo_Comprobante'];
    ComprobantesVarios.ADOQuery1.Parameters.ParamValues['ncomp']:= ADOQueryCta.FieldValues['Numero_Comprobante'];
    ComprobantesVarios.ADOQuery1.Open;

    ComprobantesVarios.ADOQuery2.Close;
    ComprobantesVarios.ADOQuery2.Parameters.ParamValues['tipcomp']:= ADOQueryCta.FieldValues['Tipo_Comprobante'];
    ComprobantesVarios.ADOQuery2.Parameters.ParamValues['ncomp']:= ADOQueryCta.FieldValues['Numero_Comprobante'];
    ComprobantesVarios.ADOQuery2.Open;

    ComprobantesVarios.QuickRep1.PreviewInitialState := wsMaximized;
   ComprobantesVarios.QuickRep1.PreviewModal;
   ComprobantesVarios.Close;
end;

procedure TFormExtracto.Button3Click(Sender: TObject);
begin
  IF ADOQueryextracto.FieldValues['TipoCP'] = 'P' Then
  Begin
    IF ADOQuerycta.FieldValues['Valor_Credito'] = ADOQueryextracto.FieldValues['Valor'] Then
    Begin
      ADOQuerycta.Edit;
      ADOQuerycta.FieldValues['Fecha_Comprobante'] := ADOQueryextracto.FieldValues['Fecha'];
      IF ADOQuerycta.FieldValues['DocSoporte'] = '' Then ADOQuerycta.FieldValues['DocSoporte'] := ADOQueryextracto['Doc_Soporte'];
      ADOQuerycta.Post;
    End
    Else Showmessage('No se puede cambiar por que no concuerda los valores.');
  End
  Else Begin
    IF ADOQuerycta.FieldValues['Valor_Debito'] = ADOQueryextracto.FieldValues['Valor'] Then
    Begin
      ADOQuerycta.Edit;
      ADOQuerycta.FieldValues['Fecha_Comprobante'] := ADOQueryextracto.FieldValues['Fecha'];
      IF ADOQuerycta.FieldValues['DocSoporte'] = '' Then ADOQuerycta.FieldValues['DocSoporte'] := ADOQueryextracto['Doc_Soporte'];
      ADOQuerycta.Post;
    End
    Else Showmessage('No se puede cambiar por que no concuerda los valores.');
  End

end;

procedure TFormExtracto.Button4Click(Sender: TObject);
var i:integer;
begin
  FormCapturaComp := tFormCapturaComp.create(application);
  try
    ADOQueryT.Close;
    ADOQueryT.SQL.Clear;
    ADOQueryT.SQL.Add('SELECT * FROM CONTTipoComp WHERE Tipo = '+chr(39)+'2'+chr(39));
    ADOQueryT.Open;

    Datamodule1.MuestraconAcceso(FormCapturaComp);

    FormCapturaComp.DBLookupComboBox1.KeyValue := ADOQueryT.FieldValues['Tipo_comprobante'];
    FormCapturaComp.DBLookupComboBox1Exit(Nil);
    for i:=0 to DBGrid2.SelectedRows.Count -1 Do
    Begin
      DBGrid2.DataSource.DataSet.GotoBookmark(pointer(DBGrid2.SelectedRows.Items[i]));

      FormCapturaComp.DBLookupComboBox2.KeyValue:=DBLookupComboBox1.KeyValue;
      FormCapturaComp.DateTimePicker1.Date:=ADOQueryextracto.FieldValues['Fecha'];
      FormCapturaComp.Edit2.text:=ADOQueryextracto.FieldValues['Detalle'];
      IF (trim(ADOQueryextracto.FieldValues['Doc_Soporte']) <> '') AND (trim(ADOQueryextracto.FieldValues['Doc_Soporte']) <> '0') Then FormCapturaComp.Edit6.text:=ADOQueryextracto.FieldValues['Doc_Soporte']
      Else FormCapturaComp.Edit6.text:=inttostr(i)+'-'+datetostr(ADOQueryextracto.FieldValues['Fecha']);
      FormCapturaComp.DBLookupComboBox3.KeyValue:=DBLookupComboBox2.KeyValue;
      FormCapturaComp.DBLookupComboBox4.KeyValue:=DBLookupComboBox2.KeyValue;
      FormCapturaComp.DBLookupComboBox5.KeyValue:=trim(ADOQueryextracto.FieldValues['Cuenta']);
      FormCapturaComp.DBLookupComboBox6.KeyValue:=trim(ADOQueryextracto.FieldValues['Cuenta']);
      IF ADOQueryextracto['TipoCP'] = 'C' Then FormCapturaComp.Maskedit1.Text:=floattostr(ADOQueryextracto['Valor'])
      ELSE FormCapturaComp.Maskedit2.Text:=floattostr(ADOQueryextracto['Valor']);
      FormCapturaComp.Button1Click(nil);
    end;
  except
    FormCapturaComp.free;
  end;
end;

procedure TFormExtracto.FormActivate(Sender: TObject);
begin
  ADOQuerycta.Close;
  ADOQuerycta.Open;
  ADOQueryExtracto.Close;
  ADOQueryExtracto.Open;
end;

procedure TFormExtracto.DataSource3DataChange(Sender: TObject;
  Field: TField);
begin
  if ADOQueryPeriodo.FieldValues['Periodo_Proceso'] <> null then
  Begin
    ADOQueryPeriodoExtracto.Close;
    ADOQueryPeriodoExtracto.Parameters.ParamValues['ano']:= strtoint(leftstr(ADOQueryPeriodo.FieldValues['Periodo_Proceso'],4));
    ADOQueryPeriodoExtracto.Parameters.ParamValues['mes']:= strtoint(rightstr(ADOQueryPeriodo.FieldValues['Periodo_Proceso'],2));
    ADOQueryPeriodoExtracto.Open;
    IF ADOQueryPeriodoExtracto.RecordCount <> 0 then DBLookupComboBox3.KeyValue := ADOQueryPeriodoExtracto.FieldValues['mes'];
  End;                 
end;

procedure TFormExtracto.BitBtn1Click(Sender: TObject);
begin
  if GroupBox2.Align = alLeft Then
  Begin
    GroupBox2.Align := alTop;
    Splitter2.Align := alTop;
  end
  else begin
    Splitter2.Align := alLeft;
    GroupBox2.Align := alLeft;
  end;
  
end;

procedure TFormExtracto.DBGrid2ColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
  FormExtracto.DBLookupComboBox3Exit(nil);
end;

procedure TFormExtracto.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Esta seguro de Eliminar este registro?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    ADOQueryExtracto.Delete;
  end;
end;

end.
