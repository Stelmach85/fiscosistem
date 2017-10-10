unit UDMCadCPRB;

interface

uses
  SysUtils, Classes, UDM, DB, DBAccess, Uni, MemDS, frm_REINF, UFormCadCPRB;

type
  TDMCadCPRB = class(TDataModule)
    unCadCPRB: TUniTable;
    unCadCPRBCODIGO: TIntegerField;
    unCadCPRBPERAPUR: TStringField;
    unCadCPRBNRINSCESTAB: TStringField;
    unCadCPRBTPINSCESTAB: TIntegerField;
    cdsCadCPRBVLRRECBRUTATOTAL: TFloatField;
    cdsCadCPRBVLRCPAPURTOTAL: TFloatField;
    cdsCadCPRBVLRCPRBSUSPTOTAL: TFloatField;
    dsCadCPRB: TUniDataSource;
    unDetalheReceita: TUniTable;
    dsDetalheReceita: TUniDataSource;
    unDetalheReceitaCODIGO: TIntegerField;
    unDetalheReceitaPERAPUR: TStringField;
    unDetalheReceitaNRINSCESTAB: TStringField;
    unDetalheReceitaCODATIVECON: TStringField;
    cdsDetalheReceitaVLRRECBRUTAATIV: TFloatField;
    cdsDetalheReceitaVLREXCRECBRUTA: TFloatField;
    cdsDetalheReceitaVLRADICRECBRUTA: TFloatField;
    cdsDetalheReceitaVLRBCCPRB: TFloatField;
    cdsDetalheReceitaVLRCPRBAPUR: TFloatField;
    unAjustesReceita: TUniTable;
    dsAjustesReceita: TUniDataSource;
    unProcessosReceita: TUniTable;
    dsProcessosReceita: TUniDataSource;
    unAjustesReceitaCODIGO: TIntegerField;
    unAjustesReceitaPERAPUR: TStringField;
    unAjustesReceitaNRINSCESTAB: TStringField;
    unAjustesReceitaCODATIVECON: TStringField;
    unAjustesReceitaTPAJUSTE: TStringField;
    unAjustesReceitaCODAJUSTE: TIntegerField;
    cdsAjustesReceitaVLRAJUSTE: TFloatField;
    unAjustesReceitaDESCAJUSTE: TStringField;
    unAjustesReceitaDTAJUSTE: TStringField;
    unProcessosReceitaCODIGO: TIntegerField;
    unProcessosReceitaPERAPUR: TStringField;
    unProcessosReceitaNRINSCESTAB: TStringField;
    unProcessosReceitaNRPROC: TStringField;
    unProcessosReceitaTPPROC: TIntegerField;
    unProcessosReceitaCODSUSP: TStringField;
    cdsProcessosReceitaVLRCPRBSUSP: TFloatField;
    unRefAtivEcon: TUniTable;
    dsRefAtivEcon: TUniDataSource;
    unRefAtivEconCODIGO: TStringField;
    unRefAtivEconDESCRICAO: TStringField;
    unRefAtivEconNCM: TStringField;
    cdsRefAtivEconALIQUOTA: TFloatField;
    dtmfldRefAtivEconDATAINI: TDateTimeField;
    procedure unCadCPRBAfterScroll(DataSet: TDataSet);
    procedure unDetalheReceitaAfterScroll(DataSet: TDataSet);
    procedure unCadCPRBAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCadCPRB: TDMCadCPRB;

implementation

{$R *.dfm}

procedure TDMCadCPRB.unCadCPRBAfterPost(DataSet: TDataSet);
begin
   unCadCPRB.ApplyUpdates();
   unCadCPRB.CommitUpdates;
end;

