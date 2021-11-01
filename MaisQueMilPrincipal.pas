unit MaisQueMilPrincipal;

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
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
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
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
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
  ValorDobrado, ValorInformado: Integer;
begin
  AllocConsole();
  Writeln('Informe um número inteiro para dobrar o valor: ');
  Readln(ValorInformado);

  ValorDobrado := (ValorInformado*2);
  Writeln(ValorDobrado);

end;

procedure TForm1.Button11Click(Sender: TObject);
var
  NumeroQuadrado, NumeroInformado: Integer;
begin
  AllocConsole();
  Writeln('Informe um número inteiro, para saber seu quadrado;');
  Readln(NumeroInformado);

  NumeroQuadrado := (NumeroInformado*NumeroInformado);
  Writeln('O quadrado de ', NumeroInformado, ' é: ', NumeroQuadrado);

end;

procedure TForm1.Button12Click(Sender: TObject);
var
  ValorTotalDaCompra, ValorDosJurosSobreACompra, Valor1, Valor2, Valor3: Double;

begin
  AllocConsole();
  ValorTotalDaCompra := (345+1545);
  ValorDosJurosSobreACompra := (ValorTotalDaCompra*1.5)/100;

  Valor1 := (ValorTotalDaCompra/3);
  Valor2 := (ValorTotalDaCompra/5);
  Valor3 := ((ValorTotalDaCompra+ValorDosJurosSobreACompra)/ 10);

  Writeln('Opções de pagamento:');
  Writeln('Parcelamento:');
  Writeln('3X sem juros ----------- ', Valor1);
  Writeln('5X sem juros ----------- ', Valor2);
  Writeln('10X com 1,5% de juros ----------- ', Valor3);

  Writeln('Quantidade de cupons: ', (ValorTotalDaCompra/190));

end;

procedure TForm1.Button13Click(Sender: TObject);
var
  QuantidadeTotal, Calca, Camisetas: Integer;
begin
  AllocConsole();
  Calca := 4;
  Camisetas := 8;
  QuantidadeTotal := Calca * Camisetas;
  Writeln(QuantidadeTotal);

end;

procedure TForm1.Button14Click(Sender: TObject);
var
  Cupons: Integer;
begin
  AllocConsole();
  Writeln('Digite seus cupons:');
  Readln(Cupons);

  Writeln('De acordo com seus cupons, você tem ', Cupons,
  ' pontos no programa de fidelidade!');

end;

procedure TForm1.Button15Click(Sender: TObject);
var
  Cupons: Integer;
begin
  AllocConsole();
  Writeln('Digite seus cupons:');
  Readln(Cupons);

  Writeln('Seus cupons agora valem ', (Cupons * 3));

end;

procedure TForm1.Button16Click(Sender: TObject);
var
  VolumeEmMililitros: Integer;
  ConcentracaoAlcool, ConcentracaoGel: Double;

begin
  AllocConsole();
  Writeln('Informe a quantidade em Mililitros da garrafa:');
  Readln(VolumeEmMililitros);

  ConcentracaoAlcool := (VolumeEmMililitros*0.70);
  ConcentracaoGel := (VolumeEmMililitros*0.30);

  Writeln('O volume para concentração que precisam ser misturados são:');
  Writeln('Álcool: ', FloatToStr(ConcentracaoAlcool),' mililitros');
  Writeln('Gel: ', FloatToStr(ConcentracaoGel),' mililitros');
end;

procedure TForm1.Button17Click(Sender: TObject);
var
  Sapato, Menino, Apito: Double;
