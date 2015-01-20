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
var a,b,c,i,index:integer;

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
    index := StrToIntDef(Form1.Edit1.Text, 1);
    if ((index > 0) and (index <71)) then
    begin
         a := 1;
         b := 1;
         for i:=3 to index do
          begin
             c := a + b;
             a := b;
             b := c;
          end;
         if ((index = 1) or (index = 2)) then
         begin
              c:=1;
         end;
         Form1.Memo1.Lines.Add(IntToStr(c));
    end
    else
    begin
       if(index >70)then
         begin
              Form1.Memo1.Lines.Add('Cislo uz nieje integer.');
         end;
       if (index < 1)then
          begin
               Form1.Memo1.Lines.Add('Pre cisla mensie ako 1 nieje definovane.');
          end;
    end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form1.Memo1.Lines.Clear;
end;

end.

