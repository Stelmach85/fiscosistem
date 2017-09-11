unit UFormContribuintes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExStdCtrls, JvCombobox, JvDBCombobox, StdCtrls, Mask, Buttons,
  ExtCtrls, DBCtrls, ComCtrls;

type
  TFormContribuintes = class(TForm)
    pgc1: TPageControl;
    ts1: TTabSheet;
    lbl36: TLabel;
    lbl37: TLabel;
    lbl38: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    lbl22: TLabel;
    lbl23: TLabel;
    dbedtCodemp: TDBEdit;
    dbedtRsocial: TDBEdit;
    dbedtCnpj: TDBEdit;
    dbedtUf: TDBEdit;
    dbedtCep: TDBEdit;
    dbedtDddfone: TDBEdit;
    dbedtFone: TDBEdit;
    dbedtDddfax1: TDBEdit;
    dbedtFax1: TDBEdit;
    dbedtCxpostal: TDBEdit;
    dbedtUfcxpostal: TDBEdit;
    dbedtCepCxpostal: TDBEdit;
    dbedtEmail: TDBEdit;
    dbedtRepresentante: TDBEdit;
    dbedtResponsavel: TDBEdit;
    dbchkTransferido: TDBCheckBox;
    dbnvgr1: TDBNavigator;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnGravar: TBitBtn;
    btnNovo: TBitBtn;
    btn1: TBitBtn;
    ts2: TTabSheet;
    lbl30: TLabel;
    dbedtCodemp1: TDBEdit;
    btnGravar2: TBitBtn;
    btnAlterar2: TBitBtn;
    btnCancelar2: TBitBtn;
    btn2: TBitBtn;
    cbbTPINSC: TJvDBComboBox;
    lbl1: TLabel;
    dbedtINIVALID: TDBEdit;
    dbedtFIMVALID: TDBEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    JvDBComboBox2: TJvDBComboBox;
    cbbINDDESONERACAO: TJvDBComboBox;
    lbl4: TLabel;
    lbl5: TLabel;
    cbbINDACORDOISENMULTA: TJvDBComboBox;
    lbl6: TLabel;
    cbbINDSITPJ: TJvDBComboBox;
    lbl7: TLabel;
    dbedtNMCTT: TDBEdit;
    lbl8: TLabel;
    dbedtCPFCTT: TDBEdit;
    lbl9: TLabel;
    dbedtFONEFIXO: TDBEdit;
    dbedtFONECEL: TDBEdit;
    lbl10: TLabel;
    lbl11: TLabel;
    cbbCLASSTRIB: TJvDBComboBox;
    lbl12: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure cbbTPINSCChange(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btnAlterar2Click(Sender: TObject);
    procedure btnGravar2Click(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure HabilitaCampos;
    procedure DesabilitaCampos;
    procedure btnCancelar2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormContribuintes: TFormContribuintes;

implementation

uses UDM, frm_REINF;

{$R *.dfm}

procedure TFormContribuintes.btn1Click(Sender: TObject);
begin
Close;
end;

procedure TFormContribuintes.btn2Click(Sender: TObject);
begin
Close;
end;

procedure TFormContribuintes.btnAlterar2Click(Sender: TObject);
begin
DM.unContribuintes.Edit;
btnGravar2.Enabled:=True;
btnCancelar2.Enabled:=True;

dbedtNMCTT.Enabled:=True;
dbedtCPFCTT.Enabled:=True;
dbedtFONEFIXO.Enabled:=True;
dbedtFONECEL.Enabled:=True;
end;

procedure TFormContribuintes.btnAlterarClick(Sender: TObject);
begin
 DM.unContribuintes.Edit;
 btnAlterar.Enabled:=False;
 btnGravar.Enabled:=True;
 btnCancelar.Enabled:=True;
 HabilitaCampos;
end;

procedure TFormContribuintes.btnCancelar2Click(Sender: TObject);
begin
DM.unContribuintes.Cancel;
dbedtNMCTT.Enabled:=False;
dbedtCPFCTT.Enabled:=False;
dbedtFONEFIXO.Enabled:=False;
dbedtFONECEL.Enabled:=False;
end;

procedure TFormContribuintes.btnCancelarClick(Sender: TObject);
begin
  DM.unContribuintes.Cancel;
 btnNovo.Enabled:=True;
 btnAlterar.Enabled:=True;
 btnGravar.Enabled:=False;
 btnCancelar.Enabled:=False;
 DesabilitaCampos;
end;

procedure TFormContribuintes.btnExcluirClick(Sender: TObject);
begin
 If MessageDLG ('Confirma Exclusão da empresa ' +DM.unContribuintesNMRAZAOSOCIAL.AsString+ '???' +#13+
     'Lembre-se que este procedimento irá excluir todos os dados cadastrais e lançamentos da empresa.', MTConfirmation, [MBYes, MBNo],0)=MRYes then
     Begin
        DM.unContribuintes.Delete;
     End;
end;

procedure TFormContribuintes.btnGravar2Click(Sender: TObject);
begin
DM.unContribuintes.Post;
btnAlterar2.Enabled:=True;
btnCancelar2.Enabled:=True;
btnGravar2.Enabled:=False;

dbedtNMCTT.Enabled:=False;
dbedtCPFCTT.Enabled:=False;
dbedtFONEFIXO.Enabled:=False;
dbedtFONECEL.Enabled:=False;
end;

procedure TFormContribuintes.btnGravarClick(Sender: TObject);
begin
 if dbedtRsocial.Text='' then
 begin
   ShowMessage('Informe a Razão Social');
   dbedtRsocial.SetFocus;
   Abort;
 end;
 if  (dbedtCnpj.Text='') or (dbedtCnpj.Text='   .   .   /    -  ') or (dbedtCnpj.Text='   .   .   -  ') then
 begin
    ShowMessage('Informe o CPF/CNPJ ');
   dbedtCnpj.SetFocus;
   Abort;
 end;

 DM.unContribuintes.Post;
 btnNovo.Enabled:=True;
 btnAlterar.Enabled:=True;
 btnGravar.Enabled:=False;
 btnCancelar.Enabled:=False;
 DesabilitaCampos;
end;

procedure TFormContribuintes.btnNovoClick(Sender: TObject);
var
codigoNovo:Integer;
begin
 dm.qryUtil.close;
 DM.qryUtil.SQL.Clear;
 DM.qryUtil.SQL.Add('select Max(codigo) as codigo from contribuintes_18');
 DM.qryUtil.Open;
 codigoNovo:= StrToIntDef(DM.qryUtil.FieldByName('codigo').asstring,0)+1;
 DM.unContribuintes.Insert;
 DM.unContribuintes.FieldByName('Codigo').AsInteger:= codigoNovo;

 DM.unContribuintesNRINSC.EditMask:='99.999.999/9999-99;1; ';
 dbedtINIVALID.Text:='01/01/2018';
 dbedtFIMVALID.Text:='31/12/2018';
 cbbTPINSC.ItemIndex:=0;
 
 
 btnNovo.Enabled:=False;
 btnGravar.Enabled:=True;
 btnCancelar.Enabled:=True;
 HabilitaCampos;
end;

procedure TFormContribuintes.cbbTPINSCChange(Sender: TObject);
begin
 if cbbTPINSC.Text='1 - CNPJ' then
 begin
 //  medt1.EditMask :='99.999.999/9999-99;1; ';
   DM.unContribuintesNRINSC.EditMask:='99.999.999/9999-99;1; ';
   cbbTPINSC.ItemIndex:=0;
 end
 else 
 begin  
   DM.unContribuintesNRINSC.EditMask:='999.999.999-99;1; ' ; 
   cbbTPINSC.ItemIndex:=1;
 end;

end;

procedure TFormContribuintes.FormShow(Sender: TObject);
begin
 DM.unContribuintes.Open;
 DM.unContribuintes.First;
 dm.unrefClasTrib.open;
 DesabilitaCampos;
end;

procedure TFormContribuintes.HabilitaCampos;
begin
 dbedtRsocial.Enabled:=True;
 cbbTPINSC.Enabled:=True;
 dbedtCnpj.Enabled:=True;
 dbedtINIVALID.Enabled:=True;
 dbedtFIMVALID.Enabled:=True;
 JvDBComboBox2.Enabled:=True;
 cbbINDDESONERACAO.Enabled:=True;
 cbbINDACORDOISENMULTA.Enabled:=True;
 cbbINDSITPJ.Enabled:=True;
 cbbCLASSTRIB.Enabled:=True;

end;

procedure TFormContribuintes.DesabilitaCampos;
begin
 dbedtRsocial.Enabled:=False;
 cbbTPINSC.Enabled:=False;
 dbedtCnpj.Enabled:=False;
 dbedtINIVALID.Enabled:=False;
 dbedtFIMVALID.Enabled:=False;
 JvDBComboBox2.Enabled:=False;
 cbbINDDESONERACAO.Enabled:=False;
 cbbINDACORDOISENMULTA.Enabled:=False;
 cbbINDSITPJ.Enabled:=False;
 cbbCLASSTRIB.Enabled:=False;

end;

end.
