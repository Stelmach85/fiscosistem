unit UFormConexao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, SqlExpr, FMTBcd, DB, DBClient,
  Provider, DBCtrls, Grids, ValEdit, ExtCtrls, ComCtrls,ImgList, DBTables;

type
  TFormConexao = class(TForm)
    bvlBotoes: TBevel;
    sbGravar: TSpeedButton;
    sbCancelar: TSpeedButton;
    sbSair: TSpeedButton;
    sbConectar: TSpeedButton;
    stxDataBase: TStaticText;
    gbConexao: TGroupBox;
    lblUsuario: TLabel;
    lblSenha: TLabel;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    edtHostName: TEdit;
    StaticText1: TStaticText;
    stNomeDriver: TStaticText;
    edtPorta: TEdit;
    lblSelecioneDB: TLabel;
    cbBancoDados: TComboBox;
    cbAutenticacao: TComboBox;
    Label1: TLabel;
    edtNomeBanco: TEdit;
    StaticText2: TStaticText;
    procedure cbBancoDadosChange(Sender: TObject);
    procedure sbGravarClick(Sender: TObject);
    procedure sbConectarClick(Sender: TObject);
    procedure sbSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure sbCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
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

var
  FormConexao:TFormConexao;
  SQLConnection:TSqlConnection;
  dir,banco,tns,fonte,drive,database,usuario,senha,separador:string;
  salvo:boolean;
  dono:conexao;
  arq: FILE of conexao;
  
implementation

uses  frm_Reinf,  UVerificaSistema, UDM;

{$R *.dfm}

procedure TFormConexao.cbBancoDadosChange(Sender: TObject);
begin
 try
  if cbBancoDados.ItemIndex = 0 then
  Begin
    edtNomeBanco.Text:= 'XE';
    edtPorta.Text:= '1521';
    edtUsuario.text:= 'SYSTEM';
    Label1.visible:=false;
    cbAutenticacao.Visible:=False;
  end
  else
  if cbBancoDados.ItemIndex = 1 then
  Begin
    edtNomeBanco.Text:= 'ECF';
    edtPorta.Text:= '1433';
    edtUsuario.text:= 'sa';
    Label1.visible:=True;
    cbAutenticacao.Visible:=True;
  end
  else
  if (cbBancoDados.ItemIndex = 2) then
   begin
    edtUsuario.text:='SYSDBA';
    edtSenha.text:='******';
    edtUsuario.Enabled:=False;
    edtSenha.Enabled:=False;
    edtHostName.Text:='LocalHost';
    edtPorta.Text:='3050';
    edtNomeBanco.Text:=REINFdir +'Banco\REINF.FDB';
    cbAutenticacao.Visible:=False;
    edtUsuario.Enabled:=False;
    edtSenha.Enabled:=False;
   end;
 except
 end;
 if (cbBancoDados.ItemIndex = 0) or (cbBancoDados.ItemIndex = 1) then
 begin
   edtUsuario.Enabled:=True;
   edtSenha.Enabled:=True;
 end
 else
 begin
   edtUsuario.Enabled:=False;
   edtSenha.Enabled:=False;
 end;
end;

procedure TFormConexao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
try
if key = vk_down then
       begin
          key:=vk_tab;
          perform(wm_nextdlgctl,0,0);
       end;

   if key = vk_up then
       begin
          key:=vk_tab;
          perform(wm_nextdlgctl,1,0);
       end;
except

end;
end;

procedure TFormConexao.FormKeyPress(Sender: TObject; var Key: Char);
begin
 try
   If Key=#13 then
   begin
      Key:=#0;
      Perform (WM_NextDLGCTL,0,0);
   end;
 except
 end;
end;

procedure TFormConexao.FormShow(Sender: TObject);
var
 dir: string;
 e:EConvertError; 
begin
 try
  salvo:=false;
  GetDir(0,dir);
  if fileexists(REINFexe+arqbanco) then
   begin
     try
        assignfile(arq, REINFexe+arqbanco);
        reset(arq);
        read(arq,dono);
        if (dono.TipoBanco='Oracle') then
          begin
             cbBancoDados.ItemIndex:=0;
             cbAutenticacao.Visible:=False;
             Label1.Visible:=False;
          end
        else
        if (dono.TipoBanco='SQL Server') then
         begin
           cbBancoDados.ItemIndex:=1;
           Label1.Visible:=True;
           cbAutenticacao.Visible:=True;
           if dono5.Autenticacao='SQL Server' then
             cbAutenticacao.ItemIndex:=0
           else
           if dono5.Autenticacao='Windows NT' then
             cbAutenticacao.ItemIndex:=1
         end;
        if (dono5.TipoBanco='Firebird' ) then
         begin
           cbBancoDados.ItemIndex:=2;
           edtSenha.Enabled:=False;
           edtUsuario.Enabled:=False;
         end;
         edtHostName.Text:=dono.HostName;
         edtUsuario.Text:=dono.usuario;
         edtSenha.Text:=dono.senha;
         edtNomeBanco.Text:=dono.banco;
         edtPorta.Text:=dono.Porta;
     except on EConvertError do
         ShowMessage(E.Message);
     end;
   end;
 except on EConvertError do
   ShowMessage(E.Message);
 end;
