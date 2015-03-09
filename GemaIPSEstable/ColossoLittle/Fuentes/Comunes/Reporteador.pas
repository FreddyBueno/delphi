unit Reporteador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Data.Win.ADODB,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxBevel, cxImage,
  cxDBEditRepository, cxSplitter, cxEditRepositoryItems, Vcl.StdCtrls,
  cxGridCardView, cxGridCustomLayoutView, cxGridDBCardView,
  cxGridBandedTableView, cxGridDBBandedTableView, dxLayoutContainer,
  cxGridLayoutView, cxGridDBLayoutView, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxMemo, cxTextEdit, cxBlobEdit, dxScreenTip, dxBreadcrumbEdit, dxCustomHint,
  cxHint, cxGridChartView, cxGridDBChartView, Vcl.ComCtrls, Winapi.ShlObj,
  cxShellCommon, cxContainer, cxListView, cxShellListView, cxCheckBox, cxDBEdit,
  cxMaskEdit, cxDropDownEdit, cxCheckComboBox, cxDBCheckComboBox, cxSpinEdit,
  Vcl.Menus, cxButtons, Vcl.ExtCtrls, cxLabel,CxExport,cxGridExportLink,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPSCore, dxPScxCommon, dxPSFileBasedXplorer,
  dxPgsDlg, Vcl.ImgList,shellapi, cxPropertiesStore, dxPSImgLnk;



