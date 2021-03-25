unit UDM;

interface

uses
  System.SysUtils, System.Classes, UniProvider, SQLServerUniProvider, Data.DB,
  MemDS, DBAccess, Uni;

type
  TDM = class(TDataModule)
    UniConnection1: TUniConnection;
    UniDataSource1: TUniDataSource;
    UniQuery1: TUniQuery;
    SQLServerUniProvider1: TSQLServerUniProvider;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ClearSql;
    function fn_SetDBConnect: Boolean;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function TDM.fn_SetDBConnect: Boolean;
var
  lsSERVER_NAME, lsUSER, lsPASSWORD, lsDATABASE : String;
  lsSERVER_NAME2, lsUSER2, lsPASSWORD2, lsDATABASE2 : String;
begin
  ClearSql;
  Result := True;

  with UniConnection1 do
  try
    if UniConnection1.Connected then Connected := False;

    ProviderName  := 'SQL Server';
    Server        := '168.126.28.28';
    Port          := 9005;
    Username      := 'sa';
    Password      := 'tsvr2201@pts';
    Database      := 'ZPK';

    Connected := True;
  except
    Result := False;
  end;
end;

procedure TDM.ClearSql;
begin
  UniQuery1.Active := False;
  UniQuery1.SQL.Text := '';
end;

end.
