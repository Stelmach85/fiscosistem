unit UDM;

interface

uses
  SysUtils, Classes, DASQLMonitor, UniSQLMonitor, SQLServerUniProvider,
  OracleUniProvider, MySQLUniProvider, UniProvider, InterBaseUniProvider, DB,
  DBAccess, Uni, MemDS;

type
  TDM = class(TDataModule)
    Conexao: TUniConnection;
    InterBaseUniProvider1: TInterBaseUniProvider;
    MySQLUniProvider1: TMySQLUniProvider;
    OracleUniProvider1: TOracleUniProvider;
    SQLServerUniProvider1: TSQLServerUniProvider;
    UniSQLMonitor1: TUniSQLMonitor;
    ConexaoAnt: TUniConnection;
    unContribuintes: TUniTable;
    unProcessos: TUniTable;
    unRetCP_ServTom: TUniTable;
    unDetalheNF_ServPrest: TUniTable;
    unTiposServPrest_NF: TUniTable;
    unInfProcessos: TUniTable;
    unInfProcessosAdic: TUniTable;
    unBeneficiarios: TUniTable;
    unRendimentos: TUniTable;
    unRendimentosCum: TUniTable;
    unPagtoExterior: TUniTable;
    dsContribuintes: TUniDataSource;
    qryUtil: TUniQuery;
    unRefClasTrib: TUniTable;
    dsRefClasTrib: TUniDataSource;
    dsProcessos: TUniDataSource;
    unParametros: TUniTable;
    unParametrosCODIGO: TIntegerField;
    unParametrosID: TIntegerField;
    unParametrosNOME: TStringField;
    unParametrosSENHA: TStringField;
    unParametrosSERIE: TStringField;
    unParametrosMODELO: TStringField;
    unParametrosXML_IMPORTADO: TStringField;
    unParametrosXML_GERADO: TStringField;
    unParametrosXML_TRANSMITIDO: TStringField;
    unParametrosXML_RETORNO: TStringField;
    unParametrosXML_RETORNO_ERRO: TStringField;
    dsParametros: TUniDataSource;
    unProcessosPERAPUR: TStringField;
    unProcessosNRPROC: TStringField;
    unProcessosINDSUSP: TStringField;
    unProcessosNRINSC: TStringField;
    unProcessosTPINSC: TIntegerField;
    unProcessosINIVALID: TStringField;
    unProcessosFIMVALID: TStringField;
    unProcessosTPPROC: TStringField;
    unProcessosCODSUSP: TStringField;
    dtmfldProcessosDTDECISAO: TDateTimeField;
    unProcessosINDDEPOSITO: TStringField;
    unProcessosUFVARA: TStringField;
    unProcessosCODMUNIC: TStringField;
    unProcessosIDVARA: TStringField;
    unProcessosINDAUTORIA: TStringField;
    unConslProcessos: TUniTable;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField1: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    dtmfld1: TDateTimeField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    dsConslProcessos: TUniDataSource;
    unProcessosCODIGO: TIntegerField;
    dsBeneficiarios: TUniDataSource;
    unPais: TUniTable;
    unPaisID: TIntegerField;
    unPaisCOD_PAIS: TStringField;
    unPaisDESCRICAO: TStringField;
    dsPais: TUniDataSource;
    unBeneficiariosCODIGO: TIntegerField;
    unBeneficiariosNRINSCBENEF: TStringField;
    unBeneficiariosTPINSCBENF: TIntegerField;
    unBeneficiariosNMRAZAOBENEF: TStringField;
    unBeneficiariosPAISRESID: TStringField;
    unBeneficiariosDSCLOGRAD: TStringField;
    unBeneficiariosNRLOGRAD: TStringField;
    unBeneficiariosCOMPLEM: TStringField;
    unBeneficiariosBAIRRO: TStringField;
    unBeneficiariosCIDADE: TStringField;
    unBeneficiariosCODPOSTA: TStringField;
    unBeneficiariosINDNIF: TIntegerField;
    unBeneficiariosNIFBENEF: TStringField;
    unBeneficiariosRELFONTEPAGAD: TStringField;
    dtmfldBeneficiariosDTLAUDO: TDateTimeField;
    unConslBeneficiarios: TUniTable;
    StringField7: TStringField;
    IntegerField3: TIntegerField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    IntegerField4: TIntegerField;
    StringField23: TStringField;
    StringField24: TStringField;
    dtmfld2: TDateTimeField;
    dsConsulBeneficiarios: TUniDataSource;
    unContribuintesCODIGO: TIntegerField;
    unContribuintesNMRAZAOSOCIAL: TStringField;
    unContribuintesNRINSC: TStringField;
    unContribuintesTPINSC: TIntegerField;
    unContribuintesINDESCRITURACAO: TIntegerField;
    unContribuintesINDDESONERACAO: TIntegerField;
    unContribuintesINDACORDOISENMULTA: TIntegerField;
    unContribuintesINDSITPJ: TIntegerField;
    unContribuintesNMCTT: TStringField;
    unContribuintesCPFCTT: TStringField;
    unContribuintesFONEFIXO: TStringField;
    unContribuintesFONECEL: TStringField;
    unContribuintesEMAIL_CONTATO: TStringField;
    unContribuintesIDEEFR: TStringField;
    unContribuintesCNPJEFR: TStringField;
    unContribuintesCLASSTRIB: TStringField;
    dsRetCP_ServTom: TUniDataSource;
    dsDetalheNF_ServPrest: TUniDataSource;
    dsTiposServPrest_NF: TUniDataSource;
    unRef_Tipo_Servico: TUniTable;
    dsRef_Tipo_Servico: TUniDataSource;
    dsInfProcessos: TUniDataSource;
    unInfProcessosID_PROCESSO: TIntegerField;
    unInfProcessosNRPROCRETPRINC: TStringField;
    unInfProcessosTPPROCRETPRINC: TIntegerField;
    unInfProcessosCODSUSP: TStringField;
    cdsInfProcessosVALORPRINC: TFloatField;
    unInfProcessosID_SERVICO: TIntegerField;
    unContribuintesINIVALID: TStringField;
    unContribuintesFIMVALID: TStringField;
    unRetCP_ServTomID_SERVICO: TIntegerField;
    unRetCP_ServTomCODIGO: TIntegerField;
    unRetCP_ServTomTPINSCESTABTOM: TIntegerField;
    unRetCP_ServTomNRINSCESTABTOM: TStringField;
    unRetCP_ServTomCNPJPRESTADOR: TStringField;
    unRetCP_ServTomINDOBRA: TIntegerField;
    unRetCP_ServTomPERAPUR: TStringField;
    cdsRetCP_ServTomVLRTOTALBRUTO: TFloatField;
    cdsRetCP_ServTomVLRTOTALBASERET: TFloatField;
    cdsRetCP_ServTomVLRTOTALRETPRINC: TFloatField;
    cdsRetCP_ServTomVLRTOTALRETADIC: TFloatField;
    cdsRetCP_ServTomVLRTOTALNRETPRINC: TFloatField;
    cdsRetCP_ServTomVLRTOTALNRETADIC: TFloatField;
    unRetCP_ServTomINDCPRB: TIntegerField;
    unRetCP_ServTomEVENTO: TStringField;
    unDetalheNF_ServPrestCODIGO: TIntegerField;
    unDetalheNF_ServPrestID_NF: TIntegerField;
    unDetalheNF_ServPrestID_SERVICO: TIntegerField;
    unDetalheNF_ServPrestSERIE: TStringField;
    unDetalheNF_ServPrestNUMDOCTO: TStringField;
    dtmfldDetalheNF_ServPrestDTEMISSAONF: TDateTimeField;
    cdsDetalheNF_ServPrestVLRBRUTO: TFloatField;
    unDetalheNF_ServPrestOBS: TStringField;
    unTiposServPrest_NFCODIGO: TIntegerField;
    unTiposServPrest_NFTPSERVICO: TStringField;
    unTiposServPrest_NFID_NF: TIntegerField;
    unTiposServPrest_NFID_SERVICO: TIntegerField;
    cdsTiposServPrest_NFVLRBASERET: TFloatField;
    cdsTiposServPrest_NFVLRRETENCAO: TFloatField;
    cdsTiposServPrest_NFVLRRETSUB: TFloatField;
    cdsTiposServPrest_NFVLRNRETPRINC: TFloatField;
    cdsTiposServPrest_NFVLRSERVICOS15: TFloatField;
    cdsTiposServPrest_NFVLRSERVICOS20: TFloatField;
    cdsTiposServPrest_NFVLRSERVICOS25: TFloatField;
    cdsTiposServPrest_NFVLRADICIONAL: TFloatField;
    cdsTiposServPrest_NFVLRNRETADIC: TFloatField;
    unInfProcessosCODIGO: TIntegerField;
    dsInfProcessosAdic: TUniDataSource;
    unProdRural: TUniTable;
    dsProdRural: TUniDataSource;
    unProcAdmJud: TUniTable;
    dsProcAdmJud: TUniDataSource;
    unConsultaServicos: TUniTable;
    IntegerField6: TIntegerField;
    StringField25: TStringField;
    StringField26: TStringField;
    IntegerField7: TIntegerField;
    StringField27: TStringField;
    cds1: TFloatField;
    cds2: TFloatField;
    cds3: TFloatField;
    cds4: TFloatField;
    cds5: TFloatField;
    cds6: TFloatField;
    IntegerField8: TIntegerField;
    StringField28: TStringField;
    dsConsultaServicos: TUniDataSource;
    unProdRuralCODIGO: TIntegerField;
    unProdRuralPERAPUR: TStringField;
    unProdRuralNRINSCESTAB: TStringField;
    cdsProdRuralVLRRECBRUTATOTAL: TFloatField;
    cdsProdRuralVLRCPAPUR: TFloatField;
    cdsProdRuralVLRRATAPUR: TFloatField;
    cdsProdRuralVLRSENARAPUR: TFloatField;
    cdsProdRuralVLRCPSUSPTOTAL: TFloatField;
    cdsProdRuralVLRRATSUSPTOTAL: TFloatField;
    cdsProdRuralVLRSENARSUSPTOTAL: TFloatField;
    unProcAdmJudCODIGO: TIntegerField;
    unProcAdmJudPERAPUR: TStringField;
    unProcAdmJudNRINSCESTAB: TStringField;
    unProcAdmJudNRPROC: TStringField;
    unProcAdmJudTPPROC: TIntegerField;
    cdsProcAdmJudVLRCPSUSP: TFloatField;
    cdsProcAdmJudVLRSENARSUSP: TFloatField;
    unTipoComProdRural: TUniTable;
    dsTipoComProdRural: TUniDataSource;
    unTipoComProdRuralCODIGO: TIntegerField;
    unTipoComProdRuralPERAPUR: TStringField;
    unTipoComProdRuralNRINSCESTAB: TStringField;
    unTipoComProdRuralINDCOM: TIntegerField;
    cdsTipoComProdRuralVLRRECBRUTA: TFloatField;
    cdsProcAdmJudVLRRATSUSP: TFloatField;
    qryConsultaProdRural: TUniQuery;
    dsConsultaProdRural: TUniDataSource;
    qryConsultaProdRuralPERAPUR: TStringField;
    cdsConsultaProdRuralVLRRECBRUTATOTAL: TFloatField;
    cdsConsultaProdRuralVLRCPAPUR: TFloatField;
    cdsConsultaProdRuralVLRRATAPUR: TFloatField;
    cdsConsultaProdRuralVLRSENARAPUR: TFloatField;
    cdsConsultaProdRuralVLRCPSUSPTOTAL: TFloatField;
    cdsConsultaProdRuralVLRRATSUSPTOTAL: TFloatField;
    cdsConsultaProdRuralVLRSENARSUSPTOTAL: TFloatField;
    qryConsultaProdRuralINDCOM: TIntegerField;
    cdsConsultaProdRuralVLRRECBRUTA: TFloatField;
    procedure unContribuintesAfterPost(DataSet: TDataSet);
    procedure unContribuintesAfterDelete(DataSet: TDataSet);
    procedure unProcessosAfterDelete(DataSet: TDataSet);
    procedure unProcessosAfterPost(DataSet: TDataSet);
    procedure unParametrosAfterDelete(DataSet: TDataSet);
    procedure unParametrosAfterPost(DataSet: TDataSet);
    procedure unBeneficiariosAfterDelete(DataSet: TDataSet);
    procedure unBeneficiariosAfterPost(DataSet: TDataSet);
    procedure unRetCP_ServTomAfterDelete(DataSet: TDataSet);
    procedure unRetCP_ServTomAfterPost(DataSet: TDataSet);
    procedure unDetalheNF_ServPrestAfterDelete(DataSet: TDataSet);
    procedure unDetalheNF_ServPrestAfterPost(DataSet: TDataSet);
    procedure unTiposServPrest_NFAfterDelete(DataSet: TDataSet);
    procedure unTiposServPrest_NFAfterPost(DataSet: TDataSet);
    procedure unRetCP_ServTomAfterScroll(DataSet: TDataSet);
    procedure unDetalheNF_ServPrestAfterScroll(DataSet: TDataSet);
    procedure unInfProcessosAfterDelete(DataSet: TDataSet);
    procedure unInfProcessosAfterPost(DataSet: TDataSet);
    procedure unInfProcessosAdicAfterClose(DataSet: TDataSet);
    procedure unInfProcessosAdicAfterPost(DataSet: TDataSet);
    procedure unProdRuralAfterScroll(DataSet: TDataSet);
    procedure unProdRuralAfterDelete(DataSet: TDataSet);
    procedure unProdRuralAfterPost(DataSet: TDataSet);
    procedure unTipoComProdRuralAfterPost(DataSet: TDataSet);
    procedure unTipoComProdRuralAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses frm_REINF;

