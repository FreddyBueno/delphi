unit urips1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls, ComCtrls, DB, DBTables;

type
  TFormRIPS = class(TForm)
    OpenDialog1: TOpenDialog;
    Button1: TButton;
    Panel1: TPanel;
    PageControl1: TPageControl;
    Archivo_AF: TTabSheet;
    Panel2: TPanel;
    StringGrid1: TStringGrid;
    Archivo_US: TTabSheet;
    Archivo_AD: TTabSheet;
    Archivo_AC: TTabSheet;
    Archivo_AP: TTabSheet;
    Archivo_AH: TTabSheet;
    Archivo_AU: TTabSheet;
    Archivo_AN: TTabSheet;
    Archivo_AM: TTabSheet;
    Panel3: TPanel;
    StringGrid2: TStringGrid;
    Panel4: TPanel;
    Panel5: TPanel;
    StringGrid4: TStringGrid;
    Panel6: TPanel;
    StringGrid5: TStringGrid;
    Panel7: TPanel;
    Panel8: TPanel;
    StringGrid7: TStringGrid;
    Panel9: TPanel;
    StringGrid8: TStringGrid;
    Panel10: TPanel;
    StringGrid9: TStringGrid;
    Archivo_AT: TTabSheet;
    StringGrid10: TStringGrid;
    StringGrid3: TStringGrid;
    Button3: TButton;
    Button4: TButton;
    Database1: TDatabase;
    tableAD: TTable;
    DataSource1: TDataSource;
    TableAF: TTable;
    TableUS: TTable;
    TableAC: TTable;
    Label1: TLabel;
    Edit1: TEdit;
    StatusBar1: TStatusBar;
    TableAH: TTable;
    TableAM: TTable;
    TableAP: TTable;
    TableAU: TTable;
    TableAN: TTable;
    TableAS: TTable;
    Animate1: TAnimate;
    Query1: TQuery;
    StringGrid6: TStringGrid;
    tableADcod_prestador: TStringField;
    tableADcod_concepto: TStringField;
    tableADnum_factura: TStringField;
    tableADcantidad: TStringField;
    tableADval_unitario: TStringField;
    tableADval_concepto: TStringField;
    tableADnum_radicacion: TStringField;
    tableADcod_anulado: TStringField;
    TableACtipo_documento_usu: TStringField;
    TableACnum_documento_usu: TStringField;
    TableACcod_prestador: TStringField;
    TableACfin_cons: TStringField;
    TableACcaus_externa: TStringField;
    TableACcod_diagnostico_ppal: TStringField;
    TableACcod_diagnostico_re1: TStringField;
    TableACcod_diagnostico_re2: TStringField;
    TableACcod_diagnostico_re3: TStringField;
    TableACtipo_diagnostico_ppal: TStringField;
    TableACval_consulta: TStringField;
    TableACval_cuota_mod: TStringField;
    TableACval_pagar: TStringField;
    TableACnum_autorizacion: TStringField;
    TableACnum_factura: TStringField;
    TableACfec_consulta: TStringField;
    TableACcod_consulta: TStringField;
    TableACnum_radicacion: TStringField;
    TableACcod_anulado: TStringField;
    TableAPtipo_documento_usu: TStringField;
    TableAPnum_documento_usu: TStringField;
    TableAPcod_prestador: TStringField;
    TableAPambito_relacion: TStringField;
    TableAPfinalidad_proc: TStringField;
    TableAPpersonal_salud: TStringField;
    TableAPcod_diag_ppal: TStringField;
    TableAPcod_diag_rela: TStringField;
    TableAPform_acto_quir: TStringField;
    TableAPval_procedimieto: TStringField;
    TableAPnum_factura: TStringField;
    TableAPcod_procedimiento: TStringField;
    TableAPfec_proc: TStringField;
    TableAPnum_autorizacion: TStringField;
    TableAPcod_complicacion: TStringField;
    TableAPnum_radicacion: TStringField;
    TableAPcod_anulado: TStringField;
    TableAHtipo_documento_usu: TStringField;
    TableAHnum_documento_usu: TStringField;
    TableAHcod_prestador: TStringField;
    TableAHnum_factura: TStringField;
    TableAHvia_ingreso: TStringField;
    TableAHcaus_externa: TStringField;
    TableAHcod_diagnostico_ppal_ing: TStringField;
    TableAHcod_diagnostico_ppal_egr: TStringField;
    TableAHcod_diag_nostico_egr1: TStringField;
    TableAHcod_diagnostico_egr2: TStringField;
    TableAHcod_diagnostico_egr3: TStringField;
    TableAHcod_diagnostico_comp: TStringField;
    TableAHestado_salida: TStringField;
    TableAHcod_diagnostico_muerte: TStringField;
    TableAHfec_egreso_inst: TStringField;
    TableAHnum_autorizacion: TStringField;
    TableAHfec_ingreso_inst: TStringField;
    TableAHhor_ingreso: TStringField;
    TableAHhor_egreso: TStringField;
    TableAHnum_radicacion: TStringField;
    TableAHcod_anulado: TStringField;
    TableAUtip_documento_usu: TStringField;
    TableAUnum_documento_usu: TStringField;
    TableAUcod_prestador: TStringField;
    TableAUnum_factura: TStringField;
    TableAUfec_ingreso_observ: TStringField;
    TableAUcaus_externa: TStringField;
    TableAUcod_diagnostico_sal: TStringField;
    TableAUdesti_salida: TStringField;
    TableAUesta_salida: TStringField;
    TableAUcaus_muerte_urgencia: TStringField;
    TableAUfec_salida_obs: TStringField;
    TableAUcod_diagnostico_re1_sal: TStringField;
    TableAUcod_diagnostico_re2_sal: TStringField;
    TableAUcod_diagnostico_re3_sal: TStringField;
    TableAUnum_autorizacion: TStringField;
    TableAUhor_ingreso: TStringField;
    TableAUhor_salida: TStringField;
    TableAUnum_radicacion: TStringField;
    TableAUcod_anulado: TStringField;
    TableANcod_prestador: TStringField;
    TableANnum_factura: TStringField;
    TableANedad_gestacion: TStringField;
    TableANcont_prenatal: TStringField;
    TableANsexo: TStringField;
    TableANpeso: TStringField;
    TableANcod_diagnostico_nac: TStringField;
    TableANcaus_muerte_nac: TStringField;
    TableANfec_muerte_nac: TStringField;
    TableANfec_nacimiento: TStringField;
    TableANnum_documento_mad: TStringField;
    TableANtip_documento_mad: TStringField;
    TableANhor_nacimiento: TStringField;
    TableANhor_muerte: TStringField;
    TableANnum_radicacion: TStringField;
    TableANcod_anulado: TStringField;
    TableAMtip_documento_usu: TStringField;
    TableAMnum_documento_usu: TStringField;
    TableAMcod_prestador: TStringField;
    TableAMcod_medicamento: TStringField;
    TableAMconcen_med: TStringField;
    TableAMform_farma: TStringField;
    TableAMnom_medicamento: TStringField;
    TableAMuni_mededicamento_med: TStringField;
    TableAMval_unidad_med: TStringField;
    TableAMtipo_medicamento: TStringField;
    TableAMnum_factura: TStringField;
    TableAMnum_unidades: TStringField;
    TableAMval_total_med: TStringField;
    TableAMnom_archivo: TStringField;
    TableAMnum_autorizacion: TStringField;
    TableAMnum_radicacion: TStringField;
    TableAMcod_anulado: TStringField;
    TableAStipo_documento_usu: TStringField;
    TableASnum_documento_usu: TStringField;
    TableAScod_prestador: TStringField;
    TableASval_unidad_mat: TStringField;
    TableASnum_factura: TStringField;
    TableAStipo_servicio: TStringField;
    TableAScod_servicio: TStringField;
    TableASnom_servicio: TStringField;
    TableAScant: TStringField;
    TableASval_total_mat: TStringField;
    TableASnum_autorizacion: TStringField;
    TableASnum_radicacion: TStringField;
    TableAScod_anulado: TStringField;
    TableAFcod_prestador: TStringField;
    TableAFcod_entidad: TStringField;
    TableAFcod_contrato: TStringField;
    TableAFfec_factura: TStringField;
    TableAFraz_social: TStringField;
    TableAFnum_factura: TStringField;
    TableAFfec_inicio: TStringField;
    TableAFnom_entidad: TStringField;
    TableAFnum_documento_pres: TStringField;
    TableAFtip_documento_pres: TStringField;
    TableAFfec_final: TStringField;
    TableAFval_copago: TStringField;
    TableAFval_comision: TStringField;
    TableAFval_descuento: TStringField;
    TableAFval_pago_enti: TStringField;
    TableAFplan_beneficios: TStringField;
    TableAFnum_poliza: TStringField;
    TableAFnum_radicacion: TStringField;
    TableAFcod_anulado: TStringField;
    Tablect: TTable;
    Tablectcod_prestador: TStringField;
    Tablectcod_archivo: TStringField;
    Tablectfec_remision: TStringField;
    Tablecttot_archivos: TStringField;
    Tablectnum_radicacion: TStringField;
    Tablectcod_anulado: TStringField;
    TableUStip_documento_usu: TStringField;
    TableUSnum_documento_usu: TStringField;
    TableUScod_entidad: TStringField;
    TableUScod_departamento: TStringField;
    TableUScod_municipio: TStringField;
    TableUSedad: TStringField;
    TableUSseg_nombre: TStringField;
    TableUSpri_apellido: TStringField;
    TableUSpri_nombre: TStringField;
    TableUSseg_apellido: TStringField;
    TableUScod_sexo: TStringField;
    TableUStip_usuario: TStringField;
    TableUSuni_medida_edad: TStringField;
    TableUScod_zona: TStringField;
    TableUSnum_radicacion: TStringField;
    TableUScod_anulado: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    archivos : array[0..18] of string;
    largo : array[0..18] of string;
    presta: array[0..18] of string;
    fecharem: array[0..18] of string;
    nomarch,fileo : string;
    ini : string;
    pa : string;
    xy:integer;
    col,u :integer;
    valor :string;
    { Public declarations }
  end;

