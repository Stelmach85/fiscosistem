unit UUtils;

interface

uses
 Forms, Buttons, JvDBCombobox, ExtCtrls, DBCtrls, ComCtrls, StdCtrls, DateUtils, Uni, SysUtils;

function HabilitxW(FTela: TForm; hab: boolean; ACAO: string; Tabela: TUniTable): boolean;
procedure DesabilitaCampos(FForm: TForm);
procedure HabilitaCampos(FForm: TForm);
procedure DesabilitaBotoesAux(FForm: TForm);
procedure HabilitaBotoesAux(FForm: TForm);


implementation

function HabilitxW(FTela: TForm; hab: boolean; ACAO: string; Tabela: TUniTable): boolean;
var
  x: integer;
  sql, tela, Idioma: string;
begin

  Result := hab;
  if (ACAO = 'ABERTURA') then
  begin
      if ((FTela.FindComponent('BTNNOVO') as TBitBtn) <> nil) then
         (FTela.FindComponent('BTNNOVO') as TBitBtn).enabled := True; 
      
      if ((FTela.FindComponent('BTNALTERAR') as TBitBtn) <> nil) then
      begin
         if (Tabela.RecordCount > 0) then
            (FTela.FindComponent('BTNALTERAR') as TBitBtn).enabled := True
         else
            (FTela.FindComponent('BTNALTERAR') as TBitBtn).enabled := False;
      end;
      
      if ((FTela.FindComponent('BTNEXCLUIR') as TBitBtn) <> nil) then
      Begin
        if (Tabela.RecordCount > 0) then
           (FTela.FindComponent('BTNEXCLUIR') as TBitBtn).enabled := True
        else
           (FTela.FindComponent('BTNEXCLUIR') as TBitBtn).enabled := False;
      End;
      
      if ((FTela.FindComponent('BTNCANCELAR') as TBitBtn) <> nil) then
         (FTela.FindComponent('BTNCANCELAR') as TBitBtn).enabled := False; 

      if ((FTela.FindComponent('BTNGRAVAR') as TBitBtn) <> nil) then
         (FTela.FindComponent('BTNGRAVAR') as TBitBtn).enabled := False; 
      
      if ((FTela.FindComponent('BOTFECHAR') as TBitBtn) <> nil) then
         (FTela.FindComponent('BOTFECHAR') as TBitBtn).enabled := True; 

      if ((FTela.FindComponent('BOTPESQUISAR') as TBitBtn) <> nil) then
         (FTela.FindComponent('BOTPESQUISAR') as TBitBtn).enabled := True; 
  
      if ((FTela.FindComponent('CAD_PAINEL') as TPanel) <> nil) then
        //DesabilitaComponentes(FTela.FindComponent('CAD_PAINEL') as TPanel, False);
  end
  else if (ACAO = 'INSERIR') OR (ACAO = 'ALTERAR') then
  begin
      if ((FTela.FindComponent('BTNNOVO') as TBitBtn) <> nil) then
         (FTela.FindComponent('BTNNOVO') as TBitBtn).enabled := False; 
      
      if ((FTela.FindComponent('BTNALTERAR') as TBitBtn) <> nil) then
         (FTela.FindComponent('BTNALTERAR') as TBitBtn).enabled := False;
      
      if ((FTela.FindComponent('BTNEXCLUIR') as TBitBtn) <> nil) then
          (FTela.FindComponent('BTNEXCLUIR') as TBitBtn).enabled := False;
      
      if ((FTela.FindComponent('BTNCANCELAR') as TBitBtn) <> nil) then
         (FTela.FindComponent('BTNCANCELAR') as TBitBtn).enabled := True; 

      if ((FTela.FindComponent('BTNGRAVAR') as TBitBtn) <> nil) then
         (FTela.FindComponent('BTNGRAVAR') as TBitBtn).enabled := True; 
      
      if ((FTela.FindComponent('BOTFECHAR') as TBitBtn) <> nil) then
         (FTela.FindComponent('BOTFECHAR') as TBitBtn).enabled := False; 

      if ((FTela.FindComponent('BOTPESQUISAR') as TBitBtn) <> nil) then
         (FTela.FindComponent('BOTPESQUISAR') as TBitBtn).enabled := false; 
  
      if ((FTela.FindComponent('CAD_PAINEL') as TPanel) <> nil) then
        //DesabilitaComponentes(FTela.FindComponent('CAD_PAINEL') as TPanel, False);
  end
  else if (ACAO = 'GRAVAR') OR (ACAO = 'CANCELAR') then
  begin
      if ((FTela.FindComponent('BTNNOVO') as TBitBtn) <> nil) then
         (FTela.FindComponent('BTNNOVO') as TBitBtn).enabled := True; 
      
      if ((FTela.FindComponent('BTNALTERAR') as TBitBtn) <> nil) then
         (FTela.FindComponent('BTNALTERAR') as TBitBtn).enabled := True;
      
      if ((FTela.FindComponent('BTNEXCLUIR') as TBitBtn) <> nil) then
          (FTela.FindComponent('BTNEXCLUIR') as TBitBtn).enabled := True;
      
      if ((FTela.FindComponent('BTNCANCELAR') as TBitBtn) <> nil) then
         (FTela.FindComponent('BTNCANCELAR') as TBitBtn).enabled := False; 

      if ((FTela.FindComponent('BTNGRAVAR') as TBitBtn) <> nil) then
         (FTela.FindComponent('BTNGRAVAR') as TBitBtn).enabled := False; 
      
      if ((FTela.FindComponent('BOTFECHAR') as TBitBtn) <> nil) then
         (FTela.FindComponent('BOTFECHAR') as TBitBtn).enabled := True; 

      if ((FTela.FindComponent('BOTPESQUISAR') as TBitBtn) <> nil) then
         (FTela.FindComponent('BOTPESQUISAR') as TBitBtn).enabled := false; 
  
      if ((FTela.FindComponent('CAD_PAINEL') as TPanel) <> nil) then
        //DesabilitaComponentes(FTela.FindComponent('CAD_PAINEL') as TPanel, False);
  end;
