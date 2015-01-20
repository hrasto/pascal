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
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
     Form1.Button1.Caption:='Send';
       Form1.Memo1.Lines.Add(Form1.Edit1.Text);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form1.Button2.Caption:='clear';
  Form1.Memo1.Lines.Clear;
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

end.

