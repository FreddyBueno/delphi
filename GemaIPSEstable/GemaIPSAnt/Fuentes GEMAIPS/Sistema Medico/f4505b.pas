unit f4505b;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, shellapi,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, Data.Win.ADODB, Vcl.ExtCtrls, cxEditRepositoryItems, Vcl.Menus,
  Vcl.StdCtrls, cxButtons,CxExport,cxGridExportLink, cxContainer, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxGroupBox;

type
  Tfrm4505 = class(TForm)
    dsReg1: TDataSource;
    dsreg2: TDataSource;
    tblReg1: TADOTable;
    tblReg2: TADOTable;
    grd4505: TcxGrid;
    tvReg1: TcxGridDBTableView;
    tvReg2: TcxGridDBTableView;
    lvTipoReg1: TcxGridLevel;
    lvTipoReg2: TcxGridLevel;
    tvReg1E1: TcxGridDBColumn;
    tvReg1E2: TcxGridDBColumn;
    tvReg1E3: TcxGridDBColumn;
    tvReg1E4: TcxGridDBColumn;
    tvReg1E5: TcxGridDBColumn;
    tvReg2C0: TcxGridDBColumn;
    tvReg2C1: TcxGridDBColumn;
    tvReg2C2: TcxGridDBColumn;
    tvReg2C3: TcxGridDBColumn;
    tvReg2C4: TcxGridDBColumn;
    tvReg2C5: TcxGridDBColumn;
    tvReg2C6: TcxGridDBColumn;
    tvReg2C7: TcxGridDBColumn;
    tvReg2C8: TcxGridDBColumn;
    tvReg2C9: TcxGridDBColumn;
    tvReg2C10: TcxGridDBColumn;
    tvReg2C11: TcxGridDBColumn;
    tvReg2C12: TcxGridDBColumn;
    tvReg2C13: TcxGridDBColumn;
    tvReg2C14: TcxGridDBColumn;
    tvReg2C15: TcxGridDBColumn;
    tvReg2C16: TcxGridDBColumn;
    tvReg2C17: TcxGridDBColumn;
    tvReg2C18: TcxGridDBColumn;
    tvReg2C19: TcxGridDBColumn;
    tvReg2C20: TcxGridDBColumn;
    tvReg2C21: TcxGridDBColumn;
    tvReg2C22: TcxGridDBColumn;
    tvReg2C23: TcxGridDBColumn;
    tvReg2C24: TcxGridDBColumn;
    tvReg2C25: TcxGridDBColumn;
    tvReg2C26: TcxGridDBColumn;
    tvReg2C27: TcxGridDBColumn;
    tvReg2C28: TcxGridDBColumn;
    tvReg2C29: TcxGridDBColumn;
    tvReg2C30: TcxGridDBColumn;
    tvReg2C31: TcxGridDBColumn;
    tvReg2C32: TcxGridDBColumn;
    tvReg2C33: TcxGridDBColumn;
    tvReg2C34: TcxGridDBColumn;
    tvReg2C35: TcxGridDBColumn;
    tvReg2C36: TcxGridDBColumn;
    tvReg2C37: TcxGridDBColumn;
    tvReg2C38: TcxGridDBColumn;
    tvReg2C39: TcxGridDBColumn;
    tvReg2C40: TcxGridDBColumn;
    tvReg2C41: TcxGridDBColumn;
    tvReg2C42: TcxGridDBColumn;
    tvReg2C43: TcxGridDBColumn;
    tvReg2C44: TcxGridDBColumn;
    tvReg2C45: TcxGridDBColumn;
    tvReg2C46: TcxGridDBColumn;
    tvReg2C47: TcxGridDBColumn;
    tvReg2C48: TcxGridDBColumn;
    tvReg2C49: TcxGridDBColumn;
    tvReg2C50: TcxGridDBColumn;
    tvReg2C51: TcxGridDBColumn;
    tvReg2C52: TcxGridDBColumn;
    tvReg2C53: TcxGridDBColumn;
    tvReg2C54: TcxGridDBColumn;
    tvReg2C55: TcxGridDBColumn;
    tvReg2C56: TcxGridDBColumn;
    tvReg2C57: TcxGridDBColumn;
    tvReg2C58: TcxGridDBColumn;
    tvReg2C59: TcxGridDBColumn;
    tvReg2C60: TcxGridDBColumn;
    tvReg2C61: TcxGridDBColumn;
    tvReg2C62: TcxGridDBColumn;
    tvReg2C63: TcxGridDBColumn;
    tvReg2C64: TcxGridDBColumn;
    tvReg2C65: TcxGridDBColumn;
    tvReg2C66: TcxGridDBColumn;
    tvReg2C67: TcxGridDBColumn;
    tvReg2C68: TcxGridDBColumn;
    tvReg2C69: TcxGridDBColumn;
    tvReg2C70: TcxGridDBColumn;
    tvReg2C71: TcxGridDBColumn;
    tvReg2C72: TcxGridDBColumn;
    tvReg2C74: TcxGridDBColumn;
    tvReg2C75: TcxGridDBColumn;
    tvReg2C76: TcxGridDBColumn;
    tvReg2C77: TcxGridDBColumn;
    tvReg2C78: TcxGridDBColumn;
    tvReg2C79: TcxGridDBColumn;
    tvReg2C80: TcxGridDBColumn;
    tvReg2C81: TcxGridDBColumn;
    tvReg2C82: TcxGridDBColumn;
    tvReg2C83: TcxGridDBColumn;
    tvReg2C84: TcxGridDBColumn;
    tvReg2C85: TcxGridDBColumn;
    tvReg2C86: TcxGridDBColumn;
    tvReg2C87: TcxGridDBColumn;
    tvReg2C88: TcxGridDBColumn;
    tvReg2C89: TcxGridDBColumn;
    tvReg2C90: TcxGridDBColumn;
    tvReg2C91: TcxGridDBColumn;
    tvReg2C92: TcxGridDBColumn;
    tvReg2C93: TcxGridDBColumn;
    tvReg2C94: TcxGridDBColumn;
    tvReg2C95: TcxGridDBColumn;
    tvReg2C96: TcxGridDBColumn;
    tvReg2C97: TcxGridDBColumn;
    tvReg2C98: TcxGridDBColumn;
    tvReg2C99: TcxGridDBColumn;
    tvReg2C100: TcxGridDBColumn;
    tvReg2C101: TcxGridDBColumn;
    tvReg2C102: TcxGridDBColumn;
    tvReg2C103: TcxGridDBColumn;
    tvReg2C104: TcxGridDBColumn;
    tvReg2C105: TcxGridDBColumn;
    tvReg2C106: TcxGridDBColumn;
    tvReg2C107: TcxGridDBColumn;
    tvReg2C108: TcxGridDBColumn;
    tvReg2C109: TcxGridDBColumn;
    tvReg2C110: TcxGridDBColumn;
    tvReg2C111: TcxGridDBColumn;
    tvReg2C112: TcxGridDBColumn;
    tvReg2C113: TcxGridDBColumn;
    tvReg2C114: TcxGridDBColumn;
    tvReg2C115: TcxGridDBColumn;
    tvReg2C116: TcxGridDBColumn;
    tvReg2C117: TcxGridDBColumn;
    tvReg2C118: TcxGridDBColumn;
    cxEditRepository1: TcxEditRepository;
    Panel1: TPanel;
    rpitmFecha: TcxEditRepositoryDateItem;
    btnExportarXLSX: TcxButton;
    btnExpTXT: TcxButton;
    btnGenerar: TcxButton;
    SaveDialog1: TSaveDialog;
    ADOConnection1: TADOConnection;
    grpbxFechaInicial: TcxGroupBox;
    edtFechaInicial: TcxDateEdit;
    grpbxFechafinal: TcxGroupBox;
    edtFechaFinal: TcxDateEdit;
    cmdGen4505: TADOCommand;
    procedure btnExpTXTClick(Sender: TObject);
    procedure btnExportarXLSXClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtFechaInicialExit(Sender: TObject);
    procedure edtFechaFinalExit(Sender: TObject);
    procedure btnGenerarClick(Sender: TObject);
  private
    { Private declarations }
    procedure OpenExportedFile (sFile: string);
  public
    { Public declarations }
  end;

