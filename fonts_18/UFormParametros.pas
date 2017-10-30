unit UFormParametros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, JvBaseDlg, JvSelectDirectory, Buttons,
  JvExStdCtrls, JvCombobox, JvDBCombobox, Mask, DBCtrls;

type
  TFormParametros = class(TForm)
    pnl1: TPanel;
    grpCertificado: TGroupBox;
    lbl38: TLabel;
    dbedtID: TDBEdit;
    lbl1: TLabel;
    dbedtNOME: TDBEdit;
    lbl2: TLabel;
    dbedtSENHA: TDBEdit;
    lbl3: TLabel;
    dbedtSERIE: TDBEdit;
    lbl11: TLabel;
    cbbMODELO: TJvDBComboBox;
    grpXML: TGroupBox;
    btnLocalizar: TBitBtn;
    dbedtXML_IMPORTADO: TDBEdit;
    lbl4: TLabel;
    JvSelectDirectory1: TJvSelectDirectory;
    lbl5: TLabel;
    dbedtXML_GERADO: TDBEdit;
    btn1: TBitBtn;
    lbl6: TLabel;
    dbedtXML_TRANSMITIDO: TDBEdit;
    btn2: TBitBtn;
    lbl7: TLabel;
    dbedtXML_RETORNO: TDBEdit;
    btn3: TBitBtn;
    lbl8: TLabel;
    dbedtXML_RETORNO_ERRO: TDBEdit;
    btn4: TBitBtn;
    btnNovo: TBitBtn;
    btnGravar: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btn5: TBitBtn;
    dbnvgr1: TDBNavigator;
    lbl9: TLabel;
    cbbAMBIENTEAMBIENTE: TJvDBComboBox;
    procedure btnLocalizarClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormParametros: TFormParametros;

implementation

uses UDM, frm_REINF;

{$R *.dfm}

procedure TFormParametros.btn1Click(Sender: TObject);
begin
JvSelectDirectory1.Execute;
dbedtXML_GERADO.text:= JvSelectDirectory1.Directory;
end;

procedure TFormParametros.btn2Click(Sender: TObject);
begin
  JvSelectDirectory1.Execute;
dbedtXML_TRANSMITIDO.text:= JvSelectDirectory1.Directory;
end;

procedure TFormParametros.btn3Click(Sender: TObject);
begin
   JvSelectDirectory1.Execute;
dbedtXML_RETORNO.text:= JvSelectDirectory1.Directory;
end;

procedure TFormParametros.btn4Click(Sender: TObject);
begin
     JvSelectDirectory1.Execute;
dbedtXML_RETORNO_ERRO.text:= JvSelectDirectory1.Directory;
end;

procedure TFormParametros.btn5Click(Sender: TObject);
begin
Close;
end;

procedure TFormParametros.btnAlterarClick(Sender: TObject);
begin
 if DM.unParametros.RecordCount=0 then
 begin
   ShowMessage('N�o h� dados para edi��o');
   Abort;
 end;
 
   DM.unParametros.Edit;
    btnAlterar.Enabled:=False;
 btnGravar.Enabled:=True;
 btnCancelar.Enabled:=True;
 grpCertificado.Enabled:=True;
 grpXML.Enabled:=True;

 btnExcluir.Enabled:=False;
 btnNovo.Enabled:=False;
 btnCancelar.Enabled:=True;
 btnGravar.Enabled:=True;
 dbnvgr1.Enabled:=False;
end;

procedure TFormParametros.btnCancelarClick(Sender: TObject);
begin
 DM.unParametros.Cancel;
 btnNovo.Enabled:=True;
 btnAlterar.Enabled:=True;
 btnGravar.Enabled:=False;
 btnCancelar.Enabled:=False;
 grpCertificado.Enabled:=False;
 grpXML.Enabled:=False;
 
 btnExcluir.Enabled:=True;
 btnAlterar.Enabled:=True;
 btnNovo.Enabled:=True;
 btnCancelar.Enabled:=False;
 btnGravar.Enabled:=False;
 dbnvgr1.Enabled:=True;
end;

procedure TFormParametros.btnExcluirClick(Sender: TObject);
begin
 try
 If MessageDLG ('Confirma Exclus�o do registro ' +DM.unParametros.FieldByName('ID').AsString+ '???' +#13+
     '', MTConfirmation, [MBYes, MBNo],0)=MRYes then
     Begin
        DM.unParametros.Delete;
     End;
 except
  ShowMessage('N�o existem dados a serem exclu�dos');

 end;
