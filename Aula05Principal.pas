unit Aula05Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
//
//a.	x - y M a

var
  X, Y: Integer;


begin

end;

end.