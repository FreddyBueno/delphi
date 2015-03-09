unit UAdmisiones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, Menus, ToolWin,
  DB, ADODB, Buttons, Mask, DBCtrls, ImgList, JvSpecialProgress, JvExControls;

type
  TfrmAdmisiones = class(TForm)
    DataSource1: TDataSource;
    QryAdmisiones: TADOQuery;
    QryCitasMedicas: TADOQuery;
    DataSource2: TDataSource;
    QryAdmisionesCCHISTORIA: TWideStringField;
    QryAdmisionesNO_ADMISION: TWideStringField;
    QryAdmisionesFEC_ADMISION: TDateTimeField;
    QryAdmisionesTIP_CONSULTA: TWideStringField;
    QryAdmisionesTP_IDENT_USUAR: TWideStringField;
    QryAdmisionesNR_IDENT_USUAR: TWideStringField;
    QryAdmisionesFOTO_PACIENTE: TWideStringField;
    QryAdmisionesNombre: TWideStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    Panel4: TPanel;
    Panel5: TPanel;
    SGDatos: TStringGrid;
    Panel6: TPanel;
    PopupMenu1: TPopupMenu;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Panel7: TPanel;
    Splitter1: TSplitter;
    Label1: TLabel;
    EditAdmision: TEdit;
    BtnBuscar: TBitBtn;
    Label2: TLabel;
    Bevel1: TBevel;
    Label3: TLabel;
    EditDocumento: TEdit;
    BtnBuscar1: TBitBtn;
    Label4: TLabel;
    Bevel2: TBevel;
    Menos: TImage;
    Mas: TImage;
    QryGeneral: TADOQuery;
    Filtrar1: TMenuItem;
    Porasegurador1: TMenuItem;
    Vertodas1: TMenuItem;
    JvProgress1: TJvSpecialProgress;
    Panel8: TPanel;
    BtnPorAdmision: TBitBtn;
    BtnPorNumero: TBitBtn;
    BtnPorNombre: TBitBtn;
    Label5: TLabel;
    Label6: TLabel;
    LblEstadoA: TLabel;
    BtnSalir: TBitBtn;
    BtnEgreso: TBitBtn;
    procedure Admisin1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Admision1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure LimpiarGrillas(Grilla : TStringGrid; Col : Integer);
    procedure BuscaAdmisiones;
    procedure Porasegurador1Click(Sender: TObject);
    procedure Vertodas1Click(Sender: TObject);
    procedure SGDatosDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure SGDatosDblClick(Sender: TObject);
    procedure BtnPorNumeroClick(Sender: TObject);
    procedure BtnPorNombreClick(Sender: TObject);
    procedure BtnPorAdmisionClick(Sender: TObject);
    procedure BusquedasBD(e1,e2,e3,e4,e5, e6 : TEdit; oP :   Integer);
    procedure BtnEgresoClick(Sender: TObject);
    procedure SGDatosClick(Sender: TObject);
    procedure BtnSalirClick(Sender: TObject);
    procedure BtnBuscarClick(Sender: TObject);
    procedure BtnBuscar1Click(Sender: TObject);
    procedure EditAdmisionKeyPress(Sender: TObject; var Key: Char);
    procedure EditDocumentoKeyPress(Sender: TObject; var Key: Char);
  private
    Agrupa   : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdmisiones: TfrmAdmisiones;

implementation

uses UingresosAdmisiones, UDataModule1, SAEgresos,
  ModuloAdmision, UnitBusquedas;

{$R *.dfm}

