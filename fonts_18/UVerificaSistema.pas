unit UVerificaSistema;

interface

uses
  Windows,wintypes,winprocs,Messages,SysUtils,Classes,Graphics,Controls,Forms,
  DBTables,Dialogs,stdctrls,ComCtrls,ExtCtrls,ShellAPI,TlHelp32,Variants,IniFiles,DB;

type
 Verifica= class
  public
    procedure setMenu;
    procedure ConectaBanco;
    procedure VerifVersao;
    procedure ExecuteProgram(Nome,Parametros:String);
    procedure ConectaBancoECF;
    procedure transfEmpresas ;

 end;

  struct=record
    Nome: string[100];
    Id: string[20];
    modulo: string[2];
    registrado: boolean;
    login:boolean;
   end;

  conexao=record
         TipoBanco: string[50];
         Banco: string[150];
         HostName: string[50];
         Usuario: string[50];
         Senha: string[20];
         Porta:string[20];
         Autenticacao:string[10];
      end;

 conexaoECF=record
         TipoBanco: string[50];
         Banco: string[150];
         HostName: string[50];
         Usuario: string[50];
         Senha: string[20];
         Porta:string[20];
         Autenticacao:string[10];
      end;


var
    dono:struct;
    arq: FILE of struct;
    resposta,nome,id,linha,dir:string;
    dono3: struct;
    arq1: FILE of struct;
    dono5: conexao;
    arq2: FILE of conexao;
    donoECF: conexaoECF;
    arqECF: FILE of conexaoECF;
    login:boolean;

implementation

Uses
  frm_REINF, UDM,UDMQuerysUteis, UDMScript;

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


procedure Verifica.setMenu;
begin
  // ArqRegistro:='PISCOFINS17.xml';
   Planilha:='PISCOFINS17.xls';
   REINFdir:=EXTRACTFILEPATH(PARAMSTR(0)); // caminho onde esta o executavel
   REINFexe:=EXTRACTFILEPATH(PARAMSTR(0)); // caminho onde esta o executavel
   Sistema:='PIS/COFINS';
   REINFForm.Color:= $E1E1E6;  //$EEE9E9; //clInfoBk ;
   REINFForm.Caption:='EFD -  REINF';
end;

procedure Verifica.VerifVersao;
var
  CaminhoTXT:TextFile;
  exepastabackup,inipastabackup,exeLocal,exeRede,iniLocal,iniRede,Mensagem:string;
  ini:TIniFile;
  exeDataLocal,exeDataRede,iniDataLocal,iniDataRede,Caminho:string;
  verificaSis:Verifica;
begin
  REINFdir:=EXTRACTFILEPATH(PARAMSTR(0));
  verificaSis:=verifica.create;
  if FileExists(REINFdir+'Atualiza.ini') then
  begin
      AssignFile(CaminhoTXT,REINFdir+'Atualiza.ini');
      Reset(CaminhoTXT);
      while not Eof(CaminhoTXT) do
        read(CaminhoTXT,Caminho);
      CloseFile(CaminhoTXT);
  end
  else Exit;
  ini :=TIniFile.Create(REINFdir+'Atualiza.ini');
  exeLocal := REINFdir+'PISCOFINS17.exe';
  exeRede  := Caminho+ '\PISCOFINS17.exe';
  try
    if FileExists(exeLocal) then
       exeDataLocal := FormatDateTime('dd/mm/yyyy hh:mm:ss', FileDateToDateTime(FileAge(exeLocal)));
    if FileExists(exeRede) then
       exeDataRede := FormatDateTime('dd/mm/yyyy hh:mm:ss',  FileDateToDateTime(FileAge(exeRede)));
  except
  end;
  // Verifica se a versão da Local do EXECUTÁVEL é menor do que a   disponível no Servidor
  // Se for, o sistema vai executar um aplicativo chamado
  // Atualizador.exe que estará no servidor e encerrará o
  // seu sistema, para que o mesmo seja atualizado.
  If exeDataLocal < exeDataRede then
     verificaSis.ExecuteProgram(REINFdir+'Atualiza16.Exe','');
End;

procedure Verifica.ExecuteProgram(Nome,Parametros:String);
Var
 Comando : Array[0..1024] of Char;
 Parms : Array[0..1024] of Char;
