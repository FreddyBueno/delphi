unit FReportFormato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, QRCtrls, QuickRpt, ExtCtrls;

type
  TImprimeFmto = class(TForm)
    QuickRep1: TQuickRep;
    EncabezadoPag: TQRBand;
    FinalPagina: TQRBand;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRLabel6: TQRLabel;
    QRShape14: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape1: TQRShape;
    ADOQuery1: TADOQuery;
    QRBand1: TQRBand;
    QRShape5: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText22: TQRDBText;
    QRBand2: TQRBand;
    ADOQuery2: TADOQuery;
    QRBand3: TQRBand;
    QRImage1: TQRImage;
    QRShape2: TQRShape;
    QRLabel5: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel22: TQRLabel;
    QRSysData2: TQRSysData;
    QRShape4: TQRShape;
    QRRichText2: TQRRichText;
    QRShape3: TQRShape;
    QRLabel2: TQRLabel;
    ADOQuery3: TADOQuery;
    QRDBRichText1: TQRDBRichText;
    QRDBText23: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRShape7: TQRShape;
    QRGroupFmto: TQRGroup;
    QRDBText1: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel21: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure GrupoSeccionAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure GrupoSeccionBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure GrupoMedicoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure EncabezadoPagBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImprimeFmto: TImprimeFmto;
  DetSubc:String;

implementation

uses UDataModule1, SEMenu;

{$R *.dfm}

procedure TImprimeFmto.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRRichText2.Lines.Append(DetSubc);
end;

procedure TImprimeFmto.GrupoSeccionAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QRRichText2.Lines.Clear;
  DetSubc:='';
end;

procedure TImprimeFmto.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  IF ADOQuery1.FieldValues['Descripcion_3'] <> null Then DetSubc := DetSubc+ADOQuery1.FieldValues['Descripcion_3']+': '+ADOQuery1.FieldValues['Valor']+chr(9);
end;

procedure TImprimeFmto.GrupoSeccionBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  ADOQuery2.Close;

  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add(' SELECT * ');
  ADOQuery2.SQL.Add('FROM '+Datamodule1.Bd+'..'+'FDSubcampos');
  ADOQuery2.SQL.Add('WHERE Codigo_Formato = :CdFmt AND');
  ADOQuery2.SQL.Add('               Codigo_Seccion = :CDSecc AND');
  ADOQuery2.SQL.Add('               Codigo_Campo = :CDCampo');

  ADOQuery2.Parameters.ParamValues['CDFmt']   := ADOQuery1.FieldValues['Codigo_Formato'];
  ADOQuery2.Parameters.ParamValues['CDSecc']  := ADOQuery1.FieldValues['Codigo_Seccion'];
  ADOQuery2.Parameters.ParamValues['CDCampo'] := ADOQuery1.FieldValues['Codigo_Campo'];
  ADOQuery2.Open;
  IF ADOQuery2.RecordCount <> 0 Then Begin
    QRDBRichText1.Enabled:= False;
    QRBand1.Enabled := True;
  End
  ELSE Begin
    QRDBRichText1.Enabled:= True;
    QRBand1.Enabled := False;
  End;
end;

procedure TImprimeFmto.GrupoMedicoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  ADOQuery3.Close;
  ADOQuery3.Parameters.ParamValues['IDE']:=ADOQuery1.FieldValues['Usuario'];
  ADOQuery3.Open;
  QRLabel21.Caption := ADOQuery3.FieldValues['Primer_Apellido'];
  QRLabel23.Caption := ADOQuery3.FieldValues['Segundo_Apellido'];
  QRLabel24.Caption := ADOQuery3.FieldValues['Nombres'];
  QRLabel25.Caption := ADOQuery3.FieldValues['Tipo_Identificacion'];
  QRLabel26.Caption := ADOQuery3.FieldValues['No_Identificacion'];

end;

procedure TImprimeFmto.EncabezadoPagBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QrLabel27.Caption := inttostr(integer((now - ADOQuery1.FieldValues['fec_nacimineto'])/365));
end;

end.
