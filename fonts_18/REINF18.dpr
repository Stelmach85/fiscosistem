program REINF18;

uses
  Forms,
  UDM in 'UDM.pas' {DM: TDataModule},
  UDMScript in 'UDMScript.pas' {DMScript: TDataModule},
  frm_REINF in 'frm_REINF.pas' {REINFForm},
  UVerificaSistema in 'UVerificaSistema.pas',
  UFormSelecionaEmpresa in 'UFormSelecionaEmpresa.pas' {FormSelecionaEmpresa},
  UDMQuerysUteis in 'UDMQuerysUteis.pas' {DMQuerysUteis: TDataModule},
  Kill in 'Kill.pas',
  UFormContribuintes in 'UFormContribuintes.pas' {FormContribuintes},
  UFormCadProcessos in 'UFormCadProcessos.pas' {FormCadProcessos},
  UFormConexao in 'UFormConexao.pas' {FormConexao},
  UFormParametros in 'UFormParametros.pas' {FormParametros},
  Wait in 'Wait.pas' {WaitForm},
  UFormCadBeneficiarios in 'UFormCadBeneficiarios.pas' {FormCadBeneficiarios},
  UFormCadComProdRural in 'UFormCadComProdRural.pas' {FormCadComProdRural},
  UFormConsultaAtivEcon_Ref in 'UFormConsultaAtivEcon_Ref.pas' {FormConsultaAtivEcon_Ref},
  UFormCadRetCP_Servicos in 'UFormCadRetCP_Servicos.pas' {FormCadRetCP_Servicos},
  UDMCadCPRB in 'UDMCadCPRB.pas' {DMCadCPRB: TDataModule},
  UUtils in 'UUtils.pas',
  UFormCadCPRB in 'UFormCadCPRB.pas' {FormCadCPRB},
  UFormPeriodo in 'UFormPeriodo.pas' {FormPeriodo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDMScript, DMScript);
  Application.CreateForm(TDMQuerysUteis, DMQuerysUteis);
  Application.CreateForm(TDMCadCPRB, DMCadCPRB);
  Application.CreateForm(TREINFForm, REINFForm);
  Application.Run;
end.