Begin
   StrPCopy(Comando,Nome);
   StrPCopy(Parms,Parametros);
   ShellExecute(0,nil,Comando,Parms,nil,sw_showmaximized);
End;

procedure Verifica.ConectaBanco;
var
  tabelaExiste: boolean;
begin
  login:=false;
  // arquivo de licenciamento
 { if fileexists(PisCofinsexe+arqregistro) then
   begin
      assignfile(arq1,PisCofinsexe+arqregistro);
      reset(arq1);
      read(arq1, dono3);
      closefile(arq1);
      modulo:=dono3.modulo ;
   end;            }

  // testa arquivo de conexao do banco de dados
  if fileexists(REINFexe+arqbanco) then
  begin
     try
       assignfile(arq2, REINFdir+'\'+arqbanco);
       reset(arq2);
       read(arq2,dono5);
     except
       assignfile(arq2, REINFdir+'\'+arqbanco);
       reset(arq2);
       read(arq2,dono5);
       if fileexists(dir+'\'+arqbanco) then
         DeleteFile(REINFexe+arqbanco);
       assignfile(arq,REINFexe+arqbanco);
       showmessage('Configure a Conexão com o Banco de Dados, no Menu - Configurações, opção Banco de Dados do PIS/COFINS.');
       Abort;
     end;
    try
     begin
       
       DM.Conexao.Connected:=false ;
      // DMConexaoInterface.sqlConexaoBancosInterface.Connected:=false;
       if not DM.Conexao.Connected then
       begin
         with DM.Conexao do
         begin
           DM.Conexao.Connected:=false;
           if dono5.TipoBanco='Oracle' then
            begin
              TipoBanco:='Oracle' ;
              DM.Conexao.Database:='';
              DM.Conexao.ProviderName:='Oracle';
              DM.Conexao.Server:= dono5.HostName + ':'+dono5.Porta+':'+dono5.Banco;
              DM.Conexao.Username:=dono5.Usuario;
              DM.Conexao.Password:=dono5.Senha;
              DM.Conexao.SpecificOptions.Values['Direct']:='True';
              try
                DM.Conexao.Connected:=true;
                DM.Conexao.Connected:=False;
              except
                DM.Conexao.SpecificOptions.Values['Direct']:='False';
                DM.Conexao.Database:='';
                DM.Conexao.ProviderName:='Oracle';
                DM.Conexao.Server:= dono5.HostName + ':'+dono5.Porta+'/'+dono5.Banco;
                DM.Conexao.Username:=dono5.Usuario;
                DM.Conexao.Password:=dono5.Senha;
                DM.Conexao.Connected:=true;
                DM.Conexao.Connected:=False;
              end;
            end
           else
          if dono5.TipoBanco='SQL Server' then
           begin
             TipoBanco:='SQL Server';
             DM.Conexao.ProviderName:='SQL Server';
             DM.Conexao.Server:=dono5.HostName;
             DM.Conexao.Database:=dono5.Banco;
             DM.Conexao.port:= StrToInt(dono5.porta) ;
             if dono5.Autenticacao='SQL Server' then
              begin
                 DM.Conexao.SpecificOptions.Values['Authentication']:='auServer'  ;
                 DM.Conexao.Username:=dono5.Usuario;
                 DM.Conexao.Password:=dono5.Senha;
              end
             else
             DM.Conexao.SpecificOptions.Values['Authentication']:='auWindows';
           end
          else
          if dono5.TipoBanco='Firebird' then
           begin
             DM.Conexao.ProviderName:='Interbase';
             DM.Conexao.Server:=dono5.HostName;
             DM.Conexao.Database:=dono5.Banco;
             LocalBancodeDados:=dono5.Banco;
             DM.Conexao.Username:='SYSDBA';
             DM.Conexao.Password:='masterkey';
             TipoBanco:='Firebird' ;
           end;
         end;
       end;
      // testa a conexão com o banco de dados 
      try
        DM.Conexao.Connected:=true;
        REINFForm.statusbar1.panels[0].Text:='Conexão: Ativa'+' - '+ TipoBanco;
        // testa se existe a tabela de empresas
        DMQuerysUteis.qryaux.SQL.Clear;
        DMQuerysUteis.qryaux.SQL.Add('select * from  CONTRIBUINTES_18');
        try
          DMQuerysUteis.qryaux.Open;
          tabelaExiste:=True;
        except
          tabelaExiste:=false;
        end;
      except  on E:exception  do
        begin
          ShowMessage('Não foi Possível Efetuar a Conexão. Verifique os Parâmetros Informados!' + E.Message);
          REINFForm.statusbar1.panels[0].Text:='Conexão: Não Ativa';
          Abort;
        end;
      end;
     end;
    except
      on e:EInOUtError do
      begin
        closefile(arq);
        DeleteFile(dir+'\'+arqbanco);
      end;
    end;
  end;

  // se não existe a tabela de empresas vai executar os scripts
  try
    DM.unContribuintes.Open;
  except
    if TipoBanco='Firebird'  then
     begin
       DMScript.TabelasFire.Execute;
       
       try
         DMScript.RegistrosFire.Execute;
       except
       end;
       
     end;
    if TipoBanco='Oracle'  then
     begin
       DMScript.TabelasOracle.Execute;
       
       try
         DMScript.RegistrosOracle.Execute;
       except
       end;
       
     end;
    if TipoBanco='SQL Server' then
     begin
       DMScript.TabelaSQLServer.Execute;
       
       try
         DMScript.RegistrosSQLServer.Execute;
       except
       end;
      
     end;
     DM.Conexao.Connected:=false;
     DM.Conexao.Connected:=true;
  end;

  try
    REINFForm.statusbar1.panels[0].Text:='Conexão: Ativa'+' - '+ TipoBanco;
    DM.Conexao.Connected:=true;
  except  on E:exception  do
    begin
       ShowMessage('Não foi Possível Efetuar a Conexão. Verifique os Parâmetros Informados!' + E.Message);
       REINFForm.statusbar1.panels[0].Text:='Conexão: Não Ativa';
       Abort;
    end;
  end;
end;

procedure Verifica.ConectaBancoECF;
var
  tabelaExiste: boolean;
begin
  login:=false;
  // arquivo de licenciamento
 { if fileexists(PisCofinsexe+arqregistro) then
   begin
      assignfile(arq1,PisCofinsexe+arqregistro);
      reset(arq1);
      read(arq1, dono3);
      closefile(arq1);
      modulo:=dono3.modulo ;
   end;            }

  // testa arquivo de conexao do banco de dados
  if fileexists(REINFexe+arqbancoecf) then
  begin
     try
       assignfile(arqecf, REINFdir+'\'+arqbancoecf);
       reset(arqecf);
       read(arqecf,donoECF);
     except
       assignfile(arqECF, REINFdir+'\'+arqbancoecf);
       reset(arqECF);
       read(arqECF,donoecf);
       if fileexists(dir+'\'+arqbancoecf) then
         DeleteFile(REINFexe+arqbancoecf);
       assignfile(arq,REINFexe+arqbancoecf);
       showmessage('Arquivo de configuração do banco do ECF não encontrado');
       Abort;
     end;
   { try
     begin
       DMECF.ConexaoECF.Connected:=false;
       DMConexaoInterface.sqlConexaoBancosInterface.Connected:=false;
       if not DMECF.ConexaoECF.Connected then
       begin
         with DMECF.Conexaoecf do
         begin
           DMECF.ConexaoECF.Connected:=false;
           if donoECF.TipoBanco='Oracle' then
            begin
              TipoBanco:='Oracle' ;
              DMECF.ConexaoECF.Database:='';
              DMECF.ConexaoECF.ProviderName:='Oracle';
              DMECF.ConexaoECF.Server:= donoECF.HostName + ':'+donoECF.Porta+':'+donoECF.Banco;
              DMECF.ConexaoECF.Username:=donoECF.Usuario;
              DMECF.ConexaoECF.Password:=donoECF.Senha;
              DMECF.ConexaoECF.SpecificOptions.Values['Direct']:='True';
              try
                DMECF.ConexaoECF.Connected:=true;
                DMECF.ConexaoECF.Connected:=False;
              except
                DMECF.ConexaoECF.SpecificOptions.Values['Direct']:='False';
                DMECF.ConexaoECF.Database:='';
                DMECF.ConexaoECF.ProviderName:='Oracle';
                DMECF.ConexaoECF.Server:= donoECF.HostName + ':'+donoECF.Porta+'/'+donoECF.Banco;
                DMECF.ConexaoECF.Username:=donoECF.Usuario;
                DMECF.ConexaoECF.Password:=donoECF.Senha;
                DMECF.ConexaoECF.Connected:=true;
                DMECF.ConexaoECF.Connected:=False;
              end;
            end
           else
          if donoECF.TipoBanco='SQL Server' then
           begin
             TipoBanco:='SQL Server';
             DMECF.ConexaoECF.ProviderName:='SQL Server';
             DMECF.ConexaoECF.Server:=donoECF.HostName;
             DMECF.ConexaoECF.Database:=donoECF.Banco;
             DMECF.ConexaoECF.port:= StrToInt(donoECF.porta) ;
             if dono5.Autenticacao='SQL Server' then
              begin
                 DMECF.ConexaoECF.SpecificOptions.Values['Authentication']:='auServer'  ;
                 DMECF.ConexaoECF.Username:=donoECF.Usuario;
                 DMECF.ConexaoECF.Password:=donoECF.Senha;
              end
             else
             DMECF.ConexaoECF.SpecificOptions.Values['Authentication']:='auWindows';
           end
          else
          if donoECF.TipoBanco='Firebird' then
           begin
             DMECF.ConexaoECF.ProviderName:='Interbase';
             DMECF.ConexaoECF.Server:=donoECF.HostName;
             DMECF.ConexaoECF.Database:=donoECF.Banco;
             LocalBancodeDados:=donoECF.Banco;
             DMECF.ConexaoECF.Username:='SYSDBA';
             DMECF.ConexaoECF.Password:='masterkey';
             TipoBanco:='Firebird' ;
           end;
         end;
       end;     
      // testa a conexão com o banco de dados
      try
        DMECF.ConexaoECF.Connected:=true;
        PisCofinsForm.statusbar1.panels[0].Text:='Conexão: Ativa'+' - '+ TipoBanco;

      except
      end;
     end;
    except
      on e:EInOUtError do
      begin
        closefile(arq);
        DeleteFile(dir+'\'+arqbancoecf);
      end;
    end;  }
    
  end;
end;

procedure Verifica.transfEmpresas ;
begin
{ConectaBancoECF;
if DMECF.ConexaoECF.Connected=False then
Abort;

  //rotina
  DMECF.EMPRESA_ECF.Close;
  DMECF.EMPRESA_ECF.Open;
  DMECF.EMPRESA_ECF.First;
  while not DMECF.EMPRESA_ECF.eof do
  begin
     DMR.qryUtil.Close;
     DMR.qryUtil.SQL.Clear;
     DMR.qryUtil.SQL.Add('select cnpj from EMPRESAS_2017 where codemp=:codcurr') ;
     DMR.qryUtil.ParamByName('codcurr').AsInteger:=DMECF.EMPRESA_ECF.FieldByName('codemp').AsInteger;
     DMR.qryUtil.Open;
     if DMR.qryUtil.eof then
     begin
       DMR.TabEmpresa.Open;
       DMR.TabEmpresa.Insert;
       DMR.TabEmpresa.FieldByName('CODEMP').AsInteger:= DMECF.EMPRESA_ECF.FieldByName('CODEMP').AsInteger;
       DMR.TabEmpresa.FieldByName('RSOCIAL').AsString:=DMECF.EMPRESA_ECF.FieldByName('RSOCIAL').AsString;
       DMR.TabEmpresa.FieldByName('CNPJ').AsString:= DMECF.EMPRESA_ECF.FieldByName('CNPJ').AsString;
       DMR.TabEmpresa.FieldByName('IEST').Asstring:= DMECF.EMPRESA_ECF.FieldByName('IEST').Asstring;
       DMR.TabEmpresa.FieldByName('RJUNTA').AsString:= DMECF.EMPRESA_ECF.FieldByName('RJUNTA').AsString;
       DMR.TabEmpresa.FieldByName('CODNATJUR').AsString:= DMECF.EMPRESA_ECF.FieldByName('CODNATJUR').AsString;
       DMR.TabEmpresa.FieldByName('CNAE').AsString:=DMECF.EMPRESA_ECF.FieldByName('CNAE').AsString;
       DMR.TabEmpresa.FieldByName('CODMUNIC').AsString:= DMECF.EMPRESA_ECF.FieldByName('CODMUNIC').AsString;
       DMR.TabEmpresa.FieldByName('ENDERECO').AsString:= DMECF.EMPRESA_ECF.FieldByName('ENDERECO').AsString;
       DMR.TabEmpresa.FieldByName('NUMERO').AsString:= DMECF.EMPRESA_ECF.FieldByName('NUMERO').AsString;
       DMR.TabEmpresa.FieldByName('COMPLEMENTO').AsString:= DMECF.EMPRESA_ECF.FieldByName('COMPLEMENTO').AsString;
       DMR.TabEmpresa.FieldByName('BAIRRO').AsString:= DMECF.EMPRESA_ECF.FieldByName('BAIRRO').AsString;
       DMR.TabEmpresa.FieldByName('CIDADE').AsString:= DMECF.EMPRESA_ECF.FieldByName('CIDADE').AsString;
       DMR.TabEmpresa.FieldByName('UF').AsString:= DMECF.EMPRESA_ECF.FieldByName('UF').AsString;
       DMR.TabEmpresa.FieldByName('CEP').AsString:= DMECF.EMPRESA_ECF.FieldByName('CEP').AsString;
       DMR.TabEmpresa.FieldByName('DDDFONE').AsString:= DMECF.EMPRESA_ECF.FieldByName('DDDFONE').AsString;
       DMR.TabEmpresa.FieldByName('FONE').AsString:= DMECF.EMPRESA_ECF.FieldByName('FONE').AsString;
       DMR.TabEmpresa.FieldByName('DDDFAX').AsString:= DMECF.EMPRESA_ECF.FieldByName('DDDFAX').AsString;
       DMR.TabEmpresa.FieldByName('FAX').AsString:= DMECF.EMPRESA_ECF.FieldByName('FAX').AsString;
       DMR.TabEmpresa.FieldByName('CXPOSTAL').AsString:= DMECF.EMPRESA_ECF.FieldByName('CXPOSTAL').AsString;
       DMR.TabEmpresa.FieldByName('UFCXPOSTAL').AsString:= DMECF.EMPRESA_ECF.FieldByName('UFCXPOSTAL').AsString;
       DMR.TabEmpresa.FieldByName('CEPCXPOSTAL').AsString:= DMECF.EMPRESA_ECF.FieldByName('CEPCXPOSTAL').AsString;
       DMR.TabEmpresa.FieldByName('EMAIL').AsString:=  DMECF.EMPRESA_ECF.FieldByName('EMAIL').AsString;
       DMR.TabEmpresa.Post;

       DMECF.qryUtilECF.close ;
       DMECF.qryUtilECF.SQL.Clear;
       DMECF.qryUtilECF.SQL.Add('Select * from Informacoes_ecf_17 where codemp=:cod');
       DMECF.qryUtilECF.ParamByName('cod').AsInteger:=DMECF.EMPRESA_ECF.FieldByName('codemp').AsInteger;
       DMECF.qryUtilECF.Open;

       DMR.Informacoes.Open;
       DMR.Informacoes.Insert;
       DMR.Informacoes.FieldByName('CODEMP').AsInteger:= DMECF.qryUtilECF.FieldByName('CODEMP').AsInteger;
       DMR.Informacoes.FieldByName('QUALIFICACAO').AsInteger:=DMECF.qryUtilECF.FieldByName('QUALIFICACAO').AsInteger;
       DMR.Informacoes.FieldByName('FORMATRIBUTACAO').AsInteger:=DMECF.qryUtilECF.FieldByName('FORMATRIBUTACAO').AsInteger;
       DMR.Informacoes.FieldByName('APURACAO').AsInteger:=DMECF.qryUtilECF.FieldByName('APURACAO').AsInteger;
       DMR.Informacoes.FieldByName('DATAINICIAL').AsDateTime:=DMECF.qryUtilECF.FieldByName('DATAINICIAL').AsDateTime;
       DMR.Informacoes.FieldByName('DATAFINAL').AsDateTime:=DMECF.qryUtilECF.FieldByName('DATAFINAL').AsDateTime;

       if (DMECF.qryUtilECF.FieldByName('QUALIFICACAO').AsInteger = 1) and (DMECF.qryUtilECF.FieldByName('FORMATRIBUTACAO').AsInteger=1) then
           DMR.Informacoes.FieldByName('PISCOFINSREGIME').AsString:= '01' else DMR.Informacoes.FieldByName('PISCOFINSREGIME').AsString:= '03' ;

       DMR.Informacoes.Post;
     end;


   DMECF.EMPRESA_ECF.Next;
  end;       }
end;



end.

