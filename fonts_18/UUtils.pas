unit UUtils;

interface

uses
 Forms, Buttons, JvDBCombobox, ExtCtrls, DBCtrls, ComCtrls, StdCtrls, DateUtils;

function HabilitxW(FTela: TForm; hab: boolean; ACAO: string): boolean;
procedure DesabilitaCampos(FForm: TForm);
procedure HabilitaCampos(FForm: TForm);

implementation

function HabilitxW(FTela: TForm; hab: boolean; ACAO: string): boolean;
var
  x: integer;
  sql, tela, Idioma: string;
begin

  Result := hab;
  if (ACAO = 'NADA') then
    begin

      if ((FTela.FindComponent('BTNNOVO') as TBitBtn) <> nil) then
      begin 
        (FTela.FindComponent('BTNNOVO') as TBitBtn).enabled := True; 
      end;

      if ((FTela.FindComponent('BTNALTERAR') as TBitBtn) <> nil) then
      begin 
        (FTela.FindComponent('BTNALTERAR') as TBitBtn).enabled := True; 
      end;

      if ((FTela.FindComponent('BTNEXCLUIR') as TBitBtn) <> nil) then
      begin 
        (FTela.FindComponent('BTNEXCLUIR') as TBitBtn).enabled := False; 
      end;

      if ((FTela.FindComponent('BTNCANCELAR') as TBitBtn) <> nil) then
      begin 
        (FTela.FindComponent('BTNCANCELAR') as TBitBtn).enabled := False; 
      end;

      if ((FTela.FindComponent('BTNGRAVAR') as TBitBtn) <> nil) then
      begin 
        (FTela.FindComponent('BTNGRAVAR') as TBitBtn).enabled := False; 
      end;

      if ((FTela.FindComponent('BOTFECHAR') as TBitBtn) <> nil) then
      begin 
        (FTela.FindComponent('BOTFECHAR') as TBitBtn).enabled := True; 
      end;

      if ((FTela.FindComponent('BOTPESQUISAR') as TBitBtn) <> nil) then
      begin 
        (FTela.FindComponent('BOTPESQUISAR') as TBitBtn).enabled := True; 
      end;

      if ((FTela.FindComponent('CAD_PAINEL') as TPanel) <> nil) then
        //DesabilitaComponentes(FTela.FindComponent('CAD_PAINEL') as TPanel, False);
    end
    { Verifica Permissões Úsuarios: INCLUIR. ALETAR, EXCLUIR }
    { ** Data Modificado:  21/12/2005.  ********** Maicon Vargas ************ }
  else if not hab then
    begin
      {if ((FTela.FindComponent('BOTINCLUIR') as TBitBtn) <> nil) then
        if DmFuncoes.Telas.FieldByName('INCLUSAO').AsInteger >= StrToInt(GetCookieNew(mNivel)) then
          begin (FTela.FindComponent('BOTINCLUIR') as TBitBtn)
            .enabled := True;
            if (FTela.FindComponent('STATUSBARPADRAO') <> nil) then
              if FTela.FindComponent('STATUSBARPADRAO') is TStatusBar then
                if (FTela.FindComponent('STATUSBARPADRAO') as TStatusBar).Panels.count >= 4 then
  (FTela.FindComponent('STATUSBARPADRAO') as TStatusBar)
                  .Panels[3].Text := '[INCLUSAO]';
          end;}

      if ((FTela.FindComponent('BOTALTERAR') as TBitBtn) <> nil) then (FTela.FindComponent('BOTALTERAR') as TBitBtn)
        .enabled := False;

      if ((FTela.FindComponent('BOTEXCLUIR') as TBitBtn) <> nil) then (FTela.FindComponent('BOTEXCLUIR') as TBitBtn)
        .enabled := False;

      if ((FTela.FindComponent('BOTCANCELAR') as TBitBtn) <> nil) then (FTela.FindComponent('BOTCANCELAR') as TBitBtn)
        .enabled := False;

      if ((FTela.FindComponent('BOTSALVAR') as TBitBtn) <> nil) then (FTela.FindComponent('BOTSALVAR') as TBitBtn)
        .enabled := False;
    end
  else if hab then
    begin
      if ((FTela.FindComponent('BOTINCLUIR') as TBitBtn) <> nil) then (FTela.FindComponent('BOTINCLUIR') as TBitBtn)
        .enabled := False;

      // if DmFuncoes.Telas.FieldByName('ALTERACAO').AsInteger >= StrToInt(GetCookieNew(mNIVEL)) then
      // begin
      if ((FTela.FindComponent('BOTALTERAR') as TBitBtn) <> nil) then (FTela.FindComponent('BOTALTERAR') as TBitBtn)
        .enabled := True;
      // end;

      if ((FTela.FindComponent('BOTEXCLUIR') as TBitBtn) <> nil) then (FTela.FindComponent('BOTEXCLUIR') as TBitBtn)
        .enabled := False;

      if ((FTela.FindComponent('BOTCANCELAR') as TBitBtn) <> nil) then (FTela.FindComponent('BOTCANCELAR') as TBitBtn)
        .enabled := False;

      if ((FTela.FindComponent('BOTSALVAR') as TBitBtn) <> nil) then (FTela.FindComponent('BOTSALVAR') as TBitBtn)
        .enabled := False;
    end;

end;

procedure DesabilitaCampos(FForm: TForm);
var
  x: integer;
begin
  for x := 0 to FForm.ComponentCount - 1 do
  Begin
    if (FForm.Components[x] is TJvDBComboBox) then
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
      TImage(FForm.Components[x]).Picture := Nil;
  End;
end;

procedure HabilitaCampos(FForm: TForm);
var
  x: integer;
begin
  for x := 0 to FForm.ComponentCount - 1 do
  Begin
    if (FForm.Components[x] is TJvDBComboBox) then
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
      TImage(FForm.Components[x]).Picture := Nil;
  End;
end;

end.
