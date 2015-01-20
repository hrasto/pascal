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
var predchadzajuce,nove:integer;
function davaj():integer;
         begin
           Randomize;
           Result:= random(27)+1;
         end;
procedure zmaz();
          begin
            Form1.Memo1.Lines.Clear();
          end;

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
   Form1.Memo1.Lines.Add(IntToStr(davaj()));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  zmaz();
end;

end.

