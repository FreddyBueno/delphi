unit SEIngresoCurvas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, DBCtrls, Mask, Menus,IniFiles,dateutils,
  Buttons, jpeg,ShellApi, IdBaseComponent, IdComponent, IdUDPBase,
  IdUDPClient, IdTrivialFTP, IdTCPConnection, IdTCPClient, IdFTP, ComCtrls,
  JvLabel,xpman, IdExplicitTLSClientServerBase;

type
  TFIngreso = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Edit1: TEdit;
    MainMenu1: TMainMenu;
    Creacin1: TMenuItem;
    Ayuda1: TMenuItem;
    AyudadeSIG1: TMenuItem;
    N1: TMenuItem;
    Acercade1: TMenuItem;
    Salir1: TMenuItem;
    Panel2: TPanel;
    Edit2: TEdit;
    Edit4: TEdit;
    ComboBox1: TComboBox;
    ADOQuery2: TADOQuery;
    ADOQuery2COD_TIPO: TWideStringField;
    ADOQuery2NOM_NOMBRE: TWideStringField;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Image2: TImage;
    ActualizarProgramas1: TMenuItem;
    N2: TMenuItem;
    IdFTP1: TIdFTP;
    Panel3: TPanel;
    ProgressBar1: TProgressBar;
    Label7: TLabel;
    Label6: TLabel;
    DBImage1: TDBImage;
    GroupBox4: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    procedure Salir1Click(Sender: TObject);
    procedure Acercade1Click(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AyudadeSIG1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Change(Sender: TObject);
    procedure ActualizarProgramas1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FIngreso: TFIngreso;


implementation

uses about, UDataModule1, Curvas;


{$R *.dfm}
procedure TFIngreso.Salir1Click(Sender: TObject);
begin
  close;
end;

procedure TFIngreso.Acercade1Click(Sender: TObject);
begin
  aboutbox := taboutbox.create(application);
  try
    aboutbox.show;
  except
    aboutbox.free;
  end;
end;

procedure TFIngreso.Edit2Exit(Sender: TObject);
begin
  Edit1.Text:='';
  if edit2.Text = '' then edit2.text := '0';

  adoquery1.close;
  adoquery1.SQL.clear;
  adoquery1.SQL.Add('SELECT *');
  adoquery1.SQL.Add(' FROM SEPersonas, SEIdentificaciones,SEEmpleados,SEEmpresas,SEAreas,SECargos');
  adoquery1.SQL.Add(' WHERE SEPersonas.Id = SEIdentificaciones.Persona AND');
  adoquery1.SQL.Add(' SEPersonas.Id = SEEmpleados.Id AND');
  adoquery1.SQL.Add(' SEEmpleados.Empresa_Trabaja =  SEEmpresas.Codigo AND');
  adoquery1.SQL.Add(' SEEmpleados.Empresa_Trabaja = SEAreas.Empresa AND');
  adoquery1.SQL.Add(' SEEmpleados.Area_Trabaja = SEAreas.Codigo AND');
  adoquery1.SQL.Add(' SEEmpleados.Empresa_Trabaja = SECargos.Empresa AND');
  adoquery1.SQL.Add(' SEEmpleados.Area_Trabaja = SECargos.Area AND');
  adoquery1.SQL.Add(' SEEmpleados.Cargo_Trabaja = SECargos.Codigo AND');
  adoquery1.SQL.Add(' SEPersonas.Id = '+edit2.text);
  try
    ADOQuery1.Open;
  except
    Showmessage ('ERROR: No se encuentra conectado el servidor, El sistema intentará reconectar. Si no puede, solucione el problema de red y pruebe de nuevo.');
    ADOQuery1.Connection.Close;
    ADOQuery1.Connection.Open;
    ADOQuery1.Open;
  end;
  if adoquery1.Eof then Begin
    if edit2.Text = '0' then Begin
      ADOQuery1.Close;
      try
      adoquery1.SQL.clear;
      adoquery1.SQL.Add('INSERT INTO SEEmpresas (Codigo,Descripcion_Emp,BaseDatos,Nit,Ciudad,Direccion,Telefono,Observ) VALUES ('+chr(39)+'99'+chr(39)+', '+chr(39)+'Prateinco'+chr(39)+','+chr(39)+'gemaips'+chr(39)+','+chr(39)+'830129836'+chr(39)+','+chr(39)+'Bogotá'+chr(39)+','+chr(39)+'Tr. 17 No. 120-42 Casa 304'+chr(39)+','+chr(39)+'2140305'+chr(39)+','+chr(39)+ ExtractFilePath(paramstr(0))+'Imagenes\'+ 'prateinco.bmp'+chr(39)+')');
      ADOQuery1.ExecSQL;
      ADOQuery1.Close;
      except
      End;
      try
      adoquery1.SQL.clear;
      adoquery1.SQL.Add('INSERT INTO SEAreas (Empresa,Codigo,Descripcion_Area) VALUES ('+chr(39)+'99'+chr(39)+', '+chr(39)+'99'+chr(39)+', ' +chr(39)+'Prateinco'+chr(39)+')');
      ADOQuery1.ExecSQL;
      ADOQuery1.Close;
      except
      End;
      try
      adoquery1.SQL.clear;
      adoquery1.SQL.Add('INSERT INTO SECargos (Empresa,Area,Codigo,Descripcion_Cargo) VALUES ('+chr(39)+'99'+chr(39)+', '+chr(39)+'99'+chr(39)+', '+chr(39)+'99'+chr(39)+', ' +chr(39)+'Prateinco'+chr(39)+')');
      ADOQuery1.ExecSQL;
      ADOQuery1.Close;
      except
      End;
      try
      adoquery1.SQL.clear;
      adoquery1.SQL.Add('INSERT INTO SEPersonas (Id,Primer_Apellido,Segundo_Apellido,Nombres,Clave,Estado,Fecha_Nacimiento) VALUES ('+chr(39)+'0'+chr(39)+', '+chr(39)+'Administrador'+chr(39)+', '+chr(39)+'Administrador'+chr(39)+', '+chr(39)+'Administrador'+chr(39)+', '+chr(39)+'1234'+chr(39)+', '+chr(39)+'A'+chr(39)+', '+chr(39)+'01/01/1980'+chr(39)+')');
      ADOQuery1.ExecSQL;
      ADOQuery1.Close;
      except
      End;
      try
      adoquery1.SQL.clear;
      adoquery1.SQL.Add('INSERT INTO SEEmpleados (Id,Empresa_Trabaja,Area_Trabaja,Cargo_Trabaja) VALUES ('+chr(39)+'0'+chr(39)+', '+chr(39)+'99'+chr(39)+', '+chr(39)+'99'+chr(39)+', '+chr(39)+'99'+chr(39)+')');
      ADOQuery1.ExecSQL;
      ADOQuery1.Close;
      except
      End;
      try
      adoquery1.SQL.clear;
      adoquery1.SQL.Add('INSERT INTO SEIdentificaciones  (Persona,Tipo_Identificacion,No_Identificacion) VALUES ('+chr(39)+'0'+chr(39)+', '+chr(39)+'CC'+chr(39)+', '+chr(39)+'1'+chr(39)+')');
      ADOQuery1.ExecSQL;

      try
      adoquery1.SQL.clear;
      adoquery1.SQL.Add('INSERT INTO SEProgramas (Empresa,Area,Cargo,Programa,Submenu,Descripcion_Programa,Camino,Icono) SELECT 99,99,99,Programa,Submenu,Descripcion,Camino,Logo FROM SEProgramasTemp');
      ADOQuery1.ExecSQL;
      ADOQuery1.Close;
      except
      End;
      Showmessage('Implementación Inicial, Se crearon datos básicos para el usuario. Ingrese Nuevamente.');
      except
      End;

      Halt;
    End
    Else showmessage('El Empleado no fue encontrado, Ingrese como Administrador y Creelo.')
  End
  Else Begin
    combobox1.text := adoquery1.FieldValues['Tipo_Identificacion'];
    edit4.text := adoquery1.FieldValues['No_Identificacion'];
  End;
  If edit2.Text = '0' Then
  Begin
    ShowMessage('Este usuarios es Administrador, por favor ingrese la clave');
    Edit1.SetFocus;
  End;
end;

procedure TFIngreso.Edit4Exit(Sender: TObject);
begin
  if edit4.Text = '' then edit4.text := '0';
  adoquery1.close;
  adoquery1.SQL.clear;
  adoquery1.SQL.Add('SELECT *');
  adoquery1.SQL.Add(' FROM [SEPersonas], [SEIdentificaciones],[SEEmpleados],[SEEmpresas],[SEAreas],[SECargos]');
  adoquery1.SQL.Add(' WHERE [SEPersonas].Id = [SEIdentificaciones].Persona AND');
  adoquery1.SQL.Add(' [SEPersonas].Id = [SEEmpleados].Id AND');
  adoquery1.SQL.Add(' [SEEmpleados].Empresa_Trabaja =  [SEEmpresas].Codigo AND');
  adoquery1.SQL.Add(' [SEEmpleados].Empresa_Trabaja = [SEAreas].Empresa AND');
  adoquery1.SQL.Add(' [SEEmpleados].Area_Trabaja = [SEAreas].Codigo AND');
  adoquery1.SQL.Add(' [SEEmpleados].Empresa_Trabaja = [SECargos].Empresa AND');
  adoquery1.SQL.Add(' [SEEmpleados].Area_Trabaja = [SECargos].Area AND');
  adoquery1.SQL.Add(' [SEEmpleados].Cargo_Trabaja = [SECargos].Codigo AND');
  adoquery1.SQL.Add(' Tipo_Identificacion = '+chr(39)+combobox1.text+chr(39));
  adoquery1.SQL.Add(' AND No_Identificacion = '+chr(39)+edit4.text+chr(39));
  adoquery1.Open;
  if adoquery1.Eof then showmessage('El Empleado no fue encontrado, creelo en el menu.');
end;

procedure TFIngreso.FormCreate(Sender: TObject);
Var Ini: TIniFile;
    emp:string;
    i:integer;
begin
  Ini := TIniFile.Create(ExtractFilePath(paramstr(0))+'Softips.ini' );
  Label4.Caption:= Ini.ReadString( 'Database', 'ServerName', 'local');
  Label5.Caption:= Ini.ReadString( 'Database', 'Motor', 'SQL');
  Label9.Caption:='Archivo INI: '+ExtractFilePath(paramstr(0))+'Softips.ini';

  adoquery2.Open;
  adoquery2.First;
  while NOT adoquery2.Eof do
  begin
    combobox1.Items.Add(adoquery2.FieldValues['Cod_Tipo']);
    adoquery2.Next;
  end;
  adoquery2.close;
end;

procedure TFIngreso.AyudadeSIG1Click(Sender: TObject);
begin
  Application.HelpFile := 'HLP\AYUDA.HLP';
  Application.HelpCommand(3, 0);
end;

procedure TFIngreso.FormClose(Sender: TObject; var Action: TCloseAction);
Var
  Mango:Integer;
begin
  if DataModule1.ADOQuery1.State = dsInactive then Halt;

  action:=cafree;
end;

procedure TFIngreso.SpeedButton2Click(Sender: TObject);
begin
  close;
  //halt;
end;

procedure TFIngreso.SpeedButton1Click(Sender: TObject);
begin
  Edit2.SetFocus;
  if adoquery1.FieldValues['Clave'] = Edit1.Text then
  begin
    if adoquery1.FieldValues['Estado'] <> 'A' then
    begin
      showmessage('Empleado Inactivo.');
      //Halt;
    end
    Else Begin
      DataModule1.ADOQuery1.Close;
      DataModule1.ADOQuery1.SQL.Clear;
      DataModule1.adoquery1.SQL.Add('SELECT *');
      DataModule1.adoquery1.SQL.Add(' FROM SEPersonas, SEIdentificaciones,SEEmpleados,SEEmpresas,SEAreas,SECargos');
      DataModule1.adoquery1.SQL.Add(' WHERE SEPersonas.Id = SEIdentificaciones.Persona AND');
      DataModule1.adoquery1.SQL.Add(' SEPersonas.Id = SEEmpleados.Id AND');
      DataModule1.adoquery1.SQL.Add(' SEEmpleados.Empresa_Trabaja =  SEEmpresas.Codigo AND');
      DataModule1.adoquery1.SQL.Add(' SEEmpleados.Empresa_Trabaja = SEAreas.Empresa AND');
      DataModule1.adoquery1.SQL.Add(' SEEmpleados.Area_Trabaja = SEAreas.Codigo AND');
      DataModule1.adoquery1.SQL.Add(' SEEmpleados.Empresa_Trabaja = SECargos.Empresa AND');
      DataModule1.adoquery1.SQL.Add(' SEEmpleados.Area_Trabaja = SECargos.Area AND');
      DataModule1.adoquery1.SQL.Add(' SEEmpleados.Cargo_Trabaja = SECargos.Codigo AND');
      DataModule1.adoquery1.SQL.Add(' SEPersonas.Id = '+edit2.text);
      DataModule1.ADOQuery1.Open;

      //Coneccion con el ADOConnection
      DataModule1.ADOConnection1.close;
      DataModule1.ADOConnection1.DefaultDatabase:=DataModule1.ADOQuery1.FieldValues['BaseDatos'];
      DataModule1.ADOConnection1.ConnectionString:='Provider='+chr(39)+Datamodule1.Conex+chr(39)+';Password=espartaguia;Persist Security Info=True;User ID=prateinco;Data Source='+ Label4.Caption;
      try
        DataModule1.ADOConnection1.Open;
      except
        showmessage('La Base de Datos '+DataModule1.ADOQuery1.FieldValues['BaseDatos']+' no se ha podido abrir. Verifique que exista o que el usuario Prateinco este creado con la clave correcta.');
        Halt;
      end;
      Datamodule1.Bd  := DataModule1.ADOQuery1.FieldValues['BaseDatos'];

      FrmProcFormatos := tFrmProcFormatos.create(application);
      try
        FrmProcFormatos.show;
      except
        FrmProcFormatos.free;
      end;

      //IF Datamodule1.ADOQuery1.FieldValues['Multiempresa'] = 'S' Then form2.DBLookupCombobox1.Enabled := True;

      //Graba el LOG.
      Datamodule1.Graba_Logx(01/01/2001,'I','','Ingreso al Menu.','Menu','');

      //Verificar la fecha de cumpleaños y enviar un mensaje
      if ((dayof(DataModule1.ADOQuery1.FieldValues['Fecha_Nacimiento']) = dayof(now)) AND ((monthof(DataModule1.ADOQuery1.FieldValues['Fecha_Nacimiento']) = monthof(now))))then
        dataModule1.Mensaje(0,DataModule1.ADOQuery1.Fields.FieldByName('ID').Asinteger,'Te deseamos un feliz cumpleaños.','A');

      Close;
    End;
  End
  Else Begin
    showmessage('Clave Incorrecta.');
    //Halt;
  End;

end;

procedure TFIngreso.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then Edit1.SetFocus;
end;

procedure TFIngreso.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then FIngreso.SpeedButton1Click(Nil);
end;

procedure TFIngreso.Edit2Change(Sender: TObject);
begin
  Edit1.Text:='';
end;

procedure TFIngreso.ActualizarProgramas1Click(Sender: TObject);
var
  AFiles : TStringList;
  i:Integer;
Begin;
  Showmessage('Se copiaran los programas del Servidor. No suspenda la copia....');
  Panel3.Visible := True;
  IdFTP1.Connect();
  IdFTP1.ChangeDir( 'ActGemaIPS' );
  AFiles := TStringList.Create;
  IdFTP1.List(AFiles, '*.exe', True);
  IdFTP1.Disconnect;
  ProgressBar1.Max := Afiles.Count -1;
  ProgressBar1.Position := 0;
  For i:=0 To Afiles.Count-1 Do
  Begin
    IdFTP1.Connect();
    IdFTP1.ChangeDir( 'ActGemaIPS' );

    Label7.Caption := IdFTP1.DirectoryListing.Items[i].FileName;
    FIngreso.Refresh;
    if uppercase(IdFTP1.DirectoryListing.Items[i].FileName) <> 'SOFTSIG.EXE' Then
    Begin
      if FileExists( ExtractFilePath(paramstr(0))+IdFTP1.DirectoryListing.Items[i].FileName ) then DeleteFile(ExtractFilePath(paramstr(0))+IdFTP1.DirectoryListing.Items[i].FileName);

      IdFTP1.Get( IdFTP1.DirectoryListing.Items[i].FileName,ExtractFilePath(paramstr(0))+IdFTP1.DirectoryListing.Items[i].FileName, False, False );
    end;
    ProgressBar1.Position := ProgressBar1.Position + 1;
    IdFTP1.Disconnect;
  end;
  Showmessage('Proceso Finalizado.');
  Panel3.Visible := False;
end;

end.
