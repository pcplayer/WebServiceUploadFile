program testServer;
{$APPTYPE GUI}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  FormUnit1 in 'FormUnit1.pas' {Form1},
  WebModuleUnit1 in 'WebModuleUnit1.pas' {WebModule1: TWebModule},
  TestAttachImpl in 'TestAttachImpl.pas',
  TestAttachIntf in 'TestAttachIntf.pas';

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
