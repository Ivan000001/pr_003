program tp_reports;

uses
  Forms,
  Main in 'Main.pas' {f_main},
  DM in 'DM.pas' {DM1: TDataModule},
  F004 in 'F004.pas' {F004_};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tf_main, f_main);
  Application.CreateForm(TDM1, DM1);
  Application.CreateForm(TF004_, F004_);
  Application.Run;
end.
