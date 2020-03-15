object Form2: TForm2
  Left = 0
  Top = 0
  Caption = #27979#35797' WebService SoapAttachment '#30340#23458#25143#31471
  ClientHeight = 300
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 104
    Top = 208
    Width = 75
    Height = 25
    Caption = #19979#36733
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 320
    Top = 208
    Width = 75
    Height = 25
    Caption = #19978#20256
    TabOrder = 1
    OnClick = Button2Click
  end
  object HTTPRIO1: THTTPRIO
    URL = 'http://localhost:8080/soap'
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    HTTPWebNode.WebNodeOptions = []
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 160
    Top = 56
  end
  object OpenDialog1: TOpenDialog
    Left = 384
    Top = 88
  end
end
