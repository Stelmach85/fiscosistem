unit UFormMensageria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, pcnConversaoReinf,
  Controls, Forms, Dialogs, StdCtrls, ExtCtrls, ComCtrls, ACBrReinf, ACBrReinfWebServices,
  ACBrReinfEventos, ACBrBase, ACBrDFe, ACBrNFe; //, RxPlacemnt;

type
  TFormMensageria = class(TForm)
    Label5: TLabel;
    GroupBox4: TGroupBox;
    btnGerar: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    chk1000: TCheckBox;
    chk2010: TCheckBox;
    chk2020: TCheckBox;
    chk2098: TCheckBox;
    chk1070: TCheckBox;
    rdgOperacao: TRadioGroup;
    rdgGrupo: TRadioGroup;
    TabSheet2: TTabSheet;
    mmoRet: TMemo;
    TabSheet3: TTabSheet;
    Memo1: TMemo;
    TabSheet4: TTabSheet;
    Memo2: TMemo;
//    FormStorage1: TFormStorage;
    chk2099: TCheckBox;
    chk9000: TCheckBox;
    ChkRetificadora: TCheckBox;
    chk2060: TCheckBox;
    chk2070: TCheckBox;
    Button1: TButton;
    btnEnviar: TButton;
    edtRecibo: TEdit;
    grp1: TGroupBox;
    lbl2: TLabel;
    chkClear: TCheckBox;
    btn1: TButton;
    grp2: TGroupBox;
    lbl1: TLabel;
    cbbEvento: TComboBox;
    grp3: TGroupBox;
    lbl4: TLabel;
    cbbperiodo: TComboBox;
    chk2050: TCheckBox;
    btn2: TButton;
    lblAmbiente: TLabel;
    grp4: TGroupBox;
    lbl5: TLabel;
    edtProtocolo: TEdit;
    procedure btnGerarClick(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FACBrReinf: TACBrReinf;
    procedure PreencherXMLEventos;
    procedure LimparDocsPasta;
    procedure Configurar(AACBrReinf: TACBrReinf);
    function GetTipoOperacao: TTypeOperacao;
    {Eventos}
    procedure GerarReinf1000;
    procedure GerarReinf1070;
    procedure GerarReinf2010;
    procedure GerarReinf2020;
    procedure GerarReinf2050;
    procedure GerarReinf2060;
    procedure GerarReinf2070;
    procedure GerarReinf2099;
    procedure GerarReinf2098;
    procedure GerarReinf9000;
  public
    procedure DepoisDeEnviar(const Axml: string);
    procedure AntesDeEnviar(const Axml: string);
  end;

var
  FormMensageria: TFormMensageria;

implementation

{$R *.dfm}

uses ACBrDFeSSL, pcnConversao, ShellAPI, ACBrReinfClasses, Rtti, ACBrReinfR1070, ACBrReinfR1000,
  ACBrReinfR2010, ACBrReinfR2020, ACBrReinfR2099, ACBrReinfR2098, ACBrReinfR9000,
  frm_REINF, UDM, UDMREINF;

procedure TFormMensageria.AntesDeEnviar(const Axml: string);
begin
  Memo1.Lines.Text := Axml;
end;

Function TiraPontos(valor: string) : string;
Begin
  while pos('.',valor) <> 0 do
    Delete(valor,pos('.',valor),1);
 { while pos(',',valor) <> 0 do
    Delete(valor,pos(',',valor),1);  }
  while pos('/',valor) <> 0 do
    Delete(valor,pos('/',valor),1);
  while pos('-',valor) <> 0 do
    Delete(valor,pos('-',valor),1);
  while pos(')',valor) <> 0 do
    Delete(valor,pos(')',valor),1);
  while pos('(',valor) <> 0 do
    Delete(valor,pos('(',valor),1);
  result := valor;
end;


procedure TFormMensageria.btn1Click(Sender: TObject);
begin
 Close;
end;

procedure TFormMensageria.btnEnviarClick(Sender: TObject);
var
  Evento: TEvento;
  Ocorrencia: TOcorrencia;
begin
  mmoRet.Clear;
  FACBrReinf := TACBrReinf.Create(nil);
  FACBrReinf.OnBeforeEnviar := AntesDeEnviar;
  FACBrReinf.OnAfterEnviar := DepoisDeEnviar;
  try
    Configurar(FACBrReinf);
    PreencherXMLEventos;
    if FACBrReinf.Enviar then
    begin
      mmoRet.Lines.Add('ideTransmissor: '+ FACBrReinf.WebServices.RetEventos.IdeTransmissor.IdTransmissor);
      mmoRet.Lines.Add('cdStatus: '+ IntToStr(FACBrReinf.WebServices.RetEventos.Status.cdStatus));
      mmoRet.Lines.Add('retornoEventos');
      for Evento in FACBrReinf.WebServices.RetEventos.Eventos do
      begin
        mmoRet.Lines.Add('Evento Id: ' + Evento.Id);
        mmoRet.Lines.Add('*ideContrib ');
        mmoRet.Lines.Add(' ideContrib: ' + Inttostr(ord(Evento.ideContrib.TpInsc)));
        mmoRet.Lines.Add(' NrInsc: ' + Evento.ideContrib.NrInsc);
        mmoRet.Lines.Add('*dadosRecepcaoEvento ');
        mmoRet.Lines.Add(' dhProcessamento ' + Datetostr(Evento.dadosRecepcaoEvento.dhProcessamento));
        mmoRet.Lines.Add(' tipoEvento ' + Evento.dadosRecepcaoEvento.tipoEvento);
        mmoRet.Lines.Add(' IdEvento ' + Evento.dadosRecepcaoEvento.IDEvento);
        mmoRet.Lines.Add(' Hash ' + Evento.dadosRecepcaoEvento.Hash);
        edtProtocolo.Text := Evento.dadosRecepcaoEvento.Hash;
        mmoRet.Lines.Add('*Status ');
        mmoRet.Lines.Add(' cdRetorno ' + Inttostr(Evento.Status.cdRetorno));
        mmoRet.Lines.Add(' descRetorno ' + Evento.Status.descRetorno);
        if Evento.Status.cdRetorno = 0 then {Sucesso}
        begin
          mmoRet.Lines.Add('*dadosReciboEntrega');
          mmoRet.Lines.Add(' numeroRecibo ' + Evento.dadosReciboEntrega.numeroRecibo);
        end;
        mmoRet.Lines.Add(' **Ocorrencias');
        for Ocorrencia in Evento.Status.Ocorrencias do
        begin
          mmoRet.Lines.Add('   codigo: ' + Ocorrencia.codigo);
          mmoRet.Lines.Add('   descricao: ' + Ocorrencia.descricao);
          mmoRet.Lines.Add('   tipo: ' + Inttostr(Ocorrencia.tipo));
          mmoRet.Lines.Add('   localizacaoErroAviso: ' + Ocorrencia.localizacaoErroAviso);
        end;
      end;
      ShowMessage('Arquivos Enviar com Sucesso. Consulte o Retorno.');
    end
    else
      ShowMessage('Falha no Retorno do Envio');
  finally
    FACBrReinf.Free;
  end;
end;

procedure TFormMensageria.btnGerarClick(Sender: TObject);
var
  Evento: TEvento;
  Ocorrencia: TOcorrencia;
begin
  FACBrReinf := TACBrReinf.Create(nil);
  FACBrReinf.OnBeforeEnviar := AntesDeEnviar;
  FACBrReinf.OnAfterEnviar := DepoisDeEnviar;
  try
    Configurar(FACBrReinf);
    PreencherXMLEventos;
    if FACBrReinf.Gerar then
    begin
       showmessage('Arquivos Gerados com Suscesso');
    end
    else
      ShowMessage('Falha');
  finally
    FACBrReinf.Free;
  end;
end;

procedure TFormMensageria.Configurar(AACBrReinf: TACBrReinf);
begin
  {IdeContri}
  // aqui deve pegar o cnpj do cadstro de empresa
  FACBrReinf.ideContri.TpInsc := tiCNPJ;
  FACBrReinf.ideContri.NrInsc := '21117450000139'; 
  {IdeEvento}
  // pegar do cadastro de parametros
{  if tipo de ambiente = 1 then   // produção
     FACBrReinf.IdeEvento.TpAmb:= taProducao
  else   
  if tipo de ambiente = 2 then   // pré-produção restrita com dados reais
     FACBrReinf.IdeEvento.TpAmb := taProducaoRestritaDadosReais
  else   
  if tipo de ambiente = 3 then   // pré-produção restrita com dados ficticios
     FACBrReinf.IdeEvento.TpAmb := taProducaoRestritaDadosFicticios;}
     
  FACBrReinf.IdeEvento.TpAmb := taProducaoRestritaDadosFicticios;
  FACBrReinf.IdeEvento.ProcEmi := peAplicEmpregador;
  FACBrReinf.IdeEvento.VerProc := '1.0';

  // Configurações dos Arquivos
  AACBrReinf.Configuracoes.Arquivos.PathSchemas:=IncludeTrailingPathDelimiter(ExtractFileDir(ParamStr(0))) + 'Schemas';
  // salvar arquivos em pastas separadas por cnpj do certificado
  AACBrReinf.Configuracoes.Arquivos.SepararPorCNPJ:=True;
  // salvar arquivos em pastas separadas 
  AACBrReinf.Configuracoes.Arquivos.Salvar:=True;
  // criar pastas mensalmente
  AACBrReinf.Configuracoes.Arquivos.SepararPorMes:=True;
  // adicional literal no nome das pastas
  AACBrReinf.Configuracoes.Arquivos.AdicionarLiteral:=False;

  // Configurações do WebService
  AACBrReinf.Configuracoes.WebServices.UF := 'RS';
{  if tipo de ambiente = 1 then   // produção
     AACBrReinf.Configuracoes.WebServices.Ambiente:=taProducao
  else   
     AACBrReinf.Configuracoes.WebServices.Ambiente:=taHomologacao;
 }
  AACBrReinf.Configuracoes.WebServices.Ambiente := taHomologacao;
  // Retorno de Envio
  AACBrReinf.Configuracoes.WebServices.AguardarConsultaRet      := 5000;  // tempo padrão que vai aguardar para consultar após enviar 
  AACBrReinf.Configuracoes.WebServices.IntervaloTentativas      := 3000;  // Intervalo entre as tentativas de envio
  AACBrReinf.Configuracoes.WebServices.Tentativas               := 10;    // quantidade de tentativas de envio
  AACBrReinf.Configuracoes.WebServices.AjustaAguardaConsultaRet := True;  // ajustar "AguardarConsultaRet" com o valor retornado pelo webservice
  AACBrReinf.Configuracoes.WebServices.TimeOut                  := 4000; // time-out
  AACBrReinf.Configuracoes.WebServices.Salvar                   := True; 
  // proxy
  // pegar do cadastro de parametros
    AACBrReinf.Configuracoes.WebServices.ProxyHost:='';
  AACBrReinf.Configuracoes.WebServices.ProxyPort:='';
  AACBrReinf.Configuracoes.WebServices.ProxyUser:='';  
  AACBrReinf.Configuracoes.WebServices.ProxyPass:='';  

  //  Configurações Gerais
  //  Configurações de Segurança do Certificado
  AACBrReinf.Configuracoes.Geral.SSLLib:=libOpenSSL;  
  AACBrReinf.Configuracoes.Geral.SSLCryptLib:=cryOpenSSL;
  AACBrReinf.Configuracoes.Geral.SSLHttpLib:=httpOpenSSL;
  AACBrReinf.Configuracoes.Geral.SSLXmlSignLib:=xsXmlSec;
  // outras configurações
  AACBrReinf.Configuracoes.Geral.FormaEmissao:=teNormal;
  AACBrReinf.Configuracoes.Geral.ExibirErroSchema:=True;
  AACBrReinf.Configuracoes.Geral.RetirarAcentos:=True;
  AACBrReinf.Configuracoes.Geral.FormatoAlerta:='TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.';
  AACBrReinf.Configuracoes.Geral.Salvar := True;
  
  // Configurações do Certificado Digital
  // aqui deve pegar os parametros do cadastro de parametros do sistema
  AACBrReinf.Configuracoes.Certificados.ArquivoPFX := 'C:\Certificado Digital A1 FISCOSISTEM\FISCOSISTEM DESENVOLVIMENTO DE SOLUCOES FISCAIS L21117450000139.pfx';
  AACBrReinf.Configuracoes.Certificados.NumeroSerie := '25351710095e1e66';
  AACBrReinf.Configuracoes.Certificados.Senha := 'fisco2017';
  AACBrReinf.Configuracoes.Certificados.VerificarValidade := True;
end;

procedure TFormMensageria.DepoisDeEnviar(const Axml: string);
begin
  Memo2.Lines.Text := Axml;
end;

procedure TFormMensageria.FormShow(Sender: TObject);
begin
 dm.qryUtil.Close;  
 dm.qryUtil.SQL.Clear;
 dm.qryUtil.SQL.Add('Select * from PERFILREINF_18 where codigo=:cod') ;
 DM.qryUtil.ParamByName('cod').AsInteger:=Codcurr;
 DM.qryUtil.Open;

 if DM.qryUtil.FieldByName('R1000').AsString='S' then
 chk1000.Checked:=True else chk1000.Checked:=False;

 if DM.qryUtil.FieldByName('R1070').AsString='S' then
 chk1070.Checked:=True else chk1070.Checked:=False;

 if DM.qryUtil.FieldByName('R2010').AsString='S' then
 chk2010.Checked:=True else chk2010.Checked:=False;

 if DM.qryUtil.FieldByName('R2020').AsString='S' then
 chk2020.Checked:=True else chk2020.Checked:=False;

 if DM.qryUtil.FieldByName('R2060').AsString='S' then
 chk2060.Checked:=True else chk2060.Checked:=False;
 
 if DM.qryUtil.FieldByName('R2070').AsString='S' then
 chk2070.Checked:=True else chk2070.Checked:=False;
end;

procedure TFormMensageria.LimparDocsPasta;
var
  path: string;
  FileOp: TSHFileOpStruct;
begin
  try
    path := IncludeTrailingPathDelimiter(ExtractFileDir(ParamStr(0))) + 'Docs';
    FillChar(FileOp, SizeOf(FileOp), 0);
    FileOp.wFunc := FO_DELETE;
    FileOp.pFrom := PChar(path+#0);//double zero-terminated
    FileOp.fFlags := FOF_SILENT or FOF_NOERRORUI or FOF_NOCONFIRMATION;
    SHFileOperation(FileOp);
    ForceDirectories(path);
  except
  end;
end;

procedure TFormMensageria.PreencherXMLEventos;
begin
  if chk1000.Checked then
    GerarReinf1000;

  if chk1070.Checked then
    GerarReinf1070;

  if chk2010.Checked then
    GerarReinf2010;

  if chk2020.Checked then
    GerarReinf2020;

  if chk2050.Checked then
    GerarReinf2050;

  if chk2060.Checked then
    GerarReinf2060;

  if chk2070.Checked then
    GerarReinf2070;

  if chk2098.Checked then
    GerarReinf2098;

  if chk2099.Checked then
    GerarReinf2099;

  if chk9000.Checked then
    GerarReinf9000;
end;


procedure TFormMensageria.GerarReinf1000;
begin
  DMREINF.qryregistro1000.Close;
  DMREINF.qryregistro1000.ParamByName('emp').AsInteger:=codcurr;
  DMREINF.qryregistro1000.Open;
  

  with FACBrReinf.Eventos.AddR1000 do
  begin
    TipoOperacao := GetTipoOperacao;
    infoContri.IdePeriodo.IniValid := '2017-01';
    // evtInfoEmpregador.InfoEmpregador.IdePeriodo.FimValid := '2099-12';
    infoContri.InfoCadastro.ClassTrib := DMREINF.qryregistro1000.FieldByName('ClassTrib').AsString;
    

    if DMREINF.qryregistro1000.FieldByName('INDESCRITURACAO').AsString='0' then    
    infoContri.InfoCadastro.indEscrituracao := tpNao
    else
    infoContri.InfoCadastro.indEscrituracao :=tpSim;
    
    if DMREINF.qryregistro1000.FieldByName('indDesoneracao').AsString='0' then 
    infoContri.InfoCadastro.indDesoneracao := tpNao
    else
     infoContri.InfoCadastro.indDesoneracao :=tpSim;
     
   if DMREINF.qryregistro1000.FieldByName('indAcordoIsenMulta').AsString='0' then   
    infoContri.InfoCadastro.indAcordoIsenMulta := tpNao
    else
     infoContri.InfoCadastro.indAcordoIsenMulta := tpSim;

   // infoContri.InfoCadastro.Contato.NmCtt := 'Leivio Fonteneke';
    infoContri.InfoCadastro.Contato.NmCtt :=DMREINF.qryregistro1000.FieldByName('NmCtt').AsString ;
    infoContri.InfoCadastro.Contato.CpfCtt := TiraPontos(DMREINF.qryregistro1000.FieldByName('CpfCtt').AsString);
    infoContri.InfoCadastro.Contato.FoneFixo := TiraPontos(DMREINF.qryregistro1000.FieldByName('FONEFIXO').AsString);
    infoContri.InfoCadastro.Contato.FoneCel := TiraPontos(DMREINF.qryregistro1000.FieldByName('FONECEL').AsString);
    infoContri.InfoCadastro.Contato.email := DMREINF.qryregistro1000.FieldByName('EMAIL_CONTATO').AsString;

    with infoContri.InfoCadastro.SoftwareHouse do
    begin
      CnpjSoftHouse := '02191905000111';
      NmRazao := 'FiscoSistem';
      NmCont := 'Contato';
      Telefone := '5135417085';
      email := 'suporte@fiscosistem.com.br';
    end;

    infoContri.InfoCadastro.indSitPJ := spNormal;
  end;
end;

procedure TFormMensageria.GerarReinf1070;
var
  infoSusp: TinfoSusp;
begin
 DMREINF.qryRegistro1070.Close;
 DMREINF.qryRegistro1070.ParamByName('emp').AsInteger:=Codcurr;
 DMREINF.qryRegistro1070.Open;

 while not DMREINF.qryRegistro1070.eof do
 begin
      with FACBrReinf.Eventos.AddR1070 do
      begin
        TipoOperacao := GetTipoOperacao;
       // InfoProcesso.IdePeriodo.
        InfoProcesso.IdePeriodo.IniValid := DMREINF.qryRegistro1070.FieldByName('IniValid').AsString;
        // evtInfoEmpregador.InfoEmpregador.IdePeriodo.FimValid := '2099-12';
        
        InfoProcesso.IdeProcesso.tpProc := tpJudicial;
        InfoProcesso.IdeProcesso.nrProc := DMREINF.qryRegistro1070.FieldByName('nrProc').AsString;
        InfoProcesso.IdeProcesso.DadosProcJud.UfVara     := DMREINF.qryRegistro1070.FieldByName('UfVara').AsString;
        InfoProcesso.IdeProcesso.DadosProcJud.codMunic   := DMREINF.qryRegistro1070.FieldByName('codMunic').AsInteger;
        InfoProcesso.IdeProcesso.DadosProcJud.IdVara     := DMREINF.qryRegistro1070.FieldByName('IdVara').AsString;
        infoSusp := TinfoSusp(InfoProcesso.IdeProcesso.infoSusps.Items[InfoProcesso.IdeProcesso.infoSusps.Add(TinfoSusp.Create)]);
        infoSusp.codSusp := DMREINF.qryRegistro1070.FieldByName('codSusp').AsString;
        infoSusp.indSusp := siDecisaoDefinitivaAFavorDoContribuinte;
        infoSusp.dtDecisao := DMREINF.qryRegistro1070.FieldByName('dtDecisao').AsDateTime;
        infoSusp.indDeposito := tpNao;
      end;
   DMREINF.qryRegistro1070.Next;
 end;
end;

procedure TFormMensageria.GerarReinf2010;
var
  R2010: TR2010;
begin
  DMREINF.qryRegistro2010_1.Close;
  DMREINF.qryRegistro2010_1.ParamByName('emp').AsInteger:=Codcurr;
  DMREINF.qryRegistro2010_1.Open;
  
 while not DMREINF.qryRegistro2010_1.eof  do
 begin
  R2010 := FACBrReinf.Eventos.AddR2010;
  with R2010 do
  begin
    R2010.indRetif := trOriginal;

    if ChkRetificadora.Checked then
      R2010.indRetif := trRetificacao;

    if R2010.indRetif = trRetificacao then
      R2010.nrRecibo := edtRecibo.Text;
    R2010.perApur := '2017-08';

    R2010.infoServTom.IdePeriodo.IniValid := DMREINF.qryRegistro2010_1.FieldByName('PERAPUR').AsString;//'2017-01';

    R2010.infoServTom.ideEstabObra.tpInscEstab := tiCNPJ;
    R2010.infoServTom.ideEstabObra.nrInscEstab :=TiraPontos(DMREINF.qryRegistro2010_1.FieldByName('NRINSCESTABTOM').AsString);
    if DMREINF.qryRegistro2010_1.FieldByName('indObra').AsInteger=0 then
    R2010.infoServTom.ideEstabObra.indObra :=ioNaoeObraDeConstrucaoCivil
    else
    if DMREINF.qryRegistro2010_1.FieldByName('indObra').AsInteger=1 then
    R2010.infoServTom.ideEstabObra.indObra := ioObradeConstrucaoCivilTotal
    else    
    R2010.infoServTom.ideEstabObra.indObra := ioObradeConstrucaoCivilParcial;

    with R2010.infoServTom.ideEstabObra.idePrestServs.Items[R2010.infoServTom.ideEstabObra.idePrestServs.Add(TidePrestServ.Create)] do
    begin
      cnpjPrestador :=TiraPontos(DMREINF.qryRegistro2010_1.FieldByName('CNPJPRESTADOR').AsString);
      vlrTotalBruto := DMREINF.qryRegistro2010_1.FieldByName('VLRTOTALBRUTO').AsFloat;
      vlrTotalBaseRet := DMREINF.qryRegistro2010_1.FieldByName('VLRTOTALBASERET').AsFloat;
      vlrTotalRetPrinc := DMREINF.qryRegistro2010_1.FieldByName('VLRTOTALRETPRINC').AsFloat;
      vlrTotalRetAdic := DMREINF.qryRegistro2010_1.FieldByName('VLRTOTALRETADIC').AsFloat;
      vlrTotalNRetPrinc := DMREINF.qryRegistro2010_1.FieldByName('VLRTOTALNRETPRINC').AsFloat;

    //  codAnaCont := '001';
      if DMREINF.qryRegistro2010_1.FieldByName('indCPRB').AsInteger=0 then
      indCPRB := icNaoContribuintePrevidenciariaReceitaBruta
      else
      indCPRB := icContribuintePrevidenciaReceitaBruta ;  

     DMREINF.qryRegistro2010_2.Close;
     DMREINF.qryRegistro2010_2.ParamByName('emp').AsInteger:=Codcurr;
     DMREINF.qryRegistro2010_2.ParamByName('serv').AsInteger:=DMREINF.qryRegistro2010_1.FieldByName('id_servico').AsInteger;
     DMREINF.qryRegistro2010_2.Open;
     while not DMREINF.qryRegistro2010_2.eof  do
     begin
      with nfss.Items[nfss.Add(Tnfs.Create)] do
      begin
        serie := DMREINF.qryRegistro2010_2.FieldByName('serie').AsString;// '00001';
        numDocto  := DMREINF.qryRegistro2010_2.FieldByName('numDocto').AsString;;
        dtEmissaoNF := DMREINF.qryRegistro2010_2.FieldByName('dtEmissaoNF').AsDateTime;
        vlrBruto  := DMREINF.qryRegistro2010_2.FieldByName('vlrBruto').AsFloat;
        obs := DMREINF.qryRegistro2010_2.FieldByName('obs').AsString;

        DMREINF.qryRegistro2010_3.Close;
        DMREINF.qryRegistro2010_3.ParamByName('emp').AsInteger:=Codcurr;
        DMREINF.qryRegistro2010_3.ParamByName('serv').AsInteger:=DMREINF.qryRegistro2010_2.FieldByName('id_servico').AsInteger;
        DMREINF.qryRegistro2010_3.ParamByName('nf').AsInteger:=DMREINF.qryRegistro2010_2.FieldByName('id_nf').AsInteger;
        DMREINF.qryRegistro2010_3.Open;

       while not DMREINF.qryRegistro2010_3.eof do
       begin
        with infoTpServs.Items[infoTpServs.Add(TinfoTpServ.Create)] do
        begin
          tpServico :=DMREINF.qryRegistro2010_3.FieldByName('tpServico').AsString; //'06'; {Tabela 06}
          vlrBaseRet:= DMREINF.qryRegistro2010_3.FieldByName('vlrBaseRet').asfloat;
          vlrRetencao:= DMREINF.qryRegistro2010_3.FieldByName('vlrRetencao').asfloat;
          vlrRetSub:= DMREINF.qryRegistro2010_3.FieldByName('vlrRetSub').asfloat;
          vlrNRetPrinc:= DMREINF.qryRegistro2010_3.FieldByName('vlrNRetPrinc').asfloat;
          vlrServicos15:= DMREINF.qryRegistro2010_3.FieldByName('vlrServicos15').asfloat;
          vlrServicos20:= DMREINF.qryRegistro2010_3.FieldByName('vlrServicos20').asfloat;
          vlrServicos25:= DMREINF.qryRegistro2010_3.FieldByName('vlrServicos25').asfloat;
          vlrAdicional:=  DMREINF.qryRegistro2010_3.FieldByName('vlrAdicional').asfloat;
          vlrNRetAdic:= DMREINF.qryRegistro2010_3.FieldByName('vlrNRetAdic').asfloat;
          
          //codAtivEcon := '00000025';
          
        end;
        DMREINF.qryRegistro2010_3.Next;
       end;
      end;
      
      DMREINF.qryRegistro2010_2.Next;
     end;

     DMREINF.qryRegistro2010_4.Close;
     DMREINF.qryRegistro2010_4.ParamByName('emp').AsInteger:=Codcurr;
     DMREINF.qryRegistro2010_4.ParamByName('serv').AsInteger:=DMREINF.qryRegistro2010_1.FieldByName('id_servico').AsInteger;
     DMREINF.qryRegistro2010_4.Open;
     
     while not DMREINF.qryRegistro2010_4.eof do
     begin
      with infoProcRetPrs.Items[infoProcRetPrs.Add(TinfoProcRetPr.Create)] do
      begin
        if DMREINF.qryRegistro2010_4.FieldByName('tpProcRetPrinc').AsString='1' then        
         tpProcRetPrinc := tprAdministrativoTomador
        else
         tpProcRetPrinc := tprJudicialTomador;
        
        nrProcRetPrinc := DMREINF.qryRegistro2010_4.FieldByName('nrProcRetPrinc').AsString;
        codSuspPrinc := DMREINF.qryRegistro2010_4.FieldByName('codSusp').AsInteger;
        valorPrinc := DMREINF.qryRegistro2010_4.FieldByName('valorPrinc').AsFloat;

        
      end;
      DMREINF.qryRegistro2010_4.Next;
     end;   

     
      
    end;
  end;
  
  DMREINF.qryRegistro2010_1.Next;
 end;
end;

procedure TFormMensageria.GerarReinf2020;
var
  R2020: TR2020;
begin
   DMREINF.qryRegistro2020_1.Close;
  DMREINF.qryRegistro2020_1.ParamByName('emp').AsInteger:=Codcurr;
  DMREINF.qryRegistro2020_1.Open;
  while not DMREINF.qryRegistro2020_1.eof do
 begin
  R2020 := FACBrReinf.Eventos.AddR2020;
  with R2020 do
  begin
    R2020.indRetif := trOriginal;

    if ChkRetificadora.Checked then
      R2020.indRetif := trRetificacao;

    if R2020.indRetif = trRetificacao then
      R2020.nrRecibo := edtRecibo.Text;
    R2020.perApur := '2017-08';

    R2020.infoServPrest.IdePeriodo.IniValid := '2017-01';

     R2020.infoServPrest.ideEstabPrest.tpInscEstabPrest := ord(tiCNPJ); {valor somente leitura -> Valor fixo 1}
     R2020.infoServPrest.ideEstabPrest.nrInscEstabPrest := TiraPontos(DMREINF.qryRegistro2020_1.FieldByName('CNPJPRESTADOR').AsString);

    with R2020.infoServPrest.ideEstabPrest.ideTomadors.Items[R2020.infoServPrest.ideEstabPrest.ideTomadors.Add(TideTomador.Create)] do
    begin
      if DMREINF.qryRegistro2020_1.FieldByName('tpInscEstabTom').asinteger=1 then      
      tpInscTomador := tiCNPJ {Não preencher fixo}
      else
       tpInscTomador := tiCNO;
      
      nrInscTomador := TiraPontos(DMREINF.qryRegistro2020_1.FieldByName('NRINSCESTABTOM').AsString);
      vlrTotalBruto := DMREINF.qryRegistro2020_1.FieldByName('VLRTOTALBRUTO').AsFloat;
      vlrTotalBaseRet := DMREINF.qryRegistro2020_1.FieldByName('VLRTOTALBASERET').AsFloat;
      vlrTotalRetPrinc := DMREINF.qryRegistro2020_1.FieldByName('VLRTOTALRETPRINC').AsFloat;
      vlrTotalRetAdic := DMREINF.qryRegistro2020_1.FieldByName('VLRTOTALRETADIC').AsFloat;
      vlrTotalNRetPrinc := DMREINF.qryRegistro2020_1.FieldByName('VLRTOTALNRETPRINC').AsFloat;
      
     // codAnaCont := '001';
      
      DMREINF.qryRegistro2020_2.Close;
      DMREINF.qryRegistro2020_2.ParamByName('emp').AsInteger:=Codcurr;
      DMREINF.qryRegistro2020_2.ParamByName('serv').AsInteger:=DMREINF.qryRegistro2020_1.FieldByName('id_servico').AsInteger;
      DMREINF.qryRegistro2020_2.Open;
      
     while not DMREINF.qryRegistro2020_2.eof  do
     begin
      with nfss.Items[nfss.Add(Tnfs.Create)] do
      begin
        serie := DMREINF.qryRegistro2020_2.FieldByName('serie').AsString;// '00001';
        numDocto  := DMREINF.qryRegistro2020_2.FieldByName('numDocto').AsString;;
        dtEmissaoNF := DMREINF.qryRegistro2020_2.FieldByName('dtEmissaoNF').AsDateTime;
        vlrBruto  := DMREINF.qryRegistro2020_2.FieldByName('vlrBruto').AsFloat;
        obs := DMREINF.qryRegistro2020_2.FieldByName('obs').AsString;

        DMREINF.qryRegistro2020_3.Close;
        DMREINF.qryRegistro2020_3.ParamByName('emp').AsInteger:=Codcurr;
        DMREINF.qryRegistro2020_3.ParamByName('serv').AsInteger:=DMREINF.qryRegistro2020_2.FieldByName('id_servico').AsInteger;
        DMREINF.qryRegistro2020_3.ParamByName('nf').AsInteger:=DMREINF.qryRegistro2020_2.FieldByName('id_nf').AsInteger;
        DMREINF.qryRegistro2020_3.Open;

        while not DMREINF.qryRegistro2020_3.eof do
       begin
        with infoTpServs.Items[infoTpServs.Add(TinfoTpServ.Create)] do
        begin
          tpServico :=DMREINF.qryRegistro2020_3.FieldByName('tpServico').AsString; //'06'; {Tabela 06}
          vlrBaseRet:= DMREINF.qryRegistro2020_3.FieldByName('vlrBaseRet').asfloat;
          vlrRetencao:= DMREINF.qryRegistro2020_3.FieldByName('vlrRetencao').asfloat;
          vlrRetSub:= DMREINF.qryRegistro2020_3.FieldByName('vlrRetSub').asfloat;
          vlrNRetPrinc:= DMREINF.qryRegistro2020_3.FieldByName('vlrNRetPrinc').asfloat;
          vlrServicos15:= DMREINF.qryRegistro2020_3.FieldByName('vlrServicos15').asfloat;
          vlrServicos20:= DMREINF.qryRegistro2020_3.FieldByName('vlrServicos20').asfloat;
          vlrServicos25:= DMREINF.qryRegistro2020_3.FieldByName('vlrServicos25').asfloat;
          vlrAdicional:=  DMREINF.qryRegistro2020_3.FieldByName('vlrAdicional').asfloat;
          vlrNRetAdic:= DMREINF.qryRegistro2020_3.FieldByName('vlrNRetAdic').asfloat;
          //vlrRetSub := 0;
        end;
        DMREINF.qryRegistro2020_3.next;
       end;
      end;
      DMREINF.qryRegistro2020_2.next;
     end;

     DMREINF.qryRegistro2020_4.Close;
     DMREINF.qryRegistro2020_4.ParamByName('emp').AsInteger:=Codcurr;
     DMREINF.qryRegistro2020_4.ParamByName('serv').AsInteger:=DMREINF.qryRegistro2020_1.FieldByName('id_servico').AsInteger;
     DMREINF.qryRegistro2020_4.Open;

    { 
     while not DMREINF.qryRegistro2020_4.eof do
     begin
      with infoProcRetPrs.Items[infoProcRetPrs.Add(TinfoProcRetPr.Create)] do
      begin
        if DMREINF.qryRegistro2020_4.FieldByName('tpProcRetPrinc').AsString='1' then        
         tpProcRetPrinc := tprAdministrativoTomador
        else
         tpProcRetPrinc := tprJudicialTomador;
        
        nrProcRetPrinc := DMREINF.qryRegistro2020_4.FieldByName('nrProcRetPrinc').AsString;
        codSuspPrinc := DMREINF.qryRegistro2020_4.FieldByName('codSusp').AsInteger;
        valorPrinc := DMREINF.qryRegistro2020_4.FieldByName('valorPrinc').AsFloat;
      end;
      DMREINF.qryRegistro2010_4.Next;
     end;        }
      {
      with infoProcRetPrs.Items[infoProcRetPrs.Add(TinfoProcRetPr.Create)] do
      begin
        tpProcRetPrinc := tprAdministrativoTomador;
        nrProcRetPrinc := '1122112';
        codSuspPrinc := 001;
        valorPrinc := 100.00;
      end;
      }
    end;
  end;
  DMREINF.qryRegistro2020_1.next;
 end;
end;

procedure TFormMensageria.GerarReinf2050;
var
  R2050: TR2020;  // TR2050
begin

end;

procedure TFormMensageria.GerarReinf2060;
var
  R2060: TR2020;  // TR2060
begin

end;

procedure TFormMensageria.GerarReinf2070;
var
  R2070: TR2020;   // TR2070
begin

end;


procedure TFormMensageria.GerarReinf2098;
var
  R2098: TR2098;
begin
  R2098 := FACBrReinf.Eventos.AddR2098;
  with R2098 do
  begin
    R2098.perApur := Copy(cbbperiodo.Text,4,4)+'-'+Copy(cbbperiodo.Text,1,2);
  end;
end;

procedure TFormMensageria.GerarReinf2099;
var
  R2099: TR2099;
begin
  R2099 := FACBrReinf.Eventos.AddR2099;
  with R2099 do
  begin
    perApur := Copy(cbbperiodo.Text,4,4)+'-'+Copy(cbbperiodo.Text,1,2);
    with R2099.ideRespInf do
    begin
      nmResp := 'Leivio Fontenele';
      cpfResp := '96305312320';
      telefone := '8591854655';
      email := 'leviio@yahoo.com.br'
    end;

    with R2099.infoFech do
    begin
      evtServTm := tpSim;
      evtServPr := tpSim;
      evtAssDespRec := tpNao;
      evtAssDespRep := tpNao;
      evtComProd := tpSim;
      evtComProd := tpSim;
      evtCPRB := tpNao;
      evtPgtos := tpNao;
      //compSemMovto := '2017-01'; {Somente preenchido se os outros valores forem tbNao}
    end;
  end;
end;

procedure TFormMensageria.GerarReinf9000;
var
  R9000: TR9000;
begin
  R9000 := FACBrReinf.Eventos.AddR9000;
  with R9000 do
  begin
    infoExclusao.tpEvento := cbbEvento.Items.Strings[cbbEvento.ItemIndex];
    infoExclusao.nrRecEvt := Trim(edtRecibo.Text);
    infoExclusao.perApur := Copy(cbbperiodo.Text,4,4)+'-'+Copy(cbbperiodo.Text,1,2);
  end;

end;

function TFormMensageria.GetTipoOperacao: TTypeOperacao;
begin
  case rdgOperacao.ItemIndex of
    1: Result := toAlteracao;
    2: Result := toExclusao;
  else
    Result := toInclusao;
  end;
end;

end.

{

9.2.Eventos
Inicialmente, o ambiente de Produção Restrita será disponibilizado contendo os
eventos abaixo que foram implementados de acordo com a versão 1.1 do leiaute e da versão
1_01_01 dos schemas XML:
1. R-1000 - Informações do Empregador/Contribuinte
2. R-1070 - Tabela de Processos Administrativos/Judiciais
3. R-2010 – Retenção Contribuição Previdenciária - Serviços Tomados
4. R-2020 – Retenção Contribuição Previdenciária - Serviços Prestados
  5. R-2030 – Recursos Recebidos por Associação Desportiva  (Não vamos fazer)
  6. R-2040 – Recursos Repassados para Associação Desportiva (Não Vamos Fazer)
7. R-2098 – Reabertura dos Eventos Periódicos
8. R-2099 – Fechamento dos Eventos Periódicos
9. R-9000 – Exclusão de Eventos
As datas para disponibilização de versões futuras da EFD-REINF nos ambientes de
Produção Restrita e Produção serão divulgadas oportunamente.

}
