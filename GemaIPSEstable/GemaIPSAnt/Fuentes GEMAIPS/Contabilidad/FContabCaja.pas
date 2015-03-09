unit FContabCaja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DB, DBCtrls, StdCtrls, ExtCtrls, ADODB, ComCtrls, DateUtils,
  dbcgrids, Grids, DBGrids;

type
  TFrmContabFacturacion = class(TForm)
    ADOQuery1: TADOQuery;
    DataSource4: TDataSource;
    ADOTable1: TADOTable;
    Panel2: TPanel;
    DateTimePicker1: TDateTimePicker;
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
    DBGrid4: TDBGrid;
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
    Label12: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    ADOQueryEmpresas: TADOQuery;
    DataSource6: TDataSource;
    ADOQueryAdmi: TADOQuery;
    ADOQueryCargo: TADOQuery;
    Label13: TLabel;
    Button5: TButton;
    Label14: TLabel;
    Button6: TButton;
    Memo1: TMemo;
    ADOQTemp2: TADOQuery;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label15: TLabel;
    Button7: TButton;
    Edit7: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    Edit8: TEdit;
    Label18: TLabel;
    Button8: TButton;
    GroupBox4: TGroupBox;
    DataSource7: TDataSource;
    ADOQuery2: TADOQuery;
    DBGrid5: TDBGrid;
    Panel9: TPanel;
    SpeedButton2: TSpeedButton;
    CheckBox1: TCheckBox;
    Timer1: TTimer;
    Edit9: TEdit;
    Label19: TLabel;
    Button9: TButton;
    Button10: TButton;
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
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmContabFacturacion: TFrmContabFacturacion;

implementation

uses UDataModule1,  CapturaBasica, FcontTipoTerc, 
  frmGrupos, HomologaCupsVsPush, FCapitulos, HomologaPaqueteVsPush,
  FComprobantesVarios, CapturaBasica2, FImpresionFactura,
  Ffactura1, FAsignaGrupo;

{$R *.dfm}

procedure TFrmContabFacturacion.FormCreate(Sender: TObject);
begin
  ADOQueryEmpresas.Open;
  DBLookupComboBox1.KeyValue:=Datamodule1.ADOQuery1.FieldValues['Empresa'];

  ADOTable1.Open;

  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT INENCFacturacion.Empresa,INENCFacturacion.Numero_Factura,Fecha,Cliente,Valor_Total,Valor_Descuento,Valor_IVA,(Valor_Total-Valor_Descuento+Valor_IVA-Valor_Conceptos) as Total,Numero_Comprobante_Contable,SegundaFactura'+
      ' FROM INENCFacturacion'+
      ' WHERE Empresa = '+chr(39)+ADOQueryEmpresas.FieldValues['Codigo']+chr(39)+' AND'+
      '        (Numero_Comprobante_Contable IS NULL or Numero_Comprobante_Contable =0) AND'+
      '          (INENCFacturacion.estado <> '+chr(39)+'A'+chr(39)+' OR INENCFacturacion.estado IS Null)');
  if edit1.Text <> '' Then ADOQuery1.SQL.Add(' AND month(fecha) = ' + edit1.Text );
  if edit2.Text <> '' Then ADOQuery1.SQL.Add(' AND Year(fecha)  = ' + edit2.Text );
  if edit7.Text <> '' Then ADOQuery1.SQL.Add(' AND Numero_Factura  like ' + chr(39) +'%'+edit7.Text+'%'+ chr(39));
  ADOQuery1.SQL.Add(' ORDER BY empresa,numero_factura');
  ADOQuery1.Open;

  ADOQuery5.Close;
  ADOQuery5.SQL.Clear;
  ADOQuery5.SQL.Add('SELECT Empresa,Numero_Factura,Fecha,Cliente,(Valor_Total+Valor_Descuento+Valor_IVA-Valor_Conceptos) as Total,Numero_Comprobante_Contable'+
     ' FROM   INENCFacturacion'+
      ' WHERE Empresa = '+chr(39)+ADOQueryEmpresas.FieldValues['Codigo']+chr(39)+' AND'+
     '  (NOT (Numero_Comprobante_Contable IS NULL or Numero_Comprobante_Contable =0))');
     if edit3.Text <> '' Then ADOQuery5.SQL.Add(' AND month(fecha) = ' + edit3.Text );
     if edit4.Text <> '' Then ADOQuery5.SQL.Add(' AND Year(fecha)  = ' + edit4.Text );
     if edit8.Text <> '' Then ADOQuery5.SQL.Add(' AND Numero_Factura  like ' + chr(39) +'%'+edit8.Text+'%'+ chr(39));
		 ADOQuery5.SQL.Add(' AND		Numero_Comprobante_Contable  IN (SELECT Numero_Comprobante'+
		 '		FROM CONTEncComp'+
		 '		WHERE Tipo_Comprobante = ' +chr(39)+ADOTable1.FieldValues['Tipo_Comp_Contable']+chr(39)+')'+
     ' ORDER BY empresa,numero_factura');
  ADOQuery5.Open;

  ADOQuery2.Close;
  ADOQuery2.Parameters.ParamValues['Emp']:=ADOQueryEmpresas.FieldValues['Codigo'];
  ADOQuery2.Open;
  ADOQuery6.Close;
  ADOQuery6.Parameters.ParamValues['Emp']:=ADOQueryEmpresas.FieldValues['Codigo'];
  ADOQuery6.Parameters.ParamValues['tpComp']:=ADOTable1.FieldValues['Tipo_Comp_Contable'];
  ADOQuery6.Open;
  ADOQuery7.Close;
  ADOQuery7.Parameters.ParamValues['tpComp']:=ADOTable1.FieldValues['Tipo_Comp_Contable'];
  ADOQuery7.Open;
  ADOQuery8.Close;
  ADOQuery8.Parameters.ParamValues['Emp']:=ADOQueryEmpresas.FieldValues['Codigo'];
  ADOQuery8.Open;

  if Datamodule1.ADOQuery1.FieldValues['id'] = 0 then Panel7.Visible := True;
end;

procedure TFrmContabFacturacion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrmContabFacturacion.SpeedButton4Click(Sender: TObject);
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
    ADOQTemp.SQL.Add(' WHERE Tipo_Comprobante   = ' +chr(39)+ADOTable1.FieldValues['Tipo_Comp_Contable']+chr(39)+' AND');
    ADOQTemp.SQL.Add('       Empresa = '+chr(39)+ADOQueryEmpresas.FieldValues['Codigo']+chr(39)+' AND');
    ADOQTemp.SQL.Add('       Numero_Comprobante = ' +inttostr(ADOQuery5.FieldValues['Numero_Comprobante_Contable'])+' AND');
    ADOQTemp.SQL.Add('       Periodo_Proceso IN (SELECT Periodo_Proceso FROM CONTCierres WHERE Estado = '+chr(39)+'A'+chr(39)+')');
    ADOQTemp.ExecSQL;

    ADOQTemp.Close;
    ADOQTemp.SQL.Clear;
    ADOQTemp.SQL.Add('DELETE');
    ADOQTemp.SQL.Add(' FROM  CONTDetComp');
    ADOQTemp.SQL.Add(' WHERE Tipo_Comprobante   = ' +chr(39)+ADOTable1.FieldValues['Tipo_Comp_Contable']+chr(39)+' AND');
    ADOQTemp.SQL.Add('       Empresa = '+chr(39)+ADOQueryEmpresas.FieldValues['Codigo']+chr(39)+' AND');
    ADOQTemp.SQL.Add('       Numero_Comprobante = ' +inttostr(ADOQuery5.FieldValues['Numero_Comprobante_Contable'])+' AND');
    ADOQTemp.SQL.Add('       Tipo_Comprobante+Empresa+convert(varchar,Numero_Comprobante) NOT IN (SELECT Tipo_Comprobante+Empresa+convert(varchar,Numero_Comprobante) FROM CONTEncComp)');
    ADOQTemp.ExecSQL;

    ADOQTemp.Close;
    ADOQTemp.SQL.Clear;
    ADOQTemp.SQL.Add('SELECT *');
    ADOQTemp.SQL.Add(' FROM  CONTEncComp');
    ADOQTemp.SQL.Add(' WHERE Tipo_Comprobante   = ' +chr(39)+ADOTable1.FieldValues['Tipo_Comp_Contable']+chr(39)+' AND');
    ADOQTemp.SQL.Add('       Empresa = '+chr(39)+ADOQueryEmpresas.FieldValues['Codigo']+chr(39)+' AND');
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

