unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Net.URLClient,
  System.Net.HttpClient, System.Net.HttpClientComponent, Vcl.StdCtrls;

type
  TForm9 = class(TForm)
    NetHTTPClient1: TNetHTTPClient;
    NetHTTPRequest1: TNetHTTPRequest;
    TxtToken: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    TxtMessage: TEdit;
    BtnSend: TButton;
    procedure LineSendCustomNotify(msg: RawByteString;token: String);
    procedure BtnSendClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}



{ TForm9 }

procedure TForm9.BtnSendClick(Sender: TObject);
begin
   LineSendCustomNotify(TxtMessage.Text,TxtToken.Text);
end;

procedure TForm9.LineSendCustomNotify(msg: RawByteString; token: String);
Var

  Params : TStringList;
begin

              {
            wMsg := 'message='+msg;
                   StrStreem := TStringStream.Create(wMsg, TEncoding.UTF8);
       }

    Params := TStringList.Create;
    Params.Add('message='+msg);

    token := TxtToken.Text;
    NetHTTPClient1.ContentType := 'application/x-www-form-urlencoded';
    NetHTTPRequest1.Client := NetHTTPClient1;
    NetHTTPRequest1.MethodString := 'POST';
    NetHTTPRequest1.CustomHeaders['Authorization'] := 'Bearer '+token;
    NetHTTPRequest1.Post('https://notify-api.line.me/api/notify', Params);




end;

end.
