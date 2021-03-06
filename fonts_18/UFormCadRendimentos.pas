unit UFormCadRendimentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, CRGrid, ExtCtrls, StdCtrls, Buttons, DBCtrls,
  JvExStdCtrls, JvCombobox, JvDBCombobox, Mask, ComCtrls;

type
  TFormCadRendimentos = class(TForm)
    pgc1: TPageControl;
    ts1: TTabSheet;
    pnl1: TPanel;
    lbl5: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    cbbINDSUSPEXIG: TJvDBComboBox;
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
    lbl3: TLabel;
    dbedtVLRRENDTRIBUTAVEL: TDBEdit;
    lbl6: TLabel;
    dbedtVLRIRRF: TDBEdit;
    lbl7: TLabel;
    dbedtVLRDEDPREVOFIC: TDBEdit;
    lbl8: TLabel;
    dbedtVLRDEDPREVPRIV: TDBEdit;
    lbl9: TLabel;
    dbedtVLRDEDFAPI: TDBEdit;
    lbl10: TLabel;
    dbedtVLRDEDFUNPRESP: TDBEdit;
    lbl11: TLabel;
    dbedtVLRDEDPENSAO: TDBEdit;
    lbl14: TLabel;
    dbedtVLRCOMPANOCALEND: TDBEdit;
    lbl15: TLabel;
    dbedtVLRCOMPANOANT: TDBEdit;
    lbl16: TLabel;
    dbedtVLRDEDDEPEND: TDBEdit;
    lbl17: TLabel;
    dbedtVLRISENTO: TDBEdit;
    lbl18: TLabel;
    dbedtDESCRENDIMENTO: TDBEdit;
    lbl19: TLabel;
    cbbTPISENSAO: TJvDBComboBox;
    btnCadastro: TBitBtn;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadRendimentos: TFormCadRendimentos;
  errodata,alterando:Boolean;

implementation

uses UDM, frm_REINF, UUtils, UFormCadBeneficiarios;

{$R *.dfm}

procedure TFormCadRendimentos.btn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCadRendimentos.btnAlterarClick(Sender: TObject);
begin
  DM.unRendimentos.Edit;
  HabilitxW(Self, false, 'ALTERAR', DM.unRendimentos);
  pnl1.Enabled:= true;
  dbnvgr1.Enabled:=False;
 
  alterando:=True;
  cbbNRINSCBENEF.enabled:= False;
  cbbCODPGTO.enabled:= False;
  dbedtDTPGTO.enabled := False; 
end;

procedure TFormCadRendimentos.btnCadastroClick(Sender: TObject);
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

procedure TFormCadRendimentos.btnCancelarClick(Sender: TObject);
begin
  DM.unRendimentos.Cancel;

  HabilitxW(Self, false, 'CANCELAR', DM.unRendimentos);
  alterando:=False; 
  dbnvgr1.Enabled:=True;
  pnl1.Enabled:= false;
  cbbNRINSCBENEF.enabled:= True;
  cbbCODPGTO.enabled:= True;
  dbedtDTPGTO.enabled := True; 
end;