procedure TfrmAdmisiones.Admisin1Click(Sender: TObject);
begin
  frmAdminsiones.DBLookupComboBox1.KeyValue := '';
  frmAdminsiones.DBLookupComboBox2.KeyValue := '';
  frmAdminsiones.DBLookupComboBox3.KeyValue := '';
  frmAdminsiones.DBLookupComboBox4.KeyValue := '';
  frmAdminsiones.DBLookupComboBox5.KeyValue := '';
  frmAdminsiones.DBLookupComboBox6.KeyValue := '';
  frmAdminsiones.DBLookupComboBox7.KeyValue := '';
  frmAdminsiones.DBLookupComboBox8.KeyValue := '';
  frmAdminsiones.DBLookupComboBox9.KeyValue := '';
  frmAdminsiones.DBLookupComboBox10.KeyValue := '';
  frmAdminsiones.DBLookupComboBox11.KeyValue := '';
  frmAdminsiones.Edit1.text := '';
  if  QryCitasMedicas.FieldValues['TP_IDENT_USUAR'] <> '' then
  begin
    frmAdminsiones.DBLookupComboBox4.KeyValue := QryCitasMedicas.FieldValues['TP_IDENT_USUAR'];
    frmAdminsiones.Edit1.text := QryCitasMedicas.FieldValues['NR_IDENT_USUAR'];
    frmAdminsiones.DBLookupComboBox6.KeyValue := QryCitasMedicas.FieldValues['TIPO_CONSULTA'];
    frmAdminsiones.DBLookupComboBox2.KeyValue := QryCitasMedicas.FieldValues['NR_IDENT_MEDICO'];
    frmAdminsiones.DBLookupComboBox7.KeyValue := QryCitasMedicas.FieldValues['CD_TIPO'];
    frmAdminsiones.DBLookupComboBox8.KeyValue := QryCitasMedicas.FieldValues['CD_SECCION'];
    frmAdminsiones.DateTimePicker1.DateTime := QryCitasMedicas.FieldValues['FECHA'];
    DatamoduloAdmision.QryCamas.Close;
    DatamoduloAdmision.QryCamas.Parameters[0].Value :=  QryCitasMedicas.FieldValues['CD_TIPO'];
    DatamoduloAdmision.QryCamas.Parameters[1].Value :=  QryCitasMedicas.FieldValues['CD_SECCION'];
    DatamoduloAdmision.QryCamas.open;
    frmAdminsiones.DBLookupComboBox5.KeyValue := QryCitasMedicas.FieldValues['CD_CAMA'];
    frmAdminsiones.DBLookupComboBox1.KeyValue := 'C';
    frmAdminsiones.DBLookupComboBox9.Enabled := false;
    frmAdminsiones.DBLookupComboBox3.Enabled := false;
    frmAdminsiones.DBLookupComboBox10.Enabled := false;
    frmAdminsiones.DBLookupComboBox1.Enabled := false;
    frmAdminsiones.DBLookupComboBox6.Enabled := false;
    frmAdminsiones.DBLookupComboBox2.Enabled := false;
    frmAdminsiones.DBLookupComboBox9.Enabled := false;
    frmAdminsiones.DBLookupComboBox10.Enabled := false;
    frmAdminsiones.DBLookupComboBox3.Enabled := true;
    frmAdminsiones.RadioGroup1.Enabled := false;

    frmAdminsiones.VerificarSiEstaAdmitido;
    end
    else
    begin
        frmAdminsiones.DBLookupComboBox2.Enabled := true;
        frmAdminsiones.DBLookupComboBox6.Enabled := true;
        frmAdminsiones.DBLookupComboBox4.Enabled := true;
        frmAdminsiones.Edit1.Enabled := true;
        frmAdminsiones.DBLookupComboBox9.Enabled := true;
        frmAdminsiones.DBLookupComboBox10.Enabled := true;
        frmAdminsiones.DBLookupComboBox3.Enabled := true;
        frmAdminsiones.RadioGroup1.Enabled := true;
    end;
  frmAdminsiones.DBLookupComboBox5.Enabled := true;
  frmAdminsiones.DBLookupComboBox7.Enabled := true;
  frmAdminsiones.DBLookupComboBox8.Enabled := true;
  Datamodule1.MuestraconAcceso(frmAdminsiones);
 end;
procedure TfrmAdmisiones.FormCreate(Sender: TObject);
begin
   SGDatos.Cells[1,0] := 'Nombre del paciente';
   SGDatos.Cells[2,0] := 'Tipo documento';
   SGDatos.Cells[3,0] := 'Número documento';
   SGDatos.Cells[4,0] := 'Admisión';
   SGDatos.Cells[5,0] := 'Fecha admisión';
   SGDatos.Cells[6,0] := 'Tipo consulta';
   SGDatos.Cells[7,0] := 'CC Historia';
   SGDatos.Cells[8,0] := 'Aseguradora';

   //  QryAdmisiones.Open;
//  QryCitasMedicas.Open;
end;

procedure TfrmAdmisiones.Admision1Click(Sender: TObject);
begin
if QryAdmisionesNR_IDENT_USUAR.Value <> '' then
begin
DatamoduloAdmision.QryAdmisiones.close;
DatamoduloAdmision.QryAdmisiones.Parameters[0].Value := QryAdmisionesNO_ADMISION.Value;
DatamoduloAdmision.QryAdmisiones.open;
 if DatamoduloAdmision.QryAdmisiones.RecordCount = 1 then
 begin
//    frmEgresos.DBLookupComboBox4.KeyValue := QryCitasMedicasTP_IDENT_USUAR.Value;
//    frmEgresos.Edit1.text := QryCitasMedicasNR_IDENT_USUAR.Value;
      Datamodule1.MuestraconAcceso(frmEgresos);
  end;
end;




end;

procedure TfrmAdmisiones.Salir1Click(Sender: TObject);
var
   Mango:integer;
begin
  Mango:=FindWindow(nil,'pacientes');
  if mango=0   then
   else SendMessage(Mango,WM_CLOSE,0,0);
   close
end;

procedure TfrmAdmisiones.FormActivate(Sender: TObject);
begin
  top := 0;
  Left := 0;
//QryAdmisiones.close;
//QryCitasMedicas.close;
//QryAdmisiones.open;
//QryCitasMedicas.Open;
  BuscaAdmisiones;
end;

procedure TfrmAdmisiones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action :=  caFree;
end;



procedure TfrmAdmisiones.BitBtn1Click(Sender: TObject);
begin
 if QryAdmisionesNO_ADMISION.Value > '0' then
 begin
    frmEgresos := tfrmEgresos.create(application);
    try
      frmEgresos.QryAdmisiones.Close;
      frmEgresos.QryAdmisiones.Parameters[0].Value := QryAdmisionesNO_ADMISION.Value;
      frmEgresos.QryAdmisiones.Open;
      frmEgresos.Edit2.Text:=  QryAdmisiones.FieldValues['Nombre'];
      Datamodule1.MuestraconAcceso(frmEgresos);
    except
      frmEgresos.free;
    end;
 end;
