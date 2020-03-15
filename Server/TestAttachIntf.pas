{ Invokable interface ITestAttach }

unit TestAttachIntf;
{---------------------------------------------------------------------------------

  ���� TSOAPAttachment �� Delphi 10.2 ���µĶ��� WebServer ģʽ�� WebService �����Ƿ�������������֮ǰ�� DELPHI �汾�ǲ��еġ�
  ���Խ����û���⡣���������� JPG ͼƬ��һ�� MP3 ���ֺ�һ�� MP4 ��Ƶ����û���⡣

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
    procedure GetAttach(var FileName: string; out Attach: TSOAPAttachment); stdcall;  //�ͻ������󸽼�
    procedure PutAttach(const FileName: string; Attach: TSOAPAttachment); stdcall;     //�ͻ����ϴ�����
  end;

implementation

initialization
  { Invokable interfaces must be registered }
  InvRegistry.RegisterInterface(TypeInfo(ITestAttach));

end.