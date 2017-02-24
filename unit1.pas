unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  a1, b1:real;
  a, b, i:integer;
implementation

{$R *.lfm}

{ TForm1 }



procedure TForm1.Button1Click(Sender: TObject);
begin
a:=strtoint(LabeledEdit1.text);
b:=strtoint(LabeledEdit2.text);
a1:=a;
b1:=b;
LabeledEdit1.clear;
LabeledEdit2.clear;
if a>b then
a:=b
else
b:=a;
while a1<>b1 do
if a1>b1 then
a1:=a1-b1
else
b1:=b1-a1;
if (a1 = a) or (b1 = a) then
begin
  for i:=1 to 9 do
  if a mod i = 0 then
  a1:=a/i;
end;
label1.Visible:=true;
label2.caption:=floattostr(a1);
end;

end.

