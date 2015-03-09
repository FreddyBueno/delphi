unit SEMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, StdCtrls, ExtCtrls, OleCtrls, SHDocVw, Menus, ComCtrls, Buttons,
  ToolWin, ImgList, DB, ADODB,StrUtils,Registry, WinSock, DBCtrls, Grids, shellapi,IniFiles;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Panel3: TPanel;
    TreeView1: TTreeView;
    ADOQuery1: TADOQuery;
    Panel4: TPanel;
    MainMenu1: TMainMenu;
    Archivo1: TMenuItem;
    N1: TMenuItem;
    Salir1: TMenuItem;
    Salir2: TMenuItem;
    AyudaMenu1: TMenuItem;
    ADOQuery2: TADOQuery;
    CambiarPassword1: TMenuItem;
    Panel5: TPanel;
    Panel6: TPanel;
    ADOQueryMensajes: TADOQuery;
    DataSource2: TDataSource;
    Panel10: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    PnlEnvioMensajes: TPanel;
    Panel13: TPanel;
    SGRecibidos: TStringGrid;
    SGPara: TStringGrid;
    PCPara: TPageControl;
    Label3: TLabel;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Splitter1: TSplitter;
    PnlMensaje: TPanel;
    EditPara: TEdit;
    Label5: TLabel;
    Panel11: TPanel;
    MmMensje: TMemo;
    Panel12: TPanel;
    RB1: TRadioButton;
    RB2: TRadioButton;
    BtnActualizar: TBitBtn;
    Timer1: TTimer;
    Label6: TLabel;
    EditID: TEdit;
    BtnBuscar1: TBitBtn;
    Label7: TLabel;
    EditPriA: TEdit;
    BtnBuscar2: TBitBtn;
    BtnEnviar: TBitBtn;
    BtnCancelar: TBitBtn;
    QryGeneralComunes: TADOQuery;
    PopupMenu1: TPopupMenu;
    Marcarcomoledo1: TMenuItem;
    Timer2: TTimer;
    TabSheet5: TTabSheet;
    MmVerMensajes: TMemo;
    CBImportancia: TComboBox;
    Label8: TLabel;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    Label9: TLabel;
    EditSegA: TEdit;
    BitBtn1: TBitBtn;
    Label10: TLabel;
    EditNombres: TEdit;
    BitBtn2: TBitBtn;
    ImgBono: TImage;
    EditIDPara: TEdit;
    DTPaCTUAL: TDateTimePicker;
    BitBtn3: TBitBtn;
    DBImage1: TDBImage;
    CheckBox1: TCheckBox;
    VideodelSistema1: TMenuItem;
    N2: TMenuItem;
    CatalogodePrateinco1: TMenuItem;
    chk: TCheckBox;
    ADOQTmp: TADOQuery;
    procedure Salir1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TreeView1DblClick(Sender: TObject);
    procedure TreeView1KeyPress(Sender: TObject; var Key: Char);
    procedure CambiarPassword1Click(Sender: TObject);
    procedure DBLookupListBox1DblClick(Sender: TObject);
    procedure BuscarMensajes;
    procedure LimpiaGrilla(Grilla : TStringGrid; Col : Integer);
    procedure RB1Click(Sender: TObject);
    procedure RB2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BtnActualizarClick(Sender: TObject);
    procedure SGRecibidosDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Timer2Timer(Sender: TObject);
    procedure Panel10Click(Sender: TObject);
    procedure SGRecibidosDblClick(Sender: TObject);
    procedure Marcarcomoledo1Click(Sender: TObject);
    procedure BuscaUsuarios;
    procedure SGParaDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SGParaDblClick(Sender: TObject);
    procedure BuscarEnGrilla(Grilla :TStringGrid; Edit : TEdit; Col : Integer);
    procedure BtnBuscar1Click(Sender: TObject);
    procedure BtnBuscar2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure TabSheet2Hide(Sender: TObject);
    procedure BtnEnviarClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure AyudaMenu1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    TotF      : Integer;
    TotFilas  : Integer;
    Cuenta    : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses  CambiarClave, UDataModule1, FReportFormato, about, SEIngreso,Libreria_Prateinco;

