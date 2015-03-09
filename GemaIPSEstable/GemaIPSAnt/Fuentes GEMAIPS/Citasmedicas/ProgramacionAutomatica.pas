unit ProgramacionAutomatica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, DBCtrls, Buttons, JvBitBtn, ComCtrls,Libreria_Prateinco,
  Grids, ExtCtrls, JvExButtons;

type
  TProgAuto = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    StringGrid1: TStringGrid;
    ProgressBar1: TProgressBar;
    JvBitBtn1: TJvBitBtn;
    Label1: TLabel;
    JvBitBtn2: TJvBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    Edit1: TEdit;
    Label2: TLabel;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    JvBitBtn3: TJvBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    DateTimePicker1: TDateTimePicker;
    Label7: TLabel;
    Label8: TLabel;
    DateTimePicker2: TDateTimePicker;
    QryGeneral: TADOQuery;
    Label9: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure JvBitBtn2Click(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProgAuto: TProgAuto;

implementation

uses FAgendaMedica;

{$R *.dfm}

procedure TProgAuto.FormCreate(Sender: TObject);
begin
  ADOQuery1.Open;
  StringGrid1.ColWidths[0]:=70;
  StringGrid1.ColWidths[1]:=200;
  StringGrid1.ColWidths[2]:=70;

  StringGrid1.Cells[0,0] := 'Cd Tipo';
  StringGrid1.Cells[1,0] := 'Descripción';
  StringGrid1.Cells[2,0] := 'Cantidad';
end;

procedure TProgAuto.JvBitBtn2Click(Sender: TObject);
Var i:Integer;
begin
  if Edit1.Text <> '' then
  Begin
    StringGrid1.Cells[0,StringGrid1.RowCount-1]:=DBLookupcombobox1.KeyValue;
    StringGrid1.Cells[1,StringGrid1.RowCount-1]:=DBLookupcombobox1.Text;
    StringGrid1.Cells[2,StringGrid1.RowCount-1]:=Edit1.Text;
    StringGrid1.RowCount := StringGrid1.RowCount+1;
    Edit1.Text := '';

    Edit3.Text := '0';
    For i:=1 To StringGrid1.RowCount-2 Do
      Edit3.Text := inttostr(strtoint(Edit3.Text) + strtoint(StringGrid1.Cells[2,i]));
  End
  Else Showmessage('ERROR: Ingrese primero una Cantidad de Secciones.');
end;

procedure TProgAuto.JvBitBtn3Click(Sender: TObject);
Var i:Integer;
begin
  For i:=StringGrid1.Row TO StringGrid1.RowCount-1 Do
  Begin
    StringGrid1.Cells[0,i]:=StringGrid1.Cells[0,i+1];
    StringGrid1.Cells[1,i]:=StringGrid1.Cells[1,i+1];
    StringGrid1.Cells[2,i]:=StringGrid1.Cells[2,i+1];
  End;
  StringGrid1.RowCount := StringGrid1.RowCount-1;

  Edit3.Text := '0';
  For i:=1 To StringGrid1.RowCount-2 Do
    Edit3.Text := inttostr(strtoint(Edit3.Text) + strtoint(StringGrid1.Cells[2,i]));
end;

procedure TProgAuto.FormDeactivate(Sender: TObject);
begin
  close;
end;

procedure TProgAuto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TProgAuto.JvBitBtn1Click(Sender: TObject);
Var
  x,y,k,i,l,n,m,pvez : Integer;
  a         : array of String;
  d         : array of String;
  valida    : bool;
  Cad       : string;
  fecHor,Mindate,Maxdate: string;
begin
  If edit2.Text = '' Then
  Begin
    Showmessage('ERROR: Debe asignar un numero de sesiones diarias.');
    Close;
  End;

  QryGeneral.Close;  //QUERY PARA EXTRAER LOS HORARIOS DE LAS SEDES.
  QryGeneral.SQL.Clear;
  QryGeneral.SQL.Add('SELECT * FROM CIParametros');
  QryGeneral.Open;

  Progressbar1.Max := strtoint(Edit3.text);
  Progressbar1.Position := 0;
  //Repeat
    //Definiendo la Fecha
    FAgenda.mxCalendar1.date := DateTimePicker1.Date;
    FAgenda.mxCalendar1.Repaint;
    FAgenda.mxCalendar1.Refresh;

    Pvez := 0;
    Setlength(a,strtoint(Edit2.Text));
    Setlength(d,strtoint(Edit2.Text));

    //For para cada una de las ubicaciones
    x:=1;
    For m:=1 TO strtoint(Edit3.text) Do
    Begin
      Progressbar1.Position := Progressbar1.Position + 1;
      valida := false;
      //Verifica que no se haya incluido ya esta seccion en el dia
      For l:=1 TO k-1 Do if a[l] = StringGrid1.Cells[1,x] Then valida := true;

      if Valida = False Then
      Begin
        //Ubica la seccion en la agenda de ubicaciones
        i:=1;
        While (FAgenda.SGUbicacion.Cells[1,i] <> StringGrid1.Cells[0,x]) Do inc(i);
        FAgenda.SGUbicacion.Row := i;
        FAgenda.mxCalendar1Click(nil);
        FAgenda.Refresh;

        //Ubica una Hora Libre y que este seguida a las ya asignadas
        i:=0;
        Repeat
          inc(i);
          if ((FAgenda.SGCitas.Cells[2,i] = '') and (pvez = 0)) then Begin
            MinDate := FAgenda.SGCitas.Cells[1,i];
            MaxDate := FAgenda.SGCitas.Cells[1,i];
          End;
        Until ((FAgenda.SGCitas.Cells[2,i] = '') AND
              ((FAgenda.SGCitas.Cells[1,i] = Mindate) or (FAgenda.SGCitas.Cells[1,i] = Maxdate)) AND
              (Busca_arreglo(FAgenda.SGCitas.Cells[1,i],d)=False)) OR
              (i >= FAgenda.SGCitas.rowcount);

        if i < FAgenda.SGCitas.rowcount Then FAgenda.SGCitas.Row := i;
        FAgenda.Refresh;

        //Verifica que las siguientes horas esten disponibles en otras maquinas.
        if (FAgenda.SGCitas.Cells[1,i] = Mindate) or (FAgenda.SGCitas.Cells[1,i] = Maxdate) Then
        Begin
          inc(pvez);
          a[k] := FAgenda.SGUbicacion.Cells[0,FAgenda.SGUbicacion.Row];
          d[k] := FAgenda.SGCitas.Cells[1,i];
          if (FAgenda.SGCitas.Cells[1,i] = Mindate) Then MinDate := FAgenda.SGCitas.Cells[1,i-1];
          if (FAgenda.SGCitas.Cells[1,i] = Maxdate) Then MaxDate := FAgenda.SGCitas.Cells[1,i+1];
          if k < strtoint(Edit2.Text)-1 Then
          Begin
            inc(k)
          End
          Else Begin
            //Guarda la programacion y reinicia variables
            For k:=0 TO strtoint(Edit2.Text)-1 DO
            Begin
              i:=1;
              While (FAgenda.SGUbicacion.Cells[0,i] <> a[k]) Do inc(i);
              FAgenda.SGUbicacion.Row := i;
              FAgenda.mxCalendar1Click(nil);
              FAgenda.Refresh;

              //Ubica una Hora Libre y que este seguida a las ya asignadas
              i:=0;
              While (FAgenda.SGCitas.Cells[1,i] <> d[k]) Do inc(i);
              FAgenda.SGCitas.Row := i;
              FAgenda.Refresh;
              FAgenda.BtnNuevaCClick(Nil);
              FAgenda.BtnAsignarCitaClick(Nil);
            End;

            Pvez := 0;
            DateTimePicker1.Date:= DateTimePicker1.Date+1;
            FAgenda.mxCalendar1.date := DateTimePicker1.Date;
            k:=0;
            a:=nil;
            d:=nil;
            Setlength(a,strtoint(Edit2.Text));
            Setlength(d,strtoint(Edit2.Text));
          End;
        End;

        If (x>=StringGrid1.RowCount-2) Then x:=1
        Else inc(x);
      End;
    End;
  //Until DateTimePicker1.Date = DateTimePicker2.Date;
  Close;
end;

procedure TProgAuto.DateTimePicker1Change(Sender: TObject);
begin
  FAgenda.mxCalendar1.date := DateTimePicker1.Date;
  FAgenda.mxCalendar1Click(nil);
  FAgenda.Refresh;
end;

procedure TProgAuto.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  ADOQuery2.Close;
  ADOQuery2.Parameters.ParamValues['sec'] := ADOQuery1.FieldValues['CD_Tipo'];
  ADOQuery2.Open;
end;

end.