{$R *.dfm}

procedure TDM.unBeneficiariosAfterDelete(DataSet: TDataSet);
begin
   try
   unBeneficiarios.CommitUpdates;
   unBeneficiarios.ApplyUpdates();
except

 end;
end;

procedure TDM.unBeneficiariosAfterPost(DataSet: TDataSet);
begin
   try
   unBeneficiarios.CommitUpdates;
   unBeneficiarios.ApplyUpdates();
except

 end;
end;

procedure TDM.unContribuintesAfterDelete(DataSet: TDataSet);
begin
 try
   unContribuintes.CommitUpdates;
   unContribuintes.ApplyUpdates();
except

 end;
end;

procedure TDM.unContribuintesAfterPost(DataSet: TDataSet);
begin
 try
   unContribuintes.CommitUpdates;
   unContribuintes.ApplyUpdates();
except

 end;
end;

procedure TDM.unDetalheNF_ServPrestAfterDelete(DataSet: TDataSet);
begin
     try
   unDetalheNF_ServPrest.CommitUpdates;
   unDetalheNF_ServPrest.ApplyUpdates();
except

 end;
end;

procedure TDM.unDetalheNF_ServPrestAfterPost(DataSet: TDataSet);
begin
try
   unDetalheNF_ServPrest.CommitUpdates;
   unDetalheNF_ServPrest.ApplyUpdates();
