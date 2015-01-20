unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

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
var veta:string;
function zrkadlo(veta:string):string;
         var i,dlzka,prechodna:integer;
         begin
              dlzka := length(veta);
              for i:=1 to (dlzka div 2) do
                  begin
                    prechodna := ord(veta[i]);
                    veta[i] := veta[dlzka-i+1];
                    veta[dlzka-i+1] := char(prechodna);
                  end;
              Result:=veta;
         end;
procedure zmaz();
          begin
               Form1.Memo1.Lines.Clear;
               Form1.Edit1.Text:='';
          end;
procedure memoAdd(str:string);
          begin
               Form1.Memo1.Lines.Add(str);
          end;

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
    veta := Form1.Edit1.Text;
    if (veta = '')then
      memoAdd('Musis napisat nejaku vetu.')
    else
      memoAdd(zrkadlo(veta));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  zmaz();
end;

end.

