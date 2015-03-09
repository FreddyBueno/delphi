unit UnitReprogramar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvBitBtn, ComCtrls, ExtCtrls, mxCalendar,
  mxOutlookBar, Grids, JvExButtons;

type
  TFrmReprogramar = class(TForm)
    mxOutlookBar1: TmxOutlookBar;
    Header1: TmxOutlookBarHeader;
    mxCalendar1: TmxCalendar;
    DateTimePicker2: TDateTimePicker;
    EditTiempo: TEdit;
    UpDown1: TUpDown;
    MmObservaciones: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BtnAceptar: TJvBitBtn;
    BtnCancelar: TJvBitBtn;
    SGMedicos: TStringGrid;
    BtnCambiar: TJvBitBtn;
    CBTiposCitas: TComboBox;
    Label15: TLabel;
    procedure mxCalendar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnCambiarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmReprogramar: TFrmReprogramar;

implementation

{$R *.dfm}

procedure TFrmReprogramar.mxCalendar1Click(Sender: TObject);
begin
  DateTimePicker2.Date   := mxCalendar1.Date;
end;

procedure TFrmReprogramar.FormCreate(Sender: TObject);
begin
  SGMedicos.Cells[0,0] := 'Tipo doc.';
  SGMedicos.Cells[1,0] := 'Numero documento';
  SGMedicos.Cells[2,0] := 'Nombre del profesional';
end;

procedure TFrmReprogramar.BtnCambiarClick(Sender: TObject);
begin
  SGMedicos.Enabled  := True;
end;

end.
