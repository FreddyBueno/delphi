unit FContabFacturacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DB, DBCtrls, StdCtrls, ExtCtrls, ADODB, ComCtrls, DateUtils,
  dbcgrids, Grids, DBGrids,Libreria_Prateinco;

type
  TFrmContabCaj = class(TForm)
    ADOQuery1: TADOQuery;
    DataSource4: TDataSource;
    ADOTable1: TADOTable;
    Panel2: TPanel;
    DateTimePicker1: TDateTimePicker;
    ADOQuery2: TADOQuery;
    ADOQTemp: TADOQuery;
    Panel4: TPanel;
    ADOQuery3: TADOQuery;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    ADOQuery4: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery5: TADOQuery;
    DataSource2: TDataSource;
    ADOQuery6: TADOQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Splitter1: TSplitter;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Panel3: TPanel;
    Panel5: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Panel6: TPanel;
    Splitter2: TSplitter;
    GroupBox2: TGroupBox;
    GroupBox5: TGroupBox;
    Label2: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    DBGrid2: TDBGrid;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    DBGrid3: TDBGrid;
    Label8: TLabel;
    Button1: TButton;
    Panel7: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Panel8: TPanel;
    TabSheet3: TTabSheet;
    DataSource3: TDataSource;
    ADOQuery7: TADOQuery;
    Label9: TLabel;
    Button2: TButton;
    Label10: TLabel;
    Button3: TButton;
    Label11: TLabel;
    Button4: TButton;
    ADOQuery8: TADOQuery;
    DBCtrlGrid1: TDBCtrlGrid;
    DataSource5: TDataSource;
    DBText2: TDBText;
    DBText3: TDBText;
    Label16: TLabel;
    Edit7: TEdit;
    Label12: TLabel;
    Edit8: TEdit;
    Label13: TLabel;
    Button5: TButton;
    Memo1: TMemo;
    Label18: TLabel;
    Button8: TButton;
    ADOQtemp2: TADOQuery;
    Label14: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSource6: TDataSource;
    ADOQuery9: TADOQuery;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    DBGrid4: TDBGrid;
    Panel9: TPanel;
    SpeedButton2: TSpeedButton;
    CheckBox1: TCheckBox;
    Label19: TLabel;
    Edit9: TEdit;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure DataSource6DataChange(Sender: TObject; Field: TField);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmContabCaj: TFrmContabCaj;

implementation

uses UDataModule1, Factura13, CapturaBasica, FcontTipoTerc,
  FComprobantesVarios, FCajaFormato, CapturaBasica2,
  Ffactura1;

{$R *.dfm}

procedure TFrmContabCaj.FormCreate(Sender: TObject);
begin
  ADOTable1.Open;
  ADOQuery9.Open;
  DBLookupComboBox1.keyvalue := ADOQuery9.FieldValues['Tipo_Documento'];
  ADOQuery8.Open;

  if Datamodule1.ADOQuery1.FieldValues['id'] = 0 then Panel7.Visible := True;
end;

procedure TFrmContabCaj.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrmContabCaj.SpeedButton4Click(Sender: TObject);
begin
  Showmessage('Solo se eliminaran los comprobantes de Periodos Abiertos');

  ProgressBar1.Max:=ADOQuery5.RecordCount;
  ProgressBar1.Position:=0;
  ADOQuery5.First;
  WHILE NOT ADOQuery5.Eof Do
  Begin
    ProgressBar1.Position:=ProgressBar1.Position+1;

    ADOQTemp.Close;
    ADOQTemp.SQL.Clear;
    ADOQTemp.SQL.Add('DELETE');
    ADOQTemp.SQL.Add(' FROM  CONTEncComp');
    ADOQTemp.SQL.Add(' WHERE Tipo_Comprobante   = ' +chr(39)+ADOQuery9.FieldValues['Tipo_Comp_Contable']+chr(39)+' AND');
    ADOQTemp.SQL.Add('       Numero_Comprobante = ' +inttostr(ADOQuery5.FieldValues['Numero_Comprobante_Contable'])+' AND');
    ADOQTemp.SQL.Add('       Periodo_Proceso IN (SELECT Periodo_Proceso FROM CONTCierres WHERE Estado = '+chr(39)+'A'+chr(39)+')');
    ADOQTemp.ExecSQL;

    ADOQTemp.Close;
    ADOQTemp.SQL.Clear;
    ADOQTemp.SQL.Add('DELETE');
    ADOQTemp.SQL.Add(' FROM  CONTDetComp');
    ADOQTemp.SQL.Add(' WHERE Tipo_Comprobante   = ' +chr(39)+ADOQuery9.FieldValues['Tipo_Comp_Contable']+chr(39)+' AND');
    ADOQTemp.SQL.Add('       Numero_Comprobante = ' +inttostr(ADOQuery5.FieldValues['Numero_Comprobante_Contable'])+' AND');
    ADOQTemp.SQL.Add('       Tipo_Comprobante+Empresa+convert(varchar,Numero_Comprobante) NOT IN (SELECT Tipo_Comprobante+Empresa+convert(varchar,Numero_Comprobante) FROM CONTEncComp)');
    ADOQTemp.ExecSQL;

    ADOQTemp.Close;
    ADOQTemp.SQL.Clear;
    ADOQTemp.SQL.Add('SELECT *');
    ADOQTemp.SQL.Add(' FROM  CONTEncComp');
    ADOQTemp.SQL.Add(' WHERE Tipo_Comprobante   = ' +chr(39)+ADOQuery9.FieldValues['Tipo_Comp_Contable']+chr(39)+' AND');
    ADOQTemp.SQL.Add('       Numero_Comprobante = ' +inttostr(ADOQuery5.FieldValues['Numero_Comprobante_Contable']));
    ADOQTemp.Open;
    IF ADOQTemp.RecordCount = 0 Then
    Begin
      ADOQuery5.Edit;
      ADOQuery5.FieldValues['Numero_Comprobante_Contable']:=0;
      ADOQuery5.Post;
    End;

    ADOQuery5.Next;
  End;
  ADOQuery1.Close;
  ADOQuery1.Open;
  ADOQuery5.Close;
  ADOQuery5.Open;
  ADOQuery6.Close;
  ADOQuery6.Open;
