unit FCapitulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, DBCtrls, ComCtrls, Mask, ExtCtrls;

type
  TFrmCapitulos = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label5: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    BitBtn2: TBitBtn;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DataSource4: TDataSource;
    ADOTable4: TADOTable;
    DataSource5: TDataSource;
    ADOTable5: TADOTable;
    Label3: TLabel;
    Shape1: TShape;
    DBEdit4: TDBEdit;
    DBEdit3: TDBEdit;
    ADOTable2: TADOTable;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCapitulos: TFrmCapitulos;

implementation

uses UDataModule1, Libreria_PrateincoForm;

{$R *.dfm}

procedure TFrmCapitulos.BitBtn2Click(Sender: TObject);
begin
  ReporteadorP('Listado de Capitulos','SELECT * FROM SACAPITULOcups','');
end;

procedure TFrmCapitulos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action :=  caFree;
end;

procedure TFrmCapitulos.FormActivate(Sender: TObject);
begin
  adotable1.open;
  adotable2.open;
  adotable4.open;
  adotable5.open;
  if ADOTable2.FieldValues['Tipo_Factura'] = '2' then Begin
    DBLookupComboBox3.Enabled := False;
    DBEdit4.Enabled := False;
  End
end;

end.
