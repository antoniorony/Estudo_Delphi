unit Aula04Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, StrUtils;

type
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
    Button10: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button10Click(Sender: TObject);
var
  UltimoNumero: Integer;
  NumeroInformado: string;
begin
  AllocConsole();

  Write('Digite a placa do carro: ');
  Read(NumeroInformado);

  UltimoNumero := StrToInt(NumeroInformado[Length(NumeroInformado)]);

  Writeln('Seu carro � final ', UltimoNumero, '. Confira a tabela de pagamentos:');
  Writeln('Final 1, 2, 3, 4 e 5 - Pagamento em janeiro');
  Writeln('Final 6, 7, 8, 9 e 0 - Pagamento em fevereiro');
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  Nome: string;

begin
  AllocConsole();
  Writeln('Qual o seu nome?');
  Readln(Nome);
  Writeln('Ol� ', Nome, ', seja bem vindo ao unicerso da programa��o');
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Nome, Sobrenome: string;

begin
  AllocConsole();
  Writeln('Qual o seu nome?');
  Readln(Nome);
  Writeln('Qual o seu sobrenome?');
  Readln(Sobrenome);
  Writeln('Ol� ', Nome,' ', Sobrenome, ', seja bem vindo ao unicerso da programa��o');
end;

procedure TForm1.Button3Click(Sender: TObject);
//Com grandes poderes, v�m grandes responsabilidades.
const
  Grandes = #103#114#97#110#100#101#115;
var
  FraseMiranha: string;
begin
  AllocConsole();
  FraseMiranha := #67#111#109+#32+Grandes+#32
  +#112#111#100#101#114#101#115+#44+#32
  +#118#234#109+#32+Grandes+#32
  +#114#101#115#112#111#110#115#97#98#105#108#105#100#97#100#101#115#46;

  Writeln(FraseMiranha);
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  Nome: string;
begin
  AllocConsole();
  Writeln('Informe um nome para reverter:');
  Readln(Nome);

  Nome := ReverseString(Nome);
  Writeln(Nome);

end;

procedure TForm1.Button5Click(Sender: TObject);
var
  Nome, Empresa, Funcao: string;
  ValorEmprestimo: Double;
begin
  AllocConsole();
  Writeln('Informe seu nome');
  Readln(Nome);
  Writeln('Informe seu empresa');
  Readln(Empresa);
  Writeln('Informe sua fun��o');
  Readln(Funcao);
  Writeln('Informe o valor que deseja:');
  Readln(ValorEmprestimo);

  Writeln('Senhor(a) ', Nome, ', voc� est� com sorte!, Pela sua fun��o de ',
  Funcao, ', e sua excelente rela��o com a empresa ', empresa,
  ', foi aprovado um cr�dito em sua conta corrente de R$ ',FloatToStr(ValorEmprestimo*0.86) )
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  Etiquetas, NomeRestaurante: string;
  PrecoDoQuilo, PrecoCemGramas, TotalEmGramasRefeicao, PesoPratoVazio, ValorTotal: Double;

begin
  AllocConsole();

  Writeln('Informe Pre�o do quilo');
  Readln(PrecoDoQuilo);
  Writeln('Total do pe�o da refei��o, em gramas');
  Readln(TotalEmGramasRefeicao);

  PesoPratoVazio := 465;
  PrecoCemGramas := PrecoDoQuilo/10;

  Writeln('----- Restaurante Todo Dia -----');
  Writeln('Tara do prato ------------------------------- ',
    FloatToStr(PesoPratoVazio));
  Writeln('Pre�o/100 gramas ---------------------------- ',
    FloatToStr(PrecoCemGramas));
  Writeln('Peso consumido ------------------------------ ',
    FloatToStr(TotalEmGramasRefeicao));
  Writeln('Valo Total ---------------------------------- ',
    FloatToStr((TotalEmGramasRefeicao/100)*PrecoCemGramas));
end;

procedure TForm1.Button7Click(Sender: TObject);
var
   Desconto, SalarioBruto, QuantidadeDeHorasTrabalhadasMensal, ValorHora, DescontoInssPorcento: Double;

begin
  AllocConsole();
  Writeln('Informe a quantidade de horas trabalhadas:');
  Readln(QuantidadeDeHorasTrabalhadasMensal);
  Writeln('Informe o valor da hora: ');
  Readln(ValorHora);
  Writeln('Informe a porcentagem do desconto do inss');
  Readln(DescontoInssPorcento);

   SalarioBruto := (QuantidadeDeHorasTrabalhadasMensal*ValorHora);
   Desconto := ((QuantidadeDeHorasTrabalhadasMensal*ValorHora) *
                (DescontoInssPorcento/100));

  Writeln('========================= Recibo de Pagamento =========================');
  Writeln(' Sal�rio Bruto: ------------------------------------- ', FloatToStr(SalarioBruto));
  Writeln(' Desconto Inss: ------------------------------------- ', FloatToStr(Desconto));
  Writeln(' Sar�lio l�quido ------------------------------------ ', FloatToStr(SalarioBruto - Desconto));
end;

procedure TForm1.Button8Click(Sender: TObject);
var
  Numero1, Numero2, Numero3: Integer;

begin
  AllocConsole();
  Writeln('Pense em uma palavra de tr�s letras. Agora,',
  'me diga tr�s n�meros entre 65 e 90.');
  Readln(Numero1);
  Readln(Numero2);
  Readln(Numero3);

  Writeln(Char(Numero1)+Char(Numero2)+Char(Numero3));

end;

procedure TForm1.Button9Click(Sender: TObject);
var
  ValorInformado: Integer;

begin
  AllocConsole();

  Writeln('Como est� sua sorte? Digite um n�mero:');
  Readln(ValorInformado);
  Writeln('[0] = Cara, [1] = Coroa:');
  if (ValorInformado mod 2 = 0) then
    Writeln('A sorte deu 0')
  else
    Writeln('A sorte deu 1');


end;

end.
