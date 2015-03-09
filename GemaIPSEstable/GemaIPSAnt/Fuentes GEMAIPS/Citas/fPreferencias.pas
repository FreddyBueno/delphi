unit fPreferencias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxLayoutContainer, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, uADStanIntf, uADStanOption, uADStanParam, uADStanError,
  uADDatSManager, uADPhysIntf, uADDAptIntf, uADStanAsync, uADDAptManager,
  uADCompDataSet, uADCompClient, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridLevel, cxGrid;

type
  TfrmPreferencias = class(TForm)
    lytctrlPrefGroup_Root: TdxLayoutGroup;
    lytctrlPref: TdxLayoutControl;
    lvAgenda: TcxGridLevel;
    grdPref: TcxGrid;
    lytitmAgenda: TdxLayoutItem;
    btvAgenda: TcxGridDBBandedTableView;
    ADTable1: TADTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPreferencias: TfrmPreferencias;

implementation

{$R *.dfm}

end.
