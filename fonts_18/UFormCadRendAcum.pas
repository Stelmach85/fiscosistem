unit UFormCadRendAcum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, CRGrid, ExtCtrls, StdCtrls, Buttons, DBCtrls,
  JvExStdCtrls, JvCombobox, JvDBCombobox, Mask, ComCtrls, DB;

type
  TFormCadRendAcum = class(TForm)
    pgc1: TPageControl;
    ts1: TTabSheet;
    pnl1: TPanel;
    lbl13: TLabel;
    cbbCODPGTO: TJvDBComboBox;
    dbedtDTPGTO: TDBEdit;
    dbnvgr1: TDBNavigator;
    btnNovo: TBitBtn;
    btnGravar: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btn1: TBitBtn;
    ts2: TTabSheet;
    lblDados: TLabel;
    lbledtArquivo: TLabeledEdit;
    btnLocalizar: TBitBtn;
    lbledtSeparador: TLabeledEdit;
    crdbgrdPlanoContas: TCRDBGrid;
    btnImportar: TBitBtn;
    btnExcel: TBitBtn;
    btnConsultar: TBitBtn;
    btnExcluir1: TBitBtn;
    btnSair: TBitBtn;
    cbbNRINSCBENEF: TJvDBComboBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl7: TLabel;
    dbedtNATRRA: TDBEdit;
    lbl8: TLabel;
    dbedtQTDMESESRRA: TDBEdit;
    lbl9: TLabel;
    dbedtVLRDESPCUSTAS: TDBEdit;
    lbl10: TLabel;
    dbedtVLRDESPADVOGADOS: TDBEdit;
    lbl16: TLabel;
    dbedtVLRADVOGADO: TDBEdit;
    btnCadastro: TBitBtn;
    lbl27: TLabel;
    cbbTPPROCRRA: TJvDBComboBox;
    lbl28: TLabel;
    cbbCODSUSP: TJvDBComboBox;
    lbl30: TLabel;
    cbbTPINSCADVOGADO: TJvDBComboBox;
    lbl5: TLabel;
    lbl4: TLabel;
    dbedtNRINSCADVOGADO: TDBEdit;
    cbbNRPROCRRA: TJvDBComboBox;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtDTPGTOExit(Sender: TObject);
    procedure validaPeriodo(texto:string);
    procedure btnCadastroClick(Sender: TObject);
    procedure cbbTPINSCADVOGADOChange(Sender: TObject);
    procedure cbbNRPROCRRAExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadRendAcum: TFormCadRendAcum;
  errodata,alterando:Boolean;

implementation

uses UDM, frm_REINF, UUtils, UFormCadBeneficiarios;

{$R *.dfm}

procedure TFormCadRendAcum.btn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCadRendAcum.btnAlterarClick(Sender: TObject);
begin
  DM.unRendimentosCum.Edit;
  HabilitxW(Self, false, 'ALTERAR', DM.unRendimentosCum);
  pnl1.Enabled:= true;
  dbnvgr1.Enabled:=False;
 
  alterando:=True;
  cbbNRINSCBENEF.enabled:= False;
  cbbCODPGTO.enabled:= False;
  dbedtDTPGTO.enabled := False; 
end;

procedure TFormCadRendAcum.btnCadastroClick(Sender: TObject);
begin
  If not  assigned(FormCadBeneficiarios ) then
     Application.CreateForm(TFormCadBeneficiarios ,FormCadBeneficiarios);
  try
    FormCadBeneficiarios .ShowModal;
  finally
    FreeAndNil(FormCadBeneficiarios );
  end;
  DM.unBeneficiarios.Close;
  DM.unBeneficiarios.open;
end;

procedure TFormCadRendAcum.btnCancelarClick(Sender: TObject);
begin
  DM.unRendimentosCum.Cancel;

  HabilitxW(Self, false, 'CANCELAR', DM.unRendimentosCum);
  alterando:=False; 
  dbnvgr1.Enabled:=True;
  pnl1.Enabled:= false;
  cbbNRINSCBENEF.enabled:= True;
  cbbCODPGTO.enabled:= True;
  dbedtDTPGTO.enabled := True; 
end;

