unit UnitCitasDiarias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, ExtCtrls, DB, ADODB, ComCtrls,
  JvStatusBar, JvBitBtn, JvSyncSplitter, JvRadioButton;

type
  TFrmCitasDiarias = class(TForm)
    Panel1: TPanel;
    SGCitas: TStringGrid;
    QryGeneral: TADOQuery;
    JvStatusBar1: TJvStatusBar;
    Image1: TImage;
    Image2: TImage;
    Panel2: TPanel;
    RB2: TJvRadioButton;
    RB1: TJvRadioButton;
    Panel3: TPanel;
    Label1: TLabel;
    JvSyncSplitter1: TJvSyncSplitter;
    BtnActualizar: TJvBitBtn;
    Timer1: TTimer;
    Panel4: TPanel;
    Label2: TLabel;
    LblProfesional: TLabel;
    procedure LimpiaGrilla(Grilla : TStringGrid; Col : Integer);
    procedure FormCreate(Sender: TObject);
    procedure CitasDiarias;
    procedure FormShow(Sender: TObject);
    procedure SGCitasDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SGCitasDblClick(Sender: TObject);
    procedure RB1Click(Sender: TObject);
    procedure RB2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SGCitasClick(Sender: TObject);
  private
    { Private declarations }
  public
    sW  : Boolean;
    { Public declarations }
  end;

var
  FrmCitasDiarias: TFrmCitasDiarias;

implementation

uses UDataModule1, UAdmisiones, UingresosAdmisiones, SAPAcientes2;

{$R *.dfm}

procedure TFrmCitasDiarias.LimpiaGrilla(Grilla : TStringGrid; Col : Integer);
var i, e : Integer;
begin
  i := 1;
  while i < Grilla.RowCount do
    begin
      e := 0;
      while e < Col do
        begin
          SGCitas.Cells[e,i] := '';
          inc(e);
        end;
      inc(i);
    end;
  Grilla.RowCount  := 2;
end;

procedure TFrmCitasDiarias.FormCreate(Sender: TObject);
begin
  sW  := False;
  SGCitas.Cells[1,0] := 'Hora';
  SGCitas.Cells[2,0] := 'Número documento';
  SGCitas.Cells[3,0] := 'Nombre Paciente';
  SGCitas.Cells[4,0] := 'Cumplida?';
  SGCitas.Cells[5,0] := 'Cumplida?';
end;

procedure TFrmCitasDiarias.CitasDiarias;
var i : Integer;
begin
  QryGeneral.Close;
  QryGeneral.SQL.Clear;
  QryGeneral.SQL.Add('SELECT * FROM cicitas, COMUNES..SEPersonas, COMUNES..SEIdentificaciones');
  QryGeneral.SQL.Add('WHERE ');
  QryGeneral.SQL.Add(' convert(varchar(10), fecha,103) = convert(varchar(10), getdate(),103)');
  QryGeneral.SQL.Add(' and cicitas.Estado = ''A''');
  QryGeneral.SQL.Add(' AND TP_IDENT_MEDICO = COMUNES..SEIdentificaciones.Tipo_Identificacion');
  QryGeneral.SQL.Add(' AND NR_IDENT_MEDICO = COMUNES..SEIdentificaciones.No_Identificacion');
  QryGeneral.SQL.Add(' AND COMUNES..SEIdentificaciones.Persona = COMUNES..SEPersonas.id');
  QryGeneral.Open;

  LimpiaGrilla(SGCitas,10);
  i := 1;
  while not QryGeneral.Eof do
    begin
      SGCitas.Cells[1,i] := FormatDateTime('hh:mm',QryGeneral.Fields.FieldByName('FEcha').AsDateTime);
      SGCitas.Cells[2,i] := QryGeneral.Fields.FieldByName('NR_IDENT_USUAR').AsString;
      SGCitas.Cells[3,i] := QryGeneral.Fields.FieldByName('NOMBRE_USUARIO').AsString;
      SGCitas.Cells[4,i] := 'Si';
      SGCitas.Cells[5,i] := 'No';
      SGCitas.Cells[6,i] := QryGeneral.Fields.FieldByName('NR_ident_medico').AsString;
      SGCitas.Cells[7,i] := QryGeneral.Fields.FieldByName('tp_ident_medico').AsString;
      SGCitas.Cells[8,i] := FormatDateTime('DD/MM/YYYY hh:mm:ss', QryGeneral.Fields.FieldByName('Fecha').AsDateTime);
      SGCitas.Cells[9,i] := QryGeneral.Fields.FieldByName('TP_IDENT_USUAR').AsString;
      SGCitas.Cells[10,i]:= QryGeneral.Fields.FieldByName('PRIMER_APELLIDO').AsString+' '+
                            QryGeneral.Fields.FieldByName('SEGUNDO_APELLIDO').AsString +' '+
                            QryGeneral.Fields.FieldByName('NOMBRES').AsString;
      if QryGeneral.Fields.FieldByName('Cumplida').AsString = '1' then
        SGCitas.Cells[0,i] := '-'
      else
        if QryGeneral.Fields.FieldByName('Cumplida').AsString = '0' then
          SGCitas.Cells[0,i] := '.'
        else
          if QryGeneral.Fields.FieldByName('Cumplida').AsString = '' then
            SGCitas.Cells[0,i] := '';

      QryGeneral.Next;
      inc(i);
    end;
  SGCitas.RowCount  := i + 1;