end;

   ///cambios eduardo

procedure TfrmAdmisiones.LimpiarGrillas(Grilla : TStringGrid; Col : Integer);
var i, e : Integer;
begin
  i := 1;
  while i < Grilla.RowCount do
    begin
      e := 0;
      while e < Col do
        begin
          Grilla.Cells[e,i] := '';
          inc(e);
        end;
      inc(i);
    end;
  Grilla.RowCount  := 2;
end;


procedure TfrmAdmisiones.BuscaAdmisiones;
var i, e : Integer;
    Nit : string;
    Fecha  : TDate;
begin
  QryGeneral.Close;
  QryGeneral.SQL.Clear;
  QryGeneral.SQL.Add('SELECT EST_ADMINSION,CCHISTORIA,NO_ADMISION,FEC_ADMISION,TIP_CONSULTA,a.TP_IDENT_USUAR,a.NR_IDENT_USUAR,');
  QryGeneral.SQL.Add('  P.FOTO_PACIENTE,(rtrim(P.PRIMER_APELLIDO)+ '' '' + rtrim(isnull(P.SEGUNDO_APELLIDO,''''))+ '' '' +');
  QryGeneral.SQL.Add('rtrim(P.PRIMER_NOMBRE)+ '' '' + rtrim(isnull(P.SEGUNDO_NOMBRE,''''))) as Nombre, a.ASEGURADORA , ASse.Primer_Apellido');
  QryGeneral.SQL.Add('FROM SAAdmisiones  a, SAPacientes AS P, CONTTerce ASse');
  QryGeneral.SQL.Add('WHERE P.TP_IDENT_USUAR = a.TP_IDENT_USUAR');
  QryGeneral.SQL.Add('  and P.NR_IDENT_USUAR = a.NR_IDENT_USUAR');
  QryGeneral.SQL.Add(' and (ASse.NUMERO_DOCUMENTO + ASse.Sucursal) = a.ASEGURADORA');
  QryGeneral.SQL.Add('  and (EST_ADMINSION = ''A'' or EST_ADMINSION = ''C'')');
  case Agrupa of
    0 : QryGeneral.SQL.Add('ORDER BY NO_ADMISION');
    1 : QryGeneral.SQL.Add('ORDER BY a.ASEGURADORA');
  end;
  QryGeneral.Open;
  JvProgress1.Maximum  := QryGeneral.RecordCount;
  JvProgress1.Step     := 1;

  LimpiarGrillas(SGDatos, 20);
  case Agrupa  of
    0  : begin
           i := 1;
           while not QryGeneral.Eof do
             begin
               JvProgress1.StepIt;
               SGDatos.Cells[1,i]   := QryGeneral.Fields.FieldByName('Nombre').AsString;
               SGDatos.Cells[2,i]   := QryGeneral.Fields.FieldByName('TP_IDENT_USUAR').AsString;
               SGDatos.Cells[3,i]   := QryGeneral.Fields.FieldByName('NR_IDENT_USUAR').AsString;
               SGDatos.Cells[4,i]   := QryGeneral.Fields.FieldByName('NO_ADMISION').AsString;
               SGDatos.Cells[5,i]   := FormatDateTime('DD/MM/YYYY',QryGeneral.Fields.FieldByName('FEC_ADMISION').AsDateTime);
               SGDatos.Cells[6,i]   := QryGeneral.Fields.FieldByName('TIP_CONSULTA').AsString;
               SGDatos.Cells[7,i]   := QryGeneral.Fields.FieldByName('CCHISTORIA').AsString;
               SGDatos.Cells[8,i]   := QryGeneral.Fields.FieldByName('ASEGURADORA').AsString;
               SGDatos.Cells[9,i]   := QryGeneral.Fields.FieldByName('Primer_Apellido').AsString;
               SGDatos.Cells[10,i]  := QryGeneral.Fields.FieldByName('EST_ADMINSION').AsString;
               QryGeneral.Next;
               inc(i);
             end;
           JvProgress1.Position  := 0;
           SGDatos.RowCount      := i + 1;
         end;  // 0
    1  : begin
           i := 1;
           while not QryGeneral.Eof do
             begin
               JvProgress1.StepIt;
               if i = 1 then
                 begin
                   SGDatos.Cells[0,i]  :=  '.';
                   SGDatos.Cells[1,i]  := QryGeneral.Fields.FieldByName('PRIMER_APELLIDO').AsString;
                   SGDatos.Cells[11,i] := QryGeneral.Fields.FieldByName('ASEGURADORA').AsString;
                   e := i;
                   inc(i);
                   SGDatos.Cells[1,i]   := QryGeneral.Fields.FieldByName('Nombre').AsString;
                   SGDatos.Cells[2,i]   := QryGeneral.Fields.FieldByName('TP_IDENT_USUAR').AsString;
                   SGDatos.Cells[3,i]   := QryGeneral.Fields.FieldByName('NR_IDENT_USUAR').AsString;
                   SGDatos.Cells[4,i]   := QryGeneral.Fields.FieldByName('NO_ADMISION').AsString;
                   SGDatos.Cells[5,i]   := FormatDateTime('DD/MM/YYYY',QryGeneral.Fields.FieldByName('FEC_ADMISION').AsDateTime);
                   SGDatos.Cells[6,i]   := QryGeneral.Fields.FieldByName('TIP_CONSULTA').AsString;
                   SGDatos.Cells[7,i]   := QryGeneral.Fields.FieldByName('CCHISTORIA').AsString;
                   SGDatos.Cells[8,i]   := QryGeneral.Fields.FieldByName('ASEGURADORA').AsString;
                   SGDatos.Cells[9,i]   := QryGeneral.Fields.FieldByName('PRIMER_APELLIDO').AsString;
                   SGDatos.Cells[10,i]  := QryGeneral.Fields.FieldByName('EST_ADMINSION').AsString;
                 end
               else
                 begin
                   if QryGeneral.Fields.FieldByName('ASEGURADORA').AsString = SGDatos.Rows[e].Strings[11] then
                     begin
                       SGDatos.Cells[1,i]   := QryGeneral.Fields.FieldByName('Nombre').AsString;
                       SGDatos.Cells[2,i]   := QryGeneral.Fields.FieldByName('TP_IDENT_USUAR').AsString;
                       SGDatos.Cells[3,i]   := QryGeneral.Fields.FieldByName('NR_IDENT_USUAR').AsString;
                       SGDatos.Cells[4,i]   := QryGeneral.Fields.FieldByName('NO_ADMISION').AsString;
                       SGDatos.Cells[5,i]   := FormatDateTime('DD/MM/YYYY',QryGeneral.Fields.FieldByName('FEC_ADMISION').AsDateTime);
                       SGDatos.Cells[6,i]   := QryGeneral.Fields.FieldByName('TIP_CONSULTA').AsString;
                       SGDatos.Cells[7,i]   := QryGeneral.Fields.FieldByName('CCHISTORIA').AsString;
                       SGDatos.Cells[8,i]   := QryGeneral.Fields.FieldByName('ASEGURADORA').AsString;
                       SGDatos.Cells[9,i]   := QryGeneral.Fields.FieldByName('PRIMER_APELLIDO').AsString;
                       SGDatos.Cells[10,i]  := QryGeneral.Fields.FieldByName('EST_ADMINSION').AsString;
                     end
                   else
                     begin
                     //  inc(i);
                       SGDatos.Cells[0,i]  :=  '.';
                       SGDatos.Cells[1,i]  := QryGeneral.Fields.FieldByName('PRIMER_APELLIDO').AsString;
                       SGDatos.Cells[11,i] := QryGeneral.Fields.FieldByName('ASEGURADORA').AsString;
                       e := i;

                       inc(i);
                       SGDatos.Cells[1,i]   := QryGeneral.Fields.FieldByName('Nombre').AsString;
                       SGDatos.Cells[2,i]   := QryGeneral.Fields.FieldByName('TP_IDENT_USUAR').AsString;
                       SGDatos.Cells[3,i]   := QryGeneral.Fields.FieldByName('NR_IDENT_USUAR').AsString;
                       SGDatos.Cells[4,i]   := QryGeneral.Fields.FieldByName('NO_ADMISION').AsString;
                       SGDatos.Cells[5,i]   := FormatDateTime('DD/MM/YYYY',QryGeneral.Fields.FieldByName('FEC_ADMISION').AsDateTime);
                       SGDatos.Cells[6,i]   := QryGeneral.Fields.FieldByName('TIP_CONSULTA').AsString;
                       SGDatos.Cells[7,i]   := QryGeneral.Fields.FieldByName('CCHISTORIA').AsString;
                       SGDatos.Cells[8,i]   := QryGeneral.Fields.FieldByName('ASEGURADORA').AsString;
                       SGDatos.Cells[9,i]   := QryGeneral.Fields.FieldByName('PRIMER_APELLIDO').AsString;
                       SGDatos.Cells[10,i]  := QryGeneral.Fields.FieldByName('EST_ADMINSION').AsString;
                     end;
                 end;
                   QryGeneral.Next;
               inc(i);
             end;
           JvProgress1.Position  := 0;
           SGDatos.RowCount      := i + 1;
         end;  // 1
  end;  // Case
  SGDatosClick(Self);