end;

procedure TFormParametros.btnGravarClick(Sender: TObject);
begin
  if dbedtID.Text='' then
  begin
    ShowMessage('Informe o indicador do certificado');
    dbedtID.SetFocus;
    Abort;
  end;
  if dbedtNOME.Text='' then
  begin
    ShowMessage('Informe o Nome do certificado');
    dbedtNOME.SetFocus;
    Abort;
  end;
  if dbedtSENHA.Text='' then
  begin
    ShowMessage('Informe a Senha do certificado');
    dbedtSENHA.SetFocus;
    Abort;
  end;
  if dbedtSERIE.Text='' then
  begin
    ShowMessage('Informe a s�rie do certificado');
    dbedtSERIE.SetFocus;
    Abort;
  end;
  if cbbMODELO.Text='' then
  begin
    ShowMessage('Informe o Modelo do certificado');
    cbbMODELO.SetFocus;
    Abort;
  end;
  if dbedtXML_GERADO.Text='' then
  begin
    ShowMessage('Informe o caminho do XML gerado');
    dbedtXML_GERADO.SetFocus;
    Abort;
  end;
  if dbedtXML_TRANSMITIDO.Text='' then
  begin
    ShowMessage('Informe o caminho do XML transmitido');
    dbedtXML_TRANSMITIDO.SetFocus;
    Abort;
  end;
  if dbedtXML_RETORNO.Text='' then
  begin
    ShowMessage('Informe o caminho do XML de retorno sem erros');
    dbedtXML_RETORNO.SetFocus;
    Abort;
  end;
  if dbedtXML_RETORNO_ERRO.Text='' then
  begin
    ShowMessage('Informe o caminho do XML de retorno com erros');
    dbedtXML_RETORNO_ERRO.SetFocus;
    Abort;
  end;
  if cbbAMBIENTEAMBIENTE.text='' then
  begin
    ShowMessage('Informe o ambiente de envio do XML');
    cbbAMBIENTEAMBIENTE.SetFocus;
    Abort;
  end;  
  




 DM.unParametros.Post;
 btnNovo.Enabled:=True;
 btnAlterar.Enabled:=True;
 btnGravar.Enabled:=False;
 btnCancelar.Enabled:=False;
 grpCertificado.Enabled:=False;
 grpXML.Enabled:=False;
 
 btnExcluir.Enabled:=True;
 btnAlterar.Enabled:=True;
 btnCancelar.Enabled:=False;
 dbnvgr1.Enabled:=True;
end;

procedure TFormParametros.btnLocalizarClick(Sender: TObject);
begin
JvSelectDirectory1.Execute;
dbedtXML_IMPORTADO.text:= JvSelectDirectory1.Directory;

end;

procedure TFormParametros.btnNovoClick(Sender: TObject);
begin
DM.unParametros.Insert;
DM.unParametros.FieldByName('Codigo').AsInteger:= Codcurr;
DM.unParametros.FieldByName('XML_IMPORTADO').AsString:= REINFdir+'XML\Importados' ;
DM.unParametros.FieldByName('XML_GERADO').AsString:= REINFdir+'XML\Gerados' ;
DM.unParametros.FieldByName('XML_TRANSMITIDO').AsString:= REINFdir+'XML\Enviados' ;
DM.unParametros.FieldByName('XML_RETORNO').AsString:= REINFdir+'XML\Retornados' ;
DM.unParametros.FieldByName('XML_RETORNO_ERRO').AsString:=  REINFdir+'XML\Retornados_erro' ;


 btnNovo.Enabled:=False;
 btnGravar.Enabled:=True;
 btnCancelar.Enabled:=True;

 grpCertificado.Enabled:=True;
 grpXML.Enabled:=True;

   btnExcluir.Enabled:=False;
   btnAlterar.Enabled:=False;
   btnCancelar.Enabled:=True;
   dbnvgr1.Enabled:=False;
end;

procedure TFormParametros.FormShow(Sender: TObject);
begin
DM.unParametros.Close;
DM.unParametros.FilterSQL:='codigo='+ IntToStr(codcurr);
DM.unParametros.Filtered:=True;
DM.unParametros.Open;
grpCertificado.Enabled:=false;
 grpXML.Enabled:=False;
end;

end.
