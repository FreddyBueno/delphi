unit UParametrosCaja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ComCtrls, ExtCtrls, DB, ADODB, Mask;

type
  TParametrosCaja = class(TForm)
    PageControl1: TPageControl;
    Panel1: TPanel;
    TabSheet1: TTabSheet;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    Label9: TLabel;
    DBComboBox3: TDBComboBox;
    Memo1: TMemo;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DataSource5: TDataSource;
    ADOTable4: TADOTable;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ParametrosCaja: TParametrosCaja;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TParametrosCaja.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  ADOTable1.Post;

  //Graba el LOG.
  Datamodule1.Graba_Logx(01/01/2001,'G','','Graba Parametros de Caja. ','Caja','');
end;

procedure TParametrosCaja.FormActivate(Sender: TObject);
begin
  ADOTable1.Open;
  ADOTable1.Edit;
  ADOTable4.Open;
end;

end.
