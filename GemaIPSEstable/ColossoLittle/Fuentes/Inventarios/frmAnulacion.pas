unit frmAnulacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, DB, StdCtrls, DBCtrls, ExtCtrls, Buttons;

type
  TFAnula = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    ADOTable1: TADOTable;
    DataSource4: TDataSource;
    ADOQuery2: TADOQuery;
    SpeedButton1: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure DataSource4DataChange(Sender: TObject; Field: TField);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAnula: TFAnula;

implementation

uses RecalculaSaldo;

{$R *.dfm}

procedure TFAnula.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=  caFree;
end;

procedure TFAnula.FormActivate(Sender: TObject);
begin
  adotable1.Open;
  adoquery1.Open;
end;

procedure TFAnula.DataSource4DataChange(Sender: TObject; Field: TField);
begin
  ADOQuery1.Close;
  adoquery1.Parameters.ParamValues['doc'] := DBLookupComboBox5.KeyValue;
  ADOQuery1.Open;
end;

procedure TFAnula.SpeedButton1Click(Sender: TObject);
begin
  if DBLookupComboBox1.Text = '' Then
  Begin
    Showmessage('No existe documento de inventario.');
    Exit;
  End;

  if MessageDlg('Esta Totalmente Seguro de Anular la Transacción?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    ADOQuery1.Edit;
    ADOQuery1.FieldValues['Estado']:= 'A';
    ADOQuery1.Post;

    RegeneraSaldos := tRegeneraSaldos.create(application);
    try
      RegeneraSaldos.show;
      ADOQuery2.Close;
      ADOQuery2.Parameters.ParamValues['DOC'] := ADOQuery1.FieldValues['CD_Documento'];
      ADOQuery2.Parameters.ParamValues['Cs']  := ADOQuery1.FieldValues['Consec_Dcto'];
      ADOQuery2.Open;
      ADOQuery2.First;
      WHILE NOT ADOQuery2.Eof DO Begin
        RegeneraSaldos.DBLookupComboBox1.KeyValue := ADOQuery2.FieldValues['CD_Producto'];
        RegeneraSaldos.Button1Click(nil);

        ADOQuery2.Next;
      End;
    except
      RegeneraSaldos.free;
    end;
  end;
end;

end.
