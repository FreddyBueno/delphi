unit UCopiaFormatos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Data.Win.ADODB, Vcl.ComCtrls, Vcl.DBCtrls;

type
  TFCopiaFMT = class(TForm)
    ADOC: TADOConnection;
    Panel1: TPanel;
    lbl: TLabel;
    Ed: TEdit;
    Label1: TLabel;
    btn: TButton;
    ADOQOrigen: TADOQuery;
    Label2: TLabel;
    ADOQDestino: TADOQuery;
    PB: TProgressBar;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    ADOD: TADOConnection;
    mmo: TMemo;
    DBLO: TDBLookupComboBox;
    DSBDOrigen: TDataSource;
    ADOQBD: TADOQuery;
    Label6: TLabel;
    EdDest: TEdit;
    DSFmto: TDataSource;
    ADOQFmto: TADOQuery;
    EdFmt: TDBLookupComboBox;
    Edit2: TEdit;
    procedure btnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBLOEnter(Sender: TObject);
    procedure EdFmtEnter(Sender: TObject);
    procedure DSBDOrigenDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCopiaFMT: TFCopiaFMT;

implementation

uses udatamodule1;

{$R *.dfm}

procedure TFCopiaFMT.btnClick(Sender: TObject);
Var NoFmt:String;
begin
  ADOC.Close;
  ADOC.DefaultDatabase:=Edit2.Text;

 // ADOC.ConnectionString:='Provider='+chr(39)+Datamodule1.Conex+chr(39)+';Password=espartaguia;Persist Security Info=True;User ID=prateinco;Initial Catalog=Comunes;Data Source='+ Ed.Text;

  ADOC.ConnectionString:='Provider=SQLOLEDB;Password=espartaguia;Persist Security Info=True;User ID=prateinco;Initial Catalog=Comunes;Data Source='+ Ed.Text;
  try
     ADOC.Open;
  except
    Showmessage('El servidor no existe, pruebe de nuevo.');
    Close;
  end;

  ADOD.Close;
  ADOD.DefaultDatabase:=EDDest.Text;
  //ADOD.ConnectionString:='Provider='+chr(39)+Datamodule1.Conex+chr(39)+';Password=espartaguia;Persist Security Info=True;User ID=prateinco;Initial Catalog=Comunes;Data Source='+ Edit1.Text;
 ADOD.ConnectionString:='Provider=SQLOLEDB;Password=espartaguia;Persist Security Info=True;User ID=prateinco;Initial Catalog=Comunes;Data Source='+ Edit1.Text;

  try
     ADOD.Open;
  except
    Showmessage('El servidor no existe, pruebe de nuevo.');
    Close;
  end;

  //Copia Formatos
  ADOQDestino.Close;
  ADOQDestino.SQL.Clear;
  ADOQDestino.SQL.Add('SELECT * FROM FDFormatos ORDER BY Codigo');
  ADOQDestino.Open;
  ADOQDestino.Last;
  if ADOQDestino.RecordCount = 0 then NoFmt := '100'
  Else NoFmt := inttostr(ADOQDestino.FieldValues['Codigo'] + 1);

  ADOQOrigen.Close;
  ADOQOrigen.SQL.Clear;
  ADOQOrigen.SQL.Add('SELECT * FROM FDFormatos WHERE Codigo = '+chr(39)+EdFmt.KeyValue+chr(39));
  ADOQOrigen.Open;
  if ADOQOrigen.RecordCount = 0  then ShowMessage('No se Encontraron registros en el Origen');

  ADOQDestino.Append;
  ADOQDestino.FieldValues['Codigo']      := NoFmt;
  ADOQDestino.FieldValues['Descripcion'] := ADOQOrigen.FieldValues['Descripcion'];
  ADOQDestino.FieldValues['Icono']       := ADOQOrigen.FieldValues['Icono'];
  ADOQDestino.FieldValues['MultiLine']   := ADOQOrigen.FieldValues['MultiLine'];
  ADOQDestino.Post;

  //Copia Secciones
  ADOQDestino.Close;
  ADOQDestino.SQL.Clear;
  ADOQDestino.SQL.Add('SELECT * FROM FDSecciones WHERE Codigo_Formato = 1');
  ADOQDestino.Open;

  ADOQOrigen.Close;
  ADOQOrigen.SQL.Clear;
  ADOQOrigen.SQL.Add('SELECT * FROM FDSecciones WHERE Codigo_Formato = '+chr(39)+EdFmt.KeyValue+chr(39));
  ADOQOrigen.Open;
  PB.Position := ADOQOrigen.RecordCount;

  ADOQOrigen.First;
  while NOT ADOQOrigen.Eof do
  Begin
    PB.Position := PB.Position + 1;
    ADOQDestino.Append;
    ADOQDestino.FieldValues['Codigo_Formato'] := NoFmt;
    ADOQDestino.FieldValues['Codigo_Seccion'] := ADOQOrigen.FieldValues['Codigo_Seccion'];
    ADOQDestino.FieldValues['Descripcion']    := ADOQOrigen.FieldValues['Descripcion'];
    ADOQDestino.FieldValues['Imagen']         := ADOQOrigen.FieldValues['Imagen'];
    ADOQDestino.Post;

    ADOQOrigen.Next;
  End;

  //Copia Campos
  ADOQDestino.Close;
  ADOQDestino.SQL.Clear;
  ADOQDestino.SQL.Add('SELECT * FROM FDCampos WHERE Codigo_Formato = 1');
  ADOQDestino.Open;

  ADOQOrigen.Close;
  ADOQOrigen.SQL.Clear;
  ADOQOrigen.SQL.Add('SELECT * FROM FDCampos WHERE Codigo_Formato = '+chr(39)+EdFmt.KeyValue+chr(39));
  ADOQOrigen.Open;
  ADOQOrigen.First;
  PB.Position := ADOQOrigen.RecordCount;
  while NOT ADOQOrigen.Eof do
  Begin
    PB.Position := PB.Position + 1;

    ADOQDestino.Append;
    ADOQDestino.FieldValues['Codigo_Formato'] := NoFmt;
    ADOQDestino.FieldValues['Codigo_Seccion'] := ADOQOrigen.FieldValues['Codigo_Seccion'];
    ADOQDestino.FieldValues['Codigo_Campo']   := ADOQOrigen.FieldValues['Codigo_Campo'];
    ADOQDestino.FieldValues['Descripcion']    := ADOQOrigen.FieldValues['Descripcion'];
    ADOQDestino.FieldValues['Tipo']           := ADOQOrigen.FieldValues['Tipo'];
    ADOQDestino.FieldValues['Tamaño']         := ADOQOrigen.FieldValues['Tamaño'];
    ADOQDestino.FieldValues['Tabla']          := ADOQOrigen.FieldValues['Tabla'];
    ADOQDestino.FieldValues['Campo']          := ADOQOrigen.FieldValues['Campo'];
    ADOQDestino.FieldValues['CampoDesc']      := ADOQOrigen.FieldValues['CampoDesc'];
    ADOQDestino.FieldValues['Obligatorio']    := ADOQOrigen.FieldValues['Obligatorio'];
    ADOQDestino.FieldValues['Advertencia']    := ADOQOrigen.FieldValues['Advertencia'];
    ADOQDestino.FieldValues['BaseDatos']      := ADOQOrigen.FieldValues['BaseDatos'];
    ADOQDestino.FieldValues['TextoFijo']      := ADOQOrigen.FieldValues['TextoFijo'];
    ADOQDestino.FieldValues['Texto']          := ADOQOrigen.FieldValues['Texto'];
    ADOQDestino.FieldValues['X']              := ADOQOrigen.FieldValues['X'];
    ADOQDestino.FieldValues['Y']              := ADOQOrigen.FieldValues['Y'];
    ADOQDestino.FieldValues['Label']          := ADOQOrigen.FieldValues['Label'];
    ADOQDestino.Post;

    ADOQOrigen.Next;
  End;

  //Copia Campos
  ADOQDestino.Close;
  ADOQDestino.SQL.Clear;
  ADOQDestino.SQL.Add('SELECT * FROM FDSubCampos WHERE Codigo_Formato = 1');
  ADOQDestino.Open;

  ADOQOrigen.Close;
  ADOQOrigen.SQL.Clear;
  ADOQOrigen.SQL.Add('SELECT * FROM FDSubCampos WHERE Codigo_Formato = '+chr(39)+EdFmt.KeyValue+chr(39));
  ADOQOrigen.Open;
  PB.Position := ADOQOrigen.RecordCount;
  ADOQOrigen.First;
  while NOT ADOQOrigen.Eof do
  Begin
    PB.Position := PB.Position + 1;

    ADOQDestino.Append;
    ADOQDestino.FieldValues['Codigo_Formato'] := NoFmt;
    ADOQDestino.FieldValues['Codigo_Seccion'] := ADOQOrigen.FieldValues['Codigo_Seccion'];
    ADOQDestino.FieldValues['Codigo_Campo']   := ADOQOrigen.FieldValues['Codigo_Campo'];
    ADOQDestino.FieldValues['Codigo_SubCampo']:= ADOQOrigen.FieldValues['Codigo_SubCampo'];
    ADOQDestino.FieldValues['Descripcion']    := ADOQOrigen.FieldValues['Descripcion'];
    ADOQDestino.FieldValues['Tipo']           := ADOQOrigen.FieldValues['Tipo'];
    ADOQDestino.FieldValues['Tamaño']         := ADOQOrigen.FieldValues['Tamaño'];
    ADOQDestino.FieldValues['Tabla']          := ADOQOrigen.FieldValues['Tabla'];
    ADOQDestino.FieldValues['Campo']          := ADOQOrigen.FieldValues['Campo'];
    ADOQDestino.FieldValues['Obligatorio']    := ADOQOrigen.FieldValues['Obligatorio'];
    ADOQDestino.FieldValues['Advertencia']    := ADOQOrigen.FieldValues['Advertencia'];
    ADOQDestino.FieldValues['Nlinea']         := ADOQOrigen.FieldValues['Nlinea'];
    ADOQDestino.FieldValues['X']              := ADOQOrigen.FieldValues['X'];
    ADOQDestino.FieldValues['Y']              := ADOQOrigen.FieldValues['Y'];
    ADOQDestino.Post;

    ADOQOrigen.Next;
  End;

  //Copia Opciones
  ADOQDestino.Close;
  ADOQDestino.SQL.Clear;
  ADOQDestino.SQL.Add('SELECT * FROM FDOpciones WHERE Codigo_Formato = 1');
  ADOQDestino.Open;

  ADOQOrigen.Close;
  ADOQOrigen.SQL.Clear;
  ADOQOrigen.SQL.Add('SELECT * FROM FDOpciones WHERE Codigo_Formato = '+chr(39)+EdFmt.KeyValue+chr(39));
  ADOQOrigen.Open;
  PB.Position := ADOQOrigen.RecordCount;
  ADOQOrigen.First;
  while NOT ADOQOrigen.Eof do
  Begin
    PB.Position := PB.Position + 1;

    ADOQDestino.Append;
    ADOQDestino.FieldValues['Codigo_Formato'] := NoFmt;
    ADOQDestino.FieldValues['Codigo_Seccion'] := ADOQOrigen.FieldValues['Codigo_Seccion'];
    ADOQDestino.FieldValues['Codigo_Campo']   := ADOQOrigen.FieldValues['Codigo_Campo'];
    ADOQDestino.FieldValues['Codigo_SubCampo']:= ADOQOrigen.FieldValues['Codigo_SubCampo'];
    ADOQDestino.FieldValues['Valor']          := ADOQOrigen.FieldValues['Valor'];
    ADOQDestino.FieldValues['Imagen']         := ADOQOrigen.FieldValues['Imagen'];
    ADOQDestino.Post;

    ADOQOrigen.Next;
  End;
  ShowMessage('Formato copiado con el Codigo No: ' +NoFmt);
