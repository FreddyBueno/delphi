unit Circular30;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, DBCtrls, Mask, DB, ADODB;

type
  TFCirc30 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label20: TLabel;
    Label21: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label23: TLabel;
    Edit3: TEdit;
    Label24: TLabel;
    DateTimePicker1: TDateTimePicker;
    Shape1: TShape;
    Button1: TButton;
    GroupBox4: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBMemo1: TDBMemo;
    DataSource7: TDataSource;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    DataSource1: TDataSource;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCirc30: TFCirc30;

implementation

{$R *.dfm}

procedure TFCirc30.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFCirc30.FormActivate(Sender: TObject);
begin
  ADOQuery1.open;
  ADOQuery2.open;
  DBLookupComboBox1.KeyValue:=ADOQuery1.FieldValues['No_Admision'];
end;

procedure TFCirc30.Button1Click(Sender: TObject);
begin
  ADOQuery2.Edit;
  ADOQuery2.FieldValues['P1']:=Edit4.Text;
  ADOQuery2.FieldValues['P2']:=Edit5.Text;
  ADOQuery2.FieldValues['P3']:=Edit6.Text;
  ADOQuery2.FieldValues['P4']:=Edit7.Text;
  ADOQuery2.FieldValues['P5']:=Edit8.Text;
  ADOQuery2.FieldValues['P6']:=Edit9.Text;
  ADOQuery2.FieldValues['P7']:=Edit10.Text;
  ADOQuery2.FieldValues['P8']:=Edit11.Text;
  ADOQuery2.FieldValues['P9']:=Edit12.Text;
  ADOQuery2.FieldValues['P10']:=Edit13.Text;
  ADOQuery2.FieldValues['P11']:=Edit14.Text;
  ADOQuery2.FieldValues['P12']:=Edit15.Text;
  ADOQuery2.FieldValues['P13']:=Edit16.Text;
  ADOQuery2.FieldValues['P14']:=Edit17.Text;
  ADOQuery2.FieldValues['P15']:=Edit18.Text;
  ADOQuery2.FieldValues['P16']:=Edit19.Text;
  ADOQuery2.Post;
end;

procedure TFCirc30.DBLookupComboBox1Exit(Sender: TObject);
begin
  DatetimePicker1.DateTime:=ADOQuery1.FieldValues['Fec_Admision'];

  ADOQuery2.Close;
  ADOQuery2.Parameters.ParamValues['Adm']:=DBLookupComboBox1.Text;
  ADOQuery2.Open;
  Edit4.Text:=ADOQuery2.FieldValues['P1'];
  Edit5.Text:=ADOQuery2.FieldValues['P2'];
  Edit6.Text:=ADOQuery2.FieldValues['P3'];
  Edit7.Text:=ADOQuery2.FieldValues['P4'];
  Edit8.Text:=ADOQuery2.FieldValues['P5'];
  Edit9.Text:=ADOQuery2.FieldValues['P6'];
  Edit10.Text:=ADOQuery2.FieldValues['P7'];
  Edit11.Text:=ADOQuery2.FieldValues['P8'];
  Edit12.Text:=ADOQuery2.FieldValues['P9'];
  Edit13.Text:=ADOQuery2.FieldValues['P10'];
  Edit14.Text:=ADOQuery2.FieldValues['P11'];
  Edit15.Text:=ADOQuery2.FieldValues['P12'];
  Edit16.Text:=ADOQuery2.FieldValues['P13'];
  Edit17.Text:=ADOQuery2.FieldValues['P14'];
  Edit18.Text:=ADOQuery2.FieldValues['P15'];
  Edit19.Text:=ADOQuery2.FieldValues['P16'];
end;

end.