begin
  AllocConsole();
  //Divido o valor trinta pelos 3 sapatos, para obter o valor individual.
  Sapato := (30/3);
  //Subtraio dos 20 o valor do sapato, assim posso apenas pegar o resultado
  //e dividir pela quantidade de meninos.
  Menino := (20-Sapato)/2;
  //uma vez tendo o valor de meninos, é só subtrair o total por ele e o restante
  //dividir pela quantidade de apitos.
  Apito := (13-Menino)/2;

  // Agora que cada um possui seu valor realizo o cálculo,
  // Sendo que como existe uma múltiplicação, ela será execultada primero
  // seguindo a regra matématica, dando 30.
  Writeln(FloatToStr(Sapato), FloatToStr(Menino), FloatToStr(Apito));
  Writeln('Resultado final: ', FloatToStr(Sapato+Menino*Apito));


end;

procedure TForm1.Button1Click(Sender: TObject);
var
  Multiplos, Primos: Integer;

begin
  AllocConsole();
  Multiplos := 1000+1004+1008+1012;
  Primos := 2 + 3 +4 +5;
  Writeln(Multiplos-Primos);

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Tempo: Integer;

begin
  AllocConsole();
  Tempo := 26+26+21+21+27+27+48+32+30;
  Writeln(Tempo);

end;

procedure TForm1.Button3Click(Sender: TObject);
var
  a, b: Integer;
begin
  AllocConsole();

  a := 2 + 3 - 5 * 8 - 4 + 354 - 521 + 7 * 66;
  b := 2 + 7 * (14 - 21) + 28 * 3 * 42 + 740 - (156 + 4 + 40) * 9;

   Writeln('a. ',a);
   Writeln('b. ',b);
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  TemperaturaFahrenheit, TemperaturaCelcius: Double;
begin
  AllocConsole();

  Writeln('Informe a temperatura em Celcius para saber sua correspondência em Fahrenheit:');
  Readln(TemperaturaCelcius);

  TemperaturaFahrenheit := (TemperaturaCelcius * 1.8) + 32;

  Writeln('A temperatura em fahrenheit é: ', TemperaturaFahrenheit);

end;

procedure TForm1.Button5Click(Sender: TObject);
var
  Valor: Integer;

begin
  AllocConsole();

  Writeln('Informe um número.');
  Readln(Valor);

  Writeln((-1)*Valor);

end;

procedure TForm1.Button6Click(Sender: TObject);
var
  TotalDeProdutos: Integer;
begin
  AllocConsole();

  Writeln('informe a quantidade de produtos para compra: ');
  Readln(TotalDeProdutos);
  Writeln('Parabéns por comprar ', TotalDeProdutos, ' produtos!');

end;

procedure TForm1.Button7Click(Sender: TObject);
var
  numero1, numero2: Integer;
begin
  AllocConsole();
     Writeln('Informe o primeiro valor');
     Readln(numero1);
     Writeln('Informe o seegundo valor');
     Readln(numero2);

     Writeln('Soma: ', (numero1+numero2));
     Writeln('Subtração: ', (numero1-numero2));
     Writeln('Multiplicação: ', (numero1*numero2));
     Writeln('Divisão: ', (numero1/numero2));
end;

procedure TForm1.Button8Click(Sender: TObject);
var
  X, Y, Z: Integer;

begin
  AllocConsole();
  X := 131;
  Z := 26;
  Y := (X-Z);
  Writeln('Mauriti tem ', X, ' anos. Desses ', Y,'',
  ' foram antes de mim. Mas os últimos ', Z , ' anos comigo.')

end;

procedure TForm1.Button9Click(Sender: TObject);
var
  Numero, NumeroInformado: Integer;
  EscolherContinuarIncluindo: Char;
begin
  AllocConsole();
  EscolherContinuarIncluindo := 's';
  Numero := 0;
  while (EscolherContinuarIncluindo = 's') do
    begin
      Writeln('Informe o número: ');
      Readln(NumeroInformado);
      if (Numero mod 2 = 0) then
        Numero := (Numero + NumeroInformado)
      else
        Numero := (Numero - NumeroInformado);
        Writeln('Deseja informar outro número? s/n');
        Readln(EscolherContinuarIncluindo);
    end;

    Writeln(Numero);

end;

end.