{$R *.dfm}

procedure TForm2.Salir1Click(Sender: TObject);
begin
  close;
end;

procedure TForm2.FormActivate(Sender: TObject);
Var
  NewItem: TMenuItem;
  MyTreeNode1, MyTreeNode2: TTreeNode;
  i,j,iant:integer;
begin
  if datamodule1.ADOQuery1.State = dsInactive then
  Begin
    FIngreso := TFIngreso.create(application);
    FIngreso.showmodal;
  End;
  statusbar1.Panels[0].Width := 300;
  statusbar1.Panels[0].Text := Datamodule1.adoquery1.FieldValues['Primer_Apellido']+ ' ' +Datamodule1.adoquery1.FieldValues['Nombres'];
  statusbar1.Panels[1].Width := 500;
  statusbar1.Panels[1].Text := Datamodule1.adoquery1.FieldValues['Descripcion_Emp']+' ('+Datamodule1.bd+')';
  statusbar1.Panels[2].Width := 300;
  statusbar1.Panels[2].Text := Datamodule1.adoquery1.FieldValues['Descripcion_Area'];
  statusbar1.Panels[3].Width := 300;
  statusbar1.Panels[3].Text := Datamodule1.adoquery1.FieldValues['Descripcion_Cargo'];

  NewItem := TMenuItem.Create(Self);
  NewItem.Caption := 'Prueba';

  TreeView1.Items.Clear;

  ADOQuery2.Open;
  ADOQuery2.First;
  WHILE NOT ADOQuery2.Eof DO
  Begin
    MyTreeNode1 := TreeView1.Items.Add(nil,ADOQuery2.FieldValues['Programa']+' - '+ ADOQuery2.FieldValues['Descripcion']);

    ADOQuery2.Next;
  End;

  ADOQuery1.Close;
  ADOQuery1.Parameters[0].Value := FIngreso.ADOQuery1.FieldValues['Empresa_Trabaja'];
  ADOQuery1.Parameters[1].Value := FIngreso.ADOQuery1.FieldValues['Area_Trabaja'];
  ADOQuery1.Parameters[2].Value := FIngreso.ADOQuery1.FieldValues['Cargo_Trabaja'];
  ADOQuery1.Open;

  IF ADOQuery1.RecordCount > 0 Then
  Begin
    ADOQuery1.First;
    WHILE NOT ADOQuery1.Eof DO
    Begin
      if FileExists(ExtractFilePath(paramstr(0))+string(campotoedit(ADOQuery1.FieldValues['Camino']))) Then
      Begin
        If iant <> ADOQuery1.FieldValues['Submenu'] Then Begin
          For i:=Treeview1.items.count-1 DOWNTO  0 Do
            IF leftstr(TreeView1.Items.Item[i].Text,1) = ADOQuery1.FieldValues['Submenu'] Then
              Break;
        End;
        TreeView1.Items.AddChild(TreeView1.Items[i],ADOQuery1.FieldValues['Descripcion_Programa']);
        iant:= ADOQuery1.FieldValues['Submenu'];
      End;

      ADOQuery1.Next;
    End;
  End
  Else Begin
    ShowMessage('El cargo ocupado por este usuario no tiene asignado menu. Entre como administrador y creelo.');
    Close;
  End;

  For i:=Treeview1.items.count-1 DOWNTO  0 Do
    IF (leftstr(TreeView1.Items.Item[i].Text,1) = '1' ) OR
        (leftstr(TreeView1.Items.Item[i].Text,1) = '2' ) OR
        (leftstr(TreeView1.Items.Item[i].Text,1) = '3' ) OR
        (leftstr(TreeView1.Items.Item[i].Text,1) = '4' ) OR
        (leftstr(TreeView1.Items.Item[i].Text,1) = '5' ) OR
        (leftstr(TreeView1.Items.Item[i].Text,1) = '6' ) Then
      if TreeView1.Items.Item[i].Count = 0 then TreeView1.Items.Delete(TreeView1.Items[i]);

  ADOQueryMensajes.Close;
  ADOQueryMensajes.Parameters.ParamValues['emp'] := FIngreso.ADOQuery1.FieldValues['Empresa_Trabaja'];
  ADOQueryMensajes.Open;
  DTPaCTUAL.DateTime      := now;
  TotF                    := 0;
  TotFilas                := 0;
  SGRecibidos.Cells[0,0]  := 'De';
  SGRecibidos.Cells[1,0]  := 'Fecha';
  SGRecibidos.Cells[2,0]  := 'Mensaje';

  SGPara.Cells[1,0]       := 'Id';
  SGPara.Cells[2,0]       := 'Primer apellido';
  SGPara.Cells[3,0]       := 'Segundo apellido';
  SGPara.Cells[4,0]       := 'Nombres';

  BuscaUsuarios;
  TreeView1.FullExpand;
  Timer1.Enabled := True;
  Timer2.Enabled := True;

  PageControl1.ActivePageIndex := 0;
  Panel5.Height   := 56;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure TForm2.TreeView1DblClick(Sender: TObject);
