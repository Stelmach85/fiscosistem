unit frm_REINF;

interface

uses
 Windows, wintypes, winprocs, shellapi, SysUtils, Messages, Quickrpt,
 Qrctrls,QRExport, Clipbrd, Printers, Menus, Dialogs, ExtCtrls,
 ComCtrls, Controls, StdCtrls, Classes, Graphics, Forms,ImgList,WinHelpViewer,
 Buttons, jpeg, DBTables, DB, Qrprntr, Variants, DBCtrls, ActiveX,
 HintDesign, XPMan,ActnList,SqlExpr,  DBXOracle, Uni, UCBase, DAScript, UniScript, UCSettings, UCMail,
 JvComponentBase, JvFormAnimation, JvXPCore, pngimage, JvExExtCtrls, JvImage, midaslib,
 sSkinManager, DynamicSkinForm, JvExComCtrls, JvComCtrls, sTreeView,acAlphaHints, sDialogs,acPNG,
 JvSecretPanel, JvStatusBar, JvExControls, JvGradientHeaderPanel, JvGradient,
 JvExButtons, JvBitBtn, spDialogs, IWVCLBaseControl, IWBaseControl,
 IWBaseHTMLControl, IWControl, IWExtCtrls, IWCompText, dxGDIPlusClasses,
 EPaswd, IdCoder, IdCoder3to4,
 IdCoderMIME, IdBaseComponent,ComObj, ECripto;

 const
   Ano='17';
   AnoREINF='2017';
   AnoREINFAnt='2016';
   AnoAnt='16';
   AnoCorrente=2017;
   ArqBanco='Banco.REINF';
   Executavel='REINF.exe';
   Versao='1.01';
   Fonte='Tahoma';
   AnoValido = '2017';
   ArqRegistro='REINF.xml';
   arqbancoecf='Banco.ECF';

   SQLMontaMenuConfig= 'select * from menu where (codemp=-1 )and menu=''Configuração'' and ((Divisao=''GENERIC'') or (Divisao=''Manuais''))order by  ordem_menu,ordem_divisao, divisao,descricao';

   type
    TREINFForm = class(TForm)
    Panel1: TPanel;
    btnSair: TSpeedButton;
    HintDesign: THintDesign;
    btnSobre: TSpeedButton;
    XPManifest1: TXPManifest;
    StatusBar1: TStatusBar;
    sSkinManager1: TsSkinManager;
    spSkinMainMenu1: TspSkinMainMenu;
    teste11: TMenuItem;
    teste21: TMenuItem;
    tvmenu: TsTreeView;
    btnEmpresas: TSpeedButton;
    Label3: TLabel;
    btnNovo: TSpeedButton;
    jvgrdnt1: TJvGradient;
    ilTreeView1: TImageList;
    statempresa: TStatusBar;
    SpeedButtonPerfil: TSpeedButton;
    SpeedButtonUsuario: TSpeedButton;
    ilTreeView: TImageList;
    encripta: TEvCriptografa;
    btn1: TSpeedButton;
    procedure OrientaoparaImportao1Click(Sender: TObject);    
    procedure FormShow(Sender: TObject);
    procedure mniSairdoSistemaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mniLicenciamentodoSistemaClick(Sender: TObject);
    procedure AjudaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tvmenuClick(Sender: TObject);
    procedure btnEmpresasClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure tvmenuChange(Sender: TObject; Node: TTreeNode);
    procedure btnSairClick(Sender: TObject);
    procedure btnSobreClick(Sender: TObject);
    procedure tvmenuExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure img1Click(Sender: TObject);
    procedure sbTransfClick(Sender: TObject);
    function PegaXML(Texto: String; Campo: String): String;
    procedure SpeedButtonPerfilClick(Sender: TObject);
    procedure SpeedButtonUsuarioClick(Sender: TObject);
    procedure AtualizaMenuPerfil();
    function BuscaPermissaoIDMenu(ItemMenu:string):Boolean;
  //  procedure GeraExcel(Consulta:TUniQuery);
  //  procedure EvPassword1Validate(Sender: TObject; UserName, Password: string;
   //   var Valid: Boolean);

  private
    { Private declarations }
  public
    function Money(Value:real):real;
    procedure GeraExcel(Consulta:TUniQuery);
    function colocaMascara(texto:string):string;
    { Public declarations }

  end;

