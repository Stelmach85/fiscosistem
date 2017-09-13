unit UFormCadProcessos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvCombobox, JvDBCombobox, Mask, DBCtrls,
  ExtCtrls, Buttons, Grids, DBGrids, CRGrid, ComCtrls, DB;

type
  TFormCadProcessos = class(TForm)
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    dbedtPERAPUR: TDBEdit;
    dbedtNRPROC: TDBEdit;
    cbbINDSUSP: TJvDBComboBox;
    dbedtNRINSC: TDBEdit;
    cbbTPINSC: TJvDBComboBox;
    dbedtINIVALID: TDBEdit;
    dbedtFIMVALID: TDBEdit;
    cbbTPPROC: TJvDBComboBox;
    dbedtCODSUSP: TDBEdit;
    dbedtDTDECISAO: TDBEdit;
    cbbINDDEPOSITO: TJvDBComboBox;
    dbedtUFVARA: TDBEdit;
    dbedtCODMUNIC: TDBEdit;
    dbedtIDVARA: TDBEdit;
    cbbINDAUDITORIA: TJvDBComboBox;
    dbnvgr1: TDBNavigator;
    btnNovo: TBitBtn;
    btnGravar: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btn1: TBitBtn;
    lbledtArquivo: TLabeledEdit;
    btnLocalizar: TBitBtn;
    lbledtSeparador: TLabeledEdit;
    lblDados: TLabel;
    crdbgrdPlanoContas: TCRDBGrid;
    OpenArquivo: TOpenDialog;
    btnImportar: TBitBtn;
    btnExcel: TBitBtn;
    btnConsultar: TBitBtn;
    btnExcluir1: TBitBtn;
    btnSair: TBitBtn;
    procedure btn1Click(Sender: TObject);
    procedure habilitaCampos;
    procedure DesabilitaCampos;
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbTPINSCChange(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnExcluir1Click(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadProcessos: TFormCadProcessos;

implementation

uses UDM, frm_REINF, UVerificaSistema, Wait;

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
function formataCnpj(cnpj : string):string;
begin
  Result:= Copy(cnpj,1,2)+copy(cnpj,4,3)+copy(cnpj,8,3)+copy(cnpj,12,4)+copy(cnpj,17,2);
end;


procedure TFormCadProcessos.btn1Click(Sender: TObject);
begin
Close;
dm.unProcessos.Close;
DM.unConslProcessos.Close;
end;

procedure TFormCadProcessos.habilitaCampos;
begin
dbedtPERAPUR.Enabled:=True;
dbedtNRPROC.Enabled:=True;
cbbINDSUSP.Enabled:=True;
cbbTPINSC.Enabled:=True;
dbedtNRINSC.Enabled:=True;
dbedtINIVALID.Enabled:=True;
dbedtFIMVALID.Enabled:=True;
cbbTPPROC.Enabled:=True;
dbedtCODSUSP.Enabled:=True;
dbedtDTDECISAO.Enabled:=True;
cbbINDDEPOSITO.Enabled:=True;
dbedtUFVARA.Enabled:=True;
dbedtCODMUNIC.Enabled:=True;
dbedtIDVARA.Enabled:=True;
cbbINDAUDITORIA.Enabled:=True;

end;

procedure TFormCadProcessos.btnAlterarClick(Sender: TObject);
begin
 DM.unProcessos.Edit;
 btnAlterar.Enabled:=False;
 btnGravar.Enabled:=True;
 btnCancelar.Enabled:=True;
 HabilitaCampos;
end;

procedure TFormCadProcessos.btnCancelarClick(Sender: TObject);
begin
 DM.unProcessos.Cancel;
 btnNovo.Enabled:=True;
 btnAlterar.Enabled:=True;
 btnGravar.Enabled:=False;
 btnCancelar.Enabled:=False;
 DesabilitaCampos;
end;

procedure TFormCadProcessos.btnConsultarClick(Sender: TObject);
begin
DM.unConslProcessos.Close;
DM.unConslProcessos.FilterSQL:='Codigo='+ IntToStr(Codcurr);
DM.unConslProcessos.Filtered:=True;           
dm.unConslProcessos.Open;

end;

procedure TFormCadProcessos.btnExcelClick(Sender: TObject);
begin
 DM.qryUtil.Close;
 DM.qryUtil.SQL.Clear;
 DM.qryUtil.SQL.Add('select * from processos_18 where codigo=:cod')  ;
 DM.qryUtil.ParamByName('cod').AsInteger:=Codcurr;
 DM.qryUtil.Open;
        
   REINFForm.GeraExcel(DM.qryUtil);
end;

procedure TFormCadProcessos.btnExcluir1Click(Sender: TObject);
begin
   If MessageDLG ('Confirma Exclus�o de todos registros de Processos deste Contribuinte ???' +#13+
     '', MTConfirmation, [MBYes, MBNo],0)=MRYes then
     Begin
        DM.qryUtil.Close;
        DM.qryUtil.SQL.Clear;
        DM.qryUtil.SQL.Add('delete from processos_18 where codigo=:cod')  ;
        DM.qryUtil.ParamByName('cod').AsInteger:=Codcurr;
        DM.qryUtil.Execute;
     End;
end;

procedure TFormCadProcessos.btnExcluirClick(Sender: TObject);
begin
 If MessageDLG ('Confirma Exclus�o do registro ' +DM.unProcessos.FieldByName('NRPROC').AsString+ '???' +#13+
     '', MTConfirmation, [MBYes, MBNo],0)=MRYes then
     Begin
        DM.unProcessos.Delete;
     End;
end;

procedure TFormCadProcessos.btnGravarClick(Sender: TObject);
begin
 if dbedtPERAPUR.Text='    -  ' then
 begin
   ShowMessage('Informe o Per�odo de Refer�ncia ');
   dbedtPERAPUR.SetFocus;
   Abort;
 end;
 if dbedtNRPROC.Text='' then
 begin
   ShowMessage('Informe o N�mero do Processo Adm/Judicial ');
   dbedtNRPROC.SetFocus;
   Abort;
 end;
 if cbbINDSUSP.Text='' then
 begin
   ShowMessage('Informe o Indicativo de suspens�o da Exigibilidade ');
   cbbINDSUSP.SetFocus;
   Abort;
 end;
 if cbbTPINSC.Text='' then
 begin
   ShowMessage('Informe o Tipo de Inscri��o CPF/CNPJ ');
   cbbTPINSC.SetFocus;
   Abort;
 end;
 
 if (dbedtNRINSC.Text='  .   .   -  ') or  (dbedtNRINSC.Text='  .   .   /    -  ')  then
 begin
   ShowMessage('Informe o  CPF/CNPJ ');
   dbedtNRINSC.SetFocus;
   Abort;
 end;

 if dbedtINIVALID.Text='    -  ' then
 begin
   ShowMessage('Informe a Data Inicial ');
   dbedtINIVALID.SetFocus;
   Abort;
 end;
 if cbbTPPROC.Text='' then
 begin
   ShowMessage('Informe o Tipo de Processo Adm/Judicial ');
   cbbTPPROC.SetFocus;
   Abort;
 end;
 if dbedtDTDECISAO.Text='  /  /    ' then
 begin
   ShowMessage('Informe a Data da Deciss�o ');
   dbedtDTDECISAO.SetFocus;
   Abort;
 end;
 if cbbINDDEPOSITO.Text='' then
 begin
   ShowMessage('Informe o Indicativo de Deposito do Montante');
   dbedtDTDECISAO.SetFocus;
   Abort;
 end;
 if dbedtUFVARA.Text='' then
 begin
   ShowMessage('Informe a UF da se��o judici�ria');
   dbedtUFVARA.SetFocus;
   Abort;
 end;
  if dbedtIDVARA.Text='' then
 begin
   ShowMessage('Informe o C�digo de identifica��o da Vara');
   dbedtIDVARA.SetFocus;
   Abort;
 end;


 DM.unProcessos.Post;
 btnNovo.Enabled:=True;
 btnAlterar.Enabled:=True;
 btnGravar.Enabled:=False;
 btnCancelar.Enabled:=False;
 DesabilitaCampos;
end;

procedure TFormCadProcessos.btnImportarClick(Sender: TObject);
var
 VerificaSistema:Verifica;
 T:TStringList;
 I:integer;
 importou:boolean;
 C,Linha:string;
 Imp_CNPJ, perApur,nrProc,indSusp,nrInsc,tpInsc,iniValid,fimValid,tpProc,codSusp,dtDecisao, indDeposito :string;
 ufVara,codMunic,idVara,indAutoria :string  ;
begin
 if lbledtArquivo.Text='' then
   begin
     showmessage('Selecione o arquivo de importa��o.');
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
                Imp_CNPJ:=copy(linha,1,pos(c,linha)-1);
                delete(linha,1,pos(c,linha));

                if (Imp_CNPJ <> formataCnpj(cnpj)) then
                begin
                  showmessage('Este n�o � o arquivo de Processos no leiaute da Fiscosistem.');
                 // WaitForm.Close;
                  Exit;
                end;
                
                perApur:=copy(linha,1,pos(c,linha)-1);
                delete(linha,1,pos(c,linha));
                
                nrProc:=copy(linha,1,pos(c,linha)-1);
                delete(linha,1,pos(c,linha));

                indSusp:=copy(linha,1,pos(c,linha)-1);
                delete(linha,1,pos(c,linha));

                nrInsc:=copy(linha,1,pos(c,linha)-1);
                delete(linha,1,pos(c,linha));

                tpInsc:=copy(linha,1,pos(c,linha)-1);
                delete(linha,1,pos(c,linha));

                iniValid:=copy(linha,1,pos(c,linha)-1);
                delete(linha,1,pos(c,linha));

                fimValid:=copy(linha,1,pos(c,linha)-1);
                delete(linha,1,pos(c,linha));

                tpProc:=copy(linha,1,pos(c,linha)-1);
                delete(linha,1,pos(c,linha));

                codSusp:=copy(linha,1,pos(c,linha)-1);
                delete(linha,1,pos(c,linha));

                dtDecisao:=copy(linha,1,pos(c,linha)-1);
                delete(linha,1,pos(c,linha));

                indDeposito:=copy(linha,1,pos(c,linha)-1);
                delete(linha,1,pos(c,linha));

                ufVara:=copy(linha,1,pos(c,linha)-1);
                delete(linha,1,pos(c,linha));

                codMunic:=copy(linha,1,pos(c,linha)-1);
                delete(linha,1,pos(c,linha));

                idVara:=copy(linha,1,pos(c,linha)-1);
                delete(linha,1,pos(c,linha));

                indAutoria:=linha;

                 if (DM.unProcessos.Locate(('CODIGO;PERAPUR;NRPROC;INDSUSP'),VarArrayOf([Codcurr,perApur,nrProc,indSusp]),[loCaseInsensitive] ))  then
                 begin
                   importou:=false;
                   showmessage('Processos j� foram importados para este CNPJ. Para importar novamente, remova os dados importados anteriormente clicando em Excluir.');
                  // WaitForm.Close;
                   break;
                 end
                else
                 begin
                   try
                      DM.unProcessos.Append;
                      DM.unProcessos.FieldByName('codigo').AsInteger:=Codcurr;
                      DM.unProcessos.FieldByName('perApur').AsString:= perApur;
                      DM.unProcessos.FieldByName('nrProc').AsString:= nrProc;
                      DM.unProcessos.FieldByName('indSusp').AsString:= indSusp;
                      DM.unProcessos.FieldByName('nrInsc').AsString:= nrInsc;
                      DM.unProcessos.FieldByName('tpInsc').AsString:= tpInsc;
                      DM.unProcessos.FieldByName('inivalid').AsString:= inivalid;
                      DM.unProcessos.FieldByName('FimValid').AsString:= FimValid;
                      DM.unProcessos.FieldByName('tpProc').AsString:= tpProc;
                      DM.unProcessos.FieldByName('codSusp').AsString:= codSusp;
                      DM.unProcessos.FieldByName('dtDecisao').AsDateTime:= StrToDate(dtDecisao);
                      DM.unProcessos.FieldByName('indDeposito').AsString:= indDeposito;
                      DM.unProcessos.FieldByName('ufvara').AsString:=UpperCase(ufvara);
                      DM.unProcessos.FieldByName('codMunic').AsString:= codMunic;
                      DM.unProcessos.FieldByName('idVara').AsString:= idVara;
                      DM.unProcessos.FieldByName('indAutoria').AsString:= indAutoria;
                      DM.unProcessos.Post;
                    
                   except
                   
                   end;

                 end;

                
             
             end;
             T.Free;
             importou:=true;
          WaitForm.Close;
          if importou then
          begin

             showmessage('Processos Importado! ');  
             DM.unConslProcessos.Close;
             DM.unConslProcessos.FilterSQL:='Codigo='+ IntToStr(Codcurr);
             DM.unConslProcessos.Filtered:=True;           
             dm.unConslProcessos.Open;            
          end;
         end;
    end;

end;

procedure TFormCadProcessos.btnLocalizarClick(Sender: TObject);
begin
OpenArquivo.DefaultExt :='.TXT';
 OpenArquivo.InitialDir :='C:\';
 if OpenArquivo.Execute Then
    lbledtArquivo.Text:= OpenArquivo.FileName;
end;

procedure TFormCadProcessos.btnNovoClick(Sender: TObject);
begin
 DM.unProcessos.Insert;
 DM.unProcessos.FieldByName('Codigo').AsInteger:= Codcurr;

 btnNovo.Enabled:=False;
 btnGravar.Enabled:=True;
 btnCancelar.Enabled:=True;

 dbedtPERAPUR.SetFocus;
end;

procedure TFormCadProcessos.btnSairClick(Sender: TObject);
begin
Close;
dm.unProcessos.Close;
DM.unConslProcessos.Close;
end;

procedure TFormCadProcessos.cbbTPINSCChange(Sender: TObject);
begin
 if cbbTPINSC.Text='1 - CNPJ' then
 begin
 //  medt1.EditMask :='99.999.999/9999-99;1; ';
   DM.unProcessosNRINSC.EditMask:='99.999.999/9999-99;1; ';
   cbbTPINSC.ItemIndex:=0;
 end
 else 
 begin  
   DM.unProcessosNRINSC.EditMask:='999.999.999-99;1; ' ; 
   cbbTPINSC.ItemIndex:=1;
 end;
end;

procedure TFormCadProcessos.DesabilitaCampos;
begin
dbedtPERAPUR.Enabled:=False;
dbedtNRPROC.Enabled:=False;
cbbINDSUSP.Enabled:=False;
cbbTPINSC.Enabled:=False;
dbedtNRINSC.Enabled:=False;
dbedtINIVALID.Enabled:=False;
dbedtFIMVALID.Enabled:=False;
cbbTPPROC.Enabled:=False;
dbedtCODSUSP.Enabled:=False;
dbedtDTDECISAO.Enabled:=False;
cbbINDDEPOSITO.Enabled:=False;
dbedtUFVARA.Enabled:=False;
dbedtCODMUNIC.Enabled:=False;
dbedtIDVARA.Enabled:=False;
cbbINDAUDITORIA.Enabled:=False;

end;

procedure TFormCadProcessos.FormShow(Sender: TObject);
begin
DM.unProcessos.Close;
DM.unProcessos.FilterSQL:='Codigo='+ IntToStr(Codcurr);
DM.unProcessos.Filtered:=True;
DM.unProcessos.Open;

DM.unConslProcessos.Close;
DM.unConslProcessos.FilterSQL:='Codigo=-1';
DM.unConslProcessos.Filtered:=True;           
dm.unConslProcessos.Open;
end;

end.