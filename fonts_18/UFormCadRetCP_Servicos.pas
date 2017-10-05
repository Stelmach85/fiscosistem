unit UFormCadRetCP_Servicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, CRGrid, ExtCtrls, StdCtrls, Buttons, DBCtrls,
  JvExStdCtrls, JvCombobox, JvDBCombobox, Mask, ComCtrls,db;

type
  TFormCadRetCP_Servicos = class(TForm)
    pgc1: TPageControl;
    ts1: TTabSheet;
    pnl1: TPanel;
    lbl1: TLabel;
    lbl3: TLabel;
    dbedtPERAPUR: TDBEdit;
    cbbINDOBRA: TJvDBComboBox;
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
    lbl5: TLabel;
    cbbTPINSCESTABTOM: TJvDBComboBox;
    lbl4: TLabel;
    dbedtNRINSCESTABTOM: TDBEdit;
    lbl2: TLabel;
    dbedtCNPJPRESTADOR: TDBEdit;
    dbedtVLRTOTALBRUTO: TDBEdit;
    lbl6: TLabel;
    lbl7: TLabel;
    dbedtVLRTOTALBASERET: TDBEdit;
    lbl8: TLabel;
    dbedtVLRTOTALRETPRINC: TDBEdit;
    lbl9: TLabel;
    dbedtVLRTOTALRETADIC: TDBEdit;
    lbl10: TLabel;
    dbedtVLRTOTALNRETPRINC: TDBEdit;
    lbl11: TLabel;
    dbedtVLRTOTALNRETADIC: TDBEdit;
    lbl13: TLabel;
    cbbINDCPRB: TJvDBComboBox;
    pnl2: TPanel;
    pgc2: TPageControl;
    ts3: TTabSheet;
    pnl3: TPanel;
    ts4: TTabSheet;
    ts5: TTabSheet;
    dbedtSERIE: TDBEdit;
    lbl12: TLabel;
    dbedtNUMDOCTO: TDBEdit;
    lbl14: TLabel;
    dbedtDTEMISSAONF: TDBEdit;
    lbl15: TLabel;
    lbl16: TLabel;
    dbedtVLRBRUTO: TDBEdit;
    lbl17: TLabel;
    dbedtOBS: TDBEdit;
    dbnvgr2: TDBNavigator;
    btnIncluir2: TBitBtn;
    btngravar2: TBitBtn;
    btnAlterar2: TBitBtn;
    btnExcluir2: TBitBtn;
    btncancelar2: TBitBtn;
    grp1: TGroupBox;
    lbl18: TLabel;
    dbedtVLRBASERET: TDBEdit;
    dbnvgr3: TDBNavigator;
    btnIncluir3: TBitBtn;
    btnGravar3: TBitBtn;
    btnAlterar3: TBitBtn;
    btnExcluir3: TBitBtn;
    btnCancelar3: TBitBtn;
    lbl19: TLabel;
    dbedtVLRRETENCAO: TDBEdit;
    lbl20: TLabel;
    dbedtVLRRETSUB: TDBEdit;
    lbl21: TLabel;
    dbedtVLRNRETPRINC: TDBEdit;
    lbl22: TLabel;
    dbedtVLRSERVICOS15: TDBEdit;
    lbl23: TLabel;
    dbedtVLRSERVICOS20: TDBEdit;
    lbl24: TLabel;
    dbedtVLRSERVICOS25: TDBEdit;
    lbl25: TLabel;
    dbedtVLRADICIONAL: TDBEdit;
    lbl26: TLabel;
    dbedtVLRNRETADIC: TDBEdit;
    cbbCLASSTRIB: TJvDBComboBox;
    pnl4: TPanel;
    dbedtNRPROCRETPRINC: TDBEdit;
    lbl27: TLabel;
    cbbTPPROCRETPRINC: TJvDBComboBox;
    lbl28: TLabel;
    lbl29: TLabel;
    dbedtVALORPRINC: TDBEdit;
    cbbCODSUSP: TJvDBComboBox;
    dbnvgr4: TDBNavigator;
    btnIncluir4: TBitBtn;
    btnGravar4: TBitBtn;
    btnAlterar4: TBitBtn;
    btnExcluir4: TBitBtn;
    btnCancelar4: TBitBtn;
    lbl30: TLabel;
    lbl31: TLabel;
    lbl32: TLabel;
    dbedtNRPROCRETADIC: TDBEdit;
    cbbTPPROCRETADIC: TJvDBComboBox;
    lbl33: TLabel;
    cbbCODSUSPADIC: TJvDBComboBox;
    lbl34: TLabel;
    dbedtVALORADIC: TDBEdit;
    dbnvgr5: TDBNavigator;
    btnIncluir5: TBitBtn;
    btnGravar5: TBitBtn;
    btnAlterar5: TBitBtn;
    btnExcluir5: TBitBtn;
    btnCancelar5: TBitBtn;
    OpenArquivo: TOpenDialog;
    lbl35: TLabel;
    cbbEVENTO: TJvDBComboBox;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnIncluir2Click(Sender: TObject);
    procedure btngravar2Click(Sender: TObject);
    procedure btnIncluir3Click(Sender: TObject);
    procedure btnGravar3Click(Sender: TObject);
    procedure btnIncluir4Click(Sender: TObject);
    procedure btnGravar4Click(Sender: TObject);
    procedure btnIncluir5Click(Sender: TObject);
    procedure btnGravar5Click(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure cbbTPINSCESTABTOMChange(Sender: TObject);
    procedure habilitaCampos1;
    procedure DesabilitaCampos1;
    procedure habilitaCampos2;
    procedure DesabilitaCampos2;
    procedure habilitaCampos3;
    procedure DesabilitaCampos3;
    procedure habilitaCampos4;
    procedure DesabilitaCampos4;
    procedure habilitaCampos5;
    procedure DesabilitaCampos5;    
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAlterar2Click(Sender: TObject);
    procedure btncancelar2Click(Sender: TObject);
    procedure btnCancelar3Click(Sender: TObject);
    procedure btnAlterar3Click(Sender: TObject);
    procedure btnAlterar4Click(Sender: TObject);
    procedure btnCancelar4Click(Sender: TObject);
    procedure btnAlterar5Click(Sender: TObject);
    procedure btnCancelar5Click(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnExcluir2Click(Sender: TObject);
    procedure btnExcluir3Click(Sender: TObject);
    procedure btnExcluir4Click(Sender: TObject);
    procedure btnExcluir5Click(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnExcluir1Click(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure validaPeriodo(texto:string);
    procedure dbedtPERAPURExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadRetCP_Servicos: TFormCadRetCP_Servicos;
  errodata,alterando:Boolean;

implementation

uses frm_REINF, UDM, Wait, UVerificaSistema, UUtils;

{$R *.dfm}

procedure TFormCadRetCP_Servicos.btn1Click(Sender: TObject);
begin
Close;
end;

procedure TFormCadRetCP_Servicos.btnImportarClick(Sender: TObject);
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

                   if (NrInscEstabTom <> cnpjemp) and (Registro='R-2010-1')   then
                    begin
                      showmessage('CNPJ do Estabelecimento Não confere com o Contribuinte Cadastrado.');
                     // WaitForm.Close;
                      Exit;
                    end; 

                    if (CNPJPrestador <> cnpjemp) and (Registro='R-2020-1')  then
                    begin
                      showmessage('CNPJ do Prestador Não confere com o Contribuinte Cadastrado.');
                     // WaitForm.Close;
                      Exit;
                    end; 

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

procedure TFormCadRetCP_Servicos.btnIncluir2Click(Sender: TObject);
var
novoCodigo:Integer;
begin
 try
   if DM.unRetCP_ServTom.FieldByName('ID_SERVICO').AsInteger<1 then
   begin
     ShowMessage('Informe os dados dos Estabelecimentos primeiro');
     Exit;
   end;
 except
     ShowMessage('Informe os dados dos Estabelecimentos primeiro');
     Exit;
 end;

 DM.qryUtil.Close;
 DM.qryUtil.SQL.Clear;
 DM.qryUtil.SQL.Add('select Max(id_NF) as codigo from DetalheNF_Servicos_18 where ID_SERVICO=:codigo and codigo=:cod ');
 DM.qryUtil.ParamByName('codigo').AsInteger:=DM.unRetCP_ServTom.FieldByName('ID_SERVICO').AsInteger;
 DM.qryUtil.ParamByName('cod').AsInteger:=Codcurr;
 DM.qryUtil.Open;
 novoCodigo:= DM.qryUtil.FieldByName('codigo').AsInteger+1;

 DM.unDetalheNF_ServPrest.Insert;
 DM.unDetalheNF_ServPrest.FieldByName('ID_NF').AsInteger:= novoCodigo;
 DM.unDetalheNF_ServPrest.FieldByName('Codigo').AsInteger:= Codcurr;
 DM.unDetalheNF_ServPrest.FieldByName('ID_SERVICO').AsInteger:= DM.unRetCP_ServTom.FieldByName('ID_SERVICO').AsInteger;
 DM.unDetalheNF_ServPrest.FieldByName('VlrBruto').AsFloat:=0.00;
 
 

 habilitaCampos2;

   btnExcluir2.Enabled:=False;
   btnAlterar2.Enabled:=False;
   btnCancelar2.Enabled:=True;
   btngravar2.Enabled:=True;
   dbnvgr2.Enabled:=False;
end;

procedure TFormCadRetCP_Servicos.btnIncluir3Click(Sender: TObject);
begin

 try
   if DM.unDetalheNF_ServPrest.FieldByName('ID_NF').AsInteger<1 then
   begin
     ShowMessage('Informe os dados do Documento primeiro');
     Exit;
   end;
 except
     ShowMessage('Informe os dados do Documento primeiro');
     Exit;
 end;

 DM.unTiposServPrest_NF.Insert;
 DM.unTiposServPrest_NF.FieldByName('ID_SERVICO').AsInteger:= DM.unRetCP_ServTom.FieldByName('ID_SERVICO').AsInteger;
 DM.unTiposServPrest_NF.FieldByName('ID_NF').AsInteger:= DM.unDetalheNF_ServPrest.FieldByName('ID_NF').AsInteger;
 DM.unTiposServPrest_NF.FieldByName('CODIGO').AsInteger:=Codcurr;
 DM.unTiposServPrest_NF.FieldByName('VlrBaseRet').AsFloat:=0.00;
 DM.unTiposServPrest_NF.FieldByName('VlrRetencao').AsFloat:=0.00;
 DM.unTiposServPrest_NF.FieldByName('vlrRetSub').AsFloat:=0.00;
 DM.unTiposServPrest_NF.FieldByName('VlrNretPrinc').AsFloat:=0.00;
 DM.unTiposServPrest_NF.FieldByName('VlrServicos15').AsFloat:=0.00;
 DM.unTiposServPrest_NF.FieldByName('VlrServicos20').AsFloat:=0.00;
 DM.unTiposServPrest_NF.FieldByName('VlrServicos25').AsFloat:=0.00;
 DM.unTiposServPrest_NF.FieldByName('vlrAdicional').AsFloat:=0.00;
 DM.unTiposServPrest_NF.FieldByName('vlrNRetAdic').AsFloat:=0.00;
 btnGravar3.Enabled:=True;
 habilitaCampos3;

   btnExcluir3.Enabled:=False;
   btnAlterar3.Enabled:=False;
   btnCancelar3.Enabled:=True;
   dbnvgr3.Enabled:=False;
end;

procedure TFormCadRetCP_Servicos.btnIncluir4Click(Sender: TObject);
var
novoCodigo:Integer;
begin
try
   if DM.unRetCP_ServTom.FieldByName('ID_SERVICO').AsInteger<1 then
   begin
     ShowMessage('Informe os dados dos Estabelecimentos primeiro');
     Exit;
   end;
 except
     ShowMessage('Informe os dados dos Estabelecimentos primeiro');
     Exit;
 end;
 
 DM.qryUtil.Close;
 DM.qryUtil.SQL.Clear;
 DM.qryUtil.SQL.Add('select Max(id_processo) as codigo from InfProcessos_18 where ID_SERVICO=:codigo ');
 DM.qryUtil.ParamByName('codigo').AsInteger:=DM.unRetCP_ServTom.FieldByName('ID_SERVICO').AsInteger;
 DM.qryUtil.Open;
 novoCodigo:= DM.qryUtil.FieldByName('codigo').AsInteger+1;
 
  DM.unInfProcessos.Insert;
  DM.unInfProcessos.FieldByName('ID_SERVICO').AsInteger:= DM.unRetCP_ServTom.FieldByName('ID_SERVICO').AsInteger;
  DM.unInfProcessos.FieldByName('ID_PROCESSO').AsInteger:= novoCodigo;
  DM.unInfProcessos.FieldByName('CODIGO').AsInteger:= Codcurr;
  DM.unInfProcessos.FieldByName('ValorPrinc').AsFloat:= 0.00;


  habilitaCampos4;
  btnExcluir4.Enabled:=False;
   btnAlterar4.Enabled:=False;
   btnCancelar4.Enabled:=True;
   btngravar4.Enabled:=True;
   dbnvgr4.Enabled:=False;
  
end;

procedure TFormCadRetCP_Servicos.btnIncluir5Click(Sender: TObject);
var
novoCodigo:Integer;
begin

try
   if DM.unRetCP_ServTom.FieldByName('ID_SERVICO').AsInteger<1 then
   begin
     ShowMessage('Informe os dados dos Estabelecimentos primeiro');
     Exit;
   end;
 except
     ShowMessage('Informe os dados dos Estabelecimentos primeiro');
     Exit;
 end;
 
 DM.qryUtil.Close;
 DM.qryUtil.SQL.Clear;
 DM.qryUtil.SQL.Add('select Max(id_processo) as codigo from InfProcessosADIC_18 where ID_SERVICO=:codigo ');
 DM.qryUtil.ParamByName('codigo').AsInteger:=DM.unRetCP_ServTom.FieldByName('ID_SERVICO').AsInteger;
 DM.qryUtil.Open;
 novoCodigo:= DM.qryUtil.FieldByName('codigo').AsInteger+1;
 
  DM.unInfProcessosAdic.Insert;
  DM.unInfProcessosAdic.FieldByName('ID_SERVICO').AsInteger:= DM.unRetCP_ServTom.FieldByName('ID_SERVICO').AsInteger;
  DM.unInfProcessosAdic.FieldByName('ID_PROCESSO').AsInteger:= novoCodigo;
  DM.unInfProcessosAdic.FieldByName('CODIGO').AsInteger:= Codcurr;
  DM.unInfProcessosAdic.FieldByName('valorAdic').asfloat:= 0.00;

  btnGravar5.Enabled:=True;

    habilitaCampos5;
  btnExcluir5.Enabled:=False;
   btnAlterar5.Enabled:=False;
   btnCancelar5.Enabled:=True;
   btngravar5.Enabled:=True;
   dbnvgr5.Enabled:=False;

end;

procedure TFormCadRetCP_Servicos.btnLocalizarClick(Sender: TObject);
begin
OpenArquivo.DefaultExt :='.TXT';
 OpenArquivo.InitialDir :='C:\';
 if OpenArquivo.Execute Then
    lbledtArquivo.Text:= OpenArquivo.FileName;
end;

procedure TFormCadRetCP_Servicos.btnCancelar3Click(Sender: TObject);
begin
 DM.unTiposServPrest_NF.Cancel;
 
DesabilitaCampos3;

 btnExcluir3.Enabled:=True;
 btnAlterar3.Enabled:=True;
 btnIncluir3.Enabled:=True;
 btnCancelar3.Enabled:=False;
 btnGravar3.Enabled:=False;
 dbnvgr3.Enabled:=True;
 alterando:=False;
end;

procedure TFormCadRetCP_Servicos.btnCancelar4Click(Sender: TObject);
begin
DM.unInfProcessos.Cancel;

 DesabilitaCampos4;

 btnExcluir4.Enabled:=True;
 btnAlterar4.Enabled:=True;
 btnIncluir4.Enabled:=True;
 btnCancelar4.Enabled:=False;
 btnGravar4.Enabled:=False;
 dbnvgr4.Enabled:=True;
 alterando:=False;
end;

procedure TFormCadRetCP_Servicos.btnCancelar5Click(Sender: TObject);
begin
DM.unInfProcessosAdic.Cancel;

 DesabilitaCampos5;

 btnExcluir5.Enabled:=True;
 btnAlterar5.Enabled:=True;
 btnIncluir5.Enabled:=True;
 btnCancelar5.Enabled:=False;
 btnGravar5.Enabled:=False;
 dbnvgr5.Enabled:=True;
 alterando:=False;
end;

procedure TFormCadRetCP_Servicos.btnAlterar2Click(Sender: TObject);
begin

 try
   if DM.unRetCP_ServTom.FieldByName('ID_SERVICO').AsInteger<1 then
   begin
     ShowMessage('Informe os dados dos Estabelecimentos primeiro');
     Exit;
   end;
 except
     ShowMessage('Informe os dados dos Estabelecimentos primeiro');
     Exit;
 end;

 try
    if DM.unDetalheNF_ServPrest.FieldByName('ID_SERVICO').AsInteger<1 then
    begin
      ShowMessage('Não existem dados para serem alterados');
      Exit;
    end;
    
 except
     ShowMessage('Não existem dados para serem alterados');
 end;
 

 DM.unDetalheNF_ServPrest.Edit;
 habilitaCampos2;
 
 btnExcluir2.Enabled:=False;
 btnIncluir2.Enabled:=False;
 btnCancelar2.Enabled:=True;
 btnGravar2.Enabled:=True;
 dbnvgr2.Enabled:=False;
 btnAlterar2.Enabled:=False;
 alterando:=True;
end;

procedure TFormCadRetCP_Servicos.btnAlterar3Click(Sender: TObject);
begin
 try
   if DM.unRetCP_ServTom.FieldByName('ID_SERVICO').AsInteger<1 then
   begin
     ShowMessage('Informe os dados dos Estabelecimentos primeiro');
     Exit;
   end;
 except
     ShowMessage('Informe os dados dos Estabelecimentos primeiro');
     Exit;
 end;

 try
    if DM.unTiposServPrest_NF.FieldByName('ID_SERVICO').AsInteger<1 then
    begin
      ShowMessage('Não existem dados para serem alterados');
      Exit;
    end;
    
 except
     ShowMessage('Não existem dados para serem alterados');
 end;
  


DM.unTiposServPrest_NF.Edit;
habilitaCampos3;

 btnExcluir3.Enabled:=False;
 btnIncluir3.Enabled:=False;
 btnCancelar3.Enabled:=True;
 btnGravar3.Enabled:=True;
 dbnvgr3.Enabled:=False;
 btnAlterar3.Enabled:=False;
 alterando:=True;
end;

procedure TFormCadRetCP_Servicos.btnAlterar4Click(Sender: TObject);
begin
try
   if DM.unRetCP_ServTom.FieldByName('ID_SERVICO').AsInteger<1 then
   begin
     ShowMessage('Informe os dados dos Estabelecimentos primeiro');
     Exit;
   end;
 except
     ShowMessage('Informe os dados dos Estabelecimentos primeiro');
     Exit;
 end;

  try
    if DM.unInfProcessos.FieldByName('ID_SERVICO').AsInteger<1 then
    begin
      ShowMessage('Não existem dados para serem alterados');
      Exit;
    end;
    
 except
     ShowMessage('Não existem dados para serem alterados');
 end;
 
DM.unInfProcessos.Edit;
 habilitaCampos4;
 
 btnExcluir4.Enabled:=False;
 btnIncluir4.Enabled:=False;
 btnCancelar4.Enabled:=True;
 btnGravar4.Enabled:=True;
 dbnvgr4.Enabled:=False;
 btnAlterar4.Enabled:=False;
 alterando:=True;
 
end;

procedure TFormCadRetCP_Servicos.btnAlterar5Click(Sender: TObject);
begin
 try
   if DM.unRetCP_ServTom.FieldByName('ID_SERVICO').AsInteger<1 then
   begin
     ShowMessage('Informe os dados dos Estabelecimentos primeiro');
     Exit;
   end;
 except
     ShowMessage('Informe os dados dos Estabelecimentos primeiro');
     Exit;
 end;

   try
    if DM.unInfProcessosAdic.FieldByName('ID_SERVICO').AsInteger<1 then
    begin
      ShowMessage('Não existem dados para serem alterados');
      Exit;
    end;
    
 except
     ShowMessage('Não existem dados para serem alterados');
 end;
 
DM.unInfProcessosAdic.Edit;
  habilitaCampos5;
 
 btnExcluir5.Enabled:=False;
 btnIncluir5.Enabled:=False;
 btnCancelar5.Enabled:=True;
 btnGravar5.Enabled:=True;
 dbnvgr5.Enabled:=False;
 btnAlterar5.Enabled:=False;
 alterando:=True;
end;

procedure TFormCadRetCP_Servicos.btnAlterarClick(Sender: TObject);
begin
 DM.unRetCP_ServTom.Edit;
 habilitaCampos1;

 btnExcluir.Enabled:=False;
 btnNovo.Enabled:=False;
 btnCancelar.Enabled:=True;
 btnGravar.Enabled:=True;
 dbnvgr2.Enabled:=False;
 btnAlterar.Enabled:=False;
 alterando:=True;
end;

procedure TFormCadRetCP_Servicos.btncancelar2Click(Sender: TObject);
begin
 DM.unDetalheNF_ServPrest.Cancel;
 DesabilitaCampos2;

 
btnExcluir2.Enabled:=True;
 btnAlterar2.Enabled:=True;
 btnIncluir2.Enabled:=True;
 btnCancelar2.Enabled:=False;
 btnGravar2.Enabled:=False;
 dbnvgr2.Enabled:=True;
 alterando:=False;
end;

procedure TFormCadRetCP_Servicos.btnCancelarClick(Sender: TObject);
begin
DM.unRetCP_ServTom.Cancel; 
DesabilitaCampos1;

 btnExcluir.Enabled:=True;
 btnAlterar.Enabled:=True;
 btnNovo.Enabled:=True;
 btnCancelar.Enabled:=False;
 btnGravar.Enabled:=False;
 alterando:=False;
end;

procedure TFormCadRetCP_Servicos.btnConsultarClick(Sender: TObject);
begin
 dm.unConsultaServicos.Close;
 dm.unConsultaServicos.Filtered:=False;
 dm.unConsultaServicos.FilterSQL:='Codigo='+ IntToStr(Codcurr);
 dm.unConsultaServicos.Filtered:=True;
 dm.unConsultaServicos.Open;
 
 
end;

procedure TFormCadRetCP_Servicos.btnExcelClick(Sender: TObject);
begin
        DM.qryUtil.Close;
        DM.qryUtil.SQL.Clear;
        DM.qryUtil.SQL.Add('select * from RETCP_SERVICOS_18 where codigo=:cod')  ;
        DM.qryUtil.ParamByName('cod').AsInteger:=Codcurr;
        DM.qryUtil.Open;
        REINFForm.GeraExcel(DM.qryUtil);
end;

procedure TFormCadRetCP_Servicos.btnExcluir1Click(Sender: TObject);
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

procedure TFormCadRetCP_Servicos.btnExcluir2Click(Sender: TObject);
begin
try
    If MessageDLG ('Confirma Exclusão do Documento ' + '???' +#13+
     '', MTConfirmation, [MBYes, MBNo],0)=MRYes then
     Begin
        DM.unDetalheNF_ServPrest.Delete;
     End;
 except
    ShowMessage('Não existem dados para serem excluídos');
 end;
end;

procedure TFormCadRetCP_Servicos.btnExcluir3Click(Sender: TObject);
begin
 try
    If MessageDLG ('Confirma Exclusão do Serviço ' + '???' +#13+
     '', MTConfirmation, [MBYes, MBNo],0)=MRYes then
     Begin
        DM.unTiposServPrest_NF.Delete;
     End;
 except
    ShowMessage('Não existem dados para serem excluídos');
 end;
end;

procedure TFormCadRetCP_Servicos.btnExcluir4Click(Sender: TObject);
begin
 try
    If MessageDLG ('Confirma Exclusão do Processo ' + '???' +#13+
     '', MTConfirmation, [MBYes, MBNo],0)=MRYes then
     Begin
        DM.unInfProcessos.Delete;
     End;
  except
    ShowMessage('Não existem dados para serem excluídos');
 end;
end;

procedure TFormCadRetCP_Servicos.btnExcluir5Click(Sender: TObject);
begin
 try
     If MessageDLG ('Confirma Exclusão do Processo ' + '???' +#13+
     '', MTConfirmation, [MBYes, MBNo],0)=MRYes then
     Begin
        DM.unInfProcessosAdic.Delete;
     End;
 except
    ShowMessage('Não existem dados para serem excluídos');
 end;
end;

procedure TFormCadRetCP_Servicos.btnExcluirClick(Sender: TObject);
begin
try
   If MessageDLG ('Confirma Exclusão do registro ' + '???' +#13+
     '', MTConfirmation, [MBYes, MBNo],0)=MRYes then
     Begin
        DM.unRetCP_ServTom.Delete;
     End;
 except
    ShowMessage('Não existem dados para serem excluídos');
 end;

end;

procedure TFormCadRetCP_Servicos.btngravar2Click(Sender: TObject);
begin
 if dbedtSERIE.Text='' then
 begin
   ShowMessage('Informe a Série do documento, caso não exista informar 0 (zero)');
   dbedtSERIE.SetFocus;
   Exit;
 end;
 if dbedtNUMDOCTO.Text='' then
 begin
   ShowMessage('Informe o Número do documento');
   dbedtNUMDOCTO.SetFocus;
   Exit;
 end;

 if dbedtDTEMISSAONF.Text='  /  /    ' then
 begin
   ShowMessage('Informe a data de Emissão do documento');
   dbedtDTEMISSAONF.SetFocus;
   Exit;
 end;

 if dbedtVLRBRUTO.Text='' then
 begin
   ShowMessage('Informe o Valor');
   dbedtVLRBRUTO.SetFocus;
   Exit;
 end;

 if alterando=False then
begin
 DM.qryUtil.Close;
 DM.qryUtil.SQL.Clear;
 DM.qryUtil.SQL.Add('select * from detalheNF_Servicos_18 where');
 DM.qryUtil.SQL.Add(' serie=:ser and numDocto=:doc and DtemissaoNF=:data and codigo=:cod and ID_Servico=:serv');
 DM.qryUtil.ParamByName('cod').AsInteger:=Codcurr;
 DM.qryUtil.ParamByName('serv').AsInteger:= DM.unRetCP_ServTom.FieldByName('ID_SERVICO').AsInteger;
 DM.qryUtil.ParamByName('doc').AsString:= dbedtNUMDOCTO.Text;
 DM.qryUtil.ParamByName('ser').AsString:=dbedtSERIE.Text ;
 DM.qryUtil.ParamByName('data').AsDateTime:= StrToDate(dbedtDTEMISSAONF.Text) ;
 DM.qryUtil.Open;
 if not DM.qryUtil.eof then
 begin
   ShowMessage('Já Existe um documento com estas informações ');
   Exit;
 end;
 
end;
 
 
 
 
 


  DM.unDetalheNF_ServPrest.Post;
  DesabilitaCampos2;

 btnExcluir2.Enabled:=True;
 btnAlterar2.Enabled:=True;
 btnIncluir2.Enabled:=True;
 btnCancelar2.Enabled:=False;
 btnGravar2.Enabled:=False;
 dbnvgr2.Enabled:=True;
 alterando:=False;
end;

procedure TFormCadRetCP_Servicos.btnGravar3Click(Sender: TObject);
begin

  if cbbCLASSTRIB.Text='' then
  begin
    ShowMessage('Selecione o Serviço');
    cbbCLASSTRIB.SetFocus;
    Exit;
  end;

 if  dbedtVLRBASERET.text='' then
 begin
    ShowMessage('Informe o valor');
    dbedtVLRBASERET.SetFocus;
    Exit;
 end;

 if  dbedtVLRRETENCAO.text='' then
 begin
    ShowMessage('Informe o valor');
    dbedtVLRRETENCAO.SetFocus;
    Exit;
 end;

 if  dbedtVLRRETSUB.text='' then
 begin
    ShowMessage('Informe o valor');
    dbedtVLRRETSUB.SetFocus;
    Exit;
 end;

 if  dbedtVLRNRETPRINC.text='' then
 begin
    ShowMessage('Informe o valor');
    dbedtVLRNRETPRINC.SetFocus;
    Exit;
 end;

 if  dbedtVLRSERVICOS15.text='' then
 begin
    ShowMessage('Informe o valor');
    dbedtVLRSERVICOS15.SetFocus;
    Exit;
 end;

  if  dbedtVLRSERVICOS20.text='' then
 begin
    ShowMessage('Informe o valor');
    dbedtVLRSERVICOS20.SetFocus;
    Exit;
 end;

 if  dbedtVLRSERVICOS25.text='' then
 begin
    ShowMessage('Informe o valor');
    dbedtVLRSERVICOS25.SetFocus;
    Exit;
 end;

  if  dbedtVLRADICIONAL.text='' then
 begin
    ShowMessage('Informe o valor');
    dbedtVLRADICIONAL.SetFocus;
    Exit;
 end;

   if  dbedtVLRNRETADIC.text='' then
 begin
    ShowMessage('Informe o valor');
    dbedtVLRNRETADIC.SetFocus;
    Exit;
 end;

 if alterando=false then
begin
 DM.qryUtil.Close;
 DM.qryUtil.SQL.Clear;
 DM.qryUtil.SQL.Add('select * from tiposServicosNF_18 where');
 DM.qryUtil.SQL.Add('codigo=:cod and id_nf=:nota and id_servico=:serv and tpServico=:tpserv ');
 DM.qryUtil.ParamByName('cod').AsInteger:= Codcurr;
 DM.qryUtil.ParamByName('nota').AsInteger:= DM.unDetalheNF_ServPrest.FieldByName('ID_NF').AsInteger;
 DM.qryUtil.ParamByName('serv').AsInteger:= DM.unRetCP_ServTom.FieldByName('ID_SERVICO').AsInteger;
 DM.qryUtil.ParamByName('tpserv').AsString:= cbbCLASSTRIB.Field.Value;
 DM.qryUtil.Open;
 if not DM.qryUtil.eof then
 begin
   ShowMessage('Serviço já informado para este documento');
   Exit;
 end;
end;
  
  


DM.unTiposServPrest_NF.Post;

 btnExcluir3.Enabled:=True;
 btnAlterar3.Enabled:=True;
 btnCancelar3.Enabled:=False;
 dbnvgr3.Enabled:=True;
 DesabilitaCampos3;
 alterando:=False;
end;

procedure TFormCadRetCP_Servicos.btnGravar4Click(Sender: TObject);
begin

 if dbedtNRPROCRETPRINC.Text='' then
 begin
   ShowMessage('Informe o número do Processo');
   dbedtNRPROCRETPRINC.SetFocus;
   Exit;
 end;
 if cbbTPPROCRETPRINC.Text='' then
 begin
   ShowMessage('Informe o tipo do Processo');
   cbbTPPROCRETPRINC.SetFocus;
   Exit;
 end;

 if dbedtVALORPRINC.Text='' then
 begin
   ShowMessage('Informe o Valor ');
   dbedtVALORPRINC.SetFocus;
   Exit;
 end;

 if alterando=false then
 begin
 DM.qryUtil.Close;
 DM.qryUtil.SQL.Clear;
 DM.qryUtil.SQL.Add('select * from InfProcessos_18 where');
 DM.qryUtil.SQL.Add('id_servico=:ser and codigo=:cod and nrProcRetPrinc=:Proc');
 DM.qryUtil.ParamByName('ser').AsInteger:=DM.unRetCP_ServTom.FieldByName('ID_SERVICO').AsInteger;
 DM.qryUtil.ParamByName('cod').AsInteger:= Codcurr;
 DM.qryUtil.ParamByName('Proc').AsString:= dbedtNRPROCRETPRINC.Text;
 DM.qryUtil.Open;
 if not DM.qryUtil.eof then
 begin
   ShowMessage('Processo já cadastrado para este período');
   Exit;
 end;
 end;
 
 
 

DM.unInfProcessos.Post;

  DesabilitaCampos4;

btnExcluir4.Enabled:=True;
 btnAlterar4.Enabled:=True;
 btnIncluir4.Enabled:=True;
 btnCancelar4.Enabled:=False;
 btnGravar4.Enabled:=False;
 dbnvgr4.Enabled:=True;
 alterando:=False;
end;

procedure TFormCadRetCP_Servicos.btnGravar5Click(Sender: TObject);
begin
 if dbedtNRPROCRETADIC.Text='' then
 begin
   ShowMessage('Informe o número do Processo');
   dbedtNRPROCRETADIC.SetFocus;
   Exit;
 end;
 if cbbTPPROCRETADIC.Text='' then
 begin
   ShowMessage('Informe o tipo do Processo');
   cbbTPPROCRETADIC.SetFocus;
   Exit;
 end;

  if dbedtVALORADIC.Text='' then
 begin
   ShowMessage('Informe o Valor ');
   dbedtVALORADIC.SetFocus;
   Exit;
 end;

 if alterando=False then
begin
 DM.qryUtil.Close;
 DM.qryUtil.SQL.Clear;
 DM.qryUtil.SQL.Add('select * from InfProcessosAdic_18 where');
 DM.qryUtil.SQL.Add('id_servico=:ser and codigo=:cod and nrProcRetAdic=:Proc');
 DM.qryUtil.ParamByName('ser').AsInteger:=DM.unRetCP_ServTom.FieldByName('ID_SERVICO').AsInteger;
 DM.qryUtil.ParamByName('cod').AsInteger:= Codcurr;
 DM.qryUtil.ParamByName('Proc').AsString:= dbedtNRPROCRETADIC.Text;
 DM.qryUtil.Open;
 if not DM.qryUtil.eof then
 begin
   ShowMessage('Processo já cadastrado para este período');
   Exit;
 end;
end;

  DM.unInfProcessosAdic.Post;

  DesabilitaCampos5;

btnExcluir5.Enabled:=True;
 btnAlterar5.Enabled:=True;
 btnIncluir5.Enabled:=True;
 btnCancelar5.Enabled:=False;
 btnGravar5.Enabled:=False;
 dbnvgr5.Enabled:=True;
 alterando:=False;
end;

procedure TFormCadRetCP_Servicos.btnGravarClick(Sender: TObject);
begin
  if cbbEVENTO.Text='' then
  begin
   ShowMessage('Informe o evento');
    cbbEVENTO.SetFocus;
    Exit;
  end;
  if cbbTPINSCESTABTOM.Text='' then
  begin
    ShowMessage('Informe o Tipo de Inscrição');
    cbbTPINSCESTABTOM.SetFocus;
    Exit;
  end;
  if dbedtNRINSCESTABTOM.Text='  .   .   /    -  ' then
  begin
    ShowMessage('Informe a Inscrição do Contribuinte tomador');
    dbedtNRINSCESTABTOM.SetFocus;
    Exit;
  end;

 if dbedtCNPJPRESTADOR.Text='  .   .   /    -  ' then
 begin
   ShowMessage('Informe o CNPJ do Prestador');
   dbedtCNPJPRESTADOR.SetFocus;
   Exit;
 end;

 if cbbINDOBRA.Text='' then
 begin
   ShowMessage('Informe o Indicativo de Prestação de Serviço em Obra de Contrução Civil ');
   cbbINDOBRA.SetFocus;
   Exit;
 end;

 if dbedtPERAPUR.Text='    -  ' then
 begin
   ShowMessage('Informe o Período de Referência ');
   dbedtPERAPUR.SetFocus;
   Exit;
 end;

 if cbbINDCPRB.Text='' then
 begin
   ShowMessage('Informe o Indicador CPRB');
   cbbINDCPRB.SetFocus;
   Exit;
 end;

 if dbedtVLRTOTALBRUTO.Text='' then
 begin
   ShowMessage('Informe o Valor');
   dbedtVLRTOTALBRUTO.SetFocus;
   Exit;
 end;

 
 if alterando=false then
 begin
 DM.qryUtil.Close;
 DM.qryUtil.SQL.Clear;
 DM.qryUtil.sql.Add(' select * from RetCP_Servicos_18');
 DM.qryUtil.sql.Add(' where Codigo=:cod and NrInscEstabTom=:tom and cnpjPrestador=:prest and PerApur=:per');
 DM.qryUtil.ParamByName('cod').AsInteger:=Codcurr;
 DM.qryUtil.ParamByName('tom').AsString:=dbedtNRINSCESTABTOM.Text;
 DM.qryUtil.ParamByName('prest').AsString:= dbedtCNPJPRESTADOR.Text;
 DM.qryUtil.ParamByName('per').AsString:=  dbedtPERAPUR.Text;
 DM.qryUtil.Open;
 if not DM.qryUtil.Eof then
 begin
   ShowMessage('Já existe un registro cadastrado neste período para este tomador e prestado');
   Exit;
 end;
 
 end;
 
 
 
 
 
  
  




 DM.unRetCP_ServTom.Post;
 btnNovo.Enabled:=True;
 btnAlterar.Enabled:=True;
 btnGravar.Enabled:=False;
 btnCancelar.Enabled:=False;
 DesabilitaCampos1;

 btnExcluir.Enabled:=True;
 btnAlterar.Enabled:=True;
 btnCancelar.Enabled:=False;
 dbnvgr2.Enabled:=True;
 alterando:=False;
end;

procedure TFormCadRetCP_Servicos.btnNovoClick(Sender: TObject);
var
novoCodigo:Integer;
begin


 DM.unRetCP_ServTom.Insert;
 DM.unRetCP_ServTom.FieldByName('Codigo').AsInteger:= Codcurr;

 DM.qryUtil.Close;
 DM.qryUtil.SQL.Clear;
 DM.qryUtil.SQL.Add('select Max(id_Servico) as codigo from RetCP_Servicos_18');
 DM.qryUtil.Open;
 novoCodigo:= DM.qryUtil.FieldByName('codigo').AsInteger+1;
 DM.unRetCP_ServTom.FieldByName('ID_SERVICO').AsInteger:= novoCodigo;

 DM.unRetCP_ServTom.FieldByName('VLRTOTALBRUTO').AsFloat:=  0;
 DM.unRetCP_ServTom.FieldByName('VLRTOTALBASERET').AsFloat:=  0;
 DM.unRetCP_ServTom.FieldByName('VLRTOTALRETPRINC').AsFloat:=  0;
 DM.unRetCP_ServTom.FieldByName('VLRTOTALRETADIC').AsFloat:= 0;
 DM.unRetCP_ServTom.FieldByName('VLRTOTALNRETPRINC').AsFloat:= 0;
 DM.unRetCP_ServTom.FieldByName('VLRTOTALNRETADIC').AsFloat:= 0;

 
 btnNovo.Enabled:=False;
 btnGravar.Enabled:=True;
 btnCancelar.Enabled:=True;

 habilitaCampos1;

   btnExcluir.Enabled:=False;
   btnAlterar.Enabled:=False;
   btnCancelar.Enabled:=True;
   dbnvgr2.Enabled:=False;
 
end;

procedure TFormCadRetCP_Servicos.btnSairClick(Sender: TObject);
begin
close;
end;

procedure TFormCadRetCP_Servicos.cbbTPINSCESTABTOMChange(Sender: TObject);
begin
  if cbbTPINSCESTABTOM.Text='1 - CNPJ' then
  begin
    DM.unRetCP_ServTomNRINSCESTABTOM.EditMask:='99.999.999/9999-99;1; ';
    cbbTPINSCESTABTOM.ItemIndex:=0;
  end
  else 
  begin  
    DM.unRetCP_ServTomNRINSCESTABTOM.EditMask:='99.999.999/9999-99;1; ' ;
    cbbTPINSCESTABTOM.ItemIndex:=1;
  end;
end;

procedure TFormCadRetCP_Servicos.dbedtPERAPURExit(Sender: TObject);
begin
 validaPeriodo(Copy(dbedtPERAPUR.text,6,2));
 if errodata then
   dbedtPERAPUR.SetFocus;
end;

procedure TFormCadRetCP_Servicos.FormShow(Sender: TObject);
begin

DM.unRetCP_ServTom.Close;
DM.unRetCP_ServTom.FilterSQL:='Codigo='+ IntToStr(Codcurr);
DM.unRetCP_ServTom.Filtered:=True;
DM.unRetCP_ServTom.Open;

DM.unDetalheNF_ServPrest.Close;
DM.unDetalheNF_ServPrest.FilterSQL:='ID_SERVICO='+ IntToStr(DM.unRetCP_ServTom.FieldByName('ID_SERVICO').AsInteger);
DM.unDetalheNF_ServPrest.Filtered:=True;
DM.unDetalheNF_ServPrest.Open;


DM.unTiposServPrest_NF.Open;
DM.unRef_Tipo_Servico.Open;
DM.unProcessos.Open;
DM.unInfProcessos.Open;
DM.unInfProcessosAdic.open;

HabilitxW(Self, false, 'Nada');
DesabilitaCampos(self);
pgc1.ActivePage:=ts1; 
pgc2.ActivePage:=ts3; 

end;

procedure TFormCadRetCP_Servicos.habilitaCampos1;
begin
 cbbEVENTO.Enabled:=True;
 cbbTPINSCESTABTOM.Enabled:=True;
 dbedtNRINSCESTABTOM.Enabled:=True;
 dbedtPERAPUR.Enabled:=True;
 dbedtCNPJPRESTADOR.Enabled:=True;
 cbbINDOBRA.Enabled:=True;
 dbedtVLRTOTALBRUTO.Enabled:=True;
 dbedtVLRTOTALBASERET.Enabled:=True;
 dbedtVLRTOTALRETPRINC.Enabled:=True;
 dbedtVLRTOTALRETADIC.Enabled:=True;
 dbedtVLRTOTALNRETPRINC.Enabled:=True;
 dbedtVLRTOTALNRETADIC.Enabled:=True;
 cbbINDCPRB.Enabled:=True;
 dbnvgr1.Enabled:=False;
 pgc2.Enabled:=False;

end; 

procedure TFormCadRetCP_Servicos.DesabilitaCampos1;
begin
 cbbEVENTO.Enabled:=False;
 cbbTPINSCESTABTOM.Enabled:=False;
 dbedtNRINSCESTABTOM.Enabled:=False;
 dbedtPERAPUR.Enabled:=False;
 dbedtCNPJPRESTADOR.Enabled:=False;
 cbbINDOBRA.Enabled:=False;
 dbedtVLRTOTALBRUTO.Enabled:=False;
 dbedtVLRTOTALBASERET.Enabled:=False;
 dbedtVLRTOTALRETPRINC.Enabled:=False;
 dbedtVLRTOTALRETADIC.Enabled:=False;
 dbedtVLRTOTALNRETPRINC.Enabled:=False;
 dbedtVLRTOTALNRETADIC.Enabled:=False;
 cbbINDCPRB.Enabled:=False;
 dbnvgr1.Enabled:=True;
 pgc2.Enabled:=True;

end; 

procedure TFormCadRetCP_Servicos.habilitaCampos2;
begin
  //
  dbedtSERIE.Enabled:=True;
  dbedtNUMDOCTO.Enabled:=True;
  dbedtDTEMISSAONF.Enabled:=True;
  dbedtVLRBRUTO.Enabled:=True;
  dbedtOBS.Enabled:=True;
  dbnvgr2.Enabled:=False;
  dbnvgr1.Enabled:=False;
  btnNovo.Enabled:=False;
  btnAlterar.Enabled:=False;
  btnExcluir.Enabled:=False;
  grp1.Enabled:=False;
  
  
  
end;

procedure TFormCadRetCP_Servicos.DesabilitaCampos2;
begin
  //
  dbedtSERIE.Enabled:=False;
  dbedtNUMDOCTO.Enabled:=False;
  dbedtDTEMISSAONF.Enabled:=False;
  dbedtVLRBRUTO.Enabled:=False;
  dbedtOBS.Enabled:=False;
  dbnvgr2.Enabled:=True;
  dbnvgr1.Enabled:=True;
  btnNovo.Enabled:=True;
  btnAlterar.Enabled:=True;
  btnExcluir.Enabled:=True;
  grp1.Enabled:=True;
end;

procedure TFormCadRetCP_Servicos.habilitaCampos3;
begin
  //
   cbbCLASSTRIB.Enabled:=True;
   dbedtVLRBASERET.Enabled:=True;
   dbedtVLRRETENCAO.Enabled:=True;
   dbedtVLRRETSUB.Enabled:=True;
   dbedtVLRNRETPRINC.Enabled:=True;
   dbedtVLRSERVICOS15.Enabled:=True;
   dbedtVLRSERVICOS20.Enabled:=True;
   dbedtVLRSERVICOS25.Enabled:=True;
   dbedtVLRADICIONAL.Enabled:=True;
   dbedtVLRNRETADIC.Enabled:=True; 
   dbnvgr3.Enabled:=False;
   DesabilitaCampos2;
   dbnvgr2.Enabled:=False;
   dbnvgr1.Enabled:=False;
   btnNovo.Enabled:=False;
   btnAlterar.Enabled:=False;
   btnExcluir.Enabled:=False;
   btnIncluir2.Enabled:=False;
   btnAlterar2.Enabled:=False;
   btnExcluir2.Enabled:=False;
   
end;

procedure TFormCadRetCP_Servicos.DesabilitaCampos3;
begin
  //
  cbbCLASSTRIB.Enabled:=False;
   dbedtVLRBASERET.Enabled:=False;
   dbedtVLRRETENCAO.Enabled:=False;
   dbedtVLRRETSUB.Enabled:=False;
   dbedtVLRNRETPRINC.Enabled:=False;
   dbedtVLRSERVICOS15.Enabled:=False;
   dbedtVLRSERVICOS20.Enabled:=False;
   dbedtVLRSERVICOS25.Enabled:=False;
   dbedtVLRADICIONAL.Enabled:=False;
   dbedtVLRNRETADIC.Enabled:=False; 
   
   dbnvgr3.Enabled:=True;
   DesabilitaCampos2;
   dbnvgr2.Enabled:=True;
   dbnvgr1.Enabled:=True;
   btnNovo.Enabled:=True;
   btnAlterar.Enabled:=True;
   btnExcluir.Enabled:=True;
   btnIncluir2.Enabled:=True;
   btnAlterar2.Enabled:=True;
   btnExcluir2.Enabled:=True;
end;


procedure TFormCadRetCP_Servicos.habilitaCampos4;
begin
  //
  dbedtNRPROCRETPRINC.Enabled:=True;
  cbbTPPROCRETPRINC.Enabled:=True;
  cbbCODSUSP.Enabled:=True;
  dbedtVALORPRINC.Enabled:=True;
  dbnvgr4.Enabled:=False;
  
  //
  dbnvgr1.Enabled:=False;
  btnNovo.Enabled:=False;
  btnAlterar.Enabled:=False;
  btnExcluir.Enabled:=False;
  grp1.Enabled:=False;
  
  
  
end;

procedure TFormCadRetCP_Servicos.DesabilitaCampos4;
begin
  //
  dbedtNRPROCRETPRINC.Enabled:=False;
  cbbTPPROCRETPRINC.Enabled:=False;
  cbbCODSUSP.Enabled:=False;
  dbedtVALORPRINC.Enabled:=False;
  dbnvgr4.Enabled:=True;
 //
  dbnvgr1.Enabled:=True;
  btnNovo.Enabled:=True;
  btnAlterar.Enabled:=True;
  btnExcluir.Enabled:=True;
  grp1.Enabled:=True;
end;

procedure TFormCadRetCP_Servicos.habilitaCampos5;
begin
  //
  dbedtNRPROCRETADIC.Enabled:=True;
  cbbTPPROCRETADIC.Enabled:=True;
  cbbCODSUSPADIC.Enabled:=True;
  dbedtVALORADIC.Enabled:=True;
  dbnvgr5.Enabled:=False;
  
  //
  dbnvgr1.Enabled:=False;
  btnNovo.Enabled:=False;
  btnAlterar.Enabled:=False;
  btnExcluir.Enabled:=False;
  grp1.Enabled:=False;
  
  
  
end;

procedure TFormCadRetCP_Servicos.DesabilitaCampos5;
begin
  //
  dbedtNRPROCRETADIC.Enabled:=False;
  cbbTPPROCRETADIC.Enabled:=False;
  cbbCODSUSPADIC.Enabled:=False;
  dbedtVALORADIC.Enabled:=False;
  dbnvgr5.Enabled:=True;
 //
  dbnvgr1.Enabled:=True;
  btnNovo.Enabled:=True;
  btnAlterar.Enabled:=True;
  btnExcluir.Enabled:=True;
  grp1.Enabled:=True;
end;

procedure TFormCadRetCP_Servicos.validaPeriodo(texto:string);
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
