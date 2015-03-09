unit FSolicitud;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, DB, ADODB, Mask,
  ComCtrls, Buttons, Menus,Libreria_Prateinco;

type
  TFSolicitaCargo = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    DataSource3: TDataSource;
    StringGrid1: TStringGrid;
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    MaskEdit1: TMaskEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    Label6: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    DataSource5: TDataSource;
    ADOQuery1: TADOQuery;
    GroupBox4: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label1: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    Edit2: TEdit;
    ADOQuery4: TADOQuery;
    ComboBox1: TComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBLookupComboBox8: TDBLookupComboBox;
    DataSource4: TDataSource;
    DataSource6: TDataSource;
    Label13: TLabel;
    ADOQuery10: TADOQuery;
    ADOQuery11: TADOQuery;
    ADOQuery12: TADOQuery;
    PopupMenu2: TPopupMenu;
    EliminarRegistro1: TMenuItem;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label23: TLabel;
    DBLookupComboBox13: TDBLookupComboBox;
    ADOQuery14: TADOQuery;
    DataSource9: TDataSource;
    ADOQuery13: TADOQuery;
    ADOQuery9: TADOQuery;
    DataSource8: TDataSource;
    Shape1: TShape;
    Label10: TLabel;
    MaskEdit2: TMaskEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    procedure DataSource3DataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure MaskEdit2Change(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Change(Sender: TObject);
    procedure DataSource4DataChange(Sender: TObject; Field: TField);
    procedure DataSource6DataChange(Sender: TObject; Field: TField);
    procedure ComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBox4Exit(Sender: TObject);
    procedure DBLookupComboBox6Exit(Sender: TObject);
    procedure DBLookupComboBox8Exit(Sender: TObject);
    procedure DBLookupComboBox5Exit(Sender: TObject);
    procedure EliminarRegistro1Click(Sender: TObject);
    procedure PopupMenu2Popup(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSolicitaCargo: TFSolicitaCargo;

implementation

uses UDataModule1, MAIN, Libreria_PrateincoForm;


{$R *.dfm}

procedure TFSolicitaCargo.DataSource3DataChange(Sender: TObject; Field: TField);
begin
  if DBLookupComboBox3.Focused then DBLookupComboBox4.KeyValue := DBLookupComboBox3.KeyValue
  else DBLookupComboBox3.KeyValue := DBLookupComboBox4.KeyValue;
end;

procedure TFSolicitaCargo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure TFSolicitaCargo.BitBtn1Click(Sender: TObject);
begin
  If Combobox1.Text<>'' Then
  Begin
    If Combobox1.Text='P' Then ReporteadorP('Listado de Productos','SELECT * FROM INProductos','')
    Else If Combobox1.Text='S' Then ReporteadorP('Listado de SAServicios','SELECT * FROM SAServicios','')
    Else If Combobox1.Text='T' Then ReporteadorP('Listado de SATarifarios','SELECT * FROM SATarifarios','');
  end;
end;

procedure TFSolicitaCargo.MaskEdit2Change(Sender: TObject);
begin
  if maskedit1.Text = '' then maskedit1.Text := '0';
end;

procedure TFSolicitaCargo.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
Var prb:Extended;
begin
  if (( (key >= char(14)) and (key < '0')) or (key > '9')) and (key <> '.') then
    key := char(0)
  else if (key = '.') and (pos('.',maskedit1.Text) <> 0) then
    key := char(0)
  else
  begin
    if not (key <= char(14)) then
    begin
      if trystrtofloat(maskedit1.Text+key,prb) = FALSE then
      begin
        showmessage('Error en el valor digitado');
        maskedit1.text:='';
      end;
    end;
  end;
end;

procedure TFSolicitaCargo.ComboBox1Change(Sender: TObject);
begin
  If Combobox1.Text='P' Then
  Begin
    DBlookupComboBox3.Visible:=True;
    DBlookupComboBox4.Visible:=True;
    DBlookupComboBox2.Visible:=False;
    DBlookupComboBox6.Visible:=False;
    DBlookupComboBox7.Visible:=False;
    DBlookupComboBox8.Visible:=False;
    BitBtn1.Visible := True;
    Label9.Visible := True;
    Maskedit1.Visible := True;

    DBlookupComboBox13.Visible := False;
    Label10.Visible := False;
    Maskedit2.Visible := False;
    Label23.Visible := False;
    Edit3.Visible:=False;
    Edit4.Visible:=True;
  End
  Else If Combobox1.Text='S' Then
  Begin
    DBlookupComboBox3.Visible:=False;
    DBlookupComboBox4.Visible:=False;
    DBlookupComboBox2.Visible:=True;
    DBlookupComboBox6.Visible:=True;
    DBlookupComboBox7.Visible:=False;
    DBlookupComboBox8.Visible:=False;
    BitBtn1.Visible := True;

    Label9.Visible := True;
    Maskedit1.Visible := True;

    DBlookupComboBox13.Visible := False;
    Label10.Visible := False;
    Maskedit2.Visible := False;
    Label23.Visible := False;
    Edit3.Visible:=False;
    Edit4.Visible:=True;
  End
  Else If Combobox1.Text='PAQUETE' Then
  Begin
    DBlookupComboBox3.Visible:=False;
    DBlookupComboBox4.Visible:=False;
    DBlookupComboBox2.Visible:=False;
    DBlookupComboBox6.Visible:=False;
    DBlookupComboBox7.Visible:=False;
    DBlookupComboBox8.Visible:=False;
    BitBtn1.Visible := False;

    Label9.Visible := False;
    Maskedit1.Visible := False;

    DBlookupComboBox13.Visible := True;
    Label10.Visible := True;
    Maskedit2.Visible := True;
    Label23.Visible := True;
    Edit3.Visible:=False;
    Edit4.Visible:=False;
  End
  Else If Combobox1.Text='O' Then
  Begin
    DBlookupComboBox3.Visible:=False;
    DBlookupComboBox4.Visible:=False;
    DBlookupComboBox2.Visible:=False;
    DBlookupComboBox6.Visible:=False;
    DBlookupComboBox7.Visible:=False;
    DBlookupComboBox8.Visible:=False;
    BitBtn1.Visible := False;

    Label9.Visible := True;
    Maskedit1.Visible := True;

    DBlookupComboBox13.Visible := FALSE;
    Label10.Visible := False;
    Maskedit2.Visible := False;
    Label23.Visible := False;
    Edit3.Visible:=True;
    Edit4.Visible:=False;
  End
end;

procedure TFSolicitaCargo.DataSource4DataChange(Sender: TObject; Field: TField);
begin
  if DBLookupComboBox2.Focused then DBLookupComboBox6.KeyValue := DBLookupComboBox2.KeyValue
  else DBLookupComboBox2.KeyValue := DBLookupComboBox6.KeyValue;
end;

procedure TFSolicitaCargo.DataSource6DataChange(Sender: TObject; Field: TField);
begin
  if DBLookupComboBox7.Focused then DBLookupComboBox8.KeyValue := DBLookupComboBox7.KeyValue
  else DBLookupComboBox7.KeyValue := DBLookupComboBox8.KeyValue;
end;

procedure TFSolicitaCargo.ComboBox1Exit(Sender: TObject);
begin
  If Combobox1.Text='P' Then DBlookupComboBox3.setfocus
  Else If Combobox1.Text='S' Then DBlookupComboBox2.setfocus
  Else If Combobox1.Text='PAQUETE' Then DBlookupComboBox13.setfocus
  Else If Combobox1.Text='O' Then  Edit3.SetFocus;
end;

procedure TFSolicitaCargo.DBLookupComboBox4Exit(Sender: TObject);
begin
  Maskedit1.SetFocus;
end;

procedure TFSolicitaCargo.DBLookupComboBox6Exit(Sender: TObject);
begin
  Maskedit1.SetFocus;
end;

procedure TFSolicitaCargo.DBLookupComboBox8Exit(Sender: TObject);
begin
  Maskedit1.SetFocus;
end;

procedure TFSolicitaCargo.DBLookupComboBox5Exit(Sender: TObject);
begin

end;

//////////////* Borrar un solo registro */////////////////////////////
procedure GridDelRow(RowNumber : Integer; StringGrid1 : TStringGrid);
var i : Integer;
begin
  RowNumber := StringGrid1.Row;
  if StringGrid1.Cells[1,RowNumber] <> '' then
    begin
    stringgrid1.RowCount := stringgrid1.RowCount - 1;
    for i := RowNumber To stringgrid1.RowCount - 1 do
    begin
      stringgrid1.Rows[i] := stringgrid1.Rows[i+ 1];
      if StringGrid1.Cells[0,i] <> '' then
        StringGrid1.Cells[0,i] := IntToStr((StrToInt(StringGrid1.Cells[0,i]))-1);
    end;
    end
    else
    showmessage('No es posible eliminar este campo');
end;

procedure TFSolicitaCargo.EliminarRegistro1Click(Sender: TObject);
var  RowNumber  : Integer;
begin
     GridDelRow (RowNumber, StringGrid1);
end;

procedure TFSolicitaCargo.PopupMenu2Popup(Sender: TObject);
var pt : Tpoint;
begin
    SetForegroundWindow(Handle);
    GetCursorPos(pt);
    PopupMenu2.Popup(pt.x,pt.y);
end;

procedure TFSolicitaCargo.BitBtn4Click(Sender: TObject);
Var
  i:Integer;
  nrinventa:String;
  Afecta_I:Integer;
begin
  If StringGrid1.RowCount > 2 Then
  Begin
    If (DBLookupComboBox1.Text <> '') Then
    Begin
      adoquery2.Open;
      adoquery3.Open;
      ADOTable1.Close;
      ADOTable1.Open;
      //Graba el Encabezado
      try
        DataModule1.ADOConnection1.BeginTrans;
        While adoquery2.Locate('No_Solicitud', alineardatos(inttostr(adotable1.FieldValues['Consecutivo_sol']),8), [loPartialKey]) Do
        Begin
          adotable1.Edit;
          adotable1.FieldValues['Consecutivo_sol']:=adotable1.FieldValues['Consecutivo_sol']+1;
          adotable1.Post;
        End;
        edit1.Text:=alineardatos(inttostr(adotable1.FieldValues['Consecutivo_sol']),8);
        adoquery2.Append;
        adoquery2.FieldValues['No_Solicitud'] := Edit1.text;
        adoquery2.FieldValues['Fecha'] := datetimepicker1.DateTime;
        adoquery2.FieldValues['No_Admision'] := DBlookupComboBox1.KeyValue;
        adoquery2.FieldValues['Empresa_Solicita'] := Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja'];
        adoquery2.FieldValues['Area_Solicita'] := Datamodule1.ADOQuery1.FieldValues['Area_Trabaja'];
        adoquery2.FieldValues['Empresa_Producto'] := ADOQuery4.FieldValues['Empresa'];
        adoquery2.FieldValues['Area_Producto'] := ADOQuery4.FieldValues['Codigo'];
        adoquery2.FieldValues['Estado']        := 0;
        adoquery2.Post;

        //Graba el Detalle
        Afecta_I:=0;
        For i:=1 TO (StringGrid1.RowCount-2) Do
        Begin
          adoquery3.Append;
          adoquery3.FieldValues['No_Solicitud'] := Edit1.text;
          adoquery3.FieldValues['Sec_Solicitud'] := StringGrid1.Cells[0,i];
          adoquery3.FieldValues['Tp_PST'] := StringGrid1.Cells[1,i];
          adoquery3.FieldValues['Cd_PST'] := StringGrid1.Cells[2,i];
          adoquery3.FieldValues['Descripcion'] := StringGrid1.Cells[3,i];
          adoquery3.FieldValues['Unidades_Solicitadas'] := strtofloat(StringGrid1.Cells[4,i]);
          adoquery3.FieldValues['Unidades_Entregadas'] := 0;
          adoquery3.FieldValues['Observacion'] := StringGrid1.Cells[5,i];
          If StringGrid1.Cells[1,i] = 'P' Then Afecta_I:=1;

          adoquery3.Post;
        end;
        DataModule1.ADOConnection1.CommitTrans;

        //Limpia Campos
        StringGrid1.RowCount:=2;
        StringGrid1.Cells[1,1] := '';
        StringGrid1.Cells[2,1] := '';
        StringGrid1.Cells[3,1] := '';
        StringGrid1.Cells[4,1] := '';
        StringGrid1.Cells[5,1] := '';
        DateTimePicker1.DateTime:=Now;
        Maskedit1.Text:='0';
        Edit1.Text:='';
        DBLookupComboBox3.keyvalue:='';
        DBLookupComboBox4.keyvalue:='';
        except
          DataModule1.ADOConnection1.RollbackTrans;
        raise;
      end;
      adoquery3.close;
      adoquery2.close;
    end
    Else Begin
      Showmessage('La Solicitud no se puede grabar hasta que se diligencien todos los campos.');
    end;
  end
  Else Begin
    Showmessage('La Solicitud no se puede grabar hasta que se le ingresen productos');
  end;
  Close;
end;

procedure TFSolicitaCargo.BitBtn3Click(Sender: TObject);
var i:extended;
begin
  if trim(Maskedit1.Text) = '' then Maskedit1.Text:='0';

  If (Combobox1.Text='PAQUETE') AND ((MaskEdit2.Text = '') OR (MaskEdit2.Text = '0')) Then
  Begin
    Showmessage('ERROR: Debe ingresar una Cantidad en el Paquete.');
    exit;
  End;

  If ((Combobox1.Text='P') OR (Combobox1.Text='S')) AND ((MaskEdit1.Text = '') OR (MaskEdit1.Text = '0')) Then
  Begin
    Showmessage('ERROR: Debe ingresar una Cantidad');
    exit;
  End;

  If (Combobox1.Text='') Then
  Begin
    Showmessage('ERROR: No ha seleccionado ningun tipo de Producto/Servicio/Tarifa');
    exit;
  End
  Else If (Combobox1.Text='P') AND (DBLookupComboBox3.Text = '') Then
  Begin
    Showmessage('ERROR: Debe ingresar el Producto.');
    exit;
  End
  Else If (Combobox1.Text='S') AND (DBLookupComboBox2.Text = '') Then
  Begin
    Showmessage('ERROR: Debe ingresar el Servicio.');
    exit;
  End
  Else If(Combobox1.Text='T') AND (DBLookupComboBox7.Text = '') Then
  Begin
    Showmessage('ERROR: Debe ingresar el Tarifa.');
    exit;
  End
  Else If(Combobox1.Text='O') AND (Edit3.Text = '') Then
  Begin
    Showmessage('ERROR: Debe Ingresar una descripción.');
    exit;
  End;


  if (trystrtofloat(maskedit1.Text,i)) then
  Begin
    StringGrid1.Cells[0,StringGrid1.RowCount-1] := inttostr(StringGrid1.RowCount-1);
    StringGrid1.Cells[1,StringGrid1.RowCount-1] := Combobox1.Text;

    If Combobox1.Text='P' Then
    Begin
      StringGrid1.Cells[2,StringGrid1.RowCount-1] := DBLookupCombobox3.Text;
      StringGrid1.Cells[3,StringGrid1.RowCount-1] := DBLookupCombobox4.Text;
      StringGrid1.Cells[4,StringGrid1.RowCount-1] := Maskedit1.Text;
      StringGrid1.Cells[5,StringGrid1.RowCount-1] := Edit4.Text;
    End
    Else If Combobox1.Text='S' Then
    Begin
      StringGrid1.Cells[2,StringGrid1.RowCount-1] := DBLookupCombobox2.Text;
      StringGrid1.Cells[3,StringGrid1.RowCount-1] := DBLookupCombobox6.Text;
      StringGrid1.Cells[4,StringGrid1.RowCount-1] := Maskedit1.Text;
      StringGrid1.Cells[5,StringGrid1.RowCount-1] := Edit4.Text;
    End
    Else If Combobox1.Text='T' Then
    Begin
      StringGrid1.Cells[2,StringGrid1.RowCount-1] := DBLookupCombobox7.Text;
      StringGrid1.Cells[3,StringGrid1.RowCount-1] := DBLookupCombobox8.Text;
      StringGrid1.Cells[4,StringGrid1.RowCount-1] := Maskedit1.Text;
      StringGrid1.Cells[5,StringGrid1.RowCount-1] := Edit4.Text;
    End
    Else If Combobox1.Text='PAQUETE' Then
    Begin
      StringGrid1.Cells[2,StringGrid1.RowCount-1] := '';
      StringGrid1.Cells[3,StringGrid1.RowCount-1] := DBLookupCombobox13.Text;
      StringGrid1.Cells[4,StringGrid1.RowCount-1] := Maskedit2.Text;
      StringGrid1.Cells[5,StringGrid1.RowCount-1] := Edit4.Text;
    End
    Else If Combobox1.Text='O' Then
    Begin
      StringGrid1.Cells[2,StringGrid1.RowCount-1] := '';
      StringGrid1.Cells[3,StringGrid1.RowCount-1] := Edit3.Text;
      StringGrid1.Cells[4,StringGrid1.RowCount-1] := Maskedit1.Text;
      StringGrid1.Cells[5,StringGrid1.RowCount-1] := Edit4.Text;
    End;

    StringGrid1.Cells[1,StringGrid1.RowCount] := '';
    StringGrid1.Cells[2,StringGrid1.RowCount] := '';
    StringGrid1.Cells[3,StringGrid1.RowCount] := '';
    StringGrid1.Cells[4,StringGrid1.RowCount] := '';
    StringGrid1.Cells[5,StringGrid1.RowCount] := '';
    StringGrid1.RowCount := StringGrid1.RowCount + 1;
    Maskedit1.Text:='0';
  end
  Else Begin
    showmessage('Valores Invalidos.');
  end;

  If Combobox1.Text='P' Then
    DBLookupCombobox3.SetFocus
  Else If Combobox1.Text='S' Then
    DBLookupCombobox2.SetFocus
  Else If Combobox1.Text='T' Then
    DBLookupCombobox7.SetFocus
  Else If Combobox1.Text='PAQUETE' Then
    DBLookupCombobox13.SetFocus
  Else If Combobox1.Text='O' Then
    Edit3.SetFocus;
end;

procedure TFSolicitaCargo.BitBtn2Click(Sender: TObject);
var i:integer;
begin
  if MessageDlg('Esta seguro de limpiar la Grilla?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    for i:=1 to stringgrid1.RowCount do
    begin
      StringGrid1.Cells[1,i] := '';
      StringGrid1.Cells[2,i] := '';
      StringGrid1.Cells[3,i] := '';
      StringGrid1.Cells[4,i] := '';
    end;
    StringGrid1.RowCount:=2;
    Maskedit1.Text:='';
  end;
end;

procedure TFSolicitaCargo.FormCreate(Sender: TObject);
begin
DateTimePicker1.DateTime:=Now;
  adotable1.open;
  ADOQuery1.Parameters.ParamValues['adm'] := Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja'];
  ADOQuery1.open;
  DBlookupComboBox1.KeyValue:=ADOquery1.FieldValues['NO_ADMISION'];

  StringGrid1.Cells[1,0]:= 'Tipo';
  StringGrid1.Cells[2,0]:= 'Producto/Servicio/Tarifa';
  StringGrid1.Cells[3,0]:= 'Descripción';
  StringGrid1.Cells[4,0]:= 'Cantidad';
  StringGrid1.Cells[5,0]:= 'Observacion';

  Edit2.Text:= Datamodule1.ADOQuery1.FieldValues['Descripcion_Emp'] + ' - '+Datamodule1.ADOQuery1.FieldValues['Descripcion_Area'];

  StringGrid1.ColWidths[0]:= 50;
  StringGrid1.ColWidths[1]:= 50;
  StringGrid1.ColWidths[2]:= 100;
  StringGrid1.ColWidths[3]:= 300;
  StringGrid1.ColWidths[4]:= 100;
  StringGrid1.ColWidths[5]:= 100;

  Maskedit1.Text:='';

  DBlookupComboBox3.Visible:=False;
  DBlookupComboBox4.Visible:=False;
  DBlookupComboBox2.Visible:=False;
  DBlookupComboBox6.Visible:=False;
  DBlookupComboBox7.Visible:=False;
  DBlookupComboBox8.Visible:=False;

  ADOQuery10.Close;
  ADOQuery10.Parameters.ParamValues['Emp']:=Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja'];
  ADOQuery10.Parameters.ParamValues['Area']:=Datamodule1.ADOQuery1.FieldValues['Area_Trabaja'];
  ADOQuery10.Open;
  ADOQuery11.Close;
  ADOQuery11.Parameters.ParamValues['Emp']:=Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja'];
  ADOQuery11.Parameters.ParamValues['Area']:=Datamodule1.ADOQuery1.FieldValues['Area_Trabaja'];
  ADOQuery11.Open;
  ADOQuery12.Close;
  ADOQuery12.Parameters.ParamValues['Emp']:=Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja'];
  ADOQuery12.Parameters.ParamValues['Area']:=Datamodule1.ADOQuery1.FieldValues['Area_Trabaja'];
  ADOQuery12.Open;
  ADOQuery13.Open;
  ADOQuery4.Open;
end;

end.