procedure TFormCadRendimentos.btnExcluirClick(Sender: TObject);
begin
  try
     If MessageDLG ('Confirma Exclus�o do registro ' + '???' +#13+ '', MTConfirmation, [MBYes, MBNo],0)=MRYes then
     Begin
          DM.unRendimentos.Delete;
     End;
   except
      ShowMessage('N�o existem dados para serem exclu�dos');
   end;
end;

procedure TFormCadRendimentos.btnGravarClick(Sender: TObject);
begin
  if (cbbNRINSCBENEF.Field.Value='  .   .   /    -  ') or (not ValidaCNPJ(cbbNRINSCBENEF.Field.Value)) then
  begin
    Showmessage('N�mero de inscri��o do Benefici�rio inv�lido! Verifique o n�mero digitado.');
    cbbNRINSCBENEF.SetFocus;
    Exit;
  end;
  if cbbCODPGTO.Text='' then
  begin
    ShowMessage('Informe o C�digo do Pagamento');
    cbbCODPGTO.SetFocus;
    Exit;
  end;  
  if Trim(dbedtDTPGTO.Text) ='/  /' then
  begin
    ShowMessage('Informe a Data do Pagamento');
    dbedtDTPGTO.SetFocus;
    Exit;
  end;
  if cbbINDSUSPEXIG.Text='' then
  begin
    ShowMessage('Informe o Indicativo de Exibilidade Suspensa');
    cbbINDSUSPEXIG.SetFocus;
    Exit;
  end;
  if dbedtVLRRENDTRIBUTAVEL.Text='' then
  begin
    ShowMessage('Informe o Valor do Rendimento Tribut�vel');
    dbedtVLRRENDTRIBUTAVEL.SetFocus;
    Exit;
  end;
  if dbedtVLRIRRF.Text='' then
  begin
    ShowMessage('Informe o Valor do Imposto Retido na Fonte');
    dbedtVLRIRRF.SetFocus;
    Exit;
  end;
  if dbedtVLRDEDPREVOFIC.Text='' then
  begin
    ShowMessage('Informe o Valor da Dedu��o da Previd�ncia Oficial');
    dbedtVLRDEDPREVOFIC.SetFocus;
    Exit;
  end;
  if dbedtVLRDEDPREVPRIV.Text='' then
  begin
    ShowMessage('Informe o Valor da Dedu��o da Previd�ncia Privada');
    dbedtVLRDEDPREVPRIV.SetFocus;
    Exit;
  end;
  if dbedtVLRDEDFAPI.Text='' then
  begin
    ShowMessage('Informe o Valor da Dedu��o da FAPI');
    dbedtVLRDEDFAPI.SetFocus;
    Exit;
  end;
  if dbedtVLRDEDFUNPRESP.Text='' then
  begin
    ShowMessage('Informe o Valor da Dedu��o da FUNPRESP');
    dbedtVLRDEDFUNPRESP.SetFocus;
    Exit;
  end;
  if dbedtVLRDEDPENSAO.Text='' then
  begin
    ShowMessage('Informe o Valor da Dedu��o da Pens�o Aliment�cia');
    dbedtVLRDEDPENSAO.SetFocus;
    Exit;
  end;
  if dbedtVLRDEDDEPEND.Text='' then
  begin
    ShowMessage('Informe o Valor da Dedu��o dos Dependentes');
    dbedtVLRDEDDEPEND.SetFocus;
    Exit;
  end;
  if (dbedtVLRISENTO.Text <>'0,00') and (cbbTPISENSAO.Text='') then
  begin
    ShowMessage('Informe o Tipo de Isen��o');
    cbbTPISENSAO.SetFocus;
    Exit;
  end;

  if alterando = false then
   begin
       DM.qryUtil.Close;
       DM.qryUtil.SQL.Clear;
       DM.qryUtil.sql.Add(' select * from RENDIMENTOS_18');
       DM.qryUtil.sql.Add(' where Codigo=:cod and NrInscBenef=:nroInsc and codPgto=:codPgto and dtPgto=:dtPgto');
       DM.qryUtil.ParamByName('cod').AsInteger:=Codcurr;
       DM.qryUtil.ParamByName('nroInsc').AsString:= cbbNRINSCBENEF.Field.Value;
       DM.qryUtil.ParamByName('codPgto').AsString:=  cbbCODPGTO.Field.Value;
       DM.qryUtil.ParamByName('dtPgto').AsDate:=  StrToDate(dbedtDTPGTO.Text);
       DM.qryUtil.Open;
       if not DM.qryUtil.Eof then
       begin
         ShowMessage('J� existe um registro cadastrado para este Benefici�rio com a mesma Data de Pagamento e mesmo C�digo de Pagamento');
         Exit;
       end;
   end;
 
  DM.unRendimentos.post;
  HabilitxW(Self, false, 'GRAVAR', DM.unRendimentos);
  alterando:=False;  
  dbnvgr1.Enabled:=True;
  pnl1.Enabled:= false;
  cbbNRINSCBENEF.enabled:= True;
  cbbCODPGTO.enabled:= True;
  dbedtDTPGTO.enabled := True;
end;

procedure TFormCadRendimentos.btnNovoClick(Sender: TObject);
begin
  DM.unRendimentos.Insert;
  DM.unRendimentos.FieldByName('Codigo').AsInteger:= Codcurr;

  DM.unRendimentos.FieldByName('VLRRENDTRIBUTAVEL').AsFloat:= 0;
  DM.unRendimentos.FieldByName('vlrIRRF').AsFloat:= 0;
  DM.unRendimentos.FieldByName('vlrDedPrevOfic').AsFloat:= 0;
  DM.unRendimentos.FieldByName('vlrDedPrevPriv').AsFloat:= 0;
  DM.unRendimentos.FieldByName('vlrDedFapi').AsFloat:= 0;
  DM.unRendimentos.FieldByName('vlrDedFunpresp').AsFloat:= 0;
  DM.unRendimentos.FieldByName('vlrDedPensao').AsFloat:= 0;
  DM.unRendimentos.FieldByName('vlrCompAnoCalend').AsFloat:= 0;
  DM.unRendimentos.FieldByName('vlrCompAnoAnt').AsFloat:= 0;
  DM.unRendimentos.FieldByName('vlrDedDepend').AsFloat:= 0;
  DM.unRendimentos.FieldByName('vlrIsento').AsFloat:= 0;

  pnl1.Enabled:= true;
  HabilitxW(Self, false, 'INSERIR', NIL);
  dbnvgr1.Enabled:=False;
  cbbNRINSCBENEF.SetFocus;
end;

procedure TFormCadRendimentos.dbedtDTPGTOExit(Sender: TObject);
begin
  if Trim(dbedtDTPGTO.text) <> '-' then
    validaPeriodo(Copy(dbedtDTPGTO.text,4,2));
 if errodata then
   dbedtDTPGTO.SetFocus;
end;

procedure TFormCadRendimentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.unREF_CODPAGAMENTO.Close;
  DM.unBeneficiarios.Close;
  DM.unRendimentos.Filtered:=False;
  DM.unRendimentos.Close;
end;

procedure TFormCadRendimentos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //verifica se a tecla pressionada � a tecla ENTER, conhecida como #13 
  If key = #13 then Begin 
    //se for, passa o foco para o pr�ximo campo, zerando o valor da vari�vel Key 
    Key:= #0;
    Perform(Wm_NextDlgCtl,0,0); 
  end;
end;

procedure TFormCadRendimentos.FormShow(Sender: TObject);
begin
  DesabilitaCampos(self);
  DM.unREF_CODPAGAMENTO.open;
  DM.unBeneficiarios.open;

  DM.unRendimentos.Close;
  DM.unRendimentos.FilterSQL:='Codigo='+ IntToStr(Codcurr);
  DM.unRendimentos.Filtered:=True;
  DM.unRendimentos.Open;

  HabilitxW(Self, false, 'ABERTURA', DM.unRendimentos);
  pgc1.ActivePage:=ts1; 
end;

procedure TFormCadRendimentos.validaPeriodo(texto:string);
begin
   if not ((texto='01') or (texto='02') or (texto='03') or (texto='04') or (texto='05') 
      or (texto='06')or (texto='07') or (texto='08') or (texto='09') or (texto='10')
      or (texto='11') or (texto='12') or (texto='  ') )then
   begin
     ShowMessage('M�s informado esta errado');
     errodata:=true;
   end
   else
     errodata:=false;  
end;

end.
