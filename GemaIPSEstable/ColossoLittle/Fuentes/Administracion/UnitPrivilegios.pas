unit UnitPrivilegios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, ComCtrls, StdCtrls, Buttons, DB, ADODB,
  JvComponent, JvRollOut;

type
  TFrmPrivilegios = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    SG1: TStringGrid;
    PageControl2: TPageControl;
    Splitter1: TSplitter;
    Panel5: TPanel;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Edit1: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    EditPrimerApellido: TEdit;
    EditPrimerNombre: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn2: TBitBtn;
    PageControl4: TPageControl;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    EditNombre: TEdit;
    EditDocumento: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    SGUsuario: TStringGrid;
    QryComunes: TADOQuery;
    Panel7: TPanel;
    BitBtn5: TBitBtn;
    Label6: TLabel;
    EditUsuario: TEdit;
    Image1: TImage;
    Image2: TImage;
    JvRollout1: TJvRollout;
    SGModulos: TStringGrid;
    Splitter2: TSplitter;
    Panel4: TPanel;
    SGUser: TStringGrid;
    Label7: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure LimpiaGrilla(Grilla : TStringGrid; Col : Integer);
    procedure SG1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SG1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure PageControl2Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SGUsuarioDblClick(Sender: TObject);
    procedure BuscaFormas;
    procedure FormCreate(Sender: TObject);
    procedure SGModulosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SGUserDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SGUserDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrivilegios: TFrmPrivilegios;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TFrmPrivilegios.BitBtn1Click(Sender: TObject);
