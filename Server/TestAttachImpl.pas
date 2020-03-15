{ Invokable implementation File for TTestAttach which implements ITestAttach }

unit TestAttachImpl;

interface

uses Soap.InvokeRegistry, System.Types, System.SysUtils, Soap.XSBuiltIns, TestAttachIntf;

type

  { TTestAttach }
  TTestAttach = class(TInvokableClass, ITestAttach)
  public
    procedure GetAttach(var FileName: string; out Attach: TSOAPAttachment); stdcall;
    procedure PutAttach(const FileName: string; Attach: TSOAPAttachment); stdcall;
  end;

implementation


{ TTestAttach }

procedure TTestAttach.GetAttach(var FileName: string; out Attach: TSOAPAttachment);
var
  Fn: string;
begin
  //下载文件给客户端
  Fn := 'F:\H264Output.mp4';

  Attach := TSOAPAttachment.Create;
  Attach.SetSourceFile(Fn);
  FileName := ExtractFileName(Fn);
end;

procedure TTestAttach.PutAttach(const FileName: string;
  Attach: TSOAPAttachment);
begin
  //客户端上传附件
  Attach.SaveToFile(ExtractFilePath(GetModuleName(0)) + FileName);
end;

initialization
{ Invokable classes must be registered }
   InvRegistry.RegisterInvokableClass(TTestAttach);
end.

