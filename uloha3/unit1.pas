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
procedure kresli();
          var poc,i,k:integer;
          begin
               k:=0;
               form1.canvas.Pen.width:=2;
               form1.canvas.pen.Color:=clBlack;
              poc:=strtointdef(form1.edit1.Text,0);
              for i:=1 to poc do
                  begin
                      k:=k+20;
                      form1.Canvas.line(0,i*20,poc*20,i*20);
                      form1.Canvas.line(i*20,0,i*20,poc*20);
                  end;
          end;

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  kresli();
end;

end.

