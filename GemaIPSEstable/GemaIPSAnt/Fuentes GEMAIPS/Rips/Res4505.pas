unit Res4505;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, JvEdit, StdCtrls, JvLabel, JvComCtrls, JvSplitter,
  Buttons, Grids, ComCtrls, JvStringGrid, JvCheckBox, JvGradient, JvBitBtn,
  JvDateTimePicker, DB, ADODB, JvButton, JvExGrids, JvExStdCtrls, JvExComCtrls,
  JvExButtons, JvExControls, JvExExtCtrls,strutils, Vcl.FileCtrl, Vcl.DBCtrls;

type
  TF4505 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    Memo1: TMemo;
    BtnDesde: TBitBtn;
    BtnHasta: TBitBtn;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    JvSplitter1: TJvSplitter;
    JvPageControl1: TJvPageControl;
    TabSheet14: TTabSheet;
    TabSheet15: TTabSheet;
    Panel6: TPanel;
    Panel7: TPanel;
    JvLabel1: TJvLabel;
    EditNombre: TJvEdit;
    PnlDesde: TPanel;
    PnlHasta: TPanel;
    JvLabel2: TJvLabel;
    JvLabel4: TJvLabel;
    SGDesde: TJvStringGrid;
    SGHasta: TJvStringGrid;
    LblDesde: TJvLabel;
    LblHasta: TJvLabel;
    ChkLista: TJvCheckBox;
    JvGradient1: TJvGradient;
    DTPDesde: TJvDateTimePicker;
    DTPHasta: TJvDateTimePicker;
    JvLabel7: TJvLabel;
    JvLabel8: TJvLabel;
    JvBitBtn1: TJvBitBtn;
    JvBitBtn2: TJvBitBtn;
    JvLabel9: TJvLabel;
    EditDocumento: TJvEdit;
    JvGradient2: TJvGradient;
    JvGradient3: TJvGradient;
    JvGradient4: TJvGradient;
    JvGradient5: TJvGradient;
    QryGeneral: TADOQuery;
    Edit1: TEdit;
    SGAt: TJvStringGrid;
    SGAm: TJvStringGrid;
    SGAn: TJvStringGrid;
    SGAu: TJvStringGrid;
    SGAh: TJvStringGrid;
    SGAp: TJvStringGrid;
    SGAc: TJvStringGrid;
    SGAd: TJvStringGrid;
    SGUs: TJvStringGrid;
    SGAf: TJvStringGrid;
    SGCt: TJvStringGrid;
    JvLabel3: TJvLabel;
    EditDireccion: TJvEdit;
    JvLabel5: TJvLabel;
    EditTelefono: TJvEdit;
    QryApoyo: TADOQuery;
    BtnCargar: TJvBitBtn;
    BtnGenerar: TJvBitBtn;
    QryApoyo1: TADOQuery;
    QryApoyo2: TADOQuery;
    JvEdit2: TJvEdit;
    JvLabel10: TJvLabel;
    JvLabel11: TJvLabel;
    JvEdit3: TJvEdit;
    JvLabel12: TJvLabel;
    EditCodigoEPS: TJvEdit;
    JvLabel13: TJvLabel;
    JvEdit1: TJvEdit;
    JvLabel14: TJvLabel;
    JvEdit4: TJvEdit;
    JvLabel15: TJvLabel;
    JvEdit5: TJvEdit;
    Drive: TDriveComboBox;
    Label11: TLabel;
    DBLookupComboBox11: TDBLookupComboBox;
    CheckBox1: TCheckBox;
    procedure JvBitBtn2Click(Sender: TObject);
    procedure LimpiaVector;
    procedure JvBitBtn1Click(Sender: TObject);
    procedure BtnDesdeClick(Sender: TObject);
    procedure LimpiaGrilla(Grilla : TJvStringGrid; Col : Integer);
    procedure ChkListaClick(Sender: TObject);
    procedure SGDesdeDblClick(Sender: TObject);
    procedure BtnHastaClick(Sender: TObject);
    procedure SGHastaDblClick(Sender: TObject);
    procedure BtnCargarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnGenerarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    vecFacturas    : array of array of string;
    vecFacXCliente : array of array of string;
    OP             : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F4505: TF4505;

implementation

uses UDataModule1, ModuloAdmision;

{$R *.dfm}

procedure TF4505.JvBitBtn2Click(Sender: TObject);
var i : Integer;
begin
  QryApoyo.Close;
  QryApoyo.SQL.Clear;
  QryApoyo.SQL.Add('select NUMero_DOCUMENTO,Primer_Apellido, Direccion, Telefono, Cod_EPS,Sucursal from CONTTerce,GEAseguradoras');
  QryApoyo.SQL.Add('where CONTTerce.NUMero_DOCUMENTO = GEAseguradoras.Num_Documento AND Numero_Documento+sucursal = '+chr(39)+DatamoduloAdmision.ADOQueryConvenios.FieldValues['Aseguradora'] +chr(39));
  QryApoyo.Open;

  EditNombre.Text     := '';
  EditDocumento.Text  := '';
  EditDireccion.Text  := '';
  EditTelefono.Text   := '';
  EditCodigoEPS.Text  := '';

  if not QryApoyo.Eof then
    begin
      EditNombre.Text     := QryApoyo.Fields.FieldByName('Primer_Apellido').AsString;
      EditDocumento.Text  := QryApoyo.Fields.FieldByName('NUMero_DOCUMENTO').AsString;
      EditDireccion.Text  := QryApoyo.Fields.FieldByName('Direccion').AsString;
      EditTelefono.Text   := QryApoyo.Fields.FieldByName('Telefono').AsString;
      EditCodigoEPS.Text  := QryApoyo.Fields.FieldByName('Cod_EPS').AsString;
    end;

  QryGeneral.Close;
  QryGeneral.SQL.Clear;
  QryGeneral.SQL.Add('select Numero_Factura from INEncFacturacion');
  QryGeneral.SQL.Add('where No_Contrato = '+chr(39)+DatamoduloAdmision.ADOQueryConvenios.FieldValues['No_Contrato']+chr(39));
  QryGeneral.SQL.Add('and (INEncFacturacion.estado is null or INEncFacturacion.estado = ''P'')');
  QryGeneral.SQL.Add(' and Empresa =  '+chr(39)+Edit1.Text+chr(39));
  QryGeneral.SQL.Add('order by  Numero_Factura');
  QryGeneral.Open;

  LimpiaVector;
  SetLength(vecFacturas, QryGeneral.RecordCount, 3);
  i := 0;
  while not QryGeneral.Eof do
    begin
      vecFacturas[i,0] := QryGeneral.Fields.FieldByName('Numero_Factura').AsString;
      vecFacturas[i,1] := '';
      vecFacturas[i,2] := '';
      inc(i);
      QryGeneral.Next;
    end;

  OP  := 1;
end;

procedure TF4505.LimpiaVector;
var i : integer;
begin
  if Length(vecFacturas) > 0 then
    begin
      i := 0;
      while i < Length(vecFacturas) do
        begin
          vecFacturas[i,0]  := '';
          vecFacturas[i,1]  := '';
          vecFacturas[i,2]  := '';
          inc(i);
        end;
      SetLength(vecFacturas, 0, 0);
    end;
end;