type
  TgenReport = class(TForm)
    tvPickReport: TcxGridDBTableView;
    lvPickReport: TcxGridLevel;
    dsReportes: TDataSource;
    tblReportes: TADOTable;
    tvPickReportProgTempID: TcxGridDBColumn;
    tvPickReportDescripcion: TcxGridDBColumn;
    tvPickReportModulo: TcxGridDBColumn;
    tblProgTemp: TADOTable;
    dsProgTemp: TDataSource;
    cxEditRepository1: TcxEditRepository;
    itmModulo: TcxEditRepositoryLookupComboBoxItem;
    spltrReport: TcxSplitter;
    itmLogo: TcxEditRepositoryImageItem;
    lvTableList: TcxGridLevel;
    tvTableList: TcxGridDBTableView;
    dsTableList: TDataSource;
    qryTableList: TADOQuery;
    tvTableListCampo: TcxGridDBColumn;
    tvTableListReporte: TcxGridDBColumn;
    qryResults: TADOQuery;
    dsResults: TDataSource;
    tvPickReportSQL: TcxGridDBColumn;
    itmSQL: TcxEditRepositoryMemoItem;
    itmSQLb: TcxEditRepositoryBlobItem;
    cxStyleRepository1: TcxStyleRepository;
    GridTableViewStyleSheetSlate: TcxGridTableViewStyleSheet;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    GridTableViewStyleSheetSpruce: TcxGridTableViewStyleSheet;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    cxStyle36: TcxStyle;
    cxStyle37: TcxStyle;
    cxStyle38: TcxStyle;
    cxStyle39: TcxStyle;
    cxStyle40: TcxStyle;
    cxStyle41: TcxStyle;
    cxStyle42: TcxStyle;
    cxStyle43: TcxStyle;
    cxStyle44: TcxStyle;
    cxStyle45: TcxStyle;
    cxStyle46: TcxStyle;
    GridCardViewStyleSheetSpruce: TcxGridCardViewStyleSheet;
    cxStyle47: TcxStyle;
    cxStyle48: TcxStyle;
    cxStyle49: TcxStyle;
    cxStyle50: TcxStyle;
    cxStyle51: TcxStyle;
    cxStyle52: TcxStyle;
    cxStyle53: TcxStyle;
    GridCardViewStyleSheetSlate: TcxGridCardViewStyleSheet;
    cxStyle54: TcxStyle;
    cxStyle55: TcxStyle;
    cxStyle56: TcxStyle;
    cxStyle57: TcxStyle;
    cxStyle58: TcxStyle;
    cxStyle59: TcxStyle;
    cxStyle60: TcxStyle;
    lvReportsEdit: TcxGridLevel;
    cxStyle61: TcxStyle;
    cxStyle62: TcxStyle;
    cxStyle63: TcxStyle;
    cxStyle64: TcxStyle;
    cxStyle65: TcxStyle;
    cxStyle66: TcxStyle;
    cxStyle67: TcxStyle;
    cxStyle68: TcxStyle;
    cxStyle69: TcxStyle;
    cxStyle70: TcxStyle;
    cxStyle71: TcxStyle;
    cxStyle72: TcxStyle;
    lcvReportsGroup_Root: TdxLayoutGroup;
    lcvReports: TcxGridDBLayoutView;
    lcvReportsLayoutItem1: TcxGridLayoutItem;
    lcvReportsModulo: TcxGridDBLayoutViewItem;
    lcvReportsLayoutItem2: TcxGridLayoutItem;
    lcvReportsReporte: TcxGridDBLayoutViewItem;
    lcvReportsLayoutItem3: TcxGridLayoutItem;
    lcvReportsDescripcion: TcxGridDBLayoutViewItem;
    lcvReportsLayoutItem5: TcxGridLayoutItem;
    lcvReportsId_Creo: TcxGridDBLayoutViewItem;
    lcvReportsLayoutItem6: TcxGridLayoutItem;
    lcvReportsFecha_Ult_Modificacion: TcxGridDBLayoutViewItem;
    lcvReportsLayoutItem7: TcxGridLayoutItem;
    lcvReportsFecha_Creacion: TcxGridDBLayoutViewItem;
    lcvReportsLayoutItem8: TcxGridLayoutItem;
    lcvReportsProgramasTempID: TcxGridDBLayoutViewItem;
    GridBandedTableViewStyleSheetRose: TcxGridBandedTableViewStyleSheet;
    cxStyle73: TcxStyle;
    cxStyle74: TcxStyle;
    cxStyle75: TcxStyle;
    cxStyle76: TcxStyle;
    cxStyle77: TcxStyle;
    cxStyle78: TcxStyle;
    cxStyle79: TcxStyle;
    cxStyle80: TcxStyle;
    cxStyle81: TcxStyle;
    cxStyle82: TcxStyle;
    cxStyle83: TcxStyle;
    cxStyle84: TcxStyle;
    lcvReportsGroup2: TdxLayoutGroup;
    grdReport: TcxGrid;
    ppmnResults: TcxGridPopupMenu;
    ppmnReport: TcxGridPopupMenu;
    tblReportesModulo: TStringField;
    tblReportesReporte: TStringField;
    tblReportesDescripcion: TStringField;
    tblReportesSQL: TMemoField;
    tblReportesId_Creo: TFloatField;
    tblReportesFecha_Ult_Modificacion: TDateTimeField;
    tblReportesFecha_Creacion: TDateTimeField;
    tblReportesProgramasTempID: TIntegerField;
    tblReportesID: TAutoIncField;
    lcvReportsLayoutItem9: TcxGridLayoutItem;
    lcvReportsID: TcxGridDBLayoutViewItem;
    tvPickReportID: TcxGridDBColumn;
    tvPickReportReporte: TcxGridDBColumn;
    lcvReportsLayoutItem4: TcxGridLayoutItem;
    lcvReportsSQL: TcxGridDBLayoutViewItem;
    lcvReportsGroup3: TdxLayoutGroup;
    lcvReportsSeparatorItem1: TdxLayoutSeparatorItem;
    lcvReportsSeparatorItem2: TdxLayoutSeparatorItem;
    lcvReportsSeparatorItem3: TdxLayoutSeparatorItem;
    lcvReportsSeparatorItem4: TdxLayoutSeparatorItem;
    lcvReportsGroup5: TdxLayoutGroup;
    lcvReportsGroup6: TdxLayoutGroup;
    lcvReportsGroup7: TdxLayoutGroup;
    lcvReportsGroup8: TdxLayoutGroup;
    lcvReportsLabeledItem2: TdxLayoutLabeledItem;
    lcvReportsGroup9: TdxLayoutGroup;
    lcvReportsGroup10: TdxLayoutGroup;
    lcvReportsSeparatorItem5: TdxLayoutSeparatorItem;
    lcvReportsGroup11: TdxLayoutGroup;
    dxScreenTipRepository1: TdxScreenTipRepository;
    stPickReport: TdxScreenTip;
    stListTable: TdxScreenTip;
    stEditReport: TdxScreenTip;
    dsUsuarios: TDataSource;
    qryUsuarios: TADOQuery;
    itmUsuarios: TcxEditRepositoryLookupComboBoxItem;
    lcvReportsLayoutItem10: TcxGridLayoutItem;
    lcvReportsCategoria: TcxGridDBLayoutViewItem;
    lcvReportsLayoutItem11: TcxGridLayoutItem;
    lcvReportsSeries: TcxGridDBLayoutViewItem;
    lcvReportsLayoutItem12: TcxGridLayoutItem;
    lcvReportsTituloEjeX: TcxGridDBLayoutViewItem;
    lcvReportsGroup1: TdxLayoutGroup;
    lcvReportsGroup4: TdxLayoutGroup;
    lcvReportsSeparatorItem6: TdxLayoutSeparatorItem;
    tblReportesCategoria: TStringField;
    tblReportesSeries: TStringField;
    tblReportesTituloEjeX: TStringField;
    tblReportesTituloReporte: TStringField;
    lcvReportsLayoutItem13: TcxGridLayoutItem;
    lcvReportsTituloReporte: TcxGridDBLayoutViewItem;
    lcvReportsGroup13: TdxLayoutGroup;
    tblReportesGrupos: TStringField;
    lcvReportsLayoutItem14: TcxGridLayoutItem;
    lcvReportsGrupos: TcxGridDBLayoutViewItem;
    lcvReportsGroup14: TdxLayoutGroup;
    lcvReportsGroup15: TdxLayoutGroup;
    tblReportesCategoriasXPagina: TSmallintField;
    lcvReportsLayoutItem15: TcxGridLayoutItem;
    lcvReportsCategoriasXPagina: TcxGridDBLayoutViewItem;
    lcvReportsGroup12: TdxLayoutGroup;
    msql: TcxMemo;
    Edit1: TcxTextEdit;
    Button1: TcxButton;
    pnlResults: TPanel;
    pnlTitle: TPanel;
    grdResults: TcxGrid;
    tvResultsList: TcxGridDBTableView;
    cvResultsCard: TcxGridDBCardView;
    chrtResults: TcxGridDBChartView;
    chrtResultsSeries1: TcxGridDBChartSeries;
    lvResultsList: TcxGridLevel;
    lvResultsCard: TcxGridLevel;
    lvResultsChart: TcxGridLevel;
    lblTitle: TcxLabel;
    qryAccionesUsuarios: TADOQuery;
    dsAccionesUsuarios: TDataSource;
    dxBevel1: TPanel;
    PopupMenu1: TPopupMenu;
    ExportaraExcel1: TMenuItem;
    SaveDialog1: TSaveDialog;
    ExportaraExcel2: TMenuItem;
    ExportaraHTML1: TMenuItem;
    Exportara1: TMenuItem;
    Exportaratexto1: TMenuItem;
    ExportarseleccinaExcelXLSX1: TMenuItem;
    ExportarseleccinaXML1: TMenuItem;
    ExportarseleccinaT1: TMenuItem;
    pnlPrint: TPanel;
    btnPreview: TcxButton;
    btnPgSetup: TcxButton;
    btnDesign: TcxButton;
    dxComponentPrinter1: TdxComponentPrinter;
    rptlnkResults: TdxGridReportLink;
    btnBackground: TcxButton;
    dxPSFileBasedExplorer1: TdxPSFileBasedExplorer;
    dxPrintStyleManager1: TdxPrintStyleManager;
    prntStyle: TdxPSPrintStyle;
    imgCollection: TcxImageCollection;
    imgitmHeader: TcxImageCollectionItem;
    sbmuExportAll: TMenuItem;
    sbmnExportSelection: TMenuItem;
    Exp2: TMenuItem;
    HTML1: TMenuItem;
    imgList: TcxImageList;
    sbmnCopyAll: TMenuItem;
    sbmnCopySel: TMenuItem;

    procedure tvTableListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tvPickReportCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tblReportesBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tblReportesMoveComplete(DataSet: TCustomADODataSet;
      const Reason: TEventReason; const Error: Error;
      var EventStatus: TEventStatus);
    procedure Button1Click(Sender: TObject);
    { Public declar
  private
    { Private declarations }

    procedure split( const Delimiter: char; Input: String; const Strings: TStrings);

    procedure generareporte (msql:variant; sTitulo, sTituloX, sSeries, sCategoria, sGrupos: string; nCatXPag: integer;bPanel: boolean);
    procedure grdResultsActiveTabChanged(Sender: TcxCustomGrid;
      ALevel: TcxGridLevel);
    procedure OpenExportedFile(sFile:string);
    procedure ExportaraExcelClick(Sender: TObject);
    procedure ExportaraXLSXClick(Sender: TObject);
    procedure ExportaraHTMLClick(Sender: TObject);
    procedure ExportaraXMLClick(Sender: TObject);
    procedure ExportaraTextClick(Sender: TObject);
    procedure ExportarseleccionaExcelClick(Sender: TObject);
    procedure ExportarseleccionaXLSXClick(Sender: TObject);
    procedure ExportarSeleccionaHTMLClick(Sender: TObject);
    procedure ExportarseleccionaXMLClick(Sender: TObject);
    procedure ExportarseleccionaTextClick(Sender: TObject);
    procedure tblReportesNewRecord(DataSet: TDataSet);
    procedure btnPreviewClick(Sender: TObject);
    procedure btnPgSetupClick(Sender: TObject);
    procedure btnBackgroundClick(Sender: TObject);
    procedure btnDesignClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure sbmnCopyAllClick(Sender: TObject);
    procedure sbmnCopySelClick(Sender: TObject);
    procedure dxComponentPrinter1DesignReport(Sender: TObject;
      AReportLink: TBasedxReportLink; var ADone: Boolean);
    procedure dxComponentPrinter1PageSetup(Sender: TObject;
      AReportLink: TBasedxReportLink; ADone: Boolean);


  end;

var
  genReport: TgenReport;
  nUsuario:integer;
  bEnableEdit: boolean;
  sUsuario:string;
  sStatusText:string;


implementation

uses libreria_prateinco, cxGridStdPopupMenu, cxGridMenuOperations, cxGridHeaderPopupMenuItems,
  UDataModule1;


{$R *.dfm}



procedure TgenReport.FormActivate(Sender: TObject);
begin
//mainForm.Statusbar.simpletext:=sStatusText;
end;

procedure TgenReport.FormClose(Sender: TObject; var Action: TCloseAction);
begin

//mainForm.Statusbar.simpletext:='';

//Cerrar archivos
  if  dsReportes.DataSet.Active then    dsReportes.DataSet.Close;
  if  dsUsuarios.DataSet.Active then    dsUsuarios.DataSet.Close;
  if  dsProgTemp.DataSet.Active then    dsProgTemp.DataSet.Close;
  if  dsTableList.DataSet.Active then    dsTableList.DataSet.Close;

  Action:=caFree;

end;

procedure TgenReport.FormCreate(Sender: TObject);


begin
  screen.Cursor:=crHourglass;
  sStatusText:='Por favor seleccione el reporte que desea y haga doble clic sobre su descripción para generarlo';
  //mainForm.Statusbar.simpletext:=sStatusText;
  try
  if not Datamodule1.ADOQuery1.FieldByName('logo').IsNull then
    imgitmHeader.Picture.Bitmap.Assign(Datamodule1.ADOQuery1.FieldByName('logo'));


//Abrir archivos
  if not dsTableList.DataSet.Active then    dsTableList.DataSet.Open;
  if not dsUsuarios.DataSet.Active then    dsUsuarios.DataSet.Open;
  if not dsProgTemp.DataSet.Active then    dsProgTemp.DataSet.Open;
  if not dsReportes.DataSet.Active then    dsReportes.DataSet.Open;

   nUsuario:=datamodule1.ADOQuery1.fieldvalues['ID'];

 qryAccionesUsuarios.SQL.Text := 'select * from SEAccionesUsuarios where IDAccion=2 and UsuarioID = '+inttostr(nUsuario);
  with dsAccionesUsuarios.DataSet do
   begin
     open;
     bEnableEdit:=  not eof;
     close;
   end; // with

  dxComponentPrinter1.LoadFromFile('ReportSettings');
  //rptlnkResults.PrinterPage.LoadFromFile('ReportPageSetup');
  finally
  lvTableList.Visible:=bEnableEdit;
  lvReportsEdit.Visible:=bEnableEdit;
  screen.Cursor:=crDefault;
  end; //finally
 end;

procedure TgenReport.FormDeactivate(Sender: TObject);
begin
  //mainForm.Statusbar.simpletext:='';

end;

procedure TgenReport.generareporte(msql:variant; sTitulo,sTituloX, sSeries, sCategoria,
  sGrupos: string; nCatXPag: integer;bPanel: boolean);
var   k : string;
        ASeries: TcxGridDBChartSeries;
        AGrupo: tcxGridDBChartDataGroup;
        ACategoryIndex: Integer;
        A: TStringList;
        I: integer;
  begin
    try
       screen.Cursor:=crHourglass;
     grdreport.Visible:=bPanel;
     spltrReport.Visible:=bPanel;
     lblTitle.Caption:=sTitulo;
     rptlnkResults.ReportTitle.Text:=sTitulo;
     //Desocupar  vista y ficha en grilla de resultados
      tvResultslist.ClearItems;
      cvResultsCard.ClearItems;

      if msql = Null then
        begin
          pnlPrint.Visible:=false;
          grdResults.Visible:=false;
          MessageDlg('No hay instrucción SQL que ejecutar. Por favor revise la definición del reporte.', mtWarning, [mbOK], 0)
        end

      else
      begin
        //si hay parámetros pedirlos y colocarlos en la sentencia SQL
          k := vartostr(msql);
          k:=Reemplaza_Parametro(k,'');
          //Cerrar y limpiar qualquier query existente
          if dsResults.DataSet.Active then dsResults.DataSet.Close;
          qryResults.SQL.Clear;
          //Asginar sentencia SQL al query
          qryResults.SQL.Text:= k;
          //Abrir query y construir  la grilla de resultados
          qryResults.Open;
          tvResultslist.DataController.CreateAllItems();
          cvResultsCard.Datacontroller.CreateAllItems();
          tcxGridDBTableSummaryItem(tvresultslist.DataController.Summary.FooterSummaryItems[0]).Column := tvResultsList.Columns[0];

        //Crear gráfica


         chrtResults.ClearSeries;
         chrtResults.ClearDataGroups;
         chrtResults.Title.Text:=sTitulo;
         chrtResults.OptionsView.CategoriesPerPage:= nCatXPag;
         //Crea las series que esten definidas
         if sSeries <> '' then
          begin
            lvResultsChart.Visible:=true;
            A := TStringList.Create;
            Split(',',SSeries, A) ;
            chrtResults.Categories.DataBinding.FieldName:=sCategoria;
            chrtResults.Categories.DisplayText:=sCategoria;
             for I := 0 to A.count -1  do
               Begin
                  ASeries:=chrtResults.CreateSeries;
                  ASeries.DisplayText:=A[I];
                  ASeries.DataBinding.FieldName:=A[I];
               End;
              A.Free;
          //Crea los grupos que esten definidos
             if sGrupos <> '' then
              begin
                A := TStringList.Create;
                Split(',',sGrupos, A) ;
                 for I := 0 to A.count -1  do
                   Begin
                      AGrupo:=chrtResults.CreateDataGroup;
                      AGrupo.DisplayText:=A[I];
                      AGrupo.DataBinding.FieldName:=A[I];
                   End;
                A.Free;
              end;
                //Asigna títulos al eje X de los diferentes diagramas
            chrtResults.DiagramArea.AxisValue.Title.text:=sTituloX;
            chrtResults.DiagramBar.AxisValue.Title.text:=sTituloX;
            chrtResults.DiagramColumn.AxisValue.Title.text:=sTituloX;
            chrtResults.DiagramLine.AxisValue.Title.text:=sTituloX;
            chrtResults.DiagramStackedArea.AxisValue.Title.text:=sTituloX;
            chrtResults.DiagramStackedBar.AxisValue.Title.text:=sTituloX;
            chrtResults.DiagramStackedColumn.AxisValue.Title.text:=sTituloX;
          end;
       pnlPrint.Visible:=true;
       grdResults.Visible:=true;
       screen.Cursor:=crDefault;
       sStatusText:='Haga clic con el botón derecho del ratón sobre una celda o indicador de posición en el reporte generado para usar las opciones de exportación';
       //mainForm.Statusbar.simpletext:=sStatusText;
      end;
    except
     raise;
       screen.Cursor:=crDefault;
    end;
end;

procedure TgenReport.grdResultsActiveTabChanged(Sender: TcxCustomGrid;
  ALevel: TcxGridLevel);
begin
 cvResultsCard.DataController.Filter:=tvResultsList.DataController.Filter;
 chrtResults.DataController.Filter:=tvResultsList.DataController.Filter;
end;

procedure TgenReport.OpenExportedFile(sFile: string);
begin
if (MessageDlg('Desea abrir el archivo exportado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      shellexecute(handle,'open',pchar(sFile),'','',sw_shownormal);
end;

procedure TgenReport.split(const Delimiter: char; Input: String;
  const Strings: TStrings);
begin

   Assert(Assigned(Strings)) ;
   Strings.Clear;
   Strings.Delimiter := Delimiter;
   Strings.DelimitedText := Input;

end;

procedure TgenReport.tblReportesBeforePost(DataSet: TDataSet);
begin
//Actualizar fecha de modificación
tblreportesfecha_ult_modificacion.AsDateTime:=now();
end;

procedure TgenReport.tblReportesMoveComplete(DataSet: TCustomADODataSet;
  const Reason: TEventReason; const Error: Error;
  var EventStatus: TEventStatus);
begin
lvResultsChart.Visible:=false;
end;

procedure TgenReport.tblReportesNewRecord(DataSet: TDataSet);
begin
 //Colocar datos de Creación
tblReportesFecha_Creacion.AsDateTime:= now();
end;

procedure TgenReport.btnBackgroundClick(Sender: TObject);
begin
  rptLnkResults.PrinterPage.Background.SetupEffects;
end;

procedure TgenReport.btnDesignClick(Sender: TObject);
begin
 rptlnkResults.DesignReport;

end;

procedure TgenReport.btnPgSetupClick(Sender: TObject);
begin
dxcomponentPrinter1.PageSetup(rptlnkResults);
end;

procedure TgenReport.btnPreviewClick(Sender: TObject);
begin
  chrtResults.ToolBox.Visible:=tvNever;
  dxComponentPrinter1.Preview(True, rptlnkResults);
  chrtResults.ToolBox.Visible:=tvAlways;
end;

procedure TgenReport.Button1Click(Sender: TObject);

  begin
     generareporte(msql.EditValue, Edit1.text,'', '', '','',0,false);

end;



procedure TgenReport.dxComponentPrinter1DesignReport(Sender: TObject;
  AReportLink: TBasedxReportLink; var ADone: Boolean);
begin
if ADone then
     dxComponentPrinter1.SaveToFile('ReportSettings');
end;

procedure TgenReport.dxComponentPrinter1PageSetup(Sender: TObject;
  AReportLink: TBasedxReportLink; ADone: Boolean);
begin
if ADone then
     dxComponentPrinter1.CurrentLink.PrinterPage.SaveToFile('ReportPageSetup');
end;

procedure TgenReport.sbmnCopyAllClick(Sender: TObject);
begin
  TcxCustomGridTableView(tvResultsList).CopyToClipboard(True);
end;

procedure TgenReport.sbmnCopySelClick(Sender: TObject);
begin

  TcxCustomGridTableView(tvResultsList).CopyToClipboard(False);
end;

procedure TgenReport.ExportaraXMLClick(Sender: TObject);
begin
 try
  SaveDialog1.FileName:= 'GemaExport_';
  SaveDialog1.DefaultExt:='xml';
  if SaveDialog1.execute then
    begin
      ExportGridToXML(SaveDialog1.FileName,grdResults,True,True);
      OpenExportedFile(SaveDialog1.FileName);
    end;
 except
  MessageDlg('No se puede efectuar la operación. Por favor revise si está abierto un archivo con ese nombre.', mtError, [mbCancel], 0);
 end; //except
end;

procedure TgenReport.ExportaraExcelClick(Sender: TObject);
begin
 try
  SaveDialog1.FileName:= 'GemaExport_';
  SaveDialog1.DefaultExt:='xls';
  if SaveDialog1.execute then
  begin
    ExportGridToExcel (SaveDialog1.FileName,grdResults,True,True,True,'xls');
    OpenExportedFile(SaveDialog1.FileName);
  end;
 except
  MessageDlg('No se puede efectuar la operación. Por favor revise si está abierto un archivo con ese nombre.', mtError, [mbCancel], 0);
 end; //except
end;

procedure TgenReport.ExportaraXLSXClick(Sender: TObject);
begin
  try
  SaveDialog1.FileName:= 'GemaExport_';
  SaveDialog1.DefaultExt:='xlsx';
  if SaveDialog1.execute then
    begin
      ExportGridToXLSX (SaveDialog1.FileName,grdResults,True,True,True,'xlsx');
      OpenExportedFile(SaveDialog1.FileName);
    end;
 except
  MessageDlg('No se puede efectuar la operación. Por favor revise si está abierto un archivo con ese nombre.', mtError, [mbCancel], 0);
 end; //except
end;

procedure TgenReport.ExportaraHTMLClick(Sender: TObject);
begin
  try
  SaveDialog1.FileName:= 'GemaExport_';
  SaveDialog1.DefaultExt:='html';
  if SaveDialog1.execute then
    begin
      ExportGridToHTML (SaveDialog1.FileName,grdResults,True,True,'html');
      OpenExportedFile(SaveDialog1.FileName);
    end;
 except
  MessageDlg('No se puede efectuar la operación. Por favor revise si está abierto un archivo con ese nombre.', mtError, [mbCancel], 0);
 end; //except
end;

procedure TgenReport.ExportaraTextClick(Sender: TObject);
begin
  try
  SaveDialog1.FileName:= 'GemaExport_';
  if SaveDialog1.execute then
    begin
      ExportGridToText (SaveDialog1.FileName,grdResults,True,True,'','','','txt');
      OpenExportedFile(SaveDialog1.FileName);
    end;
 except
  MessageDlg('No se puede efectuar la operación. Por favor revise si está abierto un archivo con ese nombre.', mtError, [mbCancel], 0);
 end; //except
end;

procedure TgenReport.ExportarseleccionaExcelClick(Sender: TObject);
begin
  try
  SaveDialog1.FileName:= 'GemaExport_';
  if SaveDialog1.execute then
    begin
      ExportGridToExcel (SaveDialog1.FileName,grdResults,True,False,True,'xls');
      OpenExportedFile(SaveDialog1.FileName);
    end;
 except
  MessageDlg('No se puede efectuar la operación. Por favor revise si está abierto un archivo con ese nombre.', mtError, [mbCancel], 0);
 end; //except
end;

procedure TgenReport.ExportarseleccionaXLSXClick(Sender: TObject);
begin
   try
  SaveDialog1.FileName:= 'GemaExport_';
  SaveDialog1.DefaultExt:='txt';
  if SaveDialog1.execute then
    begin
       ExportGridToXLSX (SaveDialog1.FileName,grdResults,True,False,True,'xls');
      OpenExportedFile(SaveDialog1.FileName);
    end;
 except
  MessageDlg('No se puede efectuar la operación. Por favor revise si está abierto un archivo con ese nombre.', mtError, [mbCancel], 0);
 end; //except
end;

procedure TgenReport.ExportarSeleccionaHTMLClick(Sender: TObject);
begin
   try
  SaveDialog1.FileName:= 'GemaExport_';
  SaveDialog1.DefaultExt:='html';
  if SaveDialog1.execute then
    begin
      ExportGridToHTML (SaveDialog1.FileName,grdResults,True,False,'html');
      OpenExportedFile(SaveDialog1.FileName);
    end;
 except
  MessageDlg('No se puede efectuar la operación. Por favor revise si está abierto un archivo con ese nombre.', mtError, [mbCancel], 0);
 end; //except
end;

procedure TgenReport.ExportarseleccionaTextClick(Sender: TObject);
begin
   try
  SaveDialog1.FileName:= 'GemaExport_';
  SaveDialog1.DefaultExt:='txt';
  if SaveDialog1.execute then
    begin
      ExportGridToText (SaveDialog1.FileName,grdResults,True,False,'','','','txt');
      OpenExportedFile(SaveDialog1.FileName);
    end;
 except
  MessageDlg('No se puede efectuar la operación. Por favor revise si está abierto un archivo con ese nombre.', mtError, [mbCancel], 0);
 end; //except
end;

procedure TgenReport.ExportarseleccionaXMLClick(Sender: TObject);
begin
   try
  SaveDialog1.FileName:= 'GemaExport_';
  SaveDialog1.DefaultExt:='xml';
  if SaveDialog1.execute then
    begin
      ExportGridToXML (SaveDialog1.FileName,grdResults,True,False);
      OpenExportedFile(SaveDialog1.FileName);
    end;
 except
  MessageDlg('No se puede efectuar la operación. Por favor revise si está abierto un archivo con ese nombre.', mtError, [mbCancel], 0);
 end; //except
end;

procedure TgenReport.tvPickReportCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);

  var
        sTituloX: string;
        sTitulo:string;
        sCategoria:String;
        sSeries: string;
        sGrupos: string;
        nCatxPag: integer;

  begin

    sTituloX:=dsReportes.dataset.FieldByName('TituloEjeX').AsString;
    sSeries:=dsReportes.dataset.FieldByName('Series').AsString;
    sGrupos:=dsReportes.dataset.FieldByName('Grupos').AsString;
    sCategoria:=dsReportes.dataset.FieldByName('Categoria').AsString;

    if dsReportes.dataset.FieldByName('TituloReporte').AsString ='' then
      sTitulo:= dsReportes.dataset.FieldByName('Descripcion').AsString
    else
      sTitulo:=dsReportes.dataset.FieldByName('TituloReporte').AsString;

    nCatXPag:=dsReportes.dataset.FieldByName('CategoriasXPagina').AsInteger;

    generareporte(tvpickReportSQL.EditValue,sTitulo,sTituloX,sSeries,sCategoria,sGrupos,nCatxPag,true);


end;

procedure TgenReport.tvTableListCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);

var  sReportSQL    :string;

begin
  try
  //Limpiar la grilla de resultados y si hay un query abierto cerrarlo y limpiarlo
     screen.Cursor:=crHourglass;
    tvResultslist.ClearItems;
    cvResultsCard.ClearItems();
    if dsResults.DataSet.Active then dsResults.DataSet.Close;
    qryResults.SQL.Clear;
     //Construir el nuevo query y abrirlo
    sReportSQL := tvTableListReporte.Editvalue;
    qryResults.SQL.text:= tvTableListReporte.EditValue;
    qryResults.Open;
    ///Construir la grilla de reultados con el nuevo query
    tvResultslist.DataController.CreateAllItems();
    cvResultsCard.Datacontroller.CreateAllItems();
    tcxGridDBTableSummaryItem(tvresultslist.DataController.Summary.FooterSummaryItems[0]).Column := tvResultsList.Columns[0];
    //    Mostrar la grilla
    pnlPrint.Visible:=true;
   grdResults.Visible:=true;
   screen.Cursor:=crDefault;
   sStatusText:='Haga clic con el botón derecho del ratón sobre una celda o indicador de posición en el reporte generado para usar las opciones de exportación';
   //mainForm.Statusbar.simpletext:=sStatusText;

  except
     raise
    end;
end;

end.