begin
  QryComunes.Close;
  QryComunes.SQL.Clear;
  QryComunes.SQL.Add('Select * from SEPersonas, SEIdentificaciones');
  QryComunes.SQL.Add('where id = '''+Edit1.Text+''' and persona = id');
  QryComunes.Open;

  if not QryComunes.Eof then
    begin
      EditNombre.Text     := QryComunes.Fields.FieldByName('Primer_Apellido').AsString + ' '+ QryComunes.Fields.FieldByName('Segundo_Apellido').AsString + ' '+
                             QryComunes.Fields.FieldByName('Nombres').AsString;
      EditDocumento.Text  := QryComunes.Fields.FieldByName('No_Identificacion').AsString;
      EditUsuario.Text    := QryComunes.Fields.FieldByName('id').AsString;
    end;
end;

procedure TFrmPrivilegios.BitBtn5Click(Sender: TObject);
var i : Integer;
begin
  if EditUsuario.Text  = '' then
    begin
      Application.MessageBox('Debe seleccionar un usuario para poder cargar la información','Información',MB_OK+MB_ICONINFORMATION);
      Exit;
    end;

  QryComunes.Close;
  QryComunes.SQL.Clear;
  QryComunes.SQL.Add('select * from SEFormas, SEAccesosForma');
  QryComunes.SQL.Add('where SEAccesosForma.id = '''+EditUsuario.Text+'''');
  QryComunes.SQL.Add('  and SEFormas.forma = SEAccesosForma.Forma');
  QryComunes.Open;

  LimpiaGrilla(Sg1,10);
  i := 1;
  while not QryComunes.Eof do
    begin
      SG1.Cells[1,i]  := QryComunes.Fields.FieldByName('Forma').AsString;
      SG1.Cells[2,i]  := QryComunes.Fields.FieldByName('DescripcionForma').AsString;
      SG1.Cells[3,i]  := QryComunes.Fields.FieldByName('UltimoAcceso').AsString;
      SG1.Cells[4,i]  := QryComunes.Fields.FieldByName('FechaUA').AsString;
      if QryComunes.Fields.FieldByName('Acceso').AsString = 'S' then
        SG1.Cells[0,i]  := '.'
      else
        SG1.Cells[0,i]  := '-';
      QryComunes.Next;
      inc(i);
    end;
  SG1.RowCount  := i + 1;
end;

procedure TFrmPrivilegios.LimpiaGrilla(Grilla : TStringGrid; Col : Integer);
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
  Grilla.RowCount  := 2;
end;

procedure TFrmPrivilegios.SG1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  if ARow < 0 then Exit;

  if (ACol = 0) and (SG1.Cells[Acol,Arow] = '-') then
    with SG1.Canvas do
      Draw(Rect.Left, Rect.Top,Image1.Picture.Graphic);

  if (ACol = 0) and (SG1.Cells[Acol,Arow] = '.') then
    with SG1.Canvas do
      Draw(Rect.Left, Rect.Top,Image2.Picture.Graphic);
end;

procedure TFrmPrivilegios.SG1DblClick(Sender: TObject);
begin
  if (SG1.Col = 5) or (SG1.Col = 6) then
    SG1.Rows[SG1.Row].Strings[0] := '';

  if (SG1.Rows[SG1.Row].Strings[0] = '') and (SG1.Col = 5) then
    begin
      try
        DataModule1.ADOComunes.BeginTrans;

        QryComunes.Close;
        QryComunes.SQL.Clear;
        QryComunes.SQL.Add('update SEAccesosForma set acceso = ''S''');
        QryComunes.SQL.Add(' where  id = '''+EditUsuario.Text+'''');
        QryComunes.SQL.Add(' and Forma = '''+SG1.Rows[SG1.Row].Strings[1]+''' ');
        QryComunes.ExecSQL;

        DataModule1.ADOComunes.CommitTrans;
        SG1.Rows[SG1.Row].Strings[0] := '.';

        //Envia un mensaje al Usuario.
        dataModule1.Mensaje(DataModule1.ADOQuery1.Fields.FieldByName('ID').Asinteger,strtoint(EditUsuario.Text),'Se le ha autorizado ingreso al programa: '+SG1.Rows[SG1.Row].Strings[1],'A');

      except
        DataModule1.ADOComunes.RollbackTrans;
        SG1.Rows[SG1.Row].Strings[0] := '';
      end;
    end
  else
    if (SG1.Rows[SG1.Row].Strings[0] = '')  and (SG1.Col = 6) then
      begin
        try
          DataModule1.ADOComunes.BeginTrans;

          QryComunes.Close;
          QryComunes.SQL.Clear;
          QryComunes.SQL.Add('update SEAccesosForma set acceso = ''N''');
          QryComunes.SQL.Add(' where id = '''+EditUsuario.Text+'''');
          QryComunes.SQL.Add(' and Forma = '''+SG1.Rows[SG1.Row].Strings[1]+''' ');
          QryComunes.ExecSQL;

          DataModule1.ADOComunes.CommitTrans;
          SG1.Rows[SG1.Row].Strings[0] := '-';

          //Envia un mensaje al Usuario.
          dataModule1.Mensaje(DataModule1.ADOQuery1.Fields.FieldByName('ID').Asinteger,strtoint(EditUsuario.Text),'Se le ha denegado ingreso al programa: '+SG1.Rows[SG1.Row].Strings[1],'A');

        except
          DataModule1.ADOComunes.RollbackTrans;
          SG1.Rows[SG1.Row].Strings[0] := '';
        end;
      end;
end;

procedure TFrmPrivilegios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
  FrmPrivilegios := nil;
end;

procedure TFrmPrivilegios.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
    BitBtn1Click(Self);  
end;

procedure TFrmPrivilegios.PageControl2Change(Sender: TObject);
begin
  case PageControl2.ActivePageIndex of
    0 : PageControl4.ActivePageIndex := 0;
    1 : PageControl4.ActivePageIndex := 1;
  end;
end;

procedure TFrmPrivilegios.BitBtn2Click(Sender: TObject);
var i : Integer;
begin
  QryComunes.Close;
  QryComunes.SQL.Clear;
  QryComunes.SQL.Add('Select * from SEPersonas P , SEIdentificaciones Iden');
  QryComunes.SQL.Add('where ');

  if (EditPrimerApellido.Text <> '') and (EditPrimerNombre.Text <> '') then
    begin
      QryComunes.SQL.Add(' (P.PRIMER_APELLIDO like '+chr(39)+'%'+EditPrimerApellido.Text+'%'+chr(39)+')');
      QryComunes.SQL.Add(' and (P.NOMBRES like '+chr(39)+'%'+EditPrimerNombre.Text+'%'+chr(39)+')');
    end
  else
    if (EditPrimerApellido.Text <> '') and (EditPrimerNombre.Text = '') then
      QryComunes.SQL.Add(' (P.PRIMER_APELLIDO like '+chr(39)+'%'+EditPrimerApellido.Text+'%'+chr(39)+')')
    else
      if (EditPrimerApellido.Text = '') and (EditPrimerNombre.Text <> '') then
        QryComunes.SQL.Add(' (P.NOMBRES like '+chr(39)+'%'+EditPrimerNombre.Text+'%'+chr(39)+')');
  QryComunes.SQL.Add(' and SEIdentificaciones.persona = P.id ');
  QryComunes.Open;

  i := 1;
  LimpiaGrilla(SGUsuario, 5);
  while not QryComunes.Eof do
    begin
      SGUsuario.Cells[2,i] := QryComunes.Fields.FieldByName('Primer_Apellido').AsString + ' '+ QryComunes.Fields.FieldByName('Segundo_Apellido').AsString + ' '+
                              QryComunes.Fields.FieldByName('Nombres').AsString;
      SGUsuario.Cells[1,i] := QryComunes.Fields.FieldByName('No_Identificacion').AsString;
      SGUsuario.Cells[0,i] := QryComunes.Fields.FieldByName('id').AsString;
      QryComunes.Next;
      inc(i);
    end;
  SGUsuario.RowCount  := i + 1;
end;

procedure TFrmPrivilegios.SGUsuarioDblClick(Sender: TObject);
begin
  EditNombre.Text     := SGUsuario.Rows[SGUsuario.Row].Strings[2];
  EditDocumento.Text  := SGUsuario.Rows[SGUsuario.Row].Strings[1];
  EditUsuario.Text    := SGUsuario.Rows[SGUsuario.Row].Strings[0];
  PageControl4.ActivePageIndex  := 0;
end;

procedure TFrmPrivilegios.BuscaFormas;
var i : Integer;
begin
  QryComunes.Close;
  QryComunes.SQL.Clear;
  QryComunes.SQL.Add('Select * from SEFormas');
  QryComunes.SQL.Add('order by Forma');
  QryComunes.Open;

  i := 1;
  LimpiaGrilla(SGModulos, 10);
  while not QryComunes.Eof do
    begin
      SGModulos.Cells[1,i]  := QryComunes.Fields.FieldByName('Forma').AsString;
      SGModulos.Cells[2,i]  := QryComunes.Fields.FieldByName('DescripcionForma').AsString;
      inc(i);
      QryComunes.Next;
    end;
  SGModulos.RowCount  := i + 1;
end;

procedure TFrmPrivilegios.FormCreate(Sender: TObject);
begin
  SGModulos.Cells[1,0]  := 'Forma';
  SGModulos.Cells[2,0]  := 'Descripción';

  SGUser.Cells[1,0]     := 'ID';
  SGUser.Cells[2,0]     := 'Nombre de usuario';
  SGUser.Cells[3,0]     := 'Documento';
  SGUser.Cells[4,0]     := 'Conceder';
  SGUser.Cells[5,0]     := 'Denegar';

  SGUsuario.Cells[2,0]  := 'Nombre de usuario';
  SGUsuario.Cells[1,0]  := 'Documento';
  SGUsuario.Cells[0,0]  := 'ID';

  SG1.Cells[1,0]        := 'Forma';
  SG1.Cells[2,0]        := 'Descripción';
  SG1.Cells[3,0]        := 'Ultimo acceso';
  SG1.Cells[4,0]        := 'FechaUA';
  SG1.Cells[5,0]        := 'Conceder';
  SG1.Cells[6,0]        := 'Denegar';
end;

procedure TFrmPrivilegios.SGModulosClick(Sender: TObject);
var i : Integer;
begin
  QryComunes.Close;
  QryComunes.SQL.Clear;
  QryComunes.SQL.Add('select * from SEFormas, SEAccesosForma,SEPersonas, SEIdentificaciones');
  QryComunes.SQL.Add(' where SEFormas.Forma = '''+SGModulos.Rows[SGModulos.Row].Strings[1]+'''');
  QryComunes.SQL.Add('  and SEFormas.Forma = SEAccesosForma.Forma');
  QryComunes.SQL.Add('  and SEAccesosForma.ID = SEPersonas.ID');
  QryComunes.SQL.Add('  and SEIdentificaciones.persona = SEPersonas.ID');
  QryComunes.Open;

  i := 1;
  LimpiaGrilla(SGUser, 20);
  while not QryComunes.Eof do
    begin
      SGUser.Cells[1,i]  := QryComunes.Fields.FieldByName('id').AsString;
      SGUser.Cells[2,i]  := QryComunes.Fields.FieldByName('Primer_Apellido').AsString + ' ' +
                            QryComunes.Fields.FieldByName('Segundo_Apellido').AsString + ' ' +
                            QryComunes.Fields.FieldByName('Nombres').AsString;
      SGUser.Cells[3,i]  := QryComunes.Fields.FieldByName('No_Identificacion').AsString;

      if QryComunes.Fields.FieldByName('Acceso').AsString = 'S' then
        SGUser.Cells[0,i]  := '.'
      else
        SGUser.Cells[0,i]  := '-';
      QryComunes.Next;
      inc(i);
    end;
  SGUser.RowCount  := i + 1;
end;

procedure TFrmPrivilegios.FormShow(Sender: TObject);
begin
  BuscaFormas;
end;

procedure TFrmPrivilegios.SGUserDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  if ARow < 0 then Exit;

  if (ACol = 0) and (SGUser.Cells[Acol,Arow] = '-') then
    with SGUser.Canvas do
      Draw(Rect.Left, Rect.Top,Image1.Picture.Graphic);

  if (ACol = 0) and (SGUser.Cells[Acol,Arow] = '.') then
    with SGUser.Canvas do
      Draw(Rect.Left, Rect.Top,Image2.Picture.Graphic);
end;

procedure TFrmPrivilegios.SGUserDblClick(Sender: TObject);
begin
  if (SGUser.Col = 4) or (SGUser.Col = 5) then
    SGUser.Rows[SGUser.Row].Strings[0] := '';

  if (SGUser.Rows[SGUser.Row].Strings[0] = '') and (SGUser.Col = 4) then
    begin
      try
        DataModule1.ADOComunes.BeginTrans;

        QryComunes.Close;
        QryComunes.SQL.Clear;
        QryComunes.SQL.Add('update SEAccesosForma set acceso = ''S''');
        QryComunes.SQL.Add(' where  id = '''+SGUser.Rows[SGUser.Row].Strings[1]+'''');
        QryComunes.SQL.Add(' and Forma = '''+SGModulos.Rows[SGModulos.Row].Strings[1]+''' ');
        QryComunes.ExecSQL;

        DataModule1.ADOComunes.CommitTrans;
        SGUser.Rows[SGUser.Row].Strings[0] := '.';
      except
        DataModule1.ADOComunes.RollbackTrans;
        SGUser.Rows[SGUser.Row].Strings[0] := '';
      end;
    end
  else
    if (SGUser.Rows[SGUser.Row].Strings[0] = '')  and (SGUser.Col = 5) then
      begin
        try
          DataModule1.ADOComunes.BeginTrans;

          QryComunes.Close;
          QryComunes.SQL.Clear;
          QryComunes.SQL.Add('update SEAccesosForma set acceso = ''N''');
          QryComunes.SQL.Add(' where id = '''+SGUser.Rows[SGUser.Row].Strings[1]+'''');
          QryComunes.SQL.Add(' and Forma = '''+SGModulos.Rows[SGModulos.Row].Strings[1]+''' ');          
          QryComunes.ExecSQL;

          DataModule1.ADOComunes.CommitTrans;
          SGUser.Rows[SGUser.Row].Strings[0] := '-'
        except
          DataModule1.ADOComunes.RollbackTrans;
          SGUser.Rows[SGUser.Row].Strings[0] := '';
        end;
      end;
end;

end.
