unit DM;

interface

uses
  SysUtils, Classes, ZAbstractConnection, ZConnection, DB, ZAbstractRODataset,
  ZDataset, frxClass, frxDBSet, frxExportPDF;

type
  TDM1 = class(TDataModule)
    ZConnection1: TZConnection;
    zq_rep001: TZReadOnlyQuery;
    fR1: TfrxDBDataset;
    R001: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    zq_rep002: TZReadOnlyQuery;
    zq_rep003: TZReadOnlyQuery;
    zq_rep004: TZReadOnlyQuery;
    DS_tp: TDataSource;
    zq_tp: TZReadOnlyQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM1: TDM1;

implementation

{$R *.dfm}

end.