end;

procedure TFrmContabCaj.Edit1Exit(Sender: TObject);
begin
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT Documento,Numero_Ingreso as No_Ing,Fecha,left(Doc_Pagador,15) as Doc,left(Nombre_Pagador,20) as Nombre,Concepto,Numero_Comprobante_Contable,Empresa_Graba '+
      ' FROM CAIngresos'+
      ' WHERE (Numero_Comprobante_Contable IS NULL or Numero_Comprobante_Contable =0) AND'+
      '          (CAIngresos.estado <> '+chr(39)+'A'+chr(39)+' OR CAIngresos.estado IS Null) AND Documento = '+ chr(39) +DBLookupComboBox1.KeyValue+ chr(39));
    if edit1.Text <> '' Then ADOQuery1.SQL.Add(' AND month(fecha) = ' + edit1.Text );
    if edit2.Text <> '' Then ADOQuery1.SQL.Add(' AND Year(fecha)  = ' + edit2.Text );
    if edit7.Text <> '' Then ADOQuery1.SQL.Add(' AND Numero_Ingreso  like ' + chr(39) +'%'+edit7.Text+'%'+ chr(39));
    ADOQuery1.SQL.Add('  ORDER BY Documento,Numero_Ingreso');
    ADOQuery1.Open;
    ADOQuery1.First;

    ADOQuery8.Close;
    ADOQuery8.SQL.Clear;
    ADOQuery8.SQL.Add('SELECT CADetfacturas.concepto,descripcion,sum(valor) as valor'+
      ' FROM CAIngresos,CADetfacturas,CAConceptos '+
      ' WHERE (Numero_Comprobante_Contable IS NULL or Numero_Comprobante_Contable =0) AND'+
      '          (CAIngresos.estado <> '+chr(39)+'A'+chr(39)+' OR CAIngresos.estado IS Null) AND'+
      ' CAIngresos.Numero_Ingreso =  CADetfacturas.Numero_Ingreso AND '+
      ' CADetfacturas.Concepto = CAConceptos.Concepto AND CAIngresos.Documento = '+ chr(39) +DBLookupComboBox1.KeyValue+ chr(39));
    if edit1.Text <> '' Then ADOQuery8.SQL.Add(' AND month(fecha) = ' + edit1.Text );
    if edit2.Text <> '' Then ADOQuery8.SQL.Add(' AND Year(fecha)  = ' + edit2.Text );
    if edit7.Text <> '' Then ADOQuery8.SQL.Add(' AND CADetfacturas.Numero_Ingreso  like ' + chr(39) +'%'+edit7.Text+'%'+ chr(39));
    ADOQuery8.SQL.Add('GROUP BY CADetfacturas.concepto,descripcion '+
      ' ORDER BY CADetfacturas.concepto,descripcion');
    ADOQuery8.Open;
    ADOQuery8.First;
end;