var mm:integer;
    emp:string;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.sql.Add('SELECT Camino FROM SEProgramasTemp WHERE Descripcion = ' +chr(39)+Treeview1.Selected.Text+chr(39));
  try
    ADOQuery1.Open;
  except
    Showmessage ('ERROR: No se encuentra conectado el servidor, El sistema intentará reconectar. Si no puede, solucione el problema de red y pruebe de nuevo.');
    ADOQuery1.Connection.Close;
    ADOQuery1.Connection.Open;
    ADOQuery1.Open;
  end;

  IF ADOQuery1.FieldValues['Camino'] <> null then
  Begin
    IF Pos('.EXE',uppercase(ADOQuery1.FieldValues['Camino'])) <> 0 Then
    Begin
      //Rutina Especial para copiar la Base de Datos en Pruebas y Trabajar sobre ella
      if Chk.Checked then
      Begin
        ADOQTmp.Close;
        ADOQtmp.SQL.Clear;
        ADOQtmp.SQL.Add(' BACKUP DATABASE ['+DataModule1.adoquery1.FieldValues['BaseDatos']+'] TO ');
        ADOQtmp.SQL.Add(' DISK = N'+chr(39)+DataModule1.adoquery1.FieldValues['BaseDatos']+'.bak'+chr(39));
        ADOQtmp.SQL.Add(' WITH NOFORMAT, INIT,  NAME = N'+chr(39)+'Backup'+DataModule1.adoquery1.FieldValues['BaseDatos']+chr(39)+',');
        ADOQtmp.SQL.Add(' SKIP, NOREWIND, NOUNLOAD,  STATS = 10');
        ADOQtmp.ExecSQL;

        ADOQTmp.Close;
        ADOQtmp.SQL.Clear;
        ADOQtmp.SQL.Add('SELECT * FROM sys.databases WHERE name = '+chr(39)+DataModule1.adoquery1.FieldValues['BaseDatos']+'Prueba'+chr(39));
        ADOQtmp.Open;
        if ADOQtmp.RecordCount = 1 then
        Begin
          ADOQTmp.Close;
          ADOQtmp.SQL.Clear;
          ADOQtmp.SQL.Add('DROP DATABASE '+DataModule1.adoquery1.FieldValues['BaseDatos']+'Prueba');
          ADOQtmp.ExecSQL;
        End;

        ADOQTmp.Close;
        ADOQtmp.SQL.Clear;
        ADOQtmp.SQL.Add(' RESTORE DATABASE ['+DataModule1.adoquery1.FieldValues['BaseDatos']+'Prueba]');
        ADOQtmp.SQL.Add(' FROM  DISK = N'+chr(39)+DataModule1.adoquery1.FieldValues['BaseDatos']+'.bak'+chr(39));
        ADOQtmp.SQL.Add('       WITH  FILE = 1,');
        ADOQtmp.SQL.Add(' MOVE N'+chr(39)+'gemaips_Data'+chr(39));
        ADOQtmp.SQL.Add(' TO N'+chr(39)+'c:\BACKUP_NEW\'+DataModule1.adoquery1.FieldValues['BaseDatos']+'Prueba.mdf'+chr(39)+',');
        ADOQtmp.SQL.Add(' MOVE N'+chr(39)+'gemaips_Log'+chr(39));
        ADOQtmp.SQL.Add(' TO N'+chr(39)+'c:\BACKUP_NEW\'+DataModule1.adoquery1.FieldValues['BaseDatos']+'Prueba.ldf'+chr(39)+',');
        ADOQtmp.SQL.Add(' NOUNLOAD,  STATS = 10');
        ADOQtmp.ExecSQL;
        Showmessage('Esta ingresando a una Copia de la Base de Datos especial para Pruebas, tenga en cuenta que lo grabado en ella se perderan al salir.');

        IF WinExec(PAnsiChar(AnsiString(ExtractFilePath(paramstr(0))+string(ADOQuery1.FieldValues['Camino']) +' '+DataModule1.adoquery1.FieldValues['Codigo']+' '+ inttostr(DataModule1.adoquery1.FieldValues['id']) + ' '+DataModule1.adoquery1.FieldValues['BaseDatos']+'Prueba' + ' '+ DataModule1.adoquery1.FieldValues['Clave'])),SW_SHOWNORMAL) = 2 Then
        Begin
          Showmessage('Error al cargar el programa.');
        End;
      End
      Else Begin
        IF WinExec(PAnsiChar(AnsiString(ExtractFilePath(paramstr(0))+string(ADOQuery1.FieldValues['Camino']) +' '+DataModule1.adoquery1.FieldValues['Codigo']+' '+ inttostr(DataModule1.adoquery1.FieldValues['id'])+ ' '+DataModule1.adoquery1.FieldValues['BaseDatos'] + ' '+DataModule1.adoquery1.FieldValues['Clave'])),SW_SHOWNORMAL) = 2 Then
        Begin
          Showmessage('Error al cargar el programa.');
        End
      End;
    End
    Else Begin
      Application.HelpFile := ADOQuery1.FieldValues['Camino'];
      Application.HelpCommand(3, 0);
    End;
  End
end;
procedure TForm2.TreeView1KeyPress(Sender: TObject; var Key: Char);
Var Ini: TIniFile;
begin
  if key = #13 Then Form2.TreeView1DblClick(Nil)
    else begin
    if key = #14 then Begin
      if Datamodule1.NoStyle = 22 then Datamodule1.NoStyle := 1
      Else Datamodule1.NoStyle := Datamodule1.NoStyle + 1;
      Datamodule1.Estilo.SetStyle(Datamodule1.lEstilos[Datamodule1.NoStyle]);

      Ini := TIniFile.Create( ExtractFilePath(paramstr(0))+'softips.ini' );
      Ini.WriteString( 'Style', 'Random', 'N');
      Ini.WriteString( 'Style', 'NoStyle', inttostr(Datamodule1.NoStyle));
      Ini.free;
    End;
  end;
end;

procedure TForm2.CambiarPassword1Click(Sender: TObject);
begin
  form3 := tform3.create(application);
  try
    form3.show;
  except
    form3.free;
  end;
end;

procedure TForm2.DBLookupListBox1DblClick(Sender: TObject);
begin
  showmessage(ADOQueryMensajes.FieldValues['Mensaje']);
end;

procedure TForm2.BuscarMensajes;
var i : Integer;
begin
  QryGeneralComunes.Close;
  QryGeneralComunes.SQL.Clear;
  QryGeneralComunes.SQL.Add('select Men.Numero,Men.Id_de, Men.ID_PARA, Men.Fecha, Men.Mensaje, Men.Importancia, Men.Estado, Men.Modulo,');
  QryGeneralComunes.SQL.Add('PRE.Primer_Apellido+'' ''+PRE.Segundo_Apellido+ '' ''+ PRE.Nombres as de');
  QryGeneralComunes.SQL.Add(' from SEMensajes_a_Usuarios as Men, SEPersonas as PRE');
  QryGeneralComunes.SQL.Add('where ');
//  QryGeneralComunes.SQL.Add('where convert(varchar(10), fecha, 103) = '''+FormatDateTime('DD/MM/YYYY', date)+'''');
  QryGeneralComunes.SQL.Add('id_PARA = '''+DataModule1.ADOQuery1.Fields.FieldByName('id').AsString+'''');
  QryGeneralComunes.SQL.Add('and Men.id_de = PRE.id and Men.estado is null order by fecha');
  try
    QryGeneralComunes.Open;
  except
    Showmessage('ERROR: Se desconecto la Base de Datos por problemas de Red. Reingrese Nuevamente.');
    Halt;
  end;


  i := 1;
  LimpiaGrilla(SGRecibidos, 10);
  while not QryGeneralComunes.Eof do
    begin
      SGRecibidos.Cells[0,i]   := QryGeneralComunes.Fields.FieldByName('de').AsString;
      SGRecibidos.Cells[1,i]   := QryGeneralComunes.Fields.FieldByName('fecha').AsString;
      SGRecibidos.Cells[2,i]   := QryGeneralComunes.Fields.FieldByName('Mensaje').AsString;
      SGRecibidos.Cells[3,i]   := QryGeneralComunes.Fields.FieldByName('Importancia').AsString;
      SGRecibidos.Cells[4,i]   := QryGeneralComunes.Fields.FieldByName('Estado').AsString;
      if QryGeneralComunes.Fields.FieldByName('Estado').AsString = '' then
        SGRecibidos.Cells[5,i] := '.';
      SGRecibidos.Cells[7,i]   := QryGeneralComunes.Fields.FieldByName('Modulo').AsString;
      SGRecibidos.Cells[8,i]   := QryGeneralComunes.Fields.FieldByName('Numero').AsString;
      QryGeneralComunes.Next;
      inc(i);
    end;
  SGRecibidos.RowCount         := i + 1;
  TotF                         := SGRecibidos.RowCount;
end;

procedure TForm2.LimpiaGrilla(Grilla : TStringGrid; Col : Integer);
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


procedure TForm2.RB1Click(Sender: TObject);
begin
  if RB1.Checked = True then
    begin
      Timer1.Interval        := 10000;
      BtnActualizar.Enabled  := False;
    end;
end;

procedure TForm2.RB2Click(Sender: TObject);
begin
  if RB2.Checked = True then
    begin
      Timer1.Interval        := 0;
      BtnActualizar.Enabled  := True;
    end;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  TotFilas  := TotF;
  try
    BuscarMensajes;
  except
    DataModule1.Create(nil);
  end;

  if (TotFilas <> TotF) and (SGRecibidos.RowCount > 2)  then
    begin
      Panel10.Color    := clGradientActiveCaption;
      Timer2.Interval  := 1000;
    end;
end;

procedure TForm2.BtnActualizarClick(Sender: TObject);
begin
  TotFilas  := TotF;
  try
    BuscarMensajes;
  except
    DataModule1.Create(nil);
  end;

  if TotFilas <> TotF then
    begin
      Panel10.Color    := clGradientActiveCaption;
      Timer2.Interval  := 1000;
    end;
end;

procedure TForm2.SGRecibidosDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var e, i   :integer;
begin
   for e := 1 to SGRecibidos.RowCount - 1 do
     begin
       if Arow = e then
         begin
           if (SGRecibidos.Cells[3,e] = 'A') and  (SGRecibidos.Cells[4,e] = '') then    // $00DF9700
             begin
               SGRecibidos.Canvas.Font.Color := clBlue;
               SGRecibidos.Canvas.Brush.Color := $001094F5; //$00F7E388;
               SGRecibidos.Canvas.TextRect(Rect, Rect.Left, Rect.Top, SGRecibidos.Cells[Acol,Arow]);
             end;

           if (SGRecibidos.Cells[3,e] = 'M')and  (SGRecibidos.Cells[4,e] = '')then    //
             begin
               SGRecibidos.Canvas.Font.Color := clBlue;
               SGRecibidos.Canvas.Brush.Color := $009CDEF7; //$00F7E388;
               SGRecibidos.Canvas.TextRect(Rect, Rect.Left, Rect.Top, SGRecibidos.Cells[Acol,Arow]);
             end;

           if (SGRecibidos.Cells[3,e] = 'B') and  (SGRecibidos.Cells[4,e] = '')then    //
             begin
               SGRecibidos.Canvas.Font.Color := clBlue;
               SGRecibidos.Canvas.Brush.Color := $00E2F2FE;
               SGRecibidos.Canvas.TextRect(Rect, Rect.Left, Rect.Top, SGRecibidos.Cells[Acol,Arow]);
             end;
         end;
     end;
end;

procedure TForm2.Timer2Timer(Sender: TObject);
begin
  if Panel10.Color  = clGradientActiveCaption then
    Panel10.Color  := clGradientInactiveCaption
  else
    Panel10.Color  := clGradientActiveCaption;

  inc(Cuenta);

  if cuenta = 20 then
    begin
      Panel10.Color    := clBtnFace;
      Timer2.Interval  := 0;
    end;
end;

procedure TForm2.Panel10Click(Sender: TObject);
begin
  Timer2.Interval   := 0;
  if Panel5.Height  = 56 then
    begin
      Panel10.Color   := clBtnFace;
      Panel5.Height   := 339
    end
  else
    begin
      Panel10.Color   := clBtnFace;
      Panel5.Height   := 56;
    end;
end;

procedure TForm2.SGRecibidosDblClick(Sender: TObject);
var Histo  : string;
    i      : Integer;
    Tablas : string;
begin
  // Si el mensaje es remitido desde Historias Clinicas, Imprime la Historia.
    MmVerMensajes.Clear;
    MmVerMensajes.Lines.Text     := SGRecibidos.Rows[SGRecibidos.Row].Strings[2];
    PageControl1.ActivePageIndex := 2;
end;

procedure TForm2.Marcarcomoledo1Click(Sender: TObject);
begin
  try
    DataModule1.ADOComunes.BeginTrans;

    QryGeneralComunes.Close;
    QryGeneralComunes.SQL.Clear;
    QryGeneralComunes.SQL.Add('update SEMensajes_a_Usuarios set Estado = ''L''');
    QryGeneralComunes.SQL.Add('where Numero = '''+SGRecibidos.Rows[SGRecibidos.Row].Strings[8]+'''');
    QryGeneralComunes.ExecSQL;

    DataModule1.ADOComunes.CommitTrans;
    BuscarMensajes;
  except
    DataModule1.ADOComunes.RollbackTrans;
    Application.MessageBox('No se pudo marcar el mensaje como leído...por favor consultar al Help Desk','Error',MB_OK+MB_ICONERROR);
  end;
end;

procedure TForm2.BuscaUsuarios;
var i : Integer;
begin
  QryGeneralComunes.Close;
  QryGeneralComunes.SQL.Clear;
  QryGeneralComunes.SQL.Add('select SEPersonas.Id, Primer_Apellido, Segundo_Apellido, Nombres');
  QryGeneralComunes.SQL.Add('from SEPersonas inner join SEEmpleados  on SEPersonas.id = SEEmpleados.id ');
  QryGeneralComunes.SQL.Add(' WHERE  SEEmpleados.Empresa_Trabaja = '+chr(39)+DataModule1.ADOQuery1.FieldValues['Empresa_Trabaja'] +chr(39)+' order by Primer_Apellido');
  QryGeneralComunes.Open;

  LimpiaGrilla(SGPara, 10);
  i := 1;
  while not QryGeneralComunes.Eof do
    begin
      SGPara.Cells[1,i]  := QryGeneralComunes.Fields.FieldByName('Id').AsString;
      SGPara.Cells[2,i]  := QryGeneralComunes.Fields.FieldByName('Primer_Apellido').AsString;
      SGPara.Cells[3,i]  := QryGeneralComunes.Fields.FieldByName('Segundo_Apellido').AsString;
      SGPara.Cells[4,i]  := QryGeneralComunes.Fields.FieldByName('Nombres').AsString;
      QryGeneralComunes.Next;
      inc(i);
    end;
  SGPara.RowCount  := i + 1;
end;

procedure TForm2.SGParaDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
 if (ACol = 0) and (SGPara.Cells[Acol,Arow] = '.') then
    with SGPara.Canvas do
      Draw(Rect.Left, Rect.Top,ImgBono.Picture.Graphic);
end;

procedure TForm2.SGParaDblClick(Sender: TObject);
var i : Integer;
begin
  if SGPara.Rows[SGPara.Row].Strings[0] = '' then
    begin
      i := 1;
      while i < SGPara.RowCount - 1 do
        begin
          SGPara.Cells[0,i] := '';
          inc(i);
        end;

      SGPara.Rows[SGPara.Row].Strings[0] := '.';
      EditIDPara.Text                    := SGPara.Rows[SGPara.Row].Strings[1];
      EditPara.Text                      := SGPara.Rows[SGPara.Row].Strings[2]+' '+SGPara.Rows[SGPara.Row].Strings[3]+' '+SGPara.Rows[SGPara.Row].Strings[4];
    end
  else
    begin
      SGPara.Rows[SGPara.Row].Strings[0] := '';
      EditIDPara.Text                    := '';
      EditPara.Text                      := '';
    end;
end;

procedure TForm2.BuscarEnGrilla(Grilla :TStringGrid; Edit : TEdit; Col : Integer);
var
  MyRect  : TGridRect;
  i       : Integer;
begin
  if Edit.Text <> '' then
    begin
      i := 1;
      while i < Grilla.RowCount - 1 do
        begin
          if Grilla.Rows[i].Strings[Col] = Edit.Text then
            begin
              Grilla.TopRow       := i;
              myRect.Left         := 0;
              myRect.Top          := i;
              myRect.Right        := 8;
              myRect.Bottom       := i;
              Grilla.Selection := myRect;
              Edit.Text   := '';
              //SGDatosClick(Self);
              exit;
            end;
          inc(i);
        end;
    end;
end;

procedure TForm2.BtnBuscar1Click(Sender: TObject);
begin
  BuscarEnGrilla(SGPara, EditID , 1);
end;

procedure TForm2.BtnBuscar2Click(Sender: TObject);
begin
  BuscarEnGrilla(SGPara, EditPriA , 2);
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
  BuscarEnGrilla(SGPara, EditSegA , 3);
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
  BuscarEnGrilla(SGPara, EditNombres , 4);
end;

procedure TForm2.BtnCancelarClick(Sender: TObject);
var i : Integer;
begin
  i := 1;
  while i < SGPara.RowCount - 1 do
    begin
      SGPara.Cells[0,i] := '';
      inc(i);
    end;
  EditIDPara.Text  := '';
  EditPara.Text    := '';
  EditID.Text      := '';
  EditPriA.Text    := '';
  EditSegA.Text    := '';
  EditNombres.Text := '';
  MmMensje.Clear;
  CBImportancia.ItemIndex  := 2;
end;

procedure TForm2.TabSheet2Hide(Sender: TObject);
begin
  DTPaCTUAL.DateTime  := now;
  BtnCancelarClick(Self);
end;

procedure TForm2.BtnEnviarClick(Sender: TObject);
var imp:string;
begin
  if checkbox1.Checked = False Then
  begin
    if EditIDPara.Text  = '' then
     begin
        Application.MessageBox('Debe seleccionar el destinatario del mensaje para poderlo enviar','Información',MB_OK+MB_ICONINFORMATION);
        SGPara.SetFocus;
        Exit;
      end;
    try
      DataModule1.ADOComunes.BeginTrans;

      if CBImportancia.ItemIndex = 0 then imp:='A'
      else if CBImportancia.ItemIndex = 1 then imp:='M'
      else if CBImportancia.ItemIndex = 2 then imp:='B';
      dataModule1.Mensaje(DataModule1.ADOQuery1.Fields.FieldByName('ID').Asinteger,strtoint(EditIDPara.Text),MmMensje.Lines.Text,imp);

      Application.MessageBox('Mensaje enviado correctamente','Información',MB_OK+MB_ICONEXCLAMATION);
    except
      DataModule1.ADOComunes.RollbackTrans;
      Application.MessageBox('Error al momento de enviar el mensaje..por favor comuníquese con Help Desk','Información',MB_OK+MB_ICONEXCLAMATION);
    end;
  end
  else Begin
    try
      DataModule1.ADOComunes.BeginTrans;
      Datamodule1.ADOQtmp2.Close;
      Datamodule1.ADOQtmp2.SQL.Clear;
      Datamodule1.ADOQtmp2.SQL.Add('SELECT * FROM comunes..SEPersonas');
      Datamodule1.ADOQtmp2.Open;
      Datamodule1.ADOQtmp2.First;
      WHILE NOT Datamodule1.ADOQtmp2.Eof DO
      Begin
        if CBImportancia.ItemIndex = 0 then imp:='A'
        else if CBImportancia.ItemIndex = 1 then imp:='M'
        else if CBImportancia.ItemIndex = 2 then imp:='B';
        dataModule1.Mensaje(DataModule1.ADOQuery1.Fields.FieldByName('ID').Asinteger,Datamodule1.ADOQtmp2.FieldValues['id'],MmMensje.Lines.Text,imp);

        Datamodule1.ADOQtmp2.Next;
      End;
      Application.MessageBox('Mensaje enviado correctamente','Información',MB_OK+MB_ICONEXCLAMATION);
    except
      DataModule1.ADOComunes.RollbackTrans;
      Application.MessageBox('Error al momento de enviar el mensaje..por favor comuníquese con Help Desk','Información',MB_OK+MB_ICONEXCLAMATION);
    end;
  End;
end;

procedure TForm2.TabSheet2Show(Sender: TObject);
begin
  DTPaCTUAL.DateTime  := now;
end;

procedure TForm2.BitBtn3Click(Sender: TObject);
begin
  QryGeneralComunes.Close;
  QryGeneralComunes.SQL.Clear;
  QryGeneralComunes.SQL.Add('DELETE SEMensajes_a_Usuarios');
  QryGeneralComunes.SQL.Add('WHERE numero = '+SGRecibidos.Rows[SGRecibidos.Row].Strings[8]);
  QryGeneralComunes.ExecSQL;
  Form2.BtnActualizarClick(Nil);
end;

procedure TForm2.AyudaMenu1Click(Sender: TObject);
begin
  shellexecute(handle,'open',pchar('SOFTSIG.pdf'),'','',sw_shownormal);
end;

End.