var
  FormRIPS: TFormRIPS;

implementation

{$R *.dfm}

procedure TFormRIPS.Button1Click(Sender: TObject);
var  inputfile: textfile;
     la,k1,y,s,nomarch: string;
     row,f,i,j,k,x,g,r: integer;
     inputfile2: textfile;
     c1,c2,c3,c4 : integer;
     t,cadena: string;
     w,h:integer;
     copago,comision,desc,neto : real;
     can,uni,tot : real;
     con,cuo,net,pro : real;
     cant,unita,tota : real;
     prestador,fecha_rem:string;
     col,fil : integer;
     muni,mtot,mtot1 :real;
begin
  archivo_AF.TabVisible:=false;
  archivo_US.TabVisible:=false;
  archivo_AD.TabVisible:=false;
  archivo_AC.TabVisible:=false;
  archivo_AP.TabVisible:=false;
  archivo_AH.TabVisible:=false;
  archivo_AU.TabVisible:=false;
  archivo_AN.TabVisible:=false;
  archivo_AM.TabVisible:=false;
  archivo_AT.TabVisible:=false;
  for fil :=0 to stringgrid1.RowCount do
  begin
    for col :=0 to stringgrid1.ColCount do
        stringgrid1.Cells[col,fil]:='';
  end;
  for fil :=0 to stringgrid2.RowCount do
  begin
    for col :=0 to stringgrid2.ColCount do
        stringgrid2.Cells[col,fil]:='';
  end;
  for fil :=0 to stringgrid3.RowCount do
  begin
    for col :=0 to stringgrid3.ColCount do
        stringgrid3.Cells[col,fil]:='';
  end;
  for fil :=0 to stringgrid4.RowCount do
  begin
    for col :=0 to stringgrid4.ColCount do
        stringgrid4.Cells[col,fil]:='';
  end;
  for fil :=0 to stringgrid5.RowCount do
  begin
    for col :=0 to stringgrid5.ColCount do
        stringgrid5.Cells[col,fil]:='';
  end;
  for fil :=0 to stringgrid6.RowCount do
  begin
    for col :=0 to stringgrid6.ColCount do
        stringgrid6.Cells[col,fil]:='';
  end;
  for fil :=0 to stringgrid7.RowCount do
  begin
    for col :=0 to stringgrid7.ColCount do
        stringgrid7.Cells[col,fil]:='';
  end;
  for fil :=0 to stringgrid8.RowCount do
  begin
    for col :=0 to stringgrid8.ColCount do
        stringgrid8.Cells[col,fil]:='';
  end;
  for fil :=0 to stringgrid9.RowCount do
  begin
    for col :=0 to stringgrid9.ColCount do
        stringgrid9.Cells[col,fil]:='';
  end;
  for fil :=0 to stringgrid10.RowCount do
  begin
    for col :=0 to stringgrid10.ColCount do
        stringgrid10.Cells[col,fil]:='';
  end;

  button4.Enabled := false;
  animate1.Visible := false;
  opendialog1.Execute;
  if opendialog1.FileName <> '' then
     begin
     Assignfile(inputfile, opendialog1.FileName);
     reset(inputfile);
     y:=opendialog1.FileName;
     j:=Length(Y);
     for f:=1 to j do
     begin
       k1:=k1+upcase(y[f]);
     end;
     for f:=1 to j do
     begin
       if (upcase(k1[f])='C') and (upcase(k1[f+1])='T') then
       g:=f-1;
     end;
     for f:=1 to g do
        pa:=pa+k1[f];
     for i:=1 to 18 do
     begin
       archivos[i]:= '';
       largo[i] := '';
     end;
     u:=0;
     while not eof (inputfile) do
     begin
       readln(inputfile,s);
       j:=strlen(pchar(s));
       x:=0;
       for i:=0 to j do
       begin
         if ((s[i]='A') or (s[i]= 'C') or (s[i] = 'U')) then
         begin
           for f:=1 to i-2 do
           begin
             if s[f]=',' then
             begin
               prestador:=copy(s,1,f-1);
               fecha_rem:=copy(s,f+1,10);
               break;
             end;
           end;
           for k:=i to j do
           begin
             if x<i then
             begin
               if s[k] <> ',' then
               begin
                 nomarch := nomarch + s[k];
               end;
               if s[k] = ',' then
               begin
                  x:=k+50;
                  for r:=k+1 to j do
                  begin
                    la:=la+s[r];
                  end;
                  break;
               end;
             end;
          end;
       end;
     end;
     presta[u]:=prestador;
     fecharem[u]:=fecha_rem;
     archivos[u] := nomarch;
     largo[u]:= la;
     nomarch := '';
     la := '';
     U:=u+1;
   end;
   xy:=u;
   for w:=0 to u do
   begin
     ini := copy(archivos[w],1,2);
     if ini = 'AF' then
     begin
       archivo_AF.TabVisible:=true;
       stringgrid1.ColCount := 17;
       stringgrid1.rowCount := (strtoint(trim(largo[w]))+2);
       fileo:=archivos[W];
       fileo:=fileo+'.txt';
       Assignfile(inputfile2, fileo);
       reset(inputfile2);
       stringgrid1.Cells[0,0] := 'Prestador';
       stringgrid1.Cells[1,0] := 'Razon Social';
       stringgrid1.Cells[2,0] := 'Tipo_identificacion';
       stringgrid1.Cells[3,0] := 'Numero de Identificacion';
       stringgrid1.Cells[4,0] := 'Factura No.';
       stringgrid1.Cells[5,0] := 'Fecha Factura';
       stringgrid1.Cells[6,0] := 'Fecha_Inicio';
       stringgrid1.Cells[7,0] := 'Fecha_Final';
       stringgrid1.Cells[8,0] := 'Codigo EPS';
       stringgrid1.Cells[9,0] := 'Nombre EPS';
       stringgrid1.Cells[10,0] := 'Contrato No.';
       stringgrid1.Cells[11,0] := 'Plan';
       stringgrid1.Cells[12,0] := 'Poliza';
       stringgrid1.Cells[13,0] := 'Copago';
       stringgrid1.Cells[14,0] := 'Comision';
       stringgrid1.Cells[15,0] := 'Descuentos';
       stringgrid1.Cells[16,0] := 'Neto a Pagar';
       while not eof (inputfile2) do
       begin
         h:=1;
         for i:= 1 to stringgrid1.rowcount -1 do
         begin
           readln(inputfile2,s);
           u:=strlen(pchar(s));
           cadena:=s;
           j:=0;
           g:=0;
           for k:=1 to u do
           begin
             if (cadena[k] = ',') or (k=u) then
             begin
               t:=trim(copy(cadena,(g+1),((k-g)-1)));
               if k=u then
                  t:=trim(copy(cadena,(g+1),((k-g))));
               if t = ',' then
                  t :='';
               stringgrid1.cells[j,i] := t;
               if j=13 then
               begin
                 valor := copy(trim(t),length(t)-3,1);
                 if t='' then
                 begin
                    t:='0';
                 end;
                 if valor = '.' then
                    t := copy(trim(t),1,length(t)-3);
                 try
                   copago:=copago+strtofloat(t);
                 except
                   copago:=copago;
                 end;
               end;
               if j=14 then
               begin
                 if t='' then
                    t:='0';
                 try
                   comision:=comision+strtofloat(t);
                 except
                   comision:=comision;
                 end;
               end;
               if j=15 then
               begin
                 if t='' then
                    t:='0';
                 try
                  desc:=desc+strtofloat(t);
                 except
                  desc:=desc;
                 end;
               end;
               if j=16 then
               begin
                 if t='' then
                    t:='0';
                 try
                   neto:=neto+strtofloat(t);
                 except
                   neto := neto;
                 end;
               end;
               g:=k;
               j:=j+1;
             end;
           end;
         end;
       end;
       stringgrid1.cells[0,stringgrid1.RowCount-1] := 'TOTALES';
       stringgrid1.cells[13,stringgrid1.RowCount-1] := floattostr(copago);
       stringgrid1.cells[14,stringgrid1.RowCount-1] := floattostr(comision);
       stringgrid1.cells[15,stringgrid1.RowCount-1] := floattostr(desc);
       stringgrid1.cells[16,stringgrid1.RowCount-1] := floattostr(neto);
     end;
     if ini = 'US' then
     begin
       archivo_US.TabVisible:=true;
       stringgrid2.ColCount := 14;
       row:=strtoint(trim(largo[w]));
       row:=row+1;
       stringgrid2.rowCount := row;
       fileo:=archivos[W];
       fileo:=fileo+'.txt';
       Assignfile(inputfile2, fileo);
       reset(inputfile2);
       stringgrid2.Cells[0,0] := 'Tipo_Doc.';
       stringgrid2.Cells[1,0] := 'Numero Doc.';
       stringgrid2.Cells[2,0] := 'Codigo EPS';
       stringgrid2.Cells[3,0] := 'Tipo Usuario';
       stringgrid2.Cells[4,0] := 'Primer_ape';
       stringgrid2.Cells[5,0] := 'Segundo_ape';
       stringgrid2.Cells[6,0] := 'Primer_nom';
       stringgrid2.Cells[7,0] := 'Segundo_nom';
       stringgrid2.Cells[8,0] := 'Edad';
       stringgrid2.Cells[9,0] := 'Unidad Edad';
       stringgrid2.Cells[10,0] := 'Sexo';
       stringgrid2.Cells[11,0] := 'Depto.';
       stringgrid2.Cells[12,0] := 'Mcpio.';
       stringgrid2.Cells[13,0] := 'Zona Res.';
       while not eof (inputfile2) do
       begin
         h:=1;
         for i:= 1 to stringgrid2.rowcount -1 do
         begin
           readln(inputfile2,s);
           u:=strlen(pchar(s));
           cadena:=s;
           j:=0;
           g:=0;
           for k:=1 to u do
           begin
             if (cadena[k] = ',') or (k=u) then
             begin
               t:=trim(copy(cadena,(g+1),((k-g)-1)));
               if k=u then
                  t:=trim(copy(cadena,(g+1),((k-g))));
               if t = ',' then
                  t:='';
               stringgrid2.cells[j,i] := t;
               g:=k;
               j:=j+1;
             end;
           end;
         end;
       end;
     end;
     if ini = 'AD' then
     begin
       archivo_AD.TabVisible:=true;
       stringgrid3.ColCount := 6;
       stringgrid3.rowCount := (strtoint(trim(largo[w]))+2);
       fileo:=archivos[W];
       fileo:=fileo+'.txt';
       Assignfile(inputfile2, fileo);
       reset(inputfile2);
       stringgrid3.Cells[0,0] := 'Numero de Factura';
       stringgrid3.Cells[1,0] := 'Prestador';
       stringgrid3.Cells[2,0] := 'Concepto';
       stringgrid3.Cells[3,0] := 'Cantidad';
       stringgrid3.Cells[4,0] := 'Valor Unitario';
       stringgrid3.Cells[5,0] := 'Valor Total';
       while not eof (inputfile2) do
       begin
         h:=1;
         for i:= 1 to stringgrid3.rowcount -1 do
         begin
           readln(inputfile2,s);
           u:=strlen(pchar(s));
           cadena:=s;
           j:=0;
           g:=0;
           for k:=1 to u do
           begin
             if (cadena[k] = ',') or (k=u) then
             begin
               t:=trim(copy(cadena,(g+1),((k-g)-1)));
               if k=u then
                  t:=trim(copy(cadena,(g+1),((k-g))));
               if t = ',' then
                  t :='';
               stringgrid3.cells[j,i] := t;
               if j=3 then
               begin
                 valor := copy(trim(t),length(t)-3,1);
                 if t='' then
                 begin
                    t:='0';
                 end;
                 if valor = '.' then
                    t := copy(trim(t),1,length(t)-3);
                 can := can+strtofloat(t);
               end;
               if j=4 then
               begin
                 valor := copy(trim(t),length(t)-3,1);
                 if t='' then
                 begin
                    t:='0';
                 end;
                 if valor = '.' then
                    t := copy(trim(t),1,length(t)-3);
                 uni := uni+strtofloat(t);
               end;
               if j=5 then
               begin
                 valor := copy(trim(t),length(t)-3,1);
                 if t='' then
                 begin
                    t:='0';
                 end;
                 if valor = '.' then
                    t := copy(trim(t),1,length(t)-3);
                 tot := tot+strtofloat(t);
               end;
               g:=k;
               j:=j+1;
             end;
           end;
         end;
       end;
       stringgrid3.cells[0,stringgrid3.RowCount-1] := 'TOTALES';
       stringgrid3.cells[3,stringgrid3.RowCount-1] := floattostr(can);
       stringgrid3.cells[4,stringgrid3.RowCount-1] := floattostr(uni);
       stringgrid3.cells[5,stringgrid3.RowCount-1] := floattostr(tot);
     end;
     if ini = 'AC' then
     begin
       archivo_AC.TabVisible:=true;
       stringgrid4.ColCount := 17;
       stringgrid4.rowCount := (strtoint(trim(largo[w]))+2);
       fileo:=archivos[W];
       fileo:=fileo+'.txt';
       Assignfile(inputfile2, fileo);
       reset(inputfile2);
       stringgrid4.Cells[0,0] := 'Factura';
       stringgrid4.Cells[1,0] := 'Prestador';
       stringgrid4.Cells[2,0] := 'Tipo_doc_usuario';
       stringgrid4.Cells[3,0] := 'Num_doc_usuario';
       stringgrid4.Cells[4,0] := 'Fecha Consulta';
       stringgrid4.Cells[5,0] := 'Autorizacion';
       stringgrid4.Cells[6,0] := 'Codigo Consulta';
       stringgrid4.Cells[7,0] := 'Finalidad Consulta';
       stringgrid4.Cells[8,0] := 'Causa Externa';
       stringgrid4.Cells[9,0] := 'Diagnostico ppal';
       stringgrid4.Cells[10,0] := 'Diagnostico relacionado';
       stringgrid4.Cells[11,0] := 'Diagnostico relacionado 2';
       stringgrid4.Cells[12,0] := 'Diagnostico relacionado 3';
       stringgrid4.Cells[13,0] := 'Tipo Diagnostico ppal';
       stringgrid4.Cells[14,0] := 'Valor consulta';
       stringgrid4.Cells[15,0] := 'Cuota Moderadora';
       stringgrid4.Cells[16,0] := 'Neto a pagar';
       while not eof (inputfile2) do
       begin
         h:=1;
         for i:= 1 to stringgrid4.rowcount -1 do
         begin
           readln(inputfile2,s);
           u:=strlen(pchar(s));
           cadena:=s;
           j:=0;
           g:=0;
           for k:=1 to u do
           begin
             if (cadena[k] = ',') or (k=u) then
             begin
               t:=trim(copy(cadena,(g+1),((k-g)-1)));
               if k=u then
                  t:=trim(copy(cadena,(g+1),((k-g))));
               if t = ',' then
                  t :='';
               stringgrid4.cells[j,i] := t;
               if j=14  then
               begin
                 valor := copy(trim(t),length(t)-3,1);
                 if t='' then
                 begin
                    t:='0';
                 end;
                 if valor = '.' then
                    t := copy(trim(t),1,length(t)-3);
                 con :=con + strtofloat(t);
               end;
               if j=15  then
               begin
                 valor := copy(trim(t),length(t)-3,1);
                 if t='' then
                 begin
                    t:='0';
                 end;
                 if valor = '.' then
                    t := copy(trim(t),1,length(t)-3);
                 cuo :=cuo + strtofloat(t);
               end;
               if j=16  then
               begin
                 valor := copy(trim(t),length(t)-3,1);
                 if t='' then
                 begin
                    t:='0';
                 end;
                 if valor = '.' then
                    t := copy(trim(t),1,length(t)-3);
                 net :=net + strtofloat(t);
               end;
               g:=k;
               j:=j+1;
             end;
           end;
         end;
       end;
       stringgrid4.cells[0,stringgrid4.RowCount-1] := 'TOTALES';
       stringgrid4.cells[14,stringgrid4.RowCount-1] := floattostr(con);
       stringgrid4.cells[15,stringgrid4.RowCount-1] := floattostr(cuo);
       stringgrid4.cells[16,stringgrid4.RowCount-1] := floattostr(net);
     end;
     if ini = 'AP' then
     begin
       archivo_AP.TabVisible:=true;
       stringgrid5.ColCount := 15;
       stringgrid5.rowCount := (strtoint(trim(largo[w]))+2);
       fileo:=archivos[W];
       fileo:=fileo+'.txt';
       Assignfile(inputfile2, fileo);
       reset(inputfile2);
       stringgrid5.Cells[0,0] := 'Factura';
       stringgrid5.Cells[1,0] := 'Prestador';
       stringgrid5.Cells[2,0] := 'Tipo_doc_usuario';
       stringgrid5.Cells[3,0] := 'Num_doc_usuario';
       stringgrid5.Cells[4,0] := 'Fecha Procedimiento';
       stringgrid5.Cells[5,0] := 'Autorizacion';
       stringgrid5.Cells[6,0] := 'Codigo Procedimiento';
       stringgrid5.Cells[7,0] := 'Ambito Realizacion';
       stringgrid5.Cells[8,0] := 'Finalidad Procedimiento';
       stringgrid5.Cells[9,0] := 'Personal que Atiende';
       stringgrid5.Cells[10,0] := 'Diagnostico Ppal';
       stringgrid5.Cells[11,0] := 'Diagnostico relacionado';
       stringgrid5.Cells[12,0] := 'Complicacion';
       stringgrid5.Cells[13,0] := 'Forma Realizacion Acto Q.';
       stringgrid5.Cells[14,0] := 'Valor Procedimiento';
       while not eof (inputfile2) do
       begin
         h:=1;
         for i:= 1 to stringgrid5.rowcount -1 do
         begin
           readln(inputfile2,s);
           u:=strlen(pchar(s));
           cadena:=s;
           j:=0;
           g:=0;
           for k:=1 to u do
           begin
             if (cadena[k] = ',') or (k=u) then
             begin
               t:=trim(copy(cadena,(g+1),((k-g)-1)));
               if k=u then
                  t:=trim(copy(cadena,(g+1),((k-g))));
               if t = ',' then
                  t :='';
               stringgrid5.cells[j,i] := t;
               if j= 14 then
               begin
                 valor := copy(trim(t),length(t)-3,1);
                 if t='' then
                 begin
                    t:='0';
                 end;
                 if valor = '.' then
                    t := copy(trim(t),1,length(t)-3);
                 pro:=pro+strtofloat(T);
               end;
               g:=k;
               j:=j+1;
             end;
           end;
         end;
       end;
       stringgrid5.cells[0,stringgrid5.RowCount-1] := 'TOTALES';
       stringgrid5.cells[14,stringgrid5.RowCount-1] := floattostr(pro);
     end;
     if ini = 'AH' then
     begin
       archivo_AH.TabVisible:=true;
       archivo_AH.Enabled:=true;
       stringgrid6.ColCount := 19;
       stringgrid6.rowCount := (strtoint(trim(largo[w]))+1);
       fileo:=archivos[W];
       fileo:=fileo+'.txt';
       Assignfile(inputfile2, fileo);
       reset(inputfile2);
       stringgrid6.Cells[0,0] := 'Factura';
       stringgrid6.Cells[1,0] := 'Prestador';
       stringgrid6.Cells[2,0] := 'Tipo_doc_usuario';
       stringgrid6.Cells[3,0] := 'Num_doc_usuario';
       stringgrid6.Cells[4,0] := 'Via de ingreso';
       stringgrid6.Cells[5,0] := 'Fecha Ingreso';
       stringgrid6.Cells[6,0] := 'Hora Ingreso';
       stringgrid6.Cells[7,0] := 'Autorizacion';
       stringgrid6.Cells[8,0] := 'Causa Externa';
       stringgrid6.Cells[9,0] := 'Diag. Principal Ing.';
       stringgrid6.Cells[10,0] := 'Diag. Principal Egr.';
       stringgrid6.Cells[11,0] := 'Diag.Rel.No.1 Egr';
       stringgrid6.Cells[12,0] := 'Diag.Rel.No.2 Egr';
       stringgrid6.Cells[13,0] := 'Diag.Rel.No.3 Egr';
       stringgrid6.Cells[14,0] := 'Diag.de la Complicacion';
       stringgrid6.Cells[15,0] := 'Estado a la Salida';
       stringgrid6.Cells[16,0] := 'Diag. Causa Muerte';
       stringgrid6.Cells[17,0] := 'Fecha Egreso';
       stringgrid6.Cells[18,0] := 'Hora Egreso';
       while not eof (inputfile2) do
       begin
         h:=1;
         for i:= 1 to stringgrid6.rowcount -1 do
         begin
           readln(inputfile2,s);
           u:=strlen(pchar(s));
           cadena:=s;
           j:=0;
           g:=0;
           for k:=1 to u do
           begin
             if (cadena[k] = ',') or (k=u) then
             begin
               t:=trim(copy(cadena,(g+1),((k-g)-1)));
               if k=u then
                  t:=trim(copy(cadena,(g+1),((k-g))));
               if t = ',' then
                  t :='';
               stringgrid6.cells[j,i] := t;
               g:=k;
               j:=j+1;
             end;
           end;
         end;
       end
     end;
     if ini = 'AU' then
     begin
       archivo_AU.TabVisible:=true;
       stringgrid7.ColCount := 17;
       stringgrid7.rowCount := (strtoint(trim(largo[w]))+1);
       fileo:=archivos[W];
       fileo:=fileo+'.txt';
       Assignfile(inputfile2, fileo);
       reset(inputfile2);
       stringgrid7.Cells[0,0] := 'Factura';
       stringgrid7.Cells[1,0] := 'Prestador';
       stringgrid7.Cells[2,0] := 'Tipo_doc_usuario';
       stringgrid7.Cells[3,0] := 'Num_doc_usuario';
       stringgrid7.Cells[4,0] := 'Fecha Ingreso';
       stringgrid7.Cells[5,0] := 'Hora Ingreso';
       stringgrid7.Cells[6,0] := 'Autorizacion';
       stringgrid7.Cells[7,0] := 'Causa Externa';
       stringgrid7.Cells[8,0] := 'Diag. a la Salida';
       stringgrid7.Cells[9,0] := 'Diag.Rel.No.1 Egr';
       stringgrid7.Cells[10,0] := 'Diag.Rel.No.2 Egr';
       stringgrid7.Cells[11,0] := 'Diag.Rel.No.3 Egr';
       stringgrid7.Cells[12,0] := 'Destino usuario';
       stringgrid7.Cells[13,0] := 'Estado a la Salida';
       stringgrid7.Cells[14,0] := 'Causa Muerte';
       stringgrid7.Cells[15,0] := 'Fecha Egreso';
       stringgrid7.Cells[16,0] := 'Hora Egreso';
       while not eof (inputfile2) do
       begin
         h:=1;
         for i:= 1 to stringgrid7.rowcount -1 do
         begin
           readln(inputfile2,s);
           u:=strlen(pchar(s));
           cadena:=s;
           j:=0;
           g:=0;
           for k:=1 to u do
           begin
             if (s[k] = ',') or (k=u) then
             begin
               t:=trim(copy(cadena,(g+1),((k-g)-1)));
               if k=u then
                  t:=trim(copy(cadena,(g+1),((k-g))));
               if t = ',' then
                  t :='';
               stringgrid7.cells[j,i] := t;
               g:=k;
               j:=j+1;
             end;
           end;
         end;
       end;
     end;
     if ini = 'AN' then
     begin
       archivo_AN.TabVisible:=true;
       stringgrid8.ColCount := 14;
       stringgrid8.rowCount := (strtoint(trim(largo[w]))+2);
       fileo:=archivos[W];
       fileo:=fileo+'.txt';
       Assignfile(inputfile2, fileo);
       reset(inputfile2);
       stringgrid8.Cells[0,0] := 'Factura';
       stringgrid8.Cells[1,0] := 'Prestador';
       stringgrid8.Cells[2,0] := 'Tipo_doc_madre';
       stringgrid8.Cells[3,0] := 'Num_doc_madre';
       stringgrid8.Cells[4,0] := 'Fecha Nacimiento r.n';
       stringgrid8.Cells[5,0] := 'Hora Nacimiento r.n';
       stringgrid8.Cells[6,0] := 'Edad gestacional';
       stringgrid8.Cells[7,0] := 'Control Prenatal';
       stringgrid8.Cells[8,0] := 'Sexo';
       stringgrid8.Cells[9,0] := 'Peso';
       stringgrid8.Cells[10,0] := 'Diag.Recien Nacido';
       stringgrid8.Cells[11,0] := 'Causa Basica Muerte';
       stringgrid8.Cells[12,0] := 'Fecha Muerte';
       stringgrid8.Cells[13,0] := 'Hora Muerte';
       while not eof (inputfile2) do
       begin
         h:=1;
         for i:= 1 to stringgrid8.rowcount -1 do
         begin
           readln(inputfile2,s);
           u:=strlen(pchar(s));
           cadena:=s;
           j:=0;
           g:=0;
           for k:=1 to u do
           begin
             if (cadena[k] = ',') or (k=u) then
             begin
               t:=trim(copy(cadena,(g+1),((k-g)-1)));
               if k=u then
                  t:=trim(copy(cadena,(g+1),((k-g))));
               if t = ',' then
                  t :='';
               stringgrid8.cells[j,i] := t;
               g:=k;
               j:=j+1;
             end;
           end;
         end;
       end
     end;
     if ini = 'AM' then
     begin
       archivo_AM.TabVisible:=true;
       stringgrid9.ColCount := 14;
       stringgrid9.rowCount := (strtoint(trim(largo[w]))+2);
       fileo:=archivos[W];
       fileo:=fileo+'.txt';
       Assignfile(inputfile2, fileo);
       reset(inputfile2);
       stringgrid9.Cells[0,0] := 'Factura';
       stringgrid9.Cells[1,0] := 'Prestador';
       stringgrid9.Cells[2,0] := 'Tipo_doc_usuario';
       stringgrid9.Cells[3,0] := 'Num_doc_usuario';
       stringgrid9.Cells[4,0] := 'Autorizacion';
       stringgrid9.Cells[5,0] := 'Cod. Medicamento';
       stringgrid9.Cells[6,0] := 'Tipo Medicamento';
       stringgrid9.Cells[7,0] := 'Nombre Generico';
       stringgrid9.Cells[8,0] := 'Forma Farmaceutica';
       stringgrid9.Cells[9,0] := 'Concentracion Medi.';
       stringgrid9.Cells[10,0] := 'Unidad de Medida';
       stringgrid9.Cells[11,0] := 'Numero de unidades';
       stringgrid9.Cells[12,0] := 'Valor Unitario';
       stringgrid9.Cells[13,0] := 'Valor Total';
       while not eof (inputfile2) do
       begin
         h:=1;
         for i:= 1 to stringgrid9.rowcount -1 do
         begin
           readln(inputfile2,s);
           u:=strlen(pchar(s));
           cadena :=s;
           j:=0;
           g:=0;
           for k:=1 to u do
           begin
             if (cadena[k] = ',') or (k=u) then
             begin
               t:=trim(copy(cadena,(g+1),((k-g)-1)));
               if k=u then
                  t:=trim(copy(cadena,(g+1),((k-g))));
               if t = ',' then
                  t :='';

               if j=11 then
               begin
                 valor := copy(trim(t),length(t)-3,1);
                 if t='' then
                 begin
                    t:='0';
                 end;
                 if valor = '.' then
                    t := copy(trim(t),1,length(t)-3);
                 muni:= muni+strtofloat(t);
               end;
               if j=12 then
               begin
                 valor := copy(trim(t),length(t)-3,1);
                 if t='' then
                 begin
                    t:='0';
                 end;
                 if valor = '.' then
                    t := copy(trim(t),1,length(t)-3);
                 mtot:= mtot+strtofloat(t);
               end;
               if j=13 then
               begin
                 valor := copy(trim(t),length(t)-3,1);
                 if t='' then
                 begin
                    t:='0';
                 end;
                 if valor = '.' then
                    t := copy(trim(t),1,length(t)-3);
                 mtot1:= mtot1+strtofloat(t);
               end;
               stringgrid9.cells[j,i] := t;
               g:=k;
               j:=j+1;
             end;
           end;
         end;
         stringgrid9.cells[0,stringgrid9.RowCount-1] := 'TOTALES';
         stringgrid9.cells[11,stringgrid9.RowCount-1] := floattostr(muni);
         stringgrid9.cells[12,stringgrid9.RowCount-1] := floattostr(mtot);
         stringgrid9.cells[13,stringgrid9.RowCount-1] := floattostr(mtot1);
       end;
     end;
     if ini = 'AT' then
     begin
       archivo_AT.TabVisible:=true;
       stringgrid10.ColCount := 11;
       stringgrid10.rowCount := (strtoint(trim(largo[w]))+2);
       fileo:=archivos[W];
       fileo:=fileo+'.txt';
       Assignfile(inputfile2, fileo);
       reset(inputfile2);
       stringgrid10.Cells[0,0] := 'Factura';
       stringgrid10.Cells[1,0] := 'Prestador';
       stringgrid10.Cells[2,0] := 'Tipo_doc_usuario';
       stringgrid10.Cells[3,0] := 'Num_doc_usuario';
       stringgrid10.Cells[4,0] := 'Autorizacion';
       stringgrid10.Cells[5,0] := 'Tipo Servicio';
       stringgrid10.Cells[6,0] := 'Codigo Servicio';
       stringgrid10.Cells[7,0] := 'Nombre Servicio';
       stringgrid10.Cells[8,0] := 'Cantidad';
       stringgrid10.Cells[9,0] := 'Valor Unitario ';
       stringgrid10.Cells[10,0] := 'Valor Total';
       while not eof (inputfile2) do
       begin
         h:=1;
         for i:= 1 to stringgrid10.rowcount -1 do
         begin
           readln(inputfile2,s);
           u:=strlen(pchar(s));
           cadena:=s;
           j:=0;
           g:=0;
           for k:=1 to u do
           begin
             if (cadena[k] = ',') or (k=u) then
             begin
               t:=trim(copy(cadena,(g+1),((k-g)-1)));
               if k=u then
                  t:=trim(copy(cadena,(g+1),((k-g))));
               if t = ',' then
                  t :='';
               if j=8 then
               begin
                 valor := copy(trim(t),length(t)-3,1);
                 if t='' then
                 begin
                    t:='0';
                 end;
                 if valor = '.' then
                    t := copy(trim(t),1,length(t)-3);
                  cant:= cant+strtofloat(t);
               end;
               if j=9 then
               begin
                 valor := copy(trim(t),length(t)-3,1);
                 if t='' then
                 begin
                    t:='0';
                 end;
                 if valor = '.' then
                    t := copy(trim(t),1,length(t)-3);
                 unita:= unita+strtofloat(t);
               end;
               if j=10 then
               begin
                 valor := copy(trim(t),length(t)-3,1);
                 if t='' then
                 begin
                    t:='0';
                 end;
                 if valor = '.' then
                    t := copy(trim(t),1,length(t)-3);
                 tota:= tota+strtofloat(t);
               end;
               stringgrid10.cells[j,i] := t;
               g:=k;
               j:=j+1;
             end;
           end;
         end;
       end;
       stringgrid10.cells[0,stringgrid10.RowCount-1] := 'TOTALES';
       stringgrid10.cells[8,stringgrid10.RowCount-1] := floattostr(cant);
       stringgrid10.cells[9,stringgrid10.RowCount-1] := floattostr(unita);
       stringgrid10.cells[10,stringgrid10.RowCount-1] := floattostr(tota);
     end;
   end;
   label1.Visible := true;
   edit1.Visible := true;
   edit1.SetFocus;
   statusbar1.Panels[0].Text := 'Archivo de Control:'+ Y;
  end;