procedure TFrmContabFacturacion.Edit1Exit(Sender: TObject);
begin
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT INENCFacturacion.Empresa,INENCFacturacion.Numero_Factura,Fecha,Cliente,Valor_Total,Valor_Descuento,Valor_IVA,(Valor_Total-Valor_Descuento+Valor_IVA-Valor_Conceptos) as Total,Numero_Comprobante_Contable,SegundaFactura'+
      ' FROM INENCFacturacion'+
      ' WHERE Empresa = '+chr(39)+ADOQueryEmpresas.FieldValues['Codigo']+chr(39)+' AND'+
      '        (Numero_Comprobante_Contable IS NULL or Numero_Comprobante_Contable =0) AND'+
      '          (INENCFacturacion.estado <> '+chr(39)+'A'+chr(39)+' OR INENCFacturacion.estado IS Null)');
    if edit1.Text <> '' Then ADOQuery1.SQL.Add(' AND month(fecha) = ' + edit1.Text );
    if edit2.Text <> '' Then ADOQuery1.SQL.Add(' AND Year(fecha)  = ' + edit2.Text );
    if edit7.Text <> '' Then ADOQuery1.SQL.Add(' AND Numero_Factura  like ' + chr(39) +'%'+edit7.Text+'%'+ chr(39));
    ADOQuery1.SQL.Add(' ORDER BY empresa,numero_factura');
    ADOQuery1.Open;
    ADOQuery1.First;

    ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('SELECT sum(Valor_Total) as Subtotal,sum(Valor_Descuento) as Dscto,sum(Valor_IVA) as IVA,sum(Valor_Total-Valor_Descuento+Valor_IVA-Valor_Conceptos) as Total'+
      ' FROM INENCFacturacion'+
      ' WHERE Empresa = '+chr(39)+ADOQueryEmpresas.FieldValues['Codigo']+chr(39)+' AND'+
      '        (Numero_Comprobante_Contable IS NULL or Numero_Comprobante_Contable =0) AND'+
      '          (INENCFacturacion.estado <> '+chr(39)+'A'+chr(39)+' OR INENCFacturacion.estado IS Null)');
    if edit1.Text <> '' Then ADOQuery2.SQL.Add(' AND month(fecha) = ' + edit1.Text );
    if edit2.Text <> '' Then ADOQuery2.SQL.Add(' AND Year(fecha)  = ' + edit2.Text );
    if edit7.Text <> '' Then ADOQuery2.SQL.Add(' AND Numero_Factura  like ' + chr(39) +'%'+edit7.Text+'%'+ chr(39));
    ADOQuery2.Open;
    ADOQuery2.First;

    ADOQuery8.Close;
    ADOQuery8.SQL.Clear;
    ADOQuery8.SQL.Add('SELECT INENCFacturacion.cliente,CONTTerce.Primer_Apellido,sum(Valor_Total-Valor_Descuento+Valor_IVA-Valor_Conceptos) as valor '+
      ' FROM INENCFacturacion,CONTTerce '+
      ' WHERE Empresa = '+chr(39)+ADOQueryEmpresas.FieldValues['Codigo']+chr(39)+' AND'+
      '        (Numero_Comprobante_Contable IS NULL or Numero_Comprobante_Contable =0) AND'+
      '          (INENCFacturacion.estado <> '+chr(39)+'A'+chr(39)+' OR INENCFacturacion.estado IS Null) AND'+
      ' LEFT(INENCFacturacion.Cliente,Len(CONTTerce.Numero_Documento)) =  CONTTerce.Numero_Documento ');
    if edit1.Text <> '' Then ADOQuery8.SQL.Add(' AND month(fecha) = ' + edit1.Text );
    if edit2.Text <> '' Then ADOQuery8.SQL.Add(' AND Year(fecha)  = ' + edit2.Text );
    if edit7.Text <> '' Then ADOQuery8.SQL.Add(' AND Numero_Factura  like ' + chr(39) +'%'+edit7.Text+'%'+ chr(39));
    ADOQuery8.SQL.Add(' GROUP BY INENCFacturacion.cliente,CONTTerce.Primer_Apellido '+
      ' ORDER BY INENCFacturacion.cliente,CONTTerce.Primer_Apellido');
    ADOQuery8.Open;
    ADOQuery8.First;
end;

procedure TFrmContabFacturacion.Edit3Exit(Sender: TObject);
begin
  ADOQuery5.Close;
  ADOQuery5.SQL.Clear;
  ADOQuery5.SQL.Add('SELECT Empresa,Numero_Factura,Fecha,Cliente,(Valor_Total+Valor_Descuento+Valor_IVA-Valor_Conceptos) as Total,Numero_Comprobante_Contable'+
     ' FROM   INENCFacturacion'+
      ' WHERE Empresa = '+chr(39)+ADOQueryEmpresas.FieldValues['Codigo']+chr(39)+' AND'+
     '  (NOT (Numero_Comprobante_Contable IS NULL or Numero_Comprobante_Contable =0))');
     if edit3.Text <> '' Then ADOQuery5.SQL.Add(' AND month(fecha) = ' + edit3.Text );
     if edit4.Text <> '' Then ADOQuery5.SQL.Add(' AND Year(fecha)  = ' + edit4.Text );
     if edit8.Text <> '' Then ADOQuery5.SQL.Add(' AND Numero_Factura  like ' + chr(39) +'%'+edit8.Text+'%'+ chr(39));
		 ADOQuery5.SQL.Add(' AND		Numero_Comprobante_Contable  IN (SELECT Numero_Comprobante'+
		 '		FROM CONTEncComp'+
		 '		WHERE Tipo_Comprobante = ' +chr(39)+ADOTable1.FieldValues['Tipo_Comp_Contable']+chr(39)+')'+
     ' ORDER BY empresa,numero_factura');
  ADOQuery5.Open;
  ADOQuery5.First;
end;

procedure TFrmContabFacturacion.Edit5Exit(Sender: TObject);
begin
  ADOQuery6.Close;
  ADOQuery6.SQL.Clear;
  ADOQuery6.SQL.Add('SELECT Empresa,Numero_Factura,Fecha,Cliente,(Valor_Total+Valor_Descuento+Valor_IVA-Valor_conceptos) as Total,Numero_Comprobante_Contable'+
     ' FROM   INENCFacturacion'+
      ' WHERE Empresa = '+chr(39)+ADOQueryEmpresas.FieldValues['Codigo']+chr(39)+' AND'+
     '  (Numero_Comprobante_Contable =-1) AND'+
     '          (INENCFacturacion.estado <> '+chr(39)+'A'+chr(39)+' OR INENCFacturacion.estado IS Null) ');
     if edit5.Text <> '' Then ADOQuery6.SQL.Add(' AND month(fecha) = ' + edit5.Text );
     if edit6.Text <> '' Then ADOQuery6.SQL.Add(' AND Year(fecha)  = ' + edit6.Text );
		 ADOQuery6.SQL.Add(' 		AND Numero_Comprobante_Contable  IN (SELECT Numero_Comprobante'+
		 '		FROM CONTEncComp'+
		 '		WHERE Tipo_Comprobante = ' +chr(39)+ADOTable1.FieldValues['Tipo_Comp_Contable']+chr(39)+')'+
     ' ORDER BY empresa,numero_factura');
  ADOQuery6.Open;
  ADOQuery6.First;
end;

procedure TFrmContabFacturacion.SpeedButton5Click(Sender: TObject);
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

procedure TFrmContabFacturacion.SpeedButton1Click(Sender: TObject);
begin
  ProgressBar1.Max:=ADOQuery6.RecordCount;
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
  ADOQuery5.SQL.Clear;
  ADOQuery5.SQL.Add('SELECT Empresa,Numero_Factura,Fecha,Cliente,(Valor_Total+Valor_Descuento+Valor_IVA-Valor_Conceptos) as Total,Numero_Comprobante_Contable'+
     ' FROM   INENCFacturacion'+
      ' WHERE Empresa = '+chr(39)+ADOQueryEmpresas.FieldValues['Codigo']+chr(39)+' AND'+
     '  (NOT (Numero_Comprobante_Contable IS NULL or Numero_Comprobante_Contable =0))');
     if edit3.Text <> '' Then ADOQuery5.SQL.Add(' AND month(fecha) = ' + edit3.Text );
     if edit4.Text <> '' Then ADOQuery5.SQL.Add(' AND Year(fecha)  = ' + edit4.Text );
     if edit8.Text <> '' Then ADOQuery5.SQL.Add(' AND Numero_Factura  like ' + chr(39) +'%'+edit8.Text+'%'+ chr(39));
		 ADOQuery5.SQL.Add(' AND		Numero_Comprobante_Contable  IN (SELECT Numero_Comprobante'+
		 '		FROM CONTEncComp'+
		 '		WHERE Tipo_Comprobante = ' +chr(39)+ADOTable1.FieldValues['Tipo_Comp_Contable']+chr(39)+')'+
     ' ORDER BY empresa,numero_factura');
  ADOQuery5.Open;
  ADOQuery6.Close;
  ADOQuery6.Open;
