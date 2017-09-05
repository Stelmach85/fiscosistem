program REINF18;

uses
  Forms,
  frm_REINF in 'frm_REINF.pas' {REINFForm},
  UDM in 'UDM.pas' {DM: TDataModule},
  UFormSelecionaEmpresa in 'UFormSelecionaEmpresa.pas' {FormSelecionaEmpresa},
  UDMQuerysUteis in 'UDMQuerysUteis.pas' {DMQuerysUteis: TDataModule},
  Kill in 'Kill.pas',
  UVerificaSistema in 'UVerificaSistema.pas',
  UDMScript in 'UDMScript.pas' {DMScript: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TREINFForm, REINFForm);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDMQuerysUteis, DMQuerysUteis);
  Application.CreateForm(TDMScript, DMScript);
  Application.Run;
end.