var
  frm4505: Tfrm4505;

implementation

{$R *.dfm}

procedure Tfrm4505.btnExportarXLSXClick(Sender: TObject);
begin
try
  SaveDialog1.FileName:= 'GemaExport_';
  SaveDialog1.DefaultExt:='xlsx';
  if SaveDialog1.execute then
    begin
      screen.Cursor:=crHourGlass;
      ExportGridToXLSX (SaveDialog1.FileName,grd4505,True,True,True,'xlsx');
      OpenExportedFile(SaveDialog1.FileName);
      screen.Cursor:=crDefault;
    end;
 except
  MessageDlg('No se puede efectuar la operación. Por favor revise si está abierto un archivo con ese nombre.', mtError, [mbCancel], 0);
 end; //except
end;

procedure Tfrm4505.btnExpTXTClick(Sender: TObject);
begin
   try
  SaveDialog1.FileName:= 'GemaExport_';
  if SaveDialog1.execute then
    begin
      screen.Cursor:=crHourGlass;
      tvReg1.OptionsView.Header:=false;
      tvReg2.OptionsView.Header:=false;
      ExportGridToText (SaveDialog1.FileName,grd4505,True,True,'|','','','txt');
      tvReg1.OptionsView.Header:=true;
      tvReg2.OptionsView.Header:=true;
      screen.Cursor:=crDefault;
      OpenExportedFile(SaveDialog1.FileName);

    end;
 except
  MessageDlg('No se puede efectuar la operación. Por favor revise si está abierto un archivo con ese nombre.', mtError, [mbCancel], 0);
 end; //except
