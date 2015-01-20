unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, LCLType,
  StdCtrls, crt;

type

  { TForm1 }

  TForm1 = class(TForm)
    Label1: TLabel;
    procedure FormClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}
var i:integer;
  b:boolean;

{ TForm1 }

procedure TForm1.FormClick(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  b:=true;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
  if keyPressed then b:=true else b:=false;
  i:=10;
  form1.Canvas.pen.width:=10;
  form1.canvas.pen.color:=clRed;
  form1.canvas.Line(0,0,0,0);
  while b do
        begin
         form1.Canvas.line(0,0,i,0);
         delay(1000);
      end;
end;

procedure TForm1.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  b:=false;
end;



end.