except

 end;
end;

procedure TDM.unDetalheNF_ServPrestAfterScroll(DataSet: TDataSet);
begin 
unTiposServPrest_NF.Close;
unTiposServPrest_NF.FilterSQL:='ID_SERVICO='+ IntToStr(DM.unRetCP_ServTom.FieldByName('ID_SERVICO').AsInteger) + ' and ID_NF='+IntToStr(DM.unDetalheNF_ServPrest.FieldByName('ID_NF').AsInteger);
unTiposServPrest_NF.Filtered:=True;
unTiposServPrest_NF.Open;
end;

procedure TDM.unInfProcessosAdicAfterClose(DataSet: TDataSet);
begin
try
   unInfProcessosAdic.CommitUpdates;
   unInfProcessosAdic.ApplyUpdates();
except

 end;
end;

procedure TDM.unInfProcessosAdicAfterPost(DataSet: TDataSet);
begin
try
   unInfProcessosAdic.CommitUpdates;
   unInfProcessosAdic.ApplyUpdates();
except

 end;
end;

procedure TDM.unInfProcessosAfterDelete(DataSet: TDataSet);
begin
try
   unInfProcessos.CommitUpdates;
   unInfProcessos.ApplyUpdates();
except

 end;
end;

procedure TDM.unInfProcessosAfterPost(DataSet: TDataSet);
begin
try
   unInfProcessos.CommitUpdates;
   unInfProcessos.ApplyUpdates();
