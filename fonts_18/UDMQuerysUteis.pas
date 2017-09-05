unit UDMQuerysUteis;

interface

uses
  SysUtils, Classes, DB, MemDS, DBAccess, Uni;

type
  TDMQuerysUteis = class(TDataModule)
    qryEmpresas: TUniQuery;
    qryEmpresasCODIGO: TIntegerField;
    qryEmpresasNRINSC: TStringField;
    qryEmpresasTPINSC: TIntegerField;
    qryEmpresasINIVALID: TDateField;
    qryEmpresasFIMVALID: TDateField;
    qryEmpresasCLASSTRIB: TIntegerField;
    qryEmpresasINDESCRITURACAO: TIntegerField;
    qryEmpresasINDDESONERACAO: TIntegerField;
    qryEmpresasINDACORDOISENMULTA: TIntegerField;
    qryEmpresasINDSITPJ: TIntegerField;
    qryEmpresasNMCTT: TStringField;
    qryEmpresasCPFCTT: TStringField;
    qryEmpresasFONEFIXO: TStringField;
    qryEmpresasFONECEL: TStringField;
    qryEmpresasEMAIL_CONTATO: TStringField;
    qryEmpresasEMAIL: TStringField;
    qryEmpresasCNPJSOFTHOUSE: TStringField;
    qryEmpresasNMRAZAO: TStringField;
    qryEmpresasNMCONT: TStringField;
    qryEmpresasTELEFONE: TStringField;
    qryEmpresasIDEEFR: TStringField;
    qryEmpresasCNPJEFR: TStringField;
    dsqryEmpresas: TUniDataSource;
    qryaux: TUniQuery;
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
