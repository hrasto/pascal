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

var ch:char;
var i:integer;

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  i := StrToIntDef(Form1.Edit1.Text, 1);
  if ((i <= 255)and(i >= 0)) then
     begin
           ch := char(i);
           Form1.Memo1.Lines.Add(ch);
     end
  else
      begin
          Form1.Memo1.Lines.Add('Zadaj cislo z intervalu [0;255]');
      end;

end;



end.

