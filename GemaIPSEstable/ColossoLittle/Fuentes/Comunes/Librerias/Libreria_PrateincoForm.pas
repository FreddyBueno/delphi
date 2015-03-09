unit Libreria_PrateincoForm;

interface

uses DB, SysUtils,Dialogs, Windows,Winsock,Grids,IdSMTP,StdCtrls,Variants,DBGrids,
     IdMessage,Classes,Graphics,Printers,Forms,ExtCtrls,Registry,dateutils,math,
     Controls,Buttons,DBCtrls,Data.Win.ADODB;

type
  TRGBTripleArray = array[0..32767] of TRGBTriple;
  PRGBTripleArray = ^TRGBTripleArray;

var
  keyBDBuscar : string;

Function BDBuscar(qry:string;campo_retorno:string;campo_llave:string):string;
Procedure BDExecSQL(qry:string);
Function BDExecSQLGema(Tabla:string;buffer:TDataset):Boolean;
Procedure ImportaPlano(c1:string;c2:string);
Procedure ReporteadorP(Tit:string;c1:string;Filtro:String);
Procedure MuestraconAcceso(Sender:Tobject);
Procedure Captura2(c1:string);
Procedure Captura(c1:string;filtro:string);
Procedure FormaAI(c1:string);
Procedure CapturaPersona(Tipo:variant;Nro:variant);
Procedure CapturaEmpresa(Tipo:variant;Nro:variant);
Procedure Carga_Combo(combo:TDBLookUpComboBox;Tabla,campomuestra,campollave:String);
Procedure ColocaMenu(Sender:Tobject;tabla:string);
Function UltimoRegistro(Tabla:string;campo:string):string;
//Procedure MsgWait(msg:string);
Procedure LeaFieldJPG(Campo:TDataSet;ImgProduct:Timage;nom:string);
Procedure SalveFieldJPG(Campo:TDataSet;ImgProduct:Timage;nom:string);
Function InputButton():integer;
procedure PrintScreen(img:Timage);

implementation

uses NB30,UDatamodule1,ImportaPlanos,CapturaBasica2,
FActivarInactivar,CapturaBasica,FrameMenuOpcion,FrameListaTabla2,jpeg,SAPacientes2,SACreaEmpresas,Reporteador ;


procedure PrintScreen(img:Timage);
var
  DeskTop : TCanvas ;
begin
  DeskTop := TCanvas.Create ;
  try
    with DeskTop do
      Handle := GetWindowDC (GetDesktopWindow) ;
      with Img.Canvas do
        CopyRect (Rect (0, 0, 200, 200),DeskTop,Rect (0, 0, 200, 200))
      finally
    DeskTop.Free
  end
end;

//Esta pendiente el desarrollo este procedimiento por desconocer como activar on....
Function InputButton():integer;
Var
  fm :TForm;
  bt1,bt2:TButton;
Begin
  fm := TForm.Create(Application);
  fm.Top := 0;
  fm.Left := 0;
  fm.Height := 300;
  fm.Width := 100;

  bt1 := TButton.Create(fm);
  bt1.Parent := fm;
  bt1.Top := fm.Top +10;
  bt1.Left := fm.Left +10;
  bt1.Height := 30;
  bt1.Width := 60;
  bt1.Caption := 'hola';

  bt2 := TButton.Create(fm);
  bt2.Parent := fm;
  bt2.Top := fm.Top +10;
  bt2.Left := fm.Left +80;
  bt2.Height := 30;
  bt2.Width := 60;
  bt2.Caption := 'hola';

  fm.ShowModal;
End;

Procedure SalveFieldJPG(Campo:TDataSet;ImgProduct:Timage;nom:string);
var
  LStream: TStream;
  LJPEGImage : TJPEGImage;
begin
  if Assigned(ImgProduct.Picture.Graphic) then
  begin
    LStream :=  Campo.CreateBlobStream(Campo.FieldByName(nom), bmwrite);
    LJPEGImage := TJPEGImage.Create;
    try
      try
        LJPEGImage.Assign(ImgProduct.Picture);
        LJPEGImage.SaveToStream(LStream);
      except
        //showmessage('no se pudo asignar');
      end;
    finally
      FreeAndNil(LStream);
      FreeAndNil(LJPEGImage);
    end;
  end;
end;

