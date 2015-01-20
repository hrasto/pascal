unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}
const pocet=20;
var pole:array[1..pocet] of integer;

procedure napln();
          var i:integer;
          begin
            Randomize;
            for i:=1 to pocet do
                begin
                  pole[i]:=random(26)+65;
                end;
          end;
function vratB():integer;
         var i,vysledok:integer;
           begin
             vysledok:=0;
             for i:=1 to pocet do
                 begin
                   if(pole[i]=66)then inc(vysledok);
                 end;
             result:=vysledok;
           end;

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
    napln();
    form1.memo1.lines.add(IntToStr(vratB));
end;

end.

