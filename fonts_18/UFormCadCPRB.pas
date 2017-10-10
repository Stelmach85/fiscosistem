unit UFormCadCPRB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, CRGrid, ExtCtrls, StdCtrls, Buttons, DBCtrls,
  JvExStdCtrls, JvCombobox, JvDBCombobox, Mask, ComCtrls,db;

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
    crdbgrdPlanoContas: TCRDBGrid;
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
    dbedtNRPROC: TDBEdit;
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
    procedure DesabilitaCampos1;
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
 importou:boolean;
 C,Linha:string;
 // nivel 1
registro,NrInscEstabTom,CNPJPrestador,IndObra, IndCprb,NumDocto,Serie,DtemissaoInf,VlrBruto,Obs:string;
periodo:string;
Codigo_servico, codigo_NF, codigo_Proc:Integer;
// nivel 2
Tpservico,VlrBaseRet, VlrRetencao, VlrRetSub, VlrNRetPrinc, VlrServicos15, VlrServicos20, VlrServicos25:string;
VlrAdicinal,VlrNRetAdic:string;
// nivel 3
NrProcRetPrinc,TpProcRetprinc,codsusp,VlrPrinc,NrProcRetAdic,TpProcRetAdic,CodSuspAdic,VlrAdic :string;

begin
  Codigo_servico:=0;
  codigo_NF:=0;

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
         T:=TStringList.Create;
         T.LoadFromFile(lbledtArquivo.Text);
         c:=lbledtSeparador.Text;
         Application.CreateForm(TWaitForm,WaitForm);
         WaitForm.jvspclprgrs1.Caption:='Importando os Processos.Aguarde...';
         WaitForm.Show;
         WaitForm.Update;
         begin
            dm.unProcessos.Close;
            DM.unProcessos.Open;
            for i:=0 to T.Count-1 Do
             begin
              linha:=T[i];
              
                Registro:=copy(linha,1,pos(c,linha)-1);
                delete(linha,1,pos(c,linha));
              //  if (Registro<>'R-2010-1') and (Registro<>'R-2020-1') then
                if (copy(registro,1,6)='R-2010') and (copy(registro,1,6)='R-2020') then                
                begin
                  ShowMessage('Este não é o arquivo de Retençoes Previdenciária ( R-2010 ou R-2020) no leiaute da Fiscosistem');
                  WaitForm.Close;
                  Exit;
                end;

                // nivel 1 
                if (Registro='R-2010-1') or (Registro='R-2020-1') then
                begin
                
                  NrInscEstabTom:=REINFForm.colocaMascara(copy(linha,1,pos(c,linha)-1));
                  delete(linha,1,pos(c,linha));
                
                  CNPJPrestador:=REINFForm.colocaMascara(copy(linha,1,pos(c,linha)-1));
                  delete(linha,1,pos(c,linha));

                  IndObra:=copy(linha,1,pos(c,linha)-1);
                  delete(linha,1,pos(c,linha));

                  IndCprb:=copy(linha,1,pos(c,linha)-1);
                  delete(linha,1,pos(c,linha));

                  NumDocto:=copy(linha,1,pos(c,linha)-1);
                  delete(linha,1,pos(c,linha));

                  Serie:=copy(linha,1,pos(c,linha)-1);
                  delete(linha,1,pos(c,linha));

                  DtemissaoInf:=copy(linha,1,pos(c,linha)-1);
                  delete(linha,1,pos(c,linha));

                  VlrBruto:=copy(linha,1,pos(c,linha)-1);
                  delete(linha,1,pos(c,linha)); 

                  obs:=linha;

                  periodo:= Copy( DtemissaoInf,7,4)+'-'+ Copy( DtemissaoInf,4,2);

                   if DM.unRetCP_ServTom.Locate(('CODIGO;NRINSCESTABTOM;CNPJPRESTADOR;PERAPUR'),VarArrayOf([codcurr,NrInscEstabTom,CNPJPrestador,periodo]),[loCaseInsensitive]) then
                   begin
                    Codigo_servico:= DM.unRetCP_ServTom.FieldByName('ID_SERVICO').AsInteger;
                   
                   end
                   else
                   begin
                       DM.qryUtil.Close;
                       DM.qryUtil.SQL.Clear;
                       DM.qryUtil.SQL.Add('select Max(id_Servico) as codigo from RetCP_Servicos_18');
                       DM.qryUtil.Open;
                       Codigo_servico:= DM.qryUtil.FieldByName('codigo').AsInteger+1;
                    
                     DM.unRetCP_ServTom.Insert;
                     DM.unRetCP_ServTom.FieldByName('ID_SERVICO').AsInteger:= Codigo_servico;
                     DM.unRetCP_ServTom.FieldByName('CODIGO').AsInteger:=  Codcurr ;
                     if StrToIntdef(IndObra,0)=0 then
                     
                     DM.unRetCP_ServTom.FieldByName('TPINSCESTABTOM').AsInteger:= 1 else
                     DM.unRetCP_ServTom.FieldByName('TPINSCESTABTOM').AsInteger:= 2;
                     
                     DM.unRetCP_ServTom.FieldByName('NRINSCESTABTOM').AsString:= NrInscEstabTom ;
                     DM.unRetCP_ServTom.FieldByName('CNPJPRESTADOR').AsString:=  CNPJPrestador ;
                     DM.unRetCP_ServTom.FieldByName('INDOBRA').AsInteger:= StrToIntdef(IndObra,0);
                     DM.unRetCP_ServTom.FieldByName('PERAPUR').AsString:=  periodo  ;
                     DM.unRetCP_ServTom.FieldByName('VLRTOTALBRUTO').AsFloat:=  0;
                     DM.unRetCP_ServTom.FieldByName('VLRTOTALBASERET').AsFloat:=  0;
                     DM.unRetCP_ServTom.FieldByName('VLRTOTALRETPRINC').AsFloat:=  0;
                     DM.unRetCP_ServTom.FieldByName('VLRTOTALRETADIC').AsFloat:= 0;
                     DM.unRetCP_ServTom.FieldByName('VLRTOTALNRETPRINC').AsFloat:= 0;
                     DM.unRetCP_ServTom.FieldByName('VLRTOTALNRETADIC').AsFloat:= 0;
                     DM.unRetCP_ServTom.FieldByName('INDCPRB').AsInteger:= StrToIntDef(IndCprb,0);
                     DM.unRetCP_ServTom.FieldByName('EVENTO').AsString:= copy(registro,1,6);
                                          
                     DM.unRetCP_ServTom.Post;
                   end;


                   if DM.unDetalheNF_ServPrest.Locate(('CODIGO;SERIE;numDocto'),VarArrayOf([codcurr,serie,NumDocto]),[loCaseInsensitive]) then
                   begin
                      codigo_nf:= DM.unDetalheNF_ServPrest.FieldByName('id_nf').AsInteger;
                   end
                   else
                   begin
                       DM.qryUtil.Close;
                       DM.qryUtil.SQL.Clear;
                       DM.qryUtil.SQL.Add('select Max(id_NF) as codigo from DetalheNF_servicos_18');
                       DM.qryUtil.Open;
                       codigo_nf:= DM.qryUtil.FieldByName('codigo').AsInteger+1;
                   
                     DM.unDetalheNF_ServPrest.Insert;
                     DM.unDetalheNF_ServPrest.FieldByName('id_nf').AsInteger:=codigo_NF;
                     DM.unDetalheNF_ServPrest.FieldByName('id_servico').AsInteger := Codigo_servico;
                     DM.unDetalheNF_ServPrest.FieldByName('codigo').AsInteger:=Codcurr;
                     DM.unDetalheNF_ServPrest.FieldByName('serie').AsString:=Serie;
                     DM.unDetalheNF_ServPrest.FieldByName('numdocto').AsString:=NumDocto;
                     DM.unDetalheNF_ServPrest.FieldByName('dtemissaoNF').AsDateTime:= StrToDate(DtemissaoInf);
                     DM.unDetalheNF_ServPrest.FieldByName('vlrBruto').AsFloat:=StrToFloatDef(VlrBruto,0);
                     DM.unDetalheNF_ServPrest.FieldByName('obs').AsString:=Obs;

                     DM.unDetalheNF_ServPrest.Post;

                   
                   end;
                   

                  
                
                end;

               // nivel 2
                if (Registro='R-2010-2') or (Registro='R-2020-2') then
                begin
                   if Codigo_servico=0 then
                   begin
                     if (Registro='R-2010-2') then                    
                     ShowMessage('Deve haver um registro R-2010-1 antes') else
                     ShowMessage('Deve haver um registro R-2020-1 antes') ;
                     Exit;
                   end;
                  
                  Tpservico:=copy(linha,1,pos(c,linha)-1);
                  delete(linha,1,pos(c,linha)); 

                  VlrBaseRet:=copy(linha,1,pos(c,linha)-1);
                  delete(linha,1,pos(c,linha)); 

                  VlrRetencao:=copy(linha,1,pos(c,linha)-1);
                  delete(linha,1,pos(c,linha)); 

                  VlrRetSub:=copy(linha,1,pos(c,linha)-1);
                  delete(linha,1,pos(c,linha)); 

                  VlrNRetPrinc:=copy(linha,1,pos(c,linha)-1);
                  delete(linha,1,pos(c,linha)); 

                  VlrServicos15:=copy(linha,1,pos(c,linha)-1);
                  delete(linha,1,pos(c,linha)); 

                  VlrServicos20:=copy(linha,1,pos(c,linha)-1);
                  delete(linha,1,pos(c,linha)); 

                  VlrServicos25:=copy(linha,1,pos(c,linha)-1);
                  delete(linha,1,pos(c,linha)); 

                  VlrAdicinal:=copy(linha,1,pos(c,linha)-1);
                  delete(linha,1,pos(c,linha)); 

                  VlrNRetAdic:=linha;

                   if DM.unTiposServPrest_NF.Locate(('tpservico;id_nf;id_servico;codigo'),VarArrayOf([Tpservico,codigo_NF,Codigo_servico,codcurr]),[loCaseInsensitive]) then
                   begin
                   
                   end
                   else
                   begin
                     DM.unTiposServPrest_NF.Insert;
                     DM.unTiposServPrest_NF.FieldByName('tpservico').AsString:= Tpservico;
                     DM.unTiposServPrest_NF.FieldByName('id_nf').AsInteger:=codigo_NF;
                     DM.unTiposServPrest_NF.FieldByName('id_servico').AsInteger:= Codigo_servico;
                     DM.unTiposServPrest_NF.FieldByName('codigo').AsInteger:= Codcurr;
                     DM.unTiposServPrest_NF.FieldByName('vlrBaseRet').AsFloat:= StrToFloatDef(VlrBaseRet,0);
                     DM.unTiposServPrest_NF.FieldByName('vlrRetencao').AsFloat:= StrToFloatDef(VlrRetencao,0);
                     DM.unTiposServPrest_NF.FieldByName('vlrRetSub').AsFloat:= StrToFloatDef(VlrRetSub,0);
                     DM.unTiposServPrest_NF.FieldByName('vlrNRetPrinc').AsFloat:= StrToFloatDef(VlrNRetPrinc,0);
                     DM.unTiposServPrest_NF.FieldByName('vlrServicos15').AsFloat:= StrToFloatDef(VlrServicos15,0);
                     DM.unTiposServPrest_NF.FieldByName('vlrServicos20').AsFloat:=StrToFloatDef(VlrServicos20,0);
                     DM.unTiposServPrest_NF.FieldByName('vlrServicos25').AsFloat:=StrToFloatDef(VlrServicos25,0);
                     DM.unTiposServPrest_NF.FieldByName('vlrAdicional').AsFloat:= StrToFloatDef(VlrAdicinal,0);
                     DM.unTiposServPrest_NF.FieldByName('vlrNRetAdic').AsFloat:=  StrToFloatDef(VlrNRetAdic,0);
                     DM.unTiposServPrest_NF.Post;
                   
                   end;
                  
                
                end;

               // nivel 3
                if (Registro='R-2010-3') or (Registro='R-2020-3') then
                begin 
                  if Codigo_servico=0 then
                   begin
                     if (Registro='R-2010-2') then                    
                     ShowMessage('Deve haver um registro R-2010-1 antes') else
                     ShowMessage('Deve haver um registro R-2020-1 antes') ;
                     Exit;
                   end;
                   
                  NrProcRetPrinc:=copy(linha,1,pos(c,linha)-1);
                  delete(linha,1,pos(c,linha));

                  TpProcRetprinc:=copy(linha,1,pos(c,linha)-1);
                  delete(linha,1,pos(c,linha)); 

                  codsusp:=copy(linha,1,pos(c,linha)-1);
                  delete(linha,1,pos(c,linha)); 

                  VlrPrinc:=copy(linha,1,pos(c,linha)-1);
                  delete(linha,1,pos(c,linha)); 

                  NrProcRetAdic:=copy(linha,1,pos(c,linha)-1);
                  delete(linha,1,pos(c,linha)); 

                  TpProcRetAdic:=copy(linha,1,pos(c,linha)-1);
                  delete(linha,1,pos(c,linha)); 

                  CodSuspAdic:=copy(linha,1,pos(c,linha)-1);
                  delete(linha,1,pos(c,linha)); 

                  VlrAdic:=linha;
                  
                  if NrProcRetPrinc<>'' then
                  begin
                      if DM.unInfProcessos.Locate(('id_servico;codigo;nrProcRetPrinc'),VarArrayOf([Codigo_servico,codcurr,NrProcRetPrinc]),[loCaseInsensitive]) then
                      begin
                  
                      end
                      else
                      begin
                          DM.qryUtil.Close;
                         DM.qryUtil.SQL.Clear;
                         DM.qryUtil.SQL.Add('select Max(id_processo) as codigo from InfProcessos_18  ');
                        // DM.qryUtil.ParamByName('codigo').AsInteger:=DM.unRetCP_ServTom.FieldByName('ID_SERVICO').AsInteger;
                         DM.qryUtil.Open;
                         codigo_Proc:= DM.qryUtil.FieldByName('codigo').AsInteger+1;
                      
                        DM.unInfProcessos.Insert;
                        DM.unInfProcessos.FieldByName('id_processo').AsInteger:= codigo_Proc;
                        DM.unInfProcessos.FieldByName('id_servico').AsInteger:= Codigo_servico;
                        DM.unInfProcessos.FieldByName('codigo').AsInteger:=Codcurr;
                        DM.unInfProcessos.FieldByName('nrProcRetPrinc').AsString:=  NrProcRetPrinc;
                        DM.unInfProcessos.FieldByName('tpprocRetPrinc').AsInteger:= StrToIntDef(TpProcRetprinc,1);
                        DM.unInfProcessos.FieldByName('codSusp').AsString:= codsusp;
                        DM.unInfProcessos.FieldByName('valorPrinc').AsFloat:= StrToFloatDef(VlrPrinc,0); 
                         DM.unInfProcessos.Post;
                      end;
                  end;
                  
                  if NrProcRetAdic<>'' then
                  begin
                     if DM.unInfProcessosAdic.Locate(('id_servico;codigo;NrProcRetAdic'),VarArrayOf([Codigo_servico,codcurr,NrProcRetAdic]),[loCaseInsensitive]) then
                      begin
                  
                      end
                      else
                      begin
                          DM.qryUtil.Close;
                         DM.qryUtil.SQL.Clear;
                         DM.qryUtil.SQL.Add('select Max(id_processo) as codigo from InfProcessosAdic_18 --where ID_SERVICO=:codigo ');
                       //  DM.qryUtil.ParamByName('codigo').AsInteger:=DM.unRetCP_ServTom.FieldByName('ID_SERVICO').AsInteger;
                         DM.qryUtil.Open;
                         codigo_Proc:= DM.qryUtil.FieldByName('codigo').AsInteger+1;

                      
                         DM.unInfProcessosAdic.Insert;
                         DM.unInfProcessosAdic.FieldByName('Id_processo').AsInteger:= codigo_Proc;
                         DM.unInfProcessosAdic.FieldByName('id_servico').AsInteger:=Codigo_servico;
                         DM.unInfProcessosAdic.FieldByName('codigo').AsInteger:=Codcurr;
                         DM.unInfProcessosAdic.FieldByName('nrProcRetAdic').AsString:=NrProcRetAdic;
                         DM.unInfProcessosAdic.FieldByName('tpProcRetAdic').AsInteger:=StrToIntDef(TpProcRetAdic,1);
                         DM.unInfProcessosAdic.FieldByName('CODSUSPADIC').AsString:=CodSuspAdic;
                         DM.unInfProcessosAdic.FieldByName('ValorAdic').AsFloat:=StrToFloatDef(VlrAdic,0);
                         DM.unInfProcessosAdic.Post;
                      end;
                  
                  end;
                  
                  
                
                end;


              
             end;
         end;
         WaitForm.Close;
         ShowMessage('Importação efetuada com sucesso');
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
end;

