unit Ffactura1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, DBCtrls, ExtCtrls;

type
  TImpresionOrden = class(TForm)
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
  ImpresionOrden: TImpresionOrden;

implementation

uses fOrdenCompra, UDataModule1;

{$R *.dfm}

procedure TImpresionOrden.Button1Click(Sender: TObject);
begin
  OrdenCompra := tOrdenCompra.create(application);
  try
    OrdenCompra.show;
  except
    OrdenCompra.free;
  end;

  OrdenCompra.ADOQuery1.Close;
  OrdenCompra.ADOQuery1.Parameters.ParamValues['nofact']:= DBLookUpCombobox1.keyvalue;
  OrdenCompra.ADOQuery1.Open;
  OrdenCompra.ADOQuery2.Close;
  OrdenCompra.ADOQuery2.Parameters.ParamValues['nofact']:= DBLookUpCombobox1.keyvalue;
  OrdenCompra.ADOQuery2.Open;
  //Graba el LOG.
  Datamodule1.Graba_Logx(01/01/2001,'G','','Reimprimir Orden: '+DBLookupComboBox1.Text,'Ordenes','');

  OrdenCompra.QuickRep1.PreviewInitialState := wsMaximized;
  OrdenCompra.QuickRep1.PreviewModal;
  OrdenCompra.Close;
end;

procedure TImpresionOrden.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Action :=  caFree;
end;

procedure TImpresionOrden.FormActivate(Sender: TObject);
begin
  adoquery1.Open;
end;

end.
