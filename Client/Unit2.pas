unit Unit2;
{--------------------------------------------------------------------------
  测试采用 Indy Web Server 的独立服务器模式的 WebService 附件方式能否正常工作的客户端。
--------------------------------------------------------------------------}
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TestAttachIntf, Soap.InvokeRegistry,
  Soap.Rio, Soap.SOAPHTTPClient, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    HTTPRIO1: THTTPRIO;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  Attach: TSOAPAttachment;
  Intf: ITestAttach;
  Path, Fn: string;
begin
  Path := ExtractFilePath(Application.ExeName);
  Attach := TSOAPAttachment.Create;
  Intf := HTTPRIO1 as ITestAttach;
  try
    Intf.GetAttach(Fn, Attach);
    Attach.SaveToFile(Path + Fn);
  finally
    Intf := nil;
    Attach.Free;
  end;

end;

procedure TForm2.Button2Click(Sender: TObject);
var
  Fn: string;
  Attach: TSOAPAttachment;
  Intf: ITestAttach;
begin
  if OpenDialog1.Execute then
  begin
    Fn := OpenDialog1.FileName;

    Attach := TSOAPAttachment.Create;
    Attach.SetSourceFile(Fn);
    Intf := HTTPRIO1 as ITestAttach;
    try
      Intf.PutAttach(ExtractFileName(Fn), Attach);
    finally
      Intf := nil;
      Attach.Free;
    end;
  end;
end;

end.
