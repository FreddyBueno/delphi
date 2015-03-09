unit ParametFact;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ComCtrls, ExtCtrls, DB, ADODB, Mask;

type
  TParametrosFact = class(TForm)
    PageControl1: TPageControl;
    Panel1: TPanel;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBLookupComboBox5: TDBLookupComboBox;
    DataSource2: TDataSource;
    Label12: TLabel;
    Label13: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    ADOTable3: TADOTable;
    DataSource3: TDataSource;
    Label14: TLabel;
    DBComboBox2: TDBComboBox;
    ADOQuery1: TADOQuery;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DataSource4: TDataSource;
    ADOTable2: TADOTable;
    Label2: TLabel;
    DBComboBox3: TDBComboBox;
    Label3: TLabel;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSource5: TDataSource;
    ADOTable4: TADOTable;
    Label5: TLabel;
    DBComboBox1: TDBComboBox;
    TabSheet4: TTabSheet;
    Label6: TLabel;
    DBComboBox4: TDBComboBox;
    Label15: TLabel;
    DBComboBox5: TDBComboBox;
    lbl: TLabel;
    DBComboBox: TDBComboBox;
    Label16: TLabel;
    DBComboBox6: TDBComboBox;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit1: TDBEdit;
    DBEdit7: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ParametrosFact: TParametrosFact;

implementation

{$R *.dfm}

procedure TParametrosFact.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IF trim(DBLookupCombobox5.Text)='' Then
    IF DBCombobox2.Text='S' Then
    Begin
      Showmessage('Debe Ingresar el Tipo de Documento.');
      Exit;
    End;
  IF trim(DBLookupCombobox6.Text)='' Then
    IF DBCombobox2.Text='S' Then
    Begin
      Showmessage('Debe Ingresar el Almacen de Origen');
      Exit;
    End;
  IF trim(DBLookupCombobox2.Text)='' Then
    IF DBCombobox3.Text='S' Then
    Begin
      Showmessage('Debe Ingresar el Tipo de de Comprobante Contable.');
      Exit;
    End;
  Action :=  caFree;
  ADOTable1.Post;
end;

procedure TParametrosFact.FormActivate(Sender: TObject);
begin
  ADOQuery1.Open;
  ADOTable3.Open;
  ADOTable4.Open;
  ADOTable1.Open;
  ADOTable2.Open;
  ADOTable1.Edit;
end;

end.
