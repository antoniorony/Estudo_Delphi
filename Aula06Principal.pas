unit Aula06Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.PlatformDefaultStyleActnCtrls,
  System.Actions, Vcl.ActnList, Vcl.ActnMan, Vcl.ToolWin, Vcl.ActnCtrls,
  Vcl.ActnMenus, Vcl.Menus, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
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
const
  FLIMITE = 8;
var
  lQuantidadePessoasNaLoja, lQuantidadePessoasParaEntrar : Integer;
  lResetarQuantidade, lFinalizarPrograma : Boolean;
  lResetar : Char;

begin
  AllocConsole();

  lFinalizarPrograma := false;
  lQuantidadePessoasNaLoja := 0;
  lResetarQuantidade := false;

  while (lFinalizarPrograma <> true) do
   begin
    if (lResetarQuantidade) then
        begin
          lResetarQuantidade := false;
        end;

    Writeln('Quantidade de pessoas a entrar na loja: ');
    Readln(lQuantidadePessoasParaEntrar);

    lQuantidadePessoasNaLoja :=
        lQuantidadePessoasNaLoja+lQuantidadePessoasParaEntrar;

    if (lQuantidadePessoasNaLoja>8) then
        begin
        Writeln('Quantidade excedeu o limite de ', FLIMITE);
        Writeln('Deseja resetar ? Y/N');
        Readln(lResetar);
        if (UpCase(lResetar) = 'Y') then
            begin
              lResetarQuantidade := true;
              lQuantidadePessoasNaLoja := 0
            end
        else
           lFinalizarPrograma := true;

        end;

    Writeln('=======================================================');
    Writeln('Temos no momento: ', lQuantidadePessoasNaLoja,
            ' Somando as que querem entrar.');

    if (lFinalizarPrograma) then
        Writeln('Finalizado!');

   end;

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  lUsaMascara : string;
  lTemperatura : Double;
  lAltorizarEntrada : Boolean;

begin
  AllocConsole();

  Writeln('Usa m�scara:');
  Readln(lUsaMascara);
  Writeln('Temperatura');
  Readln(lTemperatura);

  lAltorizarEntrada :=  (UpCase(lUsaMascara[1]) <> 'N') And (lTemperatura<=37.5);

  Writeln('Altorizar a entrada? ', lAltorizarEntrada);

end;

procedure TForm1.Button3Click(Sender: TObject);
var
  lSexo : string;
  lAnoNascimento, lIdade : Integer;
  lAnoAtual : string;
  lIsEmancipado : Boolean;

begin
  AllocConsole();

  lIsEmancipado := false;
  lAnoAtual := FormatDateTime('yyyy', Date);

  Writeln('Sexo: ');
  Readln(lSexo);
  Writeln('Ano de nascimento: ');
  Readln(lAnoNascimento);

  lIdade := (StrToInt(lAnoAtual)-lAnoNascimento);

  if (UpCase(lSexo[1]) = 'M') then
      begin
        if (lIdade >= 18) then
            lIsEmancipado := true
        else
            lIsEmancipado := false;
      end;

  if (UpCase(lSexo[1]) = 'F') then
      begin
        if (lIdade >= 21) then
            lIsEmancipado := true
        else
            lIsEmancipado := false;
      end;

  Writeln('Cidad�o emancipado? ', lIsEmancipado);

end;

procedure TForm1.Button4Click(Sender: TObject);
var
  lPrimeiro, lSegundo, lTerceito : Double;
  lIsTrianguloValido : Boolean;
begin
  AllocConsole();

  Writeln('Informe os tr�s �ngulos validos: ');
  Readln(lPrimeiro);
  Readln(lSegundo);
  Readln(lTerceito);

  lIsTrianguloValido := ((lPrimeiro + lSegundo) > lTerceito)
    and ((lPrimeiro + lTerceito) > lTerceito)
    and ((lTerceito + lSegundo) > lPrimeiro);

  Writeln('O tri�ngulo � v�lido? ', lIsTrianguloValido);

end;

procedure TForm1.Button5Click(Sender: TObject);
var
  lDiaNascimento, lMesDoNascimento : Integer;
  lIsInteligente : Boolean;

begin
  AllocConsole();

  lIsInteligente := false;

  Writeln('M�s do seu nascimento: ');
  Readln(lMesDoNascimento);
  Writeln('Dia do anivers�rio: ');
  Readln(lDiaNascimento);

  if (lMesDoNascimento = 01) then
      begin
        if (lDiaNascimento >= 21) then
            lIsInteligente := true;
      end;

  if (lMesDoNascimento = 02) then
      begin
        if (lDiaNascimento <= 18) then
            lIsInteligente := true;
      end;

  Writeln('Voc� � inteligente? ', lIsInteligente);
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  lMenorDeIdade, lDoencaNoFigado, lDoacaoRecente : string;
  lIsPodeDoarSangue : Boolean;

begin
  AllocConsole();

  lIsPodeDoarSangue := false;

  Writeln('Menor de idade');
  Readln(lMenorDeIdade);
  Writeln('Portador de doen�a');
  Readln(lDoencaNoFigado);
  Writeln('Doa��o recente');
  Readln(lDoacaoRecente);

  lIsPodeDoarSangue := (UpCase(lMenorDeIdade[1]) = 'N')
      and (UpCase(lDoencaNoFigado[1]) = 'N')
      and (UpCase(lDoacaoRecente[1]) = 'N');

  Writeln('Voc� pode doar sangue? ', lIsPodeDoarSangue);

end;

procedure TForm1.Button7Click(Sender: TObject);
var
  lPacotes, lFeijao, lEquipeA, lEquipeB : Integer;
  lGanhador : Char;
  lMensagemGanhador : string;

begin
  AllocConsole();

  Writeln(': Equipe A');
  Writeln('Pacotes: ');
  Readln(lPacotes);
  Writeln('Feij�o: ');
  Readln(lFeijao);

  lEquipeA := (lFeijao*2)+lPacotes;

  Writeln(': Equipe B');
  Writeln('Pacotes: ');
  Readln(lPacotes);
  Writeln('Feij�o: ');
  Readln(lFeijao);

  lEquipeB := (lFeijao*2)+lPacotes;

  if (lEquipeA > lEquipeB) then
      lGanhador := 'A'
  else
      lGanhador := 'B';

  if (lEquipeA = lEquipeB) then
      lMensagemGanhador := 'Empate!'
  else
      lMensagemGanhador := 'Equipe ' + lGanhador + '!';

  Writeln('[Apura��o]');
  Writeln('Equipe A: ', lEquipeA);
  Writeln('Equipe B: ', lEquipeB);
  Writeln('E a vencedora �: ', lMensagemGanhador);

end;

end.