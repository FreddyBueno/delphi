unit ComplementoAdmi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Buttons, Mask, ADODB, ComCtrls, DB;

type
  TFCompAdm = class(TForm)
    GroupBox2: TGroupBox;
    ADOQuery1: TADOQuery;
    DataSource7: TDataSource;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Button1: TButton;
    Label11: TLabel;
    DBLookupComboBox11: TDBLookupComboBox;
    Label16: TLabel;
    Edit4: TEdit;
    Label17: TLabel;
    ComboBox1: TComboBox;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure DataSource7DataChange(Sender: TObject; Field: TField);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCompAdm: TFCompAdm;

implementation

{$R *.dfm}

uses ModuloAdmision;

procedure TFCompAdm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  action:=cafree;
end;

procedure TFCompAdm.FormActivate(Sender: TObject);
begin
  ADOQuery1.Open;
  DatamoduloAdmision.ADOQueryConvenios.Open;
  DBlookupComboBox1.KeyValue :=ADOQuery1.FieldValues['NO_ADMISION'];
end;

procedure TFCompAdm.DataSource7DataChange(Sender: TObject; Field: TField);
begin
    Edit4.Text     := ADOQuery1.FieldValues['NO_AUTORIZACION'];
    ComboBox1.Text := ADOQuery1.FieldValues['DURACION'];
    ADOQuery1.Edit;
end;

procedure TFCompAdm.Button1Click(Sender: TObject);
begin
  if MessageDlg('Esta totalmente seguro de reactivar la admisión?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    if DBLookupComboBox11.Text <> '' then
    Begin
      ADOQuery1.FieldValues['ASEGURADORA'] :=  DatamoduloAdmision.ADOQueryConvenios.FieldValues['Aseguradora'];
      ADOQuery1.FieldValues['NO_CONTRATO'] :=  DatamoduloAdmision.ADOQueryConvenios.FieldValues['NO_CONTRATO'];
    End;
    if Edit4.Text <> '' then ADOQuery1.FieldValues['NO_AUTORIZACION'] :=  Edit4.Text;
    if ComboBox1.Text <> '' then ADOQuery1.FieldValues['DURACION'] :=  ComboBox1.Text;
    ADOQuery1.FieldValues['Est_Adminsion']:='A';
    ADOQuery1.Post;
  end;
  Close;
end;

end.