end;


procedure TFormRIPS.FormCreate(Sender: TObject);
begin
  archivo_AF.TabVisible:=false;
  archivo_US.TabVisible:=false;
  archivo_AD.TabVisible:=false;
  archivo_AC.TabVisible:=false;
  archivo_AP.TabVisible:=false;
  archivo_AH.TabVisible:=false;
  archivo_AU.TabVisible:=false;
  archivo_AN.TabVisible:=false;
  archivo_AM.TabVisible:=false;
  archivo_AT.TabVisible:=false;
  button4.Enabled := false;
  animate1.Visible := false;
  end;

procedure TFormRIPS.Button3Click(Sender: TObject);
begin
  close;
end;

procedure TFormRIPS.Button4Click(Sender: TObject);
var i,j,f,g,w :integer;
    doc,fec : string;
begin
{  if messagedlg('Desea Grabar el RIPS?',mtconfirmation,[mbyes,mbno],0)=mryes then
  begin
    query1.Close;
    query1.SQL.Clear;
    query1.sql.add('select * from archivo_usuario where num_radicacion = "'+edit1.Text+'"');
    query1.Open;
    if query1.RecordCount = 0 then
    begin
      database1.StartTransaction;
      try
        animate1.Visible := true;
        animate1.Active := true;
        button4.Cursor :=  crhourglass;
        if archivo_AF.TabVisible=true then
        begin
          datasource1.DataSet := tableAF;
          tableAF.Open;
          for i:= 1 to stringgrid1.rowcount -2 do
          begin
            tableAF.insert;
            datasource1.DataSet.FieldByName('num_radicacion').Value := edit1.Text;
            datasource1.DataSet.FieldByName('cod_anulado').Value := '0';
            j:=0;
            while j < stringgrid1.colcount do
            begin
              datasource1.DataSet.FieldByName('cod_prestador').Value :=stringgrid1.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('raz_social').Value :=stringgrid1.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('tip_documento_pres').Value :=stringgrid1.Cells[j,i];
              j:=j+1;
              doc :=stringgrid1.Cells[j,i];
              for f := 1 to length(doc) do
              begin
                if doc[f] = '-' then
                   doc := copy(doc,1,f-1);
              end;
              datasource1.DataSet.fieldbyname('num_documento_pres').Value :=doc;
              j:=j+1;
              datasource1.DataSet.FieldByName('num_factura').Value :=stringgrid1.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('fec_factura').Value :=stringgrid1.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('fec_inicio').Value :=stringgrid1.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('fec_final').Value :=stringgrid1.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_entidad').Value :=stringgrid1.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('nom_entidad').Value :=stringgrid1.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_contrato').Value :=stringgrid1.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('plan_beneficios').Value :=stringgrid1.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('num_poliza').Value :=stringgrid1.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('val_copago').Value :=stringgrid1.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('val_comision').Value :=stringgrid1.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('val_descuento').Value :=stringgrid1.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('val_pago_enti').Value :=stringgrid1.Cells[j,i];
              j:=j+1;
            end;
          datasource1.DataSet.Post;
          end;
        end;
        if archivo_US.TabVisible=true then
        begin
          datasource1.DataSet := tableUS;
          tableUS.Open;
          for i:= 1 to stringgrid2.rowcount -1 do
          begin
            tableUS.insert;
            datasource1.DataSet.FieldByName('num_radicacion').Value :=edit1.Text;
            datasource1.DataSet.FieldByName('cod_anulado').Value := '0';
            j:=0;
            while j < stringgrid2.colcount do
            begin
              datasource1.DataSet.FieldByName('tip_documento_usu').Value :=stringgrid2.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('num_documento_usu').Value :=stringgrid2.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_entidad').Value :=stringgrid2.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.fieldbyname('tip_usuario').Value :=stringgrid2.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('pri_apellido').Value :=stringgrid2.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('seg_apellido').Value :=stringgrid2.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('pri_nombre').Value :=stringgrid2.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('seg_nombre').Value :=stringgrid2.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('edad').Value :=stringgrid2.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('uni_medida_edad').Value :=stringgrid2.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_sexo').Value :=stringgrid2.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_departamento').Value :=stringgrid2.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_municipio').Value :=stringgrid2.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_zona').Value :=stringgrid2.Cells[j,i];
              j:=j+1;
            end;
          datasource1.DataSet.Post;
          end;
        end;
        if archivo_AC.TabVisible=true then
        begin
          datasource1.DataSet := tableAC;
          tableAC.Open;
          for i:= 1 to stringgrid4.rowcount -2 do
          begin
            tableAC.insert;
            datasource1.DataSet.FieldByName('num_radicacion').Value := edit1.Text;
            datasource1.DataSet.FieldByName('cod_anulado').Value := '0';
            j:=0;
            while j < stringgrid4.colcount do
            begin
              datasource1.DataSet.FieldByName('num_factura').Value :=stringgrid4.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_prestador').Value :=stringgrid4.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('tipo_documento_usu').Value :=stringgrid4.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.fieldbyname('num_documento_usu').Value :=stringgrid4.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('fec_consulta').Value :=stringgrid4.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('num_autorizacion').Value :=stringgrid4.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_consulta').Value :=stringgrid4.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('fin_cons').Value :=stringgrid4.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('caus_externa').Value :=stringgrid4.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_diagnostico_ppal').Value :=stringgrid4.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_diagnostico_re1').Value :=stringgrid4.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_diagnostico_re2').Value :=stringgrid4.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_diagnostico_re3').Value :=stringgrid4.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('tipo_diagnostico_ppal').Value :=stringgrid4.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('val_consulta').Value :=stringgrid4.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('val_cuota_mod').Value :=stringgrid4.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('val_pagar').Value :=stringgrid4.Cells[j,i];
              j:=j+1;
            end;
          datasource1.DataSet.Post;
          end;
        end;
        if archivo_AD.TabVisible=true then
        begin
          datasource1.DataSet := tableAD;
          tableAD.Open;
          for i:= 1 to stringgrid3.rowcount -2 do
          begin
            tableAD.insert;
            datasource1.DataSet.FieldByName('num_radicacion').Value := edit1.Text;
            datasource1.DataSet.FieldByName('cod_anulado').Value := '0';
            j:=0;
            while j < stringgrid3.colcount do
            begin
              datasource1.DataSet.FieldByName('num_factura').Value :=stringgrid3.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_prestador').Value :=stringgrid3.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_concepto').Value :=stringgrid3.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.fieldbyname('cantidad').Value :=stringgrid3.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('val_unitario').Value :=stringgrid3.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('val_concepto').Value :=stringgrid3.Cells[j,i];
              j:=j+1;
            end;
            datasource1.DataSet.Post;
          end;
        end;
        if archivo_AP.TabVisible=true then
        begin
          datasource1.DataSet := tableAP;
          tableAP.Open;
          for i:= 1 to stringgrid5.rowcount -2 do
          begin
            tableAP.insert;
            datasource1.DataSet.FieldByName('num_radicacion').Value := edit1.Text;
            datasource1.DataSet.FieldByName('cod_anulado').Value := '0';
            j:=0;
            while j < stringgrid5.colcount do
            begin
              datasource1.DataSet.FieldByName('num_factura').Value :=stringgrid5.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_prestador').Value :=stringgrid5.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('tipo_documento_usu').Value :=stringgrid5.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('num_documento_usu').Value :=stringgrid5.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.fieldbyname('fec_proc').Value :=stringgrid5.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('num_autorizacion').Value :=stringgrid5.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_procedimiento').Value :=stringgrid5.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('ambito_relacion').Value :=stringgrid5.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('finalidad_proc').Value :=stringgrid5.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('personal_salud').Value :=stringgrid5.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_diag_ppal').Value :=stringgrid5.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_diag_rela').Value :=stringgrid5.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_complicacion').Value :=stringgrid5.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('form_acto_quir').Value :=stringgrid5.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('val_procedimieto').Value :=stringgrid5.Cells[j,i];
              j:=j+1;
            end;
          datasource1.DataSet.Post;
          end;
        end;
        if archivo_AH.TabVisible=true then
        begin
          datasource1.DataSet := tableAH;
          tableAH.Open;
          for i:= 1 to stringgrid6.rowcount -1 do
          begin
            tableAH.insert;
            datasource1.DataSet.FieldByName('num_radicacion').Value := edit1.Text;
            datasource1.DataSet.FieldByName('cod_anulado').Value := '0';
            j:=0;
            while j < stringgrid6.colcount do
            begin
              datasource1.DataSet.FieldByName('num_factura').Value :=stringgrid6.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_prestador').Value :=stringgrid6.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('tipo_documento_usu').Value :=stringgrid6.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('num_documento_usu').Value :=stringgrid6.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.fieldbyname('via_ingreso').Value :=stringgrid6.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('fec_ingreso_inst').Value :=stringgrid6.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('hor_ingreso').Value :=stringgrid6.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('num_autorizacion').Value :=stringgrid6.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('caus_externa').Value :=stringgrid6.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_diagnostico_ppal_ing').Value :=stringgrid6.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_diagnostico_ppal_egr').Value :=stringgrid6.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_diag_nostico_egr1').Value :=stringgrid6.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_diagnostico_egr2').Value :=stringgrid6.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_diagnostico_egr3').Value :=stringgrid6.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_diagnostico_comp').Value :=stringgrid6.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('estado_salida').Value :=stringgrid6.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_diagnostico_muerte').Value :=stringgrid6.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('fec_ingreso_inst').Value :=stringgrid6.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('hor_egreso').Value :=stringgrid6.Cells[j,i];
              j:=j+1;
            end;
          datasource1.DataSet.Post;
          end;
        end;
        if archivo_AU.TabVisible=true then
        begin
          datasource1.DataSet := tableAU;
          tableAU.Open;
          for i:= 1 to stringgrid7.rowcount -1 do
          begin
            tableAU.insert;
            datasource1.DataSet.FieldByName('num_radicacion').Value := edit1.Text;
            datasource1.DataSet.FieldByName('cod_anulado').Value := '0';
            j:=0;
            while j < stringgrid7.colcount do
            begin
              datasource1.DataSet.FieldByName('num_factura').Value :=stringgrid7.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_prestador').Value :=stringgrid7.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('tip_documento_usu').Value :=stringgrid7.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('num_documento_usu').Value :=stringgrid7.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.fieldbyname('fec_ingreso_observ').Value :=stringgrid7.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('hor_ingreso').Value :=stringgrid7.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('num_autorizacion').Value :=stringgrid7.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('caus_externa').Value :=stringgrid7.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_diagnostico_sal').Value :=stringgrid7.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_diagnostico_re1_sal').Value :=stringgrid7.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_diagnostico_re2_sal').Value :=stringgrid7.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_diagnostico_re3_sal').Value :=stringgrid7.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('desti_salida').Value :=stringgrid7.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('esta_salida').Value :=stringgrid7.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('caus_muerte_urgencia').Value :=stringgrid7.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('fec_salida_obs').Value :=stringgrid7.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('hor_salida').Value :=stringgrid7.Cells[j,i];
              j:=j+1;
            end;
          datasource1.DataSet.Post;
          end;
        end;
        if archivo_AN.TabVisible=true then
        begin
          datasource1.DataSet := tableAN;
          tableAN.Open;
          for i:= 1 to stringgrid8.rowcount -1 do
          begin
            tableAN.insert;
            datasource1.DataSet.FieldByName('num_radicacion').Value :=edit1.Text;
            datasource1.DataSet.FieldByName('cod_anulado').Value := '0';
            j:=0;
            while j < stringgrid8.colcount do
            begin
              datasource1.DataSet.FieldByName('num_factura').Value :=stringgrid8.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_prestador').Value :=stringgrid8.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('tip_documento_mad').Value :=stringgrid8.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('num_documento_mad').Value :=stringgrid8.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.fieldbyname('fec_nacimiento').Value :=stringgrid8.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('hor_nacimiento').Value :=stringgrid8.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('edad_gestacion').Value :=stringgrid8.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cont_prenatal').Value :=stringgrid8.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('sexo').Value :=stringgrid8.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('peso').Value :=stringgrid8.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_diagnostico_nac').Value :=stringgrid8.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('caus_muerte_nac').Value :=stringgrid8.Cells[j,i];
              j:=j+1;
              if stringgrid8.Cells[j,i] <> '0' then
                 datasource1.DataSet.FieldByName('fec_muerte_nac').Value :=fec;
              j:=j+1;
              datasource1.DataSet.FieldByName('hor_muerte').Value :=stringgrid8.Cells[j,i];
              j:=j+1;
            end;
            datasource1.DataSet.Post;
          end;
        end;
        if archivo_AM.TabVisible=true then
        begin
          datasource1.DataSet := tableAM;
          tableAM.Open;
          for i:= 1 to stringgrid9.rowcount -1 do
          begin
            tableAM.insert;
            datasource1.DataSet.FieldByName('num_radicacion').Value := edit1.Text;
            datasource1.DataSet.FieldByName('cod_anulado').Value := '0';
            j:=0;
            while j < stringgrid9.colcount do
            begin
              datasource1.DataSet.FieldByName('num_factura').Value :=stringgrid9.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_prestador').Value :=stringgrid9.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('tip_documento_usu').Value :=stringgrid9.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('num_documento_usu').Value :=stringgrid9.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.fieldbyname('num_autorizacion').Value :=stringgrid9.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_medicamento').Value :=stringgrid9.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('tipo_medicamento').Value :=stringgrid9.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('nom_medicamento').Value :=stringgrid9.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('form_farma').Value :=stringgrid9.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('concen_med').Value :=stringgrid9.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('uni_mededicamento_med').Value :=stringgrid9.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('num_unidades').Value :=stringgrid9.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('val_unidad_med').Value :=stringgrid9.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('val_total_med').Value :=stringgrid9.Cells[j,i];
              j:=j+1;
            end;
          datasource1.DataSet.Post;
          end;
        end;
        if archivo_AT.TabVisible=true then
        begin
          datasource1.DataSet := tableAS;
          tableAS.Open;
          for i:= 1 to stringgrid10.rowcount -2 do
          begin
            tableAS.insert;
            datasource1.DataSet.FieldByName('num_radicacion').Value := edit1.Text;
            datasource1.DataSet.FieldByName('cod_anulado').Value := '0';
            j:=0;
            while j < stringgrid10.colcount do
            begin
              datasource1.DataSet.FieldByName('num_factura').Value :=stringgrid10.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_prestador').Value :=stringgrid10.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('tipo_documento_usu').Value :=stringgrid10.Cells[j,i];
              j :=j+1;
              datasource1.DataSet.FieldByName('num_documento_usu').Value :=stringgrid10.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.fieldbyname('num_autorizacion').Value :=stringgrid10.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('tipo_servicio').Value :=stringgrid10.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cod_servicio').Value :=stringgrid10.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('nom_servicio').Value :=stringgrid10.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('cant').Value :=stringgrid10.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('val_unidad_mat').Value :=stringgrid10.Cells[j,i];
              j:=j+1;
              datasource1.DataSet.FieldByName('val_total_mat').Value :=stringgrid10.Cells[j,i];
              j:=j+1;
            end;
          datasource1.DataSet.Post;
          end;
        end;
        datasource1.DataSet:=tablect;
        tablect.Open;
        for w:=0 to xy-1 do
        begin
          tablect.Insert;
          datasource1.DataSet.FieldByName('cod_prestador').Value:=presta[w];
          datasource1.DataSet.FieldByName('Fec_remision').value:= fecharem[w];
          datasource1.DataSet.FieldByName('Cod_archivo').Value:=archivos[w];
          datasource1.DataSet.FieldByName('tot_archivos').Value:=largo[w];
          datasource1.DataSet.FieldByName('num_radicacion').Value:=edit1.Text;
          datasource1.DataSet.FieldByName('cod_anulado').Value := '0';
          datasource1.DataSet.Post;
        end;
        try
          tablect.ApplyUpdates;
          if tableAS.active = true then
             tableAS.applyupdates;
          if tableAM.active = true then
             tableAM.ApplyUpdates;
          if tableAN.active = true then
             tablean.ApplyUpdates;
          if tableAU.active = true then
             tableau.ApplyUpdates;
          if tableAH.active = true then
             tableah.ApplyUpdates;
          if tableAP.active = true then
             tableap.ApplyUpdates;
          if tableAD.active = true then
             tablead.ApplyUpdates;
          if tableAC.active = true then
             tableac.ApplyUpdates;
          if tableUS.active = true then
             tableus.ApplyUpdates;
          if tableAF.active = true then
             tableaf.ApplyUpdates;
          database1.Commit;
          tablect.CommitUpdates;
         if tableAS.active = true then
             tableAS.commitupdates;
          if tableAM.active = true then
             tableAM.commitupdates;
          if tableAN.active = true then
             tablean.commitupdates;
          if tableAU.active = true then
             tableau.commitupdates;
          if tableAH.active = true then
             tableah.commitupdates;
          if tableAP.active = true then
             tableap.commitupdates;
          if tableAD.active = true then
             tablead.commitupdates;
          if tableAC.active = true then
             tableac.commitupdates;
          if tableUS.active = true then
             tableus.commitupdates;
          if tableAF.active = true then
             tableaf.commitupdates;
          animate1.Stop;
          animate1.Visible := false;
          animate1.Active := false;
          animate1.Visible := false;
          showmessage('Finalizada la Grabacion del RIPS');
          button4.Cursor := crdefault;
          button4.Enabled := true;
          label1.Visible := false;
          edit1.Visible := false;
          edit1.Text := '';
          archivo_AF.TabVisible:=false;
          archivo_US.TabVisible:=false;
          archivo_AD.TabVisible:=false;
          archivo_AC.TabVisible:=false;
          archivo_AP.TabVisible:=false;
          archivo_AH.TabVisible:=false;
          archivo_AU.TabVisible:=false;
          archivo_AN.TabVisible:=false;
          archivo_AM.TabVisible:=false;
          archivo_AT.TabVisible:=false;
          button4.Enabled := false;
       except
          database1.Rollback;
        end;
     except
       database1.Rollback;
       showmessage('RIPS Presenta Inconsistencias en Datos');
       animate1.Active := false;
       animate1.Visible := false;
       button4.Enabled := true;
       label1.Visible := false;
       edit1.Visible := false;
       archivo_AF.TabVisible:=false;
       archivo_US.TabVisible:=false;
       archivo_AD.TabVisible:=false;
       archivo_AC.TabVisible:=false;
       archivo_AP.TabVisible:=false;
       archivo_AH.TabVisible:=false;
       archivo_AU.TabVisible:=false;
       archivo_AN.TabVisible:=false;
       archivo_AM.TabVisible:=false;
       archivo_AT.TabVisible:=false;
       button4.Enabled := false;
     end;
  end;
  if query1.RecordCount > 0 then
  begin
    showmessage('Numero de Radicacion Ya existe');
    animate1.Active := false;
    animate1.Visible := false;
    button4.Enabled := true;
    label1.Visible := false;
    edit1.Visible := false;
    archivo_AF.TabVisible:=false;
    archivo_US.TabVisible:=false;
    archivo_AD.TabVisible:=false;
    archivo_AC.TabVisible:=false;
    archivo_AP.TabVisible:=false;
    archivo_AH.TabVisible:=false;
    archivo_AU.TabVisible:=false;
    archivo_AN.TabVisible:=false;
    archivo_AM.TabVisible:=false;
    archivo_AT.TabVisible:=false;
    button4.Enabled := false;
   end;
  end;}
end;


procedure TFormRIPS.Edit1Change(Sender: TObject);
begin
  button4.Enabled := true;
end;

procedure TFormRIPS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

end.