procedure TFormCadCPRB.btnAlterar2Click(Sender: TObject);
begin
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
end;

procedure TFormCadCPRB.btnAlterar3Click(Sender: TObject);
begin
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
end;

procedure TFormCadCPRB.btnAlterar4Click(Sender: TObject);
begin
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
end;

procedure TFormCadCPRB.btnCancelarClick(Sender: TObject);
begin
  DMCadCPRB.unCadCPRB.Cancel; 
  DesabilitaCampos1;
  HabilitxW(Self, false, 'CANCELAR', DMCadCPRB.unCadCPRB);
  alterando:=False;
  HabilitaBotoesAux(Self);
end;

procedure TFormCadCPRB.btnConsultarClick(Sender: TObject);
begin
   dm.unConsultaServicos.Close;
   dm.unConsultaServicos.Filtered:=False;
   dm.unConsultaServicos.FilterSQL:='Codigo='+ IntToStr(Codcurr);
   dm.unConsultaServicos.Filtered:=True;
   dm.unConsultaServicos.Open;
end;

procedure TFormCadCPRB.btnExcelClick(Sender: TObject);
begin
        DM.qryUtil.Close;
        DM.qryUtil.SQL.Clear;
        DM.qryUtil.SQL.Add('select * from RETCP_SERVICOS_18 where codigo=:cod')  ;
        DM.qryUtil.ParamByName('cod').AsInteger:=Codcurr;
        DM.qryUtil.Open;
        REINFForm.GeraExcel(DM.qryUtil);