end;

procedure TFrmContabFacturacion.SpeedButton3Click(Sender: TObject);
Var
  nrconta,CentroCosto,Terce:String;
  periodo:string;
  Desc:String;
  i,tmp,error:Integer;
  Valor_Total,vrd,vrc,ajuste:currency;
begin
  ProgressBar1.Max:=ADOQuery1.RecordCount;
  ProgressBar1.Position:=0;
  ADOQuery1.First;
  WHILE NOT ADOQuery1.Eof Do
  Begin
    error:=0;
    ProgressBar1.Position:=ProgressBar1.Position+1;

    //Busca el Tercero
    Terce:=ADOQuery1.FieldValues['Cliente'];
    ADOQTemp.Close;
    ADOQTemp.SQL.Clear;
    ADOQTemp.SQL.Add('SELECT * FROM CONTTerce,CONTTipTercexTerce,CONTTiTerc ');
    ADOQTemp.SQL.Add(' WHERE CONTTerce.Numero_Documento = CONTTipTercexTerce.Tercero AND ');
    ADOQTemp.SQL.Add('       CONTTipTercexTerce.Tipo_Tercero = CONTTiTerc.Tipo_Tercero AND ');
//    ADOQTemp.SQL.Add('       Modulo = '+chr(39)+'2'+chr(39)+' AND ');
    ADOQTemp.SQL.Add('       Numero_Documento=Left('+chr(39)+terce+chr(39)+',len(Numero_Documento))');
    ADOQTemp.Open;
    IF ADOQTemp.RecordCount <> 0 then
    Begin
      Try
        Datamodule1.ADOConnection1.BeginTrans;

        DateTimePicker1.DateTime:=ADOQuery1.FieldValues['fecha'];

        Periodo:=datetostr(DateTimePicker1.DateTime);

        if length(inttostr(yearof(strtodate(Periodo)))+inttostr(monthof(strtodatetime(Periodo)))) = 5 then
          Periodo:=inttostr(yearof(strtodate(Periodo)))+'0'+inttostr(monthof(strtodatetime(Periodo)))
        Else
          Periodo:=inttostr(yearof(strtodate(Periodo)))+inttostr(monthof(strtodatetime(Periodo)));

        nrconta:=dataModule1.Afecta_EncContabilidad(ADOTable1.FieldValues['Tipo_Comp_Contable'],ADOQuery1.FieldValues['Empresa'],DateTimePicker1.DateTime,'Grabado por Facturación No.: '+ADOQuery1.FieldValues['Empresa']+'-'+ADOQuery1.FieldValues['Numero_Factura'],Periodo,ADOQuery1.FieldValues['Empresa']+'-'+ADOQuery1.FieldValues['Numero_Factura'],'','','P',ADOQuery1.FieldValues['Numero_Factura']);

        if ADOQTemp.FieldValues['Tipo_Tercero'] <> null Then
        Begin
          ADOQuery4.Close;
          ADOQuery4.Parameters.ParamValues['Tipo'] := ADOQTemp.FieldValues['Tipo_Tercero'];
          ADOQuery4.Open;

          vrd:=0;
          vrc:=0;
          ADOQuery3.Close;
          ADOQuery3.Parameters.ParamValues['Emp']     :=DBLookupComboBox1.KeyValue;
          ADOQuery3.Parameters.ParamValues['NumFact'] :=ADOQuery1.FieldValues['Numero_Factura'];
          ADOQuery3.Open;
          While NOT Adoquery3.Eof Do
          Begin
            If ADOQuery3.FieldValues['Centro_Costo'] = null Then
            Begin
              // Ingresa al Cargo
              tmp:=0;
              IF (adoquery3.FieldValues['No_Cargo'] <> null) and (adoquery3.FieldValues['No_Cargo'] <> '') Then
              Begin
                adoquerycargo.Close;
                adoquerycargo.Parameters.ParamValues['NCarg']:=adoquery3.FieldValues['No_Cargo'];
                adoquerycargo.Open;
                tmp:=1;
                if adoquerycargo.RecordCount = 0 then tmp:=0;
              End
              Else tmp:=0;

              //Crea el Centro de Costo
              IF tmp=1 Then
              Begin
                IF adoquerycargo.FieldValues['Empresa_Solicita'] <> Null Then
                Begin
                  CentroCosto:=adoquerycargo.FieldValues['Empresa_Solicita']+'0'+adoquerycargo.FieldValues['Area_Solicita'];

                  ADOQTemp.Close;
                  ADOQTemp.SQL.Clear;
                  ADOQTemp.SQL.Add('SELECT * FROM Contcentros WHERE Centro_Costo='+chr(39)+CentroCosto+chr(39));
                  ADOQTemp.Open;
                  IF ADOQTemp.RecordCount = 0 Then
                  Begin
                    ADOQTemp.Append;
                    ADOQTemp.FieldValues['Centro_Costo']:=CentroCosto;
                    ADOQTemp.FieldValues['Descripcion']:='Centro de Costo por Crear';
                    ADOQTemp.Post;
                  End;
                End
                Else CentroCosto:='';
              End
              Else CentroCosto:='';
            End
            Else CentroCosto := ADOQuery3.FieldValues['Centro_Costo'];

            //Verifica el Producto o Servicio
            IF ADOQuery3.FieldValues['Tipo_PST'] = 'P' Then
            Begin
              Datamodule1.ADOQProducto.Close;
              Datamodule1.ADOQProducto.SQL.Clear;
              Datamodule1.ADOQproducto.SQL.Add('SELECT * FROM INProductos WHERE CD_PRODUCTO='+chr(39)+trim(ADOQuery3.FieldValues['Codigo_Producto'])+chr(39));
              Datamodule1.ADOQproducto.Open;
              If Datamodule1.ADOQproducto.RecordCount = 0 Then
              Begin
                Datamodule1.ADOQproducto.Append;
                Datamodule1.ADOQproducto.FieldValues['CD_Producto'] :=trim(ADOQuery3.FieldValues['Codigo_Producto']);
                Datamodule1.ADOQproducto.FieldValues['Descripcion'] :='Producto Recreado por Contabilidad.';
                Datamodule1.ADOQproducto.FieldValues['CD_Grupo']    := '1';
                Datamodule1.ADOQproducto.FieldValues['Estado']      := 'I';
                Datamodule1.ADOQproducto.Post;
              End;
              ADOQTemp.Close;
              ADOQTemp.SQL.Clear;
              ADOQTemp.SQL.Add('SELECT * FROM INGrupo WHERE Codigo_Grupo='+chr(39)+Datamodule1.ADOQproducto.FieldValues['CD_Grupo']+chr(39));
              ADOQTemp.Open;

              ADOQTemp2.Close;
              ADOQTemp2.SQL.Clear;
              ADOQTemp2.SQL.Add('SELECT * ');
              ADOQTemp2.SQL.Add(' FROM  INSaldosxPeriodo ');
              ADOQTemp2.SQL.Add(' WHERE Periodo ='+chr(39)+Periodo+chr(39)+' AND ');
              ADOQTemp2.SQL.Add('       Cd_Producto  ='+chr(39)+trim(ADOQuery3.FieldValues['Codigo_Producto'])+chr(39));
              ADOQTemp2.Open;

              //Contabiliza la Venta
              DataModule1.Afecta_DetContabilidad(ADOTable1.FieldValues['Tipo_Comp_Contable'],ADOQuery1.FieldValues['Empresa'],strtoint(nrconta),ADOQTemp.FieldValues['Cta_Tot_Antes_IVA'],0,adoquery3.FieldValues['Valor_Total'],Terce,CentroCosto,DBLookupComboBox1.KeyValue+'-'+ADOQuery1.FieldValues['Numero_Factura']);
              DataModule1.Afecta_DetContabilidad(ADOTable1.FieldValues['Tipo_Comp_Contable'],ADOQuery1.FieldValues['Empresa'],strtoint(nrconta),ADOQTemp.FieldValues['Cta_IVA'],0,adoquery3.FieldValues['Valor_IVA'],Terce,CentroCosto,DBLookupComboBox1.KeyValue+'-'+ADOQuery1.FieldValues['Numero_Factura']);
              vrc:=vrc+adoquery3.FieldValues['Valor_Total']+adoquery3.FieldValues['Valor_IVA'];

              //Contabiliza el Costo
              IF (ADOQuery1.FieldValues['SegundaFactura'] = null) OR (ADOQuery1.FieldValues['SegundaFactura'] = '0') Then  // No contabiliza la cuenta de inventarios si es factura de descuento.
              Begin

                IF  (ADOQTemp2.RecordCount <> 0) AND (ADOQTemp2.FieldValues['Ultimo_Costo'] <> null) Then
                Begin
                  //DataModule1.Afecta_DetContabilidad(ADOTable1.FieldValues['Tipo_Comp_Contable'],ADOQuery1.FieldValues['Empresa'],strtoint(nrconta),ADOQTemp.FieldValues['Cta_Inv_C'],0,adoquery3.FieldValues['Cantidad']*ADOQTemp2.FieldValues['Ultimo_Costo'],Terce,CentroCosto,DBLookupComboBox1.KeyValue+'-'+ADOQuery1.FieldValues['Numero_Factura']);
                  //DataModule1.Afecta_DetContabilidad(ADOTable1.FieldValues['Tipo_Comp_Contable'],ADOQuery1.FieldValues['Empresa'],strtoint(nrconta),ADOQTemp.FieldValues['Cta_Inv_D'],adoquery3.FieldValues['Cantidad']*ADOQTemp2.FieldValues['Ultimo_Costo'],0,Terce,CentroCosto,DBLookupComboBox1.KeyValue+'-'+ADOQuery1.FieldValues['Numero_Factura']);
                End;
              End;

            End
            Else IF ADOQuery3.FieldValues['Tipo_PST'] = 'S' Then Begin
              Datamodule1.ADOQProducto.Close;
              Datamodule1.ADOQProducto.SQL.Clear;
              Datamodule1.ADOQproducto.SQL.Add('SELECT * FROM SAServicios WHERE Codigo='+chr(39)+trim(ADOQuery3.FieldValues['Codigo_Producto'])+chr(39));
              Datamodule1.ADOQproducto.Open;
              If Datamodule1.ADOQproducto.RecordCount <> 0 Then
              Begin
                IF Datamodule1.ADOQproducto.FieldValues['Cuenta'] <> NULL Then Begin
                  ADOQTemp.Close;
                  ADOQTemp.SQL.Clear;
                  ADOQTemp.SQL.Add('SELECT * FROM SACAPITULOcups WHERE Cod_Capitulo='+chr(39)+Datamodule1.ADOQproducto.FieldValues['Capitulo']+chr(39));
                  ADOQTemp.Open;
                  DataModule1.Afecta_DetContabilidad(ADOTable1.FieldValues['Tipo_Comp_Contable'],ADOQuery1.FieldValues['Empresa'],strtoint(nrconta),Datamodule1.ADOQproducto.FieldValues['Cuenta'],0,adoquery3.FieldValues['Valor_Total'],Terce,CentroCosto,DBLookupComboBox1.KeyValue+'-'+ADOQuery1.FieldValues['Numero_Factura']);
                  DataModule1.Afecta_DetContabilidad(ADOTable1.FieldValues['Tipo_Comp_Contable'],ADOQuery1.FieldValues['Empresa'],strtoint(nrconta),ADOQTemp.FieldValues['Cta_IVA'],0,adoquery3.FieldValues['Valor_IVA'],Terce,CentroCosto,DBLookupComboBox1.KeyValue+'-'+ADOQuery1.FieldValues['Numero_Factura']);
                  vrc:=vrc+adoquery3.FieldValues['Valor_Total']+adoquery3.FieldValues['Valor_IVA'];
                End
                Else Begin
                  ADOQTemp.Close;
                  ADOQTemp.SQL.Clear;
                  ADOQTemp.SQL.Add('SELECT * FROM SACAPITULOcups WHERE Cod_Capitulo='+chr(39)+Datamodule1.ADOQproducto.FieldValues['Capitulo']+chr(39));
                  ADOQTemp.Open;
                  DataModule1.Afecta_DetContabilidad(ADOTable1.FieldValues['Tipo_Comp_Contable'],ADOQuery1.FieldValues['Empresa'],strtoint(nrconta),ADOQTemp.FieldValues['Cta_Tot_Antes_IVA'],0,adoquery3.FieldValues['Valor_Total'],Terce,CentroCosto,DBLookupComboBox1.KeyValue+'-'+ADOQuery1.FieldValues['Numero_Factura']);
                  DataModule1.Afecta_DetContabilidad(ADOTable1.FieldValues['Tipo_Comp_Contable'],ADOQuery1.FieldValues['Empresa'],strtoint(nrconta),ADOQTemp.FieldValues['Cta_IVA'],0,adoquery3.FieldValues['Valor_IVA'],Terce,CentroCosto,DBLookupComboBox1.KeyValue+'-'+ADOQuery1.FieldValues['Numero_Factura']);
                  vrc:=vrc+adoquery3.FieldValues['Valor_Total']+adoquery3.FieldValues['Valor_IVA'];
                End
              End
              Else Begin
                error:=1;
              End;
            End
            Else Begin
              Datamodule1.ADOQProducto.Close;
              Datamodule1.ADOQProducto.SQL.Clear;
              Datamodule1.ADOQproducto.SQL.Add('SELECT * FROM CRAgrupacion WHERE Codigo='+chr(39)+trim(ADOQuery3.FieldValues['Nombre'])+chr(39));
              Datamodule1.ADOQproducto.Open;
              If Datamodule1.ADOQproducto.RecordCount = 0 Then
              Begin
                Showmessage('ERROR: Esta Factura tenia una agrupación que despues fue eliminada ('+chr(39)+trim(ADOQuery3.FieldValues['Nombre'])+chr(39)+'),por valor de '+chr(39)+trim(ADOQuery3.FieldValues['Valor_Unitario'])+chr(39)+'. Por favor creela de nuevo.');
                Error:=1;
                Break;
              End;
              DataModule1.Afecta_DetContabilidad(ADOTable1.FieldValues['Tipo_Comp_Contable'],ADOQuery1.FieldValues['Empresa'],strtoint(nrconta),Datamodule1.ADOQproducto.FieldValues['Cuenta'],0,adoquery3.FieldValues['Valor_Total'],Terce,CentroCosto,DBLookupComboBox1.KeyValue+'-'+ADOQuery1.FieldValues['Numero_Factura']);
              if adoquery3.FieldValues['Valor_IVA'] <> null then Begin
                DataModule1.Afecta_DetContabilidad(ADOTable1.FieldValues['Tipo_Comp_Contable'],ADOQuery1.FieldValues['Empresa'],strtoint(nrconta),Datamodule1.ADOQproducto.FieldValues['Cuenta_IVA'],0,adoquery3.FieldValues['Valor_IVA'],Terce,CentroCosto,DBLookupComboBox1.KeyValue+'-'+ADOQuery1.FieldValues['Numero_Factura']);
                vrc:=vrc+adoquery3.FieldValues['Valor_Total']+adoquery3.FieldValues['Valor_IVA'];
              End
              Else vrc:=vrc+adoquery3.FieldValues['Valor_Total'];
            End;
            ADOQuery3.Next;
          End;
        End
        Else Begin
          Showmessage('ERROR: No tiene tipo de tercero.');
          Error:=1;
        End;

        If error = 0 Then
        Begin
          //Graba el Total General de la Factura, junto con los Descuentos y/o Retenciones.
          //DataModule1.Afecta_DetContabilidad(ADOTable1.FieldValues['Tipo_Comp_Contable'],strtoint(nrconta),ADOQuery4.FieldValues['Cta_Tot_Desp_IVA'],adoquery1.FieldValues['Total'],0,Terce,CentroCosto,DBLookupComboBox1.KeyValue+'-'+ADOQuery1.FieldValues['Numero_Factura']);
          if (vrc - (adoquery1.FieldValues['Valor_Total']+adoquery1.FieldValues['Valor_IVA'])) > 2 then begin
            DataModule1.Afecta_DetContabilidad(ADOTable1.FieldValues['Tipo_Comp_Contable'],ADOQuery1.FieldValues['Empresa'],strtoint(nrconta),ADOQuery4.FieldValues['Cta_Tot_Desp_IVA'],adoquery1.FieldValues['Valor_Total']-adoquery1.FieldValues['Valor_Descuento'],0,Terce,CentroCosto,DBLookupComboBox1.KeyValue+'-'+ADOQuery1.FieldValues['Numero_Factura']);
            DataModule1.Afecta_DetContabilidad(ADOTable1.FieldValues['Tipo_Comp_Contable'],ADOQuery1.FieldValues['Empresa'],strtoint(nrconta),ADOQuery4.FieldValues['Cta_DSCTO'],adoquery1.FieldValues['Valor_Descuento']+(vrc - adoquery1.FieldValues['Valor_Total']),0,Terce,CentroCosto,DBLookupComboBox1.KeyValue+'-'+ADOQuery1.FieldValues['Numero_Factura'])
          end
          else begin
            DataModule1.Afecta_DetContabilidad(ADOTable1.FieldValues['Tipo_Comp_Contable'],ADOQuery1.FieldValues['Empresa'],strtoint(nrconta),ADOQuery4.FieldValues['Cta_Tot_Desp_IVA'],vrc-adoquery1.FieldValues['Valor_Descuento'],0,Terce,CentroCosto,DBLookupComboBox1.KeyValue+'-'+ADOQuery1.FieldValues['Numero_Factura']);
            DataModule1.Afecta_DetContabilidad(ADOTable1.FieldValues['Tipo_Comp_Contable'],ADOQuery1.FieldValues['Empresa'],strtoint(nrconta),ADOQuery4.FieldValues['Cta_DSCTO'],adoquery1.FieldValues['Valor_Descuento'],0,Terce,CentroCosto,DBLookupComboBox1.KeyValue+'-'+ADOQuery1.FieldValues['Numero_Factura']);
          end;

          ADOQuery1.Edit;
          ADOQuery1.FieldValues['Numero_Comprobante_Contable']:=nrconta;
          ADOQuery1.Post;
          Datamodule1.ADOConnection1.CommitTrans;
        End
        Else Datamodule1.ADOConnection1.RollbackTrans;
      except
        Datamodule1.ADOConnection1.RollbackTrans;
      end;
    End
    Else Begin
      ShowMessage('ERROR: No es posible generar esta factura ya que el tercero no existe o no es de Tipo Cliente.');
    End;

    ADOQuery1.Next;
  End;

  ADOQuery1.Close;
  ADOQuery1.Open;
  ADOQuery5.Close;
  ADOQuery5.SQL.Clear;
  ADOQuery5.SQL.Add('SELECT Empresa,Numero_Factura,Fecha,Cliente,(Valor_Total+Valor_Descuento+Valor_IVA-Valor_Conceptos) as Total,Numero_Comprobante_Contable'+
     ' FROM   INENCFacturacion'+
      ' WHERE Empresa = '+chr(39)+ADOQueryEmpresas.FieldValues['Codigo']+chr(39)+' AND'+
     '  (NOT (Numero_Comprobante_Contable IS NULL or Numero_Comprobante_Contable =0))');
     if edit3.Text <> '' Then ADOQuery5.SQL.Add(' AND month(fecha) = ' + edit3.Text );
     if edit4.Text <> '' Then ADOQuery5.SQL.Add(' AND Year(fecha)  = ' + edit4.Text );
     if edit8.Text <> '' Then ADOQuery5.SQL.Add(' AND Numero_Factura  like ' + chr(39) +'%'+edit8.Text+'%'+ chr(39));
		 ADOQuery5.SQL.Add(' AND		Numero_Comprobante_Contable  IN (SELECT Numero_Comprobante'+
		 '		FROM CONTEncComp'+
		 '		WHERE Tipo_Comprobante = ' +chr(39)+ADOTable1.FieldValues['Tipo_Comp_Contable']+chr(39)+')'+
     ' ORDER BY empresa,numero_factura');
  ADOQuery5.Open;
  ADOQuery6.Close;
  ADOQuery6.Open;
