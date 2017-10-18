unit UFormCadRendimentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, CRGrid, ExtCtrls, StdCtrls, Buttons, DBCtrls,
  JvExStdCtrls, JvCombobox, JvDBCombobox, Mask, ComCtrls;

type
  TFormCadRendimentos = class(TForm)
    pgc1: TPageControl;
    ts1: TTabSheet;
    pnl1: TPanel;
    lbl5: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    cbbTPINSC: TJvDBComboBox;
    cbbPAISRESID: TJvDBComboBox;
    dbedtDTLAUDO: TDBEdit;
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
    lbl4: TLabel;
    dbedtNRINSC: TDBEdit;
    cbbCODPGTO: TJvDBComboBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    dbedtDTPGTO: TDBEdit;
    lbl6: TLabel;
    dbedtVLRRENDTRIBUTAVEL: TDBEdit;
    lbl7: TLabel;
    dbedtVLRRRF: TDBEdit;
    lbl8: TLabel;
    dbedtVLRDEDPREVOFIC: TDBEdit;
    lbl9: TLabel;
    dbedtVLRDEDPREVOFIC1: TDBEdit;
    lbl10: TLabel;
    dbedtVLRDEDPREVOFIC2: TDBEdit;
    lbl11: TLabel;
    dbedtVLRDEDPREVOFIC3: TDBEdit;
    lbl14: TLabel;
    dbedtVLRDEDPREVOFIC4: TDBEdit;
    lbl15: TLabel;
    dbedtVLRDEDPREVOFIC5: TDBEdit;
    lbl16: TLabel;
    dbedtVLRDEDPREVOFIC6: TDBEdit;
    lbl17: TLabel;
    dbedtVLRDEDPREVOFIC7: TDBEdit;
    lbl18: TLabel;
    dbedtVLRDEDPREVOFIC8: TDBEdit;
    lbl19: TLabel;
    cbbINDSUSPEXIG: TJvDBComboBox;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadRendimentos: TFormCadRendimentos;

implementation

uses UDM, frm_REINF;

{$R *.dfm}

procedure TFormCadRendimentos.btnAlterarClick(Sender: TObject);
begin
DM.unRendimentos.Edit;
 btnExcluir.Enabled:=False;
 btnNovo.Enabled:=False;
 btnCancelar.Enabled:=True;
 btnGravar.Enabled:=True;
 dbnvgr1.Enabled:=False;
end;

procedure TFormCadRendimentos.btnCancelarClick(Sender: TObject);
begin
DM.unRendimentos.Cancel;

btnExcluir.Enabled:=True;
 btnAlterar.Enabled:=True;
 btnNovo.Enabled:=True;
 btnCancelar.Enabled:=False;
 btnGravar.Enabled:=False;
 dbnvgr1.Enabled:=True;
end;

procedure TFormCadRendimentos.btnGravarClick(Sender: TObject);
begin
DM.unRendimentos.post;

 btnExcluir.Enabled:=True;
 btnAlterar.Enabled:=True;
 btnCancelar.Enabled:=False;
 dbnvgr1.Enabled:=True;
end;

procedure TFormCadRendimentos.btnNovoClick(Sender: TObject);
begin
DM.unRendimentos.Insert;

  btnExcluir.Enabled:=False;
   btnAlterar.Enabled:=False;
   btnCancelar.Enabled:=True;
   dbnvgr1.Enabled:=False;
end;

procedure TFormCadRendimentos.FormShow(Sender: TObject);
begin
DM.unRendimentos.Close;
DM.unRendimentos.FilterSQL:='Codigo='+ IntToStr(Codcurr);
DM.unRendimentos.Filtered:=True;
DM.unRendimentos.Open;

DM.unREF_CODPAGAMENTO.open;
DM.unBeneficiarios.open;

end;

end.
