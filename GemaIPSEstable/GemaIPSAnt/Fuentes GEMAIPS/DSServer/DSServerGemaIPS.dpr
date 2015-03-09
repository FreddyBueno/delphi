program DSServerGemaIPS;
{$APPTYPE GUI}

{$R *.dres}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  FormServerGemaIPS in 'FormServerGemaIPS.pas' {Form1},
  PrServerGemaMethodsUnit1 in 'PrServerGemaMethodsUnit1.pas' {ServerMethods1: TDataModule},
  PrServerGema in 'PrServerGema.pas' {WebModule1: TWebModule};

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
