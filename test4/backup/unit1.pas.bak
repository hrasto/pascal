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
    Edit2: TEdit;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}
var a,b,i,c:integer;

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  a:=StrToIntDef(Form1.Edit1.Text, 0);
  b:=StrToIntDef(Form1.Edit2.Text, 0);
  c:=1;
  for i:=1 to b do
      begin
         c:=c*a;
      end;
  Form1.Memo1.Lines.Add(IntToStr(a) + ' ^ ' + IntToStr(b) + ' = ' + IntToStr(c) );
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form1.Memo1.Lines.Clear;
end;

end.