end;

procedure DesabilitaBotoesAux(FForm: TForm);
var
  x, i: integer;
  botao: String;
begin
  for x := 0 to FForm.ComponentCount - 1 do
  Begin
    if (FForm.Components[x] is TBitbtn) then
    Begin
       botao := UpperCase((FForm.Components[x] as TBitbtn).Name);
       if (Pos('INCLUIR', botao) > 0) then
          (FForm.Components[x] as TBitbtn).Enabled := False;
       if (Pos('ALTERAR', botao) > 0) then
          (FForm.Components[x] as TBitbtn).Enabled := False;
       if (Pos('EXCLUIR', botao) > 0) then
          (FForm.Components[x] as TBitbtn).Enabled := False;
       if (Pos('NOVO', botao) > 0) then
          (FForm.Components[x] as TBitbtn).Enabled := False;
       if (Pos('FECHAR', botao) > 0) then
          (FForm.Components[x] as TBitbtn).Enabled := False;   
    End;
    if (FForm.Components[x] is TDBNavigator) then
       (FForm.Components[x] as TDBNavigator).Enabled := False;
  End;
end; 

procedure HabilitaBotoesAux(FForm: TForm);
var
  x, i: integer;
  botao: String;
begin
  for x := 0 to FForm.ComponentCount - 1 do
  Begin
    if (FForm.Components[x] is TBitbtn) then
    Begin
       botao := UpperCase((FForm.Components[x] as TBitbtn).Name);
       if (Pos('INCLUIR', botao) > 0) then
          (FForm.Components[x] as TBitbtn).Enabled := True;
       if (Pos('ALTERAR', botao) > 0) then
          (FForm.Components[x] as TBitbtn).Enabled := True;
       if (Pos('EXCLUIR', botao) > 0) then
          (FForm.Components[x] as TBitbtn).Enabled := True;
       if (Pos('NOVO', botao) > 0) then
          (FForm.Components[x] as TBitbtn).Enabled := True;
       if (Pos('FECHAR', botao) > 0) then
          (FForm.Components[x] as TBitbtn).Enabled := True;
    End;
    if (FForm.Components[x] is TDBNavigator) then
       (FForm.Components[x] as TDBNavigator).Enabled := True;
  End;
end;

procedure DesabilitaCampos(FForm: TForm);
var
  x: integer;
begin
  for x := 0 to FForm.ComponentCount - 1 do
  Begin
    if (FForm.Components[x] is TPanel) then
       (FForm.Components[x] as TPanel).Enabled := False;
    {if (FForm.Components[x] is TJvDBComboBox) then
       (FForm.Components[x] as TJvDBComboBox).Enabled := False
    else if (FForm.Components[x] is TLabeledEdit) then
       (FForm.Components[x] as TLabeledEdit).Enabled := False   
    else if (FForm.Components[x] is TdbEdit) then
       (FForm.Components[x] as TdbEdit).Enabled := False
    else if (FForm.Components[x] is TDateTimePicker) then
      TDateTimePicker(FForm.Components[x]).Date := Today
    else if (FForm.Components[x] is TCheckBox) then
      TCheckBox(FForm.Components[x]).Checked := False
    else if (FForm.Components[x] is TImage) then
      TImage(FForm.Components[x]).Picture := Nil;}
  End;
end;

procedure HabilitaCampos(FForm: TForm);
var
  x: integer;
begin
  for x := 0 to FForm.ComponentCount - 1 do
  Begin
    {if (FForm.Components[x] is TJvDBComboBox) then
       (FForm.Components[x] as TJvDBComboBox).Enabled := True
    else if (FForm.Components[x] is TLabeledEdit) then
       (FForm.Components[x] as TLabeledEdit).Enabled := True   
    else if (FForm.Components[x] is TdbEdit) then
       (FForm.Components[x] as TdbEdit).Enabled := True
    else if (FForm.Components[x] is TDateTimePicker) then
      TDateTimePicker(FForm.Components[x]).Date := Today
    else if (FForm.Components[x] is TCheckBox) then
      TCheckBox(FForm.Components[x]).Checked := True
    else if (FForm.Components[x] is TImage) then
      TImage(FForm.Components[x]).Picture := Nil;}
    
  End;
end;



end.