var
  REINFForm: TREINFForm;
  REINFdir,REINFdir_users,REINFexe,spath,spath_users,empresa,cnpj,dataevento,calculo,inicial,imprimir: string;
  Codcurr,apuracao,EscrituracaoLPresumido,tributacao,qualificacao,mesevento,mes_calculo,ano_apuracao,ano_utilizacao,tipocalculo,ano_anterior:Integer;
  atividade,mes,pagini,num, gravaimposto, red_reinvestimento, RegimeApuracaoReceitas: integer;
  entidade,Atividaderural,Linflac,lexplor,Descricao,cnpjemp:string;
  Todos,democalc,demorural,demodemais,cancelou,diferido,atualizaimposto,so_parteb:boolean;
  Day,Year,MesInic,MesFinal,mesinicPres,MesFinalPres: word;
  Nomeemp,periodo,modulo,anomodulo,cpf,demo,mesparteb:string;
  Parceiro,ImportaContas,ImportaReal,ImportaHistoricos,Registrado,resumo, ruralmista:boolean;
  REINFregime,creditometodo,Creditoimportacao,AliqDif,AliqUni,Matriz,caminhoreal :string;
  path_txt,caminho,nomeconta:string; {período a ser lancado}
  PerInic, PerFinal, Imposto, SituacaoEsp, impostocomp: integer;
  Dataini, datafinal: TDateTime;
  CSselic, IRselic, inssselic, presmensal:boolean;
  Meses: array [1..32] of string;
  Trimestres: array [1..4] of string;
  LocalBancodeDados,Sistema,Demonstracao:string;
  percCredit,PercExport : Real;
  Planilha,Planilha_rural,Ajuda,Ajuda_Importacao,TipoBanco:string;
  retidoFonteIR,retidoFontePis:Boolean;
  Multibanco,Mes69,mesfinalT:Integer;
  DataEventoEs:string;
  TodasEmpresas:Boolean; // usado na importação views
  Livro:Boolean;
  importaEstimado,exploPresumida:Boolean;
  IEST,textocaption,ImportaXY:string;
  DescMenu,Rsenha,RdiasRegistro:string;
  arquivoReg: TStringList;
  ModuloReg,LimiteEmpresas,DataReg:string;  // informações XML
  LancRural:boolean;
  Texto:string;
  ID_W200:Integer;
//  arquivoReg2: TStringList;
  linha,licenca,ModuloCNPJ,ModuloCLiente:string;

implementation

uses UFormSelecionaEmpresa, UVerificaSistema, UFormContribuintes,
  UFormCadProcessos, UFormParametros, UFormConexao, UFormCadBeneficiarios,
  UFormCadRetCP_Serv_tomados, UFormCadRetCP_Serv_tomados_imp,
  UFormCadComProdRural;



{$R *.dfm}

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

function TREINFForm.colocaMascara(texto:string):string;
begin
 texto:=TiraPontos(texto);
 if Length(texto)=11 then
  texto:= Copy(texto,1,3)+'.'+copy(texto,4,3)+'.'+copy(texto,7,3)+'-'+copy(texto,10,2)
  else
 if Length(texto)=14 then
  texto:= Copy(texto,1,2)+'.'+copy(texto,3,3)+'.'+copy(texto,6,3)+'/'+ Copy(texto,9,4)+'-'+copy(texto,13,2)
 else 
 texto:='';

  Result:=texto;
  

end;

procedure OpenPDF(aFile : TFileName; TypeForm : Integer = SW_NORMAL);
var
  Pdir: PChar;
begin
  GetMem(pDir, 256);
  StrPCopy(pDir, aFile);
  ShellExecute(0, nil, Pchar(aFile), nil, Pdir, TypeForm);
  FreeMem(pdir, 256);
end;



procedure TREINFForm.AtualizaMenuPerfil();
var
  IdMenuNovo,IdEmp,Idperfil:Integer;
  NomePerfilNovo:string;
begin
 { DMR.qryUtil.Close;
  DMR.qryUtil.SQL.Clear;
  DMR.qryUtil.sql.add('select * from menu');
  DMR.qryUtil.sql.add('where codemp=-1 and id_menu not in');
  DMR.qryUtil.sql.add('(select id_menu from perfil_2017 where codemp=-1)');
  DMR.qryUtil.active := true;
  DmR.qryUtil.open;
  while not DMR.qryUtil.eof do
  begin
    IdMenuNovo:= DMR.qryUtil.Fieldbyname('Id_Menu').asInteger;
    DMR.qryUtil2.Close;
    DMR.qryUtil2.SQL.Clear;
    DMR.qryUtil2.sql.add('select codperfil, nome,codemp from perfil_2017');
    DMR.qryUtil2.sql.add('group by codperfil,nome,codemp');
    DMR.qryUtil2.active := true;
    DmR.qryUtil2.open;

    while  not DMR.qryUtil2.eof do
    begin
      IdEmp:=DMR.qryUtil2.Fieldbyname('codemp').AsInteger;
      NomePerfilNovo:= DMR.qryUtil2.Fieldbyname('nome').asString;
     IdPerfil:=DMR.qryUtil2.Fieldbyname('codperfil').AsInteger;
     if  IdEmp<0 then
     begin
       try
       DMR.TabPerfil.close;
       DMR.TabPerfil.open;
       DMR.TabPerfil.Insert;
       DMR.TabPerfil.FieldByName('CODPERFIL').AsInteger := IdPerfil;
       DMR.TabPerfil.FieldByName('NOME').AsString := NomePerfilNovo ;
       DMR.TabPerfil.FieldByName('ID_MENU').AsInteger :=IdMenuNovo;
       DMR.TabPerfil.FieldByName('CODEMP').AsInteger := IdEmp;
       DMR.TabPerfil.FieldByName('PERMISSAO').asString :='S';
       DMR.TabPerfil.Post;
       except
            DMR.TabPerfil.close;
            DMR.TabPerfil.open;
       end;
        DMR.qryUtil2.next;
     end
     else
     begin
         try
          DMR.TabPerfil.close;
          DMR.TabPerfil.open;
          DMR.TabPerfil.Insert;
          DMR.TabPerfil.FieldByName('CODPERFIL').AsInteger :=IdPerfil;
          DMR.TabPerfil.FieldByName('NOME').AsString := NomePerfilNovo ;
          DMR.TabPerfil.FieldByName('ID_MENU').AsInteger :=IdMenuNovo;
          DMR.TabPerfil.FieldByName('CODEMP').AsInteger := IdEmp;
          DMR.TabPerfil.FieldByName('PERMISSAO').asString :='N';
          DMR.TabPerfil.Post;
         except
            DMR.TabPerfil.close;
            DMR.TabPerfil.open;
         end;
          DMR.qryUtil2.next;
     end;
    end;
      DMR.qryUtil.next;
  end;      }