end;

procedure TFormConexao.sbSairClick(Sender: TObject);
begin
 try
  DM.conexao.Connected:=false;
 except
 end;
 Close;
end;

procedure TFormConexao.sbCancelarClick(Sender: TObject);
begin
  DM.conexao.Connected:=false;
  close;
end;

procedure TFormConexao.sbConectarClick(Sender: TObject);
begin
 try
  if not DM.conexao.Connected then
  begin
   with DM.conexao do
    begin
      DM.conexao.Connected:=false;
      
      if dono.TipoBanco='Oracle' then
        begin
           TipoBanco:='Oracle' ;
           DM.Conexao.Database:='';
           DM.Conexao.ProviderName:='Oracle';
           DM.Conexao.Server:= dono.HostName + ':'+dono.Porta+': '+dono.Banco;//  ':1521: '+DMConexaoInterface.tblConexao.FieldByName('Nome_conexao').AsString;
           DM.Conexao.Username:=dono.Usuario;
           DM.Conexao.Password:=dono.Senha;
           DM.Conexao.SpecificOptions.Values['Direct']:='True';
           try
             DM.Conexao.Connected:=true;
             DM.Conexao.Connected:=False;
           except
               DM.Conexao.SpecificOptions.Values['Direct']:='False';
               DM.Conexao.Database:='';
               DM.Conexao.ProviderName:='Oracle';
               DM.Conexao.Server:= dono.HostName + ':'+dono.Porta+'/ '+dono.Banco;//  ':1521: '+DMConexaoInterface.tblConexao.FieldByName('Nome_conexao').AsString;
               DM.Conexao.Username:=dono.Usuario;
               DM.Conexao.Password:=dono.Senha;
               DM.Conexao.Connected:=true;
               DM.Conexao.Connected:=False;
           end;
        end
      else
      if dono.TipoBanco='SQL Server' then
        begin
           DM.Conexao.ProviderName:='SQL Server';
           DM.Conexao.Server:=dono.HostName;// DMConexaoInterface.tblConexao.FieldByName('host_name').AsString;
           DM.Conexao.Database:=dono.Banco;// DMConexaoInterface.tblConexao.FieldByName('Nome_conexao').AsString;
           if dono.Autenticacao='SQL Server' then
            begin
              DM.Conexao.SpecificOptions.Values['Authentication']:='auServer' ;
              DM.Conexao.Username:=dono.Usuario;
              DM.Conexao.Password:=dono.Senha;
            end
           else DM.Conexao.SpecificOptions.Values['Authentication']:='auWindows';
        end
      else
      if dono.TipoBanco='Firebird' then
        begin
           DM.Conexao.ProviderName:='Interbase';
           DM.Conexao.Server:=dono.HostName;
           DM.Conexao.Database:=dono.Banco;
           DM.Conexao.Username:=dono.Usuario;
           DM.Conexao.Password:=dono.Senha;
           DM.Conexao.Port:= StrToInt(dono.porta);
        end;
      try
        DM.conexao.Connected:=true;
        ShowMessage('Teste de Conexão foi bem Sucedida!');
        ReINFForm.statusbar1.panels[0].Text:='Conexão: Ativa';
      except  on E:exception  do
       begin
        ShowMessage('Não foi Possível Efetuar a Conexão. Verifique os Parâmetros Informados! '+ E.Message);
        REINFForm.statusbar1.panels[0].Text:='Conexão: Não Ativa';
        Abort;
       end;
      end;
    end;
  end
  else
  If Messagedlg('A Conexão já está Ativa. Deseja Desconectar?', MTConfirmation, [MBYes, MBNo],0)=MRYes then
     DM.conexao.Connected:=false;
 except
 end;
end;

procedure TFormConexao.sbGravarClick(Sender: TObject);
var
  AliasInfo:Tstringlist;
  aliasbanco: string;
begin
  if DM.conexao.Connected then
     DM.conexao.Connected:=false;
  try
    if fileexists(dir+'\'+arqbanco) then
       DeleteFile(REINFexe+arqbanco);
    assignfile(arq, REINFexe+'Banco.REINF');
    rewrite(arq);
    dono.tipoBanco:=cbBancoDados.Text;
    dono.banco:=edtNomeBanco.text;
    dono.Porta:=edtPorta.text;
    dono.HostName:=edtHostName.text;
    dono.usuario:=edtusuario.text;
    dono.senha:=edtsenha.text;
    if cbBancoDados.ItemIndex=1 then
      dono.Autenticacao:=cbAutenticacao.Text
    else
    if cbBancoDados.ItemIndex=2 then
     dono.Autenticacao:=''
    else
    if cbBancoDados.ItemIndex=0 then
       dono.Autenticacao:='Oracle';
    write(arq, dono);
    closefile(arq);
    ShowMessage('As Configurações foram Salvas!');
    salvo:=true;
  except
    ShowMessage('As Configurações foram Salvas!');
    salvo:=false;
    abort;
  end;
  DM.conexao.Connected:=false;
end;
end.
