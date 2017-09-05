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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
