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
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    cmbSelecaoEstado: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure cmbSelecaoEstadoChange(Sender: TObject);
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
  Writeln('Voc� j� pode votar? ', PodeVotar);

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

procedure TForm1.Button5Click(Sender: TObject);
//Rodicio de cpfs
var
  FinalCpf, Dia: Integer;
begin
  AllocConsole();

  Writeln('Dia (hoje):');
  Readln(Dia);
  Writeln('CPF (ap�s o h�fen):');
  Readln(FinalCpf);

  if (Dia mod 2 = 0) then
    Writeln('Autorizado a entrar na loja? ', (FinalCpf mod 2 = 0))
  else
    Writeln('Autorizado a entrar na loja? ', (FinalCpf mod 2 <> 0));
end;

procedure TForm1.Button6Click(Sender: TObject);
const
  VALORINICIALMAIUSCULAASC = 65;
  VALORINICIALMINUSCULAASC = 97;
var
  Nome: string;
  Char01, Char02, Char03, Char04, Char05, Char06 : Char;
begin
  AllocConsole();
  Write('Digite seu nome:');
  Read(Nome);

  Char01 := Nome[1];
  Char02 := Nome[2];
  Char03 := Nome[3];
  Char04 := Nome[4];
  Char05 := Nome[5];
  Char06 := Nome[6];

  Char01 := Char(VALORINICIALMAIUSCULAASC+(Ord(Char01)-VALORINICIALMINUSCULAASC));
  Char02 := Char(VALORINICIALMAIUSCULAASC+(Ord(Char02)-VALORINICIALMINUSCULAASC));
  Char03 := Char(VALORINICIALMAIUSCULAASC+(Ord(Char03)-VALORINICIALMINUSCULAASC));
  Char04 := Char(VALORINICIALMAIUSCULAASC+(Ord(Char04)-VALORINICIALMINUSCULAASC));
  Char05 := Char(VALORINICIALMAIUSCULAASC+(Ord(Char05)-VALORINICIALMINUSCULAASC));
  Char06 := Char(VALORINICIALMAIUSCULAASC+(Ord(Char06)-VALORINICIALMINUSCULAASC));

  Nome := Char01+Char02+Char03+Char04+Char05+Char06;

  Writeln('SEJA BEM-VINDO ',Nome, ' AO UNIVERSO DA PROGRAMA��O!');

end;

procedure TForm1.Button7Click(Sender: TObject);
const
  P = 80;
  I = 73;
var
  lSoma, lNumeroJogador1, lNumeroJogador2: Integer;
  lImparOuPar : Char;
begin
  AllocConsole();
  Writeln('== jogo do [P] Par ou [I] �mpar ==');

  Writeln('Jogador 1');
  Readln(lNumeroJogador1);

  Writeln('Jogador 2');
  Readln(lNumeroJogador2);

  lSoma := (lNumeroJogador1+lNumeroJogador2);

  if (lSoma mod 2 = 0) then
    lImparOuPar := Char(P)
  else
    lImparOuPar := Char(I);


  Writeln('Resultado = ', lSoma, ', esse n�mero � [', lImparOuPar,']')
end;

procedure TForm1.cmbSelecaoEstadoChange(Sender: TObject);
VAR
  lItem: Integer;
begin
  lItem := cmbSelecaoEstado.ItemIndex;
  ShowMessage('' + litem.ToString);
end;

end.
