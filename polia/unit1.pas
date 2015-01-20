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
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}
const poc = 5;
var p:array[1..poc] of integer;
var r:array[1..poc] of integer;
type q = array[1..poc] of integer;
var i:integer;
procedure zmaz();
          begin
            Form1.Memo1.Lines.Clear();
          end;
procedure vypisPole();
          var i:integer;
          begin
             for i:=1 to poc do Form1.Memo1.Lines.Add('['+IntToStr(i)+']=> '+IntToStr(p[i]));
          end;
procedure naplnPole();
          var i:integer;
          begin
             for i:=1 to poc do
                 begin
                   p[i]:= random(10);
                 end;
          end;
procedure vynulujPole();
          var i:integer;
            begin
               for i:=1 to poc do p[i]:=0;
            end;
function najdiMax():integer;
          var i,max:integer;
          begin
             max := p[1];
             for i:=1 to poc do
                 begin
                   if (p[i]>max) then max:=p[i];
                 end;
             result:=max;
          end;
function najdiMin():integer;
          var i,min:integer;
          begin
             min := p[1];
             for i:=1 to poc do
                 begin
                   if (p[i]<min) then min:=p[i];
                 end;
             result:=min;
          end;
function spracujPole():integer;
          var i,sucet:integer;
          begin
             sucet:=0;
             for i:=1 to poc do sucet:=sucet+p[i];
             Result := sucet;
          end;
function najdiPoziciu(num:integer):q;
         var i,j:integer;
         var q:array[1..poc] of integer;
           begin
              for j:=1 to poc do q[j]:=0;
              for i:=1 to poc do
                  begin
                    if (p[i]=num) then
                       begin
                          q[i]:=num;
                       end;
                  end;
              Result:=q;
           end;

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
     zmaz();
     naplnPole();
     vypisPole();
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  vynulujPole();
  Form1.Memo1.Lines.Add('Pole vynulovane.');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Form1.Memo1.Lines.Add('Sucet: '+ IntToStr(spracujPole()));
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Form1.Memo1.Lines.Add('Minimum: '+IntToStr(najdiMin()));
  r := najdiPoziciu(najdiMin);
  for i:=1 to poc do
      begin
        if not(r[i]=0)then form1.memo1.Lines.add('Pozicia: '+inttostr(i));
      end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Form1.Memo1.Lines.Add('Maximum: '+IntToStr(najdiMax()));
  r := najdiPoziciu(najdiMax);
  for i:=1 to poc do
      begin
        if not(r[i]=0)then form1.memo1.Lines.add('Pozicia: '+inttostr(i));
      end;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  zmaz();
end;

end.

