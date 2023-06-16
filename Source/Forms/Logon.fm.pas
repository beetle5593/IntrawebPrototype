unit Logon.fm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Standard.fm, IWCompButton, IWCompEdit,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompListbox,
  IWCompExtCtrls;

type
  TfmLogon = class(TfmStandard)
    slDatabase: TIWSelect;
    IWEdit1: TIWEdit;
    edPassword: TIWEdit;
    IWButton2: TIWButton;
    btnLogin: TIWButton;
    imgLogo: TIWImage;
    procedure btnLoginAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
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
end;

procedure TfmLogon.btnLoginAsyncClick(Sender: TObject; EventParams:
    TStringList);
begin
  inherited;
  WebApplication.ShowMessage('Login');
end;

procedure TfmLogon.IWButton2AsyncClick(Sender: TObject; EventParams:
    TStringList);
begin
  inherited;
  WebApplication.TerminateAndRedirect('https://www.sql.com.my');
end;

initialization
  TfmLogon.SetAsMainForm;

end.
