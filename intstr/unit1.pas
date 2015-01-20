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
function toInt(s:string):integer;
         var i,j,x,y:integer;
         begin

            x:=0;
            for i:=1 to length(s) do
                begin
                   x:=x+(s[i]*);
                end;
         end;

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin

end;

end.