procedure TFrmContabCaj.Edit3Exit(Sender: TObject);
begin
  ADOQuery5.Close;
  ADOQuery5.SQL.Clear;
  ADOQuery5.SQL.Add('SELECT Documento,Numero_Ingreso as No_Ing,Fecha,left(Doc_Pagador,15) as Doc,left(Nombre_Pagador,20) as Nombre,Concepto,Numero_Comprobante_Contable '+
    ' FROM CAIngresos '+
    ' WHERE (NOT (Numero_Comprobante_Contable IS NULL or Numero_Comprobante_Contable =0)) ');//AND Documento = '+ chr(39) +DBLookupComboBox1.KeyValue+ chr(39));
  if edit3.Text <> '' Then ADOQuery5.SQL.Add(' AND month(fecha) = ' + edit3.Text );
  if edit4.Text <> '' Then ADOQuery5.SQL.Add(' AND Year(fecha)  = ' + edit4.Text );
  if edit8.Text <> '' Then ADOQuery5.SQL.Add(' AND Numero_Ingreso  like ' + chr(39) +'%'+edit8.Text+'%'+ chr(39));
	ADOQuery5.SQL.Add(' 	AND Numero_Comprobante_Contable IN (SELECT Numero_Comprobante '+
		'		FROM CONTEncComp '+
		'		WHERE Tipo_Comprobante = ' +chr(39)+ADOQuery9.FieldValues['Tipo_Comp_Contable']+chr(39)+')'+
    '  ORDER BY Documento,Numero_Ingreso');
  ADOQuery5.Open;
  ADOQuery5.First;
end;

procedure TFrmContabCaj.Edit5Exit(Sender: TObject);
begin
  ADOQuery6.Close;
  ADOQuery6.SQL.Clear;
  ADOQuery6.SQL.Add('SELECT Documento,Numero_Ingreso as No_Ing,Fecha,left(Doc_Pagador,15) as Doc,left(Nombre_Pagador,20) as Nombre,Concepto,Numero_Comprobante_Contable '+
    ' FROM CAIngresos '+
    ' WHERE (Numero_Comprobante_Contable =-1) AND '+
    '          (CAIngresos.estado <> '+chr(39)+'A'+chr(39)+' OR CAIngresos.estado IS Null) AND Documento = '+ chr(39) +DBLookupComboBox1.KeyValue+ chr(39));
if edit5.Text <> '' Then ADOQuery6.SQL.Add(' AND month(fecha) = ' + edit5.Text );
if edit6.Text <> '' Then ADOQuery6.SQL.Add(' AND Year(fecha)  = ' + edit6.Text );
	ADOQuery6.SQL.Add(' 	AND Numero_Comprobante_Contable NOT IN (SELECT Numero_Comprobante '+
		'		FROM CONTEncComp '+
		'		WHERE Tipo_Comprobante = ' +chr(39)+ADOQuery9.FieldValues['Tipo_Comp_Contable']+chr(39)+')'+
    '  ORDER BY Documento,Numero_Ingreso');
  ADOQuery6.Open;
  ADOQuery6.First;
end;

procedure TFrmContabCaj.SpeedButton5Click(Sender: TObject);
begin
  ProgressBar1.Max:=ADOQuery5.RecordCount;
  ProgressBar1.Position:=0;
  ADOQuery1.First;
  WHILE NOT ADOQuery1.Eof Do
  Begin
    ProgressBar1.Position:=ProgressBar1.Position+1;
    ADOQuery1.Edit;
    ADOQuery1.FieldValues['Numero_Comprobante_Contable']:=-1;
    ADOQuery1.Post;

    ADOQuery1.Next;
  End;
  ADOQuery1.Close;
  ADOQuery1.Open;
  ADOQuery5.Close;
  ADOQuery5.Open;
  ADOQuery6.Close;
  ADOQuery6.Open;
end;

procedure TFrmContabCaj.SpeedButton1Click(Sender: TObject);
begin
  ProgressBar1.Max:=ADOQuery5.RecordCount;
  ProgressBar1.Position:=0;
  ADOQuery6.First;
  WHILE NOT ADOQuery6.Eof Do
  Begin
    ProgressBar1.Position:=ProgressBar1.Position+1;
    ADOQuery6.Edit;
    ADOQuery6.FieldValues['Numero_Comprobante_Contable']:=0;
    ADOQuery6.Post;

    ADOQuery6.Next;
  End;
  ADOQuery1.Close;
  ADOQuery1.Open;
  ADOQuery5.Close;
  ADOQuery5.Open;
  ADOQuery6.Close;
  ADOQuery6.Open;
end;

procedure TFrmContabCaj.SpeedButton3Click(Sender: TObject);
Var
  nrconta,CentroCosto:String;
  periodo:string;
  Desc:String;
  i:Integer;
  Valor_Total:currency;
  FactAnt:string;
