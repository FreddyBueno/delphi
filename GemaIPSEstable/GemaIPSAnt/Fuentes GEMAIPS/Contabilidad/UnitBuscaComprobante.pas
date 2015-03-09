unit UnitBuscaComprobante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, ADODB,Math;

type
  TFrmBuscarComprobante = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    CBTipo: TComboBox;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BtnAceptar: TBitBtn;
    BtnCancelar: TBitBtn;
    Label3: TLabel;
    Bevel1: TBevel;
    QryG: TADOQuery;
    QryA: TADOQuery;
    CBEmpresas: TComboBox;
    Label4: TLabel;
    QryC: TADOQuery;
    procedure BuscaTipos;
    procedure FormShow(Sender: TObject);
    procedure BtnAceptarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BuscaEmpresas;
  private
    { Private declarations }
  public
    vecEmpresas : array of string;
    vecTipo : array of array of string;  
    Pare  : string;
    { Public declarations }
  end;

var
  FrmBuscarComprobante: TFrmBuscarComprobante;

implementation

uses UDataModule1, ConsultaComp;

{$R *.dfm}

procedure TFrmBuscarComprobante.BuscaTipos;
var i : Integer;
begin
  QryG.Close;
  QryG.SQL.Clear;
  QryG.SQL.Add('select * from CONTTipoComp');
  QryG.SQL.Add('where cargue = 2');
  QryG.Open;

  SetLength(vecTipo, QryG.RecordCount, 3);
  i := 0;
  while not QryG.Eof do
    begin
      vecTipo[i,0] := QryG.Fields.FieldByName('Tipo_Comprobante').AsString;
      vecTipo[i,1] := QryG.Fields.FieldByName('Descripcion').AsString;
      inc(i);
      QryG.Next;
    end;
end;

procedure TFrmBuscarComprobante.FormShow(Sender: TObject);
var i, e : Integer;
begin
  Pare  := FormCapturaComp.DBLookupComboBox1.KeyValue;

  BuscaTipos;
  BuscaEmpresas;
  i := 0;
  while i < Length(vecTipo) do
    begin
      CBTipo.Items.Add(vecTipo[i,1]);
      if vecTipo[i,0] = Pare then
        e := i;
      inc(i);
    end;
    FrmBuscarComprobante.CBTipo.Text := FormCapturaComp.DBLookupComboBox1.Text;
    CBTipo.ItemIndex  := e;
end;