end;

procedure Tfrm4505.btnGenerarClick(Sender: TObject);
begin
   screen.Cursor:=crHourGlass;
   try
      try
       cmdGen4505.Parameters.ParamValues['@FechaInicial']:=edtFechaInicial.Text ;
       cmdGen4505.Parameters.ParamValues['@FechaFinal']:=edtFechaFinal.Text;
       cmdGen4505.Execute;
   except
      screen.Cursor:=crDefault;
    end;
   finally
     screen.Cursor:=crDefault;
   end;

end;

procedure Tfrm4505.edtFechaFinalExit(Sender: TObject);
begin
  if edtFechaFinal.Date < EdtFechaInicial.Date then   edtFechaInicial.Date := EdtFechaFinal.Date;
    edtFechaInicial.Properties.MaxDate:=edtFechaFinal.Date;
end;

procedure Tfrm4505.edtFechaInicialExit(Sender: TObject);
begin
  if edtFechaFinal.Date < EdtFechaInicial.Date then   edtFechaFinal.Date := EdtFechaInicial.Date;
    edtFechaFinal.Properties.MinDate:=edtFechaInicial.Date;
end;

procedure Tfrm4505.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tblReg2.Close;
  tblReg1.Close;
end;

procedure Tfrm4505.FormCreate(Sender: TObject);
begin
 tblReg1.Open;
 tblReg2.Open;
 edtFechaInicial.Date:=tvReg1.Columns[2].EditValue;
 edtFechaFinal.Date:=tvReg1.Columns[3].EditValue;
 edtFechaInicial.Properties.MaxDate:=now;
 edtFechaFinal.Properties.MaxDate:=now;
end;

procedure Tfrm4505.OpenExportedFile(sFile: string);
begin
 if (MessageDlg('Desea abrir el archivo exportado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      shellexecute(handle,'open',pchar(sFile),'','',sw_shownormal);
end;

end.