begin
  ProgressBar1.Max:=ADOQuery1.RecordCount;
  ProgressBar1.Position:=0;
  ADOQuery1.First;
  WHILE NOT ADOQuery1.Eof Do
  Begin
    ProgressBar1.Position:=ProgressBar1.Position+1;
    Try
      Datamodule1.ADOConnection1.BeginTrans;

     //Busca el Tercero
      ADOQTemp.Close;
      ADOQTemp.SQL.Clear;
      ADOQTemp.SQL.Add('SELECT * FROM CONTTerce,CONTTipTercexTerce,CONTTiTerc ');
      ADOQTemp.SQL.Add(' WHERE rtrim(CONTTerce.Numero_Documento) = rtrim(CONTTipTercexTerce.Tercero) AND ');
      ADOQTemp.SQL.Add('       CONTTipTercexTerce.Tipo_Tercero = CONTTiTerc.Tipo_Tercero AND ');
      ADOQTemp.SQL.Add('       Modulo = '+chr(39)+'2'+chr(39)+' AND ');
      ADOQTemp.SQL.Add('       Numero_Documento+sucursal='+chr(39)+ADOQuery1.FieldValues['Doc']+chr(39));
      ADOQTemp.Open;
      IF ADOQTemp.RecordCount <> 0 then
      Begin
        DateTimePicker1.DateTime:=ADOQuery1.FieldValues['fecha'];
        Periodo:=datetostr(DateTimePicker1.DateTime);

        if length(inttostr(yearof(strtodate(Periodo)))+inttostr(monthof(strtodatetime(Periodo)))) = 5 then
          Periodo:=inttostr(yearof(strtodate(Periodo)))+'0'+inttostr(monthof(strtodatetime(Periodo)))
        Else
          Periodo:=inttostr(yearof(strtodate(Periodo)))+inttostr(monthof(strtodatetime(Periodo)));

        nrconta:=dataModule1.Afecta_EncContabilidad(ADOQuery9.FieldValues['Tipo_Comp_Contable'],ADOQuery1.FieldValues['Empresa_Graba'],DateTimePicker1.DateTime,'Grabado por Ingresos No.: '+inttostr(ADOQuery1.FieldValues['No_Ing']),Periodo,ADOQuery1.FieldValues['No_Ing'],'','','P',inttostr(ADOQuery1.FieldValues['No_Ing']));

        ADOQuery4.Close;
        ADOQuery4.Parameters.ParamValues['Tipo'] := ADOQTemp.FieldValues['Tipo_Tercero'];
        ADOQuery4.Open;

        //Graba el detalle del Comprobante
        ADOQuery3.Close;
        ADOQuery3.Parameters.ParamValues['Ing']:=ADOQuery1.FieldValues['No_Ing'];
        ADOQuery3.Open;
        CentroCosto := '';

        Valor_Total := 0;
        ADOQuery3.First;
        FactAnt := ADOQuery3.FieldValues['Empresa']+'-'+ADOQuery3.FieldValues['Numero_Factura'];
        WHILE NOT ADOQuery3.Eof DO
        Begin
          //OJO Va guardando el total de la cuenta de cartera por factura y al final con la ultima factura
          if (FactAnt <> ADOQuery3.FieldValues['Empresa']+'-'+ADOQuery3.FieldValues['Numero_Factura']) then begin
             DataModule1.Afecta_DetContabilidad(ADOQuery9.FieldValues['Tipo_Comp_Contable'],ADOQuery1.FieldValues['Empresa_Graba'],strtoint(nrconta),trim(ADOQuery4.FieldValues['Cta_Tot_Desp_IVA']),0,Valor_Total,ADOQuery1.FieldValues['Doc'],CentroCosto,FactAnt);
             Valor_Total := 0;
          end;

          FactAnt := ADOQuery3.FieldValues['Empresa']+'-'+ADOQuery3.FieldValues['Numero_Factura'];
          //Cuando el pago es de tipo P no debe colocarse un documento
          IF ADOQuery3.FieldValues['Tipo'] = 'P' Then DataModule1.Afecta_DetContabilidad(ADOQuery9.FieldValues['Tipo_Comp_Contable'],ADOQuery1.FieldValues['Empresa_Graba'],strtoint(nrconta),trim(ADOQuery3.FieldValues['Cuenta']),ADOQuery3.FieldValues['Valor'],0,ADOQuery1.FieldValues['Doc'],CentroCosto,'')
          Else DataModule1.Afecta_DetContabilidad(ADOQuery9.FieldValues['Tipo_Comp_Contable'],ADOQuery1.FieldValues['Empresa_Graba'],strtoint(nrconta),trim(ADOQuery3.FieldValues['Cuenta']),ADOQuery3.FieldValues['Valor'],0,ADOQuery1.FieldValues['Doc'],CentroCosto,FactAnt);
          Valor_Total := Valor_Total + ADOQuery3.FieldValues['Valor'];

          ADOQuery3.Next;
        End;
        DataModule1.Afecta_DetContabilidad(ADOQuery9.FieldValues['Tipo_Comp_Contable'],ADOQuery1.FieldValues['Empresa_Graba'],strtoint(nrconta),trim(ADOQuery4.FieldValues['Cta_Tot_Desp_IVA']),0,Valor_Total,ADOQuery1.FieldValues['Doc'],CentroCosto,FactAnt);

        ADOQuery1.Edit;
        ADOQuery1.FieldValues['Numero_Comprobante_Contable']:=nrconta;
        ADOQuery1.Post;
      End
      Else Begin
        Showmessage('ERROR: El tercero de este Recibo de Caja no esta Creado en Contabilidad o no tiene tipo.');
      End;
      Datamodule1.ADOConnection1.CommitTrans;
    except
      Datamodule1.ADOConnection1.RollbackTrans;
    end;

    ADOQuery1.Next;
  End;
  ADOQuery1.Close;
  ADOQuery1.Open;
  ADOQuery5.Close;
  ADOQuery5.Open;
  ADOQuery6.Close;
  ADOQuery6.Open;
