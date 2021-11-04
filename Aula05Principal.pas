unit Aula05Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  A, B: Integer;
  Resultado: Boolean;
begin
  AllocConsole();

  Writeln('informe A e B.');
  readln(A);
  readln(B);

  Resultado := A=B;
  Writeln('Igual:');
  Writeln(Resultado);

  Resultado := A>B;
  Writeln('Maior:');
  Writeln(Resultado);

  Resultado := A>=B;
  Writeln('Maior ou Igual:');
  Writeln(Resultado);

  Resultado := A<B;
  Writeln('Menor:');
  Writeln(Resultado);

  Resultado := A<=B;
  Writeln('Menor ou Igual:');
  Writeln(Resultado);

  Resultado := A<>B;
  Writeln('Diferente:');
  Writeln(Resultado);

end;

procedure TForm1.Button2Click(Sender: TObject);
const
  X = 6.0;
  Y = 2;
  Z = 4.000;
  A = 8;
  B = 7.5;
  C = 12;

var
  Resultado: Boolean;

begin
  AllocConsole();

  Resultado := (X - Y) > A;
  Writeln('a.', Resultado);

  Resultado := (X - Y * A) > (C mod Y);
  Writeln('b.', Resultado);

  Resultado := Y <> C;
  Writeln('c.', Resultado);

  Resultado := (X * Y) <> C;
  Writeln('d.', Resultado);

  Resultado := (C mod Y) < (Y mod C);
  Writeln('e.', Resultado);

  Resultado := A < B;
  Writeln('f.', Resultado);

  Resultado := (Z / A + X * Y - 5) > B;
  Writeln('g.', Resultado);

  Resultado := (C * Z + 2) = (A * X +Y);
  Writeln('h.', Resultado);

  Resultado := C = (Z+B);
  Writeln('i.', Resultado);

  Resultado := (Y+2) <> (7-B);
  Writeln('j.', Resultado);


end;

procedure TForm1.Button3Click(Sender: TObject);
var
  Idade: Integer;
  PodeVotar: Boolean;
begin
  AllocConsole();

  Writeln('Digite sua idade:');
  Readln(Idade);

  PodeVotar := Idade>=16;
  Writeln('Você já pode votar? ', PodeVotar);

end;

procedure TForm1.Button4Click(Sender: TObject);
var
  Valor01, Valor02 : Integer;
  Resultado : Boolean;

begin
  AllocConsole();

  Writeln('========== Maioral =========');

  Writeln('Player 1: ');
  Readln(Valor01);
  Writeln('Player 2: ');
  Readln(Valor02);

  Writeln('Player 1 venceu? ', Valor01>Valor02);
  Writeln('Player 2 venceu? ', Valor01<Valor02);
  Writeln('Houve empate? ', Valor01=Valor02);
end;

end.