except

 end;
end;

procedure TDM.unParametrosAfterDelete(DataSet: TDataSet);
begin
   try
   unParametros.CommitUpdates;
   unParametros.ApplyUpdates();
except

 end;
end;

procedure TDM.unParametrosAfterPost(DataSet: TDataSet);
begin
   try
   unParametros.CommitUpdates;
   unParametros.ApplyUpdates();
except

 end;
end;

procedure TDM.unProcessosAfterDelete(DataSet: TDataSet);
begin
 try
   unProcessos.CommitUpdates;
   unProcessos.ApplyUpdates();
except

 end;
end;

procedure TDM.unProcessosAfterPost(DataSet: TDataSet);
begin
 try
   unProcessos.CommitUpdates;
   unProcessos.ApplyUpdates();
except

 end;
end;

procedure TDM.unProdRuralAfterDelete(DataSet: TDataSet);
begin
    try
   unProdRural.CommitUpdates;
   unProdRural.ApplyUpdates();
except

 end;
  if unProdRural.FieldByName('PERAPUR').AsString<>'' then
  begin
    DM.unProcAdmJud.Close;
    DM.unProcAdmJud.Filtered:=False;
    DM.unProcAdmJud.FilterSQL:='codigo='+ IntToStr(codcurr) + ' and PERAPUR= ''' + unProdRural.FieldByName('PERAPUR').AsString +'''' ;
    DM.unProcAdmJud.Filtered:=True;
    DM.unProcAdmJud.Open;
  end
  else
  begin
     DM.unProcAdmJud.Close;
    DM.unProcAdmJud.Filtered:=False;
    DM.unProcAdmJud.FilterSQL:='codigo=-1' ;
    DM.unProcAdmJud.Filtered:=True;
    DM.unProcAdmJud.Open;
  end;
end;

procedure TDM.unProdRuralAfterPost(DataSet: TDataSet);
begin
try
   unProdRural.CommitUpdates;
   unProdRural.ApplyUpdates();
except

 end;
  if unProdRural.FieldByName('PERAPUR').AsString<>'' then
  begin
    DM.unProcAdmJud.Close;
    DM.unProcAdmJud.Filtered:=False;
    DM.unProcAdmJud.FilterSQL:='codigo='+ IntToStr(codcurr) + ' and PERAPUR= ''' + unProdRural.FieldByName('PERAPUR').AsString +'''' ;
    DM.unProcAdmJud.Filtered:=True;
    DM.unProcAdmJud.Open;
  end;
end;

procedure TDM.unProdRuralAfterScroll(DataSet: TDataSet);
begin
  if unProdRural.FieldByName('PERAPUR').AsString<>'' then
  begin
    DM.unProcAdmJud.Close;
    DM.unProcAdmJud.Filtered:=False;
    DM.unProcAdmJud.FilterSQL:='codigo='+ IntToStr(codcurr) + ' and PERAPUR= ''' + unProdRural.FieldByName('PERAPUR').AsString +''' and NrinscEstab= '''+ unProdRural.FieldByName('NrinscEstab').AsString + '''';
    DM.unProcAdmJud.Filtered:=True;
    DM.unProcAdmJud.Open;

    DM.unTipoComProdRural.close;
    DM.unTipoComProdRural.Filtered:=False;
    DM.unTipoComProdRural.FilterSQL:='codigo='+ IntToStr(codcurr) + ' and PERAPUR= ''' + unProdRural.FieldByName('PERAPUR').AsString +''' and NrinscEstab= '''+ unProdRural.FieldByName('NrinscEstab').AsString + '''';
    DM.unTipoComProdRural.Filtered:=True;
    DM.unTipoComProdRural.Open;
    
  end;
  
end;

procedure TDM.unRetCP_ServTomAfterDelete(DataSet: TDataSet);
begin
try
   unRetCP_ServTom.CommitUpdates;
   unRetCP_ServTom.ApplyUpdates();
except

 end;
end;

procedure TDM.unRetCP_ServTomAfterPost(DataSet: TDataSet);
begin
try
   unRetCP_ServTom.CommitUpdates;
   unRetCP_ServTom.ApplyUpdates();
except

 end;
end;

procedure TDM.unRetCP_ServTomAfterScroll(DataSet: TDataSet);
begin
DM.unDetalheNF_ServPrest.Close;
DM.unDetalheNF_ServPrest.FilterSQL:='ID_SERVICO='+ IntToStr(DM.unRetCP_ServTom.FieldByName('ID_SERVICO').AsInteger);
DM.unDetalheNF_ServPrest.Filtered:=True;
DM.unDetalheNF_ServPrest.Open;

if  DM.unDetalheNF_ServPrest.FieldByName('ID_NF').AsInteger=0 then
begin
unTiposServPrest_NF.Close;
unTiposServPrest_NF.FilterSQL:='ID_SERVICO='+ IntToStr(DM.unRetCP_ServTom.FieldByName('ID_SERVICO').AsInteger) + ' and ID_NF='+IntToStr(-1);
unTiposServPrest_NF.Filtered:=True;
unTiposServPrest_NF.Open;
end;

DM.unInfProcessosAdic.Close;
DM.unInfProcessosAdic.FilterSQL:='ID_SERVICO='+ IntToStr(DM.unRetCP_ServTom.FieldByName('ID_SERVICO').AsInteger);
DM.unInfProcessosAdic.Filtered:=True;
DM.unInfProcessosAdic.Open; 

DM.unInfProcessos.Close;
DM.unInfProcessos.FilterSQL:='ID_SERVICO='+ IntToStr(DM.unRetCP_ServTom.FieldByName('ID_SERVICO').AsInteger);
DM.unInfProcessos.Filtered:=True;
DM.unInfProcessos.Open;

end;

procedure TDM.unTipoComProdRuralAfterDelete(DataSet: TDataSet);
begin
 try
   unTipoComProdRural.CommitUpdates;
   unTipoComProdRural.ApplyUpdates();
except

 end;
end;

procedure TDM.unTipoComProdRuralAfterPost(DataSet: TDataSet);
begin
  try
   unTipoComProdRural.CommitUpdates;
   unTipoComProdRural.ApplyUpdates();
except

 end;
end;

procedure TDM.unTiposServPrest_NFAfterDelete(DataSet: TDataSet);
begin
try
   unTiposServPrest_NF.CommitUpdates;
   unTiposServPrest_NF.ApplyUpdates();
except

 end;
end;

procedure TDM.unTiposServPrest_NFAfterPost(DataSet: TDataSet);
begin
try
   unTiposServPrest_NF.CommitUpdates;
   unTiposServPrest_NF.ApplyUpdates();
except

 end;
end;

end.
