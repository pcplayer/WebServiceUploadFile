{ Invokable interface ITestAttach }

unit TestAttachIntf;
{---------------------------------------------------------------------------------

  测试 TSOAPAttachment 在 Delphi 10.2 底下的独立 WebServer 模式的 WebService 里面是否能正常工作。之前的 DELPHI 版本是不行的。
  测试结果：没问题。测试了两个 JPG 图片，一个 MP3 音乐和一个 MP4 视频，都没问题。

  In WebService platform, we can upload or download file by using TSOAPAttachment.
  This is a demo APP.

   pcplayer@csdn
---------------------------------------------------------------------------------  }
interface

uses Soap.InvokeRegistry, System.Types, Soap.XSBuiltIns;

type

  { Invokable interfaces must derive from IInvokable }
  ITestAttach = interface(IInvokable)
  ['{D7C07AFD-0112-40BA-B6EE-254F3A804B71}']

    { Methods of Invokable interface must not use the default }
    { calling convention; stdcall is recommended }
    procedure GetAttach(var FileName: string; out Attach: TSOAPAttachment); stdcall;  //客户端请求附件
    procedure PutAttach(const FileName: string; Attach: TSOAPAttachment); stdcall;     //客户端上传附件
  end;

implementation

initialization
  { Invokable interfaces must be registered }
  InvRegistry.RegisterInterface(TypeInfo(ITestAttach));

end.
