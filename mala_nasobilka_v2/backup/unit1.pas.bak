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
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}
var a,b,c,d,op,count,pocet:integer;
{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  pocet := StrToIntDef(Form1.Edit1.Text,0);
  if (pocet > 0) then
     begin
        count := 0;
        Form1.Button2.Enabled:=true;
        Form1.Edit1.Enabled:=false;
     end
  else
      begin
        Form1.Label3.Visible := true;
        Form1.Label3.Caption := 'Pocet musi byt vacsi ako 0.';
      end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form1.Label3.Visible:=true;
  if (count = pocet) then
     begin
         Form1.Label3.Caption:='Hotovo!';
         Form1.Button1.Enabled:=true;
         Form1.Button2.Enabled:=false;
         Form1.Button3.Enabled:=false;
         Form1.Edit1.Enabled:=true;
     end
  else
      begin
        Randomize;
        a:=random(10)+1;
        b:=random(10)+1;
        op:=random(2);
        c:=a*b;
        if (op = 0) then
           begin
              Form1.Label3.Caption := IntToStr(a) + ' * ' + IntToStr(b);
           end
        else
            begin
              Form1.Label3.Caption:=IntToStr(c)+' / '+IntToStr(b);
            end;
        Form1.Button2.Enabled:=false;
        Form1.Button3.Enabled:=true;
        count := count+1;
      end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  d := StrToIntDef(Form1.Edit2.Text, 0);
  if(op = 0) then
     begin
         if(d = c) then
            begin
                Form1.Label3.Caption:='Spravne!';
                Form1.Button2.Enabled:=true;
                Form1.Button3.Enabled:=false;
            end
         else;
     end
  else
      begin
         if(d = a) then
            begin
                Form1.Label3.Caption:='Spravne!';
                Form1.Button2.Enabled:=true;
                Form1.Button3.Enabled:=false;
            end
         else;
      end;
end;

end.

