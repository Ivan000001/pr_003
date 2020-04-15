unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,DB,frxClass;

type
  Tf_main = class(TForm)
    BitBtn1: TBitBtn;
    LB1: TListBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure run_rep(DT_:TDataSet;rep_name:string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_main: Tf_main;

implementation

{$R *.dfm}
uses dm, F004;

function rep004_change_pages(sr_:TfrxReport):TfrxReport;
var i, j: integer;
  page : TfrxReportPage;
begin
  sr_.PrepareReport();
  j := sr_.PreviewPages.Count div 4;
  page := TfrxReportPage.Create(nil);
  for i := 0 to j - 2 do
    begin
      page.AssignAll(sr_.PreviewPages.Page[j + i]);
      sr_.PreviewPages.AddEmptyPage(i * 2 + 1);
      sr_.PreviewPages.ModifyPage(i * 2 + 1, page);
      sr_.PreviewPages.DeletePage(j + i + 1);
    end;
  page.Free;
//  frxReport1.ShowPreparedReport;
  result:=sr_;
end;


procedure Tf_main.BitBtn1Click(Sender: TObject);
begin
  case lb1.ItemIndex of
    0: begin
         run_rep(dm1.zq_rep001,'001');
       end;
    1: begin
         run_rep(dm1.zq_rep002,'002');
       end;
    2: begin
         run_rep(dm1.zq_rep003,'003');
       end;
    3: begin
         f004_.showmodal();
         if f004_.answer=1 then
           begin
             dm1.zq_rep004.Open();
             dm1.fR1.DataSet:=dm1.zq_rep004;
             dm1.R001.LoadFromFile('reports/004.fr3');
             dm1.R001:=rep004_change_pages(dm1.R001);
             dm1.R001.ShowPreparedReport;
             dm1.zq_rep004.Close();
           end;
       end;
  end;
end;




procedure Tf_main.run_rep(DT_: TDataSet; rep_name: string);
begin
  DT_.Open();
  dm1.fR1.DataSet:=DT_;
  dm1.R001.LoadFromFile('reports/'+rep_name+'.fr3');
  dm1.R001.PrepareReport();
  dm1.R001.ShowPreparedReport();
  DT_.Close();
end;

end.
