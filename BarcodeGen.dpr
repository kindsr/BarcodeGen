program BarcodeGen;

uses
  Vcl.Forms,
  FMain in 'FMain.pas' {MainForm},
  UDM in 'UDM.pas' {DM: TDataModule},
  UQReport in 'UQReport.pas' {UQRep: TUQRep};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
