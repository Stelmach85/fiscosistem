unit Wait;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, JvExControls, JvSpecialProgress, JvProgressBar, ComCtrls;

type
  TWaitForm = class(TForm)
    jvspclprgrs1: TJvSpecialProgress;
    tmr1: TTimer;
    lblContaLinhas: TLabel;
    //procedure tmr1Timer(Sender: TObject);
    //procedure jvgrdntprgrsbr1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WaitForm: TWaitForm;

implementation

{$R *.DFM}

uses frm_REINF;

{procedure TWaitForm.tmr1Timer(Sender: TObject);
var
 i:Integer;
begin
{ for i := 1 to jvgrdntprgrsbr1.Max do
 begin
   jvgrdntprgrsbr1.Position:=jvgrdntprgrsbr1.Position+1;
   sleep(150);
 end;
end; }

end.
