unit F004;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBGridEh, Mask, DBCtrlsEh, DBLookupEh;

type
  TF004_ = class(TForm)
    GroupBox1: TGroupBox;
    RB1: TRadioButton;
    RB2: TRadioButton;
    RB3: TRadioButton;
    E_pu: TEdit;
    chb_rb2_fiz18: TCheckBox;
    chb_rb3_fiz18: TCheckBox;
    Button1: TButton;
    cb_tp: TDBLookupComboboxEh;
    chb_not: TCheckBox;
    chb_fiz: TCheckBox;
    procedure RB2Click(Sender: TObject);
    procedure RB1Click(Sender: TObject);
    procedure RB3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure E_puKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    answer:integer;
  end;

var
  F004_: TF004_;

implementation

{$R *.dfm}
uses DM;

procedure TF004_.Button1Click(Sender: TObject);
begin
  if rb1.Checked then dm1.zq_rep004.ParamByName('p_rb').AsInteger:=0;
  if rb2.Checked then
    begin
      dm1.zq_rep004.ParamByName('p_sn').AsString:='%%'+e_pu.Text;
      dm1.zq_rep004.ParamByName('p_rb').AsInteger:=1;
      if chb_rb2_fiz18.Checked then
        dm1.zq_rep004.ParamByName('p_fiz18').AsInteger:=1
      else
        dm1.zq_rep004.ParamByName('p_fiz18').AsInteger:=0;
    end;
  if rb3.Checked then
    begin
      dm1.zq_rep004.ParamByName('p_tp').AsInteger:=cb_tp.KeyValue;
      dm1.zq_rep004.ParamByName('p_rb').AsInteger:=2;
      if chb_rb3_fiz18.Checked then
        dm1.zq_rep004.ParamByName('p_fiz18').AsInteger:=1
      else
        dm1.zq_rep004.ParamByName('p_fiz18').AsInteger:=0;
    end;
  if chb_fiz.Checked then
        dm1.zq_rep004.ParamByName('p_ch_fiz').AsInteger:=1
      else
        dm1.zq_rep004.ParamByName('p_ch_fiz').AsInteger:=0;
  if chb_not.Checked then
        dm1.zq_rep004.ParamByName('p_not_sign').AsInteger:=1
      else
        dm1.zq_rep004.ParamByName('p_not_sign').AsInteger:=0;
  answer:=1;
  close();
end;

procedure TF004_.E_puKeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
    #160,#23,#24,#8,'0'..'9' :  ; // цифры и <Back Space>
    else   // остальные символы запрещены
      key := Chr(0);
  end;
end;

procedure TF004_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm1.zq_tp.Close();
end;

procedure TF004_.FormShow(Sender: TObject);
begin
  answer:=0;
  rb1.Checked:=true;
  chb_rb2_fiz18.Checked:=false;
  chb_rb3_fiz18.Checked:=false;
  cb_tp.KeyValue:=0;
  e_pu.Text:='';
  chb_fiz.Checked:=true;
  chb_not.Checked:=true;
  dm1.zq_tp.Open();
end;

procedure TF004_.RB1Click(Sender: TObject);
begin
  e_pu.Enabled:=false;
  chb_rb2_fiz18.Enabled:=false;
  cb_tp.Enabled:=false;
  chb_rb3_fiz18.Enabled:=false;
end;

procedure TF004_.RB2Click(Sender: TObject);
begin
  e_pu.Enabled:=true;
  chb_rb2_fiz18.Enabled:=true;
  cb_tp.Enabled:=false;
  chb_rb3_fiz18.Enabled:=false;
end;

procedure TF004_.RB3Click(Sender: TObject);
begin
  e_pu.Enabled:=false;
  chb_rb2_fiz18.enabled:=false;
  cb_tp.Enabled:=true;
  chb_rb3_fiz18.Enabled:=true;
end;

end.
