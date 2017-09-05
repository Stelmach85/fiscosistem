unit Kill;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,TlHelp32,
  Dialogs, StdCtrls,IniFiles;

type
 acaba=class
 public
  procedure KillProcess;
  end  ;

implementation

uses frm_REINF;

procedure acaba.KillProcess;
var
  SelectedProcess : String;
  proc : PROCESSENTRY32;  //Descreve as entradas dos processos residentes no sistema
  hSnap : HWND;  //handle, a posição de memória alocada do objeto
  Looper : BOOL;
begin
  //Captura o nome do processo selecionado no ListBox
   REINFdir:=EXTRACTFILEPATH(PARAMSTR(0));
   if FileExists(REINFdir+'REINF18.exe') then
   begin
     SelectedProcess := 'REINF18.exe';
   end
   else
   if FileExists(REINFdir+'REINF18.exe') then
   begin
     SelectedProcess := 'REINF18.exe';
   end;
 try
  proc.dwSize := SizeOf(Proc);
  hSnap := CreateToolhelp32Snapshot(TH32CS_SNAPALL,0);
  //Captura o primeiro processo
  Looper := Process32First(hSnap,proc);
  // Faz um loop nos processos até achar o processo selecionado
  while Integer(Looper) <> 0 do begin
    // Extrai o nome do processo e compara com SelectedProcess
    if ExtractFileName(Proc.szExeFile) = SelectedProcess then
      //Mata o processo aberto
    if TerminateProcess(OpenProcess(PROCESS_TERMINATE,Bool(0),proc.th32ProcessID),0) then
      begin
        //Se encerrado, o processo é retirado do ListBox
        //Form1.ListBox1.DeleteSelected;
        ///Application.MessageBox('Processo finalizado!!!', 'ShaøkaN', MB_ICONINFORMATION);
       end
    else
    begin
       MessageBox(0,'Não foi possível finalizar sistema','Erro',MB_OK);
    end;
    //Checa o próximo processo
    Looper := Process32Next(hSnap,proc);
  end;
 except

 end;
  //Fecha Handle
  CloseHandle(hSnap);
end;


end.