Procedure LeaFieldJPG(Campo:TDataSet;ImgProduct:Timage;nom:string);
var
  LStream : TStream;
  LJPEGImage : TJPEGImage;
Begin
  with imgProduct do
  begin
     LStream :=  Campo.CreateBlobStream(Campo.FieldByName(nom), bmRead);
     LJPEGImage := TJPEGImage.Create;
     if LStream.Size > 0 then
     Begin
       try
          LJPEGImage.LoadFromStream(LStream);
          Picture.Assign(LJPEGImage);
       except
         //on E: Exception do showmessage('La imagen grabada no es JPG, por favor grabe una nueva imagen.');
          raise;
       end;
     End;
  end;
  FreeAndNil(LStream);
  FreeAndNil(LJPEGImage);
End;

{Procedure MsgWait(msg:string);
var fb:TPrateincoMsgWait;
Begin
  fb := TPrateincoMsgWait.create(application);
  try
    fb.Caption := msg;
    fb.Show;
  except
    fb.free;
  end;
End;}


Procedure ColocaMenu(Sender:Tobject;tabla:string);
var FrameMnOp:TFrameMnOp;
    i,tam:integer;
Begin
  FrameMnOp := TFrameMnOp.create(TComponent(Sender));
  FrameMnOp.parent := TWinControl(sender);
  FrameMnOp.Align := alLeft;
  FrameMnOp.Hint := TForm(Sender).Caption;
  FrameMnOp.HelpKeyword := Tabla;
  tam := FrameMnOp.Width;
  For i := 1 To trunc(tam/6) Do
  Begin
    FrameMnOp.Width := i*6;
  End;
  Tform(Sender).Refresh;
End;

Procedure Carga_Combo(combo:TDBLookUpComboBox;Tabla,campomuestra,campollave:String);
var
  ADOQuery:TADOQuery;
  DS:TDataSource;
begin
  ADOQuery := TADOQuery.Create(application);
  ADOQuery.Connection := Datamodule1.ADOConnection1;
  ADOQuery.SQL.Clear;
  ADOQuery.SQL.Add('SELECT '+campomuestra+' as cd '+','+campollave+' as cll '+
                   'FROM '+tabla+
                   ''); //Para futuro where
  DS := TDataSource.Create(application);
  DS.DataSet := ADOQuery;
  ADOQuery.Open;
  Combo.ListSource := DS;
  Combo.ListField  := 'cd';
  Combo.KeyField   := 'cll';
end;

Function UltimoRegistro(Tabla:string;campo:string):string;
var
  ADOQuery:TADOQuery;
begin
  ADOQuery := TADOQuery.Create(application);
  ADOQuery.Connection := Datamodule1.ADOConnection1;
  ADOQuery.SQL.Clear;
  ADOQuery.SQL.Add('SELECT max('+campo+') as Ultimo '+
                   'FROM '+tabla+
                   ''); //Para futuro where
  ADOQuery.Open;
  if ADOQuery.RecordCount = 1 then
  Begin
    if ADOQuery.FieldValues['Ultimo'] <> null then
      UltimoRegistro := inttostr(strtoint(ADOQuery.FieldValues['Ultimo']) + 1)
    Else
      UltimoRegistro := '1';
  End
  Else if ADOQuery.RecordCount = 0 then
  Begin
    UltimoRegistro := '1';
  End;

  ADOQuery.Close;
  ADOQuery.Destroy;
end;

Procedure CapturaPersona(Tipo:variant;Nro:variant);
begin
  frmingresopacientes := tfrmingresopacientes.create(application);
  if tipo <> null then frmingresopacientes.DBLookupComboBox4.KeyValue := Tipo;
  if Nro <> null then frmingresopacientes.Edit1.Text := Nro;
  try
    MuestraconAcceso(frmingresopacientes);
  except
    frmingresopacientes.free;
  end;
end;

Procedure CapturaEmpresa(Tipo:variant;Nro:variant);
begin
  FrmIngresoEmpresas := tFrmIngresoEmpresas.create(application);
  if tipo <> null then FrmIngresoEmpresas.DBLookupComboBox4.KeyValue := Tipo;
  if Nro <> null then FrmIngresoEmpresas.Edit1.Text := Nro;
  try
    MuestraconAcceso(FrmIngresoEmpresas);
  except
    FrmIngresoEmpresas.free;
  end;
