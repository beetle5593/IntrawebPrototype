program IntrawebPrototype;

uses
  FastMM4,
  IWRtlFix,
  IWStart,
  IWJclStackTrace,
  IWJclDebug,
  Standard.fm in '..\Source\Standard\Standard.fm.pas' {fmStandard: TIWAppForm},
  ServerController in '..\Source\Controllers\ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in '..\Source\Controllers\UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  DatamoduleUnit in '..\Source\Datamodules\DatamoduleUnit.pas' {DataModule1: TDataModule},
  Logon.fm in '..\Source\Forms\Logon.fm.pas' {fmLogon: TIWAppForm},
  JSUtils.SweetAlert2 in '..\Source\JSUtils\JSUtils.SweetAlert2.pas';

{$R *.res}

begin
  {$ifdef Debug}ReportMemoryLeaksOnShutdown := True;{$endif}
  TIWStart.Execute(True);
//  TIWStartHSys.Execute(True); // Http.Sys
end.
