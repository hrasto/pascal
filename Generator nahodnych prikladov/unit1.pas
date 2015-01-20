unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}
var a,b,c,d,e,f,g,op: integer;
{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
 form1.memo1.clear;
 form1.edit1.clear;
 form1.button1.caption:='Priklad';
 form1.Button2.Caption:='Test';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 a:=random(10)+1;
 b:=random(10)+1;
 c:=a*b;
 op:=random(4);
 if (op=0) then form1.memo1.lines.add(inttostr(a)+'+'+inttostr(b));
 if (op=1) then form1.memo1.lines.add(inttostr(a)+'-'+inttostr(b));
 if (op=2) then form1.memo1.lines.add(inttostr(a)+'*'+inttostr(b));
 if (op=3) then form1.memo1.lines.add(inttostr(c)+':'+inttostr(b));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 d:=strtointdef(form1.edit1.Text,e);
 if (op=0) then f:=a+b;
 if (op=1) then f:=a-b;
 if (op=2) then f:=a*b;
 if (op=3) then f:=a;
 if (f=d) and not (f=e) then form1.memo1.lines.add('spravne');
 if not (f=d) and not (f=e) then form1.memo1.lines.add('nespravne vysledok je '+inttostr(f));
 if (f=e) then form1.memo1.lines.add('musis zadat cislo');

end;

end.