procedure TF4505.JvBitBtn1Click(Sender: TObject);
var i : Integer;
begin
  QryGeneral.Close;
  QryGeneral.SQL.Clear;
  QryGeneral.SQL.Add('select Numero_Factura, cliente from INEncFacturacion');
  QryGeneral.SQL.Add('where fecha >= '''+FormatDateTime('DD/MM/YYYY', DTPDesde.Date)+'''');
  QryGeneral.SQL.Add('   and fecha <= '''+FormatDateTime('DD/MM/YYYY', DTPHasta.Date)+'''');
  QryGeneral.SQL.Add('and (estado is null or estado = ''P'')');
  QryGeneral.SQL.Add(' and Empresa =  '+chr(39)+Edit1.Text+chr(39));
  QryGeneral.SQL.Add('order by  Numero_Factura');
  QryGeneral.Open;

  LimpiaVector;
  SetLength(vecFacturas, QryGeneral.RecordCount, 3);
  i := 0;
  while not QryGeneral.Eof do
    begin
      vecFacturas[i,0] := QryGeneral.Fields.FieldByName('Numero_Factura').AsString;
      vecFacturas[i,1] := QryGeneral.Fields.FieldByName('Cliente').AsString;
      vecFacturas[i,2] := '';
      inc(i);
      QryGeneral.Next;
    end;
  OP  := 2;    
end;

procedure TF4505.BtnDesdeClick(Sender: TObject);
var i, e : Integer;
begin
  PnlHasta.Height := 0;
  if PnlDesde.Height = 0 then
    begin
      if Length(vecFacturas) <= 0 then
        begin
          Application.MessageBox('No hay facturas seleccionadas','Información',MB_OK+MB_ICONINFORMATION);
          JvPageControl1.ActivePageIndex  := 0;
          //EditNumDocCliente.SetFocus;
          Exit;
        end;

      i := 0;
      e := 1;
      LimpiaGrilla(SGDesde, 5);
      while i < Length(vecFacturas) do
        begin
          SGDesde.Cells[1,e] := vecFacturas[i,0];
          inc(i);
          inc(e);
        end;
      SGDesde.RowCount  := e + 1;
      PnlDesde.Height   := 497;
    end
   else
     begin
       LimpiaGrilla(SGDesde, 5);
       PnlDesde.Height   := 0;
     end;
end;

procedure TF4505.LimpiaGrilla(Grilla : TJvStringGrid; Col : Integer);
var i,e : Integer;
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
end;

procedure TF4505.ChkListaClick(Sender: TObject);
var i : Integer;
begin
  if ChkLista.Checked = True then
    begin
      Panel1.Visible := False;
      //EditNumDocCliente.Text          := '';
      JvPageControl1.ActivePageIndex  := 0;
      DTPDesde.Date                   := Date - 30;
      DTPHasta.Date                   := Date;

      QryGeneral.Close;
      QryGeneral.SQL.Clear;
      QryGeneral.SQL.Add('select Numero_Factura, cliente from INEncFacturacion');
      QryGeneral.SQL.Add('where (estado is null or estado = ''P'')');
      QryGeneral.SQL.Add(' and Empresa =  '+chr(39)+Edit1.Text+chr(39));
      QryGeneral.SQL.Add('order by  Numero_Factura');
      QryGeneral.Open;

      LimpiaVector;
      SetLength(vecFacturas, QryGeneral.RecordCount, 3);
      i := 0;
      while not QryGeneral.Eof do
        begin
          vecFacturas[i,0] := QryGeneral.Fields.FieldByName('Numero_Factura').AsString;
          vecFacturas[i,1] := QryGeneral.Fields.FieldByName('Cliente').AsString;
          vecFacturas[i,2] := '';
          inc(i);
          QryGeneral.Next;
        end;
      OP  := 3;
    end
  else
  Begin
    LimpiaVector;
    Panel1.Visible := True;
  End;
end;

procedure TF4505.SGDesdeDblClick(Sender: TObject);
var i : Integer;
begin
  i := 0;
  while i < Length(vecFacturas) do
    begin
      vecFacturas[i,2]   := '';
      inc(i);
    end;

  if vecFacturas[SGDesde.Row-1,1] <> '' then
    begin
      QryApoyo.Close;
      QryApoyo.SQL.Clear;
//      QryApoyo.SQL.Add('select NUMero_DOCUMENTO,Primer_Apellido, Direccion, Telefono from CONTTerce');
//      QryApoyo.SQL.Add('where Numero_Documento = '+chr(39)+vecFacturas[SGDesde.Row-1,1]+chr(39));

        QryApoyo.SQL.Add('select NUMero_DOCUMENTO,Primer_Apellido, Direccion, Telefono, Cod_EPS, Sucursal from CONTTerce,GEAseguradoras');
        QryApoyo.SQL.Add('where CONTTerce.NUMero_DOCUMENTO = GEAseguradoras.Num_Documento AND Numero_Documento+sucursal = '+chr(39)+vecFacturas[SGDesde.Row-1,1]+chr(39));
      QryApoyo.Open;

      EditNombre.Text     := '';
      EditDocumento.Text  := '';
      EditDireccion.Text  := '';
      EditTelefono.Text   := '';
      EditCodigoEPS.Text  := '';

      if not QryApoyo.Eof then
        begin
          EditNombre.Text     := QryApoyo.Fields.FieldByName('Primer_Apellido').AsString;
          EditDocumento.Text  := QryApoyo.Fields.FieldByName('NUMero_DOCUMENTO').AsString;
          //EditNumDocCliente.Text  := QryApoyo.Fields.FieldByName('NUMero_DOCUMENTO').AsString+QryApoyo.Fields.FieldByName('Sucursal').AsString;
          EditDireccion.Text  := QryApoyo.Fields.FieldByName('Direccion').AsString;
          EditTelefono.Text   := QryApoyo.Fields.FieldByName('Telefono').AsString;
          EditCodigoEPS.Text  := QryApoyo.Fields.FieldByName('Cod_EPS').AsString;
//          EditCodigoEPS.Text  := QryApoyo.Fields.FieldByName('NUMero_DOCUMENTO').AsString;
        end;
    end;
  vecFacturas[SGDesde.Row-1,2] := 'X';
  LblDesde.Caption           := SGDesde.Rows[SGDesde.Row].Strings[1];
  PnlDesde.Height            := 0;
end;

procedure TF4505.BtnHastaClick(Sender: TObject);
var i, e    : Integer;
    MyRect  : TGridRect;
    m       : Integer;
begin
  if LblDesde.Caption = '' then
    begin
      Application.MessageBox('No ha seleccionado ninguna factura','Información',MB_OK+MB_ICONINFORMATION);
      Exit;
    end;

  if PnlHasta.Height = 0 then
    begin
      m :=0;
      case OP of
        1  : begin
               i := 0;
               e := 1;
               while i < Length(vecFacturas) do
                 begin
                   SGHasta.Cells[1,e] := vecFacturas[i,0];
                   if vecFacturas[i,2] = 'X' then
                     m := i;
                   inc(i);
                   inc(e);
                 end;
               SGHasta.RowCount := e +1;

               i := 1;
               while i < SGHasta.RowCount - 1 do
                 begin
                   if SGHasta.Rows[i].Strings[1] = vecFacturas[m,0] then
                     begin
                       SGHasta.TopRow      := i;
                       myRect.Left         := 0;
                       myRect.Top          := i;
                       myRect.Right        := 8;
                       myRect.Bottom       := i;
                       SGHasta.Selection := myRect;
                 //      exit;
                     end;
                   inc(i);
                 end;
             end;
        2,3  : begin
                 QryGeneral.Close;
                 QryGeneral.SQL.Clear;
                 QryGeneral.SQL.Add('select Numero_Factura from INEncFacturacion');
                 QryGeneral.SQL.Add('where No_Contrato = '+chr(39)+DatamoduloAdmision.ADOQueryConvenios.FieldValues['No_Contrato']+chr(39));
                 QryGeneral.SQL.Add('and (estado is null or estado = ''P'')');
                 QryGeneral.SQL.Add(' and Empresa =  '+chr(39)+Edit1.Text+chr(39));
                 QryGeneral.SQL.Add('order by  Numero_Factura');
                 QryGeneral.Open;

                 LimpiaGrilla(SGHasta, 5);
                 i := 1;
                 while not QryGeneral.Eof do
                   begin
                     SGHasta.Cells[1,i] :=  QryGeneral.Fields.FieldByName('Numero_Factura').AsString;
                     inc(i);
                     QryGeneral.Next;
                   end;
                 SGHasta.RowCount  := i + 1;
                             //Busca la factura seleccionada en el vector
                 i := 0;
                 while i < Length(vecFacturas) do
                   begin
                     if vecFacturas[i,2] = 'X' then
                       m := i;
                     inc(i);
                   end;

                 i := 1;     //Busca en la grilla hasta el numero de factura seleccionada
                 while i < SGHasta.RowCount - 1 do
                   begin
                     if SGHasta.Rows[i].Strings[1] = vecFacturas[m,0] then
                       begin
                         SGHasta.TopRow      := i;
                         myRect.Left         := 0;
                         myRect.Top          := i;
                         myRect.Right        := 8;
                         myRect.Bottom       := i;
                         SGHasta.Selection := myRect;
               //          exit;
                       end;
                     inc(i);
                   end;
             end;
      end;
      PnlHasta.Height  := 497;
    end
  else
    begin
      LimpiaGrilla(SGHasta, 5);
      PnlHasta.Height  := 0;
    end;
end;

procedure TF4505.SGHastaDblClick(Sender: TObject);
begin
  LblHasta.Caption           := SGHasta.Rows[SGHasta.Row].Strings[1];
  PnlHasta.Height            := 0;
end;

procedure TF4505.BtnCargarClick(Sender: TObject);
var i,j, m,e, Can,yafact : Integer;
    TipoAdmision : String;
    FecIni, FecFin : TDateTime;
    fin : bool;
    ValorAF,ValorAD,ValorAC:Currency;
begin
  ValorAF := 0;
  ValorAD := 0;
  ValorAC := 0;

  F4505.FormCreate(Nil);
  if Length(vecFacXCliente) > 0 then
  begin
    i := 0;
    while i < Length(vecFacXCliente) do
     begin
       vecFacXCliente[i,0]  := '';
       vecFacXCliente[i,1]  := '';
       inc(i);
     end;
    SetLength(vecFacXCliente, 0,0);
  end;

  QryGeneral.Close;
  QryGeneral.SQL.Clear;
  QryGeneral.SQL.Add('SELECT Distinct INEncFacturacion.Numero_Factura,No_Admision');
  QryGeneral.SQL.Add(' FROM  INEncFacturacion,INDetFacturacion,CREncCargos');
  QryGeneral.SQL.Add(' WHERE INEncFacturacion.Empresa = INDetFacturacion.Empresa AND');
  QryGeneral.SQL.Add('    INEncFacturacion.Numero_Factura = INDetFacturacion.Numero_Factura AND');
  QryGeneral.SQL.Add('    INDetFacturacion.No_Cargo = CREncCargos.No_Cargo AND');
  QryGeneral.SQL.Add('    INEncFacturacion.Empresa = '+chr(13)+Edit1.Text+chr(13)+' AND');
  QryGeneral.SQL.Add('    INEncFacturacion.numero_Factura >= '+chr(39)+LblDesde.Caption+chr(39));
  QryGeneral.SQL.Add('    and INEncFacturacion.numero_factura <= '+chr(39)+LblHasta.Caption+chr(39));
  QryGeneral.SQL.Add('    and No_Contrato = '+chr(39)+DatamoduloAdmision.ADOQueryConvenios.FieldValues['No_Contrato']+chr(39));
  QryGeneral.SQL.Add('    and (INEncFacturacion.estado is null or INEncFacturacion.estado = ''P'')');
  QryGeneral.Open;

  SetLength(vecFacXCliente, QryGeneral.RecordCount,2);
  i := 0;
  while not QryGeneral.Eof do
  begin
    vecFacXCliente[i,0] := QryGeneral.Fields.FieldByName('Numero_Factura').AsString;
    vecFacXCliente[i,1] := QryGeneral.Fields.FieldByName('No_Admision').AsString;
    inc(i);
    QryGeneral.Next;
  end;

  ///Genera el US
  i := 0;
  while i < Length(vecFacXCliente) do
  begin
    JvEdit3.Text      := IntToStr(i+1);
    QryGeneral.Close;
    QryGeneral.SQL.Clear;
    QryGeneral.SQL.Add('select * from SAAdmisiones, SAPacientes');
    QryGeneral.SQL.Add(' where No_admision ='+chr(39)+vecFacXCliente[i,1]+chr(39));
    QryGeneral.SQL.Add(' and SAAdmisiones.TP_IDENT_USUAR  = SAPacientes.TP_IDENT_USUAR');
    QryGeneral.SQL.Add(' and SAAdmisiones.NR_IDENT_USUAR  = SAPacientes.NR_IDENT_USUAR');
    QryGeneral.Open;

    e := 1;
    m := 0;
    while e < SGUs.RowCount - 1 do
    begin
      if (SGUs.Rows[e].Strings[0] = QryGeneral.Fields.FieldByName('TP_IDENT_USUAR').AsString) and
      (SGUs.Rows[e].Strings[1] = QryGeneral.Fields.FieldByName('NR_IDENT_USUAR').AsString)then
        inc(m);
      inc(e);
    end;

    if m = 0 then
    begin
      SGUs.RowCount  := SGUs.RowCount + 1;
      SGUs.Cells[0, SGUs.RowCount -2] := trim(copy(QryGeneral.Fields.FieldByName('TP_IDENT_USUAR').AsString,1,2));
      SGUs.Cells[1, SGUs.RowCount -2] := trim(copy(QryGeneral.Fields.FieldByName('NR_IDENT_USUAR').AsString,1,20));
      SGUs.Cells[2, SGUs.RowCount -2] := EditCodigoEPS.Text;
      SGUs.Cells[3, SGUs.RowCount -2] := QryGeneral.Fields.FieldByName('TP_AFILIADO').AsString;

      SGUs.Cells[4, SGUs.RowCount -2] := trim(copy(QryGeneral.Fields.FieldByName('PRIMER_APELLIDO').AsString,1,30));
      SGUs.Cells[5, SGUs.RowCount -2] := trim(copy(QryGeneral.Fields.FieldByName('SEGUNDO_APELLIDO').AsString,1,30));
      SGUs.Cells[6, SGUs.RowCount -2] := trim(copy(QryGeneral.Fields.FieldByName('PRIMER_NOMBRE').AsString,1,20));
      SGUs.Cells[7, SGUs.RowCount -2] := trim(copy(QryGeneral.Fields.FieldByName('SEGUNDO_NOMBRE').AsString,1,20));

      IF QryGeneral.Fields.FieldByName('fec_Nacimineto').AsDateTime <> NULL Then
      Begin
        IF (now-QryGeneral.Fields.FieldByName('fec_Nacimineto').AsDateTime < 365) Then
          Begin
            if (now-QryGeneral.Fields.FieldByName('fec_Nacimineto').AsDateTime < 30) then
              begin
                SGUs.Cells[8,SGUs.RowCount -2] := inttostr(Trunc(now-QryGeneral.Fields.FieldByName('fec_Nacimineto').AsDateTime));
                SGUs.Cells[9,SGUs.RowCount -2] := '3';
              end
            else
              begin
                SGUs.Cells[8,SGUs.RowCount -2] := inttostr(Trunc((now-QryGeneral.Fields.FieldByName('fec_Nacimineto').AsDateTime)/ 30));
                SGUs.Cells[9,SGUs.RowCount -2] := '2';
              end;
          End
        Else Begin
          SGUs.Cells[8,SGUs.RowCount -2]       := inttostr(Trunc((now-QryGeneral.Fields.FieldByName('fec_Nacimineto').AsDateTime)/365));
          SGUs.Cells[9,SGUs.RowCount -2]       := '1';
        End;
      End;

      SGUs.Cells[10, SGUs.RowCount -2]  := QryGeneral.Fields.FieldByName('SEXO').AsString;
      SGUs.Cells[11, SGUs.RowCount -2]  := QryGeneral.Fields.FieldByName('COD_DEPARTAMENTO').AsString;
      SGUs.Cells[12, SGUs.RowCount -2]  := QryGeneral.Fields.FieldByName('COD_MUNICIPIO').AsString;
      SGUs.Cells[13, SGUs.RowCount -2]  := QryGeneral.Fields.FieldByName('ZONA_RESIDENCIA').AsString;
    end;
    inc(i);
  end;

  ///Genera el AD
  i := 0;
  while i < Length(vecFacXCliente) do
  begin
    yafact := 0;

    for j := 0 to i do
    Begin
      if i<>j then if vecFacXCliente[i,0] = vecFacXCliente[j,0] then yafact := 1;
    End;

    if yafact = 0 then
    Begin
      QryGeneral.Close;
      QryGeneral.SQL.Clear;
      QryGeneral.SQL.Add('select * from INDetFacturacion');
      QryGeneral.SQL.Add('where  numero_Factura = '+chr(39)+vecFacXCliente[i,0]+chr(39));
      QryGeneral.SQL.Add('    AND INDetFacturacion.Empresa = '+chr(13)+Edit1.Text+chr(13));
      QryGeneral.Open;

      while not QryGeneral.Eof do
      begin
       SGAd.RowCount                     := SGAd.RowCount + 1;
       SGAd.Cells[0,SGAd.RowCount - 2]   := UDatamodule1.DataModule1.ADOQuery1.FieldValues['Prefijo'] + vecFacXCliente[i,0];
       SGAd.Cells[1,SGAd.RowCount - 2]   := trim(copy(DataModule1.ADOQuery1.Fields.FieldByName('Codigo_Salud').AsString,1,12));
       SGAd.Cells[2,SGAd.RowCount - 2]   := '01';
       SGAd.Cells[3,SGAd.RowCount - 2]   := QryGeneral.Fields.FieldByName('Cantidad').AsString;
       SGAd.Cells[4,SGAd.RowCount - 2]   := FloatToStr((QryGeneral.Fields.FieldByName('Valor_Unitario').AsFloat));
       SGAd.Cells[5,SGAd.RowCount - 2]   := FloatToStr((QryGeneral.Fields.FieldByName('Cantidad').AsInteger * QryGeneral.Fields.FieldByName('Valor_Unitario').AsFloat));
       QryGeneral.Next;

       ValorAD := ValorAD + (QryGeneral.Fields.FieldByName('Cantidad').AsInteger * QryGeneral.Fields.FieldByName('Valor_Unitario').AsFloat);
      end;
    End;
    inc(i);
  end;

  ///Servicios
   i := 0;
   while i < Length(vecFacXCliente) do
   begin
     yafact := 0;

     for j := 0 to i do
     Begin
       if i<>j then if vecFacXCliente[i,0] = vecFacXCliente[j,0] then yafact := 1;
     End;

     if yafact = 0 then
     Begin
       QryGeneral.Close;
       QryGeneral.SQL.Clear;
       QryGeneral.SQL.Add('select * from INDetFacturacion,CREncCargos');
       QryGeneral.SQL.Add('where  numero_Factura = '+chr(39)+vecFacXCliente[i,0]+chr(39));
       QryGeneral.SQL.Add(' AND INDetFacturacion.No_Cargo = CREncCargos.No_Cargo ');
       QryGeneral.SQL.Add('    AND INDetFacturacion.Empresa = '+chr(13)+Edit1.Text+chr(13));
       QryGeneral.Open;

       while not QryGeneral.Eof do
       begin
         if QryGeneral.Fields.FieldByName('Tipo_PST').AsString = 'S' then
         begin
           QryApoyo.Close;
           QryApoyo.SQL.Clear;
           QryApoyo.SQL.Add('select * from SAAdmisiones, SAPacientes');
           QryApoyo.SQL.Add(' where No_admision ='+chr(39)+QryGeneral.FieldValues['No_Admision']+chr(39));
           QryApoyo.SQL.Add(' and SAAdmisiones.TP_IDENT_USUAR  = SAPacientes.TP_IDENT_USUAR');
           QryApoyo.SQL.Add(' and SAAdmisiones.NR_IDENT_USUAR  = SAPacientes.NR_IDENT_USUAR');
           QryApoyo.Open;

           QryApoyo2.Close;
           QryApoyo2.SQL.Clear;
           QryApoyo2.SQL.Add('select * from CREncCargos');
           QryApoyo2.SQL.Add(' where No_Cargo ='+chr(39)+QryGeneral.Fields.FieldByName('No_Cargo').AsString+chr(39));
           QryApoyo2.Open;

          // Se quito por cuanto se va a seleccionar el tipo de admision exclusivamente del cargo.
          // Adicional a eso se bloquearon los cargos para que solo permita un tipo de admision.
          //               if QryApoyo.Fields.FieldByName('TP_ADMISION').AsString <> '' then
          //                 TipoAdmision  := QryApoyo.Fields.FieldByName('TP_ADMISION').AsString;
          //   else
           if QryApoyo2.Fields.FieldByName('TipoAdmision').AsString <> '' then
             TipoAdmision  := QryApoyo2.Fields.FieldByName('TipoAdmision').AsString;

           QryApoyo1.Close;
           QryApoyo1.SQL.Clear;
           QryApoyo1.SQL.Add('select * from SAServicios');
           QryApoyo1.SQL.Add(' where Codigo ='+chr(39)+QryGeneral.Fields.FieldByName('Codigo_Producto').AsString+chr(39));
           QryApoyo1.Open;


           if TipoAdmision  = 'C' then
           begin
             SGAc.RowCount  := SGAc.RowCount + 1;
             SGAc.Cells[0, SGAc.RowCount-2]  := UDatamodule1.DataModule1.ADOQuery1.FieldValues['Prefijo'] + vecFacXCliente[i,0];
             SGAc.Cells[1, SGAc.RowCount-2]  := Trim(copy(DataModule1.ADOQuery1.Fields.FieldByName('Codigo_Salud').AsString,1,12));
             SGAc.Cells[2, SGAc.RowCount-2]  := QryApoyo.Fields.FieldByName('TP_IDENT_USUAR').AsString;
             SGAc.Cells[3, SGAc.RowCount-2]  := QryApoyo.Fields.FieldByName('NR_IDENT_USUAR').AsString;
             SGAc.Cells[4, SGAc.RowCount-2]  := FormatDateTime('DD/MM/YYYY',QryApoyo.Fields.FieldByName('FEC_ADMISION').AsDateTime);
             SGAc.Cells[5, SGAc.RowCount-2]  := QryApoyo.Fields.FieldByName('NO_AUTORIZACION').AsString;
             SGAc.Cells[6, SGAc.RowCount-2]  := Trim(copy(QryGeneral.Fields.FieldByName('Codigo_Producto').AsString,1,8));
             SGAc.Cells[7, SGAc.RowCount-2]  := QryApoyo.Fields.FieldByName('FINALIDAD_CONS').AsString;
             SGAc.Cells[8, SGAc.RowCount-2]  := QryApoyo.Fields.FieldByName('CAUSA_EXTERNA').AsString;
             SGAc.Cells[9, SGAc.RowCount-2]  := QryApoyo.Fields.FieldByName('DIAGNOSTICO').AsString;
             SGAc.Cells[10, SGAc.RowCount-2] := QryApoyo.Fields.FieldByName('DIAGN_I_REL1').AsString;
             SGAc.Cells[11, SGAc.RowCount-2] := QryApoyo.Fields.FieldByName('DIAGN_I_REL2').AsString;
             SGAc.Cells[12, SGAc.RowCount-2] := QryApoyo.Fields.FieldByName('DIAGN_I_REL3').AsString;
             SGAc.Cells[13, SGAc.RowCount-2] := QryApoyo.Fields.FieldByName('TP_DIAGN_PPAL').AsString;
             //SGAc.Cells[14, SGAc.RowCount-2] := QryGeneral.Fields.FieldByName('Valor_Unitario').AsString;
             SGAc.Cells[14, SGAc.RowCount-2] := FloatToStr((QryGeneral.Fields.FieldByName('Valor_Unitario').AsFloat));
             SGAc.Cells[15, SGAc.RowCount-2] := '0';
             SGAc.Cells[16, SGAc.RowCount-2] := FloatToStr((QryGeneral.Fields.FieldByName('Valor_Total').AsFloat));

             ValorAC := ValorAC + (QryGeneral.Fields.FieldByName('Valor_Total').AsFloat);
           end;

           if TipoAdmision = 'P' then
           begin
             Can  := QryGeneral.Fields.FieldByName('Cantidad').AsInteger;
             e    := 0;
             while e < Can do
               begin
                 SGAp.RowCount   := SGAp.RowCount + 1;
                 SGAp.Cells[0,SGAp.RowCount -2]   := UDatamodule1.DataModule1.ADOQuery1.FieldValues['Prefijo'] + vecFacXCliente[i,0];
                 SGAp.Cells[1,SGAp.RowCount -2]   := trim(copy(DataModule1.ADOQuery1.Fields.FieldByName('Codigo_Salud').AsString,1,20));
                 SGAp.Cells[2,SGAp.RowCount -2]   := trim(copy(QryApoyo.Fields.FieldByName('TP_IDENT_USUAR').AsString,1,2));
                 SGAp.Cells[3,SGAp.RowCount -2]   := trim(copy(QryApoyo.Fields.FieldByName('NR_IDENT_USUAR').AsString,1,20));
                 SGAp.Cells[4,SGAp.RowCount -2]   := FormatDateTime('DD/MM/YYYY',QryApoyo.Fields.FieldByName('FEC_ADMISION').AsDateTime);
                 SGAp.Cells[5,SGAp.RowCount -2]   := QryApoyo.Fields.FieldByName('NO_AUTORIZACION').AsString;
                 SGAp.Cells[6,SGAp.RowCount -2]   := Trim(copy(QryGeneral.Fields.FieldByName('Codigo_Producto').AsString,1,8));
                 SGAp.Cells[7,SGAp.RowCount -2]   := QryApoyo.Fields.FieldByName('PROC_AMBITO').AsString;
                 SGAp.Cells[8,SGAp.RowCount -2]   := QryApoyo.Fields.FieldByName('PROC_FINALIDAD').AsString;
                 SGAp.Cells[9,SGAp.RowCount -2]   := QryApoyo.Fields.FieldByName('PROC_ATIENDE').AsString;
                 if QryApoyo1.FieldValues['Quirurgico_o_parto'] = 'S' then
                   SGAp.Cells[10,SGAp.RowCount -2]  := QryApoyo.Fields.FieldByName('DIAGNOSTICO').AsString
                 else
                   SGAp.Cells[10,SGAp.RowCount -2]  := '';
                 SGAp.Cells[11,SGAp.RowCount -2]  := QryApoyo.Fields.FieldByName('DIAGN_I_REL1').AsString;
                 SGAp.Cells[12,SGAp.RowCount -2]  := QryApoyo.Fields.FieldByName('DIAGN_COMPL').AsString;
                 SGAp.Cells[13,SGAp.RowCount -2]  := QryApoyo.Fields.FieldByName('PROC_FORMA').AsString;
                 SGAp.Cells[14,SGAp.RowCount -2]  := FloatToStr((QryGeneral.Fields.FieldByName('Valor_Unitario').AsFloat));
                 inc(e);
               end;
           end;   //si el tipo de admision es P

           if TipoAdmision = 'H' then
           begin
            SGAh.RowCount  := SGAh.RowCount + 1;
            SGAh.Cells[0,SGAh.RowCount -2]   := UDatamodule1.DataModule1.ADOQuery1.FieldValues['Prefijo'] + vecFacXCliente[i,0];
            SGAh.Cells[1,SGAh.RowCount -2]   := trim(copy(DataModule1.ADOQuery1.Fields.FieldByName('Codigo_Salud').AsString,1,12));
            SGAh.Cells[2,SGAh.RowCount -2]   := trim(copy(QryApoyo.Fields.FieldByName('TP_IDENT_USUAR').AsString,1,2));
            SGAh.Cells[3,SGAh.RowCount -2]   := trim(copy(QryApoyo.Fields.FieldByName('NR_IDENT_USUAR').AsString,1,20));
            SGAh.Cells[4,SGAh.RowCount -2]   := QryApoyo.Fields.FieldByName('VIA_INGRESO').AsString;
            SGAh.Cells[5,SGAh.RowCount -2]   := FormatDateTime('DD/MM/YYYY',QryApoyo.Fields.FieldByName('FEC_ADMISION').AsDateTime);
            SGAh.Cells[6,SGAh.RowCount -2]   := FormatDateTime('hh:mm',QryApoyo.Fields.FieldByName('FEC_ADMISION').AsDateTime);
            SGAh.Cells[7,SGAh.RowCount -2]   := QryApoyo.Fields.FieldByName('NO_AUTORIZACION').AsString;
            SGAh.Cells[8,SGAh.RowCount -2]   := QryApoyo.Fields.FieldByName('CAUSA_EXTERNA').AsString;
            SGAh.Cells[9,SGAh.RowCount -2]   := QryApoyo.Fields.FieldByName('DIAGNOSTICO').AsString;
            SGAh.Cells[10,SGAh.RowCount -2]  := QryApoyo.Fields.FieldByName('DIAGN_P_EGRESO').AsString;
            SGAh.Cells[11,SGAh.RowCount -2]  := QryApoyo.Fields.FieldByName('DIAGN_E_REL1').AsString;
            SGAh.Cells[12,SGAh.RowCount -2]  := QryApoyo.Fields.FieldByName('DIAGN_E_REL2').AsString;
            SGAh.Cells[13,SGAh.RowCount -2]  := QryApoyo.Fields.FieldByName('DIAGN_E_REL3').AsString;
            SGAh.Cells[14,SGAh.RowCount -2]  := QryApoyo.Fields.FieldByName('DIAGN_COMPL').AsString;
            SGAh.Cells[15,SGAh.RowCount -2]  := QryApoyo.Fields.FieldByName('EST_SALIDA').AsString;
            SGAh.Cells[16,SGAh.RowCount -2]  := QryApoyo.Fields.FieldByName('DIAGN_MUERTE').AsString;
            SGAh.Cells[17,SGAh.RowCount -2]  := FormatDateTime('DD/MM/YYYY',QryApoyo.Fields.FieldByName('FEC_EGRESO').AsDateTime);
            SGAh.Cells[18,SGAh.RowCount -2]  := FormatDateTime('hh:mm',QryApoyo.Fields.FieldByName('FEC_EGRESO').AsDateTime);
           end; //si el tipo de admision es H

           if TipoAdmision = 'U' then
           begin
             SGAu.RowCount  := SGAu.RowCount + 1;
             SGAu.Cells[0, SGAu.RowCount - 2]  := UDatamodule1.DataModule1.ADOQuery1.FieldValues['Prefijo'] + vecFacXCliente[i,0];
             SGAu.Cells[1, SGAu.RowCount - 2]  := DataModule1.ADOQuery1.Fields.FieldByName('Codigo_Salud').AsString;
             SGAu.Cells[2, SGAu.RowCount - 2]  := QryApoyo.Fields.FieldByName('TP_IDENT_USUAR').AsString;
             SGAu.Cells[3, SGAu.RowCount - 2]  := QryApoyo.Fields.FieldByName('NR_IDENT_USUAR').AsString;
             SGAu.Cells[4, SGAu.RowCount - 2]  := FormatDateTime('DD/MM/YYYY',QryApoyo.Fields.FieldByName('FEC_ADMISION').AsDateTime);
             SGAu.Cells[5, SGAu.RowCount - 2]  := FormatDateTime('hh:mm',QryApoyo.Fields.FieldByName('FEC_ADMISION').AsDateTime);
             SGAu.Cells[6, SGAu.RowCount - 2]  := QryApoyo.Fields.FieldByName('NO_AUTORIZACION').AsString;
             SGAu.Cells[7, SGAu.RowCount - 2]  := QryApoyo.Fields.FieldByName('CAUSA_EXTERNA').AsString;
             SGAu.Cells[8, SGAu.RowCount - 2]  := QryApoyo.Fields.FieldByName('DIAGN_P_EGRESO').AsString;
             SGAu.Cells[9, SGAu.RowCount - 2]  := QryApoyo.Fields.FieldByName('DIAGN_E_REL1').AsString;
             SGAu.Cells[10, SGAu.RowCount - 2] := QryApoyo.Fields.FieldByName('DIAGN_E_REL2').AsString;
             SGAu.Cells[11, SGAu.RowCount - 2] := QryApoyo.Fields.FieldByName('DIAGN_E_REL3').AsString;
             SGAu.Cells[12, SGAu.RowCount - 2] := QryApoyo.Fields.FieldByName('DESTINO_USUARIO').AsString;
             SGAu.Cells[13, SGAu.RowCount - 2] := QryApoyo.Fields.FieldByName('EST_SALIDA').AsString;
             SGAu.Cells[14, SGAu.RowCount - 2] := QryApoyo.Fields.FieldByName('DIAGN_MUERTE').AsString;
             SGAu.Cells[15, SGAu.RowCount - 2] := FormatDateTime('DD/MM/YYYY',QryApoyo.Fields.FieldByName('FEC_EGRESO').AsDateTime);
             SGAu.Cells[16, SGAu.RowCount - 2] := FormatDateTime('hh:mm',QryApoyo.Fields.FieldByName('FEC_EGRESO').AsDateTime);
           end; //si el tipo de admision es U

           if TipoAdmision = 'R' then
           begin
             SGAn.RowCount  := SGAn.RowCount + 1;
             SGAn.Cells[0,SGAn.RowCount -2]  := UDatamodule1.DataModule1.ADOQuery1.FieldValues['Prefijo'] + vecFacXCliente[i,0];
             SGAn.Cells[1,SGAn.RowCount -2]  := DataModule1.ADOQuery1.Fields.FieldByName('Codigo_Salud').AsString;
             SGAn.Cells[2,SGAn.RowCount -2]  := QryApoyo.Fields.FieldByName('TP_IDENT_USUAR').AsString;
             SGAn.Cells[3,SGAn.RowCount -2]  := QryApoyo.Fields.FieldByName('NR_IDENT_USUAR').AsString;
             SGAn.Cells[4,SGAn.RowCount -2]  := FormatDateTime('DD/MM/YYYY',QryApoyo.Fields.FieldByName('FEC_ADMISION').AsDateTime);
             SGAn.Cells[5,SGAn.RowCount -2]  := FormatDateTime('hh:mm',QryApoyo.Fields.FieldByName('FEC_ADMISION').AsDateTime);
             SGAn.Cells[6,SGAn.RowCount -2]  := QryApoyo.Fields.FieldByName('RN_EDAD').AsString;
             SGAn.Cells[7,SGAn.RowCount -2]  := QryApoyo.Fields.FieldByName('RN_CONTROL').AsString;
             SGAn.Cells[8,SGAn.RowCount -2]  := QryApoyo.Fields.FieldByName('RN_SEXO').AsString;
             SGAn.Cells[9,SGAn.RowCount -2]  := QryApoyo.Fields.FieldByName('RN_PESO').AsString;
             SGAn.Cells[10,SGAn.RowCount -2] := QryApoyo.Fields.FieldByName('DIAGNOSTICO').AsString;
             SGAn.Cells[11,SGAn.RowCount -2] := QryApoyo.Fields.FieldByName('DIAGN_MUERTE').AsString;
             SGAn.Cells[12,SGAn.RowCount -2] := FormatDateTime('DD/MM/YYYY',QryApoyo.Fields.FieldByName('FEC_EGRESO').AsDateTime);
             SGAn.Cells[13,SGAn.RowCount -2] := FormatDateTime('hh:mm',QryApoyo.Fields.FieldByName('FEC_EGRESO').AsDateTime);
           end; //si el tipo de admision es R

               ///Otros Servicios
           if TipoAdmision = 'O' then
           begin
             SGAt.RowCount  := SGAt.RowCount + 1;
             SGAt.Cells[0,SGAt.RowCount-2]   := UDatamodule1.DataModule1.ADOQuery1.FieldValues['Prefijo'] + vecFacXCliente[i,0];
             SGAt.Cells[1,SGAt.RowCount-2]   := DataModule1.ADOQuery1.FieldByName('Codigo_Salud').AsString;
             SGAt.Cells[2,SGAt.RowCount-2]   := QryApoyo.Fields.FieldByName('TP_IDENT_USUAR').AsString;
             SGAt.Cells[3,SGAt.RowCount-2]   := QryApoyo.Fields.FieldByName('NR_IDENT_USUAR').AsString;
             SGAt.Cells[4,SGAt.RowCount-2]   := QryApoyo.Fields.FieldByName('NO_AUTORIZACION').AsString;
             SGAt.Cells[5,SGAt.RowCount-2]   := QryApoyo1.Fields.FieldByName('Tipo').AsString;
             SGAt.Cells[6,SGAt.RowCount-2]   := trim(copy(QryGeneral.Fields.FieldByName('Codigo_Producto').AsString,1,20));
             SGAt.Cells[7,SGAt.RowCount-2]   := trim(copy(QryApoyo1.Fields.FieldByName('DESCRIPCION').AsString,1,60));
             SGAt.Cells[8,SGAt.RowCount-2]   := QryGeneral.Fields.FieldByName('Cantidad').AsString;
             SGAt.Cells[9,SGAt.RowCount-2]   := FloatToStr((QryGeneral.Fields.FieldByName('Valor_Unitario').AsFloat));
             SGAt.Cells[10,SGAt.RowCount-2]  := FloatToStr((QryGeneral.Fields.FieldByName('Cantidad').AsInteger * QryGeneral.Fields.FieldByName('Valor_Unitario').AsFloat));
           end;
         end; //si Tipo_PST = 'S'
         QryGeneral.Next;
       end;
     End;
     inc(i);
   end;

   ///Productos
   i := 0;
   while i < Length(vecFacXCliente) do
     begin
       QryGeneral.Close;
       QryGeneral.SQL.Clear;
       QryGeneral.SQL.Add('select * from INDetFacturacion');
       QryGeneral.SQL.Add('where  numero_Factura = '+chr(39)+vecFacXCliente[i,0]+chr(39));
       QryGeneral.SQL.Add('    AND INDetFacturacion.Empresa = '+chr(13)+Edit1.Text+chr(13));
       QryGeneral.Open;

       while not QryGeneral.Eof do
         begin
           if QryGeneral.Fields.FieldByName('Tipo_PST').AsString = 'P' then
             begin
               QryApoyo.Close;
               QryApoyo.SQL.Clear;
               QryApoyo.SQL.Add('select * from SAAdmisiones, SAPacientes');
               QryApoyo.SQL.Add(' where No_admision ='+chr(39)+vecFacXCliente[i,1]+chr(39));
               QryApoyo.SQL.Add(' and SAAdmisiones.TP_IDENT_USUAR  = SAPacientes.TP_IDENT_USUAR');
               QryApoyo.SQL.Add(' and SAAdmisiones.NR_IDENT_USUAR  = SAPacientes.NR_IDENT_USUAR');
               QryApoyo.Open;

               QryApoyo1.Close;
               QryApoyo1.SQL.Clear;
               QryApoyo1.SQL.Add('select * from INProductos');
               QryApoyo1.SQL.Add(' where CD_PRODUCTO ='+chr(39)+QryGeneral.Fields.FieldByName('Codigo_Producto').AsString+chr(39));
               QryApoyo1.Open;

               if QryApoyo1.Eof then
                 begin
                   Memo1.Lines.Add('Error en la factura No.'+ vecFacXCliente[i,1] + ' el producto'+ QryGeneral.Fields.FieldByName('Codigo_Producto').AsString+' no existe en la tabla, por favor ingreselo.');
                 end;

               if not QryApoyo1.Eof then
                 begin
                   if (QryApoyo1.Fields.FieldByName('Tipo').AsString = '') or (QryApoyo1.Fields.FieldByName('Tipo').AsString = null) then
                     begin
                       Memo1.Lines.Add('Error en la factura No.'+ vecFacXCliente[i,1] + ' el Tipo de producto no fue ingresado en el producto:'+ QryGeneral.Fields.FieldByName('Codigo_Producto').AsString);
                     end
                     else begin
                        //Tipos de Productos
                       if QryApoyo1.Fields.FieldByName('Tipo').AsInteger = 2 then
                         begin
                           SGAm.RowCount  := SGAm.RowCount + 1;
                           SGAm.Cells[0, SGAm.RowCount-2]  := UDatamodule1.DataModule1.ADOQuery1.FieldValues['Prefijo'] + vecFacXCliente[i,0];
                           SGAm.Cells[1, SGAm.RowCount-2]  := DataModule1.ADOQuery1.Fields.FieldByName('Codigo_Salud').AsString;
                           SGAm.Cells[2, SGAm.RowCount-2]  := QryApoyo.Fields.FieldByName('TP_IDENT_USUAR').AsString;
                           SGAm.Cells[3, SGAm.RowCount-2]  := QryApoyo.Fields.FieldByName('NR_IDENT_USUAR').AsString;
                           SGAm.Cells[4, SGAm.RowCount-2]  := QryApoyo.Fields.FieldByName('NO_AUTORIZACION').AsString;  //copy
                           SGAm.Cells[5, SGAm.RowCount-2]  := Trim(copy(QryApoyo1.Fields.FieldByName('CD_ProductoBarra').AsString,1,20)); //copy
                           SGAm.Cells[6, SGAm.RowCount-2]  := QryApoyo1.Fields.FieldByName('POSC').AsString; //QryApoyo1.Fields.FieldByName('TIPO').AsString;
                           SGAm.Cells[7, SGAm.RowCount-2]  := leftstr(QryApoyo1.Fields.FieldByName('NOM_GENERICO').AsString,30); //copy
                           SGAm.Cells[8, SGAm.RowCount-2]  := QryApoyo1.Fields.FieldByName('FormaFarmaceutica').AsString; //copy
                           SGAm.Cells[9, SGAm.RowCount-2]  := QryApoyo1.Fields.FieldByName('concentracion').AsString; //copy
                           SGAm.Cells[10, SGAm.RowCount-2] := QryApoyo1.Fields.FieldByName('UnidadMedida').AsString;  //copy
                           SGAm.Cells[11, SGAm.RowCount-2] := QryGeneral.Fields.FieldByName('Cantidad').AsString;
                           SGAm.Cells[12, SGAm.RowCount-2] := FloatToStr((QryGeneral.Fields.FieldByName('Valor_Unitario').AsFloat));
                           SGAm.Cells[13, SGAm.RowCount-2] := FloatToStr((QryGeneral.Fields.FieldByName('Cantidad').AsInteger * QryGeneral.Fields.FieldByName('Valor_Unitario').AsFloat));
                         end
                       else if QryApoyo1.Fields.FieldByName('Tipo').AsInteger = 3 then
                         begin
                           SGAt.RowCount  := SGAt.RowCount + 1;
                           SGAt.Cells[0,SGAt.RowCount-2]   := UDatamodule1.DataModule1.ADOQuery1.FieldValues['Prefijo'] + vecFacXCliente[i,0];
                           SGAt.Cells[1,SGAt.RowCount-2]   := DataModule1.ADOQuery1.FieldByName('Codigo_Salud').AsString;
                           SGAt.Cells[2,SGAt.RowCount-2]   := QryApoyo.Fields.FieldByName('TP_IDENT_USUAR').AsString;
                           SGAt.Cells[3,SGAt.RowCount-2]   := QryApoyo.Fields.FieldByName('NR_IDENT_USUAR').AsString;
                           SGAt.Cells[4,SGAt.RowCount-2]   := QryApoyo.Fields.FieldByName('NO_AUTORIZACION').AsString;
                           SGAt.Cells[5,SGAt.RowCount-2]   := QryApoyo1.Fields.FieldByName('Tipo').AsString;
                           SGAt.Cells[6,SGAt.RowCount-2]   := trim(copy(QryApoyo1.Fields.FieldByName('CD_ProductoBarra').AsString,1,20));
                           SGAt.Cells[7,SGAt.RowCount-2]   := leftstr(trim(copy(QryApoyo1.Fields.FieldByName('DESCRIPCION').AsString,1,60)),30);
                           SGAt.Cells[8,SGAt.RowCount-2]   := QryGeneral.Fields.FieldByName('Cantidad').AsString;
                           SGAt.Cells[9,SGAt.RowCount-2]   := FloatToStr((QryGeneral.Fields.FieldByName('Valor_Unitario').AsFloat));
                           SGAt.Cells[10,SGAt.RowCount-2]  := FloatToStr((QryGeneral.Fields.FieldByName('Cantidad').AsInteger * QryGeneral.Fields.FieldByName('Valor_Unitario').AsFloat));
                         end;
                     end;
                 end;
             end;
           QryGeneral.Next;
         end;
       inc(i);
     end;
                           //Busca la fecha de las facturas de inicio y de final
   QryApoyo.Close;
   QryApoyo.SQL.Clear;
   QryApoyo.SQL.Add('select fecha from InEncFacturacion');
   QryApoyo.SQL.Add(' where Numero_Factura ='+chr(39)+LblDesde.Caption+chr(39));
   QryApoyo.SQL.Add('    AND INEncFacturacion.Empresa = '+chr(13)+Edit1.Text+chr(13));
   QryApoyo.Open;

   if not QryApoyo.Eof then
     FecIni  := QryApoyo.Fields.FieldByName('Fecha').AsDateTime;


   QryApoyo.Close;
   QryApoyo.SQL.Clear;
   QryApoyo.SQL.Add('select fecha from InEncFacturacion');
   QryApoyo.SQL.Add(' where Numero_Factura ='+chr(39)+LblHasta.Caption+chr(39));
   QryApoyo.SQL.Add('    AND INEncFacturacion.Empresa = '+chr(13)+Edit1.Text+chr(13));
   QryApoyo.Open;

   if not QryApoyo.Eof then
     FecFin  := QryApoyo.Fields.FieldByName('Fecha').AsDateTime;

    ////  Archivo AF
   i := 0;
   while i < Length(vecFacXCliente) do
     begin
       QryApoyo.Close;
       QryApoyo.SQL.Clear;
       QryApoyo.SQL.Add('select * from InEncFacturacion');
       QryApoyo.SQL.Add(' where Numero_Factura ='+chr(39)+vecFacXCliente[i,0]+chr(39));
       QryApoyo.SQL.Add('    AND INEncFacturacion.Empresa = '+chr(13)+Edit1.Text+chr(13));
       QryApoyo.Open;

       SGAf.RowCount  := SGAf.RowCount + 1;
       SGAf.Cells[0, SGAf.RowCount-2]  := Trim(copy(DataModule1.ADOQuery1.Fields.FieldByName('Codigo_Salud').AsString,1,12));                //Codigo del Prestados
       SGAf.Cells[1, SGAf.RowCount-2]  := Trim(copy(DataModule1.ADOQuery1.Fields.FieldByName('Descripcion_EMP').AsString,1,59));  //Razon social del prestador
       SGAf.Cells[2, SGAf.RowCount-2]  := 'NI';                                                                             //Tipo identificacion
       SGAf.Cells[3, SGAf.RowCount-2]  := DataModule1.ADOQuery1.Fields.FieldByName('Nit').AsString;                         //Numero de identificacion
       SGAf.Cells[4, SGAf.RowCount-2]  := UDatamodule1.DataModule1.ADOQuery1.FieldValues['Prefijo'] + vecFacXCliente[i,0];                                                              //Numero de la factura
       SGAf.Cells[5, SGAf.RowCount-2]  := FormatDateTime('DD/MM/YYYY',QryApoyo.Fields.FieldByName('Fecha').AsDateTime);     //Fecha de expedicion
       SGAf.Cells[6, SGAf.RowCount-2]  := FormatDateTime('DD/MM/YYYY',FecIni);                                              //Fecha inicio
       SGAf.Cells[7, SGAf.RowCount-2]  := FormatDateTime('DD/MM/YYYY',FecFin);                                              //Fecha Fin
       SGAf.Cells[8, SGAf.RowCount-2]  := EditCodigoEPS.Text;                                                               //Codigo Cliente
       SGAf.Cells[9, SGAf.RowCount-2]  := Copy(EditNombre.Text,1,29);                                                       //Nombre Cliente
       SGAf.Cells[10, SGAf.RowCount-2] := '';                                                                               //Numero de Contrato
       SGAf.Cells[11, SGAf.RowCount-2] := '';                                                                               //Plan de beneficios
       SGAf.Cells[12, SGAf.RowCount-2] := '';                                                                               //Numero de la poliza
       SGAf.Cells[13, SGAf.RowCount-2] := '0';                                                                              //Copago
       SGAf.Cells[14, SGAf.RowCount-2] := '0';                                                                              //Comision
       SGAf.Cells[15, SGAf.RowCount-2] := FloatToStr((QryApoyo.Fields.FieldByName('Valor_Descuento').AsFloat));        //Descuento
       SGAf.Cells[16, SGAf.RowCount-2] := FloatToStr((QryApoyo.Fields.FieldByName('Valor_Total').AsFloat -  QryApoyo.Fields.FieldByName('Valor_Descuento').AsFloat));  //Total a pagar
       ValorAF := ValorAF + (QryApoyo.Fields.FieldByName('Valor_Total').AsFloat -  QryApoyo.Fields.FieldByName('Valor_Descuento').AsFloat);
       Repeat
         inc(i);
         if i < Length(vecFacXCliente) then
         Begin
           if vecFacXCliente[i,0] <> vecFacXCliente[i-1,0] then fin := true
           Else fin := false;
         End Else fin := true;
       Until fin;
     end;

   ///Archivo de control
 i:=1;
 if SGAf.RowCount > 2 then
   begin
     SGCt.RowCount           := SGCt.RowCount + 1;
     SGCt.Cells[0,SGCt.RowCount-2] := copy(DataModule1.ADOQuery1.FieldByName('Codigo_Salud').AsString,1,12);
     SGCt.Cells[1,SGCt.RowCount-2] := FormatDateTime('DD/MM/YYYY', Date);
     SGCt.Cells[2,SGCt.RowCount-2] := PageControl1.Pages[i].Caption +trim(JvEdit2.Text);
     SGCt.Cells[3,SGCt.RowCount-2] := inttostr(SGAf.RowCount-2);
   end;

 inc(i);
 if SGUs.RowCount > 2 then
   begin
     SGCt.RowCount   := SGCt.RowCount + 1;
     SGCt.Cells[0,SGCt.RowCount-2] := copy(DataModule1.ADOQuery1.FieldByName('Codigo_Salud').AsString,1,12);
     SGCt.Cells[1,SGCt.RowCount-2] := FormatDateTime('DD/MM/YYYY', Date);
     SGCt.Cells[2,SGCt.RowCount-2] := PageControl1.Pages[i].Caption +trim(JvEdit2.Text);
     SGCt.Cells[3,SGCt.RowCount-2] := inttostr(SGUs.RowCount-2);
   end;

 inc(i);
 if SGAd.RowCount > 2 then
   begin
     SGCt.RowCount   := SGCt.RowCount +1;
     SGCt.Cells[0,SGCt.RowCount-2] := copy(DataModule1.ADOQuery1.FieldByName('Codigo_Salud').AsString,1,12);
     SGCt.Cells[1,SGCt.RowCount-2] := FormatDateTime('DD/MM/YYYY', Date);
     SGCt.Cells[2,SGCt.RowCount-2] := PageControl1.Pages[i].Caption +trim(JvEdit2.Text);
     SGCt.Cells[3,SGCt.RowCount-2] := inttostr(SGAd.RowCount-2);
   end;

 inc(i);
 if SGAc.RowCount > 2 then
   begin
     SGCt.RowCount  :=  SGCt.RowCount+1;
     SGCt.Cells[0,SGCt.RowCount-2] := copy(DataModule1.ADOQuery1.FieldByName('Codigo_Salud').AsString,1,12);
     SGCt.Cells[1,SGCt.RowCount-2] := FormatDateTime('DD/MM/YYYY', Date);
     SGCt.Cells[2,SGCt.RowCount-2] := PageControl1.Pages[i].Caption +trim(JvEdit2.Text);
     SGCt.Cells[3,SGCt.RowCount-2] := inttostr(SGAc.RowCount-2);
   end;

 inc(i);
 if SGAp.RowCount > 2 then
   begin
     SGCt.RowCount   :=  SGCt.RowCount + 1;
     SGCt.Cells[0,SGCt.RowCount-2] := copy(DataModule1.ADOQuery1.FieldByName('Codigo_Salud').AsString,1,12);
     SGCt.Cells[1,SGCt.RowCount-2] := FormatDateTime('DD/MM/YYYY', Date);
     SGCt.Cells[2,SGCt.RowCount-2] := PageControl1.Pages[i].Caption +trim(JvEdit2.Text);
     SGCt.Cells[3,SGCt.RowCount-2] := inttostr(SGAp.RowCount-2);
   end;

 inc(i);
 if SGAh.RowCount > 2 then
   begin
     SGCt.RowCount   :=  SGCt.RowCount + 1;
     SGCt.Cells[0,SGCt.RowCount-2] := copy(DataModule1.ADOQuery1.FieldByName('Codigo_Salud').AsString,1,12);
     SGCt.Cells[1,SGCt.RowCount-2] := FormatDateTime('DD/MM/YYYY', Date);
     SGCt.Cells[2,SGCt.RowCount-2] := PageControl1.Pages[i].Caption +trim(JvEdit2.Text);
     SGCt.Cells[3,SGCt.RowCount-2] := inttostr(SGAh.RowCount-2);
   end;

 inc(i);
 if SGAu.RowCount > 2 then
   begin
     SGCt.RowCount  :=  SGCt.RowCount + 1;
     SGCt.Cells[0,SGCt.RowCount-2] := copy(DataModule1.ADOQuery1.FieldByName('Codigo_Salud').AsString,1,12);
     SGCt.Cells[1,SGCt.RowCount-2] := FormatDateTime('DD/MM/YYYY', Date);
     SGCt.Cells[2,SGCt.RowCount-2] := PageControl1.Pages[i].Caption +trim(JvEdit2.Text);
     SGCt.Cells[3,SGCt.RowCount-2] := inttostr(SGAu.RowCount-2);
   end;

 inc(i);
 if SGAn.RowCount > 2 then
   begin
     SGCt.RowCount   :=  SGCt.RowCount + 1;
     SGCt.Cells[0,SGCt.RowCount-2] := copy(DataModule1.ADOQuery1.FieldByName('Codigo_Salud').AsString,1,12);
     SGCt.Cells[1,SGCt.RowCount-2] := FormatDateTime('DD/MM/YYYY', Date);
     SGCt.Cells[2,SGCt.RowCount-2] := PageControl1.Pages[i].Caption +trim(JvEdit2.Text);
     SGCt.Cells[3,SGCt.RowCount-2] := inttostr(SGAn.RowCount-2);
   end;

 inc(i);
 if SGAm.RowCount > 2 then
   begin
     SGCt.RowCount   := SGCt.RowCount +1;
     SGCt.Cells[0,SGCt.RowCount-2] := copy(DataModule1.ADOQuery1.FieldByName('Codigo_Salud').AsString,1,12);
     SGCt.Cells[1,SGCt.RowCount-2] := FormatDateTime('DD/MM/YYYY', Date);
     SGCt.Cells[2,SGCt.RowCount-2] := PageControl1.Pages[i].Caption +trim(JvEdit2.Text);
     SGCt.Cells[3,SGCt.RowCount-2] := inttostr(SGAm.RowCount-2);
   end;

 inc(i);
 if SGAt.RowCount > 2 then
   begin
     SGCt.RowCount  :=  SGCt.RowCount + 1;
     SGCt.Cells[0,SGCt.RowCount-2] := copy(DataModule1.ADOQuery1.FieldByName('Codigo_Salud').AsString,1,12);
     SGCt.Cells[1,SGCt.RowCount-2] := FormatDateTime('DD/MM/YYYY', Date);
     SGCt.Cells[2,SGCt.RowCount-2] := PageControl1.Pages[i].Caption +trim(JvEdit2.Text);
     SGCt.Cells[3,SGCt.RowCount-2] := inttostr(SGAt.RowCount-2);
   end;
   JVedit1.Text :=Format('%16.2n',[ValorAF]);
   JVedit4.Text :=Format('%16.2n',[ValorAD]);
   JVedit5.Text :=Format('%16.2n',[ValorAC]);
end;


procedure TF4505.FormCreate(Sender: TObject);
begin
  SGCt.ColCount := 4;
  SGCt.RowCount := 2;
  SGCt.Cells[0,0] := 'Prestador';
  SGCt.Cells[1,0] := 'Fecha Remision';
  SGCt.Cells[2,0] := 'Cod. Archivo';
  SGCt.Cells[3,0] := 'Total de Registros';

  SGAf.ColCount := 17;
  SGAf.RowCount := 2;
  SGAf.Cells[0,0] := 'Prestador';
  SGAf.Cells[1,0] := 'Razon Social';
  SGAf.Cells[2,0] := 'Tipo_identificacion';
  SGAf.Cells[3,0] := 'Numero de Identificacion';
  SGAf.Cells[4,0] := 'Factura No.';
  SGAf.Cells[5,0] := 'Fecha Factura';
  SGAf.Cells[6,0] := 'Fecha_Inicio';
  SGAf.Cells[7,0] := 'Fecha_Final';
  SGAf.Cells[8,0] := 'Codigo EPS';
  SGAf.Cells[9,0] := 'Nombre EPS';
  SGAf.Cells[10,0] := 'Contrato No.';
  SGAf.Cells[11,0] := 'Plan';
  SGAf.Cells[12,0] := 'Poliza';
  SGAf.Cells[13,0] := 'Copago';
  SGAf.Cells[14,0] := 'Comision';
  SGAf.Cells[15,0] := 'Descuentos';
  SGAf.Cells[16,0] := 'Neto a Pagar';


  SGUs.ColCount := 14;
  SGUs.RowCount := 2;
  SGUs.Cells[0,0] := 'Tipo_Doc.';
  SGUs.Cells[1,0] := 'Numero Doc.';
  SGUs.Cells[2,0] := 'Codigo EPS';
  SGUs.Cells[3,0] := 'Tipo Usuario';
  SGUs.Cells[4,0] := 'Primer_ape';
  SGUs.Cells[5,0] := 'Segundo_ape';
  SGUs.Cells[6,0] := 'Primer_nom';
  SGUs.Cells[7,0] := 'Segundo_nom';
  SGUs.Cells[8,0] := 'Edad';
  SGUs.Cells[9,0] := 'Unidad Edad';
  SGUs.Cells[10,0] := 'Sexo';
  SGUs.Cells[11,0] := 'Depto.';
  SGUs.Cells[12,0] := 'Mcpio.';
  SGUs.Cells[13,0] := 'Zona Res.';

  SGAd.ColCount    := 6;
  SGAd.RowCount := 2;
  SGAd.Cells[0,0]  := 'Numero de Factura';
  SGAd.Cells[1,0]  := 'Prestador';
  SGAd.Cells[2,0]  := 'Concepto';
  SGAd.Cells[3,0]  := 'Cantidad';
  SGAd.Cells[4,0]  := 'Valor Unitario';
  SGAd.Cells[5,0]  := 'Valor Total';

  SGAc.ColCount    := 17;
  SGAc.RowCount := 2;
  SGAc.Cells[0,0]  := 'Factura';
  SGAc.Cells[1,0]  := 'Prestador';
  SGAc.Cells[2,0]  := 'Tipo_doc_usuario';
  SGAc.Cells[3,0]  := 'Num_doc_usuario';
  SGAc.Cells[4,0]  := 'Fecha Consulta';
  SGAc.Cells[5,0]  := 'Autorizacion';
  SGAc.Cells[6,0]  := 'Codigo Consulta';
  SGAc.Cells[7,0]  := 'Finalidad Consulta';
  SGAc.Cells[8,0]  := 'Causa Externa';
  SGAc.Cells[9,0]  := 'Diagnostico ppal';
  SGAc.Cells[10,0] := 'Diagnostico relacionado';
  SGAc.Cells[11,0] := 'Diagnostico relacionado 2';
  SGAc.Cells[12,0] := 'Diagnostico relacionado 3';
  SGAc.Cells[13,0] := 'Tipo Diagnostico ppal';
  SGAc.Cells[14,0] := 'Valor consulta';
  SGAc.Cells[15,0] := 'Cuota Moderadora';
  SGAc.Cells[16,0] := 'Neto a pagar';

  SGAp.ColCount    := 15;
  SGAp.RowCount := 2;
  SGAp.Cells[0,0]  := 'Factura';
  SGAp.Cells[1,0]  := 'Prestador';
  SGAp.Cells[2,0]  := 'Tipo_doc_usuario';
  SGAp.Cells[3,0]  := 'Num_doc_usuario';
  SGAp.Cells[4,0]  := 'Fecha Procedimiento';
  SGAp.Cells[5,0]  := 'Autorizacion';
  SGAp.Cells[6,0]  := 'Codigo Procedimiento';
  SGAp.Cells[7,0]  := 'Ambito Realizacion';
  SGAp.Cells[8,0]  := 'Finalidad Procedimiento';
  SGAp.Cells[9,0]  := 'Personal que Atiende';
  SGAp.Cells[10,0] := 'Diagnostico Ppal';
  SGAp.Cells[11,0] := 'Diagnostico relacionado';
  SGAp.Cells[12,0] := 'Complicacion';
  SGAp.Cells[13,0] := 'Forma Realizacion Acto Q.';
  SGAp.Cells[14,0] := 'Valor Procedimiento';


  SGAh.ColCount    := 19;
  SGAh.RowCount := 2;
  SGAh.Cells[0,0]  := 'Factura';
  SGAh.Cells[1,0]  := 'Prestador';
  SGAh.Cells[2,0]  := 'Tipo_doc_usuario';
  SGAh.Cells[3,0]  := 'Num_doc_usuario';
  SGAh.Cells[4,0]  := 'Via de ingreso';
  SGAh.Cells[5,0]  := 'Fecha Ingreso';
  SGAh.Cells[6,0]  := 'Hora Ingreso';
  SGAh.Cells[7,0]  := 'Autorizacion';
  SGAh.Cells[8,0]  := 'Causa Externa';
  SGAh.Cells[9,0]  := 'Diag. Principal Ing.';
  SGAh.Cells[10,0] := 'Diag. Principal Egr.';
  SGAh.Cells[11,0] := 'Diag.Rel.No.1 Egr';
  SGAh.Cells[12,0] := 'Diag.Rel.No.2 Egr';
  SGAh.Cells[13,0] := 'Diag.Rel.No.3 Egr';
  SGAh.Cells[14,0] := 'Diag.de la Complicacion';
  SGAh.Cells[15,0] := 'Estado a la Salida';
  SGAh.Cells[16,0] := 'Diag. Causa Muerte';
  SGAh.Cells[17,0] := 'Fecha Egreso';
  SGAh.Cells[18,0] := 'Hora Egreso';

  SGAu.ColCount    := 17;
  SGAu.RowCount := 2;
  SGAu.Cells[0,0]  := 'Factura';
  SGAu.Cells[1,0]  := 'Prestador';
  SGAu.Cells[2,0]  := 'Tipo_doc_usuario';
  SGAu.Cells[3,0]  := 'Num_doc_usuario';
  SGAu.Cells[4,0]  := 'Fecha Ingreso';
  SGAu.Cells[5,0]  := 'Hora Ingreso';
  SGAu.Cells[6,0]  := 'Autorizacion';
  SGAu.Cells[7,0]  := 'Causa Externa';
  SGAu.Cells[8,0]  := 'Diag. a la Salida';
  SGAu.Cells[9,0]  := 'Diag.Rel.No.1 Egr';
  SGAu.Cells[10,0] := 'Diag.Rel.No.2 Egr';
  SGAu.Cells[11,0] := 'Diag.Rel.No.3 Egr';
  SGAu.Cells[12,0] := 'Destino usuario';
  SGAu.Cells[13,0] := 'Estado a la Salida';
  SGAu.Cells[14,0] := 'Causa Muerte';
  SGAu.Cells[15,0] := 'Fecha Egreso';
  SGAu.Cells[16,0] := 'Hora Egreso';

  SGAn.ColCount    := 14;
  SGAn.RowCount := 2;
  SGAn.Cells[0,0]  := 'Factura';
  SGAn.Cells[1,0]  := 'Prestador';
  SGAn.Cells[2,0]  := 'Tipo_doc_madre';
  SGAn.Cells[3,0]  := 'Num_doc_madre';
  SGAn.Cells[4,0]  := 'Fecha Nacimiento r.n';
  SGAn.Cells[5,0]  := 'Hora Nacimiento r.n';
  SGAn.Cells[6,0]  := 'Edad gestacional';
  SGAn.Cells[7,0]  := 'Control Prenatal';
  SGAn.Cells[8,0]  := 'Sexo';
  SGAn.Cells[9,0]  := 'Peso';
  SGAn.Cells[10,0] := 'Diag.Recien Nacido';
  SGAn.Cells[11,0] := 'Causa Basica Muerte';
  SGAn.Cells[12,0] := 'Fecha Muerte';
  SGAn.Cells[13,0] := 'Hora Muerte';

  SGAm.ColCount    := 14;
  SGAm.RowCount := 2;
  SGAm.Cells[0,0]  := 'Factura';
  SGAm.Cells[1,0]  := 'Prestador';
  SGAm.Cells[2,0]  := 'Tipo_doc_usuario';
  SGAm.Cells[3,0]  := 'Num_doc_usuario';
  SGAm.Cells[4,0]  := 'Autorizacion';
  SGAm.Cells[5,0]  := 'Cod. Medicamento';
  SGAm.Cells[6,0]  := 'Tipo Medicamento';
  SGAm.Cells[7,0]  := 'Nombre Generico';
  SGAm.Cells[8,0]  := 'Forma Farmaceutica';
  SGAm.Cells[9,0]  := 'Concentracion Medi.';
  SGAm.Cells[10,0] := 'Unidad de Medida';
  SGAm.Cells[11,0] := 'Numero de unidades';
  SGAm.Cells[12,0] := 'Valor Unitario';
  SGAm.Cells[13,0] := 'Valor Total';

  SGAt.ColCount    := 11;
  SGAt.RowCount := 2;
  SGAt.Cells[0,0]  := 'Factura';
  SGAt.Cells[1,0]  := 'Prestador';
  SGAt.Cells[2,0]  := 'Tipo_doc_usuario';
  SGAt.Cells[3,0]  := 'Num_doc_usuario';
  SGAt.Cells[4,0]  := 'Autorizacion';
  SGAt.Cells[5,0]  := 'Tipo Servicio';
  SGAt.Cells[6,0]  := 'Codigo Servicio';
  SGAt.Cells[7,0]  := 'Nombre Servicio';
  SGAt.Cells[8,0]  := 'Cantidad';
  SGAt.Cells[9,0]  := 'Valor Unitario ';
  SGAt.Cells[10,0] := 'Valor Total';
  DatamoduloAdmision.ADOQueryConvenios.Open;
end;

procedure TF4505.BtnGenerarClick(Sender: TObject);
var F: TextFile;
    i,j:Integer;
    Path:String;
begin
  Path:= drive.Drive + ':\Res4505\'+trim(EditCodigoEPS.Text)+'_'+trim(EditNombre.Text)+'\R'+trim(JvEdit2.Text)+'\';
  ForceDirectories(Path);

  if SGAf.RowCount > 2 then
    begin
      AssignFile(F, Path+PageControl1.Pages[1].Caption +trim(JvEdit2.Text)+'.txt');
      Rewrite(F);
      for i:=1 to (SGAf.RowCount-2) do
        begin
          if  trim(SGAf.Cells[0,i]) <> ''  then
          Begin
            for j:=0 to (SGAf.ColCount-1) do
              begin
                if j = (SGAf.ColCount-1) then
                  Write(F, SGAf.Cells[j,i])
                else
                  Write(F, SGAf.Cells[j,i]+',');
              end;
            if i<>(SGAf.RowCount-1) then Writeln(F);
          End;
        end;
      CloseFile(F);
    end;

  if SGUs.RowCount > 2 then
    begin
      AssignFile(F, Path+PageControl1.Pages[2].Caption +trim(JvEdit2.Text)+'.txt');
      Rewrite(F);
      for i:=1 to (SGUs.RowCount-2) do
        begin
          if  trim(SGUs.Cells[0,i]) <> ''  then
          Begin
            for j:=0 to (SGUs.ColCount-1) do
              begin
                if j = (SGUs.ColCount-1) then
                  Write(F, SGUs.Cells[j,i])
                else
                  Write(F, SGUs.Cells[j,i]+',');
              end;
            if i<>(SGUs.RowCount-1) then
              Writeln(F);
          End;
        end;
      CloseFile(F);
    end;

  if SGAd.RowCount > 2 then
    begin
      AssignFile(F, Path+PageControl1.Pages[3].Caption +trim(JvEdit2.Text)+'.txt');
      Rewrite(F);
      for i:=1 to (SGAd.RowCount-2) do
        Begin
          if  trim(SGAd.Cells[0,i]) <> ''  then
          Begin
            for j:=0 to (SGAd.ColCount-1) do
              begin
                if j = (SGAd.ColCount-1) then
                  Write(F, SGAd.Cells[j,i])
                else
                  Write(F, SGAd.Cells[j,i]+',');
              end;
            if i<>(SGAd.RowCount-1) then
              Writeln(F);
          End;
        end;
      CloseFile(F);
    end;

  if SGAc.RowCount > 2 then
    begin
      AssignFile(F, Path+PageControl1.Pages[4].Caption +trim(JvEdit2.Text)+'.txt');
      Rewrite(F);
      for i:=1 to (SGAc.RowCount-2) do
        begin
          if  trim(SGAc.Cells[0,i]) <> ''  then
          Begin
            for j:=0 to (SGAc.ColCount-1) do
              begin
                if j = (SGAc.ColCount-1) then
                  Write(F, SGAc.Cells[j,i])
                else
                  Write(F, SGAc.Cells[j,i]+',');
              end;
            if i<>(SGAc.RowCount-1) then
              Writeln(F);
          End;
        end;
      CloseFile(F);
    end;

  if SGAp.RowCount > 2 then
    begin
      AssignFile(F, Path+PageControl1.Pages[5].Caption +trim(JvEdit2.Text)+'.txt');
      Rewrite(F);
      for i:=1 To (SGAp.RowCount-2) do
        begin
          if  trim(SGAp.Cells[0,i]) <> ''  then
          Begin
            for j:=0 To (SGAp.ColCount-1) do
              begin
                if j = (SGAp.ColCount-1) then
                  Write(F, SGAp.Cells[j,i])
                else
                  Write(F, SGAp.Cells[j,i]+',');
              end;
            if i<>(SGAp.RowCount-1) then
              Writeln(F);
          End;
        end;
      CloseFile(F);
    end;

  if SGAh.Cells[0,1] <> '' then
    begin
      AssignFile(F, Path+PageControl1.Pages[6].Caption +trim(JvEdit2.Text)+'.txt');
      Rewrite(F);
      for i:=1 To (SGAh.RowCount-2) do
        begin
          if  trim(SGAh.Cells[0,i]) <> ''  then
          Begin
            for j:=0 to (SGAh.ColCount-1) do
              begin
                if j = (SGAh.ColCount-1) then
                  Write(F, SGAh.Cells[j,i])
                else
                  Write(F, SGAh.Cells[j,i]+',');
              end;
            if i<>(SGAh.RowCount-1) then
              Writeln(F);
          End;
        end;
      CloseFile(F);
    end;

  if SGAu.RowCount > 2 then
    begin
      AssignFile(F, Path+PageControl1.Pages[7].Caption +trim(JvEdit2.Text)+'.txt');
      Rewrite(F);
      for i:=1 To (SGAu.RowCount-2) do
        begin
          if  trim(SGAu.Cells[0,i]) <> ''  then
          Begin
            for j:=0 To (SGAu.ColCount-1) do
              begin
                if j = (SGAu.ColCount-1) then
                  Write(F, SGAu.Cells[j,i])
                else
                  Write(F, SGAu.Cells[j,i]+',');
              end;
            if i<>(SGAu.RowCount-1) then
              Writeln(F);
          End;
        end;
      CloseFile(F);
    end;

  if SGAn.RowCount > 2 then
    begin
      AssignFile(F, Path+PageControl1.Pages[8].Caption +trim(JvEdit2.Text)+'.txt');
      Rewrite(F);
      for i:=1 to (SGAn.RowCount-2) do
        begin
          if  trim(SGAn.Cells[0,i]) <> ''  then
          Begin
            for j:=0 to (SGAn.ColCount-1) do
              begin
                if j = (SGAn.ColCount-1) then
                  Write(F, SGAn.Cells[j,i])
                else
                  Write(F, SGAn.Cells[j,i]+',');
              end;
            if i<>(SGAn.RowCount-1) then
              Writeln(F);
          End;
        end;
      CloseFile(F);
    end;

  if SGAm.RowCount > 2 then
    begin
      AssignFile(F, Path+PageControl1.Pages[9].Caption +trim(JvEdit2.Text)+'.txt');
      Rewrite(F);
      for i:=1 To (SGAm.RowCount-2) do
        begin
          if  trim(SGAm.Cells[0,i]) <> ''  then
          Begin
            for j:=0 To (SGAm.ColCount-1) do
              begin
                if j = (SGAm.ColCount-1) then
                  Write(F, SGAm.Cells[j,i])
                else
                  Write(F, SGAm.Cells[j,i]+',');
              end;
            if i<>(SGAm.RowCount-1) then
              Writeln(F);
          End;
        end;
      CloseFile(F);
    end;

  if SGAt.RowCount > 2 then
    begin
      AssignFile(F, Path+PageControl1.Pages[10].Caption +trim(JvEdit2.Text)+'.txt');
      Rewrite(F);
      for i:=1 To (SGAt.RowCount-2) do
        begin
          if  trim(SGAt.Cells[0,i]) <> ''  then
          Begin
            for j:=0 to (SGAt.ColCount-1) do
              begin
                if j = (SGAt.ColCount-1) then
                  Write(F, SGAt.Cells[j,i])
                else
                  Write(F, SGAt.Cells[j,i]+',');
              end;
            if i<>(SGAt.RowCount-1) then
              Writeln(F);
          End;
        end;
      CloseFile(F);
    end;

  if SGCt.RowCount > 2 then
    begin
      AssignFile(F, Path+PageControl1.Pages[0].Caption +trim(JvEdit2.Text)+'.txt');
      Rewrite(F);
      for i:=1 to (SGCt.RowCount-2) do
        begin
          if  trim(SGCt.Cells[0,i]) <> ''  then
          Begin
            for j:=0 to (SGCt.ColCount-1) do
              begin
                if j = (SGCt.ColCount-1) then
                  Write(F, SGCt.Cells[j,i])
                else
                  Write(F, SGCt.Cells[j,i]+',');
              end;
            if i<>(SGCt.RowCount-1) then
              Writeln(F);
          End;
        end;
      CloseFile(F);
    end;
  Showmessage('La Res4505 fue Generada en '+Path);
end;

procedure TF4505.FormShow(Sender: TObject);
begin
  Edit1.Text := DataModule1.ADOQuery1.Fields.fieldByName('Empresa_Trabaja').AsString;
end;

procedure TF4505.Button1Click(Sender: TObject);
begin
  if ActiveMDIChild = nil then
    ActiveMDIChild.Close
end;

procedure TF4505.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
  F4505 := nil;
end;

end.