end;

procedure TFrmContabFacturacion.Button10Click(Sender: TObject);
begin
  FrmAsignaGrupo := tFrmAsignaGrupo.create(application);
  try
    Datamodule1.MuestraconAcceso(FrmAsignaGrupo);
  except
    FrmAsignaGrupo.free;
  end;
end;

procedure TFrmContabFacturacion.Button2Click(Sender: TObject);
begin
  Grupos := tGrupos.create(application);
  try
    Datamodule1.MuestraconAcceso(Grupos);
  except
    Grupos.free;
  end;
end;

procedure TFrmContabFacturacion.Button3Click(Sender: TObject);
begin
  HomologaCupPush := tHomologaCupPush.create(application);
  try
    Datamodule1.MuestraconAcceso(HomologaCupPush);
  except
    HomologaCupPush.free;
  end;
end;

procedure TFrmContabFacturacion.Button5Click(Sender: TObject);
begin
  frmcapitulos := tfrmcapitulos.create(application);
  try
    Datamodule1.MuestraconAcceso(frmcapitulos);
  except
    frmcapitulos.free;
  end;
end;

procedure TFrmContabFacturacion.Button6Click(Sender: TObject);
begin
  HomologaPaquetePush := tHomologaPaquetePush.create(application);
  try
    Datamodule1.MuestraconAcceso(HomologaPaquetePush);
  except
    HomologaPaquetePush.free;
  end;
