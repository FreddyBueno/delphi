unit dcomun;

interface

uses
  System.SysUtils, System.Classes, uADStanIntf, uADStanOption, uADStanError,
  uADGUIxIntf, uADPhysIntf, uADStanDef, uADStanPool, uADStanAsync,
  uADPhysManager, Data.DB, uADCompClient, uADStanParam, uADDatSManager,
  uADDAptIntf, uADDAptManager, uADCompDataSet;

type
  TdmComunes = class(TDataModule)
    connComunes: TADConnection;
    tblSexo: TADTable;
    tblTipoDocID: TADTable;
    tblSexoTIP_SEXO: TStringField;
    tblSexoNOM_SEXO: TStringField;
    tblSexoEstado: TStringField;
    tblTipoDocIDCOD_TIPO: TStringField;
    tblTipoDocIDNOM_NOMBRE: TStringField;
    tblTipoDocIDEstado: TStringField;
    dsTipoDoc: TDataSource;
    dsSexo: TDataSource;
    dsParentesco: TDataSource;
    dsOcupacion: TDataSource;
    tblNacionalidad: TADTable;
    tblMun: TADTable;
    tblEstadoCivil: TADTable;
    tblParentesco: TADTable;
    tblOcupacion: TADTable;
    dsET: TDataSource;
    dsMun: TDataSource;
    dsNacionalidad: TDataSource;
    dsEstadoCivil: TDataSource;
    tblET: TADTable;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmComunes: TdmComunes;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmComunes.DataModuleCreate(Sender: TObject);
begin
 if  not  connComunes.Connected then    connComunes.online;

      if not tblSexo.Active then tblSexo.Open();
      if not tblEstadoCivil.Active then tblEstadoCivil.Open();
      if not tblNacionalidad.Active then tblNacionalidad.Open();
      if not tblTipoDocID.Active then tblTipoDocID.Open();
      if not tblParentesco.Active then tblParentesco.Open();
      if not tblOcupacion.Active then tblOcupacion.Open();
      if not tblET.Active then tblET.Open();
      tblMun.MasterSource:=dsET;
      tblET.DetailFields:='CD_Departamento';
      tblMun.MasterFields:='CD_Departamento';
      if not tblMun.Active then tblMun.Open();



end;

end.
