unit UFormCadRetCP_Serv_tomados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, CRGrid, ExtCtrls, StdCtrls, Buttons, DBCtrls,
  JvExStdCtrls, JvCombobox, JvDBCombobox, Mask, ComCtrls;

type
  TFormCadRetCP_Serv_tomados = class(TForm)
    pgc1: TPageControl;
    ts1: TTabSheet;
    pnl1: TPanel;
    lbl1: TLabel;
    lbl3: TLabel;
    dbedtPERAPUR: TDBEdit;
    cbbINDSUSP: TJvDBComboBox;
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
    cbbTPINSC: TJvDBComboBox;
    lbl4: TLabel;
    dbedtNRINSC: TDBEdit;
    lbl2: TLabel;
    dbedtNRINSC1: TDBEdit;
    dbedtNRINSC2: TDBEdit;
    lbl6: TLabel;
    lbl7: TLabel;
    dbedtNRINSC3: TDBEdit;
    lbl8: TLabel;
    dbedtNRINSC4: TDBEdit;
    lbl9: TLabel;
    dbedtNRINSC5: TDBEdit;
    lbl10: TLabel;
    dbedtNRINSC6: TDBEdit;
    lbl11: TLabel;
    dbedtNRINSC7: TDBEdit;
    lbl13: TLabel;
    cbbINDSUSP1: TJvDBComboBox;
    pnl2: TPanel;
    pgc2: TPageControl;
    ts3: TTabSheet;
    pnl3: TPanel;
    ts4: TTabSheet;
    ts5: TTabSheet;
    dbedtPERAPUR1: TDBEdit;
    lbl12: TLabel;
    dbedtPERAPUR2: TDBEdit;
    lbl14: TLabel;
    dbedtPERAPUR3: TDBEdit;
    lbl15: TLabel;
    lbl16: TLabel;
    dbedtPERAPUR4: TDBEdit;
    lbl17: TLabel;
    dbedtPERAPUR5: TDBEdit;
    dbnvgr2: TDBNavigator;
    btnIncluir2: TBitBtn;
    btngravar2: TBitBtn;
    btn4: TBitBtn;
    btn5: TBitBtn;
    btn6: TBitBtn;
    grp1: TGroupBox;
    lbl18: TLabel;
    dbedtSERIE: TDBEdit;
    dbnvgr3: TDBNavigator;
    btnIncluir3: TBitBtn;
    btnGravar3: TBitBtn;
    btn7: TBitBtn;
    btn8: TBitBtn;
    btn9: TBitBtn;
    lbl19: TLabel;
    dbedtSERIE1: TDBEdit;
    lbl20: TLabel;
    dbedtSERIE2: TDBEdit;
    lbl21: TLabel;
    dbedtSERIE3: TDBEdit;
    lbl22: TLabel;
    dbedtSERIE4: TDBEdit;
    lbl23: TLabel;
    dbedtSERIE5: TDBEdit;
    lbl24: TLabel;
    dbedtSERIE6: TDBEdit;
    lbl25: TLabel;
    dbedtSERIE7: TDBEdit;
    lbl26: TLabel;
    dbedtSERIE8: TDBEdit;
    cbbCLASSTRIB: TJvDBComboBox;
    pnl4: TPanel;
    dbedtCNPJPRESTADOR: TDBEdit;
    lbl27: TLabel;
    cbbINDOBRA: TJvDBComboBox;
    lbl28: TLabel;
    lbl29: TLabel;
    dbedtCNPJPRESTADOR1: TDBEdit;
    cbbTPSERVICO: TJvDBComboBox;
    dbnvgr4: TDBNavigator;
    btnIncluir4: TBitBtn;
    btnGravar4: TBitBtn;
    btn10: TBitBtn;
    btn11: TBitBtn;
    btn12: TBitBtn;
    lbl30: TLabel;
    lbl31: TLabel;
    lbl32: TLabel;
    dbedtNRPROCRETPRINC: TDBEdit;
    cbbTPPROCRETPRINC: TJvDBComboBox;
    lbl33: TLabel;
    cbbCODSUSP: TJvDBComboBox;
    lbl34: TLabel;
    dbedtVALORPRINC: TDBEdit;
    dbnvgr5: TDBNavigator;
    btnIncluir5: TBitBtn;
    btnGravar5: TBitBtn;
    btn13: TBitBtn;
    btn14: TBitBtn;
    btn15: TBitBtn;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadRetCP_Serv_tomados: TFormCadRetCP_Serv_tomados;

implementation

uses frm_REINF, UDM;

{$R *.dfm}

procedure TFormCadRetCP_Serv_tomados.btn1Click(Sender: TObject);
begin
Close;
end;

procedure TFormCadRetCP_Serv_tomados.btnIncluir2Click(Sender: TObject);
var
novoCodigo:Integer;
begin
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

 btngravar2.Enabled:=True;
end;

procedure TFormCadRetCP_Serv_tomados.btnIncluir3Click(Sender: TObject);
begin
 DM.unTiposServPrest_NF.Insert;
 DM.unTiposServPrest_NF.FieldByName('ID_SERVICO').AsInteger:= DM.unRetCP_ServTom.FieldByName('ID_SERVICO').AsInteger;
 DM.unTiposServPrest_NF.FieldByName('ID_NF').AsInteger:= DM.unDetalheNF_ServPrest.FieldByName('ID_NF').AsInteger;
 DM.unTiposServPrest_NF.FieldByName('CODIGO').AsInteger:=Codcurr;
 btnGravar3.Enabled:=True;
end;

procedure TFormCadRetCP_Serv_tomados.btnIncluir4Click(Sender: TObject);
var
novoCodigo:Integer;
begin
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

  btnGravar4.Enabled:=True;
  
end;

procedure TFormCadRetCP_Serv_tomados.btnIncluir5Click(Sender: TObject);
var
novoCodigo:Integer;
begin
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

  btnGravar5.Enabled:=True;

end;

procedure TFormCadRetCP_Serv_tomados.btngravar2Click(Sender: TObject);
begin
  DM.unDetalheNF_ServPrest.Post;
end;

procedure TFormCadRetCP_Serv_tomados.btnGravar3Click(Sender: TObject);
begin
DM.unTiposServPrest_NF.Post;
end;

procedure TFormCadRetCP_Serv_tomados.btnGravar4Click(Sender: TObject);
begin
DM.unInfProcessos.Post;
end;

procedure TFormCadRetCP_Serv_tomados.btnGravar5Click(Sender: TObject);
begin
  DM.unInfProcessosAdic.Post;
end;

procedure TFormCadRetCP_Serv_tomados.btnGravarClick(Sender: TObject);
begin
 DM.unRetCP_ServTom.Post;
 btnNovo.Enabled:=True;
 btnAlterar.Enabled:=True;
 btnGravar.Enabled:=False;
 btnCancelar.Enabled:=False;
 //DesabilitaCampos;
end;

procedure TFormCadRetCP_Serv_tomados.btnNovoClick(Sender: TObject);
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

 btnNovo.Enabled:=False;
 btnGravar.Enabled:=True;
 btnCancelar.Enabled:=True;
end;

procedure TFormCadRetCP_Serv_tomados.FormShow(Sender: TObject);
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

end;

end.