end;

Procedure MuestraconAcceso(Sender:Tobject);
var
  Forma : TForm;
  ADOQuery:TADOQuery;
begin
  Forma := Sender as TForm;
  if Assigned(Forma) then
  begin
    Datamodule1.ADOConnection1.BeginTrans;

    ADOQuery := TADOQuery.Create(application);
    ADOQuery.Connection := Datamodule1.ADOConnection1;
    ADOQuery.SQL.Clear;
    ADOQuery.SQL.Add('SELECT * FROM SEFormas WHERE Forma = '+chr(39)+sender.ClassName+chr(39));
    ADOQuery.Open;

    If ADOQuery.RecordCount = 1 then
    begin
      ADOQuery.Edit;
      ADOQuery.FieldValues['DescripcionForma']   := Forma.Caption;
      ADOQuery.FieldValues['UltimoAcceso']       := Forma.Owner.Name;
      ADOQuery.FieldValues['FechaUA']            := now;
      ADOQuery.FieldValues['UsuarioUA']          := Datamodule1.ADOQuery1.FieldValues['id'];
      ADOQuery.Post;
    end
    else begin
      ADOQuery.Append;
      ADOQuery.FieldValues['Forma']              := sender.ClassName;
      ADOQuery.FieldValues['DescripcionForma']   := Forma.Caption;
      ADOQuery.FieldValues['UltimoAcceso']       := Forma.Owner.Name;
      ADOQuery.FieldValues['FechaUA']            := now;
      ADOQuery.FieldValues['UsuarioUA']          := Datamodule1.ADOQuery1.FieldValues['id'];
      ADOQuery.Post;
    end;

    ADOQuery.Close;
    ADOQuery.SQL.Clear;
    ADOQuery.SQL.Add('SELECT *');
    ADOQuery.SQL.Add('FROM SEAccesosForma,SERolxPersona');
    ADOQuery.SQL.Add('WHERE SEAccesosForma.Tipo_Rol = SERolxPersona.Tipo_Rol AND');
    ADOQuery.SQL.Add('Forma = '+chr(39)+sender.ClassName+chr(39)+' AND');
    ADOQuery.SQL.Add('ID = '+floattostr(Datamodule1.ADOQuery1.FieldValues['id']));
    ADOQuery.Open;
    If ADOQuery.RecordCount = 0 then
    begin
      ADOQuery.Append;
      ADOQuery.FieldValues['Tipo_Rol']           := Datamodule1.ADOQuery1.FieldValues['Tipo_Rol'];
      ADOQuery.FieldValues['Forma']              := sender.ClassName;
      ADOQuery.FieldValues['Acceso']             := Datamodule1.ADOParamGeneral.FieldValues['Acceso_Programas'];
      ADOQuery.Post;
    end;

    Datamodule1.ADOConnection1.CommitTrans;

    If (ADOQuery.FieldValues['Acceso'] = 'S') or (Datamodule1.ADOQuery1.FieldValues['id']=0) Then
      Forma.Show
    Else Begin
      Forma.free;
      Showmessage('Lo sentimos, no posee privilegios para ingresar a esta Forma.');
    End;
  end;
end;

Procedure ImportaPlano(c1:string;c2:string);
begin
  ImportPlano := tImportPlano.create(application);
  ImportPlano.Edit4.Text:=c1;
  ImportPlano.Edit1.Text:=c2;
  try
    MuestraconAcceso(ImportPlano);
  except
    ImportPlano.free;
  end;
end;

Procedure ReporteadorP(Tit:string;c1:string;Filtro:String);
begin
  if c1 <> '' then
  Begin
    GenReport := tGenReport.create(application);
    try
      GenReport.generareporte(c1, Tit,'', '', '','',0,false);
    except
      GenReport.free;
    end;
  End
  Else Begin
    GenReport := tGenReport.create(application);
    try
      GenReport.Show;
    except
      GenReport.free;
    end;
  End;
end;

Procedure Captura2(c1:string);
begin
  CapturaB2 := tCapturaB2.create(application);
  CapturaB2.Edit1.Text:= c1;
  try
    MuestraconAcceso(CapturaB2);
    CapturaB2.Edit1Change(Nil);
  except
    CapturaB2.free;
  end;