end;

procedure TFrmContabCaj.Button2Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'CAConceptos';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TFrmContabCaj.Button3Click(Sender: TObject);
begin
  FormTipoTerc := tFormTipoTerc.create(application);
  try
    Datamodule1.MuestraconAcceso(FormTipoTerc);
  except
    FormTipoTerc.free;
  end;
end;

procedure TFrmContabCaj.DBGrid3DblClick(Sender: TObject);
begin
    CajaFormato := tCajaFormato.create(application);
    try
      Datamodule1.MuestraconAcceso(CajaFormato);
    except
      CajaFormato.free;
    end;

    CajaFormato.ADOQuery1.Close;
    CajaFormato.ADOQuery1.Parameters.ParamValues['nofact']:= ADOQuery6.FieldValues['No_Ing'];
    CajaFormato.ADOQuery1.Open;
    CajaFormato.ADOQuery2.Close;
    CajaFormato.ADOQuery2.Parameters.ParamValues['nofact']:= ADOQuery6.FieldValues['No_Ing'];
    CajaFormato.ADOQuery2.Open;
    CajaFormato.ADOQuery3.Close;
    CajaFormato.ADOQuery3.Parameters.ParamValues['nofact']:= ADOQuery6.FieldValues['No_Ing'];
    CajaFormato.ADOQuery3.Open;
    IF CajaFormato.ADOQuery2.FieldValues['Valor'] = null then CajaFormato.QRLabel24.Caption:= 'SIN PAGO'
    ELSE CajaFormato.QRLabel24.Caption:= xIntToLletras(CajaFormato.ADOQuery2.FieldValues['Valor'])+ ' Pesos.';
    CajaFormato.QuickRep1.PreviewInitialState := wsMaximized;
   CajaFormato.QuickRep1.PreviewModal;
   CajaFormato.Close;
end;

procedure TFrmContabCaj.DBGrid2DblClick(Sender: TObject);
begin
  If RadioButton1.Checked = True then
  Begin
    CajaFormato := tCajaFormato.create(application);
    try
      CajaFormato.show;
    except
      CajaFormato.free;
    end;

    CajaFormato.ADOQuery1.Close;
    CajaFormato.ADOQuery1.Parameters.ParamValues['doc']   := ADOQuery5.FieldValues['Documento'];
    CajaFormato.ADOQuery1.Parameters.ParamValues['nofact']:= ADOQuery5.FieldValues['No_Ing'];
    CajaFormato.ADOQuery1.Open;
    CajaFormato.ADOQuery2.Close;
    CajaFormato.ADOQuery2.Parameters.ParamValues['doc']   := ADOQuery5.FieldValues['Documento'];
    CajaFormato.ADOQuery2.Parameters.ParamValues['nofact']:= ADOQuery5.FieldValues['No_Ing'];
    CajaFormato.ADOQuery2.Open;
    CajaFormato.ADOQuery3.Close;
    CajaFormato.ADOQuery3.Parameters.ParamValues['doc']   := ADOQuery5.FieldValues['Documento'];
    CajaFormato.ADOQuery3.Parameters.ParamValues['nofact']:= ADOQuery5.FieldValues['No_Ing'];
    CajaFormato.ADOQuery3.Open;
    IF CajaFormato.ADOQuery2.FieldValues['Valor'] = null then CajaFormato.QRLabel24.Caption:= 'SIN PAGO'
    ELSE CajaFormato.QRLabel24.Caption:= xIntToLletras(CajaFormato.ADOQuery2.FieldValues['Valor'])+ ' Pesos.';
    CajaFormato.QuickRep1.PreviewInitialState := wsMaximized;
   CajaFormato.QuickRep1.PreviewModal;
   CajaFormato.Close;
  end
  else begin
    FormImpComp := tFormImpComp.create(application);
    try
      Datamodule1.MuestraconAcceso(FormImpComp);
      FormImpComp.DBLookupComboBox5.keyvalue := ADOQuery9.FieldValues['Tipo_Comp_Contable'];
      FormImpComp.Edit1.Text:= ADOQuery5.FieldValues['Numero_Comprobante_Contable'];
    except
      FormImpComp.free;
    end;
  end;