procedure TFormCadRendAcum.btnExcluirClick(Sender: TObject);
begin
  try
     If MessageDLG ('Confirma Exclusão do registro ' + '???' +#13+ '', MTConfirmation, [MBYes, MBNo],0)=MRYes then
     Begin
          DM.unRendimentosCum.Delete;
     End;
   except
      ShowMessage('Não existem dados para serem excluídos');
   end;
end;

procedure TFormCadRendAcum.btnGravarClick(Sender: TObject);
begin
  if (cbbNRINSCBENEF.Field.Value='  .   .   /    -  ') or (not ValidaCNPJ(cbbNRINSCBENEF.Field.Value)) then
  begin
    Showmessage('Número de inscrição do Beneficiário inválido! Verifique o número digitado.');
    cbbNRINSCBENEF.SetFocus;
    Exit;
  end;
  if cbbCODPGTO.Text='' then
  begin
    ShowMessage('Informe o Código do Pagamento');
    cbbCODPGTO.SetFocus;
    Exit;
  end;  
  if Trim(dbedtDTPGTO.Text) ='/  /' then
  begin
    ShowMessage('Informe a Data do Pagamento');
    dbedtDTPGTO.SetFocus;
    Exit;
  end;
  if cbbNRPROCRRA.Text='' then
  begin
    ShowMessage('Informe o Número do Processo');
    cbbNRPROCRRA.SetFocus;
    Exit;
  end;
  if cbbTPPROCRRA.Text='' then
  begin
    ShowMessage('Informe o Tipo de Processo');
    cbbTPPROCRRA.SetFocus;
    Exit;
  end;
  if dbedtVLRDESPCUSTAS.Text='' then
  begin
    ShowMessage('Informe o Valor da Despesa com Custas Judiciais');
    dbedtVLRDESPCUSTAS.SetFocus;
    Exit;
  end;
  if dbedtVLRDESPADVOGADOS.Text='' then
  begin
    ShowMessage('Informe o Valor da Despesa com Advogados');
    dbedtVLRDESPADVOGADOS.SetFocus;
    Exit;
  end;
  if cbbTPINSCADVOGADO.Text='' then
  begin
    ShowMessage('Informe o Tipo de Inscrição do Advogado');
    cbbTPINSCADVOGADO.SetFocus;
    Exit;
  end;
  if (cbbTPINSCADVOGADO.Field.Value='1') and ((dbedtNRINSCADVOGADO.Text='  .   .   /    -  ') or (not ValidaCNPJ(dbedtNRINSCADVOGADO.Text))) then
  begin
    ShowMessage('Informe o Número de Inscrição do Advogado ou verifique o número digitado!');
    dbedtNRINSCADVOGADO.SetFocus;
    Exit;
  end;
  if (cbbTPINSCADVOGADO.Field.Value='2') and ((dbedtNRINSCADVOGADO.Text='   .   .   -  ') or (not ValidaCPF(dbedtNRINSCADVOGADO.Text))) then
  begin
    ShowMessage('Informe o Número de Inscrição do Advogado ou verifique o número digitado!');
    dbedtNRINSCADVOGADO.SetFocus;
    Exit;
  end;
  if (dbedtVLRADVOGADO.Text='') then
  begin
    ShowMessage('Informe o Valor da Despesa com Advogado');
    dbedtVLRADVOGADO.SetFocus;
    Exit;
  end;

  if alterando = false then
   begin
       DM.qryUtil.Close;
       DM.qryUtil.SQL.Clear;
       DM.qryUtil.sql.Add(' select * from RENDIMENTOSCUM_18');
       DM.qryUtil.sql.Add(' where Codigo=:cod and NrInscBenef=:nroInsc and codPgto=:codPgto and dtPgto=:dtPgto');
       DM.qryUtil.ParamByName('cod').AsInteger:=Codcurr;
       DM.qryUtil.ParamByName('nroInsc').AsString:= cbbNRINSCBENEF.Field.Value;
       DM.qryUtil.ParamByName('codPgto').AsString:=  cbbCODPGTO.Field.Value;
       DM.qryUtil.ParamByName('dtPgto').AsDate:=  StrToDate(dbedtDTPGTO.Text);
       DM.qryUtil.Open;
       if not DM.qryUtil.Eof then
       begin
         ShowMessage('Já existe um registro cadastrado para este Beneficiário com a mesma Data de Pagamento e mesmo Código de Pagamento');
         Exit;
       end;
   end;
 
  DM.unRendimentosCum.post;
  HabilitxW(Self, false, 'GRAVAR', DM.unRendimentosCum);
  alterando:=False;  
  dbnvgr1.Enabled:=True;
  pnl1.Enabled:= false;
  cbbNRINSCBENEF.enabled:= True;
  cbbCODPGTO.enabled:= True;
  dbedtDTPGTO.enabled := True;
end;

procedure TFormCadRendAcum.btnNovoClick(Sender: TObject);
begin
  DM.unRendimentosCum.Insert;
  DM.unRendimentosCum.FieldByName('Codigo').AsInteger:= Codcurr;

  DM.unRendimentosCum.FieldByName('vlrDespCustas').AsFloat:= 0;
  DM.unRendimentosCum.FieldByName('vlrDespAdvogados').AsFloat:= 0;
  DM.unRendimentosCum.FieldByName('vlrAdvogado').AsFloat:= 0;
  DM.unRendimentosCum.FieldByName('codPgto').AsString:= '1889';

  pnl1.Enabled:= true;
  HabilitxW(Self, false, 'INSERIR', NIL);
  dbnvgr1.Enabled:=False;
  cbbNRINSCBENEF.SetFocus;
end;

procedure TFormCadRendAcum.cbbNRPROCRRAExit(Sender: TObject);
begin
  if cbbNRPROCRRA.ListSettings.DataSource.DataSet.Locate(('NRPROC'),VarArrayOf([cbbNRPROCRRA.Field.Value]),[loCaseInsensitive]) then
  Begin
    cbbTPPROCRRA.Field.Value := cbbNRPROCRRA.ListSettings.DataSource.DataSet.FieldByName('TPPROC').AsVariant;
    cbbCODSUSP.Field.Value := cbbNRPROCRRA.ListSettings.DataSource.DataSet.FieldByName('CODSUSP').AsVariant;
  End;
end;

procedure TFormCadRendAcum.cbbTPINSCADVOGADOChange(Sender: TObject);
begin
  if cbbTPINSCADVOGADO.Text= '1 - CNPJ' then
  begin
    DM.unRendimentosCumNRINSCADVOGADO.EditMask:='99.999.999/9999-99;1; ';
    cbbTPINSCADVOGADO.ItemIndex:=0;
  end
  else 
  begin  
    DM.unRendimentosCumNRINSCADVOGADO.EditMask:='999.999.999-99;1; ' ; 
    cbbTPINSCADVOGADO.ItemIndex:=1;
  end;
end;

procedure TFormCadRendAcum.dbedtDTPGTOExit(Sender: TObject);
begin
  if Trim(dbedtDTPGTO.text) <> '-' then
    validaPeriodo(Copy(dbedtDTPGTO.text,4,2));
 if errodata then
   dbedtDTPGTO.SetFocus;
end;

procedure TFormCadRendAcum.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.unREF_CODPAGAMENTO.Close;
  DM.unBeneficiarios.Close;
  DM.unRendimentosCum.Filtered:=False;
  DM.unRendimentosCum.Close;
  DM.unProcessos.Close;
end;

procedure TFormCadRendAcum.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //verifica se a tecla pressionada é a tecla ENTER, conhecida como #13 
  If key = #13 then Begin 
    //se for, passa o foco para o próximo campo, zerando o valor da variável Key 
    Key:= #0;
    Perform(Wm_NextDlgCtl,0,0); 
  end;
end;

procedure TFormCadRendAcum.FormShow(Sender: TObject);
begin
  DesabilitaCampos(self);
  DM.unREF_CODPAGAMENTO.open;
  DM.unBeneficiarios.open;

  DM.unProcessos.Close;
  DM.unProcessos.FilterSQL:='Codigo= '+ IntToStr(Codcurr); 
  DM.unProcessos.Filtered:=True;
  DM.unProcessos.Open;  

  DM.unRendimentosCum.Close;
  DM.unRendimentosCum.FilterSQL:='Codigo='+ IntToStr(Codcurr);
  DM.unRendimentosCum.Filtered:=True;
  DM.unRendimentosCum.Open;

  HabilitxW(Self, false, 'ABERTURA', DM.unRendimentosCum);
  pgc1.ActivePage:=ts1; 
end;

procedure TFormCadRendAcum.validaPeriodo(texto:string);
begin
   if not ((texto='01') or (texto='02') or (texto='03') or (texto='04') or (texto='05') 
      or (texto='06')or (texto='07') or (texto='08') or (texto='09') or (texto='10')
      or (texto='11') or (texto='12') or (texto='  ') )then
   begin
     ShowMessage('Mês informado esta errado');
     errodata:=true;
   end
   else
     errodata:=false;  
end;

end.
