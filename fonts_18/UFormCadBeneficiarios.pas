unit UFormCadBeneficiarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, CRGrid, ExtCtrls, StdCtrls, Buttons, DBCtrls,
  JvExStdCtrls, JvCombobox, JvDBCombobox, Mask, ComCtrls;

type
  TFormCadBeneficiarios = class(TForm)
    pgc1: TPageControl;
    ts1: TTabSheet;
    pnl1: TPanel;
    lbl1: TLabel;
    lbl3: TLabel;
    dbedtNMRAZAOBENEF: TDBEdit;
    cbbINDNIF: TJvDBComboBox;
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
    cbbPAISRESID: TJvDBComboBox;
    lbl12: TLabel;
    dbedtDSCLOGRAD: TDBEdit;
    lbl2: TLabel;
    lbl6: TLabel;
    dbedtNRLOGRAD: TDBEdit;
    lbl7: TLabel;
    dbedtCOMPLEM: TDBEdit;
    lbl8: TLabel;
    dbedtCIDADE: TDBEdit;
    lbl9: TLabel;
    dbedtCODPOSTA: TDBEdit;
    lbl10: TLabel;
    dbedtBAIRRO: TDBEdit;
    lbl11: TLabel;
    dbedtNIFBENEF: TDBEdit;
    lbl13: TLabel;
    dbedtDTLAUDO: TDBEdit;
    lbl14: TLabel;
    cbbRELFONTEPAGAD: TJvDBComboBox;
    OpenArquivo: TOpenDialog;
    procedure cbbTPINSCChange(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure HabilitaCampos;
    procedure DesabilitaCampos;
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadBeneficiarios: TFormCadBeneficiarios;

implementation

uses frm_REINF, UDM;

{$R *.dfm}

procedure TFormCadBeneficiarios.btn1Click(Sender: TObject);
begin
dm.unBeneficiarios.Close;
DM.unConslBeneficiarios.Close;
Close;
end;

procedure TFormCadBeneficiarios.btnAlterarClick(Sender: TObject);
begin
 HabilitaCampos;
 DM.unBeneficiarios.Edit;
 btnAlterar.Enabled:=False;
 btnGravar.Enabled:=True;
 btnCancelar.Enabled:=True;

  btnExcluir.Enabled:=False;
 btnNovo.Enabled:=False;
 btnCancelar.Enabled:=True;
 btnGravar.Enabled:=True;
 dbnvgr1.Enabled:=False;
 
end;

procedure TFormCadBeneficiarios.btnCancelarClick(Sender: TObject);
begin
 DM.unProcessos.Cancel;
 btnNovo.Enabled:=True;
 btnAlterar.Enabled:=True;
 btnGravar.Enabled:=False;
 btnCancelar.Enabled:=False;
 DesabilitaCampos;

 btnExcluir.Enabled:=True;
 btnAlterar.Enabled:=True;
 btnNovo.Enabled:=True;
 btnCancelar.Enabled:=False;
 btnGravar.Enabled:=False;
 dbnvgr1.Enabled:=True;
 
end;

procedure TFormCadBeneficiarios.btnConsultarClick(Sender: TObject);
begin
DM.unConslBeneficiarios.Close;
DM.unConslBeneficiarios.FilterSQL:='Codigo='+IntToStr(Codcurr);
DM.unConslBeneficiarios.Filtered:=True;           
dm.unConslBeneficiarios.Open;
end;

procedure TFormCadBeneficiarios.btnExcluirClick(Sender: TObject);
begin
 If MessageDLG ('Confirma Exclus�o do registro ' +DM.unBeneficiarios.FieldByName('NMRAZAOBENEF').AsString+ '???' +#13+
     '', MTConfirmation, [MBYes, MBNo],0)=MRYes then
     Begin
        DM.unProcessos.Delete;
     End;
end;

procedure TFormCadBeneficiarios.btnGravarClick(Sender: TObject);
begin


 DM.unBeneficiarios.Post;
 btnNovo.Enabled:=True;
 btnAlterar.Enabled:=True;
 btnGravar.Enabled:=False;
 btnCancelar.Enabled:=False;
 DesabilitaCampos;

 btnExcluir.Enabled:=True;
 btnAlterar.Enabled:=True;
 btnCancelar.Enabled:=False;
 dbnvgr1.Enabled:=True;
 
end;

procedure TFormCadBeneficiarios.btnNovoClick(Sender: TObject);
begin
 DM.unBeneficiarios.Insert;
 DM.unBeneficiarios.FieldByName('Codigo').AsInteger:= Codcurr;

 btnNovo.Enabled:=False;
 btnGravar.Enabled:=True;
 btnCancelar.Enabled:=True;

 HabilitaCampos;
 dbedtNMRAZAOBENEF.SetFocus;
 
 btnExcluir.Enabled:=False;
   btnAlterar.Enabled:=False;
   btnCancelar.Enabled:=True;
   dbnvgr1.Enabled:=False;
end;

procedure TFormCadBeneficiarios.btnSairClick(Sender: TObject);
begin
dm.unBeneficiarios.Close;
DM.unConslBeneficiarios.Close;
close;
end;

procedure TFormCadBeneficiarios.cbbTPINSCChange(Sender: TObject);
begin
 if cbbTPINSC.Text='1 - CNPJ' then
 begin
 //  medt1.EditMask :='99.999.999/9999-99;1; ';
   DM.unBeneficiariosNRINSCBENEF.EditMask:='99.999.999/9999-99;1; ';
   cbbTPINSC.ItemIndex:=0;
 end
 else 
 begin  
   DM.unBeneficiariosNRINSCBENEF.EditMask:='999.999.999-99;1; ' ; 
   cbbTPINSC.ItemIndex:=1;
 end;
end;


procedure TFormCadBeneficiarios.HabilitaCampos;
begin
   dbedtNMRAZAOBENEF.Enabled:=True;
   cbbTPINSC.Enabled:=True;
   dbedtNRINSC.Enabled:=True;
   cbbPAISRESID.Enabled:=True;
   dbedtDSCLOGRAD.Enabled:=True;
   dbedtNRLOGRAD.Enabled:=True;
   dbedtCOMPLEM.Enabled:=True;
   dbedtCIDADE.Enabled:=True;
   dbedtCODPOSTA.Enabled:=True;
   dbedtBAIRRO.Enabled:=True;
   cbbINDNIF.Enabled:=True;
   dbedtNIFBENEF.Enabled:=True;
   cbbRELFONTEPAGAD.Enabled:=True;
   dbedtDTLAUDO.Enabled:=True;
   
end;

procedure TFormCadBeneficiarios.DesabilitaCampos;
begin
   dbedtNMRAZAOBENEF.Enabled:=False;
   cbbTPINSC.Enabled:=False;
   dbedtNRINSC.Enabled:=False;
   cbbPAISRESID.Enabled:=False;
   dbedtDSCLOGRAD.Enabled:=False;
   dbedtNRLOGRAD.Enabled:=False;
   dbedtCOMPLEM.Enabled:=False;
   dbedtCIDADE.Enabled:=False;
   dbedtCODPOSTA.Enabled:=False;
   dbedtBAIRRO.Enabled:=False;
   cbbINDNIF.Enabled:=False;
   dbedtNIFBENEF.Enabled:=False;
   cbbRELFONTEPAGAD.Enabled:=False;
   dbedtDTLAUDO.Enabled:=False;
end;

procedure TFormCadBeneficiarios.FormShow(Sender: TObject);
begin
DM.unBeneficiarios.Close;
DM.unBeneficiarios.FilterSQL:='Codigo='+ IntToStr(Codcurr);
DM.unBeneficiarios.Filtered:=True;
DM.unBeneficiarios.Open;


DM.unConslBeneficiarios.Close;
DM.unConslBeneficiarios.FilterSQL:='Codigo=-1';
DM.unConslBeneficiarios.Filtered:=True;           
dm.unConslBeneficiarios.Open;

dm.unPais.Open;
DesabilitaCampos;
end;

end.
