unit UFormPeriodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFormPeriodo = class(TForm)
    grpPeriodo: TGroupBox;
    cbbMes: TComboBox;
    lblMes: TLabel;
    lbl1: TLabel;
    cbbAno: TComboBox;
    btnOK: TBitBtn;
    btnCancelar: TBitBtn;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPeriodo: TFormPeriodo;

implementation

{$R *.dfm}

procedure TFormPeriodo.btnCancelarClick(Sender: TObject);
begin
 //Close;
end;

procedure TFormPeriodo.btnOKClick(Sender: TObject);
begin
   if cbbMes.ItemIndex = -1 then
   Begin
      ShowMessage('Selecione um mês válido');
      exit;
   End;
   if cbbAno.ItemIndex = -1 then
   Begin
      ShowMessage('Selecione um ano válido');
      exit;
   End;
   ModalResult := mrOK;
end;

end.
