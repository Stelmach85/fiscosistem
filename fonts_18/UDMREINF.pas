unit UDMREINF;

interface

uses
  SysUtils, Classes, DB, MemDS, DBAccess, Uni;

type
  TDMREINF = class(TDataModule)
    qryregistro1000: TUniQuery;
    qryRegistro1070: TUniQuery;
    qryRegistro2010_1: TUniQuery;
    qryRegistro2010_2: TUniQuery;
    qryregistro2010_3: TUniQuery;
    qryRegistro2010_4: TUniQuery;
    qryRegistro2020_1: TUniQuery;
    qryRegistro2020_2: TUniQuery;
    qryRegistro2020_3: TUniQuery;
    qryRegistro2020_4: TUniQuery;
    qryParametros: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMREINF: TDMREINF;

implementation

uses UDM;

{$R *.dfm}

end.
