unit dGIPSci;

interface

uses
  System.SysUtils, System.Classes, uADStanIntf, uADStanOption, uADStanError,
  uADGUIxIntf, uADPhysIntf, uADStanDef, uADStanPool, uADStanAsync,
  uADPhysManager, Data.DB, uADCompClient, dxServerModeData,
  dxServerModeFireDACDataSource, uADStanParam, uADDatSManager, uADDAptIntf,
  uADDAptManager, uADCompDataSet;

type
  TdmGIPSci = class(TDataModule)
    connGIPS: TADConnection;
    tblTipoCita: TADTable;
    tblTipoConsulta: TADTable;
    tblProf: TADTable;
    tblProfid: TIntegerField;
    tblProfPrimerApellido: TStringField;
    tblProfSegundoApellido: TStringField;
    tblProfPrimerNombre: TStringField;
    tblProfSegundoNombre: TStringField;
    tblProfDocIDProf: TStringField;
    tblProfFoto: TBlobField;
    tblProfEspecialidad: TStringField;
    dsProf: TDataSource;
    dsTipoConsulta: TDataSource;
    dsTipoCita: TDataSource;
    tblProfProfesional: TStringField;
    tblZona: TADTable;
    dsZona: TDataSource;
    dsGrupoEtnico: TDataSource;
    tblGrupoEtnico: TADTable;
    tblAseguradora: TADTable;
    dsAseguradora: TDataSource;
    tblTipoConsultaID: TADAutoIncField;
    tblTipoConsultaDescriptorID: TIntegerField;
    tblTipoConsultaCodigo: TStringField;
    tblTipoConsultaDescripcion: TStringField;
    tblTipoConsultaActivo: TBooleanField;
    tblTipoCitaID: TADAutoIncField;
    tblTipoCitaTipoCita: TStringField;
    tblTipoCitaActivo: TBooleanField;
    tblTipoCitaDuracion: TIntegerField;
    tblTipoCitaCita: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure tblTipoCitaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmGIPSci: TdmGIPSci;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmGIPSci.DataModuleCreate(Sender: TObject);
begin


  if  not  connGIPS.Connected then    connGips.online;
  if not tblTipoCita.Active then tblTipoCita.Open();
  if not tblProf.Active then tblProf.Open();
  if not tblTipoConsulta.Active then tblTipoConsulta.Open();
  if not tblZona.Active then tblZona.Open();
  if not tblGrupoEtnico.Active then tblGrupoEtnico.Open();
  if not tblAseguradora.Active then tblAseguradora.Open();

end;

procedure TdmGIPSci.tblTipoCitaCalcFields(DataSet: TDataSet);
begin
tblTipoCitaCita.AsString:=tblTipoCitaTipoCita.AsString+' ('+tblTipoCitaDuracion.AsString+' min.)';
end;

end.