end;

function TREINFForm.Money(Value:real):real;
begin
  result:=strtofloat(format('%1.2f', [Value]))
end;

function TREINFForm.BuscaPermissaoIDMenu(ItemMenu:string):Boolean;
var
 PeridItemMenuUsuario:string;
 CodcurrEmp, IdMenuDesab:Integer;
begin
{ DMR.qryUtil2.Close;
 DMR.qryUtil2.SQL.Clear;
 DMR.qryUtil2.sql.add('select * from menu');
 DMR.qryUtil2.sql.add('where codemp=-1 and descricao=:itemmenu');
 DMR.qryUtil2.sql.add('order by ordem_menu,ordem_divisao, ordem_desc');
 DmR.qryUtil2.ParamByName('itemmenu').AsString:=ItemMenu;
 DmR.qryUtil2.active := true;
 DmR.qryUtil2.open;
 codIDMenu:=DMR.qryUtil2.FieldByName('ID_MENU').AsInteger;


  DMR.qryUtil.close;
  DMR.qryUtil.SQL.Clear;
  DMR.qryUtil.SQL.Add('select * from perfil_2017');
  DMR.qryUtil.SQL.Add('where codperfil=:codperfil1 and ID_menu=:idmenu');
  DMR.qryUtil.SQL.Add('order by  id_menu desc');
  DMR.qryUtil.ParamByName('codperfil1').AsInteger :=IdMenu_Usuario;
  DMR.qryUtil.ParamByName('idmenu').AsInteger :=codIDMenu;
  DMR.qryUtil.Open;


  CodcurrEmp:=DMR.qryUtil.FieldByName('codemp').AsInteger;
  PeridItemMenuUsuario:=DMR.qryUtil.FieldByName('permissao').AsString;
  IdMenuDesab:=DMR.qryUtil.FieldByName('ID_Menu').AsInteger;
 
   ////
  if  (CodcurrEmp<0) then
   begin
       if PeridItemMenuUsuario='S' then
            begin
              result:=True;
             end;
           if PeridItemMenuUsuario='N' then
            begin
              result:=False;
            end;

   end;
    if  (CodcurrEmp>0) and (CodcurrEmp=Codcurr)  then
   begin
       if PeridItemMenuUsuario='S' then
            begin
              result:=True;
             end;
           if PeridItemMenuUsuario='N' then
            begin
              result:=False;
            end;

   end;

    if  (CodcurrEmp>0) and (CodcurrEmp<>Codcurr) then
   begin
      result:=False;
   end;

     if  (codIDMenu=0)then
   begin
      result:=True;
   end; }
end;

// Procedure colocada dia 05.06.15 (teste atualiza bco ao iniciar aplicativo)
procedure executa_script(nome_arquivo: string);
var
 temp, instrucao : string;
 i : Integer;
 conteudo : TStringList;
 query : TQuery;
begin
 { conteudo := TStringList.Create;
  query    := TQuery.Create(nil);
  try
    conteudo.LoadFromFile(nome_arquivo);
    temp := conteudo.Text;
    i    := Pos(';',temp);
    DMScript.unscrptUtil.SQL.Add(TEmp);
    DMScript.unscrptUtil.Execute;
  finally
    FreeAndNil(conteudo);
    FreeAndNil(query);
  end; }
end;

procedure TREINFForm.mniSairdoSistemaClick(Sender: TObject);

begin
{  DMConexao.sqlConexaoBancos.Connected:=false;
  try
    if tipoBanco='Firebird' then
       copyfile(PChar(LocalBancodeDados ),PChar(REINFdir+'\Banco\BKP_REINF.FDB'),False);
  except
  end;
  OkDlgForm:=TOkDlgForm.Create(self);
  if OkDlgForm.showmodal=mrOk then
   begin
     try
      fim.KillProcess;
     except
     on e: EAccessViolation do
        MessageDlg('Houve uma violação de acesso, com a mensagem' +  e.Message, MtError, [MbOk], 0);
     end;
   end; }
end;

procedure TREINFForm.FormCreate(Sender: TObject);
begin
  ThousandSeparator :='.';
  DecimalSeparator := ',';
  ShortDateFormat :='dd/MM/yyyy';
  meses[1]:= 'Janeiro';
  meses[2]:= 'Fevereiro';
  meses[3]:= 'Março';
  meses[4]:= 'Abril';
  meses[5]:= 'Maio';

  meses[6]:= 'Junho';
  meses[7]:= 'Julho';
  meses[8]:= 'Agosto';
  meses[9]:= 'Setembro';
  meses[10]:= 'Outubro';
  meses[11]:= 'Novembro';
  meses[12]:= 'Dezembro';
  Trimestres[1]:= '1º Trimestre';
  Trimestres[2]:= '2º Trimestre';
  Trimestres[3]:= '3º Trimestre';
  Trimestres[4]:= '4º Trimestre';
  meses[21]:= 'Janeiro';
  meses[22]:= 'Fevereiro';
  meses[23]:= 'Março';
  meses[24]:= 'Abril';
  meses[25]:= 'Maio';
  meses[26]:= 'Junho';
  meses[27]:= 'Julho';
  meses[28]:= 'Agosto';
  meses[29]:= 'Setembro';
  meses[30]:= 'Outubro';
  meses[31]:= 'Novembro';
  meses[32]:= 'Dezembro';
