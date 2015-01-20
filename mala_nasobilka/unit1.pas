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
    Label1: TLabel;
    Label2: TLabel;
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

var a,b,c,d,znamienko:integer;

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
     Form1.Label2.Visible := False;
     Form1.Button2.Visible := True;
     Form1.Edit1.Text := '';
     Randomize;
     a := 1 + random(10);
     b := 1 + random(10);
     c := a*b;
     znamienko := random(2);

     if (znamienko = 0) then
        begin
          //delime
          Form1.Label1.Caption := IntToStr(c) + ' : ' + IntToStr(a) + ' = ';
        end
     else
         begin
          //nasobime
          Form1.Label1.Caption := IntToStr(a) + ' x ' + IntToStr(b) + ' = ';
         end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    d := StrToIntDef(Form1.Edit1.Text, 0);
    Form1.Label2.Visible := True;
    if (znamienko = 0) then
       begin
           if (d = b) then
              begin
                  Form1.Label2.Caption := 'Spravny vysledok!';
              end
           else
              begin
                  Form1.Label2.Caption := 'Nespravny vysledok!';
              end;
       end
    else
        begin
            if (d = c) then
               begin
                  Form1.Label2.Caption := 'Spravny vysledok!';
               end
            else
                begin
                  Form1.Label2.Caption := 'Nespravny vysledok!';
                end;
        end;
end;

end.

