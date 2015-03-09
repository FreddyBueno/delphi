unit ReporteOrden;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, DBCtrls, ExtCtrls;

type
  TImpresionCompra = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImpresionCompra: TImpresionCompra;

implementation

uses  UDataModule1, FFormatoCompra;

{$R *.dfm}

procedure TImpresionCompra.Button1Click(Sender: TObject);
begin
  BoletaCompra := tBoletaCompra.create(application);
  try
    Datamodule1.MuestraconAcceso(BoletaCompra);
  except
    BoletaCompra.free;
  end;

  BoletaCompra.ADOQuery1.Close;
  BoletaCompra.ADOQuery1.Parameters.ParamValues['nofact']:= DBLookUpCombobox1.keyvalue;
  BoletaCompra.ADOQuery1.Open;
  BoletaCompra.ADOQuery2.Close;
  BoletaCompra.ADOQuery2.Parameters.ParamValues['nofact']:= DBLookUpCombobox1.keyvalue;
  BoletaCompra.ADOQuery2.Open;

  BoletaCompra.QuickRep1.PreviewInitialState := wsMaximized;
  BoletaCompra.QuickRep1.PreviewModal;
  BoletaCompra.Close;
end;

procedure TImpresionCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Action :=  caFree;
end;

procedure TImpresionCompra.FormActivate(Sender: TObject);
begin
  adoquery1.Open;
end;

end.