end;

procedure TREINFForm.FormShow(Sender: TObject);
var
  VerificaSistema:Verifica;
  versao_script: string;
  ver_sao_atu, ver_sao_ant, IdControle,codconfig : Integer;
  S : TSearchRec;
 // Script: TScript;
 // Menu:TCarregaMenu;
begin
  try
   VerificaSistema:=Verifica.Create;
   VerificaSistema.setMenu;
   if not fileexists(REINFexe+arqbanco) then
      VerificaSistema.ExecuteProgram(REINFdir+'Conexao.Exe','');
  except
  end;
  try
    VerificaSistema.ConectaBanco;
    // pega as empresas do E-LALUR
    VerificaSistema.transfEmpresas;
  except
  end;      
  jvgrdnt1.Align:=alTop;
  sSkinManager1.active:=False;
  sSkinManager1.SkinDirectory:= REINFdir;
  sSkinManager1.Active:=True;

  DataReg:='';

  // chamada da procedure 
 // Script.Executa;

  try
    arquivoReg := TStringList.Create;
    arquivoReg.LoadFromFile(REINFdir+ ArqRegistro);
    linha:=arquivoReg[0];
    ModuloCLiente:= PegaXML(linha,'empresa');
    linha:=arquivoReg[1];
    ModuloCNPJ:= PegaXML(linha,'CNPJ');
    linha:=arquivoReg[3];
    ModuloReg:= PegaXML(linha,'Modulo');
   // linha:=arquivoReg[4];
   // LimiteEmpresas:= PegaXML(linha,'EFD');
    linha:=arquivoReg[4];
    LimiteEmpresas:= PegaXML(linha,'QTDE');
    linha:=arquivoReg[5];
    DataReg:= PegaXML(linha,'DATA');
    linha:=arquivoReg[6];
    licenca:= PegaXML(linha,'LIC');
    if licenca=encripta.TextToCriptoHex(ModuloCNPJ+DataReg+ModuloReg+LimiteEmpresas+AnoValido) then
     registrado:=True else registrado:=false ;

  except
      registrado:=false
  end;

  //  if not(fileexists(REINFdir+ArqRegistro)) then
  //     EvAppProtect1.Active:=True;

  //  if StrToDate(DataReg)< now then
  //     EvAppProtect1.Active:=True;

  //chama A TELA DE login
 { if DMR.Conexao.Connected then
  begin
    /// ABRE A TABELA DE CONTROLE PARA VERIFICAR SE DEVE CHAMAR A TELA DE LOGIN
    DMR.TabControle.close;
    DMR.TabControle.Open;

    DMR.qryUtil.close;
    DMR.qryUtil.SQL.Clear;
    DMR.qryUtil.SQL.Add('select max(ID)as ID from CONTROLE');
    DMR.qryUtil.Open;

    IdControle:= DMR.qryUtil.FieldByName('ID').Asinteger;

    if (DMR.TabControle.Locate(('ID'),VarArrayOf([IdControle]),[loPartialKey])) then
    begin
      if DMR.TabControle.FieldByName('Ativar').AsString='S' then
       begin
          if  not  assigned(FormLogin) then
              Application.CreateForm(TFormLogin,FormLogin);
          try
              FormLogin.ShowModal;

              SpeedButtonPerfil.Visible:=True;
              SpeedButtonUsuario.Visible:=True;
               if NomeUsuario<>'FISCOSISTEM' then
               begin
                  statusbar1.panels[2].text:='Usuário: '+NomeUsuario;
               end;
                  AtualizaMenuPerfil();

          finally
              FreeAndNil(FormLogin);
          end
       end;
    end
    else
      begin
        SpeedButtonPerfil.Visible:=False;
        SpeedButtonUsuario.Visible:=False;
      end;
  end; }

   ///inicio abre menu configuração Menu
  { DMR.QryMontaMenu.Close;
   DMR.QryMontaMenu.SQL.Clear;
   DMR.QryMontaMenu.SQL.Add(SQLMontaMenuConfig);
   DMR.QryMontaMenu.Open;
   codconfig:=-1;
   Menu.MontaMenu(codconfig);       }
 ///finaliza  abre menu configuração atualiza menu
 ///
 // menu inicial só com a conexao e manuais
 
  tvmenu.LoadFromFile(REINFdir+'MenuREINFINI.pkz');
  tvmenu.Visible:=True;
end;

procedure TREINFForm.img1Click(Sender: TObject);
begin
  Close;
end;

procedure TREINFForm.mniLicenciamentodoSistemaClick(Sender: TObject);
var
// arq: file of struct;
// dono:struct;
 dir: string;
begin
{  if fileexists(REINFexe+arqregistro)
  then
  begin
    assignfile(arq,REINFexe+arqregistro);
    reset(arq);
    read(arq, dono);
    closefile(arq);
  end
  else dono.registrado:=false;
  if dono.registrado
  then
  begin
    if MessageDlg('O módulo REINF está registrado para:'+' '+dono.nome+'.'+' Deseja registrar novamente ?', mtConfirmation, [mbYes, mbNo], 0)=mrNo
    then
    else
    begin
      If RegistroForm = nil then
         Application.CreateForm(TRegistroForm, RegistroForm);
      RegistroForm.show;
    end;
  end
  else
  begin
    If RegistroForm = nil then
       Application.CreateForm(TRegistroForm, RegistroForm);
    RegistroForm.show;
  end;  }