end;
procedure TFrmCitasDiarias.FormShow(Sender: TObject);
begin
  CitasDiarias;
end;

procedure TFrmCitasDiarias.SGCitasDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  if ARow < 0 then Exit;

  if (ACol = 0) and (SGCitas.Cells[Acol,Arow] = '.') then
    with SGCitas.Canvas do
      Draw(Rect.Left, Rect.Top,Image1.Picture.Graphic);

  if (ACol = 0) and (SGCitas.Cells[Acol,Arow] = '-') then
    with SGCitas.Canvas do
      Draw(Rect.Left, Rect.Top,Image2.Picture.Graphic);
end;

procedure TFrmCitasDiarias.SGCitasDblClick(Sender: TObject);
begin
  if (SGCitas.Col = 4) or (SGCitas.Col = 5) then
    SGCitas.Rows[SGCitas.Row].Strings[0] := '';

  if (SGCitas.Rows[SGCitas.Row].Strings[0] = '') and (SGCitas.Col = 4) then
    begin
      try
        DataModule1.ADOConnection1.BeginTrans;

        QryGeneral.Close;
        QryGeneral.SQL.Clear;
        QryGeneral.SQL.Add('update cicitas set Cumplida = 1');
        QryGeneral.SQL.Add(' where fecha = '''+FormatDateTime('DD/MM/YYYY hh:mm:ss',StrToDateTime(SGCitas.Rows[SGCitas.Row].Strings[8]))+'''');
        QryGeneral.SQL.Add(' and NR_ident_medico = '''+SGCitas.Rows[SGCitas.Row].Strings[6]+'''');
        QryGeneral.SQL.Add(' and tp_ident_medico = '''+SGCitas.Rows[SGCitas.Row].Strings[7]+'''');
        QryGeneral.ExecSQL;

        DataModule1.ADOConnection1.CommitTrans;
        SGCitas.Rows[SGCitas.Row].Strings[0] := '-';
      except
        DataModule1.ADOConnection1.RollbackTrans;
        SGCitas.Rows[SGCitas.Row].Strings[0] := '';
      end;
    end
  else
    if (SGCitas.Rows[SGCitas.Row].Strings[0] = '')  and (SGCitas.Col = 5) then
      begin
        try
          DataModule1.ADOConnection1.BeginTrans;

          QryGeneral.Close;
          QryGeneral.SQL.Clear;
          QryGeneral.SQL.Add('update cicitas set Cumplida = 0');
          QryGeneral.SQL.Add(' where fecha = '''+FormatDateTime('DD/MM/YYYY hh:mm:ss',StrToDateTime(SGCitas.Rows[SGCitas.Row].Strings[8]))+'''');
          QryGeneral.SQL.Add(' and NR_ident_medico = '''+SGCitas.Rows[SGCitas.Row].Strings[6]+'''');
          QryGeneral.SQL.Add(' and tp_ident_medico = '''+SGCitas.Rows[SGCitas.Row].Strings[7]+'''');
          QryGeneral.ExecSQL;

          DataModule1.ADOConnection1.CommitTrans;
          SGCitas.Rows[SGCitas.Row].Strings[0] := '.'
        except
          DataModule1.ADOConnection1.RollbackTrans;
          SGCitas.Rows[SGCitas.Row].Strings[0] := '';
        end;
      end;
end;

procedure TFrmCitasDiarias.RB1Click(Sender: TObject);
begin
  if RB1.Checked = True then
    Timer1.Interval := 10000;
end;

procedure TFrmCitasDiarias.RB2Click(Sender: TObject);
begin
  if RB2.Checked = True then
    Timer1.Interval := 0;
end;

procedure TFrmCitasDiarias.Timer1Timer(Sender: TObject);
begin
  CitasDiarias;
end;

procedure TFrmCitasDiarias.SGCitasClick(Sender: TObject);
begin
  LblProfesional.Caption  := SGCitas.Rows[SGCitas.Row].Strings[10];
end;

end.