end;

procedure TFrmContabFacturacion.DBGrid1DblClick(Sender: TObject);
begin
    //Impresiòn de la Factura.
    FImprimeFactura := tFImprimeFactura.create(application);
    try
      FImprimeFactura.DateTimePicker1.DateTime := ADOQuery1.FieldValues['Fecha'];
      FImprimeFactura.DBLookupComboBox2.KeyValue := DBLookupComboBox1.KeyValue;
      FImprimeFactura.DBLookupComboBox2Exit(Nil);
      FImprimeFactura.Edit1.Text := ADOQuery1.FieldValues['Numero_Factura'];
      FImprimeFactura.Edit2.Text := ADOQuery1.FieldValues['Numero_Factura'];
      Datamodule1.MuestraconAcceso(FImprimeFactura);
    except
      FImprimeFactura.free;
    end;
End;

procedure TFrmContabFacturacion.DBGrid2DblClick(Sender: TObject);
begin
  If RadioButton1.Checked = True then
  Begin
    //Impresiòn de la Factura.
    FImprimeFactura := tFImprimeFactura.create(application);
    try
      FImprimeFactura.DateTimePicker1.DateTime := ADOQuery5.FieldValues['Fecha'];
      FImprimeFactura.DBLookupComboBox2.KeyValue := DBLookupComboBox1.KeyValue;
      FImprimeFactura.DBLookupComboBox2Exit(Nil);
      FImprimeFactura.Edit1.Text := ADOQuery5.FieldValues['Numero_Factura'];
      FImprimeFactura.Edit2.Text := ADOQuery5.FieldValues['Numero_Factura'];
      Datamodule1.MuestraconAcceso(FImprimeFactura);
    except
      FImprimeFactura.free;
    end;
  End
  Else Begin
    FormImpComp := tFormImpComp.create(application);
    try
      Datamodule1.MuestraconAcceso(FormImpComp);
      FormImpComp.DBLookupComboBox5.keyvalue := ADOTable1.FieldValues['Tipo_Comp_Contable'];
      FormImpComp.Edit1.Text:= ADOQuery5.FieldValues['Numero_Comprobante_Contable'];
    except
      FormImpComp.free;
    end;
  End;
end;

procedure TFrmContabFacturacion.DBGrid3DblClick(Sender: TObject);
begin
  {FacturaFormatoIPS := tFacturaFormatoIPS.create(application);
  try
    Datamodule1.MuestraconAcceso(FacturaFormatoIPS);
  except
    FacturaFormatoIPS.free;
  end;

  FacturaFormatoIPS.ADOTable1.Open;
  FacturaFormatoIPS.ADOQuery1.Close;
  FacturaFormatoIPS.ADOQuery1.Parameters.ParamValues['emp']:= ADOQuery6.FieldValues['Empresa'];
  FacturaFormatoIPS.ADOQuery1.Parameters.ParamValues['nofact']:= ADOQuery6.FieldValues['Numero_Factura'];
  FacturaFormatoIPS.ADOQuery1.Open;
  If FacturaFormatoIPS.ADOQuery1.RecordCount = 0 Then Begin
    Showmessage('Error: Esta Factura no se puede mostrar por que los datos relacionados fueron eliminados.');
    Halt;
  End;

  FacturaFormatoIPS.ADOQuery2.Close;
  FacturaFormatoIPS.ADOQuery2.Parameters.ParamValues['emp']:= ADOQuery6.FieldValues['Empresa'];
  FacturaFormatoIPS.ADOQuery2.Parameters.ParamValues['nfact']:= ADOQuery6.FieldValues['Numero_Factura'];
  FacturaFormatoIPS.ADOQuery2.Open;

  FacturaFormatoIPS.QRLabel22.Caption:= datamodule1.xIntToLletras(FacturaFormatoIPS.ADOQuery1.FieldValues['Valor_Total']+FacturaFormatoIPS.ADOQuery1.FieldValues['Valor_IVA']-FacturaFormatoIPS.ADOQuery1.FieldValues['Valor_Descuento'])+ ' Pesos.';
  FacturaFormatoIPS.QuickRep1.PreviewInitialState := wsMaximized;
   FacturaFormatoIPS.QuickRep1.PreviewModal;
   FacturaFormatoIPS.Close;}