end;

procedure TREINFForm.SpeedButtonPerfilClick(Sender: TObject);
begin
 {     if (IdUsuario=1)or(IdUsuario=2) then
    begin
       If  not  assigned(FormCadastroPerfil) then
         Application.CreateForm(TFormCadastroPerfil,FormCadastroPerfil);
       try
          FormCadastroPerfil.ShowModal;
        finally
          FreeAndNil(FormCadastroPerfil);
        end;
    end
    else
    begin
       ShowMessage('Liberado somente para o Usuário: "MASTER"!');
       Abort;
    end; }
end;

procedure TREINFForm.SpeedButtonUsuarioClick(Sender: TObject);
begin
 {  if (IdUsuario=1)or(IdUsuario=2) then
    begin
       If  not  assigned(FormCadastroUsuario) then
           Application.CreateForm(TFormCadastroUsuario,FormCadastroUsuario);
       try
          FormCadastroUsuario.ShowModal;
       finally
          FreeAndNil(FormCadastroUsuario);
       end;
    end
   else
    begin
       ShowMessage('Liberado somente para o Usuário: "MASTER"!');
       Abort;
    end;   }
end;



procedure TREINFForm.sbTransfClick(Sender: TObject);
begin
  {If Transfform = nil then
     Application.CreateForm(TTransfform, Transfform);
  Transfform.showmodal;
  Transfform.BringToFront;   }
end;

procedure TREINFForm.AjudaClick(Sender: TObject);
begin
  Application.Helpfile:=ajuda; // ajuda.hlp
  Application.HelpContext(500);
end;

procedure TREINFForm.FormClose(Sender: TObject; var Action: TCloseAction);

begin
{ try
  DMConexao.sqlConexaoBancos.Connected:=false;
  DMR.Conexao.Connected:=false;
  If EmpresasForm <> nil Then
  Begin
     Showmessage ('Você deve sair do cadastro de Empresas, para fechar o sistema!');
     EmpresasForm.PageControl1.SetFocus;
     abort;
  end
  else
     Application.Terminate;
    //fim.KillProcess;
 except
 end;   }
end;

procedure TREINFForm.OrientaoparaImportao1Click(Sender: TObject);
begin
  Application.helpfile:='Ajuda_Interface.hlp'; // importa.hlp
  Application.HelpContext(2);
end;

procedure TREINFForm.btnSobreClick(Sender: TObject);
begin
 { If Sobreform = nil then
     Application.CreateForm(TSobreform, Sobreform);
  Sobreform.showmodal;  }
  If  not  assigned(FormCadRetCP_Serv_tomados_imp ) then
       Application.CreateForm(TFormCadRetCP_Serv_tomados_imp ,FormCadRetCP_Serv_tomados_imp);
     try
       FormCadRetCP_Serv_tomados_imp .ShowModal;

     finally
      FreeAndNil(FormCadRetCP_Serv_tomados_imp );
     end;
// ShowMessage( colocaMascara('00718930088') ) ;
// ShowMessage( colocaMascara('87870952000144'));
end;


procedure TREINFForm.btnEmpresasClick(Sender: TObject);
begin
  If FormSelecionaEmpresa = nil then
     Application.CreateForm(TFormSelecionaEmpresa, FormSelecionaEmpresa)
  else
  begin
     FormSelecionaEmpresa := nil;
     Application.CreateForm(TFormSelecionaEmpresa, FormSelecionaEmpresa);
  end;
   FormSelecionaEmpresa.showModal;    
end;

procedure TREINFForm.btnNovoClick(Sender: TObject);
var
 CodcurrEmp1,IdMenuDesab1:Integer;
 PeridItemMenuUsuario1:string;
 codempAntes:Integer;
begin
 {if Codcurr>0 then 
    codempAntes:=Codcurr;
  
  DMR.qryUtil.close;
  DMR.qryUtil.SQL.Clear;
  DMR.qryUtil.SQL.Add('select * from perfil_2017');
  DMR.qryUtil.SQL.Add('where codperfil=:codperfil1 and ID_menu=:idmenu');
  DMR.qryUtil.SQL.Add('order by  id_menu desc');
  DMR.qryUtil.ParamByName('codperfil1').AsInteger :=IdMenu_Usuario;
  DMR.qryUtil.ParamByName('idmenu').AsInteger :=2;
  DMR.qryUtil.Open;


  CodcurrEmp1:=DMR.qryUtil.FieldByName('codemp').AsInteger;
  PeridItemMenuUsuario1:=DMR.qryUtil.FieldByName('permissao').AsString;
  IdMenuDesab1:=DMR.qryUtil.FieldByName('ID_Menu').AsInteger;

  if  (CodcurrEmp1<0) then
    begin
    if (IdMenuDesab1=2)and (PeridItemMenuUsuario1='N') then
            begin
             ShowMessage('Item de Menu não Liberado para o Usuário!');
             Abort;
            end;
    end
  else
  if  (CodcurrEmp1>0) and (CodcurrEmp1=Codcurr) then
   begin
     if (IdMenuDesab1=2)and (PeridItemMenuUsuario1='N') then
       begin
         ShowMessage('Item de Menu não Liberado para o Usuário!');
         Abort;
       end;
   end
  else
  if  (CodcurrEmp1>0) and (CodcurrEmp1<>Codcurr) then
   begin
    if (IdMenuDesab1=2)and (PeridItemMenuUsuario1='N') then
       begin
         ShowMessage('Item de Menu não Liberado para o Usuário!');
         Abort;
       end;
   end ;   

   if ((IdMenuDesab1=2)and (PeridItemMenuUsuario1='S')) or (NomeUsuario='') then
   begin
    If  not  assigned(EmpresasForm ) then
       Application.CreateForm(TEmpresasForm ,EmpresasForm);
     try
       EmpresasForm .ShowModal;

     finally
      FreeAndNil(EmpresasForm );
     end;
   end;
  if codempAntes>0 then  
    Codcurr:=codempAntes;   }

    If  not  assigned(formContribuintes ) then
       Application.CreateForm(TformContribuintes ,formContribuintes);
     try
       formContribuintes .ShowModal;

     finally
      FreeAndNil(formContribuintes );
     end;