end;

procedure TFrmContabCaj.DBGrid1DblClick(Sender: TObject);
begin
    CajaFormato := tCajaFormato.create(application);
    try
      CajaFormato.show;
    except
      CajaFormato.free;
    end;

    CajaFormato.ADOQuery1.Close;
    CajaFormato.ADOQuery1.Parameters.ParamValues['doc']   := ADOQuery1.FieldValues['Documento'];
    CajaFormato.ADOQuery1.Parameters.ParamValues['nofact']:= ADOQuery1.FieldValues['No_Ing'];
    CajaFormato.ADOQuery1.Open;
    CajaFormato.ADOQuery2.Close;
    CajaFormato.ADOQuery2.Parameters.ParamValues['doc']   := ADOQuery1.FieldValues['Documento'];
    CajaFormato.ADOQuery2.Parameters.ParamValues['nofact']:= ADOQuery1.FieldValues['No_Ing'];
    CajaFormato.ADOQuery2.Open;
    CajaFormato.ADOQuery3.Close;
    CajaFormato.ADOQuery3.Parameters.ParamValues['doc']   := ADOQuery1.FieldValues['Documento'];
    CajaFormato.ADOQuery3.Parameters.ParamValues['nofact']:= ADOQuery1.FieldValues['No_Ing'];
    CajaFormato.ADOQuery3.Open;
    IF CajaFormato.ADOQuery2.FieldValues['Valor'] = null then CajaFormato.QRLabel24.Caption:= 'SIN PAGO'
    ELSE CajaFormato.QRLabel24.Caption:= xIntToLletras(CajaFormato.ADOQuery2.FieldValues['Valor'])+ ' Pesos.';
    CajaFormato.QuickRep1.PreviewInitialState := wsMaximized;
   CajaFormato.QuickRep1.PreviewModal;
   CajaFormato.Close;
end;