end;

procedure TFrmContabFacturacion.DBLookupComboBox1Exit(Sender: TObject);
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT INENCFacturacion.Empresa,INENCFacturacion.Numero_Factura,Fecha,Cliente,Valor_Total,Valor_Descuento,Valor_IVA,(Valor_Total-Valor_Descuento+Valor_IVA-Valor_Conceptos) as Total,Numero_Comprobante_Contable,SegundaFactura'+
      ' FROM INENCFacturacion'+
      ' WHERE Empresa = '+chr(39)+ADOQueryEmpresas.FieldValues['Codigo']+chr(39)+' AND'+
      '        (Numero_Comprobante_Contable IS NULL or Numero_Comprobante_Contable =0) AND'+
      '          (INENCFacturacion.estado <> '+chr(39)+'A'+chr(39)+' OR INENCFacturacion.estado IS Null)');
  if edit1.Text <> '' Then ADOQuery1.SQL.Add(' AND month(fecha) = ' + edit1.Text );
  if edit2.Text <> '' Then ADOQuery1.SQL.Add(' AND Year(fecha)  = ' + edit2.Text );
  if edit7.Text <> '' Then ADOQuery1.SQL.Add(' AND Numero_Factura  like ' + chr(39) +'%'+edit7.Text+'%'+ chr(39));
  ADOQuery1.SQL.Add(' ORDER BY empresa,numero_factura');
  ADOQuery1.Open;

  ADOQuery2.Close;
  ADOQuery2.Parameters.ParamValues['Emp']:=ADOQueryEmpresas.FieldValues['Codigo'];
  ADOQuery2.Open;
  ADOQuery5.Close;
  ADOQuery5.SQL.Clear;
  ADOQuery5.SQL.Add('SELECT Empresa,Numero_Factura,Fecha,Cliente,(Valor_Total+Valor_Descuento+Valor_IVA-Valor_Conceptos) as Total,Numero_Comprobante_Contable'+
     ' FROM   INENCFacturacion'+
      ' WHERE Empresa = '+chr(39)+ADOQueryEmpresas.FieldValues['Codigo']+chr(39)+' AND'+
     '  (NOT (Numero_Comprobante_Contable IS NULL or Numero_Comprobante_Contable =0))');
     if edit3.Text <> '' Then ADOQuery5.SQL.Add(' AND month(fecha) = ' + edit3.Text );
     if edit4.Text <> '' Then ADOQuery5.SQL.Add(' AND Year(fecha)  = ' + edit4.Text );
     if edit8.Text <> '' Then ADOQuery5.SQL.Add(' AND Numero_Factura  like ' + chr(39) +'%'+edit8.Text+'%'+ chr(39));
		 ADOQuery5.SQL.Add(' AND		Numero_Comprobante_Contable  IN (SELECT Numero_Comprobante'+
		 '		FROM CONTEncComp'+
		 '		WHERE Tipo_Comprobante = ' +chr(39)+ADOTable1.FieldValues['Tipo_Comp_Contable']+chr(39)+')'+
     ' ORDER BY empresa,numero_factura');
  ADOQuery5.Open;
  ADOQuery6.Close;
  ADOQuery6.Parameters.ParamValues['Emp']:=ADOQueryEmpresas.FieldValues['Codigo'];
  ADOQuery6.Parameters.ParamValues['tpComp']:=ADOTable1.FieldValues['Tipo_Comp_Contable'];
  ADOQuery6.Open;
  ADOQuery8.Close;
  ADOQuery8.Parameters.ParamValues['Emp']:=ADOQueryEmpresas.FieldValues['Codigo'];
  ADOQuery8.Open;
end;