end;

procedure TREINFForm.btnSairClick(Sender: TObject);

begin
Close;
{  DMConexao.sqlConexaoBancos.Connected:=false;
  DMR.Conexao.Connected:=false;
  try
    if tipoBanco='Firebird' then
       copyfile(PChar(LocalBancodeDados ),PChar(REINFdir+'\Banco\BKP_REINF.FDB'),False);
  except
  end;
  OkDlgForm:=TOkDlgForm.Create(self);
  if OkDlgForm.showmodal=mrOk then
   begin
     try
       Application.Terminate;
    //
     except
     try
        fim.KillProcess;
     except
          on e: EAccessViolation do
        MessageDlg('Erro inesperado no sistema...' +  e.Message, MtError, [MbOk], 0);
     end;
     // on e: EAccessViolation do
       // MessageDlg('Erro inesperado no sistema...' +  e.Message, MtError, [MbOk], 0);
     end;
   end;  }
end;

procedure TREINFForm.tvmenuChange(Sender: TObject; Node: TTreeNode);
begin
  tvmenu.Selected.ImageIndex:=0;
  tvmenu.Selected.SelectedIndex:=1;
  tvmenu.Selected.ExpandedImageIndex:=2;
end;

procedure TREINFForm.tvmenuClick(Sender: TObject);
var
 Vcodigo:Integer;
 NoRaiz:TTreeNode;
 resp:Boolean;
 IdControle,IdControle_Novo,codcurrAntes:Integer;
 menutexto:string;
