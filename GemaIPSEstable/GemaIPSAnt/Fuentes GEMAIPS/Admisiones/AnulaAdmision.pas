unit AnulaAdmision;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Buttons, Mask, ADODB, ComCtrls, DB;

type
  TFAnulaAdmi = class(TForm)
    GroupBox2: TGroupBox;
    ADOQuery1: TADOQuery;
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
    SpeedButton1: TSpeedButton;
    DataSource1: TDataSource;
    ADOQcargos: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAnulaAdmi: TFAnulaAdmi;

implementation

uses FElimSolicitud, UDataModule1;

{$R *.dfm}

procedure TFAnulaAdmi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFAnulaAdmi.SpeedButton1Click(Sender: TObject);
begin
  if MessageDlg('Esta seguro de anular la Admisión?, Al Anularla se anularan los cargos de forma automática y se restablecerán los inventarios.',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    {EliminaCargo:= tEliminaCargo.create(application);
    try
    EliminaCargo.Show;

      ADOQCargos.Close;
      ADOQCargos.Parameters.ParamValues['adm'] := ADOQuery1.FieldValues['No_Admision'];
      ADOQCargos.Open;
      ADOQCargos.First;
      WHILE NOT ADOQCargos.Eof DO
      Begin
          EliminaCargo.DBLookupComboBox1.KeyValue := ADOQCargos.FieldValues['No_cargo'];
          EliminaCargo.Refresh;
          EliminaCargo.SpeedButton1Click(Nil);

          ADOQCargos.Next;
      End;
      EliminaCargo.Close;
    except
        EliminaCargo.free;
    End; }

    ADOQuery1.Edit;
    ADOQuery1.FieldValues['Est_Adminsion']:='X';
    ADOQuery1.Post;
    //Showmessage('La Admisión fue anulada.');
    Close;
  End;
end;

end.