end;

procedure TFCopiaFMT.DBLOEnter(Sender: TObject);
begin
  ADOC.Close;
  ADOC.ConnectionString:='Provider='+chr(39)+Datamodule1.Conex+chr(39)+';Password=espartaguia;Persist Security Info=True;User ID=prateinco;Initial Catalog=Comunes;Data Source='+ Ed.Text;
  try
     ADOC.Open;
  except
    Showmessage('El servidor no existe, pruebe de nuevo.');
    Close;
  end;

  ADOQBD.Open;
end;

procedure TFCopiaFMT.DSBDOrigenDataChange(Sender: TObject; Field: TField);
begin
  if  ADOQBD.FieldValues['name'] <> null then Edit2.Text := ADOQBD.FieldValues['name'];
end;

procedure TFCopiaFMT.EdFmtEnter(Sender: TObject);
begin
  ADOC.Close;
  ADOC.DefaultDatabase:=Edit2.text;
  ADOC.ConnectionString:='Provider='+chr(39)+Datamodule1.Conex+chr(39)+';Password=espartaguia;Persist Security Info=True;User ID=prateinco;Initial Catalog=Comunes;Data Source='+ Ed.Text;
  try
     ADOC.Open;
  except
    Showmessage('El servidor no existe, pruebe de nuevo.');
    Close;
  end;

  ADOQFmto.Open;
end;

procedure TFCopiaFMT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFCopiaFMT.FormCreate(Sender: TObject);
begin
  Edit1.Text := DataModule1.host;
  Eddest.Text  := Datamodule1.Bd;
end;

end.
