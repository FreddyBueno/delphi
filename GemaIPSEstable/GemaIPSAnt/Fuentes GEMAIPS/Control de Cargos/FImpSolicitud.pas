unit FImpSolicitud;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, DBCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxGroupBox, cxRadioGroup,dxCore, frxClass, frxDBSet;

type
  TImpSolicitud = class(TForm)
    Panel1: TPanel;
    dsBuscar: TDataSource;
    qryBuscar: TADOQuery;
    Button1: TButton;
    lkpcmbbxBuscar: TcxLookupComboBox;
    rdgrpBuscar: TcxRadioGroup;
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure rdgrpBuscarPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImpSolicitud: TImpSolicitud;

implementation

uses  MAIN, UDataModule1, Libreria_PrateincoForm;

{$R *.dfm}

procedure TImpSolicitud.Button1Click(Sender: TObject);
begin
   ADOQuery1.Close;
   ADOQuery1.Parameters.ParamValues['nofact']:= lkpcmbbxBuscar.EditValue;
   ADOQuery1.Open;
   ADOTable1.Open;

   frxReport1.ShowReport;
   Close;
end;

procedure TImpSolicitud.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TImpSolicitud.rdgrpBuscarPropertiesEditValueChanged(Sender: TObject);

begin
//Establecer el campo por el que se busca
  case rdgrpBuscar.EditValue of
    0 : lkpcmbbxBuscar.Properties.ListFieldNames:='No_Solicitud;Fecha;Identificacion;Paciente';

    2 : lkpcmbbxBuscar.Properties.ListFieldNames:='Identificacion;Paciente;No_Solicitud;Fecha';

    3 : lkpcmbbxBuscar.Properties.ListFieldNames:='Paciente;Identificacion;No_Solicitud;Fecha';


  end;
  lkpcmbbxBuscar.Properties.ListColumns.items[0].Sorting:= true;
  lkpcmbbxBuscar.Properties.ListColumns.items[0].SortOrder:=soAscending;
  lkpcmbbxBuscar.Repaint;
end;

procedure TImpSolicitud.FormActivate(Sender: TObject);
begin
  qryBuscar.Open;
end;

end.
