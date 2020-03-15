program test;

uses
  Vcl.Forms,
  Unit2 in 'Unit2.pas' {Form2},
  TestAttachIntf in '..\Server\TestAttachIntf.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
