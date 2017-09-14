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
    dtmfldContribuintesINIVALID: TDateTimeField;
    dtmfldContribuintesFIMVALID: TDateTimeField;
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
    procedure unContribuintesAfterPost(DataSet: TDataSet);
    procedure unContribuintesAfterDelete(DataSet: TDataSet);
    procedure unProcessosAfterDelete(DataSet: TDataSet);
    procedure unProcessosAfterPost(DataSet: TDataSet);
    procedure unParametrosAfterDelete(DataSet: TDataSet);
    procedure unParametrosAfterPost(DataSet: TDataSet);
    procedure unBeneficiariosAfterDelete(DataSet: TDataSet);
    procedure unBeneficiariosAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

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

end.