end;

Procedure Captura(c1:string;filtro:string);
begin
  CapturaB := tCapturaB.create(application);
  CapturaB.Edit1.Text:= c1;
  if filtro <> '' then
  Begin
    CapturaB.ADOTableBasica.Filter := Filtro;
    CapturaB.ADOTableBasica.Filtered := True;
  End;
  try
    MuestraconAcceso(CapturaB);
  except
    CapturaB.free;
  end;
end;

Procedure FormaAI(c1:string);
begin
  FrmAI := tFrmAI.create(application);
  FrmAI.Edit1.Text:= c1;
  try
    MuestraconAcceso(FrmAI);
  except
    FrmAI.free;
  end;
end;

Function BDBuscar(qry:string;campo_retorno:string;campo_llave:string):string;
var
  ADOQuery:TADOQuery;
begin
  ADOQuery := TADOQuery.Create(application);
  ADOQuery.Connection := Datamodule1.ADOConnection1;
  ADOQuery.SQL.Clear;
  ADOQuery.SQL.Add(qry);
  ADOQuery.Open;
  if ADOQuery.RecordCount = 1 then
  Begin
    if ADOQuery.FieldValues[campo_retorno] <> Null Then BDBuscar := ADOQuery.FieldValues[campo_retorno]
    Else BDBuscar := '';
    if ADOQuery.FieldValues[campo_llave] <> Null Then keyBDBuscar := ADOQuery.FieldValues[campo_llave]
    Else keyBDBuscar := '';
  End
  Else if ADOQuery.RecordCount = 0 then
  Begin
    BDBuscar :='ERROR: No hay registros para esta selección';
  End
  Else Begin
    ADOQuery.First;
    if ADOQuery.FieldValues[campo_retorno] <> Null Then BDBuscar := ADOQuery.FieldValues[campo_retorno]
    Else BDBuscar := '';
    if ADOQuery.FieldValues[campo_llave] <> Null Then keyBDBuscar := ADOQuery.FieldValues[campo_llave]
    Else keyBDBuscar := '';
  End;

  ADOQuery.Close;
  ADOQuery.Free;
end;

Function BDExecSQLGema(Tabla:string;buffer:TDataset):Boolean;
var
  ADOConn :TADOConnection;
  ADOQuery:TADOQuery;
  cadena:string;
  i:Integer;
begin
  try
    BDExecSQLGema := true;
    cadena:='Provider='+chr(39)+Datamodule1.Conex+chr(39)+';Password=espartaguia;Persist Security Info=True;User ID=prateinco;Initial Catalog=GemaIPS2012Consulta;Data Source=clientes.prateinco.com\PRATEINCO';
    ADOConn  := TADOConnection.Create(application);
    ADOConn.ConnectionString := cadena;
    ADOConn.LoginPrompt := False;
    ADOConn.KeepConnection := True;
    ADOConn.Connected := true;
    ADOConn.BeginTrans;
    if ADOConn.Connected then
    Begin
      ADOQuery := TADOQuery.Create(application);
      ADOQuery.Connection := Datamodule1.ADOConnection1;
      ADOQuery.SQL.Clear;
      ADOQuery.MaxRecords := 1;
      ADOQuery.SQL.Add('SELECT * FROM '+Tabla);
      ADOQuery.Open;
      ADOQuery.Append;
      For i:=1 TO Buffer.FieldCount-1 Do
      Begin
        ADOQuery.Fields.FieldByNumber(i).AsVariant := buffer.FieldByName(ADOQuery.Fields.FieldByNumber(i).FieldName).AsVariant;
      End;
      ADOQuery.Post;
      ADOQuery.Close;
      ADOQuery.Free;
    End;
    ADOConn.CommitTrans;
    ADOConn.Free;
  except
    ADOConn.RollbackTrans;
    BDExecSQLGema:=false;
  end;
end;

Procedure BDExecSQL(qry:string);
var
  ADOQuery:TADOQuery;
begin
  try
    ADOQuery := TADOQuery.Create(application);
    ADOQuery.Connection := Datamodule1.ADOConnection1;
    ADOQuery.SQL.Clear;
    ADOQuery.SQL.Add(qry);
    ADOQuery.ExecSQL;
    ADOQuery.Close;
    ADOQuery.Free;
  except

  end;
end;

end.

