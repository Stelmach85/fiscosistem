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
    unContribuintesCODIGO: TIntegerField;
    unContribuintesNRINSC: TStringField;
    unContribuintesTPINSC: TIntegerField;
    unContribuintesINIVALID: TDateField;
    unContribuintesFIMVALID: TDateField;
    unContribuintesCLASSTRIB: TIntegerField;
    unContribuintesINDESCRITURACAO: TIntegerField;
    unContribuintesINDDESONERACAO: TIntegerField;
    unContribuintesINDACORDOISENMULTA: TIntegerField;
    unContribuintesINDSITPJ: TIntegerField;
    unContribuintesNMCTT: TStringField;
    unContribuintesCPFCTT: TStringField;
    unContribuintesFONEFIXO: TStringField;
    unContribuintesFONECEL: TStringField;
    unContribuintesEMAIL_CONTATO: TStringField;
    unContribuintesEMAIL: TStringField;
    unContribuintesCNPJSOFTHOUSE: TStringField;
    unContribuintesNMRAZAO: TStringField;
    unContribuintesNMCONT: TStringField;
    unContribuintesTELEFONE: TStringField;
    unContribuintesIDEEFR: TStringField;
    unContribuintesCNPJEFR: TStringField;
    unContribuintesNMRAZAOSOCIAL: TStringField;
    unRefClasTrib: TUniTable;
    dsRefClasTrib: TUniDataSource;
    dsProcessos: TUniDataSource;
    unProcessosCODIGO: TIntegerField;
    unProcessosNRINSC: TStringField;
    unProcessosTPINSC: TIntegerField;
    unProcessosINIVALID: TDateField;
    unProcessosFIMVALID: TDateField;
    unProcessosTPPROC: TStringField;
    unProcessosNRPROC: TStringField;
    unProcessosCODSUSP: TStringField;
    unProcessosINDSUSP: TStringField;
    unProcessosDTDECISAO: TDateField;
    unProcessosINDDEPOSITO: TStringField;
    unProcessosUFVARA: TStringField;
    unProcessosCODMUNIC: TStringField;
    unProcessosIDVARA: TStringField;
    unProcessosINDAUDITORIA: TStringField;
    unProcessosPERAPUR: TStringField;
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
    procedure unContribuintesAfterPost(DataSet: TDataSet);
    procedure unContribuintesAfterDelete(DataSet: TDataSet);
    procedure unProcessosAfterDelete(DataSet: TDataSet);
    procedure unProcessosAfterPost(DataSet: TDataSet);
    procedure unParametrosAfterDelete(DataSet: TDataSet);
    procedure unParametrosAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

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
