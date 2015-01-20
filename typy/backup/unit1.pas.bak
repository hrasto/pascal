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
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}
type TPerson =
  record
     nick:string;
     age:integer;
  end;
var person:TPerson;
var count:integer;
var people:array[0..1000] of TPerson;
procedure echo(s:string);
          begin
            Form1.Memo1.Lines.Add(s);
          end;
procedure del();
          begin
            Form1.Memo1.Lines.Clear;
          end;
procedure add(person:TPerson);
          begin
            if(count<1000)then
               begin
                 inc(count);
                 people[count]:=person;
                 echo('Osoba '+person.nick+' uspesne pridana.');
               end
            else
                begin
                  echo('Maximalny pocet bol naplneny.');
                end;
          end;
procedure list();
          var i:integer;
          begin
            if(count>0) then
               begin
                 for i:=1 to count do echo('Nick: '+people[i].nick+'; Vek: '+IntToStr(people[i].age));
               end
            else echo('Ziadna osoba nebola pridana.');
          end;
function isAge(age:integer):integer;
         var i,num:integer;
         begin
           num:=0;
           for i:=1 to count do
               begin
                 if (people[i].age = age) then inc(num);
               end;
           Result:=num;
         end;
function isNick(nick:string):integer;
         var i,num:integer;
         begin
           num:=0;
           for i:=1 to count do
               begin
                 if (people[i].nick = nick) then inc(num);
               end;
           Result:=num;
         end;
function getByAge(age:integer):string;
         var i:integer;
         var s:string;
         begin
           s:='';
           for i:=1 to count do
               begin
                 if(people[i].age = age)then s:=s+'.'+IntToStr(i);
               end;
           Result:=s;
         end;
function getByNick(nick:string):string;
         var i:integer;
         var s:string;
         begin
           s:='';
           for i:=1 to count do
               begin
                 if(people[i].nick = nick)then s:=s+'.'+IntToStr(i);
               end;
           Result:=s;
         end;
procedure echoGiven(s:string);
          var i,j:integer;
          var k:string;
          begin
            for i:=1 to length(s) do
                begin
                  if(s[i]='.')then
                     begin
                       k:='';
                       j:=1;
                       while not(s[i+j]='.')do
                             begin
                               k:=k+s[i+j];
                               inc(j);
                             end;
                       echo(people[strtoint(k)].nick+'; '+inttostr(people[strtoint(k)].age));
                     end;
                end;
          end;
function match(nick:string;age:integer):integer;
         var i:integer;
         var check:boolean;
         begin
           i:=0;
           repeat
             begin
               inc(i);
             end;
           until(((people[i].nick = nick)and(people[i].age = age))or(i=(count+1)));
           Result := i;
         end;
function exists(nick:string):boolean;
         var i:integer;
         var check:boolean;
         begin
           check:=false;
           for i:=1 to count do
               begin
                 if(people[i].nick = nick)then check:=true;
               end;
           Result:=check;
         end;
procedure delAll();
          var i:integer;
          begin
             for i:=1 to count do
                 begin
                     people[i].age:=0;
                     people[i].nick:='';
                 end;
             count:=0;
             echo('Vsetky zaznamy boli vymazane.');
          end;
procedure change(var person1,person2:TPerson);
          var person3:TPerson;
            begin
              person3:=person1;
              person1:=person2;
              person2:=person3;
            end;
procedure delByNick(nick:string);
          var i:integer;
          var person2:TPerson;
          begin
            i:=0;
            repeat
               i:=i+1;
            until((people[i].nick = nick)or(i=count)) ;
            people[i].nick:='';
            people[i].age:=0;
            change(people[i],people[count]);
            count:=count-1;
          end;
function randomNick():string;
         var i:integer;
         var s:string;
         var samohlasky:array[1..6] of char;
         var spoluhlasky:array[1..19] of char;
         begin
           samohlasky[1]:='a';
           samohlasky[2]:='e';
           samohlasky[3]:='i';
           samohlasky[4]:='o';
           samohlasky[5]:='u';
           samohlasky[6]:='y';
           spoluhlasky[1]:='b';
           spoluhlasky[2]:='c';
           spoluhlasky[3]:='d';
           spoluhlasky[4]:='f';
           spoluhlasky[5]:='g';
           spoluhlasky[6]:='h';
           spoluhlasky[7]:='j';
           spoluhlasky[8]:='k';
           spoluhlasky[9]:='l';
           spoluhlasky[10]:='m';
           spoluhlasky[11]:='n';
           spoluhlasky[12]:='p';
           spoluhlasky[13]:='q';
           spoluhlasky[14]:='r';
           spoluhlasky[15]:='s';
           spoluhlasky[16]:='t';
           spoluhlasky[17]:='v';
           spoluhlasky[18]:='x';
           spoluhlasky[19]:='z';
           s:='';
           for i:=1 to 8 do
               begin
                 if (((i+1) mod 2) = 0) then
                    s:=s+spoluhlasky[random(19)+1]
                 else
                    s:=s+samohlasky[random(6)+1];
               end;
           Result:=s;
         end;
function randomPerson():TPerson;
         var pers:TPerson;
         begin
            pers.nick := randomNick();
            pers.age:= random(99)+1;
            Result:=pers;
         end;

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  person.age:=StrToIntDef(Form1.Edit2.Text,0);
  person.nick:=Form1.Edit1.Text;
  if not(exists(person.nick)) then add(person) else echo('Osoba s menom '+person.nick+' uz existuje.');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  list();
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   // hladaj vek
  person.age:=StrToIntDef(Form1.Edit2.Text,0);
  if(isAge(person.age)>0)then
     begin
       echoGiven(getByAge(person.age));
     end
  else
      echo('Nenasla sa osoba s tymto vekom.');
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  // hladaj nick
  person.nick:=Form1.Edit1.Text;
  if(isNick(person.nick)>0)then
     begin
       echoGiven(getByNick(person.nick));
     end
  else
      echo('Nenasla sa osoba s tymto nickom.');
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  // hladaj oboje
  person.nick:=Form1.Edit1.Text;
  person.age:=StrToIntDef(Form1.Edit2.Text,0);
  if((match(person.nick,person.age))=(count+1)) then
     echo('Ziadna zhoda')
  else
    begin
      echo(people[match(person.nick,person.age)].nick+'; '+IntToStr(people[match(person.nick,person.age)].age));
    end;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  del();
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Randomize();
  add(randomPerson());
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  delAll();
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  person.nick:=Form1.Edit1.Text;
  if(isNick(person.nick)>0)then
     begin
       echo('Osoba '+person.nick+' vymazana.');
       delByNick(person.nick);
     end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  del();
  count:=0;
end;

end.