begin
 { menutexto:= tvmenu.Items[tvmenu.Selected.AbsoluteIndex].Text;
  //Testa se o item de Menu esta Habilitado para o usuario utilizar
  if IdUsuario>0 then
  begin
    if BuscaPermissaoIDMenu(menutexto)=False then
     begin
       ShowMessage('Item de Menu não Liberado para o Usuário!');
       Abort;
     end;
  end;
  if (tvmenu.Items[tvmenu.Selected.AbsoluteIndex].Text ='')  then
   begin
     tvmenu.Select(tvmenu.Items.Item[tvmenu.Selected.Parent.AbsoluteIndex],[]);
   end
  else    }
  // inicio menu cadastros
  // ************************
  // alíquotas
  if tvmenu.Items[tvmenu.Selected.AbsoluteIndex].Text ='Contribuintes' then
  begin
   If  not  assigned(formContribuintes ) then
       Application.CreateForm(TformContribuintes ,formContribuintes);
     try
       formContribuintes .ShowModal;

     finally
      FreeAndNil(formContribuintes );
     end;
    tvmenu.Select(tvmenu.Items.Item[tvmenu.Selected.Parent.AbsoluteIndex],[]);
  end
  else  
  if tvmenu.Items[tvmenu.Selected.AbsoluteIndex].Text ='Processos' then
  begin
   If  not  assigned(formCadProcessos ) then
       Application.CreateForm(TformCadProcessos ,formCadProcessos);
     try
       formCadProcessos .ShowModal;

     finally
      FreeAndNil(formCadProcessos );
     end;
    tvmenu.Select(tvmenu.Items.Item[tvmenu.Selected.Parent.AbsoluteIndex],[]);
  end 
   else 
   if tvmenu.Items[tvmenu.Selected.AbsoluteIndex].Text ='Beneficiários' then
  begin
   If  not  assigned(FormCadBeneficiarios ) then
       Application.CreateForm(TFormCadBeneficiarios ,FormCadBeneficiarios);
     try
       FormCadBeneficiarios .ShowModal;

     finally
      FreeAndNil(FormCadBeneficiarios );
     end;
    tvmenu.Select(tvmenu.Items.Item[tvmenu.Selected.Parent.AbsoluteIndex],[]);
  end 
   else
   if tvmenu.Items[tvmenu.Selected.AbsoluteIndex].Text ='Retenção Previdenciária - Serviços Tomados' then
  begin
   If  not  assigned(FormCadRetCP_Serv_tomados ) then
       Application.CreateForm(TFormCadRetCP_Serv_tomados ,FormCadRetCP_Serv_tomados);
     try
       FormCadRetCP_Serv_tomados .ShowModal;

     finally
      FreeAndNil(FormCadRetCP_Serv_tomados );
     end;
    tvmenu.Select(tvmenu.Items.Item[tvmenu.Selected.Parent.AbsoluteIndex],[]);
  end 
   else
   if tvmenu.Items[tvmenu.Selected.AbsoluteIndex].Text ='Comercialização da Produção Rural' then
    begin
     If  not  assigned(FormCadComProdRural ) then
         Application.CreateForm(TFormCadComProdRural ,FormCadComProdRural);
       try
         FormCadComProdRural .ShowModal;

       finally
        FreeAndNil(FormCadComProdRural );
       end;
      tvmenu.Select(tvmenu.Items.Item[tvmenu.Selected.Parent.AbsoluteIndex],[]);
    end 
   else
   if tvmenu.Items[tvmenu.Selected.AbsoluteIndex].Text ='Parâmetros do Sistema' then
  begin
   If  not  assigned(formParametros ) then
       Application.CreateForm(TformParametros ,formParametros);
     try
       formParametros .ShowModal;

     finally
      FreeAndNil(formParametros );
     end;
    tvmenu.Select(tvmenu.Items.Item[tvmenu.Selected.Parent.AbsoluteIndex],[]);
  end 
   else 
    if tvmenu.Items[tvmenu.Selected.AbsoluteIndex].Text ='Conexão do REINF' then
  begin
   If  not  assigned(FormConexao ) then
       Application.CreateForm(TFormConexao ,FormConexao);
     try
       FormConexao .ShowModal;

     finally
      FreeAndNil(FormConexao );
     end;
    tvmenu.Select(tvmenu.Items.Item[tvmenu.Selected.Parent.AbsoluteIndex],[]);
  end; 
  // else 
 
 { if tvmenu.Items[tvmenu.Selected.AbsoluteIndex].Text ='Ativar/Desativar controle de usuários' then
  begin
     resp:=False;
     DMR.TabControle.close;
     DMR.TabControle.Open;

     DMR.qryUtil.close;
     DMR.qryUtil.SQL.Clear;
     DMR.qryUtil.SQL.Add('select max(ID)as ID from CONTROLE');
     DMR.qryUtil.Open;

     IdControle:= DMR.qryUtil.FieldByName('ID').Asinteger;
     IdControle_novo:=  IdControle+1;
     if (DMR.TabControle.Locate(('ID'),VarArrayOf([IdControle]),[loPartialKey])) then
     begin
       if DMR.TabControle.FieldByName('Ativar').AsString='S' then
          begin
             resp:= MessageDlg('Deseja Desativar o Usuário?', mtConfirmation,[mbYes, mbNo], 0) = mrYes;
             if  resp then
               begin
                  DMR.TabControle.close;
                  DMR.TabControle.open;
                  DMR.TabControle.Insert;
                  DMR.TabControle.FieldByName('ID').AsInteger:=IdControle_novo;
                  DMR.TabControle.FieldByName('Ativar').AsString:='N';
                  DMR.TabControle.FieldByName('DATA').AsString:=DateToStr(date);
                  DMR.TabControle.Post;
                  try
                     DMR.TabPerfil.ApplyUpdates();
                     DMR.TabPerfil.CommitUpdates;
                  except
                  end;
                  ShowMessage('Você deve fechar o sistema e entrar novamente!');
                  Exit;
               end;
              if not resp then
               begin
                  DMR.TabControle.close;
                  DMR.TabControle.open;
                  DMR.TabControle.Insert;
                  DMR.TabControle.FieldByName('ID').AsInteger:=IdControle_novo;
                  DMR.TabControle.FieldByName('Ativar').AsString:='S';
                  DMR.TabControle.FieldByName('DATA').AsString:=DateToStr(date);
                  DMR.TabControle.Post;
                  try
                    DMR.TabPerfil.ApplyUpdates();
                    DMR.TabPerfil.CommitUpdates;
                  except
                  end;
                 // ShowMessage('Você deve fechar o sistema e entrar novamente!');
                  Exit;
               end;
          end
       else
          begin
            if DMR.TabControle.FieldByName('Ativar').AsString='N' then
            begin
               resp:= MessageDlg('Deseja Ativar o Usuário?', mtConfirmation,[mbYes, mbNo], 0) = mrYes;
               if  resp then
               begin
                  DMR.TabControle.close;
                  DMR.TabControle.open;
                  DMR.TabControle.Insert;
                  DMR.TabControle.FieldByName('ID').AsInteger:=IdControle_novo;
                  DMR.TabControle.FieldByName('Ativar').AsString:='S';
                  DMR.TabControle.FieldByName('DATA').AsString:=DateToStr(date);
                  DMR.TabControle.Post;
                  try
                    DMR.TabPerfil.ApplyUpdates();
                    DMR.TabPerfil.CommitUpdates;
                  except
                  end;
                  ShowMessage('Você deve fechar o sistema e entrar novamente!');
                  Exit;
               end;
              if not resp then
               begin
                  DMR.TabControle.close;
                  DMR.TabControle.open;
                  DMR.TabControle.Insert;
                  DMR.TabControle.FieldByName('ID').AsInteger:=IdControle_novo;
                  DMR.TabControle.FieldByName('Ativar').AsString:='N';
                  DMR.TabControle.FieldByName('DATA').AsString:=DateToStr(date);
                  DMR.TabControle.Post;
                  try
                     DMR.TabPerfil.ApplyUpdates();
                     DMR.TabPerfil.CommitUpdates;
                  except
                  end;
                //  ShowMessage('Você deve fechar o sistema e entrar novamente!');
                  Exit;
               end;
            end
          end;
       tvmenu.Select(tvmenu.Items.Item[tvmenu.Selected.Parent.AbsoluteIndex],[]);
     end
     else
     begin
       resp:= MessageDlg('Deseja Ativar o Controle de Usuário?', mtConfirmation,[mbYes, mbNo], 0) = mrYes;
       if  resp then
        begin
            DMR.TabControle.Insert;
            DMR.TabControle.FieldByName('ID').AsInteger:=IdControle_novo;
            DMR.TabControle.FieldByName('Ativar').AsString:='S';
            DMR.TabControle.FieldByName('DATA').AsString:=DateToStr(date);
            DMR.TabControle.Post;
            DMR.TabControle.Refresh;
            ShowMessage('Senha padrão para o primeiro Acesso Usuário: "MASTER" e  Senha: "MASTER"!');
        end;
       if not resp then
        begin
            DMR.TabControle.Insert;
            DMR.TabControle.FieldByName('ID').AsInteger:=IdControle_novo;
            DMR.TabControle.FieldByName('Ativar').AsString:='N';
            DMR.TabControle.FieldByName('DATA').AsString:=DateToStr(date);
            DMR.TabControle.Post;
            DMR.TabControle.Refresh;
            ShowMessage('Você deve fechar o sistema e entrar novamente!');
        end;
     end;
     DMR.TabControle.Close;
     tvmenu.Select(tvmenu.Items.Item[tvmenu.Selected.Parent.AbsoluteIndex],[]);
  end
   else
  if tvmenu.Items[tvmenu.Selected.AbsoluteIndex].Text ='Manual do Usuário' then
     OpenPDF(REINFdir+'Manual do Usuário PIS/COFINS.pdf')
  else
  if tvmenu.Items[tvmenu.Selected.AbsoluteIndex].Text ='Leiaute de Integração TXT' then
    OpenPDF(REINFdir+'Leiaute de Integração do PIS/COFINS.pdf')
  else
  ///  Fim Configuração ////
  begin
    if (tvmenu.Selected.Parent<>nil) and
       (tvmenu.Items[tvmenu.Selected.AbsoluteIndex].Text<>'Cadastros') and
       (tvmenu.Items[tvmenu.Selected.AbsoluteIndex].Text<>'Apurações') and
       (tvmenu.Items[tvmenu.Selected.AbsoluteIndex].Text<>'Créditos') and
       (tvmenu.Items[tvmenu.Selected.AbsoluteIndex].Text<>'Relatórios') and
       (tvmenu.Items[tvmenu.Selected.AbsoluteIndex].Text<>'Integração') and
       (tvmenu.Items[tvmenu.Selected.AbsoluteIndex].Text<>'Configuração') and
       (tvmenu.Items[tvmenu.Selected.AbsoluteIndex].Text<>'Regime Cumulativo e não Cumulativo') 
    then tvmenu.Select(tvmenu.Items.Item[tvmenu.Selected.Parent.AbsoluteIndex],[]);
  end;     }
