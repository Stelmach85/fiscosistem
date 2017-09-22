unit UDMQuerysUteis;

interface

uses
  SysUtils, Classes, DB, MemDS, DBAccess, Uni;

type
  TDMQuerysUteis = class(TDataModule)
    qryEmpresas: TUniQuery;
    dsqryEmpresas: TUniDataSource;
    qryaux: TUniQuery;
    qryEmpresasCODIGO: TIntegerField;
    qryEmpresasNMRAZAOSOCIAL: TStringField;
    qryEmpresasNRINSC: TStringField;
    qryEmpresasTPINSC: TIntegerField;
    qryEmpresasINDESCRITURACAO: TIntegerField;
    qryEmpresasINDDESONERACAO: TIntegerField;
    qryEmpresasINDACORDOISENMULTA: TIntegerField;
    qryEmpresasINDSITPJ: TIntegerField;
    qryEmpresasNMCTT: TStringField;
    qryEmpresasCPFCTT: TStringField;
    qryEmpresasFONEFIXO: TStringField;
    qryEmpresasFONECEL: TStringField;
    qryEmpresasEMAIL_CONTATO: TStringField;
    qryEmpresasIDEEFR: TStringField;
    qryEmpresasCNPJEFR: TStringField;
    qryEmpresasCLASSTRIB: TStringField;
    qryEmpresasINIVALID: TStringField;
    qryEmpresasFIMVALID: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMQuerysUteis: TDMQuerysUteis;

implementation

uses UDM;

{$R *.dfm}

end.
