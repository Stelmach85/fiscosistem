unit UFormCadComProdRural;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Grids, DBGrids, CRGrid, ExtCtrls, StdCtrls, Buttons,
  JvExStdCtrls, JvCombobox, JvDBCombobox, Mask, ComCtrls, db;

type
  TFormCadComProdRural = class(TForm)
    pgc1: TPageControl;
    ts1: TTabSheet;
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl4: TLabel;
    dbedtPERAPUR: TDBEdit;
    dbedtVLRCPAPUR: TDBEdit;
    dbedtNRINSCBENEF: TDBEdit;
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
    dbedtVLRRATAPUR: TDBEdit;
    lbl6: TLabel;
    dbedtVLRSENARAPUR: TDBEdit;
    lbl7: TLabel;
    dbedtVLRCPSUSPTOTAL: TDBEdit;
    lbl12: TLabel;
    dbedtVLRRATSUSPTOTAL: TDBEdit;
    lbl13: TLabel;
    dbedtVLRSENARSUSPTOTAL: TDBEdit;
    lbl14: TLabel;
    dbedtVLRRECBRUTATOTAL: TDBEdit;
    pnl2: TPanel;
    lbl15: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    lbl22: TLabel;
    lbl23: TLabel;
    lbl26: TLabel;
    lbl27: TLabel;
    dbedtPERAPUR1: TDBEdit;
    cbbTPPROC1: TJvDBComboBox;
    dbedtCODSUSP1: TDBEdit;
    dbedtDTDECISAO1: TDBEdit;
    cbbINDDEPOSITO1: TJvDBComboBox;
    dbedtVLRCPSUSP: TDBEdit;
    dbedtVLRRATSUSP: TDBEdit;
    dbedtVLRSENARSUSP: TDBEdit;
    dbnvgr3: TDBNavigator;
    btnIncluir2: TBitBtn;
    btnGravar2: TBitBtn;
    btnAlterar2: TBitBtn;
    btnExcluir2: TBitBtn;
    btnCancelar2: TBitBtn;
    lbl31: TLabel;
    dbedtNRPROC: TDBEdit;
    lbl8: TLabel;
    cbbTPPROC: TJvDBComboBox;
    dbnvgr2: TDBNavigator;
    btnIncluir1: TBitBtn;
    btnGravar1: TBitBtn;
    btnAlterar1: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    pnl3: TPanel;
    dbnvgr1: TDBNavigator;
    btnIncluir3: TBitBtn;
    btnGravar3: TBitBtn;
    btnAlterar3: TBitBtn;
    btnExcluir3: TBitBtn;
    btnCancelar3: TBitBtn;
    cbbINDCOM: TJvDBComboBox;
    lbl3: TLabel;
    lbl9: TLabel;
    dbedtVLRRECBRUTA: TDBEdit;
    OpenArquivo: TOpenDialog;
    procedure FormShow(Sender: TObject);
    procedure btnIncluir1Click(Sender: TObject);
    procedure btnGravar1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnIncluir2Click(Sender: TObject);
    procedure btnAlterar1Click(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure habilitaCampos;
    procedure DesabilitaCampos;
    procedure btnGravar2Click(Sender: TObject);
    procedure btnAlterar2Click(Sender: TObject);
    procedure btnCancelar2Click(Sender: TObject);
    procedure habilitaCampos2;
    procedure DesabilitaCampos2;
    procedure btnExcluir2Click(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnIncluir3Click(Sender: TObject);
    procedure btnGravar3Click(Sender: TObject);
    procedure btnAlterar3Click(Sender: TObject);
    procedure btnExcluir3Click(Sender: TObject);
    procedure btnCancelar3Click(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
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
  FormCadComProdRural: TFormCadComProdRural;
  errodata:Boolean;

implementation

uses UDM, frm_REINF, Wait, UVerificaSistema;

{$R *.dfm}

procedure TFormCadComProdRural.btnCancelar2Click(Sender: TObject);
begin
 dm.unProcAdmJud.Cancel;
 DesabilitaCampos2;
 pnl1.Enabled:=True;
 pnl3.Enabled:=True;
 btnExcluir2.Enabled:=True;
 btnAlterar2.Enabled:=True;
 btnIncluir2.Enabled:=True;
 btnCancelar2.Enabled:=False;
 btnGravar2.Enabled:=False;
 dbnvgr3.Enabled:=True;

 dbnvgr2.Enabled:=true; 
 btnGravar1.Enabled:=true;
 btnAlterar1.Enabled:=true;
 btnIncluir1.Enabled:=true;
 btnExcluir.Enabled:=true;
 btnCancelar.Enabled:=true; 
end;

procedure TFormCadComProdRural.btnCancelar3Click(Sender: TObject);
begin
  DM.unTipoComProdRural.Cancel;
  cbbINDCOM.Enabled:=False;
 dbedtVLRRECBRUTA.Enabled:=False;

 btnExcluir3.Enabled:=True;
 btnAlterar3.Enabled:=True;
 btnIncluir3.Enabled:=True;
 btnCancelar3.Enabled:=False;
 btnGravar3.Enabled:=False;
 dbnvgr1.Enabled:=True;

 pnl1.Enabled:=True;
 pnl2.Enabled:=True;

  dbnvgr2.Enabled:=true; 
 btnGravar1.Enabled:=true;
 btnAlterar1.Enabled:=true;
 btnIncluir1.Enabled:=true;
 btnExcluir.Enabled:=true;
 btnCancelar.Enabled:=true; 
end;

procedure TFormCadComProdRural.btn1Click(Sender: TObject);
begin
Close;
end;

procedure TFormCadComProdRural.btnImportarClick(Sender: TObject);
var
 VerificaSistema:Verifica;
 T:TStringList;
 I:integer;
 importou:boolean;
 C,Linha:string;
 registro,perapur,nrInscestab,indcom,vlrRecBruta,vlrCPApur,vlrRatApur,VlrSenarApur :string;
 NrProc,tpproc,vlrcpSusp,VlrRatsusp,vlrSenarSusp :string  ;
begin
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
          ShowMessage('Arquivo de importação não encontrado');
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
               { Imp_CNPJ:=copy(linha,1,pos(c,linha)-1);
                delete(linha,1,pos(c,linha));

                if (Imp_CNPJ <> formataCnpj(cnpj)) then
                begin
                  showmessage('Este não é o arquivo de Processos no leiaute da Fiscosistem.');
                 // WaitForm.Close;
                  Exit;
                end;     }

                Registro:=copy(linha,1,pos(c,linha)-1);
                delete(linha,1,pos(c,linha));

                if linha='' then
                begin
                  Exit;
                end;
                
                
                if not (copy(registro,1,6)='R-2050')  then                
                begin
                  ShowMessage('Este não é o arquivo de Comercialização da Produção Rural ( R-2050) no leiaute da Fiscosistem');
                  WaitForm.Close;
                  Exit;
                end;
                
               if Registro='R-2050-1' then
               begin
                perApur:=copy(linha,1,pos(c,linha)-1);
                delete(linha,1,pos(c,linha));
                
                nrInscestab:= REINFForm.colocaMascara(copy(linha,1,pos(c,linha)-1));
                delete(linha,1,pos(c,linha));
                if nrInscestab<>cnpjemp then
                begin
                  ShowMessage('Registro '+IntToStr(i)+' não corresponde ao contribuinte selecionado.');
                  WaitForm.Close;
                  Exit;
                end;
                                                               
                indcom:=copy(linha,1,pos(c,linha)-1);
                delete(linha,1,pos(c,linha));

                vlrRecBruta:=copy(linha,1,pos(c,linha)-1);
                delete(linha,1,pos(c,linha));

                vlrCPApur:=copy(linha,1,pos(c,linha)-1);
                delete(linha,1,pos(c,linha));

                vlrRatApur:=copy(linha,1,pos(c,linha)-1);
                delete(linha,1,pos(c,linha));

                VlrSenarApur:=Linha;

                 if not ( (Copy(perApur,6,2)='01') or (Copy(perApur,6,2)='02') or (Copy(perApur,6,2)='03') or (Copy(perApur,6,2)='04') or (Copy(perApur,6,2)='05') 
                  or (Copy(perApur,6,2)='06')or (Copy(perApur,6,2)='07') or (Copy(perApur,6,2)='08') or (Copy(perApur,6,2)='09') or (Copy(perApur,6,2)='10')
                  or (Copy(perApur,6,2)='11') or (Copy(perApur,6,2)='12') or (Copy(perApur,6,2)='  ') )then
                  begin
                  ShowMessage('Mês informado esta errado');
                  WaitForm.Close;
                  Exit;
                  end ;

                  if (StrToIntDef(Copy(perApur,1,4),0)=0)then
                  begin
                    ShowMessage('Ano informado esta errado');
                    WaitForm.Close;
                    Exit;
                  end;
                  

                  if DM.unProdRural.Locate(('CODIGO;PERAPUR;NRINSCESTAB'),VarArrayOf([codcurr,perApur,nrInscestab]),[loCaseInsensitive]) then
                   begin
                   //Codigo_servico:= DM.unRetCP_ServTom.FieldByName('ID_SERVICO').AsInteger;
                     DM.unProdRural.Edit;
                     DM.unProdRural.FieldByName('vlrRecbrutaTotal').AsFloat:= DM.unProdRural.FieldByName('vlrRecbrutaTotal').AsFloat+StrToFloatDef(vlrRecBruta,0);
                     DM.unProdRural.FieldByName('vlrCPApur').AsFloat:=DM.unProdRural.FieldByName('vlrCPApur').AsFloat + StrToFloatDef(vlrCPApur,0);
                     DM.unProdRural.FieldByName('vlrRatApur').AsFloat:=DM.unProdRural.FieldByName('vlrRatApur').AsFloat + StrToFloatDef(vlrRatApur,0);
                     DM.unProdRural.FieldByName('VlrSenarApur').AsFloat:=DM.unProdRural.FieldByName('VlrSenarApur').AsFloat+ StrToFloatDef(VlrSenarApur,0);
                     DM.unProdRural.Post;
                   end
                   else
                   begin
                      DM.unProdRural.Insert;
                      DM.unProdRural.FieldByName('codigo').AsInteger:=Codcurr;
                      DM.unProdRural.FieldByName('perapur').AsString:=perapur;
                      DM.unProdRural.FieldByName('nrInscEstab').AsString:= nrInscestab;
                      DM.unProdRural.FieldByName('vlrRecbrutaTotal').AsFloat:= StrToFloatDef(vlrRecBruta,0);
                      DM.unProdRural.FieldByName('vlrCPApur').AsFloat:= StrToFloatDef(vlrCPApur,0);
                      DM.unProdRural.FieldByName('vlrRatApur').AsFloat:= StrToFloatDef(vlrRatApur,0);
                      DM.unProdRural.FieldByName('VlrSenarApur').AsFloat:= StrToFloatDef(VlrSenarApur,0);
                      DM.unProdRural.FieldByName('vlrCpSuspTotal').AsFloat:= 0;
                      DM.unProdRural.FieldByName('VlrRatSuspTotal').AsFloat:= 0;
                      DM.unProdRural.FieldByName('VLRSENARSUSPTOTAL').AsFloat:=0;
                      DM.unProdRural.Post;                      
                   end;

                  if DM.unTipoComProdRural.Locate(('CODIGO;PERAPUR;NRINSCESTAB;INDCOM'),VarArrayOf([codcurr,perApur,nrInscestab,indcom]),[loCaseInsensitive]) then
                  begin  
                  
                  end
                  else
                  begin
                   DM.unTipoComProdRural.Insert;
                   DM.unTipoComProdRural.FieldByName('codigo').AsInteger:=Codcurr;
                   DM.unTipoComProdRural.FieldByName('perapur').AsString:=perapur;
                   DM.unTipoComProdRural.FieldByName('nrInscEstab').AsString:= nrInscestab;
                   DM.unTipoComProdRural.FieldByName('indCom').AsInteger:=StrToInt(indcom);
                   DM.unTipoComProdRural.FieldByName('vlrRecBruta').AsFloat:= StrToFloatDef(vlrRecBruta,0);
                   DM.unTipoComProdRural.Post;

                     
                  end;
                
               end;

               if Registro='R-2050-2' then
               begin
                 NrProc:=copy(linha,1,pos(c,linha)-1);
                 delete(linha,1,pos(c,linha));

                 tpproc:=copy(linha,1,pos(c,linha)-1);
                 delete(linha,1,pos(c,linha));

                 vlrcpSusp:=copy(linha,1,pos(c,linha)-1);
                 delete(linha,1,pos(c,linha));

                 VlrRatsusp:=copy(linha,1,pos(c,linha)-1);
                 delete(linha,1,pos(c,linha));

                 vlrSenarSusp:=linha;

                 if (NrProc='') or (tpproc='') then
                 begin
                   ShowMessage('Campo Obrigatório em branco');
                   WaitForm.Close;
                   Exit;
                 end;
                 

                  if DM.unProcAdmJud.Locate(('CODIGO;PERAPUR;NRINSCESTAB;NrProc'),VarArrayOf([codcurr,perApur,nrInscestab,NrProc]),[loCaseInsensitive]) then
                  begin
                  
                  end
                  else
                  begin
                    DM.unProcAdmJud.Insert;
                    DM.unProcAdmJud.FieldByName('codigo').AsInteger:=Codcurr;
                    DM.unProcAdmJud.FieldByName('perapur').AsString:=perapur;
                    DM.unProcAdmJud.FieldByName('nrInscEstab').AsString:= nrInscestab;
                    DM.unProcAdmJud.FieldByName('NrProc').AsString:= NrProc;
                    DM.unProcAdmJud.FieldByName('tpProc').AsInteger:= StrToInt(tpproc);
                    DM.unProcAdmJud.FieldByName('vlrCpSusp').AsFloat:= StrToFloatDef(vlrcpSusp,0);
                    DM.unProcAdmJud.FieldByName('vlrRatSusp').AsFloat:= StrToFloatDef(VlrRatsusp,0);
                    DM.unProcAdmJud.FieldByName('vlrSenarSusp').AsFloat:= StrToFloatDef(vlrSenarSusp,0);
                    DM.unProcAdmJud.Post;
                    
                    
                     dm.qryUtil.Close;
                     dm.qryUtil.SQL.Clear;
                     dm.qryUtil.SQL.Add('select sum(vlrCpSusp)as vlrCpSusp, sum(vlrRatSusp)as vlrRatSusp, sum(vlrSenarSusp)as vlrSenarSusp from ProcAdmJud_ProdRural_18 where') ;
                     dm.qryUtil.SQL.Add('codigo=:cod and perApur=:per and nrInscEstab=:estab') ;
                     dm.qryUtil.ParamByName('cod').AsInteger:=Codcurr;
                     dm.qryUtil.ParamByName('per').AsString:= DM.unProdRural.FieldByName('perApur').AsString;
                     dm.qryUtil.ParamByName('estab').AsString:= DM.unProdRural.FieldByName('nrInscEstab').AsString;
                     dm.qryUtil.Open;

                     if DM.unProdRural.Locate(('CODIGO;PERAPUR;NRINSCESTAB'),VarArrayOf([codcurr,perApur,nrInscestab]),[loCaseInsensitive]) then
                     begin 
                       DM.unProdRural.Edit;
                       DM.unProdRural.FieldByName('vlrCpSuspTotal').AsFloat:= dm.qryUtil.FieldByName('vlrCpSusp').AsFloat; 
                       DM.unProdRural.FieldByName('vlrRatSuspTotal').AsFloat:= dm.qryUtil.FieldByName('vlrRatSusp').AsFloat; 
                       DM.unProdRural.FieldByName('vlrSenarSuspTotal').AsFloat:= dm.qryUtil.FieldByName('vlrSenarSusp').AsFloat; 
                       DM.unProdRural.Post;
                     end;
                  
                  end;
               
               end;
               

             end;
         end;
    end;
    

end;

procedure TFormCadComProdRural.btnIncluir1Click(Sender: TObject);
begin
 dm.unProcAdmJud.Filtered:=False;
 dm.unProcAdmJud.FilterSQL:='codigo=-1';
 dm.unProcAdmJud.Filtered:=True;

 habilitaCampos;

 DM.unProdRural.Insert;
 
 DM.unProdRural.FieldByName('codigo').AsInteger:=Codcurr;
 DM.unProdRural.FieldByName('NRINSCESTAB').AsString:= cnpjemp;
 DM.unProdRural.FieldByName('VLRRECBRUTATOTAL').AsFloat:=0.00;
 DM.unProdRural.FieldByName('VLRCPAPUR').AsFloat:=0.00;
 DM.unProdRural.FieldByName('VLRRATAPUR').AsFloat:=0.00;
 DM.unProdRural.FieldByName('VLRSENARAPUR').AsFloat:=0.00;
 DM.unProdRural.FieldByName('VLRCPSUSPTOTAL').AsFloat:=0.00;
 DM.unProdRural.FieldByName('VLRRATSUSPTOTAL').AsFloat:=0.00;
 DM.unProdRural.FieldByName('VLRSENARSUSPTOTAL').AsFloat:=0.00;
 

btnGravar1.Enabled:=True; 
pnl2.Enabled:=False;
pnl3.Enabled:=False;
dbedtPERAPUR.SetFocus;

   btnExcluir.Enabled:=False;
   btnAlterar1.Enabled:=False;
   btnCancelar.Enabled:=True;
   dbnvgr2.Enabled:=False;
end;

procedure TFormCadComProdRural.btnAlterar1Click(Sender: TObject);
begin
  if DM.unProdRural.FieldByName('codigo').AsInteger<1 then
  begin
    ShowMessage('Não existe registro para alteração');
    btnCancelar.Click;
    Exit;
  end;

 pnl2.Enabled:=False;
 pnl3.Enabled:=False;
 habilitaCampos;
 dbedtPERAPUR.Enabled:=False;
 dbedtNRINSCBENEF.Enabled:=False;
 
 DM.unProdRural.edit;

 btnExcluir.Enabled:=False;
 btnIncluir1.Enabled:=False;
 btnCancelar.Enabled:=True;
 btnGravar1.Enabled:=True;
 dbnvgr2.Enabled:=False;

end;

procedure TFormCadComProdRural.btnCancelarClick(Sender: TObject);
begin
DM.unProdRural.Cancel;
DesabilitaCampos;
pnl2.Enabled:=True;
pnl3.Enabled:=True;
 btnExcluir.Enabled:=True;
 btnAlterar1.Enabled:=True;
 btnIncluir1.Enabled:=True;
 btnCancelar.Enabled:=False;
 btnGravar1.Enabled:=False;
 dbnvgr2.Enabled:=True;
end;

procedure TFormCadComProdRural.btnConsultarClick(Sender: TObject);
begin
 dm.qryConsultaProdRural.Close;
 DM.qryConsultaProdRural.ParamByName('cod').AsInteger:=Codcurr;
 DM.qryConsultaProdRural.Open;
end;

procedure TFormCadComProdRural.btnExcelClick(Sender: TObject);
begin
dm.qryConsultaProdRural.Close;
 DM.qryConsultaProdRural.ParamByName('cod').AsInteger:=Codcurr;
 DM.qryConsultaProdRural.Open;
 REINFForm.GeraExcel(DM.qryConsultaProdRural);
end;

procedure TFormCadComProdRural.btnExcluir1Click(Sender: TObject);
begin
   try
  If MessageDLG ('Confirma Exclusão de todos registros  ???' +#13+
     '', MTConfirmation, [MBYes, MBNo],0)=MRYes then
     Begin
        DM.qryUtil.Close;
        DM.qryUtil.SQL.Clear;
        DM.qryUtil.SQL.Add('delete from CadComProdRural_18 where codigo=:cod')  ;
        DM.qryUtil.ParamByName('cod').AsInteger:=Codcurr;
        DM.qryUtil.Execute;
        ShowMessage('Dados Excluídos com sucesso');
        DM.unProdRural.Close;
        DM.unProdRural.Open; 

        DM.unTipoComProdRural.Close;
        DM.unTipoComProdRural.Open;

        DM.unProcAdmJud.Close;
        DM.unProcAdmJud.Open;
               
        btnConsultar.OnClick(self);
     End;
except
   ShowMessage('Não há Dados para serem excluídos');
end;
end;

procedure TFormCadComProdRural.btnExcluir2Click(Sender: TObject);
begin
try
   If MessageDLG ('Confirma Exclusão do Registro ?', MTConfirmation, [MBYes, MBNo],0)=MRYes then
     Begin
        DM.unProcAdmJud.Delete;
        ShowMessage('Excluído com Sucesso.');
         dm.qryUtil.Close;
         dm.qryUtil.SQL.Clear;
         dm.qryUtil.SQL.Add('select sum(vlrCpSusp)as vlrCpSusp, sum(vlrRatSusp)as vlrRatSusp, sum(vlrSenarSusp)as vlrSenarSusp from ProcAdmJud_ProdRural_18 where') ;
         dm.qryUtil.SQL.Add('codigo=:cod and perApur=:per and nrInscEstab=:estab') ;
         dm.qryUtil.ParamByName('cod').AsInteger:=Codcurr;
         dm.qryUtil.ParamByName('per').AsString:= DM.unProdRural.FieldByName('perApur').AsString;
         dm.qryUtil.ParamByName('estab').AsString:= DM.unProdRural.FieldByName('nrInscEstab').AsString;
         dm.qryUtil.Open;
         DM.unProdRural.Edit;
         DM.unProdRural.FieldByName('vlrCpSuspTotal').AsFloat:= dm.qryUtil.FieldByName('vlrCpSusp').AsFloat; 
         DM.unProdRural.FieldByName('vlrRatSuspTotal').AsFloat:= dm.qryUtil.FieldByName('vlrRatSusp').AsFloat; 
         DM.unProdRural.FieldByName('vlrSenarSuspTotal').AsFloat:= dm.qryUtil.FieldByName('vlrSenarSusp').AsFloat; 
         DM.unProdRural.Post;
     End;
 except
    ShowMessage('Não existem dados para ser excluído');
 end;
end;

procedure TFormCadComProdRural.btnExcluir3Click(Sender: TObject);
begin
try
   If MessageDLG ('Confirma Exclusão do Registro ?', MTConfirmation, [MBYes, MBNo],0)=MRYes then
     Begin
        DM.unTipoComProdRural.Delete;
        ShowMessage('Excluído com Sucesso.');
         // atualiza valor do nivel 1
       dm.qryUtil.Close;
       dm.qryUtil.SQL.Clear;
       dm.qryUtil.SQL.Add('select sum(vlrRecBruta)as recBruta from tipoComProdRural_18 where') ;
       dm.qryUtil.SQL.Add('codigo=:cod and perApur=:per and nrInscEstab=:estab') ;
       dm.qryUtil.ParamByName('cod').AsInteger:=Codcurr;
       dm.qryUtil.ParamByName('per').AsString:= DM.unProdRural.FieldByName('perApur').AsString;
       dm.qryUtil.ParamByName('estab').AsString:= DM.unProdRural.FieldByName('nrInscEstab').AsString;
       dm.qryUtil.Open;
       DM.unProdRural.Edit;
       DM.unProdRural.FieldByName('vlrRecBrutaTotal').AsFloat:= dm.qryUtil.FieldByName('recBruta').AsFloat; 
       DM.unProdRural.Post;
     End;
 except
    ShowMessage('Não existem dados para ser excluído');
 end;
 
end;

procedure TFormCadComProdRural.btnExcluirClick(Sender: TObject);
begin
 try

 If MessageDLG ('Confirma Exclusão do Período ' +DM.unProdRuralPERAPUR.AsString+ '???' +#13+
     'Lembre-se que este procedimento irá excluir todos os dados deste Período', MTConfirmation, [MBYes, MBNo],0)=MRYes then
     Begin
         
        DM.unProdRural.Delete;
        ShowMessage('Registro Excluído com Sucesso');
     End;
 except
    ShowMessage('Não existem dados para ser excluído');
 end;
end;

procedure TFormCadComProdRural.btnIncluir2Click(Sender: TObject);
begin
 if DM.unProdRural.FieldByName('PERAPUR').AsString='' then
 begin
   ShowMessage(' Deve-se realizar o Cadastro de um Período primeiro');
   Exit;
 end;
 

 pnl1.Enabled:=False;
 pnl3.Enabled:=False;
 habilitaCampos2;
 
  DM.unProcAdmJud.Insert;
  DM.unProcAdmJud.FieldByName('codigo').AsInteger:=Codcurr;
  DM.unProcAdmJud.FieldByName('PERAPUR').AsString:=DM.unProdRural.FieldByName('PERAPUR').AsString;
  DM.unProcAdmJud.FieldByName('nrInscEstab').AsString:=DM.unProdRural.FieldByName('nrInscEstab').AsString;
  DM.unProcAdmJud.FieldByName('VLRCPSUSP').AsFloat:=0.00;
  DM.unProcAdmJud.FieldByName('VLRRATSUSP').AsFloat:=0.00;
  DM.unProcAdmJud.FieldByName('VLRSENARSUSP').AsFloat:=0.00;
  
  btnGravar2.Enabled:=True;
  dbedtNRPROC.SetFocus; 
  
   btnExcluir2.Enabled:=False;
   btnAlterar2.Enabled:=False;
   btnCancelar2.Enabled:=True;
   dbnvgr3.Enabled:=False;

    dbnvgr2.Enabled:=False; 
 btnGravar1.Enabled:=False;
 btnAlterar1.Enabled:=False;
 btnIncluir1.Enabled:=False;
 btnExcluir.Enabled:=False;
 btnCancelar.Enabled:=False; 
end;

procedure TFormCadComProdRural.btnIncluir3Click(Sender: TObject);
begin

 if DM.unProdRural.FieldByName('PERAPUR').AsString='' then
 begin
   ShowMessage(' Deve-se realizar o Cadastro de um Período primeiro');
   Exit;
 end;
 
 DM.unTipoComProdRural.Insert;
 DM.unTipoComProdRural.FieldByName('codigo').AsInteger:=Codcurr;
 DM.unTipoComProdRural.FieldByName('perapur').AsString:= DM.unProdRural.FieldByName('perApur').AsString;
 DM.unTipoComProdRural.FieldByName('nrInscEstab').AsString:= DM.unProdRural.FieldByName('NRINSCESTAB').AsString;
 DM.unTipoComProdRural.FieldByName('VlrRecBruta').AsFloat:=0;
 
 cbbINDCOM.Enabled:=True;
 dbedtVLRRECBRUTA.Enabled:=True;

   btnExcluir3.Enabled:=False;
   btnAlterar3.Enabled:=False;
   btnCancelar3.Enabled:=True;
   btnGravar3.Enabled:=True;
   dbnvgr1.Enabled:=False;   
   pnl1.Enabled:=False;
   pnl2.Enabled:=False;


 dbnvgr2.Enabled:=False; 
 btnGravar1.Enabled:=False;
 btnAlterar1.Enabled:=False;
 btnIncluir1.Enabled:=False;
 btnExcluir.Enabled:=False;
 btnCancelar.Enabled:=False; 
end;

procedure TFormCadComProdRural.btnLocalizarClick(Sender: TObject);
begin
OpenArquivo.DefaultExt :='.TXT';
 OpenArquivo.InitialDir :='C:\';
 if OpenArquivo.Execute Then
    lbledtArquivo.Text:= OpenArquivo.FileName;
end;

procedure TFormCadComProdRural.btnSairClick(Sender: TObject);
begin
close ;
end;

procedure TFormCadComProdRural.dbedtPERAPURExit(Sender: TObject);
begin
 validaPeriodo(Copy(dbedtPERAPUR.text,6,2));
 if errodata then
   dbedtPERAPUR.SetFocus;
end;

procedure TFormCadComProdRural.btnAlterar2Click(Sender: TObject);
begin
 if DM.unProcAdmJud.FieldByName('codigo').AsInteger<1 then
  begin
    ShowMessage('Não existe registro para alteração');
    btnCancelar2.Click();
    Exit;
  end;
 
 DM.unProcAdmJud.Edit;
 
 habilitaCampos2;
 pnl1.Enabled:=False;
 pnl3.Enabled:=False;

 dbnvgr3.Enabled:=False;
 
 btnGravar1.Enabled:=False;
 btnAlterar1.Enabled:=False;
 btnIncluir1.Enabled:=False;
 btnExcluir.Enabled:=False;
 btnCancelar.Enabled:=False; 

 btnExcluir2.Enabled:=False;
 btnIncluir2.Enabled:=False;
 btnCancelar2.Enabled:=True;
 btnGravar2.Enabled:=True;
 dbnvgr2.Enabled:=False;
 
end;

procedure TFormCadComProdRural.btnAlterar3Click(Sender: TObject);
begin
DM.unTipoComProdRural.Edit;

 cbbINDCOM.Enabled:=False;
 dbedtVLRRECBRUTA.Enabled:=True;
 
 btnExcluir3.Enabled:=False;
 btnIncluir3.Enabled:=False;
 btnCancelar3.Enabled:=True;
 dbnvgr1.Enabled:=False;
 pnl1.Enabled:=False;
 pnl2.Enabled:=False;

 dbnvgr2.Enabled:=False; 
 btnGravar1.Enabled:=False;
 btnAlterar1.Enabled:=False;
 btnIncluir1.Enabled:=False;
 btnExcluir.Enabled:=False;
 btnCancelar.Enabled:=False; 

 btnExcluir3.Enabled:=False;
 btnIncluir3.Enabled:=False;
 btnCancelar3.Enabled:=True;
 btnGravar3.Enabled:=True;
 dbnvgr3.Enabled:=False;
end;

procedure TFormCadComProdRural.btnGravar1Click(Sender: TObject);
begin
  if dbedtPERAPUR.Text='    -  ' then
  begin
    ShowMessage('Informe o Periódo');
    dbedtPERAPUR.SetFocus;
    Exit;
  end;

  if dbedtVLRRECBRUTATOTAl.Text='    -  ' then
  begin
    ShowMessage('Informe o Periódo');
    dbedtVLRRECBRUTATOTAL.SetFocus;
    Exit;
  end;

  if dbedtVLRCPAPUR.Text='    -  ' then
  begin
    ShowMessage('Informe o Periódo');
    dbedtVLRCPAPUR.SetFocus;
    Exit;
  end;

  if dbedtVLRRATAPUR.Text='    -  ' then
  begin
    ShowMessage('Informe o Periódo');
    dbedtVLRCPAPUR.SetFocus;
    Exit;
  end;

  if dbedtVLRSENARAPUR.Text='    -  ' then
  begin
    ShowMessage('Informe o Periódo');
    dbedtVLRCPAPUR.SetFocus;
    Exit;
  end;
  
  

 if btnAlterar1.Enabled=False then
 begin
 DM.qryUtil.Close;
 DM.qryUtil.SQL.Clear;
 DM.qryUtil.SQL.Add('Select * from CadComProdRural_18 where codigo=:cod and PerApur=:per and NRINSCESTAB=:cnpj') ;
 DM.qryUtil.ParamByName('cod').AsInteger:=Codcurr;
 DM.qryUtil.ParamByName('per').AsString:= dbedtPERAPUR.text;
 DM.qryUtil.ParamByName('cnpj').AsString:= dbedtNRINSCBENEF.text;
 DM.qryUtil.Open;
 if not DM.qryUtil.eof then
  begin
    ShowMessage('Período já cadastrado para este CNPJ');
    dbedtPERAPUR.SetFocus;
    Exit;
  end;
 end;
   


 DM.unProdRural.Post;

 DesabilitaCampos;
 btnIncluir1.Enabled:=True;
 pnl2.Enabled:=true;
 pnl3.Enabled:=true;

 btnExcluir.Enabled:=True;
 btnAlterar1.Enabled:=True;
 btnCancelar.Enabled:=False;
 dbnvgr2.Enabled:=True;


end;

procedure TFormCadComProdRural.btnGravar2Click(Sender: TObject);
begin
 if dbedtNRPROC.text='' then
 begin
  ShowMessage('Informe o número do Processo');
  dbedtNRPROC.SetFocus;
  Exit
 end;

 if cbbTPPROC.text='' then
 begin
  ShowMessage('Informe o tipo do Processo');
  cbbTPPROC.SetFocus;
  Exit
 end;

  if dbedtVLRCPSUSP.text='' then
 begin
  ShowMessage('Informe o tipo do Processo');
  dbedtVLRCPSUSP.SetFocus;
  Exit
 end;

  if dbedtVLRRATSUSP.text='' then
 begin
  ShowMessage('Informe o tipo do Processo');
  dbedtVLRRATSUSP.SetFocus;
  Exit
 end;

 if dbedtVLRSENARSUSP.text='' then
 begin
  ShowMessage('Informe o tipo do Processo');
  dbedtVLRSENARSUSP.SetFocus;
  Exit
 end;

 {if cbbTPPROC.text='' then
 begin
  ShowMessage('Informe o tipo do Processo');
  cbbTPPROC.SetFocus;
  Exit
 end;   }

 DM.qryUtil.Close;
 DM.qryUtil.SQL.Clear;
 DM.qryUtil.SQL.Add('Select * from PROCESSOS_18 where codigo=:cod and NRPROC=:proc') ;
 DM.qryUtil.ParamByName('cod').AsInteger:=Codcurr;
 DM.qryUtil.ParamByName('proc').AsString:= dbedtNRPROC.text;
 DM.qryUtil.Open;
 if DM.qryUtil.Eof then
 begin
   ShowMessage('o Número do Processo deve estar cadastrado nos Processos');
   dbedtNRPROC.SetFocus;
   Exit
 end;
 
 if btnAlterar2.Enabled=False then
 begin
 DM.qryUtil.Close;
 DM.qryUtil.SQL.Clear;
 DM.qryUtil.SQL.Add('Select * from ProcAdmJud_ProdRural_18 where codigo=:cod and PerApur=:per and NRPROC=:proc and nrInscEstab=:estab') ;
 DM.qryUtil.ParamByName('cod').AsInteger:=Codcurr;
 DM.qryUtil.ParamByName('per').AsString:= dbedtPERAPUR.text;
 DM.qryUtil.ParamByName('proc').AsString:= dbedtNRPROC.text;
 dm.qryUtil.ParamByName('estab').AsString:= DM.unProdRural.FieldByName('nrInscEstab').AsString;
 DM.qryUtil.Open;
 if not DM.qryUtil.eof then
  begin
    ShowMessage('Processo já informado para este Período.');
    dbedtNRPROC.SetFocus;
    Exit;
  end;
 end;


 pnl1.Enabled:=True;
 pnl3.Enabled:=True;
 
 DesabilitaCampos2;

 DM.unProcAdmJud.Post;

 btnExcluir2.Enabled:=True;
 btnAlterar2.Enabled:=True;
 btnCancelar2.Enabled:=False;
 dbnvgr3.Enabled:=True;

 dm.qryUtil.Close;
 dm.qryUtil.SQL.Clear;
 dm.qryUtil.SQL.Add('select sum(vlrCpSusp)as vlrCpSusp, sum(vlrRatSusp)as vlrRatSusp, sum(vlrSenarSusp)as vlrSenarSusp from ProcAdmJud_ProdRural_18 where') ;
 dm.qryUtil.SQL.Add('codigo=:cod and perApur=:per and nrInscEstab=:estab') ;
 dm.qryUtil.ParamByName('cod').AsInteger:=Codcurr;
 dm.qryUtil.ParamByName('per').AsString:= DM.unProdRural.FieldByName('perApur').AsString;
 dm.qryUtil.ParamByName('estab').AsString:= DM.unProdRural.FieldByName('nrInscEstab').AsString;
 dm.qryUtil.Open;
 DM.unProdRural.Edit;
 DM.unProdRural.FieldByName('vlrCpSuspTotal').AsFloat:= dm.qryUtil.FieldByName('vlrCpSusp').AsFloat; 
 DM.unProdRural.FieldByName('vlrRatSuspTotal').AsFloat:= dm.qryUtil.FieldByName('vlrRatSusp').AsFloat; 
 DM.unProdRural.FieldByName('vlrSenarSuspTotal').AsFloat:= dm.qryUtil.FieldByName('vlrSenarSusp').AsFloat; 
 DM.unProdRural.Post;

  dbnvgr2.Enabled:=true; 
 btnGravar1.Enabled:=true;
 btnAlterar1.Enabled:=true;
 btnIncluir1.Enabled:=true;
 btnExcluir.Enabled:=true;
 btnCancelar.Enabled:=true; 
end;

procedure TFormCadComProdRural.btnGravar3Click(Sender: TObject);
begin
 if cbbINDCOM.Text='' then
 begin
  ShowMessage('Informe o tipo de Comercialização');
  cbbINDCOM.SetFocus;
  Exit;
 end;

  if dbedtVLRRECBRUTA.Text='' then
 begin
  ShowMessage('Informe o tipo de Comercialização');
  dbedtVLRRECBRUTA.SetFocus;
  Exit;
 end;

DM.unTipoComProdRural.Post;

 cbbINDCOM.Enabled:=False;
 dbedtVLRRECBRUTA.Enabled:=False;

 btnExcluir3.Enabled:=True;
 btnAlterar3.Enabled:=True;
 btnCancelar3.Enabled:=False;
 btnGravar3.Enabled:=False;
 dbnvgr1.Enabled:=True;
  pnl1.Enabled:=True;
  pnl2.Enabled:=True;

 // atualiza valor do nivel 1
 dm.qryUtil.Close;
 dm.qryUtil.SQL.Clear;
 dm.qryUtil.SQL.Add('select sum(vlrRecBruta)as recBruta from tipoComProdRural_18 where') ;
 dm.qryUtil.SQL.Add('codigo=:cod and perApur=:per and nrInscEstab=:estab') ;
 dm.qryUtil.ParamByName('cod').AsInteger:=Codcurr;
 dm.qryUtil.ParamByName('per').AsString:= DM.unProdRural.FieldByName('perApur').AsString;
 dm.qryUtil.ParamByName('estab').AsString:= DM.unProdRural.FieldByName('nrInscEstab').AsString;
 dm.qryUtil.Open;
 DM.unProdRural.Edit;
 DM.unProdRural.FieldByName('vlrRecBrutaTotal').AsFloat:= dm.qryUtil.FieldByName('recBruta').AsFloat; 
 DM.unProdRural.Post;

  dbnvgr2.Enabled:=true; 
 btnGravar1.Enabled:=true;
 btnAlterar1.Enabled:=true;
 btnIncluir1.Enabled:=true;
 btnExcluir.Enabled:=true;
 btnCancelar.Enabled:=true; 
end;

procedure TFormCadComProdRural.FormShow(Sender: TObject);
begin
    DM.unProdRural.Close;
    DM.unProdRural.Filtered:=False;
    DM.unProdRural.FilterSQL:='codigo='+ IntToStr(codcurr);
    DM.unProdRural.Filtered:=True;
    DM.unProdRural.Open;
    DM.unTipoComProdRural.open;

     dm.qryConsultaProdRural.Close;
     DM.qryConsultaProdRural.ParamByName('cod').AsInteger:=-1;
     DM.qryConsultaProdRural.Open;

 DesabilitaCampos;
 DesabilitaCampos2;
 pgc1.ActivePage:=ts1; 
end;

procedure TFormCadComProdRural.habilitaCampos;
begin
  dbedtPERAPUR.Enabled:=True;
  dbedtVLRRECBRUTATOTAL.Enabled:=True;
  dbedtNRINSCBENEF.Enabled:=True;
  dbedtVLRCPAPUR.Enabled:=True;
  dbedtVLRRATAPUR.Enabled:=True;
  dbedtVLRSENARAPUR.Enabled:=True;
  cbbINDCOM.Enabled:=True;
  dbedtVLRCPSUSPTOTAL.Enabled:=True;
  dbedtVLRRATSUSPTOTAL.Enabled:= True;
  dbedtVLRSENARSUSPTOTAL.Enabled:=True;

end;

procedure TFormCadComProdRural.DesabilitaCampos;
begin
  dbedtPERAPUR.Enabled:=False;
  dbedtVLRRECBRUTATOTAL.Enabled:=False;
  dbedtNRINSCBENEF.Enabled:=False;
  dbedtVLRCPAPUR.Enabled:=False;
  dbedtVLRRATAPUR.Enabled:=False;
  dbedtVLRSENARAPUR.Enabled:=False;
  cbbINDCOM.Enabled:=False;
  dbedtVLRCPSUSPTOTAL.Enabled:=False;
  dbedtVLRRATSUSPTOTAL.Enabled:= False;
  dbedtVLRSENARSUSPTOTAL.Enabled:=False;

 

end;

procedure TFormCadComProdRural.habilitaCampos2;
begin
 dbedtNRPROC.Enabled:= True;
 cbbTPPROC.Enabled:=True;
 dbedtVLRCPSUSP.Enabled:=True;
 dbedtVLRRATSUSP.Enabled:=True;
 dbedtVLRSENARSUSP.Enabled:=True;

end;

procedure TFormCadComProdRural.DesabilitaCampos2;
begin
 dbedtNRPROC.Enabled:= False;
 cbbTPPROC.Enabled:=False;
 dbedtVLRCPSUSP.Enabled:=False;
 dbedtVLRRATSUSP.Enabled:=False;
 dbedtVLRSENARSUSP.Enabled:=False;
end;

procedure TFormCadComProdRural.validaPeriodo(texto:string);
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
