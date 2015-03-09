unit Lista_Tablas3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRCtrls, QuickRpt, Vcl.ExtCtrls,
  Vcl.Buttons, JvExGrids, JvStringGrid, Vcl.Grids, JvgStringGrid,
  JvComponentBase, JvDBGridExport, JvGridFilter;

type
  TFrmListaF = class(TForm)
    JvGridFilter1: TJvGridFilter;
    JvDBGridExcelExport1: TJvDBGridExcelExport;
    JvgStringGrid1: TJvgStringGrid;
    JvStringGrid1: TJvStringGrid;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmListaF: TFrmListaF;

implementation

{$R *.dfm}

procedure TFrmListaF.SpeedButton2Click(Sender: TObject);
begin
  //gJvGridFilter1.Filter();
end;

end.