end;

procedure TfrmAdmisiones.Porasegurador1Click(Sender: TObject);
begin
  Agrupa  := 1;
  BuscaAdmisiones;
end;

procedure TfrmAdmisiones.Vertodas1Click(Sender: TObject);
begin
  Agrupa  := 0;
  BuscaAdmisiones;
end;

procedure TfrmAdmisiones.SGDatosDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var e   :integer;
begin
   for e := 1 to SGDatos.RowCount - 1 do
     begin
       if Arow = e then
         begin
           if (SGDatos.Cells[0,e] = '.') or (SGDatos.Cells[0,e] = '-')then    // $00DF9700
             begin
               SGDatos.Canvas.Font.Color := clBlue;
               SGDatos.Canvas.Brush.Color := $009CDEF7; //$00F7E388;
               SGDatos.Canvas.TextRect(Rect, Rect.Left, Rect.Top, SGDatos.Cells[Acol,Arow]);
             end;
         end;
     end;

 if ARow < 1 then exit;
 if SGDatos.cells[ACol,ARow] = '' then exit;

 if (ACol = 0) and (SGDatos.Cells[Acol,Arow] = '.') then
   with SGDatos.Canvas do
     Draw(Rect.Left, Rect.Top,Mas.Picture.Graphic);

  if (ACol = 0) and (SGDatos.Cells[Acol,Arow] = '-') then
   with SGDatos.Canvas do
     Draw(Rect.Left, Rect.Top,Menos.Picture.Graphic);
