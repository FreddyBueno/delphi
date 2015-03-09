unit FrmCalculoTarifa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, DB, ADODB;

type
  TFCalculoTarifa = class(TForm)
    Label8: TLabel;
    Label14: TLabel;
    Label10: TLabel;
    MaskEdit2: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    BitBtn3: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    ADOQuery7: TADOQuery;
    Edit15: TEdit;
    Edit16: TEdit;
    CBDSalas: TComboBox;
    CBDMateriales: TComboBox;
    CBDEspecialista: TComboBox;
    CBDAnestesiologo: TComboBox;
    CBDMedAux: TComboBox;
    MaskEdit6: TMaskEdit;
    MaskEdit7: TMaskEdit;
    MaskEdit8: TMaskEdit;
    MaskEdit9: TMaskEdit;
    MaskEdit10: TMaskEdit;
    MaskEdit11: TMaskEdit;
    LblUVR: TLabel;
    ADOQryG: TADOQuery;
    MaskEdit1: TMaskEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    MaskEdit5: TMaskEdit;
    MaskEdit12: TMaskEdit;
    Label5: TLabel;
    MaskEdit13: TMaskEdit;
    MaskEdit14: TMaskEdit;
    MaskEdit15: TMaskEdit;
    MaskEdit16: TMaskEdit;
    MaskEdit17: TMaskEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure CBDSalasClick(Sender: TObject);
    procedure CBDMaterialesClick(Sender: TObject);
    procedure CBDEspecialistaClick(Sender: TObject);
    procedure CBDAnestesiologoClick(Sender: TObject);
    procedure CBDMedAuxClick(Sender: TObject);
    function BuscaValor(cod : string; Tarifa : string; ano:string; Por : Real):Real;
    procedure MaskEdit12Change(Sender: TObject);
    procedure MaskEdit5Change(Sender: TObject);
    procedure MaskEdit4Change(Sender: TObject);
    procedure MaskEdit3Change(Sender: TObject);
    procedure MaskEdit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCalculoTarifa: TFCalculoTarifa;

implementation

uses FCargos;

{$R *.dfm}