end;

procedure TREINFForm.tvmenuExpanding(Sender: TObject; Node: TTreeNode;var AllowExpansion: Boolean);
var
  x:Integer;
 // a,b:string;
begin
{ if DescMenu<>tvmenu.Items[tvmenu.Selected.AbsoluteIndex].Text then
 begin
  DescMenu:= tvmenu.Items[tvmenu.Selected.AbsoluteIndex].Text;
  x:= tvmenu.Items[tvmenu.Selected.AbsoluteIndex].Index;
  if tvmenu.Items[tvmenu.Selected.AbsoluteIndex].Text <>'' then
  tvmenu.Select(tvmenu.Items.Item[x],[]);
 end;                      }
end;
function TREINFForm.PegaXML(Texto: String; Campo: String): String;
var
Inicio,I,Tam: Integer;
begin
  if Pos('<'+UpperCase(Campo)+'>',UpperCase(Texto))>0 then
  begin
    Inicio:=0;
    Tam:=0;
    for I:=(Pos('<'+UpperCase(Campo)+'>',UpperCase(Texto))+1) to Length(Texto) do
    begin
      if (Inicio=0) and (Copy(Texto,I,1)='>') then Inicio:=I+1
      else if (Inicio>0) and (Copy(Texto,I,1)<>'<') then Inc(Tam);
      if (Inicio>0) and (Copy(Texto,I,1)='<') then Break;
    end;
    Result:=Copy(Texto,Inicio,Tam);
  end;
end;

procedure TREINFForm.GeraExcel(Consulta:TUniQuery);
var
coluna, linha: integer;
excel: variant;
valor: string;
begin
   try
    excel:=CreateOleObject('Excel.Application');
    excel.Workbooks.add(1);
   except
    Application.MessageBox ('Versão do Ms-Excel'+
    'Incompatível','Erro',MB_OK+MB_ICONEXCLAMATION);
   end;
   Consulta.First;
   try
    for linha:=0 to Consulta.RecordCount-1 do
    begin
      for coluna:=1 to Consulta.FieldCount do
      begin
      valor:= Consulta.Fields[coluna-1].AsString;
      try
         excel.cells [linha+2,coluna]:= StrToFloat(valor);
       except
         excel.cells [linha+2,coluna]:=valor;
       end;

      //excel.cells [linha+2,coluna]:=valor;
      end;
      Consulta.Next;
    end;
    for coluna:=1 to Consulta.FieldCount do
      begin
        valor:= Consulta.Fields[coluna-1].DisplayLabel;
        excel.cells[1,coluna]:=valor;
      end;
      excel.columns.AutoFit;
      excel.visible:=true;
   except
      Application.MessageBox ('Aconteceu um erro desconhecido durante a conversão'+
      'da tabela para o Ms-Excel','Erro',MB_OK+MB_ICONEXCLAMATION);
   end;
end;




end.

