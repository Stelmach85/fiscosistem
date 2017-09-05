unit UDMScript;

interface

uses
  SysUtils, Classes, DAScript, UniScript;

type
  TDMScript = class(TDataModule)
    TabelasFire: TUniScript;
    RegistrosFire: TUniScript;
    TabelasOracle: TUniScript;
    RegistrosOracle: TUniScript;
    TabelaSQLServer: TUniScript;
    RegistrosSQLServer: TUniScript;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMScript: TDMScript;

implementation

uses UDM;

{$R *.dfm}

end.
