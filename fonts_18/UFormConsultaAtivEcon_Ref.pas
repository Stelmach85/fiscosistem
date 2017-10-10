unit UFormConsultaAtivEcon_Ref;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, CRGrid, ExtCtrls, StdCtrls, Buttons, DBCtrls,
  JvExStdCtrls, JvCombobox, JvDBCombobox, Mask, ComCtrls,db;

type
  TFormConsultaAtivEcon_Ref = class(TForm)
    pgc1: TPageControl;
    ts2: TTabSheet;
    lblDados: TLabel;
    crdbgrdRef_AtivEcon: TCRDBGrid;
    btnExcel: TBitBtn;
    btnSair: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaAtivEcon_Ref: TFormConsultaAtivEcon_Ref;
  codAtiv : String;

implementation

uses frm_REINF, UDM, Wait, UVerificaSistema, UUtils, UDMCadCPRB;

{$R *.dfm}

procedure TFormConsultaAtivEcon_Ref.btnExcelClick(Sender: TObject);
begin
   DM.qryUtil.Close;
   DM.qryUtil.SQL.Clear;
   DM.qryUtil.SQL.Add('select * from REF_ATIVECON')  ;
   DM.qryUtil.Open;
   REINFForm.GeraExcel(DM.qryUtil);
end;

procedure TFormConsultaAtivEcon_Ref.btnSairClick(Sender: TObject);
begin
close;
end;


procedure TFormConsultaAtivEcon_Ref.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //verifica se a tecla pressionada é a tecla ENTER, conhecida como #13 
  If key = #13 then Begin 
    //se for, passa o foco para o próximo campo, zerando o valor da variável Key 
    Key:= #0; 
    Perform(Wm_NextDlgCtl,0,0); 
  end; 
end;

procedure TFormConsultaAtivEcon_Ref.FormShow(Sender: TObject);
begin
    DMCadCPRB.unRefAtivEcon.Open;   
    DM.unProcessos.Open; 
end;



end.
