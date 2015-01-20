unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}
var num:integer;
procedure clear();
          begin
            form1.memo1.lines.clear();
            form1.canvas.Clear;
          end;
function divide(a,b:integer):integer;
          var c:integer;
          begin
            c:=0;
            if not(b=0) then
            begin
                 while(a>=b)do
                        begin
                             a:=a-b;
                             inc(c);
                        end;
            end;
            result:=c;
          end;

procedure draw(actual,final:integer);
          begin
             form1.canvas.pen.width:=10;
             form1.canvas.pen.color:=clRed;
             form1.canvas.line(0,0,((actual*form1.width )div final),0);
          end;
procedure start(final:integer);
          var i,j:integer;
          begin
             if((final>0)and(final<1000))then
                begin
                     for i:=1 to final do
                         begin
                            Form1.Memo1.Lines.Add(IntToStr(i));
                            j:=(100*i)div final;
                            draw(i,final);
                         end;
                end
             else
                 Form1.Memo1.Lines.Add('[1;999]');

          end;

{ TForm1 }



procedure TForm1.Button1Click(Sender: TObject);
begin
  num:=StrToIntDef(form1.edit1.Text,0);
  start(num);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  clear();
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;



end.