procedure TFrmBuscarComprobante.BtnAceptarClick(Sender: TObject);
var i, e : Integer;
begin
  QryG.Close;
  QryG.SQL.Clear;
  QryG.SQL.Add('select * from CONTEncComp');
  QryG.SQL.Add(' where Tipo_Comprobante = '+chr(39)+vecTipo[CBTipo.ItemIndex, 0]+chr(39));
  QryG.SQL.Add(' and  Numero_Comprobante = '+chr(39)+Edit1.Text+chr(39));
  QryG.SQL.Add(' and Empresa = '''+vecEmpresas[CBEmpresas.ItemIndex]+'''');
  QryG.Open;
  FormCapturaComp.EmpresaM := vecEmpresas[CBEmpresas.ItemIndex];

  if not QryG.Eof then
    begin
      if QryG.Fields.FieldByName('Estado').AsString = 'A' then
        begin
          Application.MessageBox('El Documento se encuentra anulado, no se puede modificar','Información',MB_OK+MB_ICONINFORMATION);
          Exit;
        end;

      QryA.Close;
      QryA.SQL.Clear;
      QryA.SQL.Add('select Estado, Periodo_Proceso from CONTCierres');
      QryA.SQL.Add('where Periodo_Proceso = '+chr(39)+QryG.Fields.FieldByName('Periodo_Proceso').AsString+chr(39));
      QryA.Open;

      if not QryA.Eof then
        begin
          if QryA.Fields.FieldByName('Estado').AsString <> 'A' then
            begin
              Application.MessageBox(pchar('El periodo del documento se encuentra cerrado, para hacerle modificaciones al documento'+#13+ 'Debe abrir el periodo '+ QryA.Fields.FieldByName('Periodo_Proceso').AsString),'Información',MB_OK+MB_ICONINFORMATION);
              Exit;
            end;
        end
      else
        begin
          Application.MessageBox('El documento no tiene periodo','Información',MB_OK+MB_ICONINFORMATION);
          Exit;
        end;

     FormCapturaComp.DBLookupComboBox1.KeyValue  :=  QryG.Fields.FieldByName('Tipo_Comprobante').AsString;
     FormCapturaComp.Edit3.Text                  :=  QryG.Fields.FieldByName('Informacion_1').AsString;
     FormCapturaComp.Edit4.Text                  :=  QryG.Fields.FieldByName('Informacion_2').AsString;
     FormCapturaComp.Edit5.Text                  :=  QryG.Fields.FieldByName('Informacion_3').AsString;
     FormCapturaComp.DBLookupComboBox2.KeyValue  :=  QryG.Fields.FieldByName('Periodo_Proceso').AsString;
     FormCapturaComp.Edit1.Text                  :=  QryG.Fields.FieldByName('Numero_Comprobante').AsString;
     FormCapturaComp.DateTimePicker1.DateTime    :=  QryG.Fields.FieldByName('Fecha_Comprobante').AsDateTime;
     FormCapturaComp.Edit2.Text                  :=  QryG.Fields.FieldByName('Descripcion').AsString;

     FormCapturaComp.label5.Visible              :=  False;
     FormCapturaComp.label6.Visible              :=  False;
     FormCapturaComp.label7.Visible              :=  False;
     FormCapturaComp.Edit3.Visible               :=  False;
     FormCapturaComp.Edit4.Visible               :=  False;
     FormCapturaComp.Edit5.Visible               :=  False;

     if QryG.Fields.FieldByName('campo1').AsString <>  '' then
       begin
         FormCapturaComp.label5.Visible   :=  True;
         FormCapturaComp.label5.Caption   :=  QryG.Fields.FieldByName('campo1').AsString;
       end;

     if QryG.Fields.FieldByName('Informacion_1').AsString <>  '' then
       begin
         FormCapturaComp.Edit3.Visible    :=  True;
         FormCapturaComp.Edit3.Text       :=  QryG.Fields.FieldByName('Informacion_1').AsString;
       end;

     if QryG.Fields.FieldByName('campo2').AsString <>  '' then
       begin
         FormCapturaComp.label6.Visible   :=  True;
         FormCapturaComp.label6.Caption   :=  QryG.Fields.FieldByName('campo2').AsString;
       end;

     if QryG.Fields.FieldByName('Informacion_2').AsString <>  '' then
       begin
         FormCapturaComp.Edit4.Visible    :=  True;
         FormCapturaComp.Edit4.Text       :=  QryG.Fields.FieldByName('Informacion_2').AsString;
       end;


     if QryG.Fields.FieldByName('campo3').AsString <>  '' then
       begin
         FormCapturaComp.label7.Visible   :=  True;
         FormCapturaComp.label7.Caption   :=  QryG.Fields.FieldByName('campo3').AsString;
       end;

     if QryG.Fields.FieldByName('Informacion_2').AsString <>  '' then
       begin
         FormCapturaComp.Edit5.Visible    :=  True;
         FormCapturaComp.Edit5.Text       :=  QryG.Fields.FieldByName('Informacion_2').AsString;
       end;

     QryG.Close;
     QryG.SQL.Clear;
     QryG.SQL.Add('select CONTDetComp.Cuenta, Descripcion, CONTDetComp.Tercero, Centro_Costo,');
     QryG.SQL.Add('     Valor_Debito, Valor_Credito, DocSoporte from CONTDetComp left outer join  CONTCuenta on ');
      QryG.SQL.Add('    CONTDetComp.Cuenta = CONTCuenta.cuenta ');
     QryG.SQL.Add(' where Tipo_Comprobante = '+chr(39)+vecTipo[CBTipo.ItemIndex, 0]+chr(39));
     QryG.SQL.Add(' and  Numero_Comprobante = '+chr(39)+Edit1.Text+chr(39));
     QryG.SQL.Add(' and CONTDetComp.Empresa = '''+vecEmpresas[CBEmpresas.ItemIndex]+'''');
     QryG.Open;

     SetLength(FormCapturaComp.vecCambia, QryG.RecordCount,7);

     i := 1;
     e := 0;
     FormCapturaComp.Button5.Caption :='0';
     while not QryG.Eof do
       begin
         FormCapturaComp.StringGrid1.Cells[0,i]  := IntToStr(i);
         FormCapturaComp.StringGrid1.Cells[1,i]  := QryG.Fields.FieldByName('Cuenta').AsString;
         FormCapturaComp.StringGrid1.Cells[2,i]  := QryG.Fields.FieldByName('Descripcion').AsString;
         FormCapturaComp.StringGrid1.Cells[3,i]  := QryG.Fields.FieldByName('Valor_Debito').AsString;
         FormCapturaComp.StringGrid1.Cells[4,i]  := QryG.Fields.FieldByName('Valor_Credito').AsString;
         FormCapturaComp.StringGrid1.Cells[5,i]  := QryG.Fields.FieldByName('Tercero').AsString;
         FormCapturaComp.StringGrid1.Cells[6,i]  := QryG.Fields.FieldByName('Centro_Costo').AsString;
         FormCapturaComp.StringGrid1.Cells[7,i]  := QryG.Fields.FieldByName('DocSoporte').AsString;
         FormCapturaComp.Button5.Caption := floattostr(roundto(strtofloat(FormCapturaComp.Button5.Caption),-2) + roundto(strtofloat(QryG.Fields.FieldByName('Valor_Debito').AsString),-2) - roundto(strtofloat(QryG.Fields.FieldByName('Valor_Credito').AsString),-2));

         FormCapturaComp.vecCambia[e,0]          := QryG.Fields.FieldByName('Cuenta').AsString;
         FormCapturaComp.vecCambia[e,1]          := QryG.Fields.FieldByName('Valor_Debito').AsString;
         FormCapturaComp.vecCambia[e,2]          := QryG.Fields.FieldByName('Valor_Credito').AsString;
         FormCapturaComp.vecCambia[e,3]          := QryG.Fields.FieldByName('Tercero').AsString;
         FormCapturaComp.vecCambia[e,4]          := QryG.Fields.FieldByName('Centro_Costo').AsString;
         FormCapturaComp.vecCambia[e,5]          := QryG.Fields.FieldByName('DocSoporte').AsString;
         QryG.Next;
         inc(i);
         inc(e);
       end;
    FormCapturaComp.StringGrid1.RowCount        := i + 1;

    QryG.Close;
    QryG.SQL.Clear;
    QryG.SQL.Add('select Imagen from CONTDigitaliza');
    QryG.SQL.Add(' where Tipo_Comprobante = '+chr(39)+vecTipo[CBTipo.ItemIndex, 0]+chr(39));
    QryG.SQL.Add(' and  Numero_Comprobante = '+chr(39)+Edit1.Text+chr(39));
    QryG.Open;

    if not QryG.Eof then
      begin
        FormCapturaComp.ImageHolder.Picture.Assign(QryG.Fields.FieldByName('Imagen'));
      end;


     //FormCapturaComp.Edit2.ReadOnly              := True;
     FormCapturaComp.DBLookupComboBox1.Enabled   := False;
     FormCapturaComp.Cambia                      := True;
     close;
    end
  else
    begin
    end;

end;

procedure TFrmBuscarComprobante.BtnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TFrmBuscarComprobante.BuscaEmpresas;
var i : Integer;
begin
  QryC.Close;
  QryC.SQL.Clear;
  QryC.SQL.Add('SELECT CODIGO, Descripcion_Emp');
  QryC.SQL.Add('FROM SEEmpresas');
  QryC.Open;

  SetLength(vecEmpresas, QryC.RecordCount);
  i := 0;
  CBEmpresas.Clear;
  while not QryC.Eof do
    begin
      CBEmpresas.Items.Add(QryC.Fields.FieldByName('Descripcion_Emp').AsString);
      vecEmpresas[i] :=  QryC.Fields.FieldByName('Codigo').AsString;
      inc(i);
      QryC.Next;
    end;

  i := 0;
  while i < Length(vecEmpresas) do
    begin
      if DataModule1.ADOQuery1.Fields.FieldByName('EMPRESA_TRABAJA').AsString = vecEmpresas[i] then
        begin
          CBEmpresas.ItemIndex := i;
          Break;
        end;
      inc(i);
    end;

  if DataModule1.ADOQuery1.Fields.FieldByName('Multiempresa').AsString = 'S' then
    CBEmpresas.Enabled  := True
  else
    CBEmpresas.Enabled  := False;
end;
end.