procedure TDMCadCPRB.unCadCPRBAfterScroll(DataSet: TDataSet);
begin 
    if not DMCadCPRB.unCadCPRB.IsEmpty then
    Begin
       FormCadCPRB.pnl2.Enabled := True;
       FormCadCPRB.pnl31.Enabled := True;
       FormCadCPRB.pnl41.Enabled := True; 
    End;
    DMCadCPRB.unDetalheReceita.Close;
    DMCadCPRB.unDetalheReceita.FilterSQL:='Codigo= '+ IntToStr(Codcurr) +
     ' and PerApur= '+ QuotedStr(DMCadCPRB.unCadCPRB.FieldByName('PERAPUR').AsString) +
     ' and nrInscEstab= ' + QuotedStr(DMCadCPRB.unCadCPRB.FieldByName('NRINSCESTAB').AsString); 
    DMCadCPRB.unDetalheReceita.Filtered:=True;
    DMCadCPRB.unDetalheReceita.Open;
    FormCadCPRB.pnlgrp1.Enabled := not DMCadCPRB.unDetalheReceita.IsEmpty;
    FormCadCPRB.btnalterar2.Enabled := not DMCadCPRB.unDetalheReceita.IsEmpty;
    FormCadCPRB.btnexcluir2.Enabled := not DMCadCPRB.unDetalheReceita.IsEmpty;

    DMCadCPRB.unAjustesReceita.Close;
    DMCadCPRB.unAjustesReceita.FilterSQL:='Codigo= '+ IntToStr(Codcurr) +
     ' and PerApur= '+ QuotedStr(DMCadCPRB.unDetalheReceita.FieldByName('PERAPUR').AsString) +
     ' and nrInscEstab= ' + QuotedStr(DMCadCPRB.unDetalheReceita.FieldByName('NRINSCESTAB').AsString) +
     ' and codAtivEcon= ' + QuotedStr(DMCadCPRB.unDetalheReceita.FieldByName('CODATIVECON').AsString); 
    DMCadCPRB.unAjustesReceita.Filtered:=True;
    DMCadCPRB.unAjustesReceita.Open;
    FormCadCPRB.btnalterar3.Enabled := not DMCadCPRB.unAjustesReceita.IsEmpty;
    FormCadCPRB.btnexcluir3.Enabled := not DMCadCPRB.unAjustesReceita.IsEmpty;

    DMCadCPRB.unProcessosReceita.Close;
    DMCadCPRB.unProcessosReceita.FilterSQL:='Codigo= '+ IntToStr(Codcurr) +
     ' and PerApur= '+ QuotedStr(DMCadCPRB.unCadCPRB.FieldByName('PERAPUR').AsString) +
     ' and nrInscEstab= ' + QuotedStr(DMCadCPRB.unCadCPRB.FieldByName('NRINSCESTAB').AsString); 
    DMCadCPRB.unProcessosReceita.Filtered:=True;
    DMCadCPRB.unProcessosReceita.Open;
    FormCadCPRB.btnalterar4.Enabled := not DMCadCPRB.unAjustesReceita.IsEmpty;
    FormCadCPRB.btnexcluir4.Enabled := not DMCadCPRB.unAjustesReceita.IsEmpty;
end;

procedure TDMCadCPRB.unDetalheReceitaAfterScroll(DataSet: TDataSet);
begin
  FormCadCPRB.pnlgrp1.Enabled := not DMCadCPRB.unDetalheReceita.IsEmpty;
  FormCadCPRB.btnalterar2.Enabled := not DMCadCPRB.unDetalheReceita.IsEmpty;
  FormCadCPRB.btnexcluir2.Enabled := not DMCadCPRB.unDetalheReceita.IsEmpty;
  DMCadCPRB.unAjustesReceita.Close;
  DMCadCPRB.unAjustesReceita.FilterSQL:='Codigo= '+ IntToStr(Codcurr) +
     ' and PerApur= '+ QuotedStr(DMCadCPRB.unDetalheReceita.FieldByName('PERAPUR').AsString) +
     ' and nrInscEstab= ' + QuotedStr(DMCadCPRB.unDetalheReceita.FieldByName('NRINSCESTAB').AsString) +
     ' and codAtivEcon= ' + QuotedStr(DMCadCPRB.unDetalheReceita.FieldByName('CODATIVECON').AsString); 
  DMCadCPRB.unAjustesReceita.Filtered:=True;
  DMCadCPRB.unAjustesReceita.Open;
end;

end.
