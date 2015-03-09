unit FrameMenuOpcion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,
  ComCtrls, Grids, DBGrids,  Menus, ToolWin,
  DB, ADODB, Mask, DBCtrls, ImgList, StrUtils;

type
  TFrameMnOp = class(TFrame)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Frame: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FrameEnter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FrameMouseLeave(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses ImprimeFormato, Libreria_PrateincoForm,UDataModule1;

var FrameMnOp:TFrameMnOp;

{$R *.dfm}

procedure TFrameMnOp.BitBtn1Click(Sender: TObject);
begin
  ReporteadorP(FrameMnOp.Hint,'','');
end;

procedure TFrameMnOp.BitBtn2Click(Sender: TObject);
begin
  ImportaPlano(FrameMnOp.HelpKeyword,'SELECT * FROM '+FrameMnOp.HelpKeyword);
end;

procedure TFrameMnOp.BitBtn3Click(Sender: TObject);
begin
  ReporteadorP(FrameMnOp.HelpKeyword,'SELECT * FROM ' + FrameMnOp.HelpKeyword,'');
end;

procedure TFrameMnOp.BitBtn4Click(Sender: TObject);
begin
  ImpFormato := tImpFormato.create(application);
  try
    MuestraconAcceso(ImpFormato);
    if (BDBuscar('SELECT * FROM SECoordEncImpresion WHERE IdE = '+inttostr(Datamodule1.ADOQuery1.FieldValues['IdE_Trabaja'])+' AND  Formato = '+chr(39)+FrameMnOp.Hint+chr(39),'Formato','Formato') = 'ERROR: No hay registros para esta selección') then
    Begin
      ImpFormato.ADOQEncFormato.Append;
      ImpFormato.ADOQEncFormato.FieldValues['IdE']     := Datamodule1.ADOQuery1.FieldValues['IdE_Trabaja'];
      ImpFormato.ADOQEncFormato.FieldValues['Formato'] := FrameMnOp.Hint;
      ImpFormato.ADOQEncFormato.FieldValues['SQL'] := 'SELECT * FROM';
      ImpFormato.ADOQEncFormato.Post;
    End;
    ImpFormato.ADOQEncFormato.Locate('IdE;Formato', VarArrayOf([Datamodule1.ADOQuery1.FieldValues['IdE_Trabaja'],FrameMnOp.Hint]), [loPartialKey]);
    ImpFormato.DBEdit1.Enabled := False;
    ImpFormato.DBNavigator2.Enabled := False;
  except
    ImpFormato.free;
  end;
end;

procedure TFrameMnOp.BitBtn5Click(Sender: TObject);
var i,tam:integer;
begin
  tam := FrameMnOp.Width;
  For i := trunc(tam/6) DownTo 0 Do
  Begin
    FrameMnOp.Width := i*6;
  End;
  FrameMnOp.Refresh;
  FrameMnOp.Destroy;
end;

procedure TFrameMnOp.FrameEnter(Sender: TObject);
begin
    FrameMnOp := TFrameMnOp(Sender);
end;

procedure TFrameMnOp.FrameMouseLeave(Sender: TObject);
begin
  showmessage('prueba');
end;

procedure TFrameMnOp.Timer1Timer(Sender: TObject);
var i,tam:integer;
begin

end;

end.
