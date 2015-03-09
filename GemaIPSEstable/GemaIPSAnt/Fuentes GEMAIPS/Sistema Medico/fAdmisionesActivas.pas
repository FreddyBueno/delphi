unit fAdmisionesActivas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxLayoutContainer,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutControl, UDataModule1,
  Data.Win.ADODB, dxLayoutcxEditAdapters, cxContainer, cxLabel, cxDBLabel,
  cxCalendar;

type
  TfrmAdmisionesActivas = class(TForm)
    lytctrlAdmActGroup_Root: TdxLayoutGroup;
    lytctrlAdmAct: TdxLayoutControl;
    tvAdmsionesActivas: TcxGridDBTableView;
    lvAdmisionesActivas: TcxGridLevel;
    Grilla: TcxGrid;
    lytitmGrilla: TdxLayoutItem;
    dsAdmisionesAct: TDataSource;
    qryAdmisionesAct: TADOQuery;
    tvAdmsionesActivasNumero1: TcxGridDBColumn;
    tvAdmsionesActivasFecha1: TcxGridDBColumn;
    tvAdmsionesActivasTipo1: TcxGridDBColumn;
    tvAdmsionesActivasEstado1: TcxGridDBColumn;
    tvAdmsionesActivasProfesional1: TcxGridDBColumn;
    tvAdmsionesActivasCodDiagnostico1: TcxGridDBColumn;
    dblblPaciente: TcxDBLabel;
    lytitmPaciente: TdxLayoutItem;
    procedure tvAdmsionesActivasCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FNumRegistros: integer;
    FCCHistoria: string;
    FNumeroAdmision: string;
    procedure SetCCHistoria(const Value: string);
    procedure SetNumeroAdmision(const Value: string);
    procedure SetNumRegistros;
    { Private declarations }
  public
    { Public declarations }
    Property CCHistoria: string read FCCHistoria write SetCCHistoria;
    Property NumeroAdmision: string read FNumeroAdmision write SetNumeroAdmision;
    property NumRegistros:integer read FNumRegistros ;
  end;

var
  frmAdmisionesActivas: TfrmAdmisionesActivas;

implementation

{$R *.dfm}

{ TForm4 }

procedure TfrmAdmisionesActivas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    release;
end;

procedure TfrmAdmisionesActivas.SetCCHistoria(const Value: string);
begin
  FCCHistoria := Value;
  SetNumRegistros;
  qryAdmisionesAct.Parameters[0].Value:=FCCHistoria;
  qryAdmisionesAct.Open;
  if not qryAdmisionesAct.Eof then
    FNumeroAdmision:= qryAdmisionesAct.FieldByName('Numero').AsString ;

end;

procedure TfrmAdmisionesActivas.SetNumeroAdmision(const Value: string);
begin
  FNumeroAdmision := Value;


end;

procedure TfrmAdmisionesActivas.SetNumRegistros;
var
 AuxQry: TADOQuery;
begin
  try
     AuxQry:= TADOQuery.Create(self);
     AuxQry.Connection:=datamodule1.ADOConnection1;
     AuxQry.SQL.Text:= 'Select count(NO_ADMISION) as Numero from SAAdmisiones where EST_ADMINSION in (''A'',''C'') and rtrim(TP_IDENT_USUAR)+RTRIM(NR_IDENT_USUAR)='''+ FCCHISTORIA+'''';
     AuxQry.Open;
     if AuxQry.Eof then
      FNumRegistros:=0
      else
    FNumRegistros := auxQry.FieldByName('Numero').AsInteger;

  finally
    AuxQry.Close;
    Auxqry.Free;
  end; //finally
end;

procedure TfrmAdmisionesActivas.tvAdmsionesActivasCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
     FNumeroAdmision:= qryAdmisionesAct.FieldByName('Numero').AsString;
  close;
end;

end.
