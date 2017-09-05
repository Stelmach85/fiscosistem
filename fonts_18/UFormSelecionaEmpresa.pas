unit UFormSelecionaEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, uni, DB, Grids, DBGrids, JvExDBGrids, JvDBGrid;

type
  TFormSelecionaEmpresa = class(TForm)
    btnOK: TBitBtn;
    JvDBGrid1: TJvDBGrid;
    btnCancelar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSelecionaEmpresa: TFormSelecionaEmpresa;

implementation

uses  UDM, frm_REINF, UDMQuerysUteis;

{$R *.dfm}

procedure TFormSelecionaEmpresa.btnOKClick(Sender: TObject);
var
  tpmista:Integer;
 // Menu:TCarregaMenu;
begin
  // carrega nas variáveis as informações principais da empresa selecionada
  Codcurr:=DMQuerysUteis.qryEmpresas.FieldByName('codigo').AsInteger;
  Nomeemp:=DMQuerysUteis.qryEmpresas.FieldByName('nmctt').AsString;
  Empresa:=DMQuerysUteis.qryEmpresas.FieldByName('nmctt').AsString;
  
 {  if DMQuerysUteis.unqryEmpresas.Fieldbyname('PJNAOOBRIGADALREAL').Asinteger=1 then
    PJNaoObrigadaLReal:=true
  else
    PJNaoObrigadaLReal:=False;   }
 // DecodeDate(DMQuerysUteis.unqryEmpresas.FieldByName('Datainicial').AsDateTime,year,mesinic,day);
 // DecodeDate(DMQuerysUteis.unqryEmpresas.FieldByName('Datainicial').AsDateTime,year,mesfinal,day);
 { if situacaoesp=0 then
     periodo:='12'
  else mesfinal:=StrToInt(copy(DMQuerysUteis.unqryEmpresas.FieldByName('Datainicial').Asstring ,4,2));
  if (apuracao = 1) then
      mes:=0
  else
   begin
     if (mesfinal=1) or (mesfinal=2) or (mesfinal=3) then
        mesfinalT:=1;
     if (mesfinal=4) or (mesfinal=5) or (mesfinal=6) then
        mesfinalT:=2;
     if (mesfinal=7) or (mesfinal=8) or (mesfinal=9) then
        mesfinalT:=3;
     if (mesfinal=10) or (mesfinal=11) or (mesfinal=12)or (mesfinal=0) then
        mesfinalT:=4;
     mes:=0;
     mesinicPres:= mesinic;
     // real trimestral ou presumido
     if (apuracao=2) or (tributacao=2)  then
      begin
        if (mesinic=1) or (mesinic=2) or (mesinic=3) then
            mesinic:=1
        else
        if (mesinic=4) or (mesinic=5) or (mesinic=6) then
           mesinic:=2
        else
        if (mesinic=7) or (mesinic=8) or (mesinic=9) then
           mesinic:=3
        else
        if (mesinic=10) or (mesinic=11) or (mesinic=12) then
           mesinic:=4;
      end;
   end;    }
  if not fileexists(REINFexe+arqregistro) then
     Registrado:=false
  else Registrado:=true;
  REINFForm.statempresa.Panels[0].Width:=120;
  REINFForm.statempresa.Panels[0].Text:=cnpj;
  REINFForm.statempresa.Panels[1].Width:=300;
  REINFForm.statempresa.Panels[1].Text:=nomeemp;
  // ***************************************************************************
  // carrega o arquivo do menu de acordo com a forma de tributação e apuracao
  REINFForm.tvmenu.LoadFromFile(REINFdir+'MenuREINF.pkz');

 // Menu.MontaMenu(Codcurr);

  REINFForm.tvmenu.Visible:=True;

  Close;
end;

procedure TFormSelecionaEmpresa.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TFormSelecionaEmpresa.FormShow(Sender: TObject);
begin
   Application.helpfile:=ajuda; // ajuda.hlp é o arquivo de ajuda da aplicação
  // CodCurr:=0;

   DMQuerysUteis.qryEmpresas.close;
   DMQuerysUteis.qryEmpresas.Filtered:=false;
   DMQuerysUteis.qryEmpresas.Open;
   DMQuerysUteis.qryEmpresas.Filtered:=true;
   DMQuerysUteis.qryEmpresas.First;

   JvDBGrid1.SetFocus;
   DMQuerysUteis.qryEmpresas.ReadOnly:=True;
end;
procedure TFormSelecionaEmpresa.JvDBGrid1DblClick(Sender: TObject);
begin
  BtnOKClick(Sender);
end;
end.
