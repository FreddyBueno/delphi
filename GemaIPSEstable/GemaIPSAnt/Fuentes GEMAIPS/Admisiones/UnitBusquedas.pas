unit UnitBusquedas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  TFrmBusquedas = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label1: TLabel;
    Bevel1: TBevel;
    EditNumAdmision: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Bevel2: TBevel;
    EditNumDoc: TEdit;
    Label4: TLabel;
    Panel1: TPanel;
    EditPriApellido: TEdit;
    EditSegApellido: TEdit;
    EditPriNombre: TEdit;
    EditSegNombre: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    BtnBuscar: TBitBtn;
    BtnCancelar: TBitBtn;
    Label9: TLabel;
    Bevel3: TBevel;
    procedure FormShow(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure EditPriApellidoKeyPress(Sender: TObject; var Key: Char);
    procedure EditSegApellidoKeyPress(Sender: TObject; var Key: Char);
    procedure EditPriNombreKeyPress(Sender: TObject; var Key: Char);
    procedure EditSegNombreKeyPress(Sender: TObject; var Key: Char);
    procedure EditNumAdmisionKeyPress(Sender: TObject; var Key: Char);
    procedure EditNumDocKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    Tamano  : Integer;
    { Public declarations }
  end;

var
  FrmBusquedas: TFrmBusquedas;

implementation

{$R *.dfm}

procedure TFrmBusquedas.FormShow(Sender: TObject);
begin
  if Tamano = 0 then
    begin
      Height := 153;
      PageControl1.ActivePageIndex  := 0;
    end;

  if Tamano = 1 then
    begin
      Height := 153;
      PageControl1.ActivePageIndex  := 1;
    end;

  if Tamano = 2 then
    begin
      Height := 201;
      PageControl1.ActivePageIndex  := 2;
    end;
end;

procedure TFrmBusquedas.TabSheet1Show(Sender: TObject);
begin
  EditNumAdmision.SetFocus;
end;

procedure TFrmBusquedas.TabSheet2Show(Sender: TObject);
begin
  EditNumDoc.SetFocus;
end;

procedure TFrmBusquedas.TabSheet3Show(Sender: TObject);
begin
  EditPriApellido.SetFocus;
end;

procedure TFrmBusquedas.EditPriApellidoKeyPress(Sender: TObject;
  var Key: Char);
begin
   case key of
     #1,#2,#3,#4,#5,#6,#7,#11,#12,#14,#15,#17,#18,#19,#20,#21,#22,#23,#24,#25,#26,#27,#32,#33,#34,#35 : key := #0;
     #36,#37,#38,#39,#40,#41,#42,#43,#44,#45,#46,#47,#58,#59,#60,#61,#62,#63,#64: key := #0;
     #91,#92,#93,#94,#95,#96: key := #0;
     #123,#124,#125,#126,#127,#128,#129,#130,#131,#132,#133,#134,#135,#136,#137,#138,#139,#140,#141,#142 : key := #0;
     '¿','´','°','¨','¡','ç','Ç','º','ª','·' : key := #0;
   end;
end;

procedure TFrmBusquedas.EditSegApellidoKeyPress(Sender: TObject;
  var Key: Char);
begin
   case key of
     #1,#2,#3,#4,#5,#6,#7,#11,#12,#14,#15,#17,#18,#19,#20,#21,#22,#23,#24,#25,#26,#27,#32,#33,#34,#35 : key := #0;
     #36,#37,#38,#39,#40,#41,#42,#43,#44,#45,#46,#47,#58,#59,#60,#61,#62,#63,#64: key := #0;
     #91,#92,#93,#94,#95,#96: key := #0;
     #123,#124,#125,#126,#127,#128,#129,#130,#131,#132,#133,#134,#135,#136,#137,#138,#139,#140,#141,#142 : key := #0;
     '¿','´','°','¨','¡','ç','Ç','º','ª','·' : key := #0;
   end;
end;

procedure TFrmBusquedas.EditPriNombreKeyPress(Sender: TObject;
  var Key: Char);
begin
   case key of
     #1,#2,#3,#4,#5,#6,#7,#11,#12,#14,#15,#17,#18,#19,#20,#21,#22,#23,#24,#25,#26,#27,#32,#33,#34,#35 : key := #0;
     #36,#37,#38,#39,#40,#41,#42,#43,#44,#45,#46,#47,#58,#59,#60,#61,#62,#63,#64: key := #0;
     #91,#92,#93,#94,#95,#96: key := #0;
     #123,#124,#125,#126,#127,#128,#129,#130,#131,#132,#133,#134,#135,#136,#137,#138,#139,#140,#141,#142 : key := #0;
     '¿','´','°','¨','¡','ç','Ç','º','ª','·' : key := #0;
   end;
end;

procedure TFrmBusquedas.EditSegNombreKeyPress(Sender: TObject;
  var Key: Char);
begin
   case key of
     #1,#2,#3,#4,#5,#6,#7,#11,#12,#14,#15,#17,#18,#19,#20,#21,#22,#23,#24,#25,#26,#27,#32,#33,#34,#35 : key := #0;
     #36,#37,#38,#39,#40,#41,#42,#43,#44,#45,#46,#47,#58,#59,#60,#61,#62,#63,#64: key := #0;
     #91,#92,#93,#94,#95,#96: key := #0;
     #123,#124,#125,#126,#127,#128,#129,#130,#131,#132,#133,#134,#135,#136,#137,#138,#139,#140,#141,#142 : key := #0;
     '¿','´','°','¨','¡','ç','Ç','º','ª','·' : key := #0;
   end;
end;

procedure TFrmBusquedas.EditNumAdmisionKeyPress(Sender: TObject;
  var Key: Char);
begin
  case key of
     #1,#2,#3,#4,#5,#6,#7,#11,#12,#14,#15,#17,#18,#19,#20,#21,#22,#23,#24,#25,#26,#27,#32,#33,#34,#35 : key := #0;
     #36,#37,#38,#39,#40,#41,#42,#43,#44,#45,#46,#47,#58,#59,#60,#61,#62,#63,#64: key := #0;
     #65,#66,#67,#68,#69,#70,#71,#72,#73,#74,#75,#76,#77,#78,#79,#80,#81,#82,#83,#84,#85,#86,#87,#88,#89,#90 : key := #0;
     #91,#92,#93,#94,#95,#96,#97,#98,#99,#100,#101,#102,#103,#104,#105,#106,#107,#108,#109,#110,#111,#112,#113,#114,#115,#116 : key := #0;
     #117,#118,#119,#120,#121,#122,#123,#124,#125,#126,#127,#128,#129,#130,#131,#132,#133,#134,#135,#136,#137,#138,#139,#140,#141,#142 : key := #0;
     'ñ','Ñ','¿','´','°','¨','¡','ç' : key := #0;
   end;
end;

procedure TFrmBusquedas.EditNumDocKeyPress(Sender: TObject; var Key: Char);
begin
   case key of
     #1,#2,#3,#4,#5,#6,#7,#11,#12,#14,#15,#17,#18,#19,#20,#21,#22,#23,#24,#25,#26,#27,#32,#33,#34,#35 : key := #0;
     #36,#37,#38,#39,#40,#41,#42,#43,#44,#45,#46,#47,#58,#59,#60,#61,#62,#63,#64: key := #0;
     #91,#92,#93,#94,#95,#96: key := #0;
     #123,#124,#125,#126,#127,#128,#129,#130,#131,#132,#133,#134,#135,#136,#137,#138,#139,#140,#141,#142 : key := #0;
     'ñ','Ñ','¿','´','°','¨','¡','ç','Ç','º','ª','·' : key := #0;
   end;
end;

end.
