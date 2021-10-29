unit PrincipalSaldacaoConsole;

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
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
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
begin
  AllocConsole();
  Writeln('Bom dia!');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  AllocConsole();
  Writeln('Boa tarde!');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  AllocConsole();
  Writeln('Boa noite!');
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  AllocConsole();
  Writeln('Bom dia!');
  Writeln('Boa tarde!');
  Writeln('Boa noite!');
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  Texto: string;
  Mensagem, m2, m3: String;
  I, J, Indice: Integer;

begin

  AllocConsole();

  Writeln('Informe as tr�s frases: ');
  Readln(Texto);

  I := 0;
  J := 0;

  while (I<=Length(Texto)) do
    begin
      if (((Texto[I]='b') or (Texto[I]='B'))) then
            J := J+1;

      if (J=1) then
         Mensagem := Mensagem+Texto[I];
      if (J=2) then
         M2 := M2+Texto[I];
      if (J=3) then
         M3 := M3 + Texto[I];

      I := I+1;
    end;

    Writeln(Mensagem);
    Writeln(M2);
    Writeln(M3);

  {
  //Outra forma de fazer.

  Mensagem := Texto.Split([',']);

  I := 0;
  while (I<=Length(Mensagem)) do
    begin
      Writeln(Mensagem[I]);
      I := I+1;
    end;

  Writeln('Fim!');
   }
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  Universo: Integer;
begin
  AllocConsole();
  Universo := 42;
  Writeln(Universo);
end;

end.