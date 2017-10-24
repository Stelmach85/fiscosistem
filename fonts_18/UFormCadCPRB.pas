unit UFormCadCPRB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, CRGrid, ExtCtrls, StdCtrls, Buttons, DBCtrls,
  JvExStdCtrls, JvCombobox, JvDBCombobox, Mask, ComCtrls,db, JvExComCtrls;

type
  TFormCadCPRB = class(TForm)
    pgc1: TPageControl;
    ts1: TTabSheet;
    pnl1: TPanel;
    lbl1: TLabel;
    dbedtPERAPUR: TDBEdit;
    dbnvgr1: TDBNavigator;
    btnNovo: TBitBtn;
    btnGravar: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnFechar: TBitBtn;
    ts2: TTabSheet;
    lblDados: TLabel;
    lbledtArquivo: TLabeledEdit;
    btnLocalizar: TBitBtn;
    lbledtSeparador: TLabeledEdit;
    crdbgrdCPRB: TCRDBGrid;
    btnImportar: TBitBtn;
    btnExcel: TBitBtn;
    btnConsultar: TBitBtn;
    btnExcluir1: TBitBtn;
    btnSair: TBitBtn;
    lbl5: TLabel;
    cbbTPINSCESTAB: TJvDBComboBox;
    lbl4: TLabel;
    dbedtNRINSCESTAB: TDBEdit;
    dbedtVLRRECBRUTATOTAL: TDBEdit;
    lbl6: TLabel;
    lbl7: TLabel;
    dbedtVLRCPAPURTOTAL: TDBEdit;
    lbl8: TLabel;
    dbedtVLRCPRBSUSPTOTAL: TDBEdit;
    OpenArquivo: TOpenDialog;
    pnl2: TPanel;
    pgc2: TPageControl;
    ts3: TTabSheet;
    pnl3: TPanel;
    lbl12: TLabel;
    lbl16: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    lbl2: TLabel;
    dbedtVLRBCCPRB: TDBEdit;
    cbbCODATIVECON: TJvDBComboBox;
    dbedtVLRRECBRUTAATIV: TDBEdit;
    dbedtVLREXCRECBRUTA: TDBEdit;
    dbedtVLRADICRECBRUTA: TDBEdit;
    dbedtVLRCPRBAPUR: TDBEdit;
    grp1: TGroupBox;
    lbl21: TLabel;
    lbl3: TLabel;
    lbl9: TLabel;
    lbl11: TLabel;
    lbl13: TLabel;
    dbedtVLRAJUSTE: TDBEdit;
    dbedtDESCAJUSTE: TDBEdit;
    dbedtDTAJUSTE: TDBEdit;
    cbbTPAJUSTE: TJvDBComboBox;
    cbbCODAJUSTE: TJvDBComboBox;
    pnl31: TPanel;
    btnIncluir2: TBitBtn;
    btngravar2: TBitBtn;
    btnAlterar2: TBitBtn;
    btnExcluir2: TBitBtn;
    btncancelar2: TBitBtn;
    dbnvgr2: TDBNavigator;
    pnlgrp1: TPanel;
    btnIncluir3: TBitBtn;
    btnGravar3: TBitBtn;
    btnAlterar3: TBitBtn;
    btnExcluir3: TBitBtn;
    btnCancelar3: TBitBtn;
    dbnvgr3: TDBNavigator;
    ts4: TTabSheet;
    pnl4: TPanel;
    lbl27: TLabel;
    lbl28: TLabel;
    lbl29: TLabel;
    lbl30: TLabel;
    cbbTPPROC: TJvDBComboBox;
    dbedtVLRCPRBSUSP: TDBEdit;
    cbbCODSUSP: TJvDBComboBox;
    pnl41: TPanel;
    btnIncluir4: TBitBtn;
    btnGravar4: TBitBtn;
    btnAlterar4: TBitBtn;
    btnExcluir4: TBitBtn;
    btnCancelar4: TBitBtn;
    dbnvgr4: TDBNavigator;
    cbbNRPROC: TJvDBComboBox;
    lblPeriodoConsulta: TLabel;
    medtPeriodo: TMaskEdit;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnIncluir2Click(Sender: TObject);
    procedure btngravar2Click(Sender: TObject);
    procedure btnIncluir3Click(Sender: TObject);
    procedure btnGravar3Click(Sender: TObject);
    procedure btnIncluir4Click(Sender: TObject);
    procedure btnGravar4Click(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure cbbTPINSCESTABChange(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAlterar2Click(Sender: TObject);
    procedure btncancelar2Click(Sender: TObject);
    procedure btnCancelar3Click(Sender: TObject);
    procedure btnAlterar3Click(Sender: TObject);
    procedure btnAlterar4Click(Sender: TObject);
    procedure btnCancelar4Click(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnExcluir2Click(Sender: TObject);
    procedure btnExcluir3Click(Sender: TObject);
    procedure btnExcluir4Click(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnExcluir1Click(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure validaPeriodo(texto:string);
    procedure dbedtPERAPURExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtDTAJUSTEExit(Sender: TObject);
    procedure dbedtNRINSCESTABExit(Sender: TObject);
    procedure cbbNRPROCChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure medtPeriodoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadCPRB: TFormCadCPRB;
  errodata,alterando:Boolean;
  codAtiv : String;

implementation

uses frm_REINF, UDM, Wait, UVerificaSistema, UUtils, UDMCadCPRB;

{$R *.dfm}

procedure TFormCadCPRB.btnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFormCadCPRB.btnImportarClick(Sender: TObject);
var
 VerificaSistema:Verifica;
 T:TStringList;
 I:integer;
 importou, temnivel1,temdetalhe:boolean;
 C,Linha:string;
 // nivel 1
registro,NrInscEstab,perApur,codAtivEcon,vlrRecBrutaAtiv,vlrExcRecBruta,VlrAdicRecBruta,VlrBCCPRB,VlrCPRBApur:string;
periodo:string;
codigo_Proc:Integer;
// nivel 2
TpAjuste,codajuste,vlrAjuste,descAjuste,dtajuste:string;
VlrAdicinal,VlrNRetAdic:string;
// nivel 3
NrProc,TpProc,codsusp,VlrCPRBSusp :string;

begin
  temnivel1:= False;
  temdetalhe:=False;

   if lbledtArquivo.Text='' then
   begin
     showmessage('Selecione o arquivo de importação.');
     lbledtArquivo.SetFocus;
   end
   else
   if lbledtSeparador.Text='' then
   begin
      showmessage('Informe o caracter separador de campo.');
      lbledtSeparador.SetFocus;
   end
   else
   begin
      try
           T:=TStringList.Create;
           T.LoadFromFile(lbledtArquivo.Text);
           c:=lbledtSeparador.Text;
      except
           ShowMessage('Arquivo não encontrado');
           Exit;

      end;
      Application.CreateForm(TWaitForm,WaitForm);
      WaitForm.jvspclprgrs1.Caption:='Importando os Processos.Aguarde...';
      WaitForm.Show;
      WaitForm.Update;
      try
         for i:=0 to T.Count-1 Do
         begin
           linha:=T[i];
              
           Registro:=copy(linha,1,pos(c,linha)-1);
           delete(linha,1,pos(c,linha));
           if registro='' then
           begin
              Exit;                  
           end;
                
           if not(copy(registro,1,6)='R-2060') then                
           begin
              ShowMessage('Este não é o arquivo de Contribuição Previdenciária sobre a Receita Bruta (R-2060) no leiaute da Fiscosistem');
              WaitForm.Close;
              Exit;
           end;
                   
           // nivel 1 
           if (Registro='R-2060-1') then
           begin
                
              perApur:=copy(linha,1,pos(c,linha)-1);
              delete(linha,1,pos(c,linha));

              NrInscEstab:=REINFForm.colocaMascara(copy(linha,1,pos(c,linha)-1));
              delete(linha,1,pos(c,linha));
                
              //IndObra:=copy(linha,1,pos(c,linha)-1);
              //delete(linha,1,pos(c,linha));
                  
              codAtivEcon:=copy(linha,1,pos(c,linha)-1);
              delete(linha,1,pos(c,linha));

              vlrRecBrutaAtiv:=copy(linha,1,pos(c,linha)-1);
              delete(linha,1,pos(c,linha));

              vlrExcRecBruta:=copy(linha,1,pos(c,linha)-1);
              delete(linha,1,pos(c,linha));

              VlrAdicRecBruta:=copy(linha,1,pos(c,linha)-1);
              delete(linha,1,pos(c,linha));

              VlrBCCPRB:=copy(linha,1,pos(c,linha)-1);
              delete(linha,1,pos(c,linha));

              VlrCPRBApur:=linha;

              if (NrInscEstab <> cnpjemp) and (Registro='R-2060-1') then
              begin
                  showmessage('CNPJ do Estabelecimento Não confere com o Contribuinte Cadastrado.');
                  WaitForm.Close;
                  Exit;
              end; 

              if Trim(perApur)= '' then
              begin
                 ShowMessage('Período de Apuração inválido');
                 WaitForm.Close;
                 Exit;
              end;

              if not ( (Copy(perApur,6,2)='01') or (Copy(perApur,6,2)='02') or (Copy(perApur,6,2)='03') or (Copy(perApur,6,2)='04') or (Copy(perApur,6,2)='05') 
                  or (Copy(perApur,6,2)='06')or (Copy(perApur,6,2)='07') or (Copy(perApur,6,2)='08') or (Copy(perApur,6,2)='09') or (Copy(perApur,6,2)='10')
                  or (Copy(perApur,6,2)='11') or (Copy(perApur,6,2)='12') or (Copy(perApur,6,2)='  ') )then
              begin
                 ShowMessage('Verifique o Mês informado, pois o mesmo está errado');
                 WaitForm.Close;
                 Exit;
              end ;

              if (StrToIntDef(Copy(perApur,1,4),0)=0)then
              begin
                 ShowMessage('Verifique o Ano informado, pois o mesmo está errado');
                 WaitForm.Close;
                 Exit;
              end;

              if Trim(codAtivEcon)= '' then
              begin
                 ShowMessage('Código ind. correspondente à atividade comercial, produto ou serviço sujeito a incidência da CPRB inválido');
                 WaitForm.Close;
                 Exit;
              end;

              DM.qryUtil.Close;
              DM.qryUtil.SQL.Clear;
              DM.qryUtil.SQL.Add('Select * from REF_ATIVECON where codigo=:cod') ;
              DM.qryUtil.ParamByName('cod').AsString:=codAtivEcon;              
              DM.qryUtil.Open;
              if DM.qryUtil.Eof then
              begin
                 ShowMessage('O Código da Atividade Econômica não foi encontrado na tabela referencial do sistema');
                 WaitForm.Close;
                 Exit
              end;

              if (Trim(vlrRecBrutaAtiv) = '') or (Trim(VlrBCCPRB) = '') or (Trim(VlrCPRBApur) = '')  then
              begin
                 ShowMessage('Arquivo contem registro obrigatórios em branco');
                 WaitForm.Close;
                 Exit;
              end;

              if DMCadCPRB.unCadCPRB.Locate(('CODIGO;PERAPUR;NRINSCESTAB'),VarArrayOf([codcurr,perApur,nrinscEstab]),[loCaseInsensitive]) then
              begin
                 temnivel1:= True;  
              end                                          
              else
              Begin                      
                 DMCadCPRB.unCadCPRB.Insert;                 
                 DMCadCPRB.unCadCPRB.FieldByName('CODIGO').AsInteger:=  Codcurr;
                 DMCadCPRB.unCadCPRB.FieldByName('PERAPUR').AsString:=  perapur;    
                 DMCadCPRB.unCadCPRB.FieldByName('NRINSCESTAB').AsString:= NrInscEstab;
                 DMCadCPRB.unCadCPRB.FieldByName('TPINSCESTAB').AsString:= tipoInscEmp;
                 DMCadCPRB.unCadCPRB.FieldByName('VLRRECBRUTATOTAL').AsFloat:=  0;
                 DMCadCPRB.unCadCPRB.FieldByName('VLRCPAPURTOTAL').AsFloat:=  0;
                 DMCadCPRB.unCadCPRB.FieldByName('VLRCPRBSUSPTOTAL').AsFloat:=  0;                                          
                 try
                   DMCadCPRB.unCadCPRB.Post;
                   temnivel1:= True; 
                 except        
                    Showmessage('Problemas na inserção dos dados no Cadastro do CPRB. Verifique os dados!');
                    exit;
                 end;
              End;
              
              if DMCadCPRB.unDetalhereceita.Locate(('CODIGO;PERAPUR;NRINSCESTAB;CODATIVECON'),VarArrayOf([codcurr,perApur,nrinscEstab,codAtivEcon]),[loCaseInsensitive]) then
              begin
                   
              end                                          
              else
              Begin     
                 DMCadCPRB.unDetalhereceita.Insert;
                 DMCadCPRB.unDetalhereceita.FieldByName('codigo').AsInteger:=Codcurr;
                 DMCadCPRB.unDetalhereceita.FieldByName('perapur').AsString:=perapur;
                 DMCadCPRB.unDetalhereceita.FieldByName('NrInscEstab').AsString := NrInscEstab;             
                 DMCadCPRB.unDetalhereceita.FieldByName('codAtivEcon').AsString:=codAtivEcon;
                 DMCadCPRB.unDetalhereceita.FieldByName('vlrRecBrutaAtiv').AsFloat:=StrToFloatDef(vlrRecBrutaAtiv,0);
                 DMCadCPRB.unDetalhereceita.FieldByName('vlrExcRecBruta').AsFloat:=StrToFloatDef(vlrExcRecBruta,0);
                 DMCadCPRB.unDetalhereceita.FieldByName('vlrAdicRecBruta').AsFloat:=StrToFloatDef(vlrAdicRecBruta,0);
                 DMCadCPRB.unDetalhereceita.FieldByName('vlrBCCPRB').AsFloat:=StrToFloatDef(vlrBCCPRB,0);
                 DMCadCPRB.unDetalhereceita.FieldByName('vlrCPRBApur').AsFloat:=StrToFloatDef(vlrCPRBApur,0);
                 try
                   DMCadCPRB.unDetalhereceita.Post;
                 except
                    Showmessage('Problemas na inserção dos dados nos Detalhes da Receita. Verifique os dados!');
                    exit;
                 end;
              End;
           end;

           // nivel 2
           if (Registro='R-2060-2') then
           begin              

              if not(temNivel1) then
              begin                         
                 ShowMessage('Deve haver um registro R-2060-1 antes');
                 WaitForm.Close;
                 Exit;
              end;  
                
              TpAjuste:=copy(linha,1,pos(c,linha)-1);
              delete(linha,1,pos(c,linha)); 

              codAjuste:=copy(linha,1,pos(c,linha)-1);
              delete(linha,1,pos(c,linha)); 

              VlrAjuste:=copy(linha,1,pos(c,linha)-1);
              delete(linha,1,pos(c,linha)); 

              descAjuste:=copy(linha,1,pos(c,linha)-1);
              delete(linha,1,pos(c,linha));           

              dtAjuste:=linha;

              if Tpajuste='' then
              begin
                ShowMessage('Código corresp. ao tipo de Ajuste em branco');
                WaitForm.Close;
                Exit;
              end;

              if codAjuste='' then
              begin
                ShowMessage('Código do Ajuste em branco');
                WaitForm.Close;
                Exit;
              end;

              if (vlrAjuste='') then
              begin
                ShowMessage('Valor do Ajuste em branco');
                WaitForm.Close;
                Exit;
              end;

              if (descAjuste = '') then
              begin
                ShowMessage('Descrição Resumida do Ajuste em branco');
                WaitForm.Close;
                Exit;
              end;
                  
              if DMCadCPRB.unAjustesReceita.Locate(('CODIGO;PERAPUR;NRINSCESTAB;CODATIVECON;TPAJUSTE;CODAJUSTE'),VarArrayOf([codcurr,perApur,nrinscEstab,codAtivEcon,TpAjuste,codAjuste]),[loCaseInsensitive]) then
              begin
                   
              end
              else
              begin
                 DMCadCPRB.unAjustesReceita.Insert;
                 DMCadCPRB.unAjustesReceita.FieldByName('codigo').AsInteger:=Codcurr;
                 DMCadCPRB.unAjustesReceita.FieldByName('perapur').AsString:=perapur;
                 DMCadCPRB.unAjustesReceita.FieldByName('NrInscEstab').AsString := NrInscEstab;             
                 DMCadCPRB.unAjustesReceita.FieldByName('codAtivEcon').AsString:=codAtivEcon;
                 DMCadCPRB.unAjustesReceita.FieldByName('tpAjuste').AsString:=tpAjuste;
                 DMCadCPRB.unAjustesReceita.FieldByName('codAjuste').AsString:=codAjuste;
                 DMCadCPRB.unAjustesReceita.FieldByName('vlrAjuste').AsFloat:= StrToFloatDef(Vlrajuste,0);
                 DMCadCPRB.unAjustesReceita.FieldByName('descAjuste').AsString:= descAjuste;
                 DMCadCPRB.unAjustesReceita.FieldByName('dtajuste').AsString:= dtAjuste;                 
                 try
                   DMCadCPRB.unAjustesReceita.Post;                   
                 except
                   Showmessage('Problemas na inserção dos dados nos Ajustes da Receita. Verifique os dados!');
                    exit;
                 end;
              end;
                                  
           end;

           // nivel 3
           if (Registro='R-2060-3') then
           begin 
           
              if not(temNivel1) then
              begin                         
                 ShowMessage('Deve haver um registro R-2060-1 antes');
                 WaitForm.Close;
                 Exit;
              end;  
                   
              NrProc:=copy(linha,1,pos(c,linha)-1);
              delete(linha,1,pos(c,linha));

              TpProc:=copy(linha,1,pos(c,linha)-1);
              delete(linha,1,pos(c,linha)); 

              codsusp:=copy(linha,1,pos(c,linha)-1);
              delete(linha,1,pos(c,linha)); 

              VlrCPRBSusp:=linha; 

              if NrProc='' then
              begin
                ShowMessage('Número do Processo Adm./Judicial em branco');
                WaitForm.Close;
                Exit;
              end;

              DM.qryUtil.Close;
              DM.qryUtil.SQL.Clear;
              DM.qryUtil.SQL.Add('Select * from PROCESSOS_18 where codigo=:cod and NRPROC=:proc and NRINSC=:nrinsc and PERAPUR=:perapur') ;
              DM.qryUtil.ParamByName('cod').AsInteger:=Codcurr;
              DM.qryUtil.ParamByName('proc').AsString:= NrProc;
              DM.qryUtil.ParamByName('nrinsc').AsString:= NrInscEstab;
              DM.qryUtil.ParamByName('perapur').AsString:= PerApur;
              DM.qryUtil.Open;
              if DM.qryUtil.Eof then
              begin
                 ShowMessage('O Número do Processo deve estar cadastrado nos Processos para este Contribuinte, no período da importação');
                 WaitForm.Close;
                 Exit
              end;

              if TpProc='' then
              begin
                ShowMessage('Tipo de Processo em branco');
                WaitForm.Close;
                Exit;
              end;

              DM.qryUtil.Close;
              DM.qryUtil.SQL.Clear;
              DM.qryUtil.SQL.Add('Select * from PROCESSOS_18 where codigo=:cod and NRPROC=:proc and TPPROC=:tpproc and NRINSC=:nrinsc and PERAPUR=:perapur') ;
              DM.qryUtil.ParamByName('cod').AsInteger:=Codcurr;
              DM.qryUtil.ParamByName('proc').AsString:= NrProc;
              DM.qryUtil.ParamByName('tpproc').AsString:= TpProc;
              DM.qryUtil.ParamByName('nrinsc').AsString:= NrInscEstab;
              DM.qryUtil.ParamByName('perapur').AsString:= PerApur;
              DM.qryUtil.Open;
              if DM.qryUtil.Eof then
              begin
                 ShowMessage('O Tipo do Processo deve ser o mesmo associado ao Número do Processo: ' + nrProc);
                 WaitForm.Close;
                 Exit
              end;

              if codSusp='' then
              begin
                ShowMessage('Código indicativo de Suspensão em branco');
                WaitForm.Close;
                Exit;
              end;

              DM.qryUtil.Close;
              DM.qryUtil.SQL.Clear;
              DM.qryUtil.SQL.Add('Select * from PROCESSOS_18 where codigo=:cod and NRPROC=:proc and CODSUSP=:codSusp and NRINSC=:nrinsc and PERAPUR=:perapur') ;
              DM.qryUtil.ParamByName('cod').AsInteger:=Codcurr;
              DM.qryUtil.ParamByName('proc').AsString:= NrProc;
              DM.qryUtil.ParamByName('codSusp').AsString:= codSusp;
              DM.qryUtil.ParamByName('nrinsc').AsString:= NrInscEstab;
              DM.qryUtil.ParamByName('perapur').AsString:= PerApur;
              DM.qryUtil.Open;
              if DM.qryUtil.Eof then
              begin
                 ShowMessage('O Código da Suspensão deve ser o mesmo associado ao Número do Processo: ' + nrProc);
                 WaitForm.Close;
                 Exit
              end;

              if vlrCPRBSusp='' then
              begin
                ShowMessage('Valor da Contribuição Previdenciária com exigibilidade suspensa em branco');
                WaitForm.Close;
                Exit;
              end;                     
                  
              
              if DMCadCPRB.unProcessosReceita.Locate(('CODIGO;PERAPUR;NRINSCESTAB;NRPROC'),VarArrayOf([codcurr,perApur,nrinscEstab,NrProc]),[loCaseInsensitive]) then
              begin
                  
              end
              else
              begin                                           
                 DMCadCPRB.unProcessosReceita.Insert;
                 DMCadCPRB.unProcessosReceita.FieldByName('CODIGO').AsInteger:=  Codcurr;
                 DMCadCPRB.unProcessosReceita.FieldByName('PERAPUR').AsString:=  perapur;    
                 DMCadCPRB.unProcessosReceita.FieldByName('NRINSCESTAB').AsString:= NrInscEstab;
                 DMCadCPRB.unProcessosReceita.FieldByName('nrProc').AsString:=  NrProc;               
                 DMCadCPRB.unProcessosReceita.FieldByName('tpproc').AsInteger:= StrToInt(TpProc);
                 DMCadCPRB.unProcessosReceita.FieldByName('codSusp').AsString:= codsusp;
                 DMCadCPRB.unProcessosReceita.FieldByName('vlrCPRBSusp').AsFloat:= StrToFloatDef(VlrCPRBSusp,0); 
                 try
                   DMCadCPRB.unProcessosReceita.Post;
                 except
                   Showmessage('Problemas na inserção dos dados nos Processos da Receita. Verifique os dados!');
                    exit;
                 end;
              end;             

           end;
         end;      
         WaitForm.Close;
         ShowMessage('Importação efetuada com sucesso');
         medtPeriodo.SetFocus;
      finally
        WaitForm.Close;
      end;
    end;



end;

procedure TFormCadCPRB.btnIncluir2Click(Sender: TObject);
begin
  try
    if DMCadCPRB.unCadCPRB.FieldByName('CODIGO').AsInteger<1 then
    begin
      ShowMessage('Informe os dados da Contribuição Previdnciária sobre a Receita Bruta, primeiro');
      Exit;
    end;
  except
     ShowMessage('Informe os dados da Contribuição Previdnciária sobre a Receita Bruta, primeiro');
     Exit;
  end;

  DMCadCPRB.unDetalheReceita.Insert;
  DMCadCPRB.unDetalheReceita.FieldByName('Codigo').AsInteger:= Codcurr;
  DMCadCPRB.unDetalheReceita.FieldByName('PerApur').AsString:= DMCadCPRB.unCadCPRB.FieldByName('PERAPUR').AsString;
  DMCadCPRB.unDetalheReceita.FieldByName('NRINSCESTAB').AsString:= DMCadCPRB.unCadCPRB.FieldByName('NRINSCESTAB').AsString;
  DMCadCPRB.unDetalheReceita.FieldByName('vlrRecBrutaAtiv').AsFloat:=0.00;
  DMCadCPRB.unDetalheReceita.FieldByName('vlrExcRecBruta').AsFloat:=0.00;
  DMCadCPRB.unDetalheReceita.FieldByName('vlrAdicRecBruta').AsFloat:=0.00; 
  DMCadCPRB.unDetalheReceita.FieldByName('vlrBcCPRB').AsFloat:=0.00; 
  DMCadCPRB.unDetalheReceita.FieldByName('vlrCPRBapur').AsFloat:=0.00;
 
  pnl3.Enabled := true;

  btnExcluir2.Enabled:=False;
  btnAlterar2.Enabled:=False;
  btnCancelar2.Enabled:=True;
  btngravar2.Enabled:=True;
  dbnvgr2.Enabled:=False;
  DesabilitaBotoesAux(Self);
end;

procedure TFormCadCPRB.btnIncluir3Click(Sender: TObject);
begin
  try
    if DMCadCPRB.unDetalheReceita.FieldByName('CODIGO').AsInteger<1 then
    begin
      ShowMessage('Informe os dados do Documento primeiro');
      Exit;
    end;
  except
     ShowMessage('Informe os dados do Documento primeiro');
     Exit;
  end;

  DMCadCPRB.unAjustesReceita.Insert;
  DMCadCPRB.unAjustesReceita.FieldByName('Codigo').AsInteger:= Codcurr;
  DMCadCPRB.unAjustesReceita.FieldByName('PerApur').AsString:= DMCadCPRB.unCadCPRB.FieldByName('PERAPUR').AsString;
  DMCadCPRB.unAjustesReceita.FieldByName('NRINSCESTAB').AsString:= DMCadCPRB.unCadCPRB.FieldByName('NRINSCESTAB').AsString;
  DMCadCPRB.unAjustesReceita.FieldByName('CODATIVECON').AsString:= cbbCODATIVECON.Field.Value;
  DMCadCPRB.unAjustesReceita.FieldByName('vlrAjuste').AsFloat:=0.00;
 
  grp1.Enabled := true;

  btnExcluir3.Enabled:=False;
  btnAlterar3.Enabled:=False;
  btnCancelar3.Enabled:=True;
  btngravar3.Enabled:=True;
  dbnvgr3.Enabled:=False;
  DesabilitaBotoesAux(Self);
end;

procedure TFormCadCPRB.btnIncluir4Click(Sender: TObject);
var
novoCodigo:Integer;
begin
  try
    if DMCadCPRB.unCadCPRB.FieldByName('CODIGO').AsInteger<1 then
    begin
       ShowMessage('Informe os dados da Contribuição Previdnciária sobre a Receita Bruta, primeiro');
       Exit;
    end;
  except
     ShowMessage('Informe os dados da Contribuição Previdnciária sobre a Receita Bruta, primeiro');
     Exit;
  end;

  DMCadCPRB.unProcessosReceita.Insert;
  DMCadCPRB.unProcessosReceita.FieldByName('Codigo').AsInteger:= Codcurr;
  DMCadCPRB.unProcessosReceita.FieldByName('PerApur').AsString:= DMCadCPRB.unCadCPRB.FieldByName('PERAPUR').AsString;
  DMCadCPRB.unProcessosReceita.FieldByName('NRINSCESTAB').AsString:= DMCadCPRB.unCadCPRB.FieldByName('NRINSCESTAB').AsString;
  DMCadCPRB.unProcessosReceita.FieldByName('vlrCPRBSusp').AsFloat:=0.00;

  pnl4.Enabled := true;  
  btnExcluir4.Enabled:=False;
  btnAlterar4.Enabled:=False;
  btnCancelar4.Enabled:=True;
  btngravar4.Enabled:=True;
  dbnvgr4.Enabled:=False;
  DesabilitaBotoesAux(Self);  
end;

procedure TFormCadCPRB.btnLocalizarClick(Sender: TObject);
begin
OpenArquivo.DefaultExt :='.TXT';
 OpenArquivo.InitialDir :='C:\';
 if OpenArquivo.Execute Then
    lbledtArquivo.Text:= OpenArquivo.FileName;
end;

procedure TFormCadCPRB.btnCancelar3Click(Sender: TObject);
begin
  DMCadCPRB.unAjustesReceita.Cancel;
 
  grp1.enabled:= false;

  btnExcluir3.Enabled:=True;
  btnAlterar3.Enabled:=True;
  btnIncluir3.Enabled:=True;
  btnCancelar3.Enabled:=False;
  btnGravar3.Enabled:=False;
  dbnvgr3.Enabled:=True;
  alterando:=False;
  HabilitaBotoesAux(Self);
  cbbTPAJUSTE.Enabled := true;
  cbbCODAJUSTE.Enabled := true; 
end;

procedure TFormCadCPRB.btnCancelar4Click(Sender: TObject);
begin
 DMCadCPRB.unProcessosReceita.Cancel;

 pnl4.Enabled := False;

 btnExcluir4.Enabled:=True;
 btnAlterar4.Enabled:=True;
 btnIncluir4.Enabled:=True;
 btnCancelar4.Enabled:=False;
 btnGravar4.Enabled:=False;
 dbnvgr4.Enabled:=True;
 alterando:=False;
 HabilitaBotoesAux(Self);
 cbbNRPROC.Enabled := true;
end;

procedure TFormCadCPRB.btnAlterar2Click(Sender: TObject);
begin
  if DMCadCPRB.unDetalheReceita.isEmpty then
  Begin
     ShowMessage('Não existe registro para alteração');
     Exit;
  End;
  DMCadCPRB.unDetalheReceita.Edit;
  pnl3.Enabled:= true;
 
  btnExcluir2.Enabled:=False;
  btnIncluir2.Enabled:=False;
  btnCancelar2.Enabled:=True;
  btnGravar2.Enabled:=True;
  dbnvgr2.Enabled:=False;
  btnAlterar2.Enabled:=False;
  alterando:=True;
  DesabilitaBotoesAux(Self);
  cbbCODATIVECON.Enabled := false;
end;

procedure TFormCadCPRB.btnAlterar3Click(Sender: TObject);
begin
  if DMCadCPRB.unAjustesReceita.isEmpty then
  Begin
     ShowMessage('Não existe registro para alteração');
     Exit;
  End;
  DMCadCPRB.unAjustesReceita.Edit;
  grp1.enabled:= true;

  btnExcluir3.Enabled:=False;
  btnIncluir3.Enabled:=False;
  btnCancelar3.Enabled:=True;
  btnGravar3.Enabled:=True;
  dbnvgr3.Enabled:=False;
  btnAlterar3.Enabled:=False;
  alterando:=True;
  DesabilitaBotoesAux(Self);
  cbbTPAJUSTE.Enabled := false;
  cbbCODAJUSTE.Enabled := false; 
end;

procedure TFormCadCPRB.btnAlterar4Click(Sender: TObject);
begin
  if DMCadCPRB.unProcessosReceita.isEmpty then
  Begin
     ShowMessage('Não existe registro para alteração');
     Exit;
  End;
  DMCadCPRB.unProcessosReceita.Edit;
  pnl4.Enabled:= true;
 
  btnExcluir4.Enabled:=False;
  btnIncluir4.Enabled:=False;
  btnCancelar4.Enabled:=True;
  btnGravar4.Enabled:=True;
  dbnvgr4.Enabled:=False;
  btnAlterar4.Enabled:=False;
  alterando:=True; 
  DesabilitaBotoesAux(Self);
  cbbNRPROC.Enabled := false;
end;

procedure TFormCadCPRB.btnAlterarClick(Sender: TObject);
begin
 DMCadCPRB.unCadCPRB.Edit;
 DesabilitaBotoesAux(Self);
 HabilitxW(Self, false, 'ALTERAR', DMCadCPRB.unCadCPRB);
 pnl1.Enabled:= true;
 dbnvgr1.Enabled:=False;
 
 alterando:=True;
 DesabilitaBotoesAux(Self);
 cbbTPINSCESTAB.enabled:= false;
 dbedtNRINSCESTAB.enabled := False;
 dbedtPERAPUR.Enabled := False;
end;

procedure TFormCadCPRB.btncancelar2Click(Sender: TObject);
begin
  DMCadCPRB.unDetalheReceita.Cancel;
  pnl3.Enabled := False;

  btnExcluir2.Enabled:=True;
  btnAlterar2.Enabled:=True;
  btnIncluir2.Enabled:=True;
  btnCancelar2.Enabled:=False;
  btnGravar2.Enabled:=False;
  dbnvgr2.Enabled:=True;
  alterando:=False;
  HabilitaBotoesAux(Self);
  cbbCODATIVECON.Enabled := true;
end;

procedure TFormCadCPRB.btnCancelarClick(Sender: TObject);
begin
  DMCadCPRB.unCadCPRB.Cancel; 
  HabilitxW(Self, false, 'CANCELAR', DMCadCPRB.unCadCPRB);
  alterando:=False; 
  HabilitaBotoesAux(Self);
  dbnvgr1.Enabled:=True;
  pnl1.Enabled:= false;
  cbbTPINSCESTAB.enabled:= True;
  dbedtNRINSCESTAB.enabled := True;
  dbedtPERAPUR.Enabled := True; 
end;

procedure TFormCadCPRB.btnConsultarClick(Sender: TObject);
var
  periodo: string;
begin
   If  Trim(medtPeriodo.text) = '-' then
   Begin
       Showmessage('Verifique o período para a Consulta!');
       medtPeriodo.SetFocus;
       exit;
   End; 
  
   DMCadCPRB.unqryConsultaCPRB.Close;
   DMCadCPRB.unqryConsultaCPRB.ParamByName('cod').AsInteger:=Codcurr;
   DMCadCPRB.unqryConsultaCPRB.ParamByName('perapur').AsString:=medtPeriodo.text;
   DMCadCPRB.unqryConsultaCPRB.Open;
   medtPeriodo.SetFocus;
end;

procedure TFormCadCPRB.btnExcelClick(Sender: TObject);
var
  periodo: string;
begin
   If  Trim(medtPeriodo.text) = '-' then
   Begin
       Showmessage('Verifique o período para a Consulta!');
       medtPeriodo.SetFocus;
       exit;
   End;
  
   DMCadCPRB.unqryConsultaCPRB.Close;
   DMCadCPRB.unqryConsultaCPRB.ParamByName('cod').AsInteger:=Codcurr;
   DMCadCPRB.unqryConsultaCPRB.ParamByName('perapur').AsString:=medtPeriodo.text;
   DMCadCPRB.unqryConsultaCPRB.Open;
   REINFForm.GeraExcel(DMCadCPRB.unqryConsultaCPRB); 
   medtPeriodo.SetFocus;  
end;

procedure TFormCadCPRB.btnExcluir1Click(Sender: TObject);
var
  periodo: string;
begin
    try
      If MessageDLG ('Confirma Exclusão de todos registros  ???' +#13+ '', MTConfirmation, [MBYes, MBNo],0)=MRYes then
      Begin
         If  Trim(medtPeriodo.text) = '-' then
         Begin
            Showmessage('Verifique o período para a Consulta!');
            medtPeriodo.SetFocus;
            exit;
         End;

         DM.qryUtil.Close;
         DM.qryUtil.SQL.Clear;
         DM.qryUtil.SQL.Add('delete from CADCPRB_18 where codigo=:cod and perapur=:perapur')  ;
         DM.qryUtil.ParamByName('cod').AsInteger:=Codcurr;
         DM.qryUtil.ParamByName('perapur').AsString:=medtPeriodo.text;
         DM.qryUtil.Execute;
         ShowMessage('Dados Excluídos com sucesso');              
         DMCadCPRB.unCadCPRB.Close;
         DMCadCPRB.unDetalheReceita.Close;
         DMCadCPRB.unAjustesReceita.Close;
         DM.unProcessos.Close;
         DMCadCPRB.unProcessosReceita.Close;
         DMCadCPRB.unqryConsultaCPRB.Close;
         DMCadCPRB.unCadCPRB.Open;
         DMCadCPRB.unCadCPRB.AfterScroll(DMCadCPRB.dsCadCPRB.DataSet);
         btnConsultar.OnClick(self);
         medtPeriodo.SetFocus;
      End;
    except
       ShowMessage('Não há Dados para serem excluídos');
    end;
end;

procedure TFormCadCPRB.btnExcluir2Click(Sender: TObject);
begin
  try
    If MessageDLG ('Confirma Exclusão do Detalhe ' + '???' +#13+ '', MTConfirmation, [MBYes, MBNo],0)=MRYes then
     Begin
        DMCadCPRB.unDetalheReceita.Delete;
     End;
  except
    ShowMessage('Não existem dados para serem excluídos');
  end;
end;

procedure TFormCadCPRB.btnExcluir3Click(Sender: TObject);
begin
   try
      If MessageDLG ('Confirma Exclusão do Ajuste da Receita ' + '???' +#13+ '', MTConfirmation, [MBYes, MBNo],0)=MRYes then
       Begin
          DMCadCPRB.unAjustesReceita.Delete;
       End;
   except
      ShowMessage('Não existem dados para serem excluídos');
   end;
end;

procedure TFormCadCPRB.btnExcluir4Click(Sender: TObject);
begin
   try
      If MessageDLG ('Confirma Exclusão do Processo ' + '???' +#13+'', MTConfirmation, [MBYes, MBNo],0)=MRYes then
      Begin
          DMCadCPRB.unProcessosReceita.Delete;
      End;
   except
      ShowMessage('Não existem dados para serem excluídos');
   end;
end;

procedure TFormCadCPRB.btnExcluirClick(Sender: TObject);
begin
   try
     If MessageDLG ('Confirma Exclusão do registro ' + '???' +#13+ '', MTConfirmation, [MBYes, MBNo],0)=MRYes then
     Begin
          DMCadCPRB.unCadCPRB.Delete;
     End;
   except
      ShowMessage('Não existem dados para serem excluídos');
   end;
end;

procedure TFormCadCPRB.btngravar2Click(Sender: TObject);
begin
  if cbbCODATIVECON.Text='' then
  begin
    ShowMessage('Informe o código corresp. à ativ. comercial, produto ou serviço sujeito a incidência da CPRB');
    cbbCODATIVECON.SetFocus;
    Exit;
  end;
  if dbedtVlrRecBrutaAtiv.Text='' then
  begin
   ShowMessage('Informe o valor total da receita da atividade');
   dbedtVlrRecBrutaAtiv.SetFocus;
   Exit;
  end;

  if dbedtvlrCPRBapur.Text='' then
  begin
   ShowMessage('Preencher com o Valor Contribuição Previdenciária sobre a Receita Bruta');
   dbedtvlrCPRBapur.SetFocus;
   Exit;
  end;

  if alterando=False then
  begin
    DM.qryUtil.Close;
    DM.qryUtil.SQL.Clear;
    DM.qryUtil.SQL.Add('select * from detalheReceita_18 where');
    DM.qryUtil.SQL.Add(' codigo = :cod and perapur = :perApur and nrinscEstab = :nrInscEstab and codAtivEcon=:codAtivEcon');
    DM.qryUtil.ParamByName('cod').AsInteger:=Codcurr;
    DM.qryUtil.ParamByName('perApur').AsString:= dbedtPerApur.Text;
    DM.qryUtil.ParamByName('nrInscEstab').AsString:= dbedtNrInscEstab.Text;
    DM.qryUtil.ParamByName('codAtivEcon').AsString:= cbbCODATIVECON.Field.Value;
    DM.qryUtil.Open;
    if not DM.qryUtil.eof then
    begin
      ShowMessage('Já Existe um documento com estas informações ');
      Exit;
    end;
  end;
 
 
  DMCadCPRB.unDetalheReceita.Post;
  pnl3.enabled:= false;

  btnExcluir2.Enabled:=True;
  btnAlterar2.Enabled:=True;
  btnIncluir2.Enabled:=True;
  btnCancelar2.Enabled:=False;
  btnGravar2.Enabled:=False;
  dbnvgr2.Enabled:=True;
  alterando:=False;
  HabilitaBotoesAux(Self);
  cbbCODATIVECON.Enabled := true;
end;

procedure TFormCadCPRB.btnGravar3Click(Sender: TObject);
begin

  if cbbTPAJUSTE.Text='' then
  begin
    ShowMessage('Selecione o Tipo de Ajuste');
    cbbTPAJUSTE.SetFocus;
    Exit;
  end; 
  if cbbCODAJUSTE.Text='' then
  begin
    ShowMessage('Selecione o Código de Ajuste');
    cbbCODAJUSTE.SetFocus;
    Exit;
  end;
  if dbedtvlrAjuste.Text='' then
  begin
    ShowMessage('Informe o Valor do Ajuste ');
    dbedtvlrAjuste.SetFocus;
    Exit;
  end;
  if dbedtDescAjuste.Text='' then
  begin
    ShowMessage('Informe a Descrição Resumida do Ajuste ');
    dbedtDescAjuste.SetFocus;
    Exit;
  end;
  if Trim(dbedtDtAjuste.Text)='-' then
  begin
    ShowMessage('Informe o mês e ano do Ajuste ');
    dbedtDtAjuste.SetFocus;
    Exit;
  end;

  if alterando=false then
  begin
    DM.qryUtil.Close;
    DM.qryUtil.SQL.Clear;
    DM.qryUtil.SQL.Add('select * from ajustesReceita_18 where');
    DM.qryUtil.SQL.Add(' codigo = :cod and perapur = :perApur and nrinscEstab = :nrInscEstab and codAtivEcon=:codAtivEcon and tpAjuste=:tpAjuste and codAjuste=:codAjuste');
    DM.qryUtil.ParamByName('cod').AsInteger:=Codcurr;
    DM.qryUtil.ParamByName('perApur').AsString:= dbedtPerApur.Text;
    DM.qryUtil.ParamByName('nrInscEstab').AsString:= dbedtNrInscEstab.Text;
    DM.qryUtil.ParamByName('codAtivEcon').AsString:= cbbCODATIVECON.Field.Value;
    DM.qryUtil.ParamByName('tpAjuste').AsString:= cbbTPAJUSTE.Field.Value;
    DM.qryUtil.ParamByName('codAjuste').AsString:= cbbCODAJUSTE.Field.Value;
    DM.qryUtil.Open;
    if not DM.qryUtil.eof then
    begin
      ShowMessage('Ajuste já informado para este documento');
      Exit;
    end;
  end;
  
  DMCadCPRB.unAjustesReceita.Post;

  btnExcluir3.Enabled:=True;
  btnAlterar3.Enabled:=True;
  btnIncluir3.Enabled:=True;
  btnCancelar3.Enabled:=False;
  btnGravar3.Enabled:=False;
  dbnvgr3.Enabled:=True;
  grp1.Enabled:= false;
  alterando:=False;
  HabilitaBotoesAux(Self);
  cbbTPAJUSTE.Enabled := true;
  cbbCODAJUSTE.Enabled := true; 
end;

procedure TFormCadCPRB.btnGravar4Click(Sender: TObject);
begin
   if cbbNRPROC.Text='' then
   begin
     ShowMessage('Informe o número do Processo');
     cbbNRPROC.SetFocus;
     Exit;
   end;
   if cbbTPPROC.Text='' then
   begin
     ShowMessage('Informe o tipo do Processo');
     cbbTPPROC.SetFocus;
     Exit;
   end;
   if cbbCODSUSP.Text='' then
   begin
     ShowMessage('Informe o Código do Indicativo da Suspensão, atribuído pelo contribuinte');
     cbbCODSUSP.SetFocus;
     Exit;
   end;
   if dbedtVLRCPRBSUSP.Text='' then
   begin
     ShowMessage('Informe o Valor da Contribuição Previdenciária com exigibilidade suspensa');
     dbedtVLRCPRBSUSP.SetFocus;
     Exit;
   end;

   if alterando=false then
   begin
     DM.qryUtil.Close;
     DM.qryUtil.SQL.Clear;
     DM.qryUtil.SQL.Add('select * from ProcessosReceita_18 where');
     DM.qryUtil.SQL.Add(' codigo = :cod and perapur = :perApur and nrinscEstab = :nrInscEstab and nrProc=:nrProc');
     DM.qryUtil.ParamByName('cod').AsInteger:=Codcurr;
     DM.qryUtil.ParamByName('perApur').AsString:= dbedtPerApur.Text;
     DM.qryUtil.ParamByName('nrInscEstab').AsString:= dbedtNrInscEstab.Text;
     DM.qryUtil.ParamByName('nrProc').AsString:= cbbNRPROC.Field.Value;
     DM.qryUtil.Open;
     if not DM.qryUtil.eof then
     begin
       ShowMessage('Processo Receita já cadastrado para este período');
       Exit;
     end;
   end;
 
   DMCadCPRB.unProcessosReceita.Post;

   pnl4.enabled:= false;
  
   btnExcluir4.Enabled:=True;
   btnAlterar4.Enabled:=True;
   btnIncluir4.Enabled:=True;
   btnCancelar4.Enabled:=False;
   btnGravar4.Enabled:=False;
   dbnvgr4.Enabled:=True;
   alterando:=False; 
   HabilitaBotoesAux(Self);
   cbbNRPROC.Enabled := true;
end;

procedure TFormCadCPRB.btnGravarClick(Sender: TObject);
begin
  if cbbTPINSCESTAB.Text='' then
  begin
    ShowMessage('Informe o Tipo de Inscrição');
    cbbTPINSCESTAB.SetFocus;
    Exit;
  end;
  if (dbedtNRINSCESTAB.Text='  .   .   /    -  ') or (not ValidaCNPJ(dbedtNRINSCESTAB.Text)) then
  begin
    Showmessage('Número de inscrição do Estabelecimento inválido! Verifique o número digitado.');
    dbedtNRINSCESTAB.SetFocus;
    Exit;
  end;
  if dbedtPERAPUR.Text='    -  ' then
  begin
    ShowMessage('Informe o Período de Referência ');
    dbedtPERAPUR.SetFocus;
    Exit;
  end;
  if dbEdtVLRRECBRUTATOTAL.Text='' then
  begin
   ShowMessage('Informe o Valor da Receita Bruta Total');
   dbEdtVLRRECBRUTATOTAL.SetFocus;
   Exit;
  end;
  if dbEdtVLRcpapurTOTAL.Text='' then
  begin
   ShowMessage('Informe o Valor da Contr. Previd. sobre a Rec. Bruta apurada no período');
   dbEdtVLRcpapurTOTAL.SetFocus;
   Exit;
  end;

  if alterando = false then
   begin
       DM.qryUtil.Close;
       DM.qryUtil.SQL.Clear;
       DM.qryUtil.sql.Add(' select * from CadCPRB_18');
       DM.qryUtil.sql.Add(' where Codigo=:cod and NrInscEstab=:nroInsc and PerApur=:per');
       DM.qryUtil.ParamByName('cod').AsInteger:=Codcurr;
       DM.qryUtil.ParamByName('nroInsc').AsString:=dbedtNRINSCESTAB.Text;
       DM.qryUtil.ParamByName('per').AsString:=  dbedtPERAPUR.Text;
       DM.qryUtil.Open;
       if not DM.qryUtil.Eof then
       begin
         ShowMessage('Já existe um registro cadastrado neste período');
         Exit;
       end;
   end;
 
  DMCadCPRB.unCadCPRB.Post;
  HabilitxW(Self, false, 'GRAVAR', DMCadCPRB.unCadCPRB);
  alterando:=False;  
  HabilitaBotoesAux(Self);
  dbnvgr1.Enabled:=True;
  pnl1.Enabled:= false;
  cbbTPINSCESTAB.enabled:= True;
  dbedtNRINSCESTAB.enabled := True;
  dbedtPERAPUR.Enabled := True; 
end;

procedure TFormCadCPRB.btnNovoClick(Sender: TObject);
var
novoCodigo:Integer;
begin
   DMCadCPRB.unCadCPRB.Insert;
   DMCadCPRB.unCadCPRB.FieldByName('Codigo').AsInteger:= Codcurr;

   DMCadCPRB.unCadCPRB.FieldByName('VLRRECBRUTATOTAL').AsFloat:=  0;
   DMCadCPRB.unCadCPRB.FieldByName('VLRCPAPURTOTAL').AsFloat:=  0;
   DMCadCPRB.unCadCPRB.FieldByName('VLRCPRBSUSPTOTAL').AsFloat:=  0;

   pnl1.Enabled:= true;
   HabilitxW(Self, false, 'INSERIR', NIL);
   dbnvgr1.Enabled:=False;
   DesabilitaBotoesAux(Self);
end;

procedure TFormCadCPRB.btnSairClick(Sender: TObject);
begin
close;
end;


procedure TFormCadCPRB.cbbNRPROCChange(Sender: TObject);
begin
  //cbbTPPROC.ItemIndex := DM.unProcessosTPPROC.AsInteger - 1;
  cbbTPPROC.Field.Value := cbbNRPROC.ListSettings.DataSource.DataSet.FieldByName('TPPROC').AsVariant;
end;

procedure TFormCadCPRB.cbbTPINSCESTABChange(Sender: TObject);
begin
  if cbbTPINSCESTAB.Text='1 - CNPJ' then
  begin
    DMCadCPRB.unCadCPRBNRINSCESTAB.EditMask:='99.999.999/9999-99;1; ';
    cbbTPINSCESTAB.ItemIndex:=0;
  end
  else 
  begin  
    DMCadCPRB.unCadCPRBNRINSCESTAB.EditMask:='99.999.999/9999-99;1; ' ;
    cbbTPINSCESTAB.ItemIndex:=1;
  end;
end;

procedure TFormCadCPRB.dbedtDTAJUSTEExit(Sender: TObject);
begin
  if Trim(dbedtDTAJUSTE.text) <> '-' then
     validaPeriodo(Copy(dbedtDTAJUSTE.text,6,2));
  if errodata then
    dbedtDTAJUSTE.SetFocus;
end;

procedure TFormCadCPRB.dbedtNRINSCESTABExit(Sender: TObject);
begin
   if Trim(dbedtNRINSCESTAB.Text) <> '../-' then
   Begin
      if not ValidaCNPJ(dbedtNRINSCESTAB.Text) then
      Begin
         Showmessage('Número de inscrição do Estabelecimento inválido! Verifique o número digitado.');
         dbedtNRINSCESTAB.SetFocus;
      End;         
   End;
end;

procedure TFormCadCPRB.dbedtPERAPURExit(Sender: TObject);
begin
 if Trim(dbedtPERAPUR.text) <> '-' then
    validaPeriodo(Copy(dbedtPERAPUR.text,6,2));
 if errodata then
   dbedtPERAPUR.SetFocus;
end;

procedure TFormCadCPRB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DMCadCPRB.unRefAtivEcon.Close;   
  DMCadCPRB.unCadCPRB.Close;
  DMCadCPRB.unDetalheReceita.Close;
  DMCadCPRB.unAjustesReceita.Close;
  DM.unProcessos.Close;
  DMCadCPRB.unProcessosReceita.Close;
  DMCadCPRB.unqryConsultaCPRB.Close;
end;

procedure TFormCadCPRB.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //verifica se a tecla pressionada é a tecla ENTER, conhecida como #13 
  If key = #13 then Begin 
    //se for, passa o foco para o próximo campo, zerando o valor da variável Key 
    Key:= #0; 
    Perform(Wm_NextDlgCtl,0,0); 
  end; 
end;

procedure TFormCadCPRB.FormShow(Sender: TObject);
begin
    DesabilitaCampos(self);
    grp1.Enabled := False;

    DMCadCPRB.unRefAtivEcon.Open;   
    
    DMCadCPRB.unCadCPRB.Close;
    DMCadCPRB.unCadCPRB.FilterSQL:='Codigo='+ IntToStr(Codcurr);
    DMCadCPRB.unCadCPRB.Filtered:=True;
    DMCadCPRB.unCadCPRB.Open;

    DMCadCPRB.unqryConsultaCPRB.Close;
    DMCadCPRB.unqryConsultaCPRB.ParamByName('cod').AsInteger:=Codcurr;
    DMCadCPRB.unqryConsultaCPRB.Open;
    
    {DMCadCPRB.unDetalheReceita.Close;
    DMCadCPRB.unDetalheReceita.FilterSQL:='Codigo= '+ IntToStr(Codcurr) +
     ' and PerApur= '+ QuotedStr(DMCadCPRB.unCadCPRB.FieldByName('PERAPUR').AsString) +
     ' and nrInscEstab= ' + QuotedStr(DMCadCPRB.unCadCPRB.FieldByName('NRINSCESTAB').AsString); 
    DMCadCPRB.unDetalheReceita.Filtered:=True;
    DMCadCPRB.unDetalheReceita.Open;
    pnlgrp1.Enabled := not DMCadCPRB.unDetalheReceita.IsEmpty;

    DMCadCPRB.unAjustesReceita.Close;
    DMCadCPRB.unAjustesReceita.FilterSQL:='Codigo= '+ IntToStr(Codcurr) +
     ' and PerApur= '+ QuotedStr(DMCadCPRB.unDetalheReceita.FieldByName('PERAPUR').AsString) +
     ' and nrInscEstab= ' + QuotedStr(DMCadCPRB.unDetalheReceita.FieldByName('NRINSCESTAB').AsString) +
     ' and codAtivEcon= ' + QuotedStr(DMCadCPRB.unDetalheReceita.FieldByName('CODATIVECON').AsString); 
    DMCadCPRB.unAjustesReceita.Filtered:=True;
    DMCadCPRB.unAjustesReceita.Open;
       
    //abre Processos
    
    //abre ProcessosReceitas
    DMCadCPRB.unProcessosReceita.Close;
    DMCadCPRB.unProcessosReceita.FilterSQL:='Codigo= '+ IntToStr(Codcurr) +
     ' and PerApur= '+ QuotedStr(DMCadCPRB.unCadCPRB.FieldByName('PERAPUR').AsString) +
     ' and nrInscEstab= ' + QuotedStr(DMCadCPRB.unCadCPRB.FieldByName('NRINSCESTAB').AsString); 
    DMCadCPRB.unProcessosReceita.Filtered:=True;
    DMCadCPRB.unProcessosReceita.Open;}          

    HabilitxW(Self, false, 'ABERTURA', DMCadCPRB.unCadCPRB);
    pgc1.ActivePage:=ts1; 
    pgc2.ActivePage:=ts3;

end;

procedure TFormCadCPRB.medtPeriodoExit(Sender: TObject);
begin
  if Trim(medtPeriodo.text) <> '-' then
    validaPeriodo(Copy(medtPeriodo.text,6,2));
 if errodata then
    medtPeriodo.SetFocus;
end;

procedure TFormCadCPRB.validaPeriodo(texto:string);
begin
  if not ((texto='01') or (texto='02') or (texto='03') or (texto='04') or (texto='05') 
  or (texto='06')or (texto='07') or (texto='08') or (texto='09') or (texto='10')
  or (texto='11') or (texto='12') )then
  begin
  ShowMessage('Mês informado esta errado');
  errodata:=true;
  end
  else
  errodata:=false;
  
end;



end.
