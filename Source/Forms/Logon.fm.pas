unit Logon.fm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Standard.fm, IWCompButton, IWCompEdit,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompListbox,
  IWCompExtCtrls, IWVCLComponent, IWBaseLayoutComponent, IWBaseContainerLayout,
  IWContainerLayout, IWTemplateProcessorHTML, IWBaseRenderContext, IWHTMLTag;

type
  TfmLogon = class(TfmStandard)
    slDatabase: TIWSelect;
    edUser: TIWEdit;
    edPassword: TIWEdit;
    btnClose: TIWButton;
    btnLogon: TIWButton;
    imgLogo: TIWImage;
    IWTemplateProcessorHTML1: TIWTemplateProcessorHTML;
    procedure btnLogonAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure btnCloseAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure edPasswordHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edUserHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure IWTemplateProcessorHTML1UnknownTag(const AName: string; var VValue:
        string);
  private
    { Private declarations }
  public
    procedure AfterConstruction; override;
    { Public declarations }
  end;

var
  fmLogon: TfmLogon;

implementation

{$R *.dfm}

procedure TfmLogon.AfterConstruction;
begin
  inherited;
  imgLogo.Picture.LoadFromFile('wwwroot\images\sqlacc.jpg');
end;

procedure TfmLogon.btnLogonAsyncClick(Sender: TObject; EventParams:
    TStringList);
begin
  inherited;
  WebApplication.ShowMessage('Login');
end;

procedure TfmLogon.btnCloseAsyncClick(Sender: TObject; EventParams:
    TStringList);
begin
  inherited;
  WebApplication.TerminateAndRedirect('https://www.sql.com.my');
end;

// Add custom attribute to element
procedure TfmLogon.edPasswordHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
begin
  inherited;
  ATag.Add('placeholder="**********"');
end;

procedure TfmLogon.edUserHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
begin
  inherited;
  ATag.Add('placeholder="Username"');
end;

procedure TfmLogon.IWTemplateProcessorHTML1UnknownTag(const AName: string; var
    VValue: string);
begin
  inherited;
  OutputDebugString(PChar('TP nknown Tag: ' + AName + ', Value: ' + VValue));
  if AName.Equals('CompanyName') then VValue := 'E Stream Software';
end;

initialization
  TfmLogon.SetAsMainForm;

end.
