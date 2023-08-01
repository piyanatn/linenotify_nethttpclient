object Form9: TForm9
  Left = 0
  Top = 0
  Caption = 'Notify'
  ClientHeight = 133
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 32
    Width = 29
    Height = 13
    Caption = 'Token'
  end
  object Label2: TLabel
    Left = 48
    Top = 64
    Width = 42
    Height = 13
    Caption = 'Message'
  end
  object Label3: TLabel
    Left = 48
    Top = 91
    Width = 99
    Height = 13
    Caption = 'Thumbnail 240 X 240'
  end
  object TxtToken: TEdit
    Left = 168
    Top = 29
    Width = 417
    Height = 21
    TabOrder = 0
    Text = 'eZU3kc7SYFrHY1Olv9AmiSYqPXVEi8gGUoDdlpAR6AQ'
  end
  object TxtMessage: TEdit
    Left = 168
    Top = 61
    Width = 345
    Height = 21
    TabOrder = 1
    Text = #3626#3623#3633#3626#3604#3637' Delphi XE10.3 NetClient'
  end
  object BtnSend: TButton
    Left = 519
    Top = 56
    Width = 75
    Height = 33
    Caption = 'Send'
    TabOrder = 2
    OnClick = BtnSendClick
  end
  object ImagePath: TEdit
    Left = 168
    Top = 88
    Width = 345
    Height = 21
    TabOrder = 3
    Text = 'C:\Users\farmo\Pictures\Cat03.jpg'
  end
  object NetHTTPClient1: TNetHTTPClient
    Asynchronous = False
    ConnectionTimeout = 60000
    ResponseTimeout = 60000
    HandleRedirects = True
    AllowCookies = True
    UserAgent = 'Embarcadero URI Client/1.0'
    Left = 376
    Top = 24
  end
  object NetHTTPRequest1: TNetHTTPRequest
    Asynchronous = False
    ConnectionTimeout = 60000
    ResponseTimeout = 60000
    Left = 344
    Top = 24
  end
end
