unit UFormCadComProdRural;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Grids, DBGrids, CRGrid, ExtCtrls, StdCtrls, Buttons,
  JvExStdCtrls, JvCombobox, JvDBCombobox, Mask, ComCtrls;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadComProdRural: TFormCadComProdRural;

implementation

uses UDM, frm_REINF;

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
end;

procedure TFormCadComProdRural.btn1Click(Sender: TObject);
begin
Close;
end;

procedure TFormCadComProdRural.btnIncluir1Click(Sender: TObject);
begin
 dm.unProcAdmJud.Filtered:=False;
 dm.unProcAdmJud.FilterSQL:='codigo=-1';
 dm.unProcAdmJud.Filtered:=True;

 habilitaCampos;

 DM.unProdRural.Insert;
 
 DM.unProdRural.FieldByName('codigo').AsInteger:=Codcurr;
 DM.unProdRural.FieldByName('NRInscBenef').AsString:= cnpjemp;
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

procedure TFormCadComProdRural.btnExcluir2Click(Sender: TObject);
begin
try
   If MessageDLG ('Confirma Exclusão do Registro ?', MTConfirmation, [MBYes, MBNo],0)=MRYes then
     Begin
        DM.unProcAdmJud.Delete;
        ShowMessage('Excluído com Sucesso.');
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
  DM.unProcAdmJud.FieldByName('VLRCPSUSP').AsFloat:=0.00;
  DM.unProcAdmJud.FieldByName('VLRRATSUSP').AsFloat:=0.00;
  DM.unProcAdmJud.FieldByName('VLRSENARSUSP').AsFloat:=0.00;
  
  btnGravar2.Enabled:=True;
  dbedtNRPROC.SetFocus; 
  
   btnExcluir2.Enabled:=False;
   btnAlterar2.Enabled:=False;
   btnCancelar2.Enabled:=True;
   dbnvgr3.Enabled:=False;
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
 DM.unTipoComProdRural.FieldByName('nrInscEstab').AsString:= DM.unProdRural.FieldByName('nrInscEstab').AsString;
 DM.unTipoComProdRural.FieldByName('VlrRecBruta').AsFloat:=0;
 
 cbbINDCOM.Enabled:=True;
 dbedtVLRRECBRUTA.Enabled:=True;

   btnExcluir3.Enabled:=False;
   btnAlterar3.Enabled:=False;
   btnCancelar3.Enabled:=True;
   dbnvgr1.Enabled:=False;
   pnl1.Enabled:=False;
   pnl2.Enabled:=False;
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
 btnExcluir2.Enabled:=False;
 btnIncluir2.Enabled:=False;
 btnCancelar2.Enabled:=True;
 dbnvgr3.Enabled:=False;
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
end;

procedure TFormCadComProdRural.btnGravar1Click(Sender: TObject);
begin
  if dbedtPERAPUR.Text='    -  ' then
  begin
    ShowMessage('Informe o Periódo');
    dbedtPERAPUR.SetFocus;
    Exit;
  end;
  
  if cbbINDCOM.Text='' then
  begin
    ShowMessage('Informe o indicador de Comercialização');
    cbbINDCOM.SetFocus;
    Exit;
  end; 

 if btnAlterar1.Enabled=False then
 begin
 DM.qryUtil.Close;
 DM.qryUtil.SQL.Clear;
 DM.qryUtil.SQL.Add('Select * from CadComProdRural_18 where codigo=:cod and PerApur=:per and NRINSCBENEF=:cnpj') ;
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
 DM.qryUtil.SQL.Add('Select * from ProcAdmJud_Tomador_18 where codigo=:cod and PerApur=:per and NRPROC=:proc') ;
 DM.qryUtil.ParamByName('cod').AsInteger:=Codcurr;
 DM.qryUtil.ParamByName('per').AsString:= dbedtPERAPUR.text;
 DM.qryUtil.ParamByName('proc').AsString:= dbedtNRPROC.text;
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
end;

procedure TFormCadComProdRural.btnGravar3Click(Sender: TObject);
begin
 if cbbINDCOM.Text='' then
 begin
  ShowMessage('Informe o tipo de Comercialização');
  cbbINDCOM.SetFocus;
  Exit;
 end;

DM.unTipoComProdRural.Post;

 cbbINDCOM.Enabled:=False;
 dbedtVLRRECBRUTA.Enabled:=False;

 btnExcluir3.Enabled:=True;
 btnAlterar3.Enabled:=True;
 btnCancelar3.Enabled:=False;
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
end;

procedure TFormCadComProdRural.FormShow(Sender: TObject);
begin
    DM.unProdRural.Close;
    DM.unProdRural.Filtered:=False;
    DM.unProdRural.FilterSQL:='codigo='+ IntToStr(codcurr);
    DM.unProdRural.Filtered:=True;
    DM.unProdRural.Open;

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

end.