procedure TFrmContabCaj.Button5Click(Sender: TObject);
var err:integer;
begin
  err:=0;

  Memo1.Clear;
  //Verificación de los Parametros:
  Memo1.Lines.Add('1-Verificar la tabla de parametrización.');

  Memo1.Lines.Add('2-Verificar los Conceptos de Caja');
  ADOQTemp.Close;
  ADOQTemp.SQL.Clear;
  ADOQtemp.SQL.Add('SELECT * FROM CAConceptos');
  ADOQtemp.Open;
  ProgressBar1.Max:=ADOQTemp.RecordCount;
  ProgressBar1.Position:=0;
  ADOQtemp.First;
  WHILE NOT ADOQtemp.eof  Do
  Begin
    ProgressBar1.Position:=ProgressBar1.Position+1;
    ADOQTemp2.Close;
    ADOQTemp2.SQL.Clear;
    ADOQtemp2.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = ' +chr(39)+trim(ADOQTemp.FieldValues['Cuenta'])+chr(39));
    ADOQtemp2.Open;
    IF ADOQtemp2.RecordCount = 0 Then begin
      err:=err+1;
      Memo1.Lines.Add('- La Cuenta Contable ' +chr(39)+ADOQTemp.FieldValues['Cuenta']+chr(39)+' del Concepto ' +chr(39)+ADOQTemp.FieldValues['Concepto']+chr(39)+' no existe.')
    end
    ELSE begin
      IF ADOQtemp2.FieldValues['Estado'] <> 'A' Then begin
        err:=err+1;
        Memo1.Lines.Add('- La Cuenta Contable ' +chr(39)+ADOQTemp.FieldValues['Cuenta']+chr(39)+' del Concepto ' +chr(39)+ADOQTemp.FieldValues['Concepto']+chr(39)+' no es de Detalle.');
      end;
    End;

    ADOQtemp.Next;
  End;

  Memo1.Lines.Add('3-Verificar los Documentos');
  ADOQTemp.Close;
  ADOQTemp.SQL.Clear;
  ADOQtemp.SQL.Add('SELECT * FROM CADocumentos');
  ADOQtemp.Open;
  ProgressBar1.Max:=ADOQTemp.RecordCount;
  ProgressBar1.Position:=0;
  ADOQtemp.First;
  WHILE NOT ADOQtemp.eof  Do
  Begin
    ProgressBar1.Position:=ProgressBar1.Position+1;
    ADOQTemp2.Close;
    ADOQTemp2.SQL.Clear;
    ADOQtemp2.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = ' +chr(39)+ADOQTemp.FieldValues['Cta_valor_Pagado']+chr(39));
    ADOQtemp2.Open;
    IF ADOQtemp2.RecordCount = 0 Then
    Begin
      err:=err+1;
      Memo1.Lines.Add('- La Cuenta Contable del Documento ' +chr(39)+ADOQTemp.FieldValues['Tipo_Documento']+chr(39)+' no existe.')
    end
    ELSE begin
      IF ADOQtemp2.FieldValues['Estado'] <> 'A' Then begin
        err:=err+1;
        Memo1.Lines.Add('- La Cuenta Contable del Documento ' +chr(39)+ADOQTemp.FieldValues['Tipo_Documento']+chr(39)+' no es de Detalle.');
       end;
    end;

    IF ADOQTemp.FieldValues['Tipo_Comp_Contable'] = NULL Then Begin
      err:=err+1;
      Memo1.Lines.Add('- El tipo de Comprobante Contable en la parametrización no esta creado.'+chr(39)+ADOQTemp.FieldValues['Tipo_Documento']+chr(39));
    end
    else begin
      ADOQTemp2.Close;
      ADOQTemp2.SQL.Clear;
      ADOQtemp2.SQL.Add('SELECT * FROM CONTTipoComp WHERE Tipo_Comprobante = ' +chr(39)+ADOQTemp.FieldValues['Tipo_Comp_Contable']+chr(39));
      ADOQtemp2.Open;
      IF ADOQtemp2.RecordCount = 0 Then
      begin
        Memo1.Lines.Add('- El tipo de Comprobante Contable definido en la parametrización no existe.'+chr(39)+ADOQTemp.FieldValues['Tipo_Comp_Contable']+chr(39));
        err:=err+1;
      end;
    end;
    
    ADOQtemp.Next;
  End;

  Memo1.Lines.Add('4-Verificar los Tipos de Terceros.');
  ADOQTemp.Close;
  ADOQTemp.SQL.Clear;
  ADOQtemp.SQL.Add('SELECT * FROM CONTTiterc');
  ADOQtemp.Open;
  ProgressBar1.Max:=ADOQTemp.RecordCount;
  ProgressBar1.Position:=0;
  ADOQtemp.First;
  WHILE NOT ADOQtemp.eof Do
  Begin
    ProgressBar1.Position:=ProgressBar1.Position+1;
    IF ADOQTemp.FieldValues['Cta_Tot_Desp_IVA'] = null Then Memo1.Lines.Add('- La Cuenta Contable del Tipo Tercero ' +chr(39)+ADOQTemp.FieldValues['Tipo_Tercero']+chr(39)+' esta en blanco.')
    Else Begin
      ADOQTemp2.Close;
      ADOQTemp2.SQL.Clear;
      ADOQtemp2.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = ' +chr(39)+ADOQTemp.FieldValues['Cta_Tot_Desp_IVA']+chr(39));
      ADOQtemp2.Open;
      IF ADOQtemp2.RecordCount = 0 Then
      begin
        err:=err+1;
        Memo1.Lines.Add('- La Cuenta Contable de la agrupación ' +chr(39)+ADOQTemp.FieldValues['Cta_Tot_Desp_IVA']+chr(39)+' del Subtotal antes de IVA no existe.')
      end
      ELSE begin
        IF ADOQtemp2.FieldValues['Estado'] <> 'A' Then begin
          err:=err+1;
          Memo1.Lines.Add('- La Cuenta Contable de la agrupación ' +chr(39)+ADOQTemp.FieldValues['Cta_Tot_Desp_IVA']+chr(39)+' no esta activa o no es de Detalle.');
        end;
      end;
    End;

    IF ADOQTemp.FieldValues['Cta_DSCTO'] = null Then Memo1.Lines.Add('- La Cuenta Contable del Tipo Tercero ' +chr(39)+ADOQTemp.FieldValues['Tipo_Tercero']+chr(39)+' esta en blanco.')
    Else Begin
      ADOQTemp2.Close;
      ADOQTemp2.SQL.Clear;
      ADOQtemp2.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = ' +chr(39)+ADOQTemp.FieldValues['Cta_DSCTO']+chr(39));
      ADOQtemp2.Open;
      IF ADOQtemp2.RecordCount = 0 Then begin
        err:=err+1;
        Memo1.Lines.Add('- La Cuenta Contable de la agrupación de la agrupación ' +chr(39)+ADOQTemp.FieldValues['Cta_DSCTO']+chr(39)+' del Descuento no existe.')
      end
      ELSE begin
        IF ADOQtemp2.FieldValues['Estado'] <> 'A' Then begin
          err:=err+1;
          Memo1.Lines.Add('- La Cuenta Contable de la agrupación ' +chr(39)+ADOQTemp.FieldValues['Cta_DSCTO']+chr(39)+' no esta activa o no es de Detalle.');
        end;
      end;
    End;

    ADOQtemp.Next;
  End;
  Memo1.Lines.Add('Proceso Finalizado OK.');

  if err > 0 Then begin
    speedbutton2.Enabled := false;
    speedbutton3.Enabled := false;
    speedbutton4.Enabled := false;
    showmessage('Se encontraron ' +inttostr(err)+' Errores, Corrigalos primero antes de correr este proceso');
  end
  else begin
    speedbutton2.Enabled := true;
    speedbutton3.Enabled := true;
    speedbutton4.Enabled := true;
  end;