procedure TFrmContabFacturacion.Button4Click(Sender: TObject);
var err:integer;
begin
  err:=0;

  Memo1.Clear;
  //Verificación de los Parametros:
  Memo1.Lines.Add('1-Verificar la tabla de parametrización.');
  IF ADOTable1.FieldValues['Tipo_Comp_Contable'] = '' Then
    Memo1.Lines.Add('- El tipo de Comprobante Contable en la parametrización no esta creado.');

  ADOQTemp.Close;
  ADOQTemp.SQL.Clear;
  ADOQtemp.SQL.Add('SELECT * FROM CONTTipoComp WHERE Tipo_Comprobante = ' +chr(39)+ADOTable1.FieldValues['Tipo_Comp_Contable']+chr(39));
  ADOQtemp.Open;
  IF ADOQtemp.RecordCount = 0 Then
  begin
    err:=err+1;
    Memo1.Lines.Add('- El tipo de Comprobante Contable definido en la parametrización no existe.');
  end;

  Memo1.Lines.Add('2-Verificar los Grupos de Productos.');
  ADOQTemp.Close;
  ADOQTemp.SQL.Clear;
  ADOQtemp.SQL.Add('SELECT * FROM INGrupo');
  ADOQtemp.Open;
  ProgressBar1.Max:=ADOQTemp.RecordCount;
  ProgressBar1.Position:=0;
  ADOQtemp.First;
  WHILE NOT ADOQtemp.eof  Do
  Begin
    ProgressBar1.Position:=ProgressBar1.Position+1;
    ADOQTemp2.Close;
    ADOQTemp2.SQL.Clear;
    ADOQtemp2.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = ' +chr(39)+ADOQTemp.FieldValues['Cta_Tot_Antes_IVA']+chr(39));
    ADOQtemp2.Open;
    IF ADOQtemp2.RecordCount = 0 Then begin
      err:=err+1;
      Memo1.Lines.Add('- La Cuenta Contable del Grupo ' +chr(39)+ADOQTemp.FieldValues['Codigo_Grupo']+chr(39)+' del Subtotal antes de IVA no existe.')
    end
    ELSE begin
      IF ADOQtemp2.FieldValues['Estado'] <> 'A' Then begin
        err:=err+1;
        Memo1.Lines.Add('- La Cuenta Contable del Grupo ' +chr(39)+ADOQTemp.FieldValues['Codigo_Grupo']+chr(39)+' del Subtotal antes de IVA no esta activa o no es de Detalle.');
      end;
    end;

    ADOQTemp2.Close;
    ADOQTemp2.SQL.Clear;
    ADOQtemp2.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = ' +chr(39)+ADOQTemp.FieldValues['Cta_IVA']+chr(39));
    ADOQtemp2.Open;
    IF ADOQtemp2.RecordCount = 0 Then begin
      err:=err+1;
      Memo1.Lines.Add('- La Cuenta Contable del Grupo ' +chr(39)+ADOQTemp.FieldValues['Codigo_Grupo']+chr(39)+' del IVA no existe.')
    end
    ELSE begin
      IF ADOQtemp2.FieldValues['Estado'] <> 'A' then begin
        err:=err+1;
        Memo1.Lines.Add('- La Cuenta Contable del Grupo ' +chr(39)+ADOQTemp.FieldValues['Codigo_Grupo']+chr(39)+' del IVA no esta activa o no es de Detalle.');
      end;
    end;

    ADOQTemp2.Close;
    ADOQTemp2.SQL.Clear;
    ADOQtemp2.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = ' +chr(39)+ADOQTemp.FieldValues['Cta_Inv_D']+chr(39));
    ADOQtemp2.Open;
    IF ADOQtemp2.RecordCount = 0 Then begin
      err:=err+1;
      Memo1.Lines.Add('- La Cuenta Contable del Grupo ' +chr(39)+ADOQTemp.FieldValues['Codigo_Grupo']+chr(39)+' del Inventario Debito no existe.')
    end
    ELSE begin
      IF ADOQtemp2.FieldValues['Estado'] <> 'A' then begin
        err:=err+1;
        Memo1.Lines.Add('- La Cuenta Contable del Grupo ' +chr(39)+ADOQTemp.FieldValues['Codigo_Grupo']+chr(39)+' del Inventario Debito no esta activa o no es de Detalle.');
      end;
    end;

    ADOQTemp2.Close;
    ADOQTemp2.SQL.Clear;
    ADOQtemp2.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = ' +chr(39)+ADOQTemp.FieldValues['Cta_Inv_C']+chr(39));
    ADOQtemp2.Open;
    IF ADOQtemp2.RecordCount = 0 Then begin
      err:=err+1;
      Memo1.Lines.Add('- La Cuenta Contable del Grupo ' +chr(39)+ADOQTemp.FieldValues['Codigo_Grupo']+chr(39)+' del Inventario Credito no existe.')
    end
    ELSE begin
      IF ADOQtemp2.FieldValues['Estado'] <> 'A' Then begin
        err:=err+1;
        Memo1.Lines.Add('- La Cuenta Contable del Grupo ' +chr(39)+ADOQTemp.FieldValues['Codigo_Grupo']+chr(39)+' del Inventario Credito no esta activa o no es de Detalle.');
      end;
    end;

    ADOQtemp.Next;
  End;

  Memo1.Lines.Add('2.1-Verificar que todos los Productos esten asignados a un Grupo.');
  ADOQTemp.Close;
  ADOQTemp.SQL.Clear;
  ADOQtemp.SQL.Add('SELECT * FROM INProductos');
  ADOQtemp.Open;
  ProgressBar1.Max:=ADOQTemp.RecordCount;
  ProgressBar1.Position:=0;
  ADOQtemp.First;
  WHILE NOT ADOQtemp.eof  Do
  Begin
    ProgressBar1.Position:=ProgressBar1.Position+1;
    ADOQTemp2.Close;
    ADOQTemp2.SQL.Clear;
    ADOQtemp2.SQL.Add('SELECT * FROM INGrupo WHERE Codigo_Grupo = ' +chr(39)+ADOQTemp.FieldValues['CD_Grupo']+chr(39));
    ADOQtemp2.Open;
    IF ADOQtemp2.RecordCount = 0 Then begin
      err:=err+1;
      Memo1.Lines.Add('- El Grupo del Producto ' +chr(39)+ADOQTemp.FieldValues['CD_Producto']+chr(39)+' no existe.');
    end;
    ADOQtemp.Next;
  End;

  Memo1.Lines.Add('3-Verificar los Servicios.');
  if ADOTable1.FieldValues['Tipo_Factura'] = '2' then
  Begin
    ADOQTemp.Close;
    ADOQTemp.SQL.Clear;
    ADOQtemp.SQL.Add('SELECT * FROM SAServicios WHERE estado = '+chr(39)+'A'+chr(39));
    ADOQtemp.Open;
    ProgressBar1.Max:=ADOQTemp.RecordCount;
    ProgressBar1.Position:=0;
    ADOQtemp.First;
    WHILE NOT ADOQtemp.eof Do
    Begin
      ProgressBar1.Position:=ProgressBar1.Position+1;
      ADOQTemp2.Close;
      ADOQTemp2.SQL.Clear;
      ADOQtemp2.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = ' +chr(39)+ADOQTemp.FieldValues['Cuenta']+chr(39));
      ADOQtemp2.Open;
      IF ADOQtemp2.RecordCount = 0 Then begin
        err:=err+1;
        Memo1.Lines.Add('- La Cuenta Contable del Servicio ' +chr(39)+ADOQTemp.FieldValues['Codigo']+chr(39)+' no existe.')
      end
      ELSE begin
        IF ADOQtemp2.FieldValues['Estado'] <> 'A' then begin
          err:=err+1;
          Memo1.Lines.Add('- La Cuenta Contable del Servicio ' +chr(39)+ADOQTemp.FieldValues['Codigo']+chr(39)+' no esta activa o no es de Detalle.');
        end;
      end;

      ADOQtemp.Next;
    End;
  End;

  Memo1.Lines.Add('3.1-Verificar que todos los Servicios esten asignados a un Capitulo.');
  ADOQTemp.Close;
  ADOQTemp.SQL.Clear;
  ADOQtemp.SQL.Add('SELECT * FROM SAServicios');
  ADOQtemp.Open;
  ProgressBar1.Max:=ADOQTemp.RecordCount;
  ProgressBar1.Position:=0;
  ADOQtemp.First;
  WHILE NOT ADOQtemp.eof  Do
  Begin
    ProgressBar1.Position:=ProgressBar1.Position+1;
    ADOQTemp2.Close;
    ADOQTemp2.SQL.Clear;
    ADOQtemp2.SQL.Add('SELECT * FROM SACapituloCups WHERE Cod_Capitulo = ' +chr(39)+ADOQTemp.FieldValues['Capitulo']+chr(39));
    ADOQtemp2.Open;
    IF ADOQtemp2.RecordCount = 0 Then begin
      err:=err+1;
      Memo1.Lines.Add('- El Capitulo del Servicio ' +chr(39)+ADOQTemp.FieldValues['Capitulo']+chr(39)+' no existe.');
    end;
    ADOQTemp.Next;
  End;

  Memo1.Lines.Add('4-Verificar los Capitulos de Servicios.');
  ADOQTemp.Close;
  ADOQTemp.SQL.Clear;
  ADOQtemp.SQL.Add('SELECT * FROM SACapituloCups');
  ADOQtemp.Open;
  ProgressBar1.Max:=ADOQTemp.RecordCount;
  ProgressBar1.Position:=0;
  ADOQtemp.First;
  WHILE NOT ADOQtemp.eof Do
  Begin
    ProgressBar1.Position:=ProgressBar1.Position+1;

    if ADOTable1.FieldValues['Tipo_Factura'] = '1' then
    Begin
      ADOQTemp2.Close;
      ADOQTemp2.SQL.Clear;
      ADOQtemp2.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = ' +chr(39)+ADOQTemp.FieldValues['Cta_Tot_Antes_IVA']+chr(39));
      ADOQtemp2.Open;
      IF ADOQtemp2.RecordCount = 0 Then begin
        err:=err+1;
        Memo1.Lines.Add('- La Cuenta Contable del Capitulo ' +chr(39)+ADOQTemp.FieldValues['Cod_Capitulo']+chr(39)+' del Subtotal antes de IVA no existe.')
      end
      ELSE begin
        IF ADOQtemp2.FieldValues['Estado'] <> 'A' then begin
          err:=err+1;
          Memo1.Lines.Add('- La Cuenta Contable del Capitulo ' +chr(39)+ADOQTemp.FieldValues['Cod_Capitulo']+chr(39)+' no esta activa o no es de Detalle.');
        end;
      end;
    end;

    ADOQTemp2.Close;
    ADOQTemp2.SQL.Clear;
    ADOQtemp2.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = ' +chr(39)+ADOQTemp.FieldValues['Cta_IVA']+chr(39));
    ADOQtemp2.Open;
    IF ADOQtemp2.RecordCount = 0 Then
    begin
      err:=err+1;
      Memo1.Lines.Add('- La Cuenta Contable del Capitulo ' +chr(39)+ADOQTemp.FieldValues['Cod_Capitulo']+chr(39)+' del IVA no existe.')
    end
    ELSE begin
      IF ADOQtemp2.FieldValues['Estado'] <> 'A' then begin
        err:=err+1;
        Memo1.Lines.Add('- La Cuenta Contable del Capitulo ' +chr(39)+ADOQTemp.FieldValues['Cod_Capitulo']+chr(39)+' no esta activa o no es de Detalle.');
      end
    end;

    ADOQtemp.Next;
  End;

  Memo1.Lines.Add('5-Verificar las Agrupaciones.');
  ADOQTemp.Close;
  ADOQTemp.SQL.Clear;
  ADOQtemp.SQL.Add('SELECT * FROM CRAgrupacion');
  ADOQtemp.Open;
  ProgressBar1.Max:=ADOQTemp.RecordCount;
  ProgressBar1.Position:=0;
  ADOQtemp.First;
  WHILE NOT ADOQtemp.eof Do
  Begin
    ProgressBar1.Position:=ProgressBar1.Position+1;
    if ADOQTemp.FieldValues['Cuenta'] = null then begin
      err:=err+1;
      Memo1.Lines.Add('- La agrupación ' +chr(39)+ADOQTemp.FieldValues['Codigo']+chr(39)+' No tiene cuenta.')
    end
    else begin
      ADOQTemp2.Close;
      ADOQTemp2.SQL.Clear;
      ADOQtemp2.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = ' +chr(39)+ADOQTemp.FieldValues['Cuenta']+chr(39));
      ADOQtemp2.Open;
      IF ADOQtemp2.RecordCount = 0 Then begin
        err:=err+1;
        Memo1.Lines.Add('- La Cuenta Contable de la agrupación ' +chr(39)+ADOQTemp.FieldValues['Codigo']+chr(39)+' del Subtotal antes de IVA no existe.')
      end
      ELSE begin
        IF ADOQtemp2.FieldValues['Estado'] <> 'A' Then begin
          err:=err+1;
          Memo1.Lines.Add('- La Cuenta Contable de la agrupación ' +chr(39)+ADOQTemp.FieldValues['Codigo']+chr(39)+' no esta activa o no es de Detalle.');
        end
      end;
    end;

    if ADOQTemp.FieldValues['Cuenta_IVA'] = null then begin
      err:=err+1;
      Memo1.Lines.Add('- La agrupación ' +chr(39)+ADOQTemp.FieldValues['Codigo']+chr(39)+' No tiene cuenta.')
    end
    else begin
      ADOQTemp2.Close;
      ADOQTemp2.SQL.Clear;
      ADOQtemp2.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = ' +chr(39)+ADOQTemp.FieldValues['Cuenta_IVA']+chr(39));
      ADOQtemp2.Open;
      IF ADOQtemp2.RecordCount = 0 Then begin
        err:=err+1;
        Memo1.Lines.Add('- La Cuenta Contable de la agrupación ' +chr(39)+ADOQTemp.FieldValues['Codigo']+chr(39)+' del IVA no existe.')
      end
      ELSE begin
        IF ADOQtemp2.FieldValues['Estado'] <> 'A' Then begin
          err:=err+1;
          Memo1.Lines.Add('- La Cuenta Contable de la agrupación ' +chr(39)+ADOQTemp.FieldValues['Codigo']+chr(39)+' no esta activa o no es de Detalle.');
        end
      end;
    end;

    ADOQtemp.Next;
  End;

  Memo1.Lines.Add('6-Verificar los Tipos de Terceros.');
  ADOQTemp.Close;
  ADOQTemp.SQL.Clear;
  ADOQtemp.SQL.Add('SELECT * FROM CONTTiterc WHERE Estado = '+chr(39)+'A'+chr(39));
  ADOQtemp.Open;
  ProgressBar1.Max:=ADOQTemp.RecordCount;
  ProgressBar1.Position:=0;
  ADOQtemp.First;
  WHILE NOT ADOQtemp.eof Do
  Begin
    ProgressBar1.Position:=ProgressBar1.Position+1;
    IF ADOQTemp.FieldValues['Cta_Tot_Desp_IVA'] = null Then begin
      err:=err+1;
      Memo1.Lines.Add('- La Cuenta Contable del Tipo Tercero ' +chr(39)+ADOQTemp.FieldValues['Tipo_Tercero']+chr(39)+' esta en blanco.')
    end
    Else Begin
      ADOQTemp2.Close;
      ADOQTemp2.SQL.Clear;
      ADOQtemp2.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = ' +chr(39)+ADOQTemp.FieldValues['Cta_Tot_Desp_IVA']+chr(39));
      ADOQtemp2.Open;
      IF ADOQtemp2.RecordCount = 0 Then begin
        err:=err+1;
        Memo1.Lines.Add('- La Cuenta Contable de la agrupación ' +chr(39)+ADOQTemp.FieldValues['Cta_Tot_Desp_IVA']+chr(39)+' del Subtotal antes de IVA no existe.')
      end
      ELSE begin
        IF ADOQtemp2.FieldValues['Estado'] <> 'A' Then begin
          err:=err+1;
          Memo1.Lines.Add('- La Cuenta Contable de la agrupación ' +chr(39)+ADOQTemp.FieldValues['Cta_Tot_Desp_IVA']+chr(39)+' no esta activa o no es de Detalle.');
        end
      end;
    End;

    IF ADOQTemp.FieldValues['Cta_DSCTO'] = null Then begin
      err:=err+1;
      Memo1.Lines.Add('- La Cuenta Contable del Tipo Tercero ' +chr(39)+ADOQTemp.FieldValues['Tipo_Tercero']+chr(39)+' esta en blanco.')
    end
    Else Begin
      ADOQTemp2.Close;
      ADOQTemp2.SQL.Clear;
      ADOQtemp2.SQL.Add('SELECT * FROM CONTCuenta WHERE Cuenta = ' +chr(39)+ADOQTemp.FieldValues['Cta_DSCTO']+chr(39));
      ADOQtemp2.Open;
      IF ADOQtemp2.RecordCount = 0 Then begin
        err:=err+1;
        Memo1.Lines.Add('- La Cuenta Contable de la agrupación  ' +chr(39)+ADOQTemp.FieldValues['Cta_DSCTO']+chr(39)+' del Descuento no existe.')
      end
      ELSE begin
        IF ADOQtemp2.FieldValues['Estado'] <> 'A' Then begin
          err:=err+1;
          Memo1.Lines.Add('- La Cuenta Contable de la agrupación ' +chr(39)+ADOQTemp.FieldValues['Cta_DSCTO']+chr(39)+' no esta activa o no es de Detalle.');
        end
      end
    End;

    ADOQtemp.Next;
  End;

