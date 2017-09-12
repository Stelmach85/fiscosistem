unit UFormCadProcessos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvCombobox, JvDBCombobox, Mask, DBCtrls,
  ExtCtrls, Buttons;

type
  TFormCadProcessos = class(TForm)
    dbnvgr1: TDBNavigator;
    btnNovo: TBitBtn;
    btnGravar: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btn1: TBitBtn;
    pnl1: TPanel;
    dbedtPERAPUR: TDBEdit;
    lbl1: TLabel;
    dbedtNRPROC: TDBEdit;
    lbl2: TLabel;
    cbbINDSUSP: TJvDBComboBox;
    lbl3: TLabel;
    dbedtNRINSC: TDBEdit;
    lbl4: TLabel;
    cbbTPINSC: TJvDBComboBox;
    lbl5: TLabel;
    lbl6: TLabel;
    dbedtINIVALID: TDBEdit;
    lbl7: TLabel;
    dbedtFIMVALID: TDBEdit;
    lbl8: TLabel;
    cbbTPPROC: TJvDBComboBox;
    dbedtCODSUSP: TDBEdit;
    lbl9: TLabel;
    lbl10: TLabel;
    dbedtDTDECISAO: TDBEdit;
    lbl11: TLabel;
    cbbINDDEPOSITO: TJvDBComboBox;
    lbl12: TLabel;
    dbedtUFVARA: TDBEdit;
    dbedtCODMUNIC: TDBEdit;
    lbl13: TLabel;
    lbl14: TLabel;
    dbedtIDVARA: TDBEdit;
    lbl15: TLabel;
    cbbINDAUDITORIA: TJvDBComboBox;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadProcessos: TFormCadProcessos;

implementation

uses UDM, frm_REINF;

{$R *.dfm}

procedure TFormCadProcessos.btn1Click(Sender: TObject);
begin
Close;
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

procedure TFormCadProcessos.btnExcluirClick(Sender: TObject);
begin
 If MessageDLG ('Confirma Exclusão do registro ' +DM.unProcessos.FieldByName('NRPROC').AsString+ '???' +#13+
     '', MTConfirmation, [MBYes, MBNo],0)=MRYes then
     Begin
        DM.unProcessos.Delete;
     End;
end;

procedure TFormCadProcessos.btnGravarClick(Sender: TObject);
begin
 DM.unProcessos.Post;
 btnNovo.Enabled:=True;
 btnAlterar.Enabled:=True;
 btnGravar.Enabled:=False;
 btnCancelar.Enabled:=False;
 DesabilitaCampos;
end;

procedure TFormCadProcessos.btnNovoClick(Sender: TObject);
begin
 DM.unProcessos.Insert;
 DM.unProcessos.FieldByName('Codigo').AsInteger:= Codcurr;

 btnNovo.Enabled:=False;
 btnGravar.Enabled:=True;
 btnCancelar.Enabled:=True;

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
end;

end.
