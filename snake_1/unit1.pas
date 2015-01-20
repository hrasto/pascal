unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  LCLType,crt;

type

  { TForm1 }

  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure FormResize(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}
const thick=20;
const width=320;
const height=240;
const win=2;

type
  TSnake = record
              x,y,winX,winY,dir,length:integer;
           end;
var snake:TSnake;
var running:boolean;
procedure dontResize();
          begin
              form1.Height:=height+30;
              form1.Width:=width;
          end;
procedure draw();
          begin
              form1.canvas.pen.color := clBlack;
              form1.canvas.pen.width := thick;
              form1.canvas.line(snake.x,snake.y,snake.x,snake.y);
              form1.canvas.Pen.color := clRed;
              form1.canvas.line(snake.winX,snake.winY,snake.winX,snake.winY);
              form1.Canvas.pen.color:=clBlack;
          end;
procedure whitePrev();
          begin
             form1.canvas.pen.color := clWhite;
             if(snake.dir=1)then
                begin
                    if(snake.y >= height)then
                       form1.Canvas.line(snake.x,0,snake.x,0)
                    else
                       form1.Canvas.line(snake.x,snake.y+thick,snake.x,snake.y+thick);
                end;

             if(snake.dir=2)then
                begin
                    if(snake.x <= 0) then
                       form1.Canvas.line(width,snake.y,width,snake.y)
                    else
                       form1.Canvas.line(snake.x-thick,snake.y,snake.x-thick,snake.y);
                end;

             if(snake.dir=3)then
                begin
                   if(snake.y<=0)then
                      form1.Canvas.line(snake.x,height,snake.x,height)
                   else
                      form1.Canvas.line(snake.x,snake.y-thick,snake.x,snake.y-thick);
                end;

             if(snake.dir=4)then
                begin
                   if(snake.x>=width)then
                      form1.Canvas.line(0,snake.y,0,snake.y)
                   else
                      form1.Canvas.line(snake.x+thick,snake.y,snake.x+thick,snake.y);
                end;
             form1.canvas.pen.color:=clBlack;
          end;
procedure white();
          var i,j:integer;
          begin
             for i:=1 to (width div thick) do
                 begin
                      for j:=1 to (height div thick) do
                          begin
                               form1.canvas.pen.color:=clWhite;
                               form1.canvas.line(i*thick,j*thick,i*thick,j*thick);
                               form1.canvas.pen.color:=clBlack;
                          end;
                 end;
          end;
procedure randWin();
          begin
             Randomize();
             snake.winX:=(random(width div thick)+1)*thick;
             snake.winY:=(random(height div thick)+1)*thick;
          end;
function check():boolean;
         begin
            if((snake.y=snake.winY)and(snake.x=snake.winX))then
               result:=true
            else
               result:=false;
         end;
procedure randPos();
         begin
             snake.x:=thick*(random(width div thick)+1);
             snake.y:=thick*(random(height div thick)+1);
             snake.dir:=random(4)+1;
             snake.length:=0;
         end;
procedure startStop();
          begin
               if (running)then
                  begin
                   snake.length:=0;
                   running:=false;
                   form1.Label4.caption:='Game Over!';
                  end
               else
                   begin
                   white();
                   running:=true;
                   randWin();
                   randPos();
                   draw();
                   form1.Label2.caption:=inttostr(snake.length);
                   if not(form1.Label4.caption='')then
                      form1.label4.caption:='';
                   end;
          end;
procedure move(dir:integer);
          begin
              if((dir >= 1) and (dir <= 4)and(running)) then
              begin
                   if(dir=1)then  // up
                       begin
                        if(snake.y<=0)then
                           snake.y:=height
                        else
                           snake.y:=snake.y-thick;
                           snake.dir:=1;
                       end;
                   if(dir=3)then  // down
                       begin
                        if(snake.y >= height)then
                            snake.y:=0
                        else
                            snake.y:=snake.y+thick;
                        snake.dir:=3;
                       end;
                   if(dir=2)then  // right
                       begin
                        if(snake.x>=width)then
                            snake.x:=0
                        else
                            snake.x:=snake.x+thick;
                        snake.dir:=2;
                       end;
                   if(dir=4)then  // left
                       begin
                        if(snake.x<=0)then
                            snake.x:=width
                        else
                            snake.x:=snake.x-thick;
                        snake.dir:=4;
                       end;

                   if(check())then
                      begin
                       inc(snake.length);
                       form1.label2.Caption:=inttostr(snake.length);
                       if((snake.length)=win)then
                          begin
                               startStop();
                          end
                       else
                           begin
                                randWin();
                           end;
                      end;
                   whitePrev();
                   form1.label3.caption:=Inttostr(snake.dir)+';'+inttostr(snake.x)+';'+inttostr(snake.y)+';'+inttostr(snake.winX)+';'+inttostr(snake.winY);
                   draw();
              end;
          end;

{ TForm1 }

procedure TForm1.FormClick(Sender: TObject);
begin
    startStop();
    form1.label3.caption:=Inttostr(snake.dir)+';'+inttostr(snake.x)+';'+inttostr(snake.y)+';'+inttostr(snake.winX)+';'+inttostr(snake.winY);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  running:=false;
  form1.Height:=height+30;
  form1.width:=width;
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: char);
begin
    case Key of
    'a':move(4);
    'd':move(2);
    'w':move(1);
    's':move(3);
    end;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  dontResize();
end;

end.