//  Memo1.Lines.Add('6.1-Verificar que todos los Terceros esten asignados a un Tipo.');
//  ADOQTemp.Close;
//  ADOQTemp.SQL.Clear;
//  ADOQtemp.SQL.Add('SELECT * FROM GEAseguradororas');
//  ADOQtemp.Open;
//  ProgressBar1.Max:=ADOQTemp.RecordCount;
//  ProgressBar1.Position:=0;
//  ADOQtemp.First;
//  WHILE NOT ADOQtemp.eof  Do
//  Begin
//    ProgressBar1.Position:=ProgressBar1.Position+1;
//    IF (ADOQTemp.FieldValues['Tipo_Tercero'] <> null) and (ADOQTemp.FieldValues['Tipo_Tercero'] <> '') Then
//    Begin
//      ADOQTemp2.Close;
//      ADOQTemp2.SQL.Clear;
//      ADOQtemp2.SQL.Add('SELECT * FROM CONTTiterc WHERE Tipo_Tercero = ' +chr(39)+ADOQTemp.FieldValues['Tipo_Tercero']+chr(39));
//      ADOQtemp2.Open;
//      IF ADOQtemp2.RecordCount = 0 Then begin
//        err:=err+1;
//        Memo1.Lines.Add('- El Tipo de Tercero ' +chr(39)+ADOQTemp.FieldValues['Tipo_tercero']+chr(39)+' no existe.');
//      end;
//    End
//    Else begin
//      err:=err+1;
//      Memo1.Lines.Add('- El Tercero o Aseguradora' +chr(39)+ADOQTemp.FieldValues['Num_Documento']+chr(39)+' no tiene tipo de documento asignado.');
//    end;
//    ADOQTemp.Next;
//  End;

  Memo1.Lines.Add('Proceso Finalizado.');
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


procedure TFrmContabFacturacion.Button7Click(Sender: TObject);
begin
  FormTipoTerc := tFormTipoTerc.create(application);
  try
    Datamodule1.MuestraconAcceso(FormTipoTerc);
  except
    FormTipoTerc.free;
  end;
end;

procedure TFrmContabFacturacion.SpeedButton2Click(Sender: TObject);
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
    ADOQTemp.SQL.Add(' WHERE Tipo_Comprobante   = ' +chr(39)+ADOTable1.FieldValues['Tipo_Comp_Contable']+chr(39)+' AND');
    ADOQTemp.SQL.Add('       Numero_Comprobante = ' +inttostr(ADOQuery7.FieldValues['Numero_Comprobante_Contable']));
    ADOQTemp.ExecSQL;

    ADOQTemp.Close;
    ADOQTemp.SQL.Clear;
    ADOQTemp.SQL.Add('DELETE');
    ADOQTemp.SQL.Add(' FROM  CONTEncComp');
    ADOQTemp.SQL.Add(' WHERE Tipo_Comprobante   = ' +chr(39)+ADOTable1.FieldValues['Tipo_Comp_Contable']+chr(39)+' AND');
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

procedure TFrmContabFacturacion.Timer1Timer(Sender: TObject);
begin
  if CheckBox1.Checked Then
  Begin
    if (dayof(now) <> strtoint(Edit9.Text)) then
    Begin
      Edit9.Text := inttostr(dayof(now));
      Button4Click(Nil);
      If SpeedButton3.Enabled Then
      Begin
        SpeedButton3Click(Nil);
      End;
    End;
  End;
end;

procedure TFrmContabFacturacion.CheckBox1Click(Sender: TObject);
begin
  If CheckBox1.Checked Then Timer1.Enabled := True
  Else Timer1.Enabled := False;
end;

procedure TFrmContabFacturacion.FormActivate(Sender: TObject);
begin
  if ADOTable1.FieldValues['Tipo_Factura'] = '2' then Begin
    Button3.Enabled := True;
    Button5.Enabled := True;
  End
  Else if ADOTable1.FieldValues['Tipo_Factura'] = '1' then Begin
    Button3.Enabled := False;
    Button5.Enabled := True;
  End
end;

procedure TFrmContabFacturacion.Button9Click(Sender: TObject);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= 'CRAgrupacion';
  try
    Datamodule1.MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

end.