end;

procedure TfrmAdmisiones.FormShow(Sender: TObject);
begin
  Agrupa  := 0;
  BuscaAdmisiones;
  SGDatosClick(Self);
end;

procedure TfrmAdmisiones.SGDatosDblClick(Sender: TObject);
var  FCont, i, e, R, j : Integer;
begin
{  if (SGDatos.Rows[SGDatos.Row].Strings[0] = '') and (SGDatos.Rows[SGDatos.Row].Strings[1] <> '') then
    begin
      frmEgresos := tfrmEgresos.create(application);
      try
        frmEgresos.QryAdmisiones.Close;
        frmEgresos.QryAdmisiones.Parameters[0].Value := SGDatos.Rows[SGDatos.Row].Strings[4];     //QryAdmisionesNO_ADMISION.Value;
        frmEgresos.QryAdmisiones.Open;
        frmEgresos.Edit2.Text:=  SGDatos.Rows[SGDatos.Row].Strings[1];
        frmEgresos.show;
      except
        frmEgresos.free;
      end;
    end;   }

   FCont := SGDatos.RowCount - 1;

  if (SGDatos.Rows[SGDatos.Row].Strings[0] = '') then Exit;

  if SGDatos.Rows[SGDatos.Row].Strings[0] = '-' then
    begin
      SGDatos.Rows[SGDatos.Row].Strings[0] := '.';
      e     := SGDatos.Row;

      //query

      QryGeneral.Close;
      QryGeneral.SQL.Clear;
      QryGeneral.SQL.Add('SELECT EST_ADMINSION,CCHISTORIA,NO_ADMISION,FEC_ADMISION,TIP_CONSULTA,a.TP_IDENT_USUAR,a.NR_IDENT_USUAR,');
      QryGeneral.SQL.Add('  P.FOTO_PACIENTE,(rtrim(P.PRIMER_APELLIDO)+ '' '' + rtrim(isnull(P.SEGUNDO_APELLIDO,''''))+ '' '' +');
      QryGeneral.SQL.Add('rtrim(P.PRIMER_NOMBRE)+ '' '' + rtrim(isnull(P.SEGUNDO_NOMBRE,''''))) as Nombre, a.ASEGURADORA , ASse.Primer_Apellido');
      QryGeneral.SQL.Add('FROM SAAdmisiones  a, SAPacientes AS P, CONTTerce ASse');
      QryGeneral.SQL.Add('WHERE P.TP_IDENT_USUAR = a.TP_IDENT_USUAR');
      QryGeneral.SQL.Add('  and P.NR_IDENT_USUAR = a.NR_IDENT_USUAR');
      QryGeneral.SQL.Add(' and (ASse.NUMERO_DOCUMENTO + ASse.Sucursal) = a.ASEGURADORA');
      QryGeneral.SQL.Add('  and (EST_ADMINSION = ''A'' or EST_ADMINSION = ''C'')');
      case Agrupa of
        1 : begin
              QryGeneral.SQL.Add('and a.ASEGURADORA = '''+SGDatos.Rows[SGDatos.Row].Strings[11]+'''');
              QryGeneral.SQL.Add('order by a.aseguradora');
            end;
      end;
      QryGeneral.Open;

      //fin query
      j                      := SGDatos.RowCount - e - 1;

      SGDatos.RowCount := SGDatos.RowCount + QryGeneral.RecordCount;

      R     := SGDatos.RowCount - 1;

      i := 1;
      while j >= i do
        begin
          SGDatos.Cells[0,R]  :=   SGDatos.Rows[FCont].Strings[0];
          SGDatos.Cells[1,R]  :=   SGDatos.Rows[FCont].Strings[1];
          SGDatos.Cells[2,R]  :=   SGDatos.Rows[FCont].Strings[2];
          SGDatos.Cells[3,R]  :=   SGDatos.Rows[FCont].Strings[3];
          SGDatos.Cells[4,R]  :=   SGDatos.Rows[FCont].Strings[4];
          SGDatos.Cells[5,R]  :=   SGDatos.Rows[FCont].Strings[5];
          SGDatos.Cells[6,R]  :=   SGDatos.Rows[FCont].Strings[6];
          SGDatos.Cells[7,R]  :=   SGDatos.Rows[FCont].Strings[7];
          SGDatos.Cells[8,R]  :=   SGDatos.Rows[FCont].Strings[8];
          SGDatos.Cells[9,R]  :=   SGDatos.Rows[FCont].Strings[9];
          SGDatos.Cells[10,R] :=   SGDatos.Rows[FCont].Strings[10];
          SGDatos.Cells[11,R] :=   SGDatos.Rows[FCont].Strings[11];

          SGDatos.Rows[FCont].Strings[0]  := '';
          SGDatos.Rows[FCont].Strings[1]  := '';
          SGDatos.Rows[FCont].Strings[2]  := '';
          SGDatos.Rows[FCont].Strings[3]  := '';
          SGDatos.Rows[FCont].Strings[4]  := '';
          SGDatos.Rows[FCont].Strings[5]  := '';
          SGDatos.Rows[FCont].Strings[6]  := '';
          SGDatos.Rows[FCont].Strings[7]  := '';
          SGDatos.Rows[FCont].Strings[8]  := '';
          SGDatos.Rows[FCont].Strings[9]  := '';
          SGDatos.Rows[FCont].Strings[10] := '';
          SGDatos.Rows[FCont].Strings[11] := '';

          dec(FCont);
          dec(j);
          dec(R);
        end;
       i := e + 1;
      while not QryGeneral.Eof do
        begin
          SGDatos.Cells[1,i]   := QryGeneral.Fields.FieldByName('Nombre').AsString;
          SGDatos.Cells[2,i]   := QryGeneral.Fields.FieldByName('TP_IDENT_USUAR').AsString;
          SGDatos.Cells[3,i]   := QryGeneral.Fields.FieldByName('NR_IDENT_USUAR').AsString;
          SGDatos.Cells[4,i]   := QryGeneral.Fields.FieldByName('NO_ADMISION').AsString;
          SGDatos.Cells[5,i]   := FormatDateTime('DD/MM/YYYY',QryGeneral.Fields.FieldByName('FEC_ADMISION').AsDateTime);
          SGDatos.Cells[6,i]   := QryGeneral.Fields.FieldByName('TIP_CONSULTA').AsString;
          SGDatos.Cells[7,i]   := QryGeneral.Fields.FieldByName('CCHISTORIA').AsString;
          SGDatos.Cells[8,i]   := QryGeneral.Fields.FieldByName('ASEGURADORA').AsString;
          SGDatos.Cells[9,i]   := QryGeneral.Fields.FieldByName('PRIMER_APELLIDO').AsString;
          SGDatos.Cells[10,i]  := QryGeneral.Fields.FieldByName('EST_ADMINSION').AsString;
          QryGeneral.Next;
          inc(i);
        end;
    end
  else
    begin
      SGDatos.Rows[SGDatos.Row].Strings[0] := '-';

      e     := SGDatos.Row + 1;

      R := 0;
      j := e;
      while j < SGDatos.RowCount - 1 do
        begin
          if SGDatos.Rows[j].Strings[0] <> '' then
            begin
              R := j - e;
              Break;
            end;

          SGDatos.Cells[0,j]  :=   '';
          SGDatos.Cells[1,j]  :=   '';
          SGDatos.Cells[2,j]  :=   '';
          SGDatos.Cells[3,j]  :=   '';
          SGDatos.Cells[4,j]  :=   '';
          SGDatos.Cells[5,j]  :=   '';
          SGDatos.Cells[6,j]  :=   '';
          SGDatos.Cells[7,j]  :=   '';
          SGDatos.Cells[8,j]  :=   '';
          SGDatos.Cells[9,j]  :=   '';
          SGDatos.Cells[10,j] :=   '';
          SGDatos.Cells[11,j] :=   '';
          inc(j)
        end;

      i := e;
      while i < FCont do
        begin
          if R = 0 then
            j := e + 1;
          SGDatos.Cells[0,i]  :=   SGDatos.Rows[j].Strings[0];
          SGDatos.Cells[1,i]  :=   SGDatos.Rows[j].Strings[1];
          SGDatos.Cells[2,i]  :=   SGDatos.Rows[j].Strings[2];
          SGDatos.Cells[3,i]  :=   SGDatos.Rows[j].Strings[3];
          SGDatos.Cells[4,i]  :=   SGDatos.Rows[j].Strings[4];
          SGDatos.Cells[5,i]  :=   SGDatos.Rows[j].Strings[5];
          SGDatos.Cells[6,i]  :=   SGDatos.Rows[j].Strings[6];
          SGDatos.Cells[7,i]  :=   SGDatos.Rows[j].Strings[7];
          SGDatos.Cells[8,i]  :=   SGDatos.Rows[j].Strings[8];
          SGDatos.Cells[9,i]  :=   SGDatos.Rows[j].Strings[9];
          SGDatos.Cells[10,i] :=   SGDatos.Rows[j].Strings[10];
          SGDatos.Cells[11,i] :=   SGDatos.Rows[j].Strings[11];
          inc(j);
          inc(i);
        end;

        if R > 0 then
          i  := SGDatos.RowCount - R + 3
        else
          i  := e + 1;

       while i < FCont -1 do
         begin
          SGDatos.Cells[0,i]  :=   '';
          SGDatos.Cells[1,i]  :=   '';
          SGDatos.Cells[2,i]  :=   '';
          SGDatos.Cells[3,i]  :=   '';
          SGDatos.Cells[4,i]  :=   '';
          SGDatos.Cells[5,i]  :=   '';
          SGDatos.Cells[6,i]  :=   '';
          SGDatos.Cells[7,i]  :=   '';
          SGDatos.Cells[8,i]  :=   '';
          SGDatos.Cells[9,i]  :=   '';
          SGDatos.Cells[10,i] :=   '';
          SGDatos.Cells[11,i] :=   '';
          inc(i);
         end;

        if R > 0 then
          SGDatos.RowCount   := (SGDatos.RowCount - R)
        else
          SGDatos.RowCount   := e + 1;
    end;
end;

procedure TfrmAdmisiones.BtnPorNumeroClick(Sender: TObject);
begin
  FrmBusquedas         := TFrmBusquedas.Create(Self);
  FrmBusquedas.Tamano  := 1;
  if FrmBusquedas.ShowModal = MrOk then
    begin
      BusquedasBD(nil, FrmBusquedas.EditNumDoc, nil, nil, nil, nil , 1);
    end;

end;

procedure TfrmAdmisiones.BtnPorNombreClick(Sender: TObject);
begin
  FrmBusquedas         := TFrmBusquedas.Create(Self);
  FrmBusquedas.Tamano  := 2;
  if FrmBusquedas.ShowModal = MrOk then
    begin
      BusquedasBD(nil, nil, FrmBusquedas.EditPriApellido, FrmBusquedas.EditSegApellido, FrmBusquedas.EditPriNombre, FrmBusquedas.EditSegNombre , 2);
    end;
end;

procedure TfrmAdmisiones.BtnPorAdmisionClick(Sender: TObject);
begin
  FrmBusquedas         := TFrmBusquedas.Create(Self);
  FrmBusquedas.Tamano  := 0;
  if FrmBusquedas.ShowModal = MrOk then
    begin
      BusquedasBD(FrmBusquedas.EditNumAdmision, nil, nil, nil, nil, nil , 0);
    end;
end;

procedure TfrmAdmisiones.BusquedasBD(e1,e2,e3,e4,e5, e6 : TEdit; oP :   Integer);
var i : Integer;
begin
  QryGeneral.Close;
  QryGeneral.SQL.Clear;
  QryGeneral.SQL.Add('SELECT EST_ADMINSION,CCHISTORIA,NO_ADMISION,FEC_ADMISION,TIP_CONSULTA,a.TP_IDENT_USUAR,a.NR_IDENT_USUAR,');
  QryGeneral.SQL.Add('  P.FOTO_PACIENTE,(rtrim(P.PRIMER_APELLIDO)+ '' '' + rtrim(isnull(P.SEGUNDO_APELLIDO,''''))+ '' '' +');
  QryGeneral.SQL.Add('rtrim(P.PRIMER_NOMBRE)+ '' '' + rtrim(isnull(P.SEGUNDO_NOMBRE,''''))) as Nombre, a.ASEGURADORA , ASse.Primer_Apellido');
  QryGeneral.SQL.Add('FROM SAAdmisiones  a, SAPacientes AS P, CONTTerce ASse');
  QryGeneral.SQL.Add('WHERE P.TP_IDENT_USUAR = a.TP_IDENT_USUAR');
  QryGeneral.SQL.Add('  and P.NR_IDENT_USUAR = a.NR_IDENT_USUAR');
  QryGeneral.SQL.Add(' and (ASse.NUMERO_DOCUMENTO + ASse.Sucursal) = a.ASEGURADORA');
  case oP of
    0 : QryGeneral.SQL.Add(' and a.NO_Admision = '''+e1.Text+'''');
    1 : QryGeneral.SQL.Add(' and a.NR_IDENT_USUAR = '''+e2.Text+'''');
    2 : begin
          QryGeneral.SQL.Add('and p.PRIMER_APELLIDO LIKE '''+'%'+e3.Text+'%'+''' ');
          QryGeneral.SQL.Add('and p.SEGUNDO_APELLIDO LIKE '''+'%'+e4.Text+'%'+'''');
          QryGeneral.SQL.Add('and p.PRIMER_NOMBRE LIKE '''+'%'+e5.Text+'%'+'''');
          QryGeneral.SQL.Add('and p.SEGUNDO_NOMBRE LIKE '''+'%'+e6.Text+'%'+'''');
        end;
  end;
//  QryGeneral.SQL.Add('  and (EST_ADMINSION = ''A'' or EST_ADMINSION = ''C'')');
  QryGeneral.SQL.Add('ORDER BY FEC_ADMISION');
  QryGeneral.Open;

  JvProgress1.Maximum  := QryGeneral.RecordCount;
  JvProgress1.Step     := 1;

  LimpiarGrillas(SGDatos, 20);
  i := 1;
  while not QryGeneral.Eof do
    begin
      JvProgress1.StepIt;
      SGDatos.Cells[1,i]   := QryGeneral.Fields.FieldByName('Nombre').AsString;
      SGDatos.Cells[2,i]   := QryGeneral.Fields.FieldByName('TP_IDENT_USUAR').AsString;
      SGDatos.Cells[3,i]   := QryGeneral.Fields.FieldByName('NR_IDENT_USUAR').AsString;
      SGDatos.Cells[4,i]   := QryGeneral.Fields.FieldByName('NO_ADMISION').AsString;
      SGDatos.Cells[5,i]   := FormatDateTime('DD/MM/YYYY',QryGeneral.Fields.FieldByName('FEC_ADMISION').AsDateTime);
      SGDatos.Cells[6,i]   := QryGeneral.Fields.FieldByName('TIP_CONSULTA').AsString;
      SGDatos.Cells[7,i]   := QryGeneral.Fields.FieldByName('CCHISTORIA').AsString;
      SGDatos.Cells[8,i]   := QryGeneral.Fields.FieldByName('ASEGURADORA').AsString;
      SGDatos.Cells[9,i]   := QryGeneral.Fields.FieldByName('PRIMER_APELLIDO').AsString;
      SGDatos.Cells[10,i]  := QryGeneral.Fields.FieldByName('EST_ADMINSION').AsString;
      QryGeneral.Next;
      inc(i);
    end;
  JvProgress1.Position   := 0;
  SGDatos.RowCount       := i + 1;
end;

procedure TfrmAdmisiones.BtnEgresoClick(Sender: TObject);
begin
  frmEgresos := tfrmEgresos.create(application);
  try
    frmEgresos.QryAdmisiones.Close;
    frmEgresos.QryAdmisiones.Parameters[0].Value := SGDatos.Rows[SGDatos.Row].Strings[4];     //QryAdmisionesNO_ADMISION.Value;
     frmEgresos.QryAdmisiones.Open;
    frmEgresos.Edit2.Text:=  SGDatos.Rows[SGDatos.Row].Strings[1];
    if frmEgresos.ShowModal = MrOk then
      BuscaAdmisiones;
  except
    frmEgresos.free;
  end;
end;

procedure TfrmAdmisiones.SGDatosClick(Sender: TObject);
begin
  if (SGDatos.Rows[SGDatos.Row].Strings[10] = 'A') or (SGDatos.Rows[SGDatos.Row].Strings[10] = 'C') then
    LblEstadoA.Caption  := 'ADMISIÓN ACTIVA'
  else
    if (SGDatos.Rows[SGDatos.Row].Strings[10] = 'E') then
      LblEstadoA.Caption  := 'ADMISIÓN EGRESADA'
    else
      if (SGDatos.Rows[SGDatos.Row].Strings[10] = 'F') then
        LblEstadoA.Caption  := 'ADMISIÓN FACTURADA'
      else
        if (SGDatos.Rows[SGDatos.Row].Strings[10] = 'X') then
          LblEstadoA.Caption  := 'ADMISIÓN ANULADA';
end;

procedure TfrmAdmisiones.BtnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAdmisiones.BtnBuscarClick(Sender: TObject);
var
  MyRect  : TGridRect;
  i       : Integer;
begin
  if EditAdmision.Text <> '' then
    begin
      i := 1;
      while i < SGDatos.RowCount - 1 do
        begin
          if SGDatos.Rows[i].Strings[4] = EditAdmision.Text then
            begin
              SGDatos.TopRow      := i;
              myRect.Left         := 0;
              myRect.Top          := i;
              myRect.Right        := 8;
              myRect.Bottom       := i;
              SGDatos.Selection := myRect;
              EditAdmision.Text   := '';
              SGDatosClick(Self);
              exit;
            end;
          inc(i);
        end;
    end;
end;

procedure TfrmAdmisiones.BtnBuscar1Click(Sender: TObject);
var
  MyRect  : TGridRect;
  i       : Integer;
begin
  if EditDocumento.Text <> '' then
    begin
      i := 1;
      while i < SGDatos.RowCount - 1 do
        begin
          if SGDatos.Rows[i].Strings[3] = EditDocumento.Text then
            begin
              SGDatos.TopRow      := i;
              myRect.Left         := 0;
              myRect.Top          := i;
              myRect.Right        := 8;
              myRect.Bottom       := i;
              SGDatos.Selection := myRect;
              EditDocumento.Text   := '';
              SGDatosClick(Self);
              exit;
            end;
          inc(i);
        end;
    end;
end;

procedure TfrmAdmisiones.EditAdmisionKeyPress(Sender: TObject;
  var Key: Char);
begin
  case key of
     #1,#2,#3,#4,#5,#6,#7,#11,#12,#14,#15,#17,#18,#19,#20,#21,#22,#23,#24,#25,#26,#27,#32,#33,#34,#35 : key := #0;
     #36,#37,#38,#39,#40,#41,#42,#43,#44,#45,#46,#47,#58,#59,#60,#61,#62,#63,#64: key := #0;
     #65,#66,#67,#68,#69,#70,#71,#72,#73,#74,#75,#76,#77,#78,#79,#80,#81,#82,#83,#84,#85,#86,#87,#88,#89,#90 : key := #0;
     #91,#92,#93,#94,#95,#96,#97,#98,#99,#100,#101,#102,#103,#104,#105,#106,#107,#108,#109,#110,#111,#112,#113,#114,#115,#116 : key := #0;
     #117,#118,#119,#120,#121,#122,#123,#124,#125,#126,#127,#128,#129,#130,#131,#132,#133,#134,#135,#136,#137,#138,#139,#140,#141,#142 : key := #0;
     'ñ','Ñ','¿','´','°','¨','¡','ç' : key := #0;
   end;
end;

procedure TfrmAdmisiones.EditDocumentoKeyPress(Sender: TObject;
  var Key: Char);
begin
   case key of
     #1,#2,#3,#4,#5,#6,#7,#11,#12,#14,#15,#17,#18,#19,#20,#21,#22,#23,#24,#25,#26,#27,#32,#33,#34,#35 : key := #0;
     #36,#37,#38,#39,#40,#41,#42,#43,#44,#45,#46,#47,#58,#59,#60,#61,#62,#63,#64: key := #0;
     #91,#92,#93,#94,#95,#96: key := #0;
     #123,#124,#125,#126,#127,#128,#129,#130,#131,#132,#133,#134,#135,#136,#137,#138,#139,#140,#141,#142 : key := #0;
     'ñ','Ñ','¿','´','°','¨','¡','ç','Ç','º','ª','·' : key := #0;
   end;
end;

end.