end;

procedure TFormCadCPRB.btnExcluir1Click(Sender: TObject);
begin
try
  If MessageDLG ('Confirma Exclusão de todos registros  ???' +#13+
     '', MTConfirmation, [MBYes, MBNo],0)=MRYes then
     Begin
        DM.qryUtil.Close;
        DM.qryUtil.SQL.Clear;
        DM.qryUtil.SQL.Add('delete from RETCP_SERVICOS_18 where codigo=:cod')  ;
        DM.qryUtil.ParamByName('cod').AsInteger:=Codcurr;
        DM.qryUtil.Execute;
        ShowMessage('Dados Excluídos com sucesso');
        dm.unRetCP_ServTom.Close;
        dm.unRetCP_ServTom.Open;        
        btnConsultar.OnClick(self);
     End;
except
   ShowMessage('Não há Dados para serem excluídos');
end;
end;

procedure TFormCadCPRB.btnExcluir2Click(Sender: TObject);
begin
  try
    If MessageDLG ('Confirma Exclusão do Documento ' + '???' +#13+
     '', MTConfirmation, [MBYes, MBNo],0)=MRYes then
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
      If MessageDLG ('Confirma Exclusão do Serviço ' + '???' +#13+ '', MTConfirmation, [MBYes, MBNo],0)=MRYes then
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
          DM.unRetCP_ServTom.Delete;
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
  if dbedtvlrAjuste.Text='    -  ' then
  begin
    ShowMessage('Informe o Valor do Ajuste ');
    dbedtvlrAjuste.SetFocus;
    Exit;
  end;
  if dbedtDescAjuste.Text='    -  ' then
  begin
    ShowMessage('Informe a Descrição Resumida do Ajuste ');
    dbedtDescAjuste.SetFocus;
    Exit;
  end;
  if dbedtDtAjuste.Text='    -  ' then
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
end;

procedure TFormCadCPRB.btnGravar4Click(Sender: TObject);
begin
   if dbedtNRPROC.Text='' then
   begin
     ShowMessage('Informe o número do Processo');
     dbedtNRPROC.SetFocus;
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
     DM.qryUtil.ParamByName('nrProc').AsString:= dbedtNRPROC.Text;
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
end;

procedure TFormCadCPRB.btnGravarClick(Sender: TObject);
begin
  if cbbTPINSCESTAB.Text='' then
  begin
    ShowMessage('Informe o Tipo de Inscrição');
    cbbTPINSCESTAB.SetFocus;
    Exit;
  end;
  if dbedtNRINSCESTAB.Text='  .   .   /    -  ' then
  begin
    ShowMessage('Informe a Inscrição do Contribuinte');
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

  if alterando then
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
  desabilitaCampos1;
  alterando:=False;   
  HabilitaBotoesAux(Self);
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

procedure TFormCadCPRB.dbedtPERAPURExit(Sender: TObject);
begin
 validaPeriodo(Copy(dbedtPERAPUR.text,6,2));
 if errodata then
   dbedtPERAPUR.SetFocus;
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
    DM.unProcessos.Open;
    
    DMCadCPRB.unCadCPRB.Close;
    DMCadCPRB.unCadCPRB.FilterSQL:='Codigo='+ IntToStr(Codcurr);
    DMCadCPRB.unCadCPRB.Filtered:=True;
    DMCadCPRB.unCadCPRB.Open;
    
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

procedure TFormCadCPRB.DesabilitaCampos1;
begin
 cbbTPINSCESTAB.Enabled:=False;
 dbedtNRINSCESTAB.Enabled:=False;
 dbedtPERAPUR.Enabled:=False;
 dbedtVLRRECBRUTATOTAL.Enabled:=False;
 dbedtVLRCPAPURTOTAL.Enabled:=False;
 dbedtVLRCPRBSUSPTOTAL.Enabled:=False;
 dbnvgr1.Enabled:=True;
 pnl1.Enabled:= false;
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
