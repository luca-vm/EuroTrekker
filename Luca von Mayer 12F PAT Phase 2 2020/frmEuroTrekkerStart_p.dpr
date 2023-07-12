program frmEuroTrekkerStart_p;

uses
  Forms,
  SysUtils,
  frmEuroTrekkerStart_u in 'frmEuroTrekkerStart_u.pas' {frmEuroTrekkerStart},
  frmSplash_u in 'frmSplash_u.pas' {frmSplash},
  frmEuroTrekkerMain_u in 'frmEuroTrekkerMain_u.pas' {frmEuroTrekkerMain},
  dmEuroTrekker_u in 'dmEuroTrekker_u.pas' {dmEuroTrekker: TDataModule},
  clsBusinessAccess_u in 'clsBusinessAccess_u.pas';

{$R *.res}

begin
  Application.Initialize;
  frmSplash := TfrmSplash.Create(Application);
  frmSplash.Show();
  frmSplash.Refresh();
  Sleep(1500);
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmEuroTrekkerStart, frmEuroTrekkerStart);
  Application.CreateForm(TfrmEuroTrekkerMain, frmEuroTrekkerMain);
  Application.CreateForm(TdmEuroTrekker, dmEuroTrekker);
  frmSplash.Free;
  Application.Run;
end.
