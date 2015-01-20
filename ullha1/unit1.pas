unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
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
var s1,s2:string;

function vyvrat(s1,s2:string):string;
          begin
              result:=s1+s2;
          end;


{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
   s1:=form1.edit1.Text;
   s2:=form1.edit2.text;
   form1.memo1.lines.add(vyvrat(s1,s2));
end;

end.