end;

procedure TFrmContabCaj.Button4Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'CADocumentos';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TFrmContabCaj.Button8Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'CONTTerce';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

procedure TFrmContabCaj.DataSource6DataChange(Sender: TObject;
  Field: TField);
begin
  if adoquery1.State = dsBrowse	then
  begin
    FrmContabCaj.Edit1Exit(nil);
    FrmContabCaj.Edit3Exit(nil);
    FrmContabCaj.Edit5Exit(nil);
  end;  
end;

procedure TFrmContabCaj.DBLookupComboBox1Exit(Sender: TObject);
begin
    FrmContabCaj.Edit1Exit(nil);
    FrmContabCaj.Edit3Exit(nil);
    FrmContabCaj.Edit5Exit(nil);
    ADOQuery7.Close;
    ADOQuery7.Parameters.ParamValues['tpcomp'] := DBLookupComboBox1.KeyValue;
    ADOQuery7.Open;
end;

procedure TFrmContabCaj.SpeedButton2Click(Sender: TObject);
begin
  ProgressBar1.Max:=ADOQuery5.RecordCount;
  ProgressBar1.Position:=0;
  ADOQuery7.First;
  WHILE NOT ADOQuery7.Eof Do
  Begin
    ProgressBar1.Position:=ProgressBar1.Position+1;
    ADOQTemp.Close;
    ADOQTemp.SQL.Clear;
    ADOQTemp.SQL.Add('DELETE');
    ADOQTemp.SQL.Add(' FROM  CONTDetComp');
    ADOQTemp.SQL.Add(' WHERE Tipo_Comprobante   = ' +chr(39)+ADOQuery7.FieldValues['Tipo_Comp_Contable']+chr(39)+' AND');
    ADOQTemp.SQL.Add('       Numero_Comprobante = ' +inttostr(ADOQuery7.FieldValues['Numero_Comprobante_Contable']));
    ADOQTemp.ExecSQL;

    ADOQTemp.Close;
    ADOQTemp.SQL.Clear;
    ADOQTemp.SQL.Add('DELETE');
    ADOQTemp.SQL.Add(' FROM  CONTEncComp');
    ADOQTemp.SQL.Add(' WHERE Tipo_Comprobante   = ' +chr(39)+ADOQuery7.FieldValues['Tipo_Comp_Contable']+chr(39)+' AND');
    ADOQTemp.SQL.Add('       Numero_Comprobante = ' +inttostr(ADOQuery7.FieldValues['Numero_Comprobante_Contable']));
    ADOQTemp.ExecSQL;


    ADOQuery7.Edit;
    ADOQuery7.FieldValues['Numero_Comprobante_Contable']:=Null;
    ADOQuery7.Post;

    ADOQuery7.Next;
  End;
  ADOQuery7.Close;
  ADOQuery7.Open;
end;

procedure TFrmContabCaj.CheckBox1Click(Sender: TObject);
begin
  If CheckBox1.Checked Then Timer1.Enabled := True
  Else Timer1.Enabled := False;
end;

procedure TFrmContabCaj.Timer1Timer(Sender: TObject);
begin
  if CheckBox1.Checked Then
  Begin
    if (dayof(now) <> strtoint(Edit9.Text)) then
    Begin
      Edit9.Text := inttostr(dayof(now));
      Button5Click(Nil);
      ADOQuery9.First;
      WHILE NOT ADOQuery9.Eof DO
      Begin
        DBLookupComboBox1Exit(Nil);
        If SpeedButton3.Enabled Then
        Begin
          SpeedButton3Click(Nil);
        End;

        ADOQuery9.Next;
      End;
    End;
  End;
end;

end.