function TFCalculoTarifa.BuscaValor(cod : string; Tarifa : string; ano:string; Por : Real):Real;
//var valor, total, PorcRes : Real;
begin
  ADOQryG.Close;
  ADOQryG.SQL.Clear;
  ADOQryG.SQL.Add('SELECT * FROM SATarifasDetalle');
  ADOQryG.SQL.Add('WHERE CODIGO IN (SELECT Codigo2 FROM SAHomologacion');
  ADOQryG.SQL.Add('WHERE Tabla1 = ''CUP''');
  ADOQryG.SQL.Add('   AND Codigo1= '''+Cod+'''');
  ADOQryG.SQL.Add('   AND Tabla2 = '''+Tarifa+''')');
  ADOQryG.SQL.Add('   AND Año = '''+ano+'''');
  ADOQryG.SQL.Add('   AND Tabla = '''+Tarifa+'''');
  ADOQryG.Open;

  if not ADOQryG.Eof then
    begin
    {  if Por <> 100 then
        begin
          if Por > 100 then
            PorcRes := Por - 100
          else
            PorcRes := 100 - Por;

          valor := (ADOQryG.Fields.FieldByName('Valor').AsFloat * PorcRes) / 100;

          if Por > 100 then
            Result := ADOQryG.Fields.FieldByName('Valor').AsFloat + valor
          else
            Result := ADOQryG.Fields.FieldByName('Valor').AsFloat - valor;
        end
      else
        begin  }
          Result := ADOQryG.Fields.FieldByName('Valor').AsFloat;
      //  end;
    end
  else
    Result := 0;
end;

procedure TFCalculoTarifa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //Action:=cafree;
end;

procedure TFCalculoTarifa.BitBtn3Click(Sender: TObject);
begin
  FCapturaCargo.MaskEdit2.Text := Maskedit2.Text;
  close;
end;

procedure TFCalculoTarifa.CBDSalasClick(Sender: TObject);
begin
  if StrToFloat(MaskEdit11.Text) > 450 then
    MaskEdit6.Text  := FloatToStr(BuscaValor(CBDSalas.Text,FCapturaCargo.ADOQueryServ.Fields.FieldByName('TARIFA').AsString, FCapturaCargo.ADOQueryServ.Fields.FieldByName('AÑO').AsString, FCapturaCargo.ADOQueryServ.Fields.FieldByName('Porcentaje').AsFloat )* StrToFloat(MaskEdit11.Text))
  else
    MaskEdit6.Text  := FloatToStr(BuscaValor(CBDSalas.Text,FCapturaCargo.ADOQueryServ.Fields.FieldByName('TARIFA').AsString, FCapturaCargo.ADOQueryServ.Fields.FieldByName('AÑO').AsString, FCapturaCargo.ADOQueryServ.Fields.FieldByName('Porcentaje').AsFloat ));

  ADOQuery7.Close;
  ADOQuery7.SQL.Clear;
  ADOQuery7.SQL.Add('SELECT * FROM SAServicios WHERE Codigo = '+chr(39)+CBDSalas.Text+chr(39));
  ADOQuery7.Open;
  Edit10.Text := ADOQuery7.FieldValues['DESCRIPCION'];

  MaskEdit13.Text := FloatToStr(StrToFloat(MaskEdit6.Text) * (StrToFloat(MaskEdit1.Text)/100));
  MaskEdit2.Text  := FloatToStr(StrToFloat(MaskEdit13.Text) + StrToFloat(MaskEdit14.Text) + StrToFloat(MaskEdit15.Text)+StrToFloat(MaskEdit16.Text)+StrToFloat(MaskEdit17.Text));
end;

procedure TFCalculoTarifa.CBDMaterialesClick(Sender: TObject);
begin
  MaskEdit7.Text  := FloatToStr(BuscaValor(CBDMateriales.Text,FCapturaCargo.ADOQueryServ.Fields.FieldByName('TARIFA').AsString, FCapturaCargo.ADOQueryServ.Fields.FieldByName('AÑO').AsString, FCapturaCargo.ADOQueryServ.Fields.FieldByName('Porcentaje').AsFloat));
  ADOQuery7.Close;
  ADOQuery7.SQL.Clear;
  ADOQuery7.SQL.Add('SELECT * FROM SAServicios WHERE Codigo = '+chr(39)+CBDMateriales.Text+chr(39));
  ADOQuery7.Open;
  Edit11.Text := ADOQuery7.FieldValues['DESCRIPCION'];
  MaskEdit14.Text := FloatToStr(StrToFloat(MaskEdit7.Text) * (StrToFloat(MaskEdit3.Text)/100));
  MaskEdit2.Text  := FloatToStr(StrToFloat(MaskEdit13.Text) + StrToFloat(MaskEdit14.Text) + StrToFloat(MaskEdit15.Text)+StrToFloat(MaskEdit16.Text)+StrToFloat(MaskEdit17.Text));
end;

procedure TFCalculoTarifa.CBDEspecialistaClick(Sender: TObject);
begin
  MaskEdit8.Text  := FloatToStr(BuscaValor(CBDEspecialista.Text,FCapturaCargo.ADOQueryServ.Fields.FieldByName('TARIFA').AsString, FCapturaCargo.ADOQueryServ.Fields.FieldByName('AÑO').AsString, FCapturaCargo.ADOQueryServ.Fields.FieldByName('Porcentaje').AsFloat)*StrToFloat(MaskEdit11.Text));
  ADOQuery7.Close;
  ADOQuery7.SQL.Clear;
  ADOQuery7.SQL.Add('SELECT * FROM SAServicios WHERE Codigo = '+chr(39)+CBDEspecialista.Text+chr(39));
  ADOQuery7.Open;
  Edit12.Text := ADOQuery7.FieldValues['DESCRIPCION'];
  MaskEdit15.Text := FloatToStr(StrToFloat(MaskEdit8.Text) * (StrToFloat(MaskEdit4.Text)/100));
  MaskEdit2.Text  := FloatToStr(StrToFloat(MaskEdit13.Text) + StrToFloat(MaskEdit14.Text) + StrToFloat(MaskEdit15.Text)+StrToFloat(MaskEdit16.Text)+StrToFloat(MaskEdit17.Text));
end;

procedure TFCalculoTarifa.CBDAnestesiologoClick(Sender: TObject);
begin
  MaskEdit9.Text  := FloatToStr(BuscaValor(CBDAnestesiologo.Text,FCapturaCargo.ADOQueryServ.Fields.FieldByName('TARIFA').AsString, FCapturaCargo.ADOQueryServ.Fields.FieldByName('AÑO').AsString, FCapturaCargo.ADOQueryServ.Fields.FieldByName('Porcentaje').AsFloat)*StrToFloat(MaskEdit11.Text));
  ADOQuery7.Close;
  ADOQuery7.SQL.Clear;
  ADOQuery7.SQL.Add('SELECT * FROM SAServicios WHERE Codigo = '+chr(39)+CBDAnestesiologo.Text+chr(39));
  ADOQuery7.Open;
  Edit13.Text := ADOQuery7.FieldValues['DESCRIPCION'];
  MaskEdit16.Text := FloatToStr(StrToFloat(MaskEdit9.Text) * (StrToFloat(MaskEdit5.Text)/100));
  MaskEdit2.Text  := FloatToStr(StrToFloat(MaskEdit13.Text) + StrToFloat(MaskEdit14.Text) + StrToFloat(MaskEdit15.Text)+StrToFloat(MaskEdit16.Text)+StrToFloat(MaskEdit17.Text));
end;

procedure TFCalculoTarifa.CBDMedAuxClick(Sender: TObject);
begin
  MaskEdit10.Text  := FloatToStr(BuscaValor(CBDMedAux.Text,FCapturaCargo.ADOQueryServ.Fields.FieldByName('TARIFA').AsString, FCapturaCargo.ADOQueryServ.Fields.FieldByName('AÑO').AsString, FCapturaCargo.ADOQueryServ.Fields.FieldByName('Porcentaje').AsFloat)*StrToFloat(MaskEdit11.Text));
  ADOQuery7.Close;
  ADOQuery7.SQL.Clear;
  ADOQuery7.SQL.Add('SELECT * FROM SAServicios WHERE Codigo = '+chr(39)+CBDMedAux.Text+chr(39));
  ADOQuery7.Open;
  Edit14.Text := ADOQuery7.FieldValues['DESCRIPCION'];
  MaskEdit17.Text := FloatToStr(StrToFloat(MaskEdit10.Text) * (StrToFloat(MaskEdit12.Text)/100));
  MaskEdit2.Text  := FloatToStr(StrToFloat(MaskEdit13.Text) + StrToFloat(MaskEdit14.Text) + StrToFloat(MaskEdit15.Text)+StrToFloat(MaskEdit16.Text)+StrToFloat(MaskEdit17.Text));
end;

procedure TFCalculoTarifa.MaskEdit12Change(Sender: TObject);
begin
  MaskEdit17.Text := FloatToStr(StrToFloat(MaskEdit10.Text) * (StrToFloat(MaskEdit12.Text)/100));
  MaskEdit2.Text  := FloatToStr(StrToFloat(MaskEdit13.Text) + StrToFloat(MaskEdit14.Text) + StrToFloat(MaskEdit15.Text)+StrToFloat(MaskEdit16.Text)+StrToFloat(MaskEdit17.Text));
end;

procedure TFCalculoTarifa.MaskEdit5Change(Sender: TObject);
begin
  MaskEdit16.Text := FloatToStr(StrToFloat(MaskEdit9.Text) * (StrToFloat(MaskEdit5.Text)/100));
  MaskEdit2.Text  := FloatToStr(StrToFloat(MaskEdit13.Text) + StrToFloat(MaskEdit14.Text) + StrToFloat(MaskEdit15.Text)+StrToFloat(MaskEdit16.Text)+StrToFloat(MaskEdit17.Text));

end;

procedure TFCalculoTarifa.MaskEdit4Change(Sender: TObject);
begin
  MaskEdit15.Text := FloatToStr(StrToFloat(MaskEdit8.Text) * (StrToFloat(MaskEdit4.Text)/100));
  MaskEdit2.Text  := FloatToStr(StrToFloat(MaskEdit13.Text) + StrToFloat(MaskEdit14.Text) + StrToFloat(MaskEdit15.Text)+StrToFloat(MaskEdit16.Text)+StrToFloat(MaskEdit17.Text));

end;

procedure TFCalculoTarifa.MaskEdit3Change(Sender: TObject);
begin
  MaskEdit14.Text := FloatToStr(StrToFloat(MaskEdit7.Text) * (StrToFloat(MaskEdit3.Text)/100));
  MaskEdit2.Text  := FloatToStr(StrToFloat(MaskEdit13.Text) + StrToFloat(MaskEdit14.Text) + StrToFloat(MaskEdit15.Text)+StrToFloat(MaskEdit16.Text)+StrToFloat(MaskEdit17.Text));

end;

procedure TFCalculoTarifa.MaskEdit1Change(Sender: TObject);
begin
  MaskEdit13.Text := FloatToStr(StrToFloat(MaskEdit6.Text) * (StrToFloat(MaskEdit1.Text)/100));
  MaskEdit2.Text  := FloatToStr(StrToFloat(MaskEdit13.Text) + StrToFloat(MaskEdit14.Text) + StrToFloat(MaskEdit15.Text)+StrToFloat(MaskEdit16.Text)+StrToFloat(MaskEdit17.Text));

end;

end.
