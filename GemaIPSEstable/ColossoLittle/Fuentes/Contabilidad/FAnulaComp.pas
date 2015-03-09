unit FAnulaComp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, DB, StdCtrls, DBCtrls, ExtCtrls, Mask;

type
  TFormAnulaComp = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Button1: TButton;
    DBLookupComboBox5: TDBLookupComboBox;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    ADOTable1: TADOTable;
    DataSource4: TDataSource;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Memo1: TMemo;
    Label3: TLabel;
    DBText1: TDBText;
    DBLookupComboBox2: TDBLookupComboBox;
    Label4: TLabel;
    DataSource2: TDataSource;
    ADOTable2: TADOTable;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBox5Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAnulaComp: TFormAnulaComp;

implementation

uses MAIN, UDataModule1;

{$R *.dfm}

procedure TFormAnulaComp.Button1Click(Sender: TObject);
begin
  IF DBEdit1.Text<>'A' Then
  Begin
    ADOQuery1.Edit;
    ADOQuery1.FieldValues['Estad2']:='A';
    ADOQuery1.FieldValues['Persona_Anulo']:=MainForm.statusbar1.panels[0].Text;
    ADOQuery1.Post;
  End
  Else Showmessage('Comprobante ya estaba anulado.');
end;

procedure TFormAnulaComp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=  caFree
end;

procedure TFormAnulaComp.DataSource2DataChange(Sender: TObject;
  Field: TField);
begin
  ADOQuery1.Close;
  adoquery1.Parameters.ParamValues['doc'] := DBLookupComboBox5.KeyValue;
  adoquery1.Parameters.ParamValues['emp'] := ADOTable2.FieldValues['Codigo'];
  ADOQuery1.Open;
end;

procedure TFormAnulaComp.DBLookupComboBox2Exit(Sender: TObject);
begin
  ADOQuery1.Close;
  adoquery1.Parameters.ParamValues['doc'] := DBLookupComboBox5.KeyValue;
  adoquery1.Parameters.ParamValues['emp'] := ADOTable2.FieldValues['Codigo'];
  ADOQuery1.Open;
end;

procedure TFormAnulaComp.FormCreate(Sender: TObject);
begin
  adotable1.Open;
  adotable2.Open;
  DBLookupComboBox5.KeyValue := Datamodule1.ADOQuery1.FieldValues['Empresa_Trabaja'];
  adoquery1.Open;
end;

procedure TFormAnulaComp.DBLookupComboBox5Exit(Sender: TObject);
begin
  DBLookupComboBox2.KeyValue := '';
end;

end.
